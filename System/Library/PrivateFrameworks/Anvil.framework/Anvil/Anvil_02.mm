uint64_t sub_1DD92AB90(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = (v1 + v7);
  v12 = *(v1 + v8);
  v13 = *v11;
  v14 = v11[1];
  v15 = *(v1 + v9);
  v16 = *(v1 + v9 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1DD92BD10;

  return sub_1DD921B04(a1, v10, v1 + v6, v13, v14, v12, v15, v16);
}

uint64_t objectdestroy_29Tm(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1DDA14790();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v12 + 17) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;

  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return MEMORY[0x1EEE6BDD0](v2, v13 + v14, v15 | 7);
}

uint64_t sub_1DD92AE6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DDA14790() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0) - 8);
  v9 = (v7 + *(v8 + 80) + 17) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1DD92BD10;

  return sub_1DD926E00(a1, v10, v11, v1 + v6, v13, v14, v15, v1 + v9);
}

uint64_t sub_1DD92AFFC(uint64_t a1)
{
  sub_1DDA136B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0);
  sub_1DDA13A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998);
  v10 = v1[2];
  v8 = v1[4];
  v9 = v1[3];
  v6 = v1[6];
  v7 = v1[5];
  v4 = v1[8];
  v5 = v1[7];
  v2 = swift_task_alloc();
  *(v11 + 16) = v2;
  *v2 = v11;
  v2[1] = sub_1DD92BD10;

  return sub_1DD920538(a1, v10, v9, v8, v7, v6, v5, v4);
}

unint64_t sub_1DD92B3B4()
{
  result = qword_1ECD83000;
  if (!qword_1ECD83000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83000);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_103Tm()
{
  v1 = sub_1DDA136B0();
  v2 = *(v1 - 8);
  v43 = *(v2 + 80);
  v3 = (v43 + 176) & ~v43;
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v42 = *(v5 + 80);
  v6 = (v4 + v42) & ~v42;
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8) - 8);
  v41 = *(v8 + 80);
  v9 = (v6 + v7 + v41) & ~v41;
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0) - 8);
  v40 = *(v11 + 80);
  v12 = (v9 + v10 + v40) & ~v40;
  v13 = *(v11 + 64);
  v35 = sub_1DDA13A80();
  v14 = *(v35 - 8);
  v39 = *(v14 + 80);
  v32 = (v12 + v13 + v39) & ~v39;
  v33 = v12;
  v15 = (*(v14 + 64) + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998) - 8);
  v37 = *(v16 + 80);
  v17 = v15 + v37;
  v36 = *(v16 + 64);
  v38 = sub_1DDA13680();
  v18 = *(v38 - 8);
  v19 = *(v18 + 80);
  v34 = *(v18 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  (*(v2 + 8))(v0 + v3, v1);
  v20 = sub_1DDA13F50();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v0 + v6, 1, v20))
  {
    (*(v21 + 8))(v0 + v6, v20);
  }

  v22 = v17 + 8;
  v23 = sub_1DDA13F30();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v0 + v9, 1, v23))
  {
    (*(v24 + 8))(v0 + v9, v23);
  }

  v25 = v22 & ~v37;
  v26 = sub_1DDA13EE0();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v0 + v33, 1, v26))
  {
    (*(v27 + 8))(v0 + v33, v26);
  }

  (*(v14 + 8))(v0 + v32, v35);

  v28 = sub_1DDA14420();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v0 + v25, 1, v28))
  {
    (*(v29 + 8))(v0 + v25, v28);
  }

  v30 = (v19 + ((((((v36 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v19;

  (*(v18 + 8))(v0 + v30, v38);

  return MEMORY[0x1EEE6BDD0](v0, ((v34 + v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v43 | v42 | v41 | v40 | v39 | v37 | v19 | 7);
}

uint64_t objectdestroy_16Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = (((((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 16, v5 | 7);
}

unint64_t sub_1DD92BBAC()
{
  result = qword_1ECD83020;
  if (!qword_1ECD83020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82FD8, &qword_1DDA189B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83020);
  }

  return result;
}

uint64_t sub_1DD92BC10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD92BC58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD92BD10;

  return sub_1DD9BC948(a1, v4, v5, v6);
}

uint64_t sub_1DD92BD18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v5 = sub_1DDA13840();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1DDA13830();
  v53 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1DDA14420();
  v51 = *(v59 - 8);
  v8 = MEMORY[0x1EEE9AC00](v59);
  v58 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - v10;
  v12 = sub_1DDA143F0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DDA14400();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_1DDA14410();
  result = (*(v17 + 88))(v19, v16);
  if (result == *MEMORY[0x1E69A0B20])
  {
    (*(v17 + 96))(v19, v16);
    (*(v13 + 32))(v15, v19, v12);
    v21 = sub_1DDA143E0();
    v23 = v22;
    result = (*(v13 + 8))(v15, v12);
    *a3 = v21;
    a3[1] = v23;
    return result;
  }

  if (result == *MEMORY[0x1E69A0B18])
  {
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69A0B30])
  {
    v24 = xmmword_1DDA18A90;
LABEL_9:
    *a3 = v24;
    return result;
  }

  if (result == *MEMORY[0x1E69A0B28])
  {
    v24 = xmmword_1DDA18A80;
    goto LABEL_9;
  }

  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v25 = sub_1DDA14810();
  __swift_project_value_buffer(v25, qword_1ECDA20E0);
  v26 = v51;
  v27 = v59;
  v64 = *(v51 + 16);
  v64(v11, v60, v59);
  v28 = sub_1DDA147F0();
  v49 = sub_1DDA14EE0();
  v50 = v28;
  v29 = os_log_type_enabled(v28, v49);
  v30 = v58;
  if (v29)
  {
    v31 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v62 = v48;
    *v31 = 136315138;
    v64(v30, v11, v27);
    v32 = sub_1DDA14B70();
    v34 = v33;
    (*(v26 + 8))(v11, v59);
    v35 = v32;
    v30 = v58;
    v36 = sub_1DD93FA54(v35, v34, &v62);
    v27 = v59;

    v37 = v31;
    *(v31 + 4) = v36;
    v38 = v50;
    _os_log_impl(&dword_1DD8F8000, v50, v49, "Unknown tool choice: %s", v37, 0xCu);
    v39 = v48;
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x1E12B8CE0](v39, -1, -1);
    MEMORY[0x1E12B8CE0](v37, -1, -1);
  }

  else
  {

    (*(v26 + 8))(v11, v27);
  }

  v62 = 0;
  v63 = 0xE000000000000000;
  sub_1DDA15070();

  v62 = 0xD000000000000015;
  v63 = 0x80000001DDA275F0;
  v64(v30, v60, v27);
  v40 = sub_1DDA14B70();
  MEMORY[0x1E12B7AB0](v40);

  v41 = v52;
  sub_1DDA13800();
  v43 = v53;
  v42 = v54;
  (*(v53 + 16))(v54, v41, v61);
  v45 = v55;
  v44 = v56;
  (*(v55 + 104))(v42, *MEMORY[0x1E69DA4C0], v56);
  sub_1DD92C41C();
  v46 = swift_allocError();
  (*(v45 + 16))(v47, v42, v44);
  swift_willThrow();
  (*(v45 + 8))(v42, v44);
  (*(v43 + 8))(v41, v61);
  result = (*(v17 + 8))(v19, v16);
  *v57 = v46;
  return result;
}

unint64_t sub_1DD92C41C()
{
  result = qword_1ECD82F58;
  if (!qword_1ECD82F58)
  {
    sub_1DDA13840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82F58);
  }

  return result;
}

void sub_1DD92C474(uint64_t *a1@<X8>)
{
  v4 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[3];
  v35 = v1[2];
  v8 = (*(v4 + 8))(v5, v6);
  if (v2)
  {

    v10 = sub_1DDA147F0();
    v11 = sub_1DDA14EE0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v36 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1DD93FA54(v5, v6, &v36);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1DD93FA54(v35, v7, &v36);
      _os_log_impl(&dword_1DD8F8000, v10, v11, "Failed to get %s.%s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v13, -1, -1);
      MEMORY[0x1E12B8CE0](v12, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v31 = a1;
    if (v9 >> 60 == 15)
    {
      v28 = v5;
      v27 = v6;
      v29 = v9;
      v30 = v8;
      v33 = 0;
      v34 = 0;
      v32 = 0;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v16 = v1[13];
      v17 = v8;
      v18 = v9;
      sub_1DD909CD4(v8, v9);
      v16(&v36, v17, v18);
      v28 = v5;
      v27 = v6;
      v29 = v18;
      sub_1DD90D440(v17, v18);
      v33 = v37;
      v34 = v36;
      v14 = v39;
      v32 = v38;
      v15 = v40;
      v30 = v17;
    }

    sub_1DD931428(v34, v33, v32, v14, v15);
    sub_1DD931428(v34, v33, v32, v14, v15);

    v19 = sub_1DDA147F0();
    v20 = sub_1DDA14ED0();

    v21 = v19;
    sub_1DD93146C(v34, v33, v32, v14, v15);
    if (os_log_type_enabled(v19, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136315651;
      *(v22 + 4) = sub_1DD93FA54(v28, v27, &v41);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1DD93FA54(v35, v7, &v41);
      *(v22 + 22) = 2081;
      v36 = v34;
      v37 = v33;
      v38 = v32;
      v39 = v14;
      v40 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83058, &qword_1DDA18B90);
      v24 = sub_1DDA14B70();
      v26 = sub_1DD93FA54(v24, v25, &v41);

      *(v22 + 24) = v26;
      _os_log_impl(&dword_1DD8F8000, v21, v20, "Getting %s.%s as: %{private}s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v23, -1, -1);
      MEMORY[0x1E12B8CE0](v22, -1, -1);
    }

    else
    {
      sub_1DD93146C(v34, v33, v32, v14, v15);
    }

    sub_1DD90D440(v30, v29);

    *v31 = v34;
    v31[1] = v33;
    v31[2] = v32;
    v31[3] = v14;
    v31[4] = v15;
  }
}

uint64_t sub_1DD92C900()
{
  v2 = v0[9];
  v3 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 6, v2);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  v8 = (*(v3 + 8))(v4, v5, v6, v7, v2, v3);
  if (v1)
  {

    v10 = sub_1DDA147F0();
    v11 = sub_1DDA14EE0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1DD93FA54(v4, v5, &v28);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1DD93FA54(v6, v7, &v28);
      _os_log_impl(&dword_1DD8F8000, v10, v11, "Failed to get %s.%s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v13, -1, -1);
      MEMORY[0x1E12B8CE0](v12, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v15 = v9;
    if (v9 >> 60 == 15)
    {
      v25 = v8;
      v26 = 2;
    }

    else
    {
      v16 = v8;
      v27 = v0[13];
      sub_1DD909CD4(v8, v9);
      v27(&v28, v16, v15);
      sub_1DD90D440(v16, v15);
      v26 = v28;
      v25 = v16;
    }

    v17 = sub_1DDA147F0();
    v18 = sub_1DDA14ED0();

    log = v17;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315651;
      *(v19 + 4) = sub_1DD93FA54(v4, v5, &v28);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1DD93FA54(v6, v7, &v28);
      *(v19 + 22) = 2081;
      v4 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83048, &unk_1DDA18B80);
      v21 = sub_1DDA14B70();
      v23 = sub_1DD93FA54(v21, v22, &v28);

      *(v19 + 24) = v23;
      _os_log_impl(&dword_1DD8F8000, log, v18, "Getting %s.%s as: %{private}s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v20, -1, -1);
      MEMORY[0x1E12B8CE0](v19, -1, -1);
      sub_1DD90D440(v25, v15);
    }

    else
    {
      sub_1DD90D440(v25, v15);

      return v26;
    }
  }

  return v4;
}

void sub_1DD92CCE8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v50 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - v11;
  v13 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v4[9]);
  v14 = v4[4];
  v15 = v4[2];
  v16 = v4[3];
  v17 = *(v13 + 8);
  v51 = v4[5];
  v52 = v14;
  v53 = v16;
  v54 = v15;
  v18 = v55;
  v19 = v17();
  if (!v18)
  {
    v55 = 0;
    v47 = v10;
    v25 = a2;
    if (v20 >> 60 == 15)
    {
      v48 = v19;
      v26 = v20;
      v27 = 1;
      v28 = v12;
    }

    else
    {
      v29 = v4[13];
      v30 = v20;
      v31 = v19;
      sub_1DD909CD4(v19, v20);
      v32 = v55;
      v29(v31, v30);
      v55 = v32;
      if (v32)
      {
        sub_1DD90D440(v31, v30);
        sub_1DD90D440(v31, v30);
        goto LABEL_2;
      }

      v28 = v12;
      v48 = v31;
      sub_1DD90D440(v31, v30);
      v27 = 0;
      v26 = v30;
    }

    v33 = v49(0);
    v34 = v50;
    (*(*(v33 - 8) + 56))(v50, v27, 1, v33);
    sub_1DD90ADB4(v34, v28, a1, v25);

    v35 = sub_1DDA147F0();
    LODWORD(v34) = sub_1DDA14ED0();

    LODWORD(v50) = v34;
    v36 = os_log_type_enabled(v35, v34);
    v37 = a1;
    v38 = v25;
    if (v36)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v56 = v40;
      *v39 = 136315651;
      *(v39 + 4) = sub_1DD93FA54(v52, v51, &v56);
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_1DD93FA54(v54, v53, &v56);
      *(v39 + 22) = 2081;
      sub_1DD90ADB4(v28, v47, a1, v38);
      v41 = sub_1DDA14B70();
      v42 = v26;
      v44 = v43;
      sub_1DD90D378(v28, v37, v38);
      v45 = sub_1DD93FA54(v41, v44, &v56);

      *(v39 + 24) = v45;
      _os_log_impl(&dword_1DD8F8000, v35, v50, "Getting %s.%s as: %{private}s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v40, -1, -1);
      MEMORY[0x1E12B8CE0](v39, -1, -1);
      sub_1DD90D440(v48, v42);
    }

    else
    {
      sub_1DD90D440(v48, v26);

      sub_1DD90D378(v28, a1, v25);
    }

    return;
  }

LABEL_2:

  v21 = sub_1DDA147F0();
  v22 = sub_1DDA14EE0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v56 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_1DD93FA54(v52, v51, &v56);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1DD93FA54(v54, v53, &v56);
    _os_log_impl(&dword_1DD8F8000, v21, v22, "Failed to get %s.%s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v24, -1, -1);
    MEMORY[0x1E12B8CE0](v23, -1, -1);
  }

  swift_willThrow();
}

uint64_t ExternalPartnerAuthenticator.AuthenticationSession.authorizationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DDA134E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
  v7 = __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
  v8 = type metadata accessor for OpenAIAuthenticationService(0);
  (*(v4 + 16))(v6, &v7[*(v8 + 40)], v3);
  v9 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v9;
  v11[2] = *(v1 + 32);
  sub_1DD97A2B8(v6, a1);
  return (*(v4 + 8))(v6, v3);
}

uint64_t ExternalPartnerAuthenticator.AuthenticationSession.partnerBundleID.getter()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72))[18];

  return v1;
}

uint64_t ExternalPartnerAuthenticator.AuthenticationSession.partnerTeamID.getter()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72))[20];

  return v1;
}

uint64_t ExternalPartnerAuthenticator.AuthenticationSession.redirectURLScheme.getter()
{
  v1 = sub_1DDA134E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  v6 = type metadata accessor for OpenAIAuthenticationService(0);
  (*(v2 + 16))(v4, &v5[*(v6 + 40)], v1);
  v7 = sub_1DDA134B0();
  v9 = v8;
  result = (*(v2 + 8))(v4, v1);
  if (v9)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t ExternalPartnerAuthenticator.AuthenticationSession.exchangeCredentialedURLForCredentials(url:)(uint64_t a1, uint64_t a2)
{
  v3[253] = v2;
  v3[247] = a2;
  v3[241] = a1;
  v3[259] = type metadata accessor for UserCredentials(0);
  v3[265] = swift_task_alloc();
  v4 = sub_1DDA134E0();
  v3[271] = v4;
  v3[277] = *(v4 - 8);
  v3[283] = swift_task_alloc();
  v5 = type metadata accessor for UserTokens(0);
  v3[289] = v5;
  v6 = *(v5 - 8);
  v3[295] = v6;
  v3[301] = *(v6 + 64);
  v3[307] = swift_task_alloc();
  v3[313] = swift_task_alloc();
  v3[319] = swift_task_alloc();
  v3[320] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD92D5E8, 0, 0);
}

uint64_t sub_1DD92D5E8()
{
  v1 = sub_1DD92EE40(v0[247]);
  v0[321] = v2;
  v3 = v1;
  v4 = v2;
  v5 = v0[283];
  v6 = v0[277];
  v7 = v0[271];
  v8 = v0[253];

  __swift_project_boxed_opaque_existential_1(v8 + 6, v8[9]);
  v9 = __swift_project_boxed_opaque_existential_1(v8 + 6, v8[9]);
  v10 = type metadata accessor for OpenAIAuthenticationService(0);
  (*(v6 + 16))(v5, &v9[*(v10 + 40)], v7);
  v11 = sub_1DDA13440();
  v13 = v12;
  v0[322] = v12;
  (*(v6 + 8))(v5, v7);
  v14 = v8[4];
  v15 = v8[5];
  v16 = swift_task_alloc();
  v0[323] = v16;
  *v16 = v0;
  v16[1] = sub_1DD92D7F0;
  v17 = v0[320];

  return sub_1DD97A780(v17, v3, v4, v11, v13, v14, v15, v0 + 1817);
}

uint64_t sub_1DD92D7F0()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 1818) = *(v2 + 1817);
    v3 = sub_1DD92DB94;
  }

  else
  {
    v3 = sub_1DD92D944;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD92D944()
{
  v1 = *(v0 + 2560);
  v2 = *(v0 + 2552);
  v16 = *(v0 + 2504);
  v3 = *(v0 + 2360);
  v4 = *(v0 + 2024);
  sub_1DD930D90(v4, v0 + 1336);
  sub_1DD930DC8(v1, v2);
  v5 = (*(v3 + 80) + 120) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 2592) = v6;
  v7 = *(v0 + 1416);
  *(v6 + 80) = *(v0 + 1400);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v0 + 1432);
  v8 = *(v0 + 1352);
  *(v6 + 16) = *(v0 + 1336);
  *(v6 + 32) = v8;
  v9 = *(v0 + 1384);
  *(v6 + 48) = *(v0 + 1368);
  *(v6 + 64) = v9;
  sub_1DD93135C(v2, v6 + v5, type metadata accessor for UserTokens);
  swift_asyncLet_begin();
  sub_1DD930D90(v4, v0 + 1480);
  sub_1DD930DC8(v1, v16);
  v10 = swift_allocObject();
  v11 = *(v0 + 1560);
  *(v10 + 80) = *(v0 + 1544);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(v0 + 1576);
  v12 = *(v0 + 1496);
  *(v10 + 16) = *(v0 + 1480);
  *(v10 + 32) = v12;
  v13 = *(v0 + 1528);
  *(v10 + 48) = *(v0 + 1512);
  *(v10 + 64) = v13;
  sub_1DD93135C(v16, v10 + v5, type metadata accessor for UserTokens);
  v14 = swift_allocObject();
  *(v0 + 2600) = v14;
  *(v14 + 16) = &unk_1DDA18AF0;
  *(v14 + 24) = v10;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 656, v0 + 1784, sub_1DD92DB60, v0 + 1744);
}

uint64_t sub_1DD92DB60()
{
  *(v1 + 2608) = v0;
  if (v0)
  {
    v2 = sub_1DD92E4B8;
  }

  else
  {
    v2 = sub_1DD92DC68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD92DB94()
{
  v1 = *(v0 + 1818);
  sub_1DD930D3C();
  swift_allocError();
  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DD92DC68()
{
  v1 = v0[307];
  v2 = v0[289];
  v3 = v0[265];
  v4 = v0[259];
  v27 = v0[253];
  v5 = v0[223];
  v6 = v0[224];
  v7 = v0[225];
  v8 = v0[226];
  sub_1DD930DC8(v0[320], v1);
  v9 = &v3[v4[9]];
  v25 = &v3[v4[10]];
  v26 = &v3[v4[11]];
  *v3 = v5;
  *(v3 + 1) = v6;
  *(v3 + 2) = v7;
  *(v3 + 3) = v8;
  v10 = *(v1 + 1);
  *(v3 + 4) = *v1;
  *(v3 + 5) = v10;
  v11 = *(v1 + 3);
  *(v3 + 6) = *(v1 + 2);
  *(v3 + 7) = v11;
  v12 = v2[6];
  v13 = v4[8];
  v14 = sub_1DDA13680();
  v0[327] = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v0[328] = v16;
  v0[329] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(&v3[v13], &v1[v12], v14);
  v17 = &v1[v2[7]];
  v18 = *v17;
  LOBYTE(v17) = v17[8];
  *v9 = v18;
  v9[8] = v17;
  v19 = &v1[v2[8]];
  v20 = *(v19 + 1);
  *v25 = *v19;
  *(v25 + 1) = v20;
  v21 = &v1[v2[9]];
  v22 = *v21;
  v23 = v21[1];

  sub_1DD93128C(v1, type metadata accessor for UserTokens);
  *v26 = v22;
  *(v26 + 1) = v23;
  v0[330] = *(v27 + 88);
  v0[331] = *(v27 + 96);

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 203, sub_1DD92DE4C, v0 + 248);
}

uint64_t sub_1DD92DE4C()
{
  *(v1 + 2656) = v0;
  if (v0)
  {
    v2 = sub_1DD92E614;
  }

  else
  {
    v2 = sub_1DD92DE80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD92DE80()
{
  v1 = *(v0 + 2656);
  v2 = *(v0 + 2640);
  v3 = *(v0 + 2120);
  *(v0 + 1736) = *(v0 + 1656);
  v4 = *(v0 + 1640);
  *(v0 + 1704) = *(v0 + 1624);
  *(v0 + 1720) = v4;
  *(v0 + 1896) = *(v0 + 1632);
  *(v0 + 1912) = *(v0 + 1648);
  sub_1DD90D2EC(v0 + 1896, v0 + 1880);
  sub_1DD90D2EC(v0 + 1912, v0 + 1864);
  v2(v3, v0 + 1704);
  *(v0 + 2664) = v1;
  if (v1)
  {
    sub_1DD93128C(*(v0 + 2120), type metadata accessor for UserCredentials);
    sub_1DD9311E4(v0 + 1896);
    sub_1DD9311E4(v0 + 1912);

    return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1624, sub_1DD92E7D0, v0 + 2224);
  }

  else
  {
    sub_1DD9311E4(v0 + 1896);
    sub_1DD9311E4(v0 + 1912);

    return MEMORY[0x1EEE6DEC0](v0 + 656, v0 + 1784, sub_1DD92DFFC, v0 + 2320);
  }
}

uint64_t sub_1DD92DFFC()
{
  *(v1 + 2672) = v0;
  if (v0)
  {
    v2 = sub_1DD92E90C;
  }

  else
  {
    v2 = sub_1DD92E030;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD92E030()
{
  v0[335] = v0[223];
  v0[336] = v0[224];

  return MEMORY[0x1EEE6DEC0](v0 + 82, v0 + 223, sub_1DD92E0A8, v0 + 308);
}

uint64_t sub_1DD92E0A8()
{
  *(v1 + 2696) = v0;
  if (v0)
  {

    v2 = sub_1DD92EAC8;
  }

  else
  {
    v2 = sub_1DD92E128;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD92E128()
{
  v0[338] = v0[225];
  v0[339] = v0[226];

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 203, sub_1DD92E1A0, v0 + 272);
}

uint64_t sub_1DD92E1A0()
{
  *(v1 + 2720) = v0;
  if (v0)
  {

    v2 = sub_1DD92EC84;
  }

  else
  {
    v2 = sub_1DD92E22C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD92E22C()
{
  v16 = *(v0 + 2704);
  v17 = *(v0 + 2712);
  v15 = *(v0 + 2680);
  v14 = *(v0 + 2624);
  v1 = *(v0 + 2616);
  v2 = *(v0 + 2560);
  v3 = *(v0 + 2312);
  v4 = *(v0 + 2120);
  v5 = *(v0 + 1928);
  v6 = *(v0 + 1624);
  v7 = *(v0 + 1632);
  v8 = *(v0 + 1640);
  v13 = *(v0 + 1648);
  v9 = *(v0 + 1656);

  sub_1DD93128C(v4, type metadata accessor for UserCredentials);
  v10 = *(v3 + 24);
  v11 = type metadata accessor for Credentials(0);
  v14(v5 + *(v11 + 28), v2 + v10, v1);
  *v5 = v15;
  *(v5 + 16) = v16;
  *(v5 + 24) = v17;
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  *(v5 + 48) = v8;
  *(v5 + 56) = v13;
  *(v5 + 64) = v9;

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1624, sub_1DD92E370, v0 + 1584);
}

uint64_t sub_1DD92E3C8()
{
  sub_1DD93128C(*(v0 + 2560), type metadata accessor for UserTokens);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD92E530()
{
  sub_1DD93128C(*(v0 + 2560), type metadata accessor for UserTokens);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD92E614()
{
  sub_1DD93128C(*(v0 + 2120), type metadata accessor for UserCredentials);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1624, sub_1DD92E694, v0 + 2032);
}

uint64_t sub_1DD92E6EC()
{
  sub_1DD93128C(*(v0 + 2560), type metadata accessor for UserTokens);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD92E828()
{
  sub_1DD93128C(*(v0 + 2560), type metadata accessor for UserTokens);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD92E90C()
{
  sub_1DD93128C(*(v0 + 2120), type metadata accessor for UserCredentials);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1624, sub_1DD92E98C, v0 + 2368);
}

uint64_t sub_1DD92E9E4()
{
  sub_1DD93128C(*(v0 + 2560), type metadata accessor for UserTokens);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD92EAC8()
{
  sub_1DD93128C(*(v0 + 2120), type metadata accessor for UserCredentials);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1624, sub_1DD92EB48, v0 + 2512);
}

uint64_t sub_1DD92EBA0()
{
  sub_1DD93128C(*(v0 + 2560), type metadata accessor for UserTokens);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD92EC84()
{
  sub_1DD93128C(*(v0 + 2120), type metadata accessor for UserCredentials);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1624, sub_1DD92ED04, v0 + 2128);
}

uint64_t sub_1DD92ED5C()
{
  sub_1DD93128C(*(v0 + 2560), type metadata accessor for UserTokens);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD92EE40(uint64_t a1)
{
  v2 = sub_1DDA134E0();
  v97 = *(v2 - 8);
  v98 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v100 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v94 = &v86 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v86 - v7;
  v8 = sub_1DDA13290();
  v101 = *(v8 - 8);
  v102 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v95 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v91 = &v86 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v86 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83050, &qword_1DDA1AE90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v86 - v18;
  v20 = sub_1DDA132F0();
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE16F0F0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v24 = sub_1DDA14810();
  v25 = __swift_project_value_buffer(v24, qword_1EE16FA80);
  v26 = sub_1DDA147F0();
  v27 = sub_1DDA14F00();
  v28 = os_log_type_enabled(v26, v27);
  v96 = v25;
  if (v28)
  {
    v29 = a1;
    v30 = v23;
    v31 = v21;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1DD8F8000, v26, v27, "extractCodeAndState(from:)", v32, 2u);
    v33 = v32;
    v21 = v31;
    v23 = v30;
    a1 = v29;
    MEMORY[0x1E12B8CE0](v33, -1, -1);
  }

  sub_1DDA13440();
  sub_1DDA132E0();

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1DD90D378(v19, &qword_1ECD83050, &qword_1DDA1AE90);
    v34 = v97;
    v35 = v100;
    v36 = a1;
    a1 = v98;
    (*(v97 + 16))(v100, v36, v98);
    v37 = sub_1DDA147F0();
    v38 = sub_1DDA14EE0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v103 = v40;
      *v39 = 136380675;
      sub_1DD911DE4();
      v41 = sub_1DDA15400();
      v42 = v35;
      v44 = v43;
      (*(v34 + 8))(v42, a1);
      v45 = sub_1DD93FA54(v41, v44, &v103);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_1DD8F8000, v37, v38, "Received malformed URL: %{private}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1E12B8CE0](v40, -1, -1);
      MEMORY[0x1E12B8CE0](v39, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v35, a1);
    }

    sub_1DD962448(1u);
    sub_1DD930D3C();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
    return a1;
  }

  v88 = a1;
  v89 = v21;
  v46 = *(v21 + 32);
  v90 = v20;
  v46(v23, v19, v20);
  v47 = sub_1DDA132A0();
  v48 = v98;
  if (!v47)
  {
    goto LABEL_29;
  }

  a1 = v47;
  v87 = v23;
  v23 = *(v47 + 16);
  if (!v23)
  {
LABEL_15:

    v48 = v98;
    v23 = v87;
LABEL_29:
    v64 = v97;
    v65 = v94;
    (*(v97 + 16))(v94, v88, v48);
    v66 = sub_1DDA147F0();
    v67 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v66, v67))
    {
LABEL_37:

      (*(v64 + 8))(v65, v48);
      goto LABEL_38;
    }

    a1 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v103 = v68;
    *a1 = 136380675;
    sub_1DD911DE4();
    v69 = sub_1DDA15400();
    v70 = v48;
    v72 = v71;
    (*(v64 + 8))(v65, v70);
    v73 = sub_1DD93FA54(v69, v72, &v103);

    *(a1 + 4) = v73;
    v74 = "Received URL did not contain a code parameter: %{private}s";
LABEL_31:
    _os_log_impl(&dword_1DD8F8000, v66, v67, v74, a1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x1E12B8CE0](v68, -1, -1);
    MEMORY[0x1E12B8CE0](a1, -1, -1);

LABEL_38:
    v84 = v89;
    sub_1DD962448(1u);
    sub_1DD930D3C();
    swift_allocError();
    *v85 = 0;
    swift_willThrow();
    (*(v84 + 8))(v23, v90);
    return a1;
  }

  v49 = 0;
  v99 = (v101 + 8);
  v100 = (v101 + 16);
  while (1)
  {
    if (v49 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    v21 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v50 = *(v101 + 72);
    v20 = *(v101 + 16);
    (v20)(v15, a1 + v21 + v50 * v49, v102);
    if (sub_1DDA13270() == 1701080931 && v51 == 0xE400000000000000)
    {
      break;
    }

    v19 = sub_1DDA15440();

    if (v19)
    {
      goto LABEL_19;
    }

    ++v49;
    (*v99)(v15, v102);
    if (v23 == v49)
    {
      goto LABEL_15;
    }
  }

LABEL_19:

  v53 = v102;
  v54 = v101 + 32;
  v55 = v93;
  v86 = *(v101 + 32);
  v86(v93, v15, v102);
  a1 = sub_1DDA13280();
  v57 = v56;
  v101 = v54;
  v93 = *(v54 - 24);
  (v93)(v55, v53);
  v48 = v98;
  v23 = v87;
  if (!v57)
  {
    goto LABEL_29;
  }

  result = sub_1DDA132A0();
  if (!result)
  {
    goto LABEL_35;
  }

  v59 = result;
  v94 = *(result + 16);
  if (!v94)
  {
LABEL_28:

    v48 = v98;
    v23 = v87;
LABEL_35:

    v64 = v97;
    v65 = v92;
    (*(v97 + 16))(v92, v88, v48);
    v66 = sub_1DDA147F0();
    v67 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_37;
    }

    a1 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v103 = v68;
    *a1 = 136380675;
    sub_1DD911DE4();
    v79 = sub_1DDA15400();
    v80 = v48;
    v82 = v81;
    (*(v64 + 8))(v65, v80);
    v83 = sub_1DD93FA54(v79, v82, &v103);

    *(a1 + 4) = v83;
    v74 = "Received URL did not contain a state parameter: %{private}s";
    goto LABEL_31;
  }

  v60 = 0;
  v61 = result + v21;
  while (1)
  {
    if (v60 >= *(v59 + 16))
    {
      __break(1u);
      return result;
    }

    (v20)(v95, v61, v102);
    if (sub_1DDA13270() == 0x6574617473 && v62 == 0xE500000000000000)
    {
      break;
    }

    v63 = sub_1DDA15440();

    if (v63)
    {
      goto LABEL_33;
    }

    ++v60;
    result = (v93)(v95, v102);
    v61 += v50;
    if (v94 == v60)
    {
      goto LABEL_28;
    }
  }

LABEL_33:

  v75 = v91;
  v76 = v102;
  v86(v91, v95, v102);
  sub_1DDA13280();
  v78 = v77;
  (v93)(v75, v76);
  v48 = v98;
  v23 = v87;
  if (!v78)
  {
    goto LABEL_35;
  }

  (*(v89 + 8))(v87, v90);
  return a1;
}

uint64_t sub_1DD92F960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD92F984, 0, 0);
}

uint64_t sub_1DD92F984()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 48), *(v0[3] + 72));
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1DD92FA44;
  v5 = v0[2];

  return sub_1DD97B45C(v5, v2, v3, (v0 + 6));
}

uint64_t sub_1DD92FA44()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    *(v2 + 49) = *(v2 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1DD92FB7C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1DD92FB7C(uint64_t a1)
{
  v2 = *(v1 + 49);
  sub_1DD930D3C();
  swift_allocError();
  *v3 = v2;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1DD92FBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD92FC20, 0, 0);
}

uint64_t sub_1DD92FC20()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_1((v0[8] + 48), *(v0[8] + 72));
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1DD92FCE0;

  return sub_1DD97BFC4((v0 + 2), v2, v3, (v0 + 11));
}

uint64_t sub_1DD92FCE0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    *(v2 + 89) = *(v2 + 88);

    return MEMORY[0x1EEE6DFA0](sub_1DD92FE28, 0, 0);
  }

  else
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 56);
    *(v6 + 32) = *(v2 + 48);
    *v6 = v4;
    *(v6 + 16) = v5;
    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_1DD92FE28(uint64_t a1)
{
  v2 = *(v1 + 89);
  sub_1DD930D3C();
  swift_allocError();
  *v3 = v2;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1DD92FEA8(uint64_t a1, int *a2)
{
  *(v2 + 56) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_1DD92FF9C;

  return v5(v2 + 16);
}

uint64_t sub_1DD92FF9C()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 56);
    *(v6 + 32) = *(v2 + 48);
    *v6 = v4;
    *(v6 + 16) = v5;
  }

  v7 = *(v3 + 8);

  return v7();
}

uint64_t ExternalPartnerAuthenticator.AuthenticationSession.transferCredentialFromAnotherAuthenticator(sourceAuthenticator:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for UserCredentials(0);
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  type metadata accessor for Credentials(0);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9301F8, 0, 0);
}

uint64_t sub_1DD9301F8()
{
  v1 = *(v0 + 80);
  *(v0 + 88) = **(v0 + 16);
  sub_1DD92CCE8(&qword_1ECD82D00, &qword_1DDA18B10, type metadata accessor for UserCredentials, v1);
  v2 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1DD90ADB4(*(v0 + 80), v2, &qword_1ECD82D00, &qword_1DDA18B10);
  v5 = *(v4 + 48);
  *(v0 + 96) = v5;
  *(v0 + 104) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = 1;
  LODWORD(v3) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD82D00, &qword_1DDA18B10);
  if (v3 == 1)
  {
LABEL_2:
    sub_1DD931238();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
    sub_1DD90D378(*(v0 + 80), &qword_1ECD82D00, &qword_1DDA18B10);

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 80);
  v11 = *(v0 + 24);
  if (!v5(v10, 1, v11) && *(v10 + *(v11 + 40) + 8))
  {
    v14 = *(v0 + 96);
    v15 = *(v0 + 56);
    sub_1DD90ADB4(v10, v15, &qword_1ECD82D00, &qword_1DDA18B10);
    v16 = v14(v15, 1, v11);
    v17 = *(v0 + 56);
    if (v16 == 1)
    {
      sub_1DD90D378(v17, &qword_1ECD82D00, &qword_1DDA18B10);
    }

    else
    {
      v18 = *(v0 + 40);
      v19 = *(v0 + 24);
      sub_1DD93135C(v17, v18, type metadata accessor for UserCredentials);
      if (*(v18 + *(v19 + 40) + 8))
      {
        return sub_1DDA15180();
      }

      sub_1DD93128C(*(v0 + 40), type metadata accessor for UserCredentials);
    }

    v6 = 0;
    goto LABEL_2;
  }

  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1DD930590;
  v13 = *(v0 + 48);

  return sub_1DD93658C(v13);
}

uint64_t sub_1DD930590()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1DD930938;
  }

  else
  {
    sub_1DD93128C(*(v2 + 48), type metadata accessor for Credentials);
    v3 = sub_1DD9306C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD9306C0()
{
  v1 = v0[15];
  sub_1DD92CCE8(&qword_1ECD82D00, &qword_1DDA18B10, type metadata accessor for UserCredentials, v0[8]);
  if (v1)
  {
    v2 = v0[8];
    v3 = v0[3];
    v4 = v0[4];

    (*(v4 + 56))(v2, 1, 1, v3);
  }

  sub_1DD9312EC(v0[8], v0[10]);
  v5 = v0[12];
  v6 = v0[7];
  v7 = v0[3];
  sub_1DD90ADB4(v0[10], v6, &qword_1ECD82D00, &qword_1DDA18B10);
  v8 = v5(v6, 1, v7);
  v9 = v0[7];
  if (v8 == 1)
  {
    sub_1DD90D378(v9, &qword_1ECD82D00, &qword_1DDA18B10);
  }

  else
  {
    v10 = v0[5];
    v11 = v0[3];
    sub_1DD93135C(v9, v10, type metadata accessor for UserCredentials);
    if (*(v10 + *(v11 + 40) + 8))
    {
      return sub_1DDA15180();
    }

    sub_1DD93128C(v0[5], type metadata accessor for UserCredentials);
  }

  sub_1DD931238();
  swift_allocError();
  *v13 = 0;
  swift_willThrow();
  sub_1DD90D378(v0[10], &qword_1ECD82D00, &qword_1DDA18B10);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DD930938()
{
  sub_1DD90D378(*(v0 + 80), &qword_1ECD82D00, &qword_1DDA18B10);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD930A00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v45 = a1;
  v5 = sub_1DDA13250();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DD9562F0(32);
  v41 = v9;
  v42 = v8;
  v10 = v9;
  v11 = sub_1DD9562F0(32);
  v43 = v12;
  v44 = v11;
  v13 = sub_1DDA14CC0();
  *(v13 + 16) = 32;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  v54 = v13;

  v14 = sub_1DD901910(v8, v10);
  v16 = v15;
  sub_1DD909CD4(v14, v15);
  sub_1DD974B4C(v14, v16, v14, v16, &v54);

  v18 = sub_1DD90D1C8(v17);
  v37 = v19;
  v38 = v18;

  v52 = sub_1DDA13580();
  v53 = v20;
  v50 = 43;
  v51 = 0xE100000000000000;
  v48 = 45;
  v49 = 0xE100000000000000;
  sub_1DD9313D4();
  v21 = sub_1DDA14F80();
  v23 = v22;

  v52 = v21;
  v53 = v23;
  v50 = 47;
  v51 = 0xE100000000000000;
  v48 = 95;
  v49 = 0xE100000000000000;
  v24 = sub_1DDA14F80();
  v26 = v25;

  v52 = v24;
  v53 = v26;
  sub_1DDA13240();
  v27 = sub_1DDA14F70();
  v29 = v28;
  (*(v39 + 8))(v7, v40);

  v52 = v27;
  v53 = v29;
  v50 = 61;
  v51 = 0xE100000000000000;
  v48 = 0;
  v49 = 0xE000000000000000;
  v30 = sub_1DDA14F80();
  v32 = v31;

  sub_1DD909D28(v38, v37);
  sub_1DD909D28(v14, v16);

  v33 = v43;
  *a4 = v44;
  a4[1] = v33;
  a4[2] = v30;
  a4[3] = v32;
  v34 = v41;
  a4[4] = v42;
  a4[5] = v34;
  result = sub_1DD8FEEB0(v45, (a4 + 6));
  v36 = v47;
  a4[11] = v46;
  a4[12] = v36;
  return result;
}

unint64_t sub_1DD930D3C()
{
  result = qword_1ECD83030;
  if (!qword_1ECD83030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83030);
  }

  return result;
}

uint64_t sub_1DD930DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserTokens(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD930E2C(uint64_t a1)
{
  v4 = *(type metadata accessor for UserTokens(0) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD92F960(a1, v1 + 16, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for UserTokens(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 120) & ~v2;
  v4 = *(*v1 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  v5 = v1[8];
  v6 = sub_1DDA13680();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DD93104C(uint64_t a1)
{
  v4 = *(type metadata accessor for UserTokens(0) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD92FBFC(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1DD93112C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD9165BC;

  return sub_1DD92FEA8(a1, v4);
}

unint64_t sub_1DD931238()
{
  result = qword_1ECD83038;
  if (!qword_1ECD83038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83038);
  }

  return result;
}

uint64_t sub_1DD93128C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD9312EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD93135C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DD9313D4()
{
  result = qword_1ECD83040;
  if (!qword_1ECD83040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83040);
  }

  return result;
}

void sub_1DD931428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

void sub_1DD93146C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_1DD9314B0(char a1)
{
  v3 = v1;

  v5 = sub_1DDA147F0();
  v6 = sub_1DDA14ED0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315651;
    *(v7 + 4) = sub_1DD93FA54(v3[4], v3[5], &v19);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1DD93FA54(v3[2], v3[3], &v19);
    *(v7 + 22) = 2081;
    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83048, &unk_1DDA18B80);
    v9 = sub_1DDA14B70();
    v11 = sub_1DD93FA54(v9, v10, &v19);

    *(v7 + 24) = v11;
    _os_log_impl(&dword_1DD8F8000, v5, v6, "Setting %s.%s to: %{private}s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  if (a1 == 2)
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v14 = v3[11];
    v21 = a1 & 1;
    result = v14(&v21);
    if (v2)
    {
      return result;
    }

    v12 = result;
    v13 = v16;
  }

  v17 = v3[9];
  v18 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v17);
  (*(v18 + 16))(v3[4], v3[5], v3[2], v3[3], v12, v13, v17, v18);
  return sub_1DD90D440(v12, v13);
}

uint64_t sub_1DD9316D8(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for ChatChunk.RateLimits(0);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  v9 = MEMORY[0x1EEE9AC00](v38);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v42 = a1;
  sub_1DD90ADB4(a1, &v35 - v14, &qword_1ECD82CF8, &unk_1DDA1AD50);

  v16 = sub_1DDA147F0();
  v17 = sub_1DDA14ED0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v8;
    v19 = v18;
    v36 = swift_slowAlloc();
    v43 = v36;
    *v19 = 136315651;
    *(v19 + 4) = sub_1DD93FA54(v4[4], v4[5], &v43);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1DD93FA54(v4[2], v4[3], &v43);
    *(v19 + 22) = 2081;
    sub_1DD90ADB4(v15, v13, &qword_1ECD82CF8, &unk_1DDA1AD50);
    v20 = sub_1DDA14B70();
    v22 = v21;
    sub_1DD90D378(v15, &qword_1ECD82CF8, &unk_1DDA1AD50);
    v23 = sub_1DD93FA54(v20, v22, &v43);
    v3 = v2;

    *(v19 + 24) = v23;
    _os_log_impl(&dword_1DD8F8000, v16, v17, "Setting %s.%s to: %{private}s", v19, 0x20u);
    v24 = v36;
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v24, -1, -1);
    v25 = v19;
    v8 = v37;
    MEMORY[0x1E12B8CE0](v25, -1, -1);
  }

  else
  {

    sub_1DD90D378(v15, &qword_1ECD82CF8, &unk_1DDA1AD50);
  }

  v26 = v4[11];
  v27 = v39;
  sub_1DD90ADB4(v42, v39, &qword_1ECD82CF8, &unk_1DDA1AD50);
  if ((*(v40 + 48))(v27, 1, v41) == 1)
  {
    v28 = 0;
    v29 = 0xF000000000000000;
  }

  else
  {
    sub_1DD941124(v27, v8, type metadata accessor for ChatChunk.RateLimits);
    v30 = v26(v8);
    if (v3)
    {
      return sub_1DD940F10(v8, type metadata accessor for ChatChunk.RateLimits);
    }

    v28 = v30;
    v29 = v31;
    sub_1DD940F10(v8, type metadata accessor for ChatChunk.RateLimits);
  }

  v33 = v4[9];
  v34 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v33);
  (*(v34 + 16))(v4[4], v4[5], v4[2], v4[3], v28, v29, v33, v34);
  return sub_1DD90D440(v28, v29);
}

uint64_t sub_1DD931B18(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for UserCredentials(0);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v9 = MEMORY[0x1EEE9AC00](v38);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v42 = a1;
  sub_1DD90ADB4(a1, &v35 - v14, &qword_1ECD82D00, &qword_1DDA18B10);

  v16 = sub_1DDA147F0();
  v17 = sub_1DDA14ED0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v8;
    v19 = v18;
    v36 = swift_slowAlloc();
    v43 = v36;
    *v19 = 136315651;
    *(v19 + 4) = sub_1DD93FA54(v4[4], v4[5], &v43);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1DD93FA54(v4[2], v4[3], &v43);
    *(v19 + 22) = 2081;
    sub_1DD90ADB4(v15, v13, &qword_1ECD82D00, &qword_1DDA18B10);
    v20 = sub_1DDA14B70();
    v22 = v21;
    sub_1DD90D378(v15, &qword_1ECD82D00, &qword_1DDA18B10);
    v23 = sub_1DD93FA54(v20, v22, &v43);
    v3 = v2;

    *(v19 + 24) = v23;
    _os_log_impl(&dword_1DD8F8000, v16, v17, "Setting %s.%s to: %{private}s", v19, 0x20u);
    v24 = v36;
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v24, -1, -1);
    v25 = v19;
    v8 = v37;
    MEMORY[0x1E12B8CE0](v25, -1, -1);
  }

  else
  {

    sub_1DD90D378(v15, &qword_1ECD82D00, &qword_1DDA18B10);
  }

  v26 = v4[11];
  v27 = v39;
  sub_1DD90ADB4(v42, v39, &qword_1ECD82D00, &qword_1DDA18B10);
  if ((*(v40 + 48))(v27, 1, v41) == 1)
  {
    v28 = 0;
    v29 = 0xF000000000000000;
  }

  else
  {
    sub_1DD941124(v27, v8, type metadata accessor for UserCredentials);
    v30 = v26(v8);
    if (v3)
    {
      return sub_1DD940F10(v8, type metadata accessor for UserCredentials);
    }

    v28 = v30;
    v29 = v31;
    sub_1DD940F10(v8, type metadata accessor for UserCredentials);
  }

  v33 = v4[9];
  v34 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v33);
  (*(v34 + 16))(v4[4], v4[5], v4[2], v4[3], v28, v29, v33, v34);
  return sub_1DD90D440(v28, v29);
}

uint64_t sub_1DD931F58(void *a1)
{
  v3 = v1;
  v5 = a1[2];
  v22 = *a1;
  v23 = a1[3];
  v24 = a1[1];
  v25 = a1[4];

  sub_1DD90ADB4(a1, &v27, &qword_1ECD83058, &qword_1DDA18B90);
  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14ED0();

  sub_1DD90D378(a1, &qword_1ECD83058, &qword_1DDA18B90);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v8 = 136315651;
    *(v8 + 4) = sub_1DD93FA54(v3[4], v3[5], &v30);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1DD93FA54(v3[2], v3[3], &v30);
    *(v8 + 22) = 2081;
    v9 = *(a1 + 1);
    v27 = *a1;
    v28 = v9;
    v29 = a1[4];
    v10 = v5;
    sub_1DD90ADB4(a1, v26, &qword_1ECD83058, &qword_1DDA18B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83058, &qword_1DDA18B90);
    v11 = sub_1DDA14B70();
    v13 = sub_1DD93FA54(v11, v12, &v30);

    *(v8 + 24) = v13;
    v5 = v10;
    _os_log_impl(&dword_1DD8F8000, v6, v7, "Setting %s.%s to: %{private}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v21, -1, -1);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
  }

  if (a1[2])
  {
    v14 = v3[11];
    LOBYTE(v27) = v22 & 1;
    *(&v27 + 1) = v24;
    *&v28 = v5;
    *(&v28 + 1) = v23;
    v29 = v25;

    v15 = v14(&v27);
    v17 = v16;

    if (v2)
    {
      return result;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  v19 = v3[9];
  v20 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v19);
  (*(v20 + 16))(v3[4], v3[5], v3[2], v3[3], v15, v17, v19, v20);
  return sub_1DD90D440(v15, v17);
}

uint64_t sub_1DD932268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[36] = a3;
  v4[37] = a4;
  v4[34] = a1;
  v4[35] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  v4[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v4[39] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[40] = v5;
  *v5 = v4;
  v5[1] = sub_1DD932370;

  return sub_1DD935A68();
}

uint64_t sub_1DD932370()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *v0;

  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 328) = v4;
  *v4 = v3;
  v4[1] = sub_1DD932528;

  return v6(v1 + 224);
}

uint64_t sub_1DD932528()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1DD932794;
  }

  else
  {
    v2 = sub_1DD93263C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD93263C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = sub_1DDA14D60();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1DD928DF4(v2, v0 + 104);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = *(v0 + 120);
  v6 = *(v0 + 152);
  *(v4 + 64) = *(v0 + 136);
  *(v4 + 80) = v6;
  *(v4 + 96) = *(v0 + 168);
  *(v4 + 32) = *(v0 + 104);
  *(v4 + 48) = v5;
  sub_1DD982718(0, 0, v1, &unk_1DDA18D50, v4);

  LOBYTE(v2) = *(v0 + 224);
  v12 = *(v0 + 232);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = *(v0 + 272);

  *v9 = v2;
  *(v9 + 8) = v12;
  *(v9 + 24) = v7;
  *(v9 + 32) = v8;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DD932794()
{
  v1 = *(v0 + 336);
  *(v0 + 264) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    if (v4)
    {
      v7 = *(v0 + 48);

      v8 = sub_1DD9FFD28(v7, v4);

      sub_1DD940E20(v3, v5, v6);

      if (v8 != 39)
      {
        if (sub_1DD9CEEC4(v8) == 0x78655F6E656B6F74 && v9 == 0xED00006465726970)
        {

LABEL_12:

          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v13 = sub_1DDA14810();
          __swift_project_value_buffer(v13, qword_1ECDA20E0);
          v14 = sub_1DDA147F0();
          v15 = sub_1DDA14F00();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_1DD8F8000, v14, v15, "Access token expired. Attempting refresh+retry.", v16, 2u);
            MEMORY[0x1E12B8CE0](v16, -1, -1);
          }

          v17 = swift_task_alloc();
          *(v0 + 344) = v17;
          *v17 = v0;
          v17[1] = sub_1DD932AB4;
          v18 = *(v0 + 304);

          return sub_1DD93658C(v18);
        }

        v12 = sub_1DDA15440();

        if (v12)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {

      sub_1DD940E20(v3, v5, v6);
    }
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DD932AB4()
{

  if (v0)
  {

    v1 = sub_1DD932D20;
  }

  else
  {
    v1 = sub_1DD932BCC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1DD932BCC()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[44] = v4;
  *v4 = v0;
  v4[1] = sub_1DD932E74;

  return v6(v0 + 23);
}

uint64_t sub_1DD932D20()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[44] = v4;
  *v4 = v0;
  v4[1] = sub_1DD932E74;

  return v6(v0 + 23);
}

uint64_t sub_1DD932E74()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1DD933030;
  }

  else
  {
    v2 = sub_1DD932F88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD932F88()
{
  v1 = *(v0 + 184);
  v7 = *(v0 + 192);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 272);

  *v4 = v1;
  *(v4 + 8) = v7;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DD933030()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD9330A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D58, &unk_1DDA18640);
  v4[30] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[31] = v5;
  *v5 = v4;
  v5[1] = sub_1DD9331E4;

  return sub_1DD935A68();
}

uint64_t sub_1DD9331E4()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *v0;

  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 256) = v4;
  *v4 = v3;
  v4[1] = sub_1DD9333AC;
  v5 = *(v1 + 240);

  return v7(v5);
}

uint64_t sub_1DD9333AC()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1DD933614;
  }

  else
  {
    v2 = sub_1DD9334C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD9334C0()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = sub_1DDA14D60();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1DD928DF4(v4, v0 + 104);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = *(v0 + 120);
  v8 = *(v0 + 152);
  *(v6 + 64) = *(v0 + 136);
  *(v6 + 80) = v8;
  *(v6 + 96) = *(v0 + 168);
  *(v6 + 32) = *(v0 + 104);
  *(v6 + 48) = v7;
  sub_1DD982718(0, 0, v2, &unk_1DDA18D08, v6);

  sub_1DD914958(v1, v3, &qword_1ECD82D58, &unk_1DDA18640);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DD933614()
{
  v1 = *(v0 + 264);
  *(v0 + 184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    if (v4)
    {
      v7 = *(v0 + 48);

      v8 = sub_1DD9FFD28(v7, v4);

      sub_1DD940E20(v3, v5, v6);

      if (v8 != 39)
      {
        if (sub_1DD9CEEC4(v8) == 0x78655F6E656B6F74 && v9 == 0xED00006465726970)
        {

LABEL_12:

          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v13 = sub_1DDA14810();
          __swift_project_value_buffer(v13, qword_1ECDA20E0);
          v14 = sub_1DDA147F0();
          v15 = sub_1DDA14F00();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_1DD8F8000, v14, v15, "Access token expired. Attempting refresh+retry.", v16, 2u);
            MEMORY[0x1E12B8CE0](v16, -1, -1);
          }

          v17 = swift_task_alloc();
          *(v0 + 272) = v17;
          *v17 = v0;
          v17[1] = sub_1DD933948;
          v18 = *(v0 + 224);

          return sub_1DD93658C(v18);
        }

        v12 = sub_1DDA15440();

        if (v12)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {

      sub_1DD940E20(v3, v5, v6);
    }
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DD933948()
{

  if (v0)
  {

    v1 = sub_1DD933BB4;
  }

  else
  {
    v1 = sub_1DD933A60;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1DD933A60()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1DD933D08;
  v5 = v0[24];

  return v7(v5);
}

uint64_t sub_1DD933BB4()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1DD933D08;
  v5 = v0[24];

  return v7(v5);
}

uint64_t sub_1DD933D08()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1DD933E9C;
  }

  else
  {
    v2 = sub_1DD933E1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD933E1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD933E9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD933F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v4[29] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[30] = v5;
  *v5 = v4;
  v5[1] = sub_1DD93402C;

  return sub_1DD935A68();
}

uint64_t sub_1DD93402C()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *v0;

  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 248) = v4;
  *v4 = v3;
  v4[1] = sub_1DD9341DC;

  return v6();
}

uint64_t sub_1DD9341DC()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1DD934414;
  }

  else
  {
    v2 = sub_1DD9342F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD9342F0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = sub_1DDA14D60();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1DD928DF4(v2, v0 + 104);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = *(v0 + 120);
  v6 = *(v0 + 152);
  *(v4 + 64) = *(v0 + 136);
  *(v4 + 80) = v6;
  *(v4 + 96) = *(v0 + 168);
  *(v4 + 32) = *(v0 + 104);
  *(v4 + 48) = v5;
  sub_1DD982718(0, 0, v1, &unk_1DDA18D18, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DD934414()
{
  v1 = *(v0 + 256);
  *(v0 + 184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    if (v4)
    {
      v7 = *(v0 + 48);

      v8 = sub_1DD9FFD28(v7, v4);

      sub_1DD940E20(v3, v5, v6);

      if (v8 != 39)
      {
        if (sub_1DD9CEEC4(v8) == 0x78655F6E656B6F74 && v9 == 0xED00006465726970)
        {

LABEL_12:

          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v13 = sub_1DDA14810();
          __swift_project_value_buffer(v13, qword_1ECDA20E0);
          v14 = sub_1DDA147F0();
          v15 = sub_1DDA14F00();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_1DD8F8000, v14, v15, "Access token expired. Attempting refresh+retry.", v16, 2u);
            MEMORY[0x1E12B8CE0](v16, -1, -1);
          }

          v17 = swift_task_alloc();
          *(v0 + 264) = v17;
          *v17 = v0;
          v17[1] = sub_1DD93473C;
          v18 = *(v0 + 224);

          return sub_1DD93658C(v18);
        }

        v12 = sub_1DDA15440();

        if (v12)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {

      sub_1DD940E20(v3, v5, v6);
    }
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DD93473C()
{

  if (v0)
  {

    v1 = sub_1DD9349A8;
  }

  else
  {
    v1 = sub_1DD934854;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1DD934854()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_1DD934AFC;
  v5 = v0[24];

  return v7(v5);
}

uint64_t sub_1DD9349A8()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_1DD934AFC;
  v5 = v0[24];

  return v7(v5);
}

uint64_t sub_1DD934AFC()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1DD934C84;
  }

  else
  {
    v2 = sub_1DD934C10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD934C10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD934C84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD934CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v4[29] = swift_task_alloc();
  type metadata accessor for ChatChunk.RateLimits(0);
  v4[30] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[31] = v5;
  *v5 = v4;
  v5[1] = sub_1DD934E2C;

  return sub_1DD935A68();
}

uint64_t sub_1DD934E2C()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *v0;

  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 256) = v4;
  *v4 = v3;
  v4[1] = sub_1DD934FF4;
  v5 = *(v1 + 240);

  return v7(v5);
}

uint64_t sub_1DD934FF4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1DD935260;
  }

  else
  {
    v2 = sub_1DD935108;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD935108()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = sub_1DDA14D60();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1DD928DF4(v4, v0 + 104);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = *(v0 + 120);
  v8 = *(v0 + 152);
  *(v6 + 64) = *(v0 + 136);
  *(v6 + 80) = v8;
  *(v6 + 96) = *(v0 + 168);
  *(v6 + 32) = *(v0 + 104);
  *(v6 + 48) = v7;
  sub_1DD982718(0, 0, v2, &unk_1DDA18D40, v6);

  sub_1DD941124(v1, v3, type metadata accessor for ChatChunk.RateLimits);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DD935260()
{
  v1 = *(v0 + 264);
  *(v0 + 184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    if (v4)
    {
      v7 = *(v0 + 48);

      v8 = sub_1DD9FFD28(v7, v4);

      sub_1DD940E20(v3, v5, v6);

      if (v8 != 39)
      {
        if (sub_1DD9CEEC4(v8) == 0x78655F6E656B6F74 && v9 == 0xED00006465726970)
        {

LABEL_12:

          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v13 = sub_1DDA14810();
          __swift_project_value_buffer(v13, qword_1ECDA20E0);
          v14 = sub_1DDA147F0();
          v15 = sub_1DDA14F00();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_1DD8F8000, v14, v15, "Access token expired. Attempting refresh+retry.", v16, 2u);
            MEMORY[0x1E12B8CE0](v16, -1, -1);
          }

          v17 = swift_task_alloc();
          *(v0 + 272) = v17;
          *v17 = v0;
          v17[1] = sub_1DD935594;
          v18 = *(v0 + 224);

          return sub_1DD93658C(v18);
        }

        v12 = sub_1DDA15440();

        if (v12)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {

      sub_1DD940E20(v3, v5, v6);
    }
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DD935594()
{

  if (v0)
  {

    v1 = sub_1DD935800;
  }

  else
  {
    v1 = sub_1DD9356AC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1DD9356AC()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1DD935954;
  v5 = v0[24];

  return v7(v5);
}

uint64_t sub_1DD935800()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1DD935954;
  v5 = v0[24];

  return v7(v5);
}

uint64_t sub_1DD935954()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1DD94119C;
  }

  else
  {
    v2 = sub_1DD941198;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD935A68()
{
  v1[2] = v0;
  type metadata accessor for Credentials(0);
  v1[3] = swift_task_alloc();
  v2 = sub_1DDA13680();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for UserCredentials(0);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD935BF4, 0, 0);
}

uint64_t sub_1DD935BF4()
{
  v30 = v0;
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  v0[12] = __swift_project_value_buffer(v1, qword_1EE16FA80);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14ED0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "refreshCredentialsIfExpired()", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v0[7];

  sub_1DD92C8C4(v5);
  v6 = v0[7];
  if ((*(v0[9] + 48))(v6, 1, v0[8]) == 1)
  {
    sub_1DD90D378(v6, &qword_1ECD82D00, &qword_1DDA18B10);
    v7 = sub_1DDA147F0();
    v8 = sub_1DDA14ED0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DD8F8000, v7, v8, "User not logged in. No need to refresh credentials.", v9, 2u);
      MEMORY[0x1E12B8CE0](v9, -1, -1);
    }

    goto LABEL_9;
  }

  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];
  sub_1DD941124(v6, v0[11], type metadata accessor for UserCredentials);
  sub_1DDA13670();
  v15 = sub_1DDA13600();
  (*(v13 + 8))(v12, v14);
  if ((v15 & 1) == 0)
  {
    sub_1DD940BD4(v0[11], v0[10], type metadata accessor for UserCredentials);
    v18 = sub_1DDA147F0();
    v19 = sub_1DDA14ED0();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[10];
    v21 = v0[11];
    if (v20)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      sub_1DD940F70(&qword_1ECD82FB8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v25 = sub_1DDA15400();
      v27 = v26;
      sub_1DD940F10(v22, type metadata accessor for UserCredentials);
      v28 = sub_1DD93FA54(v25, v27, &v29);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1DD8F8000, v18, v19, "Credential is not expired. Expiration date: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12B8CE0](v24, -1, -1);
      MEMORY[0x1E12B8CE0](v23, -1, -1);

      sub_1DD940F10(v21, type metadata accessor for UserCredentials);
    }

    else
    {

      sub_1DD940F10(v22, type metadata accessor for UserCredentials);
      sub_1DD940F10(v21, type metadata accessor for UserCredentials);
    }

LABEL_9:

    v10 = v0[1];

    return v10();
  }

  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_1DD936194;
  v17 = v0[3];

  return sub_1DD93658C(v17);
}

uint64_t sub_1DD936194()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1DD9363E4;
  }

  else
  {
    sub_1DD940F10(*(v2 + 24), type metadata accessor for Credentials);
    v3 = sub_1DD9362C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD9362C4(uint64_t a1)
{
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14ED0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 88);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Successfully refreshed credentials", v6, 2u);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  sub_1DD940F10(v5, type metadata accessor for UserCredentials);

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_1DD9363E4()
{
  sub_1DD940F10(v0[11], type metadata accessor for UserCredentials);
  v1 = v0[14];
  v2 = v1;
  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14EE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Failed to refresh credentials: %@", v5, 0xCu);
    sub_1DD90D378(v6, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
    MEMORY[0x1E12B8CE0](v5, -1, -1);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DD93658C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for UserCredentials(0);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9366F8, 0, 0);
}

uint64_t sub_1DD9366F8()
{
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  v0[20] = __swift_project_value_buffer(v1, qword_1EE16FA80);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "refreshCredentials()", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v0[18];
  v6 = v0[9];

  v0[21] = *v6;
  sub_1DD92C8C4(v5);
  v7 = v0[19];
  v8 = v0[17];
  v9 = v0[11];
  v10 = v0[12];
  sub_1DD914958(v0[18], v7, &qword_1ECD82D00, &qword_1DDA18B10);
  sub_1DD90ADB4(v7, v8, &qword_1ECD82D00, &qword_1DDA18B10);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = v0[17];
  if (v11 == 1)
  {
    sub_1DD90D378(v12, &qword_1ECD82D00, &qword_1DDA18B10);
    v13 = sub_1DDA147F0();
    v14 = sub_1DDA14EE0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DD8F8000, v13, v14, "Could not refresh credentials because none are present.", v15, 2u);
      MEMORY[0x1E12B8CE0](v15, -1, -1);
    }

    v16 = v0[19];

    sub_1DD962448(0xCu);
    v17 = sub_1DDA13840();
    sub_1DD940F70(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
    swift_allocError();
    v19 = v18;
    sub_1DDA13800();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69DA4C8], v17);
    swift_willThrow();
    sub_1DD90D378(v16, &qword_1ECD82D00, &qword_1DDA18B10);

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[9];
    sub_1DD941124(v12, v0[15], type metadata accessor for UserCredentials);
    __swift_project_boxed_opaque_existential_1((v22 + 40), *(v22 + 64));
    v23 = swift_task_alloc();
    v0[22] = v23;
    *v23 = v0;
    v23[1] = sub_1DD936CDC;
    v24 = v0[15];
    v25 = v0[13];

    return sub_1DD97D304(v25, v24);
  }
}

uint64_t sub_1DD936CDC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1DD937180;
  }

  else
  {
    v2 = sub_1DD936DF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD936DF0()
{
  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  sub_1DD941124(v0[13], v3, type metadata accessor for UserCredentials);
  sub_1DD940BD4(v3, v2, type metadata accessor for UserCredentials);
  (*(v5 + 56))(v2, 0, 1, v4);
  sub_1DD931B18(v2);
  if (v1)
  {
    v6 = v1;
    sub_1DD90D378(v0[16], &qword_1ECD82D00, &qword_1DDA18B10);
    v7 = sub_1DDA147F0();
    v8 = sub_1DDA14EE0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DD8F8000, v7, v8, "Failed to write to keychain", v9, 2u);
      MEMORY[0x1E12B8CE0](v9, -1, -1);
    }

    v10 = v0[19];
    v12 = v0[14];
    v11 = v0[15];

    sub_1DD962448(0xDu);
    v13 = sub_1DDA13840();
    sub_1DD940F70(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
    swift_allocError();
    v15 = v14;
    v16 = v6;
    sub_1DDA13800();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69DA4C8], v13);
    swift_willThrow();

    sub_1DD940F10(v12, type metadata accessor for UserCredentials);
    sub_1DD940F10(v11, type metadata accessor for UserCredentials);
    sub_1DD90D378(v10, &qword_1ECD82D00, &qword_1DDA18B10);

    v17 = v0[1];

    return v17();
  }

  else
  {
    sub_1DD90D378(v0[16], &qword_1ECD82D00, &qword_1DDA18B10);
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_1DD9375FC;

    return ExternalPartnerAuthenticator.retrieveLatestBillingPlan()((v0 + 2));
  }
}

uint64_t sub_1DD937180()
{
  v1 = v0[23];
  v2 = v1;
  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14EE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Failed refresh credentials request: %@", v6, 0xCu);
    sub_1DD90D378(v7, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v10 = v0[23];

  v11 = sub_1DD9C4E98(v10);
  v0[26] = v11;
  v0[7] = v11;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  v13 = sub_1DDA13840();
  v14 = swift_dynamicCast();
  v15 = *(*(v13 - 8) + 56);
  v16 = v0[10];
  if (v14)
  {
    v17 = *(v13 - 8);
    v15(v0[10], 0, 1, v13);
    v18 = (*(v17 + 88))(v16, v13);
    v19 = *MEMORY[0x1E69DA4C8];
    (*(v17 + 8))(v16, v13);
    if (v18 == v19)
    {
      v20 = v11;
      v21 = sub_1DDA147F0();
      v22 = sub_1DDA14F00();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = v11;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v26;
        *v24 = v26;
        _os_log_impl(&dword_1DD8F8000, v21, v22, "RefreshToken invalid: %@, sign out the user.", v23, 0xCu);
        sub_1DD90D378(v24, &unk_1ECD83100, &unk_1DDA185C0);
        MEMORY[0x1E12B8CE0](v24, -1, -1);
        MEMORY[0x1E12B8CE0](v23, -1, -1);
      }

      v27 = swift_task_alloc();
      v0[27] = v27;
      *v27 = v0;
      v27[1] = sub_1DD9378D0;

      return ExternalPartnerAuthenticator.signOut()();
    }
  }

  else
  {
    v15(v0[10], 1, 1, v13);
    sub_1DD90D378(v16, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v29 = v0[23];
  v30 = v0[19];
  v31 = v0[15];
  swift_willThrow();

  sub_1DD940F10(v31, type metadata accessor for UserCredentials);
  sub_1DD90D378(v30, &qword_1ECD82D00, &qword_1DDA18B10);

  v32 = v0[1];

  return v32();
}

uint64_t sub_1DD9375FC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1DD937B04;
  }

  else
  {
    v2 = sub_1DD937710;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD937710()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  sub_1DD940F10(*(v0 + 120), type metadata accessor for UserCredentials);
  sub_1DD90D378(v1, &qword_1ECD82D00, &qword_1DDA18B10);
  v17 = *(v0 + 16);
  v16 = *(v0 + 24);
  v14 = *(v0 + 48);
  v15 = *(v0 + 40);
  v6 = *v2;
  v5 = *(v2 + 1);
  v8 = *(v2 + 2);
  v7 = *(v2 + 3);
  v9 = *(v3 + 32);
  v10 = *(type metadata accessor for Credentials(0) + 28);
  v11 = sub_1DDA13680();
  (*(*(v11 - 8) + 16))(v4 + v10, &v2[v9], v11);

  sub_1DD940F10(v2, type metadata accessor for UserCredentials);
  *v4 = v6;
  *(v4 + 8) = v5;
  *(v4 + 16) = v8;
  *(v4 + 24) = v7;
  *(v4 + 32) = v17;
  *(v4 + 40) = v16;
  *(v4 + 56) = v15;
  *(v4 + 64) = v14;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DD9378D0()
{

  if (v0)
  {

    v1 = sub_1DD9411B8;
  }

  else
  {
    v1 = sub_1DD9379E8;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1DD9379E8(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[19];
  v4 = v1[15];
  swift_willThrow();

  sub_1DD940F10(v4, type metadata accessor for UserCredentials);
  sub_1DD90D378(v3, &qword_1ECD82D00, &qword_1DDA18B10);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1DD937B04(uint64_t a1)
{
  v2 = v1[25];
  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14EE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Failed to write to keychain", v5, 2u);
    MEMORY[0x1E12B8CE0](v5, -1, -1);
  }

  v6 = v1[19];
  v8 = v1[14];
  v7 = v1[15];

  sub_1DD962448(0xDu);
  v9 = sub_1DDA13840();
  sub_1DD940F70(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
  swift_allocError();
  v11 = v10;
  v12 = v2;
  sub_1DDA13800();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69DA4C8], v9);
  swift_willThrow();

  sub_1DD940F10(v8, type metadata accessor for UserCredentials);
  sub_1DD940F10(v7, type metadata accessor for UserCredentials);
  sub_1DD90D378(v6, &qword_1ECD82D00, &qword_1DDA18B10);

  v13 = v1[1];

  return v13();
}

uint64_t ExternalPartnerAuthenticator.startSignInSession(redirectURI:)@<X0>(uint64_t *a1@<X8>)
{
  sub_1DD929A28(v1 + 40, v8);
  sub_1DD928DF4(v1, v7);
  v3 = swift_allocObject();
  v4 = v7[3];
  v3[3] = v7[2];
  v3[4] = v4;
  v3[5] = v7[4];
  v5 = v7[1];
  v3[1] = v7[0];
  v3[2] = v5;
  return sub_1DD930A00(v8, sub_1DD938284, v3, a1);
}

uint64_t ExternalPartnerAuthenticator.startSignInSession()@<X0>(uint64_t *a1@<X8>)
{
  sub_1DD929A28(v1 + 40, v8);
  sub_1DD928DF4(v1, v7);
  v3 = swift_allocObject();
  v4 = v7[3];
  v3[3] = v7[2];
  v3[4] = v4;
  v3[5] = v7[4];
  v5 = v7[1];
  v3[1] = v7[0];
  v3[2] = v5;
  return sub_1DD930A00(v8, sub_1DD9411A0, v3, a1);
}

void sub_1DD937ED4(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  v26 = *(a2 + 1);
  v6 = *(a2 + 3);
  v24 = *(a2 + 4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25[-1] - v11;
  sub_1DD940BD4(a1, &v25[-1] - v11, type metadata accessor for UserCredentials);
  v13 = type metadata accessor for UserCredentials(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_1DD931B18(v12);
  if (v2)
  {
    sub_1DD90D378(v12, &qword_1ECD82D00, &qword_1DDA18B10);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DDA14810();
    __swift_project_value_buffer(v15, qword_1EE16FA80);
    v16 = v2;
    v17 = sub_1DDA147F0();
    v18 = sub_1DDA14EE0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1DD8F8000, v17, v18, "Failed store tokens: %@", v19, 0xCu);
      sub_1DD90D378(v20, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v20, -1, -1);
      MEMORY[0x1E12B8CE0](v19, -1, -1);
    }

    sub_1DD930D3C();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();
  }

  else
  {
    sub_1DD90D378(v12, &qword_1ECD82D00, &qword_1DDA18B10);
    v25[0] = v4 & 1;
    v25[1] = v26;
    v25[2] = v5;
    v25[3] = v6;
    v25[4] = v24;
    sub_1DD931F58(v25);
    sub_1DD9314B0(2);
    v14 = type metadata accessor for ChatChunk.RateLimits(0);
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_1DD9316D8(v9);
    sub_1DD90D378(v9, &qword_1ECD82CF8, &unk_1DDA1AD50);
  }
}

uint64_t objectdestroyTm_0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t ExternalPartnerAuthenticator.signOut()()
{
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v2 = type metadata accessor for UserCredentials(0);
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD938434, 0, 0);
}

uint64_t sub_1DD938434()
{
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  *(v0 + 112) = __swift_project_value_buffer(v1, qword_1EE16FA80);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "signOut()", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 56);

  *(v0 + 120) = *v6;
  sub_1DD92C8C4(v5);
  v8 = *(v0 + 80);
  v9 = (*(*(v0 + 96) + 48))(v8, 1, *(v0 + 88));
  if (v9 == 1)
  {
    sub_1DD90D378(v8, &qword_1ECD82D00, &qword_1DDA18B10);
    v10 = *(v0 + 72);
    (*(*(v0 + 96) + 56))(v10, 1, 1, *(v0 + 88));
    sub_1DD931B18(v10);
    sub_1DD90D378(*(v0 + 72), &qword_1ECD82D00, &qword_1DDA18B10);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    sub_1DD931F58((v0 + 16));
    sub_1DD9314B0(2);
    v14 = *(v0 + 64);
    v15 = type metadata accessor for ChatChunk.RateLimits(0);
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    sub_1DD9316D8(v14);
    sub_1DD90D378(*(v0 + 64), &qword_1ECD82CF8, &unk_1DDA1AD50);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v11 = *(v0 + 56);
    sub_1DD941124(v8, *(v0 + 104), type metadata accessor for UserCredentials);
    __swift_project_boxed_opaque_existential_1((v11 + 40), *(v11 + 64));
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v12[1] = sub_1DD938900;
    v13 = *(v0 + 104);

    return sub_1DD97CAFC(v13);
  }
}

uint64_t sub_1DD938900()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1DD938D84;
  }

  else
  {
    v2 = sub_1DD938A14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD938A14(uint64_t a1)
{
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 104);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Successfully signed out", v6, 2u);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  sub_1DD940F10(v5, type metadata accessor for UserCredentials);
  v7 = *(v1 + 136);
  v8 = *(v1 + 72);
  (*(*(v1 + 96) + 56))(v8, 1, 1, *(v1 + 88));
  sub_1DD931B18(v8);
  v9 = *(v1 + 72);
  if (v7)
  {
    sub_1DD90D378(v9, &qword_1ECD82D00, &qword_1DDA18B10);
    v10 = v7;
    v11 = sub_1DDA147F0();
    v12 = sub_1DDA14EF0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v7;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1DD8F8000, v11, v12, "Failed to delete credentials, user not signed out! %@", v13, 0xCu);
      sub_1DD90D378(v14, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v14, -1, -1);
      MEMORY[0x1E12B8CE0](v13, -1, -1);
    }

    sub_1DD962448(0x10u);
    swift_willThrow();

    v20 = *(v1 + 8);
  }

  else
  {
    sub_1DD90D378(v9, &qword_1ECD82D00, &qword_1DDA18B10);
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
    sub_1DD931F58((v1 + 16));
    sub_1DD9314B0(2);
    v18 = *(v1 + 64);
    v19 = type metadata accessor for ChatChunk.RateLimits(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    sub_1DD9316D8(v18);
    sub_1DD90D378(*(v1 + 64), &qword_1ECD82CF8, &unk_1DDA1AD50);

    v20 = *(v1 + 8);
  }

  return v20();
}

uint64_t sub_1DD938D84()
{
  v1 = *(v0 + 136);
  v2 = v1;
  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14EF0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 136);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Failed to revoke access token while logging out! %@", v6, 0xCu);
    sub_1DD90D378(v7, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v10 = sub_1DDA147F0();
  v11 = sub_1DDA14EE0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DD8F8000, v10, v11, "Credentials will be deleted from keychain even though the revocation failed.", v12, 2u);
    MEMORY[0x1E12B8CE0](v12, -1, -1);
  }

  v13 = *(v0 + 136);
  v14 = *(v0 + 104);

  sub_1DD962448(0xFu);
  sub_1DD940F10(v14, type metadata accessor for UserCredentials);
  v15 = *(v0 + 72);
  (*(*(v0 + 96) + 56))(v15, 1, 1, *(v0 + 88));
  sub_1DD931B18(v15);
  sub_1DD90D378(*(v0 + 72), &qword_1ECD82D00, &qword_1DDA18B10);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_1DD931F58((v0 + 16));
  sub_1DD9314B0(2);
  v17 = *(v0 + 64);
  v18 = type metadata accessor for ChatChunk.RateLimits(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1DD9316D8(v17);
  sub_1DD90D378(*(v0 + 64), &qword_1ECD82CF8, &unk_1DDA1AD50);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t ExternalPartnerAuthenticator.retrieveLatestBillingPlan()(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = type metadata accessor for UserCredentials(0);
  v2[32] = v3;
  v4 = *(v3 - 8);
  v2[33] = v4;
  v2[34] = *(v4 + 64);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD93930C, 0, 0);
}

uint64_t sub_1DD93930C()
{
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  *(v0 + 320) = __swift_project_value_buffer(v1, qword_1EE16FA80);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "retrieveLatestBillingPlan()", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = *(v0 + 304);

  sub_1DD92C8C4(v5);
  v6 = *(v0 + 312);
  v7 = *(v0 + 296);
  v8 = *(v0 + 256);
  v9 = *(v0 + 264);
  sub_1DD914958(*(v0 + 304), v6, &qword_1ECD82D00, &qword_1DDA18B10);
  sub_1DD90ADB4(v6, v7, &qword_1ECD82D00, &qword_1DDA18B10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1DD90D378(*(v0 + 296), &qword_1ECD82D00, &qword_1DDA18B10);
    v10 = sub_1DDA147F0();
    v11 = sub_1DDA14EE0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DD8F8000, v10, v11, "Could not refresh billing plan because credentials are not present.", v12, 2u);
      MEMORY[0x1E12B8CE0](v12, -1, -1);
    }

    v13 = *(v0 + 312);

    sub_1DD962448(6u);
    sub_1DD940030();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    sub_1DD90D378(v13, &qword_1ECD82D00, &qword_1DDA18B10);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 288);
    v18 = *(v0 + 280);
    v19 = *(v0 + 264);
    v20 = *(v0 + 248);
    sub_1DD941124(*(v0 + 296), v17, type metadata accessor for UserCredentials);
    sub_1DD928DF4(v20, v0 + 16);
    sub_1DD940BD4(v17, v18, type metadata accessor for UserCredentials);
    v21 = (*(v19 + 80) + 96) & ~*(v19 + 80);
    v22 = swift_allocObject();
    *(v0 + 328) = v22;
    v23 = *(v0 + 64);
    v22[3] = *(v0 + 48);
    v22[4] = v23;
    v22[5] = *(v0 + 80);
    v24 = *(v0 + 32);
    v22[1] = *(v0 + 16);
    v22[2] = v24;
    sub_1DD941124(v18, v22 + v21, type metadata accessor for UserCredentials);
    v25 = swift_task_alloc();
    *(v0 + 336) = v25;
    *v25 = v0;
    v25[1] = sub_1DD939834;
    v26 = *(v0 + 248);

    return sub_1DD932268(v0 + 136, v26, &unk_1DDA18BD0, v22);
  }
}

uint64_t sub_1DD939834()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {

    v3 = sub_1DD939C10;
  }

  else
  {
    *(v2 + 384) = *(v2 + 136);
    *(v2 + 352) = *(v2 + 144);
    *(v2 + 360) = *(v2 + 152);
    *(v2 + 376) = *(v2 + 168);

    v3 = sub_1DD93997C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD93997C()
{
  *(v0 + 96) = *(v0 + 384);
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  v5 = *(v0 + 160);
  *(v0 + 176) = *(v0 + 144);
  *(v0 + 192) = v5;
  *(v0 + 104) = v3;
  *(v0 + 120) = v2;
  *(v0 + 128) = v1;
  sub_1DD90D2EC(v0 + 176, v0 + 208);
  sub_1DD90D2EC(v0 + 192, v0 + 224);
  sub_1DD931F58((v0 + 96));
  v6 = v4;
  sub_1DD9311E4(v0 + 176);
  sub_1DD9311E4(v0 + 192);
  if (v4)
  {
    sub_1DD9311E4(v0 + 176);
    sub_1DD9311E4(v0 + 192);
    v7 = sub_1DDA147F0();
    v8 = sub_1DDA14EE0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DD8F8000, v7, v8, "Failed to persist billing plan to keychain", v9, 2u);
      MEMORY[0x1E12B8CE0](v9, -1, -1);
    }

    v10 = *(v0 + 312);
    v11 = *(v0 + 288);

    sub_1DD962448(5u);
    sub_1DD940030();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();

    sub_1DD940F10(v11, type metadata accessor for UserCredentials);
    sub_1DD90D378(v10, &qword_1ECD82D00, &qword_1DDA18B10);

    v13 = *(v0 + 8);
  }

  else
  {
    v14 = *(v0 + 312);
    v15 = *(v0 + 240);
    sub_1DD940F10(*(v0 + 288), type metadata accessor for UserCredentials);
    sub_1DD90D378(v14, &qword_1ECD82D00, &qword_1DDA18B10);
    v16 = *(v0 + 176);
    v17 = *(v0 + 192);
    v18 = *(v0 + 200);
    *v15 = *(v0 + 136);
    *(v15 + 8) = v16;
    *(v15 + 24) = v17;
    *(v15 + 32) = v18;

    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_1DD939C10()
{
  v1 = v0[39];
  sub_1DD940F10(v0[36], type metadata accessor for UserCredentials);
  sub_1DD90D378(v1, &qword_1ECD82D00, &qword_1DDA18B10);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DD939CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD939D08, 0, 0);
}

uint64_t sub_1DD939D08()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_1((v0[8] + 40), *(v0[8] + 64));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1DD939DC8;

  return sub_1DD97BFC4((v0 + 2), v2, v3, (v0 + 11));
}

uint64_t sub_1DD939DC8()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 89) = *(v2 + 88);
    v3 = sub_1DD92FE28;
  }

  else
  {
    v3 = sub_1DD939EE0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD939EE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  *(v3 + 32) = *(v0 + 48);
  *v3 = v1;
  *(v3 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t ExternalPartnerAuthenticator.retrieveLatestRateLimitBudgets()(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = type metadata accessor for RateLimitBudgets(0);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  v2[27] = swift_task_alloc();
  v4 = type metadata accessor for ChatChunk.RateLimits(0);
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v2[31] = swift_task_alloc();
  v5 = type metadata accessor for UserCredentials(0);
  v2[32] = v5;
  v6 = *(v5 - 8);
  v2[33] = v6;
  v2[34] = *(v6 + 64);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD93A1EC, 0, 0);
}

uint64_t sub_1DD93A1EC()
{
  v1 = *(v0 + 104);
  if (*(__swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64)) + 176) != 1)
  {
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v2 = sub_1DDA14810();
    __swift_project_value_buffer(v2, qword_1EE16FA80);
    v3 = sub_1DDA147F0();
    v4 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_8;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "This provider does not enable rate limiting";
    goto LABEL_7;
  }

  sub_1DD92C8C4(*(v0 + 248));
  v17 = *(v0 + 264);
  v18 = *(v0 + 248);
  v19 = (*(v17 + 48))(v18, 1, *(v0 + 256));
  if (v19 == 1)
  {
    sub_1DD90D378(v18, &qword_1ECD82D00, &qword_1DDA18B10);
    v20 = __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    v21 = *(v20 + *(type metadata accessor for OpenAIAuthenticationService(0) + 44));
    if (v21 == 4)
    {
      if (qword_1EE16F0F0 != -1)
      {
        swift_once();
      }

      v22 = sub_1DDA14810();
      __swift_project_value_buffer(v22, qword_1EE16FA80);
      v3 = sub_1DDA147F0();
      v4 = sub_1DDA14EE0();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_8;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "This partner does not support anonymous rate limiting";
LABEL_7:
      _os_log_impl(&dword_1DD8F8000, v3, v4, v6, v5, 2u);
      MEMORY[0x1E12B8CE0](v5, -1, -1);
LABEL_8:
      v7 = *(v0 + 168);
      v8 = *(v0 + 96);

      v9 = v7[5];
      v10 = type metadata accessor for RateLimitBudgets.Limits(0);
      v11 = *(*(v10 - 8) + 56);
      v11(&v8[v9], 1, 1, v10);
      v12 = v7[6];
      v11(&v8[v12], 1, 1, v10);
      v13 = v7[7];
      v11(&v8[v13], 1, 1, v10);
      v14 = v7[8];
      v11(&v8[v14], 1, 1, v10);
      *v8 = 0;
      sub_1DD90D378(&v8[v9], &qword_1ECD82830, &unk_1DDA16350);
      v11(&v8[v9], 1, 1, v10);
      sub_1DD90D378(&v8[v12], &qword_1ECD82830, &unk_1DDA16350);
      v11(&v8[v12], 1, 1, v10);
      sub_1DD90D378(&v8[v13], &qword_1ECD82830, &unk_1DDA16350);
      v11(&v8[v13], 1, 1, v10);
      sub_1DD90D378(&v8[v14], &qword_1ECD82830, &unk_1DDA16350);
      v11(&v8[v14], 1, 1, v10);

      v15 = *(v0 + 8);

      return v15();
    }

    *(v0 + 320) = sub_1DD9403B8(MEMORY[0x1E69E7CC0], &qword_1ECD830B8, &qword_1DDA18D48);
    *(v0 + 336) = v21;
    v33 = swift_task_alloc();
    *(v0 + 328) = v33;
    *v33 = v0;
    v33[1] = sub_1DD93B464;

    return sub_1DD9486BC((v0 + 336), 0);
  }

  else
  {
    v24 = *(v0 + 280);
    v23 = *(v0 + 288);
    v25 = *(v0 + 104);
    sub_1DD941124(v18, v23, type metadata accessor for UserCredentials);
    sub_1DD928DF4(v25, v0 + 16);
    sub_1DD940BD4(v23, v24, type metadata accessor for UserCredentials);
    v26 = (*(v17 + 80) + 96) & ~*(v17 + 80);
    v27 = swift_allocObject();
    *(v0 + 296) = v27;
    v28 = *(v0 + 64);
    v27[3] = *(v0 + 48);
    v27[4] = v28;
    v27[5] = *(v0 + 80);
    v29 = *(v0 + 32);
    v27[1] = *(v0 + 16);
    v27[2] = v29;
    sub_1DD941124(v24, v27 + v26, type metadata accessor for UserCredentials);
    v30 = swift_task_alloc();
    *(v0 + 304) = v30;
    *v30 = v0;
    v30[1] = sub_1DD93AA6C;
    v31 = *(v0 + 240);
    v32 = *(v0 + 104);

    return sub_1DD934CF8(v31, v32, &unk_1DDA18BF0, v27);
  }
}

uint64_t sub_1DD93AA6C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1DD93B900;
  }

  else
  {
    v2 = sub_1DD93ABA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD93ABA0()
{
  v1 = v0[39];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[28];
  sub_1DD940BD4(v0[30], v3, type metadata accessor for ChatChunk.RateLimits);
  (*(v2 + 56))(v3, 0, 1, v4);
  sub_1DD9316D8(v3);
  v5 = v0[36];
  v6 = v0[30];
  if (v1)
  {
    v7 = v1;
    sub_1DD90D378(v0[27], &qword_1ECD82CF8, &unk_1DDA1AD50);
    sub_1DD940F10(v6, type metadata accessor for ChatChunk.RateLimits);
    sub_1DD940F10(v5, type metadata accessor for UserCredentials);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v8 = sub_1DDA14810();
    __swift_project_value_buffer(v8, qword_1EE16FA80);
    v9 = v1;
    v10 = sub_1DDA147F0();
    v11 = sub_1DDA14EE0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v7;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1DD8F8000, v10, v11, "Failed get rate limits request: %@", v12, 0xCu);
      sub_1DD90D378(v13, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v13, -1, -1);
      MEMORY[0x1E12B8CE0](v12, -1, -1);
    }

    sub_1DD962448(0xAu);
    swift_willThrow();

    v16 = v0[1];
  }

  else
  {
    v17 = v0[28];
    v18 = v0[25];
    v19 = v0[26];
    v20 = v0[24];
    v21 = v0[21];
    v72 = v0[22];
    v73 = v19;
    v22 = v0[15];
    v76 = v0[23];
    v78 = v0[14];
    sub_1DD90D378(v0[27], &qword_1ECD82CF8, &unk_1DDA1AD50);
    sub_1DD940F10(v5, type metadata accessor for UserCredentials);
    sub_1DD914958(v6, v19, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD914958(v6 + v17[5], v18, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD914958(v6 + v17[6], v20, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD914958(v6 + v17[7], v76, &qword_1ECD82D10, &qword_1DDA185E0);
    v23 = v21[5];
    v24 = type metadata accessor for RateLimitBudgets.Limits(0);
    v25 = *(*(v24 - 1) + 56);
    v25(&v72[v23], 1, 1, v24);
    v74 = v21[6];
    v25(&v72[v74], 1, 1, v24);
    v77 = v21[7];
    v25(&v72[v77], 1, 1, v24);
    v75 = v21[8];
    v25(&v72[v75], 1, 1, v24);
    *v72 = 0;
    v26 = *(v22 + 48);
    v27 = v26(v73, 1, v78);
    v79 = v26;
    if (v27 == 1)
    {
      v28 = v0[20];
      v29 = 1;
    }

    else
    {
      v30 = v0[20];
      v31 = v0[16];
      v32 = v0[14];
      sub_1DD941124(v0[26], v31, type metadata accessor for ChatChunk.RateLimits.Limits);
      v33 = *(v32 + 20);
      v34 = *(v31 + *(v32 + 24));
      v35 = *v31;
      sub_1DD914958(v31 + v33, v30 + v24[6], &qword_1ECD82838, &unk_1DDA185F0);
      v36 = v34 >= v35;
      *v30 = v34;
      v30[1] = v35;
      v26 = v79;
      *(v30 + v24[7]) = v36;
      *(v30 + v24[8]) = 0;
      v28 = v30;
      v29 = 0;
    }

    v25(v28, v29, 1, v24);
    v37 = v0[25];
    v38 = v0[14];
    sub_1DD9148E8(v0[20], &v72[v23]);
    if (v26(v37, 1, v38) == 1)
    {
      v39 = v0[19];
      v40 = 1;
    }

    else
    {
      v41 = v0[19];
      v42 = v0[16];
      v43 = v0[14];
      sub_1DD941124(v0[25], v42, type metadata accessor for ChatChunk.RateLimits.Limits);
      v44 = *(v43 + 20);
      v45 = *(v42 + *(v43 + 24));
      v46 = *v42;
      sub_1DD914958(v42 + v44, v41 + v24[6], &qword_1ECD82838, &unk_1DDA185F0);
      v47 = v45 >= v46;
      *v41 = v45;
      v41[1] = v46;
      v26 = v79;
      *(v41 + v24[7]) = v47;
      *(v41 + v24[8]) = 0;
      v39 = v41;
      v40 = 0;
    }

    v25(v39, v40, 1, v24);
    v48 = v0[23];
    v49 = v0[14];
    sub_1DD9148E8(v0[19], &v72[v74]);
    if (v26(v48, 1, v49) == 1)
    {
      v50 = v0[18];
      v51 = 1;
    }

    else
    {
      v52 = v0[18];
      v53 = v0[16];
      v54 = v0[14];
      sub_1DD941124(v0[23], v53, type metadata accessor for ChatChunk.RateLimits.Limits);
      v55 = *(v54 + 20);
      v56 = *(v53 + *(v54 + 24));
      v57 = *v53;
      sub_1DD914958(v53 + v55, v52 + v24[6], &qword_1ECD82838, &unk_1DDA185F0);
      v58 = v56 >= v57;
      *v52 = v56;
      v52[1] = v57;
      v26 = v79;
      *(v52 + v24[7]) = 0;
      *(v52 + v24[8]) = v58;
      v50 = v52;
      v51 = 0;
    }

    v25(v50, v51, 1, v24);
    v59 = v0[24];
    v60 = v0[14];
    sub_1DD9148E8(v0[18], &v72[v75]);
    if (v26(v59, 1, v60) == 1)
    {
      v61 = v0[17];
      v62 = 1;
    }

    else
    {
      v64 = v0[16];
      v63 = v0[17];
      v65 = v0[14];
      sub_1DD941124(v0[24], v64, type metadata accessor for ChatChunk.RateLimits.Limits);
      v66 = *(v65 + 20);
      v67 = *(v64 + *(v65 + 24));
      v68 = *v64;
      sub_1DD914958(v64 + v66, v63 + v24[6], &qword_1ECD82838, &unk_1DDA185F0);
      *v63 = v67;
      v63[1] = v68;
      *(v63 + v24[7]) = v67 >= v68;
      *(v63 + v24[8]) = 0;
      v61 = v63;
      v62 = 0;
    }

    v25(v61, v62, 1, v24);
    v69 = v0[22];
    v70 = v0[12];
    sub_1DD9148E8(v0[17], &v72[v77]);
    sub_1DD941124(v69, v70, type metadata accessor for RateLimitBudgets);

    v16 = v0[1];
  }

  return v16();
}

uint64_t sub_1DD93B464(char a1)
{
  *(*v1 + 337) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD93B584, 0, 0);
}

uint64_t sub_1DD93B584()
{
  sub_1DD914294(*(v0 + 337));
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1EE16FA80);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 337);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Anonymous user rate limited: %{BOOL}d", v5, 8u);
    MEMORY[0x1E12B8CE0](v5, -1, -1);
  }

  v16 = *(v0 + 337);
  v6 = *(v0 + 168);
  v7 = *(v0 + 96);

  v8 = v6[5];
  v9 = type metadata accessor for RateLimitBudgets.Limits(0);
  v10 = *(*(v9 - 8) + 56);
  v10(&v7[v8], 1, 1, v9);
  v11 = v6[6];
  v10(&v7[v11], 1, 1, v9);
  v12 = v6[7];
  v10(&v7[v12], 1, 1, v9);
  v13 = v6[8];
  v10(&v7[v13], 1, 1, v9);
  *v7 = v16;
  sub_1DD90D378(&v7[v8], &qword_1ECD82830, &unk_1DDA16350);
  v10(&v7[v8], 1, 1, v9);
  sub_1DD90D378(&v7[v11], &qword_1ECD82830, &unk_1DDA16350);
  v10(&v7[v11], 1, 1, v9);
  sub_1DD90D378(&v7[v12], &qword_1ECD82830, &unk_1DDA16350);
  v10(&v7[v12], 1, 1, v9);
  sub_1DD90D378(&v7[v13], &qword_1ECD82830, &unk_1DDA16350);
  v10(&v7[v13], 1, 1, v9);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DD93B900()
{
  sub_1DD940F10(v0[36], type metadata accessor for UserCredentials);
  v1 = v0[39];
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1EE16FA80);
  v3 = v1;
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14EE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Failed get rate limits request: %@", v6, 0xCu);
    sub_1DD90D378(v7, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  sub_1DD962448(0xAu);
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DD93BB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD93BB94, 0, 0);
}

uint64_t sub_1DD93BB94()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DD941194;
  v2 = v0[4];
  v3 = v0[2];

  return sub_1DD97DEC8(v3, v2);
}

uint64_t ExternalPartnerAuthenticator.retrieveLatestRateLimitBudget(for:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = type metadata accessor for RateLimitBudgets(0);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  *(v3 + 224) = swift_task_alloc();
  v6 = type metadata accessor for ChatChunk.RateLimits(0);
  *(v3 + 232) = v6;
  *(v3 + 240) = *(v6 - 8);
  *(v3 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  *(v3 + 256) = swift_task_alloc();
  v7 = type metadata accessor for UserCredentials(0);
  *(v3 + 264) = v7;
  v8 = *(v7 - 8);
  *(v3 + 272) = v8;
  *(v3 + 280) = *(v8 + 64);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 362) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1DD93BF3C, 0, 0);
}

uint64_t sub_1DD93BF3C()
{
  v1 = *(v0 + 104);
  if (*(__swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64)) + 176) != 1)
  {
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v2 = sub_1DDA14810();
    __swift_project_value_buffer(v2, qword_1EE16FA80);
    v3 = sub_1DDA147F0();
    v4 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_8;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "This provider does not enable rate limiting";
    goto LABEL_7;
  }

  sub_1DD92C8C4(*(v0 + 256));
  v11 = *(v0 + 272);
  v12 = *(v0 + 256);
  v13 = (*(v11 + 48))(v12, 1, *(v0 + 264));
  if (v13 == 1)
  {
    sub_1DD90D378(v12, &qword_1ECD82D00, &qword_1DDA18B10);
    v14 = __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    if (*(v14 + *(type metadata accessor for OpenAIAuthenticationService(0) + 44)) == 4)
    {
      if (qword_1EE16F0F0 != -1)
      {
        swift_once();
      }

      v15 = sub_1DDA14810();
      __swift_project_value_buffer(v15, qword_1EE16FA80);
      v3 = sub_1DDA147F0();
      v4 = sub_1DDA14EE0();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_8;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "This partner does not support anonymous rate limiting";
LABEL_7:
      _os_log_impl(&dword_1DD8F8000, v3, v4, v6, v5, 2u);
      MEMORY[0x1E12B8CE0](v5, -1, -1);
LABEL_8:
      v7 = *(v0 + 96);

      v8 = type metadata accessor for RateLimitBudgets.Limits(0);
      (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

      v9 = *(v0 + 8);

      return v9();
    }

    v26 = *(v0 + 362);
    *(v0 + 328) = sub_1DD9403B8(MEMORY[0x1E69E7CC0], &qword_1ECD830B8, &qword_1DDA18D48);
    *(v0 + 360) = v26;
    v27 = swift_task_alloc();
    *(v0 + 336) = v27;
    *v27 = v0;
    v27[1] = sub_1DD93D138;

    return sub_1DD9486BC((v0 + 360), 0);
  }

  else
  {
    v17 = *(v0 + 288);
    v16 = *(v0 + 296);
    v18 = *(v0 + 104);
    sub_1DD941124(v12, v16, type metadata accessor for UserCredentials);
    sub_1DD928DF4(v18, v0 + 16);
    sub_1DD940BD4(v16, v17, type metadata accessor for UserCredentials);
    v19 = (*(v11 + 80) + 96) & ~*(v11 + 80);
    v20 = swift_allocObject();
    *(v0 + 304) = v20;
    v21 = *(v0 + 64);
    v20[3] = *(v0 + 48);
    v20[4] = v21;
    v20[5] = *(v0 + 80);
    v22 = *(v0 + 32);
    v20[1] = *(v0 + 16);
    v20[2] = v22;
    sub_1DD941124(v17, v20 + v19, type metadata accessor for UserCredentials);
    v23 = swift_task_alloc();
    *(v0 + 312) = v23;
    *v23 = v0;
    v23[1] = sub_1DD93C69C;
    v24 = *(v0 + 248);
    v25 = *(v0 + 104);

    return sub_1DD934CF8(v24, v25, &unk_1DDA18C18, v20);
  }
}

uint64_t sub_1DD93C69C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1DD93DB64;
  }

  else
  {
    v2 = sub_1DD93C7D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD93C7D0()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  sub_1DD940BD4(*(v0 + 248), v3, type metadata accessor for ChatChunk.RateLimits);
  (*(v2 + 56))(v3, 0, 1, v4);
  sub_1DD9316D8(v3);
  v5 = *(v0 + 296);
  v6 = *(v0 + 248);
  if (v1)
  {
    v7 = v1;
    sub_1DD90D378(*(v0 + 224), &qword_1ECD82CF8, &unk_1DDA1AD50);
    sub_1DD940F10(v6, type metadata accessor for ChatChunk.RateLimits);
    sub_1DD940F10(v5, type metadata accessor for UserCredentials);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v8 = sub_1DDA14810();
    __swift_project_value_buffer(v8, qword_1EE16FA80);
    v9 = v1;
    v10 = sub_1DDA147F0();
    v11 = sub_1DDA14EE0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v7;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1DD8F8000, v10, v11, "Failed get rate limits request: %@", v12, 0xCu);
      sub_1DD90D378(v13, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v13, -1, -1);
      MEMORY[0x1E12B8CE0](v12, -1, -1);
    }

    sub_1DD962448(0xAu);
    swift_willThrow();

    v16 = *(v0 + 8);
  }

  else
  {
    v17 = *(v0 + 232);
    v18 = *(v0 + 200);
    v19 = *(v0 + 208);
    v20 = *(v0 + 184);
    v21 = *(v0 + 192);
    v85 = *(v0 + 176);
    v87 = *(v0 + 168);
    v89 = v21;
    v22 = *(v0 + 120);
    v91 = *(v0 + 112);
    sub_1DD90D378(*(v0 + 224), &qword_1ECD82CF8, &unk_1DDA1AD50);
    sub_1DD940F10(v5, type metadata accessor for UserCredentials);
    sub_1DD914958(v6, v21, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD914958(v6 + v17[5], v20, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD914958(v6 + v17[6], v85, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD914958(v6 + v17[7], v87, &qword_1ECD82D10, &qword_1DDA185E0);
    v24 = v18 + 5;
    v23 = v18[5];
    v25 = type metadata accessor for RateLimitBudgets.Limits(0);
    v26 = *(*(v25 - 1) + 56);
    v79 = v23;
    v26(&v19[v23], 1, 1, v25);
    v86 = v18 + 6;
    v80 = v18[6];
    v26(&v19[v80], 1, 1, v25);
    v84 = v18 + 7;
    v82 = v18[7];
    v26(&v19[v82], 1, 1, v25);
    v88 = v18 + 8;
    v81 = v18[8];
    v26(&v19[v81], 1, 1, v25);
    v83 = v19;
    *v19 = 0;
    v27 = *(v22 + 48);
    v28 = v27(v89, 1, v91);
    v90 = v27;
    if (v28 == 1)
    {
      v29 = *(v0 + 160);
      v30 = 1;
    }

    else
    {
      v31 = *(v0 + 160);
      v32 = *(v0 + 128);
      v78 = v24;
      v33 = *(v0 + 112);
      sub_1DD941124(*(v0 + 192), v32, type metadata accessor for ChatChunk.RateLimits.Limits);
      v34 = *(v33 + 20);
      v35 = *(v32 + *(v33 + 24));
      v36 = *v32;
      sub_1DD914958(v32 + v34, v31 + v25[6], &qword_1ECD82838, &unk_1DDA185F0);
      v37 = v35 >= v36;
      *v31 = v35;
      v31[1] = v36;
      v24 = v78;
      v27 = v90;
      *(v31 + v25[7]) = v37;
      *(v31 + v25[8]) = 0;
      v29 = v31;
      v30 = 0;
    }

    v26(v29, v30, 1, v25);
    v38 = v26;
    v39 = *(v0 + 184);
    v40 = *(v0 + 112);
    sub_1DD9148E8(*(v0 + 160), &v83[v79]);
    if (v27(v39, 1, v40) == 1)
    {
      v41 = *(v0 + 152);
      v42 = 1;
    }

    else
    {
      v43 = *(v0 + 152);
      v44 = *(v0 + 128);
      v45 = *(v0 + 112);
      sub_1DD941124(*(v0 + 184), v44, type metadata accessor for ChatChunk.RateLimits.Limits);
      v46 = *(v45 + 20);
      v47 = *(v44 + *(v45 + 24));
      v48 = *v44;
      sub_1DD914958(v44 + v46, v43 + v25[6], &qword_1ECD82838, &unk_1DDA185F0);
      v49 = v47 >= v48;
      *v43 = v47;
      v43[1] = v48;
      v27 = v90;
      *(v43 + v25[7]) = v49;
      *(v43 + v25[8]) = 0;
      v41 = v43;
      v42 = 0;
    }

    v38(v41, v42, 1, v25);
    v50 = *(v0 + 168);
    v51 = *(v0 + 112);
    sub_1DD9148E8(*(v0 + 152), &v83[v80]);
    if (v27(v50, 1, v51) == 1)
    {
      v52 = *(v0 + 144);
      v53 = 1;
    }

    else
    {
      v54 = *(v0 + 144);
      v55 = *(v0 + 128);
      v56 = *(v0 + 112);
      sub_1DD941124(*(v0 + 168), v55, type metadata accessor for ChatChunk.RateLimits.Limits);
      v57 = *(v56 + 20);
      v58 = *(v55 + *(v56 + 24));
      v59 = *v55;
      sub_1DD914958(v55 + v57, v54 + v25[6], &qword_1ECD82838, &unk_1DDA185F0);
      v60 = v58 >= v59;
      *v54 = v58;
      v54[1] = v59;
      v27 = v90;
      *(v54 + v25[7]) = 0;
      *(v54 + v25[8]) = v60;
      v52 = v54;
      v53 = 0;
    }

    v38(v52, v53, 1, v25);
    v61 = *(v0 + 176);
    v62 = *(v0 + 112);
    sub_1DD9148E8(*(v0 + 144), &v83[v81]);
    if (v27(v61, 1, v62) == 1)
    {
      v63 = *(v0 + 136);
      v64 = 1;
    }

    else
    {
      v66 = *(v0 + 128);
      v65 = *(v0 + 136);
      v67 = *(v0 + 112);
      sub_1DD941124(*(v0 + 176), v66, type metadata accessor for ChatChunk.RateLimits.Limits);
      v68 = *(v67 + 20);
      v69 = *(v66 + *(v67 + 24));
      v70 = *v66;
      sub_1DD914958(v66 + v68, v65 + v25[6], &qword_1ECD82838, &unk_1DDA185F0);
      *v65 = v69;
      v65[1] = v70;
      *(v65 + v25[7]) = v69 >= v70;
      *(v65 + v25[8]) = 0;
      v63 = v65;
      v64 = 0;
    }

    v38(v63, v64, 1, v25);
    v71 = *(v0 + 362);
    v72 = *(v0 + 208);
    v73 = *(v0 + 216);
    sub_1DD9148E8(*(v0 + 136), &v83[v82]);
    sub_1DD941124(v72, v73, type metadata accessor for RateLimitBudgets);
    v74 = *(v0 + 216);
    v75 = v86;
    v76 = v88;
    if (v71 == 2)
    {
      v75 = v24;
    }

    if (v71)
    {
      v76 = v84;
    }

    if (v71 <= 1)
    {
      v75 = v76;
    }

    sub_1DD90ADB4(v74 + *v75, *(v0 + 96), &qword_1ECD82830, &unk_1DDA16350);
    sub_1DD940F10(v74, type metadata accessor for RateLimitBudgets);

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_1DD93D138(char a1)
{
  *(*v1 + 363) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD93D258, 0, 0);
}

uint64_t sub_1DD93D258()
{
  v25 = v0;
  if (*(v0 + 363) == 1)
  {
    v1 = *(v0 + 362);
    *(v0 + 344) = sub_1DD9403B8(MEMORY[0x1E69E7CC0], &qword_1ECD830B8, &qword_1DDA18D48);
    *(v0 + 361) = v1;
    v2 = swift_task_alloc();
    *(v0 + 352) = v2;
    *v2 = v0;
    v2[1] = sub_1DD93D6B0;

    return sub_1DD9486BC((v0 + 361), 1);
  }

  else
  {
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DDA14810();
    __swift_project_value_buffer(v4, qword_1EE16FA80);
    v5 = sub_1DDA147F0();
    v6 = sub_1DDA14F00();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 363);
      v8 = *(v0 + 362);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24 = v10;
      v11 = 0xEF65736E6F707365;
      *v9 = 67109634;
      *(v9 + 4) = v7;
      *(v9 + 8) = 1024;
      *(v9 + 10) = 0;
      *(v9 + 14) = 2080;
      v12 = 0x526E6F6973736573;
      v13 = 0xEF72657465727072;
      v14 = 0x65746E4965646F63;
      if (v8 != 2)
      {
        v14 = 0x6F6C7055656C6966;
        v13 = 0xEA00000000006461;
      }

      if (v8)
      {
        v12 = 0x6E65476567616D69;
        v11 = 0xEE00726F74617265;
      }

      if (v8 <= 1)
      {
        v15 = v12;
      }

      else
      {
        v15 = v14;
      }

      if (v8 <= 1)
      {
        v16 = v11;
      }

      else
      {
        v16 = v13;
      }

      v17 = sub_1DD93FA54(v15, v16, &v24);

      *(v9 + 16) = v17;
      _os_log_impl(&dword_1DD8F8000, v5, v6, "Anonymous user soft limit is reached: %{BOOL}d, hard limit is reached: %{BOOL}d, for type: %s", v9, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12B8CE0](v10, -1, -1);
      MEMORY[0x1E12B8CE0](v9, -1, -1);
    }

    v18 = *(v0 + 363);
    v19 = *(v0 + 96);
    v20 = type metadata accessor for RateLimitBudgets.Limits(0);
    v21 = v20[6];
    v22 = sub_1DDA13680();
    (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
    *v19 = -1;
    *(v19 + 1) = -1;
    v19[v20[7]] = 0;
    v19[v20[8]] = v18;
    (*(*(v20 - 1) + 56))(v19, 0, 1, v20);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1DD93D6B0(char a1)
{
  *(*v1 + 364) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD93D7D0, 0, 0);
}

uint64_t sub_1DD93D7D0()
{
  v24 = v0;
  v1 = *(v0 + 364);
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1EE16FA80);
  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14F00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 363);
    v6 = *(v0 + 362);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    v9 = 0xEF65736E6F707365;
    *v7 = 67109634;
    *(v7 + 4) = v5;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v1;
    *(v7 + 14) = 2080;
    v10 = 0x526E6F6973736573;
    v11 = 0xEF72657465727072;
    v12 = 0x65746E4965646F63;
    if (v6 != 2)
    {
      v12 = 0x6F6C7055656C6966;
      v11 = 0xEA00000000006461;
    }

    if (v6)
    {
      v10 = 0x6E65476567616D69;
      v9 = 0xEE00726F74617265;
    }

    if (v6 <= 1)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    if (v6 <= 1)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    v15 = sub_1DD93FA54(v13, v14, &v23);

    *(v7 + 16) = v15;
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Anonymous user soft limit is reached: %{BOOL}d, hard limit is reached: %{BOOL}d, for type: %s", v7, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  v16 = *(v0 + 363);
  v17 = *(v0 + 96);
  v18 = type metadata accessor for RateLimitBudgets.Limits(0);
  v19 = v18[6];
  v20 = sub_1DDA13680();
  (*(*(v20 - 8) + 56))(&v17[v19], 1, 1, v20);
  *v17 = -1;
  *(v17 + 1) = -1;
  v17[v18[7]] = v1;
  v17[v18[8]] = v16;
  (*(*(v18 - 1) + 56))(v17, 0, 1, v18);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1DD93DB64()
{
  sub_1DD940F10(v0[37], type metadata accessor for UserCredentials);
  v1 = v0[40];
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1EE16FA80);
  v3 = v1;
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14EE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Failed get rate limits request: %@", v6, 0xCu);
    sub_1DD90D378(v7, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  sub_1DD962448(0xAu);
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DD93DDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD93DE08, 0, 0);
}

uint64_t sub_1DD93DE08()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DD93DEB4;
  v2 = v0[4];
  v3 = v0[2];

  return sub_1DD97DEC8(v3, v2);
}

uint64_t sub_1DD93DEB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ExternalPartnerAuthenticator.retrieveUserInfo()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UserCredentials(0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD93E0B8, 0, 0);
}

uint64_t sub_1DD93E0B8()
{
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  v0[15] = __swift_project_value_buffer(v1, qword_1EE16FA80);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "retrieveUserInfo()", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v0[13];

  sub_1DD92C8C4(v5);
  v6 = v0[14];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  sub_1DD914958(v0[13], v6, &qword_1ECD82D00, &qword_1DDA18B10);
  sub_1DD90ADB4(v6, v7, &qword_1ECD82D00, &qword_1DDA18B10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1DD90D378(v0[12], &qword_1ECD82D00, &qword_1DDA18B10);
    v10 = sub_1DDA147F0();
    v11 = sub_1DDA14EE0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DD8F8000, v10, v11, "Could not retrieve user info because credentials are not present.", v12, 2u);
      MEMORY[0x1E12B8CE0](v12, -1, -1);
    }

    v13 = v0[14];

    sub_1DD962448(6u);
    sub_1DD940030();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    sub_1DD90D378(v13, &qword_1ECD82D00, &qword_1DDA18B10);

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[11];
    v18 = v0[8];
    sub_1DD941124(v0[12], v17, type metadata accessor for UserCredentials);
    __swift_project_boxed_opaque_existential_1((v18 + 40), *(v18 + 64));
    v20 = *(v17 + 32);
    v19 = *(v17 + 40);
    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sub_1DD93E5D8;

    return sub_1DD97B45C((v0 + 2), v20, v19, v0 + 49);
  }
}

uint64_t sub_1DD93E5D8()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 50) = *(v2 + 49);
    v3 = sub_1DD93E7D4;
  }

  else
  {
    v3 = sub_1DD93E6F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD93E6F0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  sub_1DD90D378(*(v0 + 112), &qword_1ECD82D00, &qword_1DDA18B10);
  sub_1DD940F10(v1, type metadata accessor for UserCredentials);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DD93E7D4(uint64_t a1)
{
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14EE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 50);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    sub_1DD930D3C();
    swift_allocError();
    *v7 = v4;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Failed get user info request: %@", v5, 0xCu);
    sub_1DD90D378(v6, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
    MEMORY[0x1E12B8CE0](v5, -1, -1);
  }

  v9 = *(v1 + 50);
  v10 = *(v1 + 112);
  v11 = *(v1 + 88);

  sub_1DD962448(3u);
  sub_1DD930D3C();
  swift_allocError();
  *v12 = v9;
  swift_willThrow();
  sub_1DD90D378(v10, &qword_1ECD82D00, &qword_1DDA18B10);
  sub_1DD940F10(v11, type metadata accessor for UserCredentials);

  v13 = *(v1 + 8);

  return v13();
}

uint64_t ExternalPartnerAuthenticator.models()()
{
  *(v1 + 56) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  *(v1 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD93EA50, 0, 0);
}

uint64_t sub_1DD93EA50()
{
  v1 = v0[8];
  sub_1DD929A28(v0[7] + 40, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_1DD92C8C4(v1);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1DD93EB70;
  v3 = v0[8];

  return sub_1DD97E8A0(v3);
}

uint64_t sub_1DD93EB70(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[8];
  if (v1)
  {
    sub_1DD90D378(v5, &qword_1ECD82D00, &qword_1DDA18B10);
    v6 = sub_1DD93ED4C;
  }

  else
  {
    v4[11] = a1;
    sub_1DD90D378(v5, &qword_1ECD82D00, &qword_1DDA18B10);
    v6 = sub_1DD93ECD8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD93ECD8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_1DD93ED4C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD93EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for Credentials(0);
  v4[3] = swift_task_alloc();
  v5 = sub_1DDA13680();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for UserCredentials(0);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD93EF48, 0, 0);
}

uint64_t sub_1DD93EF48()
{
  v33 = v0;
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  v0[12] = __swift_project_value_buffer(v1, qword_1EE16FA80);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14ED0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "refreshCredentialsIfCloseToExpiring()", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v0[7];

  sub_1DD92C8C4(v5);
  v6 = v0[8];
  v7 = v0[7];
  if ((*(v0[9] + 48))(v7, 1, v6) == 1)
  {
    sub_1DD90D378(v7, &qword_1ECD82D00, &qword_1DDA18B10);
    v8 = sub_1DDA147F0();
    v9 = sub_1DDA14ED0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DD8F8000, v8, v9, "User not logged in. No need to refresh credentials.", v10, 2u);
      MEMORY[0x1E12B8CE0](v10, -1, -1);
    }

    goto LABEL_9;
  }

  v13 = v0[11];
  sub_1DD941124(v7, v13, type metadata accessor for UserCredentials);
  if ((*(v13 + *(v6 + 36) + 8) & 1) == 0)
  {
    v15 = v0[5];
    v14 = v0[6];
    v16 = v0[4];
    sub_1DDA13620();
    sub_1DDA13630();
    v18 = v17;
    (*(v15 + 8))(v14, v16);
    if (v18 >= 0.0)
    {
      sub_1DD940BD4(v0[11], v0[10], type metadata accessor for UserCredentials);
      v21 = sub_1DDA147F0();
      v22 = sub_1DDA14ED0();
      v23 = os_log_type_enabled(v21, v22);
      v25 = v0[10];
      v24 = v0[11];
      if (v23)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v32 = v27;
        *v26 = 136315138;
        sub_1DD940F70(&qword_1ECD82FB8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v28 = sub_1DDA15400();
        v30 = v29;
        sub_1DD940F10(v25, type metadata accessor for UserCredentials);
        v31 = sub_1DD93FA54(v28, v30, &v32);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_1DD8F8000, v21, v22, "No need to refresh yet. Expiration date: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x1E12B8CE0](v27, -1, -1);
        MEMORY[0x1E12B8CE0](v26, -1, -1);
      }

      else
      {

        sub_1DD940F10(v25, type metadata accessor for UserCredentials);
      }

      sub_1DD940F10(v24, type metadata accessor for UserCredentials);
LABEL_9:

      v11 = v0[1];

      return v11();
    }
  }

  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_1DD93F51C;
  v20 = v0[3];

  return sub_1DD93658C(v20);
}

uint64_t sub_1DD93F51C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1DD941190;
  }

  else
  {
    sub_1DD940F10(*(v2 + 24), type metadata accessor for Credentials);
    v3 = sub_1DD94118C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t static ExternalPartnerAuthenticator.sharedAuthenticator(for:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1DDA13870();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  result = sub_1DD917948(v6);
  if (result)
  {
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    if (qword_1EE16F640 != -1)
    {
      swift_once();
    }

    return sub_1DD928DF4(&xmmword_1EE16FAE0, a2);
  }

  return result;
}

double sub_1DD93F76C()
{
  LOBYTE(v2[0]) = 1;
  sub_1DD913A48(0, 0x100000000uLL, &v3);
  sub_1DD94BC74(1, v2);
  qword_1EE16FB20 = type metadata accessor for OpenAIAuthenticationService(0);
  unk_1EE16FB28 = &off_1F58F1458;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(qword_1EE16FB08);
  sub_1DD979F04(v2, 0x69746E6568747561, 0xED0000726F746163, 0, boxed_opaque_existential_1);
  result = *&v3;
  xmmword_1EE16FAE0 = v3;
  unk_1EE16FAF0 = *v4;
  unk_1EE16FAFD = *&v4[13];
  return result;
}

uint64_t static ExternalPartnerAuthenticator.makeAuthenticator(modelBundle:useCaseID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1DDA13870();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  v13 = sub_1DD9C13D0(a2, a3, v12);
  v15 = v14;
  v17 = v16;
  (*(v9 + 16))(v11, a1, v8);
  v18 = sub_1DD917948(v11);
  if (v17)
  {
    if (v18)
    {
      v19 = v13;
      v20 = v15;
      v21 = 1;
LABEL_6:
      result = sub_1DD928DD4(v19, v20, v21);
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *a4 = 0u;
      return result;
    }

    LOBYTE(v26[0]) = 1;
    sub_1DD913A48(1, 0x100000000uLL, &v27);

    sub_1DD94BC74(1, v26);
    *(a4 + 64) = type metadata accessor for OpenAIAuthenticationService(0);
    *(a4 + 72) = &off_1F58F1458;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a4 + 40));
    sub_1DD979F04(v26, v13, v15, 1, boxed_opaque_existential_1);
    result = sub_1DD928DD4(v13, v15, 1);
    v24 = *v28;
    *a4 = v27;
    *(a4 + 16) = v24;
    *(a4 + 29) = *&v28[13];
  }

  else
  {
    if (v18)
    {
      v19 = v13;
      v20 = v15;
      v21 = 0;
      goto LABEL_6;
    }

    if (qword_1EE16F640 != -1)
    {
      swift_once();
    }

    sub_1DD928DF4(&xmmword_1EE16FAE0, a4);
    return sub_1DD928DD4(v13, v15, 0);
  }

  return result;
}

unint64_t sub_1DD93FA54(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DD93FB20(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1DD9410C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1DD93FB20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DD93FC2C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1DDA150E0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1DD93FC2C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DD93FC78(a1, a2);
  sub_1DD93FDA8(byte_1F58EBEA8);
  return v3;
}

void *sub_1DD93FC78(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DD93FE94(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1DDA150E0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1DDA14C00();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DD93FE94(v10, 0);
        result = sub_1DDA15060();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_1DD93FDA8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DD908F70(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1DD93FE94(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A40, &qword_1DDA16E58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1DD93FF08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
    v3 = sub_1DDA151C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DD96AC38(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1DD940030()
{
  result = qword_1ECD83060;
  if (!qword_1ECD83060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83060);
  }

  return result;
}

uint64_t sub_1DD940084(uint64_t a1)
{
  v4 = *(type metadata accessor for UserCredentials(0) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD9165BC;

  return sub_1DD939CE4(a1, v1 + 16, v1 + v5);
}

unint64_t sub_1DD940164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830A0, &unk_1DDA18D20);
    v3 = sub_1DDA151C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DD90ADB4(v4, v13, &qword_1ECD830A8, &qword_1DDA19780);
      result = sub_1DD96ADEC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1DD940DE4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1DD9402A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83090, &qword_1DDA1C120);
    v3 = sub_1DDA151C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DD96AC38(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DD9403B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1DDA151C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1DD96AC38(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1DD9404B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83080, &unk_1DDA1C150);
    v3 = sub_1DDA151C0();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1DD940DF4(v7, v8, v9);
      result = sub_1DD96AC38(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_1DD9405D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83098, &qword_1DDA18CD0);
    v3 = sub_1DDA151C0();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1DD940DFC(v7, v8, v9);
      result = sub_1DD96AC38(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

void *sub_1DD9406FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83088, &unk_1DDA18CC0);
  v3 = sub_1DDA151C0();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  v11 = sub_1DD96AE30(v4);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = v11;
  result = v6;
  v15 = (a1 + 136);
  while (1)
  {
    *(v3 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v3[6] + v13) = v4;
    v16 = (v3[7] + 48 * v13);
    *v16 = v5;
    v16[1] = result;
    v16[2] = v8;
    v16[3] = v7;
    v16[4] = v10;
    v16[5] = v9;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v4 = *(v15 - 48);
    v20 = *(v15 - 5);
    v25 = *(v15 - 4);
    v26 = v15 + 7;
    v21 = *(v15 - 3);
    v22 = *(v15 - 2);
    v10 = *(v15 - 1);
    v23 = *v15;

    v13 = sub_1DD96AE30(v4);
    result = v25;
    v15 = v26;
    v9 = v23;
    v5 = v20;
    v7 = v22;
    v8 = v21;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD940874(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83070, &unk_1DDA1C140);
    v3 = sub_1DDA151C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DD90ADB4(v4, &v13, &qword_1ECD83078, &unk_1DDA18CB0);
      v5 = v13;
      v6 = v14;
      result = sub_1DD96AC38(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DD940DE4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t objectdestroy_8Tm()
{
  v1 = (type metadata accessor for UserCredentials(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*v1 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v5 = v1[10];
  v6 = sub_1DDA13680();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DD940AF4(uint64_t a1)
{
  v4 = *(type metadata accessor for UserCredentials(0) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD93BB70(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1DD940BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD940C3C(uint64_t a1)
{
  v4 = *(type metadata accessor for UserCredentials(0) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD93DDE4(a1, v1 + 16, v1 + v5);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1DD940D38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DD940D80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *sub_1DD940DE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DD940DFC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 3)
  {
  }

  return v3;
}

uint64_t sub_1DD940E20(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD940E60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD93EDBC(a1, v4, v5, v1 + 32);
}

uint64_t sub_1DD940F10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD940F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_38Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DD941018(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD9165BC;

  return sub_1DD93EDBC(a1, v4, v5, v1 + 32);
}

uint64_t sub_1DD9410C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DD941124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ExternalPartnerModel.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  return sub_1DDA155B0();
}

uint64_t ExternalPartnerModel.ReleaseLabel.hashValue.getter()
{
  v1 = *v0;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  return sub_1DDA155B0();
}

uint64_t ExternalPartnerModel.ReasoningLevel.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExternalPartnerModel.ReasoningLevel.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ExternalPartnerModel.Metadata.reasoningLevels.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ExternalPartnerModel.description.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ExternalPartnerModel.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ExternalPartnerModel.displayName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ExternalPartnerModel.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ExternalPartnerModel.modelName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ExternalPartnerModel.modelName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ExternalPartnerModel.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 73);
  v4 = *(v1 + 74);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
  *(a1 + 17) = v3;
  *(a1 + 18) = v4;
  *(a1 + 24) = v5;
}

uint64_t ExternalPartnerModel.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = a1[3];

  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  *(v1 + 73) = v5;
  *(v1 + 74) = v6;
  *(v1 + 80) = v7;
  return result;
}

unint64_t sub_1DD941758()
{
  result = qword_1ECD830C0;
  if (!qword_1ECD830C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD830C0);
  }

  return result;
}

unint64_t sub_1DD9417B0()
{
  result = qword_1ECD830C8;
  if (!qword_1ECD830C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD830C8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DD941828(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1DD941870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_1DD941908(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1DD941950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD9419AC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DD941A08(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_1DD941A6C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_err] = 0;
  swift_unknownObjectWeakInit();
  lseek(a1, 0, 0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AC00]) initWithFileDescriptor:a1 closeOnDealloc:0];
  *&v1[OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_fileHandle] = v4;
  *&v1[OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_status] = 0;
  v1[OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_eof] = 0;
  v5 = sub_1DDA13570();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithData_, v5);

  return v6;
}

uint64_t sub_1DD941C0C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_status;
  if (*(v2 + OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_status) != 2)
  {
    return -1;
  }

  result = sub_1DDA14E70();
  if (v5 >> 60 == 15)
  {
    result = 0;
    *(v2 + OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_eof) = 1;
    *(v2 + v3) = 5;
    return result;
  }

  v6 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v5);
      v8 = result;
      v9 = v5;
LABEL_16:
      sub_1DDA135D0();
      sub_1DD90D440(v8, v9);
      return v7;
    }

    goto LABEL_14;
  }

  if (v6 != 2)
  {
    v14 = result;
    v15 = v5;
    sub_1DDA135D0();
    sub_1DD90D440(v14, v15);
    return 0;
  }

  v10 = v5;
  if (__OFSUB__(*(result + 24), *(result + 16)))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v11 = result;
  sub_1DDA135D0();
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  sub_1DD90D440(v11, v10);
  result = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
LABEL_14:
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v9 = v5;
      v8 = result;
      v7 = HIDWORD(result) - result;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1DD9420B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD83100, &unk_1DDA185C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD942144()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83168, &qword_1DDA19168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DDA18F80;
  *(inited + 40) = 0xD000000000000022;
  *(inited + 48) = 0x80000001DDA27AF0;
  *(inited + 56) = 0xD00000000000001CLL;
  *(inited + 64) = 0x80000001DDA279C0;
  *(inited + 72) = 0xD000000000000025;
  *(inited + 80) = 0x80000001DDA279E0;
  *(inited + 88) = 1;
  *(inited + 96) = 0xD000000000000021;
  *(inited + 104) = 0x80000001DDA27B20;
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x80000001DDA27A10;
  *(inited + 128) = 0xD00000000000001ALL;
  *(inited + 136) = 0x80000001DDA27A30;
  *(inited + 144) = 2;
  *(inited + 152) = 0xD000000000000022;
  *(inited + 160) = 0x80000001DDA27B50;
  *(inited + 168) = 0xD000000000000010;
  *(inited + 176) = 0x80000001DDA27A50;
  *(inited + 184) = 0xD000000000000019;
  *(inited + 192) = 0x80000001DDA27A70;
  *(inited + 200) = 3;
  *(inited + 208) = 0xD00000000000001DLL;
  *(inited + 216) = 0x80000001DDA27B80;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000001DDA27A90;
  *(inited + 240) = 0xD000000000000019;
  *(inited + 248) = 0x80000001DDA27AB0;
  *(inited + 32) = 0;
  v1 = sub_1DD9406FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83170, &qword_1DDA19170);
  result = swift_arrayDestroy();
  off_1ECD83110 = v1;
  return result;
}

uint64_t sub_1DD94231C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83168, &qword_1DDA19168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DDA18F80;
  *(inited + 40) = 0xD00000000000001ELL;
  *(inited + 48) = 0x80000001DDA27860;
  *(inited + 56) = 0xD00000000000001CLL;
  *(inited + 64) = 0x80000001DDA279C0;
  *(inited + 72) = 0xD000000000000025;
  *(inited + 80) = 0x80000001DDA279E0;
  *(inited + 88) = 1;
  *(inited + 96) = 0xD00000000000001DLL;
  *(inited + 104) = 0x80000001DDA278A0;
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x80000001DDA27A10;
  *(inited + 128) = 0xD00000000000001ALL;
  *(inited + 136) = 0x80000001DDA27A30;
  *(inited + 144) = 2;
  *(inited + 152) = 0xD00000000000001ELL;
  *(inited + 160) = 0x80000001DDA278E0;
  *(inited + 168) = 0xD000000000000010;
  *(inited + 176) = 0x80000001DDA27A50;
  *(inited + 184) = 0xD000000000000019;
  *(inited + 192) = 0x80000001DDA27A70;
  *(inited + 200) = 3;
  *(inited + 208) = 0xD000000000000019;
  *(inited + 216) = 0x80000001DDA278C0;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000001DDA27A90;
  *(inited + 240) = 0xD000000000000019;
  *(inited + 248) = 0x80000001DDA27AB0;
  *(inited + 32) = 0;
  v1 = sub_1DD9406FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83170, &qword_1DDA19170);
  result = swift_arrayDestroy();
  off_1ECD83118 = v1;
  return result;
}

uint64_t sub_1DD9424E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DD942504, 0, 0);
}

uint64_t sub_1DD942504()
{
  if (qword_1ECD827B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  v0[4] = v1;
  v2 = __swift_project_value_buffer(v1, qword_1ECDA2110);
  v0[5] = v2;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1DD942628;
  v5 = v0[2];
  v4 = v0[3];

  return sub_1DD977D78("FetchRateLimitingTokens", 23, 2, v2, v4, v5);
}

void sub_1DD942628(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1DD942770, 0, 0);
  }
}

uint64_t sub_1DD942770()
{
  v10 = v0;
  v1 = v0[7];

  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v2;
  sub_1DD947FF8(v1, sub_1DD947F98, 0, isUniquelyReferenced_nonNull_native, &v9);

  v0[9] = v9;

  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1DD94289C;
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];

  return sub_1DD9787D8("FetchRateLimitingTokenRefunds", 29, 2, v6, v7, v5);
}

void sub_1DD94289C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
  }

  else
  {
    *(v4 + 96) = a1;

    MEMORY[0x1EEE6DFA0](sub_1DD942A04, 0, 0);
  }
}

uint64_t sub_1DD942A04()
{
  v13 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v2;
  sub_1DD947FF8(v1, sub_1DD947F98, 0, isUniquelyReferenced_nonNull_native, &v12);
  swift_bridgeObjectRelease_n();

  v0[13] = v12;
  v5 = *(v3 + 16);
  v6 = (v3 + 32);
  while (v5)
  {
    v7 = *v6++;
    --v5;
    if (!v7)
    {
      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_1DD942B84;
      v9 = v0[5];

      return sub_1DD9767D4("FetchDowngradeToken", 19, 2, v9);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DD942B84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1DD942D54;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_1DD942CAC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD942CAC()
{
  v8 = v0;
  v1 = v0[16];
  v2 = v0[13];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v2;
  sub_1DD947FF8(v1, sub_1DD947F98, 0, isUniquelyReferenced_nonNull_native, &v7);

  v4 = v7;
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1DD942D54()
{
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  __swift_project_value_buffer(v0[4], qword_1ECDA20E0);
  v2 = v1;
  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14EE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Failed to fetch downgrade signal %@.", v7, 0xCu);
    sub_1DD90D378(v8, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[13];
  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1DD942EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD942F1C, 0, 0);
}

uint64_t sub_1DD942F1C()
{
  v1 = *(v0 + 32);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 32) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v25 = *(v0 + 32);

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v27 = v0;
LABEL_4:
  v26 = v11;
  *(v0 + 40) = v11;
  while (v7)
  {
LABEL_11:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(v25 + 56) + 24 * (v13 | (v10 << 6)));
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    if (*v14 < 0)
    {

      sub_1DD940DF4(v15, v16, v17);

      result = sub_1DD94A02C(v15, v16, v17);
    }

    else
    {

      sub_1DD940DF4(v15, v16, v17);

      result = sub_1DD94A02C(v15, v16, v17);
      if (BYTE1(v15) >> 6 != 2)
      {
        if (BYTE1(v15) >> 6)
        {
          v18 = BYTE1(v15) & 0x3F;
        }

        else
        {
          v18 = BYTE1(v15);
        }

        v19 = v26;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DD909064(0, *(v26 + 16) + 1, 1, v26);
          v19 = result;
        }

        v21 = *(v19 + 16);
        v20 = *(v19 + 24);
        v22 = v19;
        if (v21 >= v20 >> 1)
        {
          result = sub_1DD909064((v20 > 1), v21 + 1, 1, v19);
          v22 = result;
        }

        v11 = v22;
        *(v22 + 16) = v21 + 1;
        v23 = v22 + 2 * v21;
        *(v23 + 32) = v15;
        *(v23 + 33) = v18;
        v0 = v27;
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  v24 = swift_task_alloc();
  *(v27 + 48) = v24;
  *v24 = v27;
  v24[1] = sub_1DD943190;

  return sub_1DD9432D4(v26);
}

uint64_t sub_1DD943190(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9432B0, 0, 0);
}

uint64_t sub_1DD9432D4(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_1DDA13250();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD943394, 0, 0);
}

uint64_t sub_1DD943394()
{
  v1 = v0[17];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D8, &qword_1DDA16DF8);
  v3 = swift_task_alloc();
  v0[22] = v3;
  *(v3 + 16) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83150, &unk_1DDA19120);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_1DD9434B0;

  return MEMORY[0x1EEE6DBF8](v0 + 16, v2, v4, 0, 0, &unk_1DDA19118, v3, v2);
}

uint64_t sub_1DD9434B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD9435C8, 0, 0);
}

void sub_1DD9435C8()
{
  v91 = v0;
  v1 = v0[16];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v78 = (v0[20] + 8);
    v4 = MEMORY[0x1E69E7CC8];
    v5 = (v1 + 40);
    v79 = *(v1 + 16);
    v80 = v0[16];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        return;
      }

      v10 = *(v5 - 1);
      if ((v10 & 0xFFFFFFFFFFFF3CFCLL) != 0x3FFFFF3CFCLL)
      {
        v11 = *v5;
        v12 = v5[1];
        v13 = v5[2];
        v14 = v5[3];
        v15 = v5[4];
        v87 = v4;
        v88 = v14;
        v89 = v13;
        v86 = *(v5 - 1);
        v16 = *v5;
        if (v10 < 0)
        {
          sub_1DD94A21C(v10, v16, v12, v13, v14, v15);
          v44 = qword_1ECD827A8;

          if (v44 != -1)
          {
            swift_once();
          }

          v45 = sub_1DDA14810();
          __swift_project_value_buffer(v45, qword_1ECDA20E0);

          v46 = sub_1DDA147F0();
          v47 = sub_1DDA14EE0();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v85 = v15;
            v49 = v14;
            v50 = swift_slowAlloc();
            v90 = v50;
            *v48 = 136315394;
            *(v48 + 4) = sub_1DD93FA54(v11, v12, &v90);
            *(v48 + 12) = 2080;
            v51 = v49;
            v15 = v85;
            *(v48 + 14) = sub_1DD93FA54(v89, v51, &v90);
            _os_log_impl(&dword_1DD8F8000, v46, v47, "Failed to fetch refund token: %s, UUID: %s", v48, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12B8CE0](v50, -1, -1);
            MEMORY[0x1E12B8CE0](v48, -1, -1);
          }

          v4 = v87;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = v87;
          v53 = sub_1DD96AC38(v11, v12);
          v55 = *(v87 + 16);
          v56 = (v54 & 1) == 0;
          v38 = __OFADD__(v55, v56);
          v57 = v55 + v56;
          if (v38)
          {
            goto LABEL_46;
          }

          v58 = v54;
          if (*(v87 + 24) >= v57)
          {
            v61 = v88;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v76 = v53;
              sub_1DD9CA574();
              v53 = v76;
              v4 = v90;
            }
          }

          else
          {
            sub_1DD9C9248(v57, isUniquelyReferenced_nonNull_native);
            v59 = v90;
            v53 = sub_1DD96AC38(v11, v12);
            if ((v58 & 1) != (v60 & 1))
            {
LABEL_41:

              sub_1DDA15500();
              return;
            }

            v4 = v59;
            v61 = v88;
          }

          v66 = v86 & 0x800000000000FFFFLL;
          if (v58)
          {
            v67 = (v4[7] + 24 * v53);
            v68 = *v67;
            v69 = v67[1];
            v70 = v67[2];
            *v67 = v66;
            v67[1] = v89;
            v67[2] = v61;
            sub_1DD94A02C(v68, v69, v70);
            sub_1DD94A16C(v86, v11, v12, v89, v61, v15);
          }

          else
          {
            v4[(v53 >> 6) + 8] |= 1 << v53;
            v71 = (v4[6] + 16 * v53);
            *v71 = v11;
            v71[1] = v12;
            v72 = (v4[7] + 24 * v53);
            *v72 = v66;
            v72[1] = v89;
            v72[2] = v61;

            sub_1DD94A16C(v86, v11, v12, v89, v61, v15);
            v73 = v4[2];
            v38 = __OFADD__(v73, 1);
            v74 = v73 + 1;
            if (v38)
            {
              goto LABEL_48;
            }

            v4[2] = v74;
          }

          v2 = v79;
          v1 = v80;
        }

        else
        {
          sub_1DD94A0E4(v10, v16, v12, v13, v14, v15);
          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v17 = sub_1DDA14810();
          __swift_project_value_buffer(v17, qword_1ECDA20E0);

          v18 = sub_1DDA147F0();
          v19 = sub_1DDA14EC0();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v90 = v21;
            *v20 = 136315138;
            *(v20 + 4) = sub_1DD93FA54(v11, v12, &v90);
            _os_log_impl(&dword_1DD8F8000, v18, v19, "Fetched request for refund token: %s from attester.", v20, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v21);
            MEMORY[0x1E12B8CE0](v21, -1, -1);
            MEMORY[0x1E12B8CE0](v20, -1, -1);
          }

          v22 = v0[21];
          v83 = v0[19];
          v23 = v15;

          v84 = v15;
          sub_1DD9C73C0(v15, v11, v12);
          v82 = v12;
          v0[2] = sub_1DDA13580();
          v0[3] = v24;
          v0[4] = 43;
          v0[5] = 0xE100000000000000;
          v0[6] = 45;
          v0[7] = 0xE100000000000000;
          sub_1DD9313D4();
          v25 = sub_1DDA14F80();
          v27 = v26;

          v0[8] = v25;
          v0[9] = v27;
          v0[10] = 47;
          v0[11] = 0xE100000000000000;
          v0[12] = 95;
          v0[13] = 0xE100000000000000;
          v28 = sub_1DDA14F80();
          v30 = v29;

          v0[14] = v28;
          v0[15] = v30;
          sub_1DDA13240();
          v31 = sub_1DDA14F70();
          v81 = v32;
          (*v78)(v22, v83);

          v4 = v87;
          v33 = swift_isUniquelyReferenced_nonNull_native();
          v90 = v87;
          v34 = sub_1DD96AC38(v11, v82);
          v36 = *(v87 + 16);
          v37 = (v35 & 1) == 0;
          v38 = __OFADD__(v36, v37);
          v39 = v36 + v37;
          if (v38)
          {
            goto LABEL_45;
          }

          v40 = v35;
          if (*(v87 + 24) >= v39)
          {
            v43 = v89;
            if ((v33 & 1) == 0)
            {
              v75 = v34;
              sub_1DD9CA574();
              v34 = v75;
              v4 = v90;
            }
          }

          else
          {
            sub_1DD9C9248(v39, v33);
            v41 = v90;
            v34 = sub_1DD96AC38(v11, v82);
            v43 = v89;
            if ((v40 & 1) != (v42 & 1))
            {
              goto LABEL_41;
            }

            v4 = v41;
          }

          if (v40)
          {
            v6 = (v4[7] + 24 * v34);
            v7 = *v6;
            v8 = v6[1];
            v9 = v6[2];
            *v6 = v86;
            v6[1] = v31;
            v6[2] = v81;
            sub_1DD94A02C(v7, v8, v9);
          }

          else
          {
            v4[(v34 >> 6) + 8] |= 1 << v34;
            v62 = (v4[6] + 16 * v34);
            *v62 = v11;
            v62[1] = v82;
            v63 = (v4[7] + 24 * v34);
            *v63 = v86;
            v63[1] = v31;
            v63[2] = v81;
            v64 = v4[2];
            v38 = __OFADD__(v64, 1);
            v65 = v64 + 1;
            if (v38)
            {
              goto LABEL_47;
            }

            v4[2] = v65;
          }

          sub_1DD94A16C(v86, v11, v82, v43, v88, v84);
          v2 = v79;
          v1 = v80;
        }
      }

      ++v3;
      v5 += 6;
      if (v2 == v3)
      {
        goto LABEL_38;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_38:

  v77 = v0[1];

  v77(v4);
}

uint64_t sub_1DD943E14(uint64_t a1)
{
  v1[43] = a1;
  v2 = sub_1DDA13250();
  v1[44] = v2;
  v1[45] = *(v2 - 8);
  v1[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD943ED4, 0, 0);
}

uint64_t sub_1DD943ED4()
{
  v1 = objc_opt_self();
  v2 = sub_1DDA14B00();
  v0[47] = v2;
  v3 = sub_1DDA14B00();
  v0[48] = v3;
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1DD944058;
  v4 = swift_continuation_init();
  v0[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83138, &qword_1DDA190D0);
  v0[19] = MEMORY[0x1E69E9820];
  v0[20] = 1107296256;
  v0[21] = sub_1DD9445FC;
  v0[22] = &block_descriptor_16;
  v0[23] = v4;
  [v1 fetchAuxiliaryAuthenticationDataFromCacheForType:1 label:v2 cacheKey:v3 completionHandler:v0 + 19];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DD944058()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_1DD944574;
  }

  else
  {
    v2 = sub_1DD944168;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD944168()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);

  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    if (v2 == v2 >> 32)
    {
LABEL_13:
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v25 = sub_1DDA14810();
      __swift_project_value_buffer(v25, qword_1ECDA20E0);
      v26 = sub_1DDA147F0();
      v27 = sub_1DDA14EE0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1DD8F8000, v26, v27, "Returned downgrade signal from networking layer is unexpectedly empty", v28, 2u);
        MEMORY[0x1E12B8CE0](v28, -1, -1);
      }

      v23 = sub_1DD9404B4(MEMORY[0x1E69E7CC0]);
      v24 = v2;
      goto LABEL_18;
    }
  }

  else if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v31 = *(v0 + 352);
  *(v0 + 232) = sub_1DDA13580();
  *(v0 + 240) = v7;
  *(v0 + 248) = 43;
  *(v0 + 256) = 0xE100000000000000;
  *(v0 + 264) = 45;
  *(v0 + 272) = 0xE100000000000000;
  sub_1DD9313D4();
  v8 = sub_1DDA14F80();
  v10 = v9;

  *(v0 + 280) = v8;
  *(v0 + 288) = v10;
  *(v0 + 296) = 47;
  *(v0 + 304) = 0xE100000000000000;
  *(v0 + 312) = 95;
  *(v0 + 320) = 0xE100000000000000;
  v11 = sub_1DDA14F80();
  v13 = v12;

  *(v0 + 328) = v11;
  *(v0 + 336) = v13;
  sub_1DDA13240();
  v14 = sub_1DDA14F70();
  v16 = v15;
  (*(v6 + 8))(v5, v31);

  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v17 = sub_1DDA14810();
  __swift_project_value_buffer(v17, qword_1ECDA20E0);
  v18 = sub_1DDA147F0();
  v19 = sub_1DDA14EC0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DD8F8000, v18, v19, "Successfully retrieved the downgrade signal", v20, 2u);
    MEMORY[0x1E12B8CE0](v20, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83140, &qword_1DDA190E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DDA16320;
  *(inited + 32) = 0xD000000000000010;
  v22 = inited + 32;
  *(inited + 40) = 0x80000001DDA27960;
  *(inited + 48) = 0x8000;
  *(inited + 56) = v14;
  *(inited + 64) = v16;
  v23 = sub_1DD9404B4(inited);
  swift_setDeallocating();
  sub_1DD90D378(v22, &qword_1ECD83148, &qword_1DDA190F0);
  v24 = v2;
LABEL_18:
  sub_1DD909D28(v24, v3);
  **(v0 + 344) = v23;

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1DD944574(uint64_t a1)
{
  v2 = v1[48];
  v3 = v1[47];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1DD9445FC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_1DDA13590();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1DD9446E4(uint64_t a1, char a2)
{
  *(v2 + 208) = a2;
  *(v2 + 160) = a1;
  v3 = sub_1DDA14850();
  *(v2 + 168) = v3;
  *(v2 + 176) = *(v3 - 8);
  *(v2 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9447A8, 0, 0);
}

uint64_t sub_1DD9447A8()
{
  if (!*(v0 + 208))
  {
    v1 = *(v0 + 160);
    v2 = sub_1DDA14B00();
    [v1 setAuxiliaryAuthenticationCacheKey_];
  }

  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  sub_1DD949FC8();
  (*(v4 + 104))(v3, *MEMORY[0x1E69E7F88], v6);
  v7 = sub_1DDA14F10();
  *(v0 + 192) = v7;
  (*(v4 + 8))(v3, v6);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1DD944978;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83138, &qword_1DDA190D0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DD9445FC;
  *(v0 + 104) = &block_descriptor_59;
  *(v0 + 112) = v8;
  [v5 fetchTokenWithQueue:v7 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DD944978()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1DD944B08;
  }

  else
  {
    v2 = sub_1DD944A88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD944A88()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1DD944B08(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DD944B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[36] = a3;
  v4[37] = a4;
  v4[34] = a1;
  v4[35] = a2;
  v5 = sub_1DDA13250();
  v4[38] = v5;
  v4[39] = *(v5 - 8);
  v4[40] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83158, &qword_1DDA19130);
  v4[41] = v6;
  v4[42] = *(v6 - 8);
  v4[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD944D08, 0, 0);
}

uint64_t sub_1DD944D08()
{
  v1 = *(v0 + 288);
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = **(v0 + 280);
    v3 = (v1 + 32);
    v4 = sub_1DDA14D60();
    v5 = *(v4 - 8);
    v24 = *(v5 + 56);
    v23 = (v5 + 48);
    v22 = (v5 + 8);
    do
    {
      v8 = *(v0 + 352);
      v7 = *(v0 + 360);
      v9 = *(v0 + 296);
      v10 = *v3++;
      v24(v7, 1, 1, v4);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      *(v11 + 32) = v10;
      *(v11 + 40) = v9;
      sub_1DD94A2F0(v7, v8);
      LODWORD(v8) = (*v23)(v8, 1, v4);

      v13 = *(v0 + 352);
      if (v8 == 1)
      {
        sub_1DD90D378(*(v0 + 352), &qword_1ECD82D30, &qword_1DDA188D0);
        if (*v12)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1DDA14D50();
        (*v22)(v13, v4);
        if (*v12)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_1DDA14CD0();
          v15 = v16;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_9:
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_1DDA19188;
      *(v17 + 24) = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D8, &qword_1DDA16DF8);
      v18 = v15 | v14;
      if (v15 | v14)
      {
        v18 = v0 + 64;
        *(v0 + 64) = 0;
        *(v0 + 72) = 0;
        *(v0 + 80) = v14;
        *(v0 + 88) = v15;
      }

      v6 = *(v0 + 360);
      *(v0 + 96) = 1;
      *(v0 + 104) = v18;
      *(v0 + 112) = v25;
      swift_task_create();

      sub_1DD90D378(v6, &qword_1ECD82D30, &qword_1DDA188D0);
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D8, &qword_1DDA16DF8);
  sub_1DDA14D00();
  *(v0 + 376) = MEMORY[0x1E69E7CC8];
  v19 = swift_task_alloc();
  *(v0 + 368) = v19;
  *v19 = v0;
  v19[1] = sub_1DD945070;
  v20 = *(v0 + 328);

  return MEMORY[0x1EEE6D8A8](v0 + 16, 0, 0, v20);
}

uint64_t sub_1DD945070()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD94516C, 0, 0);
}

uint64_t sub_1DD94516C()
{
  v72 = v0;
  v1 = v0[2];
  if ((v1 & 0xFFFFFFFFFFFF3CFCLL) != 0x3FFFFF3CF8)
  {
    if ((v1 & 0xFFFFFFFFFFFF3CFCLL) == 0x3FFFFF3CFCLL)
    {
      goto LABEL_9;
    }

    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[5];
    v70 = v0[6];
    v69 = v0[7];
    if ((v1 & 0x8000000000000000) == 0)
    {
      v5 = v0[5];
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v6 = v2;
      v7 = sub_1DDA14810();
      __swift_project_value_buffer(v7, qword_1ECDA20E0);

      v8 = sub_1DDA147F0();
      v9 = sub_1DDA14EC0();

      v68 = v2;
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v71 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_1DD93FA54(v6, v3, &v71);
        _os_log_impl(&dword_1DD8F8000, v8, v9, "Fetched rate limiting token: %s from attester.", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x1E12B8CE0](v11, -1, -1);
        MEMORY[0x1E12B8CE0](v10, -1, -1);
      }

      v13 = v0[39];
      v12 = v0[40];
      v65 = v0[38];
      v66 = v0[47];
      v67 = v5;
      v0[15] = sub_1DDA13580();
      v0[16] = v14;
      v0[17] = 43;
      v0[18] = 0xE100000000000000;
      v0[19] = 45;
      v0[20] = 0xE100000000000000;
      sub_1DD9313D4();
      v15 = sub_1DDA14F80();
      v17 = v16;

      v0[21] = v15;
      v0[22] = v17;
      v0[23] = 47;
      v0[24] = 0xE100000000000000;
      v0[25] = 95;
      v0[26] = 0xE100000000000000;
      v18 = sub_1DDA14F80();
      v20 = v19;

      v0[27] = v18;
      v0[28] = v20;
      sub_1DDA13240();
      v21 = sub_1DDA14F70();
      v23 = v22;
      (*(v13 + 8))(v12, v65);

      v0[31] = 0;
      v0[32] = 0xE000000000000000;
      sub_1DDA15070();

      v0[29] = 0xD000000000000013;
      v0[30] = 0x80000001DDA27AD0;
      MEMORY[0x1E12B7AB0](v21, v23);

      v24 = v0[29];
      v25 = v0[30];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v66;
      sub_1DD9CB9DC(v1, v24, v25, v68, v3, isUniquelyReferenced_nonNull_native);
      sub_1DD94B500(v1, v68, v3, v67, v70, v69);
      v0[47] = v71;
      goto LABEL_9;
    }

    v36 = qword_1ECD827A8;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = sub_1DDA14810();
    __swift_project_value_buffer(v37, qword_1ECDA20E0);

    v38 = sub_1DDA147F0();
    v39 = sub_1DDA14EE0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v4;
      v42 = v2;
      v43 = swift_slowAlloc();
      v71 = v43;
      *v40 = 136315394;
      *(v40 + 4) = sub_1DD93FA54(v42, v3, &v71);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_1DD93FA54(v41, v70, &v71);
      _os_log_impl(&dword_1DD8F8000, v38, v39, "Failed to fetch rate limiting token: %s, token fetch request UUID: %s", v40, 0x16u);
      swift_arrayDestroy();
      v44 = v43;
      v2 = v42;
      v4 = v41;
      MEMORY[0x1E12B8CE0](v44, -1, -1);
      MEMORY[0x1E12B8CE0](v40, -1, -1);
    }

    v45 = v0[47];
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v0[33] = v45;
    v47 = sub_1DD96AC38(v2, v3);
    v49 = *(v45 + 16);
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
      __break(1u);
    }

    else
    {
      v39 = v48;
      if (*(v0[47] + 24) < v52)
      {
        sub_1DD9C9248(v52, v46);
        v47 = sub_1DD96AC38(v2, v3);
        if ((v39 & 1) != (v53 & 1))
        {

          return sub_1DDA15500();
        }

        goto LABEL_26;
      }

      if (v46)
      {
LABEL_26:
        v54 = v1 & 0x800000000000FFFFLL;
        v55 = v0[33];
        if (v39)
        {
          v56 = (v55[7] + 24 * v47);
          v57 = *v56;
          v58 = v56[1];
          v59 = v56[2];
          *v56 = v54;
          v56[1] = v4;
          v56[2] = v70;
          sub_1DD94A02C(v57, v58, v59);
          sub_1DD94B500(v1, v2, v3, v4, v70, v69);
          v0[47] = v55;
        }

        else
        {
          v55[(v47 >> 6) + 8] |= 1 << v47;
          v60 = (v55[6] + 16 * v47);
          *v60 = v2;
          v60[1] = v3;
          v61 = (v55[7] + 24 * v47);
          *v61 = v54;
          v61[1] = v4;
          v61[2] = v70;

          sub_1DD94B500(v1, v2, v3, v4, v70, v69);
          v62 = v55[2];
          v51 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v51)
          {
            __break(1u);
            return MEMORY[0x1EEE6D8A8](v29, v30, v31, v28);
          }

          v55[2] = v63;
          v0[47] = v55;
        }

LABEL_9:
        v27 = swift_task_alloc();
        v0[46] = v27;
        *v27 = v0;
        v27[1] = sub_1DD945070;
        v28 = v0[41];
        v29 = v0 + 2;
        v30 = 0;
        v31 = 0;

        return MEMORY[0x1EEE6D8A8](v29, v30, v31, v28);
      }
    }

    v64 = v47;
    sub_1DD9CA574();
    v47 = v64;
    goto LABEL_26;
  }

  v32 = v0[47];
  v33 = v0[34];
  (*(v0[42] + 8))(v0[43], v0[41]);
  *v33 = v32;

  v34 = v0[1];

  return v34();
}

uint64_t sub_1DD945914(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 232) = a4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DD945938, 0, 0);
}

void sub_1DD945938()
{
  if (qword_1ECD82788 != -1)
  {
    swift_once();
  }

  v1 = off_1ECD83110;
  if (!*(off_1ECD83110 + 2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = sub_1DD96AE30(*(v0 + 232));
  if ((v3 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = (v1[7] + 48 * v2);
  *(v0 + 112) = *v4;
  *(v0 + 120) = v4[1];
  v6 = v4[2];
  v5 = v4[3];
  *(v0 + 128) = v5;
  *(v0 + 136) = v4[4];
  *(v0 + 144) = v4[5];

  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_1DD945A78;
  v8 = *(v0 + 232);

  sub_1DD94A418(v6, v5, v8);
}

uint64_t sub_1DD945A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[20] = a1;
  v5[21] = a2;
  v5[22] = a3;

  if (v3)
  {
    v6 = sub_1DD945C60;
  }

  else
  {

    v6 = sub_1DD945BAC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD945BAC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 232);
  v7 = *(v0 + 96);
  v8 = v2;
  sub_1DD909CD4(v3, v1);
  sub_1DD909D28(v3, v1);

  *v7 = v6;
  v7[1] = v5;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v1;
  v7[5] = v2;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DD945C60()
{
  v1 = *(v0 + 176);
  v10 = *(v0 + 160);
  *(v0 + 184) = sub_1DD94B2A8();
  v2 = swift_allocError();
  *(v0 + 192) = v2;
  *v3 = v10;
  *(v3 + 16) = v1;
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_1DD945D38;
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 232);

  return sub_1DD94A418(v7, v6, v8);
}

uint64_t sub_1DD945D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[26] = a1;
  v5[27] = a2;
  v5[28] = a3;

  if (v3)
  {
    v6 = sub_1DD945F44;
  }

  else
  {
    v6 = sub_1DD945E78;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD945E78()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);

  v3 = v1;
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = *(v0 + 232);
  v10 = *(v0 + 96);
  sub_1DD909CD4(v6, v4);
  sub_1DD909D28(v6, v4);

  *v10 = v9 | 0x100;
  v10[1] = v8;
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = v4;
  v10[5] = v5;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DD945F44()
{
  v54 = v0;
  v1 = *(v0 + 224);
  v51 = *(v0 + 208);
  v2 = swift_allocError();
  *v3 = v51;
  *(v3 + 16) = v1;
  v4 = v2;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1ECDA20E0);

  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14EE0();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v53[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1DD93FA54(v9, v8, v53);
    _os_log_impl(&dword_1DD8F8000, v6, v7, "Unable to fetch rate limiting token %s from attester. High chance of inference failure.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
    MEMORY[0x1E12B8CE0](v10, -1, -1);
  }

  v12 = *(v0 + 192);
  swift_willThrow();

  *(v0 + 88) = v12;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    v16 = *(v0 + 32);

    sub_1DD94B2FC(v15, v14, v16);
    v17 = sub_1DDA147F0();
    v18 = sub_1DDA14EE0();

    sub_1DD94B340(v15, v14, v16);
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 192);
    if (v19)
    {
      v49 = *(v0 + 112);
      v50 = *(v0 + 120);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53[0] = v52;
      *v21 = 136315394;
      *(v21 + 4) = sub_1DD93FA54(v49, v50, v53);
      *(v21 + 12) = 2112;
      swift_allocError();
      *v23 = v15;
      v23[1] = v14;
      v23[2] = v16;
      sub_1DD94B2FC(v15, v14, v16);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v24;
      *v22 = v24;

      _os_log_impl(&dword_1DD8F8000, v17, v18, "Fetching rate limiting token %s threw error %@", v21, 0x16u);
      sub_1DD90D378(v22, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1E12B8CE0](v52, -1, -1);
      MEMORY[0x1E12B8CE0](v21, -1, -1);
    }

    else
    {
    }

    v39 = *(v0 + 104);
    swift_beginAccess();
    *(v39 + 16) = 1;
    v40 = *(v0 + 120);
    if (v15 >= 2)
    {
      v44 = *(v0 + 112);
      v45 = *(v0 + 232);
      v46 = *(v0 + 96);

      sub_1DD94B340(v15, v14, v16);
      *v46 = v45 | 0x8000000000000200;
      v46[1] = v44;
      v46[2] = v40;
      v46[3] = v14;
      v46[4] = v16;
      v46[5] = 0;
    }

    else
    {
      v41 = *(v0 + 96);

      *v41 = 0x3FFFFF3CFCLL;
      *(v41 + 8) = 0u;
      *(v41 + 24) = 0u;
      *(v41 + 40) = 0;
    }
  }

  else
  {
    v25 = *(v0 + 192);

    v26 = v25;
    v27 = sub_1DDA147F0();
    v28 = sub_1DDA14EE0();

    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 192);
    v31 = *(v0 + 120);
    if (v29)
    {
      v32 = *(v0 + 112);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v53[0] = v35;
      *v33 = 136315394;
      v36 = sub_1DD93FA54(v32, v31, v53);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2112;
      v37 = v30;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v38;
      *v34 = v38;
      _os_log_impl(&dword_1DD8F8000, v27, v28, "Fetching rate limiting token %s threw unknown error %@", v33, 0x16u);
      sub_1DD90D378(v34, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1E12B8CE0](v35, -1, -1);
      MEMORY[0x1E12B8CE0](v33, -1, -1);
    }

    else
    {
    }

    v42 = *(v0 + 96);
    v43 = *(v0 + 104);
    swift_beginAccess();
    *(v43 + 16) = 1;
    *v42 = 0x3FFFFF3CFCLL;
    *(v42 + 8) = 0u;
    *(v42 + 24) = 0u;
    *(v42 + 40) = 0;
  }

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1DD946554(uint64_t a1, char a2)
{
  *(v2 + 208) = a2;
  *(v2 + 160) = a1;
  v3 = sub_1DDA14850();
  *(v2 + 168) = v3;
  *(v2 + 176) = *(v3 - 8);
  *(v2 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD946618, 0, 0);
}

uint64_t sub_1DD946618()
{
  if (!*(v0 + 208))
  {
    v1 = *(v0 + 160);
    v2 = sub_1DDA14B00();
    [v1 setAuxiliaryAuthenticationCacheKey_];
  }

  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  sub_1DD949FC8();
  (*(v4 + 104))(v3, *MEMORY[0x1E69E7F88], v6);
  v7 = sub_1DDA14F10();
  *(v0 + 192) = v7;
  (*(v4 + 8))(v3, v6);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1DD9467E8;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83138, &qword_1DDA190D0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DD9445FC;
  *(v0 + 104) = &block_descriptor_51;
  *(v0 + 112) = v8;
  [v5 fetchTokenWithQueue:v7 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DD9467E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1DD94BC60;
  }

  else
  {
    v2 = sub_1DD94BC48;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD9468F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83158, &qword_1DDA19130);
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD946A0C, 0, 0);
}

uint64_t sub_1DD946A0C()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 33);
    while (1)
    {
      v5 = *v3;
      if (v5 < 2)
      {
        break;
      }

LABEL_4:
      v3 += 2;
      if (!--v2)
      {
        goto LABEL_13;
      }
    }

    v6 = *(v0 + 144);
    v7 = *(v0 + 152);
    v23 = *(v3 - 1);
    v8 = sub_1DDA14D60();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v7, 1, 1, v8);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    v11 = (v10 + 16);
    *(v10 + 24) = 0;
    *(v10 + 32) = v23;
    *(v10 + 33) = v5;
    sub_1DD94A2F0(v7, v6);
    v12 = (*(v9 + 48))(v6, 1, v8);
    v13 = *(v0 + 144);
    if (v12 == 1)
    {
      sub_1DD90D378(*(v0 + 144), &qword_1ECD82D30, &qword_1DDA188D0);
      if (!*v11)
      {
LABEL_8:
        v14 = 0;
        v15 = 0;
LABEL_11:
        v17 = **(v0 + 128);
        v18 = swift_allocObject();
        *(v18 + 16) = &unk_1DDA19140;
        *(v18 + 24) = v10;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D8, &qword_1DDA16DF8);
        v19 = v15 | v14;
        if (v15 | v14)
        {
          v19 = v0 + 64;
          *(v0 + 64) = 0;
          *(v0 + 72) = 0;
          *(v0 + 80) = v14;
          *(v0 + 88) = v15;
        }

        v4 = *(v0 + 152);
        *(v0 + 96) = 1;
        *(v0 + 104) = v19;
        *(v0 + 112) = v17;
        swift_task_create();

        sub_1DD90D378(v4, &qword_1ECD82D30, &qword_1DDA188D0);
        goto LABEL_4;
      }
    }

    else
    {
      sub_1DDA14D50();
      (*(v9 + 8))(v13, v8);
      if (!*v11)
      {
        goto LABEL_8;
      }
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1DDA14CD0();
    v15 = v16;
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D8, &qword_1DDA16DF8);
  sub_1DDA14D00();
  *(v0 + 184) = MEMORY[0x1E69E7CC0];
  v20 = swift_task_alloc();
  *(v0 + 192) = v20;
  *v20 = v0;
  v20[1] = sub_1DD946D70;
  v21 = *(v0 + 160);

  return MEMORY[0x1EEE6D8A8](v0 + 16, 0, 0, v21);
}

uint64_t sub_1DD946D70()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD946E6C, 0, 0);
}

uint64_t sub_1DD946E6C()
{
  v1 = *(v0 + 184);
  if ((*(v0 + 16) & 0xFFFFFFFFFFFF3CFCLL) == 0x3FFFFF3CF8)
  {
    v2 = *(v0 + 120);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    *v2 = v1;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v16 = *(v0 + 16);
    v14 = *(v0 + 48);
    v15 = *(v0 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 184);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1DD909160(0, v6[2] + 1, 1, v6);
    }

    v8 = v6[2];
    v7 = v6[3];
    v9 = v16;
    if (v8 >= v7 >> 1)
    {
      v13 = sub_1DD909160((v7 > 1), v8 + 1, 1, v6);
      v9 = v16;
      v6 = v13;
    }

    v6[2] = v8 + 1;
    v10 = &v6[6 * v8];
    v10[2] = v9;
    v10[3] = v15;
    v10[4] = v14;
    *(v0 + 184) = v6;
    v11 = swift_task_alloc();
    *(v0 + 192) = v11;
    *v11 = v0;
    v11[1] = sub_1DD946D70;
    v12 = *(v0 + 160);

    return MEMORY[0x1EEE6D8A8](v0 + 16, 0, 0, v12);
  }
}

uint64_t sub_1DD94704C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(v4 + 112) = a4;
  *(v4 + 48) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD947070, 0, 0);
}

void sub_1DD947070()
{
  if (qword_1ECD82790 != -1)
  {
    swift_once();
  }

  v1 = off_1ECD83118;
  if (!*(off_1ECD83118 + 2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = sub_1DD96AE30(*(v0 + 112));
  if ((v3 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v4 = *(v0 + 112);
  v5 = (v1[7] + 48 * v2);
  *(v0 + 56) = *v5;
  *(v0 + 64) = v5[1];
  v6 = v4 >= 0x100;
  v7 = 5;
  if (!v6)
  {
    v7 = 3;
  }

  v8 = v5[v7];
  if (v6)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  *(v0 + 72) = v8;
  v10 = v5[v9];

  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1DD9471B8;

  sub_1DD94AFE8(v10, v8);
}

uint64_t sub_1DD9471B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;

  if (v3)
  {
    v6 = sub_1DD9473B0;
  }

  else
  {
    v6 = sub_1DD9472F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD9472F8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 112);
  v7 = *(v0 + 48);
  v8 = v2;
  sub_1DD909CD4(v3, v1);
  sub_1DD909D28(v3, v1);

  *v7 = v6 | 0x4000;
  v7[1] = v5;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v1;
  v7[5] = v2;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DD9473B0()
{
  v47 = v0;
  v1 = *(v0 + 104);
  v44 = *(v0 + 88);
  sub_1DD94B2A8();
  v2 = swift_allocError();
  *v3 = v44;
  *(v3 + 16) = v1;
  v4 = v2;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1ECDA20E0);

  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14EE0();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1DD93FA54(v9, v8, v46);
    _os_log_impl(&dword_1DD8F8000, v6, v7, "Unable to fetch request for refund token: %s from attester. High chance of inference failure.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
    MEMORY[0x1E12B8CE0](v10, -1, -1);
  }

  swift_willThrow();
  *(v0 + 40) = v2;
  v12 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    v15 = *(v0 + 32);

    sub_1DD94B2FC(v14, v13, v15);
    v16 = sub_1DDA147F0();
    v17 = sub_1DDA14EE0();

    sub_1DD94B340(v14, v13, v15);
    if (os_log_type_enabled(v16, v17))
    {
      v42 = *(v0 + 56);
      v43 = *(v0 + 64);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46[0] = v45;
      *v18 = 136315394;
      *(v18 + 4) = sub_1DD93FA54(v42, v43, v46);
      *(v18 + 12) = 2112;
      swift_allocError();
      *v20 = v14;
      v20[1] = v13;
      v20[2] = v15;
      sub_1DD94B2FC(v14, v13, v15);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v21;
      *v19 = v21;

      _os_log_impl(&dword_1DD8F8000, v16, v17, "Fetching refund token %s threw error %@", v18, 0x16u);
      sub_1DD90D378(v19, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1E12B8CE0](v45, -1, -1);
      MEMORY[0x1E12B8CE0](v18, -1, -1);
    }

    else
    {
    }

    v34 = *(v0 + 64);
    if (v14 >= 2)
    {
      v37 = *(v0 + 112);
      v39 = *(v0 + 48);
      v38 = *(v0 + 56);

      sub_1DD94B340(v14, v13, v15);
      *v39 = v37 | 0x8000000000004200;
      v39[1] = v38;
      v39[2] = v34;
      v39[3] = v13;
      v39[4] = v15;
      v39[5] = 0;
    }

    else
    {
      v35 = *(v0 + 48);

      *v35 = 0x3FFFFF3CFCLL;
      *(v35 + 8) = 0u;
      *(v35 + 24) = 0u;
      *(v35 + 40) = 0;
    }
  }

  else
  {

    v22 = v2;
    v23 = sub_1DDA147F0();
    v24 = sub_1DDA14EE0();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 64);
    if (v25)
    {
      v27 = *(v0 + 56);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46[0] = v30;
      *v28 = 136315394;
      v31 = sub_1DD93FA54(v27, v26, v46);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2112;
      v32 = v2;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v33;
      *v29 = v33;
      _os_log_impl(&dword_1DD8F8000, v23, v24, "Fetching refund token %s threw unknown error %@", v28, 0x16u);
      sub_1DD90D378(v29, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E12B8CE0](v30, -1, -1);
      MEMORY[0x1E12B8CE0](v28, -1, -1);
    }

    else
    {
    }

    v36 = *(v0 + 48);
    *v36 = 0x3FFFFF3CFCLL;
    *(v36 + 8) = 0u;
    *(v36 + 24) = 0u;
    *(v36 + 40) = 0;
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1DD947960(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_1DDA14850();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD947A20, 0, 0);
}

uint64_t sub_1DD947A20()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  sub_1DD949FC8();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E7F88], v4);
  v5 = sub_1DDA14F10();
  v0[24] = v5;
  (*(v2 + 8))(v1, v4);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DD9467E8;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83138, &qword_1DDA190D0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DD9445FC;
  v0[13] = &block_descriptor_33;
  v0[14] = v6;
  [v3 generateTokenRequestWithQueue:v5 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

unint64_t sub_1DD947BE4()
{
  result = qword_1ECD83120;
  if (!qword_1ECD83120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83120);
  }

  return result;
}

unint64_t sub_1DD947C3C()
{
  result = qword_1ECD83128;
  if (!qword_1ECD83128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83128);
  }

  return result;
}