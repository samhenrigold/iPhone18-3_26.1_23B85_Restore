uint64_t sub_1E6428DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E6428E34()
{
  result = qword_1EE2D6FC0;
  if (!qword_1EE2D6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6FC0);
  }

  return result;
}

unint64_t sub_1E6428E88()
{
  result = qword_1EE2D6FB8;
  if (!qword_1EE2D6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6FB8);
  }

  return result;
}

uint64_t sub_1E6428F80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6429004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E642906C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6429100(uint64_t a1)
{
  v2 = sub_1E6429C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E642913C(uint64_t a1)
{
  v2 = sub_1E6429C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6429178(uint64_t a1)
{
  v2 = sub_1E6429C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64291B4(uint64_t a1)
{
  v2 = sub_1E6429C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64291F0(uint64_t a1)
{
  v2 = sub_1E6429BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E642922C(uint64_t a1)
{
  v2 = sub_1E6429BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6429278@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E642AAA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E64292A0(uint64_t a1)
{
  v2 = sub_1E6429A6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64292DC(uint64_t a1)
{
  v2 = sub_1E6429A6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6429318(uint64_t a1)
{
  v2 = sub_1E6429B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6429354(uint64_t a1)
{
  v2 = sub_1E6429B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6429390(uint64_t a1)
{
  v2 = sub_1E6429B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64293CC(uint64_t a1)
{
  v2 = sub_1E6429B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6429408(uint64_t a1)
{
  v2 = sub_1E6429AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6429444(uint64_t a1)
{
  v2 = sub_1E6429AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppSectionDensity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079640, &qword_1E6601790);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079648, &qword_1E6601798);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079650, &qword_1E66017A0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079658, &qword_1E66017A8);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079660, &qword_1E66017B0);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079668, &qword_1E66017B8);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079670, &qword_1E66017C0);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6429A6C();
  sub_1E65E6DA8();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1E6429B68();
      v21 = v33;
      v22 = v42;
      sub_1E65E6B18();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1E6429B14();
      v21 = v36;
      v22 = v42;
      sub_1E65E6B18();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1E6429AC0();
      v21 = v39;
      v22 = v42;
      sub_1E65E6B18();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1E6429C10();
      v21 = v27;
      v22 = v42;
      sub_1E65E6B18();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1E6429BBC();
      v21 = v30;
      v22 = v42;
      sub_1E65E6B18();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1E6429C64();
  v22 = v42;
  sub_1E65E6B18();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_1E6429A6C()
{
  result = qword_1EE2D9FA0;
  if (!qword_1EE2D9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9FA0);
  }

  return result;
}

unint64_t sub_1E6429AC0()
{
  result = qword_1EE2D9F00;
  if (!qword_1EE2D9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F00);
  }

  return result;
}

unint64_t sub_1E6429B14()
{
  result = qword_1EE2D9F18;
  if (!qword_1EE2D9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F18);
  }

  return result;
}

unint64_t sub_1E6429B68()
{
  result = qword_1EE2D9F30;
  if (!qword_1EE2D9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F30);
  }

  return result;
}

unint64_t sub_1E6429BBC()
{
  result = qword_1EE2D9F48;
  if (!qword_1EE2D9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F48);
  }

  return result;
}

unint64_t sub_1E6429C10()
{
  result = qword_1EE2D9F60;
  if (!qword_1EE2D9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F60);
  }

  return result;
}

unint64_t sub_1E6429C64()
{
  result = qword_1EE2D9F78;
  if (!qword_1EE2D9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F78);
  }

  return result;
}

uint64_t AppSectionDensity.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079678, &qword_1E66017C8);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079680, &qword_1E66017D0);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079688, &qword_1E66017D8);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079690, &qword_1E66017E0);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079698, &qword_1E66017E8);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796A0, &qword_1E66017F0);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796A8, &unk_1E66017F8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E6429A6C();
  v22 = v56;
  sub_1E65E6D98();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1E65E6AF8();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1E5FBE3E8();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1E65E68F8();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
      *v36 = &type metadata for AppSectionDensity;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1E6429B68();
          sub_1E65E6A68();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1E6429B14();
          sub_1E65E6A68();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1E6429AC0();
          sub_1E65E6A68();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1E6429C10();
            v31 = v56;
            sub_1E65E6A68();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1E6429BBC();
            v31 = v51;
            sub_1E65E6A68();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1E6429C64();
          sub_1E65E6A68();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t AppSectionDensity.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E642A584()
{
  result = qword_1ED0796B0;
  if (!qword_1ED0796B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0796B0);
  }

  return result;
}

unint64_t sub_1E642A5DC()
{
  result = qword_1EE2D9F80;
  if (!qword_1EE2D9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F80);
  }

  return result;
}

unint64_t sub_1E642A634()
{
  result = qword_1EE2D9F88;
  if (!qword_1EE2D9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F88);
  }

  return result;
}

unint64_t sub_1E642A68C()
{
  result = qword_1EE2D9F68;
  if (!qword_1EE2D9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F68);
  }

  return result;
}

unint64_t sub_1E642A6E4()
{
  result = qword_1EE2D9F70;
  if (!qword_1EE2D9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F70);
  }

  return result;
}

unint64_t sub_1E642A73C()
{
  result = qword_1EE2D9F50;
  if (!qword_1EE2D9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F50);
  }

  return result;
}

unint64_t sub_1E642A794()
{
  result = qword_1EE2D9F58;
  if (!qword_1EE2D9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F58);
  }

  return result;
}

unint64_t sub_1E642A7EC()
{
  result = qword_1EE2D9F38;
  if (!qword_1EE2D9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F38);
  }

  return result;
}

unint64_t sub_1E642A844()
{
  result = qword_1EE2D9F40;
  if (!qword_1EE2D9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F40);
  }

  return result;
}

unint64_t sub_1E642A89C()
{
  result = qword_1EE2D9F20;
  if (!qword_1EE2D9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F20);
  }

  return result;
}

unint64_t sub_1E642A8F4()
{
  result = qword_1EE2D9F28;
  if (!qword_1EE2D9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F28);
  }

  return result;
}

unint64_t sub_1E642A94C()
{
  result = qword_1EE2D9F08;
  if (!qword_1EE2D9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F08);
  }

  return result;
}

unint64_t sub_1E642A9A4()
{
  result = qword_1EE2D9F10;
  if (!qword_1EE2D9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F10);
  }

  return result;
}

unint64_t sub_1E642A9FC()
{
  result = qword_1EE2D9F90;
  if (!qword_1EE2D9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F90);
  }

  return result;
}

unint64_t sub_1E642AA54()
{
  result = qword_1EE2D9F98;
  if (!qword_1EE2D9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F98);
  }

  return result;
}

uint64_t sub_1E642AAA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 65 && a2 == 0xE100000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 66 && a2 == 0xE100000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 67 && a2 == 0xE100000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 68 && a2 == 0xE100000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 69 && a2 == 0xE100000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 70 && a2 == 0xE100000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E65E6C18();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E642AC60@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_1E65E1918();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v39 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E65E07B8();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E18E8();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v34 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v37 = v24 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v38 = v24 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v24 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v36 = v24 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v20 = v41;
  sub_1E65E4B48();
  v35 = v19;
  sub_1E65E18D8();
  if (v20 < 2)
  {
    v27 = 0;
    v30 = 0;
    v26 = 1.0;
    v29 = 0.5;
    v28 = 0x3FD999999999999ALL;
  }

  else
  {
    v28 = 0;
    v29 = 0.75;
    v30 = 0x4076800000000000;
    v27 = 0x4074600000000000;
    v26 = 0.75;
  }

  v25 = v20 > 1;
  sub_1E65E0678();
  v21 = sub_1E65E07C8();
  v22 = 2;
  if (v21)
  {
    v22 = 3;
  }

  v24[1] = v22;
  sub_1E65E0668();
  sub_1E65E0758();
  sub_1E65E0798();
  sub_1E65E0788();
  sub_1E65E07A8();
  sub_1E65E18D8();
  (*(v3 + 8))(v5, v31);
  sub_1E65E18C8();
  (*(v32 + 8))(v15, v33);
  sub_1E65E18D8();
  sub_1E63B0274();
  sub_1E65E18D8();
  sub_1E65E18D8();
  return sub_1E65E19D8();
}

uint64_t sub_1E642B1F0(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796C0, &qword_1E6601F28);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4 - 8];
  sub_1E5E20198(21, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796B8, &qword_1E6601EB0);
  result = swift_dynamicCast();
  if (result)
  {
    v8[0] = a1 & 1;
    sub_1E65E4E98();

    sub_1E65E4E28();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1E642B340@<X0>(uint64_t *a1@<X8>)
{
  v131 = a1;
  v130 = type metadata accessor for ContentAvailabilityService();
  Description = v130[-1].Description;
  MEMORY[0x1EEE9AC00](v130);
  v117 = v2;
  v129 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for ArchivedSessionService();
  v114 = v115[-1].Description;
  MEMORY[0x1EEE9AC00](v115);
  v112 = v3;
  v113 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AppStateService();
  v137 = v127[-1].Description;
  MEMORY[0x1EEE9AC00](v127);
  v108 = v4;
  v125 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v141 = &v101 - v6;
  v142 = type metadata accessor for LocalizationService();
  v135 = v142[-1].Description;
  MEMORY[0x1EEE9AC00](v142);
  v133 = v7;
  v134 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for CatalogService();
  v139 = v124[-1].Description;
  MEMORY[0x1EEE9AC00](v124);
  v126 = v8;
  v138 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1E65D7848();
  v128 = *(v140 - 8);
  v9 = *(v128 + 64);
  v10 = MEMORY[0x1EEE9AC00](v140);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v101 - v11;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v13 = sub_1E65E3B68();
  __swift_project_value_buffer(v13, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v14 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v15 = type metadata accessor for AppEnvironment(0);
  v16 = v15[8];
  v120 = v15[7];
  v107 = v16;
  v17 = v15[12];
  v121 = v17;
  v119 = v15[14];
  v18 = v15[18];
  v132 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v116 = v12;
  sub_1E65E4EC8();

  v19 = v15[34];
  KeyPath = swift_getKeyPath();
  v20 = v139;
  v21 = v139[2];
  v122 = (v139 + 2);
  v123 = v21;
  v136 = v14;
  v22 = v14 + v17;
  v23 = v124;
  v21(v138, v22, v124);
  v24 = v128;
  v25 = *(v128 + 16);
  v105 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25(v105, v12, v140);
  v27 = v134;
  v26 = v135;
  (*(v135 + 16))(v134, v14 + v18, v142);
  sub_1E5DF650C(v14 + v19, &v143);
  v111 = *(v20 + 80);
  v28 = (v111 + 16) & ~v111;
  v110 = v111 | 7;
  v29 = (v126 + *(v24 + 80) + v28) & ~*(v24 + 80);
  v30 = (v9 + *(v26 + 80) + v29) & ~*(v26 + 80);
  v31 = v23;
  v32 = (v133 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v109 = v20[4];
  v139 = v20 + 4;
  v109(v33 + v28, v138, v31);
  (*(v24 + 32))(v33 + v29, v105, v140);
  (*(v26 + 32))(v33 + v30, v27, v142);
  sub_1E5DF599C(&v143, v33 + v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796B8, &qword_1E6601EB0);
  swift_allocObject();

  v35 = sub_1E65E4E68();
  v36 = v131;
  v131[3] = v34;
  v36[4] = &off_1F5FAA810;
  *v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v134 = swift_allocObject();
  *(v134 + 1) = xmmword_1E65FECC0;
  v37 = sub_1E65E60A8();
  v38 = *(v37 - 8);
  v132 = *(v38 + 56);
  v133 = v38 + 56;
  v39 = v141;
  v135 = v37;
  v132(v141, 1, 1, v37);
  v40 = v137;
  v41 = *(v137 + 2);
  v105 = v137 + 16;
  KeyPath = v41;
  v42 = v136;
  v43 = v125;
  v44 = v127;
  v41(v125, v136 + v120, v127);
  v45 = (v40[80] + 32) & ~v40[80];
  v104 = v40[80];
  v103 = v45;
  v46 = (v108 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  v48 = *(v40 + 4);
  v137 = v40 + 32;
  v108 = v48;
  v48(v47 + v45, v43, v44);
  *(v47 + v46) = v35;
  v49 = v35;
  swift_retain_n();
  v50 = sub_1E6059EAC(0, 0, v39, &unk_1E6601EC0, v47);
  v51 = v134;
  *(v134 + 4) = v50;
  v132(v39, 1, 1, v37);
  v52 = v114;
  v53 = v113;
  v54 = v115;
  v114[2](v113, v42 + v107, v115);
  v55 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v56 = (v112 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  (v52)[4]((v57 + v55), v53, v54);
  v142 = v49;
  *(v57 + v56) = v49;

  *(v51 + 5) = sub_1E6059EAC(0, 0, v39, &unk_1E6601ED0, v57);
  v58 = v132;
  v132(v39, 1, 1, v135);
  v59 = Description;
  v60 = *(Description + 2);
  v114 = (Description + 16);
  v115 = v60;
  v61 = v136;
  v63 = v129;
  v62 = v130;
  (v60)(v129, v136 + v119, v130);
  v64 = v59[80];
  v113 = v64;
  v65 = (v64 + 32) & ~v64;
  v112 = v65;
  v117 = (v117 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v117;
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  *(v67 + 24) = 0;
  Description = *(v59 + 4);
  (Description)(v67 + v65, v63, v62);
  *(v67 + v66) = v142;

  *(v51 + 6) = sub_1E6059EAC(0, 0, v39, &unk_1E6601EE0, v67);
  v68 = v135;
  v58(v39, 1, 1, v135);
  v69 = v58;
  v70 = v61;
  v71 = v61 + v120;
  v72 = v125;
  v73 = v127;
  KeyPath(v125, v71, v127);
  v74 = v102;
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  *(v75 + 24) = 0;
  v108(v75 + v103, v72, v73);
  *(v75 + v74) = v142;

  v76 = sub_1E6059EAC(0, 0, v39, &unk_1E6601EF0, v75);
  v77 = v134;
  *(v134 + 7) = v76;
  v78 = v68;
  v79 = v68;
  v80 = v69;
  v69(v39, 1, 1, v78);
  v81 = v70 + v119;
  v82 = v70;
  v83 = v129;
  v84 = v130;
  (v115)(v129, v81, v130);
  v85 = v117;
  v86 = swift_allocObject();
  *(v86 + 16) = 0;
  *(v86 + 24) = 0;
  (Description)(v86 + v112, v83, v84);
  *(v86 + v85) = v142;

  v87 = v141;
  *(v77 + 8) = sub_1E6059EAC(0, 0, v141, &unk_1E6601F00, v86);
  v80(v87, 1, 1, v79);
  v88 = v82 + v121;
  v89 = v138;
  v90 = v124;
  v123(v138, v88, v124);
  v91 = (v111 + 32) & ~v111;
  v92 = (v126 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  *(v93 + 16) = 0;
  *(v93 + 24) = 0;
  v94 = v109;
  v109(v93 + v91, v89, v90);
  *(v93 + v92) = v142;

  v95 = v141;
  v96 = sub_1E6059EAC(0, 0, v141, &unk_1E6601F10, v93);
  v98 = v134;
  v97 = v135;
  *(v134 + 9) = v96;
  v132(v95, 1, 1, v97);
  v123(v89, v136 + v121, v90);
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  *(v99 + 24) = 0;
  v94(v99 + v91, v89, v90);
  *(v99 + v92) = v142;
  *(v98 + 10) = sub_1E6059EAC(0, 0, v95, &unk_1E6601F20, v99);
  result = (*(v128 + 8))(v116, v140);
  v131[5] = v98;
  return result;
}

uint64_t sub_1E642C1A8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 184) = a5;
  *(v6 + 192) = a6;
  *(v6 + 168) = a3;
  *(v6 + 176) = a4;
  *(v6 + 160) = a1;
  v8 = sub_1E65D72D8();
  *(v6 + 200) = v8;
  *(v6 + 208) = *(v8 - 8);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  v9 = type metadata accessor for LocalizationService();
  *(v6 + 232) = v9;
  Description = v9[-1].Description;
  *(v6 + 240) = Description;
  *(v6 + 248) = Description[8];
  *(v6 + 256) = swift_task_alloc();
  v11 = sub_1E65D7848();
  *(v6 + 264) = v11;
  v12 = *(v11 - 8);
  *(v6 + 272) = v12;
  *(v6 + 280) = *(v12 + 64);
  *(v6 + 288) = swift_task_alloc();
  v13 = sub_1E65D8258();
  *(v6 + 296) = v13;
  *(v6 + 304) = *(v13 - 8);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  v14 = sub_1E65D9CC8();
  *(v6 + 336) = v14;
  *(v6 + 344) = *(v14 - 8);
  *(v6 + 352) = swift_task_alloc();
  v15 = sub_1E65D88D8();
  *(v6 + 360) = v15;
  *(v6 + 368) = *(v15 - 8);
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = sub_1E65D8F78();
  *(v6 + 400) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796C8, &qword_1E6601F30);
  *(v6 + 408) = v16;
  *(v6 + 416) = *(v16 - 8);
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796D0, &qword_1E6601F38);
  *(v6 + 440) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796D8, &qword_1E6601F40);
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  v17 = sub_1E65D9898();
  *(v6 + 472) = v17;
  v18 = *(v17 - 8);
  *(v6 + 480) = v18;
  *(v6 + 488) = *(v18 + 64);
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 709) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1E642C634, 0, 0);
}

uint64_t sub_1E642C634()
{
  v19 = v0;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  *(v0 + 528) = __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 709);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    *(v0 + 708) = v4;
    v7 = sub_1E65E5CE8();
    v9 = sub_1E5DFD4B0(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "[SampleContentItemsStateResolver] resolving for context %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E694F1C0](v6, -1, -1);
    MEMORY[0x1E694F1C0](v5, -1, -1);
  }

  if (*(v0 + 709))
  {
    v10 = CatalogService.fetchRemoteWorkoutShelfLockupDescriptors.getter();
    *(v0 + 560) = v11;
    v17 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 568) = v12;
    *v12 = v0;
    v13 = sub_1E642D3B4;
  }

  else
  {
    v14 = CatalogService.fetchRemoteSummaryShelfLockupDescriptors.getter();
    *(v0 + 536) = v15;
    v17 = (v14 + *v14);
    v12 = swift_task_alloc();
    *(v0 + 544) = v12;
    *v12 = v0;
    v13 = sub_1E642C904;
  }

  v12[1] = v13;

  return v17();
}

uint64_t sub_1E642C904(uint64_t a1)
{
  v3 = *v2;
  v3[10] = v2;
  v3[11] = a1;
  v3[12] = v1;
  v3[69] = v1;

  if (v1)
  {
    v4 = sub_1E642EB68;
  }

  else
  {

    v4 = sub_1E642CA28;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E642CA28()
{
  result = v0[11];
  v70 = *(result + 16);
  if (!v70)
  {
LABEL_12:

LABEL_13:
    v27 = sub_1E65E3B48();
    v28 = sub_1E65E6338();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1E5DE9000, v27, v28, "[SampleContentItemsStateResolver] No items found", v29, 2u);
      MEMORY[0x1E694F1C0](v29, -1, -1);
    }

    v30 = sub_1E65E37A8();
    sub_1E6434EE0(&qword_1ED0796E0, MEMORY[0x1E699EE28], MEMORY[0x1E699EE30]);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x1E699EE20], v30);
    swift_willThrow();

    v32 = v0[1];

    return v32();
  }

  v2 = 0;
  v3 = v0[60];
  v67 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v4 = MEMORY[0x1E69CB210];
  v5 = v0[52];
  v65 = v0[54];
  v66 = (v5 + 56);
  *(v0 + 176) = *(v3 + 80);
  v64 = *v4;
  v68 = v3;
  v69 = result;
  v61 = (v3 + 8);
  v62 = (v5 + 48);
  v63 = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v0[63];
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[57];
    v11 = v0[55];
    v12 = v72[51];
    v13 = v67 + *(v68 + 72) * v2;
    v14 = *(v68 + 16);
    v72[73] = v14;
    v72[74] = v63;
    v14(v7, v13, v8);
    sub_1E65D9868();
    v15 = sub_1E65D8028();
    (*(*(v15 - 8) + 104))(v10, v64, v15);
    swift_storeEnumTagMultiPayload();
    (*v66)(v10, 0, 1, v12);
    v16 = *(v65 + 48);
    sub_1E5DFD1CC(v9, v11, &qword_1ED0796D8, &qword_1E6601F40);
    sub_1E5DFD1CC(v10, v11 + v16, &qword_1ED0796D8, &qword_1E6601F40);
    v17 = *v62;
    v0 = v72;
    v18 = (*v62)(v11, 1, v12);
    v19 = v72[51];
    if (v18 == 1)
    {
      break;
    }

    sub_1E5DFD1CC(v72[55], v72[56], &qword_1ED0796D8, &qword_1E6601F40);
    v20 = v17(v11 + v16, 1, v19);
    v21 = v72[57];
    v22 = v72[58];
    v23 = v72[56];
    if (v20 == 1)
    {
      sub_1E5DFE50C(v72[57], &qword_1ED0796D8, &qword_1E6601F40);
      sub_1E5DFE50C(v22, &qword_1ED0796D8, &qword_1E6601F40);
      sub_1E5DFE50C(v23, &qword_1ED0796C8, &qword_1E6601F30);
      goto LABEL_4;
    }

    v60 = v72[55];
    v24 = v72[53];
    sub_1E6434E70(v11 + v16, v24);
    v25 = MEMORY[0x1E69CB218];
    sub_1E6434EE0(&qword_1EE2D7148, MEMORY[0x1E69CB218], MEMORY[0x1E69CB220]);
    sub_1E6434EE0(&qword_1EE2D7140, v25, MEMORY[0x1E69CB228]);
    v26 = sub_1E65D7FD8();
    sub_1E5DFE50C(v24, &qword_1ED0796C8, &qword_1E6601F30);
    sub_1E5DFE50C(v21, &qword_1ED0796D8, &qword_1E6601F40);
    sub_1E5DFE50C(v22, &qword_1ED0796D8, &qword_1E6601F40);
    sub_1E5DFE50C(v23, &qword_1ED0796C8, &qword_1E6601F30);
    sub_1E5DFE50C(v60, &qword_1ED0796D8, &qword_1E6601F40);
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_5:
    ++v2;
    (*v61)(v72[63], v72[59]);
    result = v69;
    if (v70 == v2)
    {
      goto LABEL_12;
    }
  }

  v6 = v72[58];
  sub_1E5DFE50C(v72[57], &qword_1ED0796D8, &qword_1E6601F40);
  sub_1E5DFE50C(v6, &qword_1ED0796D8, &qword_1E6601F40);
  if (v17(v11 + v16, 1, v19) != 1)
  {
LABEL_4:
    sub_1E5DFE50C(v72[55], &qword_1ED0796D0, &qword_1E6601F38);
    goto LABEL_5;
  }

  sub_1E5DFE50C(v72[55], &qword_1ED0796D8, &qword_1E6601F40);
LABEL_19:
  v33 = v72[65];
  v35 = v72[63];
  v34 = v72[64];
  v36 = v72[59];
  v37 = v72[60];

  v38 = *(v37 + 32);
  v72[75] = v38;
  v72[76] = (v37 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v38(v34, v35, v36);
  v38(v33, v34, v36);
  sub_1E65D9858();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v54 = v72[65];
    v55 = v72[59];
    sub_1E6434F28(v72[50], MEMORY[0x1E69CBDF0]);
    (*v61)(v54, v55);
    goto LABEL_13;
  }

  v39 = *v72[50];
  v72[77] = v39;
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = v72[46];
    v42 = v72[43];
    v43 = v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v44 = *(v41 + 72);
    v45 = (v42 + 32);
    v46 = MEMORY[0x1E69E7CC0];
    do
    {
      v48 = v72[47];
      v47 = v72[48];
      sub_1E64345C0(v43, v47);
      sub_1E6434624(v47, v48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1E6434F28(v72[47], MEMORY[0x1E69CB668]);
      }

      else
      {
        v49 = *v45;
        (*v45)(v72[44], v72[47], v72[42]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1E64F610C(0, *(v46 + 2) + 1, 1, v46);
        }

        v51 = *(v46 + 2);
        v50 = *(v46 + 3);
        if (v51 >= v50 >> 1)
        {
          v46 = sub_1E64F610C((v50 > 1), v51 + 1, 1, v46);
        }

        v52 = v72[44];
        v53 = v72[42];
        *(v46 + 2) = v51 + 1;
        v49(&v46[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v51], v52, v53);
      }

      v43 += v44;
      --v40;
    }

    while (v40);
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  v72[78] = v46;
  v56 = CatalogService.fetchRemoteCatalogLockups.getter();
  v72[79] = v57;
  v58 = sub_1E65D9808();
  v71 = (v56 + *v56);
  v59 = swift_task_alloc();
  v72[80] = v59;
  *v59 = v72;
  v59[1] = sub_1E642DE64;

  return v71(v58, v46);
}

uint64_t sub_1E642D3B4(uint64_t a1)
{
  v3 = *v2;
  v3[13] = v2;
  v3[14] = a1;
  v3[15] = v1;
  v3[72] = v1;

  if (v1)
  {
    v4 = sub_1E642ECDC;
  }

  else
  {

    v4 = sub_1E642D4D8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E642D4D8()
{
  result = v0[14];
  v70 = *(result + 16);
  if (!v70)
  {
LABEL_12:

LABEL_13:
    v27 = sub_1E65E3B48();
    v28 = sub_1E65E6338();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1E5DE9000, v27, v28, "[SampleContentItemsStateResolver] No items found", v29, 2u);
      MEMORY[0x1E694F1C0](v29, -1, -1);
    }

    v30 = sub_1E65E37A8();
    sub_1E6434EE0(&qword_1ED0796E0, MEMORY[0x1E699EE28], MEMORY[0x1E699EE30]);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x1E699EE20], v30);
    swift_willThrow();

    v32 = v0[1];

    return v32();
  }

  v2 = 0;
  v3 = v0[60];
  v67 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v4 = MEMORY[0x1E69CB210];
  v5 = v0[52];
  v65 = v0[54];
  v66 = (v5 + 56);
  *(v0 + 176) = *(v3 + 80);
  v64 = *v4;
  v68 = v3;
  v69 = result;
  v61 = (v3 + 8);
  v62 = (v5 + 48);
  v63 = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v0[63];
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[57];
    v11 = v0[55];
    v12 = v72[51];
    v13 = v67 + *(v68 + 72) * v2;
    v14 = *(v68 + 16);
    v72[73] = v14;
    v72[74] = v63;
    v14(v7, v13, v8);
    sub_1E65D9868();
    v15 = sub_1E65D8028();
    (*(*(v15 - 8) + 104))(v10, v64, v15);
    swift_storeEnumTagMultiPayload();
    (*v66)(v10, 0, 1, v12);
    v16 = *(v65 + 48);
    sub_1E5DFD1CC(v9, v11, &qword_1ED0796D8, &qword_1E6601F40);
    sub_1E5DFD1CC(v10, v11 + v16, &qword_1ED0796D8, &qword_1E6601F40);
    v17 = *v62;
    v0 = v72;
    v18 = (*v62)(v11, 1, v12);
    v19 = v72[51];
    if (v18 == 1)
    {
      break;
    }

    sub_1E5DFD1CC(v72[55], v72[56], &qword_1ED0796D8, &qword_1E6601F40);
    v20 = v17(v11 + v16, 1, v19);
    v21 = v72[57];
    v22 = v72[58];
    v23 = v72[56];
    if (v20 == 1)
    {
      sub_1E5DFE50C(v72[57], &qword_1ED0796D8, &qword_1E6601F40);
      sub_1E5DFE50C(v22, &qword_1ED0796D8, &qword_1E6601F40);
      sub_1E5DFE50C(v23, &qword_1ED0796C8, &qword_1E6601F30);
      goto LABEL_4;
    }

    v60 = v72[55];
    v24 = v72[53];
    sub_1E6434E70(v11 + v16, v24);
    v25 = MEMORY[0x1E69CB218];
    sub_1E6434EE0(&qword_1EE2D7148, MEMORY[0x1E69CB218], MEMORY[0x1E69CB220]);
    sub_1E6434EE0(&qword_1EE2D7140, v25, MEMORY[0x1E69CB228]);
    v26 = sub_1E65D7FD8();
    sub_1E5DFE50C(v24, &qword_1ED0796C8, &qword_1E6601F30);
    sub_1E5DFE50C(v21, &qword_1ED0796D8, &qword_1E6601F40);
    sub_1E5DFE50C(v22, &qword_1ED0796D8, &qword_1E6601F40);
    sub_1E5DFE50C(v23, &qword_1ED0796C8, &qword_1E6601F30);
    sub_1E5DFE50C(v60, &qword_1ED0796D8, &qword_1E6601F40);
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_5:
    ++v2;
    (*v61)(v72[63], v72[59]);
    result = v69;
    if (v70 == v2)
    {
      goto LABEL_12;
    }
  }

  v6 = v72[58];
  sub_1E5DFE50C(v72[57], &qword_1ED0796D8, &qword_1E6601F40);
  sub_1E5DFE50C(v6, &qword_1ED0796D8, &qword_1E6601F40);
  if (v17(v11 + v16, 1, v19) != 1)
  {
LABEL_4:
    sub_1E5DFE50C(v72[55], &qword_1ED0796D0, &qword_1E6601F38);
    goto LABEL_5;
  }

  sub_1E5DFE50C(v72[55], &qword_1ED0796D8, &qword_1E6601F40);
LABEL_19:
  v33 = v72[65];
  v35 = v72[63];
  v34 = v72[64];
  v36 = v72[59];
  v37 = v72[60];

  v38 = *(v37 + 32);
  v72[75] = v38;
  v72[76] = (v37 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v38(v34, v35, v36);
  v38(v33, v34, v36);
  sub_1E65D9858();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v54 = v72[65];
    v55 = v72[59];
    sub_1E6434F28(v72[50], MEMORY[0x1E69CBDF0]);
    (*v61)(v54, v55);
    goto LABEL_13;
  }

  v39 = *v72[50];
  v72[77] = v39;
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = v72[46];
    v42 = v72[43];
    v43 = v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v44 = *(v41 + 72);
    v45 = (v42 + 32);
    v46 = MEMORY[0x1E69E7CC0];
    do
    {
      v48 = v72[47];
      v47 = v72[48];
      sub_1E64345C0(v43, v47);
      sub_1E6434624(v47, v48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1E6434F28(v72[47], MEMORY[0x1E69CB668]);
      }

      else
      {
        v49 = *v45;
        (*v45)(v72[44], v72[47], v72[42]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1E64F610C(0, *(v46 + 2) + 1, 1, v46);
        }

        v51 = *(v46 + 2);
        v50 = *(v46 + 3);
        if (v51 >= v50 >> 1)
        {
          v46 = sub_1E64F610C((v50 > 1), v51 + 1, 1, v46);
        }

        v52 = v72[44];
        v53 = v72[42];
        *(v46 + 2) = v51 + 1;
        v49(&v46[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v51], v52, v53);
      }

      v43 += v44;
      --v40;
    }

    while (v40);
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  v72[78] = v46;
  v56 = CatalogService.fetchRemoteCatalogLockups.getter();
  v72[79] = v57;
  v58 = sub_1E65D9808();
  v71 = (v56 + *v56);
  v59 = swift_task_alloc();
  v72[80] = v59;
  *v59 = v72;
  v59[1] = sub_1E642DE64;

  return v71(v58, v46);
}

uint64_t sub_1E642DE64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 648) = v1;

  if (v1)
  {
    v5 = sub_1E642EE50;
  }

  else
  {
    *(v4 + 656) = a1;
    v5 = sub_1E642DFC4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E642DFC4()
{
  v94 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 520);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v5 = sub_1E5F9F4E0(sub_1E6434688, v4, v1);

  if (*(v5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072928, &qword_1E65EC048);
    v6 = sub_1E65E6A28();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v93[0] = v6;

  sub_1E64346A8(v7, 1, v93);
  if (v2)
  {

    return swift_unexpectedError();
  }

  v9 = *(v0 + 616);
  v10 = *(v0 + 709);
  v11 = *(v0 + 520);

  v12 = v93[0];
  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = sub_1E6406F8C(sub_1E6434C14, v13, v9);

  if (v10)
  {
    v15 = &unk_1F5FA8CC8;
  }

  else
  {
    v15 = &unk_1F5FA8CF0;
  }

  v16 = sub_1E5F9B388(v15);
  v92 = v16;
  v86 = *(v14 + 2);
  if (v86)
  {
    v21 = 0;
    v22 = *(v0 + 304);
    v88 = v16 + 56;
    v77 = (v22 + 32);
    v84 = v22;
    v90 = (v22 + 8);
    v79 = MEMORY[0x1E69E7CC0];
    v82 = v14;
    while (1)
    {
      if (v21 >= *(v14 + 2))
      {
        __break(1u);
        return MEMORY[0x1EEE34850](v16, v17, v18, v19, v20);
      }

      v23 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v24 = *(v84 + 72);
      v25 = *(v84 + 16);
      v25(*(v0 + 328), &v14[v23 + v24 * v21], *(v0 + 296));
      v26 = sub_1E65D8238();
      if (v28 == -1)
      {
        goto LABEL_27;
      }

      if ((v28 & 1) == 0)
      {
        break;
      }

      if (*(v92 + 2))
      {
        sub_1E65E6D28();
        sub_1E65D89A8();
        sub_1E65E5D78();

        v29 = sub_1E65E6D78();
        v30 = -1 << v92[32];
        v31 = v29 & ~v30;
        if ((*&v88[(v31 >> 3) & 0xFFFFFFFFFFFFFF8] >> v31))
        {
          v32 = ~v30;
          while (1)
          {
            v33 = sub_1E65D89A8();
            v35 = v34;
            if (v33 == sub_1E65D89A8() && v35 == v36)
            {
              break;
            }

            v38 = sub_1E65E6C18();

            if (v38)
            {
              goto LABEL_34;
            }

            v31 = (v31 + 1) & v32;
            if (((*&v88[(v31 >> 3) & 0xFFFFFFFFFFFFFF8] >> v31) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

LABEL_34:
          v50 = *v77;
          (*v77)(*(v0 + 312), *(v0 + 328), *(v0 + 296));
          v51 = v79;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1E601D0D4(0, *(v79 + 16) + 1, 1);
            v51 = v79;
          }

          v14 = v82;
          v53 = *(v51 + 16);
          v52 = *(v51 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_1E601D0D4((v52 > 1), v53 + 1, 1);
            v51 = v79;
          }

          v54 = *(v0 + 312);
          v55 = *(v0 + 296);
          *(v51 + 16) = v53 + 1;
          v79 = v51;
          v16 = v50(v51 + v23 + v53 * v24, v54, v55);
          goto LABEL_31;
        }
      }

LABEL_30:
      v16 = (*v90)(*(v0 + 328), *(v0 + 296));
      v14 = v82;
LABEL_31:
      if (++v21 == v86)
      {
        goto LABEL_40;
      }
    }

    sub_1E61281C8(v26, v27, v28);
LABEL_27:
    v25(*(v0 + 320), *(v0 + 328), *(v0 + 296));
    v39 = sub_1E65E3B48();
    v40 = sub_1E65E6328();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 320);
    v43 = *(v0 + 296);
    if (v41)
    {
      v44 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v93[0] = v81;
      *v44 = 136315138;
      *(v0 + 128) = sub_1E65D81D8();
      *(v0 + 136) = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      v46 = sub_1E65E6648();
      v48 = v47;
      (*v90)(v42, v43);

      v49 = sub_1E5DFD4B0(v46, v48, v93);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1E5DE9000, v39, v40, "[SampleContentItemsStateResolver] Failed to determine the media type for lockup %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x1E694F1C0](v81, -1, -1);
      MEMORY[0x1E694F1C0](v44, -1, -1);
    }

    else
    {

      (*v90)(v42, v43);
    }

    goto LABEL_30;
  }

  v79 = MEMORY[0x1E69E7CC0];
LABEL_40:
  *(v0 + 664) = v79;
  v91 = *(v0 + 600);
  v72 = *(v0 + 584);
  v78 = *(v0 + 704);
  v70 = *(v0 + 520);
  v56 = *(v0 + 496);
  v57 = *(v0 + 472);
  v80 = v57;
  v58 = *(v0 + 288);
  v83 = v56;
  v85 = v58;
  v59 = *(v0 + 264);
  v60 = *(v0 + 272);
  v74 = *(v0 + 256);
  v87 = *(v0 + 280);
  v89 = *(v0 + 248);
  v61 = *(v0 + 240);
  v73 = *(v0 + 232);
  v75 = *(v0 + 192);
  v76 = *(v0 + 488);
  v71 = *(v0 + 184);
  v62 = *(v0 + 176);

  *(v0 + 144) = v79;
  v72(v56, v70, v57);
  (*(v60 + 16))(v58, v62, v59);
  (*(v61 + 16))(v74, v71, v73);
  sub_1E5DF650C(v75, v0 + 16);
  v63 = (v78 + 16) & ~v78;
  v64 = (v63 + v76 + *(v60 + 80)) & ~*(v60 + 80);
  v65 = (v87 + *(v61 + 80) + v64) & ~*(v61 + 80);
  v66 = swift_allocObject();
  *(v0 + 672) = v66;
  v91(v66 + v63, v83, v80);
  (*(v60 + 32))(v66 + v64, v85, v59);
  (*(v61 + 32))(v66 + v65, v74, v73);
  sub_1E5DF599C((v0 + 16), v66 + ((v89 + v65 + 7) & 0xFFFFFFFFFFFFFFF8));
  v67 = swift_task_alloc();
  *(v0 + 680) = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  v69 = sub_1E65E3798();
  v20 = sub_1E6434E0C();
  *v67 = v0;
  v67[1] = sub_1E642E814;
  v16 = &unk_1E6601F50;
  v17 = v66;
  v18 = v68;
  v19 = v69;

  return MEMORY[0x1EEE34850](v16, v17, v18, v19, v20);
}

uint64_t sub_1E642E814(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 688) = v1;

  if (v1)
  {
    v5 = sub_1E642F794;
  }

  else
  {

    *(v4 + 696) = a1;
    v5 = sub_1E642E950;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E642E950(uint64_t a1)
{
  v2 = v1[65];
  v3 = v1[60];
  v13 = v1[59];
  v5 = v1[27];
  v4 = v1[28];
  v7 = v1[25];
  v6 = v1[26];
  v8 = v1[24];
  v9 = v1[22];
  v10 = sub_1E65D9818();
  sub_1E63C4134(v9, v8, v10, v4);

  (*(v6 + 16))(v5, v4, v7);
  sub_1E65E3658();
  (*(v6 + 8))(v4, v7);
  (*(v3 + 8))(v2, v13);

  v11 = v1[1];

  return v11();
}

uint64_t sub_1E642EB68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E642ECDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E642EE50()
{
  v104 = v0;
  v1 = *(v0 + 648);
  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 648);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v103[0] = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = MEMORY[0x1E694E6C0](*(v0 + 64), *(v0 + 72));
    v10 = sub_1E5DFD4B0(v8, v9, v103);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "[SampleContentItemsStateResolver] Error fetching placeholders: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);

    v11 = v5;
  }

  else
  {
    v12 = *(v0 + 648);

    v11 = v12;
  }

  v13 = *(v0 + 520);
  v14 = swift_task_alloc();
  *(v14 + 16) = v13;
  v15 = sub_1E5F9F4E0(sub_1E6434688, v14, MEMORY[0x1E69E7CC0]);

  if (*(v15 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072928, &qword_1E65EC048);
    v16 = sub_1E65E6A28();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC8];
  }

  v103[0] = v16;

  sub_1E64346A8(v17, 1, v103);
  v18 = *(v0 + 616);
  v19 = *(v0 + 709);
  v20 = *(v0 + 520);

  v21 = v103[0];
  v22 = swift_task_alloc();
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  v23 = sub_1E6406F8C(sub_1E6434C14, v22, v18);

  if (v19)
  {
    v24 = &unk_1F5FA8CC8;
  }

  else
  {
    v24 = &unk_1F5FA8CF0;
  }

  v25 = sub_1E5F9B388(v24);
  v102 = v25;
  v95 = *(v23 + 2);
  v97 = v23;
  if (v95)
  {
    v30 = 0;
    v31 = *(v0 + 304);
    v98 = v25 + 56;
    v89 = (v31 + 32);
    v93 = v31;
    v100 = (v31 + 8);
    v90 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v30 >= *(v23 + 2))
      {
        __break(1u);
        return MEMORY[0x1EEE34850](v25, v26, v27, v28, v29);
      }

      v32 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v33 = *(v93 + 72);
      v34 = &v23[v32 + v33 * v30];
      v35 = *(v93 + 16);
      v35(*(v0 + 328), v34, *(v0 + 296));
      v36 = sub_1E65D8238();
      if (v38 == -1)
      {
        goto LABEL_26;
      }

      if ((v38 & 1) == 0)
      {
        break;
      }

      if (*(v102 + 2))
      {
        sub_1E65E6D28();
        sub_1E65D89A8();
        sub_1E65E5D78();

        v39 = sub_1E65E6D78();
        v40 = -1 << v102[32];
        v41 = v39 & ~v40;
        if ((*&v98[(v41 >> 3) & 0xFFFFFFFFFFFFFF8] >> v41))
        {
          v42 = ~v40;
          while (1)
          {
            v43 = sub_1E65D89A8();
            v45 = v44;
            if (v43 == sub_1E65D89A8() && v45 == v46)
            {
              break;
            }

            v48 = sub_1E65E6C18();

            if (v48)
            {
              goto LABEL_33;
            }

            v41 = (v41 + 1) & v42;
            if (((*&v98[(v41 >> 3) & 0xFFFFFFFFFFFFFF8] >> v41) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

LABEL_33:
          v60 = *v89;
          (*v89)(*(v0 + 312), *(v0 + 328), *(v0 + 296));
          v61 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1E601D0D4(0, *(v90 + 16) + 1, 1);
            v61 = v90;
          }

          v63 = *(v61 + 16);
          v62 = *(v61 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_1E601D0D4((v62 > 1), v63 + 1, 1);
            v61 = v90;
          }

          v64 = *(v0 + 312);
          v65 = *(v0 + 296);
          *(v61 + 16) = v63 + 1;
          v90 = v61;
          v25 = v60(v61 + v32 + v63 * v33, v64, v65);
          goto LABEL_30;
        }
      }

LABEL_29:
      v25 = (*v100)(*(v0 + 328), *(v0 + 296));
LABEL_30:
      ++v30;
      v23 = v97;
      if (v30 == v95)
      {
        goto LABEL_39;
      }
    }

    sub_1E61281C8(v36, v37, v38);
LABEL_26:
    v35(*(v0 + 320), *(v0 + 328), *(v0 + 296));
    v49 = sub_1E65E3B48();
    v50 = sub_1E65E6328();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 320);
    v53 = *(v0 + 296);
    if (v51)
    {
      v54 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v103[0] = v91;
      *v54 = 136315138;
      *(v0 + 128) = sub_1E65D81D8();
      *(v0 + 136) = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      v56 = sub_1E65E6648();
      v58 = v57;
      (*v100)(v52, v53);

      v59 = sub_1E5DFD4B0(v56, v58, v103);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_1E5DE9000, v49, v50, "[SampleContentItemsStateResolver] Failed to determine the media type for lockup %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x1E694F1C0](v91, -1, -1);
      MEMORY[0x1E694F1C0](v54, -1, -1);
    }

    else
    {

      (*v100)(v52, v53);
    }

    goto LABEL_29;
  }

  v90 = MEMORY[0x1E69E7CC0];
LABEL_39:
  *(v0 + 664) = v90;
  v101 = *(v0 + 600);
  v84 = *(v0 + 584);
  v66 = *(v0 + 704);
  v82 = *(v0 + 520);
  v67 = *(v0 + 496);
  v68 = *(v0 + 472);
  v88 = *(v0 + 488);
  v69 = *(v0 + 288);
  v92 = v67;
  v94 = v69;
  v96 = *(v0 + 280);
  v71 = *(v0 + 264);
  v70 = *(v0 + 272);
  v86 = *(v0 + 256);
  v99 = *(v0 + 248);
  v72 = *(v0 + 240);
  v85 = *(v0 + 232);
  v87 = *(v0 + 192);
  v83 = *(v0 + 184);
  v73 = *(v0 + 176);

  *(v0 + 144) = v90;
  v84(v67, v82, v68);
  (*(v70 + 16))(v69, v73, v71);
  (*(v72 + 16))(v86, v83, v85);
  sub_1E5DF650C(v87, v0 + 16);
  v74 = (v66 + 16) & ~v66;
  v75 = (v74 + v88 + *(v70 + 80)) & ~*(v70 + 80);
  v76 = (v96 + *(v72 + 80) + v75) & ~*(v72 + 80);
  v77 = swift_allocObject();
  *(v0 + 672) = v77;
  v101(v77 + v74, v92, v68);
  (*(v70 + 32))(v77 + v75, v94, v71);
  (*(v72 + 32))(v77 + v76, v86, v85);
  sub_1E5DF599C((v0 + 16), v77 + ((v99 + v76 + 7) & 0xFFFFFFFFFFFFFFF8));
  v78 = swift_task_alloc();
  *(v0 + 680) = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  v80 = sub_1E65E3798();
  v29 = sub_1E6434E0C();
  *v78 = v0;
  v78[1] = sub_1E642E814;
  v25 = &unk_1E6601F50;
  v26 = v77;
  v27 = v79;
  v28 = v80;

  return MEMORY[0x1EEE34850](v25, v26, v27, v28, v29);
}

uint64_t sub_1E642F794()
{
  v1 = v0[65];
  v2 = v0[59];
  v3 = v0[60];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E642F934(uint64_t a1, _BYTE *a2)
{
  v5 = v3;
  Description = type metadata accessor for CatalogService()[-1].Description;
  v8 = (*(Description + 80) + 16) & ~*(Description + 80);
  v9 = Description[8];
  v10 = *(sub_1E65D7848() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = type metadata accessor for LocalizationService()[-1].Description;
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = (v13[8] + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_1E5DFE6BC;

  return sub_1E642C1A8(a1, a2, v2 + v8, v2 + v11, v2 + v14, v2 + v15);
}

uint64_t sub_1E642FB10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1E65D9808();
  v4 = sub_1E65D8E48();
  v6 = v5;
  v7 = sub_1E65D8078();
  v9 = v8;
  v10 = sub_1E65D81B8();
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072088, &qword_1E65EA770) + 48);

  MEMORY[0x1E694D7C0](v12, v13);

  MEMORY[0x1E694D7C0](v4, v6);
  swift_bridgeObjectRelease_n();

  *a2 = v7;
  a2[1] = v9;
  v14 = sub_1E65D8258();
  return (*(*(v14 - 8) + 16))(a2 + v16, a1, v14);
}

uint64_t sub_1E642FC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v6 = sub_1E65D9CC8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65D88D8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E64345C0(a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E65D8258();
    v14 = *(v13 - 8);
    (*(v14 + 32))(a3, v12, v13);
    return (*(v14 + 56))(a3, 0, 1, v13);
  }

  else
  {
    v38[0] = a3;
    v38[1] = v3;
    (*(v7 + 32))(v9, v12, v6);
    sub_1E65D9808();
    v16 = sub_1E65D8E48();
    v18 = v17;
    v19 = sub_1E65D9C98();
    v20 = v6;
    v22 = v21;
    v23 = sub_1E65D9CB8();
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v39 = v19;
    v40 = v22;

    MEMORY[0x1E694D7C0](v25, v26);

    MEMORY[0x1E694D7C0](v16, v18);
    swift_bridgeObjectRelease_n();

    v27 = v41;
    if (*(v41 + 16))
    {
      v28 = v20;
      v29 = sub_1E6215038(v39, v40);
      v31 = v30;

      v32 = v38[0];
      if (v31)
      {
        v33 = *(v27 + 56);
        v34 = sub_1E65D8258();
        v35 = *(v34 - 8);
        (*(v35 + 16))(v32, v33 + *(v35 + 72) * v29, v34);
        (*(v7 + 8))(v9, v28);
        return (*(v35 + 56))(v32, 0, 1, v34);
      }

      else
      {
        (*(v7 + 8))(v9, v28);
        v37 = sub_1E65D8258();
        return (*(*(v37 - 8) + 56))(v32, 1, 1, v37);
      }
    }

    else
    {

      (*(v7 + 8))(v9, v20);
      v36 = sub_1E65D8258();
      return (*(*(v36 - 8) + 56))(v38[0], 1, 1, v36);
    }
  }
}

uint64_t sub_1E6430094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1E65E37C8();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_1E65DA0B8();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  sub_1E65D8BB8();
  v6[14] = swift_task_alloc();
  v9 = sub_1E65DAC98();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v10 = sub_1E65D72D8();
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64302D8, 0, 0);
}

uint64_t sub_1E64302D8(uint64_t a1)
{
  v2 = v1[25];
  v25 = v1[24];
  v3 = v1[23];
  v20 = v1[22];
  v22 = v1[21];
  v30 = v1[20];
  v31 = v1[19];
  v19 = v1[18];
  v26 = v1[17];
  v23 = v1[16];
  v24 = v1[15];
  v29 = v1[14];
  v4 = v1[12];
  v28 = v1[13];
  v27 = v1[10];
  v16 = v1[11];
  v17 = v1[9];
  v18 = v1[8];
  v5 = v1[7];
  v6 = v1[5];
  v21 = v1[2];
  v7 = sub_1E65D9818();
  v8 = LocalizationService.localizedNumberFormatter.getter();

  v9 = sub_1E65D8248();
  sub_1E63C4134(v6, v5, v9, v2);

  v10 = sub_1E65D80A8();
  sub_1E63C4134(v6, v5, v10, v25);

  sub_1E63C4134(v6, v5, v7, v3);

  sub_1E65D8128();
  sub_1E65D8BA8();
  sub_1E6434F28(v29, MEMORY[0x1E69CB950]);
  sub_1E65DA098();
  (*(v4 + 8))(v28, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076480, &qword_1E65F56D0);
  sub_1E65DAC38();
  sub_1E65DC2D8();
  sub_1E65DAC78();
  sub_1E65D74C8();

  (*(v17 + 104))(v27, *MEMORY[0x1E699EE40], v18);
  v11 = *(v31 + 16);
  v11(v20, v3, v19);
  sub_1E65D8078();
  sub_1E65D80D8();
  v11(v22, v25, v19);
  v11(v30, v2, v19);
  sub_1E65E3758();
  (*(v23 + 8))(v26, v24);
  v12 = *(v31 + 8);
  v12(v3, v19);
  v12(v25, v19);
  v12(v2, v19);
  v13 = sub_1E65E3798();
  (*(*(v13 - 8) + 56))(v21, 0, 1, v13);

  v14 = v1[1];

  return v14();
}

uint64_t sub_1E64306C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64307F8, 0, 0);
}

uint64_t sub_1E64307F8()
{
  active = AppStateService.makeAppDidBecomeActiveStream.getter();
  v0[10] = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E64308F4;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E64308F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6430A0C, 0, 0);
}

uint64_t sub_1E6430A0C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6430AE8;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E6430AE8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6430BE4, 0, 0);
}

uint64_t sub_1E6430BE4()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6338();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "App did become active - refreshing sample content items", v6, 2u);
      MEMORY[0x1E694F1C0](v6, -1, -1);
    }

    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v8 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6430DA4, v8, v7);
  }
}

uint64_t sub_1E6430DA4()
{

  sub_1E65E4E78();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E6430AE8;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E6430E5C(uint64_t a1)
{
  Description = type metadata accessor for AppStateService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E64306C4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6430F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64310B0, 0, 0);
}

uint64_t sub_1E64310B0()
{
  v1 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E64311AC;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E64311AC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E5FE0E84;
  }

  else
  {
    v2 = sub_1E64312DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64312DC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E64313B8;
  v5 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v5);
}

uint64_t sub_1E64313B8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E64314B4, 0, 0);
}

uint64_t sub_1E64314B4()
{
  if (v0[2])
  {

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v1 = sub_1E65E3B68();
    __swift_project_value_buffer(v1, qword_1EE2EA2A0);
    v2 = sub_1E65E3B48();
    v3 = sub_1E65E6338();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E5DE9000, v2, v3, "Archived Sessions Updated - refreshing sample content items", v4, 2u);
      MEMORY[0x1E694F1C0](v4, -1, -1);
    }

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6431674, v6, v5);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1E6431674()
{

  sub_1E65E4E78();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E64313B8;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1E643172C(uint64_t a1)
{
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6430F7C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E643184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072878, &qword_1E65EBED8);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078790, &qword_1E65FD650);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6431980, 0, 0);
}

uint64_t sub_1E6431980()
{
  v1 = ContentAvailabilityService.makeNetworkConditionsUpdatedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6431A7C;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6431A7C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6431B94, 0, 0);
}

uint64_t sub_1E6431B94()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6431C70;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E6431C70()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6431D6C, 0, 0);
}

uint64_t sub_1E6431D6C()
{
  if (*(v0 + 112) == 3)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6338();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "Network Conditions Updated — refreshing sample content items", v6, 2u);
      MEMORY[0x1E694F1C0](v6, -1, -1);
    }

    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v8 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6431F2C, v8, v7);
  }
}

uint64_t sub_1E6431F2C()
{

  sub_1E65E4E78();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E6431C70;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E6431FE4(uint64_t a1)
{
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E643184C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6432104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6432238, 0, 0);
}

uint64_t sub_1E6432238()
{
  v1 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6432334;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6432334()
{

  return MEMORY[0x1EEE6DFA0](sub_1E643244C, 0, 0);
}

uint64_t sub_1E643244C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6432528;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E6432528()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6432624, 0, 0);
}

uint64_t sub_1E6432624()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6338();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "Significant Time Change — refreshing sample content items", v6, 2u);
      MEMORY[0x1E694F1C0](v6, -1, -1);
    }

    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v8 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64327E4, v8, v7);
  }
}

uint64_t sub_1E64327E4()
{

  sub_1E65E4E78();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E6432528;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E643289C(uint64_t a1)
{
  Description = type metadata accessor for AppStateService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6432104(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E64329BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6432AF0, 0, 0);
}

uint64_t sub_1E6432AF0()
{
  v1 = ContentAvailabilityService.makeContentAvailabilityUpdatedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6432BEC;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6432BEC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6432D04, 0, 0);
}

uint64_t sub_1E6432D04()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6432DE0;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E6432DE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6432EDC, 0, 0);
}

uint64_t sub_1E6432EDC()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6338();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "Content Availability Updated — refreshing sample content items", v6, 2u);
      MEMORY[0x1E694F1C0](v6, -1, -1);
    }

    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v8 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E643309C, v8, v7);
  }
}

uint64_t sub_1E643309C()
{

  sub_1E65E4E78();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E6432DE0;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E6433154(uint64_t a1)
{
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E64329BC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6433274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64333A8, 0, 0);
}

uint64_t sub_1E64333A8()
{
  v1 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E64334A4;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E64334A4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E60EC658;
  }

  else
  {
    v2 = sub_1E64335D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64335D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E64336B0;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v5);
}

uint64_t sub_1E64336B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E64337AC, 0, 0);
}

uint64_t sub_1E64337AC()
{
  if (*(v0 + 120) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6338();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "Catalog Updated — refreshing sample content items", v6, 2u);
      MEMORY[0x1E694F1C0](v6, -1, -1);
    }

    sub_1E65E6058();
    *(v0 + 112) = sub_1E65E6048();
    v8 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E643396C, v8, v7);
  }
}

uint64_t sub_1E643396C()
{

  sub_1E65E4E78();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1E64336B0;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 120, 0, 0, v2);
}

uint64_t sub_1E6433A24(uint64_t a1)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6433274(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6433B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796C0, &qword_1E6601F28);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6433CE0, 0, 0);
}

uint64_t sub_1E6433CE0()
{
  v1 = CatalogService.makeSummaryShelfLockupDescriptorsCacheUpdatedStream.getter();
  v0[13] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1E6433DDC;
  v4 = v0[9];

  return v6(v4);
}

uint64_t sub_1E6433DDC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1E624733C;
  }

  else
  {
    v2 = sub_1E6433F0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6433F0C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1E6433FE8;
  v5 = v0[10];

  return MEMORY[0x1EEE6D9C8](v0 + 20, 0, 0, v5);
}

uint64_t sub_1E6433FE8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E64340E4, 0, 0);
}

uint64_t sub_1E64340E4()
{
  if (*(v0 + 160) == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6338();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "Summary shelf lockup descriptors updated — refreshing summary sample content items", v6, 2u);
      MEMORY[0x1E694F1C0](v6, -1, -1);
    }

    *(v0 + 161) = 0;
    *(v0 + 136) = sub_1E65E6058();
    *(v0 + 144) = sub_1E65E6048();
    v8 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64342B8, v8, v7);
  }
}

uint64_t sub_1E64342B8()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6434334, 0, 0);
}

uint64_t sub_1E6434334(uint64_t a1)
{
  *(v1 + 152) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E64343C0, v3, v2);
}

uint64_t sub_1E64343C0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  sub_1E65E4E18();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1E6433FE8;
  v5 = v0[10];

  return MEMORY[0x1EEE6D9C8](v0 + 20, 0, 0, v5);
}

uint64_t sub_1E64344A0(uint64_t a1)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6433B44(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E64345C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D88D8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6434624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D88D8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E64346A8(uint64_t a1, char a2, void *a3)
{
  v59 = sub_1E65D8258();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072088, &qword_1E65EA770);
  v56 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v50 - v10);
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_24;
  }

  v50 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v56 + 80);
  v55 = a1;
  v14 = (v57 + 32);
  v52 = a1 + ((v13 + 32) & ~v13);
  sub_1E5DFD1CC(v52, v11, &qword_1ED072088, &qword_1E65EA770);
  v15 = v11[1];
  v62 = *v11;
  v16 = v62;
  v63 = v15;
  v17 = *v14;
  v53 = v12;
  v51 = v17;
  v17(v58, v11 + v12, v59);
  v18 = *a3;
  v20 = sub_1E6215038(v16, v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1E64237A8();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_1E6419DEC(v23, a2 & 1);
  v25 = sub_1E6215038(v16, v15);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v29 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = (v29[6] + 16 * v20);
      *v30 = v16;
      v30[1] = v15;
      v51((v29[7] + *(v57 + 72) * v20), v58, v59);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29[2] = v33;
      if (v54 != 1)
      {
        v34 = 1;
        while (v34 < *(v55 + 16))
        {
          sub_1E5DFD1CC(v52 + *(v56 + 72) * v34, v11, &qword_1ED072088, &qword_1E65EA770);
          v35 = v11[1];
          v62 = *v11;
          v36 = v62;
          v63 = v35;
          v37 = *v14;
          (*v14)(v58, v11 + v53, v59);
          v38 = *a3;
          v39 = sub_1E6215038(v36, v35);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v32 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v32)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_1E6419DEC(v43, 1);
            v39 = sub_1E6215038(v36, v35);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v36;
          v47[1] = v35;
          v37((v46[7] + *(v57 + 72) * v39), v58, v59);
          v48 = v46[2];
          v32 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          ++v34;
          v46[2] = v49;
          if (v54 == v34)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = swift_allocError();
    swift_willThrow();
    v64 = v27;
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v57 + 8))(v58, v59);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1E65E6C68();
  __break(1u);
LABEL_29:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6611C70);
  sub_1E65E69B8();
  MEMORY[0x1E694D7C0](39, 0xE100000000000000);
  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E6434C30(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(sub_1E65D9898() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1E65D7848() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  Description = type metadata accessor for LocalizationService()[-1].Description;
  v14 = (v11 + v12 + *(Description + 80)) & ~*(Description + 80);
  v15 = (Description[8] + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_1E5DFA78C;

  return sub_1E6430094(a1, a2, v2 + v8, v2 + v11, v2 + v14, v2 + v15);
}

unint64_t sub_1E6434E0C()
{
  result = qword_1EE2D4888;
  if (!qword_1EE2D4888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CD0, &qword_1E660EF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4888);
  }

  return result;
}

uint64_t sub_1E6434E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796C8, &qword_1E6601F30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6434EE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6434F28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6434F88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v27 = a2;
  v5 = type metadata accessor for AppComposer(0);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796E8, &qword_1E6601F58);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = sub_1E65DBEF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65DBDA8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  (*(v11 + 16))(v13, v27, v10);
  sub_1E65DBD98();
  sub_1E5E1DEAC(a1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v19 = swift_allocObject();
  sub_1E5E1FA80(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = (v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v30;
  v22 = v31;
  *v20 = v30;
  v20[1] = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  type metadata accessor for AppFeature(0);
  sub_1E6435E3C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E6435E3C(&qword_1EE2D6BC0, MEMORY[0x1E699D2F8], MEMORY[0x1E699D2F0]);
  swift_bridgeObjectRetain_n();
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v24 = sub_1E65E4F08();
  (*(v32 + 8))(v9, v33);
  (*(v15 + 8))(v17, v14);
  return v24;
}

uint64_t sub_1E6435384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v36 = a5;
  v37 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_1E65D7848();
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DBED8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v38 = &v31 - v20;
  v21 = sub_1E65DB9F8();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v22 = type metadata accessor for AppState(0);
  v23 = type metadata accessor for AppComposer(0);
  sub_1E5FB9AF8(*(a2 + *(v23 + 20) + 8));
  v24 = *(a1 + *(v22 + 64) + 8);
  if (*(v24 + 16) && (v25 = sub_1E6215038(v37, v32), (v26 & 1) != 0))
  {
    (*(v16 + 16))(v19, *(v24 + 56) + *(v16 + 72) * v25, v15);
    (*(v16 + 32))(v38, v19, v15);
  }

  else
  {
    (*(v16 + 104))(v38, *MEMORY[0x1E699D310], v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v12);
  sub_1E5DFE50C(v9, &qword_1ED071F78, &unk_1E65EA3F0);
  v28 = v33;
  v27 = v34;
  v29 = *(v33 + 48);
  if (v29(v12, 1, v34) == 1)
  {
    sub_1E65D77C8();
    if (v29(v12, 1, v27) != 1)
    {
      sub_1E5DFE50C(v12, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v28 + 32))(v35, v12, v27);
  }

  return sub_1E65DBCF8();
}

uint64_t sub_1E6435798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1E6435384(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_1E6435848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079270, &qword_1E6601400);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;

  sub_1E65DBCE8();
  v9 = sub_1E65DBED8();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  type metadata accessor for AppState(0);
  return sub_1E6408E94(v8, a3, a4);
}

uint64_t sub_1E6435950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6435974, 0, 0);
}

uint64_t sub_1E6435974(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  if (sub_1E65DB988() == v3 && v4 == v2)
  {
  }

  else
  {
    v6 = sub_1E65E6C18();

    if ((v6 & 1) == 0)
    {
      v7 = v1[9];

      v8 = v1[8];
      goto LABEL_9;
    }
  }

  v8 = sub_1E65DB998();
  v7 = v9;
LABEL_9:
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v10 = AwardsService.fetchSeymourAchievementProgress.getter();
  v1[11] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v12 = swift_allocObject();
  v1[12] = v12;
  *(v12 + 16) = xmmword_1E65EA670;
  *(v12 + 32) = v8;
  *(v12 + 40) = v7;
  v15 = (v10 + *v10);
  v13 = swift_task_alloc();
  v1[13] = v13;
  *v13 = v1;
  v13[1] = sub_1E6435B3C;

  return v15(v12);
}

uint64_t sub_1E6435B3C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_1E6435DD0;
  }

  else
  {

    *(v4 + 120) = a1;
    v5 = sub_1E6435C74;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6435C74()
{
  sub_1E6059D88(*(v0 + 120), v0 + 16);

  v1 = *(v0 + 48);
  if (v1 == 255)
  {
    v8 = sub_1E65DB938();
    sub_1E6435E3C(&qword_1ED076CD8, MEMORY[0x1E699D160], MEMORY[0x1E699D168]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x1E699D150], v8);
    swift_willThrow();
    v7 = *(v0 + 8);
  }

  else
  {
    v2 = *(v0 + 56);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 24);
    v6 = v1 & 1;
    if (v6)
    {
      v5 = *(v0 + 24) & 1;
      v3 = 0;
    }

    *v2 = *(v0 + 16);
    *(v2 + 8) = v5;
    *(v2 + 16) = v4;
    *(v2 + 24) = v3;
    *(v2 + 32) = v6;
    v7 = *(v0 + 8);
  }

  return v7();
}

uint64_t sub_1E6435DD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6435E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6435E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796F0, &qword_1E6601F68);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v27 - v7;
  v8 = type metadata accessor for AppComposer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65E35F8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1E65E35C8();
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *v3;
  v28 = v3;
  sub_1E5E1DEAC(v3, v11);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = v17 + v10;
  v29 = v18;
  v19 = swift_allocObject();
  sub_1E5E1FA80(v11, v19 + v17);
  sub_1E65E35E8();
  sub_1E65E35B8();
  sub_1E5E1DEAC(v3, v11);
  v20 = swift_allocObject();
  sub_1E5E1FA80(v11, v20 + v17);
  v21 = (v20 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a1;
  v21[1] = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  type metadata accessor for AppFeature(0);
  sub_1E6437E1C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E6437E1C(&qword_1EE2D6078, MEMORY[0x1E699ED30], MEMORY[0x1E699ED28]);
  swift_bridgeObjectRetain_n();
  v23 = v33;
  v24 = v31;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  sub_1E65E4F08();
  (*(v34 + 8))(v23, v35);
  (*(v32 + 8))(v16, v24);
  sub_1E5E1DEAC(v28, v11);
  v25 = swift_allocObject();
  sub_1E5E1FA80(v11, v25 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  sub_1E5FEB2FC();
  return sub_1E65E34D8();
}

uint64_t sub_1E6436330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079700, &qword_1E6601F88);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796F8, &qword_1E6601F80);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v4[12] = swift_task_alloc();
  v7 = sub_1E65DAC98();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v4[16] = swift_task_alloc();
  v8 = sub_1E65E3598();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_1E65D8BB8();
  v4[21] = swift_task_alloc();
  v9 = sub_1E65DA0B8();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = sub_1E65D7848();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079708, &qword_1E6601FB0);
  v4[32] = swift_task_alloc();
  v11 = sub_1E65D8258();
  v4[33] = v11;
  v4[34] = *(v11 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v12 = sub_1E65D9CC8();
  v4[37] = v12;
  v4[38] = *(v12 - 8);
  v4[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64367D8, 0, 0);
}

uint64_t sub_1E64367D8()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);

  sub_1E65D9C88();
  *(v0 + 368) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 320) = type metadata accessor for AppEnvironment(0);
  v4 = CatalogService.fetchRemoteCatalogLockups.getter();
  *(v0 + 328) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078860, &qword_1E65FDBF0);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v0 + 336) = v7;
  *(v7 + 16) = xmmword_1E65EA670;
  (*(v2 + 16))(v7 + v6, v1, v3);
  v10 = (v4 + *v4);
  v8 = swift_task_alloc();
  *(v0 + 344) = v8;
  *v8 = v0;
  v8[1] = sub_1E64369B0;

  return v10(33, v7);
}

uint64_t sub_1E64369B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {

    v4 = sub_1E6437298;
  }

  else
  {

    v4 = sub_1E6436B1C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6436B1C()
{
  v1 = *(v0 + 352);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 280);
    v3 = *(v0 + 288);
    v4 = *(v0 + 264);
    v5 = *(v0 + 272);
    (*(v5 + 16))(v2, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    (*(v5 + 32))(v3, v2, v4);
    v6 = *(sub_1E65D81A8() + 16);

    if (v6)
    {
      v7 = *(v0 + 320);
      v8 = *(v0 + 232);
      v10 = *(v0 + 208);
      v9 = *(v0 + 216);
      v11 = *(v0 + 200);
      v12 = *(v0 + 40) + *(v0 + 368);
      v13 = sub_1E65D81A8();
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E63C4134(v9, (v12 + *(v7 + 136)), v13, v8);

      (*(v10 + 8))(v9, v11);
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v22 = *(v0 + 232);
    v23 = sub_1E65D72D8();
    v40 = *(*(v23 - 8) + 56);
    (v40)(v22, v14, 1, v23);
    v24 = *(sub_1E65D8168() + 16);

    if (v24)
    {
      v25 = *(v0 + 320);
      v27 = *(v0 + 216);
      v26 = *(v0 + 224);
      v28 = *(v0 + 208);
      v59 = *(v0 + 200);
      v29 = *(v0 + 40) + *(v0 + 368);
      v30 = sub_1E65D8168();
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E63C4134(v27, (v29 + *(v25 + 136)), v30, v26);

      (*(v28 + 8))(v27, v59);
    }

    v50 = *(v0 + 288);
    v53 = *(v0 + 272);
    v54 = *(v0 + 264);
    v49 = *(v0 + 240);
    v47 = *(v0 + 248);
    v48 = *(v0 + 232);
    v45 = *(v0 + 224);
    v46 = *(v0 + 256);
    v31 = *(v0 + 192);
    v32 = *(v0 + 168);
    v51 = *(v0 + 184);
    v52 = *(v0 + 176);
    v56 = *(v0 + 160);
    v39 = *(v0 + 152);
    v60 = *(v0 + 144);
    v55 = *(v0 + 136);
    v33 = *(v0 + 120);
    v34 = *(v0 + 104);
    v35 = *(v0 + 112);
    v57 = *(v0 + 88);
    v41 = *(v0 + 80);
    v42 = *(v0 + 72);
    v58 = *(v0 + 64);
    v43 = *(v0 + 48);
    v44 = *(v0 + 56);
    v40();
    sub_1E65D8128();
    sub_1E65D8BA8();
    sub_1E6437DBC(v32, MEMORY[0x1E69CB950]);
    sub_1E65DA098();
    sub_1E65DAC38();
    v36 = *(v35 + 8);
    v36(v33, v34);
    sub_1E65DC2D8();
    sub_1E65DA098();
    sub_1E65DAC78();
    v36(v33, v34);
    sub_1E65D74C8();

    sub_1E65E3588();
    (*(v60 + 16))(v39, v56, v55);
    sub_1E65DA0A8();
    sub_1E6437E1C(&qword_1ED078778, MEMORY[0x1E699ED20], MEMORY[0x1E699ED18]);
    sub_1E65DC438();
    (*(v41 + 16))(v58, v57, v42);
    swift_storeEnumTagMultiPayload();
    sub_1E5DFD1CC(v58, v46, &qword_1ED079700, &qword_1E6601F88);
    (*(v44 + 56))(v46, 0, 1, v43);
    sub_1E5DFD1CC(v45, v47, &qword_1ED072D90, &qword_1E66040F0);
    sub_1E5DFD1CC(v48, v49, &qword_1ED072D90, &qword_1E66040F0);
    sub_1E65E35A8();
    sub_1E5DFE50C(v58, &qword_1ED079700, &qword_1E6601F88);
    (*(v41 + 8))(v57, v42);
    (*(v60 + 8))(v56, v55);
    (*(v51 + 8))(v31, v52);
    sub_1E5DFE50C(v45, &qword_1ED072D90, &qword_1E66040F0);
    sub_1E5DFE50C(v48, &qword_1ED072D90, &qword_1E66040F0);
    (*(v53 + 8))(v50, v54);
  }

  else
  {
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    v17 = *(v0 + 240);
    v18 = *(v0 + 48);
    v19 = *(v0 + 56);

    (*(v19 + 56))(v16, 1, 1, v18);
    v20 = sub_1E65D72D8();
    v21 = *(*(v20 - 8) + 56);
    v21(v15, 1, 1, v20);
    v21(v17, 1, 1, v20);
    sub_1E65E35A8();
  }

  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1E6437298()
{
  (*(v0[38] + 8))(v0[39], v0[37]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6437400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFA78C;

  return sub_1E6436330(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E64374F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v34 = a3;
  v35 = a1;
  v37 = a4;
  v38 = a2;
  v4 = sub_1E65E3528();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E65E3508();
  v6 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E35D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v31 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E0708();
  (*(v18 + 8))(v20, v17);
  v21 = v34;
  v22 = *(v35 + *(type metadata accessor for AppState(0) + 304));
  if (*(v22 + 16) && (v23 = sub_1E6215038(v38, v21), (v24 & 1) != 0))
  {
    v25 = *(v22 + 56) + *(v6 + 72) * v23;
    v26 = v32;
    v27 = v33;
    (*(v6 + 16))(v32, v25, v33);
    v28 = v31;
    sub_1E65E34E8();
    (*(v6 + 8))(v26, v27);
    (*(v9 + 32))(v16, v28, v8);
  }

  else
  {
    (*(v9 + 104))(v16, *MEMORY[0x1E699ED38], v8);
  }

  sub_1E65E3518();
  (*(v9 + 16))(v12, v16, v8);
  sub_1E65E34F8();
  return (*(v9 + 8))(v16, v8);
}

uint64_t sub_1E64378CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1E64374F4(a1, v7, v8, a2);
}

uint64_t sub_1E643797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079330, &qword_1E6601498);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_1E65E3508();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  type metadata accessor for AppState(0);

  return sub_1E640906C(v9, a3, a4);
}

uint64_t sub_1E6437AB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1E65E3598();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796F8, &qword_1E6601F80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ArtworkDescriptor(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079700, &qword_1E6601F88);
  sub_1E65DC358();
  sub_1E65DC448();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for AppComposer(0);
  sub_1E633BAC0(v14);
  (*(v5 + 8))(v7, v4);
  sub_1E64D2DD0(v14, a1, a2);
  v15 = sub_1E65E4B98();
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v14, a1, v18);
  sub_1E6437DBC(v14, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v20 = (v18 + *(result + 36));
  *v20 = v15;
  v20[1] = v17;
  return result;
}

uint64_t sub_1E6437D3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E6437AB4(v4, a1);
}

uint64_t sub_1E6437DBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6437E1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6437E6C()
{
  if (*v0)
  {
    return 0x6C616E7265747865;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_1E6437EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E6437F7C(uint64_t a1)
{
  v2 = sub_1E643AD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6437FB8(uint64_t a1)
{
  v2 = sub_1E643AD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6437FF4(uint64_t a1)
{
  v2 = sub_1E643AD88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6438030(uint64_t a1)
{
  v2 = sub_1E643AD88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643806C(uint64_t a1)
{
  v2 = sub_1E643ADDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64380A8(uint64_t a1)
{
  v2 = sub_1E643ADDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteParticipantScope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079710, &qword_1E6601FE0);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079718, &qword_1E6601FE8);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - v5;
  v6 = sub_1E65D8DE8();
  v34 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for RemoteParticipantScope(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079720, &qword_1E6601FF0);
  v36 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E643AD34();
  v17 = v34;
  sub_1E65E6DA8();
  sub_1E643AECC(v35, v13, type metadata accessor for RemoteParticipantScope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = *(v17 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v20 = v27;
    v19(v27, v13, v6);
    v38 = 1;
    sub_1E643AD88();
    v21 = v31;
    sub_1E65E6B18();
    sub_1E643AE30(&qword_1ED079738, MEMORY[0x1E69CBB90], MEMORY[0x1E69CBB98]);
    v22 = v33;
    sub_1E65E6B78();
    (*(v32 + 8))(v21, v22);
    v10 = v20;
  }

  else
  {
    v19(v10, v13, v6);
    v37 = 0;
    sub_1E643ADDC();
    v23 = v28;
    sub_1E65E6B18();
    sub_1E643AE30(&qword_1ED079738, MEMORY[0x1E69CBB90], MEMORY[0x1E69CBB98]);
    v24 = v30;
    sub_1E65E6B78();
    (*(v29 + 8))(v23, v24);
  }

  (*(v17 + 8))(v10, v6);
  return (*(v36 + 8))(v16, v14);
}

uint64_t RemoteParticipantScope.hash(into:)(uint64_t a1)
{
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RemoteParticipantScope(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E643AECC(v1, v8, type metadata accessor for RemoteParticipantScope);
  v9 = swift_getEnumCaseMultiPayload() == 1;
  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x1E694E740](v9);
  sub_1E643AE30(&qword_1ED079748, MEMORY[0x1E69CBB90], MEMORY[0x1E69CBBA0]);
  sub_1E65E5B48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RemoteParticipantScope.hashValue.getter()
{
  sub_1E65E6D28();
  RemoteParticipantScope.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t RemoteParticipantScope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079750, &qword_1E6601FF8);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079758, &qword_1E6602000);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079760, &unk_1E6602008);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for RemoteParticipantScope(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v18 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E643AD34();
  v19 = v51;
  sub_1E65E6D98();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v40 = v12;
  v41 = v15;
  v21 = v49;
  v20 = v50;
  v42 = 0;
  v39 = v17;
  v51 = v9;
  v22 = v48;
  v23 = sub_1E65E6AF8();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_1E5FBE3F0();
  v26 = v6;
  v27 = v8;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v32 = sub_1E65E68F8();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
    *v34 = v51;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((v25 & 1) == 0)
  {
    v57 = 0;
    sub_1E643ADDC();
    v36 = v42;
    sub_1E65E6A68();
    if (!v36)
    {
      sub_1E65D8DE8();
      sub_1E643AE30(&qword_1ED079768, MEMORY[0x1E69CBB90], MEMORY[0x1E69CBBB0]);
      v30 = v41;
      v37 = v46;
      sub_1E65E6AD8();
      (*(v45 + 8))(v21, v37);
      (*(v22 + 8))(v8, v6);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v57 = 1;
  sub_1E643AD88();
  v28 = v20;
  v29 = v42;
  sub_1E65E6A68();
  if (v29)
  {
LABEL_8:
    (*(v22 + 8))(v27, v6);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  sub_1E65D8DE8();
  sub_1E643AE30(&qword_1ED079768, MEMORY[0x1E69CBB90], MEMORY[0x1E69CBBB0]);
  v30 = v40;
  v31 = v44;
  sub_1E65E6AD8();
  (*(v47 + 8))(v28, v31);
  (*(v22 + 8))(v27, v26);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v38 = v39;
  sub_1E643AFDC(v30, v39, type metadata accessor for RemoteParticipantScope);
  sub_1E643AFDC(v38, v43, type metadata accessor for RemoteParticipantScope);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1E6438E74()
{
  sub_1E65E6D28();
  RemoteParticipantScope.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E6438ED4()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_1E6438F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E6438FDC(uint64_t a1)
{
  v2 = sub_1E643AE78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6439018(uint64_t a1)
{
  v2 = sub_1E643AE78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6439054(uint64_t a1)
{
  v2 = sub_1E643AF88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6439090(uint64_t a1)
{
  v2 = sub_1E643AF88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64390CC()
{
  if (*v0)
  {
    return 0x696C696261706163;
  }

  else
  {
    return 0x7069636974726170;
  }
}

uint64_t sub_1E6439118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E64391FC(uint64_t a1)
{
  v2 = sub_1E643AF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6439238(uint64_t a1)
{
  v2 = sub_1E643AF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BrowsingIdentity.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079770, &qword_1E6602018);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v25 - v3;
  v4 = sub_1E65DA2A8();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for RemoteParticipantScope(0);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079778, &qword_1E6602020);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079780, &unk_1E6602028);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E643AE78();
  sub_1E65E6DA8();
  sub_1E643AECC(v33, v13, type metadata accessor for BrowsingIdentity);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v18 - 8) + 48))(v13, 1, v18) == 1)
  {
    v37 = 0;
    sub_1E643AF88();
    sub_1E65E6B18();
    (*(v26 + 8))(v10, v27);
    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v20 = *(v18 + 48);
    sub_1E643AFDC(v13, v7, type metadata accessor for RemoteParticipantScope);
    v21 = v29;
    v22 = v30;
    (*(v29 + 32))(v35, &v13[v20], v30);
    v40 = 1;
    sub_1E643AF34();
    sub_1E65E6B18();
    v39 = 0;
    sub_1E643AE30(&qword_1ED079798, type metadata accessor for RemoteParticipantScope, &protocol conformance descriptor for RemoteParticipantScope);
    v23 = v32;
    v24 = v34;
    sub_1E65E6B78();
    if (!v24)
    {
      v38 = 1;
      sub_1E643AE30(&qword_1ED0797A0, MEMORY[0x1E69CCBE8], MEMORY[0x1E69CCBF0]);
      sub_1E65E6B78();
    }

    (*(v31 + 8))(v36, v23);
    (*(v21 + 8))(v35, v22);
    sub_1E643B734(v7, type metadata accessor for RemoteParticipantScope);
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t BrowsingIdentity.hash(into:)(uint64_t a1)
{
  v3 = sub_1E65DA2A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteParticipantScope(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E643AECC(v1, v12, type metadata accessor for BrowsingIdentity);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    return MEMORY[0x1E694E740](0);
  }

  v15 = *(v13 + 48);
  sub_1E643AFDC(v12, v9, type metadata accessor for RemoteParticipantScope);
  (*(v4 + 32))(v6, &v12[v15], v3);
  MEMORY[0x1E694E740](1);
  RemoteParticipantScope.hash(into:)(a1);
  sub_1E643AE30(&qword_1ED0797B0, MEMORY[0x1E69CCBE8], MEMORY[0x1E69CCBF8]);
  sub_1E65E5B48();
  (*(v4 + 8))(v6, v3);
  return sub_1E643B734(v9, type metadata accessor for RemoteParticipantScope);
}

uint64_t BrowsingIdentity.hashValue.getter()
{
  v1 = sub_1E65DA2A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RemoteParticipantScope(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E6D28();
  sub_1E643AECC(v0, v10, type metadata accessor for BrowsingIdentity);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    MEMORY[0x1E694E740](0);
  }

  else
  {
    v12 = *(v11 + 48);
    sub_1E643AFDC(v10, v7, type metadata accessor for RemoteParticipantScope);
    (*(v2 + 32))(v4, &v10[v12], v1);
    MEMORY[0x1E694E740](1);
    RemoteParticipantScope.hash(into:)(v15);
    sub_1E643AE30(&qword_1ED0797B0, MEMORY[0x1E69CCBE8], MEMORY[0x1E69CCBF8]);
    sub_1E65E5B48();
    (*(v2 + 8))(v4, v1);
    sub_1E643B734(v7, type metadata accessor for RemoteParticipantScope);
  }

  return sub_1E65E6D78();
}

uint64_t BrowsingIdentity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0797B8, &qword_1E6602038);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0797C0, &qword_1E6602040);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0797C8, &qword_1E6602048);
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for BrowsingIdentity(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  v17 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1E643AE78();
  v18 = v45;
  sub_1E65E6D98();
  if (!v18)
  {
    v45 = v11;
    v36 = v14;
    v37 = v16;
    v19 = v41;
    v20 = v42;
    v21 = v43;
    v22 = sub_1E65E6AF8();
    v23 = (2 * *(v22 + 16)) | 1;
    v47 = v22;
    v48 = v22 + 32;
    v49 = 0;
    v50 = v23;
    v24 = sub_1E5FBE3F0();
    if (v24 == 2 || v49 != v50 >> 1)
    {
      v28 = sub_1E65E68F8();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
      *v30 = v45;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v44 + 8))(v10, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v24)
      {
        v51 = 1;
        sub_1E643AF34();
        sub_1E65E6A68();
        v25 = v21;
        type metadata accessor for RemoteParticipantScope(0);
        v51 = 0;
        sub_1E643AE30(&qword_1ED0797D0, type metadata accessor for RemoteParticipantScope, &protocol conformance descriptor for RemoteParticipantScope);
        v26 = v36;
        sub_1E65E6AD8();
        v27 = v44;
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
        v45 = v8;
        v39 = v33;
        sub_1E65DA2A8();
        v51 = 1;
        sub_1E643AE30(&qword_1ED0797D8, MEMORY[0x1E69CCBE8], MEMORY[0x1E69CCC08]);
        sub_1E65E6AD8();
        (*(v40 + 8))(v19, v20);
        (*(v27 + 8))(v10, v45);
        swift_unknownObjectRelease();
        (*(*(v39 - 8) + 56))(v26, 0, 1);
        v34 = v37;
        sub_1E643AFDC(v26, v37, type metadata accessor for BrowsingIdentity);
      }

      else
      {
        v51 = 0;
        sub_1E643AF88();
        sub_1E65E6A68();
        v25 = v21;
        (*(v39 + 8))(v7, v38);
        (*(v44 + 8))(v10, v8);
        swift_unknownObjectRelease();
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
        v34 = v37;
        (*(*(v32 - 8) + 56))(v37, 1, 1, v32);
      }

      sub_1E643AFDC(v34, v25, type metadata accessor for BrowsingIdentity);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_1E643A49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1E65E6D28();
  a4(v6);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard22RemoteParticipantScopeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v28 = sub_1E65D8DE8();
  v3 = *(v28 - 8);
  v4 = MEMORY[0x1EEE9AC00](v28);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = type metadata accessor for RemoteParticipantScope(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079870, &qword_1E6602820);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - v17;
  v19 = *(v16 + 56);
  sub_1E643AECC(a1, &v27 - v17, type metadata accessor for RemoteParticipantScope);
  sub_1E643AECC(v27, &v18[v19], type metadata accessor for RemoteParticipantScope);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E643AECC(v18, v14, type metadata accessor for RemoteParticipantScope);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v25 = v28;
      (*(v3 + 32))(v8, &v18[v19], v28);
      v21 = MEMORY[0x1E69407C0](v14, v8);
      v22 = *(v3 + 8);
      v22(v8, v25);
      v23 = v14;
      v24 = v25;
      goto LABEL_6;
    }

LABEL_8:
    (*(v3 + 8))(v14, v28);
    sub_1E5DFE50C(v18, &qword_1ED079870, &qword_1E6602820);
    v21 = 0;
    return v21 & 1;
  }

  sub_1E643AECC(v18, v12, type metadata accessor for RemoteParticipantScope);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v14 = v12;
    goto LABEL_8;
  }

  v20 = v28;
  (*(v3 + 32))(v6, &v18[v19], v28);
  v21 = MEMORY[0x1E69407C0](v12, v6);
  v22 = *(v3 + 8);
  v22(v6, v20);
  v23 = v12;
  v24 = v20;
LABEL_6:
  v22(v23, v24);
  sub_1E643B734(v18, type metadata accessor for RemoteParticipantScope);
  return v21 & 1;
}

BOOL _s10Blackbeard16BrowsingIdentityO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DA2A8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v32 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v32 - v8;
  v9 = type metadata accessor for RemoteParticipantScope(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079878, &qword_1E6602828);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - v17;
  v19 = &v32 + *(v16 + 56) - v17;
  sub_1E643AECC(a1, &v32 - v17, type metadata accessor for BrowsingIdentity);
  sub_1E643AECC(a2, v19, type metadata accessor for BrowsingIdentity);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  v21 = *(*(v20 - 8) + 48);
  if (v21(v18, 1, v20) == 1)
  {
    if (v21(v19, 1, v20) == 1)
    {
      sub_1E643B734(v18, type metadata accessor for BrowsingIdentity);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1E643AECC(v18, v14, type metadata accessor for BrowsingIdentity);
  v23 = *(v20 + 48);
  if (v21(v19, 1, v20) == 1)
  {
    (*(v5 + 8))(&v14[v23], v4);
    sub_1E643B734(v14, type metadata accessor for RemoteParticipantScope);
LABEL_6:
    sub_1E5DFE50C(v18, &qword_1ED079878, &qword_1E6602828);
    return 0;
  }

  sub_1E643AFDC(v19, v11, type metadata accessor for RemoteParticipantScope);
  v24 = *(v5 + 32);
  v24(v33, &v14[v23], v4);
  v25 = &v19[v23];
  v26 = v32;
  v24(v32, v25, v4);
  v27 = _s10Blackbeard22RemoteParticipantScopeO2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_1E643B734(v14, type metadata accessor for RemoteParticipantScope);
  if (v27)
  {
    sub_1E643AE30(&qword_1ED079880, MEMORY[0x1E69CCBE8], MEMORY[0x1E69CCC00]);
    v28 = v33;
    sub_1E65E5E98();
    sub_1E65E5E98();
    v29 = *(v5 + 8);
    v29(v26, v4);
    v29(v28, v4);
    sub_1E643B734(v11, type metadata accessor for RemoteParticipantScope);
    v30 = v35 == v34;
    sub_1E643B734(v18, type metadata accessor for BrowsingIdentity);
    return v30;
  }

  v31 = *(v5 + 8);
  v31(v26, v4);
  v31(v33, v4);
  sub_1E643B734(v11, type metadata accessor for RemoteParticipantScope);
  sub_1E643B734(v18, type metadata accessor for BrowsingIdentity);
  return 0;
}

unint64_t sub_1E643AD34()
{
  result = qword_1ED079728;
  if (!qword_1ED079728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079728);
  }

  return result;
}

unint64_t sub_1E643AD88()
{
  result = qword_1ED079730;
  if (!qword_1ED079730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079730);
  }

  return result;
}

unint64_t sub_1E643ADDC()
{
  result = qword_1ED079740;
  if (!qword_1ED079740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079740);
  }

  return result;
}

uint64_t sub_1E643AE30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E643AE78()
{
  result = qword_1ED079788;
  if (!qword_1ED079788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079788);
  }

  return result;
}

uint64_t sub_1E643AECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E643AF34()
{
  result = qword_1ED079790;
  if (!qword_1ED079790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079790);
  }

  return result;
}

unint64_t sub_1E643AF88()
{
  result = qword_1ED0797A8;
  if (!qword_1ED0797A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0797A8);
  }

  return result;
}

uint64_t sub_1E643AFDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E643B160()
{
  result = qword_1ED0797E8;
  if (!qword_1ED0797E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0797E8);
  }

  return result;
}

unint64_t sub_1E643B1B8()
{
  result = qword_1ED0797F0;
  if (!qword_1ED0797F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0797F0);
  }

  return result;
}

unint64_t sub_1E643B210()
{
  result = qword_1ED0797F8;
  if (!qword_1ED0797F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0797F8);
  }

  return result;
}

unint64_t sub_1E643B268()
{
  result = qword_1ED079800;
  if (!qword_1ED079800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079800);
  }

  return result;
}

unint64_t sub_1E643B2C0()
{
  result = qword_1ED079808;
  if (!qword_1ED079808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079808);
  }

  return result;
}

unint64_t sub_1E643B318()
{
  result = qword_1ED079810;
  if (!qword_1ED079810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079810);
  }

  return result;
}

unint64_t sub_1E643B370()
{
  result = qword_1ED079818;
  if (!qword_1ED079818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079818);
  }

  return result;
}

unint64_t sub_1E643B3C8()
{
  result = qword_1ED079820;
  if (!qword_1ED079820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079820);
  }

  return result;
}

unint64_t sub_1E643B420()
{
  result = qword_1ED079828;
  if (!qword_1ED079828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079828);
  }

  return result;
}

unint64_t sub_1E643B478()
{
  result = qword_1ED079830;
  if (!qword_1ED079830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079830);
  }

  return result;
}

unint64_t sub_1E643B4D0()
{
  result = qword_1ED079838;
  if (!qword_1ED079838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079838);
  }

  return result;
}

unint64_t sub_1E643B528()
{
  result = qword_1ED079840;
  if (!qword_1ED079840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079840);
  }

  return result;
}

unint64_t sub_1E643B580()
{
  result = qword_1ED079848;
  if (!qword_1ED079848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079848);
  }

  return result;
}

unint64_t sub_1E643B5D8()
{
  result = qword_1ED079850;
  if (!qword_1ED079850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079850);
  }

  return result;
}

unint64_t sub_1E643B630()
{
  result = qword_1ED079858;
  if (!qword_1ED079858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079858);
  }

  return result;
}

unint64_t sub_1E643B688()
{
  result = qword_1ED079860;
  if (!qword_1ED079860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079860);
  }

  return result;
}

unint64_t sub_1E643B6E0()
{
  result = qword_1ED079868;
  if (!qword_1ED079868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079868);
  }

  return result;
}

uint64_t sub_1E643B734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard16ResolvedURLRouteO4RootO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 6;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E643B7BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 16))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 < 7)
  {
    v5 = 0;
  }

  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E643B81C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

void *sub_1E643B878(void *result, unsigned int a2)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 2147483642;
  }

  else if (a2)
  {
    result[1] = a2 + 5;
  }

  return result;
}

void sub_1E643B8EC(uint64_t a1)
{
  sub_1E643B960(319);
  if (v1 <= 0x3F)
  {
    sub_1E5E0D158();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E643B960(uint64_t a1)
{
  if (!qword_1ED079898)
  {
    type metadata accessor for ResolvedURLRoute.Action(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0798A0, &qword_1E66028E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED079898);
    }
  }
}

void sub_1E643BA00(uint64_t a1)
{
  sub_1E643BA9C(319);
  if (v1 <= 0x3F)
  {
    sub_1E643BB10(319);
    if (v2 <= 0x3F)
    {
      sub_1E643BC20(319);
      if (v3 <= 0x3F)
      {
        sub_1E643BD40(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1E643BA9C(uint64_t a1)
{
  if (!qword_1ED0798B8)
  {
    type metadata accessor for RouteDestination(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED0798B8);
    }
  }
}

void sub_1E643BB10(uint64_t a1)
{
  if (!qword_1ED0798C0)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for RouteDestination(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED0798C0);
    }
  }
}

void sub_1E643BC20(uint64_t a1)
{
  if (!qword_1ED0798C8)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0763E8, &qword_1E65F5500);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED0798C8);
    }
  }
}

void sub_1E643BD40(uint64_t a1)
{
  if (!qword_1ED0798D0)
  {
    type metadata accessor for RouteDestination(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED0798D0);
    }
  }
}

void sub_1E643BDAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RouteDestination(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v43[-v10];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v43[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43[-v15];
  v17 = type metadata accessor for ResolvedURLRoute.Action(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E643CDCC(v2, v19, type metadata accessor for ResolvedURLRoute.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v21 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288) + 48)];
      v22 = *v21;
      v23 = v21[1];
      sub_1E5F9CE80(v19, v16);
      MEMORY[0x1E694E740](0);
      RouteResource.hash(into:)(a1);
      RouteSource.hash(into:)(a1);
      sub_1E61B7778();
      if (v23 == 7)
      {
        v24 = 1;
        goto LABEL_20;
      }

      if (v23 == 6)
      {
        v24 = 0;
LABEL_20:
        MEMORY[0x1E694E740](v24);
LABEL_53:
        sub_1E65E6D48();
        v41 = v16;
        goto LABEL_56;
      }

      MEMORY[0x1E694E740](2);
      if (v23 > 2)
      {
        if (v23 == 3 || v23 == 4 || v23 == 5)
        {
          goto LABEL_52;
        }
      }

      else if (v23 <= 2)
      {
        goto LABEL_52;
      }

      v48 = 0x7974696C61646F6DLL;
      v49 = 0xE90000000000003ALL;
      MEMORY[0x1E694D7C0](v22, v23);
LABEL_52:
      sub_1E65E5D78();
      sub_1E5FFF3B4(v22, v23);

      goto LABEL_53;
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
    v33 = &v19[*(v32 + 48)];
    v34 = *v33;
    v35 = v33[8];
    v36 = &v19[*(v32 + 64)];
    v37 = *v36;
    v38 = v36[1];
    sub_1E5F9CE80(v19, v14);
    MEMORY[0x1E694E740](1);
    RouteResource.hash(into:)(a1);
    RouteSource.hash(into:)(a1);
    sub_1E61B7778();
    v48 = v34;
    LOBYTE(v49) = v35;
    RoutingContextPresentationStyle.hash(into:)(a1);
    if (v38 == 7)
    {
      v39 = 1;
      goto LABEL_22;
    }

    if (v38 == 6)
    {
      v39 = 0;
LABEL_22:
      MEMORY[0x1E694E740](v39);
LABEL_55:
      sub_1E65E6D48();
      sub_1E5F94E00(v34, v35);
      v41 = v14;
      goto LABEL_56;
    }

    MEMORY[0x1E694E740](2);
    if (v38 > 2)
    {
      if (v38 == 3 || v38 == 4 || v38 == 5)
      {
        goto LABEL_54;
      }
    }

    else if (v38 <= 2)
    {
      goto LABEL_54;
    }

    v48 = 0x7974696C61646F6DLL;
    v49 = 0xE90000000000003ALL;
    MEMORY[0x1E694D7C0](v37, v38);
LABEL_54:
    sub_1E65E5D78();
    sub_1E5FFF3B4(v37, v38);

    goto LABEL_55;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v40 = v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F0, &qword_1E65EC238) + 48)];
    sub_1E5F9CE80(v19, v8);
    MEMORY[0x1E694E740](3);
    RouteResource.hash(into:)(a1);
    RouteSource.hash(into:)(a1);
    sub_1E61B7778();
    MEMORY[0x1E694E740](v40);
    v41 = v8;
LABEL_56:
    sub_1E643D84C(v41, type metadata accessor for RouteDestination);
    return;
  }

  v26 = *v19;
  v25 = *(v19 + 1);
  v27 = v19[16];
  v28 = *(v19 + 4);
  v46 = *(v19 + 3);
  v47 = v19[40];
  MEMORY[0x1E694E740](2);
  MEMORY[0x1E694E740](*(v26 + 16));
  v29 = *(v26 + 16);
  if (v29)
  {
    v44 = v27;
    v45 = v25;
    v30 = v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v31 = *(v5 + 72);
    do
    {
      sub_1E643CDCC(v30, v11, type metadata accessor for RouteDestination);
      RouteResource.hash(into:)(a1);
      RouteSource.hash(into:)(a1);
      sub_1E61B7778();
      sub_1E643D84C(v11, type metadata accessor for RouteDestination);
      v30 += v31;
      --v29;
    }

    while (v29);

    v25 = v45;
    LOBYTE(v27) = v44;
  }

  else
  {
  }

  v48 = v25;
  LOBYTE(v49) = v27;
  RoutingContextPresentationStyle.hash(into:)(a1);
  if (v28 == 6)
  {
    v42 = 0;
    goto LABEL_24;
  }

  if (v28 != 7)
  {
    MEMORY[0x1E694E740](2);
    if (v28 > 2)
    {
      if (v28 == 3 || v28 == 4 || v28 == 5)
      {
        goto LABEL_57;
      }
    }

    else if (v28 <= 2)
    {
      goto LABEL_57;
    }

    v48 = 0x7974696C61646F6DLL;
    v49 = 0xE90000000000003ALL;
    MEMORY[0x1E694D7C0](v46, v28);
LABEL_57:
    sub_1E65E5D78();
    sub_1E5FFF3B4(v46, v28);

    goto LABEL_58;
  }

  v42 = 1;
LABEL_24:
  MEMORY[0x1E694E740](v42);
LABEL_58:
  sub_1E65E6D48();
  sub_1E5F94E00(v25, v27);
}

uint64_t sub_1E643C5F0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E65E6D28();
  if (v2 == 7)
  {
    MEMORY[0x1E694E740](1);
    return sub_1E65E6D78();
  }

  if (v2 != 6)
  {
    MEMORY[0x1E694E740](2);
    if (v2 > 2)
    {
      if (v2 == 3 || v2 == 4 || v2 == 5)
      {
        goto LABEL_14;
      }
    }

    else if (v2 <= 2)
    {
      goto LABEL_14;
    }

    MEMORY[0x1E694D7C0](v1, v2);
LABEL_14:
    sub_1E65E5D78();

    return sub_1E65E6D78();
  }

  MEMORY[0x1E694E740](0);
  return sub_1E65E6D78();
}

uint64_t sub_1E643C760()
{
  sub_1E65E6D28();
  sub_1E643BDAC(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E643C7A4(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E643BDAC(v2);
  return sub_1E65E6D78();
}

unint64_t sub_1E643C7E8()
{
  result = qword_1ED0798D8;
  if (!qword_1ED0798D8)
  {
    type metadata accessor for ResolvedURLRoute.Action(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0798D8);
  }

  return result;
}

unint64_t sub_1E643C844()
{
  result = qword_1ED0798E0;
  if (!qword_1ED0798E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0798E0);
  }

  return result;
}

uint64_t sub_1E643C89C(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 == 7)
  {
    v3 = 1;
    return MEMORY[0x1E694E740](v3);
  }

  if (v2 == 6)
  {
    v3 = 0;
    return MEMORY[0x1E694E740](v3);
  }

  MEMORY[0x1E694E740](2);
  RootItem.rawValue.getter();
  sub_1E65E5D78();
}

uint64_t sub_1E643C950(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1E65E6D28();
  if (v2 == 7)
  {
    MEMORY[0x1E694E740](1);
  }

  else if (v2 == 6)
  {
    MEMORY[0x1E694E740](0);
  }

  else
  {
    MEMORY[0x1E694E740](2);
    RootItem.rawValue.getter();
    sub_1E65E5D78();
  }

  return sub_1E65E6D78();
}

unint64_t sub_1E643C9F8()
{
  result = qword_1ED0798E8;
  if (!qword_1ED0798E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0798E8);
  }

  return result;
}

uint64_t sub_1E643CA4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == 7)
  {
    if (v5 == 7)
    {
      sub_1E5FFF3B4(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v3 == 6)
  {
    if (v5 == 6)
    {
      sub_1E5FFF3B4(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
LABEL_7:
      sub_1E5FFF3B4(v6, v7);
      return 1;
    }

    goto LABEL_9;
  }

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
LABEL_9:
    sub_1E5FFF3A0(*a2, a2[1]);
    sub_1E5FFF3A0(v2, v3);
    sub_1E5FFF3B4(v2, v3);
    sub_1E5FFF3B4(v4, v5);
    return 0;
  }

  v9 = 0x65726F6C707865;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v10 = 0x686372616573;
      goto LABEL_32;
    }

    if (v3 == 4)
    {
      v10 = 0x7478654E7075;
LABEL_32:
      sub_1E5E05374(*a2, a2[1]);
      v11 = 0xE600000000000000;
      if (v5 <= 2)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    if (v3 != 5)
    {
LABEL_24:
      sub_1E5FFF3A0(v4, v5);
      sub_1E5FFF3A0(v2, v3);
      MEMORY[0x1E694D7C0](v2, v3);
      v10 = 0x7974696C61646F6DLL;
      v11 = 0xE90000000000003ALL;
      if (v5 <= 2)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    v10 = 0x736E616C70;
    sub_1E5E05374(*a2, a2[1]);
    v11 = 0xE500000000000000;
    if (v5 > 2)
    {
      goto LABEL_25;
    }

LABEL_33:
    switch(v5)
    {
      case 0:
        v12 = 0xE700000000000000;
        goto LABEL_41;
      case 1:
        v12 = 0xE600000000000000;
        v9 = 0x756F59726F66;
        goto LABEL_41;
      case 2:
        v12 = 0xE700000000000000;
        v9 = 0x7972617262696CLL;
        goto LABEL_41;
    }

LABEL_38:
    MEMORY[0x1E694D7C0](v4, v5);
    v9 = 0x7974696C61646F6DLL;
    v12 = 0xE90000000000003ALL;
    goto LABEL_41;
  }

  if (!v3)
  {
    sub_1E5E05374(*a2, a2[1]);
    v11 = 0xE700000000000000;
    v10 = 0x65726F6C707865;
    if (v5 > 2)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  if (v3 == 1)
  {
    v10 = 0x756F59726F66;
    goto LABEL_32;
  }

  if (v3 != 2)
  {
    goto LABEL_24;
  }

  v10 = 0x7972617262696CLL;
  sub_1E5E05374(*a2, a2[1]);
  v11 = 0xE700000000000000;
  if (v5 <= 2)
  {
    goto LABEL_33;
  }

LABEL_25:
  switch(v5)
  {
    case 3:
      v12 = 0xE600000000000000;
      v9 = 0x686372616573;
      break;
    case 4:
      v12 = 0xE600000000000000;
      v9 = 0x7478654E7075;
      break;
    case 5:
      v12 = 0xE500000000000000;
      v9 = 0x736E616C70;
      break;
    default:
      goto LABEL_38;
  }

LABEL_41:
  if (v10 == v9 && v11 == v12)
  {
    sub_1E5FFF3B4(v2, v3);
    sub_1E5FFF3B4(v4, v5);

    return 1;
  }

  else
  {
    v13 = sub_1E65E6C18();
    sub_1E5FFF3B4(v2, v3);
    sub_1E5FFF3B4(v4, v5);

    return v13 & 1;
  }
}

uint64_t sub_1E643CDCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E643CE34(uint64_t a1, uint64_t a2)
{
  v86 = type metadata accessor for RouteDestination(0);
  v4 = MEMORY[0x1EEE9AC00](v86);
  v84 = &v80[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v4);
  v85 = &v80[-v7];
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v80[-v8];
  v9 = type metadata accessor for ResolvedURLRoute.Action(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v80[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v80[-v14];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v80[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v80[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0798F0, &unk_1E6602A90);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v80[-v23];
  v25 = &v80[*(v22 + 56) - v23];
  sub_1E643CDCC(a1, &v80[-v23], type metadata accessor for ResolvedURLRoute.Action);
  sub_1E643CDCC(a2, v25, type metadata accessor for ResolvedURLRoute.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1E643CDCC(v24, v12, type metadata accessor for ResolvedURLRoute.Action);
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F0, &qword_1E65EC238) + 48);
      v70 = v12[v69];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_1E643D84C(v12, type metadata accessor for RouteDestination);
        goto LABEL_27;
      }

      v71 = v25[v69];
      v72 = v84;
      sub_1E5F9CE80(v25, v84);
      if (static RouteResource.== infix(_:_:)(v12, v72) & 1) != 0 && (static RouteSource.== infix(_:_:)(&v12[*(v86 + 20)], &v72[*(v86 + 20)]) & 1) != 0 && (sub_1E63DAF94())
      {
        sub_1E643D84C(v72, type metadata accessor for RouteDestination);
        sub_1E643D84C(v12, type metadata accessor for RouteDestination);
        sub_1E643D84C(v24, type metadata accessor for ResolvedURLRoute.Action);
        return v70 == v71;
      }

      sub_1E643D84C(v72, type metadata accessor for RouteDestination);
      sub_1E643D84C(v12, type metadata accessor for RouteDestination);
      v74 = v24;
      goto LABEL_40;
    }

    v84 = v24;
    sub_1E643CDCC(v24, v15, type metadata accessor for ResolvedURLRoute.Action);
    v35 = *v15;
    v34 = *(v15 + 1);
    v36 = v15[16];
    v38 = *(v15 + 3);
    v37 = *(v15 + 4);
    v39 = v15[40];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1E5FFF3B4(v38, v37);
      sub_1E5F94E00(v34, v36);

      v24 = v84;
      goto LABEL_27;
    }

    v86 = v37;
    LODWORD(v85) = v39;
    v41 = *v25;
    v40 = *(v25 + 1);
    v42 = v25[16];
    v43 = *(v25 + 3);
    v44 = *(v25 + 4);
    LODWORD(v83) = v25[40];
    v45 = sub_1E61B777C(v35, v41);

    if (v45 & 1) != 0 && (v89 = v34, LOBYTE(v90) = v36, v46 = v40, v87 = v40, LOBYTE(v88) = v42, (_s10Blackbeard31RoutingContextPresentationStyleO2eeoiySbAC_ACtFZ_0(&v89, &v87)))
    {
      v47 = v86;
      v89 = v38;
      v90 = v86;
      v87 = v43;
      v88 = v44;
      v48 = sub_1E643CA4C(&v89, &v87);
      sub_1E5F94E00(v46, v42);
      sub_1E5F94E00(v34, v36);
      sub_1E5FFF3B4(v43, v44);
      sub_1E5FFF3B4(v38, v47);
      if (v48)
      {
        v49 = v85;
        v50 = v83;
LABEL_11:
        v51 = v49 ^ v50;
        v52 = v84;
LABEL_35:
        sub_1E643D84C(v52, type metadata accessor for ResolvedURLRoute.Action);
        return v51 ^ 1u;
      }
    }

    else
    {
      sub_1E5FFF3B4(v43, v44);
      sub_1E5F94E00(v40, v42);
      sub_1E5FFF3B4(v38, v86);
      sub_1E5F94E00(v34, v36);
    }

LABEL_39:
    v74 = v84;
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload)
  {
    v84 = v24;
    sub_1E643CDCC(v24, v18, type metadata accessor for ResolvedURLRoute.Action);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
    v54 = v53[12];
    v55 = *&v18[v54];
    v56 = v18[v54 + 8];
    v57 = v53[16];
    v59 = *&v18[v57];
    v58 = *&v18[v57 + 8];
    v60 = v53[20];
    LODWORD(v83) = v18[v60];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E5FFF3B4(v59, v58);
      sub_1E5F94E00(v55, v56);
      sub_1E643D84C(v18, type metadata accessor for RouteDestination);
      v24 = v84;
      goto LABEL_27;
    }

    v61 = *&v25[v54];
    v62 = v25[v54 + 8];
    v63 = &v25[v57];
    v64 = *&v25[v57];
    v82 = *(v63 + 1);
    v81 = v25[v60];
    v65 = v85;
    sub_1E5F9CE80(v25, v85);
    if (static RouteResource.== infix(_:_:)(v18, v65) & 1) != 0 && (static RouteSource.== infix(_:_:)(&v18[*(v86 + 20)], &v65[*(v86 + 20)]) & 1) != 0 && (sub_1E63DAF94())
    {
      sub_1E643D84C(v18, type metadata accessor for RouteDestination);
      v89 = v55;
      LOBYTE(v90) = v56;
      v87 = v61;
      LOBYTE(v88) = v62;
      if (_s10Blackbeard31RoutingContextPresentationStyleO2eeoiySbAC_ACtFZ_0(&v89, &v87))
      {
        v89 = v59;
        v90 = v58;
        v66 = v64;
        v87 = v64;
        v67 = v82;
        v88 = v82;
        v68 = sub_1E643CA4C(&v89, &v87);
        sub_1E5F94E00(v61, v62);
        sub_1E5F94E00(v55, v56);
        sub_1E643D84C(v65, type metadata accessor for RouteDestination);
        sub_1E5FFF3B4(v66, v67);
        sub_1E5FFF3B4(v59, v58);
        if (v68)
        {
          v49 = v83;
          v50 = v81;
          goto LABEL_11;
        }
      }

      else
      {
        sub_1E643D84C(v65, type metadata accessor for RouteDestination);
        sub_1E5F94E00(v61, v62);
        sub_1E5F94E00(v55, v56);
        sub_1E5FFF3B4(v59, v58);
        sub_1E5FFF3B4(v64, v82);
      }
    }

    else
    {
      sub_1E5F94E00(v61, v62);
      sub_1E5F94E00(v55, v56);
      sub_1E5FFF3B4(v64, v82);
      sub_1E5FFF3B4(v59, v58);
      sub_1E643D84C(v18, type metadata accessor for RouteDestination);
      sub_1E643D84C(v65, type metadata accessor for RouteDestination);
    }

    goto LABEL_39;
  }

  v27 = v24;
  sub_1E643CDCC(v24, v20, type metadata accessor for ResolvedURLRoute.Action);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
  v29 = *(v28 + 48);
  v31 = *&v20[v29];
  v30 = *&v20[v29 + 8];
  v32 = *(v28 + 64);
  v33 = v20[v32];
  if (!swift_getEnumCaseMultiPayload())
  {
    v76 = *&v25[v29];
    v75 = *&v25[v29 + 8];
    v77 = v25[v32];
    v78 = v83;
    sub_1E5F9CE80(v25, v83);
    if (static RouteResource.== infix(_:_:)(v20, v78) & 1) != 0 && (static RouteSource.== infix(_:_:)(&v20[*(v86 + 20)], &v78[*(v86 + 20)]) & 1) != 0 && (sub_1E63DAF94())
    {
      sub_1E643D84C(v20, type metadata accessor for RouteDestination);
      v89 = v31;
      v90 = v30;
      v87 = v76;
      v88 = v75;
      v79 = sub_1E643CA4C(&v89, &v87);
      sub_1E643D84C(v83, type metadata accessor for RouteDestination);
      sub_1E5FFF3B4(v76, v75);
      sub_1E5FFF3B4(v31, v30);
      if (v79)
      {
        v51 = v33 ^ v77;
        v52 = v27;
        goto LABEL_35;
      }
    }

    else
    {
      sub_1E5FFF3B4(v76, v75);
      sub_1E5FFF3B4(v31, v30);
      sub_1E643D84C(v20, type metadata accessor for RouteDestination);
      sub_1E643D84C(v78, type metadata accessor for RouteDestination);
    }

    v74 = v27;
LABEL_40:
    sub_1E643D84C(v74, type metadata accessor for ResolvedURLRoute.Action);
    return 0;
  }

  sub_1E5FFF3B4(v31, v30);
  sub_1E643D84C(v20, type metadata accessor for RouteDestination);
  v24 = v27;
LABEL_27:
  sub_1E643D7E4(v24);
  return 0;
}

uint64_t sub_1E643D7E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0798F0, &unk_1E6602A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E643D84C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E643D8AC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6F436D6565646572;
    v6 = 0x74666947646E6573;
    if (a1 != 8)
    {
      v6 = 0x4E79636176697270;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x736B63617473;
    if (a1 != 5)
    {
      v7 = 0x53746E756F636361;
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
    v1 = 0x656372756F736572;
    v2 = 0x686372616573;
    v3 = 0xD000000000000014;
    if (a1 != 3)
    {
      v3 = 0x616C50646C697562;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1953460082;
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

uint64_t sub_1E643DA04(uint64_t a1)
{
  v2 = sub_1E643EC98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DA40(uint64_t a1)
{
  v2 = sub_1E643EC98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DA7C(uint64_t a1)
{
  v2 = sub_1E643ED40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DAB8(uint64_t a1)
{
  v2 = sub_1E643ED40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DAFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E6441498(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E643DB24(uint64_t a1)
{
  v2 = sub_1E643EB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DB60(uint64_t a1)
{
  v2 = sub_1E643EB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DB9C(uint64_t a1)
{
  v2 = sub_1E643EB9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DBD8(uint64_t a1)
{
  v2 = sub_1E643EB9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DC14(uint64_t a1)
{
  v2 = sub_1E643EC44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DC50(uint64_t a1)
{
  v2 = sub_1E643EC44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DC8C()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1E643DCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E643DD9C(uint64_t a1)
{
  v2 = sub_1E643EE90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DDD8(uint64_t a1)
{
  v2 = sub_1E643EE90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DE14(uint64_t a1)
{
  v2 = sub_1E643EE3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DE50(uint64_t a1)
{
  v2 = sub_1E643EE3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DE8C(uint64_t a1)
{
  v2 = sub_1E643EDE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DEC8(uint64_t a1)
{
  v2 = sub_1E643EDE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DF04(uint64_t a1)
{
  v2 = sub_1E643EBF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DF40(uint64_t a1)
{
  v2 = sub_1E643EBF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DF7C(uint64_t a1)
{
  v2 = sub_1E643ECEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DFB8(uint64_t a1)
{
  v2 = sub_1E643ECEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DFF4(uint64_t a1)
{
  v2 = sub_1E643ED94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643E030(uint64_t a1)
{
  v2 = sub_1E643ED94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t URLAction.encode(to:)(void *a1)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0798F8, &qword_1E6602AA0);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v50 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079900, &qword_1E6602AA8);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v50 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079908, &qword_1E6602AB0);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v50 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079910, &qword_1E6602AB8);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v50 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079918, &qword_1E6602AC0);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079920, &qword_1E6602AC8);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079928, &qword_1E6602AD0);
  v74 = *(v10 - 8);
  v75 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079930, &qword_1E6602AD8);
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079938, &qword_1E6602AE0);
  v68 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079940, &qword_1E6602AE8);
  v69 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079948, &qword_1E6602AF0);
  v21 = *(v20 - 8);
  v79 = v20;
  v80 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v50 - v22;
  v24 = *v1;
  *(&v76 + 1) = v1[1];
  v77 = v24;
  *&v76 = v1[2];
  v25 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E643EB48();
  v78 = v23;
  sub_1E65E6DA8();
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      LOBYTE(v82) = 2;
      sub_1E643EDE8();
      v35 = v70;
      v28 = v78;
      v27 = v79;
      sub_1E65E6B18();
      v36 = v72;
      sub_1E65E6B48();
      (*(v71 + 8))(v35, v36);
    }

    else
    {
      if (v25 != 3)
      {
        v37 = v78;
        v27 = v79;
        if (v76 | *(&v76 + 1) | v77)
        {
          if (v77 == 1 && v76 == 0)
          {
            LOBYTE(v82) = 5;
            sub_1E643ECEC();
            v38 = v62;
            sub_1E65E6B18();
            (*(v63 + 8))(v38, v64);
          }

          else
          {
            if (v77 == 2 && v76 == 0)
            {
              LOBYTE(v82) = 6;
              sub_1E643EC98();
              v43 = v59;
              sub_1E65E6B18();
              v44 = *(v60 + 8);
              v45 = v43;
              v46 = &v86;
            }

            else if (v77 == 3 && v76 == 0)
            {
              LOBYTE(v82) = 7;
              sub_1E643EC44();
              v47 = v56;
              sub_1E65E6B18();
              v44 = *(v57 + 8);
              v45 = v47;
              v46 = &v85;
            }

            else if (v77 == 4 && v76 == 0)
            {
              LOBYTE(v82) = 8;
              sub_1E643EBF0();
              v48 = v50;
              sub_1E65E6B18();
              v44 = *(v51 + 8);
              v45 = v48;
              v46 = &v83;
            }

            else
            {
              LOBYTE(v82) = 9;
              sub_1E643EB9C();
              v49 = v53;
              sub_1E65E6B18();
              v44 = *(v54 + 8);
              v45 = v49;
              v46 = v84;
            }

            v44(v45, *(v46 - 32));
          }
        }

        else
        {
          LOBYTE(v82) = 4;
          sub_1E643ED40();
          v42 = v65;
          sub_1E65E6B18();
          (*(v66 + 8))(v42, v67);
        }

        v40 = *(v80 + 8);
        v41 = v37;
        return v40(v41, v27);
      }

      LOBYTE(v82) = 3;
      sub_1E643ED94();
      v26 = v73;
      v28 = v78;
      v27 = v79;
      sub_1E65E6B18();
      v29 = v75;
      sub_1E65E6B68();
      (*(v74 + 8))(v26, v29);
    }

LABEL_15:
    v40 = *(v80 + 8);
    v41 = v28;
    return v40(v41, v27);
  }

  if (v25)
  {
    v39 = v14;
    LOBYTE(v82) = 1;
    sub_1E643EE3C();
    v28 = v78;
    v27 = v79;
    sub_1E65E6B18();
    v82 = v77;
    v83 = *(&v76 + 1);
    sub_1E5DF6D3C();
    sub_1E65E6B78();
    (*(v68 + 8))(v16, v39);
    goto LABEL_15;
  }

  v30 = v17;
  LOBYTE(v82) = 0;
  sub_1E643EE90();
  v32 = v78;
  v31 = v79;
  sub_1E65E6B18();
  LOBYTE(v82) = v77;
  v84[7] = 0;
  sub_1E643EEE4();
  v33 = v81;
  sub_1E65E6B78();
  if (!v33)
  {
    LOBYTE(v82) = 1;
    sub_1E65E6B48();
  }

  (*(v69 + 8))(v19, v30);
  return (*(v80 + 8))(v32, v31);
}

unint64_t sub_1E643EB48()
{
  result = qword_1ED079950;
  if (!qword_1ED079950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079950);
  }

  return result;
}

unint64_t sub_1E643EB9C()
{
  result = qword_1ED079958;
  if (!qword_1ED079958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079958);
  }

  return result;
}

unint64_t sub_1E643EBF0()
{
  result = qword_1ED079960;
  if (!qword_1ED079960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079960);
  }

  return result;
}

unint64_t sub_1E643EC44()
{
  result = qword_1ED079968;
  if (!qword_1ED079968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079968);
  }

  return result;
}

unint64_t sub_1E643EC98()
{
  result = qword_1ED079970;
  if (!qword_1ED079970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079970);
  }

  return result;
}

unint64_t sub_1E643ECEC()
{
  result = qword_1ED079978;
  if (!qword_1ED079978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079978);
  }

  return result;
}

unint64_t sub_1E643ED40()
{
  result = qword_1ED079980;
  if (!qword_1ED079980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079980);
  }

  return result;
}

unint64_t sub_1E643ED94()
{
  result = qword_1ED079988;
  if (!qword_1ED079988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079988);
  }

  return result;
}

unint64_t sub_1E643EDE8()
{
  result = qword_1ED079990;
  if (!qword_1ED079990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079990);
  }

  return result;
}

unint64_t sub_1E643EE3C()
{
  result = qword_1ED079998;
  if (!qword_1ED079998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079998);
  }

  return result;
}

unint64_t sub_1E643EE90()
{
  result = qword_1ED0799A0;
  if (!qword_1ED0799A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0799A0);
  }

  return result;
}

unint64_t sub_1E643EEE4()
{
  result = qword_1ED0799A8;
  if (!qword_1ED0799A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0799A8);
  }

  return result;
}

uint64_t URLAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799B0, &qword_1E6602AF8);
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799B8, &qword_1E6602B00);
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v56 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799C0, &qword_1E6602B08);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v85 = &v56 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799C8, &qword_1E6602B10);
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v84 = &v56 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799D0, &qword_1E6602B18);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v83 = &v56 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799D8, &qword_1E6602B20);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v80 = &v56 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799E0, &qword_1E6602B28);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v79 = &v56 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799E8, &qword_1E6602B30);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v78 = &v56 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799F0, &qword_1E6602B38);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799F8, &qword_1E6602B40);
  v61 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079A00, &unk_1E6602B48);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - v20;
  v22 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E643EB48();
  v23 = v87;
  sub_1E65E6D98();
  v24 = v23;
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v88);
  }

  v58 = v14;
  v25 = v17;
  v57 = v15;
  v26 = v83;
  v27 = v84;
  v87 = v19;
  v28 = v85;
  v29 = v86;
  v30 = sub_1E65E6AF8();
  v31 = (2 * *(v30 + 16)) | 1;
  v91 = v30;
  v92 = v30 + 32;
  v93 = 0;
  v94 = v31;
  v32 = sub_1E5FBE3F8();
  if (v32 == 10 || v93 != v94 >> 1)
  {
    v36 = sub_1E65E68F8();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
    *v38 = &type metadata for URLAction;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v87 + 8))(v21, v18);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v88);
  }

  if (v32 > 4u)
  {
    if (v32 <= 6u)
    {
      if (v32 == 5)
      {
        LOBYTE(v89) = 5;
        sub_1E643ECEC();
        sub_1E65E6A68();
        v56 = 0;
        (*(v69 + 8))(v26, v68);
        (*(v87 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v51 = 0;
        v52 = 0;
        v53 = 4;
        v24 = 1;
      }

      else
      {
        LOBYTE(v89) = 6;
        sub_1E643EC98();
        sub_1E65E6A68();
        v56 = 0;
        (*(v71 + 8))(v27, v70);
        (*(v87 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v51 = 0;
        v52 = 0;
        v53 = 4;
        v24 = 2;
      }
    }

    else if (v32 == 7)
    {
      LOBYTE(v89) = 7;
      sub_1E643EC44();
      sub_1E65E6A68();
      v56 = 0;
      (*(v72 + 8))(v28, v73);
      (*(v87 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v51 = 0;
      v52 = 0;
      v53 = 4;
      v24 = 3;
    }

    else if (v32 == 8)
    {
      LOBYTE(v89) = 8;
      sub_1E643EBF0();
      v40 = v82;
      sub_1E65E6A68();
      v56 = 0;
      (*(v74 + 8))(v40, v75);
      (*(v87 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v51 = 0;
      v52 = 0;
      v24 = 4;
      v53 = 4;
    }

    else
    {
      LOBYTE(v89) = 9;
      sub_1E643EB9C();
      v46 = v81;
      sub_1E65E6A68();
      v56 = 0;
      (*(v76 + 8))(v46, v77);
      (*(v87 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v51 = 0;
      v52 = 0;
      v53 = 4;
      v24 = 5;
    }
  }

  else if (v32 <= 1u)
  {
    if (v32)
    {
      LOBYTE(v89) = 1;
      sub_1E643EE3C();
      v47 = v58;
      sub_1E65E6A68();
      sub_1E5DF6CE4();
      v48 = v60;
      sub_1E65E6AD8();
      v49 = v87;
      v56 = 0;
      (*(v59 + 8))(v47, v48);
      (*(v49 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v52 = 0;
      v24 = v89;
      v51 = v90;
      v53 = 1;
    }

    else
    {
      LOBYTE(v89) = 0;
      sub_1E643EE90();
      sub_1E65E6A68();
      v95 = 0;
      sub_1E643FF0C();
      v41 = v57;
      sub_1E65E6AD8();
      v24 = v89;
      v95 = 1;
      v54 = sub_1E65E6AA8();
      v56 = 0;
      v51 = v54;
      v52 = v55;
      (*(v61 + 8))(v25, v41);
      (*(v87 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v53 = 0;
    }
  }

  else if (v32 == 2)
  {
    LOBYTE(v89) = 2;
    sub_1E643EDE8();
    v42 = v78;
    sub_1E65E6A68();
    v43 = v63;
    v44 = sub_1E65E6AA8();
    v56 = 0;
    v24 = v44;
    v51 = v50;
    (*(v62 + 8))(v42, v43);
    (*(v87 + 8))(v21, v18);
    swift_unknownObjectRelease();
    v52 = 0;
    v53 = 2;
  }

  else if (v32 == 3)
  {
    LOBYTE(v89) = 3;
    sub_1E643ED94();
    v33 = v79;
    sub_1E65E6A68();
    v34 = v65;
    v35 = sub_1E65E6AC8();
    v56 = 0;
    v24 = v35;
    (*(v64 + 8))(v33, v34);
    (*(v87 + 8))(v21, v18);
    swift_unknownObjectRelease();
    v51 = 0;
    v52 = 0;
    v53 = 3;
  }

  else
  {
    LOBYTE(v89) = 4;
    sub_1E643ED40();
    v45 = v80;
    sub_1E65E6A68();
    v56 = 0;
    (*(v66 + 8))(v45, v67);
    (*(v87 + 8))(v21, v18);
    swift_unknownObjectRelease();
    v51 = 0;
    v52 = 0;
    v53 = 4;
  }

  *v29 = v24;
  *(v29 + 8) = v51;
  *(v29 + 16) = v52;
  *(v29 + 24) = v53;
  return __swift_destroy_boxed_opaque_existential_1(v88);
}

unint64_t sub_1E643FF0C()
{
  result = qword_1ED079A08;
  if (!qword_1ED079A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A08);
  }

  return result;
}

uint64_t URLAction.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        MEMORY[0x1E694E740](3);
        v6 = v3;
      }

      else
      {
        v8 = v4 | v2;
        if (v4 | v2 | v3)
        {
          if (v3 != 1 || v8)
          {
            if (v3 != 2 || v8)
            {
              if (v3 != 3 || v8)
              {
                if (v3 != 4 || v8)
                {
                  v6 = 9;
                }

                else
                {
                  v6 = 8;
                }
              }

              else
              {
                v6 = 7;
              }
            }

            else
            {
              v6 = 6;
            }
          }

          else
          {
            v6 = 5;
          }
        }

        else
        {
          v6 = 4;
        }
      }

      return MEMORY[0x1E694E740](v6);
    }

    MEMORY[0x1E694E740](2);
    goto LABEL_8;
  }

  if (!*(v1 + 24))
  {
    MEMORY[0x1E694E740](0);
    sub_1E65E5D78();

LABEL_8:

    return sub_1E65E5D78();
  }

  MEMORY[0x1E694E740](1);
  if (v2 > 2)
  {
    if (v2 == 3 || v2 == 4 || v2 == 5)
    {
      goto LABEL_31;
    }
  }

  else if (v2 <= 2)
  {
    goto LABEL_31;
  }

  MEMORY[0x1E694D7C0](v3, v2);
LABEL_31:
  sub_1E65E5D78();
}

uint64_t URLAction.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1E65E6D28();
  URLAction.hash(into:)(v4);
  return sub_1E65E6D78();
}

uint64_t sub_1E6440310()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1E65E6D28();
  URLAction.hash(into:)(v4);
  return sub_1E65E6D78();
}

uint64_t sub_1E6440370(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1E65E6D28();
  URLAction.hash(into:)(v5);
  return sub_1E65E6D78();
}

BOOL _s10Blackbeard9URLActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v19[0] = *a1;
  v19[1] = v3;
  v19[2] = v4;
  v20 = v5;
  v21 = v7;
  v22 = v6;
  v23 = v8;
  v24 = v9;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        if (v9 == 3)
        {
          sub_1E64417E8(v19);
          return v2 == v7;
        }

        goto LABEL_82;
      }

      v11 = v4 | v3;
      if (!(v4 | v3 | v2))
      {
        if (v9 != 4 || v8 | v6 | v7)
        {
          goto LABEL_82;
        }

        goto LABEL_81;
      }

      if (v2 != 1 || v11)
      {
        if (v2 != 2 || v11)
        {
          if (v2 != 3 || v11)
          {
            if (v2 != 4 || v11)
            {
              if (v9 != 4 || v7 != 5)
              {
                goto LABEL_82;
              }
            }

            else if (v9 != 4 || v7 != 4)
            {
              goto LABEL_82;
            }
          }

          else if (v9 != 4 || v7 != 3)
          {
            goto LABEL_82;
          }
        }

        else if (v9 != 4 || v7 != 2)
        {
          goto LABEL_82;
        }
      }

      else if (v9 != 4 || v7 != 1)
      {
        goto LABEL_82;
      }

      if (!(v8 | v6))
      {
LABEL_81:
        sub_1E64417E8(v19);
        return 1;
      }

LABEL_82:
      sub_1E6228348(v7, v6, v8, v9);
      goto LABEL_83;
    }

    if (v9 == 2)
    {
      if (v2 != v7 || v3 != v6)
      {
        v16 = sub_1E65E6C18();
        sub_1E6228348(v7, v6, v8, 2);
        sub_1E6228348(v2, v3, v4, 2);
        sub_1E64417E8(v19);
        return v16 & 1;
      }

      sub_1E6228348(v2, v3, v8, 2);
      sub_1E6228348(v2, v3, v4, 2);
      goto LABEL_81;
    }

LABEL_25:

    goto LABEL_82;
  }

  if (!v5)
  {
    if (!v9)
    {
      sub_1E6228348(v7, v6, v8, 0);
      sub_1E6228348(v2, v3, v4, 0);
      if ((sub_1E648B2FC(v2, v7) & 1) == 0)
      {
LABEL_83:
        sub_1E64417E8(v19);
        return 0;
      }

      if (v3 != v6 || v4 != v8)
      {
        v15 = sub_1E65E6C18();
        sub_1E64417E8(v19);
        return v15 & 1;
      }

      goto LABEL_81;
    }

    goto LABEL_25;
  }

  if (v9 != 1)
  {
    sub_1E5E05374(v2, v3);
    goto LABEL_82;
  }

  v12 = 0x65726F6C707865;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v13 = 0x686372616573;
        break;
      case 4:
        v13 = 0x7478654E7075;
        break;
      case 5:
        v13 = 0x736E616C70;
        sub_1E5E05374(v7, v6);
        v14 = 0xE500000000000000;
        goto LABEL_60;
      default:
        goto LABEL_56;
    }
  }

  else
  {
    if (!v3)
    {
      sub_1E5E05374(v7, v6);
      v14 = 0xE700000000000000;
      v13 = 0x65726F6C707865;
      goto LABEL_60;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v13 = 0x7972617262696CLL;
        sub_1E5E05374(v7, v6);
        v14 = 0xE700000000000000;
        goto LABEL_60;
      }

LABEL_56:
      sub_1E6228348(v7, v6, v8, 1);
      sub_1E6228348(v2, v3, v4, 1);
      MEMORY[0x1E694D7C0](v2, v3);
      v13 = 0x7974696C61646F6DLL;
      v14 = 0xE90000000000003ALL;
      goto LABEL_60;
    }

    v13 = 0x756F59726F66;
  }

  sub_1E5E05374(v7, v6);
  v14 = 0xE600000000000000;
LABEL_60:
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v17 = 0xE600000000000000;
        v12 = 0x686372616573;
        goto LABEL_74;
      case 4:
        v17 = 0xE600000000000000;
        v12 = 0x7478654E7075;
        goto LABEL_74;
      case 5:
        v17 = 0xE500000000000000;
        v12 = 0x736E616C70;
        goto LABEL_74;
    }

LABEL_71:
    MEMORY[0x1E694D7C0](v7, v6);
    v12 = 0x7974696C61646F6DLL;
    v17 = 0xE90000000000003ALL;
    goto LABEL_74;
  }

  if (!v6)
  {
    v17 = 0xE700000000000000;
    goto LABEL_74;
  }

  if (v6 == 1)
  {
    v17 = 0xE600000000000000;
    v12 = 0x756F59726F66;
    goto LABEL_74;
  }

  if (v6 != 2)
  {
    goto LABEL_71;
  }

  v17 = 0xE700000000000000;
  v12 = 0x7972617262696CLL;
LABEL_74:
  if (v13 == v12 && v14 == v17)
  {
    sub_1E64417E8(v19);

    return 1;
  }

  else
  {
    v18 = sub_1E65E6C18();
    sub_1E64417E8(v19);

    return v18 & 1;
  }
}

unint64_t sub_1E6440914()
{
  result = qword_1ED079A10;
  if (!qword_1ED079A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A10);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard9URLActionO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E6440998(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E64409E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E6440A28(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1E6440B08()
{
  result = qword_1ED079A18;
  if (!qword_1ED079A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A18);
  }

  return result;
}

unint64_t sub_1E6440B60()
{
  result = qword_1ED079A20;
  if (!qword_1ED079A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A20);
  }

  return result;
}

unint64_t sub_1E6440BB8()
{
  result = qword_1ED079A28;
  if (!qword_1ED079A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A28);
  }

  return result;
}

unint64_t sub_1E6440C10()
{
  result = qword_1ED079A30;
  if (!qword_1ED079A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A30);
  }

  return result;
}

unint64_t sub_1E6440C68()
{
  result = qword_1ED079A38;
  if (!qword_1ED079A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A38);
  }

  return result;
}

unint64_t sub_1E6440CC0()
{
  result = qword_1ED079A40;
  if (!qword_1ED079A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A40);
  }

  return result;
}

unint64_t sub_1E6440D18()
{
  result = qword_1ED079A48;
  if (!qword_1ED079A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A48);
  }

  return result;
}

unint64_t sub_1E6440D70()
{
  result = qword_1ED079A50;
  if (!qword_1ED079A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A50);
  }

  return result;
}

unint64_t sub_1E6440DC8()
{
  result = qword_1ED079A58;
  if (!qword_1ED079A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A58);
  }

  return result;
}

unint64_t sub_1E6440E20()
{
  result = qword_1ED079A60;
  if (!qword_1ED079A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A60);
  }

  return result;
}

unint64_t sub_1E6440E78()
{
  result = qword_1ED079A68;
  if (!qword_1ED079A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A68);
  }

  return result;
}

unint64_t sub_1E6440ED0()
{
  result = qword_1ED079A70;
  if (!qword_1ED079A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A70);
  }

  return result;
}

unint64_t sub_1E6440F28()
{
  result = qword_1ED079A78;
  if (!qword_1ED079A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A78);
  }

  return result;
}

unint64_t sub_1E6440F80()
{
  result = qword_1ED079A80;
  if (!qword_1ED079A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A80);
  }

  return result;
}

unint64_t sub_1E6440FD8()
{
  result = qword_1ED079A88;
  if (!qword_1ED079A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A88);
  }

  return result;
}

unint64_t sub_1E6441030()
{
  result = qword_1ED079A90;
  if (!qword_1ED079A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A90);
  }

  return result;
}

unint64_t sub_1E6441088()
{
  result = qword_1ED079A98;
  if (!qword_1ED079A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A98);
  }

  return result;
}

unint64_t sub_1E64410E0()
{
  result = qword_1ED079AA0;
  if (!qword_1ED079AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AA0);
  }

  return result;
}

unint64_t sub_1E6441138()
{
  result = qword_1ED079AA8;
  if (!qword_1ED079AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AA8);
  }

  return result;
}

unint64_t sub_1E6441190()
{
  result = qword_1ED079AB0;
  if (!qword_1ED079AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AB0);
  }

  return result;
}

unint64_t sub_1E64411E8()
{
  result = qword_1ED079AB8;
  if (!qword_1ED079AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AB8);
  }

  return result;
}

unint64_t sub_1E6441240()
{
  result = qword_1ED079AC0;
  if (!qword_1ED079AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AC0);
  }

  return result;
}

unint64_t sub_1E6441298()
{
  result = qword_1ED079AC8;
  if (!qword_1ED079AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AC8);
  }

  return result;
}

unint64_t sub_1E64412F0()
{
  result = qword_1ED079AD0;
  if (!qword_1ED079AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AD0);
  }

  return result;
}

unint64_t sub_1E6441348()
{
  result = qword_1ED079AD8;
  if (!qword_1ED079AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AD8);
  }

  return result;
}

unint64_t sub_1E64413A0()
{
  result = qword_1ED079AE0;
  if (!qword_1ED079AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AE0);
  }

  return result;
}

unint64_t sub_1E64413F8()
{
  result = qword_1ED079AE8;
  if (!qword_1ED079AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AE8);
  }

  return result;
}

unint64_t sub_1E644144C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E65E6A48();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E6441498(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953460082 && a2 == 0xE400000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E660FD00 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C50646C697562 && a2 == 0xE90000000000006ELL || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736B63617473 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x53746E756F636361 && a2 == 0xEF73676E69747465 || (sub_1E65E6C18() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F436D6565646572 && a2 == 0xEA00000000006564 || (sub_1E65E6C18() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74666947646E6573 && a2 == 0xEC00000064726143 || (sub_1E65E6C18() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4E79636176697270 && a2 == 0xED0000656369746FLL)
  {

    return 9;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1E64417E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079AF0, &unk_1E6603730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1E6441850@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v8 = *(type metadata accessor for RouteDetourViewControllerRoutingContext(0) + 20);
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
  result = sub_1E625E57C(a2 + v8, 0, v11, a1, v9, v10);
  *a4 = result;
  return result;
}

uint64_t sub_1E64418D8(uint64_t a1, uint64_t *a2, char a3)
{
  *(v4 + 72) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 32) = type metadata accessor for RouteDetourViewControllerRoutingContext(0);
  *(v4 + 40) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  *(v4 + 73) = *(a2 + 8);
  sub_1E65E6058();
  *(v4 + 64) = sub_1E65E6048();
  v9 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E64419C0, v9, v8);
}

uint64_t sub_1E64419C0()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 24);
    v19 = *(v0 + 16);
    v7 = *(v5 + 20);
    sub_1E6442448(v6 + v7, v3 + v7, type metadata accessor for AppComposer);
    v8 = *(v6 + *(v5 + 24));
    swift_unknownObjectWeakInit();
    v9 = swift_unknownObjectWeakAssign();
    *(v3 + *(v5 + 24)) = v8;
    sub_1E6442448(v9, v4, type metadata accessor for RouteDetourViewControllerRoutingContext);
    swift_unknownObjectRetain();
    v10 = sub_1E629F014(v6 + v7, 0, v4, v19);
    sub_1E64424B0(v4, type metadata accessor for RouteDetourViewControllerRoutingContext);
    v11 = sub_1E61AAA48(v10);

    v12 = [v11 presentationController];
    if (v12)
    {
      v13 = v12;
      [v12 setDelegate_];
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && (swift_getObjectType(), swift_conformsToProtocol2()) && v11)
    {
      [v2 presentViewController:v11 animated:*(v0 + 72) completion:0];
      v14 = v2;
      v2 = v11;
    }

    else
    {
      [v2 presentViewController:v11 animated:*(v0 + 72) completion:0];
      v14 = v11;
    }

    v15 = *(v0 + 48);
    sub_1E64424B0(v15, type metadata accessor for RouteDetourViewControllerRoutingContext);

    v16 = *(v0 + 8);
  }

  else
  {
    sub_1E5FAA54C();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_1E6441C78(uint64_t a1, uint64_t *a2, char a3)
{
  *(v4 + 112) = a3;
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;
  *(v4 + 72) = type metadata accessor for RouteDetourNavigationControllerRoutingContext(0);
  *(v4 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v4 + 88) = v6;
  *(v4 + 96) = v7;
  *(v4 + 113) = *(a2 + 8);
  sub_1E65E6058();
  *(v4 + 104) = sub_1E65E6048();
  v9 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6441D8C, v9, v8);
}

uint64_t sub_1E6441D8C()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1E5FAA54C();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
LABEL_11:

    v27 = *(v0 + 8);
    goto LABEL_12;
  }

  v2 = Strong;
  v3 = *(v0 + 56);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v29 = *(v0 + 88);
    v30 = type metadata accessor for RouteDestination(0);
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    sub_1E6442374(v29);
    sub_1E5FAA54C();
    swift_allocError();
    v32 = 3;
LABEL_10:
    *v31 = v32;
    swift_willThrow();

    goto LABEL_11;
  }

  v5 = *(v0 + 113);
  v6 = v4 - 1;
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = type metadata accessor for RouteDestination(0);
  v10 = *(v9 - 8);
  sub_1E6442448(v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v6, v7, type metadata accessor for RouteDestination);
  (*(v10 + 56))(v7, 0, 1, v9);
  sub_1E6442374(v7);
  LOBYTE(v34) = v5;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
  v12 = sub_1E61AAA48(v11);

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

    sub_1E5FAA54C();
    swift_allocError();
    v32 = 6;
    goto LABEL_10;
  }

  v14 = v13;
  v16 = *(v0 + 72);
  v15 = *(v0 + 80);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  v19 = type metadata accessor for RouteDetourViewControllerRoutingContext(0);
  sub_1E6442448(v18 + *(v19 + 20), v15 + *(v16 + 20), type metadata accessor for AppComposer);
  v20 = *(v18 + *(v19 + 24));
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v15 + *(v16 + 24)) = v20;
  *(v0 + 40) = v16;
  *(v0 + 48) = &off_1F5FB76B8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_1E6442448(v15, boxed_opaque_existential_1, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
  v22 = swift_task_alloc();
  *(v22 + 16) = v18;
  *(v22 + 24) = v0 + 16;
  swift_unknownObjectRetain();
  sub_1E5F9F34C(sub_1E6442428, v22, v17);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1E5DEF094();
  v23 = sub_1E65E5EF8();

  [v14 setViewControllers:v23 animated:0];

  v24 = [v14 presentationController];
  if (v24)
  {
    v25 = v24;
    [v24 setDelegate_];
  }

  v26 = *(v0 + 80);
  [v2 presentViewController:v14 animated:*(v0 + 112) completion:0];

  sub_1E64424B0(v26, type metadata accessor for RouteDetourNavigationControllerRoutingContext);

  v27 = *(v0 + 8);
LABEL_12:

  return v27();
}

uint64_t sub_1E64421D8()
{
  type metadata accessor for NullTaskScheduler();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E6442510();
  return v0;
}

uint64_t sub_1E644221C(uint64_t a1, uint64_t *a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E64418D8(a1, a2, a3);
}

uint64_t sub_1E64422C8(uint64_t a1, uint64_t *a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6441C78(a1, a2, a3);
}

uint64_t sub_1E6442374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RouteDetourViewControllerRoutingContext(uint64_t a1)
{
  result = qword_1ED079AF8;
  if (!qword_1ED079AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6442448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E64424B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E6442510()
{
  result = qword_1ED077E70;
  if (!qword_1ED077E70)
  {
    type metadata accessor for NullTaskScheduler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077E70);
  }

  return result;
}

unint64_t sub_1E6442590(uint64_t a1)
{
  result = type metadata accessor for AppComposer(319);
  if (v2 <= 0x3F)
  {
    result = sub_1E5E051BC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E6442628@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v48 = a3;
  v49 = sub_1E65D7D18();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65D72D8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079B08, qword_1E66037E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - v12;
  v14 = sub_1E65DF038();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  v21 = sub_1E65D7C18();
  if (v23 != -1)
  {
    if (v23)
    {
      sub_1E62D9350(v21, v13);
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        (*(v15 + 32))(v20, v13, v14);
        v52 = sub_1E65D7BF8();
        v53 = v44;
        (*(v15 + 16))(v18, v20, v14);
        v45 = sub_1E65D7D08();
        sub_1E63C4134(a1, v47, v45, v10);

        sub_1E5E25708();
        v41 = v48;
        sub_1E65DEFA8();
        (*(v15 + 8))(v20, v14);
        v40 = 0;
        goto LABEL_15;
      }

      sub_1E6442B54(v13);
    }

    else
    {
      sub_1E5F87158(v21, v22, v23);
    }
  }

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v24 = sub_1E65E3B68();
  __swift_project_value_buffer(v24, qword_1EE2EA2A0);
  v25 = v49;
  (*(v5 + 16))(v7, v3, v49);
  v26 = sub_1E65E3B48();
  v27 = sub_1E65E6338();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v55 = v29;
    *v28 = 136315138;
    v30 = sub_1E65D7C18();
    if (v32 == -1)
    {
      v37 = 0xE300000000000000;
      v38 = 7104878;
    }

    else
    {
      v52 = v30;
      v53 = v31;
      v54 = v32 & 1;
      v33 = v30;
      v34 = v31;
      v35 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
      sub_1E65D7F98();
      v36 = v34;
      v25 = v49;
      sub_1E5F87158(v33, v36, v35);
      v38 = v50;
      v37 = v51;
    }

    (*(v5 + 8))(v7, v25);
    v39 = sub_1E5DFD4B0(v38, v37, &v55);

    *(v28 + 4) = v39;
    _os_log_impl(&dword_1E5DE9000, v26, v27, "[Sidebar] Dropping modality tile with unknown kind: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v28, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v25);
  }

  v40 = 1;
  v41 = v48;
LABEL_15:
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EA8, &qword_1E65F1140);
  return (*(*(v42 - 8) + 56))(v41, v40, 1, v42);
}

uint64_t sub_1E6442B54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079B08, qword_1E66037E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6442BBC(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  if (!*a1)
  {
    v10 = sub_1E65E60A8();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_1E5DF650C(a2, v14);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    sub_1E5DF599C(v14, (v11 + 4));
    v11[9] = a3;
    v12 = a3;
    result = sub_1E64B80F8(0, 0, v9, &unk_1E66038A0, v11);
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E6442D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for SubscriptionPurchaseRequest(0);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C18, &qword_1E66038B0);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6442E60, 0, 0);
}

uint64_t sub_1E6442E60()
{
  v1 = v0[9];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E65E6198();

  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1E6443018;
  v7 = v0[17];

  return MEMORY[0x1EEE6D8D0](v7, 0, 0);
}

uint64_t sub_1E6443018()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6443128, 0, 0);
  }

  return result;
}

uint64_t sub_1E6443128()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[16], v1, v2);
    v6 = SubscriptionPurchaseRequest.buyParams.getter();
    v0[19] = v6;
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_1E6443280;

    return sub_1E6443620(v6);
  }
}

uint64_t sub_1E6443280(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_1E64434E4;
  }

  else
  {

    *(v4 + 176) = a1;
    v5 = sub_1E64433B0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E64433B0()
{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  SubscriptionPurchaseRequest.continuation.getter(v5);
  v0[8] = v1;
  sub_1E65E5FF8();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_1E6443018;
  v9 = v0[17];

  return MEMORY[0x1EEE6D8D0](v9, 0, 0);
}

uint64_t sub_1E64434E4()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);

  SubscriptionPurchaseRequest.continuation.getter(v5);
  *(v0 + 56) = v1;
  sub_1E65E5FE8();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_1E6443018;
  v9 = *(v0 + 136);

  return MEMORY[0x1EEE6D8D0](v9, 0, 0);
}

uint64_t sub_1E6443620(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6443640, 0, 0);
}

uint64_t sub_1E6443640()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1E65E3B68();
  v0[5] = __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v4 = [objc_allocWithZone(MEMORY[0x1E698CAE0]) initWithPurchaseType:0 buyParams:v1];
  v0[6] = v4;
  [v4 setUserInitiated_];
  [v4 setRequiresAccount_];
  v6 = *(v2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_accountProvider + 24);
  v5 = *(v2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_accountProvider + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_accountProvider), v6);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E64437D4;

  return MEMORY[0x1EEE348A8](v6, v5);
}

uint64_t sub_1E64437D4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1E6443D0C;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1E6443900;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6443900()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  [v2 setAccount_];

  v5 = [objc_allocWithZone(MEMORY[0x1E698CD20]) initWithPurchase:v2 bag:*(v3 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_bag)];
  v0[9] = v5;
  [v5 setDelegate_];
  sub_1E5DEF738(0, &unk_1ED079C20, 0x1E698CAC0);
  [v5 setPaymentSheetTaskClass_];
  v17 = *(v3 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_eventHub);
  v6 = v4;
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6338();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "Performing purchase with %@", v10, 0xCu);
    sub_1E5F91480(v11);
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  v13 = swift_task_alloc();
  v0[10] = v13;
  *(v13 + 16) = v5;
  *(v13 + 24) = v17;
  v14 = swift_task_alloc();
  v0[11] = v14;
  v15 = sub_1E5DEF738(0, &unk_1EE2D4618, 0x1E698CAF0);
  *v14 = v0;
  v14[1] = sub_1E6443B80;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000018, 0x80000001E66172A0, sub_1E6445280, v13, v15);
}

uint64_t sub_1E6443B80()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E6443F84;
  }

  else
  {

    v2 = sub_1E6443C9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6443C9C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1E6443D0C()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  [v1 setAccount_];
  v4 = [objc_allocWithZone(MEMORY[0x1E698CD20]) initWithPurchase:v1 bag:*(v2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_bag)];
  v0[9] = v4;
  [v4 setDelegate_];
  sub_1E5DEF738(0, &unk_1ED079C20, 0x1E698CAC0);
  [v4 setPaymentSheetTaskClass_];
  v16 = *(v2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_eventHub);
  v5 = v3;
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "Performing purchase with %@", v9, 0xCu);
    sub_1E5F91480(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  v12 = swift_task_alloc();
  v0[10] = v12;
  *(v12 + 16) = v4;
  *(v12 + 24) = v16;
  v13 = swift_task_alloc();
  v0[11] = v13;
  v14 = sub_1E5DEF738(0, &unk_1EE2D4618, 0x1E698CAF0);
  *v13 = v0;
  v13[1] = sub_1E6443B80;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000018, 0x80000001E66172A0, sub_1E6445280, v12, v14);
}

uint64_t sub_1E6443F84()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1E6443FF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  v12 = [a2 performPurchase];
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_1E644528C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E64453F4;
  aBlock[3] = &block_descriptor_28;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v12 addFinishBlock_];
  _Block_release(v15);
}

void sub_1E64441E8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v31 = a1;
  v6 = sub_1E65DB638();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1E65DB868();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65DB628();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_getObjectType();
    v17 = a2;
    v18 = a2;
    sub_1E65DB618();
    sub_1E644531C(&unk_1ED079C30, MEMORY[0x1E69CD580], MEMORY[0x1E69CD578]);
    sub_1E65DDDE8();
    (*(v14 + 8))(v16, v13);
    v34 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
    sub_1E65E5FE8();
    return;
  }

  v19 = v30;
  v29 = v10;
  if (!v31)
  {
    swift_getObjectType();
    sub_1E5FB7CAC();
    swift_allocError();
    *v23 = 1;
    sub_1E65DB618();
    sub_1E644531C(&unk_1ED079C30, MEMORY[0x1E69CD580], MEMORY[0x1E69CD578]);
    sub_1E65DDDE8();
    (*(v14 + 8))(v16, v13);
    v24 = swift_allocError();
    *v25 = 1;
    v34 = v24;
    goto LABEL_3;
  }

  v20 = v31;
  v21 = [v20 correlationID];
  if (v21)
  {

    swift_getObjectType();
    *v8 = v20;
    (*(v19 + 104))(v8, *MEMORY[0x1E69CD590], v6);
    v22 = v20;
    sub_1E65DB858();
    sub_1E644531C(&qword_1EE2D6D20, MEMORY[0x1E69CD638], MEMORY[0x1E69CD630]);
    sub_1E65DDDE8();
    (*(v29 + 8))(v12, v9);
    v34 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
    sub_1E65E5FF8();
  }

  else
  {
    swift_getObjectType();
    sub_1E5FB7CAC();
    swift_allocError();
    *v26 = 2;
    sub_1E65DB618();
    sub_1E644531C(&unk_1ED079C30, MEMORY[0x1E69CD580], MEMORY[0x1E69CD578]);
    sub_1E65DDDE8();
    (*(v14 + 8))(v16, v13);
    v27 = swift_allocError();
    *v28 = 2;
    v34 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
    sub_1E65E5FE8();
  }
}

void sub_1E644471C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1E644486C(void *a1, int a2, int a3, void *a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  _Block_copy(v7);
  v9 = a4;
  v8 = a1;
  sub_1E6444AE8(v9, v8, v7);
  _Block_release(v7);

  _Block_release(v7);
}

void sub_1E6444910(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_1E64449BC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1E6444A0C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E6444A60(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1E6444A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1E65D73A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1E6444AE8(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(MEMORY[0x1E698CC50]);
    _Block_copy(a3);
    v9 = [v8 initWithRequest:a1 presentingViewController:v7];
    v10 = [v9 present];
    v15[4] = sub_1E6445154;
    v15[5] = v5;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1E64453F4;
    v15[3] = &block_descriptor_7_0;
    v11 = _Block_copy(v15);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_1E6445100();
    v12 = swift_allocError();
    *v13 = 1;
    _Block_copy(a3);
    v14 = sub_1E65D73A8();
    (a3)[2](a3, 0, v14);
  }
}

void sub_1E6444CDC(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(a2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_bag);
    v10 = objc_allocWithZone(MEMORY[0x1E698CC58]);
    _Block_copy(a3);
    v11 = [v10 initWithRequest:a1 presentingViewController:v8 bag:v9];
    [v11 setDelegate_];
    v12 = [v11 performAuthentication];
    v17[4] = sub_1E64453E0;
    v17[5] = v6;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E64453F4;
    v17[3] = &block_descriptor_13_0;
    v13 = _Block_copy(v17);

    [v12 addFinishBlock_];
    _Block_release(v13);
  }

  else
  {
    sub_1E6445100();
    v14 = swift_allocError();
    *v15 = 0;
    _Block_copy(a3);
    v16 = sub_1E65D73A8();
    (a3)[2](a3, 0, v16);
  }
}

void sub_1E6444EFC(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(a2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_bag);
    v10 = objc_allocWithZone(MEMORY[0x1E698CCD0]);
    _Block_copy(a3);
    v11 = [v10 initWithRequest:a1 bag:v9 presentingViewController:v8];
    v12 = [v11 presentEngagement];
    v17[4] = sub_1E64453E0;
    v17[5] = v6;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E64453F4;
    v17[3] = &block_descriptor_18;
    v13 = _Block_copy(v17);

    [v12 addFinishBlock_];
    _Block_release(v13);
  }

  else
  {
    sub_1E6445100();
    v14 = swift_allocError();
    *v15 = 2;
    _Block_copy(a3);
    v16 = sub_1E65D73A8();
    (a3)[2](a3, 0, v16);
  }
}

unint64_t sub_1E6445100()
{
  result = qword_1ED079C00;
  if (!qword_1ED079C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079C00);
  }

  return result;
}

uint64_t sub_1E6445170(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6442D00(a1, v4, v5, (v1 + 4), v6);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_1E644528C(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_1E64441E8(a1, a2, v6, v7, v8);
}

uint64_t sub_1E644531C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E6445378()
{
  result = qword_1ED079C48;
  if (!qword_1ED079C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079C48);
  }

  return result;
}

uint64_t sub_1E64453F8(void *a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v66 = a2;
  v59 = sub_1E65DB048();
  v57 = *(v59 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CB0, &qword_1E6603988);
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v47 - v6;
  v7 = sub_1E65DB068();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppComposer(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v48 = &v47 - v13;
  v15 = sub_1E65DB748();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v67 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v21 = sub_1E65DB088();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v51 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E65DB0C8();
  v24 = *(v23 - 8);
  v54 = v23;
  v55 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v68 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *a1;
  v49 = *(v16 + 16);
  v50 = a1;
  v49(v20, v66, v15);
  sub_1E5E1DEAC(a1, v14);
  v26 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v27 = (v17 + *(v10 + 80) + v26) & ~*(v10 + 80);
  v28 = swift_allocObject();
  v29 = *(v16 + 32);
  v29(v28 + v26, v20, v15);
  sub_1E5E1FA80(v48, v28 + v27);
  v49(v67, v66, v15);
  v30 = v52;
  sub_1E5E1DEAC(v50, v52);
  v31 = swift_allocObject();
  v29(v31 + v26, v67, v15);
  sub_1E5E1FA80(v30, v31 + v27);
  sub_1E65DB078();
  sub_1E65DB0B8();
  sub_1E65DB058();
  v33 = v56;
  v32 = v57;
  v34 = *(v57 + 16);
  v35 = v59;
  v36 = v60;
  v34(v56, v60, v59);
  v37 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v67 = swift_allocObject();
  v38 = *(v32 + 32);
  v38(&v67[v37], v33, v35);
  v34(v33, v36, v35);
  v39 = swift_allocObject();
  v38((v39 + v37), v33, v35);
  type metadata accessor for AppFeature(0);
  sub_1E6446CC8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E6446CC8(&qword_1EE2D6DA8, MEMORY[0x1E699D020], MEMORY[0x1E699D018]);
  v40 = v61;
  v41 = v54;
  sub_1E65E4DE8();
  v43 = v68;
  v42 = v69;
  v44 = v41;
  v45 = sub_1E65E4F08();
  (*(v64 + 8))(v40, v65);
  (*(v62 + 8))(v42, v63);
  (*(v55 + 8))(v43, v44);
  return v45;
}

uint64_t sub_1E6445B0C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a1;
  v6 = sub_1E65DB748();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  v7 = sub_1E65DB288();
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  v8 = type metadata accessor for ImageAssetRequest(0);
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  *(v5 + 128) = swift_task_alloc();
  v9 = sub_1E65D74E8();
  *(v5 + 136) = v9;
  *(v5 + 144) = *(v9 - 8);
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6445D20, 0, 0);
}

uint64_t sub_1E6445D20()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  sub_1E65DB008();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E62282E0(*(v0 + 16));
    v4 = sub_1E65DB0F8();
    sub_1E6446CC8(&unk_1ED075F10, MEMORY[0x1E699D058], MEMORY[0x1E699D060]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E699D050], v4);
    swift_willThrow();

    v6 = *(v0 + 1);

    return v6();
  }

  else
  {
    v9 = *(v0 + 11);
    v8 = *(v0 + 12);
    v10 = *(v0 + 9);
    v11 = *(v0 + 8);
    v29 = *(v0 + 7);
    v30 = *(v0 + 15);
    v27 = *(v0 + 10);
    v28 = *(v0 + 5);
    v13 = v0[3];
    v12 = v0[4];
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v14 = sub_1E65D7428();
    v26 = v15;
    v16 = sub_1E65DB028();
    v18 = v17;
    sub_1E65DB038();
    v19 = sub_1E65DB278();
    v21 = v20;
    (*(v9 + 8))(v8, v27);
    (*(v11 + 16))(v10, v28, v29);
    ImageAssetRequest.init(template:size:cropCode:fileType:priority:expirationPolicy:cacheBehavior:)(v14, v26, v16, v18, v19, v21, 25, 1, v30, v13, v12, 1, v10);
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v22 = AssetService.fetchRemoteImage.getter();
    *(v0 + 20) = v23;
    v31 = (v22 + *v22);
    v24 = swift_task_alloc();
    *(v0 + 21) = v24;
    *v24 = v0;
    v24[1] = sub_1E6187EEC;
    v25 = *(v0 + 15);

    return v31(v25);
  }
}