uint64_t sub_1E58FA21C(uint64_t a1, uint64_t a2)
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
  while (v5)
  {
LABEL_10:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a2 + 48) + 32 * v11);
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    v17 = *(*(a2 + 56) + 8 * v11);

    if (!v17)
    {
LABEL_15:

      return MEMORY[0x1E6932DE0](v8);
    }

    MEMORY[0x1E6932DE0](v14);
    MEMORY[0x1E6932DE0](v13);
    MEMORY[0x1E6932DE0](v16);
    MEMORY[0x1E6932DE0](v15);
    MEMORY[0x1E6932DE0](*(v17 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 40;
      do
      {
        MEMORY[0x1E6932DE0](0);

        sub_1E5A2BB74();

        v19 += 16;
        --v18;
      }

      while (v18);
    }

    v5 &= v5 - 1;

    result = sub_1E5A2C204();
    v8 ^= result;
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
      goto LABEL_15;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58FA3DC(uint64_t a1, uint64_t a2)
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

  v19 = 0;
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = *(*(a2 + 48) + 16 * v10 + 8);
      v12 = *(a2 + 56) + 32 * v10;
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);

      if (!v11)
      {
        break;
      }

      v5 &= v5 - 1;
      v15 = *(a1 + 48);
      v20[2] = *(a1 + 32);
      v20[3] = v15;
      v21 = *(a1 + 64);
      v16 = *(a1 + 16);
      v20[0] = *a1;
      v20[1] = v16;
      sub_1E5A2BB74();

      sub_1E5A2BB74();
      sub_1E58B93C8(v20, v13);
      sub_1E58B93C8(v20, v14);

      result = sub_1E5A2C204();
      v19 ^= result;
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1E6932DE0](v19);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL _s18FitnessWorkoutPlan0bC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1E5A29E04() & 1) != 0 && (v4 = type metadata accessor for WorkoutPlan(0), (sub_1E5A29E54()) && (sub_1E599D054(*(a1 + v4[6]), *(a2 + v4[6])) & 1) != 0 && ((v5 = v4[7], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = *(a1 + v5 + 16), v9 = (a2 + v5), v10 = *v9, v11 = v9[1], v12 = v9[2], v6 == v10) ? (v13 = v7 == v11) : (v13 = 0), v13 ? (v14 = v8 == v12) : (v14 = 0), v14 && *(a1 + v4[8]) == *(a2 + v4[8]) && (sub_1E5A29E54()))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E58FA6AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E58FA71C(uint64_t a1)
{
  sub_1E5A29E34();
  if (v1 <= 0x3F)
  {
    sub_1E5A29E74();
    if (v2 <= 0x3F)
    {
      sub_1E58FA7E0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E58FA7E0(uint64_t a1)
{
  if (!qword_1ECFFCBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCB58, &qword_1E5A33120);
    sub_1E58FA858();
    v1 = sub_1E5A2BA24();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECFFCBD8);
    }
  }
}

unint64_t sub_1E58FA858()
{
  result = qword_1ECFFCBE0;
  if (!qword_1ECFFCBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBE0);
  }

  return result;
}

unint64_t sub_1E58FA8C0()
{
  result = qword_1ECFFCBE8;
  if (!qword_1ECFFCBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBE8);
  }

  return result;
}

unint64_t sub_1E58FA918()
{
  result = qword_1ECFFCBF0;
  if (!qword_1ECFFCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBF0);
  }

  return result;
}

unint64_t sub_1E58FA970()
{
  result = qword_1ECFFCBF8;
  if (!qword_1ECFFCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBF8);
  }

  return result;
}

uint64_t sub_1E58FA9C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6165724365746164 && a2 == 0xEB00000000646574;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A464E0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E58FAC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E58FAC8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E58FACFC(uint64_t a1)
{
  v2 = sub_1E58FBE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FAD38(uint64_t a1)
{
  v2 = sub_1E58FBE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FAD74(uint64_t a1)
{
  v2 = sub_1E58FBB24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FADB0(uint64_t a1)
{
  v2 = sub_1E58FBB24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FADEC(uint64_t a1)
{
  v2 = sub_1E58FBDC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FAE28(uint64_t a1)
{
  v2 = sub_1E58FBDC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FAE64(uint64_t a1)
{
  v2 = sub_1E58FBD70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FAEA0(uint64_t a1)
{
  v2 = sub_1E58FBD70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FAEDC(uint64_t a1)
{
  v2 = sub_1E58FBD1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FAF18(uint64_t a1)
{
  v2 = sub_1E58FBD1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FAF54(uint64_t a1)
{
  v2 = sub_1E58FBCC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FAF90(uint64_t a1)
{
  v2 = sub_1E58FBCC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FAFCC(uint64_t a1)
{
  v2 = sub_1E58FBC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FB008(uint64_t a1)
{
  v2 = sub_1E58FBC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FB044(uint64_t a1)
{
  v2 = sub_1E58FBC20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FB080(uint64_t a1)
{
  v2 = sub_1E58FBC20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FB0BC(uint64_t a1)
{
  v2 = sub_1E58FBBCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FB0F8(uint64_t a1)
{
  v2 = sub_1E58FBBCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FB134(uint64_t a1)
{
  v2 = sub_1E58FBB78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FB170(uint64_t a1)
{
  v2 = sub_1E58FBB78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanFilterKind.encode(to:)(void *a1, int a2)
{
  LODWORD(v68) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC00, &qword_1E5A33360);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC08, &qword_1E5A33368);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC10, &qword_1E5A33370);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v44 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC18, &qword_1E5A33378);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v44 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC20, &qword_1E5A33380);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v44 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC28, &qword_1E5A33388);
  v67 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v66 = &v44 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC30, &qword_1E5A33390);
  v65 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v64 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC38, &qword_1E5A33398);
  v63 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC40, &qword_1E5A333A0);
  v62 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC48, &qword_1E5A333A8);
  v19 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v21 = &v44 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58FBB24();
  v69 = v21;
  sub_1E5A2C224();
  v22 = (v19 + 8);
  v23 = v68;
  if (v68 <= 3u)
  {
    v61 = v16;
    v68 = v22;
    v30 = v62;
    v29 = v63;
    v31 = v64;
    v32 = v65;
    v33 = v66;
    v34 = v67;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v73 = 2;
        sub_1E58FBD70();
        v38 = v31;
        v40 = v69;
        v39 = v70;
        sub_1E5A2C024();
        (*(v32 + 8))(v38, v45);
      }

      else
      {
        v74 = 3;
        sub_1E58FBD1C();
        v42 = v33;
        v40 = v69;
        v39 = v70;
        sub_1E5A2C024();
        (*(v34 + 8))(v42, v46);
      }
    }

    else
    {
      if (!v23)
      {
        v71[0] = 0;
        sub_1E58FBE18();
        v35 = v69;
        v36 = v70;
        sub_1E5A2C024();
        (*(v30 + 8))(v18, v61);
        return (*v68)(v35, v36);
      }

      v72 = 1;
      sub_1E58FBDC4();
      v40 = v69;
      v39 = v70;
      sub_1E5A2C024();
      (*(v29 + 8))(v15, v13);
    }

    return (*v68)(v40, v39);
  }

  else
  {
    if (v68 <= 5u)
    {
      if (v68 == 4)
      {
        v75 = 4;
        sub_1E58FBCC8();
        v41 = v47;
        v25 = v69;
        v26 = v70;
        sub_1E5A2C024();
        (*(v48 + 8))(v41, v49);
      }

      else
      {
        v76 = 5;
        sub_1E58FBC74();
        v43 = v50;
        v25 = v69;
        v26 = v70;
        sub_1E5A2C024();
        (*(v51 + 8))(v43, v52);
      }
    }

    else
    {
      if (v68 == 6)
      {
        v77 = 6;
        sub_1E58FBC20();
        v24 = v53;
        v25 = v69;
        v26 = v70;
        sub_1E5A2C024();
        v28 = v54;
        v27 = v55;
      }

      else if (v68 == 7)
      {
        v78 = 7;
        sub_1E58FBBCC();
        v24 = v56;
        v25 = v69;
        v26 = v70;
        sub_1E5A2C024();
        v28 = v57;
        v27 = v58;
      }

      else
      {
        v79 = 8;
        sub_1E58FBB78();
        v24 = v59;
        v25 = v69;
        v26 = v70;
        sub_1E5A2C024();
        v28 = v60;
        v27 = v61;
      }

      (*(v28 + 8))(v24, v27);
    }

    return (*v22)(v25, v26);
  }
}

unint64_t sub_1E58FBB24()
{
  result = qword_1ECFFCC50;
  if (!qword_1ECFFCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC50);
  }

  return result;
}

unint64_t sub_1E58FBB78()
{
  result = qword_1ECFFCC58;
  if (!qword_1ECFFCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC58);
  }

  return result;
}

unint64_t sub_1E58FBBCC()
{
  result = qword_1ECFFCC60;
  if (!qword_1ECFFCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC60);
  }

  return result;
}

unint64_t sub_1E58FBC20()
{
  result = qword_1ECFFCC68;
  if (!qword_1ECFFCC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC68);
  }

  return result;
}

unint64_t sub_1E58FBC74()
{
  result = qword_1ECFFCC70;
  if (!qword_1ECFFCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC70);
  }

  return result;
}

unint64_t sub_1E58FBCC8()
{
  result = qword_1ECFFCC78;
  if (!qword_1ECFFCC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC78);
  }

  return result;
}

unint64_t sub_1E58FBD1C()
{
  result = qword_1ECFFCC80;
  if (!qword_1ECFFCC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC80);
  }

  return result;
}

unint64_t sub_1E58FBD70()
{
  result = qword_1ECFFCC88;
  if (!qword_1ECFFCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC88);
  }

  return result;
}

unint64_t sub_1E58FBDC4()
{
  result = qword_1ECFFCC90;
  if (!qword_1ECFFCC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC90);
  }

  return result;
}

unint64_t sub_1E58FBE18()
{
  result = qword_1ECFFCC98;
  if (!qword_1ECFFCC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC98);
  }

  return result;
}

char *sub_1E58FBE84@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E58FBF3C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t WorkoutPlanFilterKind.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

char *sub_1E58FBF3C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD60, &qword_1E5A33CD0);
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD68, &qword_1E5A33CD8);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD70, &qword_1E5A33CE0);
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD78, &qword_1E5A33CE8);
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v47 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD80, &qword_1E5A33CF0);
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v72 = &v47 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD88, &qword_1E5A33CF8);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v71 = &v47 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD90, &qword_1E5A33D00);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v67 = &v47 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD98, &qword_1E5A33D08);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCDA0, &qword_1E5A33D10);
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCDA8, &qword_1E5A33D18);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - v20;
  v22 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E58FBB24();
  v23 = v75;
  sub_1E5A2C214();
  if (!v23)
  {
    v48 = v17;
    v47 = v15;
    v24 = v14;
    v25 = v71;
    v26 = v72;
    v27 = v73;
    v75 = v19;
    v49 = v21;
    v28 = sub_1E5A2C004();
    v29 = (2 * *(v28 + 16)) | 1;
    v76 = v28;
    v77 = v28 + 32;
    v78 = 0;
    v79 = v29;
    v30 = sub_1E58BC5AC();
    if (v30 != 9 && v78 == v79 >> 1)
    {
      v21 = v30;
      if (v30 <= 3u)
      {
        v31 = v49;
        if (v30 > 1u)
        {
          if (v30 == 2)
          {
            v80 = 2;
            sub_1E58FBD70();
            v45 = v67;
            sub_1E5A2BF44();
            (*(v53 + 8))(v45, v54);
          }

          else
          {
            v80 = 3;
            sub_1E58FBD1C();
            sub_1E5A2BF44();
            (*(v55 + 8))(v25, v56);
          }

          (*(v75 + 8))(v31, v18);
          goto LABEL_29;
        }

        v32 = v75;
        if (v30)
        {
          v80 = 1;
          sub_1E58FBDC4();
          sub_1E5A2BF44();
          v42 = *(v51 + 8);
          v43 = v24;
          v44 = &v81;
        }

        else
        {
          v80 = 0;
          sub_1E58FBE18();
          v41 = v48;
          sub_1E5A2BF44();
          v42 = *(v50 + 8);
          v43 = v41;
          v44 = &v79;
        }
      }

      else
      {
        v31 = v49;
        if (v30 > 5u)
        {
          v32 = v75;
          if (v30 == 6)
          {
            v80 = 6;
            sub_1E58FBC20();
            v33 = v68;
            sub_1E5A2BF44();
            v35 = v61;
            v34 = v62;
          }

          else
          {
            if (v30 != 7)
            {
              v80 = 8;
              sub_1E58FBB78();
              v46 = v70;
              sub_1E5A2BF44();
              (*(v65 + 8))(v46, v66);
LABEL_28:
              (*(v32 + 8))(v31, v18);
LABEL_29:
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1(v74);
              return v21;
            }

            v80 = 7;
            sub_1E58FBBCC();
            v33 = v69;
            sub_1E5A2BF44();
            v35 = v63;
            v34 = v64;
          }

          goto LABEL_26;
        }

        v32 = v75;
        if (v30 != 4)
        {
          v80 = 5;
          sub_1E58FBC74();
          v33 = v27;
          sub_1E5A2BF44();
          v35 = v59;
          v34 = v60;
LABEL_26:
          v42 = *(v35 + 8);
          v43 = v33;
          goto LABEL_27;
        }

        v80 = 4;
        sub_1E58FBCC8();
        sub_1E5A2BF44();
        v42 = *(v58 + 8);
        v43 = v26;
        v44 = &v82;
      }

      v34 = *(v44 - 32);
LABEL_27:
      v42(v43, v34);
      goto LABEL_28;
    }

    v36 = sub_1E5A2BE84();
    v21 = swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
    *v38 = &type metadata for WorkoutPlanFilterKind;
    v39 = v49;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v75 + 8))(v39, v18);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v74);
  return v21;
}

unint64_t sub_1E58FCA04()
{
  result = qword_1ECFFCCA0;
  if (!qword_1ECFFCCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCCA8, &qword_1E5A333D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCA0);
  }

  return result;
}

unint64_t sub_1E58FCA68()
{
  result = qword_1ECFFCCB0;
  if (!qword_1ECFFCCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCB0);
  }

  return result;
}

unint64_t sub_1E58FCB70()
{
  result = qword_1ECFFCCB8;
  if (!qword_1ECFFCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCB8);
  }

  return result;
}

unint64_t sub_1E58FCBC8()
{
  result = qword_1ECFFCCC0;
  if (!qword_1ECFFCCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCC0);
  }

  return result;
}

unint64_t sub_1E58FCC20()
{
  result = qword_1ECFFCCC8;
  if (!qword_1ECFFCCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCC8);
  }

  return result;
}

unint64_t sub_1E58FCC78()
{
  result = qword_1ECFFCCD0;
  if (!qword_1ECFFCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCD0);
  }

  return result;
}

unint64_t sub_1E58FCCD0()
{
  result = qword_1ECFFCCD8;
  if (!qword_1ECFFCCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCD8);
  }

  return result;
}

unint64_t sub_1E58FCD28()
{
  result = qword_1ECFFCCE0;
  if (!qword_1ECFFCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCE0);
  }

  return result;
}

unint64_t sub_1E58FCD80()
{
  result = qword_1ECFFCCE8;
  if (!qword_1ECFFCCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCE8);
  }

  return result;
}

unint64_t sub_1E58FCDD8()
{
  result = qword_1ECFFCCF0;
  if (!qword_1ECFFCCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCF0);
  }

  return result;
}

unint64_t sub_1E58FCE30()
{
  result = qword_1ECFFCCF8;
  if (!qword_1ECFFCCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCF8);
  }

  return result;
}

unint64_t sub_1E58FCE88()
{
  result = qword_1ECFFCD00;
  if (!qword_1ECFFCD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD00);
  }

  return result;
}

unint64_t sub_1E58FCEE0()
{
  result = qword_1ECFFCD08;
  if (!qword_1ECFFCD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD08);
  }

  return result;
}

unint64_t sub_1E58FCF38()
{
  result = qword_1ECFFCD10;
  if (!qword_1ECFFCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD10);
  }

  return result;
}

unint64_t sub_1E58FCF90()
{
  result = qword_1ECFFCD18;
  if (!qword_1ECFFCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD18);
  }

  return result;
}

unint64_t sub_1E58FCFE8()
{
  result = qword_1ECFFCD20;
  if (!qword_1ECFFCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD20);
  }

  return result;
}

unint64_t sub_1E58FD040()
{
  result = qword_1ECFFCD28;
  if (!qword_1ECFFCD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD28);
  }

  return result;
}

unint64_t sub_1E58FD098()
{
  result = qword_1ECFFCD30;
  if (!qword_1ECFFCD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD30);
  }

  return result;
}

unint64_t sub_1E58FD0F0()
{
  result = qword_1ECFFCD38;
  if (!qword_1ECFFCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD38);
  }

  return result;
}

unint64_t sub_1E58FD148()
{
  result = qword_1ECFFCD40;
  if (!qword_1ECFFCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD40);
  }

  return result;
}

unint64_t sub_1E58FD1A0()
{
  result = qword_1ECFFCD48;
  if (!qword_1ECFFCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD48);
  }

  return result;
}

unint64_t sub_1E58FD1F8()
{
  result = qword_1ECFFCD50;
  if (!qword_1ECFFCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD50);
  }

  return result;
}

unint64_t sub_1E58FD250()
{
  result = qword_1ECFFCD58;
  if (!qword_1ECFFCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD58);
  }

  return result;
}

FitnessWorkoutPlan::ScheduleReviewPage_optional __swiftcall ScheduleReviewPage.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t *sub_1E58FD2CC@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1E58FD300()
{
  result = qword_1ECFFCDB0;
  if (!qword_1ECFFCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCDB0);
  }

  return result;
}

unint64_t sub_1E58FD358()
{
  result = qword_1ECFFCDB8;
  if (!qword_1ECFFCDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCDC0, &qword_1E5A3C5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCDB8);
  }

  return result;
}

unint64_t sub_1E58FD488()
{
  result = qword_1ECFFCDC8;
  if (!qword_1ECFFCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCDC8);
  }

  return result;
}

uint64_t PreviousPlanLockupEnvironment.init(fetchDetailForIdentifier:repeatPlan:makeWorkoutPlansUpdatedStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t WorkoutPlansState.init(allowWorkoutPlanCreation:allowWorkoutPlanManagement:hasActiveWorkoutPlan:layout:locale:sizeClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_1E58D5C24(a1, a7);
  v13 = type metadata accessor for WorkoutPlansState(0);
  sub_1E58D5C24(a2, a7 + v13[5]);
  sub_1E58D5C24(a3, a7 + v13[6]);
  sub_1E58FD628(a4, a7 + v13[7]);
  v14 = v13[8];
  v15 = sub_1E5A29EB4();
  result = (*(*(v15 - 8) + 32))(a7 + v14, a5, v15);
  *(a7 + v13[9]) = a6;
  return result;
}

uint64_t type metadata accessor for WorkoutPlansState(uint64_t a1)
{
  result = qword_1ECFFCE28;
  if (!qword_1ECFFCE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E58FD628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlansLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58FD698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutPlansState.allowWorkoutPlanManagement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutPlansState(0) + 20);

  return sub_1E58FD698(v3, a1);
}

uint64_t WorkoutPlansState.hasActiveWorkoutPlan.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutPlansState(0) + 24);

  return sub_1E58FD698(v3, a1);
}

uint64_t WorkoutPlansState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlansState(0) + 32);
  v4 = sub_1E5A29EB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_1E58FD87C()
{
  v1 = *v0;
  v2 = 0x74756F79616CLL;
  v3 = 0x656C61636F6CLL;
  if (v1 != 4)
  {
    v3 = 0x73616C43657A6973;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ALL;
  if (v1 != 1)
  {
    v4 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E58FD940@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E58FE9A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58FD968(uint64_t a1)
{
  v2 = sub_1E58FDD04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FD9A4(uint64_t a1)
{
  v2 = sub_1E58FDD04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlansState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCDD0, &qword_1E5A33F08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58FDD04();
  sub_1E5A2C224();
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  sub_1E58FE478(&qword_1ECFFCDE0, MEMORY[0x1E6999B20]);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v9 = type metadata accessor for WorkoutPlansState(0);
    v17 = 1;
    sub_1E5A2C0B4();
    v16 = 2;
    sub_1E5A2C0B4();
    v15 = 3;
    type metadata accessor for WorkoutPlansLayout(0);
    sub_1E58FE4E8(&qword_1ECFFCDE8, type metadata accessor for WorkoutPlansLayout, &protocol conformance descriptor for WorkoutPlansLayout);
    sub_1E5A2C0B4();
    v14 = 4;
    sub_1E5A29EB4();
    sub_1E58FE4E8(&qword_1ECFFCDF0, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5A2C0B4();
    v13 = *(v3 + *(v9 + 36));
    v12 = 5;
    sub_1E58FDD58();
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E58FDD04()
{
  result = qword_1ECFFCDD8;
  if (!qword_1ECFFCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCDD8);
  }

  return result;
}

unint64_t sub_1E58FDD58()
{
  result = qword_1ECFFCDF8;
  if (!qword_1ECFFCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCDF8);
  }

  return result;
}

uint64_t WorkoutPlansState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1E5A29EB4();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for WorkoutPlansLayout(0);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE00, &qword_1E5A33F10);
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v18 = type metadata accessor for WorkoutPlansState(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E58FDD04();
  v41 = v17;
  v22 = v42;
  sub_1E5A2C214();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v23 = v7;
  v50 = 0;
  sub_1E58FE478(&qword_1ECFFCE08, MEMORY[0x1E6999B30]);
  v24 = v38;
  sub_1E5A2BFE4();
  v25 = v13;
  v26 = v20;
  sub_1E58D5C24(v25, v20);
  v49 = 1;
  sub_1E5A2BFE4();
  sub_1E58D5C24(v10, &v20[v18[5]]);
  v48 = 2;
  sub_1E5A2BFE4();
  sub_1E58D5C24(v23, &v20[v18[6]]);
  v47 = 3;
  sub_1E58FE4E8(&qword_1ECFFCE10, type metadata accessor for WorkoutPlansLayout, &protocol conformance descriptor for WorkoutPlansLayout);
  v27 = v34;
  sub_1E5A2BFE4();
  v28 = v39;
  v42 = 0;
  sub_1E58FD628(v27, v26 + v18[7]);
  v46 = 4;
  sub_1E58FE4E8(&qword_1ECFFCE18, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v29 = v33;
  v30 = v37;
  sub_1E5A2BFE4();
  (*(v36 + 32))(v26 + v18[8], v29, v30);
  v44 = 5;
  sub_1E58FE530();
  sub_1E5A2BFE4();
  (*(v28 + 8))(v41, v24);
  *(v26 + v18[9]) = v45;
  sub_1E58FE584(v26, v32, type metadata accessor for WorkoutPlansState);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_1E58FE5EC(v26, type metadata accessor for WorkoutPlansState);
}

uint64_t sub_1E58FE478(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC100, &qword_1E5A2FE90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E58FE4E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E58FE530()
{
  result = qword_1ECFFCE20;
  if (!qword_1ECFFCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCE20);
  }

  return result;
}

uint64_t sub_1E58FE584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E58FE5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s18FitnessWorkoutPlan0B10PlansStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1E5A2B8F4() & 1) != 0 && (v4 = type metadata accessor for WorkoutPlansState(0), (sub_1E5A2B8F4()) && (sub_1E5A2B8F4() & 1) != 0 && (MEMORY[0x1E6930EA0](a1 + v4[7], a2 + v4[7]) & 1) != 0 && (MEMORY[0x1E6930AC0](a1 + v4[8], a2 + v4[8]))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

void sub_1E58FE788(uint64_t a1)
{
  sub_1E58FE834();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WorkoutPlansLayout(319);
    if (v2 <= 0x3F)
    {
      sub_1E5A29EB4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E58FE834()
{
  if (!qword_1ECFFCE38)
  {
    v0 = sub_1E5A2B904();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECFFCE38);
    }
  }
}

unint64_t sub_1E58FE8A0()
{
  result = qword_1ECFFCE40;
  if (!qword_1ECFFCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCE40);
  }

  return result;
}

unint64_t sub_1E58FE8F8()
{
  result = qword_1ECFFCE48;
  if (!qword_1ECFFCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCE48);
  }

  return result;
}

unint64_t sub_1E58FE950()
{
  result = qword_1ECFFCE50;
  if (!qword_1ECFFCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCE50);
  }

  return result;
}

uint64_t sub_1E58FE9A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001E5A46500 == a2;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E5A46520 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5A46540 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

void *sub_1E58FEBD8(uint64_t (*a1)(uint64_t))
{
  v68 = a1;
  v1 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v52 - v5;
  v7 = sub_1E5A29EC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A29FE4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  v19 = *(v8 + 104);
  v61 = *MEMORY[0x1E6969868];
  v59 = v19;
  v60 = v8 + 104;
  v19(v10, v16);
  sub_1E5A29ED4();
  v20 = *(v8 + 8);
  v53 = v10;
  v64 = v8 + 8;
  v65 = v7;
  v58 = v20;
  v20(v10, v7);
  sub_1E5A29F04();
  sub_1E5A29E94();
  v21 = sub_1E5A29EB4();
  v22 = *(v21 - 8);
  v56 = *(v22 + 56);
  v57 = v21;
  v55 = v22 + 56;
  v56(v6, 0, 1);
  v66 = v6;
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  v67 = v3;
  sub_1E5A29FB4();
  v23 = sub_1E5A29F64();
  v24 = *(v12 + 8);
  v62 = v12 + 8;
  v63 = v11;
  v54 = v24;
  v24(v18, v11);
  v25 = *(v23 + 16);

  v26 = sub_1E590E188(MEMORY[0x1E69E7CC0]);
  if (!v25)
  {
    return v26;
  }

  v27 = 0;
  while (1)
  {
    if (v27 > 6)
    {
      goto LABEL_4;
    }

    v29 = v53;
    v30 = v65;
    v59(v53, v61, v65);
    sub_1E5A29ED4();
    v58(v29, v30);
    sub_1E5A29F04();
    v31 = v66;
    sub_1E5A29E94();
    (v56)(v31, 0, 1, v57);
    sub_1E5A29FA4();
    sub_1E5A29FF4();
    v32 = sub_1E5A29FB4();
    v33 = v68(v32);
    v54(v14, v63);
    v34 = v27 + 2;
    if ((v27 + 2) == 8)
    {
      v34 = 1;
    }

    if (*(v33 + 16) < v34)
    {
      break;
    }

    v35 = (v33 + 16 + 16 * v34);
    v36 = *v35;
    v37 = v35[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v26;
    v40 = sub_1E58EF8CC(v27);
    v41 = v26[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_22;
    }

    v44 = v39;
    if (v26[3] >= v43)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = v69;
        if (v39)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1E5900924();
        v26 = v69;
        if (v44)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1E59011C0(v43, isUniquelyReferenced_nonNull_native);
      v45 = sub_1E58EF8CC(v27);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_24;
      }

      v40 = v45;
      v26 = v69;
      if (v44)
      {
LABEL_3:
        v28 = (v26[7] + 16 * v40);
        *v28 = v36;
        v28[1] = v37;

        goto LABEL_4;
      }
    }

    v26[(v40 >> 6) + 8] |= 1 << v40;
    *(v26[6] + v40) = v27;
    v47 = (v26[7] + 16 * v40);
    *v47 = v36;
    v47[1] = v37;
    v48 = v26[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_23;
    }

    v26[2] = v50;
LABEL_4:
    if (v25 == ++v27)
    {
      return v26;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1E5A2C134();
  __break(1u);
  return result;
}

Swift::Int __swiftcall Calendar.normalizedWeekdayIndex(_:)(Swift::Int a1)
{
  v2 = *(sub_1E5A29F34() + 16);

  v3 = sub_1E5A29EF4();
  v4 = __OFSUB__(a1, v3);
  result = a1 - v3;
  if (v4)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  v6 = -result;
  if (__OFSUB__(0, result))
  {
    goto LABEL_7;
  }

  result += v2;
  if (__OFSUB__(v2, v6))
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t Calendar.endOfDay(_:)@<X0>(uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1E5A29FC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE58, &qword_1E5A340E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = sub_1E5A29E34();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  sub_1E5A29EE4();
  v18 = *MEMORY[0x1E6969A48];
  v32 = *(v4 + 104);
  v32(v6, v18, v3);
  v36 = v2;
  sub_1E5A29F94();
  v19 = *(v4 + 8);
  v33 = v4 + 8;
  v19(v6, v3);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    (*(v13 + 8))(v17, v12);
  }

  else
  {
    v21 = *(v13 + 32);
    v30 = v13 + 32;
    v31 = v20;
    v22 = v34;
    v29 = v21;
    v21(v34, v11, v12);
    v32(v6, *MEMORY[0x1E6969A98], v3);
    v23 = v35;
    sub_1E5A29F94();
    v19(v6, v3);
    v24 = *(v13 + 8);
    v24(v22, v12);
    v24(v17, v12);
    if (v31(v23, 1, v12) != 1)
    {
      v25 = v37;
      v29(v37, v23, v12);
      v26 = 0;
      return (*(v13 + 56))(v25, v26, 1, v12);
    }

    v11 = v23;
  }

  v25 = v37;
  sub_1E58FF53C(v11);
  v26 = 1;
  return (*(v13 + 56))(v25, v26, 1, v12);
}

uint64_t sub_1E58FF53C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE58, &qword_1E5A340E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Calendar.availableDays(for:schedule:)(uint64_t a1, uint64_t *a2)
{
  v25[1] = a1;
  v3 = sub_1E5A29E34();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v25 - v8;
  v10 = sub_1E5A29EC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A29FE4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  (*(v11 + 104))(v13, *MEMORY[0x1E6969868], v10, v16);
  sub_1E5A29ED4();
  (*(v11 + 8))(v13, v10);
  sub_1E5A29F04();
  sub_1E5A29E94();
  v20 = sub_1E5A29EB4();
  (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  sub_1E5A29EE4();
  v34 = v18;
  v35 = v5;
  v21 = sub_1E58FFAA4(sub_1E58FFA88, v33, 0, 7);
  v31 = v18;
  v32 = v19;
  sub_1E5900358(sub_1E58FFF88, v30, v21);
  v29 = v18;
  v23 = sub_1E58FFFA8(sub_1E59007A8, v28, v22);

  (*(v26 + 8))(v5, v27);
  (*(v15 + 8))(v18, v14);
  return v23;
}

uint64_t sub_1E58FF960(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E5A29FC4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E6969A48], v3, v5);
  sub_1E5A29F94();
  return (*(v4 + 8))(v7, v3);
}

void *sub_1E58FFAA4(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE58, &qword_1E5A340E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1E5A29E34();
  MEMORY[0x1EEE9AC00](v11);
  v32 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v27 = &v26 - v15;
  v28 = v16;
  v17 = (v16 + 48);
  v31 = (v16 + 32);
  v18 = MEMORY[0x1E69E7CC0];
  v29 = a1;
  v30 = a4;
  while (1)
  {
    v34 = a3;
    (a1)(&v34, v14);
    if (v4)
    {
      break;
    }

    if ((*v17)(v10, 1, v11) == 1)
    {
      result = sub_1E58FF53C(v10);
    }

    else
    {
      v20 = v17;
      v21 = *v31;
      v22 = v27;
      (*v31)(v27, v10, v11);
      v21(v32, v22, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1E58E6CA4(0, v18[2] + 1, 1, v18);
      }

      v24 = v18[2];
      v23 = v18[3];
      if (v24 >= v23 >> 1)
      {
        v18 = sub_1E58E6CA4((v23 > 1), v24 + 1, 1, v18);
      }

      v18[2] = v24 + 1;
      result = (v21)(v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, v32, v11);
      a1 = v29;
      a4 = v30;
      v17 = v20;
    }

    if (a4 == a3)
    {
      return v18;
    }

    if (__OFADD__(a3++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return v18;
}

uint64_t sub_1E58FFD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E5A29FC4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x1E6969AB0], v5, v7);
  v10 = sub_1E5A29FD4();
  (*(v6 + 8))(v9, v5);
  v11 = *(sub_1E5A29F34() + 16);

  v12 = sub_1E5A29EF4();
  v13 = __OFSUB__(v10, v12);
  v14 = v10 - v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v14 < 0)
  {
    v15 = -v14;
    if (!__OFSUB__(0, v14))
    {
      v14 += v11;
      if (!__OFSUB__(v11, v15))
      {
        goto LABEL_5;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_5:
  if (!a3)
  {
    return 0;
  }

  v16 = sub_1E591B840(a3);
  if (*(v16 + 16))
  {
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
    v18 = sub_1E5A2BF14();
    v16 = v17;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC8];
  }

  v27 = v18;
  sub_1E591C604(v16, 1, &v27);
  if (!v3)
  {
    v20 = sub_1E590011C(v27);

    v21 = *(v20 + 16);
    v22 = 32;
    do
    {
      v23 = v21-- != 0;
      v19 = v23;
      if (!v23)
      {
        break;
      }

      v24 = *(v20 + v22);
      v22 += 8;
    }

    while (v24 != v14);

    return v19;
  }

LABEL_23:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1E58FFFA8(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1E590DE28(0, v4, 0);
  v5 = v20;
  v8 = *(sub_1E5A29E34() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v18, v9);
    if (v3)
    {
      break;
    }

    v11 = v18;
    v12 = v19;
    v20 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v18;
      sub_1E590DE28((v13 > 1), v14 + 1, 1);
      v11 = v17;
      v5 = v20;
    }

    *(v5 + 16) = v14 + 1;
    v15 = v5 + 24 * v14;
    *(v15 + 32) = v11;
    *(v15 + 48) = v12;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E590011C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v23 = *(a1 + 16);
  sub_1E590DE68(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1E5A2BDE4();
  v6 = v23;
  v7 = 0;
  v8 = *(a1 + 36);
  v24 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(a1 + 48) + result);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = result;
      sub_1E590DE68((v13 > 1), v14 + 1, 1);
      v6 = v23;
      v8 = v24;
      result = v22;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v15 = *(v4 + 8 * v10);
    if ((v15 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v19 = (a1 + 72 + 8 * v10);
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1E5901D04(result, v24, 0);
          v6 = v23;
          v8 = v24;
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1E5901D04(result, v24, 0);
      v6 = v23;
      v8 = v24;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v6)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

void sub_1E5900358(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = sub_1E5A29E34();
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v37 = &v27 - v11;
  v34 = *(a3 + 16);
  if (v34)
  {
    v12 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = MEMORY[0x1E69E7CC0];
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = *(v9 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v9;
      v18 = a1;
      v19 = v37;
      (*(v9 + 16))(v37, v16, v38, v10);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v31)(v37, v38);

        return;
      }

      if (v21)
      {
        v22 = *v32;
        (*v32)(v35, v37, v38);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E590DE48(0, *(v23 + 16) + 1, 1);
          v23 = v39;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1E590DE48((v25 > 1), v26 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v26 + 1;
        v36 = v23;
        v22((v23 + v13 + v26 * v14), v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        (*v31)(v37, v38);
        a3 = v15;
      }

      ++v12;
      v9 = v17;
      if (v34 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
LABEL_14:
  }
}

uint64_t sub_1E5900628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1E5A29FE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A29E34();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  return CalendarDay.init(date:in:)(v13, v9, a3);
}

void *sub_1E59007C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
  v2 = *v0;
  v3 = sub_1E5A2BEF4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1E5900924()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE60, &qword_1E5A340F0);
  v2 = *v0;
  v3 = sub_1E5A2BEF4();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_1E5900A8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE68, &qword_1E5A340F8);
  v2 = *v0;
  v3 = sub_1E5A2BEF4();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = (*(v4 + 48) + 32 * v17);
        v21 = v18[1];
        *v20 = *v18;
        v20[1] = v21;
        *(*(v4 + 56) + 8 * v17) = v19;
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

void *sub_1E5900BF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE70, &qword_1E5A34100);
  v2 = *v0;
  v3 = sub_1E5A2BEF4();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;
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

void *sub_1E5900D90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE78, &qword_1E5A34108);
  v2 = *v0;
  v3 = sub_1E5A2BEF4();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_1E58BD154(&v32, &v31);
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

uint64_t sub_1E5900F30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
  v30 = v4;
  result = sub_1E5A2BF04();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v20);
      result = sub_1E5A2C204();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1E59011C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE60, &qword_1E5A340F0);
  v32 = v4;
  result = sub_1E5A2BF04();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v21);
      result = sub_1E5A2C204();
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
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1E5901460(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE68, &qword_1E5A340F8);
  result = sub_1E5A2BF04();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 32 * v20);
      v31 = v21[1];
      v32 = *v21;
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v4 & 1) == 0)
      {
      }

      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v32);
      MEMORY[0x1E6932DE0](*(&v32 + 1));
      MEMORY[0x1E6932DE0](v31);
      MEMORY[0x1E6932DE0](*(&v31 + 1));
      result = sub_1E5A2C204();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v32;
      v16[1] = v31;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1E5901728(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE70, &qword_1E5A34100);
  v38 = v4;
  result = sub_1E5A2BF04();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v40 = *v24;
      v41 = *v22;
      v27 = v24[2];
      v26 = v24[3];
      if ((v38 & 1) == 0)
      {
      }

      sub_1E5A2C1B4();
      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      v12 = v39;
      *v17 = v40;
      v17[1] = v25;
      v17[2] = v27;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1E5901A08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE78, &qword_1E5A34108);
  v37 = v4;
  result = sub_1E5A2BF04();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + (v21 << 6));
      if (v37)
      {
        v38 = *v25;
        v39 = v25[1];
        v40 = v25[2];
        v41 = v25[3];
      }

      else
      {
        v26 = *v25;
        v27 = v25[1];
        v28 = v25[3];
        v43 = v25[2];
        v44 = v28;
        v42[0] = v26;
        v42[1] = v27;
        v40 = v43;
        v41 = v28;
        v38 = v26;
        v39 = v27;

        sub_1E58BD154(v42, v45);
      }

      sub_1E5A2C1B4();
      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + (v15 << 6));
      *v17 = v38;
      v17[1] = v39;
      v17[2] = v40;
      v17[3] = v41;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1E5901D04(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t BodyFocusSelectionView.init(store:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  result = sub_1E5A2A654();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E5901DA0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for EditItem(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = *a1;
  v13 = a1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v14 = *&v11[*(v6 + 40)];

  sub_1E58F00BC(v11, type metadata accessor for EditItem);
  if (v14)
  {
    if (*(v14 + 16))
    {
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](0);
      sub_1E5A2BB74();
      v15 = sub_1E5A2C204();
      v16 = -1 << *(v14 + 32);
      v17 = v15 & ~v16;
      if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        v19 = *(v14 + 48);
        while (1)
        {
          v20 = v19 + 24 * v17;
          if (!*(v20 + 16))
          {
            v21 = *v20 == v12 && *(v20 + 8) == v13;
            if (v21 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }
          }

          v17 = (v17 + 1) & v18;
          if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

LABEL_25:

        return 1;
      }
    }

LABEL_26:

    return 0;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  sub_1E58EFFE4(v8, v4);
  sub_1E58F00BC(v8, type metadata accessor for EditItem);
  v22 = type metadata accessor for WorkoutPlanScheduledItem(0);
  if ((*(*(v22 - 8) + 48))(v4, 1, v22) != 1)
  {
    v23 = *(v4 + 1);

    sub_1E58F00BC(v4, type metadata accessor for WorkoutPlanScheduledItem);
    if (*(v23 + 16))
    {
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](0);
      sub_1E5A2BB74();
      v24 = sub_1E5A2C204();
      v25 = -1 << *(v23 + 32);
      v26 = v24 & ~v25;
      if ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        v27 = ~v25;
        v28 = *(v23 + 48);
        while (1)
        {
          v29 = v28 + 24 * v26;
          if (!*(v29 + 16))
          {
            v30 = *v29 == v12 && *(v29 + 8) == v13;
            if (v30 || (sub_1E5A2C114() & 1) != 0)
            {
              goto LABEL_25;
            }
          }

          v26 = (v26 + 1) & v27;
          if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }
    }

    goto LABEL_26;
  }

  sub_1E58BAD14(v4, &qword_1ECFFB790, &qword_1E5A2D620);
  return 0;
}

uint64_t sub_1E5902174(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v43 - v3;
  v4 = type metadata accessor for EditItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = *a1;
  v14 = a1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v15 = &v12[*(v4 + 36)];
  v17 = *v15;
  v16 = v15[1];

  sub_1E58F00BC(v12, type metadata accessor for EditItem);
  if (!v16)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v18 = v44;
  if (!*(v44 + 16))
  {

    goto LABEL_7;
  }

  v19 = sub_1E58EF508(v17, v16);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v22 = *(*(v18 + 56) + (v19 << 6));

  v23 = sub_1E59E8F3C(v13, v14, v22);

  if ((v23 & 1) == 0)
  {
    return 1;
  }

LABEL_8:
  swift_getKeyPath();

  sub_1E5A2B934();

  v25 = *&v9[*(v4 + 32)];

  result = sub_1E58F00BC(v9, type metadata accessor for EditItem);
  if (!v25)
  {
    swift_getKeyPath();

    sub_1E5A2B934();

    v27 = v43;
    sub_1E58EFFE4(v6, v43);
    sub_1E58F00BC(v6, type metadata accessor for EditItem);
    v28 = type metadata accessor for WorkoutPlanScheduledItem(0);
    if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
    {
      sub_1E58BAD14(v27, &qword_1ECFFB790, &qword_1E5A2D620);
      return 0;
    }

    v25 = *(v27 + 8);

    result = sub_1E58F00BC(v27, type metadata accessor for WorkoutPlanScheduledItem);
  }

  v29 = 0;
  v30 = v25 + 56;
  v31 = 1 << *(v25 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v25 + 56);
  do
  {
    if (!v33)
    {
      while (1)
      {
        v34 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          return result;
        }

        if (v34 >= ((v31 + 63) >> 6))
        {
          break;
        }

        v33 = *(v30 + 8 * v34);
        ++v29;
        if (v33)
        {
          v29 = v34;
          goto LABEL_21;
        }
      }

      v24 = 0;
      if (!*(v25 + 16))
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

    v34 = v29;
LABEL_21:
    v35 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
  }

  while (*(*(v25 + 48) + 24 * (v35 | (v34 << 6)) + 16));
  v24 = 1;
  if (!*(v25 + 16))
  {
    goto LABEL_35;
  }

LABEL_25:
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](0);
  sub_1E5A2BB74();
  v36 = sub_1E5A2C204();
  v37 = -1 << *(v25 + 32);
  v38 = v36 & ~v37;
  if (((*(v30 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
  {
LABEL_35:

    return v24;
  }

  v39 = ~v37;
  v40 = *(v25 + 48);
  while (1)
  {
    v41 = v40 + 24 * v38;
    if (!*(v41 + 16))
    {
      v42 = *v41 == v13 && *(v41 + 8) == v14;
      if (v42 || (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }
    }

    v38 = (v38 + 1) & v39;
    if (((*(v30 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  return 0;
}

uint64_t sub_1E5902690(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  sub_1E5A2B934();

  v9[0] = v8[0];
  v9[1] = v8[1];
  v9[2] = v8[2];
  v9[3] = v8[3];

  sub_1E58F011C(v9);

  v3 = sub_1E5905490(*&v8[0], a1);

  v4 = v3[2];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_1E5A206BC(v3[2], 0);
  v6 = sub_1E5A234FC();

  sub_1E58D26C0(*&v8[0]);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x1E69E7CC0];
  }

  *&v8[0] = v5;
  sub_1E590478C(v8);

  return *&v8[0];
}

void sub_1E59027F8(uint64_t a1)
{
  v2 = sub_1E5A2B764();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E5A2B774();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ceil(*(a1 + 16) * 0.5);
  if (v9 == INFINITY)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    v10 = v9;
    *v5 = xmmword_1E5A317E0;
    (*(v3 + 104))(v5, *MEMORY[0x1E697D748], v2);
    sub_1E5A2B784();
    sub_1E59E9100(v8, v10);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1E59029A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *v2;
  v9 = v2[1];
  v17 = *v2;
  v18 = v9;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  if (sub_1E5902174(&v13))
  {
    result = sub_1E5A2ABA4();
    v11 = MEMORY[0x1E697FE70];
    *(a2 + 24) = MEMORY[0x1E697FE80];
    *(a2 + 32) = v11;
    *a2 = result;
  }

  else
  {
    v17 = v8;
    v18 = v9;
    v13 = v4;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    if (sub_1E5901DA0(&v13))
    {
      result = sub_1E5A2B404();
    }

    else
    {
      result = sub_1E5A2B424();
    }

    v12 = MEMORY[0x1E6981568];
    *(a2 + 24) = MEMORY[0x1E69815C0];
    *(a2 + 32) = v12;
    *a2 = result;
  }

  return result;
}

uint64_t BodyFocusSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  MEMORY[0x1EEE9AC00](v38);
  v42 = v36 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE88, &qword_1E5A34110);
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v36 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE90, &qword_1E5A34118);
  MEMORY[0x1EEE9AC00](v40);
  v41 = v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE98, &qword_1E5A34120);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v36 - v9;
  v10 = type metadata accessor for EditItem(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v14 = v1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v16 = &v13[*(v11 + 44)];
  v18 = *v16;
  v17 = v16[1];

  sub_1E58F00BC(v13, type metadata accessor for EditItem);
  if (!v17)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v19 = v46[0];
  if (!*(v46[0] + 16))
  {

    goto LABEL_7;
  }

  v20 = sub_1E58EF508(v18, v17);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_7:

LABEL_8:
    v35 = 1;
    v34 = v43;
    return (*(v8 + 56))(v34, v35, 1, v7);
  }

  v23 = *(*(v19 + 56) + (v20 << 6));

  v36[3] = v36;
  MEMORY[0x1EEE9AC00](v24);
  v36[2] = &v36[-6];
  v36[-4] = v15;
  v36[-3] = v14;
  v36[-2] = v23;
  sub_1E59040A4(v46);
  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC670, &unk_1E5A37DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCEA0, &unk_1E5A34170);
  sub_1E58EF58C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCEA8, &unk_1E5A34180);
  v26 = sub_1E58CD164(&qword_1ECFFCEB0, &qword_1ECFFCEA8, &unk_1E5A34180, MEMORY[0x1E697BE60]);
  v44 = v25;
  v45 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B714();

  sub_1E5A2ADF4();
  sub_1E59042D8();
  v27 = v41;
  sub_1E5A2B134();
  (*(v39 + 8))(v5, v3);
  v46[0] = sub_1E5A2B414();
  *(v27 + *(v40 + 36)) = sub_1E5A2B634();
  v28 = *MEMORY[0x1E697E728];
  v29 = sub_1E5A2A684();
  v30 = v42;
  (*(*(v29 - 8) + 104))(v42, v28, v29);
  sub_1E5904640(&qword_1ECFFBF40, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E59043E8();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
    v32 = v37;
    sub_1E5A2B164();
    sub_1E58BAD14(v30, &qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E58BAD14(v27, &qword_1ECFFCE90, &qword_1E5A34118);
    v33 = v43;
    (*(v8 + 32))(v43, v32, v7);
    v34 = v33;
    v35 = 0;
    return (*(v8 + 56))(v34, v35, 1, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5903138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = sub_1E5A2AAC4();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCEA8, &unk_1E5A34180);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  sub_1E5A2AD64();
  v16 = a1;
  v17 = a2;
  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCEE0, &qword_1E5A34250);
  sub_1E58CD164(&qword_1ECFFCEE8, &qword_1ECFFCEE0, &qword_1E5A34250, MEMORY[0x1E697D7A0]);
  sub_1E5A2A4C4();
  sub_1E5A2AAB4();
  LOBYTE(a2) = sub_1E5A2AD64();
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != a2)
  {
    sub_1E5A2AD74();
  }

  sub_1E58CD164(&qword_1ECFFCEB0, &qword_1ECFFCEA8, &unk_1E5A34180, MEMORY[0x1E697BE60]);
  sub_1E5A2B234();
  (*(v6 + 8))(v8, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E59033C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E5A2AB24();
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1E5902690(a3, v5);
  sub_1E59027F8(v6);

  sub_1E5A2A934();
  sub_1E5904640(&qword_1EE2CFAF0, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1E5A2C264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCEF0, &qword_1E5A34258);
  sub_1E5904688();
  return sub_1E5A2B824();
}

uint64_t sub_1E5903550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E5902690(a3, a2);
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCF00, &qword_1E5A34298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC718, &unk_1E5A342A0);
  sub_1E58CD164(qword_1ECFFCF08, &qword_1ECFFCF00, &qword_1E5A34298, MEMORY[0x1E69E6338]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6E8, &unk_1E5A34260);
  sub_1E58EFC30();
  sub_1E58EFCE8();
  swift_getOpaqueTypeConformance2();
  return sub_1E5A2B6E4();
}

uint64_t sub_1E59036D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC6E8, &unk_1E5A34260);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v10;
  v14[5] = v11;
  v14[6] = v12;
  v14[7] = v13;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = v10;
  v16[7] = v11;
  v16[8] = v12;
  v16[9] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC728, &unk_1E5A31980);
  sub_1E58EFDB8();
  sub_1E5A2B574();
  v17[4] = a2;
  v17[5] = a3;
  v17[0] = v10;
  v17[1] = v11;
  v17[2] = v12;
  v17[3] = v13;
  v9[*(v7 + 36)] = (sub_1E5902174(v17) & 1) == 0;
  sub_1E58EFC30();
  sub_1E58EFCE8();
  sub_1E5A2B0C4();
  return sub_1E58BAD14(v9, &qword_1ECFFC6E8, &unk_1E5A34260);
}

uint64_t sub_1E5903898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14[8] = 1;
  *v12 = 7;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = 0;
  v12[32] = 1;
  *(v12 + 5) = a3;
  *(v12 + 6) = a4;
  *(v12 + 7) = a5;
  *(v12 + 8) = a6;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 104) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 152) = 0u;
  *(v12 + 168) = 0u;
  *(v12 + 46) = 0;
  swift_storeEnumTagMultiPayload();

  sub_1E5A2B954();
  return sub_1E58F00BC(v12, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E59039B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v55 = a5;
  v9 = a4;
  v60 = a4;
  v10 = a3;
  v59 = a3;
  v58 = a2;
  v57 = a1;
  v65 = a7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC778, &unk_1E5A319D0);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v53 = v52 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC750, &unk_1E5A31990) - 8;
  MEMORY[0x1EEE9AC00](v61);
  v66 = v52 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC740, &unk_1E5A342B0) - 8;
  MEMORY[0x1EEE9AC00](v62);
  v56 = v52 - v15;
  v71 = a1;
  v72 = a2;
  v67 = v10;
  v68 = v9;
  v69 = a5;
  v70 = a6;
  sub_1E59029A0(&v67, &v73);
  v52[2] = v75;
  v52[1] = __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
  v67 = a5;
  v68 = a6;
  v54 = a6;
  sub_1E58D1C80();

  v16 = sub_1E5A2AFD4();
  v18 = v17;
  v20 = v19;
  sub_1E5A2AED4();
  sub_1E5A2AE24();

  v21 = sub_1E5A2AFA4();
  v23 = v22;
  LOBYTE(v9) = v24;

  sub_1E58B3C9C(v16, v18, v20 & 1);

  v25 = sub_1E5A2AF84();
  v27 = v26;
  LOBYTE(v10) = v28;
  v30 = v29;
  sub_1E58B3C9C(v21, v23, v9 & 1);

  v67 = v25;
  v68 = v27;
  LOBYTE(v69) = v10 & 1;
  v70 = v30;
  sub_1E5A2AD64();
  sub_1E5A2B7E4();
  v31 = v53;
  sub_1E5A2B274();
  sub_1E58B3C9C(v25, v27, v10 & 1);

  __swift_destroy_boxed_opaque_existential_1(&v73);
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  v32 = v66;
  (*(v63 + 32))(v66, v31, v64);
  v33 = (v32 + *(v61 + 44));
  v34 = v78;
  v33[4] = v77;
  v33[5] = v34;
  v33[6] = v79;
  v35 = v74;
  *v33 = v73;
  v33[1] = v35;
  v36 = v76;
  v33[2] = v75;
  v33[3] = v36;
  v64 = sub_1E5A2B7E4();
  v38 = v37;
  v39 = v56;
  v40 = &v56[*(v62 + 44)];
  sub_1E5903FA0(v57, v58, v59, v60, v55, v54, &v67);
  v41 = v67;
  LOBYTE(v27) = v68;
  v42 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC780, &unk_1E5A342F0) + 36)];
  v43 = *MEMORY[0x1E697F468];
  v44 = sub_1E5A2A9B4();
  v45 = *(*(v44 - 8) + 104);
  v45(v42, v43, v44);
  *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)] = 256;
  *v40 = v41;
  v40[8] = v27;
  v46 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC760, &qword_1E5A342C0) + 36)];
  *v46 = v64;
  v46[1] = v38;
  v47 = v39;
  sub_1E58F0054(v66, v39, &qword_1ECFFC750, &unk_1E5A31990);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC728, &unk_1E5A31980);
  v49 = v65;
  v50 = v65 + *(v48 + 36);
  v45(v50, v43, v44);
  *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC770, &unk_1E5A319A0) + 36)) = 0;
  return sub_1E58F0054(v47, v49, &qword_1ECFFC740, &unk_1E5A342B0);
}

uint64_t sub_1E5903FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = a1;
  v15 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (sub_1E5901DA0(&v10))
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED026498;
    LOBYTE(v15) = 0;
  }

  else
  {
    if (qword_1ECFFB488 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED0264A8;
    LOBYTE(v15) = 1;
  }

  result = sub_1E5A2AA74();
  v9 = v11;
  *a7 = v10;
  *(a7 + 8) = v9;
  return result;
}

void sub_1E59040A4(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE2D33E0;
  swift_getKeyPath();
  v5 = v4;
  sub_1E5A2B944();

  v6 = sub_1E5A2AF64();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  LOBYTE(v4) = v10 & 1;
  v13 = sub_1E5A2ADC4();
  sub_1E5A2A424();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v4;
  *(a1 + 24) = v12;
  *(a1 + 96) = v22;
  *(a1 + 112) = v23;
  *(a1 + 128) = v24;
  *(a1 + 32) = v18;
  *(a1 + 48) = v19;
  *(a1 + 64) = v20;
  *(a1 + 80) = v21;
  *(a1 + 144) = v13;
  *(a1 + 152) = v14;
  *(a1 + 160) = v15;
  *(a1 + 168) = v16;
  *(a1 + 176) = v17;
  *(a1 + 184) = 0;
}

unint64_t sub_1E59042D8()
{
  result = qword_1ECFFCEB8;
  if (!qword_1ECFFCEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE88, &qword_1E5A34110);
    sub_1E58EF58C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCEA8, &unk_1E5A34180);
    sub_1E58CD164(&qword_1ECFFCEB0, &qword_1ECFFCEA8, &unk_1E5A34180, MEMORY[0x1E697BE60]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCEB8);
  }

  return result;
}

unint64_t sub_1E59043E8()
{
  result = qword_1ECFFCEC0;
  if (!qword_1ECFFCEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE90, &qword_1E5A34118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE88, &qword_1E5A34110);
    sub_1E59042D8();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFC6B8, &qword_1ECFFC6C0, &qword_1E5A31900, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCEC0);
  }

  return result;
}

unint64_t sub_1E5904508()
{
  result = qword_1ECFFCED0;
  if (!qword_1ECFFCED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCED8, &qword_1E5A34228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE90, &qword_1E5A34118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E59043E8();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCED0);
  }

  return result;
}

uint64_t sub_1E5904640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5904688()
{
  result = qword_1ECFFCEF8;
  if (!qword_1ECFFCEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCEF0, &qword_1E5A34258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6E8, &unk_1E5A34260);
    sub_1E58EFC30();
    sub_1E58EFCE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCEF8);
  }

  return result;
}

uint64_t sub_1E590478C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A22690(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E59047F8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E59047F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E5A2C0E4();
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
        v5 = sub_1E5A2BC24();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E59049C0(v7, v8, a1, v4);
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
    return sub_1E59048F0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E59048F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 32 * v4;
    result = *(v9 + 16);
    v10 = *(v9 + 24);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 16) && v10 == *(v12 + 24);
      if (v13 || (result = sub_1E5A2C114(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
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

      v14 = *(v12 + 32);
      v15 = *(v12 + 40);
      result = *(v12 + 48);
      v10 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = result;
      *(v12 + 24) = v10;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E59049C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v8 = *v96;
    if (!*v96)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1E5A21290(v7);
      v7 = result;
    }

    v87 = v7 + 16;
    v88 = *(v7 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = &v7[16 * v88];
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1E5904F9C((*a3 + 32 * *v89), (*a3 + 32 * *v91), (*a3 + 32 * v92), v8);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_129;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_130;
        }

        *v89 = v90;
        *(v89 + 1) = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_131;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3 + 32 * v6;
      result = *(v9 + 16);
      v10 = *a3 + 32 * v8;
      if (result == *(v10 + 16) && *(v9 + 24) == *(v10 + 24))
      {
        v12 = 0;
      }

      else
      {
        result = sub_1E5A2C114();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = (v10 + 88);
        do
        {
          result = *(v13 - 1);
          if (result == *(v13 - 5) && *v13 == *(v13 - 4))
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1E5A2C114();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          v13 += 4;
          ++v6;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v15 = 32 * v6 - 16;
          v16 = (32 * v8) | 0x18;
          v17 = v6;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v19 = (v25 + v16);
              v20 = (v25 + v15);
              v21 = *(v19 - 3);
              v22 = *(v19 - 1);
              v23 = *v19;
              v24 = *v20;
              *(v19 - 3) = *(v20 - 1);
              *(v19 - 1) = v24;
              *(v20 - 1) = v21;
              *v20 = v22;
              *(v20 + 1) = v23;
            }

            ++v18;
            v15 -= 32;
            v16 += 32;
          }

          while (v18 < v17);
        }
      }
    }

    v26 = a3[1];
    if (v6 < v26)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v26)
        {
          v27 = a3[1];
        }

        else
        {
          v27 = v8 + a4;
        }

        if (v27 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v27)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v42 = *(v7 + 2);
    v41 = *(v7 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1E58E6258((v41 > 1), v42 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v43;
    v44 = &v7[16 * v42];
    *(v44 + 4) = v8;
    *(v44 + 5) = v6;
    v45 = *v96;
    if (!*v96)
    {
      goto LABEL_142;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v7 + 4);
          v48 = *(v7 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_74:
          if (v50)
          {
            goto LABEL_120;
          }

          v63 = &v7[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_123;
          }

          v69 = &v7[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_127;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v73 = &v7[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_88:
        if (v68)
        {
          goto LABEL_122;
        }

        v76 = &v7[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v84 = *&v7[16 * v8 + 32];
        v85 = *&v7[16 * v46 + 40];
        sub_1E5904F9C((*a3 + 32 * v84), (*a3 + 32 * *&v7[16 * v46 + 32]), (*a3 + 32 * v85), v45);
        if (v4)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1E5A21290(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v86 = &v7[16 * v8];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_1E5A21204(v46);
        v43 = *(v7 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v7[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_118;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_119;
      }

      v58 = &v7[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_121;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_124;
      }

      if (v62 >= v54)
      {
        v80 = &v7[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_128;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v6 - 32;
  v94 = v8;
  v30 = (v8 - v6);
LABEL_43:
  v31 = v28 + 32 * v6;
  v32 = *(v31 + 16);
  v33 = *(v31 + 24);
  v34 = v30;
  v35 = v29;
  while (1)
  {
    v36 = v32 == *(v35 + 16) && v33 == *(v35 + 24);
    if (v36 || (result = sub_1E5A2C114(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v29 += 32;
      --v30;
      if (v6 != v27)
      {
        goto LABEL_43;
      }

      v6 = v27;
      v8 = v94;
      goto LABEL_54;
    }

    if (!v28)
    {
      break;
    }

    v37 = *(v35 + 32);
    v38 = *(v35 + 40);
    v32 = *(v35 + 48);
    v33 = *(v35 + 56);
    v39 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v39;
    *v35 = v37;
    *(v35 + 8) = v38;
    *(v35 + 16) = v32;
    *(v35 + 24) = v33;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1E5904F9C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (!v17 && (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v5 -= 32;
    do
    {
      v18 = *(v14 - 2) == *(v6 - 2) && *(v14 - 1) == *(v6 - 1);
      if (!v18 && (sub_1E5A2C114() & 1) != 0)
      {
        v21 = v6 - 32;
        if (v5 + 32 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      v19 = v14 - 32;
      if (v5 + 32 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

unint64_t *sub_1E59051C4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1E5905260(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_1E5905260(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = result;
  v27 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v29 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v26 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 32 * v26);
      v15 = *v14;
      v16 = v14[1];
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      v17 = sub_1E5A2C204();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      if ((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a4 + 48) + 16 * v19);
          v22 = *v21 == v15 && v21[1] == v16;
          if (v22 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_26:

          return sub_1E59E07AC(v25, a2, v27, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
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
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1E5905490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v43 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v35[1] = v3;
    v35[2] = v35;
    v36 = v8;
    MEMORY[0x1EEE9AC00](v10);
    v37 = v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v9);
    v40 = 0;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v42 = a2 + 56;
    v38 = v5;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v11 << 6);
      if (*(a2 + 16))
      {
        v20 = *(v5 + 48);
        v39 = v19;
        v21 = (v20 + 32 * v19);
        v3 = *v21;
        v22 = v21[1];
        v23 = v21[3];
        sub_1E5A2C1B4();

        v41 = v23;

        sub_1E5A2BB74();
        v24 = sub_1E5A2C204();
        v25 = a2;
        v26 = -1 << *(a2 + 32);
        v9 = v24 & ~v26;
        if ((*(v42 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v27 = ~v26;
          while (1)
          {
            v28 = (*(v25 + 48) + 16 * v9);
            v29 = *v28 == v3 && v28[1] == v22;
            if (v29 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }

            v9 = (v9 + 1) & v27;
            if (((*(v42 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          *&v37[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
          v30 = __OFADD__(v40++, 1);
          a2 = v25;
          v5 = v38;
          if (v30)
          {
            __break(1u);
LABEL_27:
            v31 = sub_1E59E07AC(v37, v36, v40, v5);

            return v31;
          }
        }

        else
        {
LABEL_6:

          a2 = v25;
          v5 = v38;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_27;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();

  v34 = sub_1E59051C4(v33, v8, v5, a2);

  MEMORY[0x1E6933430](v33, -1, -1);

  return v34;
}

uint64_t sub_1E5905818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6961466863746566 && a2 == 0xEB0000000064656CLL;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6365536863746566 && a2 == 0xEC0000006E6F6974 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657070416D657469 && a2 == 0xEC00000064657261 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707061546D657469 && a2 == 0xEA00000000006465 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001E5A46560 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E5905AB8(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

unint64_t sub_1E5905B00(unsigned __int8 a1)
{
  v1 = 0x6961466863746566;
  v2 = 0xD000000000000025;
  if (a1 != 5)
  {
    v2 = 0x4164694477656976;
  }

  v3 = 0x707061546D657469;
  if (a1 != 3)
  {
    v3 = 0x646564616F6CLL;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6365536863746566;
  if (a1 != 1)
  {
    v4 = 0x657070416D657469;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5905C04(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5A2C114();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5905C78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6564496D657469 && a2 == 0xEE00726569666974)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5A2C114();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5905CF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5A2C114();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5905E3C(uint64_t a1)
{
  sub_1E5A2C1B4();
  sub_1E5905A90(v3, *v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E5905EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5905818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5905F34@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E59092B8();
  *a2 = result;
  return result;
}

uint64_t sub_1E5905F88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5905FDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5906060(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E59060B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5906108(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E590615C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E59061DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5906230(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E59062C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5906314(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5906380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9], a3[10], a3[11], a3[12], a3[13]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_1E59063DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5906430(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5906484(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E59064D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E590652C@<X0>(void *a2@<X2>, uint64_t (*a3)(void, void, void, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = a3(a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], a2[10], a2[11], a2[12], a2[13]);

  *a4 = v5 & 1;
  return result;
}

uint64_t sub_1E59065A4@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5906604(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5906658(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ArchivedWorkoutPlansAction.encode(to:)(void *a1, void *a2)
{
  v153 = a2;
  v150 = a1;
  v3 = a2[2];
  v2 = a2[3];
  v5 = a2[4];
  v4 = a2[5];
  v7 = a2[6];
  v6 = a2[7];
  v8 = a2[9];
  v159 = a2[8];
  v9 = a2[11];
  v158 = a2[10];
  v155 = v9;
  v10 = a2[13];
  v154 = a2[12];
  v164 = v3;
  v165 = v2;
  v11 = v3;
  v182 = v3;
  v12 = v2;
  v166 = v5;
  v167 = v4;
  v13 = v5;
  v14 = v4;
  v168 = v7;
  v169 = v6;
  v161 = v7;
  v162 = v6;
  v170 = v159;
  v171 = v8;
  v163 = v8;
  v172 = v158;
  v173 = v9;
  v174 = v154;
  v175 = v10;
  v15 = v10;
  v134 = type metadata accessor for ArchivedWorkoutPlansAction.ViewDidAppearCodingKeys(255, &v164);
  WitnessTable = swift_getWitnessTable();
  v132 = sub_1E5A2C0D4();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v107 - v16;
  v164 = v11;
  v165 = v12;
  v17 = v12;
  v157 = v12;
  v166 = v13;
  v167 = v14;
  v160 = v14;
  v168 = v7;
  v169 = v6;
  v18 = v159;
  v170 = v159;
  v171 = v8;
  v19 = v158;
  v20 = v155;
  v172 = v158;
  v173 = v155;
  v21 = v154;
  v174 = v154;
  v175 = v15;
  v22 = type metadata accessor for ArchivedWorkoutPlansAction.NavigateToArchivedWorkoutPlansGalleryCodingKeys(255, &v164);
  v23 = swift_getWitnessTable();
  v129 = v22;
  v127 = v23;
  v128 = sub_1E5A2C0D4();
  v126 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v125 = &v107 - v24;
  v164 = v182;
  v165 = v17;
  v166 = v13;
  v167 = v14;
  v156 = v13;
  v168 = v161;
  v169 = v162;
  v25 = v18;
  v170 = v18;
  v171 = v163;
  v172 = v19;
  v173 = v20;
  v174 = v21;
  v175 = v15;
  v26 = v15;
  v27 = type metadata accessor for ArchivedWorkoutPlansAction.LoadedCodingKeys(255, &v164);
  v28 = swift_getWitnessTable();
  v146 = v27;
  v145 = v28;
  v124 = sub_1E5A2C0D4();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v144 = &v107 - v29;
  v30 = sub_1E5A2A374();
  v31 = sub_1E5A2A314();
  v32 = sub_1E5A2A384();
  v33 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v34 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v35 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v164 = v30;
  v165 = v182;
  v36 = v157;
  v166 = v31;
  v167 = v157;
  v168 = v13;
  v169 = v160;
  v37 = v161;
  v38 = v162;
  v170 = v32;
  v171 = v161;
  v172 = v33;
  v173 = v162;
  v174 = v34;
  v175 = v25;
  v39 = v25;
  v40 = v163;
  v41 = v158;
  v176 = v163;
  v177 = v158;
  v42 = v155;
  v43 = v154;
  v178 = v155;
  v179 = v154;
  v180 = v35;
  v181 = v26;
  v149 = v26;
  v121 = sub_1E5A2A244();
  v148 = sub_1E5A2BD84();
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v143 = &v107 - v44;
  v164 = v182;
  v165 = v36;
  v166 = v156;
  v167 = v160;
  v168 = v37;
  v169 = v38;
  v170 = v39;
  v171 = v40;
  v172 = v41;
  v173 = v42;
  v45 = v42;
  v46 = v43;
  v174 = v43;
  v175 = v26;
  v47 = type metadata accessor for ArchivedWorkoutPlansAction.ItemTappedCodingKeys(255, &v164);
  v48 = swift_getWitnessTable();
  v142 = v47;
  v120 = v48;
  v119 = sub_1E5A2C0D4();
  v122 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v141 = &v107 - v49;
  v50 = v36;
  v140 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v139 = &v107 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v182;
  v164 = v182;
  v165 = v36;
  v54 = v156;
  v166 = v156;
  v167 = v160;
  v55 = v161;
  v56 = v162;
  v168 = v161;
  v169 = v162;
  v57 = v163;
  v170 = v159;
  v171 = v163;
  v172 = v41;
  v173 = v45;
  v58 = v149;
  v174 = v46;
  v175 = v149;
  v59 = type metadata accessor for ArchivedWorkoutPlansAction.ItemAppearedCodingKeys(255, &v164);
  v60 = swift_getWitnessTable();
  v138 = v59;
  v137 = v60;
  v136 = sub_1E5A2C0D4();
  v118 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v107 - v61;
  v164 = v53;
  v165 = v50;
  v62 = v160;
  v166 = v54;
  v167 = v160;
  v168 = v55;
  v169 = v56;
  v63 = v159;
  v170 = v159;
  v171 = v57;
  v64 = v158;
  v65 = v155;
  v172 = v158;
  v173 = v155;
  v66 = v154;
  v174 = v154;
  v175 = v58;
  SectionCodingKeys = type metadata accessor for ArchivedWorkoutPlansAction.FetchSectionCodingKeys(255, &v164);
  v68 = swift_getWitnessTable();
  v117 = SectionCodingKeys;
  v115 = v68;
  v116 = sub_1E5A2C0D4();
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v113 = &v107 - v69;
  v164 = v182;
  v165 = v157;
  v166 = v54;
  v167 = v62;
  v70 = v161;
  v71 = v162;
  v168 = v161;
  v169 = v162;
  v170 = v63;
  v72 = v163;
  v171 = v163;
  v172 = v64;
  v173 = v65;
  v174 = v66;
  v175 = v58;
  FailedCodingKeys = type metadata accessor for ArchivedWorkoutPlansAction.FetchFailedCodingKeys(255, &v164);
  v74 = swift_getWitnessTable();
  v112 = FailedCodingKeys;
  v110 = v74;
  v111 = sub_1E5A2C0D4();
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v108 = &v107 - v75;
  v76 = *(v153 - 1);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v107 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v182;
  v165 = v157;
  v166 = v156;
  v167 = v62;
  v168 = v70;
  v169 = v71;
  v170 = v159;
  v171 = v72;
  v172 = v158;
  v173 = v65;
  v174 = v66;
  v175 = v58;
  type metadata accessor for ArchivedWorkoutPlansAction.CodingKeys(255, &v164);
  swift_getWitnessTable();
  v162 = sub_1E5A2C0D4();
  v182 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v81 = &v107 - v80;
  __swift_project_boxed_opaque_existential_1(v150, v150[3]);
  v161 = v81;
  sub_1E5A2C224();
  (*(v76 + 16))(v79, v151, v153);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v86 = v136;
    v87 = v139;
    v88 = v141;
    v89 = v144;
    v90 = v157;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v91 = v140;
        (*(v140 + 32))(v139, v79, v157);
        LOBYTE(v164) = 3;
        v93 = v161;
        v92 = v162;
        sub_1E5A2C024();
        v94 = v119;
        v95 = v152;
        sub_1E5A2C0B4();
        if (!v95)
        {
          (*(v122 + 8))(v88, v94);
          (*(v91 + 8))(v87, v90);
          return (*(v182 + 8))(v93, v92);
        }

        (*(v122 + 8))(v88, v94);
        (*(v91 + 8))(v87, v90);
        v96 = v92;
      }

      else
      {
        v100 = v143;
        (*(v147 + 32))(v143, v79, v148);
        LOBYTE(v164) = 4;
        v96 = v162;
        v93 = v161;
        sub_1E5A2C024();
        swift_getWitnessTable();
        v101 = v124;
        sub_1E5A2C054();
        (*(v123 + 8))(v89, v101);
        (*(v147 + 8))(v100, v148);
      }
    }

    else
    {
      LOBYTE(v164) = 2;
      v99 = v135;
      v93 = v161;
      v96 = v162;
      sub_1E5A2C024();
      sub_1E5A2C094();
      (*(v118 + 8))(v99, v86);
    }

    v102 = *(v182 + 8);
    v103 = v93;
    return v102(v103, v96);
  }

  if (EnumCaseMultiPayload > 4)
  {
    v97 = v161;
    v96 = v162;
    if (EnumCaseMultiPayload == 5)
    {
      LOBYTE(v164) = 5;
      v98 = v125;
      sub_1E5A2C024();
      (*(v126 + 8))(v98, v128);
    }

    else
    {
      LOBYTE(v164) = 6;
      v106 = v130;
      sub_1E5A2C024();
      (*(v131 + 8))(v106, v132);
    }

    v102 = *(v182 + 8);
    v103 = v97;
    return v102(v103, v96);
  }

  v83 = v161;
  v84 = v162;
  if (EnumCaseMultiPayload == 3)
  {
    LOBYTE(v164) = 0;
    v85 = v108;
    sub_1E5A2C024();
    (*(v109 + 8))(v85, v111);
  }

  else
  {
    LOBYTE(v164) = 1;
    v104 = v113;
    sub_1E5A2C024();
    (*(v114 + 8))(v104, v116);
  }

  return (*(v182 + 8))(v83, v84);
}

uint64_t ArchivedWorkoutPlansAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v190 = a5;
  v186 = a1;
  v178 = a9;
  v215 = a14;
  v193 = a13;
  v196 = a12;
  *&v197 = a2;
  *(&v197 + 1) = a3;
  v194 = a3;
  *&v198 = a4;
  *(&v198 + 1) = a5;
  v199 = a6;
  v200 = a7;
  v201 = a8;
  v202 = a10;
  v195 = a8;
  v203 = a11;
  v204 = a12;
  v189 = a11;
  v205 = a13;
  v206 = a14;
  v175 = type metadata accessor for ArchivedWorkoutPlansAction.ViewDidAppearCodingKeys(255, &v197);
  WitnessTable = swift_getWitnessTable();
  v154 = sub_1E5A2C014();
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v173 = &v138 - v20;
  *&v197 = a2;
  *(&v197 + 1) = a3;
  v21 = a4;
  *&v198 = a4;
  *(&v198 + 1) = v190;
  v199 = a6;
  v200 = a7;
  v22 = a7;
  v192 = a7;
  v201 = a8;
  v202 = a10;
  v188 = a10;
  v203 = a11;
  v204 = a12;
  v205 = a13;
  v206 = v215;
  v23 = type metadata accessor for ArchivedWorkoutPlansAction.NavigateToArchivedWorkoutPlansGalleryCodingKeys(255, &v197);
  v24 = swift_getWitnessTable();
  v172 = v23;
  v171 = v24;
  v152 = sub_1E5A2C014();
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v170 = &v138 - v25;
  v187 = a2;
  *&v197 = a2;
  v26 = v194;
  *(&v197 + 1) = v194;
  v27 = v190;
  *&v198 = v21;
  *(&v198 + 1) = v190;
  v191 = a6;
  v199 = a6;
  v200 = v22;
  v28 = v195;
  v201 = v195;
  v202 = a10;
  v29 = v189;
  v30 = v196;
  v203 = v189;
  v204 = v196;
  v205 = v193;
  v206 = v215;
  v31 = type metadata accessor for ArchivedWorkoutPlansAction.LoadedCodingKeys(255, &v197);
  v32 = swift_getWitnessTable();
  v169 = v31;
  v168 = v32;
  v156 = sub_1E5A2C014();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v176 = &v138 - v33;
  *&v197 = a2;
  *(&v197 + 1) = v26;
  *&v198 = v21;
  *(&v198 + 1) = v27;
  v34 = v192;
  v199 = a6;
  v200 = v192;
  v35 = v188;
  v201 = v28;
  v202 = v188;
  v203 = v29;
  v204 = v30;
  v36 = v193;
  v37 = v215;
  v205 = v193;
  v206 = v215;
  v38 = type metadata accessor for ArchivedWorkoutPlansAction.ItemTappedCodingKeys(255, &v197);
  v39 = swift_getWitnessTable();
  v166 = v38;
  v165 = v39;
  v150 = sub_1E5A2C014();
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v167 = &v138 - v40;
  v41 = v187;
  *&v197 = v187;
  v42 = v194;
  *(&v197 + 1) = v194;
  *&v198 = v21;
  *(&v198 + 1) = v27;
  v199 = v191;
  v200 = v34;
  v43 = v34;
  v201 = v195;
  v202 = v35;
  v44 = v189;
  v203 = v189;
  v204 = v196;
  v205 = v36;
  v206 = v37;
  v45 = v37;
  v46 = type metadata accessor for ArchivedWorkoutPlansAction.ItemAppearedCodingKeys(255, &v197);
  v47 = swift_getWitnessTable();
  v164 = v46;
  v163 = v47;
  v147 = sub_1E5A2C014();
  v148 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v182 = &v138 - v48;
  *&v197 = v41;
  *(&v197 + 1) = v42;
  *&v198 = v21;
  *(&v198 + 1) = v27;
  v49 = v191;
  v199 = v191;
  v200 = v43;
  v50 = v195;
  v51 = v188;
  v201 = v195;
  v202 = v188;
  v52 = v196;
  v203 = v44;
  v204 = v196;
  v53 = v193;
  v205 = v193;
  v206 = v45;
  SectionCodingKeys = type metadata accessor for ArchivedWorkoutPlansAction.FetchSectionCodingKeys(255, &v197);
  v55 = swift_getWitnessTable();
  v162 = SectionCodingKeys;
  v161 = v55;
  v146 = sub_1E5A2C014();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v160 = &v138 - v56;
  v57 = v187;
  *&v197 = v187;
  v58 = v194;
  *(&v197 + 1) = v194;
  *&v198 = v21;
  *(&v198 + 1) = v27;
  v199 = v49;
  v200 = v192;
  v59 = v50;
  v201 = v50;
  v202 = v51;
  v60 = v189;
  v203 = v189;
  v204 = v52;
  v205 = v53;
  v206 = v215;
  FailedCodingKeys = type metadata accessor for ArchivedWorkoutPlansAction.FetchFailedCodingKeys(255, &v197);
  v62 = swift_getWitnessTable();
  v158 = FailedCodingKeys;
  v159 = v62;
  v144 = sub_1E5A2C014();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v180 = &v138 - v63;
  *&v197 = v57;
  *(&v197 + 1) = v58;
  *&v198 = v21;
  *(&v198 + 1) = v27;
  v64 = v191;
  v65 = v192;
  v199 = v191;
  v200 = v192;
  v66 = v188;
  v201 = v59;
  v202 = v188;
  v203 = v60;
  v204 = v52;
  v67 = v215;
  v205 = v53;
  v206 = v215;
  type metadata accessor for ArchivedWorkoutPlansAction.CodingKeys(255, &v197);
  v184 = swift_getWitnessTable();
  v183 = sub_1E5A2C014();
  v179 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v69 = &v138 - v68;
  *&v197 = v187;
  *(&v197 + 1) = v194;
  v157 = v21;
  *&v198 = v21;
  *(&v198 + 1) = v190;
  v199 = v64;
  v200 = v65;
  v201 = v195;
  v202 = v66;
  v203 = v60;
  v204 = v196;
  v205 = v53;
  v206 = v67;
  v70 = type metadata accessor for ArchivedWorkoutPlansAction(0, &v197);
  v177 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v138 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v138 - v74;
  MEMORY[0x1EEE9AC00](v76);
  v78 = (&v138 - v77);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v138 - v80;
  __swift_project_boxed_opaque_existential_1(v186, v186[3]);
  v181 = v69;
  v82 = v185;
  sub_1E5A2C214();
  if (v82)
  {
    goto LABEL_11;
  }

  v139 = v78;
  v140 = v75;
  v83 = v180;
  v141 = v72;
  v84 = v182;
  v142 = v81;
  v85 = v194;
  v185 = v70;
  v86 = v195;
  v184 = 0;
  v87 = v181;
  *&v197 = sub_1E5A2C004();
  sub_1E5A2BC44();
  swift_getWitnessTable();
  *&v213 = sub_1E5A2BDC4();
  *(&v213 + 1) = v88;
  *&v214 = v89;
  *(&v214 + 1) = v90;
  sub_1E5A2BDB4();
  swift_getWitnessTable();
  sub_1E5A2BD34();
  v91 = v197;
  if (v197 == 7 || (v138 = v213, v197 = v213, v198 = v214, (sub_1E5A2BD54() & 1) == 0))
  {
    v100 = v87;
    v101 = sub_1E5A2BE84();
    swift_allocError();
    v103 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
    *v103 = v185;
    v104 = v183;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v101 - 8) + 104))(v103, *MEMORY[0x1E69E6AF8], v101);
    swift_willThrow();
    (*(v179 + 8))(v100, v104);
  }

  else
  {
    if (v91 > 2)
    {
      v92 = v183;
      if (v91 <= 4)
      {
        v93 = v142;
        if (v91 == 3)
        {
          LOBYTE(v197) = 3;
          v94 = v167;
          v95 = v184;
          sub_1E5A2BF44();
          if (!v95)
          {
            v96 = v87;
            v97 = v140;
            v98 = v150;
            sub_1E5A2BFE4();
            v99 = v179;
            (*(v149 + 8))(v94, v98);
            (*(v99 + 8))(v96, v92);
            swift_unknownObjectRelease();
            v137 = v185;
LABEL_36:
            swift_storeEnumTagMultiPayload();
            v108 = v177;
            (*(v177 + 32))(v93, v97, v137);
            goto LABEL_37;
          }
        }

        else
        {
          LOBYTE(v197) = 4;
          v120 = v184;
          sub_1E5A2BF44();
          if (!v120)
          {
            v121 = v87;
            v122 = sub_1E5A2A374();
            v123 = sub_1E5A2A314();
            v124 = sub_1E5A2A384();
            v184 = 0;
            v125 = v124;
            v126 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
            v127 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
            v128 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
            *&v197 = v122;
            *(&v197 + 1) = v187;
            *&v198 = v123;
            *(&v198 + 1) = v85;
            v199 = v157;
            v200 = v190;
            v201 = v125;
            v202 = v191;
            v129 = v176;
            v203 = v126;
            v204 = v192;
            v205 = v127;
            v206 = v86;
            v207 = v188;
            v208 = v189;
            v209 = v196;
            v210 = v193;
            v211 = v128;
            v212 = v215;
            sub_1E5A2A244();
            swift_getWitnessTable();
            v97 = v141;
            v130 = v156;
            v131 = v184;
            sub_1E5A2BF84();
            if (!v131)
            {
              (*(v155 + 8))(v129, v130);
              (*(v179 + 8))(v121, v183);
              swift_unknownObjectRelease();
              v137 = v185;
              goto LABEL_36;
            }

            (*(v155 + 8))(v129, v130);
            (*(v179 + 8))(v121, v183);
            goto LABEL_10;
          }
        }

        goto LABEL_29;
      }

      v93 = v142;
      if (v91 == 5)
      {
        LOBYTE(v197) = 5;
        v112 = v170;
        v113 = v184;
        sub_1E5A2BF44();
        v111 = v178;
        if (!v113)
        {
          (*(v151 + 8))(v112, v152);
          (*(v179 + 8))(v87, v92);
          swift_unknownObjectRelease();
          v137 = v185;
LABEL_33:
          swift_storeEnumTagMultiPayload();
          v134 = v186;
          v108 = v177;
LABEL_38:
          (*(v108 + 32))(v111, v93, v137);
          v105 = v134;
          return __swift_destroy_boxed_opaque_existential_1(v105);
        }
      }

      else
      {
        LOBYTE(v197) = 6;
        v132 = v173;
        v133 = v184;
        sub_1E5A2BF44();
        v111 = v178;
        if (!v133)
        {
          (*(v153 + 8))(v132, v154);
          (*(v179 + 8))(v87, v92);
          swift_unknownObjectRelease();
          v137 = v185;
          goto LABEL_33;
        }
      }

LABEL_29:
      (*(v179 + 8))(v87, v92);
      goto LABEL_10;
    }

    v107 = v183;
    if (!v91)
    {
      LOBYTE(v197) = 0;
      v114 = v87;
      v115 = v184;
      sub_1E5A2BF44();
      v116 = v179;
      v108 = v177;
      if (!v115)
      {
        (*(v143 + 8))(v83, v144);
        (*(v116 + 8))(v114, v107);
        swift_unknownObjectRelease();
        v93 = v142;
        v137 = v185;
        swift_storeEnumTagMultiPayload();
LABEL_37:
        v134 = v186;
        v111 = v178;
        goto LABEL_38;
      }

      (*(v179 + 8))(v114, v107);
      goto LABEL_10;
    }

    v108 = v177;
    if (v91 == 1)
    {
      LOBYTE(v197) = 1;
      v109 = v160;
      v110 = v184;
      sub_1E5A2BF44();
      v111 = v178;
      if (!v110)
      {
        (*(v145 + 8))(v109, v146);
        (*(v179 + 8))(v87, v107);
        swift_unknownObjectRelease();
        v93 = v142;
        v137 = v185;
        swift_storeEnumTagMultiPayload();
LABEL_34:
        v134 = v186;
        goto LABEL_38;
      }
    }

    else
    {
      LOBYTE(v197) = 2;
      v117 = v84;
      v118 = v184;
      sub_1E5A2BF44();
      v111 = v178;
      if (!v118)
      {
        v119 = v147;
        v135 = sub_1E5A2BFC4();
        (*(v148 + 8))(v117, v119);
        (*(v179 + 8))(v87, v107);
        swift_unknownObjectRelease();
        v136 = v139;
        *v139 = v135;
        v137 = v185;
        swift_storeEnumTagMultiPayload();
        v93 = v142;
        (*(v108 + 32))(v142, v136, v137);
        goto LABEL_34;
      }
    }

    (*(v179 + 8))(v87, v107);
  }

LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v105 = v186;
  return __swift_destroy_boxed_opaque_existential_1(v105);
}

uint64_t sub_1E5908E88(uint64_t a1)
{
  result = sub_1E5909058();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      sub_1E5A2A374();
      sub_1E5A2A314();
      sub_1E5A2A384();
      sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
      sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
      sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
      sub_1E5A2A244();
      result = sub_1E5A2BD84();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1E5909058()
{
  result = qword_1ECFFCF90[0];
  if (!qword_1ECFFCF90[0])
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], qword_1ECFFCF90);
  }

  return result;
}

uint64_t WorkoutPlanCreationFilter.init(exclusions:inclusions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1E59092DC()
{
  if (*v0)
  {
    return 0x6F6973756C636E69;
  }

  else
  {
    return 0x6F6973756C637865;
  }
}

uint64_t sub_1E5909308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6973756C637865 && a2 == 0xEA0000000000736ELL;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6973756C636E69 && a2 == 0xEA0000000000736ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E59093EC(uint64_t a1)
{
  v2 = sub_1E5909654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5909428(uint64_t a1)
{
  v2 = sub_1E5909654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationFilter.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD398, &qword_1E5A34BD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5909654();

  sub_1E5A2C224();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD3A8, &qword_1E5A34BD8);
  sub_1E590994C(&qword_1ECFFD3B0, sub_1E59096A8, MEMORY[0x1E69E64F0]);
  sub_1E5A2C0B4();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1E5A2C0B4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1E5909654()
{
  result = qword_1ECFFD3A0;
  if (!qword_1ECFFD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3A0);
  }

  return result;
}

unint64_t sub_1E59096A8()
{
  result = qword_1ECFFD3B8;
  if (!qword_1ECFFD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3B8);
  }

  return result;
}

uint64_t WorkoutPlanCreationFilter.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD3C0, &qword_1E5A34BE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5909654();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD3A8, &qword_1E5A34BD8);
  v14 = 0;
  sub_1E590994C(&qword_1ECFFD3C8, sub_1E59099C4, MEMORY[0x1E69E6510]);
  sub_1E5A2BFE4();
  v9 = v15;
  v14 = 1;
  sub_1E5A2BFE4();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v13;
  *v13 = v9;
  v11[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E590994C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD3A8, &qword_1E5A34BD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E59099C4()
{
  result = qword_1ECFFD3D0;
  if (!qword_1ECFFD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3D0);
  }

  return result;
}

uint64_t static WorkoutPlanCreationFilter.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1E58B6628(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1E58B6628(v2, v3);
}

void WorkoutPlanCreationFilter.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1E58B9A00(a1, v3);

  sub_1E58B9A00(a1, v4);
}

uint64_t WorkoutPlanCreationFilter.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5A2C1B4();
  sub_1E58B9A00(v4, v1);
  sub_1E58B9A00(v4, v2);
  return sub_1E5A2C204();
}

uint64_t sub_1E5909B38()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5A2C1B4();
  sub_1E58B9A00(v4, v1);
  sub_1E58B9A00(v4, v2);
  return sub_1E5A2C204();
}

void sub_1E5909B8C(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1E58B9A00(a1, v3);

  sub_1E58B9A00(a1, v4);
}

uint64_t sub_1E5909BCC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1E5A2C1B4();
  sub_1E58B9A00(v5, v2);
  sub_1E58B9A00(v5, v3);
  return sub_1E5A2C204();
}

uint64_t sub_1E5909C1C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1E58B6628(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1E58B6628(v2, v3);
}

unint64_t sub_1E5909C7C()
{
  result = qword_1ECFFD3D8;
  if (!qword_1ECFFD3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3D8);
  }

  return result;
}

uint64_t sub_1E5909CD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E5909D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5909D78()
{
  result = qword_1ECFFD3E0;
  if (!qword_1ECFFD3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3E0);
  }

  return result;
}

unint64_t sub_1E5909DD0()
{
  result = qword_1ECFFD3E8;
  if (!qword_1ECFFD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3E8);
  }

  return result;
}

unint64_t sub_1E5909E28()
{
  result = qword_1ECFFD3F0;
  if (!qword_1ECFFD3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3F0);
  }

  return result;
}

uint64_t sub_1E5909E8C()
{
  v1 = 0x756F59726F66;
  if (*v0 != 1)
  {
    v1 = 0x736E616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726F6C707865;
  }
}

uint64_t sub_1E5909EE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E590A688(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5909F08(uint64_t a1)
{
  v2 = sub_1E590A4D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5909F44(uint64_t a1)
{
  v2 = sub_1E590A4D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5909F80(uint64_t a1)
{
  v2 = sub_1E590A5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5909FBC(uint64_t a1)
{
  v2 = sub_1E590A5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5909FF8(uint64_t a1)
{
  v2 = sub_1E590A580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590A034(uint64_t a1)
{
  v2 = sub_1E590A580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E590A070(uint64_t a1)
{
  v2 = sub_1E590A52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590A0AC(uint64_t a1)
{
  v2 = sub_1E590A52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreateWorkoutPlanButtonPlacement.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

uint64_t CreateWorkoutPlanButtonPlacement.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD3F8, &qword_1E5A34E10);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD400, &qword_1E5A34E18);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD408, &qword_1E5A34E20);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD410, &qword_1E5A34E28);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E590A4D8();
  sub_1E5A2C224();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1E590A580();
      sub_1E5A2C024();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1E590A52C();
      v16 = v22;
      sub_1E5A2C024();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1E590A5D4();
    sub_1E5A2C024();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_1E590A4D8()
{
  result = qword_1EE2D0318;
  if (!qword_1EE2D0318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0318);
  }

  return result;
}

unint64_t sub_1E590A52C()
{
  result = qword_1ECFFD418;
  if (!qword_1ECFFD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD418);
  }

  return result;
}

unint64_t sub_1E590A580()
{
  result = qword_1EE2D0300;
  if (!qword_1EE2D0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0300);
  }

  return result;
}

unint64_t sub_1E590A5D4()
{
  result = qword_1ECFFD420;
  if (!qword_1ECFFD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD420);
  }

  return result;
}

uint64_t sub_1E590A640@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E590A798(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E590A688(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6C707865 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F59726F66 && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E616C70 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E590A798(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD448, &qword_1E5A35250);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD450, &qword_1E5A35258);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD458, &qword_1E5A35260);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD460, &qword_1E5A35268);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E590A4D8();
  v13 = v34;
  sub_1E5A2C214();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1E5A2C004();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1E58BC5A8();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1E590A580();
          sub_1E5A2BF44();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_1E590A52C();
        v24 = v11;
        sub_1E5A2BF44();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1E590A5D4();
        v24 = v11;
        sub_1E5A2BF44();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1E5A2BE84();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v22 = &type metadata for CreateWorkoutPlanButtonPlacement;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

unint64_t sub_1E590AD0C()
{
  result = qword_1ECFFD428;
  if (!qword_1ECFFD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD428);
  }

  return result;
}

unint64_t sub_1E590ADB4()
{
  result = qword_1ECFFD430;
  if (!qword_1ECFFD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD430);
  }

  return result;
}

unint64_t sub_1E590AE0C()
{
  result = qword_1EE2D02E0;
  if (!qword_1EE2D02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D02E0);
  }

  return result;
}

unint64_t sub_1E590AE64()
{
  result = qword_1EE2D02E8;
  if (!qword_1EE2D02E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D02E8);
  }

  return result;
}

unint64_t sub_1E590AEBC()
{
  result = qword_1EE2D02F0;
  if (!qword_1EE2D02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D02F0);
  }

  return result;
}

unint64_t sub_1E590AF14()
{
  result = qword_1EE2D02F8;
  if (!qword_1EE2D02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D02F8);
  }

  return result;
}

unint64_t sub_1E590AF6C()
{
  result = qword_1ECFFD438;
  if (!qword_1ECFFD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD438);
  }

  return result;
}

unint64_t sub_1E590AFC4()
{
  result = qword_1ECFFD440;
  if (!qword_1ECFFD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD440);
  }

  return result;
}

unint64_t sub_1E590B01C()
{
  result = qword_1EE2D0308;
  if (!qword_1EE2D0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0308);
  }

  return result;
}

unint64_t sub_1E590B074()
{
  result = qword_1EE2D0310;
  if (!qword_1EE2D0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0310);
  }

  return result;
}

void *sub_1E590B0C8()
{
  v1 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v28 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = *(v0 + *(type metadata accessor for PersonalizedWorkoutPlanCandidates(0) + 20));
  v17 = *(v16 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v19 = *(v10 + 72);
  v28 = v2;
  v20 = (v2 + 48);
  v21 = MEMORY[0x1E69E7CC0];
  v29 = v1;
  do
  {
    sub_1E590B588(v18, v15);
    sub_1E590B648(v15, v12, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    if ((*v20)(v12, 1, v1) == 1)
    {
      sub_1E590B5EC(v12);
    }

    else
    {
      v22 = v31;
      sub_1E590B648(v12, v31, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      v23 = v22;
      v24 = v30;
      sub_1E590B648(v23, v30, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      sub_1E590B648(v24, v8, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1E58E6CCC(0, v21[2] + 1, 1, v21);
      }

      v26 = v21[2];
      v25 = v21[3];
      if (v26 >= v25 >> 1)
      {
        v21 = sub_1E58E6CCC((v25 > 1), v26 + 1, 1, v21);
      }

      v21[2] = v26 + 1;
      sub_1E590B648(v8, v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      v1 = v29;
    }

    v18 += v19;
    --v17;
  }

  while (v17);
  return v21;
}

Swift::Bool __swiftcall PersonalizedWorkoutPlanCandidates.hasPersonalizedPlanCandidates()()
{
  v1 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for PersonalizedWorkoutPlanCandidates(0);
  v9 = 0;
  v10 = *(v0 + *(v8 + 20));
  v11 = *(v10 + 16);
  while (1)
  {
    v12 = v9;
    if (v11 == v9)
    {
LABEL_5:
      LOBYTE(v8) = v11 != v12;
      return v8;
    }

    if (v9 >= *(v10 + 16))
    {
      break;
    }

    sub_1E590B588(v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9++, v7);
    sub_1E590B588(v7, v4);
    v13 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
    v14 = (*(*(v13 - 8) + 48))(v4, 1, v13);
    sub_1E590B5EC(v4);
    LOBYTE(v8) = sub_1E590B5EC(v7);
    if (v14 == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return v8;
}

uint64_t sub_1E590B588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E590B5EC(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E590B648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E590B6B0()
{
  v1 = *v0;
  v2 = 0x726F576863746566;
  v3 = 0xD000000000000017;
  v4 = 0xD000000000000021;
  if (v1 != 3)
  {
    v4 = 0x4164694477656976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646564616F6CLL;
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

uint64_t sub_1E590B760@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E590D698(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E590B794(uint64_t a1)
{
  v2 = sub_1E590C17C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590B7D0(uint64_t a1)
{
  v2 = sub_1E590C17C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E590B80C(uint64_t a1)
{
  v2 = sub_1E590C3EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590B848(uint64_t a1)
{
  v2 = sub_1E590C3EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E590B884(uint64_t a1)
{
  v2 = sub_1E590C330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590B8C0(uint64_t a1)
{
  v2 = sub_1E590C330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E590B8FC(uint64_t a1)
{
  v2 = sub_1E590C288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590B938(uint64_t a1)
{
  v2 = sub_1E590C288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E590B974(uint64_t a1)
{
  v2 = sub_1E590C2DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590B9B0(uint64_t a1)
{
  v2 = sub_1E590C2DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E590B9EC(uint64_t a1)
{
  v2 = sub_1E590C234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590BA28(uint64_t a1)
{
  v2 = sub_1E590C234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActiveWorkoutPlanWorkoutAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD468, &qword_1E5A35270);
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD470, &qword_1E5A35278);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD478, &qword_1E5A35280);
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD480, &unk_1E5A35288);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD488, &qword_1E5A35298);
  v41 = *(v14 - 8);
  v42 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction(0);
  MEMORY[0x1EEE9AC00](active);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD490, &qword_1E5A352A0);
  v55 = *(v20 - 8);
  v56 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E590C17C();
  sub_1E5A2C224();
  sub_1E590C1D0(v54, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v28 = v13;
    v29 = v10;
    v31 = v50;
    v30 = v51;
    v32 = v49;
    v34 = v52;
    v33 = v53;
    if (EnumCaseMultiPayload)
    {
      v59 = 2;
      sub_1E590C2DC();
      v39 = v56;
      sub_1E5A2C024();
      sub_1E5A2C064();

      (*(v34 + 8))(v30, v33);
      return (*(v55 + 8))(v22, v39);
    }

    else
    {
      v35 = v28;
      sub_1E58E66FC(v19, v28);
      v58 = 1;
      sub_1E590C330();
      v36 = v56;
      sub_1E5A2C024();
      type metadata accessor for ActiveWorkoutPlanWorkout(0);
      sub_1E590CE9C(&qword_1ECFFD4C0, &protocol conformance descriptor for ActiveWorkoutPlanWorkout);
      sub_1E5A2C054();
      (*(v32 + 8))(v29, v31);
      sub_1E590C384(v35);
      return (*(v55 + 8))(v22, v36);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v57 = 0;
    sub_1E590C3EC();
    v38 = v56;
    sub_1E5A2C024();
    (*(v41 + 8))(v16, v42);
    return (*(v55 + 8))(v22, v38);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v60 = 3;
      sub_1E590C288();
      v24 = v43;
      v25 = v56;
      sub_1E5A2C024();
      v27 = v44;
      v26 = v45;
    }

    else
    {
      v61 = 4;
      sub_1E590C234();
      v24 = v46;
      v25 = v56;
      sub_1E5A2C024();
      v27 = v47;
      v26 = v48;
    }

    (*(v27 + 8))(v24, v26);
    return (*(v55 + 8))(v22, v25);
  }
}

uint64_t type metadata accessor for ActiveWorkoutPlanWorkoutAction(uint64_t a1)
{
  result = qword_1ECFFD508;
  if (!qword_1ECFFD508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E590C17C()
{
  result = qword_1ECFFD498;
  if (!qword_1ECFFD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD498);
  }

  return result;
}

uint64_t sub_1E590C1D0(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

unint64_t sub_1E590C234()
{
  result = qword_1ECFFD4A0;
  if (!qword_1ECFFD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD4A0);
  }

  return result;
}

unint64_t sub_1E590C288()
{
  result = qword_1ECFFD4A8;
  if (!qword_1ECFFD4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD4A8);
  }

  return result;
}

unint64_t sub_1E590C2DC()
{
  result = qword_1ECFFD4B0;
  if (!qword_1ECFFD4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD4B0);
  }

  return result;
}

unint64_t sub_1E590C330()
{
  result = qword_1ECFFD4B8;
  if (!qword_1ECFFD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD4B8);
  }

  return result;
}

uint64_t sub_1E590C384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E590C3EC()
{
  result = qword_1ECFFD4C8;
  if (!qword_1ECFFD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD4C8);
  }

  return result;
}

uint64_t ActiveWorkoutPlanWorkoutAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD4D0, &qword_1E5A352A8);
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v56 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD4D8, &qword_1E5A352B0);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD4E0, &qword_1E5A352B8);
  v6 = *(v5 - 8);
  v64 = v5;
  v65 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD4E8, &qword_1E5A352C0);
  v9 = *(v8 - 8);
  v62 = v8;
  v63 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v56 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD4F0, &qword_1E5A352C8);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD4F8, &unk_1E5A352D0);
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction(0);
  MEMORY[0x1EEE9AC00](active);
  v18 = (&v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  v25 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1E590C17C();
  v26 = v78;
  sub_1E5A2C214();
  if (v26)
  {
    goto LABEL_10;
  }

  v57 = v18;
  v27 = v12;
  v58 = v21;
  v28 = v74;
  v29 = v75;
  v59 = v24;
  v78 = active;
  v30 = v76;
  v31 = v73;
  v32 = sub_1E5A2C004();
  v33 = (2 * *(v32 + 16)) | 1;
  v79 = v32;
  v80 = v32 + 32;
  v81 = 0;
  v82 = v33;
  v34 = sub_1E58BC5BC();
  if (v34 == 5 || v81 != v82 >> 1)
  {
    v39 = sub_1E5A2BE84();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
    *v41 = v78;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v72 + 8))(v15, v31);
    swift_unknownObjectRelease();
LABEL_10:
    v42 = v77;
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  if (v34 <= 1u)
  {
    if (v34)
    {
      v83 = 1;
      sub_1E590C330();
      v47 = v28;
      sub_1E5A2BF44();
      v48 = v72;
      type metadata accessor for ActiveWorkoutPlanWorkout(0);
      sub_1E590CE9C(&qword_1ECFFD500, &protocol conformance descriptor for ActiveWorkoutPlanWorkout);
      v49 = v62;
      sub_1E5A2BF84();
      (*(v63 + 8))(v47, v49);
      (*(v48 + 8))(v15, v31);
      swift_unknownObjectRelease();
      v50 = v58;
      swift_storeEnumTagMultiPayload();
      v38 = v59;
      sub_1E590CE38(v50, v59);
    }

    else
    {
      v83 = 0;
      sub_1E590C3EC();
      sub_1E5A2BF44();
      v44 = v72;
      (*(v60 + 8))(v27, v61);
      (*(v44 + 8))(v15, v31);
      swift_unknownObjectRelease();
      v38 = v59;
      swift_storeEnumTagMultiPayload();
    }

    v51 = v77;
    v35 = v30;
  }

  else
  {
    if (v34 == 2)
    {
      v83 = 2;
      sub_1E590C2DC();
      sub_1E5A2BF44();
      v35 = v30;
      v45 = v64;
      v52 = sub_1E5A2BF94();
      v54 = v53;
      (*(v65 + 8))(v29, v45);
      (*(v72 + 8))(v15, v31);
      swift_unknownObjectRelease();
      v55 = v57;
      *v57 = v52;
      *(v55 + 8) = v54;
      swift_storeEnumTagMultiPayload();
      v38 = v59;
      sub_1E590CE38(v55, v59);
    }

    else
    {
      v35 = v30;
      if (v34 == 3)
      {
        v83 = 3;
        sub_1E590C288();
        v36 = v71;
        sub_1E5A2BF44();
        v37 = v72;
        (*(v66 + 8))(v36, v68);
      }

      else
      {
        v83 = 4;
        sub_1E590C234();
        v46 = v70;
        sub_1E5A2BF44();
        v37 = v72;
        (*(v67 + 8))(v46, v69);
      }

      (*(v37 + 8))(v15, v31);
      swift_unknownObjectRelease();
      v38 = v59;
      swift_storeEnumTagMultiPayload();
    }

    v51 = v77;
  }

  sub_1E590CE38(v38, v35);
  v42 = v51;
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_1E590CE38(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction(0);
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

uint64_t sub_1E590CE9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActiveWorkoutPlanWorkout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E590CF10(uint64_t a1)
{
  sub_1E590CF78(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1E590CF78(uint64_t a1)
{
  if (!qword_1ECFFD518)
  {
    type metadata accessor for ActiveWorkoutPlanWorkout(255);
    v1 = sub_1E5A2BD84();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECFFD518);
    }
  }
}

uint64_t getEnumTagSinglePayload for ActiveWorkoutPlanWorkoutAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActiveWorkoutPlanWorkoutAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E590D174()
{
  result = qword_1ECFFD520;
  if (!qword_1ECFFD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD520);
  }

  return result;
}

unint64_t sub_1E590D1CC()
{
  result = qword_1ECFFD528;
  if (!qword_1ECFFD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD528);
  }

  return result;
}

unint64_t sub_1E590D224()
{
  result = qword_1ECFFD530;
  if (!qword_1ECFFD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD530);
  }

  return result;
}

unint64_t sub_1E590D27C()
{
  result = qword_1ECFFD538;
  if (!qword_1ECFFD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD538);
  }

  return result;
}

unint64_t sub_1E590D2D4()
{
  result = qword_1ECFFD540;
  if (!qword_1ECFFD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD540);
  }

  return result;
}

unint64_t sub_1E590D32C()
{
  result = qword_1ECFFD548;
  if (!qword_1ECFFD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD548);
  }

  return result;
}

unint64_t sub_1E590D384()
{
  result = qword_1ECFFD550;
  if (!qword_1ECFFD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD550);
  }

  return result;
}

unint64_t sub_1E590D3DC()
{
  result = qword_1ECFFD558;
  if (!qword_1ECFFD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD558);
  }

  return result;
}

unint64_t sub_1E590D434()
{
  result = qword_1ECFFD560;
  if (!qword_1ECFFD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD560);
  }

  return result;
}

unint64_t sub_1E590D48C()
{
  result = qword_1ECFFD568;
  if (!qword_1ECFFD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD568);
  }

  return result;
}

unint64_t sub_1E590D4E4()
{
  result = qword_1ECFFD570;
  if (!qword_1ECFFD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD570);
  }

  return result;
}

unint64_t sub_1E590D53C()
{
  result = qword_1ECFFD578;
  if (!qword_1ECFFD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD578);
  }

  return result;
}

unint64_t sub_1E590D594()
{
  result = qword_1ECFFD580;
  if (!qword_1ECFFD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD580);
  }

  return result;
}

unint64_t sub_1E590D5EC()
{
  result = qword_1ECFFD588;
  if (!qword_1ECFFD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD588);
  }

  return result;
}

unint64_t sub_1E590D644()
{
  result = qword_1ECFFD590;
  if (!qword_1ECFFD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD590);
  }

  return result;
}

uint64_t sub_1E590D698(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F576863746566 && a2 == 0xEC00000074756F6BLL;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5A46590 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001E5A465B0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

unint64_t sub_1E590D870()
{
  result = qword_1ECFFD598;
  if (!qword_1ECFFD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD598);
  }

  return result;
}

unint64_t PersonalizedWorkoutPlanCandidateTreatment.dictionary()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5A0, &qword_1E5A359D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A303B0;
  *(inited + 32) = 0x644961657261;
  *(inited + 40) = 0xE600000000000000;

  sub_1E5A2BE14();
  *(inited + 88) = 0x74656B637562;
  *(inited + 96) = 0xE600000000000000;
  sub_1E5A2BE14();
  *(inited + 144) = 0x6E656D7461657274;
  *(inited + 152) = 0xEB00000000644974;
  sub_1E5A2BE14();
  v1 = sub_1E590E504(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5A8, &qword_1E5A359E0);
  swift_arrayDestroy();
  return v1;
}

unint64_t Array<A>.metrics()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v52 = MEMORY[0x1E69E7CC0];
  sub_1E590DE88(0, v1, 0);
  v2 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5B0, &qword_1E5A359E8);
  for (i = (a1 + 64); ; i += 5)
  {
    v43 = v2;
    v5 = *(i - 4);
    v6 = *(i - 3);
    v7 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v49[0] = 0x644961657261;
    v49[1] = 0xE600000000000000;
    v44 = v5;
    v45 = v6;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1E5A2BE14();
    v50[0] = 0x74656B637562;
    v50[1] = 0xE600000000000000;
    v44 = v7;
    sub_1E5A2BE14();
    v51[0] = 0x6E656D7461657274;
    v51[1] = 0xEB00000000644974;
    v44 = v8;
    v45 = v9;
    sub_1E5A2BE14();
    v10 = sub_1E5A2BF14();

    sub_1E58BABA0(v49, &v44, &qword_1ECFFD5A8, &qword_1E5A359E0);
    v11 = v44;
    v12 = v45;
    result = sub_1E58EF508(v44, v45);
    if (v14)
    {
      break;
    }

    v15 = v10 + 8;
    *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v16 = (v10[6] + 16 * result);
    *v16 = v11;
    v16[1] = v12;
    v17 = v10[7] + 40 * result;
    v18 = v46;
    v19 = v47;
    *(v17 + 32) = v48;
    *v17 = v18;
    *(v17 + 16) = v19;
    v20 = v10[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_14;
    }

    v10[2] = v22;
    sub_1E58BABA0(v50, &v44, &qword_1ECFFD5A8, &qword_1E5A359E0);
    v23 = v44;
    v24 = v45;
    result = sub_1E58EF508(v44, v45);
    if (v25)
    {
      break;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v26 = (v10[6] + 16 * result);
    *v26 = v23;
    v26[1] = v24;
    v27 = v10[7] + 40 * result;
    v28 = v46;
    v29 = v47;
    *(v27 + 32) = v48;
    *v27 = v28;
    *(v27 + 16) = v29;
    v30 = v10[2];
    v21 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v21)
    {
      goto LABEL_14;
    }

    v10[2] = v31;
    sub_1E58BABA0(v51, &v44, &qword_1ECFFD5A8, &qword_1E5A359E0);
    v32 = v44;
    v33 = v45;
    result = sub_1E58EF508(v44, v45);
    if (v34)
    {
      break;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v35 = (v10[6] + 16 * result);
    *v35 = v32;
    v35[1] = v33;
    v36 = v10[7] + 40 * result;
    v37 = v46;
    v38 = v47;
    *(v36 + 32) = v48;
    *v36 = v37;
    *(v36 + 16) = v38;
    v39 = v10[2];
    v21 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v21)
    {
      goto LABEL_14;
    }

    v10[2] = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5A8, &qword_1E5A359E0);
    swift_arrayDestroy();

    v2 = v43;
    v52 = v43;
    v42 = *(v43 + 16);
    v41 = *(v43 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_1E590DE88((v41 > 1), v42 + 1, 1);
      v2 = v52;
    }

    *(v2 + 16) = v42 + 1;
    *(v2 + 8 * v42 + 32) = v10;
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void *sub_1E590DE08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E5A212A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E590DE28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E5A21540(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E590DE48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E5A2165C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E590DE68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E5A21834(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E590DE88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E5A21938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E590DEA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E5A21CBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E590DEC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E5A212C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E590DEE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E5A21DC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E590DF08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E5A21ED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E590DF28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E5A223DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1E590DF48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5B8, &unk_1E5A44C50);
    v3 = sub_1E5A2BF14();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E58BABA0(v4, &v13, &qword_1ECFFB560, &unk_1E5A30500);
      v5 = v13;
      v6 = v14;
      result = sub_1E58EF508(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E590E63C(&v15, (v3[7] + 32 * result));
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

void *sub_1E590E078(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
  v3 = sub_1E5A2BF14();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1E58EF8CC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1E58EF8CC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E590E188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE60, &qword_1E5A340F0);
  v3 = sub_1E5A2BF14();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1E58EF8CC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1E58EF8CC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E590E29C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE68, &qword_1E5A340F8);
  v3 = sub_1E5A2BF14();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = sub_1E58EF458(v4, v5, v6, v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v8;
  v13 = a1 + 13;
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = (v3[6] + 32 * v11);
    *v14 = v4;
    v14[1] = v5;
    v14[2] = v6;
    v14[3] = v7;
    *(v3[7] + 8 * v11) = result;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 5;
    v4 = *(v13 - 4);
    v5 = *(v13 - 3);
    v6 = *(v13 - 2);
    v7 = *(v13 - 1);
    v19 = *v13;

    v11 = sub_1E58EF458(v4, v5, v6, v7);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E590E3DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE70, &qword_1E5A34100);
    v3 = sub_1E5A2BF14();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = sub_1E58EF508(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v9;
      v14[3] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_1E590E504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5B0, &qword_1E5A359E8);
    v3 = sub_1E5A2BF14();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E58BABA0(v4, &v16, &qword_1ECFFD5A8, &qword_1E5A359E0);
      v5 = v16;
      v6 = v17;
      result = sub_1E58EF508(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

_OWORD *sub_1E590E63C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1E590E64C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE78, &qword_1E5A34108);
  v3 = sub_1E5A2BF14();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_1E58BABA0(&v24, v23, &qword_1ECFFD5C0, &qword_1E5A359F0);
  result = sub_1E58EF508(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_1E58BABA0(&v24, v23, &qword_1ECFFD5C0, &qword_1E5A359F0);
    result = sub_1E58EF508(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

double static LinearGradient.pinkGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4A0 != -1)
  {
    swift_once();
  }

  *(v6 + 32) = sub_1E5A2B744();
  *(v6 + 40) = v7;
  if (qword_1ECFFB498 != -1)
  {
    swift_once();
  }

  *(v6 + 48) = sub_1E5A2B744();
  *(v6 + 56) = v8;
  if (qword_1ECFFB4A8 != -1)
  {
    swift_once();
  }

  *(v6 + 64) = sub_1E5A2B744();
  *(v6 + 72) = v9;
  sub_1E5A2B754();
  sub_1E5A2A614();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double static LinearGradient.blueGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4B8 != -1)
  {
    swift_once();
  }

  *(v6 + 32) = sub_1E5A2B744();
  *(v6 + 40) = v7;
  if (qword_1ECFFB4B0 != -1)
  {
    swift_once();
  }

  *(v6 + 48) = sub_1E5A2B744();
  *(v6 + 56) = v8;
  if (qword_1ECFFB490 != -1)
  {
    swift_once();
  }

  *(v6 + 64) = sub_1E5A2B744();
  *(v6 + 72) = v9;
  sub_1E5A2B754();
  sub_1E5A2A614();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double static LinearGradient.goldGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4C8 != -1)
  {
    swift_once();
  }

  *(v6 + 32) = sub_1E5A2B744();
  *(v6 + 40) = v7;
  if (qword_1ECFFB4C0 != -1)
  {
    swift_once();
  }

  *(v6 + 48) = sub_1E5A2B744();
  *(v6 + 56) = v8;
  if (qword_1ECFFB4D0 != -1)
  {
    swift_once();
  }

  *(v6 + 64) = sub_1E5A2B744();
  *(v6 + 72) = v9;
  sub_1E5A2B754();
  sub_1E5A2A614();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double static LinearGradient.backgroundGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4D8 != -1)
  {
    swift_once();
  }

  *(v6 + 32) = sub_1E5A2B744();
  *(v6 + 40) = v7;
  if (qword_1ECFFB4E0 != -1)
  {
    swift_once();
  }

  *(v6 + 48) = sub_1E5A2B744();
  *(v6 + 56) = v8;
  sub_1E5A2B754();
  sub_1E5A2A614();
  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  return result;
}

double static LinearGradient.darkScrimGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4E8 != -1)
  {
    swift_once();
  }

  sub_1E5A2B434();
  *(v6 + 32) = sub_1E5A2B744();
  *(v6 + 40) = v7;
  sub_1E5A2B434();
  *(v6 + 48) = sub_1E5A2B744();
  *(v6 + 56) = v8;
  sub_1E5A2B434();
  *(v6 + 64) = sub_1E5A2B744();
  *(v6 + 72) = v9;
  sub_1E5A2B754();
  sub_1E5A2A614();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double static LinearGradient.lightScrimGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4E8 != -1)
  {
    swift_once();
  }

  sub_1E5A2B434();
  *(v6 + 32) = sub_1E5A2B744();
  *(v6 + 40) = v7;
  sub_1E5A2B434();
  *(v6 + 48) = sub_1E5A2B744();
  *(v6 + 56) = v8;
  sub_1E5A2B754();
  sub_1E5A2A614();
  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_1E590F070(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_1E5A2BAF4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E5A29EB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  if (a3)
  {
    v33 = a2;
    if (a3 == 1)
    {
      v12 = 1 << *(a1 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      a2 = v13 & *(a1 + 64);
      v14 = (v12 + 63) >> 6;

      v15 = 0;
      v16 = 0;
      while (a2)
      {
        v17 = v15;
LABEL_12:
        v18 = __clz(__rbit64(a2));
        a2 &= a2 - 1;
        v19 = *(*(*(a1 + 56) + ((v17 << 11) | (32 * v18)) + 24) + 16);
        v20 = __OFADD__(v16, v19);
        v16 += v19;
        if (v20)
        {
          __break(1u);
          goto LABEL_15;
        }
      }

      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {
          goto LABEL_30;
        }

        a2 = *(a1 + 64 + 8 * v17);
        ++v15;
        if (a2)
        {
          v15 = v17;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }

    else
    {
      v22 = 1 << *(a1 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & *(a1 + 64);
      v25 = (v22 + 63) >> 6;

      v26 = 0;
      v16 = 0;
      do
      {
        if (!v24)
        {
          while (1)
          {
            v27 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_34;
            }

            if (v27 >= v25)
            {
              goto LABEL_30;
            }

            v24 = *(a1 + 64 + 8 * v27);
            ++v26;
            if (v24)
            {
              v26 = v27;
              goto LABEL_27;
            }
          }
        }

        v27 = v26;
LABEL_27:
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v29 = *(*(*(a1 + 56) + ((v27 << 11) | (32 * v28)) + 16) + 16);
        v20 = __OFADD__(v16, v29);
        v16 += v29;
      }

      while (!v20);
      __break(1u);
LABEL_30:

      sub_1E5A2BAE4();
      sub_1E5A2BAD4();
      v34 = v16;
      sub_1E5A2BAB4();
      sub_1E5A2BAD4();
      sub_1E5A2BB04();
      if (qword_1EE2CFA28 != -1)
      {
        goto LABEL_35;
      }
    }

    v21 = qword_1EE2D33E0;
    (*(v8 + 16))(v10, v33, v7);
  }

  else
  {
LABEL_15:
    sub_1E5A2BA84();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v21 = qword_1EE2D33E0;
    (*(v8 + 16))(v10, a2, v7);
  }

  v30 = v21;
  return sub_1E5A2BB64();
}