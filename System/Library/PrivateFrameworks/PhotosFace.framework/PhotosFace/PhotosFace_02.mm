uint64_t sub_22FD9856C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22FD986CC(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22FD98658(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41E8, &qword_22FE4A2D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22FD986CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41E8, &qword_22FE4A2D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_22FD987C0(uint64_t a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v2);
  v48 = &v40 - v3;
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - v5;
  MEMORY[0x28223BE20](v6);
  v49 = &v40 - v9;
  v10 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v42 = *(v7 + 80);
  v12 = *(v7 + 72);
  v44 = (v42 + 32) & ~v42;
  v13 = a1 + v44;
  v41 = xmmword_22FE49F60;
  v45 = v8;
  v43 = v12;
  while (1)
  {
    v15 = v49;
    sub_22FD764B4(v13, v49, &qword_27DAE4068, &qword_22FE49FD8);
    v16 = v47;
    sub_22FD764B4(v15, v47, &qword_27DAE4068, &qword_22FE49FD8);
    v17 = *(v46 + 48);
    v18 = *(v16 + v17);
    v19 = v16;
    v20 = v48;
    sub_22FD98C04(v19, v48, type metadata accessor for StoredPhoto);
    *(v20 + v17) = v18;
    sub_22FD93E6C(v20, &qword_27DAE4068, &qword_22FE49FD8);
    v22 = sub_22FD74718(v18);
    v23 = v10[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v10[3] < v25)
    {
      sub_22FDDD204(v25, 1);
      v10 = v50;
      v27 = sub_22FD74718(v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {
      v29 = v10[7];
      sub_22FD93E04(v49, v45, &qword_27DAE4068, &qword_22FE49FD8);
      v30 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_22FD9195C(0, v30[2] + 1, 1, v30);
        *(v29 + 8 * v22) = v30;
      }

      v33 = v30[2];
      v32 = v30[3];
      if (v33 >= v32 >> 1)
      {
        v30 = sub_22FD9195C((v32 > 1), v33 + 1, 1, v30);
        *(v29 + 8 * v22) = v30;
      }

      v30[2] = v33 + 1;
      v14 = v43;
      sub_22FD93E04(v45, v30 + v44 + v33 * v43, &qword_27DAE4068, &qword_22FE49FD8);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A8, &qword_22FE4A1A8);
      v34 = v44;
      v35 = swift_allocObject();
      *(v35 + 16) = v41;
      sub_22FD93E04(v49, v35 + v34, &qword_27DAE4068, &qword_22FE49FD8);
      v10[(v22 >> 6) + 8] |= 1 << v22;
      *(v10[6] + 8 * v22) = v18;
      *(v10[7] + 8 * v22) = v35;
      v36 = v10[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v10[2] = v38;
      v14 = v43;
    }

    v13 += v14;
    if (!--v11)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

uint64_t sub_22FD98B9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FD98C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FD98CC8(uint64_t a1, uint64_t a2)
{
  result = sub_22FD98D90(&qword_27DAE41D8, a2, type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FD98D90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_22FD98E50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22FD98EAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t GalleryDatabase.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t GalleryDatabase.insert(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD98FD4, 0, 0);
}

uint64_t sub_22FD98FD4()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD99050, v2, 0);
}

uint64_t sub_22FD99050()
{
  sub_22FD914F4(1, sub_22FD993B8);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD99100(uint64_t *a1, uint64_t a2)
{
  v18 = *a1;
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4188, &qword_22FE4A188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FE49F60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v4 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22FE49FB0;
  v8 = v7 + v6;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for ShuffleID(0);
  *(v8 + v5) = *(a2 + v10[6]);
  swift_storeEnumTagMultiPayload();
  *(v8 + 2 * v5) = *(a2 + v10[7]);
  swift_storeEnumTagMultiPayload();
  *(v8 + 3 * v5) = *(a2 + v10[8]);
  swift_storeEnumTagMultiPayload();
  *(inited + 32) = v7;
  v11._countAndFlagsBits = 0xD00000000000008ALL;
  v11._object = 0x800000022FE46870;
  DatabaseConnection.insert(sql:bindings:)(v11, inited);
  swift_setDeallocating();
  result = sub_22FD93E6C(inited + 32, &qword_27DAE4190, &qword_22FE4A190);
  if (!v13)
  {
    v19 = v18;
    MEMORY[0x28223BE20](result);
    v17[2] = a2;
    v15 = sub_22FDD47D8(sub_22FD9E2A4, v17, v14);
    v16._object = 0x800000022FE46900;
    v16._countAndFlagsBits = 0xD000000000000075;
    DatabaseConnection.insert(sql:bindings:)(v16, v15);
  }

  return result;
}

uint64_t sub_22FD993D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v7 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22FE49F70;
  v11 = (v10 + v9);
  *v11 = v6;
  *(v11 + 1) = v5;
  swift_storeEnumTagMultiPayload();
  v12 = sub_22FE428C4();
  (*(*(v12 - 8) + 16))(&v11[v8], a2, v12);
  swift_storeEnumTagMultiPayload();
  *a3 = v10;
}

uint64_t sub_22FD99548()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD9956C, v1, 0);
}

uint64_t sub_22FD9956C()
{
  v18 = v0;
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v11 = 0;
      goto LABEL_9;
    }
  }

  v17 = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_5:
    v17 = v3;
    v9._countAndFlagsBits = 0x6B6361626C6C6F72;
    v9._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v9);
    if (v10)
    {

LABEL_10:
      v12 = *(v0 + 8);

      return v12();
    }

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v17 = v3;
  sub_22FD99724(&v17, &v16);
  v17 = v3;
  v7._countAndFlagsBits = 0x74696D6D6F63;
  v7._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v7);
  if (v8)
  {
    v6 = v8;

    goto LABEL_5;
  }

  v14 = v16;
  v15 = *(v0 + 8);

  return v15(v14);
}

void sub_22FD99724(sqlite3_stmt **a1@<X0>, unint64_t **a2@<X8>)
{
  v94 = a2;
  v102 = sub_22FE428C4();
  v95 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4200, &qword_22FE4A3E8);
  MEMORY[0x28223BE20](v93);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v75 - v7;
  v9 = type metadata accessor for ShuffleID(0);
  v96 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v75 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v75 - v22;
  v104 = *a1;
  v24 = v100;
  v25 = sub_22FDB08B0(0xD00000000000007FLL, 0x800000022FE467F0);
  if (!v24)
  {
    v26 = v25;
    v80 = v17;
    v97 = v14;
    v98 = v9;
    v81 = v8;
    v99 = v5;
    sub_22FDB31B8(MEMORY[0x277D84F90], v25);
    sub_22FDB33A0(v26);
    v27 = MEMORY[0x277D84F90];
    for (i = v96; ; sub_22FD9E1E8(v20, v27 + ((*(i + 80) + 32) & ~*(i + 80)) + *(i + 72) * v31, type metadata accessor for ShuffleID))
    {
      v29 = sqlite3_step(v26);
      if (v29 != 100)
      {
        break;
      }

      v104 = v26;
      sub_22FD9A048(&v104, v23);
      sub_22FD9E120(v23, v20, type metadata accessor for ShuffleID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_22FD91A3C(0, v27[2] + 1, 1, v27);
      }

      v31 = v27[2];
      v30 = v27[3];
      if (v31 >= v30 >> 1)
      {
        v27 = sub_22FD91A3C((v30 > 1), v31 + 1, 1, v27);
      }

      sub_22FD9E188(v23, type metadata accessor for ShuffleID);
      v27[2] = v31 + 1;
    }

    v32 = v29;
    if (v29 == 101)
    {
      sub_22FDB35E0(v26);
      v33 = sub_22FD9DD00(v27);
      v75 = 0;

      v34 = v33[2];
      if (v34)
      {
        v104 = MEMORY[0x277D84F90];
        sub_22FD9246C(0, v34, 0);
        v91 = v33 + 8;
        v92 = v104;
        v35 = sub_22FE43834();
        v36 = 0;
        v100 = *(v33 + 9);
        v37 = v95;
        v90 = v95 + 4;
        v76 = v33 + 9;
        v38 = v81;
        v79 = v33;
        v78 = v34;
        v77 = v95 + 2;
        while ((v35 & 0x8000000000000000) == 0 && v35 < 1 << *(v33 + 32))
        {
          if ((v91[v35 >> 6] & (1 << v35)) == 0)
          {
            goto LABEL_40;
          }

          if (v100 != *(v33 + 9))
          {
            goto LABEL_41;
          }

          v86 = 1 << v35;
          v87 = v35 >> 6;
          v83 = v36;
          v42 = v33[6] + v37[9] * v35;
          v43 = v102;
          v88 = v37[2];
          v88(v38, v42, v102);
          v44 = *(v33[7] + 8 * v35);
          v45 = v37[4];
          v46 = v43;
          v47 = v99;
          v89 = v45;
          v45(v99, v38, v46);
          *(v47 + *(v93 + 48)) = v44;
          v48 = *(v44 + 16);
          if (!v48)
          {
            goto LABEL_42;
          }

          v84 = v35;
          v82 = v35 & 0x3F;
          v50 = v96;
          v49 = v97;
          v85 = (*(v96 + 80) + 32) & ~*(v96 + 80);
          v51 = v44 + v85;
          sub_22FD9E120(v44 + v85, v97, type metadata accessor for ShuffleID);
          v88(v101, v49, v46);
          v103 = MEMORY[0x277D84F90];
          v52 = v98[5];

          v53 = *(v50 + 72);
          do
          {
            sub_22FD9E120(v51, v11, type metadata accessor for ShuffleID);
            v54 = *&v11[v52];

            sub_22FD9E188(v11, type metadata accessor for ShuffleID);
            sub_22FDAD798(v54);
            v51 += v53;
            --v48;
          }

          while (v48);
          v55 = sub_22FDC2070(v103);

          v56 = v98;
          v57 = v97[v98[6]];
          v58 = v97[v98[7]];
          v59 = v97[v98[8]];
          sub_22FD9E188(v97, type metadata accessor for ShuffleID);
          v60 = v80;
          v89(v80, v101, v102);
          *(v60 + v56[5]) = v55;
          *(v60 + v56[6]) = v57;
          *(v60 + v56[7]) = v58;
          *(v60 + v56[8]) = v59;
          sub_22FD93E6C(v99, &qword_27DAE4200, &qword_22FE4A3E8);
          v61 = v92;
          v104 = v92;
          v63 = *(v92 + 2);
          v62 = *(v92 + 3);
          if (v63 >= v62 >> 1)
          {
            sub_22FD9246C((v62 > 1), v63 + 1, 1);
            v61 = v104;
          }

          *(v61 + 2) = v63 + 1;
          v92 = v61;
          sub_22FD9E1E8(v60, v61 + v85 + v63 * v53, type metadata accessor for ShuffleID);
          v33 = v79;
          v40 = 1 << *(v79 + 32);
          v37 = v95;
          if (v84 >= v40)
          {
            goto LABEL_43;
          }

          v64 = v91[v87];
          if ((v64 & v86) == 0)
          {
            goto LABEL_44;
          }

          if (v100 != *(v79 + 9))
          {
            goto LABEL_45;
          }

          v65 = v64 & (-2 << v82);
          if (v65)
          {
            v39 = v84;
            sub_22FD72BF8(v84, v100, 0);
            v40 = __clz(__rbit64(v65)) | v39 & 0x7FFFFFFFFFFFFFC0;
            v41 = v94;
            v38 = v81;
          }

          else
          {
            v66 = v87 << 6;
            v67 = v87 + 1;
            v68 = &v76[v87];
            v41 = v94;
            v38 = v81;
            while (v67 < (v40 + 63) >> 6)
            {
              v70 = *v68++;
              v69 = v70;
              v66 += 64;
              ++v67;
              if (v70)
              {
                sub_22FD72BF8(v84, v100, 0);
                v40 = __clz(__rbit64(v69)) + v66;
                goto LABEL_14;
              }
            }

            sub_22FD72BF8(v84, v100, 0);
          }

LABEL_14:
          v36 = v83 + 1;
          v35 = v40;
          if (v83 + 1 == v78)
          {

            *v41 = v92;
            return;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
      }

      else
      {

        *v94 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      if (sqlite3_errstr(v32))
      {
        v71 = sub_22FE43104();
        v73 = v72;
      }

      else
      {
        v73 = 0xE300000000000000;
        v71 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v74 = v32 | 0xA000000000000000;
      v74[1] = v71;
      v74[2] = v73;
      swift_willThrow();
      sub_22FDB35E0(v26);
    }
  }
}

int *sub_22FD9A048@<X0>(sqlite3_stmt **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v21[9] = *a1;
  result = DatabaseRow.readUUID(column:)(0);
  if (!v2)
  {
    v21[1] = 0;
    if (sqlite3_column_type(v9, 1) == 5 || !sqlite3_column_text(v9, 1))
    {
      v16 = MEMORY[0x277D84FA0];
    }

    else
    {
      v11 = sub_22FE43114();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40E0, &qword_22FE4A100);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22FE49F60;
      *(inited + 32) = v11;
      v15 = inited + 32;
      *(inited + 40) = v13;
      v16 = sub_22FDA5654(inited);
      swift_setDeallocating();
      sub_22FD9E250(v15);
    }

    if (sqlite3_column_type(v9, 2) == 5)
    {

      sub_22FD9172C();
      swift_allocError();
      *v17 = 2;
    }

    else
    {
      v18 = sqlite3_column_int(v9, 2);
      if (sqlite3_column_type(v9, 3) == 5)
      {

        sub_22FD9172C();
        swift_allocError();
        *v17 = 3;
      }

      else
      {
        v19 = sqlite3_column_int(v9, 3);
        if (sqlite3_column_type(v9, 4) != 5)
        {
          v20 = sqlite3_column_int(v9, 4) == 1;
          (*(v6 + 32))(a2, v8, v5);
          result = type metadata accessor for ShuffleID(0);
          *(a2 + result[5]) = v16;
          *(a2 + result[6]) = v18 == 1;
          *(a2 + result[7]) = v19 == 1;
          *(a2 + result[8]) = v20;
          return result;
        }

        sub_22FD9172C();
        swift_allocError();
        *v17 = 4;
      }
    }

    *(v17 + 4) = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t GalleryDatabase.queryByDay(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = *(type metadata accessor for StoredPhoto(0) - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for DatabaseBinding(0);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD9A550, 0, 0);
}

uint64_t sub_22FD9A550()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[2];
  v28 = *(v0[3] + 16);
  v0[18] = v28;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000313, 0x800000022FE45E90);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject() + v8;
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9, v6, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v5 + 56);
  v11(v9, 0, 1, v4);
  *(v9 + v7) = 17;
  swift_storeEnumTagMultiPayload();
  v11(v9 + v7, 0, 1, v4);
  sub_22FD764B4(v9, v2, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v2, v1, &qword_27DAE4070, &qword_22FE4A740);
  v27 = *(v5 + 48);
  v12 = v27(v1, 1, v4);
  v13 = v0[16];
  if (v12 == 1)
  {
    sub_22FD93E6C(v13, &qword_27DAE4070, &qword_22FE4A740);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_22FD9E1E8(v13, v0[13], type metadata accessor for DatabaseBinding);
    v14 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD919C8(0, v14[2] + 1, 1, v14);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_22FD919C8((v15 > 1), v16 + 1, 1, v14);
    }

    v17 = v0[13];
    v14[2] = v16 + 1;
    sub_22FD9E1E8(v17, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for DatabaseBinding);
  }

  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[11];
  sub_22FD764B4(v9 + v7, v18, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v18, v19, &qword_27DAE4070, &qword_22FE4A740);
  v21 = v27(v19, 1, v20);
  v22 = v0[16];
  if (v21 == 1)
  {
    sub_22FD93E6C(v22, &qword_27DAE4070, &qword_22FE4A740);
  }

  else
  {
    sub_22FD9E1E8(v22, v0[13], type metadata accessor for DatabaseBinding);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD919C8(0, v14[2] + 1, 1, v14);
    }

    v24 = v14[2];
    v23 = v14[3];
    if (v24 >= v23 >> 1)
    {
      v14 = sub_22FD919C8((v23 > 1), v24 + 1, 1, v14);
    }

    v25 = v0[13];
    v14[2] = v24 + 1;
    sub_22FD9E1E8(v25, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, type metadata accessor for DatabaseBinding);
  }

  v0[21] = v14;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD9A9E8, v28, 0);
}

uint64_t sub_22FD9A9E8()
{
  *(v0 + 176) = sub_22FDA5C54(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 144));
  *(v0 + 184) = 0;

  return MEMORY[0x2822009F8](sub_22FD9AA88, 0, 0);
}

void *sub_22FD9AA88()
{
  v35 = v0[5];
  v42 = v0[4];
  v43 = v0[9];
  v1 = sub_22FD9D774(v0[22]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4080, &qword_22FE4BEC0);
  v2 = sub_22FE43AE4();
  result = v1;
  v4 = 0;
  v5 = v1[8];
  v32 = v1 + 8;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v36 = v2;
  v37 = v2 + 8;
  v33 = v9;
  v34 = v1;
  if ((v7 & v5) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = result[6];
      v15 = *(v14 + 8 * v13);
      v16 = *(result[7] + 8 * v13);
      v17 = *(v16 + 16);
      if (v17)
      {
        v38 = *(v14 + 8 * v13);
        v39 = v13;
        v40 = v8;
        v41 = v4;
        v46 = MEMORY[0x277D84F90];

        sub_22FD92408(0, v17, 0);
        v18 = v46;
        v19 = v16 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
        v44 = *(v35 + 72);
        do
        {
          v45 = v0[10];
          v20 = v0[7];
          v21 = v0[8];
          v22 = v0[6];
          sub_22FD764B4(v19, v21, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD764B4(v21, v20, &qword_27DAE4068, &qword_22FE49FD8);
          v23 = *(v42 + 48);
          v24 = *(v20 + v23);
          sub_22FD9E1E8(v20, v22, type metadata accessor for StoredPhoto);
          *(v22 + v23) = v24;
          sub_22FD9E120(v22, v45, type metadata accessor for StoredPhoto);
          sub_22FD93E6C(v22, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD93E6C(v21, &qword_27DAE4068, &qword_22FE49FD8);
          v26 = *(v46 + 16);
          v25 = *(v46 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_22FD92408((v25 > 1), v26 + 1, 1);
          }

          v27 = v0[10];
          *(v46 + 16) = v26 + 1;
          sub_22FD9E1E8(v27, v46 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v26, type metadata accessor for StoredPhoto);
          v19 += v44;
          --v17;
        }

        while (v17);

        v2 = v36;
        v9 = v33;
        result = v34;
        v8 = v40;
        v4 = v41;
        v15 = v38;
        v13 = v39;
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      *(v37 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v2[6] + 8 * v13) = v15;
      *(v2[7] + 8 * v13) = v18;
      v28 = v2[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v2[2] = v30;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v4 >= v9)
      {
        break;
      }

      v12 = v32[v4];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    v31 = v0[1];

    return v31(v2);
  }

  return result;
}

uint64_t GalleryDatabase.query(id:day:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DatabaseBinding(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD9AF90, 0, 0);
}

uint64_t sub_22FD9AF90()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[2];
  v24 = *(v0[4] + 16);
  v0[12] = v24;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000328, 0x800000022FE461B0);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[13] = 0;
  v0[14] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject() + v7;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, v5, v9);
  swift_storeEnumTagMultiPayload();
  v10 = *(v3 + 56);
  v10(v8, 0, 1, v2);
  *(v8 + v6) = v4;
  swift_storeEnumTagMultiPayload();
  v10(v8 + v6, 0, 1, v2);
  *(v8 + 2 * v6) = 17;
  swift_storeEnumTagMultiPayload();
  v10(v8 + 2 * v6, 0, 1, v2);
  v25 = v3;
  v11 = (v3 + 48);
  v12 = MEMORY[0x277D84F90];
  v13 = 3;
  v14 = v8;
  do
  {
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[5];
    sub_22FD764B4(v14, v15, &qword_27DAE4070, &qword_22FE4A740);
    sub_22FD93E04(v15, v16, &qword_27DAE4070, &qword_22FE4A740);
    v18 = (*v11)(v16, 1, v17);
    v19 = v0[10];
    if (v18 == 1)
    {
      sub_22FD93E6C(v19, &qword_27DAE4070, &qword_22FE4A740);
    }

    else
    {
      sub_22FD9E1E8(v19, v0[7], type metadata accessor for DatabaseBinding);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_22FD919C8(0, v12[2] + 1, 1, v12);
      }

      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        v12 = sub_22FD919C8((v20 > 1), v21 + 1, 1, v12);
      }

      v22 = v0[7];
      v12[2] = v21 + 1;
      sub_22FD9E1E8(v22, v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, type metadata accessor for DatabaseBinding);
    }

    v0[16] = v12;
    v14 += v6;
    --v13;
  }

  while (v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD8ED48, v24, 0);
}

uint64_t GalleryDatabase.queryPhotosForDays(from:to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD9B368, 0, 0);
}

uint64_t sub_22FD9B368()
{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22FD9B38C, v1, 0);
}

uint64_t sub_22FD9B38C()
{
  v20 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v13 = 0;
      goto LABEL_9;
    }
  }

  v19 = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_5:
    v19 = v3;
    v11._countAndFlagsBits = 0x6B6361626C6C6F72;
    v11._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v11);
    if (v12)
    {

LABEL_10:
      v14 = v0[1];

      return v14();
    }

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v7 = v0[2];
  v8 = v0[3];
  v19 = v3;
  sub_22FD9B548(&v19, v7, v8, &v18);
  v19 = v3;
  v9._countAndFlagsBits = 0x74696D6D6F63;
  v9._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v9);
  if (v10)
  {
    v6 = v10;

    goto LABEL_5;
  }

  v16 = v18;
  v17 = v0[1];

  return v17(v16);
}

void sub_22FD9B548(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v114 = a3;
  v113 = a2;
  v105 = a4;
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  v106 = v5;
  v107 = v6;
  MEMORY[0x28223BE20](v5);
  v108 = v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v119 = v102 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A0, &qword_22FE4A1A0);
  v109 = *(v116 - 1);
  MEMORY[0x28223BE20](v116);
  v111 = (v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v110 = v102 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v102 - v14;
  v112 = *a1;
  v117 = 0;
  v118 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000115, 0x800000022FE466D0);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v16 = v117;
  v17 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v18 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22FE49F90;
  v22 = (v21 + v20);
  *v22 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v22 + v19) = 24;
  swift_storeEnumTagMultiPayload();
  *(v22 + 2 * v19) = v113;
  swift_storeEnumTagMultiPayload();
  *(v22 + 3 * v19) = v114;
  swift_storeEnumTagMultiPayload();
  *(v22 + 4 * v19) = 17;
  swift_storeEnumTagMultiPayload();
  v117 = v112;
  v23 = v115;
  v24 = sub_22FDB08B0(v16, v17);
  if (v23)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return;
  }

  v25 = v24;

  sub_22FDB31B8(v21, v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22FDB33A0(v25);
  v26 = MEMORY[0x277D84F90];
  v27 = v111;
  while (1)
  {
    v28 = sqlite3_step(v25);
    v29 = v116;
    if (v28 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v25, 0) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v99 = 0;
LABEL_50:
      *(v99 + 4) = 0;
      swift_willThrow();
      goto LABEL_52;
    }

    *v15 = sqlite3_column_int(v25, 0);
    if (sqlite3_column_type(v25, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v99 = 1;
      goto LABEL_50;
    }

    v30 = v26;
    v31 = sqlite3_column_blob(v25, 1);
    if (!v31)
    {
      sub_22FD9172C();
      swift_allocError();
      *v100 = 1;
      *(v100 + 4) = 0;
      swift_willThrow();
LABEL_52:

LABEL_53:
      sub_22FDB35E0(v25);
      return;
    }

    v32 = v31;
    v33 = v29[12];
    v34 = sqlite3_column_bytes(v25, 1);
    v35 = sub_22FDB285C(v32, v34);
    LOBYTE(v117) = 2;
    UUID.init(serialized:version:)(v35, v36);
    if (sqlite3_column_type(v25, 2) == 5 || (v37 = sqlite3_column_blob(v25, 2)) == 0)
    {
      sub_22FD9172C();
      swift_allocError();
      *v93 = 2;
      *(v93 + 4) = 0;
      swift_willThrow();
      (*(v107 + 8))(&v15[v33], v106);
      goto LABEL_52;
    }

    v38 = v37;
    v39 = sqlite3_column_bytes(v25, 2);
    v40 = sub_22FDB285C(v38, v39);
    LOBYTE(v117) = 2;
    UUID.init(serialized:version:)(v40, v41);
    sub_22FD764B4(v15, v110, &qword_27DAE41A0, &qword_22FE4A1A0);
    v42 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_22FD919F0(0, v30[2] + 1, 1, v30);
    }

    v27 = v111;
    v44 = v42[2];
    v43 = v42[3];
    v45 = v42;
    if (v44 >= v43 >> 1)
    {
      v45 = sub_22FD919F0((v43 > 1), v44 + 1, 1, v42);
    }

    sub_22FD93E6C(v15, &qword_27DAE41A0, &qword_22FE4A1A0);
    v45[2] = v44 + 1;
    v26 = v45;
    sub_22FD93E04(v110, v45 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v44, &qword_27DAE41A0, &qword_22FE4A1A0);
  }

  if (v28 != 101)
  {
    v94 = v28;

    v95 = v94;
    if (sqlite3_errstr(v94))
    {
      v96 = sub_22FE43104();
      v98 = v97;
    }

    else
    {
      v98 = 0xE300000000000000;
      v96 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v101 = v95 | 0xA000000000000000;
    v101[1] = v96;
    v101[2] = v98;
    swift_willThrow();
    goto LABEL_53;
  }

  sub_22FDB35E0(v25);
  v46 = sub_22FD75328(MEMORY[0x277D84F90]);
  v112 = v26[2];
  v113 = v26;
  if (!v112)
  {
    v48 = 0;
    v50 = 0;
    v92 = v105;
LABEL_55:

    sub_22FD6EBD8(v48, 0);
    sub_22FD6EBD8(v50, 0);
    *v92 = v46;
    return;
  }

  v47 = v26;
  v48 = 0;
  v49 = v29;
  v50 = 0;
  v51 = 0;
  v110 = v49[12];
  v104 = v47 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
  v52 = v49[16];
  v53 = v106;
  v116 = (v107 + 32);
  v102[0] = v107 + 16;
  v102[1] = v107 + 8;
  v103 = v52;
  while (v51 < *(v113 + 16))
  {
    v54 = *(v109 + 72);
    v114 = v51;
    sub_22FD764B4(v104 + v54 * v51, v27, &qword_27DAE41A0, &qword_22FE4A1A0);
    v55 = v27;
    v56 = *v27;
    v57 = *v116;
    (*v116)(v119, v55 + v110, v53);
    v115 = v57;
    v57(v108, v55 + v103, v53);
    sub_22FD6EBD8(v48, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v46;
    v60 = sub_22FD74718(v56);
    v61 = v46[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_59;
    }

    v64 = v59;
    if (v46[3] >= v63)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v59)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_22FDDED7C();
        v46 = v117;
        if (v64)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_22FDDD908(v63, isUniquelyReferenced_nonNull_native);
      v46 = v117;
      v65 = sub_22FD74718(v56);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_64;
      }

      v60 = v65;
      if (v64)
      {
        goto LABEL_28;
      }
    }

    v67 = sub_22FD75430(MEMORY[0x277D84F90]);
    v46[(v60 >> 6) + 8] |= 1 << v60;
    *(v46[6] + 8 * v60) = v56;
    *(v46[7] + 8 * v60) = v67;
    v68 = v46[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_61;
    }

    v46[2] = v70;
LABEL_28:
    v71 = v46[7];
    sub_22FD6EBD8(v50, 0);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v117 = *(v71 + 8 * v60);
    v73 = v117;
    *(v71 + 8 * v60) = 0x8000000000000000;
    v75 = sub_22FD747EC(v119);
    v76 = v73[2];
    v77 = (v74 & 1) == 0;
    v78 = v76 + v77;
    if (__OFADD__(v76, v77))
    {
      goto LABEL_60;
    }

    v79 = v74;
    if (v73[3] >= v78)
    {
      if ((v72 & 1) == 0)
      {
        sub_22FDDEAFC();
        v73 = v117;
      }
    }

    else
    {
      sub_22FDDD8F4(v78, v72);
      v73 = v117;
      v80 = sub_22FD747EC(v119);
      if ((v79 & 1) != (v81 & 1))
      {
        goto LABEL_63;
      }

      v75 = v80;
    }

    v53 = v106;
    *(v71 + 8 * v60) = v73;

    v82 = *(v71 + 8 * v60);
    v83 = v119;
    if ((v79 & 1) == 0)
    {
      v82[(v75 >> 6) + 8] |= 1 << v75;
      (*(v107 + 16))(v82[6] + *(v107 + 72) * v75, v83, v53);
      *(v82[7] + 8 * v75) = MEMORY[0x277D84F90];
      v84 = v82[2];
      v69 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v69)
      {
        goto LABEL_62;
      }

      v82[2] = v85;
    }

    v86 = v82[7];
    v87 = *(v86 + 8 * v75);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    *(v86 + 8 * v75) = v87;
    if ((v88 & 1) == 0)
    {
      v87 = sub_22FD91828(0, v87[2] + 1, 1, v87);
      *(v86 + 8 * v75) = v87;
    }

    v90 = v87[2];
    v89 = v87[3];
    if (v90 >= v89 >> 1)
    {
      v87 = sub_22FD91828((v89 > 1), v90 + 1, 1, v87);
      *(v86 + 8 * v75) = v87;
    }

    v27 = v111;
    v51 = v114 + 1;
    v87[2] = v90 + 1;
    v91 = v107;
    v115(v87 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v90, v108, v53);
    (*(v91 + 8))(v119, v53);
    v50 = sub_22FD8FDB0;
    v48 = sub_22FD8FD80;
    v92 = v105;
    if (v112 == v51)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  sub_22FE43D14();
  __break(1u);
LABEL_64:
  sub_22FE43D14();
  __break(1u);
}

uint64_t GalleryDatabase.delete(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD9C174, 0, 0);
}

uint64_t sub_22FD9C174()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD9C1F0, v2, 0);
}

uint64_t sub_22FD9C1F0()
{
  sub_22FD914F4(0, sub_22FD9DB50);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD9C2A0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22FE49F60;
  v6 = sub_22FE428C4();
  (*(*(v6 - 8) + 16))(v5 + v4, a2, v6);
  swift_storeEnumTagMultiPayload();
  v7._object = 0x800000022FE46690;
  v7._countAndFlagsBits = 0xD000000000000034;
  DatabaseConnection.delete(sql:bindings:)(v7, v5);
  swift_setDeallocating();
  sub_22FD9E188(v5 + v4, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t sub_22FD9C448()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD9C46C, v1, 0);
}

uint64_t sub_22FD9C46C()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  if (!*(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection))
  {
    sub_22FD9E790();
    if (!*(v1 + v2))
    {
      sub_22FD91684();
      swift_allocError();
      *v12 = 0;
      goto LABEL_10;
    }
  }

  v3._countAndFlagsBits = 0x6E69676562;
  v3._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v3);
  v5 = v4;
  if (v4 || (v6._object = 0x800000022FE464E0, v6._countAndFlagsBits = 0xD00000000000001FLL, DatabaseConnection.delete(sql:bindings:)(v6, MEMORY[0x277D84F90]), (v5 = v7) != 0))
  {
LABEL_6:
    v10._countAndFlagsBits = 0x6B6361626C6C6F72;
    v10._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v10);
    if (v11)
    {

LABEL_11:
      v13 = *(v0 + 8);
      goto LABEL_12;
    }

LABEL_10:
    swift_willThrow();
    goto LABEL_11;
  }

  v8._countAndFlagsBits = 0x74696D6D6F63;
  v8._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v8);
  if (v9)
  {
    v5 = v9;
    goto LABEL_6;
  }

  v13 = *(v0 + 8);
LABEL_12:

  return v13();
}

uint64_t GalleryDatabase.relate(photos:to:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22FD9C62C, 0, 0);
}

uint64_t sub_22FD9C62C()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 40) + 16);
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FD9C6B0, v2, 0);
}

uint64_t sub_22FD9C6B0()
{
  sub_22FD914F4(0, sub_22FD9DB6C);
  *(v0 + 64) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD9C760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[5] = *a1;
  v7[2] = a3;
  v7[3] = a4;
  v4 = sub_22FDD4678(sub_22FD93DE4, v7, a2);
  v5._object = 0x800000022FE46610;
  v5._countAndFlagsBits = 0xD00000000000007CLL;
  DatabaseConnection.insert(sql:bindings:)(v5, v4);
}

uint64_t GalleryDatabase.unrelatePhotos(for:before:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD9C810, 0, 0);
}

uint64_t sub_22FD9C810()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 16);
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x2822009F8](sub_22FD9C898, v3, 0);
}

uint64_t sub_22FD9C898()
{
  sub_22FD914F4(0, sub_22FD9DB8C);
  *(v0 + 56) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD9C948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v5 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22FE49FB0;
  v9 = (v8 + v7);
  *v9 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v9 + v6) = 24;
  swift_storeEnumTagMultiPayload();
  *(v9 + 2 * v6) = a2;
  swift_storeEnumTagMultiPayload();
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9 + 3 * v6, a3, v10);
  swift_storeEnumTagMultiPayload();
  v11._object = 0x800000022FE46570;
  v11._countAndFlagsBits = 0xD000000000000096;
  DatabaseConnection.delete(sql:bindings:)(v11, v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

uint64_t GalleryDatabase.clearPhotos(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD9CB44, 0, 0);
}

uint64_t sub_22FD9CB44()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD9CBC0, v2, 0);
}

uint64_t sub_22FD9CBC0()
{
  sub_22FD914F4(0, sub_22FD9DBA8);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD908B4, 0, 0);
}

uint64_t sub_22FD9CC70(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22FE49F60;
  v6 = sub_22FE428C4();
  (*(*(v6 - 8) + 16))(v5 + v4, a2, v6);
  swift_storeEnumTagMultiPayload();
  v7._object = 0x800000022FE46530;
  v7._countAndFlagsBits = 0xD00000000000003BLL;
  DatabaseConnection.delete(sql:bindings:)(v7, v5);
  swift_setDeallocating();
  sub_22FD9E188(v5 + v4, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t GalleryDatabase.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22FD9CE50(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD9CE74, 0, 0);
}

uint64_t sub_22FD9CE74()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD9CEF0, v2, 0);
}

uint64_t sub_22FD9CEF0()
{
  sub_22FD914F4(1, sub_22FD9E2F4);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD9CFA0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD9CFC4, 0, 0);
}

uint64_t sub_22FD9CFC4()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD9D040, v2, 0);
}

uint64_t sub_22FD9D040()
{
  sub_22FD914F4(0, sub_22FD9E2DC);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD9D0F0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD9D114, 0, 0);
}

uint64_t sub_22FD9D114()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD9D190, v2, 0);
}

uint64_t sub_22FD9D190()
{
  sub_22FD914F4(0, sub_22FD9E2C4);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD9D240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_22FD9D268, 0, 0);
}

uint64_t sub_22FD9D268()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 40) + 16);
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FD9D2EC, v2, 0);
}

uint64_t sub_22FD9D2EC()
{
  sub_22FD914F4(0, sub_22FD9E30C);
  *(v0 + 64) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD9D39C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22FD9D3C4, 0, 0);
}

uint64_t sub_22FD9D3C4()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 16);
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x2822009F8](sub_22FD9D44C, v3, 0);
}

uint64_t sub_22FD9D44C()
{
  sub_22FD914F4(0, sub_22FD9E324);
  *(v0 + 56) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD9D4FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FD93F54;

  return GalleryDatabase.queryList()();
}

uint64_t sub_22FD9D58C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD93F54;

  return GalleryDatabase.query(id:day:)(a1, a2);
}

uint64_t sub_22FD9D634(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD93F54;

  return GalleryDatabase.queryByDay(id:)(a1);
}

uint64_t sub_22FD9D6CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD913F4;

  return GalleryDatabase.queryPhotosForDays(from:to:)(a1, a2);
}

void *sub_22FD9D774(uint64_t a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v2);
  v48 = &v40 - v3;
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - v5;
  MEMORY[0x28223BE20](v6);
  v49 = &v40 - v9;
  v10 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v42 = *(v7 + 80);
  v12 = *(v7 + 72);
  v44 = (v42 + 32) & ~v42;
  v13 = a1 + v44;
  v41 = xmmword_22FE49F60;
  v45 = v8;
  v43 = v12;
  while (1)
  {
    v15 = v49;
    sub_22FD764B4(v13, v49, &qword_27DAE4068, &qword_22FE49FD8);
    v16 = v47;
    sub_22FD764B4(v15, v47, &qword_27DAE4068, &qword_22FE49FD8);
    v17 = *(v46 + 48);
    v18 = *(v16 + v17);
    v19 = v16;
    v20 = v48;
    sub_22FD9E1E8(v19, v48, type metadata accessor for StoredPhoto);
    *(v20 + v17) = v18;
    sub_22FD93E6C(v20, &qword_27DAE4068, &qword_22FE49FD8);
    v22 = sub_22FD74718(v18);
    v23 = v10[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v10[3] < v25)
    {
      sub_22FDDD204(v25, 1);
      v10 = v50;
      v27 = sub_22FD74718(v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {
      v29 = v10[7];
      sub_22FD93E04(v49, v45, &qword_27DAE4068, &qword_22FE49FD8);
      v30 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_22FD9195C(0, v30[2] + 1, 1, v30);
        *(v29 + 8 * v22) = v30;
      }

      v33 = v30[2];
      v32 = v30[3];
      if (v33 >= v32 >> 1)
      {
        v30 = sub_22FD9195C((v32 > 1), v33 + 1, 1, v30);
        *(v29 + 8 * v22) = v30;
      }

      v30[2] = v33 + 1;
      v14 = v43;
      sub_22FD93E04(v45, v30 + v44 + v33 * v43, &qword_27DAE4068, &qword_22FE49FD8);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A8, &qword_22FE4A1A8);
      v34 = v44;
      v35 = swift_allocObject();
      *(v35 + 16) = v41;
      sub_22FD93E04(v49, v35 + v34, &qword_27DAE4068, &qword_22FE49FD8);
      v10[(v22 >> 6) + 8] |= 1 << v22;
      *(v10[6] + 8 * v22) = v18;
      *(v10[7] + 8 * v22) = v35;
      v36 = v10[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v10[2] = v38;
      v14 = v43;
    }

    v13 += v14;
    if (!--v11)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

uint64_t sub_22FD9DBC4(uint64_t a1, uint64_t a2)
{
  result = sub_22FD9DC8C(&qword_27DAE41F0, a2, type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FD9DC8C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_22FD9DD00(uint64_t a1)
{
  v2 = sub_22FE428C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShuffleID(0) - 8;
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v39 - v11;
  v12 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v43 = *(v10 + 80);
  v14 = v3;
  v15 = *(v10 + 72);
  v16 = a1 + ((v43 + 32) & ~v43);
  v48 = (v43 + 32) & ~v43;
  v49 = (v14 + 16);
  v41 = (v14 + 8);
  v42 = v14 + 32;
  v40 = xmmword_22FE49F60;
  v44 = v8;
  v45 = v14;
  v46 = v2;
  v47 = v15;
  while (1)
  {
    v19 = v50;
    sub_22FD9E120(v16, v50, type metadata accessor for ShuffleID);
    (*v49)(v5, v19, v2);
    v21 = sub_22FD747EC(v5);
    v22 = v12[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v12[3] < v24)
    {
      sub_22FDDD91C(v24, 1);
      v12 = v51;
      v26 = sub_22FD747EC(v5);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_19;
      }

      v21 = v26;
    }

    if (v25)
    {
      (*v41)(v5, v2);
      v28 = v12[7];
      sub_22FD9E1E8(v50, v8, type metadata accessor for ShuffleID);
      v29 = *(v28 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 8 * v21) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_22FD91A3C(0, v29[2] + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        v29 = sub_22FD91A3C((v31 > 1), v32 + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v29[2] = v32 + 1;
      v2 = v46;
      v17 = v47;
      v18 = v29 + v48 + v32 * v47;
      v8 = v44;
      sub_22FD9E1E8(v44, v18, type metadata accessor for ShuffleID);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40F0, &qword_22FE4A110);
      v33 = v48;
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      sub_22FD9E1E8(v50, v34 + v33, type metadata accessor for ShuffleID);
      v12[(v21 >> 6) + 8] |= 1 << v21;
      (*(v45 + 32))(v12[6] + *(v45 + 72) * v21, v5, v2);
      *(v12[7] + 8 * v21) = v34;
      v35 = v12[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v12[2] = v37;
      v17 = v47;
    }

    v16 += v17;
    if (!--v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

uint64_t sub_22FD9E120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FD9E188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FD9E1E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FD9E350(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD9E374, 0, 0);
}

uint64_t sub_22FD9E374()
{
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22FD9E398, v1, 0);
}

uint64_t sub_22FD9E398()
{
  v1 = v0[4];
  v2 = v0[2];

  sub_22FD9EEBC(1, v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t PhotosFaceIDDatabase.insert(storedPhotos:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22FD9E450, 0, 0);
}

uint64_t sub_22FD9E450()
{
  v1 = (*(*(v0[4] + 8) + 24))(v0[3]);
  v0[6] = v1;

  return MEMORY[0x2822009F8](sub_22FD9E4D4, v1, 0);
}

uint64_t sub_22FD9E4D4()
{
  v1 = v0[6];
  v2 = v0[2];

  sub_22FD9EEBC(1, v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FD9E570(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD9E594, 0, 0);
}

uint64_t sub_22FD9E594()
{
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22FDA07D0, v1, 0);
}

uint64_t sub_22FD9E5CC()
{
  v1 = *v0;
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](v1);
  return sub_22FE43E04();
}

uint64_t sub_22FD9E640(uint64_t a1)
{
  v2 = *v1;
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](v2);
  return sub_22FE43E04();
}

uint64_t PhotosFaceDatabase.__allocating_init(location:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection) = 0;
  sub_22FD9F36C(a1, v2 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_location);
  return v2;
}

uint64_t PhotosFaceDatabase.init(location:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection) = 0;
  sub_22FD9F36C(a1, v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_location);
  return v1;
}

void sub_22FD9E790()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_22FE42774();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DatabaseConnection.Location(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection))
  {
    sub_22FD91684();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    return;
  }

  v44 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v45 = v5;
  if (qword_28148B0A0 != -1)
  {
    swift_once();
  }

  v12 = sub_22FE42D34();
  v13 = __swift_project_value_buffer(v12, qword_28148B0A8);

  v14 = sub_22FE42D14();
  v15 = sub_22FE436C4();

  v46 = v15;
  if (os_log_type_enabled(v14, v15))
  {
    v42 = v1;
    v43 = v13;
    v16 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = v41;
    *v16 = 136315138;
    sub_22FD9F5B0(v3 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_location, v10);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2B08, qword_22FE48DB0);
    if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
    {
      v18 = 0xE900000000000079;
      v19 = 0x726F6D654D2D6E49;
    }

    else
    {
      v20 = v45;
      (*(v45 + 32))(v7, v10, v4);
      sub_22FD9F614();
      v21 = sub_22FE43C24();
      v18 = v22;
      (*(v20 + 8))(v7, v4);
      v19 = v21;
    }

    v23 = sub_22FD98218(v19, v18, &v47);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_22FD6D000, v14, v46, "Attempting to connect to db at %s", v16, 0xCu);
    v24 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x23190C380](v24, -1, -1);
    MEMORY[0x23190C380](v16, -1, -1);

    v2 = v42;
  }

  else
  {
  }

  static DatabaseConnection.open(location:)(v3 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_location, &v47);
  v25 = v2;
  if (v2)
  {
    goto LABEL_15;
  }

  v26 = v47;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4210, &unk_22FE4A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FE4A410;
  *(inited + 32) = 0x6574616572635F30;
  *(inited + 40) = 0xEF73656C6261745FLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x800000022FE46980;
  *(inited + 72) = 0;
  strcpy((inited + 80), "2_add_day_link");
  *(inited + 95) = -18;
  *(inited + 96) = 0;
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x800000022FE469A0;
  *(inited + 120) = 0;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 136) = 0x800000022FE469C0;
  *(inited + 144) = 1;
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x800000022FE469E0;
  *(inited + 168) = 0;
  *(inited + 176) = 0x61645F6464615F36;
  *(inited + 184) = 0xEB00000000796C69;
  *(inited + 192) = 0;
  *(inited + 200) = 0xD000000000000019;
  *(inited + 208) = 0x800000022FE46A00;
  *(inited + 216) = 0;
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x800000022FE46A20;
  *(inited + 240) = 0;
  DatabaseConnection.migrate(bundle:migrations:)(v28, inited);
  v25 = v30;
  if (v30)
  {

    swift_setDeallocating();
    swift_arrayDestroy();
LABEL_15:
    v31 = v25;
    v32 = sub_22FE42D14();
    v33 = sub_22FE436A4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v25;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_22FD6D000, v32, v33, "Error connecting to DB: %@", v34, 0xCu);
      sub_22FD9F3D0(v35);
      MEMORY[0x23190C380](v35, -1, -1);
      MEMORY[0x23190C380](v34, -1, -1);
    }

    else
    {
    }

    return;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v47 = v26;
  sub_22FD9F438(&v47, 1);
  *(v3 + v44) = v26;
  v38 = sub_22FE42D14();
  v39 = sub_22FE436C4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    *(v40 + 4) = 17;
    _os_log_impl(&dword_22FD6D000, v38, v39, "DB Initialized. Photo version: %ld", v40, 0xCu);
    MEMORY[0x23190C380](v40, -1, -1);
  }
}

uint64_t sub_22FD9EEBC(char a1, uint64_t a2, unint64_t a3)
{
  v6 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v7 = *(a2 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v7)
  {
    sub_22FD9E790();
    if (v3)
    {
    }

    v7 = *(a2 + v6);
    if (!v7)
    {
      sub_22FD91684();
      swift_allocError();
      *v16 = 0;
      swift_willThrow();
    }
  }

  if (a1)
  {
    v17 = v7;
    sub_22FD9F438(&v17, 0);
    if (v3)
    {
    }
  }

  v17 = v7;
  v8._countAndFlagsBits = 0x6E69676562;
  v8._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v8);
  if (!v9)
  {
    v17 = v7;
    sub_22FDAAA5C(&v17, a3);
    v17 = v7;
    v10._countAndFlagsBits = 0x74696D6D6F63;
    v10._object = 0xE600000000000000;
    DatabaseConnection.execute(sql:)(v10);
    if (!v9)
    {
      if (a1)
      {
        v17 = v7;
        sub_22FD9F438(&v17, 1);
      }
    }
  }

  v11 = v9;
  v17 = v7;
  v12._countAndFlagsBits = 0x6B6361626C6C6F72;
  v12._object = 0xE800000000000000;
  DatabaseConnection.execute(sql:)(v12);
  if (v13)
  {
  }

  if (a1)
  {
    v17 = v7;
    sub_22FD9F438(&v17, 1);
  }

  swift_willThrow();
}

void sub_22FD9F060(char a1@<W0>, void (*a2)(uint64_t *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v10 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v11 = *(v4 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v11)
  {
    sub_22FD9E790();
    if (v5)
    {
      return;
    }

    v11 = *(v4 + v10);
    if (!v11)
    {
      sub_22FD91684();
      swift_allocError();
      *v17 = 0;
      swift_willThrow();
      return;
    }
  }

  if ((a1 & 1) == 0 || (v20 = v11, sub_22FD9F438(&v20, 0), !v5))
  {
    v20 = v11;
    v12._countAndFlagsBits = 0x6E69676562;
    v12._object = 0xE500000000000000;
    DatabaseConnection.execute(sql:)(v12);
    if (v13)
    {
      v14 = v13;
      goto LABEL_7;
    }

    v20 = v11;
    a2(&v20);
    v20 = v11;
    v18._countAndFlagsBits = 0x74696D6D6F63;
    v18._object = 0xE600000000000000;
    DatabaseConnection.execute(sql:)(v18);
    if (v19)
    {
      v14 = v19;
      (*(*(a3 - 8) + 8))(a4, a3);
LABEL_7:
      v20 = v11;
      v15._countAndFlagsBits = 0x6B6361626C6C6F72;
      v15._object = 0xE800000000000000;
      DatabaseConnection.execute(sql:)(v15);
      if (v16)
      {
      }

      else
      {
        if (a1)
        {
          v20 = v11;
          sub_22FD9F438(&v20, 1);
        }

        swift_willThrow();
      }

      return;
    }

    if (a1)
    {
      v20 = v11;
      sub_22FD9F438(&v20, 1);
    }
  }
}

uint64_t PhotosFaceDatabase.deinit()
{
  sub_22FD9F66C(v0 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_location);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PhotosFaceDatabase.__deallocating_deinit()
{
  sub_22FD9F66C(v0 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_location);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FD9F2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD73F54;

  return PhotosFaceIDDatabase.insert(storedPhotos:)(a1, a2, a3);
}

uint64_t sub_22FD9F36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseConnection.Location(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FD9F3D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4208, &qword_22FE4ACE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22FD9F438(uint64_t a1, char a2)
{
  sub_22FE438F4();

  if (a2)
  {
    v4 = 28271;
  }

  else
  {
    v4 = 6710895;
  }

  if (a2)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x23190ACF0](v4, v5);

  v6 = sub_22FDB08B0(0xD000000000000014, 0x800000022FE46A90);

  if (!v2)
  {
    sub_22FDB31B8(MEMORY[0x277D84F90], v6);
    sub_22FDB33A0(v6);
    v7 = sqlite3_step(v6);
    if ((v7 & 0xFFFFFFFE) != 0x64)
    {
      v8 = v7;
      if (sqlite3_errstr(v7))
      {
        v9 = sub_22FE43104();
        v11 = v10;
      }

      else
      {
        v11 = 0xE300000000000000;
        v9 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v12 = v8 | 0xA000000000000000;
      v12[1] = v9;
      v12[2] = v11;
      swift_willThrow();
    }

    sub_22FDB35E0(v6);
  }
}

uint64_t sub_22FD9F5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseConnection.Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FD9F614()
{
  result = qword_28148BE60;
  if (!qword_28148BE60)
  {
    sub_22FE42774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148BE60);
  }

  return result;
}

uint64_t sub_22FD9F66C(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseConnection.Location(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PhotosFaceDatabase(uint64_t a1)
{
  result = qword_28148BDA0;
  if (!qword_28148BDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FD9F71C(uint64_t a1)
{
  result = type metadata accessor for DatabaseConnection.Location(319);
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

uint64_t dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FDA07CC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FDA07CC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FDA07CC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryPhotosForDays(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FD9FD38;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_22FD9FD38(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of PhotosFaceIDDatabase.insert(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD8C738;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PhotosFaceIDDatabase.delete(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD8C738;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD73F54;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FD8C738;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PhotosFaceIDDatabase.unrelatePhotos(for:before:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FD8C738;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PhotosFaceIDDatabase.insert(storedPhotos:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD8C738;

  return v9(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for PhotosFaceIDDatabaseFix(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PhotosFaceIDDatabaseFix(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosFaceDatabase.Failure(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PhotosFaceDatabase.Failure(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22FDA0778()
{
  result = qword_27DAE4218;
  if (!qword_27DAE4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4218);
  }

  return result;
}

uint64_t ShuffleDatabase.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ShuffleDatabase.insert(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDA083C, 0, 0);
}

uint64_t sub_22FDA083C()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FDA08B8, v2, 0);
}

uint64_t sub_22FDA08B8()
{
  sub_22FD914F4(1, sub_22FDA0C20);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FDA0968(uint64_t *a1, uint64_t a2)
{
  v18 = *a1;
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4188, &qword_22FE4A188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FE49F60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v4 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22FE49FB0;
  v8 = v7 + v6;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for ShuffleID(0);
  *(v8 + v5) = *(a2 + v10[6]);
  swift_storeEnumTagMultiPayload();
  *(v8 + 2 * v5) = *(a2 + v10[7]);
  swift_storeEnumTagMultiPayload();
  *(v8 + 3 * v5) = *(a2 + v10[8]);
  swift_storeEnumTagMultiPayload();
  *(inited + 32) = v7;
  v11._countAndFlagsBits = 0xD00000000000008ALL;
  v11._object = 0x800000022FE47470;
  DatabaseConnection.insert(sql:bindings:)(v11, inited);
  swift_setDeallocating();
  result = sub_22FD93E6C(inited + 32, &qword_27DAE4190, &qword_22FE4A190);
  if (!v13)
  {
    v19 = v18;
    MEMORY[0x28223BE20](result);
    v17[2] = a2;
    v15 = sub_22FDD47D8(sub_22FD9E2A4, v17, v14);
    v16._object = 0x800000022FE47500;
    v16._countAndFlagsBits = 0xD000000000000075;
    DatabaseConnection.insert(sql:bindings:)(v16, v15);
  }

  return result;
}

uint64_t sub_22FDA0C5C()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDA0C80, v1, 0);
}

uint64_t sub_22FDA0C80()
{
  v18 = v0;
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v11 = 0;
      goto LABEL_9;
    }
  }

  v17 = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_5:
    v17 = v3;
    v9._countAndFlagsBits = 0x6B6361626C6C6F72;
    v9._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v9);
    if (v10)
    {

LABEL_10:
      v12 = *(v0 + 8);

      return v12();
    }

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v17 = v3;
  sub_22FDA0E38(&v17, &v16);
  v17 = v3;
  v7._countAndFlagsBits = 0x74696D6D6F63;
  v7._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v7);
  if (v8)
  {
    v6 = v8;

    goto LABEL_5;
  }

  v14 = v16;
  v15 = *(v0 + 8);

  return v15(v14);
}

void sub_22FDA0E38(sqlite3_stmt **a1@<X0>, unint64_t **a2@<X8>)
{
  v94 = a2;
  v102 = sub_22FE428C4();
  v95 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4200, &qword_22FE4A3E8);
  MEMORY[0x28223BE20](v93);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v75 - v7;
  v9 = type metadata accessor for ShuffleID(0);
  v96 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v75 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v75 - v22;
  v104 = *a1;
  v24 = v100;
  v25 = sub_22FDB08B0(0xD00000000000007FLL, 0x800000022FE473F0);
  if (!v24)
  {
    v26 = v25;
    v80 = v17;
    v97 = v14;
    v98 = v9;
    v81 = v8;
    v99 = v5;
    sub_22FDB31B8(MEMORY[0x277D84F90], v25);
    sub_22FDB33A0(v26);
    v27 = MEMORY[0x277D84F90];
    for (i = v96; ; sub_22FD9E1E8(v20, v27 + ((*(i + 80) + 32) & ~*(i + 80)) + *(i + 72) * v31, type metadata accessor for ShuffleID))
    {
      v29 = sqlite3_step(v26);
      if (v29 != 100)
      {
        break;
      }

      v104 = v26;
      sub_22FDA175C(&v104, v23);
      sub_22FD9E120(v23, v20, type metadata accessor for ShuffleID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_22FD91A3C(0, v27[2] + 1, 1, v27);
      }

      v31 = v27[2];
      v30 = v27[3];
      if (v31 >= v30 >> 1)
      {
        v27 = sub_22FD91A3C((v30 > 1), v31 + 1, 1, v27);
      }

      sub_22FD9E188(v23, type metadata accessor for ShuffleID);
      v27[2] = v31 + 1;
    }

    v32 = v29;
    if (v29 == 101)
    {
      sub_22FDB35E0(v26);
      v33 = sub_22FDA5234(v27);
      v75 = 0;

      v34 = v33[2];
      if (v34)
      {
        v104 = MEMORY[0x277D84F90];
        sub_22FD9246C(0, v34, 0);
        v91 = v33 + 8;
        v92 = v104;
        v35 = sub_22FE43834();
        v36 = 0;
        v100 = *(v33 + 9);
        v37 = v95;
        v90 = v95 + 4;
        v76 = v33 + 9;
        v38 = v81;
        v79 = v33;
        v78 = v34;
        v77 = v95 + 2;
        while ((v35 & 0x8000000000000000) == 0 && v35 < 1 << *(v33 + 32))
        {
          if ((v91[v35 >> 6] & (1 << v35)) == 0)
          {
            goto LABEL_40;
          }

          if (v100 != *(v33 + 9))
          {
            goto LABEL_41;
          }

          v86 = 1 << v35;
          v87 = v35 >> 6;
          v83 = v36;
          v42 = v33[6] + v37[9] * v35;
          v43 = v102;
          v88 = v37[2];
          v88(v38, v42, v102);
          v44 = *(v33[7] + 8 * v35);
          v45 = v37[4];
          v46 = v43;
          v47 = v99;
          v89 = v45;
          v45(v99, v38, v46);
          *(v47 + *(v93 + 48)) = v44;
          v48 = *(v44 + 16);
          if (!v48)
          {
            goto LABEL_42;
          }

          v84 = v35;
          v82 = v35 & 0x3F;
          v50 = v96;
          v49 = v97;
          v85 = (*(v96 + 80) + 32) & ~*(v96 + 80);
          v51 = v44 + v85;
          sub_22FD9E120(v44 + v85, v97, type metadata accessor for ShuffleID);
          v88(v101, v49, v46);
          v103 = MEMORY[0x277D84F90];
          v52 = v98[5];

          v53 = *(v50 + 72);
          do
          {
            sub_22FD9E120(v51, v11, type metadata accessor for ShuffleID);
            v54 = *&v11[v52];

            sub_22FD9E188(v11, type metadata accessor for ShuffleID);
            sub_22FDAD798(v54);
            v51 += v53;
            --v48;
          }

          while (v48);
          v55 = sub_22FDC2070(v103);

          v56 = v98;
          v57 = v97[v98[6]];
          v58 = v97[v98[7]];
          v59 = v97[v98[8]];
          sub_22FD9E188(v97, type metadata accessor for ShuffleID);
          v60 = v80;
          v89(v80, v101, v102);
          *(v60 + v56[5]) = v55;
          *(v60 + v56[6]) = v57;
          *(v60 + v56[7]) = v58;
          *(v60 + v56[8]) = v59;
          sub_22FD93E6C(v99, &qword_27DAE4200, &qword_22FE4A3E8);
          v61 = v92;
          v104 = v92;
          v63 = *(v92 + 2);
          v62 = *(v92 + 3);
          if (v63 >= v62 >> 1)
          {
            sub_22FD9246C((v62 > 1), v63 + 1, 1);
            v61 = v104;
          }

          *(v61 + 2) = v63 + 1;
          v92 = v61;
          sub_22FD9E1E8(v60, v61 + v85 + v63 * v53, type metadata accessor for ShuffleID);
          v33 = v79;
          v40 = 1 << *(v79 + 32);
          v37 = v95;
          if (v84 >= v40)
          {
            goto LABEL_43;
          }

          v64 = v91[v87];
          if ((v64 & v86) == 0)
          {
            goto LABEL_44;
          }

          if (v100 != *(v79 + 9))
          {
            goto LABEL_45;
          }

          v65 = v64 & (-2 << v82);
          if (v65)
          {
            v39 = v84;
            sub_22FD72BF8(v84, v100, 0);
            v40 = __clz(__rbit64(v65)) | v39 & 0x7FFFFFFFFFFFFFC0;
            v41 = v94;
            v38 = v81;
          }

          else
          {
            v66 = v87 << 6;
            v67 = v87 + 1;
            v68 = &v76[v87];
            v41 = v94;
            v38 = v81;
            while (v67 < (v40 + 63) >> 6)
            {
              v70 = *v68++;
              v69 = v70;
              v66 += 64;
              ++v67;
              if (v70)
              {
                sub_22FD72BF8(v84, v100, 0);
                v40 = __clz(__rbit64(v69)) + v66;
                goto LABEL_14;
              }
            }

            sub_22FD72BF8(v84, v100, 0);
          }

LABEL_14:
          v36 = v83 + 1;
          v35 = v40;
          if (v83 + 1 == v78)
          {

            *v41 = v92;
            return;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
      }

      else
      {

        *v94 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      if (sqlite3_errstr(v32))
      {
        v71 = sub_22FE43104();
        v73 = v72;
      }

      else
      {
        v73 = 0xE300000000000000;
        v71 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v74 = v32 | 0xA000000000000000;
      v74[1] = v71;
      v74[2] = v73;
      swift_willThrow();
      sub_22FDB35E0(v26);
    }
  }
}

int *sub_22FDA175C@<X0>(sqlite3_stmt **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v21[9] = *a1;
  result = DatabaseRow.readUUID(column:)(0);
  if (!v2)
  {
    v21[1] = 0;
    if (sqlite3_column_type(v9, 1) == 5 || !sqlite3_column_text(v9, 1))
    {
      v16 = MEMORY[0x277D84FA0];
    }

    else
    {
      v11 = sub_22FE43114();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40E0, &qword_22FE4A100);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22FE49F60;
      *(inited + 32) = v11;
      v15 = inited + 32;
      *(inited + 40) = v13;
      v16 = sub_22FDA5654(inited);
      swift_setDeallocating();
      sub_22FD9E250(v15);
    }

    if (sqlite3_column_type(v9, 2) == 5)
    {

      sub_22FD9172C();
      swift_allocError();
      *v17 = 2;
    }

    else
    {
      v18 = sqlite3_column_int(v9, 2);
      if (sqlite3_column_type(v9, 3) == 5)
      {

        sub_22FD9172C();
        swift_allocError();
        *v17 = 3;
      }

      else
      {
        v19 = sqlite3_column_int(v9, 3);
        if (sqlite3_column_type(v9, 4) != 5)
        {
          v20 = sqlite3_column_int(v9, 4) == 1;
          (*(v6 + 32))(a2, v8, v5);
          result = type metadata accessor for ShuffleID(0);
          *(a2 + result[5]) = v16;
          *(a2 + result[6]) = v18 == 1;
          *(a2 + result[7]) = v19 == 1;
          *(a2 + result[8]) = v20;
          return result;
        }

        sub_22FD9172C();
        swift_allocError();
        *v17 = 4;
      }
    }

    *(v17 + 4) = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t ShuffleDatabase.queryByDay(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = *(type metadata accessor for StoredPhoto(0) - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for DatabaseBinding(0);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDA1C64, 0, 0);
}

uint64_t sub_22FDA1C64()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[2];
  v28 = *(v0[3] + 16);
  v0[18] = v28;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000313, 0x800000022FE46AB0);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject() + v8;
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9, v6, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v5 + 56);
  v11(v9, 0, 1, v4);
  *(v9 + v7) = 17;
  swift_storeEnumTagMultiPayload();
  v11(v9 + v7, 0, 1, v4);
  sub_22FD764B4(v9, v2, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v2, v1, &qword_27DAE4070, &qword_22FE4A740);
  v27 = *(v5 + 48);
  v12 = v27(v1, 1, v4);
  v13 = v0[16];
  if (v12 == 1)
  {
    sub_22FD93E6C(v13, &qword_27DAE4070, &qword_22FE4A740);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_22FD9E1E8(v13, v0[13], type metadata accessor for DatabaseBinding);
    v14 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD919C8(0, v14[2] + 1, 1, v14);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_22FD919C8((v15 > 1), v16 + 1, 1, v14);
    }

    v17 = v0[13];
    v14[2] = v16 + 1;
    sub_22FD9E1E8(v17, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for DatabaseBinding);
  }

  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[11];
  sub_22FD764B4(v9 + v7, v18, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v18, v19, &qword_27DAE4070, &qword_22FE4A740);
  v21 = v27(v19, 1, v20);
  v22 = v0[16];
  if (v21 == 1)
  {
    sub_22FD93E6C(v22, &qword_27DAE4070, &qword_22FE4A740);
  }

  else
  {
    sub_22FD9E1E8(v22, v0[13], type metadata accessor for DatabaseBinding);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD919C8(0, v14[2] + 1, 1, v14);
    }

    v24 = v14[2];
    v23 = v14[3];
    if (v24 >= v23 >> 1)
    {
      v14 = sub_22FD919C8((v23 > 1), v24 + 1, 1, v14);
    }

    v25 = v0[13];
    v14[2] = v24 + 1;
    sub_22FD9E1E8(v25, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, type metadata accessor for DatabaseBinding);
  }

  v0[21] = v14;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FDA20FC, v28, 0);
}

uint64_t sub_22FDA20FC()
{
  *(v0 + 176) = sub_22FDA5C54(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 144));
  *(v0 + 184) = 0;

  return MEMORY[0x2822009F8](sub_22FDA219C, 0, 0);
}

void *sub_22FDA219C()
{
  v35 = v0[5];
  v42 = v0[4];
  v43 = v0[9];
  v1 = sub_22FDA4CA8(v0[22]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4080, &qword_22FE4BEC0);
  v2 = sub_22FE43AE4();
  result = v1;
  v4 = 0;
  v5 = v1[8];
  v32 = v1 + 8;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v36 = v2;
  v37 = v2 + 8;
  v33 = v9;
  v34 = v1;
  if ((v7 & v5) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = result[6];
      v15 = *(v14 + 8 * v13);
      v16 = *(result[7] + 8 * v13);
      v17 = *(v16 + 16);
      if (v17)
      {
        v38 = *(v14 + 8 * v13);
        v39 = v13;
        v40 = v8;
        v41 = v4;
        v46 = MEMORY[0x277D84F90];

        sub_22FD92408(0, v17, 0);
        v18 = v46;
        v19 = v16 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
        v44 = *(v35 + 72);
        do
        {
          v45 = v0[10];
          v20 = v0[7];
          v21 = v0[8];
          v22 = v0[6];
          sub_22FD764B4(v19, v21, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD764B4(v21, v20, &qword_27DAE4068, &qword_22FE49FD8);
          v23 = *(v42 + 48);
          v24 = *(v20 + v23);
          sub_22FD9E1E8(v20, v22, type metadata accessor for StoredPhoto);
          *(v22 + v23) = v24;
          sub_22FD9E120(v22, v45, type metadata accessor for StoredPhoto);
          sub_22FD93E6C(v22, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD93E6C(v21, &qword_27DAE4068, &qword_22FE49FD8);
          v26 = *(v46 + 16);
          v25 = *(v46 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_22FD92408((v25 > 1), v26 + 1, 1);
          }

          v27 = v0[10];
          *(v46 + 16) = v26 + 1;
          sub_22FD9E1E8(v27, v46 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v26, type metadata accessor for StoredPhoto);
          v19 += v44;
          --v17;
        }

        while (v17);

        v2 = v36;
        v9 = v33;
        result = v34;
        v8 = v40;
        v4 = v41;
        v15 = v38;
        v13 = v39;
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      *(v37 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v2[6] + 8 * v13) = v15;
      *(v2[7] + 8 * v13) = v18;
      v28 = v2[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v2[2] = v30;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v4 >= v9)
      {
        break;
      }

      v12 = v32[v4];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    v31 = v0[1];

    return v31(v2);
  }

  return result;
}

uint64_t ShuffleDatabase.query(id:day:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DatabaseBinding(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDA26A4, 0, 0);
}

uint64_t sub_22FDA26A4()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[2];
  v24 = *(v0[4] + 16);
  v0[12] = v24;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000327, 0x800000022FE46DD0);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[13] = 0;
  v0[14] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject() + v7;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, v5, v9);
  swift_storeEnumTagMultiPayload();
  v10 = *(v3 + 56);
  v10(v8, 0, 1, v2);
  *(v8 + v6) = v4;
  swift_storeEnumTagMultiPayload();
  v10(v8 + v6, 0, 1, v2);
  *(v8 + 2 * v6) = 17;
  swift_storeEnumTagMultiPayload();
  v10(v8 + 2 * v6, 0, 1, v2);
  v25 = v3;
  v11 = (v3 + 48);
  v12 = MEMORY[0x277D84F90];
  v13 = 3;
  v14 = v8;
  do
  {
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[5];
    sub_22FD764B4(v14, v15, &qword_27DAE4070, &qword_22FE4A740);
    sub_22FD93E04(v15, v16, &qword_27DAE4070, &qword_22FE4A740);
    v18 = (*v11)(v16, 1, v17);
    v19 = v0[10];
    if (v18 == 1)
    {
      sub_22FD93E6C(v19, &qword_27DAE4070, &qword_22FE4A740);
    }

    else
    {
      sub_22FD9E1E8(v19, v0[7], type metadata accessor for DatabaseBinding);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_22FD919C8(0, v12[2] + 1, 1, v12);
      }

      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        v12 = sub_22FD919C8((v20 > 1), v21 + 1, 1, v12);
      }

      v22 = v0[7];
      v12[2] = v21 + 1;
      sub_22FD9E1E8(v22, v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, type metadata accessor for DatabaseBinding);
    }

    v0[16] = v12;
    v14 += v6;
    --v13;
  }

  while (v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD8ED48, v24, 0);
}

uint64_t ShuffleDatabase.queryPhotosForDays(from:to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FDA2A7C, 0, 0);
}

uint64_t sub_22FDA2A7C()
{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22FDA2AA0, v1, 0);
}

uint64_t sub_22FDA2AA0()
{
  v20 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v13 = 0;
      goto LABEL_9;
    }
  }

  v19 = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_5:
    v19 = v3;
    v11._countAndFlagsBits = 0x6B6361626C6C6F72;
    v11._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v11);
    if (v12)
    {

LABEL_10:
      v14 = v0[1];

      return v14();
    }

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v7 = v0[2];
  v8 = v0[3];
  v19 = v3;
  sub_22FDA2C5C(&v19, v7, v8, &v18);
  v19 = v3;
  v9._countAndFlagsBits = 0x74696D6D6F63;
  v9._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v9);
  if (v10)
  {
    v6 = v10;

    goto LABEL_5;
  }

  v16 = v18;
  v17 = v0[1];

  return v17(v16);
}

void sub_22FDA2C5C(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v114 = a3;
  v113 = a2;
  v105 = a4;
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  v106 = v5;
  v107 = v6;
  MEMORY[0x28223BE20](v5);
  v108 = v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v119 = v102 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A0, &qword_22FE4A1A0);
  v109 = *(v116 - 1);
  MEMORY[0x28223BE20](v116);
  v111 = (v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v110 = v102 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v102 - v14;
  v112 = *a1;
  v117 = 0;
  v118 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000115, 0x800000022FE472D0);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v16 = v117;
  v17 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v18 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22FE49F90;
  v22 = (v21 + v20);
  *v22 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v22 + v19) = 24;
  swift_storeEnumTagMultiPayload();
  *(v22 + 2 * v19) = v113;
  swift_storeEnumTagMultiPayload();
  *(v22 + 3 * v19) = v114;
  swift_storeEnumTagMultiPayload();
  *(v22 + 4 * v19) = 17;
  swift_storeEnumTagMultiPayload();
  v117 = v112;
  v23 = v115;
  v24 = sub_22FDB08B0(v16, v17);
  if (v23)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return;
  }

  v25 = v24;

  sub_22FDB31B8(v21, v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22FDB33A0(v25);
  v26 = MEMORY[0x277D84F90];
  v27 = v111;
  while (1)
  {
    v28 = sqlite3_step(v25);
    v29 = v116;
    if (v28 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v25, 0) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v99 = 0;
LABEL_50:
      *(v99 + 4) = 0;
      swift_willThrow();
      goto LABEL_52;
    }

    *v15 = sqlite3_column_int(v25, 0);
    if (sqlite3_column_type(v25, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v99 = 1;
      goto LABEL_50;
    }

    v30 = v26;
    v31 = sqlite3_column_blob(v25, 1);
    if (!v31)
    {
      sub_22FD9172C();
      swift_allocError();
      *v100 = 1;
      *(v100 + 4) = 0;
      swift_willThrow();
LABEL_52:

LABEL_53:
      sub_22FDB35E0(v25);
      return;
    }

    v32 = v31;
    v33 = v29[12];
    v34 = sqlite3_column_bytes(v25, 1);
    v35 = sub_22FDB285C(v32, v34);
    LOBYTE(v117) = 2;
    UUID.init(serialized:version:)(v35, v36);
    if (sqlite3_column_type(v25, 2) == 5 || (v37 = sqlite3_column_blob(v25, 2)) == 0)
    {
      sub_22FD9172C();
      swift_allocError();
      *v93 = 2;
      *(v93 + 4) = 0;
      swift_willThrow();
      (*(v107 + 8))(&v15[v33], v106);
      goto LABEL_52;
    }

    v38 = v37;
    v39 = sqlite3_column_bytes(v25, 2);
    v40 = sub_22FDB285C(v38, v39);
    LOBYTE(v117) = 2;
    UUID.init(serialized:version:)(v40, v41);
    sub_22FD764B4(v15, v110, &qword_27DAE41A0, &qword_22FE4A1A0);
    v42 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_22FD919F0(0, v30[2] + 1, 1, v30);
    }

    v27 = v111;
    v44 = v42[2];
    v43 = v42[3];
    v45 = v42;
    if (v44 >= v43 >> 1)
    {
      v45 = sub_22FD919F0((v43 > 1), v44 + 1, 1, v42);
    }

    sub_22FD93E6C(v15, &qword_27DAE41A0, &qword_22FE4A1A0);
    v45[2] = v44 + 1;
    v26 = v45;
    sub_22FD93E04(v110, v45 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v44, &qword_27DAE41A0, &qword_22FE4A1A0);
  }

  if (v28 != 101)
  {
    v94 = v28;

    v95 = v94;
    if (sqlite3_errstr(v94))
    {
      v96 = sub_22FE43104();
      v98 = v97;
    }

    else
    {
      v98 = 0xE300000000000000;
      v96 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v101 = v95 | 0xA000000000000000;
    v101[1] = v96;
    v101[2] = v98;
    swift_willThrow();
    goto LABEL_53;
  }

  sub_22FDB35E0(v25);
  v46 = sub_22FD75328(MEMORY[0x277D84F90]);
  v112 = v26[2];
  v113 = v26;
  if (!v112)
  {
    v48 = 0;
    v50 = 0;
    v92 = v105;
LABEL_55:

    sub_22FD6EBD8(v48, 0);
    sub_22FD6EBD8(v50, 0);
    *v92 = v46;
    return;
  }

  v47 = v26;
  v48 = 0;
  v49 = v29;
  v50 = 0;
  v51 = 0;
  v110 = v49[12];
  v104 = v47 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
  v52 = v49[16];
  v53 = v106;
  v116 = (v107 + 32);
  v102[0] = v107 + 16;
  v102[1] = v107 + 8;
  v103 = v52;
  while (v51 < *(v113 + 16))
  {
    v54 = *(v109 + 72);
    v114 = v51;
    sub_22FD764B4(v104 + v54 * v51, v27, &qword_27DAE41A0, &qword_22FE4A1A0);
    v55 = v27;
    v56 = *v27;
    v57 = *v116;
    (*v116)(v119, v55 + v110, v53);
    v115 = v57;
    v57(v108, v55 + v103, v53);
    sub_22FD6EBD8(v48, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v46;
    v60 = sub_22FD74718(v56);
    v61 = v46[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_59;
    }

    v64 = v59;
    if (v46[3] >= v63)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v59)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_22FDDED7C();
        v46 = v117;
        if (v64)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_22FDDD908(v63, isUniquelyReferenced_nonNull_native);
      v46 = v117;
      v65 = sub_22FD74718(v56);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_64;
      }

      v60 = v65;
      if (v64)
      {
        goto LABEL_28;
      }
    }

    v67 = sub_22FD75430(MEMORY[0x277D84F90]);
    v46[(v60 >> 6) + 8] |= 1 << v60;
    *(v46[6] + 8 * v60) = v56;
    *(v46[7] + 8 * v60) = v67;
    v68 = v46[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_61;
    }

    v46[2] = v70;
LABEL_28:
    v71 = v46[7];
    sub_22FD6EBD8(v50, 0);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v117 = *(v71 + 8 * v60);
    v73 = v117;
    *(v71 + 8 * v60) = 0x8000000000000000;
    v75 = sub_22FD747EC(v119);
    v76 = v73[2];
    v77 = (v74 & 1) == 0;
    v78 = v76 + v77;
    if (__OFADD__(v76, v77))
    {
      goto LABEL_60;
    }

    v79 = v74;
    if (v73[3] >= v78)
    {
      if ((v72 & 1) == 0)
      {
        sub_22FDDEAFC();
        v73 = v117;
      }
    }

    else
    {
      sub_22FDDD8F4(v78, v72);
      v73 = v117;
      v80 = sub_22FD747EC(v119);
      if ((v79 & 1) != (v81 & 1))
      {
        goto LABEL_63;
      }

      v75 = v80;
    }

    v53 = v106;
    *(v71 + 8 * v60) = v73;

    v82 = *(v71 + 8 * v60);
    v83 = v119;
    if ((v79 & 1) == 0)
    {
      v82[(v75 >> 6) + 8] |= 1 << v75;
      (*(v107 + 16))(v82[6] + *(v107 + 72) * v75, v83, v53);
      *(v82[7] + 8 * v75) = MEMORY[0x277D84F90];
      v84 = v82[2];
      v69 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v69)
      {
        goto LABEL_62;
      }

      v82[2] = v85;
    }

    v86 = v82[7];
    v87 = *(v86 + 8 * v75);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    *(v86 + 8 * v75) = v87;
    if ((v88 & 1) == 0)
    {
      v87 = sub_22FD91828(0, v87[2] + 1, 1, v87);
      *(v86 + 8 * v75) = v87;
    }

    v90 = v87[2];
    v89 = v87[3];
    if (v90 >= v89 >> 1)
    {
      v87 = sub_22FD91828((v89 > 1), v90 + 1, 1, v87);
      *(v86 + 8 * v75) = v87;
    }

    v27 = v111;
    v51 = v114 + 1;
    v87[2] = v90 + 1;
    v91 = v107;
    v115(v87 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v90, v108, v53);
    (*(v91 + 8))(v119, v53);
    v50 = sub_22FD8FDB0;
    v48 = sub_22FD8FD80;
    v92 = v105;
    if (v112 == v51)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  sub_22FE43D14();
  __break(1u);
LABEL_64:
  sub_22FE43D14();
  __break(1u);
}

uint64_t ShuffleDatabase.delete(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDA3888, 0, 0);
}

uint64_t sub_22FDA3888()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FDA3904, v2, 0);
}

uint64_t sub_22FDA3904()
{
  sub_22FD914F4(0, sub_22FDA5084);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FDA39B4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22FE49F60;
  v6 = sub_22FE428C4();
  (*(*(v6 - 8) + 16))(v5 + v4, a2, v6);
  swift_storeEnumTagMultiPayload();
  v7._object = 0x800000022FE47290;
  v7._countAndFlagsBits = 0xD000000000000034;
  DatabaseConnection.delete(sql:bindings:)(v7, v5);
  swift_setDeallocating();
  sub_22FD9E188(v5 + v4, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t ShuffleDatabase.relate(photos:to:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22FDA3B60, 0, 0);
}

uint64_t sub_22FDA3B60()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 40) + 16);
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FDA3BE4, v2, 0);
}

uint64_t sub_22FDA3BE4()
{
  sub_22FD914F4(0, sub_22FDA50A0);
  *(v0 + 64) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FDA3C94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[5] = *a1;
  v7[2] = a3;
  v7[3] = a4;
  v4 = sub_22FDD4678(sub_22FD93DE4, v7, a2);
  v5._object = 0x800000022FE47210;
  v5._countAndFlagsBits = 0xD00000000000007CLL;
  DatabaseConnection.insert(sql:bindings:)(v5, v4);
}

uint64_t ShuffleDatabase.unrelatePhotos(for:before:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FDA3D44, 0, 0);
}

uint64_t sub_22FDA3D44()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 16);
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x2822009F8](sub_22FDA3DCC, v3, 0);
}

uint64_t sub_22FDA3DCC()
{
  sub_22FD914F4(0, sub_22FDA50C0);
  *(v0 + 56) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FDA3E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v5 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22FE49FB0;
  v9 = (v8 + v7);
  *v9 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v9 + v6) = 24;
  swift_storeEnumTagMultiPayload();
  *(v9 + 2 * v6) = a2;
  swift_storeEnumTagMultiPayload();
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9 + 3 * v6, a3, v10);
  swift_storeEnumTagMultiPayload();
  v11._object = 0x800000022FE47170;
  v11._countAndFlagsBits = 0xD000000000000096;
  DatabaseConnection.delete(sql:bindings:)(v11, v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

uint64_t ShuffleDatabase.clearPhotos(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDA4078, 0, 0);
}

uint64_t sub_22FDA4078()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FDA40F4, v2, 0);
}

uint64_t sub_22FDA40F4()
{
  sub_22FD914F4(0, sub_22FDA50DC);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD908B4, 0, 0);
}

uint64_t sub_22FDA41A4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22FE49F60;
  v6 = sub_22FE428C4();
  (*(*(v6 - 8) + 16))(v5 + v4, a2, v6);
  swift_storeEnumTagMultiPayload();
  v7._object = 0x800000022FE47130;
  v7._countAndFlagsBits = 0xD00000000000003BLL;
  DatabaseConnection.delete(sql:bindings:)(v7, v5);
  swift_setDeallocating();
  sub_22FD9E188(v5 + v4, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t ShuffleDatabase.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22FDA4384(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FDA43A8, 0, 0);
}

uint64_t sub_22FDA43A8()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FDA4424, v2, 0);
}

uint64_t sub_22FDA4424()
{
  sub_22FD914F4(1, sub_22FDA57EC);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FDA44D4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FDA44F8, 0, 0);
}

uint64_t sub_22FDA44F8()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FDA4574, v2, 0);
}

uint64_t sub_22FDA4574()
{
  sub_22FD914F4(0, sub_22FDA57D4);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FDA4624(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FDA4648, 0, 0);
}

uint64_t sub_22FDA4648()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FDA46C4, v2, 0);
}

uint64_t sub_22FDA46C4()
{
  sub_22FD914F4(0, sub_22FDA57BC);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FDA4774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_22FDA479C, 0, 0);
}

uint64_t sub_22FDA479C()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 40) + 16);
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FDA4820, v2, 0);
}

uint64_t sub_22FDA4820()
{
  sub_22FD914F4(0, sub_22FDA5804);
  *(v0 + 64) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FDA48D0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22FDA48F8, 0, 0);
}

uint64_t sub_22FDA48F8()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 16);
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x2822009F8](sub_22FDA4980, v3, 0);
}

uint64_t sub_22FDA4980()
{
  sub_22FD914F4(0, sub_22FDA581C);
  *(v0 + 56) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FDA4A30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FD93F54;

  return ShuffleDatabase.queryList()();
}

uint64_t sub_22FDA4AC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD93F54;

  return ShuffleDatabase.query(id:day:)(a1, a2);
}

uint64_t sub_22FDA4B68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD93F54;

  return ShuffleDatabase.queryByDay(id:)(a1);
}

uint64_t sub_22FDA4C00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD913F4;

  return ShuffleDatabase.queryPhotosForDays(from:to:)(a1, a2);
}

void *sub_22FDA4CA8(uint64_t a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v2);
  v48 = &v40 - v3;
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - v5;
  MEMORY[0x28223BE20](v6);
  v49 = &v40 - v9;
  v10 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v42 = *(v7 + 80);
  v12 = *(v7 + 72);
  v44 = (v42 + 32) & ~v42;
  v13 = a1 + v44;
  v41 = xmmword_22FE49F60;
  v45 = v8;
  v43 = v12;
  while (1)
  {
    v15 = v49;
    sub_22FD764B4(v13, v49, &qword_27DAE4068, &qword_22FE49FD8);
    v16 = v47;
    sub_22FD764B4(v15, v47, &qword_27DAE4068, &qword_22FE49FD8);
    v17 = *(v46 + 48);
    v18 = *(v16 + v17);
    v19 = v16;
    v20 = v48;
    sub_22FD9E1E8(v19, v48, type metadata accessor for StoredPhoto);
    *(v20 + v17) = v18;
    sub_22FD93E6C(v20, &qword_27DAE4068, &qword_22FE49FD8);
    v22 = sub_22FD74718(v18);
    v23 = v10[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v10[3] < v25)
    {
      sub_22FDDD204(v25, 1);
      v10 = v50;
      v27 = sub_22FD74718(v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {
      v29 = v10[7];
      sub_22FD93E04(v49, v45, &qword_27DAE4068, &qword_22FE49FD8);
      v30 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_22FD9195C(0, v30[2] + 1, 1, v30);
        *(v29 + 8 * v22) = v30;
      }

      v33 = v30[2];
      v32 = v30[3];
      if (v33 >= v32 >> 1)
      {
        v30 = sub_22FD9195C((v32 > 1), v33 + 1, 1, v30);
        *(v29 + 8 * v22) = v30;
      }

      v30[2] = v33 + 1;
      v14 = v43;
      sub_22FD93E04(v45, v30 + v44 + v33 * v43, &qword_27DAE4068, &qword_22FE49FD8);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A8, &qword_22FE4A1A8);
      v34 = v44;
      v35 = swift_allocObject();
      *(v35 + 16) = v41;
      sub_22FD93E04(v49, v35 + v34, &qword_27DAE4068, &qword_22FE49FD8);
      v10[(v22 >> 6) + 8] |= 1 << v22;
      *(v10[6] + 8 * v22) = v18;
      *(v10[7] + 8 * v22) = v35;
      v36 = v10[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v10[2] = v38;
      v14 = v43;
    }

    v13 += v14;
    if (!--v11)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

uint64_t sub_22FDA50F8(uint64_t a1, uint64_t a2)
{
  result = sub_22FDA51C0(&qword_27DAE4220, a2, type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FDA51C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_22FDA5234(uint64_t a1)
{
  v2 = sub_22FE428C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShuffleID(0) - 8;
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v39 - v11;
  v12 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v43 = *(v10 + 80);
  v14 = v3;
  v15 = *(v10 + 72);
  v16 = a1 + ((v43 + 32) & ~v43);
  v48 = (v43 + 32) & ~v43;
  v49 = (v14 + 16);
  v41 = (v14 + 8);
  v42 = v14 + 32;
  v40 = xmmword_22FE49F60;
  v44 = v8;
  v45 = v14;
  v46 = v2;
  v47 = v15;
  while (1)
  {
    v19 = v50;
    sub_22FD9E120(v16, v50, type metadata accessor for ShuffleID);
    (*v49)(v5, v19, v2);
    v21 = sub_22FD747EC(v5);
    v22 = v12[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v12[3] < v24)
    {
      sub_22FDDD91C(v24, 1);
      v12 = v51;
      v26 = sub_22FD747EC(v5);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_19;
      }

      v21 = v26;
    }

    if (v25)
    {
      (*v41)(v5, v2);
      v28 = v12[7];
      sub_22FD9E1E8(v50, v8, type metadata accessor for ShuffleID);
      v29 = *(v28 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 8 * v21) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_22FD91A3C(0, v29[2] + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        v29 = sub_22FD91A3C((v31 > 1), v32 + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v29[2] = v32 + 1;
      v2 = v46;
      v17 = v47;
      v18 = v29 + v48 + v32 * v47;
      v8 = v44;
      sub_22FD9E1E8(v44, v18, type metadata accessor for ShuffleID);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40F0, &qword_22FE4A110);
      v33 = v48;
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      sub_22FD9E1E8(v50, v34 + v33, type metadata accessor for ShuffleID);
      v12[(v21 >> 6) + 8] |= 1 << v21;
      (*(v45 + 32))(v12[6] + *(v45 + 72) * v21, v5, v2);
      *(v12[7] + 8 * v21) = v34;
      v35 = v12[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v12[2] = v37;
      v17 = v47;
    }

    v16 += v17;
    if (!--v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

uint64_t sub_22FDA5654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4228, &qword_22FE4A728);
    v3 = sub_22FE438B4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_22FE43DB4();

      sub_22FE430D4();
      result = sub_22FE43E04();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_22FE43CB4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22FDA5834(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_22FE435E4();
  if (!v19)
  {
    return sub_22FE432D4();
  }

  v41 = v19;
  v45 = sub_22FE439C4();
  v32 = sub_22FE439D4();
  sub_22FE439A4();
  result = sub_22FE435D4();
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
      v22 = sub_22FE43664();
      v23 = v13;
      v24 = v13;
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
      sub_22FE439B4();
      result = sub_22FE435F4();
      ++v21;
      v13 = v24;
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

void *sub_22FDA5C80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v71 = a3;
  v72 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41C8, &unk_22FE4A830);
  v10 = *(v9 - 8);
  v74 = v9;
  v75 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v68 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41B8, &qword_22FE4A1B0);
  v73 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v68 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D0, &unk_22FE4A840);
  MEMORY[0x28223BE20](v81);
  v80 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v79 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v77 = *(v19 - 8);
  v78 = v19;
  MEMORY[0x28223BE20](v19);
  v76 = &v68 - v20;
  v21 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v22 = *(a4 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v22)
  {
    sub_22FD9E790();
    if (v5)
    {
      return a4;
    }

    v22 = *(a4 + v21);
    if (!v22)
    {
      sub_22FD91684();
      swift_allocError();
      *v27 = 0;
      goto LABEL_11;
    }
  }

  v82 = v22;
  v23._countAndFlagsBits = 0x6E69676562;
  v23._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v23);
  v25 = v24;
  if (v24)
  {
LABEL_9:
    v82 = v22;
    v31._countAndFlagsBits = 0x6B6361626C6C6F72;
    a4 = &v82;
    v31._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v31);
    if (v32)
    {
      a4 = v32;

      return a4;
    }

LABEL_11:
    swift_willThrow();
    return a4;
  }

  v82 = v22;
  v26 = sub_22FDB08B0(a1, a2);
  v28 = (v72)(v71, v26);
  sub_22FDB35E0(v26);
  v82 = v22;
  v29._countAndFlagsBits = 0x74696D6D6F63;
  v29._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v29);
  v25 = v30;
  if (v30)
  {

    goto LABEL_9;
  }

  v34 = *(v28 + 16);
  v35 = MEMORY[0x277D84F90];
  if (v34)
  {
    v82 = MEMORY[0x277D84F90];
    result = sub_22FD923C8(0, v34, 0);
    v36 = 0;
    v37 = *(v75 + 80);
    v70 = v28;
    v71 = v28 + ((v37 + 32) & ~v37);
    v72 = v82;
    v69 = v34;
    while (v36 < *(v28 + 16))
    {
      sub_22FD764B4(v71 + *(v75 + 72) * v36, v12, &qword_27DAE41C8, &unk_22FE4A830);
      *&v15[*(v13 + 64)] = sub_22FDA9084(v15, &v15[*(v13 + 48)], v12, *&v12[*(v74 + 48)]);
      sub_22FD93E6C(v12, &qword_27DAE41C8, &unk_22FE4A830);
      v38 = v72;
      v82 = v72;
      v40 = *(v72 + 16);
      v39 = *(v72 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_22FD923C8((v39 > 1), v40 + 1, 1);
        v38 = v82;
      }

      ++v36;
      v38[2] = v40 + 1;
      v41 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v72 = v38;
      result = sub_22FD93E04(v15, v38 + v41 + *(v73 + 72) * v40, &qword_27DAE41B8, &qword_22FE4A1B0);
      v28 = v70;
      if (v69 == v36)
      {

        v35 = MEMORY[0x277D84F90];
        v42 = v72;
        goto LABEL_21;
      }
    }
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
LABEL_21:
    v43 = sub_22FDADBC4(v42);

    v44 = v43[2];
    if (!v44)
    {

      return MEMORY[0x277D84F90];
    }

    v82 = v35;
    sub_22FD92348(0, v44, 0);
    a4 = v82;
    v45 = v43 + 8;
    result = sub_22FE43834();
    v46 = result;
    v47 = 0;
    v75 = *(v43 + 9);
    v70 = v43 + 9;
    v71 = v44;
    v72 = (v43 + 8);
    while ((v46 & 0x8000000000000000) == 0 && v46 < 1 << *(v43 + 32))
    {
      v49 = v46 >> 6;
      if ((v45[v46 >> 6] & (1 << v46)) == 0)
      {
        goto LABEL_43;
      }

      v73 = v47;
      v74 = 1 << v46;
      if (v75 != *(v43 + 9))
      {
        goto LABEL_44;
      }

      v50 = v43[6];
      v51 = v43;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE0, &unk_22FE49010);
      v53 = v79;
      sub_22FD764B4(v50 + *(*(v52 - 8) + 72) * v46, v79, &qword_27DAE2CE0, &unk_22FE49010);
      v54 = *(v43[7] + 8 * v46);
      v55 = v53;
      v56 = v80;
      sub_22FD93E04(v55, v80, &qword_27DAE2CE0, &unk_22FE49010);
      *(v56 + *(v81 + 48)) = v54;
      v57 = *(v78 + 48);

      v58 = v76;
      *(v58 + v57) = sub_22FDA9E48(v76, v56, v54);
      sub_22FD93E6C(v56, &qword_27DAE42D0, &unk_22FE4A840);
      v82 = a4;
      v60 = a4[2];
      v59 = a4[3];
      if (v60 >= v59 >> 1)
      {
        sub_22FD92348((v59 > 1), v60 + 1, 1);
        a4 = v82;
      }

      a4[2] = v60 + 1;
      result = sub_22FD93E04(v58, a4 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v60, &qword_27DAE4068, &qword_22FE49FD8);
      v48 = 1 << *(v51 + 32);
      if (v46 >= v48)
      {
        goto LABEL_45;
      }

      v45 = v72;
      v61 = *(v72 + 8 * v49);
      if ((v61 & v74) == 0)
      {
        goto LABEL_46;
      }

      v43 = v51;
      if (v75 != *(v51 + 9))
      {
        goto LABEL_47;
      }

      v62 = v61 & (-2 << (v46 & 0x3F));
      if (v62)
      {
        v48 = __clz(__rbit64(v62)) | v46 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v63 = v49 << 6;
        v64 = v49 + 1;
        v65 = &v70[v49];
        while (v64 < (v48 + 63) >> 6)
        {
          v67 = *v65++;
          v66 = v67;
          v63 += 64;
          ++v64;
          if (v67)
          {
            result = sub_22FD72BF8(v46, v75, 0);
            v48 = __clz(__rbit64(v66)) + v63;
            goto LABEL_24;
          }
        }

        result = sub_22FD72BF8(v46, v75, 0);
      }

LABEL_24:
      v47 = v73 + 1;
      v46 = v48;
      if (v73 + 1 == v71)
      {

        return a4;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PhotosFaceDatabase.queryPhotos<A>(sql:bindings:extraReading:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a6;
  v40 = a6;
  v41 = a7;
  v42 = a1;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  type metadata accessor for StoredLayoutView(255);
  swift_getTupleTypeMetadata2();
  v10 = sub_22FE43354();
  sub_22FD9F060(0, sub_22FDA72E8, v10, &v48);
  if (!v7)
  {
    v39 = &v38;
    MEMORY[0x28223BE20](v11);
    v36 = v9;
    v37 = a7;
    MEMORY[0x28223BE20](v12);
    v32 = v9;
    v33 = a7;
    v34 = sub_22FDA9A4C;
    v35 = v13;
    v14 = type metadata accessor for StoredPhoto(255);
    type metadata accessor for StoredPhotoLayout(255);
    v38 = v14;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    WitnessTable = swift_getWitnessTable();
    v18 = sub_22FDA5834(sub_22FDA9B4C, v31, v10, TupleTypeMetadata3, v16, WitnessTable, MEMORY[0x277D84950], &v47);

    v39 = &v38;
    v48 = v18;
    MEMORY[0x28223BE20](v19);
    v36 = v9;
    v37 = a7;
    MEMORY[0x28223BE20](v20);
    v32 = v9;
    v33 = a7;
    v34 = sub_22FDA9CC0;
    v35 = v21;
    _s19ExtraPhotoContainerVMa(0, v9, a7, v22);
    sub_22FE43354();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v23 = sub_22FE42F94();
    v39 = &v38;
    v48 = v23;
    MEMORY[0x28223BE20](v23);
    v36 = v9;
    v37 = a7;
    MEMORY[0x28223BE20](v24);
    v32 = v9;
    v33 = a7;
    v34 = sub_22FDAA590;
    v35 = v25;
    v26 = sub_22FE42FA4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v28 = swift_getWitnessTable();
    v9 = sub_22FDA5834(sub_22FDAA8D4, v31, v26, TupleTypeMetadata2, MEMORY[0x277D84A98], v28, MEMORY[0x277D84AC0], v29);
  }

  return v9;
}

void *PhotosFaceDatabase.queryPhotos(sql:bindings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for StoredPhoto(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22FDA5C80(a1, a2, a3, v3, sub_22FDB2B48);
  if (!v4)
  {
    v19 = v28;
    v27[2] = 0;
    v20 = v18[2];
    if (v20)
    {
      v29 = MEMORY[0x277D84F90];
      v21 = v18;
      sub_22FD92408(0, v20, 0);
      v3 = v29;
      v22 = *(v19 + 80);
      v27[1] = v21;
      v23 = v21 + ((v22 + 32) & ~v22);
      v28 = *(v19 + 72);
      do
      {
        sub_22FD764B4(v23, v13, &qword_27DAE4068, &qword_22FE49FD8);
        sub_22FD93E04(v13, v10, &qword_27DAE4068, &qword_22FE49FD8);
        sub_22FDAF070(v10, v17, type metadata accessor for StoredPhoto);
        v29 = v3;
        v25 = v3[2];
        v24 = v3[3];
        if (v25 >= v24 >> 1)
        {
          sub_22FD92408((v24 > 1), v25 + 1, 1);
          v3 = v29;
        }

        v3[2] = v25 + 1;
        sub_22FDAF070(v17, v3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v25, type metadata accessor for StoredPhoto);
        v23 += v28;
        --v20;
      }

      while (v20);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *PhotosFaceDatabase.queryPhotos(identifiers:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v36 - v6;
  v48 = type metadata accessor for DatabaseBinding(0);
  v43 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = *(a1 + 16);
  v46 = sub_22FDAE4A8(0x3F, 0xE100000000000000, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4230, &qword_22FE4A748);
  sub_22FDAE544();
  v12 = sub_22FE42FF4();
  v14 = v13;

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD0000000000002B4, 0x800000022FE47580);
  MEMORY[0x23190ACF0](v12, v14);

  MEMORY[0x23190ACF0](0x2020202020200A29, 0xEA00000000002020);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v39 = v46;
  v40 = v47;
  v15 = MEMORY[0x277D84F90];
  if (v11)
  {
    v37 = v3;
    v46 = MEMORY[0x277D84F90];
    sub_22FD924B0(0, v11, 0);
    v15 = v46;
    v45 = sub_22FE428C4();
    v16 = *(v45 - 8);
    v44 = *(v16 + 16);
    v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v18 = *(v16 + 72);
    v19 = v43;
    do
    {
      v44(v10, v17, v45);
      swift_storeEnumTagMultiPayload();
      v46 = v15;
      v21 = v15[2];
      v20 = v15[3];
      if (v21 >= v20 >> 1)
      {
        sub_22FD924B0((v20 > 1), v21 + 1, 1);
        v19 = v43;
        v15 = v46;
      }

      v15[2] = v21 + 1;
      sub_22FDAF070(v10, v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v21, type metadata accessor for DatabaseBinding);
      v17 += v18;
      --v11;
    }

    while (v11);
    v3 = v37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v23 = swift_allocObject();
  *(v23 + v22) = 17;
  v24 = v48;
  swift_storeEnumTagMultiPayload();
  v25 = v43;
  (*(v43 + 56))(v23 + v22, 0, 1, v24);
  v26 = v38;
  sub_22FD764B4(v23 + v22, v38, &qword_27DAE4070, &qword_22FE4A740);
  v27 = v26;
  v28 = v41;
  sub_22FD93E04(v27, v41, &qword_27DAE4070, &qword_22FE4A740);
  if ((*(v25 + 48))(v28, 1, v24) == 1)
  {
    sub_22FD93E6C(v28, &qword_27DAE4070, &qword_22FE4A740);
    v29 = MEMORY[0x277D84F90];
    v31 = v39;
    v30 = v40;
  }

  else
  {
    sub_22FDAF070(v28, v42, type metadata accessor for DatabaseBinding);
    v29 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_22FD919C8(0, v29[2] + 1, 1, v29);
    }

    v33 = v29[2];
    v32 = v29[3];
    v31 = v39;
    if (v33 >= v32 >> 1)
    {
      v29 = sub_22FD919C8((v32 > 1), v33 + 1, 1, v29);
    }

    v29[2] = v33 + 1;
    sub_22FDAF070(v42, v29 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, type metadata accessor for DatabaseBinding);
    v30 = v40;
  }

  swift_setDeallocating();
  sub_22FD93E6C(v23 + v22, &qword_27DAE4070, &qword_22FE4A740);
  swift_deallocClassInstance();
  v46 = v15;
  sub_22FDADA80(v29, sub_22FD919C8, type metadata accessor for DatabaseBinding);
  v34 = PhotosFaceDatabase.queryPhotos(sql:bindings:)(v31, v30, v46);

  return v34;
}

uint64_t sub_22FDA7230@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v16[7] = *a1;
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a5;
  v16[5] = a6;
  type metadata accessor for StoredLayoutView(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = DatabaseConnection.query<A>(sql:bindings:step:)(a2, a3, a4, sub_22FDAF1D0, v16, TupleTypeMetadata2);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t type metadata accessor for StoredLayoutView(uint64_t a1)
{
  result = qword_27DAE42C0;
  if (!qword_27DAE42C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FDA735C@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v4 = sub_22FE42854();
  v81 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  v10 = sub_22FE428C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  result = DatabaseRow.readUUID(column:)(0);
  if (!v2)
  {
    v76 = v6;
    v77 = v4;
    v15 = v82;
    v79 = v11;
    v80 = v13;
    v16 = v9;
    v78 = v10;
    if (sqlite3_column_type(a1, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v17 = 1;
      *(v17 + 4) = 0;
      swift_willThrow();
      return (*(v79 + 8))(v80, v78);
    }

    v18 = a1;
    sqlite3_column_double(a1, 1);
    v19 = v9;
    sub_22FE42804();
    v20 = sqlite3_column_type(a1, 2);
    v21 = v78;
    v22 = v79;
    v23 = v80;
    if (v20 == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v24 = 2;
      *(v24 + 4) = 0;
      swift_willThrow();
      (*(v81 + 8))(v19, v77);
      return (*(v22 + 8))(v23, v21);
    }

    v25 = sqlite3_column_double(v18, 2);
    v26 = sqlite3_column_type(v18, 3);
    v27 = v77;
    if (v26 == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v28 = 3;
      *(v28 + 4) = 0;
      swift_willThrow();
      (*(v81 + 8))(v19, v27);
    }

    else
    {
      v29 = sqlite3_column_int(v18, 3);
      if (sqlite3_column_type(v18, 4) != 5)
      {
        v75 = v29;
        v74 = sqlite3_column_int(v18, 4);
        v31 = 5;
        v32 = v21;
        if (sqlite3_column_type(v18, 5) == 5 || (v33 = sqlite3_column_int(v18, 5), v31 = 6, sqlite3_column_type(v18, 6) == 5) || (v34 = sqlite3_column_double(v18, 6), v31 = 7, sqlite3_column_type(v18, 7) == 5) || (v35 = sqlite3_column_double(v18, 7), v31 = 8, sqlite3_column_type(v18, 8) == 5) || (v36 = sqlite3_column_double(v18, 8), v31 = 9, sqlite3_column_type(v18, 9) == 5) || (v37 = sqlite3_column_double(v18, 9), v31 = 10, sqlite3_column_type(v18, 10) == 5) || (v73 = sqlite3_column_int(v18, 10), v31 = 11, sqlite3_column_type(v18, 11) == 5) || (v38 = sqlite3_column_double(v18, 11), v31 = 12, sqlite3_column_type(v18, 12) == 5) || (v72 = v33, v39 = sqlite3_column_double(v18, 12), v31 = 13, sqlite3_column_type(v18, 13) == 5))
        {
          sub_22FD9172C();
          swift_allocError();
          *v40 = v31;
          *(v40 + 4) = 0;
          swift_willThrow();
          (*(v81 + 8))(v19, v77);
          return (*(v22 + 8))(v80, v32);
        }

        v41 = sqlite3_column_double(v18, 13);
        v42 = 14;
        if (sqlite3_column_type(v18, 14) == 5 || (v71 = sqlite3_column_double(v18, 14), v42 = 15, sqlite3_column_type(v18, 15) == 5) || (v70 = sqlite3_column_double(v18, 15), v42 = 16, sqlite3_column_type(v18, 16) == 5) || (v69 = sqlite3_column_double(v18, 16), v42 = 17, sqlite3_column_type(v18, 17) == 5) || (v68 = sqlite3_column_double(v18, 17), v42 = 18, sqlite3_column_type(v18, 18) == 5))
        {
          sub_22FD9172C();
          swift_allocError();
          *v43 = v42;
        }

        else
        {
          v64 = sqlite3_column_double(v18, 18);
          if (sqlite3_column_type(v18, 19) == 5 || !sqlite3_column_text(v18, 19))
          {
            v63 = 0;
            v67 = 0;
          }

          else
          {
            v63 = sub_22FE43114();
            v67 = v44;
          }

          if (sqlite3_column_type(v18, 20) == 5 || !sqlite3_column_text(v18, 20))
          {
            v62 = 0;
            v66 = 0;
          }

          else
          {
            v62 = sub_22FE43114();
            v66 = v45;
          }

          if (sqlite3_column_type(v18, 21) == 5 || !sqlite3_column_text(v18, 21))
          {
            v61 = 0;
            v65 = 0;
          }

          else
          {
            v61 = sub_22FE43114();
            v65 = v46;
          }

          if (sqlite3_column_type(v18, 22) != 5)
          {
            v60 = v75;
            v74 = v74;
            v72 = v72;
            v73 = v73 == 1;
            v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41C8, &unk_22FE4A830) + 48);
            sqlite3_column_double(v18, 22);
            v47 = v76;
            sub_22FE42804();
            (*(v79 + 32))(v15, v80, v78);
            v48 = type metadata accessor for StoredLayoutView(0);
            v49 = *(v81 + 32);
            v50 = v77;
            v49(v15 + v48[5], v16, v77);
            *(v15 + v48[6]) = v25;
            *(v15 + v48[7]) = v60;
            *(v15 + v48[8]) = v74;
            v51 = v73;
            *(v15 + v48[9]) = v72;
            *(v15 + v48[10]) = v34;
            *(v15 + v48[11]) = v35;
            *(v15 + v48[12]) = v36;
            *(v15 + v48[13]) = v37;
            *(v15 + v48[14]) = v51;
            *(v15 + v48[15]) = v38;
            *(v15 + v48[16]) = v39;
            *(v15 + v48[17]) = v41;
            v52 = v70;
            *(v15 + v48[18]) = v71;
            *(v15 + v48[19]) = v52;
            *(v15 + v48[20]) = v69;
            *(v15 + v48[21]) = v68;
            *(v15 + v48[22]) = v64;
            v53 = (v15 + v48[23]);
            v54 = v67;
            *v53 = v63;
            v53[1] = v54;
            v55 = (v15 + v48[24]);
            v56 = v66;
            *v55 = v62;
            v55[1] = v56;
            v57 = (v15 + v48[25]);
            v58 = v65;
            *v57 = v61;
            v57[1] = v58;
            result = (v49)(v15 + v48[26], v47, v50);
            *(v15 + v75) = 0;
            return result;
          }

          sub_22FD9172C();
          swift_allocError();
          *v43 = 22;
        }

        *(v43 + 4) = 0;
        swift_willThrow();
        (*(v81 + 8))(v16, v77);
        return (*(v79 + 8))(v80, v78);
      }

      sub_22FD9172C();
      swift_allocError();
      *v30 = 4;
      *(v30 + 4) = 0;
      swift_willThrow();
      (*(v81 + 8))(v19, v77);
    }

    return (*(v22 + 8))(v80, v21);
  }

  return result;
}

uint64_t sub_22FDA7D5C@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v4 = sub_22FE42854();
  v79 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v10 = sub_22FE428C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  result = DatabaseRow.readUUID(column:)(0);
  if (!v2)
  {
    v73 = v6;
    v74 = v4;
    v75 = v13;
    v76 = v10;
    v15 = v9;
    v77 = v11;
    if (sqlite3_column_type(a1, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v16 = 1;
      *(v16 + 4) = 0;
      swift_willThrow();
      return (*(v77 + 8))(v75, v76);
    }

    sqlite3_column_double(a1, 1);
    v17 = v9;
    sub_22FE42804();
    v18 = sqlite3_column_type(a1, 2);
    v19 = v76;
    v20 = v77;
    v21 = v75;
    if (v18 == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v22 = 2;
      *(v22 + 4) = 0;
      swift_willThrow();
      (*(v79 + 8))(v17, v74);
      return (*(v20 + 8))(v21, v19);
    }

    v23 = sqlite3_column_double(a1, 2);
    v24 = 3;
    v25 = sqlite3_column_type(a1, 3);
    v26 = v74;
    if (v25 == 5 || (v72 = sqlite3_column_int(a1, 3), v24 = 4, sqlite3_column_type(a1, 4) == 5) || (v71 = sqlite3_column_int(a1, 4), v24 = 5, sqlite3_column_type(a1, 5) == 5) || (v70 = sqlite3_column_int(a1, 5), v24 = 6, sqlite3_column_type(a1, 6) == 5) || (v27 = sqlite3_column_double(a1, 6), v24 = 7, sqlite3_column_type(a1, 7) == 5) || (v28 = sqlite3_column_double(a1, 7), v24 = 8, sqlite3_column_type(a1, 8) == 5) || (v29 = sqlite3_column_double(a1, 8), v24 = 9, sqlite3_column_type(a1, 9) == 5) || (v30 = sqlite3_column_double(a1, 9), v24 = 10, sqlite3_column_type(a1, 10) == 5) || (v69 = sqlite3_column_int(a1, 10), v24 = 11, sqlite3_column_type(a1, 11) == 5) || (v31 = sqlite3_column_double(a1, 11), v24 = 12, sqlite3_column_type(a1, 12) == 5) || (v32 = sqlite3_column_double(a1, 12), v24 = 13, sqlite3_column_type(a1, 13) == 5))
    {
      sub_22FD9172C();
      swift_allocError();
      *v33 = v24;
      *(v33 + 4) = 0;
      swift_willThrow();
      (*(v79 + 8))(v17, v26);
      return (*(v20 + 8))(v21, v19);
    }

    v34 = sqlite3_column_double(a1, 13);
    v35 = 14;
    v36 = a1;
    if (sqlite3_column_type(a1, 14) == 5 || (v68 = sqlite3_column_double(a1, 14), v35 = 15, sqlite3_column_type(a1, 15) == 5) || (v67 = sqlite3_column_double(a1, 15), v35 = 16, sqlite3_column_type(a1, 16) == 5) || (v66 = sqlite3_column_double(a1, 16), v35 = 17, sqlite3_column_type(a1, 17) == 5) || (v65 = sqlite3_column_double(a1, 17), v35 = 18, sqlite3_column_type(a1, 18) == 5))
    {
      sub_22FD9172C();
      swift_allocError();
      *v37 = v35;
LABEL_26:
      *(v37 + 4) = 0;
      swift_willThrow();
      (*(v79 + 8))(v15, v74);
      return (*(v77 + 8))(v75, v76);
    }

    v61 = sqlite3_column_double(a1, 18);
    if (sqlite3_column_type(a1, 19) == 5 || !sqlite3_column_text(a1, 19))
    {
      v60 = 0;
      v64 = 0;
    }

    else
    {
      v60 = sub_22FE43114();
      v64 = v38;
    }

    if (sqlite3_column_type(a1, 20) == 5 || !sqlite3_column_text(a1, 20))
    {
      v59 = 0;
      v63 = 0;
    }

    else
    {
      v59 = sub_22FE43114();
      v63 = v39;
    }

    if (sqlite3_column_type(a1, 21) == 5 || !sqlite3_column_text(a1, 21))
    {
      v58 = 0;
      v62 = 0;
    }

    else
    {
      v58 = sub_22FE43114();
      v62 = v40;
    }

    if (sqlite3_column_type(a1, 22) == 5)
    {

      sub_22FD9172C();
      swift_allocError();
      *v37 = 22;
      goto LABEL_26;
    }

    v56 = v72;
    v72 = v71;
    v70 = v70 == 1;
    LODWORD(v71) = v69 == 1;
    v57 = a1;
    sqlite3_column_double(a1, 22);
    v41 = v73;
    sub_22FE42804();
    v42 = v78;
    (*(v77 + 32))(v78, v75, v76);
    v43 = type metadata accessor for StoredLayoutView(0);
    v44 = *(v79 + 32);
    v45 = v74;
    v44(v42 + v43[5], v15, v74);
    *(v42 + v43[6]) = v23;
    *(v42 + v43[7]) = v56;
    *(v42 + v43[8]) = v72;
    v46 = v71;
    *(v42 + v43[9]) = v70;
    *(v42 + v43[10]) = v27;
    *(v42 + v43[11]) = v28;
    *(v42 + v43[12]) = v29;
    *(v42 + v43[13]) = v30;
    *(v42 + v43[14]) = v46;
    *(v42 + v43[15]) = v31;
    *(v42 + v43[16]) = v32;
    *(v42 + v43[17]) = v34;
    v47 = v67;
    *(v42 + v43[18]) = v68;
    *(v42 + v43[19]) = v47;
    *(v42 + v43[20]) = v66;
    *(v42 + v43[21]) = v65;
    *(v42 + v43[22]) = v61;
    v48 = (v42 + v43[23]);
    v49 = v64;
    *v48 = v60;
    v48[1] = v49;
    v50 = (v42 + v43[24]);
    v51 = v63;
    *v50 = v59;
    v50[1] = v51;
    v52 = (v42 + v43[25]);
    v53 = v62;
    *v52 = v58;
    v52[1] = v53;
    v44(v42 + v43[26], v41, v45);
    if (sqlite3_column_type(v57, 24) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v54 = 24;
      *(v54 + 4) = 0;
      swift_willThrow();
      return sub_22FDAF148(v78, type metadata accessor for StoredLayoutView);
    }

    else
    {
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41C8, &unk_22FE4A830) + 48);
      result = sqlite3_column_int(v36, 24);
      *(v78 + v55) = result;
    }
  }

  return result;
}

uint64_t sub_22FDA8718@<X0>(sqlite3_stmt **a1@<X0>, uint64_t (*a2)(sqlite3_stmt **)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a4;
  v81 = a3;
  v82 = a2;
  v83 = a5;
  v7 = sub_22FE42854();
  v84 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v13 = sub_22FE428C4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v85 = *a1;
  result = DatabaseRow.readUUID(column:)(0);
  if (!v5)
  {
    v74 = v9;
    v75 = 0;
    v78 = v16;
    v79 = v13;
    v19 = v12;
    v76 = v7;
    v77 = v14;
    if (sqlite3_column_type(v17, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v20 = 1;
      *(v20 + 4) = 0;
      swift_willThrow();
      return (*(v77 + 8))(v78, v79);
    }

    sqlite3_column_double(v17, 1);
    v21 = v12;
    sub_22FE42804();
    v22 = sqlite3_column_type(v17, 2);
    v24 = v78;
    v23 = v79;
    if (v22 == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v25 = 2;
      *(v25 + 4) = 0;
      swift_willThrow();
      (*(v84 + 8))(v21, v76);
      return (*(v77 + 8))(v24, v23);
    }

    v26 = sqlite3_column_double(v17, 2);
    v27 = 3;
    v28 = sqlite3_column_type(v17, 3);
    v29 = v84;
    v30 = v76;
    if (v28 == 5 || (v31 = sqlite3_column_int(v17, 3), v27 = 4, sqlite3_column_type(v17, 4) == 5) || (v73 = sqlite3_column_int(v17, 4), v27 = 5, sqlite3_column_type(v17, 5) == 5) || (v72 = sqlite3_column_int(v17, 5), v27 = 6, sqlite3_column_type(v17, 6) == 5) || (v32 = sqlite3_column_double(v17, 6), v27 = 7, sqlite3_column_type(v17, 7) == 5) || (v33 = sqlite3_column_double(v17, 7), v27 = 8, sqlite3_column_type(v17, 8) == 5) || (v34 = sqlite3_column_double(v17, 8), v27 = 9, sqlite3_column_type(v17, 9) == 5) || (v35 = sqlite3_column_double(v17, 9), v27 = 10, sqlite3_column_type(v17, 10) == 5) || (v71 = sqlite3_column_int(v17, 10), v27 = 11, sqlite3_column_type(v17, 11) == 5) || (v36 = sqlite3_column_double(v17, 11), v27 = 12, sqlite3_column_type(v17, 12) == 5) || (v37 = sqlite3_column_double(v17, 12), v27 = 13, sqlite3_column_type(v17, 13) == 5))
    {
      sub_22FD9172C();
      swift_allocError();
      *v38 = v27;
      *(v38 + 4) = 0;
      swift_willThrow();
      (*(v29 + 8))(v21, v30);
      return (*(v77 + 8))(v24, v23);
    }

    v39 = sqlite3_column_double(v17, 13);
    v40 = 14;
    v41 = v17;
    if (sqlite3_column_type(v17, 14) == 5)
    {
      goto LABEL_39;
    }

    v70 = sqlite3_column_double(v17, 14);
    v40 = 15;
    if (sqlite3_column_type(v17, 15) == 5)
    {
      goto LABEL_39;
    }

    v69 = sqlite3_column_double(v17, 15);
    v40 = 16;
    if (sqlite3_column_type(v17, 16) == 5)
    {
      goto LABEL_39;
    }

    v68 = sqlite3_column_double(v17, 16);
    v40 = 17;
    if (sqlite3_column_type(v17, 17) == 5)
    {
      goto LABEL_39;
    }

    v67 = sqlite3_column_double(v17, 17);
    v40 = 18;
    if (sqlite3_column_type(v17, 18) == 5)
    {
      goto LABEL_39;
    }

    v63 = sqlite3_column_double(v17, 18);
    if (sqlite3_column_type(v17, 19) == 5 || !sqlite3_column_text(v17, 19))
    {
      v62 = 0;
      v66 = 0;
    }

    else
    {
      v62 = sub_22FE43114();
      v66 = v42;
    }

    if (sqlite3_column_type(v17, 20) == 5 || !sqlite3_column_text(v17, 20))
    {
      v61 = 0;
      v65 = 0;
    }

    else
    {
      v61 = sub_22FE43114();
      v65 = v43;
    }

    if (sqlite3_column_type(v17, 21) == 5 || !sqlite3_column_text(v17, 21))
    {
      v60 = 0;
      v64 = 0;
    }

    else
    {
      v60 = sub_22FE43114();
      v64 = v44;
    }

    v40 = 22;
    if (sqlite3_column_type(v17, 22) == 5)
    {

LABEL_39:
      sub_22FD9172C();
      swift_allocError();
      *v45 = v40;
      *(v45 + 4) = 0;
      swift_willThrow();
      (*(v84 + 8))(v19, v76);
      return (*(v77 + 8))(v78, v79);
    }

    v59 = v31;
    v73 = v73;
    v71 = v71 == 1;
    v46 = v72 == 1;
    v47 = type metadata accessor for StoredLayoutView(255);
    v80 = *(swift_getTupleTypeMetadata2() + 48);
    sqlite3_column_double(v17, 22);
    v48 = v74;
    sub_22FE42804();
    v49 = v83;
    (*(v77 + 32))(v83, v78, v79);
    v50 = *(v84 + 32);
    v51 = v76;
    v50(v49 + v47[5], v19, v76);
    *(v49 + v47[6]) = v26;
    *(v49 + v47[7]) = v59;
    *(v49 + v47[8]) = v73;
    *(v49 + v47[9]) = v46;
    *(v49 + v47[10]) = v32;
    *(v49 + v47[11]) = v33;
    *(v49 + v47[12]) = v34;
    *(v49 + v47[13]) = v35;
    *(v49 + v47[14]) = v71;
    *(v49 + v47[15]) = v36;
    *(v49 + v47[16]) = v37;
    *(v49 + v47[17]) = v39;
    *(v49 + v47[18]) = v70;
    *(v49 + v47[19]) = v69;
    *(v49 + v47[20]) = v68;
    *(v49 + v47[21]) = v67;
    *(v49 + v47[22]) = v63;
    v52 = (v49 + v47[23]);
    v53 = v66;
    *v52 = v62;
    v52[1] = v53;
    v54 = (v49 + v47[24]);
    v55 = v65;
    *v54 = v61;
    v54[1] = v55;
    v56 = (v49 + v47[25]);
    v57 = v64;
    *v56 = v60;
    v56[1] = v57;
    v50(v49 + v47[26], v48, v51);
    v85 = v41;
    v58 = v75;
    result = v82(&v85);
    if (v58)
    {
      return sub_22FDAF148(v83, type metadata accessor for StoredLayoutView);
    }
  }

  return result;
}

int *sub_22FDA9084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v63 - v9;
  v11 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v74 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v75 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for StoredLayoutView(0);
  v14 = *(a3 + result[8]);
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = result;
  v16 = *(a3 + result[7]);
  if (v16 < 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v70 = v11;
  v71 = v14;
  v72 = a2;
  v73 = a4;
  v67 = v16;
  v17 = sub_22FE428C4();
  (*(*(v17 - 8) + 16))(a1, a3, v17);
  v69 = v15[5];
  v18 = type metadata accessor for StoredPhoto(0);
  v19 = v10;
  v20 = v18[5];
  v21 = sub_22FE42854();
  v22 = *(*(v21 - 8) + 16);
  v23 = a1 + v20;
  v24 = v19;
  v22(v23, a3 + v69, v21);
  v22(a1 + v18[6], a3 + v15[26], v21);
  v25 = *(a3 + v15[6]);
  v26 = v15[25];
  v27 = (a3 + v15[24]);
  v28 = *v27;
  v29 = v27[1];
  v30 = *(a3 + v26);
  v31 = *(a3 + v26 + 8);
  v32 = sub_22FD75168(MEMORY[0x277D84F90]);
  v33 = (a3 + v15[23]);
  v34 = *v33;
  v35 = v33[1];
  *(a1 + v18[7]) = v25;
  v36 = (a1 + v18[8]);
  *v36 = v28;
  v36[1] = v29;
  v68 = v29;
  v69 = v31;
  v37 = (a1 + v18[9]);
  *v37 = v30;
  v37[1] = v31;
  *(a1 + v18[10]) = v67;
  *(a1 + v18[11]) = v32;
  v38 = (a1 + v18[12]);
  *v38 = v34;
  v38[1] = v35;
  v67 = v35;
  v39 = sub_22FE42774();
  v40 = *(*(v39 - 8) + 56);
  v41 = 1;
  v40(v75, 1, 1, v39);
  if (*(a3 + v15[9]) == 1)
  {
    v40(v24, 1, 1, v39);
    v41 = 0;
  }

  v42 = *(v74 + 56);
  v43 = v41;
  v44 = v70;
  v42(v24, v43, 1, v70);
  v45 = v15[14];
  v74 = *(a3 + v15[15]);
  v46 = *(a3 + v15[16]);
  v64 = *(a3 + v15[17]);
  v65 = v46;
  v47 = *(a3 + v15[18]);
  v66 = *(a3 + v15[19]);
  v48 = *(a3 + v15[20]);
  v49 = *(a3 + v15[21]);
  v50 = *(a3 + v15[22]);
  v51 = *(a3 + v15[10]);
  v52 = *(a3 + v15[11]);
  v53 = *(a3 + v15[12]);
  v54 = *(a3 + v15[13]);
  v55 = *(a3 + v45);
  v56 = type metadata accessor for StoredPhotoLayout(0);
  v57 = v56[5];
  v58 = v72;
  v42(v72 + v57, 1, 1, v44);
  sub_22FDAF070(v75, v58, type metadata accessor for StoredPhotoLayout.ImageLocation);

  sub_22FDAF0D8(v24, v58 + v57);
  v59 = (v58 + v56[6]);
  v60 = v64;
  v61 = v65;
  *v59 = v74;
  v59[1] = v61;
  v59[2] = v60;
  v59[3] = v47;
  *(v58 + v56[7]) = v71;
  v62 = (v58 + v56[8]);
  *v62 = v66;
  v62[1] = v48;
  v62[2] = v49;
  v62[3] = v50;
  *(v58 + v56[9]) = v51;
  *(v58 + v56[10]) = v52;
  *(v58 + v56[11]) = v53;
  *(v58 + v56[12]) = v54;
  *(v58 + v56[13]) = v55;
  return v73;
}

int *sub_22FDA9514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v64 - v12;
  v13 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x28223BE20](v13);
  v79 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StoredPhoto(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for StoredLayoutView(0);
  if ((*(a4 + result[8]) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  v20 = *(a4 + result[7]);
  if (v20 < 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v71 = *(a4 + result[8]);
  v72 = a1;
  v73 = a3;
  v74 = a5;
  v75 = a6;
  v68 = v20;
  v21 = sub_22FE428C4();
  (*(*(v21 - 8) + 16))(v17, a4, v21);
  v22 = v19[5];
  v23 = v15[5];
  v24 = sub_22FE42854();
  v25 = *(*(v24 - 8) + 16);
  v25(&v17[v23], a4 + v22, v24);
  v25(&v17[v15[6]], a4 + v19[26], v24);
  v26 = *(a4 + v19[6]);
  v27 = v19[25];
  v28 = (a4 + v19[24]);
  v29 = *v28;
  v30 = v28[1];
  v32 = *(a4 + v27);
  v31 = *(a4 + v27 + 8);
  v33 = sub_22FD75168(MEMORY[0x277D84F90]);
  v34 = (a4 + v19[23]);
  v35 = *v34;
  v36 = v34[1];
  *&v17[v15[7]] = v26;
  v37 = &v17[v15[8]];
  *v37 = v29;
  *(v37 + 1) = v30;
  v69 = v30;
  v70 = v31;
  v38 = &v17[v15[9]];
  *v38 = v32;
  *(v38 + 1) = v31;
  *&v17[v15[10]] = v68;
  *&v17[v15[11]] = v33;
  v39 = &v17[v15[12]];
  *v39 = v35;
  *(v39 + 1) = v36;
  v68 = v36;
  v40 = sub_22FE42774();
  v41 = *(*(v40 - 8) + 56);
  v42 = 1;
  v41(v79, 1, 1, v40);
  v43 = v80;
  if (*(a4 + v19[9]) == 1)
  {
    v41(v80, 1, 1, v40);
    v42 = 0;
  }

  v44 = *(v76 + 56);
  v45 = v43;
  v46 = v77;
  v44(v45, v42, 1, v77);
  v47 = v19[14];
  v76 = *(a4 + v19[15]);
  v48 = v19[17];
  v66 = *(a4 + v19[16]);
  v65 = *(a4 + v48);
  v49 = *(a4 + v19[18]);
  v67 = *(a4 + v19[19]);
  v50 = *(a4 + v19[20]);
  v51 = *(a4 + v19[21]);
  v52 = *(a4 + v19[22]);
  v53 = *(a4 + v19[10]);
  v54 = *(a4 + v19[11]);
  v55 = *(a4 + v19[12]);
  v56 = *(a4 + v19[13]);
  v57 = *(a4 + v47);
  v58 = type metadata accessor for StoredPhotoLayout(0);
  v59 = v58[5];
  v60 = v78;
  v44(v78 + v59, 1, 1, v46);
  sub_22FDAF070(v79, v60, type metadata accessor for StoredPhotoLayout.ImageLocation);

  sub_22FDAF0D8(v80, v60 + v59);
  v61 = (v60 + v58[6]);
  v62 = v66;
  *v61 = v76;
  v61[1] = v62;
  v61[2] = v65;
  v61[3] = v49;
  *(v60 + v58[7]) = v71;
  v63 = (v60 + v58[8]);
  *v63 = v67;
  v63[1] = v50;
  v63[2] = v51;
  v63[3] = v52;
  *(v60 + v58[9]) = v53;
  *(v60 + v58[10]) = v54;
  *(v60 + v58[11]) = v55;
  *(v60 + v58[12]) = v56;
  *(v60 + v58[13]) = v57;
  sub_22FDAF070(v17, v72, type metadata accessor for StoredPhoto);
  return (*(*(v75 - 8) + 16))(v73, v74);
}

uint64_t sub_22FDA9A68@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void *a4@<X5>, uint64_t a5@<X8>)
{
  type metadata accessor for StoredLayoutView(255);
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  type metadata accessor for StoredPhoto(255);
  type metadata accessor for StoredPhotoLayout(255);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  result = a2(a5, a5 + *(TupleTypeMetadata3 + 48), a5 + *(TupleTypeMetadata3 + 64), a1, a1 + v10);
  if (v5)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t sub_22FDA9B70@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StoredPhoto(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDAEFA4(a1, v16, type metadata accessor for StoredPhoto);
  (*(v11 + 16))(v13, a3, a4);
  return sub_22FDA9CC8(v16, v13, a4, a5, x8_0);
}

uint64_t sub_22FDA9CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_22FDAF070(a1, a5, type metadata accessor for StoredPhoto);
  v10 = _s19ExtraPhotoContainerVMa(0, a3, a4, v9);
  v11 = *(*(a3 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a3);
}

uint64_t sub_22FDA9D6C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  type metadata accessor for StoredPhoto(255);
  type metadata accessor for StoredPhotoLayout(255);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return a2(a1, a1 + *(TupleTypeMetadata3 + 48), a1 + *(TupleTypeMetadata3 + 64));
}

uint64_t sub_22FDA9E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41B8, &qword_22FE4A1B0);
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v36 - v8;
  MEMORY[0x28223BE20](v9);
  v42 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850);
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for StoredPhoto(0);
  MEMORY[0x28223BE20](v14);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDAEFA4(a2, v39, type metadata accessor for StoredPhoto);
  v16 = *(a3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v37 = v14;
    v38 = a2;
    v50 = MEMORY[0x277D84F90];
    sub_22FD92388(0, v16, 0);
    v17 = v50;
    v18 = a3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v41 = *(v5 + 72);
    v19 = v43;
    do
    {
      v49 = v16;
      v20 = v17;
      v21 = v13;
      v22 = v42;
      sub_22FD764B4(v18, v42, &qword_27DAE41B8, &qword_22FE4A1B0);
      v48 = *(v45 + 48);
      sub_22FD764B4(v22, v19, &qword_27DAE41B8, &qword_22FE4A1B0);
      v23 = v47;
      v24 = v19 + *(v47 + 48);
      v25 = *(v24 + *(type metadata accessor for StoredPhotoLayout(0) + 28));
      sub_22FDAF148(v24, type metadata accessor for StoredPhotoLayout);
      *v21 = v25;
      v26 = v22;
      v13 = v21;
      v17 = v20;
      v27 = v46;
      sub_22FD93E04(v26, v46, &qword_27DAE41B8, &qword_22FE4A1B0);
      sub_22FDAF070(v27 + *(v23 + 48), &v13[v48], type metadata accessor for StoredPhotoLayout);
      sub_22FDAF148(v27, type metadata accessor for StoredPhoto);
      sub_22FDAF148(v19, type metadata accessor for StoredPhoto);
      v50 = v20;
      v29 = *(v20 + 16);
      v28 = *(v20 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22FD92388((v28 > 1), v29 + 1, 1);
        v17 = v50;
      }

      *(v17 + 16) = v29 + 1;
      sub_22FD93E04(v13, v17 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v29, &qword_27DAE2CE8, &unk_22FE4A850);
      v18 += v41;
      v16 = v49 - 1;
    }

    while (v49 != 1);
    v14 = v37;
    a2 = v38;
  }

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
    v30 = sub_22FE43B04();
  }

  else
  {
    v30 = MEMORY[0x277D84F98];
  }

  v50 = v30;
  sub_22FDADFD8(v17, 1, &v50);

  v31 = v50;
  v32 = *(v14 + 44);
  v33 = v39;

  *(v33 + v32) = v31;
  sub_22FDAEFA4(v33, v40, type metadata accessor for StoredPhoto);
  v34 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE0, &unk_22FE49010) + 36));
  sub_22FDAF148(v33, type metadata accessor for StoredPhoto);
  return v34;
}

uint64_t sub_22FDAA310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for StoredPhoto(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22FDAEFA4(a3, v14, type metadata accessor for StoredPhoto);
  v29 = a4;
  v27 = a5;
  v28 = a6;
  type metadata accessor for StoredPhotoLayout(255);
  swift_getTupleTypeMetadata3();
  v15 = sub_22FE43354();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850);
  WitnessTable = swift_getWitnessTable();
  v19 = sub_22FDA5834(sub_22FDAF1B0, v26, v15, v16, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v18);
  if (*(v19 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
    v20 = sub_22FE43B04();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
  }

  v29 = v20;
  sub_22FDADFD8(v19, 1, &v29);

  v21 = v29;
  v22 = *(v12 + 44);

  *&v14[v22] = v21;
  sub_22FDAEFA4(v14, a1, type metadata accessor for StoredPhoto);
  v24 = _s19ExtraPhotoContainerVMa(0, a5, a6, v23);
  (*(*(a5 - 8) + 16))(a2, a3 + *(v24 + 36), a5);
  return sub_22FDAF148(v14, type metadata accessor for StoredPhoto);
}

uint64_t sub_22FDAA598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = a3;
  type metadata accessor for StoredPhoto(255);
  v5 = type metadata accessor for StoredPhotoLayout(255);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata3);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850) + 48);
  v13 = *(v7 + 16);
  v13(v12, a1, TupleTypeMetadata3);
  v14 = &v12[*(TupleTypeMetadata3 + 48)];
  v22 = *(TupleTypeMetadata3 + 64);
  v15 = *(v14 + *(v5 + 28));
  sub_22FDAF148(v14, type metadata accessor for StoredPhotoLayout);
  v16 = v23;
  *v23 = v15;
  v13(v9, a1, TupleTypeMetadata3);
  v17 = *(TupleTypeMetadata3 + 64);
  sub_22FDAF070(&v9[*(TupleTypeMetadata3 + 48)], v16 + v21, type metadata accessor for StoredPhotoLayout);
  v18 = *(*(a2 - 8) + 8);
  v18(&v9[v17], a2);
  sub_22FDAF148(v9, type metadata accessor for StoredPhoto);
  v18(&v12[v22], a2);
  return sub_22FDAF148(v12, type metadata accessor for StoredPhoto);
}

uint64_t sub_22FDAA7DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  _s19ExtraPhotoContainerVMa(255, a3, a4, a3);
  type metadata accessor for StoredPhoto(255);
  type metadata accessor for StoredPhotoLayout(255);
  swift_getTupleTypeMetadata3();
  sub_22FE43354();
  v8 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a5, a5 + *(TupleTypeMetadata2 + 48), a1, v8);
}

uint64_t sub_22FDAA93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((_s10PhotosFace11StoredPhotoV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  _s19ExtraPhotoContainerVMa(0, a3, a4, v6);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDAA9AC(uint64_t a1)
{
  sub_22FE43DB4();
  StoredPhoto.hash(into:)(v2);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDAAA0C(uint64_t a1, uint64_t a2)
{
  sub_22FE43DB4();
  sub_22FDAA8F8(v4, a2);
  return sub_22FE43E04();
}

void *sub_22FDAAA5C(uint64_t *a1, unint64_t a2)
{
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42E0, &qword_22FE4A870);
  MEMORY[0x28223BE20](v111);
  v110 = (&v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v109 = &v98 - v6;
  v101 = type metadata accessor for DatabaseBinding(0);
  v113 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for StoredPhoto(0);
  v9 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v112 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v98 - v12;
  v115 = sub_22FE428C4();
  v14 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *a1;
  v17 = *(a2 + 16);
  v18 = MEMORY[0x277D84F90];
  v102 = v17;
  v103._rawValue = v9;
  v105 = a2;
  if (v17)
  {
    v100 = v8;
    rawValue = MEMORY[0x277D84F90];
    v19 = v14;
    v20 = v17;
    sub_22FD922C4(0, v17, 0);
    v18 = rawValue;
    v21 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v22 = *(v9 + 72);
    v23 = (v19 + 16);
    v114 = v19;
    v107 = v19 + 32;
    v108 = v22;
    v24 = v115;
    do
    {
      sub_22FDAEFA4(v21, v13, type metadata accessor for StoredPhoto);
      (*v23)(v16, v13, v24);
      sub_22FDAF148(v13, type metadata accessor for StoredPhoto);
      rawValue = v18;
      v26 = v18[2];
      v25 = v18[3];
      if (v26 >= v25 >> 1)
      {
        sub_22FD922C4((v25 > 1), v26 + 1, 1);
        v24 = v115;
        v18 = rawValue;
      }

      v18[2] = v26 + 1;
      (*(v114 + 32))(v18 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v26, v16, v24);
      v21 += v108;
      --v20;
    }

    while (v20);
    v8 = v100;
    v14 = v114;
  }

  v27 = v18[2];
  rawValue = sub_22FDAE4A8(0x3F, 0xE100000000000000, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4230, &qword_22FE4A748);
  sub_22FDAE544();
  v28 = sub_22FE42FF4();
  v30 = v29;

  v119 = v106;
  rawValue = 0;
  v118 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000031, 0x800000022FE47D40);
  MEMORY[0x23190ACF0](v28, v30);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  v31 = v118;
  if (v27)
  {
    v100 = rawValue;
    v107 = v118;
    rawValue = MEMORY[0x277D84F90];
    sub_22FD924B0(0, v27, 0);
    v33 = *(v14 + 16);
    v32 = v14 + 16;
    v114 = v33;
    v34._rawValue = rawValue;
    v35 = v18 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v108 = *(v32 + 56);
    do
    {
      v36 = v32;
      (v114)(v8, v35, v115);
      swift_storeEnumTagMultiPayload();
      rawValue = v34._rawValue;
      v37 = v8;
      v39 = *(v34._rawValue + 2);
      v38 = *(v34._rawValue + 3);
      if (v39 >= v38 >> 1)
      {
        sub_22FD924B0((v38 > 1), v39 + 1, 1);
        v34._rawValue = rawValue;
      }

      *(v34._rawValue + 2) = v39 + 1;
      sub_22FDAF070(v37, v34._rawValue + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v39, type metadata accessor for DatabaseBinding);
      v35 += v108;
      --v27;
      v8 = v37;
      v32 = v36;
    }

    while (v27);

    v31 = v107;
    v40 = v100;
  }

  else
  {
    v41 = rawValue;

    v40 = v41;
    v34._rawValue = MEMORY[0x277D84F90];
  }

  v42 = v31;
  DatabaseConnection.delete(sql:bindings:)(*&v40, v34);
  v104 = v43;
  v44 = v105;
  v45 = v103._rawValue;
  if (v43)
  {
  }

  rawValue = v106;
  v46._rawValue = MEMORY[0x277D84F90];
  if (v102)
  {
    v119 = MEMORY[0x277D84F90];
    v47 = v102;
    sub_22FD9244C(0, v102, 0);
    v46._rawValue = v119;
    v48 = v44 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v49 = v45[9];
    v50 = v47;
    do
    {
      sub_22FDAB58C(v48, &v116);
      v51 = v116;
      v119 = v46._rawValue;
      v53 = *(v46._rawValue + 2);
      v52 = *(v46._rawValue + 3);
      if (v53 >= v52 >> 1)
      {
        sub_22FD9244C((v52 > 1), v53 + 1, 1);
        v46._rawValue = v119;
      }

      *(v46._rawValue + 2) = v53 + 1;
      *(v46._rawValue + v53 + 4) = v51;
      v48 += v49;
      --v47;
    }

    while (v47);
  }

  else
  {
    v50 = 0;
  }

  v54._countAndFlagsBits = 0xD00000000000011CLL;
  v54._object = 0x800000022FE47D80;
  DatabaseConnection.insert(sql:bindings:)(v54, v46);
  v104 = v55;
  if (v55)
  {
  }

  rawValue = v106;
  v56 = MEMORY[0x277D84F90];
  if (!v50)
  {
    v103._rawValue = MEMORY[0x277D84F90];
LABEL_60:
    v96._countAndFlagsBits = 0xD0000000000001FBLL;
    v96._object = 0x800000022FE47EA0;
    DatabaseConnection.insert(sql:bindings:)(v96, v103);
    v104 = v97;
  }

  v57 = 0;
  v100 = *(v99 + 44);
  v99 = v105 + ((*(v103._rawValue + 80) + 32) & ~*(v103._rawValue + 80));
  v98 = *(v103._rawValue + 9);
  v103._rawValue = MEMORY[0x277D84F90];
  while (1)
  {
    v101 = v57;
    v59 = v112;
    sub_22FDAEFA4(v99 + v98 * v57, v112, type metadata accessor for StoredPhoto);
    v60 = *&v100[v59];
    v61 = *(v60 + 16);
    if (v61)
    {
      break;
    }

    v115 = v56;
LABEL_47:
    sub_22FDAF148(v112, type metadata accessor for StoredPhoto);
    v87 = *(v115 + 16);
    result = v103._rawValue;
    v88 = *(v103._rawValue + 2);
    v89 = v88 + v87;
    if (__OFADD__(v88, v87))
    {
      goto LABEL_67;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v90 = v103._rawValue;
    if (!result || v89 > *(v103._rawValue + 3) >> 1)
    {
      if (v88 <= v89)
      {
        v91 = v88 + v87;
      }

      else
      {
        v91 = v88;
      }

      result = sub_22FD91A64(result, v91, 1, v103._rawValue);
      v90 = result;
    }

    v56 = MEMORY[0x277D84F90];
    v92 = *(v115 + 16);
    v103._rawValue = v90;
    if (v92)
    {
      if ((v90[3] >> 1) - v90[2] < v87)
      {
        goto LABEL_69;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4190, &qword_22FE4A190);
      swift_arrayInitWithCopy();

      if (v87)
      {
        v93 = *(v103._rawValue + 2);
        v94 = __OFADD__(v93, v87);
        v95 = v93 + v87;
        if (v94)
        {
          goto LABEL_70;
        }

        *(v103._rawValue + 2) = v95;
      }
    }

    else
    {

      if (v87)
      {
        goto LABEL_68;
      }
    }

    v57 = v101 + 1;
    if (v101 + 1 == v102)
    {
      goto LABEL_60;
    }
  }

  v119 = v56;
  sub_22FD9244C(0, v61, 0);
  v115 = v119;
  v62 = v60 + 64;
  result = sub_22FE43834();
  v63 = result;
  v64 = 0;
  v105 = v60 + 72;
  v106 = v61;
  v107 = v60;
  v108 = v60 + 64;
  while ((v63 & 0x8000000000000000) == 0 && v63 < 1 << *(v60 + 32))
  {
    v66 = v63 >> 6;
    if ((*(v62 + 8 * (v63 >> 6)) & (1 << v63)) == 0)
    {
      goto LABEL_63;
    }

    v67 = *(v60 + 36);
    v113 = v64;
    v114 = v67;
    v68 = v111;
    v69 = *(v111 + 48);
    v70 = *(v60 + 56);
    v71 = *(*(v60 + 48) + 8 * v63);
    v72 = type metadata accessor for StoredPhotoLayout(0);
    v73 = v109;
    sub_22FDAEFA4(v70 + *(*(v72 - 8) + 72) * v63, &v109[v69], type metadata accessor for StoredPhotoLayout);
    v74 = v110;
    *v110 = v71;
    v75 = *(v68 + 48);
    sub_22FDAF070(&v73[v69], v74 + v75, type metadata accessor for StoredPhotoLayout);
    v76 = sub_22FDAB9A0(v71, v74 + v75, v112);
    result = sub_22FD93E6C(v74, &qword_27DAE42E0, &qword_22FE4A870);
    v119 = v115;
    v78 = *(v115 + 16);
    v77 = *(v115 + 24);
    if (v78 >= v77 >> 1)
    {
      result = sub_22FD9244C((v77 > 1), v78 + 1, 1);
      v115 = v119;
    }

    v79 = v115;
    *(v115 + 16) = v78 + 1;
    *(v79 + 8 * v78 + 32) = v76;
    v60 = v107;
    v62 = v108;
    v65 = 1 << *(v107 + 32);
    if (v63 >= v65)
    {
      goto LABEL_64;
    }

    v80 = *(v108 + 8 * v66);
    if ((v80 & (1 << v63)) == 0)
    {
      goto LABEL_65;
    }

    if (v114 != *(v107 + 36))
    {
      goto LABEL_66;
    }

    v81 = v80 & (-2 << (v63 & 0x3F));
    if (v81)
    {
      v65 = __clz(__rbit64(v81)) | v63 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v82 = v66 << 6;
      v83 = v66 + 1;
      v84 = (v105 + 8 * v66);
      while (v83 < (v65 + 63) >> 6)
      {
        v86 = *v84++;
        v85 = v86;
        v82 += 64;
        ++v83;
        if (v86)
        {
          result = sub_22FD72BF8(v63, v114, 0);
          v65 = __clz(__rbit64(v85)) + v82;
          goto LABEL_31;
        }
      }

      result = sub_22FD72BF8(v63, v114, 0);
    }

LABEL_31:
    v64 = v113 + 1;
    v63 = v65;
    if ((v113 + 1) == v106)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_22FDAB58C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for DatabaseBinding(0);
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  v34 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v32 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v32 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v13 = *(v4 + 72);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22FE4A410;
  v16 = v15 + v14;
  v17 = sub_22FE428C4();
  (*(*(v17 - 8) + 16))(v15 + v14, a1, v17);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for StoredPhoto(0);
  v19 = v18[5];
  v20 = sub_22FE42854();
  v21 = *(v20 - 8);
  v37 = *(v21 + 16);
  v38 = v20;
  v36 = v21 + 16;
  v37(v16 + v13, a1 + v19);
  swift_storeEnumTagMultiPayload();
  *(v16 + 2 * v13) = *(a1 + v18[7]);
  result = swift_storeEnumTagMultiPayload();
  v23 = *(a1 + v18[10]);
  if (v23 < 0)
  {
    __break(1u);
  }

  else
  {
    v35 = v15;
    *(v16 + 3 * v13) = v23;
    swift_storeEnumTagMultiPayload();
    v24 = (a1 + v18[12]);
    v25 = v24[1];
    if (v25)
    {
      *v12 = *v24;
      v12[1] = v25;
      swift_storeEnumTagMultiPayload();
      sub_22FDAF070(v12, v16 + 4 * v13, type metadata accessor for DatabaseBinding);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
    }

    v26 = (a1 + v18[8]);
    v27 = v26[1];
    if (v27)
    {
      *v9 = *v26;
      v9[1] = v27;
      swift_storeEnumTagMultiPayload();
      sub_22FDAF070(v9, v16 + 5 * v13, type metadata accessor for DatabaseBinding);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
    }

    v28 = (a1 + v18[9]);
    v29 = v28[1];
    if (v29)
    {
      v30 = *v28;
      v33 = a1;
      v31 = v34;
      *v34 = v30;
      *(v31 + 8) = v29;
      swift_storeEnumTagMultiPayload();
      a1 = v33;
      sub_22FDAF070(v31, v16 + 6 * v13, type metadata accessor for DatabaseBinding);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
    }

    (v37)(v16 + 7 * v13, a1 + v18[6], v38);
    swift_storeEnumTagMultiPayload();
    *(v16 + 8 * v13) = 17;
    swift_storeEnumTagMultiPayload();
    *v39 = v35;
  }

  return result;
}

uint64_t sub_22FDAB9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v9 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22FE4A730;
  v13 = v12 + v11;
  v14 = sub_22FE428C4();
  (*(*(v14 - 8) + 16))(v13, a3, v14);
  result = swift_storeEnumTagMultiPayload();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v10) = a1;
    swift_storeEnumTagMultiPayload();
    v16 = type metadata accessor for StoredPhotoLayout(0);
    sub_22FD764B4(a2 + v16[5], v8, &qword_27DAE42D8, &unk_22FE4BA30);
    v17 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
    v18 = (*(*(v17 - 8) + 48))(v8, 1, v17) != 1;
    v22 = v12;
    sub_22FD93E6C(v8, &qword_27DAE42D8, &unk_22FE4BA30);
    *(v13 + 2 * v10) = v18;
    swift_storeEnumTagMultiPayload();
    *(v13 + 3 * v10) = *(a2 + v16[9]);
    swift_storeEnumTagMultiPayload();
    *(v13 + 4 * v10) = *(a2 + v16[10]);
    swift_storeEnumTagMultiPayload();
    *(v13 + 5 * v10) = *(a2 + v16[11]);
    swift_storeEnumTagMultiPayload();
    *(v13 + 6 * v10) = *(a2 + v16[12]);
    swift_storeEnumTagMultiPayload();
    *(v13 + 7 * v10) = *(a2 + v16[13]);
    swift_storeEnumTagMultiPayload();
    v19 = (a2 + v16[6]);
    *(v13 + 8 * v10) = *v19;
    swift_storeEnumTagMultiPayload();
    *(v13 + 9 * v10) = v19[1];
    swift_storeEnumTagMultiPayload();
    *(v13 + 10 * v10) = v19[2];
    swift_storeEnumTagMultiPayload();
    *(v13 + 11 * v10) = v19[3];
    swift_storeEnumTagMultiPayload();
    v20 = (a2 + v16[8]);
    *(v13 + 12 * v10) = *v20;
    swift_storeEnumTagMultiPayload();
    *(v13 + 13 * v10) = v20[1];
    swift_storeEnumTagMultiPayload();
    *(v13 + 14 * v10) = v20[2];
    swift_storeEnumTagMultiPayload();
    *(v13 - v10 + 16 * v10) = v20[3];
    swift_storeEnumTagMultiPayload();
    return v22;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PhotosFaceDatabase.delete(identifiers:)(Swift::OpaquePointer identifiers)
{
  v17 = sub_22FDAE4A8(0x3F, 0xE100000000000000, *(identifiers._rawValue + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4230, &qword_22FE4A748);
  sub_22FDAE544();
  v4 = sub_22FE42FF4();
  v6 = v5;

  v7 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v8 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v8)
  {
    sub_22FD9E790();
    if (v2)
    {

      return;
    }

    v8 = *(v1 + v7);
    if (!v8)
    {

      sub_22FD91684();
      swift_allocError();
      *v14 = 0;
LABEL_9:
      swift_willThrow();
      return;
    }
  }

  v17 = v8;
  v9._countAndFlagsBits = 0x6E69676562;
  v9._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v9);
  v11 = v10;
  if (v10)
  {

    goto LABEL_5;
  }

  v17 = v8;
  sub_22FDABF54(&v17, identifiers._rawValue, v4, v6);

  v17 = v8;
  v15._countAndFlagsBits = 0x74696D6D6F63;
  v15._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v15);
  v11 = v16;
  if (v16)
  {
LABEL_5:
    v17 = v8;
    v12._countAndFlagsBits = 0x6B6361626C6C6F72;
    v12._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v12);
    if (v13)
    {

      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_22FDABF54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = type metadata accessor for DatabaseBinding(0);
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_28148B0A0 != -1)
  {
    swift_once();
  }

  v12 = sub_22FE42D34();
  __swift_project_value_buffer(v12, qword_28148B0A8);

  v13 = sub_22FE42D14();
  v14 = sub_22FE436C4();

  v15 = os_log_type_enabled(v13, v14);
  v40 = v4;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v41 = v10;
    v42 = a4;
    v18 = v17;
    rawValue = v17;
    *v16 = 136315138;
    v19 = sub_22FE428C4();
    v20 = MEMORY[0x23190AE90](a2, v19);
    v22 = a3;
    v23 = sub_22FD98218(v20, v21, &rawValue);

    *(v16 + 4) = v23;
    a3 = v22;
    _os_log_impl(&dword_22FD6D000, v13, v14, "Deleting Stored Photos %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v24 = v18;
    v10 = v41;
    a4 = v42;
    MEMORY[0x23190C380](v24, -1, -1);
    MEMORY[0x23190C380](v16, -1, -1);
  }

  v46 = v11;
  rawValue = 0;
  v45 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000030, 0x800000022FE47D00);
  MEMORY[0x23190ACF0](a3, a4);
  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  v25 = rawValue;
  v26 = v45;
  v27 = *(a2 + 16);
  v28._rawValue = MEMORY[0x277D84F90];
  if (v27)
  {
    v37 = rawValue;
    v38 = v45;
    rawValue = MEMORY[0x277D84F90];
    sub_22FD924B0(0, v27, 0);
    v28._rawValue = rawValue;
    v42 = sub_22FE428C4();
    v29 = *(v42 - 8);
    v41 = *(v29 + 16);
    v30 = a2 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v31 = *(v29 + 72);
    do
    {
      (v41)(v10, v30, v42);
      swift_storeEnumTagMultiPayload();
      rawValue = v28._rawValue;
      v33 = *(v28._rawValue + 2);
      v32 = *(v28._rawValue + 3);
      if (v33 >= v32 >> 1)
      {
        sub_22FD924B0((v32 > 1), v33 + 1, 1);
        v28._rawValue = rawValue;
      }

      *(v28._rawValue + 2) = v33 + 1;
      sub_22FDAF070(v10, v28._rawValue + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, type metadata accessor for DatabaseBinding);
      v30 += v31;
      --v27;
    }

    while (v27);
    v25 = v37;
    v26 = v38;
  }

  v34 = v26;
  DatabaseConnection.delete(sql:bindings:)(*&v25, v28);
}

uint64_t PhotosFaceDatabase.storedPhotos()()
{
  v1[2] = v0;
  v2 = sub_22FE428C4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDAC420, v0, 0);
}

uint64_t sub_22FDAC420()
{
  v61 = v0;
  v60 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v10 = 0;
      goto LABEL_45;
    }
  }

  *__dst = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_43:
    *__dst = v3;
    v49._countAndFlagsBits = 0x6B6361626C6C6F72;
    v49._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v49);
    if (v50)
    {

LABEL_46:

      v51 = v0[1];

      return v51();
    }

LABEL_45:
    swift_willThrow();
    goto LABEL_46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v7 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22FE49F60;
  *(v9 + v8) = 17;
  swift_storeEnumTagMultiPayload();
  *__dst = v3;
  v11 = sub_22FDB08B0(0xD000000000000061, 0x800000022FE47840);
  sub_22FDB31B8(v9, v11);
  v12 = v0[4];
  swift_setDeallocating();
  sub_22FDAF148(v9 + v8, type metadata accessor for DatabaseBinding);
  swift_deallocClassInstance();
  sub_22FDB33A0(v11);
  v56 = (v12 + 16);
  v57 = v12;
  for (i = MEMORY[0x277D84F90]; ; (*(v57 + 32))(i + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v36, v37, v38))
  {
    v14 = sqlite3_step(v11);
    if (v14 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v11, 0) == 5 || (v15 = sqlite3_column_blob(v11, 0)) == 0)
    {
      sub_22FD9172C();
      v6 = swift_allocError();
      *v41 = 0;
      *(v41 + 4) = 0;
      swift_willThrow();
      goto LABEL_41;
    }

    v16 = v15;
    v17 = sqlite3_column_bytes(v11, 0);
    if (!v17)
    {
      v19 = 0;
      v20 = 0xC000000000000000;
LABEL_40:
      sub_22FD91780();
      v6 = swift_allocError();
      *v48 = 1;
      swift_willThrow();
      sub_22FD917D4(v19, v20);
LABEL_41:

LABEL_42:
      sub_22FDB35E0(v11);
      goto LABEL_43;
    }

    v18 = v17;
    if (v17 < 15)
    {
      memset(__dst, 0, sizeof(__dst));
      v59 = v17;
      memcpy(__dst, v16, v17);
      v19 = *__dst;
      v18 = v59;
      v20 = v55 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v59 << 48);
      v55 = v20;
    }

    else
    {
      sub_22FE42694();
      swift_allocObject();
      if (v18 == 0x7FFFFFFF)
      {
        v47 = sub_22FE42644();
        sub_22FE427A4();
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_22FE49F80;
        v20 = v47 | 0x8000000000000000;
        goto LABEL_40;
      }

      v19 = v18 << 32;
      v20 = sub_22FE42644() | 0x4000000000000000;
    }

    if (v18 != 16)
    {
      goto LABEL_40;
    }

    v21 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v21 == 2)
      {
        v22 = *(v19 + 16);
        v23 = sub_22FE42654();
        if (!v23)
        {
          sub_22FE42674();
LABEL_58:
          __break(1u);
LABEL_59:
          result = sub_22FE42674();
          __break(1u);
LABEL_60:
          __break(1u);
          return result;
        }

        v24 = v23;
        v25 = sub_22FE42684();
        if (__OFSUB__(v22, v25))
        {
          goto LABEL_55;
        }

        v26 = v22 - v25 + v24;
        sub_22FE42674();
        if (!v26)
        {
          goto LABEL_58;
        }
      }
    }

    else if (v21)
    {
      if (v19 > v19 >> 32)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
      }

      v27 = sub_22FE42654();
      if (!v27)
      {
        goto LABEL_59;
      }

      v28 = v27;
      v29 = sub_22FE42684();
      if (__OFSUB__(v19, v29))
      {
        goto LABEL_56;
      }

      v30 = v19 - v29 + v28;
      result = sub_22FE42674();
      if (!v30)
      {
        goto LABEL_60;
      }
    }

    v33 = v0[5];
    v32 = v0[6];
    v34 = v0[3];
    sub_22FE42894();
    sub_22FD917D4(v19, v20);
    (*v56)(v33, v32, v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_22FD91828(0, i[2] + 1, 1, i);
    }

    v36 = i[2];
    v35 = i[3];
    if (v36 >= v35 >> 1)
    {
      i = sub_22FD91828((v35 > 1), v36 + 1, 1, i);
    }

    v37 = v0[5];
    v38 = v0[3];
    (*(v57 + 8))(v0[6], v38);
    i[2] = v36 + 1;
  }

  if (v14 != 101)
  {
    v42 = v14;

    v43 = v42;
    if (sqlite3_errstr(v42))
    {
      v44 = sub_22FE43104();
      v46 = v45;
    }

    else
    {
      v46 = 0xE300000000000000;
      v44 = 4271950;
    }

    v53 = v43 | 0xA000000000000000;
    sub_22FD916D8();
    v6 = swift_allocError();
    *v54 = v53;
    v54[1] = v44;
    v54[2] = v46;
    swift_willThrow();
    goto LABEL_42;
  }

  sub_22FDB35E0(v11);
  *__dst = v3;
  v39._countAndFlagsBits = 0x74696D6D6F63;
  v39._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v39);
  if (v40)
  {
    v6 = v40;

    goto LABEL_43;
  }

  v52 = v0[1];

  return v52(i);
}

uint64_t PhotosFaceDatabase.timePositions(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22FE428C4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4178, &qword_22FE4A770);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for DatabaseBinding(0);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDACE44, v1, 0);
}

uint64_t sub_22FDACE44()
{
  v1 = v0;
  v2 = v0[4];
  v3 = *(v1[3] + 16);
  v66 = v1;
  v1[2] = sub_22FDAE4A8(0x3F, 0xE100000000000000, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4230, &qword_22FE4A748);
  sub_22FDAE544();
  v4 = sub_22FE42FF4();
  v6 = v5;

  v7 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  if (!*(v2 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection))
  {
    sub_22FD9E790();
    if (!*(v2 + v7))
    {

      sub_22FD91684();
      swift_allocError();
      *v30 = 0;
      goto LABEL_14;
    }
  }

  v8._countAndFlagsBits = 0x6E69676562;
  v8._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v8);
  if (v9)
  {
    v10 = v9;
LABEL_11:

LABEL_12:
    v26._countAndFlagsBits = 0x6B6361626C6C6F72;
    v26._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v26);
    if (v27)
    {

LABEL_15:

      v28 = v66[1];

      return v28();
    }

LABEL_14:
    swift_willThrow();
    goto LABEL_15;
  }

  v11 = v1[13];
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD0000000000000C0, 0x800000022FE478B0);
  MEMORY[0x23190ACF0](v4, v6);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v69 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22FE49F60;
  *(v14 + v13) = 17;
  v67 = v13;
  swift_storeEnumTagMultiPayload();
  v15 = MEMORY[0x277D84F90];
  if (v3)
  {
    v16 = v66[6];
    v17 = v66[3];
    v71 = MEMORY[0x277D84F90];
    sub_22FD924B0(0, v3, 0);
    v19 = *(v16 + 16);
    v16 += 16;
    v18 = v19;
    v15 = v71;
    v20 = v17 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v21 = *(v16 + 56);
    do
    {
      v18(v66[14], v20, v66[5]);
      swift_storeEnumTagMultiPayload();
      v23 = *(v71 + 16);
      v22 = *(v71 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22FD924B0((v22 > 1), v23 + 1, 1);
      }

      v24 = v66[14];
      *(v71 + 16) = v23 + 1;
      sub_22FDAF070(v24, v71 + v67 + v23 * v69, type metadata accessor for DatabaseBinding);
      v20 += v21;
      --v3;
    }

    while (v3);
  }

  sub_22FDADA80(v15, sub_22FD919C8, type metadata accessor for DatabaseBinding);
  v25 = v14;
  v31 = sub_22FDB08B0(0, 0xE000000000000000);

  sub_22FDB31B8(v25, v31);
  v68 = v66[8];
  v70 = v66[9];
  v32 = v66[6];

  sub_22FDB33A0(v31);
  v33 = MEMORY[0x277D84F90];
  v65 = (v32 + 32);
  while (1)
  {
    v34 = sqlite3_step(v31);
    if (v34 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v31, 0) == 5 || (v35 = sqlite3_column_blob(v31, 0)) == 0)
    {
      sub_22FD9172C();
      v10 = swift_allocError();
      *v52 = 0;
      *(v52 + 4) = 0;
      swift_willThrow();
      goto LABEL_40;
    }

    v36 = v35;
    v37 = sqlite3_column_bytes(v31, 0);
    v38 = sub_22FDB285C(v36, v37);
    UUID.init(serialized:version:)(v38, v39);
    if (sqlite3_column_type(v31, 1) == 5)
    {
      v58 = v66[6];
      v59 = v66[7];
      v60 = v66[5];
      sub_22FD9172C();
      v10 = swift_allocError();
      v62 = 1;
LABEL_39:
      *v61 = v62;
      *(v61 + 4) = 0;
      swift_willThrow();
      (*(v58 + 8))(v59, v60);
LABEL_40:

LABEL_41:
      sub_22FDB35E0(v31);
      goto LABEL_12;
    }

    v40 = sqlite3_column_int(v31, 1);
    if (sqlite3_column_type(v31, 2) == 5)
    {
      v58 = v66[6];
      v59 = v66[7];
      v60 = v66[5];
      sub_22FD9172C();
      v10 = swift_allocError();
      v62 = 2;
      goto LABEL_39;
    }

    v41 = v40;
    result = sqlite3_column_int(v31, 2);
    if (v40 < 0)
    {
      __break(1u);
      return result;
    }

    v43 = v66[10];
    v42 = v66[11];
    v44 = result == 1;
    v45 = *(v68 + 48);
    v46 = *(v68 + 64);
    (*v65)(v42, v66[7], v66[5]);
    *(v42 + v45) = v41;
    *(v42 + v46) = v44;
    sub_22FD764B4(v42, v43, &qword_27DAE4178, &qword_22FE4A770);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_22FD91B98(0, v33[2] + 1, 1, v33);
    }

    v48 = v33[2];
    v47 = v33[3];
    if (v48 >= v47 >> 1)
    {
      v33 = sub_22FD91B98((v47 > 1), v48 + 1, 1, v33);
    }

    v49 = v66[10];
    sub_22FD93E6C(v66[11], &qword_27DAE4178, &qword_22FE4A770);
    v33[2] = v48 + 1;
    sub_22FD93E04(v49, v33 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v48, &qword_27DAE4178, &qword_22FE4A770);
  }

  if (v34 != 101)
  {
    v53 = v34;

    v54 = v53;
    if (sqlite3_errstr(v53))
    {
      v55 = sub_22FE43104();
      v57 = v56;
    }

    else
    {
      v57 = 0xE300000000000000;
      v55 = 4271950;
    }

    sub_22FD916D8();
    v10 = swift_allocError();
    *v64 = v54 | 0xA000000000000000;
    v64[1] = v55;
    v64[2] = v57;
    swift_willThrow();
    goto LABEL_41;
  }

  sub_22FDB35E0(v31);
  v50._countAndFlagsBits = 0x74696D6D6F63;
  v50._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v50);
  if (v51)
  {
    v10 = v51;
    goto LABEL_11;
  }

  v63 = v66[1];

  return v63(v33);
}

uint64_t sub_22FDAD6D0()
{
  v1 = PhotosFaceDatabase.queryPhotos(sql:bindings:)(0xD000000000000375, 0x800000022FE47980, MEMORY[0x277D84F90]);
  v2 = *(v0 + 8);

  return v2(v1);
}

void *sub_22FDAD798(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_22FD91850(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_22FDC1C54(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_22FD91850((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_22FDAF1A8(result);
  *v1 = v4;
  return result;
}

uint64_t sub_22FDADA80(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_22FDADBC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE0, &unk_22FE49010);
  v41 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v45 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41B8, &qword_22FE4A1B0);
  MEMORY[0x28223BE20](v4);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v36 - v8;
  v9 = MEMORY[0x277D84F98];
  v46 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v38 = *(v7 + 80);
  v11 = *(v7 + 72);
  v42 = (v38 + 32) & ~v38;
  v12 = a1 + v42;
  v37 = xmmword_22FE49F60;
  v39 = v4;
  v40 = v2;
  while (1)
  {
    v13 = v44;
    sub_22FD764B4(v12, v44, &qword_27DAE41B8, &qword_22FE4A1B0);
    v14 = *(v13 + *(v4 + 64));
    v15 = v13;
    v16 = v45;
    sub_22FDAEFA4(v15, v45, type metadata accessor for StoredPhoto);
    *(v16 + *(v2 + 36)) = v14;
    v18 = sub_22FD7475C(v16);
    v19 = v9[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v9[3] < v21)
    {
      sub_22FDDD574(v21, 1);
      v9 = v46;
      v23 = sub_22FD7475C(v45);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {
      sub_22FD93E6C(v45, &qword_27DAE2CE0, &unk_22FE49010);
      v25 = v9[7];
      sub_22FD93E04(v44, v43, &qword_27DAE41B8, &qword_22FE4A1B0);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_22FD91980(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_22FD91980((v28 > 1), v29 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v26[2] = v29 + 1;
      sub_22FD93E04(v43, v26 + v42 + v29 * v11, &qword_27DAE41B8, &qword_22FE4A1B0);
      v4 = v39;
      v2 = v40;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41B0, &unk_22FE4A860);
      v30 = v42;
      v31 = swift_allocObject();
      *(v31 + 16) = v37;
      sub_22FD93E04(v44, v31 + v30, &qword_27DAE41B8, &qword_22FE4A1B0);
      v9[(v18 >> 6) + 8] |= 1 << v18;
      sub_22FD93E04(v45, v9[6] + *(v41 + 72) * v18, &qword_27DAE2CE0, &unk_22FE49010);
      *(v9[7] + 8 * v18) = v31;
      v32 = v9[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v9[2] = v34;
    }

    v12 += v11;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

void sub_22FDADFD8(uint64_t a1, int a2, void *a3)
{
  v7 = type metadata accessor for StoredPhotoLayout(0);
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850);
  MEMORY[0x28223BE20](v12);
  v16 = (&v46 - v15);
  v17 = *(a1 + 16);
  if (!v17)
  {
    return;
  }

  LODWORD(v48) = a2;
  v18 = *(v13 + 48);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v50 = *(v14 + 72);
  v46 = v19;
  v47 = a1;
  sub_22FD764B4(a1 + v19, &v46 - v15, &qword_27DAE2CE8, &unk_22FE4A850);
  v20 = *v16;
  v21 = v18;
  sub_22FDAF070(v16 + v18, v11, type metadata accessor for StoredPhotoLayout);
  v22 = *a3;
  v24 = sub_22FD746AC(v20);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    goto LABEL_22;
  }

  LOBYTE(v3) = v23;
  if (v22[3] >= v27)
  {
    if ((v48 & 1) == 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
LABEL_7:
      v48 = v17;
      v30 = *a3;
      if (v3)
      {
        v24 *= *(v51 + 72);
        v31 = v49;
        sub_22FDAEFA4(v30[7] + v24, v49, type metadata accessor for StoredPhotoLayout);
        sub_22FDAF148(v11, type metadata accessor for StoredPhotoLayout);
        sub_22FDAF00C(v31, v30[7] + v24);
      }

      else
      {
        v30[(v24 >> 6) + 8] |= 1 << v24;
        *(v30[6] + 8 * v24) = v20;
        sub_22FDAF070(v11, v30[7] + *(v51 + 72) * v24, type metadata accessor for StoredPhotoLayout);
        v32 = v30[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_23;
        }

        v30[2] = v34;
      }

      v17 = v48 - 1;
      if (v48 == 1)
      {
        return;
      }

      v3 = v47 + v50 + v46;
      while (1)
      {
        sub_22FD764B4(v3, v16, &qword_27DAE2CE8, &unk_22FE4A850);
        v20 = *v16;
        sub_22FDAF070(v16 + v21, v11, type metadata accessor for StoredPhotoLayout);
        v36 = *a3;
        v37 = sub_22FD746AC(v20);
        v39 = v36[2];
        v40 = (v38 & 1) == 0;
        v33 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v33)
        {
          break;
        }

        v24 = v38;
        if (v36[3] < v41)
        {
          sub_22FDDD218(v41, 1);
          v37 = sub_22FD746AC(v20);
          if ((v24 & 1) != (v42 & 1))
          {
            goto LABEL_25;
          }
        }

        v43 = *a3;
        if (v24)
        {
          v24 = *(v51 + 72) * v37;
          v35 = v49;
          sub_22FDAEFA4(v43[7] + v24, v49, type metadata accessor for StoredPhotoLayout);
          sub_22FDAF148(v11, type metadata accessor for StoredPhotoLayout);
          sub_22FDAF00C(v35, v43[7] + v24);
        }

        else
        {
          v43[(v37 >> 6) + 8] |= 1 << v37;
          *(v43[6] + 8 * v37) = v20;
          sub_22FDAF070(v11, v43[7] + *(v51 + 72) * v37, type metadata accessor for StoredPhotoLayout);
          v44 = v43[2];
          v33 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v33)
          {
            goto LABEL_23;
          }

          v43[2] = v45;
        }

        v3 += v50;
        if (!--v17)
        {
          return;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_22FDDE8C8();
    }
  }

  sub_22FDDD218(v27, v48 & 1);
  v28 = sub_22FD746AC(v20);
  if ((v3 & 1) == (v29 & 1))
  {
    v24 = v28;
    goto LABEL_7;
  }

LABEL_25:
  type metadata accessor for PFCTimePosition(0);
  sub_22FE43D14();
  __break(1u);
}

void *sub_22FDAE4A8(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_22FE432E4();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

unint64_t sub_22FDAE544()
{
  result = qword_27DAE4238[0];
  if (!qword_27DAE4238[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE4230, &qword_22FE4A748);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAE4238);
  }

  return result;
}

uint64_t sub_22FDAE5A8(uint64_t a1)
{
  result = type metadata accessor for StoredPhoto(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FDAE630(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_22FE428C4() - 8);
  v7 = *(v6 + 84);
  v8 = sub_22FE42854();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 80);
  v16 = *(*(v8 - 8) + 64);
  v17 = *(v13 + 80);
  if (v14 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v6 + 64) + v15;
  v20 = v16 + v15;
  v21 = (v16 + v15 + (v19 & ~v15)) & ~v15;
  v22 = v16 + 7;
  v23 = ((((((((((((v22 + v21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 16;
  if (a2 <= v18)
  {
    goto LABEL_34;
  }

  v24 = (v23 & ~v17) + *(v13 + 64);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_13;
  }

  v28 = ((a2 - v18 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_34;
      }

LABEL_13:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_34;
      }

LABEL_21:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = (v23 & ~v17) + *(v13 + 64);
        }

        else
        {
          v30 = 4;
        }

        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v31 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v31 = *a1;
          }
        }

        else if (v30 == 1)
        {
          v31 = *a1;
        }

        else
        {
          v31 = *a1;
        }
      }

      else
      {
        v31 = 0;
      }

      return v18 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  if (v12 < v14)
  {
    v32 = *(v13 + 48);
    v33 = ((a1 + v23) & ~v17);
    v34 = *(v13 + 84);
LABEL_38:

    return v32(v33, v34);
  }

  if (v7 == v12)
  {
    v32 = *(v6 + 48);
    v33 = a1;
    v34 = v7;
    goto LABEL_38;
  }

  if (v10 == v12)
  {
    v35 = *(v9 + 48);

    return v35((a1 + v19) & ~v15);
  }

  else
  {
    v36 = *((((((((((v22 + ((v20 + ((a1 + v19) & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    return (v36 + 1);
  }
}

void sub_22FDAE9D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_22FE428C4() - 8);
  v9 = *(v8 + 84);
  v10 = sub_22FE42854();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v8 + 64);
  v18 = *(v11 + 80);
  v19 = *(*(v10 - 8) + 64);
  v20 = *(v15 + 80);
  if (v16 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = *(v15 + 84);
  }

  v22 = v17 + v18;
  v23 = v19 + v18;
  v24 = v19 + 7;
  v25 = ((((((((((((v19 + 7 + ((v19 + v18 + ((v17 + v18) & ~v18)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v26 = ((v25 + v20) & ~v20) + *(v15 + 64);
  if (a3 <= v21)
  {
    v27 = 0;
  }

  else if (v26 <= 3)
  {
    v30 = ((a3 - v21 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
    if (HIWORD(v30))
    {
      v27 = 4;
    }

    else
    {
      if (v30 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v30 >= 2)
      {
        v27 = v31;
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 1;
  }

  if (v21 < a2)
  {
    v28 = ~v21 + a2;
    if (v26 < 4)
    {
      v29 = (v28 >> (8 * v26)) + 1;
      if (v26)
      {
        v32 = v28 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v32;
            if (v27 > 1)
            {
LABEL_55:
              if (v27 == 2)
              {
                *&a1[v26] = v29;
              }

              else
              {
                *&a1[v26] = v29;
              }

              return;
            }
          }

          else
          {
            *a1 = v28;
            if (v27 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v26);
      *a1 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v27)
    {
      a1[v26] = v29;
    }

    return;
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v26] = 0;
  }

  else if (v27)
  {
    a1[v26] = 0;
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
  if (v14 < v16)
  {
    v33 = *(v15 + 56);
    v34 = (&a1[v25 + v20] & ~v20);
    v35 = a2;
    v36 = v16;
LABEL_39:

    v33(v34, v35, v36);
    return;
  }

  if (v14 >= a2)
  {
    if (v9 == v14)
    {
      v33 = *(v8 + 56);
      v34 = a1;
      v35 = a2;
      v36 = v9;
      goto LABEL_39;
    }

    v38 = ~v18;
    if (v12 == v14)
    {
      v39 = *(v11 + 56);

      v39(&a1[v22] & v38, a2);
    }

    else
    {
      v40 = ((((((((((v24 + ((v23 + (&a1[v22] & v38)) & v38)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        v41 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v41 = (a2 - 1);
      }

      *v40 = v41;
    }
  }

  else if (v25)
  {
    v37 = ~v14 + a2;
    bzero(a1, v25);
    *a1 = v37;
  }
}

void sub_22FDAEE44(uint64_t a1)
{
  sub_22FE428C4();
  if (v1 <= 0x3F)
  {
    sub_22FE42854();
    if (v2 <= 0x3F)
    {
      sub_22FDAEF38();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FDAEF38()
{
  if (!qword_28148AE78)
  {
    v0 = sub_22FE43744();
    if (!v1)
    {
      atomic_store(v0, &qword_28148AE78);
    }
  }
}

uint64_t sub_22FDAEFA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDAF00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhotoLayout(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDAF070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDAF0D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDAF148(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for DatabaseBinding(uint64_t a1)
{
  result = qword_28148BA00;
  if (!qword_28148BA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FDAF2A4(uint64_t a1)
{
  result = sub_22FE42854();
  if (v2 <= 0x3F)
  {
    result = sub_22FE42774();
    if (v3 <= 0x3F)
    {
      result = sub_22FE428C4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.insert(sql:bindings:)(Swift::String sql, Swift::OpaquePointer bindings)
{
  v4 = sub_22FDB08B0(sql._countAndFlagsBits, sql._object);
  if (!v2)
  {
    v5 = v4;
    v6 = *(bindings._rawValue + 2);
    v7 = bindings._rawValue + 32;
    while (v6)
    {

      sub_22FDB31B8(v8, v5);

      sub_22FDB33A0(v5);
      v9 = sqlite3_step(v5);
      if (v9 != 101)
      {
        v15 = v9;
        if (sqlite3_errstr(v9))
        {
          v12 = sub_22FE43104();
          v14 = v16;
        }

        else
        {
          v12 = 4271950;
          v14 = 0xE300000000000000;
        }

        v17 = v15 | 0x4000000000000000;
        goto LABEL_14;
      }

      v10 = sqlite3_reset(v5);
      v7 += 8;
      --v6;
      if (v10)
      {
        v11 = v10;
        if (sqlite3_errstr(v10))
        {
          v12 = sub_22FE43104();
          v14 = v13;
        }

        else
        {
          v12 = 4271950;
          v14 = 0xE300000000000000;
        }

        v17 = v11 | 0x8000000000000000;
LABEL_14:
        sub_22FD916D8();
        swift_allocError();
        *v18 = v17;
        v18[1] = v12;
        v18[2] = v14;
        swift_willThrow();
        break;
      }
    }

    sub_22FDB35E0(v5);
  }
}