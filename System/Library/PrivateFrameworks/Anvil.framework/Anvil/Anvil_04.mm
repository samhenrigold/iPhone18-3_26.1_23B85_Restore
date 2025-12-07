uint64_t sub_1DD95F994(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 80) = v2;

  (*(v6[6] + 8))(v6[7], v6[5]);
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD95FB4C, 0, 0);
  }

  else
  {

    v8 = v7[1];

    return v8(a1, a2);
  }
}

uint64_t sub_1DD95FB4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD95FBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DD92BD10;

  return MEMORY[0x1EEE1F398](a1, a2, a3, a4, a5);
}

void sub_1DD95FC7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD9165BC;

  JUMPOUT(0x1E12B6E20);
}

uint64_t sub_1DD95FD2C(uint64_t a1, unint64_t a2, int64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1DDA14810();
  __swift_project_value_buffer(v12, qword_1ECDA20C8);

  sub_1DD928DB4(a3, a4, a5 & 1);
  v13 = sub_1DDA147F0();
  v14 = sub_1DDA14F00();

  sub_1DD928DD4(a3, a4, a5 & 1);
  v34 = a4;
  v31 = a3;
  if (os_log_type_enabled(v13, v14))
  {
    v30 = v6;
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v15 = 136315394;
    *(v15 + 4) = sub_1DD93FA54(a1, a2, &v32);
    *(v15 + 12) = 2080;
    v16 = sub_1DD9C0FBC(a3, a4, a5 & 1);
    a3 = v17;
    v18 = sub_1DD93FA54(v16, v17, &v32);

    *(v15 + 14) = v18;
    _os_log_impl(&dword_1DD8F8000, v13, v14, "Load model %s for client: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v29, -1, -1);
    v19 = v15;
    v6 = v30;
    MEMORY[0x1E12B8CE0](v19, -1, -1);
  }

  if (!*(v6 + 16) || a1 == 0xD000000000000018 && 0x80000001DDA262D0 == a2 || (result = sub_1DDA15440(), (result & 1) != 0))
  {
    v21 = sub_1DD917D58(a1, a2, v31, v34, a5 & 1);
    if (v21)
    {
      a3 = v21;
      *(v6 + 16) = v21;

      v22 = sub_1DDA147F0();
      v23 = sub_1DDA14F00();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v32 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_1DD93FA54(a1, a2, &v32);
        _os_log_impl(&dword_1DD8F8000, v22, v23, "Successfully loaded model %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1E12B8CE0](v25, -1, -1);
        MEMORY[0x1E12B8CE0](v24, -1, -1);
      }
    }

    else
    {
      v26 = sub_1DDA13840();
      sub_1DD961078(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
      swift_allocError();
      v28 = v27;
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1DDA15070();

      v32 = 0xD000000000000027;
      v33 = 0x80000001DDA27E60;
      MEMORY[0x1E12B7AB0](a1, a2);
      sub_1DDA13800();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69DA4D0], v26);
      swift_willThrow();
    }

    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD960184(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD9601A4, 0, 0);
}

uint64_t sub_1DD9601A4()
{
  sub_1DD929A28(*(v0 + 64), v0 + 16);
  sub_1DDA13BE0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD960214(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD961610, 0, 0);
}

uint64_t sub_1DD960234(int a1, id a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1DDA14E00();
}

uint64_t sub_1DD960294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_1DDA138C0();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DDA14730();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1DDA13AD0();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DDA145C0();
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DDA14660();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DDA13EF0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v48[1] = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v48 - v19;
  sub_1DDA138B0();
  v21 = (*(v16 + 88))(v20, v15);
  if (v21 == *MEMORY[0x1E69DA668])
  {
    (*(v16 + 96))(v20, v15);
    (*(v12 + 32))(v14, v20, v11);
    v22 = v59;
    sub_1DDA14680();
    (*(v12 + 8))(v14, v11);
    v23 = sub_1DDA14720();
    return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  }

  v25 = v59;
  if (v21 == *MEMORY[0x1E69DA660])
  {
    (*(v16 + 96))(v20, v15);
    v26 = v58;
    (v58[4])(v10, v20, v8);
    sub_1DDA14670();
    (v26[1])(v10, v8);
LABEL_11:
    v31 = sub_1DDA14720();
    return (*(*(v31 - 8) + 56))(v25, 0, 1, v31);
  }

  if (v21 == *MEMORY[0x1E69DA680])
  {
    (*(v16 + 96))(v20, v15);
    v27 = v52;
    v28 = v53;
    v29 = v55;
    (*(v53 + 32))(v52, v20, v55);
    sub_1DDA13AC0();
    sub_1DDA13AA0();
    v30 = v54;
    sub_1DDA13AB0();
    sub_1DDA14710();

    (*(v56 + 1))(v30, v57);
    (*(v28 + 8))(v27, v29);
    goto LABEL_11;
  }

  if (v21 == *MEMORY[0x1E69DA678])
  {
    sub_1DDA146C0();
    goto LABEL_11;
  }

  if (v21 == *MEMORY[0x1E69DA670])
  {
    sub_1DDA14690();
    goto LABEL_11;
  }

  v48[0] = v15;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v32 = sub_1DDA14810();
  __swift_project_value_buffer(v32, qword_1ECDA20C8);
  v33 = v49;
  v34 = v50;
  v35 = v51;
  (*(v50 + 16))(v49, a1, v51);
  v36 = sub_1DDA147F0();
  v37 = sub_1DDA14EE0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v56 = v38;
    v58 = swift_slowAlloc();
    v60 = v58;
    *v38 = 136315138;
    LODWORD(v57) = v37;
    sub_1DDA138B0();
    v39 = sub_1DDA14B70();
    v40 = v33;
    v42 = v41;
    (*(v34 + 8))(v40, v51);
    v43 = sub_1DD93FA54(v39, v42, &v60);

    v44 = v56;
    *(v56 + 1) = v43;
    v45 = v44;
    _os_log_impl(&dword_1DD8F8000, v36, v57, "Unknown tool type: %s", v44, 0xCu);
    v46 = v58;
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x1E12B8CE0](v46, -1, -1);
    MEMORY[0x1E12B8CE0](v45, -1, -1);
  }

  else
  {

    (*(v34 + 8))(v33, v35);
  }

  v47 = sub_1DDA14720();
  (*(*(v47 - 8) + 56))(v25, 1, 1, v47);
  return (*(v16 + 8))(v20, v48[0]);
}

uint64_t sub_1DD960A78()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t type metadata accessor for BlackPowderInferenceProvider(uint64_t a1)
{
  result = qword_1ECD83330;
  if (!qword_1ECD83330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD960B04(uint64_t a1)
{
  sub_1DD960BD0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DD960BD0(uint64_t a1)
{
  if (!qword_1ECD83340)
  {
    sub_1DDA13BA0();
    v1 = sub_1DDA14F50();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECD83340);
    }
  }
}

uint64_t sub_1DD960C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83328, qword_1DDA1A108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD960C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DD92BD10;

  return sub_1DD9584B4(a1, a2, a3, v8);
}

uint64_t sub_1DD960D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DD92BD10;

  return sub_1DD958D34(a1, a2, a3, v8);
}

uint64_t sub_1DD960E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DD92BD10;

  return sub_1DD959FB8(a1, a2, a3, v8);
}

uint64_t sub_1DD960F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DD9165BC;

  return sub_1DD95D618(a1, a2, a3, v8);
}

uint64_t sub_1DD961008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83328, qword_1DDA1A108);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD961078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1DD9610EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83398, &qword_1DDA1A2B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1DDA14720();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v25 = &v22 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = *(sub_1DDA138C0() - 8);
  v13 = (v6 + 48);
  v14 = (v6 + 32);
  v15 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v26 = *(v12 + 72);
  v16 = MEMORY[0x1E69E7CC0];
  v23 = v9;
  v24 = v6;
  v22 = (v6 + 48);
  do
  {
    sub_1DD960294(v15, v4);
    if ((*v13)(v4, 1, v5) == 1)
    {
      sub_1DD90D378(v4, &qword_1ECD83398, &qword_1DDA1A2B0);
    }

    else
    {
      v17 = *v14;
      v18 = v25;
      (*v14)(v25, v4, v5);
      v17(v9, v18, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DD9092A8(0, *(v16 + 2) + 1, 1, v16);
      }

      v20 = *(v16 + 2);
      v19 = *(v16 + 3);
      if (v20 >= v19 >> 1)
      {
        v16 = sub_1DD9092A8((v19 > 1), v20 + 1, 1, v16);
      }

      *(v16 + 2) = v20 + 1;
      v9 = v23;
      v17(&v16[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20], v23, v5);
      v13 = v22;
    }

    v15 += v26;
    --v11;
  }

  while (v11);
  return v16;
}

uint64_t sub_1DD9613D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DD961424(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83380, &qword_1DDA1A288) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD92BD10;

  return sub_1DD9903E4(a1, v6, v1 + v5);
}

uint64_t objectdestroy_52Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83380, &qword_1DDA1A288);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DD961624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833B8, &qword_1DDA1A310);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  v8 = sub_1DDA141F0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DDA14240();
  v16 = a2;
  sub_1DDA142C0();
  sub_1DDA14200();
  sub_1DDA142A0();
  v9 = swift_allocBox();
  v15 = a3;
  sub_1DDA142C0();
  *v7 = v9;
  v10 = *MEMORY[0x1E69AA620];
  v11 = sub_1DDA142B0();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v7, v10, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  return sub_1DDA14230();
}

uint64_t sub_1DD961850(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833C0, &qword_1DDA1A318);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Credentials(0);
  v10 = *(*(v9 - 8) + 48);
  v10(a2, 1, v9);
  sub_1DDA14270();
  sub_1DD962314(a2, v5);
  if (v10(v5, 1, v9) == 1)
  {
    sub_1DD962384(v5);
    v11 = sub_1DDA14260();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  else
  {
    v12 = v5[32];
    sub_1DD9623EC(v5);
    v13 = sub_1DDA14260();
    v14 = *(v13 - 8);
    v15 = MEMORY[0x1E69AA5F0];
    if (!v12)
    {
      v15 = MEMORY[0x1E69AA5E8];
    }

    (*(*(v13 - 8) + 104))(v8, *v15, v13);
    (*(v14 + 56))(v8, 0, 1, v13);
  }

  return sub_1DDA14280();
}

uint64_t sub_1DD961A94(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833B8, &qword_1DDA1A310);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-v4];
  v6 = sub_1DDA141F0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DDA14240();
  v13 = a2;
  sub_1DDA142C0();
  sub_1DDA14200();
  sub_1DDA142A0();
  v7 = swift_allocBox();
  sub_1DDA142C0();
  *v5 = v7;
  v8 = *MEMORY[0x1E69AA620];
  v9 = sub_1DDA142B0();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v5, v8, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  return sub_1DDA14230();
}

uint64_t sub_1DD961CE8(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1DDA141F0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833B0, &qword_1DDA1A308);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  sub_1DDA14240();
  v9 = sub_1DDA14210();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v8, **(&unk_1E8659220 + a2), v9);
  sub_1DDA14210();
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1DDA14220();
  v13 = a3;
  sub_1DDA142C0();
  return sub_1DDA14200();
}

uint64_t sub_1DD961EE0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1DDA141F0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833B0, &qword_1DDA1A308);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  sub_1DDA14240();
  v9 = sub_1DDA14210();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v8, **(&unk_1E8659220 + a2), v9);
  sub_1DDA14210();
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1DDA14220();
  v13 = a3;
  sub_1DDA142C0();
  return sub_1DDA14200();
}

uint64_t sub_1DD9620D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA141F0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DDA14240();
  sub_1DDA142C0();
  return sub_1DDA14200();
}

uint64_t sub_1DD9621D0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833A8, &qword_1DDA1A300);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1DDA136B0();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_1DDA141E0();
}

uint64_t sub_1DD962314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD962384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD9623EC(uint64_t a1)
{
  v2 = type metadata accessor for Credentials(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DD962448(unsigned __int8 a1)
{
  v1 = sub_1DDA14B00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833C8, &qword_1DDA1A320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DDA1A2F0;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1DDA14E60();
  *(inited + 56) = 0x746E65696C63;
  *(inited + 64) = 0xE600000000000000;
  v3 = [objc_opt_self() processInfo];
  v4 = [v3 processName];
  if (v4)
  {
    v5 = v4;

    *(inited + 72) = v5;
    sub_1DD94001C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833D0, &qword_1DDA1A328);
    swift_arrayDestroy();
    sub_1DD9625D0();
    v6 = sub_1DDA14A90();

    AnalyticsSendEvent();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1DD9625D0()
{
  result = qword_1ECD831A0;
  if (!qword_1ECD831A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECD831A0);
  }

  return result;
}

uint64_t type metadata accessor for Instrumentation(uint64_t a1)
{
  result = qword_1ECD833D8;
  if (!qword_1ECD833D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD962690(uint64_t a1)
{
  result = sub_1DDA136B0();
  if (v2 <= 0x3F)
  {
    result = sub_1DDA14840();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD96272C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x737574617473;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x74757074756FLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000012;
    v4 = 0x80000001DDA26C60;
  }

  else
  {
    v3 = 0x65756E69746E6F63;
    v4 = 0xEC0000006C72755FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x737574617473;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x74757074756FLL)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001DDA26C60;
    if (v3 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEC0000006C72755FLL;
    if (v3 != 0x65756E69746E6F63)
    {
LABEL_31:
      v7 = sub_1DDA15440();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1DD9628C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7865646E69;
    }

    else
    {
      v5 = 0x746E65746E6F63;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x646E695F6D657469;
    }

    else
    {
      v5 = 0x695F6563696F6863;
    }

    if (v4)
    {
      v6 = 0xEA00000000007865;
    }

    else
    {
      v6 = 0xEC0000007865646ELL;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x7865646E69;
  if (a2 != 2)
  {
    v8 = 0x746E65746E6F63;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD962A10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x646E695F6D657469;
    }

    else
    {
      v4 = 0x695F6563696F6863;
    }

    if (v2)
    {
      v3 = 0xEA00000000007865;
    }

    else
    {
      v3 = 0xEC0000007865646ELL;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x5F746E65746E6F63;
    v3 = 0xED00007865646E69;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7865646E69;
  }

  else
  {
    v4 = 0x697461746F6E6E61;
    v3 = 0xEA00000000006E6FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x646E695F6D657469;
    }

    else
    {
      v9 = 0x695F6563696F6863;
    }

    if (a2)
    {
      v8 = 0xEA00000000007865;
    }

    else
    {
      v8 = 0xEC0000007865646ELL;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x7865646E69;
    if (a2 != 3)
    {
      v6 = 0x697461746F6E6E61;
      v5 = 0xEA00000000006E6FLL;
    }

    if (a2 == 2)
    {
      v7 = 0x5F746E65746E6F63;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xED00007865646E69;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1DDA15440();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DD962BC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE400000000000000;
  v6 = 1701667182;
  if (a1 != 5)
  {
    v6 = 1702521203;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x737574617473;
  if (a1 != 3)
  {
    v8 = 0x7079745F656D696DLL;
    v7 = 0xE900000000000065;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x5F64657461657263;
  v10 = 0xEA00000000007461;
  if (a1 != 1)
  {
    v9 = 0x6574656C706D6F63;
    v10 = 0xEC00000074615F64;
  }

  if (a1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xEA00000000007461;
        if (v11 != 0x5F64657461657263)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v13 = 0xEC00000074615F64;
        if (v11 != 0x6574656C706D6F63)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_38;
      }
    }
  }

  else if (a2 > 4u)
  {
    v13 = 0xE400000000000000;
    if (a2 == 5)
    {
      if (v11 != 1701667182)
      {
        goto LABEL_38;
      }
    }

    else if (v11 != 1702521203)
    {
LABEL_38:
      v14 = sub_1DDA15440();
      goto LABEL_39;
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x737574617473)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v13 = 0xE900000000000065;
    if (v11 != 0x7079745F656D696DLL)
    {
      goto LABEL_38;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_38;
  }

  v14 = 1;
LABEL_39:

  return v14 & 1;
}

uint64_t sub_1DD962DE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x80000001DDA26870;
  v6 = 0xD000000000000020;
  if (a1 != 6)
  {
    v6 = 0x7463757274736E69;
    v5 = 0xEC000000736E6F69;
  }

  v7 = 0xE700000000000000;
  v8 = 0x736563696F6863;
  if (a1 != 4)
  {
    v8 = 0x73656369746F6ELL;
    v7 = 0xE700000000000000;
  }

  if (a1 > 5u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xD000000000000019;
  v10 = 0x80000001DDA26C10;
  if (a1 != 2)
  {
    v9 = 0x6C65646F6DLL;
    v10 = 0xE500000000000000;
  }

  if (a1)
  {
    v4 = 0x5F6E6F6973736573;
    v3 = 0xEA00000000006469;
  }

  if (a1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v7;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x80000001DDA26870;
        if (v11 != 0xD000000000000020)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v13 = 0xEC000000736E6F69;
        if (v11 != 0x7463757274736E69)
        {
LABEL_44:
          v15 = sub_1DDA15440();
          goto LABEL_45;
        }
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (a2 == 4)
      {
        v14 = 1768908899;
      }

      else
      {
        v14 = 1769238382;
      }

      if (v11 != (v14 | 0x73656300000000))
      {
        goto LABEL_44;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0x80000001DDA26C10;
      if (v11 != 0xD000000000000019)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6C65646F6DLL)
      {
        goto LABEL_44;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000006469;
    if (v11 != 0x5F6E6F6973736573)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 25705)
    {
      goto LABEL_44;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

uint64_t sub_1DD963050(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x5F746E65746E6F63;
    }

    else
    {
      v5 = 0x6C617375666572;
    }

    if (v4 == 2)
    {
      v6 = 0xED00007865646E69;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x646E695F6D657469;
    }

    else
    {
      v5 = 0x695F6563696F6863;
    }

    if (v4)
    {
      v6 = 0xEA00000000007865;
    }

    else
    {
      v6 = 0xEC0000007865646ELL;
    }
  }

  v7 = 0x5F746E65746E6F63;
  v8 = 0xED00007865646E69;
  if (a2 != 2)
  {
    v7 = 0x6C617375666572;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9631B8(uint64_t a1, int64_t a2, uint64_t a3, int64_t a4)
{
  v6 = 0xEA00000000006E6FLL;
  v7 = 0x6974617265646F6DLL;
  if (a2 <= 1)
  {
    v9 = 0x6974617265646F6DLL;
    v8 = 0xEA00000000006E6FLL;
    if (!a2)
    {
      goto LABEL_14;
    }

    if (a2 != 1)
    {
      goto LABEL_24;
    }

    v8 = 0xE500000000000000;
    v9 = 0x726568746FLL;
    if (a4 > 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          v8 = 0x80000001DDA28010;
          v9 = 0xD00000000000001CLL;
          if (a4 <= 1)
          {
            goto LABEL_25;
          }

LABEL_15:
          switch(a4)
          {
            case 2:
              v6 = 0xEE007265746C6966;
              if (v9 != 0x5F746E65746E6F63)
              {
                goto LABEL_32;
              }

              goto LABEL_29;
            case 3:
              v6 = 0x80000001DDA28030;
              if (v9 != 0xD00000000000001BLL)
              {
                goto LABEL_32;
              }

              goto LABEL_29;
            case 4:
              v6 = 0x80000001DDA28010;
              if (v9 != 0xD00000000000001CLL)
              {
                goto LABEL_32;
              }

              goto LABEL_29;
          }

          goto LABEL_31;
        }

LABEL_24:
        v9 = a1;
        v8 = a2;
        if (a4 <= 1)
        {
          goto LABEL_25;
        }

        goto LABEL_15;
      }

      v9 = 0xD00000000000001BLL;
      v8 = 0x80000001DDA28030;
LABEL_14:
      if (a4 <= 1)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v9 = 0x5F746E65746E6F63;
    v8 = 0xEE007265746C6966;
    if (a4 > 1)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  if (!a4)
  {
    goto LABEL_28;
  }

  if (a4 != 1)
  {
LABEL_31:
    v6 = a4;
    if (v9 != a3)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v6 = 0xE500000000000000;
  v7 = 0x726568746FLL;
LABEL_28:
  if (v9 != v7)
  {
LABEL_32:
    v11 = a1;
    v12 = a2;
    v13 = sub_1DDA15440();
    a2 = v12;
    v10 = v13;
    a1 = v11;
    goto LABEL_33;
  }

LABEL_29:
  if (v8 != v6)
  {
    goto LABEL_32;
  }

  v10 = 1;
LABEL_33:
  sub_1DD928DC0(a1, a2);
  sub_1DD928DC0(a3, a4);

  return v10 & 1;
}

uint64_t sub_1DD9633FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x5F746E65746E6F63;
    }

    else
    {
      v5 = 0x61746C6564;
    }

    if (v4 == 2)
    {
      v6 = 0xED00007865646E69;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x646E695F6D657469;
    }

    else
    {
      v5 = 0x695F6563696F6863;
    }

    if (v4)
    {
      v6 = 0xEA00000000007865;
    }

    else
    {
      v6 = 0xEC0000007865646ELL;
    }
  }

  v7 = 0x5F746E65746E6F63;
  v8 = 0xED00007865646E69;
  if (a2 != 2)
  {
    v7 = 0x61746C6564;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD96355C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x5F746E65746E6F63;
    }

    else
    {
      v5 = 0x65756C6176;
    }

    if (v4 == 2)
    {
      v6 = 0xED00007865646E69;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x646E695F6D657469;
    }

    else
    {
      v5 = 0x695F6563696F6863;
    }

    if (v4)
    {
      v6 = 0xEA00000000007865;
    }

    else
    {
      v6 = 0xEC0000007865646ELL;
    }
  }

  v7 = 0x5F746E65746E6F63;
  v8 = 0xED00007865646E69;
  if (a2 != 2)
  {
    v7 = 0x65756C6176;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9636BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000015;
      v4 = 0x80000001DDA26D40;
    }

    else
    {
      v3 = 0x65736E6F70736572;
      v4 = 0xE900000000000073;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6C70755F656C6966;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (v2)
    {
      v4 = 0xEC0000007364616FLL;
    }

    else
    {
      v4 = 0x80000001DDA26D10;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000001DDA26D40;
      if (v3 != 0xD000000000000015)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE900000000000073;
      if (v3 != 0x65736E6F70736572)
      {
LABEL_26:
        v7 = sub_1DDA15440();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6C70755F656C6966;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (a2)
    {
      v6 = 0xEC0000007364616FLL;
    }

    else
    {
      v6 = 0x80000001DDA26D10;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_1DD963824(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7865646E69;
    }

    else
    {
      v5 = 0x6567616D69;
    }

    v6 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x646E695F6D657469;
    }

    else
    {
      v5 = 0x695F6563696F6863;
    }

    if (v4)
    {
      v6 = 0xEA00000000007865;
    }

    else
    {
      v6 = 0xEC0000007865646ELL;
    }
  }

  v7 = 0x7865646E69;
  if (a2 != 2)
  {
    v7 = 0x6567616D69;
  }

  if (a2)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DDA15440();
  }

  return v10 & 1;
}

uint64_t sub_1DD963964(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7865646E69;
    }

    else
    {
      v5 = 1701603686;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x646E695F6D657469;
    }

    else
    {
      v5 = 0x695F6563696F6863;
    }

    if (v4)
    {
      v6 = 0xEA00000000007865;
    }

    else
    {
      v6 = 0xEC0000007865646ELL;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x7865646E69;
  if (a2 != 2)
  {
    v8 = 1701603686;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD963A9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006570;
  v3 = 0x79745F746E617267;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x735F746E65696C63;
    }

    else
    {
      v5 = 0x5F68736572666572;
    }

    if (v4 == 2)
    {
      v6 = 0xED00007465726365;
    }

    else
    {
      v6 = 0xED00006E656B6F74;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x695F746E65696C63;
    }

    else
    {
      v5 = 0x79745F746E617267;
    }

    if (v4)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xEA00000000006570;
    }
  }

  v7 = 0x735F746E65696C63;
  v8 = 0xED00007465726365;
  if (a2 != 2)
  {
    v7 = 0x5F68736572666572;
    v8 = 0xED00006E656B6F74;
  }

  if (a2)
  {
    v3 = 0x695F746E65696C63;
    v2 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD963C18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006570;
  v3 = 0x79745F746E617267;
  v4 = a1;
  v5 = 0x695F746E65696C63;
  v6 = 0xE900000000000064;
  v7 = 0x735F746E65696C63;
  v8 = 0xED00007465726365;
  if (a1 != 4)
  {
    v7 = 0x7463657269646572;
    v8 = 0xEC0000006972755FLL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1701080931;
  if (a1 != 1)
  {
    v10 = 0x7265765F65646F63;
    v9 = 0xED00007265696669;
  }

  if (!a1)
  {
    v10 = 0x79745F746E617267;
    v9 = 0xEA00000000006570;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE900000000000064;
      if (v11 != 0x695F746E65696C63)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00007465726365;
      if (v11 != 0x735F746E65696C63)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEC0000006972755FLL;
      if (v11 != 0x7463657269646572)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1701080931)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x7265765F65646F63;
      v2 = 0xED00007265696669;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1DDA15440();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1DD963E28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF746E69685F6570;
  v3 = 0x79745F6E656B6F74;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x695F746E65696C63;
    }

    else
    {
      v5 = 0x735F746E65696C63;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xED00007465726365;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E656B6F74;
    }

    else
    {
      v5 = 0x79745F6E656B6F74;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEF746E69685F6570;
    }
  }

  v7 = 0x695F746E65696C63;
  v8 = 0xE900000000000064;
  if (a2 != 2)
  {
    v7 = 0x735F746E65696C63;
    v8 = 0xED00007465726365;
  }

  if (a2)
  {
    v3 = 0x6E656B6F74;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD963F8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E656B6FLL;
  v3 = 0x745F737365636361;
  v4 = a1;
  v5 = 0x79745F6E656B6F74;
  if (a1 == 5)
  {
    v6 = 0xEA00000000006570;
  }

  else
  {
    v5 = 0x735F656369766564;
    v6 = 0xED00007465726365;
  }

  v7 = 0x65706F6373;
  v8 = 0xEA00000000006E69;
  if (a1 == 3)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v7 = 0x5F73657269707865;
  }

  if (a1 > 4u)
  {
    v8 = v6;
  }

  else
  {
    v5 = v7;
  }

  v9 = 0x5F68736572666572;
  v10 = 0xED00006E656B6F74;
  if (a1 != 1)
  {
    v9 = 0x6E656B6F745F6469;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x745F737365636361;
    v10 = 0xEC0000006E656B6FLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      goto LABEL_34;
    }

    if (a2 != 1)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6E656B6F745F6469)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v13 = 0x5F68736572666572;
    v14 = 0x6E656B6F74;
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x65706F6373)
        {
          goto LABEL_40;
        }

        goto LABEL_38;
      }

      v3 = 0x5F73657269707865;
      v2 = 0xEA00000000006E69;
LABEL_34:
      if (v11 != v3)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    if (a2 == 5)
    {
      v2 = 0xEA00000000006570;
      if (v11 != 0x79745F6E656B6F74)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v13 = 0x735F656369766564;
    v14 = 0x7465726365;
  }

  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  if (v11 != v13)
  {
LABEL_40:
    v15 = sub_1DDA15440();
    goto LABEL_41;
  }

LABEL_38:
  if (v12 != v2)
  {
    goto LABEL_40;
  }

  v15 = 1;
LABEL_41:

  return v15 & 1;
}

uint64_t sub_1DD9641E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006F697461;
  v3 = 0x725F746365707361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6C65646F6DLL;
    }

    else
    {
      v5 = 0x6C6961746564;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x67616D695F6D756ELL;
    }

    else
    {
      v5 = 0x725F746365707361;
    }

    if (v4)
    {
      v6 = 0xEA00000000007365;
    }

    else
    {
      v6 = 0xEC0000006F697461;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x6C65646F6DLL;
  if (a2 != 2)
  {
    v8 = 0x6C6961746564;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x67616D695F6D756ELL;
    v2 = 0xEA00000000007365;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD964320(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746C7561666564;
  if (a1 != 5)
  {
    v5 = 0x766F5F776F6C6C61;
    v4 = 0xEF73656469727265;
  }

  v6 = 0x656C7069746C756DLL;
  if (a1 != 3)
  {
    v6 = 0x6465726975716572;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701869940;
  if (a1 != 1)
  {
    v8 = 0x736E6F6974706FLL;
    v7 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 1701667182;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1701869940)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE700000000000000;
        if (v9 != 0x736E6F6974706FLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v9 != 1701667182)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x746C7561666564)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xEF73656469727265;
      if (v9 != 0x766F5F776F6C6C61)
      {
LABEL_39:
        v12 = sub_1DDA15440();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x656C7069746C756DLL)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x6465726975716572)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_1DD96454C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7972657571;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD000000000000026;
    }

    if (v3 == 2)
    {
      v5 = 0x80000001DDA26B10;
    }

    else
    {
      v5 = 0x80000001DDA26B30;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7972657571;
    }

    else
    {
      v4 = 0xD00000000000001FLL;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0x80000001DDA26AE0;
    }
  }

  v6 = 0x80000001DDA26B10;
  v7 = 0xD000000000000026;
  if (a2 == 2)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x80000001DDA26B30;
  }

  if (a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
    v8 = 0x80000001DDA26AE0;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD964674(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5F64657461657263;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEA00000000007461;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x7463615F7473616CLL;
    v4 = 0xEE0074615F657669;
  }

  else
  {
    v3 = 0x5F73657269707865;
    if (v2 == 3)
    {
      v4 = 0xEA00000000007461;
    }

    else
    {
      v4 = 0xED00007265746661;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x5F64657461657263;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xEA00000000007461;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEE0074615F657669;
    if (v3 != 0x7463615F7473616CLL)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEA00000000007461;
    if (v3 != 0x5F73657269707865)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED00007265746661;
    if (v3 != 0x5F73657269707865)
    {
LABEL_31:
      v7 = sub_1DDA15440();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1DD964838(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7827308;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1751607656;
    }

    else
    {
      v4 = 0x6465727265666E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D756964656DLL;
    }

    else
    {
      v4 = 7827308;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1751607656;
  if (a2 != 2)
  {
    v8 = 0x6465727265666E69;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6D756964656DLL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD96495C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6465727265666E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1819042164;
    }

    else
    {
      v4 = 1701079415;
    }

    v5 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x657261757173;
    }

    else
    {
      v4 = 0x6465727265666E69;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 1819042164;
  if (a2 != 2)
  {
    v7 = 1701079415;
  }

  if (a2)
  {
    v2 = 0x657261757173;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DDA15440();
  }

  return v10 & 1;
}

uint64_t sub_1DD964A78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C6C616D73;
    }

    else
    {
      v4 = 0x6465727265666E69;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x656772616CLL;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x656772616C78;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6C6C616D73;
    }

    else
    {
      v9 = 0x6465727265666E69;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x656772616CLL;
    if (a2 != 3)
    {
      v6 = 0x656772616C78;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6D756964656DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1DDA15440();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DD964BE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701869940;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65675F6567616D69;
    }

    else
    {
      v4 = 0x6E65675F656C6966;
    }

    if (v3 == 2)
    {
      v5 = 0xEF726F746172656ELL;
    }

    else
    {
      v5 = 0xEE00726F74617265;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6F6974636E7566;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x65675F6567616D69;
  v8 = 0xEF726F746172656ELL;
  if (a2 != 2)
  {
    v7 = 0x6E65675F656C6966;
    v8 = 0xEE00726F74617265;
  }

  if (a2)
  {
    v2 = 0x6E6F6974636E7566;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD964D50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7463656A626FLL;
    }

    else
    {
      v4 = 1635017060;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x64695F7473726966;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x64695F7473616CLL;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x65726F6D5F736168;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7463656A626FLL;
    }

    else
    {
      v9 = 1635017060;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x64695F7473616CLL;
    if (a2 != 3)
    {
      v6 = 0x65726F6D5F736168;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x64695F7473726966;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1DDA15440();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DD964ECC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6C69616D65;
    }

    else
    {
      v3 = 0x5F746E756F636361;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xEE00737574617473;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1701667182;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE500000000000000;
  v8 = 0x6C69616D65;
  if (a2 != 2)
  {
    v8 = 0x5F746E756F636361;
    v7 = 0xEE00737574617473;
  }

  if (a2)
  {
    v6 = 1701667182;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD965008(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701667182;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x746369727473;
    }

    if (v3 == 2)
    {
      v5 = 0x80000001DDA26BA0;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x616D65686373;
    }

    else
    {
      v4 = 1701667182;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xD000000000000010;
  v8 = 0x80000001DDA26BA0;
  if (a2 != 2)
  {
    v7 = 0x746369727473;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x616D65686373;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD965130(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000010;
      v4 = 0x80000001DDA26910;
    }

    else
    {
      v3 = 0x6C70755F656C6966;
      v4 = 0xEB0000000064616FLL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x65675F6567616D69;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xEF726F746172656ELL;
    }

    else
    {
      v4 = 0x80000001DDA268E0;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000001DDA26910;
      if (v3 != 0xD000000000000010)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xEB0000000064616FLL;
      if (v3 != 0x6C70755F656C6966)
      {
LABEL_26:
        v7 = sub_1DDA15440();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x65675F6567616D69;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2)
    {
      v6 = 0xEF726F746172656ELL;
    }

    else
    {
      v6 = 0x80000001DDA268E0;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_1DD9652A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6567617373656DLL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1701869940;
    }

    else
    {
      v4 = 0x6567617373656DLL;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xE400000000000000;
    v4 = 1701080931;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000020;
    }

    else
    {
      v4 = 0xD000000000000023;
    }

    if (v3 == 3)
    {
      v5 = 0x80000001DDA26870;
    }

    else
    {
      v5 = 0x80000001DDA268A0;
    }
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0xE400000000000000;
    v8 = 1701869940;
    v9 = a2 == 0;
LABEL_20:
    if (v9)
    {
      v10 = v2;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if (v4 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a2 != 2)
  {
    v2 = 0xD000000000000020;
    v6 = 0x80000001DDA26870;
    v7 = 0x80000001DDA268A0;
    v8 = 0xD000000000000023;
    v9 = a2 == 3;
    goto LABEL_20;
  }

  v11 = 0xE400000000000000;
  if (v4 != 1701080931)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v5 != v11)
  {
LABEL_30:
    v12 = sub_1DDA15440();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_1DD96540C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7107189;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7079745F656D696DLL;
    }

    else
    {
      v4 = 1702521203;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D616E5F656C6966;
    }

    else
    {
      v4 = 7107189;
    }

    if (v3)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0x7079745F656D696DLL;
  v8 = 0xE900000000000065;
  if (a2 != 2)
  {
    v7 = 1702521203;
    v8 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x6D616E5F656C6966;
    v6 = 0xE900000000000065;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD965548(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    while (1)
    {
      v6 = *v5++;
      __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
      sub_1DD96D6CC(v6);
      sub_1DD96A62C();
      sub_1DDA15420();
      v7 = v6;
      if (v2)
      {
        break;
      }

      result = sub_1DD96D364(v7);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_1DD96D364(v7);
  }

  return result;
}

uint64_t sub_1DD965608(uint64_t a1)
{
  if (*(v1 + 24))
  {
    sub_1DDA15590();

    sub_1DDA14BC0();
  }

  else
  {
    sub_1DDA15590();
  }

  v3 = *(v1 + 32);
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        v4 = 6;
      }

      else
      {
        if (v3 != 7)
        {
          goto LABEL_39;
        }

        v4 = 8;
      }
    }

    else if (v3 == 4)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }

LABEL_21:
    MEMORY[0x1E12B8440](v4);
    v5 = *(v1 + 40);
    if (v5)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    goto LABEL_21;
  }

  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if (v3 == 1)
  {
    v4 = 1;
    goto LABEL_21;
  }

LABEL_39:
  MEMORY[0x1E12B8440](7);

  sub_1DD96CD2C(a1, v3);
  sub_1DD96D364(v3);
  v5 = *(v1 + 40);
  if (v5)
  {
LABEL_22:
    sub_1DDA15590();

    sub_1DD96D208(a1, v5);

    v6 = *(v1 + 48);
    if (v6)
    {
      goto LABEL_23;
    }

LABEL_41:
    sub_1DDA15590();
    v9 = *(v1 + 56);
    if (v9)
    {
      goto LABEL_28;
    }

LABEL_42:
    sub_1DDA15590();
    v12 = *(v1 + 64);
    if (v12)
    {
      goto LABEL_33;
    }

    goto LABEL_43;
  }

LABEL_40:
  sub_1DDA15590();
  v6 = *(v1 + 48);
  if (!v6)
  {
    goto LABEL_41;
  }

LABEL_23:
  sub_1DDA15590();
  MEMORY[0x1E12B8440](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = v6 + 40;
    do
    {

      sub_1DDA14BC0();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  v9 = *(v1 + 56);
  if (!v9)
  {
    goto LABEL_42;
  }

LABEL_28:
  sub_1DDA15590();
  MEMORY[0x1E12B8440](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {

    v11 = v9 + 40;
    do
    {

      sub_1DDA14BC0();

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  v12 = *(v1 + 64);
  if (v12)
  {
LABEL_33:
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*(v12 + 16));
    v13 = *(v12 + 16);
    if (v13)
    {

      v14 = v12 + 40;
      do
      {

        sub_1DDA14BC0();

        v14 += 16;
        --v13;
      }

      while (v13);
    }

    if (*(v1 + 72))
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

LABEL_43:
  sub_1DDA15590();
  if (*(v1 + 72))
  {
LABEL_38:
    sub_1DDA15590();

    sub_1DD965608(a1);

    goto LABEL_45;
  }

LABEL_44:
  sub_1DDA15590();
LABEL_45:
  if (*(v1 + 80) != 2)
  {
    sub_1DDA15590();
  }

  sub_1DDA15590();
  v15 = *(v1 + 88);
  if (!v15)
  {
    sub_1DDA15590();
    goto LABEL_58;
  }

  sub_1DDA15590();
  if (v15 >> 62)
  {
    v19 = sub_1DDA15190();
    MEMORY[0x1E12B8440](v19);
    result = sub_1DDA15190();
    v17 = result;
    if (!result)
    {
      goto LABEL_58;
    }
  }

  else
  {
    result = MEMORY[0x1E12B8440](*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_58;
    }
  }

  if (v17 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v17; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12B7F50](i, v15);
    }

    else
    {
    }

    sub_1DD965608(a1);
  }

LABEL_58:
  if (!*(v1 + 104))
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  sub_1DDA14BC0();
}

unint64_t sub_1DD965AC0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000014;
    v6 = 0x664F796E61;
    if (a1 != 8)
    {
      v6 = 0x74736E6F63;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1836412517;
    if (a1 != 5)
    {
      v7 = 0x736D657469;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7470697263736564;
    v2 = 0x69747265706F7270;
    v3 = 0x726564726F2D78;
    if (a1 != 3)
    {
      v3 = 0x6465726975716572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701869940;
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
}

uint64_t sub_1DD965BEC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DD965AC0(*a1);
  v5 = v4;
  if (v3 == sub_1DD965AC0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DDA15440();
  }

  return v8 & 1;
}

uint64_t sub_1DD965C74()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DD965AC0(v1);
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD965CD8(uint64_t a1)
{
  sub_1DD965AC0(*v1);
  sub_1DDA14BC0();
}

uint64_t sub_1DD965D2C(uint64_t a1)
{
  v2 = *v1;
  sub_1DDA15570();
  sub_1DD965AC0(v2);
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD965D8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD96DD3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DD965DBC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD965AC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD965E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD96DD3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD965E38(uint64_t a1)
{
  v2 = sub_1DD96A304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD965E74(uint64_t a1)
{
  v2 = sub_1DD96A304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD965EB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1DD9AF0DC(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834A0, &qword_1DDA1A5B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834A8, &qword_1DDA1A5C0);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1DD9AF0DC((v6 > 1), v7 + 1, 1);
        v5 = v11;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v5;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DD966000(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83440, &qword_1DDA1A598);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD96A304();
  sub_1DDA15650();
  LOBYTE(v13) = 0;

  sub_1DDA15300();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v13 = v3[5];
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83410, &qword_1DDA1A588);
    sub_1DD96A468();
    sub_1DDA15330();
    v13 = v3[6];
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
    sub_1DD96A524(&qword_1ECD83458, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1DDA15330();
    v13 = v3[7];
    v12 = 4;
    sub_1DDA15330();
    v13 = v3[8];
    v12 = 5;
    sub_1DDA15330();
    v13 = v3[9];
    v12 = 6;
    sub_1DD96E4A0(&qword_1ECD83450, v10, type metadata accessor for JSONSchema, &unk_1DDA1A530);
    sub_1DDA15330();
    LOBYTE(v13) = 7;
    sub_1DDA15310();
    LOBYTE(v13) = 9;

    sub_1DDA15300();

    v13 = v3[11];
    v12 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83430, &qword_1DDA1A590);
    sub_1DD96A590(&qword_1ECD83460, &qword_1ECD83450, &unk_1DDA1A530, MEMORY[0x1E69E6300]);
    sub_1DDA15330();
    if (!v3[11])
    {
      v13 = v3[4];
      v12 = 1;
      sub_1DD96A62C();
      sub_1DDA15380();
    }

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1DD9664B4(void *a1, unint64_t a2)
{
  if (a2 >= 8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DDA15630();
    sub_1DD965548(a2, v4);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DDA15640();
    v4[6] = a2;
    sub_1DD96D6CC(a2);
    sub_1DDA14B70();
    __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_1DDA15470();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1DD966664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1DD96EA30(v20, v17, a4);
        sub_1DD96EA30(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_1DD96EB00(v14, a6);
        sub_1DD96EB00(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

void sub_1DD9668AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileGeneratorCall.File(0);
  v132 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v130 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v116 - v7;
  v9 = type metadata accessor for ImageGeneratorCall.Image(0);
  v131 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v129 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v116 - v12;
  v14 = type metadata accessor for MessageContent(0) - 8;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v128 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16) || !v19 || a1 == a2)
  {
    return;
  }

  v121 = &v116 - v17;
  v122 = v18;
  v126 = v13;
  v20 = 0;
  v21 = a1 + 32;
  v22 = a2 + 32;
  v118 = v19;
  v117 = v21;
  v116 = v22;
  while (1)
  {
    if (v20 == v19)
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v32 = v21 + 56 * v20;
    v34 = *v32;
    v33 = *(v32 + 8);
    v35 = *(v32 + 16);
    v36 = *(v32 + 24);
    v37 = *(v32 + 40);
    v140 = *(v32 + 32);
    v38 = *(v32 + 48);
    v39 = v22 + 56 * v20;
    v40 = *(v39 + 8);
    v134 = *v39;
    v135 = v35;
    v138 = v40;
    v42 = *(v39 + 16);
    v41 = *(v39 + 24);
    v139 = *(v39 + 32);
    v133 = *(v39 + 40);
    v43 = *(v39 + 48);
    v136 = v33;
    v137 = v42;
    if (v38 > 1)
    {
      if (v38 == 2)
      {
        if (v43 != 2)
        {
          return;
        }

        v125 = 2;
        if (v34 != v134 || v33 != v138)
        {
          v65 = v34;
          v66 = v41;
          v67 = sub_1DDA15440();
          v42 = v137;
          v41 = v66;
          v34 = v65;
          v35 = v135;
          if ((v67 & 1) == 0)
          {
            return;
          }
        }

        if (v35 != v42 || v36 != v41)
        {
          v69 = v34;
          v70 = v41;
          v71 = sub_1DDA15440();
          v42 = v137;
          v41 = v70;
          v34 = v69;
          v35 = v135;
          if ((v71 & 1) == 0)
          {
            return;
          }
        }

        v127 = v36;
        v72 = *(v140 + 16);
        if (v72 != *(v139 + 16))
        {
          return;
        }

        if (v72 && v140 != v139)
        {
          v73 = (*(v131 + 80) + 32) & ~*(v131 + 80);
          v74 = v140;
          v75 = v140 + v73;
          v76 = v37;
          v77 = v139 + v73;
          v78 = v33;
          v79 = v35;
          v123 = v41;
          sub_1DD96E3E4(v134, v138, v42, v41, v139, v133, 2u);
          v124 = v34;
          v120 = v76;
          sub_1DD96E3E4(v34, v78, v79, v127, v74, v76, 2u);
          v80 = 0;
          while (v80 < *(v140 + 16))
          {
            v81 = *(v131 + 72) * v80;
            v82 = v126;
            sub_1DD96EA30(v75 + v81, v126, type metadata accessor for ImageGeneratorCall.Image);
            if (v80 >= *(v139 + 16))
            {
              goto LABEL_117;
            }

            v83 = v129;
            sub_1DD96EA30(v77 + v81, v129, type metadata accessor for ImageGeneratorCall.Image);
            v84 = sub_1DDA13490();
            sub_1DD96EB00(v83, type metadata accessor for ImageGeneratorCall.Image);
            sub_1DD96EB00(v82, type metadata accessor for ImageGeneratorCall.Image);
            if ((v84 & 1) == 0)
            {
              goto LABEL_111;
            }

            if (v72 == ++v80)
            {
              v86 = v133;
              v85 = v134;
              v88 = v137;
              v87 = v138;
              v89 = v123;
              v90 = v139;
              v91 = 2;
              goto LABEL_102;
            }
          }

          goto LABEL_116;
        }
      }

      else if (v38 == 3)
      {
        if (v43 != 3)
        {
          return;
        }

        v125 = 3;
        if (v34 != v134 || v33 != v138)
        {
          v45 = v34;
          v46 = v41;
          v47 = sub_1DDA15440();
          v42 = v137;
          v41 = v46;
          v34 = v45;
          v35 = v135;
          if ((v47 & 1) == 0)
          {
            return;
          }
        }

        v127 = v36;
        v48 = *(v35 + 16);
        if (v48 != *(v42 + 16))
        {
          return;
        }

        if (v48 && v35 != v42)
        {
          v49 = (*(v132 + 80) + 32) & ~*(v132 + 80);
          v50 = v35 + v49;
          v51 = v37;
          v52 = v42 + v49;
          v53 = v35;
          v123 = v41;
          sub_1DD96E3E4(v134, v138, v42, v41, v139, v133, 3u);
          v124 = v34;
          v120 = v51;
          sub_1DD96E3E4(v34, v33, v53, v127, v140, v51, 3u);
          v54 = 0;
          while (v54 < *(v135 + 16))
          {
            v55 = *(v132 + 72) * v54;
            sub_1DD96EA30(v50 + v55, v8, type metadata accessor for FileGeneratorCall.File);
            if (v54 >= *(v137 + 16))
            {
              goto LABEL_115;
            }

            v56 = v8;
            v57 = v130;
            sub_1DD96EA30(v52 + v55, v130, type metadata accessor for FileGeneratorCall.File);
            v58 = sub_1DDA13490();
            v59 = v57;
            v8 = v56;
            sub_1DD96EB00(v59, type metadata accessor for FileGeneratorCall.File);
            sub_1DD96EB00(v56, type metadata accessor for FileGeneratorCall.File);
            if ((v58 & 1) == 0)
            {
              goto LABEL_111;
            }

            ++v54;
            v60 = v136;
            if (v48 == v54)
            {
              v28 = v133;
              v23 = v134;
              v25 = v137;
              v24 = v138;
              v26 = v123;
              v27 = v139;
              v29 = 3;
              goto LABEL_7;
            }
          }

          goto LABEL_114;
        }
      }

      else if (v35 | v33 | v34 | v36 | v140 | v37)
      {
        if (v43 != 4 || v134 != 1 || v42 | v138 | v41 | v139 | v133)
        {
          return;
        }
      }

      else if (v43 != 4 || v42 | v138 | v134 | v41 | v139 | v133)
      {
        return;
      }

      goto LABEL_9;
    }

    if (v38)
    {
      if (v43 != 1)
      {
        return;
      }

      if (v34 != v134 || v33 != v138)
      {
        v93 = v41;
        v94 = sub_1DDA15440();
        v42 = v137;
        v41 = v93;
        v35 = v135;
        if ((v94 & 1) == 0)
        {
          return;
        }
      }

      v95 = v35 == v42 && v36 == v41;
      if (!v95 && (sub_1DDA15440() & 1) == 0)
      {
        return;
      }

      v96 = v140 == v139 && v37 == v133;
      if (!v96 && (sub_1DDA15440() & 1) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

    if (v43)
    {
      return;
    }

    v125 = 0;
    if (v34)
    {
      v61 = v134;
      if (v34 == 1)
      {
        v62 = 0xE900000000000074;
        v63 = 0x6E61747369737361;
      }

      else
      {
        v62 = 0xE400000000000000;
        v63 = 1919251317;
      }
    }

    else
    {
      v62 = 0xE600000000000000;
      v63 = 0x6D6574737973;
      v61 = v134;
    }

    v124 = v34;
    if (v61)
    {
      if (v61 == 1)
      {
        v97 = 0xE900000000000074;
        v98 = 0x6E61747369737361;
      }

      else
      {
        v97 = 0xE400000000000000;
        v98 = 1919251317;
      }
    }

    else
    {
      v97 = 0xE600000000000000;
      v98 = 0x6D6574737973;
    }

    v120 = v37;
    v127 = v36;
    v123 = v41;
    if (v63 == v98 && v62 == v97)
    {
      sub_1DD96E3E4(v61, v138, v137, v41, v139, v133, 0);
      sub_1DD96E3E4(v124, v136, v135, v36, v140, v37, 0);
    }

    else
    {
      v99 = v41;
      v100 = sub_1DDA15440();
      sub_1DD96E3E4(v61, v138, v137, v99, v139, v133, 0);
      sub_1DD96E3E4(v124, v136, v135, v36, v140, v37, 0);

      if ((v100 & 1) == 0)
      {
        goto LABEL_111;
      }
    }

    if (v127)
    {
      break;
    }

    if (v123)
    {
      goto LABEL_111;
    }

    v102 = v135;
    v60 = v136;
    if (v136 == v138 && v135 == v137)
    {
      v23 = v134;
      v24 = v136;
      v25 = v135;
      goto LABEL_6;
    }

    v103 = v137;
    v104 = v138;
    v105 = v136;
    v106 = sub_1DDA15440();
    sub_1DD96E310(v134, v104, v103, v123, v139, v133, 0);
    sub_1DD96E310(v124, v105, v102, v127, v140, v120, 0);
    v19 = v118;
    v21 = v117;
    v22 = v116;
    if ((v106 & 1) == 0)
    {
      return;
    }

LABEL_9:
    if (++v20 == v19)
    {
      return;
    }
  }

  if ((v123 & 1) == 0 || (v101 = *(v136 + 16), v101 != *(v138 + 16)))
  {
LABEL_111:
    v115 = v125;
    sub_1DD96E310(v134, v138, v137, v123, v139, v133, v125);
    sub_1DD96E310(v124, v136, v135, v127, v140, v120, v115);
    return;
  }

  if (!v101)
  {
    v86 = v133;
    v85 = v134;
    v88 = v137;
    v87 = v138;
    v89 = v123;
    v90 = v139;
    v91 = 0;
LABEL_102:
    sub_1DD96E310(v85, v87, v88, v89, v90, v86, v91);
    v19 = v118;
    v21 = v117;
    v22 = v116;
    v30 = v120;
    v31 = v127;
    v60 = v136;
    goto LABEL_8;
  }

  v60 = v136;
  if (v136 == v138)
  {
    v23 = v134;
    v24 = v136;
LABEL_109:
    v25 = v137;
LABEL_6:
    v26 = v123;
    v27 = v139;
    v28 = v133;
    v29 = 0;
LABEL_7:
    sub_1DD96E310(v23, v24, v25, v26, v27, v28, v29);
    v19 = v118;
    v21 = v117;
    v22 = v116;
    v30 = v120;
    v31 = v127;
LABEL_8:
    sub_1DD96E310(v124, v60, v135, v31, v140, v30, v125);
    goto LABEL_9;
  }

  v107 = 0;
  v108 = v122;
  v109 = (*(v108 + 80) + 32) & ~*(v108 + 80);
  v119 = v136 + v109;
  v110 = v138 + v109;
  while (v107 < *(v60 + 16))
  {
    v111 = *(v108 + 72) * v107;
    v112 = v121;
    sub_1DD96EA30(v119 + v111, v121, type metadata accessor for MessageContent);
    if (v107 >= *(v138 + 16))
    {
      goto LABEL_119;
    }

    v113 = v128;
    sub_1DD96EA30(v110 + v111, v128, type metadata accessor for MessageContent);
    v114 = sub_1DD9F8D0C(v112, v113);
    sub_1DD96EB00(v113, type metadata accessor for MessageContent);
    sub_1DD96EB00(v112, type metadata accessor for MessageContent);
    if ((v114 & 1) == 0)
    {
      goto LABEL_111;
    }

    ++v107;
    v108 = v122;
    v60 = v136;
    if (v101 == v107)
    {
      v23 = v134;
      v24 = v138;
      goto LABEL_109;
    }
  }

LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
}

uint64_t sub_1DD9674A4(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for TextAnnotation.URLCitation(0);
  MEMORY[0x1EEE9AC00](v48);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextAnnotation.Type(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v46 = (v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = v41 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D0, &qword_1DDA1E1B0);
  MEMORY[0x1EEE9AC00](v49);
  v12 = v41 - v11;
  v13 = type metadata accessor for TextAnnotation(0) - 8;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v19 = v41 - v18;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v41[1] = v10;
  v42 = v16;
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v43 = *(v17 + 72);
  v44 = v41 - v18;
  v45 = v12;
  v47 = v6;
  v24 = v10;
  while (1)
  {
    sub_1DD96EA30(v22, v19, type metadata accessor for TextAnnotation);
    sub_1DD96EA30(v23, v16, type metadata accessor for TextAnnotation);
    v25 = &v12[*(v49 + 48)];
    sub_1DD96EA30(v19, v12, type metadata accessor for TextAnnotation.Type);
    sub_1DD96EA30(v16, v25, type metadata accessor for TextAnnotation.Type);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD96EA30(v12, v24, type metadata accessor for TextAnnotation.Type);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1DD96EA98(v25, v5, type metadata accessor for TextAnnotation.URLCitation);
        if ((sub_1DDA13490() & 1) == 0 || ((v36 = *(v48 + 20), v37 = *(v24 + v36), v38 = *(v24 + v36 + 8), v39 = &v5[v36], v37 != *v39) || v38 != *(v39 + 1)) && (sub_1DDA15440() & 1) == 0 || *(v24 + *(v48 + 24)) != *&v5[*(v48 + 24)])
        {
          sub_1DD96EB00(v5, type metadata accessor for TextAnnotation.URLCitation);
          sub_1DD96EB00(v24, type metadata accessor for TextAnnotation.URLCitation);
          sub_1DD96EB00(v12, type metadata accessor for TextAnnotation.Type);
          goto LABEL_29;
        }

        sub_1DD96EB00(v5, type metadata accessor for TextAnnotation.URLCitation);
        sub_1DD96EB00(v24, type metadata accessor for TextAnnotation.URLCitation);
        goto LABEL_6;
      }

      sub_1DD96EB00(v24, type metadata accessor for TextAnnotation.URLCitation);
LABEL_27:
      sub_1DD90D378(v12, &qword_1ECD834D0, &qword_1DDA1E1B0);
      goto LABEL_29;
    }

    v26 = v12;
    v27 = v46;
    sub_1DD96EA30(v26, v46, type metadata accessor for TextAnnotation.Type);
    v29 = *v27;
    v28 = v27[1];
    v30 = v27[2];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v19 = v44;
      v12 = v45;
      v16 = v42;
      goto LABEL_27;
    }

    v31 = *v25;
    v32 = *(v25 + 1);
    v33 = *(v25 + 2);
    if (v29 != v31 || v28 != v32)
    {
      break;
    }

    v16 = v42;
    if (v30 != v33)
    {
      goto LABEL_28;
    }

LABEL_6:
    v12 = v45;
    sub_1DD96EB00(v45, type metadata accessor for TextAnnotation.Type);
    sub_1DD96EB00(v16, type metadata accessor for TextAnnotation);
    v19 = v44;
    sub_1DD96EB00(v44, type metadata accessor for TextAnnotation);
    v23 += v43;
    v22 += v43;
    if (!--v20)
    {
      return 1;
    }
  }

  v35 = sub_1DDA15440();

  v16 = v42;
  if ((v35 & 1) != 0 && v30 == v33)
  {
    goto LABEL_6;
  }

LABEL_28:
  sub_1DD96EB00(v45, type metadata accessor for TextAnnotation.Type);
  v19 = v44;
LABEL_29:
  sub_1DD96EB00(v16, type metadata accessor for TextAnnotation);
  sub_1DD96EB00(v19, type metadata accessor for TextAnnotation);
  return 0;
}

uint64_t sub_1DD967A5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_1DD96A680(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1DD967B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DDA15440() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DD967BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    v9 = a1;
    v10 = a2;
    v11 = sub_1DDA15440();
    a2 = v10;
    v12 = v11;
    a1 = v9;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = a1 + 32;
  v13 = a2 + 32;
  v14 = 1;
  while (1)
  {
    if (v5 <= 1u)
    {
      if (v5)
      {
        sub_1DD940DFC(v6, v7, v8);
        if (v8 != 1)
        {
LABEL_42:
          sub_1DD96E820(v6, v7, v8);
          return 0;
        }

        if (v3 != v6)
        {
          return 0;
        }
      }

      else
      {
        sub_1DD940DFC(v6, v7, v8);
        if (v8)
        {
          goto LABEL_42;
        }

        if ((v6 ^ v3))
        {
          return 0;
        }
      }

      goto LABEL_26;
    }

    if (v5 == 2)
    {
      if (v8 != 2 || (v3 != v6 || v4 != v7) && (sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_26;
    }

    if (v8 != 3)
    {
      return 0;
    }

    v15 = *(v3 + 16);
    if (v15 != *(v6 + 16))
    {
      return 0;
    }

    if (v15 && v3 != v6)
    {
      break;
    }

LABEL_26:
    if (v14 == v2)
    {
      return 1;
    }

    v16 = v14 + 1;
    v17 = v24 + 40 * v14;
    v3 = *(v17 + 16);
    v4 = *(v17 + 24);
    v5 = *(v17 + 32);
    v18 = v13 + 40 * v14;
    v6 = *(v18 + 16);
    v7 = *(v18 + 24);
    v8 = *(v18 + 32);
    v19 = *v17 == *v18 && *(v17 + 8) == *(v18 + 8);
    ++v14;
    if (!v19)
    {
      v14 = v16;
      if ((sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }
    }
  }

  v20 = (v3 + 40);
  v21 = (v6 + 40);
  while (1)
  {
    v22 = *(v20 - 1) == *(v21 - 1) && *v20 == *v21;
    if (!v22 && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }

    v20 += 2;
    v21 += 2;
    if (!--v15)
    {
      goto LABEL_26;
    }
  }
}

uint64_t sub_1DD967DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    do
    {
      v6 = (v4 + 72 * v3);
      v7 = v6[1];
      v62 = *v6;
      v63 = v7;
      v8 = v6[3];
      v64 = v6[2];
      v65 = v8;
      v66 = *(v6 + 32);
      v9 = (v5 + 72 * v3);
      v10 = v9[3];
      v69 = v9[2];
      v70 = v10;
      v71 = *(v9 + 32);
      v11 = v9[1];
      v67 = *v9;
      v68 = v11;
      if (v62 != v67 && (sub_1DDA15440() & 1) == 0 || v63 != v68 && (sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }

      v12 = v64;
      v13 = v69;
      if (v64)
      {
        if (!v69)
        {
          return 0;
        }

        v14 = *(v64 + 16);
        if (v14 != *(v69 + 16))
        {
          return 0;
        }

        if (v14 && v64 != v69)
        {
          v58 = v69 + 32;
          v59 = v64 + 32;
          sub_1DD96E844(&v62, v61);
          sub_1DD96E844(&v67, v61);

          v16 = 0;
          v54 = v3;
          v55 = v2;
          v52 = v5;
          v53 = v4;
          v56 = v13;
          v50 = v14;
          v51 = v12;
          while (v16 < *(v12 + 16))
          {
            if (v16 >= *(v13 + 16))
            {
              goto LABEL_87;
            }

            v17 = *(v59 + 8 * v16);
            v18 = *(v58 + 8 * v16);
            if (v17 != v18)
            {
              if (*(v17 + 16) != *(v18 + 16))
              {
LABEL_81:

                goto LABEL_82;
              }

              v57 = v16;
              v19 = v17 + 64;
              v20 = 1 << *(v17 + 32);
              if (v20 < 64)
              {
                v21 = ~(-1 << v20);
              }

              else
              {
                v21 = -1;
              }

              v22 = v21 & *(v17 + 64);
              v23 = (v20 + 63) >> 6;
              v60 = v17;

              v24 = 0;
              while (v22)
              {
                v25 = __clz(__rbit64(v22));
                v22 &= v22 - 1;
                v26 = v25 | (v24 << 6);
                result = v60;
LABEL_33:
                v29 = 16 * v26;
                v30 = (*(result + 48) + v29);
                v31 = *v30;
                v32 = v30[1];
                v33 = (*(result + 56) + v29);
                v35 = *v33;
                v34 = v33[1];

                v36 = sub_1DD96AC38(v31, v32);
                v38 = v37;

                if ((v38 & 1) == 0)
                {

LABEL_80:

                  goto LABEL_81;
                }

                v39 = (*(v18 + 56) + 16 * v36);
                if (*v39 == v35 && v39[1] == v34)
                {
                }

                else
                {
                  v41 = sub_1DDA15440();

                  if ((v41 & 1) == 0)
                  {
                    goto LABEL_80;
                  }
                }
              }

              v27 = v24;
              result = v60;
              while (1)
              {
                v24 = v27 + 1;
                if (__OFADD__(v27, 1))
                {
                  break;
                }

                if (v24 >= v23)
                {

                  v3 = v54;
                  v2 = v55;
                  v5 = v52;
                  v4 = v53;
                  v13 = v56;
                  v16 = v57;
                  v14 = v50;
                  v12 = v51;
                  goto LABEL_16;
                }

                v28 = *(v19 + 8 * v24);
                ++v27;
                if (v28)
                {
                  v22 = (v28 - 1) & v28;
                  v26 = __clz(__rbit64(v28)) | (v24 << 6);
                  goto LABEL_33;
                }
              }

              __break(1u);
              break;
            }

LABEL_16:
            if (++v16 == v14)
            {

              goto LABEL_42;
            }
          }

          __break(1u);
LABEL_87:
          __break(1u);
          __break(1u);
          return result;
        }
      }

      else if (v69)
      {
        return 0;
      }

      sub_1DD96E844(&v62, v61);
      sub_1DD96E844(&v67, v61);
LABEL_42:
      if (BYTE8(v64) != BYTE8(v69) || BYTE9(v64) != BYTE9(v69))
      {
        goto LABEL_82;
      }

      v42 = v71;
      if (v66 == 255)
      {
        sub_1DD96E8A0(&v67);
        sub_1DD96E8A0(&v62);
        if (v42 != 255)
        {
          return 0;
        }
      }

      else
      {
        if (v71 == 255)
        {
          goto LABEL_82;
        }

        v43 = v65;
        v44 = v70;
        if (v66 > 1u)
        {
          if (v66 == 2)
          {
            if (v71 != 2)
            {
              goto LABEL_82;
            }

            if (v65 != v70)
            {
              v45 = sub_1DDA15440();
              sub_1DD96E8A0(&v67);
              sub_1DD96E8A0(&v62);
              if ((v45 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_66;
            }
          }

          else
          {
            if (v71 != 3)
            {
              goto LABEL_82;
            }

            v46 = *(v65 + 16);
            if (v46 != *(v70 + 16))
            {
              goto LABEL_82;
            }

            if (v46 && v65 != v70)
            {
              v47 = (v65 + 40);
              v48 = (v70 + 40);
              while (1)
              {
                v49 = *(v47 - 1) == *(v48 - 1) && *v47 == *v48;
                if (!v49 && (sub_1DDA15440() & 1) == 0)
                {
                  break;
                }

                v47 += 2;
                v48 += 2;
                if (!--v46)
                {
                  goto LABEL_65;
                }
              }

LABEL_82:
              sub_1DD96E8A0(&v67);
              sub_1DD96E8A0(&v62);
              return 0;
            }
          }

LABEL_65:
          sub_1DD96E8A0(&v67);
          sub_1DD96E8A0(&v62);
        }

        else if (v66)
        {
          if (v71 != 1)
          {
            goto LABEL_82;
          }

          sub_1DD940DFC(v70, *(&v70 + 1), 1);
          sub_1DD96E8A0(&v67);
          sub_1DD96E8A0(&v62);
          if (v43 != v44)
          {
            return 0;
          }
        }

        else
        {
          if (v71)
          {
            goto LABEL_82;
          }

          sub_1DD940DFC(v70, *(&v70 + 1), 0);
          sub_1DD96E8A0(&v67);
          sub_1DD96E8A0(&v62);
          if ((v44 ^ v43))
          {
            return 0;
          }
        }
      }

LABEL_66:
      if (HIBYTE(v66) != HIBYTE(v71))
      {
        return 0;
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return 1;
}

void sub_1DD96831C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a2 + 72);
  for (i = a1 + 40; ; i += 48)
  {
    v14 = *(i - 8);
    v13 = *i;
    v16 = *(i + 8);
    v15 = *(i + 16);
    v17 = *(i + 24);
    LODWORD(v18) = *(i + 32);
    v20 = *(v3 - 5);
    v19 = *(v3 - 4);
    v21 = *(v3 - 3);
    v22 = *(v3 - 2);
    v23 = *(v3 - 1);
    v24 = *v3;
    if (!(v18 >> 6))
    {
      if (v24 >= 0x40)
      {
        return;
      }

      v121 = *(i + 24);
      v114 = i;
      v109 = v3;
      v118 = v2;
      v41 = *(v3 - 1);
      v126 = *(i + 32);
      v42 = *(i - 8);
      if (v14 != v20 || v13 != v19)
      {
        v43 = *i;
        v44 = *(i + 8);
        v45 = *(v3 - 3);
        v46 = *(v3 - 5);
        v47 = v19;
        v48 = *(i + 16);
        v49 = sub_1DDA15440();
        v16 = v44;
        v15 = v48;
        v19 = v47;
        v20 = v46;
        v21 = v45;
        v13 = v43;
        if ((v49 & 1) == 0)
        {
          return;
        }
      }

      v50 = v13;
      if (v16 != v21 || v15 != v22)
      {
        v51 = v16;
        v52 = v21;
        v53 = v20;
        v54 = v19;
        v55 = v15;
        v56 = sub_1DDA15440();
        v16 = v51;
        v15 = v55;
        v19 = v54;
        v20 = v53;
        v21 = v52;
        if ((v56 & 1) == 0)
        {
          return;
        }
      }

      v124 = v19;
      v128 = v21;
      v57 = v16;
      v58 = v15;
      sub_1DD96E9C0(v20, v19, v21, v22, v41, v24);
      sub_1DD96E9C0(v42, v50, v57, v58, v121, v126);
      if ((sub_1DD96D458(v121, v41) & 1) == 0)
      {
        sub_1DD96E950(v20, v124, v128, v22, v41, v24);
        v100 = v42;
        v101 = v50;
        v102 = v57;
        v103 = v58;
        v104 = v121;
        v105 = v126;
        goto LABEL_150;
      }

      sub_1DD96E950(v42, v50, v57, v58, v121, v126);
      sub_1DD96E950(v20, v124, v128, v22, v41, v24);
      v2 = v118;
      v3 = v109;
      i = v114;
      if ((v24 ^ v126))
      {
        return;
      }

      goto LABEL_7;
    }

    if (v18 >> 6 != 1)
    {
      if (v16 | v13 | v14 | v15 | v17 || v18 != 128)
      {
        v59 = v16 | v13 | v15 | v17;
        if (v18 == 128 && v14 == 1 && !v59)
        {
          if ((v24 & 0xC0) != 0x80 || v24 != 128 || v20 != 1)
          {
            return;
          }
        }

        else if (v18 == 128 && v14 == 2 && !v59)
        {
          if ((v24 & 0xC0) != 0x80 || v24 != 128 || v20 != 2)
          {
            return;
          }
        }

        else if ((v24 & 0xC0) != 0x80 || v24 != 128 || v20 != 3)
        {
          return;
        }

        if (v21 | v19 | v22 | v23)
        {
          return;
        }
      }

      else if ((v24 & 0xC0) != 0x80 || v21 | v19 | v20 | v22 | v23 || v24 != 128)
      {
        return;
      }

      goto LABEL_7;
    }

    if ((v24 & 0xC0) != 0x40)
    {
      return;
    }

    v25 = *(i - 8);
    v26 = *(v3 - 5);
    v113 = *(i + 16);
    v120 = *(i + 8);
    v117 = *i;
    v125 = *(i + 32);
    v111 = *(v3 - 2);
    v127 = *(v3 - 3);
    v123 = *(v3 - 4);
    v112 = *(v3 - 1);
    v116 = *v3;
    if (v25 == 5)
    {
      if (v26 != 5)
      {
        return;
      }

      v27 = *(i + 24);
      v28 = *(v3 - 1);
      v29 = *(i - 8);
      v18 = *i;
      v30 = *(i + 8);
      v31 = i;
      v32 = *(i + 16);
      sub_1DD96E9C0(v20, v19, v21, *(v3 - 2), v28, *v3);
      v33 = v29;
      v34 = v18;
      LOBYTE(v18) = v125;
      v35 = v29;
      v23 = v28;
      v36 = v30;
      v37 = v32;
      v38 = v32;
      i = v31;
      v39 = v27;
      v40 = v27;
      v14 = v35;
      sub_1DD96E9C0(v33, v34, v36, v38, v40, v125);
      goto LABEL_72;
    }

    if (v26 == 5)
    {
      return;
    }

    if (*(i - 8) <= 1u)
    {
      if (*(i - 8))
      {
        v60 = 0xE500000000000000;
        v61 = 0x6C6C616D73;
        if (*(v3 - 5) <= 1u)
        {
LABEL_42:
          if (*(v3 - 5))
          {
            v62 = 0xE500000000000000;
            v63 = 0x6C6C616D73;
          }

          else
          {
            v62 = 0xE800000000000000;
            v63 = 0x6465727265666E69;
          }

          goto LABEL_68;
        }
      }

      else
      {
        v60 = 0xE800000000000000;
        v61 = 0x6465727265666E69;
        if (*(v3 - 5) <= 1u)
        {
          goto LABEL_42;
        }
      }
    }

    else if (v25 == 2)
    {
      v60 = 0xE600000000000000;
      v61 = 0x6D756964656DLL;
      if (*(v3 - 5) <= 1u)
      {
        goto LABEL_42;
      }
    }

    else if (v25 == 3)
    {
      v60 = 0xE500000000000000;
      v61 = 0x656772616CLL;
      if (*(v3 - 5) <= 1u)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v60 = 0xE600000000000000;
      v61 = 0x656772616C78;
      if (*(v3 - 5) <= 1u)
      {
        goto LABEL_42;
      }
    }

    if (v26 == 2)
    {
      v62 = 0xE600000000000000;
      v63 = 0x6D756964656DLL;
    }

    else if (v26 == 3)
    {
      v62 = 0xE500000000000000;
      v63 = 0x656772616CLL;
    }

    else
    {
      v62 = 0xE600000000000000;
      v63 = 0x656772616C78;
    }

LABEL_68:
    if (v61 == v63 && v60 == v62)
    {
      sub_1DD96E9C0(v20, v19, v21, v22, v23, v24);
      v39 = v17;
      sub_1DD96E9C0(v14, v117, v120, v113, v17, v18);

      v37 = v113;

      goto LABEL_72;
    }

    v39 = *(i + 24);
    v64 = *(v3 - 2);
    v65 = v2;
    v66 = *(v3 - 3);
    v67 = v3;
    v68 = *(v3 - 5);
    v69 = v19;
    v108 = sub_1DDA15440();
    v70 = v68;
    v71 = v69;
    v20 = v68;
    v3 = v67;
    v72 = v66;
    v2 = v65;
    v23 = v112;
    sub_1DD96E9C0(v70, v71, v72, v64, v112, v116);
    v37 = v113;
    sub_1DD96E9C0(v14, v117, v120, v113, v39, v18);

    if ((v108 & 1) == 0)
    {
      break;
    }

LABEL_72:
    v119 = v20;
    v73 = BYTE1(v20);
    v122 = v39;
    if (BYTE1(v14) == 4)
    {
      v74 = v120;
      v75 = v111;
      v76 = v37;
      if (v73 != 4)
      {
        goto LABEL_145;
      }

      goto LABEL_95;
    }

    if (BYTE1(v20) == 4)
    {
      sub_1DD96E950(v20, v123, v127, v111, v23, v116);
      v100 = v14;
      v101 = v117;
      v102 = v120;
      goto LABEL_148;
    }

    if (BYTE1(v14) > 1u)
    {
      v77 = 0xE400000000000000;
      if (BYTE1(v14) == 2)
      {
        v78 = 1819042164;
        if (BYTE1(v20) <= 1u)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v78 = 1701079415;
        if (BYTE1(v20) <= 1u)
        {
LABEL_87:
          if (BYTE1(v20))
          {
            v79 = 0xE600000000000000;
            v80 = 0x657261757173;
          }

          else
          {
            v79 = 0xE800000000000000;
            v80 = 0x6465727265666E69;
          }

          goto LABEL_91;
        }
      }
    }

    else if (BYTE1(v14))
    {
      v77 = 0xE600000000000000;
      v78 = 0x657261757173;
      if (BYTE1(v20) <= 1u)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v77 = 0xE800000000000000;
      v78 = 0x6465727265666E69;
      if (BYTE1(v20) <= 1u)
      {
        goto LABEL_87;
      }
    }

    v79 = 0xE400000000000000;
    if (v73 == 2)
    {
      v80 = 1819042164;
    }

    else
    {
      v80 = 1701079415;
    }

LABEL_91:
    if (v78 == v80 && v77 == v79)
    {

      v74 = v120;
      v75 = v111;
      v23 = v112;
      v76 = v113;
    }

    else
    {
      v81 = sub_1DDA15440();

      v74 = v120;
      v75 = v111;
      v23 = v112;
      v76 = v113;
      if ((v81 & 1) == 0)
      {
        goto LABEL_145;
      }
    }

LABEL_95:
    if (BYTE2(v14) == 4)
    {
      if (BYTE2(v119) != 4)
      {
        goto LABEL_145;
      }

      goto LABEL_120;
    }

    if (BYTE2(v119) == 4)
    {
      goto LABEL_145;
    }

    if (BYTE2(v14) > 1u)
    {
      if (BYTE2(v14) == 2)
      {
        v82 = 0xE400000000000000;
        v83 = 1751607656;
        if (BYTE2(v119) > 1u)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v82 = 0xE800000000000000;
        v83 = 0x6465727265666E69;
        if (BYTE2(v119) > 1u)
        {
LABEL_105:
          if (BYTE2(v119) == 2)
          {
            v84 = 0xE400000000000000;
            v85 = 1751607656;
          }

          else
          {
            v84 = 0xE800000000000000;
            v85 = 0x6465727265666E69;
          }

          goto LABEL_114;
        }
      }
    }

    else if (BYTE2(v14))
    {
      v82 = 0xE600000000000000;
      v83 = 0x6D756964656DLL;
      if (BYTE2(v119) > 1u)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v82 = 0xE300000000000000;
      v83 = 7827308;
      if (BYTE2(v119) > 1u)
      {
        goto LABEL_105;
      }
    }

    if (BYTE2(v119))
    {
      v84 = 0xE600000000000000;
      v85 = 0x6D756964656DLL;
    }

    else
    {
      v84 = 0xE300000000000000;
      v85 = 7827308;
    }

LABEL_114:
    v86 = v75;
    if (v83 == v85 && v82 == v84)
    {

      v74 = v120;
      v75 = v86;
      v23 = v112;
      v76 = v113;
      if ((v120 & 0x100) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_117;
    }

    v91 = sub_1DDA15440();

    v74 = v120;
    v75 = v86;
    v23 = v112;
    v76 = v113;
    if ((v91 & 1) == 0)
    {
      goto LABEL_145;
    }

LABEL_120:
    if ((v74 & 0x100) == 0)
    {
LABEL_121:
      v89 = v39;
      if ((v127 & 0x100) != 0)
      {
LABEL_145:
        v107 = v76;
        sub_1DD96E950(v119, v123, v127, v75, v23, v116);
        v100 = v14;
        v101 = v117;
        v102 = v74;
        v103 = v107;
        v104 = v39;
        goto LABEL_149;
      }

      v87 = v14;
      v88 = v116;
      if (v74)
      {
        v90 = v117;
        if ((v127 & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v90 = v117;
        if ((v127 & 1) != 0 || v117 != v123)
        {
LABEL_140:
          v96 = v119;
          v97 = v123;
          v98 = v127;
          v99 = v23;
LABEL_143:
          v106 = v76;
          sub_1DD96E950(v96, v97, v98, v75, v99, v88);
          v100 = v87;
          v101 = v90;
          v102 = v74;
          v103 = v106;
          v104 = v89;
          v105 = v125;
          goto LABEL_150;
        }
      }

      goto LABEL_127;
    }

LABEL_117:
    v87 = v14;
    v88 = v116;
    v89 = v122;
    v90 = v117;
    if ((v127 & 0x100) == 0)
    {
      goto LABEL_140;
    }

LABEL_127:
    if (!v89)
    {
      v95 = v75;
      sub_1DD96E950(v87, v90, v74, v76, 0, v125);
      if (v23)
      {
        v100 = v119;
        v101 = v123;
        v102 = v127;
        v103 = v95;
        v104 = v23;
        v105 = v88;
        goto LABEL_150;
      }

      v7 = v119;
      v8 = v123;
      v9 = v127;
      v10 = v95;
      v11 = 0;
      v12 = v88;
      goto LABEL_6;
    }

    if (!v23)
    {
      v96 = v119;
      v97 = v123;
      v98 = v127;
      v99 = 0;
      goto LABEL_143;
    }

    if (v76 == v75 && v89 == v23)
    {
      v5 = v88;
      v6 = v76;
      sub_1DD96E950(v119, v123, v127, v76, v89, v5);
      v7 = v87;
      v8 = v90;
      v9 = v74;
      v10 = v6;
      v11 = v89;
      v12 = v125;
LABEL_6:
      sub_1DD96E950(v7, v8, v9, v10, v11, v12);
      goto LABEL_7;
    }

    v92 = v75;
    v115 = i;
    v93 = v76;
    v110 = sub_1DDA15440();
    sub_1DD96E950(v119, v123, v127, v92, v23, v88);
    v94 = v93;
    i = v115;
    sub_1DD96E950(v87, v90, v74, v94, v89, v125);
    if ((v110 & 1) == 0)
    {
      return;
    }

LABEL_7:
    v3 += 48;
    if (!--v2)
    {
      return;
    }
  }

  sub_1DD96E950(v20, v123, v127, v111, v112, v116);
  v100 = v14;
  v101 = v117;
  v102 = v120;
LABEL_148:
  v103 = v37;
  v104 = v39;
LABEL_149:
  v105 = v18;
LABEL_150:
  sub_1DD96E950(v100, v101, v102, v103, v104, v105);
}

uint64_t sub_1DD968EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1DDA15440() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1DDA15440() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DD968FB8(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for JSONSchema();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1E12B7F50](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v14 = *(v3 + 8 * v12);

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v15 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v15 = MEMORY[0x1E12B7F50](v12 - 4, a2);
LABEL_26:
        LOBYTE(v4) = sub_1DD96D458(v14, v15);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v16 = (v3 + 32);
    v17 = (a2 + 32);
    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v5 - 1;
    while (1)
    {
      if (!v18)
      {
        goto LABEL_40;
      }

      if (!v19)
      {
        break;
      }

      v21 = *v16++;
      a2 = v21;
      v22 = *v17++;
      v3 = v22;

      v4 = sub_1DD96D458(a2, v22);

      v24 = v20-- != 0;
      if (v4)
      {
        --v19;
        --v18;
        if (v24)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1DDA15190();
  }

  result = sub_1DDA15190();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_1DD9691FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 > 3)
      {
        if (v5 > 5)
        {
          if (v5 == 6)
          {
            if (v7 != 6)
            {
              return 0;
            }

            goto LABEL_6;
          }

          if (v5 == 7)
          {
            if (v7 != 7)
            {
              return 0;
            }

            goto LABEL_6;
          }
        }

        else
        {
          if (v5 == 4)
          {
            if (v7 != 4)
            {
              return 0;
            }

            goto LABEL_6;
          }

          if (v5 == 5)
          {
            if (v7 != 5)
            {
              return 0;
            }

            goto LABEL_6;
          }
        }
      }

      else if (v5 > 1)
      {
        if (v5 == 2)
        {
          if (v7 != 2)
          {
            return 0;
          }

          goto LABEL_6;
        }

        if (v5 == 3)
        {
          if (v7 != 3)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else
      {
        if (!v5)
        {
          if (v7)
          {
            return 0;
          }

          goto LABEL_6;
        }

        if (v5 == 1)
        {
          if (v7 != 1)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      if (v7 < 8)
      {
        return 0;
      }

      sub_1DD96D6CC(*v4);
      sub_1DD96D6CC(v5);
      v8 = sub_1DD9691FC(v5, v7);
      sub_1DD96D364(v7);
      sub_1DD96D364(v5);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

LABEL_6:
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1DD969360(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = *(v3 - 16);
      v9 = *(v4 - 16);
      v11 = *(v4 - 1);
      v10 = *v4;
      if (v8 == 2)
      {
        v12 = 0xD000000000000010;
      }

      else
      {
        v12 = 0x6C70755F656C6966;
      }

      if (v8 == 2)
      {
        v13 = 0x80000001DDA26910;
      }

      else
      {
        v13 = 0xEB0000000064616FLL;
      }

      if (*(v3 - 16))
      {
        v14 = 0x65675F6567616D69;
      }

      else
      {
        v14 = 0xD000000000000010;
      }

      if (*(v3 - 16))
      {
        v15 = 0xEF726F746172656ELL;
      }

      else
      {
        v15 = 0x80000001DDA268E0;
      }

      if (*(v3 - 16) <= 1u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (*(v3 - 16) <= 1u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      if (v9 == 2)
      {
        v18 = 0xD000000000000010;
      }

      else
      {
        v18 = 0x6C70755F656C6966;
      }

      if (v9 == 2)
      {
        v19 = 0x80000001DDA26910;
      }

      else
      {
        v19 = 0xEB0000000064616FLL;
      }

      if (*(v4 - 16))
      {
        v20 = 0x65675F6567616D69;
      }

      else
      {
        v20 = 0xD000000000000010;
      }

      if (*(v4 - 16))
      {
        v21 = 0xEF726F746172656ELL;
      }

      else
      {
        v21 = 0x80000001DDA268E0;
      }

      if (*(v4 - 16) <= 1u)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      if (*(v4 - 16) <= 1u)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      if (v16 == v22 && v17 == v23)
      {
      }

      else
      {
        v24 = sub_1DDA15440();

        if ((v24 & 1) == 0)
        {

          return 0;
        }
      }

      if (v7 == v11 && v6 == v10)
      {
      }

      else
      {
        v5 = sub_1DDA15440();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t sub_1DD9695C8(uint64_t a1, uint64_t a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      return MEMORY[0x1E12B8440](v3);
    }

    if (a2 == 6)
    {
      v3 = 6;
      return MEMORY[0x1E12B8440](v3);
    }

    if (a2 == 7)
    {
      v3 = 8;
      return MEMORY[0x1E12B8440](v3);
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }

      return MEMORY[0x1E12B8440](v3);
    }

    if (!a2)
    {
      v3 = 0;
      return MEMORY[0x1E12B8440](v3);
    }

    if (a2 == 1)
    {
      v3 = 1;
      return MEMORY[0x1E12B8440](v3);
    }
  }

  MEMORY[0x1E12B8440](7);

  return sub_1DD96CD2C(a1, a2);
}

uint64_t sub_1DD9696AC(uint64_t a1)
{
  sub_1DDA15570();
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        v2 = 4;
      }

      else
      {
        v2 = 5;
      }

      goto LABEL_18;
    }

    if (a1 == 6)
    {
      v2 = 6;
      goto LABEL_18;
    }

    if (a1 == 7)
    {
      v2 = 8;
      goto LABEL_18;
    }

LABEL_20:
    MEMORY[0x1E12B8440](7);
    sub_1DD96CD2C(v4, a1);
    return sub_1DDA155B0();
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    goto LABEL_18;
  }

  if (!a1)
  {
    v2 = 0;
    goto LABEL_18;
  }

  if (a1 != 1)
  {
    goto LABEL_20;
  }

  v2 = 1;
LABEL_18:
  MEMORY[0x1E12B8440](v2);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9697B8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DD96DD88(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DD969810(uint64_t a1)
{
  v2 = *v1;
  sub_1DDA15570();
  if (v2 > 3)
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_18;
    }

    if (v2 == 6)
    {
      v3 = 6;
      goto LABEL_18;
    }

    if (v2 == 7)
    {
      v3 = 8;
      goto LABEL_18;
    }

LABEL_20:
    MEMORY[0x1E12B8440](7);
    sub_1DD96CD2C(v5, v2);
    return sub_1DDA155B0();
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    goto LABEL_18;
  }

  if (!v2)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if (v2 != 1)
  {
    goto LABEL_20;
  }

  v3 = 1;
LABEL_18:
  MEMORY[0x1E12B8440](v3);
  return sub_1DDA155B0();
}

void *sub_1DD969924()
{

  sub_1DD96D364(*(v0 + 32));

  v1 = *(v0 + 72);
  *(v0 + 72) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 72);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_1DD9699DC()
{
  sub_1DD969924();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t get_enum_tag_for_layout_string_5Anvil10JSONSchemaC4TypeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD969A58(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 8))
  {
    return (*a1 + 2147483640);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD969AAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

void *sub_1DD969B08(void *result, int a2)
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

unint64_t sub_1DD969B3C()
{
  result = qword_1ECD833E8;
  if (!qword_1ECD833E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD833E8);
  }

  return result;
}

uint64_t *sub_1DD969B90(void *a1)
{
  v3 = v1;
  v17 = *v3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833F8, &qword_1DDA1A580);
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = v15 - v6;
  *(v3 + 5) = 0u;
  v3[2] = 0;
  v3[3] = 0;
  *(v3 + 7) = 0u;
  v3[9] = 0;
  *(v3 + 80) = 2;
  v3[11] = 0;
  v3[12] = 0;
  v3[13] = 0;
  v8 = a1[3];
  v18 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DD96A304();
  sub_1DDA15620();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v20) = 0;
    v3[2] = sub_1DDA15220();
    v3[3] = v9;

    v19 = 1;
    sub_1DD96A358();
    sub_1DDA152C0();
    v3[4] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83410, &qword_1DDA1A588);
    v19 = 2;
    sub_1DD96A3AC();
    sub_1DDA15260();
    v3[5] = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
    v19 = 3;
    sub_1DD96A524(&qword_1ECD83428, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1DDA15260();
    v3[6] = v20;

    v19 = 4;
    sub_1DDA15260();
    v15[1] = v5;
    v3[7] = v20;

    v19 = 5;
    sub_1DDA15260();
    v3[8] = v20;

    v19 = 6;
    sub_1DD96E4A0(&qword_1ECD83420, v11, type metadata accessor for JSONSchema, &unk_1DDA1A558);
    sub_1DDA15260();
    v3[9] = v20;

    LOBYTE(v20) = 7;
    *(v3 + 80) = sub_1DDA15230();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83430, &qword_1DDA1A590);
    v19 = 8;
    sub_1DD96A590(&qword_1ECD83438, &qword_1ECD83420, &unk_1DDA1A558, MEMORY[0x1E69E6330]);
    sub_1DDA15260();
    v3[11] = v20;

    LOBYTE(v20) = 9;
    v12 = sub_1DDA15220();
    v14 = v13;
    (*(v5 + 8))(v7, v16);
    v3[12] = v12;
    v3[13] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v3;
}

uint64_t *sub_1DD96A18C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1DD969B90(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DD96A208()
{
  sub_1DDA15570();
  sub_1DD965608(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD96A270(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DD965608(v2);
  return sub_1DDA155B0();
}

unint64_t sub_1DD96A304()
{
  result = qword_1ECD83400;
  if (!qword_1ECD83400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83400);
  }

  return result;
}

unint64_t sub_1DD96A358()
{
  result = qword_1ECD83408;
  if (!qword_1ECD83408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83408);
  }

  return result;
}

unint64_t sub_1DD96A3AC()
{
  result = qword_1ECD83418;
  if (!qword_1ECD83418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83410, &qword_1DDA1A588);
    sub_1DD96E4A0(&qword_1ECD83420, v1, type metadata accessor for JSONSchema, &unk_1DDA1A558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83418);
  }

  return result;
}

unint64_t sub_1DD96A468()
{
  result = qword_1ECD83448;
  if (!qword_1ECD83448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83410, &qword_1DDA1A588);
    sub_1DD96E4A0(&qword_1ECD83450, v1, type metadata accessor for JSONSchema, &unk_1DDA1A530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83448);
  }

  return result;
}

uint64_t sub_1DD96A524(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82818, &qword_1DDA1A780);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD96A590(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83430, &qword_1DDA1A590);
    sub_1DD96E4A0(a2, v8, type metadata accessor for JSONSchema, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD96A62C()
{
  result = qword_1ECD83468;
  if (!qword_1ECD83468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83468);
  }

  return result;
}

uint64_t sub_1DD96A680(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1DD96AC38(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1DDA15440();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD96A824(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v32 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v34 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(result + 56) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);

    v33 = v18;
    sub_1DD940DFC(v17, v18, v19);
    v20 = sub_1DD96AC38(v14, v15);
    LOBYTE(v18) = v21;

    if ((v18 & 1) == 0)
    {
      goto LABEL_46;
    }

    v22 = *(a2 + 56) + 24 * v20;
    result = *v22;
    v23 = *(v22 + 16);
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        if (v19 != 2)
        {
          goto LABEL_46;
        }

        v25 = result == v17 && *(v22 + 8) == v33;
        if (v25)
        {
          goto LABEL_37;
        }

        v26 = sub_1DDA15440();
        sub_1DD96E820(v17, v33, 2);
        result = v32;
        v7 = v34;
        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v19 != 3)
        {
          goto LABEL_46;
        }

        v27 = *(result + 16);
        if (v27 != *(v17 + 16))
        {
LABEL_45:
          LOBYTE(v19) = 3;
LABEL_46:
          sub_1DD96E820(v17, v33, v19);
          return 0;
        }

        if (v27)
        {
          v28 = result == v17;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v29 = (result + 40);
          v30 = (v17 + 40);
          while (v27)
          {
            result = *(v29 - 1);
            if (result != *(v30 - 1) || *v29 != *v30)
            {
              result = sub_1DDA15440();
              if ((result & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            v29 += 2;
            v30 += 2;
            if (!--v27)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_50;
        }

LABEL_37:
        sub_1DD96E820(v17, v33, v23);
        result = v32;
        v7 = v34;
      }
    }

    else if (*(v22 + 16))
    {
      if (v19 != 1)
      {
        goto LABEL_46;
      }

      v25 = result == v17;
      result = v32;
      v7 = v34;
      if (!v25)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        goto LABEL_46;
      }

      v24 = result ^ v17;
      result = v32;
      v7 = v34;
      if (v24)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1DD96AACC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);

    sub_1DD96AC38(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    type metadata accessor for JSONSchema();

    v19 = sub_1DD96D458(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD96AC38(uint64_t a1, uint64_t a2)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  v4 = sub_1DDA155B0();

  return sub_1DD96AEE0(a1, a2, v4);
}

unint64_t sub_1DD96ACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v8 = sub_1DDA155B0();

  return sub_1DD96AF98(a1, a2, a3, a4, v8);
}

unint64_t sub_1DD96AD50(uint64_t a1)
{
  sub_1DDA134E0();
  sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v2 = sub_1DDA14AC0();

  return sub_1DD96B098(a1, v2);
}

unint64_t sub_1DD96ADEC(uint64_t a1)
{
  v2 = sub_1DDA15000();

  return sub_1DD96B25C(a1, v2);
}

unint64_t sub_1DD96AE30(uint64_t a1)
{
  v1 = a1;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  v2 = sub_1DDA155B0();

  return sub_1DD96B324(v1, v2);
}

unint64_t sub_1DD96AE9C(uint64_t a1)
{
  v2 = sub_1DDA15560();

  return sub_1DD96B394(a1, v2);
}

unint64_t sub_1DD96AEE0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1DDA15440())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DD96AF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1DDA15440() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1DDA15440() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1DD96B098(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1DDA134E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1DD96E4A0(&qword_1ECD834B0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v15 = sub_1DDA14AF0();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1DD96B25C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1DD9550D8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E12B7ED0](v9, a1);
      sub_1DD955FA0(v9);
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

unint64_t sub_1DD96B324(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1DD96B394(uint64_t a1, uint64_t a2)
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

void sub_1DD96B400(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_1DD96AC38(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1DD9C8F94(v15, v5 & 1);
    v10 = sub_1DD96AC38(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1DDA15500();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1DD9CA400();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1DDA15070();
    MEMORY[0x1E12B7AB0](0xD00000000000001BLL, 0x80000001DDA27C50);
    sub_1DDA15160();
    MEMORY[0x1E12B7AB0](39, 0xE100000000000000);
    sub_1DDA15180();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;

      v27 = sub_1DD96AC38(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1DD9C8F94(v31, 1);
        v27 = sub_1DD96AC38(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v8;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1DD96B794(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for FileGeneratorFile(0);
  MEMORY[0x1EEE9AC00](v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ImageGeneratorImage(0);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageURLItem(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MessageContent(0);
  v9 = *(v29 - 8);
  v10 = MEMORY[0x1EEE9AC00](v29);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = *(a2 + 16);
  result = MEMORY[0x1E12B8440](v15);
  if (v15)
  {
    v17 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v28 = *(v9 + 72);
    while (1)
    {
      sub_1DD96EA30(v17, v14, type metadata accessor for MessageContent);
      sub_1DD96EA30(v14, v12, type metadata accessor for MessageContent);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        sub_1DD96EA98(v12, v6, type metadata accessor for ImageGeneratorImage);
        MEMORY[0x1E12B8440](2);
        sub_1DDA14BC0();
        MEMORY[0x1E12B8440](*(v6 + 2));
        MEMORY[0x1E12B8440](*(v6 + 3));
        sub_1DDA134E0();
        sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        sub_1DDA14AD0();
        sub_1DD96EB00(v14, type metadata accessor for MessageContent);
        v18 = type metadata accessor for ImageGeneratorImage;
        v19 = v6;
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          v22 = 4;
LABEL_12:
          MEMORY[0x1E12B8440](v22);
          sub_1DDA14BC0();

          goto LABEL_14;
        }

        sub_1DD96EA98(v12, v4, type metadata accessor for FileGeneratorFile);
        MEMORY[0x1E12B8440](3);
        sub_1DDA134E0();
        sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        sub_1DDA14AD0();
        v21 = v27;
        sub_1DDA14BC0();
        sub_1DDA14BC0();
        MEMORY[0x1E12B8460](*&v4[*(v21 + 28)]);
        sub_1DD96EB00(v14, type metadata accessor for MessageContent);
        v18 = type metadata accessor for FileGeneratorFile;
        v19 = v4;
      }

LABEL_4:
      result = sub_1DD96EB00(v19, v18);
      v17 += v28;
      if (!--v15)
      {
        return result;
      }
    }

    if (!EnumCaseMultiPayload)
    {
      v22 = 0;
      goto LABEL_12;
    }

    v23 = v25;
    sub_1DD96EA98(v12, v25, type metadata accessor for ImageURLItem);
    MEMORY[0x1E12B8440](1);
    sub_1DDA134E0();
    sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1DDA14AD0();
    sub_1DD96EB00(v23, type metadata accessor for ImageURLItem);
LABEL_14:
    v18 = type metadata accessor for MessageContent;
    v19 = v14;
    goto LABEL_4;
  }

  return result;
}

void sub_1DD96BCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileGeneratorCall.File(0);
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageGeneratorCall.Image(0);
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  MEMORY[0x1E12B8440](v10);
  v49 = v10;
  if (v10)
  {
    v11 = 0;
    v48 = a2 + 32;
    do
    {
      v24 = v48 + 56 * v11;
      v25 = *v24;
      v52 = *(v24 + 8);
      v26 = *(v24 + 16);
      v27 = *(v24 + 24);
      v28 = *(v24 + 32);
      v29 = *(v24 + 40);
      v30 = *(v24 + 48);
      if (v30 <= 1)
      {
        v50 = v26;
        v51 = v28;
        if (v30)
        {
          MEMORY[0x1E12B8440](1);
          v12 = v25;
          v13 = v52;

          v14 = v27;

          sub_1DDA14BC0();
          v15 = v50;
          sub_1DDA14BC0();
          v16 = v51;
          sub_1DDA14BC0();
          v17 = v12;
          v18 = v13;
          v19 = v15;
          v20 = v14;
          v21 = v16;
          v22 = v29;
          v23 = 1;
        }

        else
        {
          v47 = v29;
          MEMORY[0x1E12B8440](0);
          v41 = v50;
          v42 = v52;
          sub_1DD96E3D8(v52, v50, v27 & 1);
          sub_1DDA14BC0();

          if (v27)
          {
            MEMORY[0x1E12B8440](1);
            sub_1DD96B794(a1, v42);
          }

          else
          {
            MEMORY[0x1E12B8440](0);
            sub_1DDA14BC0();
          }

          v17 = v25;
          v18 = v42;
          v19 = v41;
          v20 = v27;
          v21 = v51;
          v22 = v47;
          v23 = 0;
        }
      }

      else if (v30 == 2)
      {
        v51 = v28;
        v35 = v26;
        MEMORY[0x1E12B8440](4);
        v36 = v52;

        sub_1DDA14BC0();
        sub_1DDA14BC0();
        MEMORY[0x1E12B8440](*(v51 + 16));
        v21 = v51;
        v17 = v25;
        v37 = *(v51 + 16);
        if (v37)
        {
          v45 = v17;
          v46 = v27;
          v50 = v35;
          v47 = v29;
          v38 = v51 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
          v39 = *(v43 + 72);
          do
          {
            sub_1DD96EA30(v38, v9, type metadata accessor for ImageGeneratorCall.Image);
            sub_1DDA134E0();
            sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
            sub_1DDA14AD0();
            sub_1DD96EB00(v9, type metadata accessor for ImageGeneratorCall.Image);
            v38 += v39;
            --v37;
          }

          while (v37);
          v17 = v45;
          v20 = v46;
          v21 = v51;
          v18 = v52;
          v19 = v50;
          v22 = v47;
          v23 = 2;
        }

        else
        {
          v18 = v36;
          v19 = v35;
          v20 = v27;
          v22 = v29;
          v23 = 2;
        }
      }

      else
      {
        if (v30 != 3)
        {
          if (v26 | v52 | v25 | v27 | v28 | v29)
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          MEMORY[0x1E12B8440](v40);
          goto LABEL_5;
        }

        v46 = v27;
        v50 = v26;
        v51 = v28;
        MEMORY[0x1E12B8440](5);
        v31 = v52;

        sub_1DDA14BC0();
        MEMORY[0x1E12B8440](*(v50 + 16));
        v19 = v50;
        v17 = v25;
        v32 = *(v50 + 16);
        if (v32)
        {
          v45 = v17;
          v47 = v29;
          v33 = v50 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
          v34 = *(v44 + 72);
          do
          {
            sub_1DD96EA30(v33, v6, type metadata accessor for FileGeneratorCall.File);
            sub_1DDA134E0();
            sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
            sub_1DDA14AD0();
            sub_1DD96EB00(v6, type metadata accessor for FileGeneratorCall.File);
            v33 += v34;
            --v32;
          }

          while (v32);
          v17 = v45;
          v20 = v46;
          v21 = v51;
          v18 = v52;
          v19 = v50;
          v22 = v47;
          v23 = 3;
        }

        else
        {
          v18 = v31;
          v20 = v46;
          v21 = v51;
          v22 = v29;
          v23 = 3;
        }
      }

      sub_1DD96E310(v17, v18, v19, v20, v21, v22, v23);
LABEL_5:
      ++v11;
    }

    while (v11 != v49);
  }
}

uint64_t sub_1DD96C2BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12B8440](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {

      sub_1DDA14BC0();

      sub_1DDA14BC0();
      result = swift_bridgeObjectRelease_n();
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DD96C3F4(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for TextAnnotation.URLCitation(0);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TextAnnotation.Type(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TextAnnotation(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v26 = a1;
  result = MEMORY[0x1E12B8440](v12);
  if (v12)
  {
    v14 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_1DD96EA30(v14, v11, type metadata accessor for TextAnnotation);
      sub_1DD96EA30(v11, v7, type metadata accessor for TextAnnotation.Type);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = v15;
        v17 = *(v7 + 2);
        MEMORY[0x1E12B8440](1);
        sub_1DDA14BC0();
        v18 = v17;
        v15 = v16;
        MEMORY[0x1E12B8440](v18);

        v19 = type metadata accessor for TextAnnotation;
        v20 = v11;
      }

      else
      {
        v21 = v24;
        sub_1DD96EA98(v7, v24, type metadata accessor for TextAnnotation.URLCitation);
        MEMORY[0x1E12B8440](0);
        sub_1DDA134E0();
        sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        sub_1DDA14AD0();
        v22 = v25;
        sub_1DDA14BC0();
        MEMORY[0x1E12B8440](*(v21 + *(v22 + 24)));
        sub_1DD96EB00(v11, type metadata accessor for TextAnnotation);
        v19 = type metadata accessor for TextAnnotation.URLCitation;
        v20 = v21;
      }

      result = sub_1DD96EB00(v20, v19);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1DD96C724(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1E12B8440](v4);
  v18 = v4;
  if (v4)
  {
    v6 = 0;
    do
    {
      v8 = a2 + 32 + 72 * v6;
      v9 = *(v8 + 32);
      v11 = *(v8 + 48);
      v10 = *(v8 + 56);
      v12 = *(v8 + 64);

      v19 = v11;
      sub_1DD96E7F8(v11, v10, v12);
      sub_1DDA14BC0();
      sub_1DDA14BC0();
      if (v9)
      {
        sub_1DDA15590();
        MEMORY[0x1E12B8440](*(v9 + 16));
        v13 = *(v9 + 16);
        if (v13)
        {
          v14 = (v9 + 32);
          do
          {
            v15 = *v14++;

            sub_1DD96CE3C(a1, v15);

            --v13;
          }

          while (v13);
        }
      }

      else
      {
        sub_1DDA15590();
      }

      sub_1DDA15590();
      sub_1DDA15590();
      if (v12 == 255)
      {
        sub_1DDA15590();
        v7 = v10;
      }

      else
      {
        sub_1DDA15590();
        v7 = v10;
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            MEMORY[0x1E12B8440](2);
            sub_1DDA14BC0();
          }

          else
          {
            MEMORY[0x1E12B8440](3);
            MEMORY[0x1E12B8440](*(v11 + 16));
            v16 = *(v11 + 16);
            if (v16)
            {
              v17 = v11 + 40;
              do
              {

                sub_1DDA14BC0();

                v17 += 16;
                --v16;
              }

              while (v16);
            }
          }
        }

        else if (v12)
        {
          MEMORY[0x1E12B8440](1);
          MEMORY[0x1E12B8440](v11);
        }

        else
        {
          MEMORY[0x1E12B8440](0);
          sub_1DDA15590();
        }
      }

      ++v6;
      sub_1DDA15590();

      result = sub_1DD96E80C(v19, v7, v12);
    }

    while (v6 != v18);
  }

  return result;
}

uint64_t sub_1DD96C990(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12B8440](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = v6 + 40 * v5;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v10 = *(v7 + 32);

      sub_1DD940DFC(v8, v9, v10);
      sub_1DDA14BC0();
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          MEMORY[0x1E12B8440](2);
          sub_1DDA14BC0();

          result = sub_1DD96E820(v8, v9, 2);
        }

        else
        {
          MEMORY[0x1E12B8440](3);
          MEMORY[0x1E12B8440](*(v8 + 16));
          v11 = *(v8 + 16);
          if (v11)
          {
            v12 = v8 + 40;
            do
            {

              sub_1DDA14BC0();

              v12 += 16;
              --v11;
            }

            while (v11);

            result = sub_1DD96E820(v8, v9, 3);
            v6 = a2 + 32;
          }

          else
          {

            result = sub_1DD96E820(v8, v9, 3);
          }
        }
      }

      else
      {
        if (v10)
        {
          MEMORY[0x1E12B8440](1);
          MEMORY[0x1E12B8440](v8);
        }

        else
        {
          MEMORY[0x1E12B8440](0);
          sub_1DDA15590();
        }
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

void sub_1DD96CB44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  MEMORY[0x1E12B8440](v4);
  if (v4)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      if (v11 >> 6)
      {
        if (v11 >> 6 != 1)
        {
          if (v9 | v7 | v6 | v8 | v10 || v11 != 128)
          {
            v13 = v9 | v7 | v8 | v10;
            if (v11 == 128 && v6 == 1 && !v13)
            {
              v12 = 1;
            }

            else if (v11 == 128 && v6 == 2 && !v13)
            {
              v12 = 2;
            }

            else
            {
              v12 = 5;
            }
          }

          else
          {
            v12 = 0;
          }

          MEMORY[0x1E12B8440](v12);
          goto LABEL_5;
        }

        v14[47] = BYTE1(v9) & 1;
        v17 = v6;
        v18 = BYTE2(v6);
        v19 = v7;
        v20 = v9 & 0x1FF;
        v21 = v8;
        v22 = v10;
        MEMORY[0x1E12B8440](4);
        v15[0] = v6;
        v15[1] = v7;
        v15[2] = v9;
        v15[3] = v8;
        v15[4] = v10;
        v16 = v11 & 0x3F;
        sub_1DD96E8F4(v15, v14);
        sub_1DD9EEB6C(a1);
      }

      else
      {
        MEMORY[0x1E12B8440](3);

        sub_1DDA14BC0();
        sub_1DDA14BC0();
        sub_1DD965608(a1);
        sub_1DDA15590();
      }

      sub_1DD96E950(v6, v7, v9, v8, v10, v11);
LABEL_5:
      v5 += 48;
      --v4;
    }

    while (v4);
  }
}

unint64_t sub_1DD96CD2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1E12B8440](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (v9 > 3)
        {
          break;
        }

        if (v8 > 1)
        {
          if (v8 == 2)
          {
            v7 = 2;
            goto LABEL_4;
          }

          if (v8 == 3)
          {
            v7 = 3;
            goto LABEL_4;
          }
        }

        else
        {
          if (!v8)
          {
            v7 = 0;
            goto LABEL_4;
          }

          if (v8 == 1)
          {
            v7 = 1;
            goto LABEL_4;
          }
        }

LABEL_23:
        MEMORY[0x1E12B8440](7);

        sub_1DD96CD2C(a1, v8);
        result = sub_1DD96D364(v8);
        if (!--v4)
        {
          return result;
        }
      }

      if (v8 <= 5)
      {
        if (v8 == 4)
        {
          v7 = 4;
          goto LABEL_4;
        }

        if (v8 == 5)
        {
          v7 = 5;
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      if (v8 != 6)
      {
        if (v8 == 7)
        {
          v7 = 8;
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      v7 = 6;
LABEL_4:
      result = MEMORY[0x1E12B8440](v7);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1DD96CE3C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E12B8440](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1DDA14BC0();

        sub_1DDA14BC0();

        result = sub_1DDA155B0();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD96CFA8(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v20 = v9;
LABEL_12:
    v12 = *(a2 + 56) + 24 * (__clz(__rbit64(v6)) | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);

    sub_1DD940DFC(v13, v14, v15);
    sub_1DDA14BC0();

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        MEMORY[0x1E12B8440](2);
        sub_1DDA14BC0();
        sub_1DD96E820(v13, v14, 2);
      }

      else
      {
        MEMORY[0x1E12B8440](3);
        MEMORY[0x1E12B8440](*(v13 + 16));
        v16 = *(v13 + 16);
        if (v16)
        {
          v18 = a1;
          v17 = v13 + 40;
          do
          {

            sub_1DDA14BC0();

            v17 += 16;
            --v16;
          }

          while (v16);
          sub_1DD96E820(v13, v14, 3);
          a1 = v18;
        }

        else
        {
          sub_1DD96E820(v13, v14, 3);
        }
      }
    }

    else if (v15)
    {
      MEMORY[0x1E12B8440](1);
      MEMORY[0x1E12B8440](v13);
    }

    else
    {
      MEMORY[0x1E12B8440](0);
      sub_1DDA15590();
    }

    v6 &= v6 - 1;
    result = sub_1DDA155B0();
    v9 = result ^ v20;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1E12B8440](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v20 = v9;
      v10 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD96D208(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1E12B8440](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      do
      {
LABEL_9:
        v6 &= v6 - 1;
        v12 = *(a1 + 48);
        v14[2] = *(a1 + 32);
        v14[3] = v12;
        v15 = *(a1 + 64);
        v13 = *(a1 + 16);
        v14[0] = *a1;
        v14[1] = v13;

        sub_1DDA14BC0();

        sub_1DD965608(v14);

        result = sub_1DDA155B0();
        v9 ^= result;
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD96D364(unint64_t result)
{
  if (result >= 8)
  {
  }

  return result;
}

uint64_t sub_1DD96D374(uint64_t a1, unint64_t a2)
{
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        if (a2 == 4)
        {
          return 1;
        }
      }

      else if (a2 == 5)
      {
        return 1;
      }

      return 0;
    }

    if (a1 == 6)
    {
      return a2 == 6;
    }

    if (a1 == 7)
    {
      return a2 == 7;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        if (a2 == 2)
        {
          return 1;
        }
      }

      else if (a2 == 3)
      {
        return 1;
      }

      return 0;
    }

    if (!a1)
    {
      return !a2;
    }

    if (a1 == 1)
    {
      return a2 == 1;
    }
  }

  if (a2 < 8)
  {
    return 0;
  }

  return sub_1DD9691FC(a1, a2);
}

uint64_t sub_1DD96D458(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1 + 16) == *(a2 + 16) && v4 == v5;
    if (!v6 && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  sub_1DD96D6CC(v7);
  sub_1DD96D6CC(v8);
  v9 = sub_1DD96D374(v7, v8);
  sub_1DD96D364(v8);
  sub_1DD96D364(v7);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!v10)
    {
      return 0;
    }

    v12 = sub_1DD96AACC(v11, v10);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13)
  {
    if (!v14 || (sub_1DD967B14(v13, v14) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 56);
  v16 = *(a2 + 56);
  if (v15)
  {
    if (!v16 || (sub_1DD967B14(v15, v16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 64);
  v18 = *(a2 + 64);
  if (v17)
  {
    if (!v18 || (sub_1DD967B14(v17, v18) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!v19)
    {
      return 0;
    }

    v21 = sub_1DD96D458(v20, v19);

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v22 = *(a1 + 80);
  v23 = *(a2 + 80);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v23 == 2 || ((v23 ^ v22) & 1) != 0)
    {
      return result;
    }
  }

  v25 = *(a2 + 88);
  if (!*(a1 + 88))
  {
    if (!v25)
    {
      goto LABEL_44;
    }

    return 0;
  }

  if (!v25)
  {
    return 0;
  }

  v27 = sub_1DD968FB8(v26, v25);

  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_44:
  v28 = *(a1 + 104);
  v29 = *(a2 + 104);
  result = (v28 | v29) == 0;
  if (v28 && v29)
  {
    if (*(a1 + 96) == *(a2 + 96) && v28 == v29)
    {
      return 1;
    }

    else
    {

      return sub_1DDA15440();
    }
  }

  return result;
}