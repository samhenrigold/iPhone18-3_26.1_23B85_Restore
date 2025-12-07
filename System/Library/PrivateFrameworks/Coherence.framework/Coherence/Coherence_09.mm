void sub_1ADE8D680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_1AE23BDDC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for CRDataStoreBundleNonCoordinated(0, *(v5 + 632), *(v5 + 640), v13);
  v14 = v3[9];
  v15 = *(v10 + 16);
  v15(v12, a1, v9);
  v15(v8, v26, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v16 = v3[16];
  v17 = v3[17];
  v19 = v3[18];
  v18 = v3[19];

  v20 = v14;

  v21 = v20;
  v22 = v27;
  v23 = sub_1AE018484(v21, v12, v8, 0, v16, 1, 0, 0, v18, v17, v19);
  if (!v22)
  {
    v3[15] = v23;

    v24 = v3[15];
    if (v24)
    {
      *(v24 + qword_1EB5D7450) = 1;
    }
  }
}

void sub_1ADE8D8D0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  LODWORD(v63) = a3;
  v77 = a2;
  v62 = *v3;
  v7 = sub_1AE23BDDC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  sub_1AE23BD3C();
  sub_1AE23BDAC();
  (*(v8 + 8))(v10, v7);
  v12 = sub_1AE23CCDC();

  v13 = [v11 fileExistsAtPath_];

  if (!v13)
  {
    return;
  }

  sub_1ADE8CB08(&v72);
  if (v76 == 1)
  {
    v14 = v5[6];
    if (v14)
    {
      v15 = v5[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1AE2418F0;
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_1AE23DA2C();

      v72 = v15;
      v73 = v14;
      MEMORY[0x1B26FB670](0xD000000000000017, 0x80000001AE260570);
      v17 = v72;
      v18 = v73;
      *(v16 + 56) = MEMORY[0x1E69E6158];
      *(v16 + 32) = v17;
      *(v16 + 40) = v18;
      sub_1AE23E2EC();
    }

    sub_1ADE8D138(a1, 1, v77);
    if (!v4)
    {
      sub_1AE215ECC();
    }

    return;
  }

  sub_1ADE92284(v72, v73, v74, v75, v76);
  v19 = v5[6];
  if (v5[15])
  {
    if (v19 && (v20 = v5[5], __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0), v21 = swift_allocObject(), *(v21 + 16) = xmmword_1AE2418F0, v72 = 0, v73 = 0xE000000000000000, sub_1AE23DA2C(), , , v72 = v20, v73 = v19, MEMORY[0x1B26FB670](0xD000000000000013, 0x80000001AE2605B0), v22 = v72, v23 = v73, *(v21 + 56) = MEMORY[0x1E69E6158], *(v21 + 32) = v22, *(v21 + 40) = v23, sub_1AE23E2EC(), , !v5[15]))
    {
      __break(1u);
    }

    else
    {

      v24 = v63;
      sub_1AE0185EC();

      if (v4)
      {
        return;
      }

      v25 = v72;
      v26 = v73;
      sub_1AE215ECC();
      if ((v24 & 1) == 0)
      {
        v27 = v5[15];
        if (!v27)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v28 = *(v27 + 16);
        v29 = *(v27 + 24);
        *(v27 + 16) = v25;
        *(v27 + 24) = v26;

        sub_1ADE42CB8(v28, v29);
      }

      sub_1ADE8CB08(&v72);
      v31 = v76;
      if (v76 != 1)
      {
        v33 = v74;
        v32 = v75;
        v35 = v72;
        v34 = v73;
        v65 = v72;
        v66 = v73;
        v67 = v74;
        v68 = v75;
        v69 = v76;
        type metadata accessor for Capsule(0, *(v62 + 632), *(v62 + 640), v30);
        Capsule.version.getter(&v70);
        sub_1ADE92284(v35, v34, v33, v32, v31);
        v36 = v70;
        sub_1ADF637A8(v71, v26);
        if ((v37 & 1) == 0)
        {
          sub_1ADF637A8(v36, v25);
        }

        return;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v19)
  {
    v38 = v5[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1AE2418F0;
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1AE23DA2C();

    v72 = v38;
    v73 = v19;
    MEMORY[0x1B26FB670](0xD000000000000018, 0x80000001AE260590);
    v40 = v72;
    v41 = v73;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 32) = v40;
    *(v39 + 40) = v41;
    sub_1AE23E2EC();
  }

  sub_1ADE8D138(a1, 0, v77);
  if (!v4)
  {
    v43 = v5[15];
    if (!v43)
    {
      goto LABEL_33;
    }

    v44 = v5[9];
    v45 = *(v62 + 632);
    v46 = *(v62 + 640);
    v47 = type metadata accessor for CRSQLStoreBundleCapsule(0, v45, v46, v42);
    v48 = v44;

    v65 = sub_1AE018AE4(v48, v43);
    v49 = v5[16];
    swift_beginAccess();
    if (*(v49 + 48) == 1)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    v51 = type metadata accessor for Capsule(0, v45, v46, v50);

    WitnessTable = swift_getWitnessTable();
    sub_1AE1EAF78(&v65, v53, v51, v47, WitnessTable);
    swift_endAccess();
    v77 = 0;

    sub_1AE215ECC();
    sub_1AE021124(&v70);
    v54 = v71;
    v63 = v70;
    sub_1ADE8CB08(&v72);
    v55 = v76;
    if (v76 == 1)
    {
      goto LABEL_36;
    }

    v57 = v74;
    v56 = v75;
    v59 = v72;
    v58 = v73;
    v65 = v72;
    v66 = v73;
    v67 = v74;
    v68 = v75;
    v69 = v76;
    Capsule.version.getter(v64);
    sub_1ADE92284(v59, v58, v57, v56, v55);
    v60 = v64[0];
    sub_1ADF637A8(v64[1], v54);
    if ((v61 & 1) == 0)
    {
      sub_1ADF637A8(v60, v63);
    }
  }
}

void sub_1ADE8E078(uint64_t a1, uint64_t *a2)
{
  v4 = v3;
  v5 = v2;
  v60 = a2;
  v68 = a1;
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  sub_1ADE8CB08(&v63);
  if (v67 == 1)
  {
    return;
  }

  v19.n128_f64[0] = sub_1ADE92284(v63, v64, v65, v66, v67);
  v20 = v2[15];
  if (!v20)
  {
    v51 = v68;
    sub_1ADE8CD54(v18);
    if (v3)
    {
      return;
    }

    sub_1ADE8D680(v18, v51);
    v4 = 0;
    (*(v7 + 8))(v18, v6);
    v20 = v5[15];
  }

  v21 = v5[6];
  v58 = v9;
  v59 = v7;
  if (v21)
  {
    v56 = v21;
    v57 = v12;
    if (!v20)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v55 = v5[5];
    (*(v7 + 16))(v15, v20 + qword_1EB5D74C8, v6, v19);
    v22 = sub_1AE23BDAC();
    v24 = v23;
    v25 = (*(v7 + 8))(v15, v6);
    v63 = v22;
    v64 = v24;
    v61 = 47;
    v62 = 0xE100000000000000;
    sub_1ADE42DEC(v25, v26, v27);
    v28 = sub_1AE23D81C();

    v29 = *(v28 + 16);
    v30 = v29 - 2;
    if (v29 < 2)
    {
      v30 = 0;
    }

    v63 = v28;
    v64 = v28 + 32;
    v65 = v30;
    v66 = (2 * v29) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4C0, &qword_1AE242780);
    sub_1ADDCC7D4(&qword_1EB5BA4C8, &qword_1EB5BA4C0, &qword_1AE242780, MEMORY[0x1E69E6958]);
    v31 = sub_1AE23CBFC();
    v53 = v32;
    v54 = v31;

    v63 = sub_1AE23BDAC();
    v64 = v33;
    v61 = 47;
    v62 = 0xE100000000000000;
    v34 = sub_1AE23D81C();

    v35 = *(v34 + 16);
    v36 = v35 - 2;
    if (v35 < 2)
    {
      v36 = 0;
    }

    v63 = v34;
    v64 = v34 + 32;
    v65 = v36;
    v66 = (2 * v35) | 1;
    v37 = sub_1AE23CBFC();
    v39 = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1AE242560;
    v63 = v55;
    v64 = v56;

    MEMORY[0x1B26FB670](0x79706F43203ALL, 0xE600000000000000);
    v41 = v64;
    *(v40 + 32) = v63;
    *(v40 + 40) = v41;
    v42 = MEMORY[0x1E69E6158];
    v43 = v53;
    v44 = v54;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = v44;
    *(v40 + 72) = v43;
    *(v40 + 88) = v42;
    *(v40 + 96) = 15917;
    *(v40 + 104) = 0xE200000000000000;
    *(v40 + 152) = v42;
    *(v40 + 120) = v42;
    *(v40 + 128) = v37;
    *(v40 + 136) = v39;
    sub_1AE23E2EC();

    v20 = v5[15];
    v12 = v57;
  }

  if (!v20)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1AE018B3C(v60);

  v45 = v59;
  if (!v4)
  {
    v46 = v5[15];
    if (v46)
    {
      (*(v59 + 16))(v15, v46 + qword_1EB5D74C8, v6);
      sub_1AE23BD3C();
      v47 = *(v45 + 8);
      v47(v15, v6);
      v48 = v58;
      v49 = v68;
      v50 = sub_1AE23BD3C();
      if (v5[15])
      {
        v60 = &v52;
        MEMORY[0x1EEE9AC00](v50);
        *(&v52 - 4) = v5;
        *(&v52 - 3) = v49;
        *(&v52 - 2) = v12;
        *(&v52 - 1) = v48;

        sub_1AE018B94(sub_1ADE922E4, (&v52 - 6));

        v47(v48, v6);
        v47(v12, v6);
        return;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_1ADE8E634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v64[2] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v53 - v7;
  v8 = sub_1AE23BFEC();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1AE23BDDC();
  v11 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  v56 = a1;
  if (!*(a1 + 120))
  {
    __break(1u);
  }

  sub_1ADE432BC();

  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  v21 = sub_1AE23BD1C();
  v64[0] = 0;
  v22 = [v20 URLForDirectory:99 inDomain:1 appropriateForURL:v21 create:1 error:v64];

  v23 = v64[0];
  if (!v22)
  {
    v49 = v64[0];
    sub_1AE23BC9C();

    swift_willThrow();
    return;
  }

  v55 = a3;
  sub_1AE23BD8C();
  v24 = v23;

  sub_1AE23BD3C();
  v27 = *(v11 + 8);
  v25 = v11 + 8;
  v26 = v27;
  v28 = v63;
  v27(v15, v63);
  v29 = [v19 defaultManager];
  v30 = sub_1AE23BD1C();
  v64[0] = 0;
  v31 = [v29 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:v64];

  if (!v31)
  {
    v50 = v64[0];
    sub_1AE23BC9C();

    swift_willThrow();
    v26(v18, v28);
    return;
  }

  v53 = v25;
  v54 = v26;
  v32 = v64[0];
  sub_1AE23BFDC();
  v33 = sub_1AE23BF6C();
  v35 = v34;
  (*(v60 + 8))(v10, v61);
  strcpy(v64, "CoherenceTemp-");
  HIBYTE(v64[1]) = -18;
  MEMORY[0x1B26FB670](v33, v35);

  v36 = v62;
  sub_1AE23BD3C();

  v37 = [v19 defaultManager];
  v38 = sub_1AE23BD1C();
  v39 = sub_1AE23BD1C();
  v64[0] = 0;
  v40 = [v37 copyItemAtURL:v38 toURL:v39 error:v64];

  if (!v40)
  {
    v51 = v64[0];
    sub_1AE23BC9C();

    swift_willThrow();
    v46 = v36;
    v47 = v63;
    v48 = v63;
    v45 = v54;
    goto LABEL_10;
  }

  v41 = v64[0];
  v42 = [v19 defaultManager];
  v43 = v57;
  v44 = v59;
  sub_1AE23D5FC();
  v45 = v54;
  if (v44)
  {

    v46 = v36;
    v47 = v63;
    v48 = v63;
LABEL_10:
    v45(v46, v48);
    v45(v18, v47);
    return;
  }

  sub_1ADDCEDE0(v43, &qword_1EB5B9DC0, &qword_1AE240B90);

  v52 = v63;
  if (*(v56 + 120))
  {

    sub_1ADDD16D4();

    v45(v36, v52);
    v45(v18, v52);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ADE8EC20()
{
}

id *sub_1ADE8EC68()
{
  v0 = sub_1AE213A10();

  return v0;
}

uint64_t sub_1ADE8ECB8()
{
  sub_1ADE8EC68();

  return swift_deallocClassInstance();
}

uint64_t CRDataStoreBundle.receive(_:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = v1;
  sub_1AE213BD4(v5);

  return MEMORY[0x1EEDB5BB8](v3);
}

uint64_t sub_1ADE8ED9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 240) = a5;
  *(v6 + 248) = v5;
  *(v6 + 224) = a2;
  *(v6 + 232) = a4;
  *(v6 + 368) = a3;
  *(v6 + 216) = a1;
  v7 = sub_1AE23BDDC();
  *(v6 + 256) = v7;
  v8 = *(v7 - 8);
  *(v6 + 264) = v8;
  *(v6 + 272) = *(v8 + 64);
  *(v6 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  *(v6 + 288) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ADE8EEA8, v5, 0);
}

uint64_t sub_1ADE8EEA8()
{
  v1 = *(v0 + 248);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_14;
  }

  v3 = *(v0 + 224);

  v4 = sub_1ADDFF050(v3);
  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(*(v2 + 56) + 8 * v4);

  if (!(v6 >> 62))
  {
    v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v11 = sub_1AE23D97C();
  if (!v11)
  {
LABEL_13:

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

LABEL_5:
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_63;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_64;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v13 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v14 = *(v6 + 8 * v13 + 32);

  while (1)
  {

LABEL_15:
    *(v0 + 296) = v14;
    v15 = *(v0 + 248);
    swift_beginAccess();
    v6 = *(v15 + 120);
    v70 = v15;
    v71 = v1;
    v74 = v14;
    if (!*(v6 + 16))
    {
      goto LABEL_28;
    }

    v16 = *(v0 + 224);

    v17 = sub_1ADDFF050(v16);
    if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }

    v19 = *(*(v6 + 56) + 8 * v17);

    if (v19 >> 62)
    {
      break;
    }

    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_27;
    }

LABEL_19:
    v12 = __OFSUB__(v20, 1);
    v13 = v20 - 1;
    if (!v12)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1B26FC360](v13, v19);
        goto LABEL_24;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      if (v13 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v19 + 8 * v13 + 32);

LABEL_24:

        goto LABEL_29;
      }

LABEL_69:
      __break(1u);
      return MEMORY[0x1EEE6DA10](v13, v7, v8, v9, v10);
    }

LABEL_63:
    __break(1u);
LABEL_64:
    v14 = MEMORY[0x1B26FC360](v13, v6);
  }

  v20 = sub_1AE23D97C();
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_28:
  v21 = 0;
LABEL_29:
  *(v0 + 304) = v21;
  v23 = *(v0 + 280);
  v22 = *(v0 + 288);
  v73 = v22;
  v25 = *(v0 + 264);
  v24 = *(v0 + 272);
  v26 = *(v0 + 256);
  v27 = *(v0 + 240);
  v28 = *(v0 + 368);
  v72 = *(v0 + 232);
  v29 = *(v0 + 224);
  v30 = sub_1AE23D1BC();
  (*(*(v30 - 8) + 56))(v22, 1, 1, v30);
  v69 = *(v25 + 16);
  v69(v23, v29, v26);
  v31 = (*(v25 + 80) + 56) & ~*(v25 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v28;
  *(v32 + 40) = v74;
  *(v32 + 48) = v21;
  (*(v25 + 32))(v32 + v31, v23, v26);
  v33 = (v32 + ((v24 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v33 = v72;
  v33[1] = v27;

  v34 = sub_1ADE9142C(0, 0, v73, &unk_1AE242790, v32);
  *(v0 + 312) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4E0, &qword_1AE242798);
  v35 = swift_allocObject();
  *(v0 + 320) = v35;
  *(v35 + 16) = v34;
  v36 = *(v0 + 224);
  if (v28 != 1)
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v70 + 120);
    *(v70 + 120) = 0x8000000000000000;
    v51 = sub_1ADDFF050(v36);
    v52 = v49[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (!__OFADD__(v52, v53))
    {
      v55 = v50;
      if (v49[3] >= v54)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADF70D48();
        }
      }

      else
      {
        v56 = *(v0 + 224);
        sub_1ADF6BD9C(v54, isUniquelyReferenced_nonNull_native);
        v57 = sub_1ADDFF050(v56);
        if ((v55 & 1) != (v58 & 1))
        {
          goto LABEL_38;
        }

        v51 = v57;
      }

      *(v70 + 120) = v49;
      if ((v55 & 1) == 0)
      {
        v65 = *(v0 + 280);
        v69(v65, *(v0 + 224), *(v0 + 256));
        sub_1ADDFF514(v51, v65, MEMORY[0x1E69E7CC0], v49);
      }

      v66 = (v49[7] + 8 * v51);

      MEMORY[0x1B26FB860](v67);
      if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      v64 = 0;
      v63 = sub_1ADDE65B4;
LABEL_54:
      swift_endAccess();
      *(v0 + 328) = v64;
      *(v0 + 336) = v63;
      v68 = swift_task_alloc();
      *(v0 + 344) = v68;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
      *(v0 + 352) = v9;
      *v68 = v0;
      v68[1] = sub_1ADE8F614;
      v13 = *(v0 + 216);
      v10 = MEMORY[0x1E69E7288];
      v8 = MEMORY[0x1E69E7CA8] + 8;
      v7 = v34;

      return MEMORY[0x1EEE6DA10](v13, v7, v8, v9, v10);
    }

    goto LABEL_58;
  }

  swift_beginAccess();

  v37 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v71 + 112);
  *(v71 + 112) = 0x8000000000000000;
  v40 = sub_1ADDFF050(v36);
  v41 = v38[2];
  v42 = (v39 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    sub_1AE23D03C();
LABEL_45:
    sub_1AE23D09C();
    v63 = 0;
    v64 = sub_1ADDE65B4;
    goto LABEL_54;
  }

  v44 = v39;
  if (v38[3] >= v43)
  {
    if (v37)
    {
      *(v71 + 112) = v38;
      if (v39)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    sub_1ADF70D48();
    *(v71 + 112) = v38;
    if ((v44 & 1) == 0)
    {
LABEL_43:
      v60 = *(v0 + 280);
      v69(v60, *(v0 + 224), *(v0 + 256));
      sub_1ADDFF514(v40, v60, MEMORY[0x1E69E7CC0], v38);
    }

LABEL_44:
    v61 = (v38[7] + 8 * v40);

    MEMORY[0x1B26FB860](v62);
    if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_45;
    }

    goto LABEL_59;
  }

  v45 = *(v0 + 224);
  sub_1ADF6BD9C(v43, v37);
  v46 = sub_1ADDFF050(v45);
  if ((v44 & 1) == (v47 & 1))
  {
    v40 = v46;
    *(v71 + 112) = v38;
    if (v44)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_38:

  return sub_1AE23E27C();
}

uint64_t sub_1ADE8F614()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_1ADE8F860;
  }

  else
  {
    v4 = sub_1ADE8F740;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1ADE8F740()
{
  v1 = v0[40];
  v2 = v0[28];
  swift_beginAccess();
  sub_1AE1DD680(v2, v1);
  swift_endAccess();
  v3 = v0[41];
  v4 = v0[42];

  sub_1ADDDCE80(v3, 0);
  sub_1ADDDCE80(v4, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1ADE8F860()
{
  v0[26] = v0[45];
  swift_willThrowTypedImpl();
  v1 = v0[40];
  v2 = v0[28];
  swift_beginAccess();
  sub_1AE1DD680(v2, v1);
  swift_endAccess();
  v3 = v0[41];
  v4 = v0[42];

  sub_1ADDDCE80(v3, 0);
  sub_1ADDDCE80(v4, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1ADE8F994(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = a8;
  *(v8 + 192) = v12;
  *(v8 + 168) = a6;
  *(v8 + 176) = a7;
  *(v8 + 320) = a4;
  *(v8 + 152) = a1;
  *(v8 + 160) = a5;
  v9 = sub_1AE23BDDC();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ADE8FAA0, 0, 0);
}

uint64_t sub_1ADE8FAA0()
{
  v1 = *(v0 + 320);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 160);
    if (v2)
    {
      v36 = (*(*v2 + 80) + **(*v2 + 80));
      v3 = swift_task_alloc();
      *(v0 + 232) = v3;
      *v3 = v0;
      v4 = sub_1ADE901C4;
      goto LABEL_6;
    }
  }

  v5 = *(v0 + 168);
  if (v5)
  {
    v36 = (*(*v5 + 80) + **(*v5 + 80));
    v3 = swift_task_alloc();
    *(v0 + 240) = v3;
    *v3 = v0;
    v4 = sub_1ADE90970;
LABEL_6:
    v3[1] = v4;
    v6 = v36;

    return v6();
  }

  v8 = v0 + 112;
  v9 = *(v0 + 224);
  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v12 = *(v0 + 176);
  v13 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  *(v0 + 248) = v13;
  *(v0 + 112) = 0;
  v37 = *(v11 + 16);
  v37(v9, v12, v10);
  v14 = sub_1AE23BD1C();
  v15 = *(v0 + 224);
  if (v1)
  {
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = v8;
    v16[4] = v13;
    v17 = swift_allocObject();
    v18 = sub_1ADE92650;
    *(v17 + 16) = sub_1ADE92650;
    *(v17 + 24) = v16;
    *(v0 + 96) = sub_1ADE92800;
    *(v0 + 104) = v17;
    *(v0 + 64) = MEMORY[0x1E69E9820];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_1ADE8AB00;
    *(v0 + 88) = &block_descriptor_77;
    v19 = _Block_copy((v0 + 64));
    v20 = v13;

    *(v0 + 144) = 0;
    [v20 coordinateReadingItemAtURL:v14 options:0 error:v0 + 144 byAccessor:v19];
    _Block_release(v19);

    v21 = *(v0 + 144);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if ((v19 & 1) == 0)
    {
      v22 = 0;
      v23 = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  v23 = swift_allocObject();
  v23[2] = v15;
  v23[3] = v8;
  v23[4] = v13;
  v24 = swift_allocObject();
  v22 = sub_1ADE92650;
  *(v24 + 16) = sub_1ADE92650;
  *(v24 + 24) = v23;
  *(v0 + 48) = sub_1ADE92800;
  *(v0 + 56) = v24;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1ADE8AB00;
  *(v0 + 40) = &block_descriptor_65;
  v25 = _Block_copy((v0 + 16));
  v26 = v13;

  *(v0 + 120) = 0;
  [v26 coordinateWritingItemAtURL:v14 options:0 error:v0 + 120 byAccessor:v25];
  _Block_release(v25);

  v21 = *(v0 + 120);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    goto LABEL_22;
  }

  v18 = 0;
  v16 = 0;
LABEL_14:
  *(v0 + 272) = v22;
  *(v0 + 280) = v23;
  *(v0 + 256) = v18;
  *(v0 + 264) = v16;
  if (v21)
  {
    v27 = *(v0 + 208);
    swift_willThrow();
    [v13 releaseAccess_];

    v29 = *(v0 + 272);
    v28 = *(v0 + 280);
    v31 = *(v0 + 256);
    v30 = *(v0 + 264);
    (*(v27 + 8))(*(v0 + 224), *(v0 + 200));
    swift_unknownObjectRelease();
    sub_1ADDDCE80(v31, v30);
    sub_1ADDDCE80(v29, v28);

    v6 = *(v0 + 8);

    return v6();
  }

  v32 = *(v0 + 184);
  v37(*(v0 + 216), *(v0 + 224), *(v0 + 200));
  v38 = (v32 + *v32);
  v33 = swift_task_alloc();
  *(v0 + 288) = v33;
  *v33 = v0;
  v33[1] = sub_1ADE91010;
  v34 = *(v0 + 216);
  v35 = *(v0 + 152);

  return v38(v35, v34, v13, v0 + 128);
}

uint64_t sub_1ADE901C4()
{

  if (v0)
  {

    v1 = sub_1ADE9278C;
  }

  else
  {
    v1 = sub_1ADE90308;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1ADE90308()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v34 = (*(*v1 + 80) + **(*v1 + 80));
    v2 = swift_task_alloc();
    *(v0 + 240) = v2;
    *v2 = v0;
    v2[1] = sub_1ADE90970;
    v3 = v34;

    return v3();
  }

  v5 = v0 + 112;
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  v9 = *(v0 + 176);
  v10 = *(v0 + 320);
  v11 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  *(v0 + 248) = v11;
  *(v0 + 112) = 0;
  v35 = *(v8 + 16);
  v35(v6, v9, v7);
  v12 = sub_1AE23BD1C();
  v13 = *(v0 + 224);
  if (v10 == 1)
  {
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v5;
    v14[4] = v11;
    v15 = swift_allocObject();
    v16 = sub_1ADE92650;
    *(v15 + 16) = sub_1ADE92650;
    *(v15 + 24) = v14;
    *(v0 + 96) = sub_1ADE92800;
    *(v0 + 104) = v15;
    *(v0 + 64) = MEMORY[0x1E69E9820];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_1ADE8AB00;
    *(v0 + 88) = &block_descriptor_77;
    v17 = _Block_copy((v0 + 64));
    v18 = v11;

    *(v0 + 144) = 0;
    [v18 coordinateReadingItemAtURL:v12 options:0 error:v0 + 144 byAccessor:v17];
    _Block_release(v17);

    v19 = *(v0 + 144);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if ((v17 & 1) == 0)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_10;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  v21 = swift_allocObject();
  v21[2] = v13;
  v21[3] = v5;
  v21[4] = v11;
  v22 = swift_allocObject();
  v20 = sub_1ADE92650;
  *(v22 + 16) = sub_1ADE92650;
  *(v22 + 24) = v21;
  *(v0 + 48) = sub_1ADE92800;
  *(v0 + 56) = v22;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1ADE8AB00;
  *(v0 + 40) = &block_descriptor_65;
  v23 = _Block_copy((v0 + 16));
  v24 = v11;

  *(v0 + 120) = 0;
  [v24 coordinateWritingItemAtURL:v12 options:0 error:v0 + 120 byAccessor:v23];
  _Block_release(v23);

  v19 = *(v0 + 120);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    goto LABEL_18;
  }

  v16 = 0;
  v14 = 0;
LABEL_10:
  *(v0 + 272) = v20;
  *(v0 + 280) = v21;
  *(v0 + 256) = v16;
  *(v0 + 264) = v14;
  if (v19)
  {
    v25 = *(v0 + 208);
    swift_willThrow();
    [v11 releaseAccess_];

    v27 = *(v0 + 272);
    v26 = *(v0 + 280);
    v29 = *(v0 + 256);
    v28 = *(v0 + 264);
    (*(v25 + 8))(*(v0 + 224), *(v0 + 200));
    swift_unknownObjectRelease();
    sub_1ADDDCE80(v29, v28);
    sub_1ADDDCE80(v27, v26);

    v3 = *(v0 + 8);

    return v3();
  }

  v30 = *(v0 + 184);
  v35(*(v0 + 216), *(v0 + 224), *(v0 + 200));
  v36 = (v30 + *v30);
  v31 = swift_task_alloc();
  *(v0 + 288) = v31;
  *v31 = v0;
  v31[1] = sub_1ADE91010;
  v32 = *(v0 + 216);
  v33 = *(v0 + 152);

  return v36(v33, v32, v11, v0 + 128);
}

uint64_t sub_1ADE90970()
{

  if (v0)
  {

    v1 = sub_1ADE92704;
  }

  else
  {
    v1 = sub_1ADE90AB4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1ADE90AB4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = *(v0 + 320);
  v6 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  *(v0 + 112) = 0;
  v7 = v0 + 112;
  *(v0 + 248) = v6;
  v32 = *(v3 + 16);
  v32(v1, v4, v2);
  v8 = sub_1AE23BD1C();
  v9 = *(v0 + 224);
  if (v5 == 1)
  {
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v7;
    v10[4] = v6;
    v11 = swift_allocObject();
    v12 = sub_1ADE92650;
    *(v11 + 16) = sub_1ADE92650;
    *(v11 + 24) = v10;
    *(v0 + 96) = sub_1ADE92800;
    *(v0 + 104) = v11;
    *(v0 + 64) = MEMORY[0x1E69E9820];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_1ADE8AB00;
    *(v0 + 88) = &block_descriptor_77;
    v13 = _Block_copy((v0 + 64));
    v14 = v6;

    *(v0 + 144) = 0;
    [v14 coordinateReadingItemAtURL:v8 options:0 error:v0 + 144 byAccessor:v13];
    _Block_release(v13);

    v15 = *(v0 + 144);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      v16 = 0;
      v17 = 0;
      goto LABEL_6;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = v7;
  v17[4] = v6;
  v18 = swift_allocObject();
  v16 = sub_1ADE92650;
  *(v18 + 16) = sub_1ADE92650;
  *(v18 + 24) = v17;
  *(v0 + 48) = sub_1ADE92800;
  *(v0 + 56) = v18;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1ADE8AB00;
  *(v0 + 40) = &block_descriptor_65;
  v19 = _Block_copy((v0 + 16));
  v20 = v6;

  *(v0 + 120) = 0;
  [v20 coordinateWritingItemAtURL:v8 options:0 error:v0 + 120 byAccessor:v19];
  _Block_release(v19);

  v15 = *(v0 + 120);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    goto LABEL_14;
  }

  v12 = 0;
  v10 = 0;
LABEL_6:
  *(v0 + 272) = v16;
  *(v0 + 280) = v17;
  *(v0 + 256) = v12;
  *(v0 + 264) = v10;
  if (v15)
  {
    v21 = *(v0 + 208);
    swift_willThrow();
    [v6 releaseAccess_];

    v23 = *(v0 + 272);
    v22 = *(v0 + 280);
    v25 = *(v0 + 256);
    v24 = *(v0 + 264);
    (*(v21 + 8))(*(v0 + 224), *(v0 + 200));
    swift_unknownObjectRelease();
    sub_1ADDDCE80(v25, v24);
    sub_1ADDDCE80(v23, v22);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 184);
    v32(*(v0 + 216), *(v0 + 224), *(v0 + 200));
    v33 = (v28 + *v28);
    v29 = swift_task_alloc();
    *(v0 + 288) = v29;
    *v29 = v0;
    v29[1] = sub_1ADE91010;
    v30 = *(v0 + 216);
    v31 = *(v0 + 152);

    return v33(v31, v30, v6, v0 + 128);
  }
}

uint64_t sub_1ADE91010()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[27];
    v4 = v2[25];
    v5 = *(v2[26] + 8);
    v2[39] = v5;
    v5(v3, v4);
    v6 = sub_1ADE912AC;
  }

  else
  {
    v8 = v2[26];
    v7 = v2[27];
    v9 = v2[25];
    v10 = *(v8 + 8);
    v2[37] = v10;
    v2[38] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v9);
    v6 = sub_1ADE91194;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1ADE91194()
{
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v7 = v0[28];
  v8 = v0[25];
  [v6 releaseAccess_];

  v1(v7, v8);
  swift_unknownObjectRelease();
  sub_1ADDDCE80(v5, v4);
  sub_1ADDDCE80(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1ADE912AC()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 128);
  *(v0 + 136) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  if (sub_1AE23DF9C())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = *(v0 + 248);
  [v3 releaseAccess_];

  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  (*(v0 + 312))(*(v0 + 224), *(v0 + 200));
  swift_unknownObjectRelease();
  sub_1ADDDCE80(v7, v6);
  sub_1ADDDCE80(v5, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1ADE9142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1ADE925E0(a3, v22 - v9);
  v11 = sub_1AE23D1BC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1ADDCEDE0(v10, &unk_1EB5BDD00, &qword_1AE242340);
  }

  else
  {
    sub_1AE23D1AC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1AE23D16C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1AE23CD8C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1ADDCEDE0(a3, &unk_1EB5BDD00, &qword_1AE242340);

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

  sub_1ADDCEDE0(a3, &unk_1EB5BDD00, &qword_1AE242340);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *sub_1ADE916C8(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v35 = a7;
  v36 = a8;
  v33 = a6;
  v34 = a1;
  v14 = *v9;
  v15 = sub_1AE23BDDC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v31 = a2[1];
  v32 = v19;
  v20 = *(a2 + 4);
  v9[15] = 0;
  type metadata accessor for CRDataStoreBundleNonCoordinated.ModelStorage(0, *(v14 + 632), *(v14 + 640), v21);
  sub_1AE018450();
  v22 = v9;
  v9[16] = v23;
  v9[19] = a4;
  v24 = sub_1ADF7E740(a5);

  v25 = *(v24 + 16);
  if (!v25)
  {
    goto LABEL_4;
  }

  v26 = sub_1AE19434C(*(v24 + 16), 0);
  v27 = sub_1AE03A8F4(v37, v26 + 16, v25, v24);
  sub_1ADDDCE74(*&v37[0]);
  if (v27 != v25)
  {
    __break(1u);
LABEL_4:

    v26 = MEMORY[0x1E69E7CC0];
  }

  *&v37[0] = v26;

  sub_1AE018BE8(v37);

  v28 = v33;
  v22[17] = *&v37[0];
  v22[18] = v28;
  v37[1] = v31;
  v37[0] = v32;
  v38 = v20;
  (*(v16 + 16))(v18, a3, v15);
  v29 = sub_1AE21BFC8(v34, v37, v18, v35, v36);
  (*(v16 + 8))(a3, v15);
  return v29;
}

uint64_t *sub_1ADE91910(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v31 = a6;
  v13 = *v7;
  v14 = sub_1AE23BDDC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v20 = *(a2 + 16);
  v21 = *(a2 + 32);
  v22 = (a4 + 32);
  v23 = *(a4 + 16);
  while (v23)
  {
    v24 = *v22++;
    --v23;
    if (!v24)
    {
      sub_1AE23DC5C();
      __break(1u);
      break;
    }
  }

  v25 = *(v13 + 80);
  v26 = *(v13 + 88);
  v29 = v20;
  v30 = v19;
  type metadata accessor for CRDataStoreBundleInternals(0, v25, v26, v16);
  v32[1] = v29;
  v32[0] = v30;
  v33 = v21;
  (*(v15 + 16))(v18, a3, v14);
  swift_allocObject();
  v27 = sub_1ADE916C8(a1, v32, v18, a4, a5, v31, 0, 0);
  (*(v15 + 8))(a3, v14);
  v7[2] = v27;
  return v7;
}

uint64_t *sub_1ADE91BA4(void *a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v10 = sub_1AE23BDDC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v14 = *(a2 + 32);
  v15 = *a4;
  v16 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v16;
  v25 = v14;
  (*(v11 + 16))(v13, a3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA188, &unk_1AE242290);
  v17 = swift_allocObject();
  v23 = xmmword_1AE2418F0;
  *(v17 + 16) = xmmword_1AE2418F0;
  *(v17 + 32) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
  inited = swift_initStackObject();
  v19 = inited;
  *(inited + 16) = v23;
  if ((a5 & 0x10000) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = a5;
  }

  *(inited + 32) = v20;
  swift_allocObject();
  v21 = sub_1ADE91910(a1, v24, v13, v17, v19, 0);
  (*(v11 + 8))(a3, v10);
  return v21;
}

void sub_1ADE91D6C(unint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_1AE23BDDC() - 8);
  v6 = (*(v5 + 80) + 81) & ~*(v5 + 80);
  sub_1ADE89D84(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), v1 + v6, *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
}

uint64_t sub_1ADE91E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[8];
  v10 = v3[9];
  v11 = v3[10];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1ADE74240;

  return sub_1ADE8B8E4(a1, a2, a3, v8, (v3 + 3), v9, v10, v11);
}

uint64_t sub_1ADE91F68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23C7DC();
  return sub_1AE23C7FC();
}

unint64_t sub_1ADE91FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA4B0;
  if (!qword_1EB5BA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA4B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRDataStoreBundleReadFileVersionPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRDataStoreBundleReadFileVersionPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double sub_1ADE92284(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1ADDCC35C(a1, a2);
    sub_1ADDCC35C(a3, a4);
  }

  return result;
}

uint64_t sub_1ADE92304(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1ADDD86D8(result, a2);
    sub_1ADDD86D8(a3, a4);
  }

  return result;
}

uint64_t objectdestroy_30Tm(void (*a1)(void))
{
  a1(*(v1 + 24));
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

unint64_t sub_1ADE923C4()
{
  result = qword_1ED96AC40;
  if (!qword_1ED96AC40)
  {
    sub_1AE23C88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AC40);
  }

  return result;
}

uint64_t sub_1ADE9241C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB0, &qword_1AE240B80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADE9248C(uint64_t a1)
{
  v3 = *(sub_1AE23BDDC() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1ADE744B8;

  return sub_1ADE8F994(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_1ADE925E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ADE926A4()
{
  result = qword_1ED966B60;
  if (!qword_1ED966B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED966B60);
  }

  return result;
}

uint64_t sub_1ADE92704()
{

  return sub_1ADE90AB4();
}

uint64_t sub_1ADE9278C()
{

  return sub_1ADE90308();
}

uint64_t sub_1ADE92810(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1ADEA712C(v5, v7) & 1;
}

uint64_t sub_1ADE9287C(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE928E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8FB0(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1ADE92934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9299C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7560);
  __swift_project_value_buffer(v0, qword_1EB5D7560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "root";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "references";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE92B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1ADEA4C0C(1, v5, v6);
        sub_1AE23C4FC();
      }

      else if (result == 2)
      {
        sub_1ADEA3B8C(2, v5, v6);
        sub_1AE23C4EC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADE92C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1AE23C32C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADEA8BC0(a3, a1, a4, a5, sub_1ADEA4C0C, 1, &type metadata for Proto4_CRDT);
  if (!v5)
  {
    if (*(a2 + 16))
    {
      sub_1ADEA3B8C(result, v16, v17);
      sub_1AE23C65C();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

void (*sub_1ADE92DFC(uint64_t *a1))(void *)
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

uint64_t sub_1ADE92EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA4F7C(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE92F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADE74344(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE92F98(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE92FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE74344(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE93048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE930BC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7578);
  __swift_project_value_buffer(v0, qword_1EB5D7578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AE2427B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "int";
  *(v5 + 8) = 3;
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
  *v15 = "date";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "reference";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "optional";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "taggedValue";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE933FC()
{
  type metadata accessor for Proto4_Value._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  v2 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  qword_1EB5BA550 = v0;
  return result;
}

uint64_t sub_1ADE93480()
{
  sub_1ADDCEDE0(v0 + OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf, &qword_1EB5BA028, &qword_1AE241808);

  return swift_deallocClassInstance();
}

void sub_1ADE934FC(uint64_t a1)
{
  if (!qword_1ED96A230)
  {
    type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(255);
    v1 = sub_1AE23D7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED96A230);
    }
  }
}

uint64_t sub_1ADE93554(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1ADE9358C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *v3;
    type metadata accessor for Proto4_Value._StorageClass(0);
    v13 = swift_allocObject();
    v18 = a3;
    v14 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
    v15 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
    (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
    v16 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
    swift_beginAccess();
    sub_1ADDCEE40(v12 + v16, v9, &qword_1EB5BA028, &qword_1AE241808);
    swift_beginAccess();
    a3 = v18;
    sub_1ADEA8654(v9, v13 + v14);
    swift_endAccess();

    *v3 = v13;
    v11 = v13;
  }

  sub_1ADE9372C(v11, a1, a2, a3);
}

void sub_1ADE9372C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1AE23C38C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (v9 > 4)
    {
      if (v9 > 6)
      {
        if (v9 == 7)
        {
          sub_1ADE94AA0(a1, a2, a3, a4);
        }

        else if (v9 == 8)
        {
          sub_1ADE94D90(a1, a2, a3, a4);
        }
      }

      else if (v9 == 5)
      {
        sub_1ADE941D8(a1, a2, a3, a4);
      }

      else
      {
        sub_1ADE947B0(a1, a2, a3, a4);
      }
    }

    else if (v9 > 2)
    {
      if (v9 == 3)
      {
        sub_1ADE93D18(a2, a1, a3, a4);
      }

      else
      {
        sub_1ADE93F64(a2, a1, a3, a4);
      }
    }

    else if (v9 == 1)
    {
      sub_1ADE938B0(a2, a1, a3, a4);
    }

    else if (v9 == 2)
    {
      sub_1ADE93AE4(a2, a1, a3, a4);
    }
  }
}

uint64_t sub_1ADE938B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v20 = 0;
  v21 = 1;
  result = sub_1AE23C42C();
  if (!v4 && (v21 & 1) == 0)
  {
    v22 = 0;
    v18 = v20;
    v13 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
    swift_beginAccess();
    v19 = v13;
    sub_1ADDCEE40(a2 + v13, v11, &qword_1EB5BA028, &qword_1AE241808);
    v14 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
    v15 = *(v14 - 8);
    LODWORD(v13) = (*(v15 + 48))(v11, 1, v14);
    sub_1ADDCEDE0(v11, &qword_1EB5BA028, &qword_1AE241808);
    if (v13 != 1)
    {
      v16 = v22;
      result = sub_1AE23C39C();
      if (v16)
      {
        return result;
      }

      v22 = 0;
    }

    *v8 = v18;
    swift_storeEnumTagMultiPayload();
    (*(v15 + 56))(v8, 0, 1, v14);
    v17 = v19;
    swift_beginAccess();
    sub_1ADEA8654(v8, a2 + v17);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADE93AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v21 = 0;
  v22 = 1;
  result = sub_1AE23C47C();
  if (!v4 && (v22 & 1) == 0)
  {
    v20 = 0;
    v13 = v21;
    v14 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
    swift_beginAccess();
    v19 = v14;
    sub_1ADDCEE40(a2 + v14, v11, &qword_1EB5BA028, &qword_1AE241808);
    v15 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
    v16 = *(v15 - 8);
    LODWORD(v14) = (*(v16 + 48))(v11, 1, v15);
    sub_1ADDCEDE0(v11, &qword_1EB5BA028, &qword_1AE241808);
    if (v14 != 1)
    {
      v17 = v20;
      result = sub_1AE23C39C();
      if (v17)
      {
        return result;
      }

      v20 = 0;
    }

    *v8 = v13;
    swift_storeEnumTagMultiPayload();
    (*(v16 + 56))(v8, 0, 1, v15);
    v18 = v19;
    swift_beginAccess();
    sub_1ADEA8654(v8, a2 + v18);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADE93D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v23 = 0;
  v24 = 0;
  result = sub_1AE23C49C();
  if (v4)
  {
  }

  if (v24)
  {
    v25 = v24;
    v20 = v23;
    v13 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
    swift_beginAccess();
    v21 = v13;
    v22 = a2;
    sub_1ADDCEE40(a2 + v13, v11, &qword_1EB5BA028, &qword_1AE241808);
    v14 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
    v15 = *(v14 - 8);
    LODWORD(v13) = (*(v15 + 48))(v11, 1, v14);
    sub_1ADDCEDE0(v11, &qword_1EB5BA028, &qword_1AE241808);
    if (v13 != 1)
    {
      sub_1AE23C39C();
    }

    v16 = v25;
    *v8 = v20;
    v8[1] = v16;
    swift_storeEnumTagMultiPayload();
    (*(v15 + 56))(v8, 0, 1, v14);
    v18 = v21;
    v17 = v22;
    swift_beginAccess();
    sub_1ADEA8654(v8, v17 + v18);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADE93F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  v23 = xmmword_1AE2427C0;
  sub_1AE23C3FC();
  v13 = v23;
  if (v4 || *(&v23 + 1) >> 60 == 15)
  {
    return sub_1ADDE1588(v23, *(&v23 + 1));
  }

  v20[1] = a4;
  v14 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  v24 = a2;
  v22 = v14;
  sub_1ADDCEE40(a2 + v14, v12, &qword_1EB5BA028, &qword_1AE241808);
  v15 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v21 = *(v15 - 8);
  v16 = (*(v21 + 48))(v12, 1, v15);
  sub_1ADDD86D8(v13, *(&v13 + 1));
  sub_1ADDCEDE0(v12, &qword_1EB5BA028, &qword_1AE241808);
  if (v16 != 1)
  {
    sub_1AE23C39C();
  }

  sub_1ADDE1588(v13, *(&v13 + 1));
  *v9 = v13;
  swift_storeEnumTagMultiPayload();
  (*(v21 + 56))(v9, 0, 1, v15);
  v18 = v24;
  v19 = v22;
  swift_beginAccess();
  sub_1ADEA8654(v9, v18 + v19);
  return swift_endAccess();
}

uint64_t sub_1ADE941D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v55 = a2;
  v56 = a3;
  v5 = sub_1AE23C2FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA878, &qword_1AE244FF8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v49 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v42 - v26;
  v51 = v6;
  v28 = *(v6 + 56);
  v53 = v5;
  v47 = v28;
  (v28)(&v42 - v26, 1, 1, v5, v25);
  v29 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  v46 = a1;
  v43 = v29;
  sub_1ADDCEE40(a1 + v29, v14, &qword_1EB5BA028, &qword_1AE241808);
  v44 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1ADDCEDE0(v14, &qword_1EB5BA028, &qword_1AE241808);
  }

  else
  {
    sub_1ADEA84F0(v14, v21);
    sub_1ADEA84F0(v21, v18);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1ADDCEDE0(v27, &qword_1EB5BA878, &qword_1AE244FF8);
      v31 = *(v51 + 32);
      v32 = v48;
      v33 = v53;
      v31(v48, v18, v53);
      v31(v27, v32, v33);
      v47(v27, 0, 1, v33);
      goto LABEL_7;
    }

    sub_1ADEA8494(v18);
  }

  v33 = v53;
LABEL_7:
  sub_1ADEA860C(&qword_1EB5B95B8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  v34 = v52;
  sub_1AE23C4FC();
  if (v34)
  {
    return sub_1ADDCEDE0(v27, &qword_1EB5BA878, &qword_1AE244FF8);
  }

  v36 = v49;
  sub_1ADDCEE40(v27, v49, &qword_1EB5BA878, &qword_1AE244FF8);
  v37 = v51;
  if ((*(v51 + 48))(v36, 1, v33) == 1)
  {
    sub_1ADDCEDE0(v27, &qword_1EB5BA878, &qword_1AE244FF8);
    return sub_1ADDCEDE0(v36, &qword_1EB5BA878, &qword_1AE244FF8);
  }

  else
  {
    v38 = *(v37 + 32);
    v38(v50, v36, v33);
    if (v30 != 1)
    {
      sub_1AE23C39C();
    }

    sub_1ADDCEDE0(v27, &qword_1EB5BA878, &qword_1AE244FF8);
    v39 = v45;
    v38(v45, v50, v33);
    swift_storeEnumTagMultiPayload();
    (*(v44 + 56))(v39, 0, 1, v15);
    v40 = v46;
    v41 = v43;
    swift_beginAccess();
    sub_1ADEA8654(v39, v40 + v41);
    return swift_endAccess();
  }
}

void sub_1ADE947B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v32 = 0;
  v17 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v17, v9, &qword_1EB5BA028, &qword_1AE241808);
  v18 = (*(v11 + 48))(v9, 1, v10);
  if (v18 == 1)
  {
    EnumCaseMultiPayload = sub_1ADDCEDE0(v9, &qword_1EB5BA028, &qword_1AE241808);
  }

  else
  {
    sub_1ADEA84F0(v9, v16);
    sub_1ADEA84F0(v16, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      v32 = *v13;
    }

    else
    {
      EnumCaseMultiPayload = sub_1ADEA8494(v13);
    }
  }

  sub_1ADEA3B8C(EnumCaseMultiPayload, v20, v21);
  v22 = v28;
  sub_1AE23C4FC();
  v23 = v32;
  if (v22)
  {
  }

  else if (v32)
  {
    if (v18 != 1)
    {
      v24 = v32;
      sub_1AE23C39C();
      v23 = v24;
    }

    v25 = v27;
    *v27 = v23;
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v25, 0, 1, v10);
    swift_beginAccess();
    sub_1ADEA8654(v25, a1 + v17);
    swift_endAccess();
  }
}

void sub_1ADE94AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v32 = 0;
  v17 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v17, v9, &qword_1EB5BA028, &qword_1AE241808);
  v18 = (*(v11 + 48))(v9, 1, v10);
  if (v18 == 1)
  {
    EnumCaseMultiPayload = sub_1ADDCEDE0(v9, &qword_1EB5BA028, &qword_1AE241808);
  }

  else
  {
    sub_1ADEA84F0(v9, v16);
    sub_1ADEA84F0(v16, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      v32 = *v13;
    }

    else
    {
      EnumCaseMultiPayload = sub_1ADEA8494(v13);
    }
  }

  sub_1ADEA3A2C(EnumCaseMultiPayload, v20, v21);
  v22 = v28;
  sub_1AE23C4FC();
  v23 = v32;
  if (v22)
  {
  }

  else if (v32)
  {
    if (v18 != 1)
    {
      v24 = v32;
      sub_1AE23C39C();
      v23 = v24;
    }

    v25 = v27;
    *v27 = v23;
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v25, 0, 1, v10);
    swift_beginAccess();
    sub_1ADEA8654(v25, a1 + v17);
    swift_endAccess();
  }
}

void sub_1ADE94D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v32 = 0;
  v17 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v17, v9, &qword_1EB5BA028, &qword_1AE241808);
  v18 = (*(v11 + 48))(v9, 1, v10);
  if (v18 == 1)
  {
    EnumCaseMultiPayload = sub_1ADDCEDE0(v9, &qword_1EB5BA028, &qword_1AE241808);
  }

  else
  {
    sub_1ADEA84F0(v9, v16);
    sub_1ADEA84F0(v16, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      v32 = *v13;
    }

    else
    {
      EnumCaseMultiPayload = sub_1ADEA8494(v13);
    }
  }

  sub_1ADEA376C(EnumCaseMultiPayload, v20, v21);
  v22 = v28;
  sub_1AE23C4FC();
  v23 = v32;
  if (v22)
  {
  }

  else if (v32)
  {
    if (v18 != 1)
    {
      v24 = v32;
      sub_1AE23C39C();
      v23 = v24;
    }

    v25 = v27;
    *v27 = v23;
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v25, 0, 1, v10);
    swift_beginAccess();
    sub_1ADEA8654(v25, a1 + v17);
    swift_endAccess();
  }
}

void sub_1ADE95080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v11, v10, &qword_1EB5BA028, &qword_1AE241808);
  v12 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v12 - 8) + 48))(v10, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          sub_1ADEA8494(v10);
          sub_1ADE95D0C(a1, a2, a3, a4);
        }

        else
        {
          sub_1ADEA8494(v10);
          sub_1ADE95EAC(a1, a2, a3, a4);
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        sub_1ADE95908(a1, a2, a3, a4);
        sub_1ADEA8494(v10);
      }

      else
      {
        sub_1ADEA8494(v10);
        sub_1ADE95B6C(a1, a2, a3, a4);
      }
    }

    else if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1ADEA8494(v10);
        sub_1ADE955E8(a1, a2, a3, a4);
      }

      else
      {
        sub_1ADEA8494(v10);
        sub_1ADE95774(a1, a2, a3, a4);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1ADE95470(a1, a2, a3, a4);
    }

    else
    {
      sub_1ADE952FC(a1, a2, a3, a4);
    }
  }
}

uint64_t sub_1ADE952FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v8, v7, &qword_1EB5BA028, &qword_1AE241808);
  v9 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1ADDCEDE0(v7, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    return sub_1AE23C5EC();
  }

  result = sub_1ADEA8494(v7);
  __break(1u);
  return result;
}

uint64_t sub_1ADE95470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v8, v7, &qword_1EB5BA028, &qword_1AE241808);
  v9 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1ADDCEDE0(v7, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AE23C60C();
  }

  result = sub_1ADEA8494(v7);
  __break(1u);
  return result;
}

uint64_t sub_1ADE955E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v8, v7, &qword_1EB5BA028, &qword_1AE241808);
  v9 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1ADDCEDE0(v7, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1AE23C62C();
  }

  result = sub_1ADEA8494(v7);
  __break(1u);
  return result;
}

void sub_1ADE95774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v12 - v6);
  v8 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v8, v7, &qword_1EB5BA028, &qword_1AE241808);
  v9 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1ADDCEDE0(v7, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v11 = *v7;
    v10 = v7[1];
    sub_1AE23C5CC();
    sub_1ADDCC35C(v11, v10);
    return;
  }

  sub_1ADEA8494(v7);
  __break(1u);
}

uint64_t sub_1ADE95908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v15 - v6;
  v8 = sub_1AE23C2FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v12, v7, &qword_1EB5BA028, &qword_1AE241808);
  v13 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v13 - 8) + 48))(v7, 1, v13) == 1)
  {
    sub_1ADDCEDE0(v7, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1ADEA860C(&qword_1EB5B95B8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
    sub_1AE23C66C();
    return (*(v9 + 8))(v11, v8);
  }

  result = sub_1ADEA8494(v7);
  __break(1u);
  return result;
}

void sub_1ADE95B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (v13 - v6);
  v8 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v8, v7, &qword_1EB5BA028, &qword_1AE241808);
  v9 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1ADDCEDE0(v7, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      v13[5] = *v7;
      sub_1ADEA3B8C(EnumCaseMultiPayload, v11, v12);
      sub_1AE23C66C();

      return;
    }
  }

  sub_1ADEA8494(v7);
  __break(1u);
}

void sub_1ADE95D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (v13 - v6);
  v8 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v8, v7, &qword_1EB5BA028, &qword_1AE241808);
  v9 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1ADDCEDE0(v7, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      v13[5] = *v7;
      sub_1ADEA3A2C(EnumCaseMultiPayload, v11, v12);
      sub_1AE23C66C();

      return;
    }
  }

  sub_1ADEA8494(v7);
  __break(1u);
}

void sub_1ADE95EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (v13 - v6);
  v8 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v8, v7, &qword_1EB5BA028, &qword_1AE241808);
  v9 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1ADDCEDE0(v7, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      v13[5] = *v7;
      sub_1ADEA376C(EnumCaseMultiPayload, v11, v12);
      sub_1AE23C66C();

      return;
    }
  }

  sub_1ADEA8494(v7);
  __break(1u);
}

BOOL sub_1ADE9604C(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA020, &qword_1AE241800);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v26 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v15, v14, &qword_1EB5BA028, &qword_1AE241808);
  v16 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  v17 = v27;
  swift_beginAccess();
  v18 = *(v7 + 56);
  sub_1ADDCEE40(v14, v9, &qword_1EB5BA028, &qword_1AE241808);
  sub_1ADDCEE40(v17 + v16, &v9[v18], &qword_1EB5BA028, &qword_1AE241808);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    v20 = v26;
    sub_1ADDCEE40(v9, v26, &qword_1EB5BA028, &qword_1AE241808);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v22 = v25;
      sub_1ADEA84F0(&v9[v18], v25);
      v23 = sub_1ADEA7754(v20, v22);
      sub_1ADEA8494(v22);
      sub_1ADDCEDE0(v14, &qword_1EB5BA028, &qword_1AE241808);
      sub_1ADEA8494(v20);
      sub_1ADDCEDE0(v9, &qword_1EB5BA028, &qword_1AE241808);
      return (v23 & 1) != 0;
    }

    sub_1ADDCEDE0(v14, &qword_1EB5BA028, &qword_1AE241808);
    sub_1ADEA8494(v20);
LABEL_6:
    sub_1ADDCEDE0(v9, &qword_1EB5BA020, &qword_1AE241800);
    return 0;
  }

  sub_1ADDCEDE0(v14, &qword_1EB5BA028, &qword_1AE241808);
  if (v19(&v9[v18], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1ADDCEDE0(v9, &qword_1EB5BA028, &qword_1AE241808);
  return 1;
}

uint64_t sub_1ADE963B8@<X0>(void *a1@<X8>)
{
  if (qword_1EB5B9970 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB5BA550;
}

void (*sub_1ADE96448(uint64_t *a1))(void *)
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

uint64_t sub_1ADE9654C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA85B8(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE965BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA4D6C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE965F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA4D6C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9667C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7590);
  __swift_project_value_buffer(v0, qword_1EB5D7590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AE2427D0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
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
  *v17 = "array";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "counter";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "taggedCRDT";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "customCRDT";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE969F8()
{
  sub_1ADE52030(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

void sub_1ADE96A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *v3;
    type metadata accessor for Proto4_CRDT._StorageClass();
    v10 = swift_allocObject();
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v13 = *(v9 + 32);
    v14 = *(v9 + 40);
    v15 = *(v9 + 48);
    v16 = *(v9 + 56);
    v17 = *(v9 + 64);
    *(v10 + 16) = v11;
    *(v10 + 24) = v12;
    *(v10 + 32) = v13;
    *(v10 + 40) = v14;
    *(v10 + 48) = v15;
    *(v10 + 56) = v16;
    *(v10 + 64) = v17;
    sub_1ADE51F04(v11, v12, v13, v14, v15, v16, v17);
    sub_1ADE52030(0, 0, 0, 0, 0, 0, 0xFFu);

    *v3 = v10;
    v8 = v10;
  }

  sub_1ADE96B10(v8, a1, a2, a3);
}

void sub_1ADE96B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1AE23C38C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (v9 <= 4)
    {
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          sub_1ADE96F54(a1, a2, a3, a4);
        }

        else
        {
          sub_1ADE970F0(a1, a2, a3, a4);
        }
      }

      else if (v9 == 1)
      {
        sub_1ADE96CB8(a1, a2, a3, a4);
      }

      else if (v9 == 2)
      {
        sub_1ADE96DB8(a1, a2, a3, a4);
      }
    }

    else if (v9 <= 6)
    {
      if (v9 == 5)
      {
        sub_1ADE971FC(a1, a2, a3, a4);
      }

      else
      {
        sub_1ADE97390(a1, a2, a3, a4);
      }
    }

    else
    {
      switch(v9)
      {
        case 7:
          sub_1ADE97524(a1, a2, a3, a4);
          break;
        case 8:
          sub_1ADE976CC(a1, a2, a3, a4);
          break;
        case 9:
          sub_1ADE977D8(a1, a2, a3, a4);
          break;
      }
    }
  }
}

void sub_1ADE96CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v6 = *(a1 + 64);
  if (!*(a1 + 64))
  {
    v15 = *(a1 + 16);
    sub_1ADE51F18(v15, *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0);
  }

  sub_1ADEA43CC(a1, a2, a3);
  sub_1AE23C4FC();
  v7 = v15;
  if (v4)
  {
  }

  else if (v15)
  {
    if (v6 != 255)
    {
      sub_1AE23C39C();
      v7 = v15;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *(a1 + 16) = v7;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    v14 = *(a1 + 64);
    *(a1 + 49) = 0u;
    sub_1ADE52030(v9, v8, v10, v11, v12, v13, v14);
  }
}

void sub_1ADE96DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v19 = 0u;
  v20 = 0u;
  v6 = *(a1 + 64);
  if (v6 == 1)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    sub_1ADE51F18(v10, v9, v8, v7, *(a1 + 48), *(a1 + 56), 1u);
    a1 = sub_1ADEA8718(0, 0, 0);
    *&v19 = v10;
    *(&v19 + 1) = v9;
    *&v20 = v8;
    *(&v20 + 1) = v7;
  }

  sub_1ADEA410C(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
    v11 = v20;
LABEL_5:
    sub_1ADEA8718(v19, *(&v19 + 1), v11);
    return;
  }

  if (!v20)
  {
    v11 = 0;
    goto LABEL_5;
  }

  sub_1ADDD86D8(v19, *(&v19 + 1));

  if (v6 != 255)
  {
    sub_1AE23C39C();
  }

  sub_1ADEA8718(v19, *(&v19 + 1), v20);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = *(v5 + 32);
  v15 = *(v5 + 40);
  v16 = *(v5 + 48);
  v17 = *(v5 + 56);
  *(v5 + 16) = v19;
  *(v5 + 32) = v20;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  v18 = *(v5 + 64);
  *(v5 + 64) = 1;
  sub_1ADE52030(v12, v13, v14, v15, v16, v17, v18);
}

void sub_1ADE96F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v19 = 0u;
  v20 = 0u;
  v6 = *(a1 + 64);
  if (v6 == 2)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    sub_1ADE51F18(v10, v9, v8, v7, *(a1 + 48), *(a1 + 56), 2u);
    a1 = sub_1ADEA8718(0, 0, 0);
    *&v19 = v10;
    *(&v19 + 1) = v9;
    *&v20 = v8;
    *(&v20 + 1) = v7;
  }

  sub_1ADEA410C(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
    v11 = v20;
LABEL_5:
    sub_1ADEA8718(v19, *(&v19 + 1), v11);
    return;
  }

  if (!v20)
  {
    v11 = 0;
    goto LABEL_5;
  }

  sub_1ADDD86D8(v19, *(&v19 + 1));

  if (v6 != 255)
  {
    sub_1AE23C39C();
  }

  sub_1ADEA8718(v19, *(&v19 + 1), v20);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = *(v5 + 32);
  v15 = *(v5 + 40);
  v16 = *(v5 + 48);
  v17 = *(v5 + 56);
  *(v5 + 16) = v19;
  *(v5 + 32) = v20;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  v18 = *(v5 + 64);
  *(v5 + 64) = 2;
  sub_1ADE52030(v12, v13, v14, v15, v16, v17, v18);
}

void sub_1ADE970F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v6 = *(a1 + 64);
  if (v6 == 3)
  {
    v15 = *(a1 + 16);
    sub_1ADE51F18(v15, *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 3u);
  }

  sub_1ADEA3E4C(a1, a2, a3);
  sub_1AE23C4FC();
  v7 = v15;
  if (v4)
  {
  }

  else if (v15)
  {
    if (v6 != 255)
    {
      sub_1AE23C39C();
      v7 = v15;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *(a1 + 16) = v7;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    v14 = *(a1 + 64);
    *(a1 + 64) = 3;
    sub_1ADE52030(v9, v8, v10, v11, v12, v13, v14);
  }
}

void sub_1ADE971FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v6 = *(a1 + 64);
  if (v6 == 4)
  {
    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
    sub_1ADE51F18(v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), 4u);
  }

  sub_1ADEA334C(a1, a2, a3);
  sub_1AE23C4FC();
  v8 = *(&v20 + 1);
  v7 = v20;
  v10 = *(&v21 + 1);
  v9 = v21;
  v12 = *(&v22 + 1);
  v11 = v22;
  if (v4)
  {
    sub_1ADEA8764(v20, *(&v20 + 1));
  }

  else if (*(&v20 + 1))
  {
    if (v6 != 255)
    {
      sub_1AE23C39C();
      v12 = *(&v22 + 1);
      v11 = v22;
      v8 = *(&v20 + 1);
      v10 = *(&v21 + 1);
      v9 = v21;
      v7 = v20;
    }

    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
    *(a1 + 48) = v11;
    *(a1 + 56) = v12;
    v19 = *(a1 + 64);
    *(a1 + 64) = 4;
    sub_1ADE52030(v13, v14, v15, v16, v17, v18, v19);
  }
}

void sub_1ADE97390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v6 = *(a1 + 64);
  if (v6 == 5)
  {
    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
    sub_1ADE51F18(v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), 5u);
  }

  sub_1ADEA334C(a1, a2, a3);
  sub_1AE23C4FC();
  v8 = *(&v20 + 1);
  v7 = v20;
  v10 = *(&v21 + 1);
  v9 = v21;
  v12 = *(&v22 + 1);
  v11 = v22;
  if (v4)
  {
    sub_1ADEA8764(v20, *(&v20 + 1));
  }

  else if (*(&v20 + 1))
  {
    if (v6 != 255)
    {
      sub_1AE23C39C();
      v12 = *(&v22 + 1);
      v11 = v22;
      v8 = *(&v20 + 1);
      v10 = *(&v21 + 1);
      v9 = v21;
      v7 = v20;
    }

    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
    *(a1 + 48) = v11;
    *(a1 + 56) = v12;
    v19 = *(a1 + 64);
    *(a1 + 64) = 5;
    sub_1ADE52030(v13, v14, v15, v16, v17, v18, v19);
  }
}

void sub_1ADE97524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v19 = 0;
  v20 = 0;
  v21 = xmmword_1AE241280;
  v6 = *(a1 + 64);
  if (v6 == 6)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    sub_1ADE51F18(v10, v9, v8, v7, *(a1 + 48), *(a1 + 56), 6u);
    a1 = sub_1ADEA87D4(0, 0, 1);
    v19 = v10;
    v20 = v9;
    *&v21 = v8;
    *(&v21 + 1) = v7;
  }

  sub_1ADEA426C(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
    v11 = v21;
LABEL_7:
    sub_1ADEA87D4(v19, v20, v11);
    return;
  }

  if (v21 == 1)
  {
    v11 = 1;
    goto LABEL_7;
  }

  sub_1ADDD86D8(v19, v20);

  if (v6 != 255)
  {
    sub_1AE23C39C();
  }

  sub_1ADEA87D4(v19, v20, v21);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = *(v5 + 32);
  v15 = *(v5 + 40);
  v16 = *(v5 + 48);
  v17 = *(v5 + 56);
  *(v5 + 16) = v19;
  *(v5 + 24) = v20;
  *(v5 + 32) = v21;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  v18 = *(v5 + 64);
  *(v5 + 64) = 6;
  sub_1ADE52030(v12, v13, v14, v15, v16, v17, v18);
}

void sub_1ADE976CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v6 = *(a1 + 64);
  if (v6 == 7)
  {
    v15 = *(a1 + 16);
    sub_1ADE51F18(v15, *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 7u);
  }

  sub_1ADEA38CC(a1, a2, a3);
  sub_1AE23C4FC();
  v7 = v15;
  if (v4)
  {
  }

  else if (v15)
  {
    if (v6 != 255)
    {
      sub_1AE23C39C();
      v7 = v15;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *(a1 + 16) = v7;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    v14 = *(a1 + 64);
    *(a1 + 64) = 7;
    sub_1ADE52030(v9, v8, v10, v11, v12, v13, v14);
  }
}

void sub_1ADE977D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v6 = *(a1 + 64);
  if (v6 == 8)
  {
    v15 = *(a1 + 16);
    sub_1ADE51F18(v15, *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 8u);
  }

  sub_1ADEA360C(a1, a2, a3);
  sub_1AE23C4FC();
  v7 = v15;
  if (v4)
  {
  }

  else if (v15)
  {
    if (v6 != 255)
    {
      sub_1AE23C39C();
      v7 = v15;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *(a1 + 16) = v7;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    v14 = *(a1 + 64);
    *(a1 + 64) = 8;
    sub_1ADE52030(v9, v8, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_1ADE978E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 64);
  if (v4 > 4)
  {
    if (*(result + 64) <= 6u)
    {
      if (v4 == 5)
      {
        return sub_1ADE97C90(result, a2, a3, a4);
      }

      else
      {
        return sub_1ADE97D80(result, a2, a3, a4);
      }
    }

    else if (v4 == 7)
    {
      return sub_1ADE97DFC(result, a2, a3, a4);
    }

    else if (v4 == 8)
    {
      return sub_1ADE97E78(result, a2, a3, a4);
    }
  }

  else if (*(result + 64) <= 1u)
  {
    if (*(result + 64))
    {
      return sub_1ADE97A1C(result, a2, a3, a4);
    }

    else
    {
      return sub_1ADE979A4(result, a2, a3, a4);
    }
  }

  else if (v4 == 2)
  {
    return sub_1ADE97AA0(result, a2, a3, a4);
  }

  else if (v4 == 3)
  {
    return sub_1ADE97B24(result, a2, a3, a4);
  }

  else
  {
    return sub_1ADE97BA0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1ADE979A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 64))
  {
    __break(1u);
  }

  else
  {
    sub_1ADEA43CC(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADE97A1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 64) == 1)
  {
    sub_1ADEA410C(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97AA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 64) == 2)
  {
    sub_1ADEA410C(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97B24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 64) == 3)
  {
    sub_1ADEA3E4C(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97BA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 64) == 4)
  {
    sub_1ADE51F18(*(result + 16), *(result + 24), *(result + 32), *(result + 40), *(result + 48), *(result + 56), 4u);
    sub_1ADEA334C(v4, v5, v6);
    sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97C90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 64) == 5)
  {
    sub_1ADE51F18(*(result + 16), *(result + 24), *(result + 32), *(result + 40), *(result + 48), *(result + 56), 5u);
    sub_1ADEA334C(v4, v5, v6);
    sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97D80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 64) == 6)
  {
    sub_1ADEA426C(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97DFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 64) == 7)
  {
    sub_1ADEA38CC(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97E78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 64) == 8)
  {
    sub_1ADEA360C(result, a2, a3);
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1ADE97EF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v14 = *(a2 + 48);
  v13 = *(a2 + 56);
  v15 = *(a2 + 64);
  if (v8 != 255)
  {
    if (v15 != 255)
    {
      v49[0] = *(a2 + 16);
      v49[1] = v9;
      v49[2] = v12;
      v49[3] = v11;
      v49[4] = v14;
      v49[5] = v13;
      v39 = v15;
      v50 = v15;
      v47[0] = v3;
      v47[1] = v2;
      v47[2] = v5;
      v47[3] = v4;
      v47[4] = v7;
      v47[5] = v6;
      v48 = v8;
      v37 = v10;
      v16 = v2;
      v35 = v5;
      v36 = v2;
      v17 = v9;
      v18 = v12;
      v34 = v12;
      v19 = v5;
      v20 = v11;
      v43 = v7;
      v45 = v6;
      v21 = v8;
      v41 = v8;
      sub_1ADE51F04(v3, v16, v19, v4, v7, v6, v8);
      sub_1ADE51F04(v37, v17, v18, v20, v14, v13, v39);
      sub_1ADE51F04(v3, v36, v35, v4, v43, v45, v21);
      sub_1ADE51F04(v37, v17, v34, v20, v14, v13, v39);

      v32 = sub_1ADEA712C(v47, v49);
      sub_1ADE52030(v37, v17, v34, v20, v14, v13, v39);
      sub_1ADE52030(v3, v36, v35, v4, v43, v45, v41);

      sub_1ADE52030(v37, v17, v34, v20, v14, v13, v39);
      sub_1ADE52030(v3, v36, v35, v4, v43, v45, v41);
      return (v32 & 1) != 0;
    }

LABEL_6:
    v23 = *(a2 + 16);
    v24 = *(a2 + 24);
    v25 = *(a2 + 40);
    v44 = *(a1 + 48);
    v46 = *(a1 + 56);
    v40 = *(a2 + 64);
    v42 = *(a1 + 64);
    sub_1ADE51F04(*(a1 + 16), v2, v5, v4, v7, v6, v8);
    sub_1ADE51F04(v23, v24, v12, v25, v14, v13, v40);
    sub_1ADE52030(v3, v2, v5, v4, v44, v46, v42);
    sub_1ADE52030(v23, v24, v12, v25, v14, v13, v40);
    return 0;
  }

  if (v15 != 255)
  {
    goto LABEL_6;
  }

  v38 = *(a2 + 16);
  v33 = *(a2 + 24);
  v26 = *(a1 + 32);
  v27 = *(a2 + 32);
  v28 = *(a1 + 40);
  v29 = *(a2 + 40);
  v30 = *(a1 + 48);
  v31 = *(a1 + 56);
  sub_1ADE51F04(v3, v2, v26, v28, v7, v6, 0xFFu);
  sub_1ADE51F04(v38, v33, v27, v29, v14, v13, 0xFFu);
  sub_1ADE52030(v3, v2, v26, v28, v30, v31, 0xFFu);
  return 1;
}

uint64_t sub_1ADE98258@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto4_CRDT._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void (*sub_1ADE982B0(uint64_t *a1))(void *)
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

uint64_t sub_1ADE983B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA86C4(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE98424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA4C0C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE98460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA4C0C(a1, a2, a3);

  return sub_1AE23C54C();
}

void (*sub_1ADE98520(uint64_t *a1))(void *)
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

uint64_t sub_1ADE98648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8824(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE986B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA4AAC(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE986F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA4AAC(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE98758()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D75C0);
  __swift_project_value_buffer(v0, qword_1EB5D75C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "counter";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE98920(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1AE23C32C();
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_10;
    }

    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_1AE23C5CC();
      if (v6)
      {
        return result;
      }

      goto LABEL_10;
    }

    v14 = a2;
    v15 = a2 >> 32;
  }

  if (v14 != v15)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!a4 || (result = sub_1AE23C5EC(), !v6))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v18 + 8))(v12, v10);
  }

  return result;
}

double sub_1ADE98ABC@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE241910;
  *(a1 + 16) = 0;
  return result;
}

void (*sub_1ADE98AEC(uint64_t *a1))(void *)
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

uint64_t sub_1ADE98BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8878(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE98C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA494C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE98CA0(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE98D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA494C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE98D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE98DD8()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D75D8);
  __swift_project_value_buffer(v0, qword_1EB5D75D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuidIndex";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "counter";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE98FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1AE23C43C();
    }
  }

  return result;
}

uint64_t sub_1ADE99020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    result = sub_1AE23C5EC();
    if (v5)
    {
      return result;
    }

    if (!a3)
    {
      goto LABEL_7;
    }

LABEL_6:
    result = sub_1AE23C5EC();
    if (v5)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1ADE99198(uint64_t a1)
{
  v2 = sub_1AE23C32C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*sub_1ADE991FC(uint64_t *a1))(void *)
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

uint64_t sub_1ADE992EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA88CC(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE9935C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA47EC(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE99398(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE993FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA47EC(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE99448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

void (*sub_1ADE994F8(uint64_t *a1))(void *)
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

uint64_t sub_1ADE99620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8920(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE99690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA468C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE996CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA468C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE99730(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, double))
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  if (a5(*a1, *a2, v13))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v16 = sub_1AE23CCBC();
    v17 = *(v9 + 8);
    v17(v11, v8);
    v17(v15, v8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1ADE998B4()
{
  strcpy(v1, "Proto4.Version");
  HIBYTE(v1[1]) = -18;
  result = MEMORY[0x1B26FB670](0x6E6565532ELL, 0xE500000000000000);
  qword_1EB5D7608 = v1[0];
  unk_1EB5D7610 = v1[1];
  return result;
}

uint64_t sub_1ADE99924()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7618);
  __swift_project_value_buffer(v0, qword_1EB5D7618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "runs";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE99AEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1AE23C40C();
    }

    else if (result == 2)
    {
      a4(v4 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1ADE99B88(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1AE23C32C();
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_10;
    }

    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_1AE23C5CC();
      if (v6)
      {
        return result;
      }

      goto LABEL_10;
    }

    v14 = a2;
    v15 = a2 >> 32;
  }

  if (v14 != v15)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(a4 + 16) || (result = sub_1AE23C56C(), !v6))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v18 + 8))(v12, v10);
  }

  return result;
}

void (*sub_1ADE99D50(uint64_t *a1))(void *)
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

uint64_t sub_1ADE99E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8974(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE99EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA452C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE99F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA452C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE99F68()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7630);
  __swift_project_value_buffer(v0, qword_1EB5D7630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "value";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

void *sub_1ADE9A17C(void *a1)
{
  *(v1 + 1) = xmmword_1AE241910;
  *(v1 + 2) = xmmword_1AE2427C0;
  v1[6] = 0;
  v1[7] = 0;
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];
  swift_beginAccess();
  v5 = v1[2];
  v6 = v1[3];
  v1[2] = v3;
  v1[3] = v4;
  sub_1ADDD86D8(v3, v4);
  sub_1ADDCC35C(v5, v6);
  swift_beginAccess();
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  swift_beginAccess();
  v10 = v1[4];
  v11 = v1[5];
  v1[4] = v7;
  v1[5] = v8;
  v1[6] = v9;
  sub_1ADDE0F78(v7, v8);
  sub_1ADDE158C(v10, v11);
  swift_beginAccess();
  v12 = a1[7];

  swift_beginAccess();
  v1[7] = v12;

  return v1;
}

uint64_t sub_1ADE9A2F0()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));
  sub_1ADDE158C(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE9A33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1ADE9A428(a2, a1, a3, a4);
          break;
        case 2:
          sub_1ADE9D73C(a2, a1, a3, a4, sub_1ADEA494C, &type metadata for Proto4_Timestamp);
          break;
        case 1:
          sub_1ADE9D6B8(a2, a1, a3, a4);
          break;
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADE9A428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1ADEA4D6C(v4, v5, v6);
  sub_1AE23C4FC();
  return swift_endAccess();
}

void sub_1ADE9A4BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = a1[2];
  v10 = a1[3];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2 || *(v9 + 16) == *(v9 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v11)
  {
    if ((v10 & 0xFF000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_1ADDD86D8(a1[2], a1[3]);
    sub_1AE23C5CC();
    sub_1ADDCC35C(v9, v10);
    if (v4)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v9 != v9 >> 32)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1ADE9A5D8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1ADE9A684(a1, a2, a3, a4);
  }
}

uint64_t sub_1ADE9A5D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (a1[5] >> 60 != 15)
  {
    sub_1ADEA494C(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADE9A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 56))
  {
    sub_1ADEA4D6C(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

BOOL sub_1ADE9A71C(void *a1, void *a2)
{
  v4 = sub_1AE23C32C();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31[-v8];
  swift_beginAccess();
  v10 = a1[2];
  v11 = a1[3];
  swift_beginAccess();
  v12 = a2[2];
  v13 = a2[3];

  sub_1ADDD86D8(v10, v11);
  sub_1ADDD86D8(v12, v13);
  v14 = sub_1ADDD6F8C(v10, v11, v12, v13);
  sub_1ADDCC35C(v12, v13);
  sub_1ADDCC35C(v10, v11);
  if (!v14)
  {
    goto LABEL_24;
  }

  v33 = v4;
  swift_beginAccess();
  v16 = a1[4];
  v15 = a1[5];
  v17 = a1[6];
  swift_beginAccess();
  v19 = a2[4];
  v18 = a2[5];
  v20 = a2[6];
  sub_1ADDE0F78(v16, v15);
  sub_1ADDE0F78(v19, v18);
  if (v15 >> 60 == 15)
  {
    if (v18 >> 60 == 15)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_1ADDE0F78(v16, v15);
  sub_1ADDE0F78(v19, v18);
  if (v18 >> 60 == 15)
  {

    sub_1ADDE158C(v19, v18);
    sub_1ADDE158C(v16, v15);
LABEL_13:
    sub_1ADDE158C(v16, v15);
    v26 = v19;
    v27 = v18;
LABEL_20:
    sub_1ADDE158C(v26, v27);
    return 0;
  }

  if (!sub_1ADDD6F8C(v16, v15, v19, v18) || v17 != v20)
  {

    sub_1ADDE158C(v19, v18);
    sub_1ADDE158C(v19, v18);
    sub_1ADDE158C(v16, v15);
    goto LABEL_19;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v28 = v33;
  v32 = sub_1AE23CCBC();
  sub_1ADDE158C(v19, v18);
  sub_1ADDE158C(v19, v18);
  sub_1ADDE158C(v16, v15);
  v29 = *(v34 + 8);
  v29(v6, v28);
  v29(v9, v28);
  if ((v32 & 1) == 0)
  {

LABEL_19:
    v26 = v16;
    v27 = v15;
    goto LABEL_20;
  }

LABEL_4:
  sub_1ADDE158C(v16, v15);
  swift_beginAccess();
  v21 = a1[7];
  swift_beginAccess();
  v22 = a2[7];
  if (!v21)
  {

    if (!v22)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if (!v22)
  {
LABEL_24:

LABEL_25:

    return 0;
  }

  if (v21 != v22 && !sub_1ADE9604C(v21, v22))
  {

    goto LABEL_24;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v23 = v33;
  v24 = sub_1AE23CCBC();
  v25 = *(v34 + 8);
  v25(v6, v23);
  v25(v9, v23);

  return (v24 & 1) != 0;
}

uint64_t sub_1ADE9AC5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto4_Register._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void (*sub_1ADE9ACB8(uint64_t *a1))(void *)
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

uint64_t sub_1ADE9ADFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA89C8(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE9AE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA43CC(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE9AEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA43CC(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9AF2C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7648);
  __swift_project_value_buffer(v0, qword_1EB5D7648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "positive";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "negative";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9B13C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        sub_1ADEA468C(2, v5, v6);
LABEL_12:
        sub_1AE23C4FC();
        goto LABEL_4;
      }

      if (result == 1)
      {
        sub_1AE23C40C();
      }

LABEL_4:
      result = sub_1AE23C38C();
    }

    sub_1ADEA468C(3, v5, v6);
    goto LABEL_12;
  }

  return result;
}

void sub_1ADE9B21C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  v22 = v12;
  v23 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_10;
    }

    v20 = *(a2 + 16);
    v21 = *(a2 + 24);
  }

  else
  {
    if (!v19)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      v14 = sub_1AE23C5CC();
      if (v7)
      {
        return;
      }

      goto LABEL_10;
    }

    v20 = a2;
    v21 = a2 >> 32;
  }

  if (v20 != v21)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (a4)
  {
    v24 = a4;
    sub_1ADEA468C(v14, v15, v16);
    v14 = sub_1AE23C66C();
  }

  if (!v7)
  {
    if (a5)
    {
      v24 = a5;
      sub_1ADEA468C(v14, v15, v16);
      sub_1AE23C66C();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    (*(v23 + 8))(v18, v22);
  }
}

double sub_1ADE9B404@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE241910;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

void (*sub_1ADE9B43C(uint64_t *a1))(void *)
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

uint64_t sub_1ADE9B530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8A1C(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE9B5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA426C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE9B5DC(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9B640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA426C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9B68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9B704()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7660);
  __swift_project_value_buffer(v0, qword_1EB5D7660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "insertions";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9B918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1ADEA3FAC(3, v5, v6);
          sub_1AE23C4EC();
          break;
        case 2:
          sub_1ADEA468C(2, v5, v6);
          sub_1AE23C4FC();
          break;
        case 1:
          sub_1AE23C40C();
          break;
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

void sub_1ADE9BA20(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  v22 = v12;
  v23 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_10;
    }

    v20 = *(a2 + 16);
    v21 = *(a2 + 24);
  }

  else
  {
    if (!v19)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      v14 = sub_1AE23C5CC();
      if (v7)
      {
        return;
      }

      goto LABEL_10;
    }

    v20 = a2;
    v21 = a2 >> 32;
  }

  if (v20 != v21)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (a5)
  {
    v24 = a5;
    sub_1ADEA468C(v14, v15, v16);
    v14 = sub_1AE23C66C();
  }

  if (!v7)
  {
    if (*(a4 + 16))
    {
      sub_1ADEA3FAC(v14, v15, v16);
      sub_1AE23C65C();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    (*(v23 + 8))(v18, v22);
  }
}

double sub_1ADE9BC08@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE241910;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  return result;
}

void (*sub_1ADE9BC40(uint64_t *a1))(void *)
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

uint64_t sub_1ADE9BD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8A70(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE9BDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA410C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE9BDE4(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9BE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA410C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9BE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9BF40()
{
  result = MEMORY[0x1B26FB670](0x746E656D656C452ELL, 0xE800000000000000);
  qword_1EB5D7678 = 0x532E346F746F7250;
  unk_1EB5D7680 = 0xEA00000000007465;
  return result;
}

uint64_t sub_1ADE9BFAC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7688);
  __swift_project_value_buffer(v0, qword_1EB5D7688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "addedBy";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9C1C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 3)
      {
        v7 = v3;
        sub_1ADEA468C(3, v5, v6);
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v7 = v3;
        sub_1ADEA4D6C(1, v5, v6);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1AE23C38C();
    }

    v7 = v3;
    sub_1ADEA4C0C(2, v5, v6);
LABEL_5:
    v3 = v7;
    sub_1AE23C4FC();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1ADE9C2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a3;
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADEA8BC0(a2, a1, a5, a6, sub_1ADEA4D6C, 1, &type metadata for Proto4_Value);
  if (!v6)
  {
    sub_1ADEA8BC0(v18, a1, a5, a6, sub_1ADEA4C0C, 2, &type metadata for Proto4_CRDT);
    sub_1ADEA8E90(a4, a1, a5, a6, 3);
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

void sub_1ADE9C464(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void (*sub_1ADE9C498(uint64_t *a1))(void *)
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

uint64_t sub_1ADE9C58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8AC4(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE9C5FC(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1ADEA3FAC(a1, a3, a4);

  return MEMORY[0x1EEE15928](a1, v5);
}

uint64_t sub_1ADE9C638(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4)
{
  sub_1ADEA3FAC(a1, a2, a4);

  return sub_1AE23C54C();
}

void (*sub_1ADE9C6D8(uint64_t *a1))(void *)
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

uint64_t sub_1ADE9C800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8B18(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE9C870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA3E4C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE9C8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA3E4C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9C910()
{
  strcpy(v1, "Proto4.Struct");
  HIWORD(v1[1]) = -4864;
  result = MEMORY[0x1B26FB670](0x646C6569462ELL, 0xE600000000000000);
  qword_1EB5D76B8 = v1[0];
  unk_1EB5D76C0 = v1[1];
  return result;
}

uint64_t sub_1ADE9C980()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D76C8);
  __swift_project_value_buffer(v0, qword_1EB5D76C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9CB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1AE23C4AC();
      }

      else if (result == 2)
      {
        sub_1ADEA4C0C(2, v5, v6);
        sub_1AE23C4FC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADE9CC04(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_1AE23C32C();
  v19 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v16 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || (result = sub_1AE23C62C(), !v6))
  {
    result = sub_1ADEA8BC0(a4, a1, a5, a6, sub_1ADEA4C0C, 2, &type metadata for Proto4_CRDT);
    if (!v6)
    {
      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v19 + 8))(v15, v13);
    }
  }

  return result;
}

void sub_1ADE9CD94(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
}

void (*sub_1ADE9CDCC(uint64_t *a1))(void *)
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

uint64_t sub_1ADE9CEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8B6C(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE9CF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA3CEC(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE9CF6C(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9CFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA3CEC(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9D024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9D0A4()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D76E0);
  __swift_project_value_buffer(v0, qword_1EB5D76E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE242560;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "crdt";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "keyPath";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1AE23C68C();
}

void *sub_1ADE9D2F4(void *a1)
{
  *(v1 + 1) = xmmword_1AE241910;
  v1[6] = 0;
  v1[5] = 0;
  v1[4] = 0;
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];
  swift_beginAccess();
  v5 = v1[2];
  v6 = v1[3];
  v1[2] = v3;
  v1[3] = v4;
  sub_1ADDD86D8(v3, v4);
  sub_1ADDCC35C(v5, v6);
  swift_beginAccess();
  v7 = a1[4];
  swift_beginAccess();
  v1[4] = v7;

  swift_beginAccess();
  v8 = a1[5];
  swift_beginAccess();
  v1[5] = v8;

  swift_beginAccess();
  v9 = a1[6];

  swift_beginAccess();
  v1[6] = v9;

  return v1;
}

uint64_t sub_1ADE9D48C()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE9D4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = *v7;
    a4(0);
    swift_allocObject();
    v15 = a6(v16);
    *v10 = v15;
  }

  return a7(v15, a1, a2, a3);
}

uint64_t sub_1ADE9D5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1ADE9D7E0(a2, a1, a3, a4);
        }

        else if (result == 4)
        {
          sub_1ADE9D874(a2, a1, a3, a4);
        }
      }

      else if (result == 1)
      {
        sub_1ADE9D6B8(a2, a1, a3, a4);
      }

      else if (result == 2)
      {
        sub_1ADE9D73C(a2, a1, a3, a4, sub_1ADEA468C, &type metadata for Proto4_Version);
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADE9D6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1AE23C40C();
  return swift_endAccess();
}

uint64_t sub_1ADE9D73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = swift_beginAccess();
  a5(v7);
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1ADE9D7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1ADEA4C0C(v4, v5, v6);
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1ADE9D874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1ADEA4AAC(v4, v5, v6);
  sub_1AE23C4FC();
  return swift_endAccess();
}

void sub_1ADE9D908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2 && *(v9 + 16) != *(v9 + 24))
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!v11)
    {
      if ((v10 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      sub_1ADDD86D8(*(a1 + 16), *(a1 + 24));
      sub_1AE23C5CC();
      sub_1ADDCC35C(v9, v10);
      if (v4)
      {
        return;
      }

      goto LABEL_10;
    }

    if (v9 != v9 >> 32)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  sub_1ADE9DA3C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1ADE9DAD4(a1, a2, a3, a4);
    sub_1ADE9DB6C(a1, a2, a3, a4);
  }
}

uint64_t sub_1ADE9DA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 32))
  {
    sub_1ADEA468C(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADE9DAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    sub_1ADEA4C0C(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADE9DB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {
    sub_1ADEA4AAC(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

BOOL sub_1ADE9DC04(void *a1, void *a2)
{
  v4 = sub_1AE23C32C();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  swift_beginAccess();
  v10 = a1[2];
  v11 = a1[3];
  swift_beginAccess();
  v12 = a2[2];
  v13 = a2[3];

  sub_1ADDD86D8(v10, v11);
  sub_1ADDD86D8(v12, v13);
  v14 = sub_1ADDD6F8C(v10, v11, v12, v13);
  sub_1ADDCC35C(v12, v13);
  sub_1ADDCC35C(v10, v11);
  if (!v14)
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  v15 = a1[4];
  swift_beginAccess();
  v16 = a2[4];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_8;
    }

    sub_1ADE4E9A0(v17, v16);
    if ((v18 & 1) == 0)
    {
LABEL_24:

LABEL_25:

      return 0;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v19 = sub_1AE23CCBC();

    v20 = *(v32 + 8);
    v20(v6, v4);
    v20(v9, v4);
    if ((v19 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v16)
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  v22 = a1[5];
  swift_beginAccess();
  v23 = a2[5];
  if (!v22)
  {
    if (!v23)
    {
      goto LABEL_19;
    }

LABEL_8:

LABEL_9:

    return 0;
  }

  if (!v23)
  {
    goto LABEL_8;
  }

  if (v22 != v23 && !sub_1ADE97EF4(v22, v23))
  {

    goto LABEL_9;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v24 = sub_1AE23CCBC();
  v25 = *(v32 + 8);
  v25(v6, v4);
  v25(v9, v4);

  if ((v24 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_19:
  swift_beginAccess();
  v26 = a1[6];
  swift_beginAccess();
  v27 = a2[6];
  if (!v26)
  {

    if (!v27)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if (!v27)
  {
    goto LABEL_8;
  }

  sub_1ADE4CC60(v28, v27);
  if ((v29 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v30 = sub_1AE23CCBC();

  v31 = *(v32 + 8);
  v31(v6, v4);
  v31(v9, v4);
  return (v30 & 1) != 0;
}

uint64_t sub_1ADE9E10C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto4_Reference._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void (*sub_1ADE9E160(uint64_t *a1))(void *)
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

uint64_t sub_1ADE9E2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8C44(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE9E314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA3B8C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE9E350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA3B8C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9E410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *v3;
    type metadata accessor for Proto4_Optional._StorageClass();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    swift_beginAccess();
    v11 = *(v9 + 16);
    swift_beginAccess();
    *(v10 + 16) = v11;

    *v3 = v10;
    v8 = v10;
  }

  return sub_1ADE9E4F0(v8, a1, a2, a3);
}

uint64_t sub_1ADE9E4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1ADE9E564(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1ADE9E564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1ADEA4D6C(v4, v5, v6);
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1ADE9E5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, double))
{
  v11 = sub_1AE23C32C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a5(a2, a1, a3, a4, v13);
  if (!v5)
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

uint64_t sub_1ADE9E72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    sub_1ADEA4D6C(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADE9E7C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto4_Optional._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void (*sub_1ADE9E820(uint64_t *a1))(void *)
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

uint64_t sub_1ADE9E924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8C98(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE9E994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA3A2C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE9E9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA3A2C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9EA28()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7710);
  __swift_project_value_buffer(v0, qword_1EB5D7710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tag";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wrapped";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9EBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v10 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = *v6;
    a4(0);
    swift_allocObject();
    v15 = sub_1ADDE5178(v16);
    *v10 = v15;
  }

  return sub_1ADE9F338(v15, a1, a2, a3, a5, a6);
}

uint64_t sub_1ADE9ECAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto4_TaggedCRDT._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void (*sub_1ADE9ED00(uint64_t *a1))(void *)
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

uint64_t sub_1ADE9EE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8CEC(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE9EEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA38CC(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE9EEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA38CC(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9EF6C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7728);
  __swift_project_value_buffer(v0, qword_1EB5D7728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tag";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wrapped";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9F158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1ADE9F1AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1ADE9F224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 49))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 48);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1ADE9F26C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ADE9F338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1ADE9F3E4(a2, a1, a3, a4);
    }

    else if (result == 2)
    {
      sub_1ADE9F468(a2, a1, a3, a4, a5, a6);
    }
  }

  return result;
}

uint64_t sub_1ADE9F3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1AE23C43C();
  return swift_endAccess();
}

uint64_t sub_1ADE9F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = swift_beginAccess();
  a5(v7);
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1ADE9F50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v13 = sub_1AE23C32C();
  v19 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADE9F64C(a2, a1, a3, a4, a5, a6);
  if (!v6)
  {
    v17 = v19;
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v17 + 8))(v15, v13);
  }

  return result;
}

uint64_t sub_1ADE9F64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    return sub_1ADE9F6FC(a1, a2, a3, a4, a5, a6);
  }

  result = sub_1AE23C5EC();
  if (!v6)
  {
    return sub_1ADE9F6FC(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1ADE9F6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    a5(result);
    return sub_1AE23C66C();
  }

  return result;
}

BOOL sub_1ADE9F7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1AE23C32C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11];
  swift_beginAccess();
  v13 = *(a1 + 16);
  swift_beginAccess();
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v14 = *(a1 + 24);
  swift_beginAccess();
  v15 = *(a2 + 24);
  if (v14)
  {
    if (v15)
    {

      if (v14 == v15 || (a3(v14, v15) & 1) != 0)
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v16 = sub_1AE23CCBC();
        v17 = *(v7 + 8);
        v17(v9, v6);
        v17(v12, v6);

        return (v16 & 1) != 0;
      }
    }
  }

  else if (!v15)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1ADE9FA1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto4_TaggedValue._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void (*sub_1ADE9FA70(uint64_t *a1))(void *)
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

uint64_t sub_1ADE9FBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8D40(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADE9FC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA376C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADE9FC58(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9FCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA376C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9FD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9FDB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AE2418F0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v13 = sub_1AE23C67C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9FF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v5 || (v8 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      sub_1AE23C4EC();
    }
  }

  return result;
}

uint64_t sub_1ADE9FFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(double), uint64_t a6)
{
  v15[1] = a6;
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (a5(v11), result = sub_1AE23C65C(), !v6))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

void (*sub_1ADEA012C(uint64_t *a1))(void *)
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

uint64_t sub_1ADEA0254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8D94(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADEA02C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA360C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADEA0300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA360C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADEA0364()
{
  result = MEMORY[0x1B26FB670](0x676E696C6269532ELL, 0xE800000000000000);
  qword_1EB5D7758 = 0xD000000000000011;
  unk_1EB5D7760 = 0x80000001AE260A50;
  return result;
}

uint64_t sub_1ADEA03D0()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7768);
  __swift_project_value_buffer(v0, qword_1EB5D7768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADEA0598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1ADEA468C(1, v5, v6);
        sub_1AE23C4FC();
      }

      else if (result == 2)
      {
        sub_1AE23C40C();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

void sub_1ADEA0654(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_1AE23C32C();
  v22 = *(v13 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADEA07EC(v14, a2, a3, a4, a1, a5, a6);
  if (!v6)
  {
    v17 = v22;
    v18 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_11;
      }

      v19 = *(a2 + 16);
      v20 = *(a2 + 24);
    }

    else
    {
      if (!v18)
      {
        if ((a3 & 0xFF000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v19 = a2;
      v20 = a2 >> 32;
    }

    if (v19 != v20)
    {
LABEL_10:
      sub_1AE23C5CC();
    }

LABEL_11:
    sub_1AE23C31C();
    sub_1AE23C30C();
    (*(v17 + 8))(v16, v13);
  }
}

void sub_1ADEA07EC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    sub_1ADEA468C(a2, a3, a4);
    sub_1AE23C66C();
  }
}

void (*sub_1ADEA0884(uint64_t *a1))(void *)
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

uint64_t sub_1ADEA0978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8DE8(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADEA09E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA34AC(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADEA0A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA34AC(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADEA0AAC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7780);
  __swift_project_value_buffer(v0, qword_1EB5D7780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "string";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "element";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subsequence";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "version";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "addedByVersion";
  *(v15 + 8) = 14;
  *(v15 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADEA0D40(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1AE23C4AC();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v8 = v3;
          sub_1ADEA4C0C(2, v5, v6);
LABEL_16:
          v3 = v8;
          sub_1AE23C4EC();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v8 = v3;
            sub_1ADEA31EC(3, v5, v6);
            goto LABEL_16;
          case 4:
            v7 = v3;
            sub_1ADEA468C(4, v5, v6);
            break;
          case 5:
            v7 = v3;
            sub_1ADEA468C(5, v5, v6);
            break;
          default:
            goto LABEL_5;
        }

        v3 = v7;
        sub_1AE23C4FC();
      }

LABEL_5:
      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADEA0E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_1AE23C32C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *v6;
  v16 = v6[1];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    result = sub_1AE23C62C();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v6[2] + 16))
  {
    sub_1ADEA4C0C(result, v16, v12);
    v18 = v5;
    result = sub_1AE23C65C();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v18 = v5;
  }

  if (!*(v6[3] + 16) || (sub_1ADEA31EC(result, v16, v12), result = sub_1AE23C65C(), !v18))
  {
    result = sub_1ADEA8E90(v6[4], a1, a2, a3, 4);
    if (!v18)
    {
      sub_1ADEA8E90(v6[5], a1, a2, a3, 5);
      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

void sub_1ADEA1084(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = v1;
  a1[4] = 0;
  a1[5] = 0;
}

void (*sub_1ADEA10C4(uint64_t *a1))(void *)
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

uint64_t sub_1ADEA11A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8E3C(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADEA1218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA334C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADEA1254(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA12D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA334C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADEA131C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA1394(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1ADEA5E98(v7, v8) & 1;
}

uint64_t sub_1ADEA13DC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7798);
  __swift_project_value_buffer(v0, qword_1EB5D7798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE242560;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sequenceStartID";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "length";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "addedBy";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "child";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADEA1624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1ADEA47EC(3, v5, v6);
          sub_1AE23C4EC();
        }

        else if (result == 4)
        {
          sub_1AE23C45C();
        }
      }

      else if (result == 1)
      {
        sub_1ADEA47EC(1, v5, v6);
        sub_1AE23C4FC();
      }

      else if (result == 2)
      {
        sub_1AE23C4BC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADEA173C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADEA9058(*(v5 + 3), *(v5 + 4), *(v5 + 40), a1, a2, a3, 1);
  if (!v4)
  {
    v16 = *v5;
    if (v16)
    {
      v16 = sub_1AE23C63C();
    }

    if (*(*(v5 + 1) + 16))
    {
      sub_1ADEA47EC(v16, v14, v15);
      sub_1AE23C65C();
    }

    if (*(*(v5 + 2) + 16))
    {
      sub_1AE23C57C();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

void sub_1ADEA18F4(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

void (*sub_1ADEA1930(uint64_t *a1))(void *)
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

uint64_t sub_1ADEA1A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8F08(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADEA1A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA31EC(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADEA1AC0(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA1B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA31EC(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADEA1B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA1C00(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1ADEA5158(&v5, &v7) & 1;
}

uint64_t sub_1ADEA1C4C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D77B0);
  __swift_project_value_buffer(v0, qword_1EB5D77B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "replicaUUID";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "range";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "affinity";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADEA1E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1ADEA8FB0(3, v5, v6);
          sub_1AE23C3CC();
          break;
        case 2:
          sub_1ADEA2F2C(2, v5, v6);
          sub_1AE23C4EC();
          break;
        case 1:
          sub_1AE23C3DC();
          break;
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADEA1F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v21 = a5;
  v11 = sub_1AE23C32C();
  v18 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (result = sub_1AE23C5BC(), !v7))
  {
    if (!*(a3 + 16) || (sub_1ADEA2F2C(result, v13, v14), result = sub_1AE23C65C(), !v7))
    {
      if (!a4 || (v19 = a4, v20 = v21 & 1, sub_1ADEA8FB0(result, v13, v14), result = sub_1AE23C5AC(), !v7))
      {
        sub_1AE23C31C();
        sub_1AE23C30C();
        return (*(v18 + 8))(v16, v11);
      }
    }
  }

  return result;
}

void sub_1ADEA212C(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

void (*sub_1ADEA2164(uint64_t *a1))(void *)
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

uint64_t sub_1ADEA225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA8F5C(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADEA22CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEA308C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1ADEA2308(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA237C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEA308C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1ADEA23C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA245C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D77C8);
  __swift_project_value_buffer(v0, qword_1EB5D77C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Backward";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Forward";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADEA2648()
{
  result = MEMORY[0x1B26FB670](0x65676E61522ELL, 0xE600000000000000);
  qword_1EB5D77E0 = 0xD000000000000010;
  *algn_1EB5D77E8 = 0x80000001AE260AB0;
  return result;
}

uint64_t sub_1ADEA26B0()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D77F0);
  __swift_project_value_buffer(v0, qword_1EB5D77F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fromChar";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toChar";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADEA2878(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v7 = v3;
        sub_1ADEA47EC(2, v5, v6);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1AE23C38C();
    }

    v7 = v3;
    sub_1ADEA47EC(1, v5, v6);
LABEL_5:
    v3 = v7;
    sub_1AE23C4FC();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1ADEA2930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADEA9058(*v3, *(v3 + 8), *(v3 + 16), a1, a2, a3, 1);
  if (!v4)
  {
    sub_1ADEA9058(*(v3 + 24), *(v3 + 32), *(v3 + 40), a1, a2, a3, 2);
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

void sub_1ADEA2A78(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

uint64_t sub_1ADEA2AB8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

void (*sub_1ADEA2B18(uint64_t *a1))(void *)
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

uint64_t sub_1ADEA2BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADEA9004(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1ADEA2C6C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1AE23C6AC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1ADEA2D08(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1ADEA2F2C(a1, a3, a4);

  return MEMORY[0x1EEE15928](a1, v5);
}

uint64_t sub_1ADEA2D44(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA2DC0(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4)
{
  sub_1ADEA2F2C(a1, a2, a4);

  return sub_1AE23C54C();
}

uint64_t sub_1ADEA2E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA2E84(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1ADEA5B9C(&v5, &v7) & 1;
}

unint64_t sub_1ADEA2ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA558;
  if (!qword_1EB5BA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA558);
  }

  return result;
}

unint64_t sub_1ADEA2F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA560;
  if (!qword_1EB5BA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA560);
  }

  return result;
}

unint64_t sub_1ADEA2F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA568;
  if (!qword_1EB5BA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA568);
  }

  return result;
}

unint64_t sub_1ADEA2FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA570;
  if (!qword_1EB5BA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA570);
  }

  return result;
}

unint64_t sub_1ADEA3034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA578;
  if (!qword_1EB5BA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA578);
  }

  return result;
}

unint64_t sub_1ADEA308C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA580;
  if (!qword_1EB5BA580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA580);
  }

  return result;
}

unint64_t sub_1ADEA30E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA588;
  if (!qword_1EB5BA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA588);
  }

  return result;
}

unint64_t sub_1ADEA313C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA590;
  if (!qword_1EB5BA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA590);
  }

  return result;
}

unint64_t sub_1ADEA3194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA598;
  if (!qword_1EB5BA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA598);
  }

  return result;
}

unint64_t sub_1ADEA31EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA5A0;
  if (!qword_1EB5BA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5A0);
  }

  return result;
}

unint64_t sub_1ADEA3244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA5A8;
  if (!qword_1EB5BA5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5A8);
  }

  return result;
}

unint64_t sub_1ADEA329C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA5B0;
  if (!qword_1EB5BA5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5B0);
  }

  return result;
}

unint64_t sub_1ADEA32F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA5B8;
  if (!qword_1EB5BA5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5B8);
  }

  return result;
}

unint64_t sub_1ADEA334C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA5C0;
  if (!qword_1EB5BA5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5C0);
  }

  return result;
}

unint64_t sub_1ADEA33A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA5C8;
  if (!qword_1EB5BA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5C8);
  }

  return result;
}

unint64_t sub_1ADEA33FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA5D0;
  if (!qword_1EB5BA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5D0);
  }

  return result;
}

unint64_t sub_1ADEA3454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA5D8;
  if (!qword_1EB5BA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5D8);
  }

  return result;
}

unint64_t sub_1ADEA34AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA5E0;
  if (!qword_1EB5BA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5E0);
  }

  return result;
}

unint64_t sub_1ADEA3504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA5E8;
  if (!qword_1EB5BA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5E8);
  }

  return result;
}

unint64_t sub_1ADEA355C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA5F0;
  if (!qword_1EB5BA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5F0);
  }

  return result;
}

unint64_t sub_1ADEA35B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA5F8;
  if (!qword_1EB5BA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA5F8);
  }

  return result;
}

unint64_t sub_1ADEA360C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA600;
  if (!qword_1EB5BA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA600);
  }

  return result;
}

unint64_t sub_1ADEA3664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA608;
  if (!qword_1EB5BA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA608);
  }

  return result;
}

unint64_t sub_1ADEA36BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA610;
  if (!qword_1EB5BA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA610);
  }

  return result;
}

unint64_t sub_1ADEA3714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA618;
  if (!qword_1EB5BA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA618);
  }

  return result;
}

unint64_t sub_1ADEA376C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA620;
  if (!qword_1EB5BA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA620);
  }

  return result;
}

unint64_t sub_1ADEA37C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA628;
  if (!qword_1EB5BA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA628);
  }

  return result;
}

unint64_t sub_1ADEA381C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA630;
  if (!qword_1EB5BA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA630);
  }

  return result;
}

unint64_t sub_1ADEA3874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA638;
  if (!qword_1EB5BA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA638);
  }

  return result;
}

unint64_t sub_1ADEA38CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA640;
  if (!qword_1EB5BA640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA640);
  }

  return result;
}

unint64_t sub_1ADEA3924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA648;
  if (!qword_1EB5BA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA648);
  }

  return result;
}

unint64_t sub_1ADEA397C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA650;
  if (!qword_1EB5BA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA650);
  }

  return result;
}

unint64_t sub_1ADEA39D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA658;
  if (!qword_1EB5BA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA658);
  }

  return result;
}

unint64_t sub_1ADEA3A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA660;
  if (!qword_1EB5BA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA660);
  }

  return result;
}

unint64_t sub_1ADEA3A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA668;
  if (!qword_1EB5BA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA668);
  }

  return result;
}

unint64_t sub_1ADEA3ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA670;
  if (!qword_1EB5BA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA670);
  }

  return result;
}

unint64_t sub_1ADEA3B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA678;
  if (!qword_1EB5BA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA678);
  }

  return result;
}

unint64_t sub_1ADEA3B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA680;
  if (!qword_1EB5BA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA680);
  }

  return result;
}

unint64_t sub_1ADEA3BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA688;
  if (!qword_1EB5BA688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA688);
  }

  return result;
}

unint64_t sub_1ADEA3C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA690;
  if (!qword_1EB5BA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA690);
  }

  return result;
}

unint64_t sub_1ADEA3C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA698;
  if (!qword_1EB5BA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA698);
  }

  return result;
}

unint64_t sub_1ADEA3CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA6A0;
  if (!qword_1EB5BA6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6A0);
  }

  return result;
}

unint64_t sub_1ADEA3D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA6A8;
  if (!qword_1EB5BA6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6A8);
  }

  return result;
}

unint64_t sub_1ADEA3D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA6B0;
  if (!qword_1EB5BA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6B0);
  }

  return result;
}

unint64_t sub_1ADEA3DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA6B8;
  if (!qword_1EB5BA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6B8);
  }

  return result;
}

unint64_t sub_1ADEA3E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA6C0;
  if (!qword_1EB5BA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6C0);
  }

  return result;
}

unint64_t sub_1ADEA3EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA6C8;
  if (!qword_1EB5BA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6C8);
  }

  return result;
}

unint64_t sub_1ADEA3EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA6D0;
  if (!qword_1EB5BA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6D0);
  }

  return result;
}

unint64_t sub_1ADEA3F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA6D8;
  if (!qword_1EB5BA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6D8);
  }

  return result;
}

unint64_t sub_1ADEA3FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA6E0;
  if (!qword_1EB5BA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6E0);
  }

  return result;
}

unint64_t sub_1ADEA4004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA6E8;
  if (!qword_1EB5BA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6E8);
  }

  return result;
}

unint64_t sub_1ADEA405C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA6F0;
  if (!qword_1EB5BA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6F0);
  }

  return result;
}

unint64_t sub_1ADEA40B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA6F8;
  if (!qword_1EB5BA6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA6F8);
  }

  return result;
}

unint64_t sub_1ADEA410C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA700;
  if (!qword_1EB5BA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA700);
  }

  return result;
}

unint64_t sub_1ADEA4164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA708;
  if (!qword_1EB5BA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA708);
  }

  return result;
}

unint64_t sub_1ADEA41BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA710;
  if (!qword_1EB5BA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA710);
  }

  return result;
}

unint64_t sub_1ADEA4214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA718;
  if (!qword_1EB5BA718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA718);
  }

  return result;
}

unint64_t sub_1ADEA426C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA720;
  if (!qword_1EB5BA720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA720);
  }

  return result;
}

unint64_t sub_1ADEA42C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA728;
  if (!qword_1EB5BA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA728);
  }

  return result;
}

unint64_t sub_1ADEA431C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA730;
  if (!qword_1EB5BA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA730);
  }

  return result;
}

unint64_t sub_1ADEA4374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA738;
  if (!qword_1EB5BA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA738);
  }

  return result;
}

unint64_t sub_1ADEA43CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA740;
  if (!qword_1EB5BA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA740);
  }

  return result;
}

unint64_t sub_1ADEA4424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA748;
  if (!qword_1EB5BA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA748);
  }

  return result;
}

unint64_t sub_1ADEA447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA750;
  if (!qword_1EB5BA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA750);
  }

  return result;
}

unint64_t sub_1ADEA44D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA758;
  if (!qword_1EB5BA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA758);
  }

  return result;
}

unint64_t sub_1ADEA452C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA760;
  if (!qword_1EB5BA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA760);
  }

  return result;
}

unint64_t sub_1ADEA4584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA768;
  if (!qword_1EB5BA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA768);
  }

  return result;
}

unint64_t sub_1ADEA45DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA770;
  if (!qword_1EB5BA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA770);
  }

  return result;
}

unint64_t sub_1ADEA4634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA778;
  if (!qword_1EB5BA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA778);
  }

  return result;
}

unint64_t sub_1ADEA468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA780;
  if (!qword_1EB5BA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA780);
  }

  return result;
}

unint64_t sub_1ADEA46E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA788;
  if (!qword_1EB5BA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA788);
  }

  return result;
}

unint64_t sub_1ADEA473C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA790;
  if (!qword_1EB5BA790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA790);
  }

  return result;
}

unint64_t sub_1ADEA4794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA798;
  if (!qword_1EB5BA798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA798);
  }

  return result;
}

unint64_t sub_1ADEA47EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA7A0;
  if (!qword_1EB5BA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7A0);
  }

  return result;
}

unint64_t sub_1ADEA4844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA7A8;
  if (!qword_1EB5BA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7A8);
  }

  return result;
}

unint64_t sub_1ADEA489C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA7B0;
  if (!qword_1EB5BA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7B0);
  }

  return result;
}

unint64_t sub_1ADEA48F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA7B8;
  if (!qword_1EB5BA7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7B8);
  }

  return result;
}

unint64_t sub_1ADEA494C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA7C0;
  if (!qword_1EB5BA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7C0);
  }

  return result;
}

unint64_t sub_1ADEA49A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA7C8;
  if (!qword_1EB5BA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7C8);
  }

  return result;
}

unint64_t sub_1ADEA49FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA7D0;
  if (!qword_1EB5BA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7D0);
  }

  return result;
}

unint64_t sub_1ADEA4A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA7D8;
  if (!qword_1EB5BA7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7D8);
  }

  return result;
}

unint64_t sub_1ADEA4AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA7E0;
  if (!qword_1EB5BA7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7E0);
  }

  return result;
}

unint64_t sub_1ADEA4B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA7E8;
  if (!qword_1EB5BA7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7E8);
  }

  return result;
}

unint64_t sub_1ADEA4B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA7F0;
  if (!qword_1EB5BA7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7F0);
  }

  return result;
}

unint64_t sub_1ADEA4BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA7F8;
  if (!qword_1EB5BA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA7F8);
  }

  return result;
}

unint64_t sub_1ADEA4C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA800;
  if (!qword_1EB5BA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA800);
  }

  return result;
}

unint64_t sub_1ADEA4C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA808;
  if (!qword_1EB5BA808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA808);
  }

  return result;
}

unint64_t sub_1ADEA4CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA810;
  if (!qword_1EB5BA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA810);
  }

  return result;
}

unint64_t sub_1ADEA4D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA818;
  if (!qword_1EB5BA818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA818);
  }

  return result;
}

unint64_t sub_1ADEA4D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA820;
  if (!qword_1EB5BA820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA820);
  }

  return result;
}

unint64_t sub_1ADEA4DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA828;
  if (!qword_1EB5BA828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA828);
  }

  return result;
}

unint64_t sub_1ADEA4E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA830;
  if (!qword_1EB5BA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA830);
  }

  return result;
}

unint64_t sub_1ADEA4E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA838;
  if (!qword_1EB5BA838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA838);
  }

  return result;
}

unint64_t sub_1ADEA4ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA840;
  if (!qword_1EB5BA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA840);
  }

  return result;
}

unint64_t sub_1ADEA4F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA848;
  if (!qword_1EB5BA848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA848);
  }

  return result;
}

unint64_t sub_1ADEA4F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA850;
  if (!qword_1EB5BA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA850);
  }

  return result;
}

uint64_t sub_1ADEA4FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  v15 = 0;
  if (a1 == a3 && a2 == a4)
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v15 = sub_1AE23CCBC();
    v16 = *(v9 + 8);
    v16(v11, v8);
    v16(v14, v8);
  }

  return v15 & 1;
}

uint64_t sub_1ADEA5158(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = 0;
    if (*(a2 + 40))
    {
      return v11 & 1;
    }

    if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
    {
      return v11 & 1;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v13 = sub_1AE23CCBC();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v14(v10, v4);
    if ((v13 & 1) == 0)
    {
LABEL_15:
      v11 = 0;
      return v11 & 1;
    }
  }

  if (*a1 != *a2 || (sub_1ADE522BC() & 1) == 0 || (sub_1ADE4A3AC(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v11 = sub_1AE23CCBC();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  return v11 & 1;
}

uint64_t sub_1ADEA53BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1AE23C32C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  if (a1 == a2 || (, , v13 = sub_1ADE9F7A8(a1, a2, a3), , , v13))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v14 = sub_1AE23CCBC();
    v15 = *(v7 + 8);
    v15(v9, v6);
    v15(v12, v6);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1ADEA556C(_BOOL8 a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25[-v17];
  if (!a3)
  {
    v28 = v13;
    if (!a6)
    {
      goto LABEL_7;
    }

LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  if (!a6)
  {
    goto LABEL_10;
  }

  sub_1ADE4E9A0(v19, a6);
  if ((v20 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v26 = sub_1AE23CCBC();
  v27 = a1;
  v28 = v13;
  v21 = *(v13 + 8);
  v21(v15, v12);
  v21(v18, v12);
  a1 = v27;

  if ((v26 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!sub_1ADDD6F8C(a1, a2, a4, a5))
  {
    goto LABEL_10;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = sub_1AE23CCBC();
  v23 = *(v28 + 8);
  v23(v15, v12);
  v23(v18, v12);
  return v22 & 1;
}

uint64_t sub_1ADEA5810(_BOOL8 a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  v19 = sub_1ADDD6F8C(a1, a2, a4, a5);
  v20 = 0;
  if (v19 && a3 == a6)
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v20 = sub_1AE23CCBC();
    v21 = *(v13 + 8);
    v21(v15, v12);
    v21(v18, v12);
  }

  return v20 & 1;
}

uint64_t sub_1ADEA59B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v24 = a7;
  v13 = sub_1AE23C32C();
  v23 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  if ((sub_1ADE4AF74(a1, a5) & 1) == 0 || (sub_1ADE522C0() & 1) == 0)
  {
    goto LABEL_8;
  }

  v19 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v19 = a3;
  }

  if ((a8 & 1) == 0)
  {
    if (v19 != v24)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v20 = sub_1AE23CCBC();
    v22 = *(v23 + 8);
    v22(v15, v13);
    v22(v18, v13);
    return v20 & 1;
  }

  if (!v24)
  {
    if (v19)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (v19 == 1)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1ADEA5B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 0;
    if (*(a2 + 16))
    {
      return v11 & 1;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return v11 & 1;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v13 = sub_1AE23CCBC();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v14(v10, v4);
    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (*(a1 + 40))
  {
    if (*(a2 + 40))
    {
LABEL_13:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v11 = sub_1AE23CCBC();
      v15 = *(v5 + 8);
      v15(v7, v4);
      v15(v10, v4);
      return v11 & 1;
    }

LABEL_18:
    v11 = 0;
    return v11 & 1;
  }

  v11 = 0;
  if ((*(a2 + 40) & 1) == 0 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v16 = sub_1AE23CCBC();
    v17 = *(v5 + 8);
    v17(v7, v4);
    v17(v10, v4);
    if (v16)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  return v11 & 1;
}

uint64_t sub_1ADEA5E98(void *a1, void *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25[-v9];
  v11 = *a1 == *a2 && a1[1] == a2[1];
  if (!v11 && (sub_1AE23E00C() & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1ADE4B64C(a1[2], a2[2]);
  if ((v12 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1ADE4BC88(a1[3], a2[3]);
  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

  v14 = a2[4];
  if (a1[4])
  {
    if (!v14)
    {
      goto LABEL_20;
    }

    sub_1ADE4E9A0(v15, v14);
    if ((v16 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v26 = sub_1AE23CCBC();
    v17 = *(v5 + 8);
    v17(v7, v4);
    v17(v10, v4);

    if ((v26 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v14)
  {
    goto LABEL_20;
  }

  v18 = a2[5];
  if (!a1[5])
  {
    if (!v18)
    {
LABEL_23:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      LOBYTE(v18) = sub_1AE23CCBC();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      return v18 & 1;
    }

LABEL_20:
    LOBYTE(v18) = 0;
    return v18 & 1;
  }

  if (v18)
  {

    sub_1ADE4E9A0(v19, v18);
    if (v20)
    {
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1AE23CCBC();
      v22 = *(v5 + 8);
      v22(v7, v4);
      v22(v10, v4);

      if (v21)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_19:

    goto LABEL_20;
  }

  return v18 & 1;
}

uint64_t sub_1ADEA621C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  if (a1 == a2)
  {
    goto LABEL_10;
  }

  swift_beginAccess();
  v11 = *(a1 + 16);
  swift_beginAccess();
  v12 = *(a2 + 16);
  if (v11)
  {
    if (v12)
    {

      if (v11 == v12 || sub_1ADE9604C(v11, v12))
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v18 = sub_1AE23CCBC();
        v13 = *(v5 + 8);
        v13(v7, v4);
        v13(v10, v4);

        if ((v18 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_13:

    v14 = 0;
    return v14 & 1;
  }

  if (v12)
  {
    goto LABEL_13;
  }

LABEL_9:

LABEL_10:
  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v14 = sub_1AE23CCBC();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  return v14 & 1;
}