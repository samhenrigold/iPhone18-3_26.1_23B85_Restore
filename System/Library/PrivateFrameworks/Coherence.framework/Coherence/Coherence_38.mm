uint64_t sub_1AE1A359C()
{

  return sub_1ADDCEDE0(v0 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica, &qword_1EB5BDC68, &unk_1AE253C20);
}

double sub_1AE1A363C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v10[0] = a1;
      LOWORD(v10[1]) = a2;
      BYTE2(v10[1]) = BYTE2(a2);
      BYTE3(v10[1]) = BYTE3(a2);
      BYTE4(v10[1]) = BYTE4(a2);
      BYTE5(v10[1]) = BYTE5(a2);
      v6 = v10 + BYTE6(a2);
LABEL_9:
      sub_1AE1A33C8(v10, v6, a3);
      goto LABEL_10;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1AE1A37A4(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:

  return result;
}

void sub_1AE1A37A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AE23BB7C();
  if (v7)
  {
    v8 = sub_1AE23BBAC();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1AE23BB9C();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v7[v12];
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1AE1A33C8(v7, v14, a4);
}

unint64_t sub_1AE1A3858(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1A3880@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v27 - v9;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v10 = sub_1AE23C78C();
  __swift_project_value_buffer(v10, qword_1ED96F1C8);

  sub_1ADDD86D8(a1, a2);
  v11 = sub_1AE23C76C();
  v12 = sub_1AE23D60C();

  sub_1ADDCC35C(a1, a2);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1AE1FB594(*(v3 + 104), *(v3 + 112), &v35);
    *(v14 + 12) = 2080;
    v36 = sub_1AE23BEAC();
    v37 = v16;
    v33 = 47;
    v34 = 0xE100000000000000;
    v31 = 95;
    v32 = 0xE100000000000000;
    sub_1ADE42DEC(v36, v16, v17);
    v18 = sub_1AE23D82C();
    v20 = v19;

    v21 = sub_1AE1FB594(v18, v20, &v35);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_1ADDCA000, v11, v12, "%s addLazyAsset %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v15, -1, -1);
    v22 = v14;
    a3 = v27;
    MEMORY[0x1B26FDA50](v22, -1, -1);
  }

  type metadata accessor for CRAssetRef();
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = v4;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v36 = &unk_1AE254530;
  v37 = v24;
  swift_weakInit();
  sub_1ADDD86D8(a1, a2);

  sub_1ADDD86D8(a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  v25 = v28;
  sub_1AE23D1FC();

  result = (*(v29 + 8))(v25, v30);
  *a3 = v23;
  return result;
}

void sub_1AE1A3C14(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 16) + 16) && (sub_1ADDFF050(a1), (v3 & 1) != 0))
  {
    swift_endAccess();

    sub_1AE1A62D0();
  }

  else
  {
    swift_endAccess();
  }
}

void sub_1AE1A3C98(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v32 = a3;
  v5 = v4;
  v31 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_1AE23BDDC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRAssetRef();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v36 = v17;
  v17[4] = v5;
  v18 = *(v14 + 16);
  v18(v16, v32, v13);
  v18(v12, v5 + OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v32 = a1;
  v19 = a2;
  sub_1ADDD86D8(a1, a2);

  v20 = v33;
  v21 = sub_1AE163454(v16, 0, 0, 0, v12);
  if (v20)
  {
  }

  else
  {
    v22 = v21;
    type metadata accessor for CRAssetProviderUniqueFile(0);
    v23 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v23 + 112) = 0;
    *(v23 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_isTemporary) = 0;
    v18((v23 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl), v22 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url, v13);
    *(v23 + 120) = v22;
    v24 = swift_allocObject();
    v25 = v32;
    v24[2] = v32;
    v24[3] = v19;
    v24[4] = v23;
    v34 = &unk_1AE254498;
    v35 = v24;
    swift_weakInit();
    sub_1ADDD86D8(v25, v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
    v26 = v28;
    sub_1AE23D1FC();

    (*(v29 + 8))(v26, v30);
    *v31 = v36;
  }
}

uint64_t sub_1AE1A4038@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v33 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = sub_1AE23BDDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v29 = &v26 - v16;
  type metadata accessor for CRAssetRef();
  v18 = swift_allocObject();
  v27 = a2;
  v28 = v18;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v5;
  sub_1ADDD86D8(a1, a2);

  sub_1AE23BD5C();
  v34 = v5;
  v35 = v17;
  v36 = 0;
  type metadata accessor for CRAssetWatchedDirectory();
  sub_1AE23D6AC();
  v19 = v37;
  (*(v12 + 16))(v14, a3, v11);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v27;
  *(v22 + 16) = a1;
  *(v22 + 24) = v23;
  (*(v12 + 32))(v22 + v20, v14, v11);
  *(v22 + v21) = v19;
  v37 = &unk_1AE254510;
  v38 = v22;
  swift_weakInit();
  sub_1ADDD86D8(a1, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  v24 = v30;
  sub_1AE23D1FC();

  (*(v31 + 8))(v24, v32);
  result = (*(v12 + 8))(v29, v11);
  *v33 = v28;
  return result;
}

uint64_t sub_1AE1A4368()
{
  v0 = sub_1AE23C78C();
  __swift_allocate_value_buffer(v0, qword_1ED96F1C8);
  __swift_project_value_buffer(v0, qword_1ED96F1C8);
  return sub_1AE23C77C();
}

void sub_1AE1A43DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v47 = &v36 - v2;
  v48 = sub_1AE23BFEC();
  v3 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCE8, &qword_1AE254458);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  swift_beginAccess();
  v11 = *(v0 + 112);
  v12 = *(v11 + 64);
  v38 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v36 = v0;
  v37 = (v13 + 63) >> 6;
  v39 = v3 + 32;
  v40 = v3 + 16;
  v44 = v3;
  v45 = v11;
  v46 = (v3 + 8);

  v16 = 0;
  v41 = v10;
  v42 = v7;
  if (v15)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v20 | (v17 << 6);
      v23 = v44;
      v22 = v45;
      v24 = v43;
      v25 = v48;
      (*(v44 + 16))(v43, *(v45 + 48) + *(v44 + 72) * v21, v48);
      v26 = *(*(v22 + 56) + 8 * v21);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCF0, &qword_1AE254460);
      v28 = *(v27 + 48);
      v29 = *(v23 + 32);
      v7 = v42;
      v29(v42, v24, v25);
      *&v7[v28] = v26;
      (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
      v19 = v17;
      v10 = v41;
LABEL_13:
      sub_1ADDD2198(v7, v10, &qword_1EB5BDCE8, &qword_1AE254458);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCF0, &qword_1AE254460);
      if ((*(*(v30 - 8) + 48))(v10, 1, v30) == 1)
      {
        break;
      }

      v31 = *&v10[*(v30 + 48)];
      v32 = sub_1AE23BDDC();
      v33 = v47;
      (*(*(v32 - 8) + 56))(v47, 1, 1, v32);
      sub_1ADDD2198(v33, *(*(v31 + 64) + 40), &qword_1EB5B9DC0, &qword_1AE240B90);
      swift_continuation_resume();
      (*v46)(v10, v48);
      v16 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v35 = v36;

    sub_1ADDCEDE0(v35 + OBJC_IVAR____TtC9Coherence19CRLazyAssetProvider_url, &qword_1EB5B9DC0, &qword_1AE240B90);
    swift_defaultActor_destroy();
  }

  else
  {
LABEL_5:
    if (v37 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v37;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v37)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCF0, &qword_1AE254460);
        (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v38 + 8 * v17);
      ++v16;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1AE1A48A0()
{
  sub_1AE1A43DC();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1AE1A48CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1AE23BFEC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A4990, v3, 0);
}

uint64_t sub_1AE1A4990()
{
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  if (sub_1AE23D27C())
  {
    v1 = v0[2];
    v2 = sub_1AE23BDDC();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    (*(v0[7] + 8))(v0[8], v0[6]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[8];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    v9 = swift_task_alloc();
    v0[9] = v9;
    v9[2] = v8;
    v9[3] = v7;
    v9[4] = v6;
    v9[5] = v5;
    v10 = swift_task_alloc();
    v0[10] = v10;
    *(v10 + 16) = v6;
    *(v10 + 24) = v5;
    v11 = sub_1ADDCEF80(&qword_1EB5BDCF8, type metadata accessor for CRLazyAssetProvider, &unk_1AE2543B8);
    v12 = swift_task_alloc();
    v0[11] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
    *v12 = v0;
    v12[1] = sub_1AE1A4C44;
    v14 = v0[2];

    return MEMORY[0x1EEE6DE18](v14, &unk_1AE254470, v9, sub_1AE1B3D48, v10, v6, v11, v13);
  }
}

void sub_1AE1A4C44()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 40);

    MEMORY[0x1EEE6DFA0](sub_1AE1A4D8C, v3, 0);
  }
}

uint64_t sub_1AE1A4D8C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AE1A4E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A4EB0, a4, 0);
}

uint64_t sub_1AE1A4EB0()
{
  v17 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = sub_1AE23C78C();
  __swift_project_value_buffer(v1, qword_1ED96F1C8);

  v2 = sub_1AE23C76C();
  v3 = sub_1AE23D60C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[15];
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1AE1FB594(v5, v4, &v16);
    *(v6 + 12) = 2080;
    v8 = sub_1AE23CCAC();
    v10 = sub_1AE1FB594(v8, v9, &v16);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1ADDCA000, v2, v3, "%s reading waiting for %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v7, -1, -1);
    MEMORY[0x1B26FDA50](v6, -1, -1);
  }

  v11 = v0[16];
  sub_1ADDCEF80(&qword_1EB5BDCF8, type metadata accessor for CRLazyAssetProvider, &unk_1AE2543B8);
  if (v11)
  {
    swift_getObjectType();
    v12 = sub_1AE23D16C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1AE1A50EC, v12, v14);
}

uint64_t sub_1AE1A50EC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v1[18];
  v1[2] = v2;
  v1[7] = v4;
  v1[3] = sub_1AE1A5220;
  v5 = swift_continuation_init();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = v1[16];
  v6 = v1[17];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + 112);
  *(v7 + 112) = 0x8000000000000000;
  sub_1ADEC0170(v5, v6, isUniquelyReferenced_nonNull_native);
  *(v7 + 112) = v10;
  swift_endAccess();

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1AE1A5220()
{
  v3 = *v0;
  sub_1ADDD2198(*(*v0 + 144), *(*v0 + 104), &qword_1EB5B9DC0, &qword_1AE240B90);

  v1 = *(v3 + 8);

  return v1();
}

double sub_1AE1A5348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_1AE23D1BC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = a1;
  (*(v5 + 32))(&v12[v11], &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_1AE217C10(0, 0, v9, &unk_1AE254488, v12);

  return result;
}

uint64_t sub_1AE1A5528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AE1A5548, a4, 0);
}

uint64_t sub_1AE1A5548()
{
  sub_1AE1A55A8(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AE1A55A8(uint64_t a1)
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16[-v8];
  swift_beginAccess();
  v10 = *(v1 + 112);
  if (*(v10 + 16))
  {

    v11 = sub_1ADDDF300(a1);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      v14 = sub_1AE23BDDC();
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
      sub_1ADDD2198(v9, *(*(v13 + 64) + 40), &qword_1EB5B9DC0, &qword_1AE240B90);
      swift_continuation_resume();
    }

    else
    {
    }
  }

  (*(v4 + 16))(v6, a1, v3);
  swift_beginAccess();
  sub_1AE1D1B54(0, v6);
  return swift_endAccess();
}

uint64_t sub_1AE1A57C0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1AE23BFEC();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCE8, &qword_1AE254458);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A590C, v2, 0);
}

uint64_t sub_1AE1A590C()
{
  v20 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = sub_1AE23C78C();
  __swift_project_value_buffer(v1, qword_1ED96F1C8);
  swift_retain_n();
  v2 = sub_1AE23C76C();
  v3 = sub_1AE23D60C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    v8 = sub_1AE23CCAC();
    v10 = sub_1AE1FB594(v8, v9, &v19);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    swift_beginAccess();
    v11 = *(*(v5 + 112) + 16);

    *(v6 + 14) = v11;

    _os_log_impl(&dword_1ADDCA000, v2, v3, "%s accommodateReplacement of lazy provider with %ld readers", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B26FDA50](v7, -1, -1);
    MEMORY[0x1B26FDA50](v6, -1, -1);
  }

  else
  {
  }

  v18 = v0[9];
  ObjectType = swift_getObjectType();
  v17 = (*(v18 + 32) + **(v18 + 32));
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_1AE1A5BB8;
  v14 = v0[17];
  v15 = v0[9];

  return v17(v14, 45, 0xE100000000000000, ObjectType, v15);
}

uint64_t sub_1AE1A5BB8()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1AE1A5CC8, v1, 0);
}

void sub_1AE1A5CC8()
{
  v1 = v0[12];
  v2 = v0[10];
  swift_beginAccess();
  v3 = *(v2 + 112);
  v4 = *(v3 + 64);
  v33 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v4;
  v31 = v2;
  v32 = (63 - v6) >> 6;
  v35 = v1;
  v36 = *(v2 + 112);
  v37 = (v1 + 8);

  v8 = 0;
  v34 = v0;
  if (v7)
  {
    while (1)
    {
      v9 = v8;
LABEL_12:
      v13 = v0[13];
      v12 = v0[14];
      v14 = v0[11];
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v9 << 6);
      (*(v35 + 16))(v13, *(v36 + 48) + *(v35 + 72) * v16, v14);
      v17 = *(*(v36 + 56) + 8 * v16);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCF0, &qword_1AE254460);
      v19 = *(v18 + 48);
      v0 = v34;
      (*(v35 + 32))(v12, v13, v14);
      *(v12 + v19) = v17;
      (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
      v11 = v9;
LABEL_13:
      v20 = v0[15];
      sub_1ADDD2198(v0[14], v20, &qword_1EB5BDCE8, &qword_1AE254458);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCF0, &qword_1AE254460);
      v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
      v24 = v0[16];
      v23 = v0[17];
      v25 = v0[15];
      if (v22 == 1)
      {
        break;
      }

      v38 = v0[11];
      v26 = *(v25 + *(v21 + 48));
      sub_1ADDCEE40(v23, v24, &qword_1EB5B9DC0, &qword_1AE240B90);
      sub_1ADDD2198(v24, *(*(v26 + 64) + 40), &qword_1EB5B9DC0, &qword_1AE240B90);
      swift_continuation_resume();
      (*v37)(v25, v38);
      v8 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v29 = sub_1ADE51944(MEMORY[0x1E69E7CC0]);
    sub_1ADDCEDE0(v23, &qword_1EB5B9DC0, &qword_1AE240B90);
    *(v31 + 112) = v29;

    v30 = v0[1];

    v30();
  }

  else
  {
LABEL_5:
    if (v32 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v32;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v32)
      {
        v27 = v0[14];
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCF0, &qword_1AE254460);
        (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
        v7 = 0;
        goto LABEL_13;
      }

      v7 = *(v33 + 8 * v9);
      ++v8;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1AE1A60F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1ADE744B8;

  return sub_1AE1A48CC(a1, a2, a3);
}

uint64_t sub_1AE1A61A0(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AE1A61C0, v2, 0);
}

uint64_t sub_1AE1A61C0()
{
  v4 = *(v0 + 8);
  v1 = *(v0 + 24);
  v2 = swift_unknownObjectRetain();

  return v4(v2, v1);
}

uint64_t sub_1AE1A622C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1ADE744B8;

  return sub_1AE1A57C0(a1, a2);
}

void sub_1AE1A62D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 24);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v10;
    if (v10 <= 0)
    {
      sub_1ADDCEE40(*(v0 + 16) + OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemURL, v3, &qword_1EB5B9DC0, &qword_1AE240B90);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);
      }

      else
      {
        (*(v5 + 32))(v7, v3, v4);
        if (swift_weakLoadStrong())
        {
          sub_1AE1A7788(v7);
        }

        (*(v5 + 8))(v7, v4);
      }
    }
  }
}

uint64_t sub_1AE1A64AC()
{
  v1 = v0;
  if (*(v0 + 120))
  {

    sub_1AE1A62D0();
  }

  v2 = OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_fileUrl;
  v3 = sub_1AE23BDDC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1AE1A6554()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v1[3] = swift_task_alloc();
  v2 = sub_1AE23BDDC();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A664C, v0, 0);
}

uint64_t sub_1AE1A664C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v2 + 16);
  v5(v1, v0[2] + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_fileUrl, v3);
  (*(v2 + 56))(v4, 1, 1, v3);
  v6 = sub_1AE163454(v1, 0, 0, 0, v4);
  v7 = v0[4];
  type metadata accessor for CRAssetProviderUniqueFile(0);
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 112) = 0;
  *(v8 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_isTemporary) = 0;
  v5(v8 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl, v6 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url, v7);
  *(v8 + 120) = v6;

  v9 = v0[1];

  return v9(v8, &off_1F23C6B90);
}

uint64_t sub_1AE1A6804(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AE1A6824, v1, 0);
}

uint64_t sub_1AE1A6824()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_fileUrl;
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1AE1A690C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AE1A6998;

  return sub_1AE1A6554();
}

uint64_t sub_1AE1A6998(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1AE1A6A9C()
{

  v1 = OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl;
  v2 = sub_1AE23BDDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1AE1A6B28@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1AE23BDDC();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2, v2 + v4, v5);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_1AE1A6BF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AE1A6C18, v1, 0);
}

uint64_t sub_1AE1A6C18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl;
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1AE1A6D00(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  v4 = swift_unknownObjectRetain();

  return v6(v4, a2);
}

uint64_t sub_1AE1A6EBC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v14 = sub_1AE23BD5C();
    v18[1] = v18;
    MEMORY[0x1EEE9AC00](v14);
    v18[-4] = v2;
    v18[-3] = v12;
    LOBYTE(v18[-2]) = 0;
    type metadata accessor for CRAssetWatchedDirectory();
    sub_1AE23D6AC();
    v13 = v21;
    (*(v9 + 8))(v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  }

  (*(v9 + 16))(v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  v21 = &unk_1AE254438;
  v22 = v16;
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();

  return (*(v19 + 8))(v7, v20);
}

uint64_t sub_1AE1A71A8(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BD8C();
  if (swift_weakLoadStrong())
  {
    v8 = a1;
    sub_1AE1A6EBC(v7, 0);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1AE1A73D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1AE23BC8C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1AE1A7508()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1AE23DA2C();
  MEMORY[0x1B26FB670](0xD000000000000016, 0x80000001AE263450);
  v12 = v0;
  sub_1AE23DBAC();
  MEMORY[0x1B26FB670](32, 0xE100000000000000);
  sub_1ADDCEE40(v0 + OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemURL, v3, &qword_1EB5B9DC0, &qword_1AE240B90);
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    v6 = 0xE100000000000000;
    v7 = 45;
  }

  else
  {
    v8 = sub_1AE23BDAC();
    v6 = v9;
    (*(v5 + 8))(v3, v4);
    v7 = v8;
  }

  MEMORY[0x1B26FB670](v7, v6);

  MEMORY[0x1B26FB670](62, 0xE100000000000000);
  return v13;
}

void sub_1AE1A7788(uint64_t a1)
{
  v3 = sub_1AE23BDDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = *(v1 + 32);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AE1B3C24;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1AE1B5910;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDF70CC;
  aBlock[3] = &block_descriptor_125;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

uint64_t sub_1AE1A79A4()
{
  [objc_opt_self() removeFilePresenter_];

  return swift_deallocClassInstance();
}

uint64_t sub_1AE1A7A48()
{

  return MEMORY[0x1EEE6DFA0](sub_1AE1A7B44, 0, 0);
}

uint64_t sub_1AE1A7B44()
{
  if (!v0[2])
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
LABEL_8:

    v3 = v0[1];

    return v3();
  }

  sub_1AE1B5874((v0 + 2), (v0 + 5));
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (!Strong)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    goto LABEL_7;
  }

  v2 = Strong;
  if (sub_1AE23D27C())
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

LABEL_7:
    sub_1AE1B58AC((v0 + 5));
    goto LABEL_8;
  }

  v6 = (v0[5] + *v0[5]);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1AE1A7D08;

  return v6(v2);
}

uint64_t sub_1AE1A7D08()
{

  return MEMORY[0x1EEE6DFA0](sub_1AE1A7E04, 0, 0);
}

uint64_t sub_1AE1A7E04()
{

  sub_1AE1B58AC(v0 + 40);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1AE1A7A48;
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1AE1A7EBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC9Coherence10AssetActor__streamContinuation;
  (*(v3 + 16))(&v10 - v5, v1 + OBJC_IVAR____TtC9Coherence10AssetActor__streamContinuation, v2, v4);
  sub_1AE23D20C();
  v8 = *(v3 + 8);
  v8(v6, v2);

  v8((v1 + v7), v2);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_1AE1A801C()
{
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

void (*sub_1AE1A807C(uint64_t a1, unint64_t a2))(void *)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 112);
  if (*(v6 + 16))
  {

    v7 = sub_1ADDDE7CC(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 24 * v7 + 16);

      if (v9 > 1)
      {
        v10 = sub_1AE1A79F8(v28);
        result = sub_1ADF5F264(v27, a1, a2);
        if (*v12)
        {
          v13 = v12[2];
          v14 = __OFSUB__(v13, 1);
          v15 = v13 - 1;
          if (v14)
          {
            __break(1u);
          }

          else
          {
            v12[2] = v15;
            (result)(v27, 0);
            return (v10)(v28, 0);
          }
        }

        else
        {
          (result)(v27, 0);
          return (v10)(v28, 0);
        }

        return result;
      }
    }

    else
    {
    }
  }

  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v16 = sub_1AE23C78C();
  __swift_project_value_buffer(v16, qword_1ED96F1C8);

  sub_1ADDD86D8(a1, a2);
  v17 = sub_1AE23C76C();
  v18 = sub_1AE23D60C();

  sub_1ADDCC35C(a1, a2);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1AE1FB594(*(v3 + 120), *(v3 + 128), &v29);
    *(v19 + 12) = 2080;
    v28[0] = sub_1AE23BEAC();
    v28[1] = v21;
    v27[0] = 47;
    v27[1] = 0xE100000000000000;
    v28[4] = 95;
    v28[5] = 0xE100000000000000;
    sub_1ADE42DEC(v28[0], v21, v22);
    v23 = sub_1AE23D82C();
    v25 = v24;

    v26 = sub_1AE1FB594(v23, v25, &v29);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_1ADDCA000, v17, v18, "%s deinitAsset %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v20, -1, -1);
    MEMORY[0x1B26FDA50](v19, -1, -1);
  }

  swift_beginAccess();
  sub_1ADDD86D8(a1, a2);
  sub_1AE1D1D08(0, 0, 0, a1, a2);
  return swift_endAccess();
}

uint64_t sub_1AE1A83E8(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_1AE23BDDC();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A84B8, v2, 0);
}

uint64_t sub_1AE1A84B8()
{
  v52 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[14];
  v5 = sub_1AE23C78C();
  __swift_project_value_buffer(v5, qword_1ED96F1C8);
  v50 = *(v3 + 16);
  v50(v1, v4, v2);

  v6 = sub_1AE23C76C();
  v7 = sub_1AE23D60C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[18];
  if (v8)
  {
    v12 = v0[16];
    v13 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51 = v49;
    *v13 = 136315394;
    *(v13 + 4) = sub_1AE1FB594(*(v12 + 120), *(v12 + 128), &v51);
    *(v13 + 12) = 2080;
    sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v14 = sub_1AE23DD9C();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_1AE1FB594(v14, v16, &v51);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_1ADDCA000, v6, v7, "%s presentedSubitemDidAppear %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v49, -1, -1);
    MEMORY[0x1B26FDA50](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v18 = sub_1AE23BCFC();
  v0[8] = v18;
  v0[9] = v19;
  v0[10] = 95;
  v0[11] = 0xE100000000000000;
  v0[12] = 47;
  v0[13] = 0xE100000000000000;
  sub_1ADE42DEC(v18, v19, v20);
  sub_1AE23D82C();

  v21 = sub_1AE23BE1C();
  v23 = v22;
  v0[21] = v21;
  v0[22] = v22;
  sub_1ADDE0F78(v21, v22);

  if (v23 >> 60 != 15)
  {
    v24 = v0[16];
    sub_1ADDE1588(v21, v23);
    swift_beginAccess();
    v25 = *(v24 + 112);
    if (*(v25 + 16))
    {

      v26 = sub_1ADDDE7CC(v21, v23);
      if (v27)
      {
        v28 = (*(v25 + 56) + 24 * v26);
        v0[23] = *v28;
        v29 = v28[1];
        v47 = v28[2];
        swift_unknownObjectRetain();

        ObjectType = swift_getObjectType();
        v31 = *(v29 + 16);
        swift_unknownObjectRetain();
        v32 = v31(ObjectType, v29);
        swift_unknownObjectRelease();
        if (v32)
        {
          v46 = v29;
          v34 = v0[18];
          v33 = v0[19];
          v35 = v0[17];
          v36 = v0[15];
          v50(v33, v0[14], v35);
          type metadata accessor for CRAssetProviderUrl(0);
          v37 = swift_allocObject();
          v0[24] = v37;

          swift_defaultActor_initialize();
          *(v37 + 112) = 0;
          *(v37 + 120) = 0;
          *(v37 + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_isTemporary) = 0;
          result = (*(v34 + 32))(v37 + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_fileUrl, v33, v35);
          *(v37 + 120) = v36;
          v39 = *(v36 + 24);
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            __break(1u);
          }

          else
          {
            *(v36 + 24) = v41;
            swift_beginAccess();
            sub_1ADDE0F78(v21, v23);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v51 = *(v24 + 112);
            *(v24 + 112) = 0x8000000000000000;
            sub_1ADEC01B0(v37, &off_1F23C6BC8, v47, v21, v23, isUniquelyReferenced_nonNull_native);
            sub_1ADDE1588(v21, v23);
            *(v24 + 112) = v51;
            swift_endAccess();
            v43 = *(v46 + 48);
            swift_unknownObjectRetain();

            v48 = (v43 + *v43);
            v44 = swift_task_alloc();
            v0[25] = v44;
            *v44 = v0;
            v44[1] = sub_1AE1A8B28;

            return (v48)(v37, &off_1F23C6BC8, ObjectType, v46);
          }

          return result;
        }

        sub_1ADDE1588(v21, v23);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1ADDE1588(v21, v23);
      }
    }

    else
    {
      sub_1ADDE1588(v21, v23);
    }
  }

  v45 = v0[1];

  return v45();
}

uint64_t sub_1AE1A8B28()
{
  v1 = *(*v0 + 128);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A8C78, v1, 0);
}

uint64_t sub_1AE1A8C78()
{
  sub_1ADDE1588(v0[21], v0[22]);

  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AE1A8CFC(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_1AE23BDDC();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A8DBC, v1, 0);
}

uint64_t sub_1AE1A8DBC()
{
  v37 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  v5 = sub_1AE23C78C();
  __swift_project_value_buffer(v5, qword_1ED96F1C8);
  (*(v2 + 16))(v1, v4, v3);

  v6 = sub_1AE23C76C();
  v7 = sub_1AE23D60C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  if (v8)
  {
    v12 = v0[23];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1AE1FB594(*(v12 + 120), *(v12 + 128), &v36);
    *(v13 + 12) = 2080;
    sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v15 = sub_1AE23DD9C();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_1AE1FB594(v15, v17, &v36);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1ADDCA000, v6, v7, "%s accommodatePresentedSubitemDeletion %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v14, -1, -1);
    MEMORY[0x1B26FDA50](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = sub_1AE23BCFC();
  v0[16] = v19;
  v0[17] = v20;
  v0[18] = 95;
  v0[19] = 0xE100000000000000;
  v0[20] = 47;
  v0[21] = 0xE100000000000000;
  sub_1ADE42DEC(v19, v20, v21);
  sub_1AE23D82C();

  v22 = sub_1AE23BE1C();
  v24 = v23;
  v0[27] = v22;
  v0[28] = v23;
  sub_1ADDE0F78(v22, v23);

  if (v24 >> 60 != 15)
  {
    v25 = v0[23];
    sub_1ADDE1588(v22, v24);
    swift_beginAccess();
    v26 = *(v25 + 112);
    if (*(v26 + 16))
    {

      v27 = sub_1ADDDE7CC(v22, v24);
      if (v28)
      {
        v29 = (*(v26 + 56) + 24 * v27);
        v0[29] = *v29;
        v30 = v29[1];
        swift_unknownObjectRetain();

        ObjectType = swift_getObjectType();
        v35 = (*(v30 + 40) + **(v30 + 40));
        v32 = swift_task_alloc();
        v0[30] = v32;
        *v32 = v0;
        v32[1] = sub_1AE1A9258;

        return v35(ObjectType, v30);
      }
    }

    sub_1ADDE1588(v22, v24);
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_1AE1A9258(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = a2;
  v5 = v3[23];
  v4[31] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AE1A9378, v5, 0);
}

uint64_t sub_1AE1A9378()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = sub_1AE1A79F8(v0 + 16);
  v5 = sub_1ADF5F264((v0 + 48), v2, v1);
  if (*v4)
  {
    v6 = *(v0 + 120);
    v7 = *(v0 + 224);
    v8 = *(v0 + 216);
    *v4 = *(v0 + 248);
    v4[1] = v6;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    (v5)(v0 + 48, 0);
    (v3)(v0 + 16, 0);
    v9 = v8;
    v10 = v7;
  }

  else
  {
    v11 = *(v0 + 224);
    v12 = *(v0 + 216);
    (v5)(v0 + 48, 0);
    (v3)(v0 + 16, 0);
    v9 = v12;
    v10 = v11;
  }

  sub_1ADDE1588(v9, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1AE1A94D8(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v2[18] = swift_task_alloc();
  v3 = sub_1AE23BDDC();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A95DC, v1, 0);
}

uint64_t sub_1AE1A95DC()
{
  v53 = v0;
  if (qword_1ED966B00 == -1)
  {
    goto LABEL_2;
  }

LABEL_27:
  swift_once();
LABEL_2:
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);
  v5 = sub_1AE23C78C();
  __swift_project_value_buffer(v5, qword_1ED96F1C8);
  (*(v3 + 16))(v1, v4, v2);

  v6 = sub_1AE23C76C();
  v7 = sub_1AE23D60C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 176);
  v10 = *(v0 + 152);
  v11 = *(v0 + 160);
  if (v8)
  {
    v12 = *(v0 + 136);
    v13 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = v51;
    *v13 = 136315394;
    *(v13 + 4) = sub_1AE1FB594(*(v12 + 120), *(v12 + 128), &v52);
    *(v13 + 12) = 2080;
    sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v14 = sub_1AE23DD9C();
    v16 = v15;
    v19 = *(v11 + 8);
    v18 = v11 + 8;
    v17 = v19;
    v19(v9, v10);
    v20 = sub_1AE1FB594(v14, v16, &v52);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_1ADDCA000, v6, v7, "%s accommodatePresentedItemDeletion %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v51, -1, -1);
    MEMORY[0x1B26FDA50](v13, -1, -1);
  }

  else
  {

    v21 = *(v11 + 8);
    v18 = v11 + 8;
    v17 = v21;
    v21(v9, v10);
  }

  *(v0 + 184) = v18;
  *(v0 + 192) = v17;
  v22 = *(v0 + 136);
  swift_beginAccess();
  v23 = *(v22 + 112);
  *(v0 + 200) = v23;
  v24 = *(v23 + 32);
  *(v0 + 264) = v24;
  v25 = 1 << v24;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v23 + 64);

  v28 = 0;
  if (v27)
  {
    while (1)
    {
      while (1)
      {
        v30 = *(v0 + 200);
LABEL_16:
        *(v0 + 208) = v27;
        *(v0 + 216) = v28;
        v48 = *(v0 + 160);
        v49 = *(v0 + 152);
        v47 = *(v0 + 144);
        v32 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v33 = v32 | (v28 << 6);
        v34 = (*(v30 + 48) + 16 * v33);
        v35 = *v34;
        *(v0 + 224) = *v34;
        v36 = v34[1];
        *(v0 + 232) = v36;
        v37 = (*(v30 + 56) + 24 * v33);
        *(v0 + 240) = *v37;
        v38 = v37[1];
        ObjectType = swift_getObjectType();
        v40 = *(v38 + 24);
        swift_unknownObjectRetain_n();
        sub_1ADDD86D8(v35, v36);
        v46 = ObjectType;
        v40(ObjectType, v38);
        swift_unknownObjectRelease();
        if ((*(v48 + 48))(v47, 1, v49) != 1)
        {
          break;
        }

        v29 = *(v0 + 144);
        swift_unknownObjectRelease();
        sub_1ADDCC35C(v35, v36);
        sub_1ADDCEDE0(v29, &qword_1EB5B9DC0, &qword_1AE240B90);
        if (!v27)
        {
          goto LABEL_12;
        }
      }

      (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 144), *(v0 + 152));
      sub_1AE23BCBC();
      sub_1AE23BCBC();
      v41 = sub_1AE23CE4C();

      if (v41)
      {
        break;
      }

      (*(v0 + 192))(*(v0 + 168), *(v0 + 152));
      swift_unknownObjectRelease();
      sub_1ADDCC35C(v35, v36);
      if (!v27)
      {
        goto LABEL_12;
      }
    }

    v44 = *(v38 + 40);
    swift_unknownObjectRetain();
    v50 = (v44 + *v44);
    v45 = swift_task_alloc();
    *(v0 + 248) = v45;
    *v45 = v0;
    v45[1] = sub_1AE1A9BB8;

    return v50(v46, v38);
  }

  else
  {
    while (1)
    {
LABEL_12:
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v30 = *(v0 + 200);
      if (v31 >= (((1 << *(v0 + 264)) + 63) >> 6))
      {
        break;
      }

      v27 = *(v30 + 8 * v31 + 64);
      ++v28;
      if (v27)
      {
        v28 = v31;
        goto LABEL_16;
      }
    }

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_1AE1A9BB8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = a2;
  v5 = v3[17];
  v4[32] = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A9CF4, v5, 0);
}

void sub_1AE1A9CF4()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = sub_1AE1A79F8(v0 + 16);
  v5 = sub_1ADF5F264((v0 + 48), v2, v1);
  if (*v4)
  {
    v6 = *(v0 + 120);
    *v4 = *(v0 + 256);
    v4[1] = v6;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  (v5)(v0 + 48, 0);
  (v3)(v0 + 16, 0);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v9 = *(v0 + 152);
  sub_1ADDCC35C(*(v0 + 224), *(v0 + 232));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7(v8, v9);
  v10 = *(v0 + 216);
  v11 = (*(v0 + 208) - 1) & *(v0 + 208);
  if (v11)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return;
    }

    v13 = *(v0 + 200);
    if (v14 >= (((1 << *(v0 + 264)) + 63) >> 6))
    {
      break;
    }

    v11 = *(v13 + 8 * v14 + 64);
    ++v10;
    if (v11)
    {
      v10 = v14;
      while (1)
      {
        *(v0 + 208) = v11;
        *(v0 + 216) = v10;
        v30 = *(v0 + 160);
        v31 = *(v0 + 152);
        v29 = *(v0 + 144);
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = v15 | (v10 << 6);
        v17 = (*(v13 + 48) + 16 * v16);
        v18 = *v17;
        *(v0 + 224) = *v17;
        v19 = v17[1];
        *(v0 + 232) = v19;
        v20 = (*(v13 + 56) + 24 * v16);
        *(v0 + 240) = *v20;
        v21 = v20[1];
        ObjectType = swift_getObjectType();
        v23 = *(v21 + 24);
        swift_unknownObjectRetain_n();
        sub_1ADDD86D8(v18, v19);
        v28 = ObjectType;
        v23(ObjectType, v21);
        swift_unknownObjectRelease();
        if ((*(v30 + 48))(v29, 1, v31) == 1)
        {
          v12 = *(v0 + 144);
          swift_unknownObjectRelease();
          sub_1ADDCC35C(v18, v19);
          sub_1ADDCEDE0(v12, &qword_1EB5B9DC0, &qword_1AE240B90);
          if (!v11)
          {
            goto LABEL_7;
          }
        }

        else
        {
          (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 144), *(v0 + 152));
          sub_1AE23BCBC();
          sub_1AE23BCBC();
          v24 = sub_1AE23CE4C();

          if (v24)
          {
            v26 = *(v21 + 40);
            swift_unknownObjectRetain();
            v32 = (v26 + *v26);
            v27 = swift_task_alloc();
            *(v0 + 248) = v27;
            *v27 = v0;
            v27[1] = sub_1AE1A9BB8;

            v32(v28, v21);
            return;
          }

          (*(v0 + 192))(*(v0 + 168), *(v0 + 152));
          swift_unknownObjectRelease();
          sub_1ADDCC35C(v18, v19);
          if (!v11)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v13 = *(v0 + 200);
      }
    }
  }

  v25 = *(v0 + 8);

  v25();
}

uint64_t sub_1AE1AA154(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = a4;
  *(v4 + 224) = a3;
  *(v4 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  *(v4 + 112) = swift_task_alloc();
  v6 = sub_1AE23BDDC();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1AA264, a4, 0);
}

uint64_t sub_1AE1AA264()
{
  v40 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = sub_1AE23C78C();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_1ED96F1C8);

  v2 = sub_1AE23C76C();
  v3 = sub_1AE23D60C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1AE1FB594(*(v4 + 120), *(v4 + 128), &v39);
    *(v6 + 12) = 2080;
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    sub_1ADDD86D8(v8, v9);
    v10 = sub_1AE23BEAC();
    *(v0 + 40) = v10;
    *(v0 + 48) = v11;
    *(v0 + 56) = 47;
    *(v0 + 64) = 0xE100000000000000;
    *(v0 + 72) = 95;
    *(v0 + 80) = 0xE100000000000000;
    sub_1ADE42DEC(v10, v11, v12);
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v8, v9);

    v16 = sub_1AE1FB594(v13, v15, &v39);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v2, v3, "%s readAsset %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v7, -1, -1);
    MEMORY[0x1B26FDA50](v6, -1, -1);
  }

  v17 = *(v0 + 96);
  v18 = *(v0 + 104);
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();
  v21 = *(v18 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_11;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_11;
  }

  v24 = *(v0 + 224);
  v25 = (*(v21 + 56) + 24 * v22);
  *(v0 + 160) = *v25;
  v26 = v25[1];
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  if ((v24 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 16);
    swift_unknownObjectRetain();
    LOBYTE(ObjectType) = v28(ObjectType, v26);
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      swift_unknownObjectRelease();
LABEL_11:
      **(v0 + 88) = xmmword_1AE2427C0;

      v29 = *(v0 + 8);

      return v29();
    }
  }

  v31 = *(v0 + 104);
  v32 = swift_getObjectType();
  v33 = *(v31 + 120);
  *(v0 + 168) = v33;
  v34 = *(v31 + 128);
  *(v0 + 176) = v34;
  v35 = *(v26 + 32);
  swift_unknownObjectRetain();
  v38 = (v35 + *v35);
  v36 = swift_task_alloc();
  *(v0 + 184) = v36;
  *v36 = v0;
  v36[1] = sub_1AE1AA710;
  v37 = *(v0 + 112);

  return v38(v37, v33, v34, v32, v26);
}

uint64_t sub_1AE1AA710()
{
  v1 = *(*v0 + 104);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1AA83C, v1, 0);
}

uint64_t sub_1AE1AA83C()
{
  v27 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[11];
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    *v4 = xmmword_1AE2427C0;

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[18];
    v8 = v0[17];
    (*(v2 + 32))(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);

    v9 = sub_1AE23C76C();
    v10 = sub_1AE23D60C();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[21];
      v11 = v0[22];
      v14 = v0[16];
      v13 = v0[17];
      v15 = v0[15];
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v16 = 136315394;
      *(v16 + 4) = sub_1AE1FB594(v12, v11, &v26);
      *(v16 + 12) = 2080;
      sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v17 = sub_1AE23DD9C();
      v19 = v18;
      v20 = *(v14 + 8);
      v20(v13, v15);
      v21 = sub_1AE1FB594(v17, v19, &v26);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_1ADDCA000, v9, v10, "%s reading url %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v25, -1, -1);
      MEMORY[0x1B26FDA50](v16, -1, -1);
    }

    else
    {
      v23 = v0[16];
      v22 = v0[17];
      v24 = v0[15];

      v20 = *(v23 + 8);
      v20(v22, v24);
    }

    v0[24] = v20;

    return MEMORY[0x1EEE6DFA0](sub_1AE1AAB58, 0, 0);
  }
}

uint64_t sub_1AE1AAB58()
{
  v1 = sub_1AE23BDFC();
  v3 = v2;
  v0[25] = 0;
  v4 = v0[13];
  v0[26] = v3;
  v0[27] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AE1AABF0, v4, 0);
}

uint64_t sub_1AE1AABF0()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[11];
  *v6 = v2;
  v6[1] = v1;

  sub_1ADDD86D8(v2, v1);
  v3(v4, v5);
  swift_unknownObjectRelease();

  sub_1ADDCC35C(v2, v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1AE1AACE4()
{
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[15];
  swift_unknownObjectRelease();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AE1AAD98(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 136) = a6;
  *(v7 + 144) = v6;
  *(v7 + 120) = a4;
  *(v7 + 128) = a5;
  *(v7 + 288) = a3;
  *(v7 + 112) = a1;
  *(v7 + 152) = *(a6 - 8);
  *(v7 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  *(v7 + 168) = swift_task_alloc();
  v9 = sub_1AE23BDDC();
  *(v7 + 176) = v9;
  *(v7 + 184) = *(v9 - 8);
  *(v7 + 192) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v7 + 200) = v10;
  *(v7 + 208) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1AE1AAF08, v6, 0);
}

uint64_t sub_1AE1AAF08()
{
  v40 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = sub_1AE23C78C();
  *(v0 + 216) = __swift_project_value_buffer(v1, qword_1ED96F1C8);

  v2 = sub_1AE23C76C();
  v3 = sub_1AE23D60C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1AE1FB594(*(v5 + 120), *(v5 + 128), &v39);
    *(v6 + 12) = 2080;
    v8 = *(v4 + 16);
    v9 = *(v4 + 24);
    sub_1ADDD86D8(v8, v9);
    v10 = sub_1AE23BEAC();
    *(v0 + 64) = v10;
    *(v0 + 72) = v11;
    *(v0 + 80) = 47;
    *(v0 + 88) = 0xE100000000000000;
    *(v0 + 96) = 95;
    *(v0 + 104) = 0xE100000000000000;
    sub_1ADE42DEC(v10, v11, v12);
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v8, v9);

    v16 = sub_1AE1FB594(v13, v15, &v39);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v2, v3, "%s readAsset %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v7, -1, -1);
    MEMORY[0x1B26FDA50](v6, -1, -1);
  }

  v17 = *(v0 + 208);
  v18 = *(v0 + 144);
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();
  v21 = *(v18 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_11;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_11;
  }

  v24 = *(v0 + 288);
  v25 = (*(v21 + 56) + 24 * v22);
  *(v0 + 224) = *v25;
  v26 = v25[1];
  *(v0 + 232) = v26;
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  if ((v24 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 16);
    swift_unknownObjectRetain();
    LOBYTE(ObjectType) = v28(ObjectType, v26);
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      swift_unknownObjectRelease();
LABEL_11:
      (*(*(v0 + 152) + 56))(*(v0 + 112), 1, 1, *(v0 + 136));

      v29 = *(v0 + 8);

      return v29();
    }
  }

  v31 = *(v0 + 144);
  v32 = swift_getObjectType();
  v33 = *(v31 + 120);
  *(v0 + 240) = v33;
  v34 = *(v31 + 128);
  *(v0 + 248) = v34;
  v35 = *(v26 + 32);
  swift_unknownObjectRetain();
  v38 = (v35 + *v35);
  v36 = swift_task_alloc();
  *(v0 + 256) = v36;
  *v36 = v0;
  v36[1] = sub_1AE1AB3E0;
  v37 = *(v0 + 168);

  return v38(v37, v33, v34, v32, v26);
}

uint64_t sub_1AE1AB3E0()
{
  v1 = *(*v0 + 144);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1AB50C, v1, 0);
}

uint64_t sub_1AE1AB50C()
{
  v33 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[19];
    v5 = v0[17];
    v6 = v0[14];
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    (*(v4 + 56))(v6, 1, 1, v5);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[24];
    v9 = v0[25];
    (*(v2 + 32))(v9, v3, v1);
    (*(v2 + 16))(v10, v9, v1);

    v11 = sub_1AE23C76C();
    v12 = sub_1AE23D60C();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[30];
      v13 = v0[31];
      v16 = v0[23];
      v15 = v0[24];
      v17 = v0[22];
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v18 = 136315394;
      *(v18 + 4) = sub_1AE1FB594(v14, v13, &v32);
      *(v18 + 12) = 2080;
      sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v19 = sub_1AE23DD9C();
      v21 = v20;
      v22 = *(v16 + 8);
      v22(v15, v17);
      v23 = sub_1AE1FB594(v19, v21, &v32);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_1ADDCA000, v11, v12, "%s reading url %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v30, -1, -1);
      MEMORY[0x1B26FDA50](v18, -1, -1);
    }

    else
    {
      v25 = v0[23];
      v24 = v0[24];
      v26 = v0[22];

      v22 = *(v25 + 8);
      v22(v24, v26);
    }

    v0[33] = v22;
    v31 = (v0[15] + *v0[15]);
    v27 = swift_task_alloc();
    v0[34] = v27;
    *v27 = v0;
    v27[1] = sub_1AE1AB8E4;
    v28 = v0[25];
    v29 = v0[20];

    return v31(v29, v28);
  }
}

uint64_t sub_1AE1AB8E4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_1AE1ABBD8;
  }

  else
  {
    v4 = sub_1AE1ABA10;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1AE1ABA10()
{
  v1 = *(v0 + 208);
  v12 = *(v0 + 200);
  v13 = *(v0 + 264);
  v11 = *(v0 + 176);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  *(v0 + 40) = *(v0 + 224);
  *(v0 + 56) = v1;
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;

  swift_unknownObjectRetain();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD10, &qword_1AE2544F0);
  sub_1AE1ABC9C(v0 + 40, sub_1AE1B5520, v6, v7, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v13(v12, v11);

  (*(v3 + 56))(v5, 0, 1, v4);
  (*(v3 + 8))(v2, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AE1ABBD8()
{
  v1 = v0[33];
  v2 = v0[25];
  v3 = v0[22];
  swift_unknownObjectRelease();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AE1ABC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1AE1ABDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AE1ABDCC, a1, 0);
}

uint64_t sub_1AE1ABDCC()
{
  sub_1AE1A807C(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AE1ABE30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v42 - v6;
  v50 = sub_1AE23BDDC();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v42 - v9;
  v10 = sub_1AE23C9BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AE23C96C();
  v52 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADDCEF80(&qword_1EB5BB808, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1AE23C95C();
  sub_1ADDD86D8(a1, a2);
  sub_1AE1B1DC4(a1, a2, v13, v17);
  v44 = 0;
  v18 = a1;
  v49 = a2;
  sub_1ADDCC35C(a1, a2);
  sub_1AE23C94C();
  (*(v11 + 8))(v13, v10);
  sub_1ADDCEF80(&qword_1ED9664C0, MEMORY[0x1E69663E0], MEMORY[0x1E69663D8]);
  v53 = v14;
  v51 = v16;
  v19 = v43;
  v20 = sub_1AE23C97C();
  sub_1AE03C8CC(v20, v21);
  v23 = v22;

  v24 = sub_1ADDCC6B4(v23);
  v26 = v25;

  type metadata accessor for CRAssetRef();
  v27 = swift_allocObject();
  v27[2] = v24;
  v27[3] = v26;
  v28 = v45;
  v46 = v27;
  v27[4] = v45;
  type metadata accessor for CRFileSnapshot(0);
  sub_1ADDD86D8(v24, v26);

  sub_1AE162BBC(0, 0, v19);
  sub_1ADDCEE40(v28 + 56, &v58, &qword_1EB5B9DB0, &qword_1AE240B80);
  if (v59)
  {
    sub_1ADE23E6C(&v58, v60);
    v30 = v61;
    v29 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v31 = (*(v29 + 8))(v18, v49, v30, v29);
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    sub_1ADDCEDE0(&v58, &qword_1EB5B9DB0, &qword_1AE240B80);
    v31 = a1;
    v33 = v49;
    sub_1ADDD86D8(a1, v49);
  }

  v34 = v44;
  sub_1AE23BEDC();
  if (v34)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v31, v33);
    v35 = *(v48 + 32);
    v36 = v47;
    v37 = v50;
    v35(v47, v19, v50);
    v38 = swift_allocObject();
    v35((v38 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url), v36, v37);
    v39 = swift_allocObject();
    v39[2] = v24;
    v39[3] = v26;
    v39[4] = v38;
    v60[0] = &unk_1AE242370;
    v60[1] = v39;
    swift_weakInit();
    sub_1ADDD86D8(v24, v26);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
    v40 = v55;
    sub_1AE23D1FC();

    sub_1ADDCC35C(v24, v26);
    (*(v56 + 8))(v40, v57);
    result = (*(v52 + 8))(v51, v53);
    *v54 = v46;
  }

  return result;
}

uint64_t sub_1AE1AC490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AE1AC4B8, a1, 0);
}

void (*sub_1AE1AC4B8())(void *)
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_9;
  }

  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  v5 = sub_1ADDDE7CC(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_9:
    v26 = *(v0 + 168);
    v27 = *(v0 + 176);
    v28 = *(v0 + 160);
    type metadata accessor for CRAssetProviderUniqueFile(0);
    v29 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v29 + 112) = 0;
    *(v29 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_isTemporary) = 0;
    v30 = OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url;
    v31 = OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl;
    v32 = sub_1AE23BDDC();
    (*(*(v32 - 8) + 16))(v29 + v31, v27 + v30, v32);
    *(v29 + 120) = v27;
    swift_beginAccess();

    sub_1ADDD86D8(v28, v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1ADEC01B0(v29, &off_1F23C6B90, 1, v28, v26, isUniquelyReferenced_nonNull_native);
    sub_1ADDCC35C(v28, v26);
    *(v1 + 112) = v43;
    swift_endAccess();

    goto LABEL_10;
  }

  v7 = (*(v2 + 56) + 24 * v5);
  *(v0 + 184) = *v7;
  v8 = v7[1];
  v9 = v7[2];
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v11 = *(v8 + 8);
  swift_unknownObjectRetain();
  v12 = v11(ObjectType, v8);
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = *(v0 + 176);
    type metadata accessor for CRAssetProviderUniqueFile(0);
    v14 = swift_allocObject();
    *(v0 + 192) = v14;
    swift_defaultActor_initialize();
    *(v14 + 112) = 0;
    *(v14 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_isTemporary) = 0;
    v15 = OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url;
    v16 = OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl;
    v17 = sub_1AE23BDDC();
    result = (*(*(v17 - 8) + 16))(v14 + v16, v13 + v15, v17);
    *(v14 + 120) = v13;
    v19 = __OFADD__(v9, 1);
    v20 = v9 + 1;
    if (!v19)
    {
      v21 = *(v0 + 168);
      v22 = *(v0 + 160);
      swift_beginAccess();

      sub_1ADDD86D8(v22, v21);

      v23 = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v1 + 112);
      *(v1 + 112) = 0x8000000000000000;
      sub_1ADEC01B0(v14, &off_1F23C6B90, v20, v22, v21, v23);
      sub_1ADDCC35C(v22, v21);
      *(v1 + 112) = v42;
      swift_endAccess();
      v24 = *(v8 + 48);
      swift_unknownObjectRetain();

      v41 = (v24 + *v24);
      v25 = swift_task_alloc();
      *(v0 + 200) = v25;
      *v25 = v0;
      v25[1] = sub_1AE1AC9B8;

      return (v41)(v14, &off_1F23C6B90, ObjectType, v8);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v36 = *(v0 + 160);
  v35 = *(v0 + 168);
  v37 = sub_1AE1A79F8(v0 + 16);
  result = sub_1ADF5F264((v0 + 48), v36, v35);
  if (*v38)
  {
    v39 = v38[2];
    v19 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v19)
    {
      goto LABEL_18;
    }

    v38[2] = v40;
  }

  (result)(v0 + 48, 0);
  (v37)(v0 + 16, 0);
  swift_unknownObjectRelease();
LABEL_10:
  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1AE1AC9B8()
{
  v1 = *(*v0 + 152);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B58F4, v1, 0);
}

uint64_t sub_1AE1ACB08(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v47 - v6;
  v7 = sub_1AE23BDDC();
  v57 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v47 - v10;
  v63 = sub_1AE23C96C();
  v56 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AE23C9BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23C9AC();
  v17 = objc_allocWithZone(MEMORY[0x1E695DF48]);
  v55 = a1;
  v18 = sub_1AE23BD1C();
  v19 = [v17 initWithURL_];

  if (v19)
  {
    v52 = v14;
    v53 = v13;
    v48 = v7;
    v49 = v2;
    [v19 open];
    v23 = swift_slowAlloc();
    if ([v19 hasBytesAvailable])
    {
      do
      {
        v24 = [v19 read:v23 maxLength:0x4000];
        if (!v24)
        {
          break;
        }

        if (v24 < 0)
        {
          sub_1ADE42E40(v24, v25, v26);
          swift_allocError();
          *v45 = 0xD00000000000002ALL;
          *(v45 + 8) = 0x80000001AE2634A0;
          *(v45 + 16) = 0;
          swift_willThrow();

          goto LABEL_12;
        }

        MEMORY[0x1B26FB230](v23, v23 + v24);
      }

      while (([v19 hasBytesAvailable] & 1) != 0);
    }

    MEMORY[0x1B26FDA50](v23, -1, -1);
    [v19 close];
    sub_1AE23C99C();
    sub_1ADDCEF80(&qword_1ED9664C0, MEMORY[0x1E69663E0], MEMORY[0x1E69663D8]);
    v27 = v63;
    v28 = sub_1AE23C97C();
    sub_1AE03C8CC(v28, v29);
    v31 = v30;

    v14 = sub_1ADDCC6B4(v31);
    v47 = v32;

    sub_1ADDCEE40(v3 + 56, &v58, &qword_1EB5B9DB0, &qword_1AE240B80);
    if (v59)
    {
      sub_1ADE23E6C(&v58, v60);
      v33 = v61;
      v34 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v35 = v54;
      (*(v34 + 24))(v55, v33, v34);

      (*(v56 + 8))(v12, v27);
      (*(v52 + 8))(v16, v53);
      type metadata accessor for CRFileSnapshot(0);
      v36 = swift_allocObject();
      (*(v57 + 32))(v36 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url, v35, v48);
      __swift_destroy_boxed_opaque_existential_1(v60);
    }

    else
    {
      v54 = v14;
      sub_1ADDCEDE0(&v58, &qword_1EB5B9DB0, &qword_1AE240B80);
      v39 = v57;
      v40 = *(v57 + 16);
      v14 = v50;
      v41 = v48;
      v40(v50, v55, v48);
      v42 = v3 + OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory;
      v43 = v51;
      v40(v51, v42, v41);
      (*(v39 + 56))(v43, 0, 1, v41);
      v44 = v49;
      sub_1AE163454(v14, 0, 0, 0, v43);
      if (v44)
      {
        sub_1ADDCC35C(v54, v47);

        (*(v56 + 8))(v12, v63);
LABEL_12:
        (*(v52 + 8))(v16, v53);
      }

      else
      {

        (*(v56 + 8))(v12, v63);
        (*(v52 + 8))(v16, v53);
        return v54;
      }
    }
  }

  else
  {
    sub_1ADE42E40(v20, v21, v22);
    swift_allocError();
    *v37 = 0xD000000000000025;
    *(v37 + 8) = 0x80000001AE263470;
    *(v37 + 16) = 0;
    swift_willThrow();
    v38 = *(v14 + 8);
    v14 += 8;
    v38(v16, v13);
  }

  return v14;
}

void sub_1AE1AD190(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = v3;
  v57 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - v12;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  if (a2)
  {
    v44 = &v42 - v12;
    v45 = v10;
    v46 = v11;
    v14 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
    v53 = 0;
    v15 = sub_1AE23BD1C();
    v16 = swift_allocObject();
    v16[2] = &v54;
    v16[3] = v5;
    v16[4] = &v53;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1AE1B56A4;
    *(v17 + 24) = v16;
    v51 = sub_1AE02ACF8;
    v52 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1ADE8AB00;
    v50 = &block_descriptor_171;
    v18 = _Block_copy(&aBlock);

    aBlock = 0;
    [v14 coordinateReadingItemAtURL:v15 options:0 error:&aBlock byAccessor:v18];
    _Block_release(v18);

    v19 = aBlock;
    v20 = aBlock;
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
    }

    if (v20)
    {
      v21 = v53;
      v53 = v19;
    }

    v22 = v53;
    if (v53)
    {
      swift_willThrow();
      v23 = v22;

      v24 = v54;
      v25 = v55;
      v26 = sub_1AE1B56A4;
      v27 = v56;
LABEL_9:
      sub_1AE1B5574(v24, v25, v27);
      v32 = v26;
LABEL_15:
      sub_1ADDDCE7C(v32, v16);
      return;
    }

    v33 = v56;
    v42 = sub_1AE1B56A4;
  }

  else
  {
    v28 = v11;
    v29 = sub_1AE1ACB08(a1);
    if (v4)
    {
      v27 = 0;
      v25 = 0;
      v24 = 0;
      v26 = 0;
      v16 = 0;
      goto LABEL_9;
    }

    v33 = v31;
    v44 = v13;
    v45 = v10;
    v46 = v28;
    v54 = v29;
    v55 = v30;
    v56 = v31;
    sub_1AE1B5574(0, 0, 0);
    v42 = 0;
    v16 = 0;
  }

  v43 = a3;
  if (v33)
  {
    v35 = v54;
    v34 = v55;
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = v34;
    v36[4] = v33;
    aBlock = &unk_1AE254500;
    v48 = v36;
    swift_weakInit();

    sub_1ADDD86D8(v35, v34);

    sub_1ADDD86D8(v35, v34);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
    v37 = v44;
    sub_1AE23D1FC();

    sub_1ADDCC35C(v35, v34);
    (*(v45 + 8))(v37, v46);
    v38 = v56;
    if (v56)
    {
      v39 = v54;
      v40 = v55;
      type metadata accessor for CRAssetRef();
      v41 = swift_allocObject();
      v41[2] = v39;
      v41[3] = v40;
      v41[4] = v5;
      *v43 = v41;

      sub_1ADDD86D8(v39, v40);
      sub_1AE1B5574(v39, v40, v38);
      v32 = v42;
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_1AE1AD65C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1AE1ACB08(a1);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *a2 = v3;
  a2[1] = v7;
  a2[2] = v8;

  return sub_1AE1B5574(v4, v5, v6);
}

uint64_t sub_1AE1AD6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AE1AD720, a1, 0);
}

void (*sub_1AE1AD720())(void *)
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_9;
  }

  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  v5 = sub_1ADDDE7CC(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_9:
    v26 = *(v0 + 168);
    v27 = *(v0 + 176);
    v28 = *(v0 + 160);
    type metadata accessor for CRAssetProviderUniqueFile(0);
    v29 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v29 + 112) = 0;
    *(v29 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_isTemporary) = 0;
    v30 = OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url;
    v31 = OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl;
    v32 = sub_1AE23BDDC();
    (*(*(v32 - 8) + 16))(v29 + v31, v27 + v30, v32);
    *(v29 + 120) = v27;
    swift_beginAccess();

    sub_1ADDD86D8(v28, v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1ADEC01B0(v29, &off_1F23C6B90, 1, v28, v26, isUniquelyReferenced_nonNull_native);
    sub_1ADDCC35C(v28, v26);
    *(v1 + 112) = v43;
    swift_endAccess();

    goto LABEL_10;
  }

  v7 = (*(v2 + 56) + 24 * v5);
  *(v0 + 184) = *v7;
  v8 = v7[1];
  v9 = v7[2];
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v11 = *(v8 + 8);
  swift_unknownObjectRetain();
  v12 = v11(ObjectType, v8);
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = *(v0 + 176);
    type metadata accessor for CRAssetProviderUniqueFile(0);
    v14 = swift_allocObject();
    *(v0 + 192) = v14;
    swift_defaultActor_initialize();
    *(v14 + 112) = 0;
    *(v14 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_isTemporary) = 0;
    v15 = OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url;
    v16 = OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl;
    v17 = sub_1AE23BDDC();
    result = (*(*(v17 - 8) + 16))(v14 + v16, v13 + v15, v17);
    *(v14 + 120) = v13;
    v19 = __OFADD__(v9, 1);
    v20 = v9 + 1;
    if (!v19)
    {
      v21 = *(v0 + 168);
      v22 = *(v0 + 160);
      swift_beginAccess();

      sub_1ADDD86D8(v22, v21);

      v23 = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v1 + 112);
      *(v1 + 112) = 0x8000000000000000;
      sub_1ADEC01B0(v14, &off_1F23C6B90, v20, v22, v21, v23);
      sub_1ADDCC35C(v22, v21);
      *(v1 + 112) = v42;
      swift_endAccess();
      v24 = *(v8 + 48);
      swift_unknownObjectRetain();

      v41 = (v24 + *v24);
      v25 = swift_task_alloc();
      *(v0 + 200) = v25;
      *v25 = v0;
      v25[1] = sub_1AE1ADC20;

      return (v41)(v14, &off_1F23C6B90, ObjectType, v8);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v36 = *(v0 + 160);
  v35 = *(v0 + 168);
  v37 = sub_1AE1A79F8(v0 + 16);
  result = sub_1ADF5F264((v0 + 48), v36, v35);
  if (*v38)
  {
    v39 = v38[2];
    v19 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v19)
    {
      goto LABEL_18;
    }

    v38[2] = v40;
  }

  (result)(v0 + 48, 0);
  (v37)(v0 + 16, 0);
  swift_unknownObjectRelease();
LABEL_10:
  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1AE1ADC20()
{
  v1 = *(*v0 + 152);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1ADD70, v1, 0);
}

uint64_t sub_1AE1ADD70()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AE1ADDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1ADE74240;

  return sub_1AE1A83E8(a2, a3);
}

uint64_t sub_1AE1ADE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1AE1ADF24;

  return sub_1AE1A8CFC(a2);
}

uint64_t sub_1AE1ADF24()
{

  return MEMORY[0x1EEE6DFA0](sub_1AE1AE020, 0, 0);
}

uint64_t sub_1AE1AE020()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AE1AE090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1AE1AE130;

  return sub_1AE1A94D8(a2);
}

uint64_t sub_1AE1AE130()
{

  return MEMORY[0x1EEE6DFA0](sub_1AE1AE22C, 0, 0);
}

uint64_t sub_1AE1AE22C()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_1AE1AE294(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  LODWORD(v64) = a3;
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55[-v13];
  swift_beginAccess();
  v15 = *(a1 + 16);
  if (*(v15 + 16) && (v16 = sub_1ADDFF050(a2), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();
    if ((v64 & 1) == 0)
    {
LABEL_6:
      *a4 = v18;

      return;
    }

    v19 = *(v18 + 24);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      *(v18 + 24) = v21;
      goto LABEL_6;
    }

    __break(1u);
  }

  else
  {
    v59 = v11;
    v61 = a4;
    v62 = v4;
    swift_endAccess();
    v60 = v9;
    v22 = a1;
    v24 = (v9 + 2);
    v23 = v9[2];
    v63 = a2;
    v23(v14, a2, v8);
    v25 = type metadata accessor for CRAssetFilePresenter(0);
    v26 = objc_allocWithZone(v25);
    swift_weakInit();
    v27 = OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemURL;
    v57 = v24;
    v58 = v23;
    v23(&v26[OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemURL], v14, v8);
    v28 = v22;
    v29 = v60;
    (v60[7])(&v26[v27], 0, 1, v8);
    v30 = objc_allocWithZone(MEMORY[0x1E696ADC8]);

    v31 = [v30 init];
    *&v26[OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemOperationQueue] = v31;
    swift_weakAssign();
    v65.receiver = v26;
    v65.super_class = v25;
    v32 = objc_msgSendSuper2(&v65, sel_init);

    v33 = v29[1];
    v33(v14, v8);
    type metadata accessor for CRAssetWatchedDirectory();
    v34 = swift_allocObject();
    v35 = v34;
    *(v34 + 16) = v32;
    *(v34 + 24) = 0;
    if (v64)
    {
      *(v34 + 24) = 1;
    }

    if (*(v22 + 96))
    {
      v36 = v32;
      v37 = v61;
      v38 = v63;
      v39 = v32;
    }

    else
    {
      v40 = qword_1ED966B00;
      v64 = v32;
      v60 = v32;
      v41 = v40 == -1;
      v42 = v63;
      if (!v41)
      {
        swift_once();
      }

      v43 = sub_1AE23C78C();
      __swift_project_value_buffer(v43, qword_1ED96F1C8);
      v44 = v59;
      v58(v59, v42, v8);

      v45 = sub_1AE23C76C();
      v46 = sub_1AE23D60C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v57 = v33;
        v48 = v47;
        v58 = swift_slowAlloc();
        v66[0] = v58;
        *v48 = 136315394;
        *(v48 + 4) = sub_1AE1FB594(*(v22 + 104), *(v22 + 112), v66);
        *(v48 + 12) = 2080;
        sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v56 = v46;
        v49 = sub_1AE23DD9C();
        v51 = v50;
        v57(v44, v8);
        v52 = sub_1AE1FB594(v49, v51, v66);

        *(v48 + 14) = v52;
        _os_log_impl(&dword_1ADDCA000, v45, v56, "%s watchDirectory %s", v48, 0x16u);
        v53 = v58;
        swift_arrayDestroy();
        MEMORY[0x1B26FDA50](v53, -1, -1);
        MEMORY[0x1B26FDA50](v48, -1, -1);
      }

      else
      {

        v33(v44, v8);
      }

      v37 = v61;
      [objc_opt_self() addFilePresenter_];
      v38 = v63;
      v39 = v64;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v28 + 16);
    *(v28 + 16) = 0x8000000000000000;
    sub_1ADEC0320(v35, v38, isUniquelyReferenced_nonNull_native);
    *(v28 + 16) = v67;
    swift_endAccess();

    *v37 = v35;
  }
}

uint64_t sub_1AE1AE7E4(void *a1, uint64_t a2)
{
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  swift_beginAccess();
  v11 = a1[2];
  if (*(v11 + 16) && (v12 = sub_1ADDFF050(a2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = qword_1ED966B00;
    v33 = v14;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1AE23C78C();
    __swift_project_value_buffer(v16, qword_1ED96F1C8);
    v17 = *(v5 + 16);
    v17(v10, a2, v4);

    v18 = sub_1AE23C76C();
    v19 = sub_1AE23D60C();

    v32 = v19;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v21 = v20;
      v30 = swift_slowAlloc();
      v34[0] = v30;
      *v21 = 136315394;
      *(v21 + 4) = sub_1AE1FB594(a1[13], a1[14], v34);
      *(v21 + 12) = 2080;
      sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v29 = v18;
      v22 = sub_1AE23DD9C();
      v24 = v23;
      (*(v5 + 8))(v10, v4);
      v25 = sub_1AE1FB594(v22, v24, v34);

      *(v21 + 14) = v25;
      v26 = v29;
      _os_log_impl(&dword_1ADDCA000, v29, v32, "%s unwatchDirectory %s", v21, 0x16u);
      v27 = v30;
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v27, -1, -1);
      MEMORY[0x1B26FDA50](v21, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    [objc_opt_self() removeFilePresenter_];

    v17(v7, a2, v4);
  }

  else
  {
    swift_endAccess();
    (*(v5 + 16))(v7, a2, v4);
  }

  swift_beginAccess();
  sub_1AE1D1E58(0, v7);
  return swift_endAccess();
}

double sub_1AE1AEB94(uint64_t a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v59 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v59 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC8, &qword_1AE2543F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v59 - v14;
  *(a1 + 96) = 1;
  v15 = sub_1ADDCD674(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  *(a1 + 48) = v15;

  swift_beginAccess();
  v76 = a1;
  v16 = *(a1 + 16);
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v60 = (v18 + 63) >> 6;
  v77 = (v3 + 16);
  v69 = (v3 + 32);
  v63 = v3;
  v73 = (v3 + 8);
  v64 = v16;

  v21 = 0;
  v59 = 0;
  *&v22 = 136315394;
  v61 = v22;
  for (i = v17; ; v17 = i)
  {
    if (v20)
    {
      v25 = v21;
LABEL_16:
      v29 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v30 = v29 | (v25 << 6);
      v31 = v64;
      v32 = v63;
      v33 = v62;
      (*(v63 + 16))(v62, *(v64 + 48) + *(v63 + 72) * v30, v2);
      v34 = *(*(v31 + 56) + 8 * v30);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDCD0, &qword_1AE2543F8);
      v36 = *(v35 + 48);
      v37 = *(v32 + 32);
      v38 = v66;
      v37(v66, v33, v2);
      *(v38 + v36) = v34;
      (*(*(v35 - 8) + 56))(v38, 0, 1, v35);

      v28 = v67;
    }

    else
    {
      v26 = v60 <= v21 + 1 ? v21 + 1 : v60;
      v27 = v26 - 1;
      v28 = v67;
      while (1)
      {
        v25 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
        }

        if (v25 >= v60)
        {
          break;
        }

        v20 = *(v17 + 8 * v25);
        ++v21;
        if (v20)
        {
          v21 = v25;
          goto LABEL_16;
        }
      }

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDCD0, &qword_1AE2543F8);
      v38 = v66;
      (*(*(v57 - 8) + 56))(v66, 1, 1, v57);
      v20 = 0;
      v21 = v27;
    }

    sub_1ADDD2198(v38, v28, &qword_1EB5BDCC8, &qword_1AE2543F0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDCD0, &qword_1AE2543F8);
    v40 = (*(*(v39 - 8) + 48))(v28, 1, v39);
    v41 = v68;
    if (v40 == 1)
    {
      break;
    }

    v72 = *(v28 + *(v39 + 48));
    (*v69)(v68, v28, v2);
    if (qword_1ED966B00 != -1)
    {
      swift_once();
    }

    v42 = sub_1AE23C78C();
    __swift_project_value_buffer(v42, qword_1ED96F1C8);
    v70 = *v77;
    v70(v75, v41, v2);

    v43 = sub_1AE23C76C();
    v44 = sub_1AE23D60C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v78[0] = v46;
      *v45 = v61;
      *(v45 + 4) = sub_1AE1FB594(*(v76 + 104), *(v76 + 112), v78);
      *(v45 + 12) = 2080;
      sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v47 = sub_1AE23DD9C();
      v49 = v48;
      v71 = *v73;
      v71(v75, v2);
      v50 = sub_1AE1FB594(v47, v49, v78);
      v41 = v68;

      *(v45 + 14) = v50;
      _os_log_impl(&dword_1ADDCA000, v43, v44, "%s unwatchDirectory(enterBackground) %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v46, -1, -1);
      MEMORY[0x1B26FDA50](v45, -1, -1);
    }

    else
    {

      v71 = *v73;
      v71(v75, v2);
    }

    [objc_opt_self() removeFilePresenter_];
    v70(v74, v41, v2);
    v51 = [objc_opt_self() defaultManager];
    sub_1AE23BDAC();
    v52 = sub_1AE23CCDC();

    v78[0] = 0;
    v53 = [v51 contentsOfDirectoryAtPath:v52 error:v78];

    v54 = v78[0];
    if (v53)
    {
      v23 = sub_1AE23CFDC();
      v24 = v54;
    }

    else
    {
      v55 = v78[0];
      v56 = sub_1AE23BC9C();

      swift_willThrow();
      v23 = 0;
      v59 = 0;
    }

    swift_beginAccess();
    sub_1AE1D2018(v23, v74);
    swift_endAccess();

    v71(v41, v2);
  }

  return result;
}

uint64_t sub_1AE1AF560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v7 = sub_1AE23BDDC();
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1AF62C, a1, 0);
}

void (*sub_1AE1AF62C())(void *)
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);

    v5 = sub_1ADDDE7CC(v4, v3);
    if (v6)
    {
      v7 = (*(v2 + 56) + 24 * v5);
      *(v0 + 216) = *v7;
      v8 = v7[1];
      v9 = v7[2];
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v11 = *(v8 + 8);
      swift_unknownObjectRetain();
      v12 = v11(ObjectType, v8);
      swift_unknownObjectRelease();
      if (v12)
      {
        v46 = ObjectType;
        v13 = *(v0 + 200);
        v14 = *(v0 + 208);
        v15 = *(v0 + 184);
        v16 = *(v0 + 192);
        (*(v13 + 16))(v14, *(v0 + 176), v16);
        type metadata accessor for CRAssetProviderUrl(0);
        v17 = swift_allocObject();
        *(v0 + 224) = v17;

        swift_defaultActor_initialize();
        *(v17 + 112) = 0;
        *(v17 + 120) = 0;
        *(v17 + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_isTemporary) = 0;
        result = (*(v13 + 32))(v17 + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_fileUrl, v14, v16);
        *(v17 + 120) = v15;
        v19 = *(v15 + 24);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (!v20)
        {
          *(v15 + 24) = v21;
          v22 = v9 + 1;
          if (!__OFADD__(v9, 1))
          {
            v24 = *(v0 + 160);
            v23 = *(v0 + 168);
            swift_beginAccess();
            sub_1ADDD86D8(v24, v23);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v47 = *(v1 + 112);
            *(v1 + 112) = 0x8000000000000000;
            sub_1ADEC01B0(v17, &off_1F23C6BC8, v22, v24, v23, isUniquelyReferenced_nonNull_native);
            sub_1ADDCC35C(v24, v23);
            *(v1 + 112) = v47;
            swift_endAccess();
            v26 = *(v8 + 48);
            swift_unknownObjectRetain();

            v45 = (v26 + *v26);
            v27 = swift_task_alloc();
            *(v0 + 232) = v27;
            *v27 = v0;
            v27[1] = sub_1AE1AFB5C;

            return (v45)(v17, &off_1F23C6BC8, v46, v8);
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v40 = *(v0 + 160);
      v39 = *(v0 + 168);
      v41 = sub_1AE1A79F8(v0 + 16);
      result = sub_1ADF5F264((v0 + 48), v40, v39);
      if (*v42)
      {
        v43 = v42[2];
        v20 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v20)
        {
LABEL_22:
          __break(1u);
          return result;
        }

        v42[2] = v44;
      }

      (result)(v0 + 48, 0);
      (v41)(v0 + 16, 0);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }
  }

  v29 = *(v0 + 200);
  v28 = *(v0 + 208);
  v30 = *(v0 + 184);
  v31 = *(v0 + 192);
  (*(v29 + 16))(v28, *(v0 + 176), v31);
  type metadata accessor for CRAssetProviderUrl(0);
  v32 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v32 + 112) = 0;
  *(v32 + 120) = 0;
  *(v32 + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_isTemporary) = 0;
  result = (*(v29 + 32))(v32 + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_fileUrl, v28, v31);
  *(v32 + 120) = v30;
  v33 = *(v30 + 24);
  v20 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_20;
  }

  v36 = *(v0 + 160);
  v35 = *(v0 + 168);
  *(v30 + 24) = v34;
  swift_beginAccess();
  sub_1ADDD86D8(v36, v35);

  v37 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_1ADEC01B0(v32, &off_1F23C6BC8, 1, v36, v35, v37);
  sub_1ADDCC35C(v36, v35);
  *(v1 + 112) = v48;
  swift_endAccess();

LABEL_12:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1AE1AFB5C()
{
  v1 = *(*v0 + 152);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1AFCAC, v1, 0);
}

uint64_t sub_1AE1AFCAC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AE1AFD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AE1AFD44, a1, 0);
}

void (*sub_1AE1AFD44())(void *)
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_9;
  }

  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  v5 = sub_1ADDDE7CC(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_9:
    v23 = *(v0 + 168);
    v22 = *(v0 + 176);
    v24 = *(v0 + 160);
    swift_beginAccess();

    sub_1ADDD86D8(v24, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1ADEC01B0(v22, &off_1F23C6B90, 1, v24, v23, isUniquelyReferenced_nonNull_native);
    sub_1ADDCC35C(v24, v23);
    *(v1 + 112) = v36;
    swift_endAccess();
    goto LABEL_10;
  }

  v7 = (*(v2 + 56) + 24 * v5);
  *(v0 + 184) = *v7;
  v8 = v7[1];
  v9 = v7[2];
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v11 = *(v8 + 8);
  swift_unknownObjectRetain();
  v12 = v11(ObjectType, v8);
  result = swift_unknownObjectRelease();
  if (v12)
  {
    v14 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v16 = *(v0 + 168);
      v15 = *(v0 + 176);
      v17 = *(v0 + 160);
      swift_beginAccess();
      swift_retain_n();
      sub_1ADDD86D8(v17, v16);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v1 + 112);
      *(v1 + 112) = 0x8000000000000000;
      sub_1ADEC01B0(v15, &off_1F23C6B90, v14, v17, v16, v18);
      sub_1ADDCC35C(v17, v16);
      *(v1 + 112) = v35;
      swift_endAccess();
      v19 = *(v8 + 48);

      swift_unknownObjectRetain();
      v34 = (v19 + *v19);
      v20 = swift_task_alloc();
      *(v0 + 192) = v20;
      *v20 = v0;
      v20[1] = sub_1AE1B012C;
      v21 = *(v0 + 176);

      return (v34)(v21, &off_1F23C6B90, ObjectType, v8);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v28 = *(v0 + 160);
  v27 = *(v0 + 168);
  v29 = sub_1AE1A79F8(v0 + 16);
  result = sub_1ADF5F264((v0 + 48), v28, v27);
  if (*v30)
  {
    v31 = v30[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_18;
    }

    v30[2] = v33;
  }

  (result)(v0 + 48, 0);
  (v29)(v0 + 16, 0);
  swift_unknownObjectRelease();
LABEL_10:
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1AE1B012C()
{
  v1 = *(*v0 + 152);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B027C, v1, 0);
}

uint64_t sub_1AE1B027C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AE1B02E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AE1B030C, a1, 0);
}

void (*sub_1AE1B030C())(void *)
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v4 = *(v0 + 112);
  v3 = *(v0 + 120);

  v5 = sub_1ADDDE7CC(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_8:
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    type metadata accessor for CRLazyAssetProvider(0);
    v18 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v18 + 112) = sub_1ADE51944(MEMORY[0x1E69E7CC0]);
    *(v18 + 120) = 1;
    v19 = OBJC_IVAR____TtC9Coherence19CRLazyAssetProvider_url;
    v20 = sub_1AE23BDDC();
    (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
    *(v18 + OBJC_IVAR____TtC9Coherence19CRLazyAssetProvider_isTemporary) = 1;
    swift_beginAccess();
    sub_1ADDD86D8(v17, v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1ADEC01B0(v18, &off_1F23C6C00, 1, v17, v16, isUniquelyReferenced_nonNull_native);
    sub_1ADDCC35C(v17, v16);
    *(v1 + 112) = v25;
    swift_endAccess();

    goto LABEL_9;
  }

  v23 = *(v0 + 112);
  v24 = *(v0 + 120);
  v7 = *(*(v2 + 56) + 24 * v5 + 8);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v9 = *(v7 + 8);
  swift_unknownObjectRetain();
  v9(ObjectType, v7);
  swift_unknownObjectRelease();
  v10 = sub_1AE1A79F8(v0 + 16);
  result = sub_1ADF5F264((v0 + 48), v23, v24);
  if (*v12)
  {
    v13 = v12[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
      return result;
    }

    v12[2] = v15;
  }

  (result)(v0 + 48, 0);
  (v10)(v0 + 16, 0);
  swift_unknownObjectRelease();
LABEL_9:
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1AE1B05C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v7[23] = v8;
  v7[24] = *(v8 - 8);
  v7[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B0694, 0, 0);
}

uint64_t sub_1AE1B0694()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[26] = *(Strong + 24);

    return MEMORY[0x1EEE6DFA0](sub_1AE1B0858, 0, 0);
  }

  else
  {
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    if (v2)
    {
      v3 = *(v2 + 24);
      v0[27] = v3;

      v4 = swift_task_alloc();
      v0[28] = v4;
      *v4 = v0;
      v4[1] = sub_1AE1B0BBC;
      v5 = v0[21];
      v6 = v0[22];
      v7 = v0[20];

      return sub_1AE1B3F94(v7, 1, v3, v5, v6);
    }

    else
    {

      v8 = v0[1];

      return v8();
    }
  }
}

uint64_t sub_1AE1B0858()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];
  v0[2] = v0;
  v0[3] = sub_1AE1B098C;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v0[13] = &unk_1AE2544D8;
  v0[14] = v5;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE1B098C()
{

  return MEMORY[0x1EEE6DFA0](sub_1AE1B0A6C, 0, 0);
}

uint64_t sub_1AE1B0A6C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 24);
    v0[27] = v2;

    v3 = swift_task_alloc();
    v0[28] = v3;
    *v3 = v0;
    v3[1] = sub_1AE1B0BBC;
    v4 = v0[21];
    v5 = v0[22];
    v6 = v0[20];

    return sub_1AE1B3F94(v6, 1, v2, v4, v5);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

void sub_1AE1B0BBC()
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

uint64_t sub_1AE1B0D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a8;
  v8[24] = v12;
  v8[21] = a6;
  v8[22] = a7;
  v8[19] = a4;
  v8[20] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B0DE8, 0, 0);
}

uint64_t sub_1AE1B0DE8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[28] = *(Strong + 24);

    return MEMORY[0x1EEE6DFA0](sub_1AE1B0FCC, 0, 0);
  }

  else
  {
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    if (v2)
    {
      v3 = v0[21];
      v4 = *(v2 + 24);
      v0[29] = v4;

      v6 = v3(v5);

      v7 = swift_task_alloc();
      v0[30] = v7;
      *v7 = v0;
      v7[1] = sub_1AE1B134C;
      v8 = v0[23];
      v9 = v0[24];
      v10 = v0[20];

      return sub_1AE1B4AC0(v10, v6 & 1, v4, v8, v9);
    }

    else
    {

      v11 = v0[1];

      return v11();
    }
  }
}

uint64_t sub_1AE1B0FCC()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[26];
  v0[2] = v0;
  v0[3] = sub_1AE1B1100;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v0[13] = &unk_1AE2544C0;
  v0[14] = v5;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE1B1100()
{

  return MEMORY[0x1EEE6DFA0](sub_1AE1B11E0, 0, 0);
}

uint64_t sub_1AE1B11E0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[21];
    v3 = *(Strong + 24);
    v0[29] = v3;

    v5 = v2(v4);

    v6 = swift_task_alloc();
    v0[30] = v6;
    *v6 = v0;
    v6[1] = sub_1AE1B134C;
    v7 = v0[23];
    v8 = v0[24];
    v9 = v0[20];

    return sub_1AE1B4AC0(v9, v5 & 1, v3, v7, v8);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

void sub_1AE1B134C()
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

uint64_t sub_1AE1B149C(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 136) = a6;
  *(v7 + 144) = v6;
  *(v7 + 120) = a4;
  *(v7 + 128) = a5;
  *(v7 + 208) = a3;
  *(v7 + 112) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  *(v7 + 152) = v9;
  *(v7 + 160) = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v7 + 168) = v10;
  *(v7 + 176) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1AE1B157C, 0, 0);
}

uint64_t sub_1AE1B15A4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1AE1B16DC;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v0[10] = &unk_1AE254520;
  v0[11] = v5;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE1B16DC()
{
  v1 = *v0;
  v10 = *v0;
  *(v1 + 104) = *(*v0 + 176);
  v2 = v1 + 104;
  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  *v3 = v10;
  v3[1] = sub_1AE1B1818;
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 104);
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);

  return sub_1AE1AAD98(v7, v2, v6, v8, v4, v5);
}

uint64_t sub_1AE1B1818()
{
  v2 = *v1;
  *(v2 + 200) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AE1B1954, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AE1B1954()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CRAssetManager.deinit()
{

  sub_1ADDCEDE0(v0 + 56, &qword_1EB5B9DB0, &qword_1AE240B80);

  v1 = OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory;
  v2 = sub_1AE23BDDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CRAssetManager.__deallocating_deinit()
{
  CRAssetManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1AE1B1B10(uint64_t a1)
{
  if (!qword_1EB5B95C8)
  {
    sub_1AE23BDDC();
    v1 = sub_1AE23D7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB5B95C8);
    }
  }
}

void sub_1AE1B1C3C(uint64_t a1)
{
  sub_1AE1B1B10(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1AE1B1CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  result = a6(319, a2, a3);
  if (v8 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE1B1DC4(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      sub_1AE23C9BC();
      sub_1ADDCEF80(&qword_1EB5BB808, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1AE23C93C();
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1AE1B1FA4(v6, v7);
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_1AE1B1FA4(v6, v7);
  }

  sub_1AE23C9BC();
  sub_1ADDCEF80(&qword_1EB5BB808, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1AE23C93C();
}

uint64_t sub_1AE1B1FA4(uint64_t a1, uint64_t a2)
{
  result = sub_1AE23BB7C();
  if (!result || (result = sub_1AE23BBAC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1AE23BB9C();
      sub_1AE23C9BC();
      sub_1ADDCEF80(&qword_1EB5BB808, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1AE23C93C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1B2084(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AE23E31C();
  sub_1AE23CDAC();
  v6 = sub_1AE23E34C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1AE23E00C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1ADEC7A64();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1AE1B21C0(v8);
  *v2 = v16;
  return v12;
}

void sub_1AE1B21C0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AE23D8FC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1AE23E31C();

        sub_1AE23CDAC();
        v10 = sub_1AE23E34C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

uint64_t sub_1AE1B2384(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA30, &qword_1AE2456B8);
  result = sub_1AE23D9FC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1AE23E31C();
    sub_1ADDD86D8(v17, v18);
    sub_1AE23BECC();
    result = sub_1AE23E34C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1AE1B25AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B0, &qword_1AE254430);
  result = sub_1AE23D9FC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1AE23E31C();

    sub_1AE23CDAC();
    result = sub_1AE23E34C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1AE1B27D0(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1AE1B2084(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1AE1B28FC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1AE23E31C();

    sub_1AE23CDAC();
    v23 = sub_1AE23E34C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1AE23E00C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1AE1B25AC(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1AE23E31C();

            sub_1AE23CDAC();
            v41 = sub_1AE23E34C();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1AE23E00C() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1AE1B2E6C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1B26FDA50](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_1ADDDCE74(v13);
    return v5;
  }

  result = MEMORY[0x1B26FDA50](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_1AE1B2E6C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1AE1B25AC(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1AE23E31C();

        sub_1AE23CDAC();
        v19 = sub_1AE23E34C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1AE23E00C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1AE1B30A4(uint64_t a1)
{
  v4 = *(sub_1AE23BDDC() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1ADE744B8;

  return sub_1AE1ADE84(a1, v1 + v5, v7, v8);
}

uint64_t sub_1AE1B31BC(uint64_t a1)
{
  v4 = *(sub_1AE23BDDC() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE744B8;

  return sub_1AE1ADDD8(a1, v1 + v5, v6);
}

uint64_t objectdestroy_75Tm()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

double sub_1AE1B3368(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - v6;
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17[0] = v5;
    v17[1] = Strong;
    (*(v9 + 16))(v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v14 = swift_allocObject();
    (*(v9 + 32))(v14 + v13, v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v15 = (v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v15 = sub_1AE1B5928;
    v15[1] = v11;
    v19 = &unk_1AE254450;
    v20 = v14;
    swift_weakInit();
    _Block_copy(a3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
    sub_1AE23D1FC();

    (*(v18 + 8))(v7, v17[0]);
  }

  else
  {
    _Block_copy(a3);
    a3[2](a3, 0);
  }

  return result;
}

double sub_1AE1B365C(uint64_t a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v24 - v7;
  v9 = sub_1AE23BDDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - v14;
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  sub_1ADDCEE40(a1 + OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemURL, v8, &qword_1EB5B9DC0, &qword_1AE240B90);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    _Block_copy(a2);
    sub_1ADDCEDE0(v8, &qword_1EB5B9DC0, &qword_1AE240B90);
LABEL_6:
    a2[2](a2, 0);
    goto LABEL_7;
  }

  v25 = v4;
  v16 = *(v10 + 32);
  v16(v15, v8, v9);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    _Block_copy(a2);
    (*(v10 + 8))(v15, v9);
    goto LABEL_6;
  }

  v24[1] = *(Strong + 24);
  v24[2] = Strong;
  (*(v10 + 16))(v12, v15, v9);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v16((v19 + v18), v12, v9);
  v20 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v28;
  *v20 = sub_1AE1B3A5C;
  v20[1] = v21;
  v29 = &unk_1AE254448;
  v30 = v19;
  swift_weakInit();
  _Block_copy(a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  v22 = v26;
  sub_1AE23D1FC();

  (*(v27 + 8))(v22, v25);
  (*(v10 + 8))(v15, v9);

LABEL_7:

  return result;
}

uint64_t sub_1AE1B3A64(uint64_t a1)
{
  v4 = *(sub_1AE23BDDC() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1ADE744B8;

  return sub_1AE1AE090(a1, v1 + v5, v7, v8);
}

uint64_t objectdestroy_71Tm()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AE1B3C24()
{
  v1 = *(sub_1AE23BDDC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1AE1AE7E4(v2, v3);
}

uint64_t sub_1AE1B3C88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1ADE74240;

  return sub_1AE1A4E08(a1, v4, v5, v7, v6);
}

uint64_t sub_1AE1B3D50(uint64_t a1)
{
  v4 = *(sub_1AE23BFEC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1ADE744B8;

  return sub_1AE1A5528(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1AE1B3E48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE744B8;

  return sub_1AE1AFD1C(a1, v4, v5, v6);
}

uint64_t sub_1AE1B3EF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1ADE744B8;

  return sub_1AE1A7FFC(a1, v4);
}

uint64_t sub_1AE1B3F94(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 216) = a2;
  *(v5 + 88) = a1;
  *(v5 + 96) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  *(v5 + 120) = swift_task_alloc();
  v7 = sub_1AE23BDDC();
  *(v5 + 128) = v7;
  *(v5 + 136) = *(v7 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B40A4, a3, 0);
}

uint64_t sub_1AE1B40A4()
{
  v40 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = sub_1AE23C78C();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_1ED96F1C8);

  v2 = sub_1AE23C76C();
  v3 = sub_1AE23D60C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1AE1FB594(*(v4 + 120), *(v4 + 128), &v39);
    *(v6 + 12) = 2080;
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    sub_1ADDD86D8(v8, v9);
    v10 = sub_1AE23BEAC();
    *(v0 + 40) = v10;
    *(v0 + 48) = v11;
    *(v0 + 56) = 47;
    *(v0 + 64) = 0xE100000000000000;
    *(v0 + 72) = 95;
    *(v0 + 80) = 0xE100000000000000;
    sub_1ADE42DEC(v10, v11, v12);
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v8, v9);

    v16 = sub_1AE1FB594(v13, v15, &v39);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v2, v3, "%s readAsset %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v7, -1, -1);
    MEMORY[0x1B26FDA50](v6, -1, -1);
  }

  v17 = *(v0 + 88);
  v18 = *(v0 + 96);
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();
  v21 = *(v18 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_11;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_11;
  }

  v24 = *(v0 + 216);
  v25 = (*(v21 + 56) + 24 * v22);
  *(v0 + 168) = *v25;
  v26 = v25[1];
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  if ((v24 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 16);
    swift_unknownObjectRetain();
    LOBYTE(ObjectType) = v28(ObjectType, v26);
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      swift_unknownObjectRelease();
LABEL_11:

      v29 = *(v0 + 8);

      return v29(1);
    }
  }

  v31 = *(v0 + 96);
  v32 = swift_getObjectType();
  v33 = *(v31 + 120);
  *(v0 + 176) = v33;
  v34 = *(v31 + 128);
  *(v0 + 184) = v34;
  v35 = *(v26 + 32);
  swift_unknownObjectRetain();
  v38 = (v35 + *v35);
  v36 = swift_task_alloc();
  *(v0 + 192) = v36;
  *v36 = v0;
  v36[1] = sub_1AE1B4544;
  v37 = *(v0 + 120);

  return v38(v37, v33, v34, v32, v26);
}

uint64_t sub_1AE1B4544()
{
  v1 = *(*v0 + 96);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B4670, v1, 0);
}

uint64_t sub_1AE1B4670()
{
  v29 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);

    v4 = v0[1];

    return v4(1);
  }

  else
  {
    v6 = v0[19];
    v7 = v0[18];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v7, v6, v1);

    v8 = sub_1AE23C76C();
    v9 = sub_1AE23D60C();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[22];
      v10 = v0[23];
      v13 = v0[17];
      v12 = v0[18];
      v14 = v0[16];
      v15 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v15 = 136315394;
      *(v15 + 4) = sub_1AE1FB594(v11, v10, &v28);
      *(v15 + 12) = 2080;
      sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v16 = sub_1AE23DD9C();
      v18 = v17;
      v21 = *(v13 + 8);
      v20 = v13 + 8;
      v19 = v21;
      v21(v12, v14);
      v22 = sub_1AE1FB594(v16, v18, &v28);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_1ADDCA000, v8, v9, "%s reading url %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v27, -1, -1);
      MEMORY[0x1B26FDA50](v15, -1, -1);
    }

    else
    {
      v24 = v0[17];
      v23 = v0[18];
      v25 = v0[16];

      v26 = *(v24 + 8);
      v20 = v24 + 8;
      v19 = v26;
      v26(v23, v25);
    }

    v0[25] = v20;
    v0[26] = v19;

    return MEMORY[0x1EEE6DFA0](sub_1AE1B4980, 0, 0);
  }
}

uint64_t sub_1AE1B4980()
{
  v1 = *(v0 + 96);
  (*(v0 + 104))(*(v0 + 152));

  return MEMORY[0x1EEE6DFA0](sub_1AE1B49F4, v1, 0);
}

uint64_t sub_1AE1B49F4()
{
  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[16];

  v1(v2, v3);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1AE1B4AC0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 216) = a2;
  *(v5 + 88) = a1;
  *(v5 + 96) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  *(v5 + 120) = swift_task_alloc();
  v7 = sub_1AE23BDDC();
  *(v5 + 128) = v7;
  *(v5 + 136) = *(v7 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B4BD0, a3, 0);
}

uint64_t sub_1AE1B4BD0()
{
  v40 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = sub_1AE23C78C();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_1ED96F1C8);

  v2 = sub_1AE23C76C();
  v3 = sub_1AE23D60C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1AE1FB594(*(v4 + 120), *(v4 + 128), &v39);
    *(v6 + 12) = 2080;
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    sub_1ADDD86D8(v8, v9);
    v10 = sub_1AE23BEAC();
    *(v0 + 40) = v10;
    *(v0 + 48) = v11;
    *(v0 + 56) = 47;
    *(v0 + 64) = 0xE100000000000000;
    *(v0 + 72) = 95;
    *(v0 + 80) = 0xE100000000000000;
    sub_1ADE42DEC(v10, v11, v12);
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v8, v9);

    v16 = sub_1AE1FB594(v13, v15, &v39);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v2, v3, "%s readAsset %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v7, -1, -1);
    MEMORY[0x1B26FDA50](v6, -1, -1);
  }

  v17 = *(v0 + 88);
  v18 = *(v0 + 96);
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();
  v21 = *(v18 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_11;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_11;
  }

  v24 = *(v0 + 216);
  v25 = (*(v21 + 56) + 24 * v22);
  *(v0 + 168) = *v25;
  v26 = v25[1];
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  if ((v24 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 16);
    swift_unknownObjectRetain();
    LOBYTE(ObjectType) = v28(ObjectType, v26);
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      swift_unknownObjectRelease();
LABEL_11:

      v29 = *(v0 + 8);

      return v29(1);
    }
  }

  v31 = *(v0 + 96);
  v32 = swift_getObjectType();
  v33 = *(v31 + 120);
  *(v0 + 176) = v33;
  v34 = *(v31 + 128);
  *(v0 + 184) = v34;
  v35 = *(v26 + 32);
  swift_unknownObjectRetain();
  v38 = (v35 + *v35);
  v36 = swift_task_alloc();
  *(v0 + 192) = v36;
  *v36 = v0;
  v36[1] = sub_1AE1B5070;
  v37 = *(v0 + 120);

  return v38(v37, v33, v34, v32, v26);
}

uint64_t sub_1AE1B5070()
{
  v1 = *(*v0 + 96);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B519C, v1, 0);
}

uint64_t sub_1AE1B519C()
{
  v29 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);

    v4 = v0[1];

    return v4(1);
  }

  else
  {
    v6 = v0[19];
    v7 = v0[18];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v7, v6, v1);

    v8 = sub_1AE23C76C();
    v9 = sub_1AE23D60C();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[22];
      v10 = v0[23];
      v13 = v0[17];
      v12 = v0[18];
      v14 = v0[16];
      v15 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v15 = 136315394;
      *(v15 + 4) = sub_1AE1FB594(v11, v10, &v28);
      *(v15 + 12) = 2080;
      sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v16 = sub_1AE23DD9C();
      v18 = v17;
      v21 = *(v13 + 8);
      v20 = v13 + 8;
      v19 = v21;
      v21(v12, v14);
      v22 = sub_1AE1FB594(v16, v18, &v28);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_1ADDCA000, v8, v9, "%s reading url %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v27, -1, -1);
      MEMORY[0x1B26FDA50](v15, -1, -1);
    }

    else
    {
      v24 = v0[17];
      v23 = v0[18];
      v25 = v0[16];

      v26 = *(v24 + 8);
      v20 = v24 + 8;
      v19 = v26;
      v26(v23, v25);
    }

    v0[25] = v20;
    v0[26] = v19;

    return MEMORY[0x1EEE6DFA0](sub_1AE1B54AC, 0, 0);
  }
}

uint64_t sub_1AE1B54AC()
{
  v1 = *(v0 + 96);
  (*(v0 + 104))(*(v0 + 152));

  return MEMORY[0x1EEE6DFA0](sub_1AE1B58E8, v1, 0);
}

double sub_1AE1B5574(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1ADDCC35C(a1, a2);
  }

  return result;
}

uint64_t objectdestroy_134Tm()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AE1B55F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE744B8;

  return sub_1AE1AD6F8(a1, v4, v5, v6);
}

uint64_t sub_1AE1B56B0(uint64_t a1)
{
  v4 = *(sub_1AE23BDDC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1ADE744B8;

  return sub_1AE1AF560(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1AE1B57CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1ADE744B8;

  return sub_1AE1B02E4(a1, v5, v4);
}

uint64_t sub_1AE1B5950(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD40, &qword_1AE2545A8);
  sub_1AE23CA3C();
  swift_endAccess();
  v6 = sub_1ADE5534C(0, v2, 0, v3);
  v7 = (a1 + 32);
  v52 = v4;
  while (1)
  {
    v8 = *v7;
    swift_beginAccess();
    v9 = v8[8];
    v10 = v8[9];
    v11 = v8[10];
    v12 = v9 ? v8[9] : 0;
    v13 = v9 ? v8[10] : 0xC000000000000000;
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_42;
      }

      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
    }

    else
    {
      if (!v14)
      {
        if ((v13 & 0xFF000000000000) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_17;
      }

      v15 = v12;
      v16 = v12 >> 32;
    }

    if (v15 == v16)
    {
LABEL_42:
      v42 = v8[8];
      v43 = v8[9];
      v44 = v8[10];
      sub_1ADE42E40(v9, v10, v11);
      v6 = swift_allocError();
      *v45 = 0xD000000000000016;
      *(v45 + 8) = 0x80000001AE25FC80;
      *(v45 + 16) = 0;
      swift_willThrow();
      sub_1ADE56F74(v42, v43, v44);

      sub_1ADDCC35C(v12, v13);

      return v6;
    }

LABEL_17:
    v47 = v7;
    v48 = v2;
    sub_1ADE56F74(v9, v10, v11);

    sub_1ADDD86D8(v12, v13);

    sub_1ADDCC35C(v12, v13);
    swift_beginAccess();
    v17 = v8[5];
    v18 = v8[6];
    v19 = v17 ? v8[5] : v3;
    v20 = v17 ? v8[6] : v3;
    v50 = v19;
    v51 = v20;
    swift_beginAccess();
    if (v8[7])
    {
      inited = v8[7];
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }

    swift_beginAccess();
    sub_1ADDD86D8(v12, v13);
    sub_1ADE42C78(v17, v18);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 40);
    *(v4 + 40) = 0x8000000000000000;
    v24 = sub_1ADDDE7CC(v12, v13);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      v31 = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        v32 = v22;
        if (v23)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_1ADF6F47C();
        v32 = v22;
        if (v28)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      sub_1ADF698B8(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_1ADDDE7CC(v12, v13);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_46;
      }

      v24 = v29;
      v31 = v6;
      v32 = v22;
      if (v28)
      {
LABEL_33:
        v33 = (v32[7] + 24 * v24);
        *v33 = v50;
        v33[1] = v51;
        v33[2] = inited;

        sub_1ADDCC35C(v12, v13);
        goto LABEL_37;
      }
    }

    v32[(v24 >> 6) + 8] |= 1 << v24;
    v34 = (v32[6] + 16 * v24);
    *v34 = v12;
    v34[1] = v13;
    v35 = (v32[7] + 24 * v24);
    *v35 = v50;
    v35[1] = v51;
    v35[2] = inited;
    v36 = v32[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_45;
    }

    v32[2] = v38;
LABEL_37:
    *(v52 + 40) = v32;
    swift_endAccess();
    v6 = v31;
    v40 = *(v31 + 16);
    v39 = *(v31 + 24);
    v3 = MEMORY[0x1E69E7CC0];
    if (v40 >= v39 >> 1)
    {
      v6 = sub_1ADE5534C((v39 > 1), v40 + 1, 1, v31);
    }

    *(v6 + 16) = v40 + 1;
    v41 = v6 + 16 * v40;
    *(v41 + 32) = v12;
    *(v41 + 40) = v13;
    v7 = v47 + 1;
    v2 = v48 - 1;
    v4 = v52;
    if (v48 == 1)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

void sub_1AE1B5DC4(void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(*(a2 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));

      if (!v11)
      {
        break;
      }

      v12 = a1[3];
      v13 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v12);
      if ((*(v13 + 8))(v12, v13) & 1) != 0 || (v14 = a1[3], v15 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v14), ((*(v15 + 8))(v14, v15)))
      {

        break;
      }

      v7 &= v7 - 1;
      (*(*v11 + 120))(a1);

      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_13:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void *sub_1AE1B5F68(uint64_t a1, uint64_t a2)
{
  v32 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
  sub_1AE23CA3C();
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = v32;
  v8 = (v4 + 63) >> 6;
  v30 = a2;

  v9 = 0;
  v28 = a2 + 64;
  while (v6)
  {
    v10 = v9;
LABEL_11:
    v11 = (v10 << 9) | (8 * __clz(__rbit64(v6)));
    v12 = *(*(v30 + 48) + v11);
    v13 = *(*(v30 + 56) + v11);

    if (!v13)
    {
LABEL_21:

      return v7;
    }

    v14 = (*(*v13 + 104))(a1);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v7;
    v16 = sub_1ADF4A3F0(v12);
    v18 = v7[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_23;
    }

    v22 = v17;
    if (v7[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = v16;
        sub_1ADF711F8();
        v16 = v26;
      }
    }

    else
    {
      sub_1ADF6C5C8(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1ADF4A3F0(v12);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_25;
      }
    }

    v6 &= v6 - 1;
    v7 = v31;
    if (v22)
    {
      *(v31[7] + 8 * v16) = v14;
    }

    else
    {
      v31[(v16 >> 6) + 8] |= 1 << v16;
      *(v31[6] + 8 * v16) = v12;
      *(v31[7] + 8 * v16) = v14;

      v24 = v31[2];
      v20 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v20)
      {
        goto LABEL_24;
      }

      v31[2] = v25;
    }

    v9 = v10;
    v3 = v28;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_21;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

void sub_1AE1B61F4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_10:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(**(*(a1 + 56) + ((v8 << 9) | (8 * v9))) + 128);

    LOBYTE(v10) = v10(v11);

    if (v10)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_11;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void _s9Coherence22UnknownValuePropertiesV18finalizeTimestampsyyAA9CRContextCF_0(uint64_t a1)
{
  v2 = *v1;
  sub_1AE1B61F4(*v1);
  if ((v3 & 1) == 0)
  {
    return;
  }

  v31 = v1;
  v35 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
  sub_1AE23CA3C();
  v4 = 0;
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = v35;
  v10 = (v6 + 63) >> 6;
  v33 = v2;
  while (v8)
  {
LABEL_12:
    v12 = (v4 << 9) | (8 * __clz(__rbit64(v8)));
    v13 = *(*(v2 + 48) + v12);
    v14 = *(*(v2 + 56) + v12);

    if (!v14)
    {
LABEL_27:

      *v31 = v9;
      return;
    }

    v15 = *(*v14 + 128);

    v17 = v15(v16);

    if (v17)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = (*(*v14 + 144))();

        v14 = v18;
      }

      (*(*v14 + 136))(a1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v9;
    v20 = sub_1ADF4A3F0(v13);
    v22 = v9[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_30;
    }

    v26 = v21;
    if (v9[3] < v25)
    {
      sub_1ADF6C5C8(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1ADF4A3F0(v13);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_32;
      }

LABEL_22:
      if (v26)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v30 = v20;
    sub_1ADF711F8();
    v20 = v30;
    v9 = v34;
    if (v26)
    {
LABEL_5:
      *(v9[7] + 8 * v20) = v14;

      goto LABEL_6;
    }

LABEL_23:
    v9[(v20 >> 6) + 8] |= 1 << v20;
    *(v9[6] + 8 * v20) = v13;
    *(v9[7] + 8 * v20) = v14;
    v28 = v9[2];
    v24 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v24)
    {
      goto LABEL_31;
    }

    v9[2] = v29;
LABEL_6:
    v8 &= v8 - 1;

    v2 = v33;
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      goto LABEL_27;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      v4 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_1AE23E27C();
  __break(1u);
}

Coherence::UnknownValueProperties __swiftcall UnknownValueProperties.copy(renamingReferences:)(Swift::OpaquePointer_optional renamingReferences)
{
  v3 = v1;
  v4 = *v2;
  if (renamingReferences.value._rawValue)
  {
    rawValue = renamingReferences.value._rawValue;
  }

  else
  {
    rawValue = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v8 = rawValue;

  v6 = sub_1AE1B5F68(&v8, v4);

  *v3 = v6;
  return result;
}

Coherence::UnknownValueProperties __swiftcall UnknownValueProperties.copy(renamingReferences:)(Swift::OpaquePointer *renamingReferences)
{
  v3 = v1;
  result.properties._rawValue = sub_1AE1B5F68(renamingReferences, *v2);
  v3->properties._rawValue = result.properties._rawValue;
  return result;
}

void UnknownValueProperties.encode(to:)()
{
  v2 = v1;
  v3 = *v0;
  v4 = *v0 + 64;
  v5 = 1 << *(*v0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v0 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(*(v3 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));

      sub_1ADF8A7DC(v12, v11);
      if (v2)
      {
        break;
      }

      v7 &= v7 - 1;

      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_12;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t UnknownValueProperties.hashValue.getter()
{
  v1 = *v0;
  sub_1AE23E31C();
  sub_1ADDF5580(v3, v1);
  return sub_1AE23E34C();
}

uint64_t UnknownValueProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ADF4E010(a1, v10);
  sub_1ADF7EF28(v5, v6, v7);
  v8 = sub_1AE23CB5C();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1AE1B6940@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ADF4E010(a1, v10);
  sub_1ADF7EF28(v5, v6, v7);
  v8 = sub_1AE23CB5C();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1AE1B6A38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v1 = MEMORY[0x1E69E7508];
  v2 = MEMORY[0x1E69E7558];
  *(v0 + 56) = MEMORY[0x1E69E7508];
  *(v0 + 64) = v2;
  *(v0 + 32) = v3;
  sub_1AE23BFCC();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 72) = v4;
  v7 = sub_1AE23CD3C();
  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  type metadata accessor for Replica(0);
  v5 = sub_1AE23DD9C();
  MEMORY[0x1B26FB670](v5);

  return v7;
}

double sub_1AE1B6B44(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v7 = swift_allocObject();
    v8 = *(v6 + 16);
    *(v7 + 16) = v8;
    sub_1ADE51B2C(v8);

    *v2 = v7;
    v6 = v7;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = v9 | 0x4000000000000004;
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  return sub_1ADE51B48(v11);
}

double sub_1AE1B6BF8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v7 = swift_allocObject();
    v8 = *(v6 + 16);
    *(v7 + 16) = v8;
    sub_1ADE51B2C(v8);

    *v2 = v7;
    v6 = v7;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = v9 | 0x6000000000000004;
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  return sub_1ADE51B48(v11);
}

double sub_1AE1B6CF4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE5215C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  v8 = *(a1 + 80);
  *(v7 + 80) = *(a1 + 64);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(a1 + 96);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  v10 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v10;
  v11 = v7 | 0x4000000000000000;
  v12 = *(v4 + 16);
  *(v4 + 16) = v11;

  return sub_1ADE52174(v12);
}

double sub_1AE1B6DB0(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v7 = swift_allocObject();
    v8 = *(v6 + 16);
    *(v7 + 16) = v8;
    sub_1ADE51B2C(v8);

    *v2 = v7;
    v6 = v7;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = v9 | 0x3000000000000000;
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  return sub_1ADE51B48(v11);
}

double sub_1AE1B6EA4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE5215C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  v8 = *(a1 + 80);
  *(v7 + 80) = *(a1 + 64);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(a1 + 96);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  v10 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v10;
  v11 = v7 | 0x5000000000000000;
  v12 = *(v4 + 16);
  *(v4 + 16) = v11;

  return sub_1ADE52174(v12);
}

double sub_1AE1B6F64(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE5215C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v7 | 0x9000000000000000;
  v9 = *(v4 + 16);
  *(v4 + 16) = v8;

  return sub_1ADE52174(v9);
}

double sub_1AE1B7008(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE51B2C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v7 | 0x2000000000000000;
  v9 = *(v4 + 16);
  *(v4 + 16) = v8;

  return sub_1ADE51B48(v9);
}

double sub_1AE1B70A8(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE51B2C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v7 | 0x1000000000000000;
  v9 = *(v4 + 16);
  *(v4 + 16) = v8;

  return sub_1ADE51B48(v9);
}

double sub_1AE1B7148(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE51B2C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v7 | 4;
  v9 = *(v4 + 16);
  *(v4 + 16) = v8;

  return sub_1ADE51B48(v9);
}

double sub_1AE1B71F0(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE51B2C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v7 | 0x5000000000000000;
  v9 = *(v4 + 16);
  *(v4 + 16) = v8;

  return sub_1ADE51B48(v9);
}

double sub_1AE1B7294(float a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE51B2C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v7 | 0x7000000000000000;
  v9 = *(v4 + 16);
  *(v4 + 16) = v8;

  return sub_1ADE51B48(v9);
}

double sub_1AE1B733C(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE51B2C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v7 | 0x2000000000000004;
  v9 = *(v4 + 16);
  *(v4 + 16) = v8;

  return sub_1ADE51B48(v9);
}

double sub_1AE1B73E4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE51B2C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a1 + 32);
  v9 = v7 | 0x6000000000000000;
  v10 = *(v4 + 16);
  *(v4 + 16) = v9;

  return sub_1ADE51B48(v10);
}

double sub_1AE1B7490(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE51B2C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v7 | 0x4000000000000000;
  v9 = *(v4 + 16);
  *(v4 + 16) = v8;

  return sub_1ADE51B48(v9);
}

double sub_1AE1B7530(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE51B2C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v7 | 0x5000000000000004;
  v9 = *(v4 + 16);
  *(v4 + 16) = v8;

  return sub_1ADE51B48(v9);
}

uint64_t sub_1AE1B7620(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v11 = swift_allocObject();
    *(v11 + 16) = *(v10 + 16);
    a3();

    *v5 = v11;
    v10 = v11;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = v12 | 0x8000000000000000;
  v14 = *(v10 + 16);
  *(v10 + 16) = v13;

  return a5(v14);
}

double sub_1AE1B76EC(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE51B2C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v7 | 0x3000000000000004;
  v9 = *(v4 + 16);
  *(v4 + 16) = v8;

  return sub_1ADE51B48(v9);
}

double sub_1AE1B7794(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE51B2C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v7 | 0x7000000000000004;
  v9 = *(v4 + 16);
  *(v4 + 16) = v8;

  return sub_1ADE51B48(v9);
}

uint64_t sub_1AE1B7884(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v11 = swift_allocObject();
    *(v11 + 16) = *(v10 + 16);
    a3();

    *v5 = v11;
    v10 = v11;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  return a5(v13);
}

double sub_1AE1B7950(_OWORD *a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = v6;
    sub_1ADE5215C(v6);

    *v1 = v5;
    v4 = v5;
  }

  v7 = swift_allocObject();
  v8 = a1[3];
  *(v7 + 48) = a1[2];
  *(v7 + 64) = v8;
  *(v7 + 80) = a1[4];
  v9 = a1[1];
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  v10 = v7 | 0x1000000000000000;
  v11 = *(v4 + 16);
  *(v4 + 16) = v10;

  return sub_1ADE52174(v11);
}

uint64_t sub_1AE1B7A04(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      if (v4 >> 62 == 1)
      {
        v5 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        v6 = v4 & 0x3FFFFFFFFFFFFFFFLL;

        return sub_1AE1BA510(v5, v6);
      }
    }

    else if (v4 >> 62 == 2)
    {
      return sub_1AE1CDDA8(v3 & 0x3FFFFFFFFFFFFFFFLL, v4 & 0x3FFFFFFFFFFFFFFFLL, sub_1AE1C1AA0) & 1;
    }

    return 0;
  }

  if (v4 >> 62)
  {
    return 0;
  }

  return sub_1AE1BBD2C(v3, v4);
}

uint64_t sub_1AE1B7AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0958(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1AE1B7B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0BF8(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

unint64_t sub_1AE1B7B80@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1AE1B7BA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1AE1B7BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0E20(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1AE1B7C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0EC8(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1AE1B7C6C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7958);
  __swift_project_value_buffer(v0, qword_1EB5D7958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1AE252440;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "crdt";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1AE23C67C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "value";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "reference";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "references";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "version";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "constants";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "assets";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "versionUuid";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "deltaReferences";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "minVersion";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  return sub_1AE23C68C();
}

void sub_1AE1B8020(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v11 = 0;
  v6 = *a1 & 0xF000000000000007;
  if (v6 != 0xF000000000000007 && (*a1 & 0xC000000000000000) == 0x4000000000000000)
  {
    v11 = *a1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  sub_1AE1CB7C4(a1, a2, a3);
  sub_1AE23C4FC();
  v8 = v11;
  if (v4)
  {
  }

  else if (v11)
  {
    if (v6 != 0xF000000000000007)
    {
      sub_1AE23C39C();
      v8 = v11;
    }

    v9 = v8 | 0x4000000000000000;
    v10 = *v5;
    *v5 = v9;
    sub_1ADE73AC8(v10);
  }
}

uint64_t sub_1AE1B8114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*v5 & 0xF000000000000007) != 0)
  {
    v20 = *v5 >> 62;
    if (v20)
    {
      if (v20 == 1)
      {
        result = sub_1AE1B8458(v5, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        result = sub_1AE1B84E8(v5, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }
    }

    else
    {
      result = sub_1AE1B83D0(v5, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }
  }

  result = sub_1AE1B8578(v5, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v14 = sub_1AE1B85F0(v5, a1, a2, a3);
  if (*(v5[4] + 16))
  {
    sub_1AE1CADD8(v14, v15, v16);
    sub_1AE23C65C();
  }

  v17 = v5[5];
  v18 = v5[6];
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_22;
    }

    v21 = *(v17 + 16);
    v22 = *(v17 + 24);
  }

  else
  {
    if (!v19)
    {
      if ((v18 & 0xFF000000000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v21 = v17;
    v22 = v17 >> 32;
  }

  if (v21 != v22)
  {
LABEL_21:
    v17 = sub_1AE23C5CC();
  }

LABEL_22:
  if (*(v5[7] + 16))
  {
    sub_1AE1CA5AC(v17, v18, v16);
    sub_1AE23C65C();
  }

  v23 = sub_1AE1B8670(v5, a1, a2, a3);
  if (*(v5[3] + 16))
  {
    sub_1AE1CA5AC(v23, v24, v25);
    sub_1AE23C65C();
  }

  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v10 + 8))(v12, v9);
}

unint64_t *sub_1AE1B83D0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result >> 62)
  {
    v4 = 1;
  }

  else
  {
    v4 = (*result & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_1AE1CB668(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t *sub_1AE1B8458(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xC000000000000000) == 0x4000000000000000)
  {
    sub_1AE1CB7C4(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1AE1B84E8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xC000000000000000) == 0x8000000000000000)
  {
    sub_1AE1CA5AC(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1B8578(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 64))
  {
    sub_1AE1CAF38(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1B85F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 96))
  {
    sub_1ADEDC930(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1B8670(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 112))
  {
    sub_1AE1CAF38(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1B8710(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1B8810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1CB9CC(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1B8880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADE73BC8(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1B88BC(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1B893C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE73BC8(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1B8988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1B8A04(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return sub_1AE1B86E8(v13, v14) & 1;
}

uint64_t sub_1AE1B8A78()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7970);
  __swift_project_value_buffer(v0, qword_1EB5D7970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1AE254790;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "uint";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1AE23C67C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "double";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "string";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "data";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sint";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "uuid";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "version";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "reference";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "optional";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "timestamp";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "repeatedValue";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "taggedValue";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "asset";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "custom";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "float";
  *(v34 + 1) = 5;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "weakReference";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "strongReference";
  *(v37 + 8) = 15;
  *(v37 + 16) = 2;
  v8();
  return sub_1AE23C68C();
}

void sub_1AE1B93F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v13 = 0;
  v14 = 0;
  v6 = *(a1 + 16);
  v7 = v6 & 0xF000000000000007;
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 6)
  {
    v9 = v6 & 0xFFFFFFFFFFFFFFBLL;
    v13 = *(v9 + 16);
    v14 = *(v9 + 24);
  }

  sub_1AE1CAF38(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
    sub_1ADE42CB8(v13, v14);
  }

  else if (v13)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v13;
    *(v10 + 24) = v14;
    v11 = v10 | 0x3000000000000000;
    v12 = *(v5 + 16);
    *(v5 + 16) = v11;
    sub_1ADE51B48(v12);
  }
}

double sub_1AE1B9538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0uLL;
  v14 = 1;
  v6 = *(a1 + 16);
  v7 = v6 & 0xF000000000000007;
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 9)
  {
    v13 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v14 = 0;
  }

  sub_1AE1CB1F0(a1, a2, a3);
  sub_1AE23C4FC();
  if (!v4 && (v14 & 1) == 0)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v13;
    v11 = v10 | 0x4000000000000004;
    v12 = *(a1 + 16);
    *(a1 + 16) = v11;
    return sub_1ADE51B48(v12);
  }

  return result;
}

void sub_1AE1B9654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v12 = 0;
  v6 = *(a1 + 16);
  v7 = v6 & 0xF000000000000007;
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 10)
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  sub_1AE1C9D78(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
  }

  else if (v12)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    v10 = v9 | 0x5000000000000000;
    v11 = *(v5 + 16);
    *(v5 + 16) = v10;
    sub_1ADE51B48(v11);
  }
}

double sub_1AE1B9778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v17 = 0;
  v18 = 0;
  v19 = 0xF000000000000000;
  v20 = 0;
  v6 = *(a1 + 16);
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 12)
  {

    sub_1AE1D00A0(0, 0, 0xF000000000000000, 0, 0);
    v16 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v8 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    v9 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v22 = v5;
    v10 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v11 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    sub_1ADDD86D8(v8, v9);
    sub_1ADDD86D8(v10, v11);
    sub_1ADE51B48(v6);
    v17 = v16;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v5 = v22;
    v21 = v11;
  }

  sub_1AE1CADD8(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4 || v19 >> 60 == 15)
  {
    sub_1AE1D00A0(v17, v18, v19, v20, v21);
  }

  else
  {
    sub_1ADDD86D8(v18, v19);
    sub_1ADDD86D8(v20, v21);
    if ((v6 & 0xF000000000000007) != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    sub_1AE1D00A0(v17, v18, v19, v20, v21);
    v13 = swift_allocObject();
    *(v13 + 16) = v17;
    *(v13 + 24) = v18;
    *(v13 + 32) = v19;
    *(v13 + 40) = v20;
    *(v13 + 48) = v21;
    v14 = v13 | 0x6000000000000000;
    v15 = *(v5 + 16);
    *(v5 + 16) = v14;
    return sub_1ADE51B48(v15);
  }

  return result;
}

void sub_1AE1B9BBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = *(result + 16);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    switch((v5 >> 59) & 0x1E | (v5 >> 2) & 1)
    {
      case 1uLL:
        sub_1AE1B9CE8(result, a2, a3, a4);
        break;
      case 2uLL:
        sub_1AE1B9D4C(result, a5, a2, a3, a4);
        break;
      case 3uLL:
        sub_1AE1B9DA8(result, a2, a3, a4);
        break;
      case 4uLL:
        sub_1AE1B9E54(result);
        break;
      case 5uLL:
        sub_1AE1B9EB0(result, a5, a2, a3, a4);
        break;
      case 6uLL:
        sub_1AE1B9F0C(result, a2, a3, a4);
        break;
      case 7uLL:
        sub_1AE1B9FA8(result, a2, a3, a4);
        break;
      case 8uLL:
        sub_1AE1BA044(result, a2, a3, a4);
        break;
      case 9uLL:
        sub_1AE1BA0E0(result, a2, a3, a4);
        break;
      case 0xAuLL:
        sub_1AE1BA17C(result, a2, a3, a4);
        break;
      case 0xBuLL:
        sub_1AE1BA218(result, a2, a3, a4);
        break;
      case 0xCuLL:
        sub_1AE1BA2B4(result, a2, a3, a4);
        break;
      case 0xDuLL:
        sub_1AE1BA358(result, a2, a3, a4);
        break;
      case 0xEuLL:
        sub_1AE1BA3F4(result, a2, a3, a4);
        break;
      case 0xFuLL:
        sub_1AE1BA458(result, a5, a2, a3, a4);
        break;
      case 0x10uLL:
        sub_1AE1BA4B4(result, a5, a2, a3, a4);
        break;
      default:
        sub_1AE1B9C94(result, a5, a2, a3, a4);
        break;
    }
  }
}

uint64_t sub_1AE1B9C94(uint64_t result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  if ((~v5 & 0xF000000000000007) != 0 && ((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 0)
  {
    return sub_1AE23C64C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1B9CE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 1)
  {
    return sub_1AE23C60C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1B9D4C(uint64_t result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  if ((~v5 & 0xF000000000000007) != 0 && ((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 2)
  {
    return sub_1AE23C64C();
  }

  __break(1u);
  return result;
}

void sub_1AE1B9DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 3)
  {
    v6 = v4 & 0xFFFFFFFFFFFFFFBLL;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    sub_1ADDD86D8(v7, v8);
    sub_1AE23C5CC();
    sub_1ADDCC35C(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AE1B9E54(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 4)
  {
    return sub_1AE23C61C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1B9EB0(uint64_t result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  if ((~v5 & 0xF000000000000007) != 0 && ((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 5)
  {
    return sub_1AE23C64C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1B9F0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 6)
  {
    sub_1AE1CAF38(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1B9FA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 7)
  {
    sub_1AE1CA5AC(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA044(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 8)
  {
    sub_1AE1CA450(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA0E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 9)
  {
    sub_1AE1CB1F0(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA17C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 10)
  {
    sub_1AE1C9D78(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA218(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 11)
  {
    sub_1AE1CA2F4(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA2B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 12)
  {
    sub_1AE1CADD8(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA358(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 13)
  {
    sub_1AE1CA198(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA3F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 14)
  {
    return sub_1AE23C5DC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1BA458(uint64_t result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  if ((~v5 & 0xF000000000000007) != 0 && ((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 15)
  {
    return sub_1AE23C64C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1BA4B4(uint64_t result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  if ((~v5 & 0xF000000000000007) != 0 && ((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 16)
  {
    return sub_1AE23C64C();
  }

  __break(1u);
  return result;
}

void (*sub_1AE1BA588(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BA674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D004C(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1BA6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CB7C4(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1BA720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CB7C4(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BA7CC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7988);
  __swift_project_value_buffer(v0, qword_1EB5D7988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1AE252440;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "register";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1AE23C67C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "set";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "dictionary";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "composite";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "string";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sequence";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "array";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "counter";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "orderedSet";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "customCRDT";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BAB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = *v6;
    a4(0);
    v16 = swift_allocObject();
    *(v16 + 16) = *(v15 + 16);
    a5();

    *v6 = v16;
    v14 = v16;
  }

  return a6(v14, a1, a2, a3);
}

double sub_1AE1BAC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v6 = *(a1 + 16);
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && (v6 & 0xF000000000000000) == 0x1000000000000000)
  {
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v19 = 0uLL;

    sub_1ADDCEDE0(&v19, &qword_1EB5BCC30, &qword_1AE2580D0);
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v10 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v27 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v28 = v10;
    v25 = v8;
    v26 = v9;
    v24 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    sub_1ADFAEE10(&v24, &v18);
    sub_1ADE52174(v6);
    v31 = v26;
    v32 = v27;
    v33 = v28;
    v29 = v24;
    v30 = v25;
  }

  sub_1AE1CA9C0(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
    v26 = v31;
    v27 = v32;
    v28 = v33;
    v24 = v29;
    v25 = v30;
    sub_1ADDCEDE0(&v24, &qword_1EB5BCC30, &qword_1AE2580D0);
  }

  else
  {
    v24 = v29;
    v25 = v30;
    result = *&v31;
    v26 = v31;
    v27 = v32;
    v28 = v33;
    v12 = v29;
    v19 = v30;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    if (*(&v29 + 1))
    {
      if ((v6 & 0xF000000000000007) != 0xF000000000000007)
      {
        sub_1AE23C39C();
      }

      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v14 = v20;
      *(v13 + 32) = v19;
      *(v13 + 48) = v14;
      v15 = v22;
      *(v13 + 64) = v21;
      *(v13 + 80) = v15;
      v16 = v13 | 0x1000000000000000;
      v17 = *(a1 + 16);
      *(a1 + 16) = v16;
      return sub_1ADE52174(v17);
    }
  }

  return result;
}

double sub_1AE1BAE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v6 = *(a1 + 16);
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && (v6 & 0xF000000000000000) == 0x2000000000000000)
  {
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v19 = 0uLL;

    sub_1ADDCEDE0(&v19, &qword_1EB5BCC30, &qword_1AE2580D0);
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v10 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v27 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v28 = v10;
    v25 = v8;
    v26 = v9;
    v24 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    sub_1ADFAEE10(&v24, &v18);
    sub_1ADE52174(v6);
    v31 = v26;
    v32 = v27;
    v33 = v28;
    v29 = v24;
    v30 = v25;
  }

  sub_1AE1CA9C0(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
    v26 = v31;
    v27 = v32;
    v28 = v33;
    v24 = v29;
    v25 = v30;
    sub_1ADDCEDE0(&v24, &qword_1EB5BCC30, &qword_1AE2580D0);
  }

  else
  {
    v24 = v29;
    v25 = v30;
    result = *&v31;
    v26 = v31;
    v27 = v32;
    v28 = v33;
    v12 = v29;
    v19 = v30;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    if (*(&v29 + 1))
    {
      if ((v6 & 0xF000000000000007) != 0xF000000000000007)
      {
        sub_1AE23C39C();
      }

      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v14 = v20;
      *(v13 + 32) = v19;
      *(v13 + 48) = v14;
      v15 = v22;
      *(v13 + 64) = v21;
      *(v13 + 80) = v15;
      v16 = v13 | 0x2000000000000000;
      v17 = *(a1 + 16);
      *(a1 + 16) = v16;
      return sub_1ADE52174(v17);
    }
  }

  return result;
}

double sub_1AE1BB004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = *(a1 + 16);
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && (v6 & 0xF000000000000000) == 0x5000000000000000)
  {
    v27 = 0;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;

    sub_1ADDCEDE0(&v21, &qword_1EB5BCC28, &unk_1AE251820);
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v10 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v11 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v12 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
    v32 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v33 = v12;
    v34 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
    v30 = v10;
    v31 = v11;
    v28 = v8;
    v29 = v9;
    sub_1ADE51B64(&v28, v20);
    sub_1ADE52174(v6);
    v39 = v32;
    v40 = v33;
    v41 = v34;
    v35 = v28;
    v36 = v29;
    v37 = v30;
    v38 = v31;
  }

  sub_1AE1C9AC0(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    sub_1ADDCEDE0(&v28, &qword_1EB5BCC28, &unk_1AE251820);
  }

  else
  {
    v32 = v39;
    v33 = v40;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v34 = v41;
    v14 = v35;
    v21 = v36;
    v22 = v37;
    result = *&v40;
    *&v26 = v41;
    v24 = v39;
    v25 = v40;
    v23 = v38;
    if (*(&v35 + 1))
    {
      if ((v6 & 0xF000000000000007) != 0xF000000000000007)
      {
        sub_1AE23C39C();
      }

      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      v16 = v24;
      *(v15 + 64) = v23;
      *(v15 + 80) = v16;
      *(v15 + 96) = v25;
      *(v15 + 112) = v26;
      v17 = v22;
      *(v15 + 32) = v21;
      *(v15 + 48) = v17;
      v18 = v15 | 0x5000000000000000;
      v19 = *(a1 + 16);
      *(a1 + 16) = v18;
      return sub_1ADE52174(v19);
    }
  }

  return result;
}

void sub_1AE1BB240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v12 = 0;
  v6 = *(a1 + 16);
  v7 = v6 & 0xF000000000000007;
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && (v6 & 0xF000000000000000) == 0x6000000000000000)
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  sub_1AE1C9C1C(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
  }

  else if (v12)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    v10 = v9 | 0x6000000000000000;
    v11 = *(v5 + 16);
    *(v5 + 16) = v10;
    sub_1ADE52174(v11);
  }
}

double sub_1AE1BB358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = xmmword_1AE2547A0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v6 = *(a1 + 16);
  v7 = v6 & 0xF000000000000007;
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && (v6 & 0xF000000000000000) == 0x7000000000000000)
  {
    v9 = v6 & 0xFFFFFFFFFFFFFFFLL;
    v10 = *(v9 + 40);
    v11 = *(v9 + 48);
    v16 = *(v9 + 16);
    v17 = *(v9 + 32);
    v18 = v10;
    v19 = v11;
    sub_1ADE42C78(*(&v16 + 1), v17);
    sub_1ADE42C78(v10, v11);
  }

  sub_1AE1CAB1C(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
    sub_1AE1D01D8(v16, *(&v16 + 1), v17, v18, v19);
  }

  else if (*(&v16 + 1) != 1)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v13 = swift_allocObject();
    *(v13 + 16) = v16;
    *(v13 + 32) = v17;
    *(v13 + 40) = v18;
    *(v13 + 48) = v19;
    v14 = v13 | 0x7000000000000000;
    v15 = *(a1 + 16);
    *(a1 + 16) = v14;
    return sub_1ADE52174(v15);
  }

  return result;
}

void sub_1AE1BB4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v12 = 0;
  v6 = *(a1 + 16);
  v7 = v6 & 0xF000000000000007;
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && (v6 & 0xF000000000000000) == 0x9000000000000000)
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  sub_1AE1CA038(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
  }

  else if (v12)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    v10 = v9 | 0x9000000000000000;
    v11 = *(v5 + 16);
    *(v5 + 16) = v10;
    sub_1ADE52174(v11);
  }
}

uint64_t sub_1AE1BB608(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 16);
  if ((~v8 & 0xF000000000000007) != 0)
  {
    v9 = v8 >> 60;
    if (v9 > 4)
    {
      if (v9 <= 6)
      {
        if (v9 == 5)
        {
          return sub_1AE1BBA10(result, a2, a3, a4);
        }

        else
        {
          return sub_1AE1BBAD4(result, a2, a3, a4);
        }
      }

      else if (v9 == 7)
      {
        return sub_1AE1BBB68(result, a2, a3, a4, a5);
      }

      else if (v9 == 8)
      {
        return sub_1AE1BBC04(result, a2, a3, a4);
      }

      else
      {
        return sub_1AE1BBC98(result, a2, a3, a4);
      }
    }

    else if (v9 <= 1)
    {
      if (v9)
      {
        return sub_1AE1BB750(result, a2, a3, a4, a5, a6, a7, a8);
      }

      else
      {
        return sub_1AE1BB6C4(result, a2, a3, a4);
      }
    }

    else if (v9 == 2)
    {
      return sub_1AE1BB800(result, a2, a3, a4, a5, a6, a7, a8);
    }

    else if (v9 == 3)
    {
      return sub_1AE1BB8B0(result, a2, a3, a4);
    }

    else
    {
      return sub_1AE1BB94C(result, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1AE1BB6C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 >> 60)
  {
    v5 = 1;
  }

  else
  {
    v5 = (v4 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_1AE1CAC7C(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1BB750(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 16);
  if ((~v8 & 0xF000000000000007) != 0 && (v8 & 0xF000000000000000) == 0x1000000000000000)
  {
    sub_1AE1CA9C0(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BB800(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 16);
  if ((~v8 & 0xF000000000000007) != 0 && (v8 & 0xF000000000000000) == 0x2000000000000000)
  {
    sub_1AE1CA9C0(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BB8B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && (v4 & 0xF000000000000000) == 0x3000000000000000)
  {
    sub_1AE1CA708(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BB94C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && (v4 & 0xF000000000000000) == 0x4000000000000000)
  {
    sub_1AE1C9AC0(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BBA10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && (v4 & 0xF000000000000000) == 0x5000000000000000)
  {
    sub_1AE1C9AC0(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BBAD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && (v4 & 0xF000000000000000) == 0x6000000000000000)
  {
    sub_1AE1C9C1C(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BBB68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  if ((~v5 & 0xF000000000000007) != 0 && (v5 & 0xF000000000000000) == 0x7000000000000000)
  {
    sub_1AE1CAB1C(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BBC04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && (v4 & 0xF000000000000000) == 0x8000000000000000)
  {
    sub_1AE1C9C1C(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BBC98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if ((~v4 & 0xF000000000000007) != 0 && (v4 & 0xF000000000000000) == 0x9000000000000000)
  {
    sub_1AE1CA038(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1AE1BBDA0(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADE9BCF4;
}

uint64_t sub_1AE1BBE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0138(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1BBEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CB668(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1BBF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CB668(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BBFE4()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D79A0);
  __swift_project_value_buffer(v0, qword_1EB5D79A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE252430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "constants";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "referenceKeys";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "referenceRetainCounts";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "assetDigests";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "assetRetainCounts";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "subcapsuleKeys";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "subcapsuleRetainCounts";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BC2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_1ADEDC930(1, v5, v6);
            sub_1AE23C4FC();
            break;
          case 2:
            v7 = v3;
            sub_1ADEDC8DC(2, v5, v6);
            goto LABEL_22;
          case 3:
            goto LABEL_4;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          v7 = v3;
          sub_1ADEDC8DC(6, v5, v6);
LABEL_22:
          v3 = v7;
          sub_1AE23C4EC();
          goto LABEL_5;
        }

        if (result == 7)
        {
LABEL_4:
          sub_1AE23C3EC();
        }
      }

      else
      {
        if (result != 4)
        {
          goto LABEL_4;
        }

        sub_1AE23C40C();
      }

LABEL_5:
      result = sub_1AE23C38C();
    }
  }

  return result;
}