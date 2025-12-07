uint64_t sub_1E685AC08(uint64_t a1)
{
  v2 = sub_1E685B76C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685AC44(uint64_t a1)
{
  v2 = sub_1E685B76C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685AC80(uint64_t a1)
{
  v2 = sub_1E685B718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685ACBC(uint64_t a1)
{
  v2 = sub_1E685B718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685ACF8(uint64_t a1)
{
  v2 = sub_1E685B6C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685AD34(uint64_t a1)
{
  v2 = sub_1E685B6C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685AD80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E685C74C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E685ADA8(uint64_t a1)
{
  v2 = sub_1E685B574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685ADE4(uint64_t a1)
{
  v2 = sub_1E685B574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685AE20(uint64_t a1)
{
  v2 = sub_1E685B670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685AE5C(uint64_t a1)
{
  v2 = sub_1E685B670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685AE98(uint64_t a1)
{
  v2 = sub_1E685B61C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685AED4(uint64_t a1)
{
  v2 = sub_1E685B61C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685AF10(uint64_t a1)
{
  v2 = sub_1E685B5C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685AF4C(uint64_t a1)
{
  v2 = sub_1E685B5C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicSectionDensity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AC0, &qword_1E68C3D20);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v46 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AC8, &qword_1E68C3D28);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v43 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AD0, &qword_1E68C3D30);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v40 = &v33 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AD8, &qword_1E68C3D38);
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v37 = &v33 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AE0, &qword_1E68C3D40);
  v35 = *(v15 - 8);
  v36 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v34 = &v33 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AE8, &qword_1E68C3D48);
  v33 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v33 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AF0, &qword_1E68C3D50);
  v22 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v23);
  v25 = &v33 - v24;
  v26 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E685B574();
  sub_1E68B3BD0();
  v27 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v53 = 3;
      sub_1E685B670();
      v28 = v40;
      v29 = v49;
      sub_1E68B3A30();
      v31 = v41;
      v30 = v42;
    }

    else if (v26 == 4)
    {
      v54 = 4;
      sub_1E685B61C();
      v28 = v43;
      v29 = v49;
      sub_1E68B3A30();
      v31 = v44;
      v30 = v45;
    }

    else
    {
      v55 = 5;
      sub_1E685B5C8();
      v28 = v46;
      v29 = v49;
      sub_1E68B3A30();
      v31 = v47;
      v30 = v48;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v51 = 1;
      sub_1E685B718();
      v28 = v34;
      v29 = v49;
      sub_1E68B3A30();
      v31 = v35;
      v30 = v36;
    }

    else
    {
      v52 = 2;
      sub_1E685B6C4();
      v28 = v37;
      v29 = v49;
      sub_1E68B3A30();
      v31 = v38;
      v30 = v39;
    }

LABEL_12:
    (*(v31 + 8))(v28, v30);
    return (*v27)(v25, v29);
  }

  v50 = 0;
  sub_1E685B76C();
  v29 = v49;
  sub_1E68B3A30();
  (*(v33 + 8))(v21, v18);
  return (*v27)(v25, v29);
}

unint64_t sub_1E685B574()
{
  result = qword_1ED099AF8;
  if (!qword_1ED099AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099AF8);
  }

  return result;
}

unint64_t sub_1E685B5C8()
{
  result = qword_1ED099B00;
  if (!qword_1ED099B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B00);
  }

  return result;
}

unint64_t sub_1E685B61C()
{
  result = qword_1ED099B08;
  if (!qword_1ED099B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B08);
  }

  return result;
}

unint64_t sub_1E685B670()
{
  result = qword_1ED099B10;
  if (!qword_1ED099B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B10);
  }

  return result;
}

unint64_t sub_1E685B6C4()
{
  result = qword_1ED099B18;
  if (!qword_1ED099B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B18);
  }

  return result;
}

unint64_t sub_1E685B718()
{
  result = qword_1ED099B20;
  if (!qword_1ED099B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B20);
  }

  return result;
}

unint64_t sub_1E685B76C()
{
  result = qword_1ED099B28;
  if (!qword_1ED099B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B28);
  }

  return result;
}

uint64_t DynamicSectionDensity.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B30, &qword_1E68C3D58);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v62 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B38, &qword_1E68C3D60);
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v61 = &v46 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B40, &qword_1E68C3D68);
  v53 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v10);
  v60 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B48, &qword_1E68C3D70);
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v58 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B50, &qword_1E68C3D78);
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B58, &qword_1E68C3D80);
  v47 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B60, &unk_1E68C3D88);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v46 - v26;
  v28 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1E685B574();
  v29 = v63;
  sub_1E68B3BC0();
  if (!v29)
  {
    v30 = v22;
    v46 = v19;
    v63 = v18;
    v32 = v60;
    v31 = v61;
    v33 = v62;
    v34 = sub_1E68B3A10();
    v35 = (2 * *(v34 + 16)) | 1;
    v65 = v34;
    v66 = v34 + 32;
    v67 = 0;
    v68 = v35;
    v36 = sub_1E676F5CC();
    v37 = v27;
    if (v36 == 6 || v67 != v68 >> 1)
    {
      v41 = sub_1E68B3870();
      swift_allocError();
      v43 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v43 = &type metadata for DynamicSectionDensity;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrow();
      (*(v24 + 8))(v27, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v69 = v36;
      if (v36 > 2u)
      {
        v45 = v59;
        if (v36 == 3)
        {
          v70 = 3;
          sub_1E685B670();
          sub_1E68B3970();
          (*(v53 + 8))(v32, v48);
        }

        else if (v36 == 4)
        {
          v70 = 4;
          sub_1E685B61C();
          sub_1E68B3970();
          (*(v55 + 8))(v31, v54);
        }

        else
        {
          v70 = 5;
          sub_1E685B5C8();
          sub_1E68B3970();
          (*(v56 + 8))(v33, v57);
        }

        (*(v24 + 8))(v37, v23);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v36)
        {
          if (v36 == 1)
          {
            v70 = 1;
            sub_1E685B718();
            v38 = v63;
            sub_1E68B3970();
            v40 = v49;
            v39 = v50;
          }

          else
          {
            v70 = 2;
            sub_1E685B6C4();
            v38 = v58;
            sub_1E68B3970();
            v40 = v51;
            v39 = v52;
          }

          (*(v40 + 8))(v38, v39);
        }

        else
        {
          v70 = 0;
          sub_1E685B76C();
          sub_1E68B3970();
          (*(v47 + 8))(v30, v46);
        }

        (*(v24 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v45 = v59;
      }

      *v45 = v69;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t DynamicSectionDensity.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E685C018(void *a1)
{
  a1[1] = sub_1E685C050();
  a1[2] = sub_1E685C0A4();
  result = sub_1E685C0F8();
  a1[3] = result;
  return result;
}

unint64_t sub_1E685C050()
{
  result = qword_1ED099B68;
  if (!qword_1ED099B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B68);
  }

  return result;
}

unint64_t sub_1E685C0A4()
{
  result = qword_1ED099B70;
  if (!qword_1ED099B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B70);
  }

  return result;
}

unint64_t sub_1E685C0F8()
{
  result = qword_1ED099B78;
  if (!qword_1ED099B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B78);
  }

  return result;
}

unint64_t sub_1E685C150()
{
  result = qword_1ED099B80;
  if (!qword_1ED099B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B80);
  }

  return result;
}

unint64_t sub_1E685C228()
{
  result = qword_1ED099B88;
  if (!qword_1ED099B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B88);
  }

  return result;
}

unint64_t sub_1E685C280()
{
  result = qword_1ED099B90;
  if (!qword_1ED099B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B90);
  }

  return result;
}

unint64_t sub_1E685C2D8()
{
  result = qword_1ED099B98;
  if (!qword_1ED099B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B98);
  }

  return result;
}

unint64_t sub_1E685C330()
{
  result = qword_1ED099BA0;
  if (!qword_1ED099BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BA0);
  }

  return result;
}

unint64_t sub_1E685C388()
{
  result = qword_1ED099BA8;
  if (!qword_1ED099BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BA8);
  }

  return result;
}

unint64_t sub_1E685C3E0()
{
  result = qword_1ED099BB0;
  if (!qword_1ED099BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BB0);
  }

  return result;
}

unint64_t sub_1E685C438()
{
  result = qword_1ED099BB8;
  if (!qword_1ED099BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BB8);
  }

  return result;
}

unint64_t sub_1E685C490()
{
  result = qword_1ED099BC0;
  if (!qword_1ED099BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BC0);
  }

  return result;
}

unint64_t sub_1E685C4E8()
{
  result = qword_1ED099BC8;
  if (!qword_1ED099BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BC8);
  }

  return result;
}

unint64_t sub_1E685C540()
{
  result = qword_1ED099BD0;
  if (!qword_1ED099BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BD0);
  }

  return result;
}

unint64_t sub_1E685C598()
{
  result = qword_1ED099BD8;
  if (!qword_1ED099BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BD8);
  }

  return result;
}

unint64_t sub_1E685C5F0()
{
  result = qword_1ED099BE0;
  if (!qword_1ED099BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BE0);
  }

  return result;
}

unint64_t sub_1E685C648()
{
  result = qword_1ED099BE8;
  if (!qword_1ED099BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BE8);
  }

  return result;
}

unint64_t sub_1E685C6A0()
{
  result = qword_1ED099BF0;
  if (!qword_1ED099BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BF0);
  }

  return result;
}

unint64_t sub_1E685C6F8()
{
  result = qword_1ED099BF8;
  if (!qword_1ED099BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BF8);
  }

  return result;
}

uint64_t sub_1E685C74C(uint64_t a1, uint64_t a2)
{
  if (a1 == 65 && a2 == 0xE100000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 66 && a2 == 0xE100000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 67 && a2 == 0xE100000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 68 && a2 == 0xE100000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 69 && a2 == 0xE100000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 70 && a2 == 0xE100000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E68B3B00();

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

uint64_t sub_1E685C918(uint64_t a1)
{
  v2 = sub_1E685D148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685C954(uint64_t a1)
{
  v2 = sub_1E685D148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685C990()
{
  v1 = 0x676E696461656CLL;
  v2 = 0x69566D6F74737563;
  if (*v0 != 2)
  {
    v2 = 0x72657474616C70;
  }

  if (*v0)
  {
    v1 = 0x7265746E6563;
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

uint64_t sub_1E685CA0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E685DD70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E685CA34(uint64_t a1)
{
  v2 = sub_1E685D04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685CA70(uint64_t a1)
{
  v2 = sub_1E685D04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685CAAC(uint64_t a1)
{
  v2 = sub_1E685D0F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685CAE8(uint64_t a1)
{
  v2 = sub_1E685D0F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685CB24(uint64_t a1)
{
  v2 = sub_1E685D19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685CB60(uint64_t a1)
{
  v2 = sub_1E685D19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685CB9C(uint64_t a1)
{
  v2 = sub_1E685D0A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685CBD8(uint64_t a1)
{
  v2 = sub_1E685D0A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FullWidthStageViewStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C00, &qword_1E68C43E0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v35 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C08, &qword_1E68C43E8);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C10, &qword_1E68C43F0);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v29 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C18, &qword_1E68C43F8);
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C20, &qword_1E68C4400);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v27 - v19;
  v21 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E685D04C();
  sub_1E68B3BD0();
  v22 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v40 = 2;
      sub_1E685D0F4();
      v23 = v32;
      sub_1E68B3A30();
      v25 = v33;
      v24 = v34;
    }

    else
    {
      v41 = 3;
      sub_1E685D0A0();
      v23 = v35;
      sub_1E68B3A30();
      v25 = v36;
      v24 = v37;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v39 = 1;
    sub_1E685D148();
    v23 = v29;
    sub_1E68B3A30();
    v25 = v30;
    v24 = v31;
LABEL_8:
    (*(v25 + 8))(v23, v24);
    return (*v22)(v20, v16);
  }

  v38 = 0;
  sub_1E685D19C();
  sub_1E68B3A30();
  (*(v27 + 8))(v15, v28);
  return (*v22)(v20, v16);
}

unint64_t sub_1E685D04C()
{
  result = qword_1ED099C28;
  if (!qword_1ED099C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C28);
  }

  return result;
}

unint64_t sub_1E685D0A0()
{
  result = qword_1ED099C30;
  if (!qword_1ED099C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C30);
  }

  return result;
}

unint64_t sub_1E685D0F4()
{
  result = qword_1ED099C38;
  if (!qword_1ED099C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C38);
  }

  return result;
}

unint64_t sub_1E685D148()
{
  result = qword_1ED099C40;
  if (!qword_1ED099C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C40);
  }

  return result;
}

unint64_t sub_1E685D19C()
{
  result = qword_1ED099C48;
  if (!qword_1ED099C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C48);
  }

  return result;
}

uint64_t FullWidthStageViewStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C50, &qword_1E68C4408);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v3);
  v49 = &v39 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C58, &qword_1E68C4410);
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v5);
  v48 = &v39 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C60, &qword_1E68C4418);
  v41 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C68, &qword_1E68C4420);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C70, &unk_1E68C4428);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v39 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1E685D04C();
  v20 = v51;
  sub_1E68B3BC0();
  if (!v20)
  {
    v21 = v13;
    v39 = v10;
    v40 = 0;
    v22 = v9;
    v23 = v48;
    v24 = v49;
    v51 = v15;
    v25 = v50;
    v26 = v18;
    v27 = sub_1E68B3A10();
    v28 = (2 * *(v27 + 16)) | 1;
    v53 = v27;
    v54 = v27 + 32;
    v55 = 0;
    v56 = v28;
    v29 = sub_1E676F5C4();
    if (v29 == 4 || v55 != v56 >> 1)
    {
      v31 = sub_1E68B3870();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v33 = &type metadata for FullWidthStageViewStyle;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
LABEL_9:
      (*(v51 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    v57 = v29;
    if (v29 <= 1u)
    {
      if (v29)
      {
        v58 = 1;
        sub_1E685D148();
        v37 = v40;
        sub_1E68B3970();
        if (!v37)
        {
          (*(v41 + 8))(v22, v45);
          goto LABEL_17;
        }
      }

      else
      {
        v58 = 0;
        sub_1E685D19C();
        v30 = v40;
        sub_1E68B3970();
        if (!v30)
        {
          (*(v42 + 8))(v21, v39);
LABEL_17:
          (*(v51 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v25 = v57;
          return __swift_destroy_boxed_opaque_existential_1(v52);
        }
      }

      goto LABEL_9;
    }

    v35 = v51;
    if (v29 == 2)
    {
      v58 = 2;
      sub_1E685D0F4();
      v36 = v40;
      sub_1E68B3970();
      if (!v36)
      {
        (*(v43 + 8))(v23, v47);
LABEL_21:
        (*(v35 + 8))(v26, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v58 = 3;
      sub_1E685D0A0();
      v38 = v40;
      sub_1E68B3970();
      if (!v38)
      {
        (*(v44 + 8))(v24, v46);
        goto LABEL_21;
      }
    }

    (*(v35 + 8))(v26, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t FullWidthStageViewStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E685D8F4()
{
  result = qword_1ED099C78;
  if (!qword_1ED099C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C78);
  }

  return result;
}

unint64_t sub_1E685D9AC()
{
  result = qword_1ED099C80;
  if (!qword_1ED099C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C80);
  }

  return result;
}

unint64_t sub_1E685DA04()
{
  result = qword_1ED099C88;
  if (!qword_1ED099C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C88);
  }

  return result;
}

unint64_t sub_1E685DA5C()
{
  result = qword_1ED099C90;
  if (!qword_1ED099C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C90);
  }

  return result;
}

unint64_t sub_1E685DAB4()
{
  result = qword_1ED099C98;
  if (!qword_1ED099C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C98);
  }

  return result;
}

unint64_t sub_1E685DB0C()
{
  result = qword_1ED099CA0;
  if (!qword_1ED099CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CA0);
  }

  return result;
}

unint64_t sub_1E685DB64()
{
  result = qword_1ED099CA8;
  if (!qword_1ED099CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CA8);
  }

  return result;
}

unint64_t sub_1E685DBBC()
{
  result = qword_1ED099CB0;
  if (!qword_1ED099CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CB0);
  }

  return result;
}

unint64_t sub_1E685DC14()
{
  result = qword_1ED099CB8;
  if (!qword_1ED099CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CB8);
  }

  return result;
}

unint64_t sub_1E685DC6C()
{
  result = qword_1ED099CC0;
  if (!qword_1ED099CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CC0);
  }

  return result;
}

unint64_t sub_1E685DCC4()
{
  result = qword_1ED099CC8;
  if (!qword_1ED099CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CC8);
  }

  return result;
}

unint64_t sub_1E685DD1C()
{
  result = qword_1ED099CD0;
  if (!qword_1ED099CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CD0);
  }

  return result;
}

uint64_t sub_1E685DD70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696461656CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69566D6F74737563 && a2 == 0xEA00000000007765 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72657474616C70 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t static CanvasSectionLayout.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v77 = a1;
  v78 = a2;
  v71 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v64 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CanvasGridAxis(0, v11, v13, v12);
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v63 = &v62 - v16;
  v74 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v62 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v62 - v22;
  v76 = a3;
  v79[0] = a3;
  v79[1] = a4;
  v72 = a4;
  v73 = a5;
  v79[2] = a5;
  v79[3] = a6;
  v65 = a6;
  v24 = type metadata accessor for CanvasSectionLayout(0, v79);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v68 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v67 = &v62 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v66 = &v62 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v62 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = (&v62 - v40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v45 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v44);
  v47 = &v62 - v46;
  v49 = (&v62 + *(v48 + 48) - v46);
  v75 = v25;
  v50 = *(v25 + 16);
  v50(&v62 - v46, v77, v24, v45);
  (v50)(v49, v78, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (v50)(v41, v47, v24);
      if (!swift_getEnumCaseMultiPayload())
      {
        v56 = v41[1] == v49[1] && *v41 == *v49;
        goto LABEL_20;
      }

LABEL_25:
      v56 = 0;
      goto LABEL_26;
    }

    (v50)(v37, v47, v24);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v58 = v74;
      v52 = v76;
      (*(v74 + 32))(v23, v49, v76);
      v56 = sub_1E68B3190();
      v57 = *(v58 + 8);
      v57(v23, v52);
      goto LABEL_19;
    }

LABEL_21:
    (*(v74 + 8))(v37, v76);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v37 = v66;
    (v50)(v66, v47, v24);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v53 = v74;
      v54 = v62;
      v52 = v76;
      (*(v74 + 32))(v62, v49, v76);
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v37 = v68;
    (v50)(v68, v47, v24);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v60 = v71;
      v59 = v72;
      goto LABEL_24;
    }

    v53 = v71;
    v52 = v72;
    v54 = v64;
    (*(v71 + 32))(v64, v49, v72);
LABEL_15:
    v55 = sub_1E68B3190();
    goto LABEL_16;
  }

  v37 = v67;
  (v50)(v67, v47, v24);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v60 = v69;
    v59 = v70;
LABEL_24:
    (*(v60 + 8))(v37, v59);
    goto LABEL_25;
  }

  v53 = v69;
  v52 = v70;
  v54 = v63;
  (*(v69 + 32))(v63, v49, v70);
  v55 = static CanvasGridAxis.== infix(_:_:)(v37, v54, v76, v73);
LABEL_16:
  v56 = v55;
  v57 = *(v53 + 8);
  v57(v54, v52);
LABEL_19:
  v57(v37, v52);
LABEL_20:
  v43 = v75;
  TupleTypeMetadata2 = v24;
LABEL_26:
  (*(v43 + 8))(v47, TupleTypeMetadata2);
  return v56 & 1;
}

uint64_t sub_1E685E570(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E685E5EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6573756F726163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F676F6874726FLL && a2 == 0xEA00000000006C61 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953720684 && a2 == 0xE400000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684632167 && a2 == 0xE400000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C69754277656976 && a2 == 0xEB00000000726564)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E685E7A8(unsigned __int8 a1)
{
  v1 = 0x6C6573756F726163;
  v2 = 1953720684;
  v3 = 1684632167;
  if (a1 != 3)
  {
    v3 = 0x6C69754277656976;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6E6F676F6874726FLL;
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

uint64_t sub_1E685E840(uint64_t a1, uint64_t a2)
{
  if (a1 == 1936291937 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E685E8B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x46797469736E6564 && a2 == 0xED0000726F746361)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E685E988(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E685E9DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E685EA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E685E5EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E685EA74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E674BEA8();
  *a1 = result;
  return result;
}

uint64_t sub_1E685EAA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E685EAFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E685EB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_1E685EBB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E685EC0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E685EC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E685E8B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E685ECBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E685ED10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E685ED64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E685EDB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E685EE24@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E685EE64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E685EEB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasSectionLayout.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v121 = a2[2];
  v5 = v121;
  v122 = v4;
  v123 = v6;
  v124 = v7;
  v100 = type metadata accessor for CanvasSectionLayout.ViewBuilderCodingKeys(255, &v121);
  WitnessTable = swift_getWitnessTable();
  v103 = sub_1E68B3AC0();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v8);
  v99 = &v80 - v9;
  v101 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v97 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v5;
  v122 = v4;
  v123 = v6;
  v124 = v7;
  v13 = type metadata accessor for CanvasSectionLayout.GridCodingKeys(255, &v121);
  v14 = swift_getWitnessTable();
  v91 = v13;
  v89 = v14;
  v96 = sub_1E68B3AC0();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v15);
  v92 = &v80 - v16;
  v94 = type metadata accessor for CanvasGridAxis(0, v5, v6, v17);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v18);
  v90 = &v80 - v19;
  v121 = v5;
  v122 = v4;
  v123 = v6;
  v124 = v7;
  v20 = type metadata accessor for CanvasSectionLayout.ListCodingKeys(255, &v121);
  v21 = swift_getWitnessTable();
  v86 = v20;
  v84 = v21;
  v88 = sub_1E68B3AC0();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v22);
  v85 = &v80 - v23;
  v121 = v5;
  v122 = v4;
  v123 = v6;
  v124 = v7;
  v24 = type metadata accessor for CanvasSectionLayout.OrthogonalCodingKeys(255, &v121);
  v111 = swift_getWitnessTable();
  v112 = v24;
  v110 = sub_1E68B3AC0();
  v81 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v25);
  v109 = &v80 - v26;
  v113 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v83 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v116 = &v80 - v32;
  v121 = v5;
  v122 = v4;
  v123 = v6;
  v124 = v7;
  type metadata accessor for CanvasSectionLayout.CarouselCodingKeys(255, &v121);
  v108 = swift_getWitnessTable();
  v107 = sub_1E68B3AC0();
  v82 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v33);
  v106 = &v80 - v34;
  v35 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = (&v80 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = v5;
  v121 = v5;
  v122 = v4;
  v105 = v4;
  v115 = v6;
  v123 = v6;
  v124 = v7;
  v104 = v7;
  type metadata accessor for CanvasSectionLayout.CodingKeys(255, &v121);
  swift_getWitnessTable();
  v40 = sub_1E68B3AC0();
  v41 = *(v40 - 8);
  v119 = v40;
  v120 = v41;
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = &v80 - v43;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v118 = v44;
  sub_1E68B3BD0();
  (*(v35 + 16))(v39, v117, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v53 = v107;
    v54 = v109;
    v55 = v110;
    if (EnumCaseMultiPayload)
    {
      v77 = v113;
      v76 = v114;
      (*(v113 + 32))(v116, v39, v114);
      LOBYTE(v121) = 1;
      v78 = v119;
      v79 = v118;
      sub_1E68B3A30();
      sub_1E68B3AB0();
      (*(v81 + 8))(v54, v55);
      (*(v77 + 8))(v116, v76);
      v59 = *(v120 + 8);
      v60 = v79;
      v75 = v78;
      return v59(v60, v75);
    }

    v56 = *v39;
    v57 = v39[1];
    LOBYTE(v121) = 0;
    v58 = v106;
    v51 = v118;
    v50 = v119;
    sub_1E68B3A30();
    v121 = v56;
    v122 = v57;
    type metadata accessor for CGSize(0);
    sub_1E6860B18(&qword_1EE2EA448, MEMORY[0x1E695EF88]);
    sub_1E68B3AB0();
    (*(v82 + 8))(v58, v53);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v62 = v113;
      v61 = v114;
      v63 = v83;
      (*(v113 + 32))(v83, v39, v114);
      LOBYTE(v121) = 2;
      v64 = v85;
      v66 = v118;
      v65 = v119;
      sub_1E68B3A30();
      v67 = v88;
      sub_1E68B3AB0();
      (*(v87 + 8))(v64, v67);
      (*(v62 + 8))(v63, v61);
      return (*(v120 + 8))(v66, v65);
    }

    if (EnumCaseMultiPayload != 3)
    {
      v69 = v101;
      v70 = v97;
      v71 = v105;
      (*(v101 + 32))(v97, v39, v105);
      LOBYTE(v121) = 4;
      v72 = v99;
      v73 = v118;
      v50 = v119;
      sub_1E68B3A30();
      v74 = v103;
      sub_1E68B3AB0();
      (*(v102 + 8))(v72, v74);
      (*(v69 + 8))(v70, v71);
      v59 = *(v120 + 8);
      v60 = v73;
      goto LABEL_10;
    }

    v46 = v93;
    v47 = v90;
    v48 = v94;
    (*(v93 + 32))(v90, v39, v94);
    LOBYTE(v121) = 3;
    v49 = v92;
    v51 = v118;
    v50 = v119;
    sub_1E68B3A30();
    swift_getWitnessTable();
    v52 = v96;
    sub_1E68B3AB0();
    (*(v95 + 8))(v49, v52);
    (*(v46 + 8))(v47, v48);
  }

  v59 = *(v120 + 8);
  v60 = v51;
LABEL_10:
  v75 = v50;
  return v59(v60, v75);
}

uint64_t CanvasSectionLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v121 = a6;
  *&v149 = a2;
  *(&v149 + 1) = a3;
  *&v150 = a4;
  *(&v150 + 1) = a5;
  v11 = type metadata accessor for CanvasSectionLayout.ViewBuilderCodingKeys(255, &v149);
  WitnessTable = swift_getWitnessTable();
  v135 = v11;
  v134 = WitnessTable;
  v118 = sub_1E68B3A20();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v13);
  v136 = &v105 - v14;
  *&v149 = a2;
  *(&v149 + 1) = a3;
  *&v150 = a4;
  *(&v150 + 1) = a5;
  v15 = type metadata accessor for CanvasSectionLayout.GridCodingKeys(255, &v149);
  v16 = swift_getWitnessTable();
  v132 = v15;
  v131 = v16;
  v116 = sub_1E68B3A20();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v17);
  v133 = &v105 - v18;
  *&v149 = a2;
  *(&v149 + 1) = a3;
  *&v150 = a4;
  *(&v150 + 1) = a5;
  v19 = type metadata accessor for CanvasSectionLayout.ListCodingKeys(255, &v149);
  v20 = swift_getWitnessTable();
  v129 = v19;
  v128 = v20;
  v114 = sub_1E68B3A20();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v21);
  v130 = &v105 - v22;
  *&v149 = a2;
  *(&v149 + 1) = a3;
  *&v150 = a4;
  *(&v150 + 1) = a5;
  v23 = type metadata accessor for CanvasSectionLayout.OrthogonalCodingKeys(255, &v149);
  v24 = swift_getWitnessTable();
  v126 = v23;
  v125 = v24;
  v112 = sub_1E68B3A20();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v25);
  v127 = &v105 - v26;
  *&v149 = a2;
  *(&v149 + 1) = a3;
  *&v150 = a4;
  *(&v150 + 1) = a5;
  v27 = type metadata accessor for CanvasSectionLayout.CarouselCodingKeys(255, &v149);
  v28 = swift_getWitnessTable();
  v123 = v27;
  v122 = v28;
  v110 = sub_1E68B3A20();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v29);
  v124 = &v105 - v30;
  *&v149 = a2;
  *(&v149 + 1) = a3;
  *&v150 = a4;
  *(&v150 + 1) = a5;
  type metadata accessor for CanvasSectionLayout.CodingKeys(255, &v149);
  v146 = swift_getWitnessTable();
  v144 = sub_1E68B3A20();
  v139 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v31);
  v33 = &v105 - v32;
  v141 = a2;
  v142 = a3;
  *&v149 = a2;
  *(&v149 + 1) = a3;
  v143 = a4;
  *&v150 = a4;
  *(&v150 + 1) = a5;
  v119 = a5;
  v34 = type metadata accessor for CanvasSectionLayout(0, &v149);
  v137 = *(v34 - 8);
  v138 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v120 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v105 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v105 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v105 - v47;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v105 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v105 - v55;
  v57 = a1;
  v58 = a1[3];
  v145 = v57;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v140 = v33;
  v59 = v151;
  sub_1E68B3BC0();
  if (!v59)
  {
    v146 = v48;
    v107 = v44;
    v106 = v52;
    v108 = v40;
    v60 = v143;
    v151 = v56;
    v62 = v140;
    v61 = v141;
    *&v147 = sub_1E68B3A10();
    sub_1E68B33B0();
    swift_getWitnessTable();
    *&v149 = sub_1E68B37A0();
    *(&v149 + 1) = v63;
    *&v150 = v64;
    *(&v150 + 1) = v65;
    sub_1E68B3790();
    swift_getWitnessTable();
    sub_1E68B36B0();
    v66 = v147;
    if (v147 != 5)
    {
      v105 = v149;
      v147 = v149;
      v148 = v150;
      if (sub_1E68B36E0())
      {
        if (v66 <= 1)
        {
          v80 = v144;
          v81 = v137;
          if (v66)
          {
            LOBYTE(v147) = 1;
            v87 = v127;
            sub_1E68B3970();
            v92 = v112;
            sub_1E68B3A00();
            v93 = v139;
            (*(v111 + 8))(v87, v92);
            (*(v93 + 8))(v62, v80);
            swift_unknownObjectRelease();
            v102 = v146;
            v73 = v138;
            swift_storeEnumTagMultiPayload();
            v103 = *(v81 + 32);
            v104 = v151;
            v103(v151, v102, v73);
LABEL_17:
            v83 = v145;
            v103(v121, v104, v73);
            goto LABEL_18;
          }

          LOBYTE(v147) = 0;
          v82 = v124;
          sub_1E68B3970();
          v83 = v145;
          type metadata accessor for CGSize(0);
          sub_1E6860B18(&qword_1ED096DC0, MEMORY[0x1E695EFA0]);
          v84 = v110;
          sub_1E68B3A00();
          (*(v109 + 8))(v82, v84);
          (*(v139 + 8))(v62, v80);
          swift_unknownObjectRelease();
          v98 = v106;
          *v106 = v147;
          v99 = v138;
          swift_storeEnumTagMultiPayload();
          v100 = *(v81 + 32);
          v101 = v151;
          v100(v151, v98, v99);
          v100(v121, v101, v99);
        }

        else
        {
          v67 = v144;
          if (v66 == 2)
          {
            LOBYTE(v147) = 2;
            v85 = v130;
            sub_1E68B3970();
            v70 = v107;
            v88 = v114;
            sub_1E68B3A00();
            v89 = v139;
            (*(v113 + 8))(v85, v88);
            (*(v89 + 8))(v62, v67);
            swift_unknownObjectRelease();
            v73 = v138;
            goto LABEL_16;
          }

          if (v66 == 3)
          {
            LOBYTE(v147) = 3;
            v68 = v133;
            sub_1E68B3970();
            type metadata accessor for CanvasGridAxis(0, v61, v60, v69);
            swift_getWitnessTable();
            v70 = v108;
            v71 = v116;
            sub_1E68B3A00();
            v72 = v139;
            (*(v115 + 8))(v68, v71);
            (*(v72 + 8))(v62, v67);
            swift_unknownObjectRelease();
            v73 = v138;
LABEL_16:
            swift_storeEnumTagMultiPayload();
            v103 = *(v137 + 32);
            v104 = v151;
            v103(v151, v70, v73);
            goto LABEL_17;
          }

          LOBYTE(v147) = 4;
          v86 = v136;
          sub_1E68B3970();
          v83 = v145;
          v90 = v118;
          sub_1E68B3A00();
          v91 = v139;
          (*(v117 + 8))(v86, v90);
          (*(v91 + 8))(v62, v67);
          swift_unknownObjectRelease();
          v94 = v120;
          v95 = v138;
          swift_storeEnumTagMultiPayload();
          v96 = *(v137 + 32);
          v97 = v151;
          v96(v151, v94, v95);
          v96(v121, v97, v95);
        }

LABEL_18:
        v78 = v83;
        return __swift_destroy_boxed_opaque_existential_1(v78);
      }
    }

    v74 = sub_1E68B3870();
    swift_allocError();
    v76 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
    *v76 = v138;
    v77 = v144;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v74 - 8) + 104))(v76, *MEMORY[0x1E69E6AF8], v74);
    swift_willThrow();
    (*(v139 + 8))(v62, v77);
    swift_unknownObjectRelease();
  }

  v78 = v145;
  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t sub_1E6860B18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void CanvasSectionLayout.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = *(a2 + 24);
  v38 = a1;
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v10 = type metadata accessor for CanvasGridAxis(0, v8, *(v7 + 32), v9);
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  v14 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = (&v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v3, a2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v30 = *v23;
      v31 = v23[1];
      MEMORY[0x1E69523D0](0);
      sub_1E673E7F4(v30, v31);
      return;
    }

    (*(v14 + 32))(v18, v23, v8);
    v32 = 1;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v14 + 32))(v18, v23, v8);
    v32 = 2;
LABEL_10:
    MEMORY[0x1E69523D0](v32);
    sub_1E68B3140();
    (*(v14 + 8))(v18, v8);
    return;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v26 = v35;
    (*(v35 + 32))(v13, v23, v10);
    v27 = v38;
    MEMORY[0x1E69523D0](3);
    CanvasGridAxis.hash(into:)(v27, v10, v28, v29);
    (*(v26 + 8))(v13, v10);
  }

  else
  {
    v34 = v36;
    v33 = v37;
    (*(v36 + 32))(v6, v23, v37);
    MEMORY[0x1E69523D0](4);
    sub_1E68B3140();
    (*(v34 + 8))(v6, v33);
  }
}

uint64_t CanvasSectionLayout.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  CanvasSectionLayout.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6860FA0(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  CanvasSectionLayout.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6861010(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = 16;
  if (v4 > 0x10)
  {
    v5 = *(v3 + 64);
  }

  v6 = ((*(v3 + 80) + 8) & ~*(v3 + 80)) + v4;
  if (v6 <= 0x18)
  {
    v6 = 24;
  }

  v7 = v6 + 1;
  if (v7 <= v5 + 1)
  {
    v7 = v5 + 1;
  }

  if (v7 + 1 > v5)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v5;
  }

  v9 = *(*(*(a3 + 24) - 8) + 64);
  if (v9 <= v8)
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_34;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 251) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v14 < 2)
    {
LABEL_34:
      v16 = *(a1 + v9);
      if (v16 >= 5)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_34;
  }

LABEL_23:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 252;
}

void sub_1E68611AC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = 16;
  if (v6 > 0x10)
  {
    v7 = *(v5 + 64);
  }

  v8 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + v6;
  if (v8 <= 0x18)
  {
    v8 = 24;
  }

  v9 = v8 + 1;
  if (v9 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  if (v9 + 1 > v7)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(*(a4 + 24) - 8);
  if (*(v11 + 64) > v10)
  {
    v10 = *(v11 + 64);
  }

  v12 = v10 + 1;
  if (a3 < 0xFC)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 251) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFB)
  {
    v14 = a2 - 252;
    if (v12 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v10 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_48:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_48;
          }
        }

LABEL_45:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v10] = -a2;
      return;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_33;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_34;
  }
}

uint64_t sub_1E68615E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = v16(v15);
  a5(v17);
  return sub_1E68B2D70();
}

uint64_t HorizontalGridView.init(header:items:footer:metrics:rowCount:contentMargins:densityFactor:dynamicTypeSize:sizeClass:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:actionButtonViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:sectionHeaderSubtitleViewBuilder:onItemAppearedAtIndex:onItemDisappearedAtIndex:onItemSelectedWithIdentifier:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, uint64_t a39, __int128 a40, __int128 a42, uint64_t a44, __int128 a45, __int128 a47, __int128 a49, __int128 a51, __int128 a53, __int128 a55, uint64_t a57, uint64_t a58)
{
  v97 = *a3;
  v52 = a7[1];
  v92 = a7[2];
  v93 = *a7;
  swift_getFunctionTypeMetadata1();
  v53 = sub_1E68B3750();
  v124 = 0;
  v125 = 0;
  v90 = a6[1];
  v91 = *a6;
  sub_1E672890C(&v124, v53, &v106);
  v103 = *(&v106 + 1);
  v104 = v106;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v106 = a32;
  *(&v106 + 1) = a42;
  v107 = AssociatedConformanceWitness;
  v108 = *(&a53 + 1);
  type metadata accessor for CanvasSectionHeader(255, &v106);
  v55 = sub_1E68B3750();
  v101 = *(v55 - 8);
  v102 = v55;
  (*(v101 + 16))(a9, a1);
  v106 = a32;
  v107 = a33;
  v108 = a34;
  v109 = a35;
  v110 = a36;
  v111 = a37;
  v112 = a39;
  v113 = a40;
  v114 = a42;
  v115 = a44;
  v116 = a45;
  v117 = a47;
  v118 = a49;
  v119 = a51;
  v120 = a53;
  v121 = a55;
  v122 = a57;
  v123 = a58;
  v56 = type metadata accessor for HorizontalGridView(0, &v106);
  *(a9 + v56[61]) = a2;
  *(a9 + v56[62]) = v97;
  v57 = v56[63];
  v58 = sub_1E68B3750();
  v98 = *(v58 - 8);
  v100 = v58;
  (*(v98 + 16))(a9 + v57, a4);
  *(a9 + v56[64]) = a5;
  v59 = (a9 + v56[65]);
  *v59 = v91;
  v59[1] = v90;
  v60 = v56[73];
  v124 = a19;
  v125 = a20;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v124, FunctionTypeMetadata1, &v106);
  *(a9 + v60) = v106;
  v62 = (a9 + v56[66]);
  *v62 = v93;
  v62[1] = v52;
  v62[2] = v92;
  *(a9 + v56[67]) = a8;
  v96 = *(a45 - 8);
  (*(v96 + 16))(a9 + v56[68], a10, a45);
  v63 = v56[69];
  v124 = a11;
  v125 = a12;
  v64 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v124, v64, &v106);
  *(a9 + v63) = v106;
  v65 = v56[70];
  v124 = a13;
  v125 = a14;
  v66 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v124, v66, &v106);
  *(a9 + v65) = v106;
  v67 = v56[71];
  v124 = a15;
  v125 = a16;
  v68 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v124, v68, &v106);
  *(a9 + v67) = v106;
  v69 = (a9 + v56[75]);

  *v69 = sub_1E6862290(a21, a22, a32, *(&a32 + 1), a33, a34, a35, a36, a37, *(&a37 + 1), a39, a40, a42, a44, a45, *(&a45 + 1), a47, a49, a51, a53, a55, a57, a58);
  v69[1] = v70;
  v71 = (a9 + v56[72]);

  *&v89[40] = a44;
  *&v89[24] = a42;
  *v89 = a39;
  *&v89[8] = a40;
  *v71 = sub_1E6862078(a17, v72, a32, *(&a32 + 1), a33, a34, a35, a36, a37, *v89, *&v89[16], *&v89[32], a45, a47, a49, a51, a53, a55, a57, a58);
  v71[1] = v73;
  v74 = v56[74];
  v124 = a23;
  v125 = a24;
  v75 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v124, v75, &v106);
  *(a9 + v74) = v106;
  if (a25)
  {
    v76 = swift_allocObject();
    *(v76 + 16) = a25;
    *(v76 + 24) = a26;
    v77 = sub_1E67E403C;
  }

  else
  {
    v77 = 0;
    v76 = 0;
  }

  v78 = (a9 + v56[76]);
  *v78 = v77;
  v78[1] = v76;
  if (a27)
  {
    v79 = swift_allocObject();
    *(v79 + 16) = a27;
    *(v79 + 24) = a28;
    v80 = sub_1E67E3FAC;
  }

  else
  {
    v80 = 0;
    v79 = 0;
  }

  v81 = (a9 + v56[77]);
  v82 = (a9 + v56[78]);
  *v81 = v80;
  v81[1] = v79;
  v83 = sub_1E68625AC(a29, a30, a32, *(&a32 + 1), a33, a34, a35, a36, a37, *(&a37 + 1), a39, a40, *(&a40 + 1), a42, *(&a42 + 1), a44, a45, *(&a45 + 1), a47, *(&a47 + 1), a49, *(&a49 + 1), a51, *(&a51 + 1), a53, *(&a53 + 1), a55, *(&a55 + 1), a57, a58);
  v85 = v84;

  (*(v96 + 8))(a10, a45);
  (*(v98 + 8))(a4, v100);
  (*(v101 + 8))(a1, v102);
  sub_1E672E440(v104, v103);
  *v82 = v83;
  v82[1] = v85;
  v86 = v56[79];
  v87 = sub_1E68B1950();
  return (*(*(v87 - 8) + 32))(a9 + v86, a31, v87);
}

uint64_t sub_1E6862078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  *(v28 + 32) = a5;
  *(v28 + 40) = a6;
  *(v28 + 48) = a7;
  *(v28 + 56) = a8;
  *(v28 + 64) = a9;
  *(v28 + 80) = a10;
  *(v28 + 96) = a11;
  *(v28 + 112) = a12;
  *(v28 + 128) = a13;
  *(v28 + 144) = a14;
  *(v28 + 160) = a15;
  *(v28 + 176) = a16;
  *(v28 + 192) = a17;
  *(v28 + 208) = a18;
  *(v28 + 224) = a19;
  *(v28 + 232) = a20;
  *(v28 + 240) = a1;
  *(v28 + 248) = a2;
  v31[0] = sub_1E67D5538;
  v31[1] = v28;
  sub_1E68B3750();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208, &qword_1E68BB878);
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v31, FunctionTypeMetadata2, &v32);
  return v32;
}

uint64_t (*sub_1E68621E4(uint64_t a1))(uint64_t a1, uint64_t a2, char a3)
{
  v3 = (v1 + *(a1 + 288));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  *(v6 + 240) = v5;
  *(v6 + 248) = v4;

  return sub_1E67D41E8;
}

uint64_t sub_1E6862290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23)
{
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  *(v27 + 32) = a5;
  *(v27 + 40) = a6;
  *(v27 + 48) = a7;
  *(v27 + 56) = a8;
  *(v27 + 64) = a9;
  *(v27 + 72) = a10;
  *(v27 + 80) = a11;
  *(v27 + 88) = a12;
  *(v27 + 104) = a13;
  *(v27 + 120) = a14;
  *(v27 + 128) = a15;
  *(v27 + 136) = a16;
  *(v27 + 144) = a17;
  *(v27 + 160) = a18;
  *(v27 + 176) = a19;
  *(v27 + 192) = a20;
  *(v27 + 208) = a21;
  *(v27 + 224) = a22;
  *(v27 + 232) = a23;
  *(v27 + 240) = a1;
  *(v27 + 248) = a2;
  v34[0] = sub_1E67D559C;
  v34[1] = v27;
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v34, FunctionTypeMetadata2, &v35);
  return v35;
}

uint64_t (*sub_1E68623F8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = (v1 + *(a1 + 300));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  *(v6 + 240) = v5;
  *(v6 + 248) = v4;

  return sub_1E67D5458;
}

uint64_t (*sub_1E68624A4(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 304));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E67D5680;
  }

  else
  {
    v6 = 0;
  }

  sub_1E6739D68(v3, v4);
  return v6;
}

uint64_t (*sub_1E6862528(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 308));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E67D5450;
  }

  else
  {
    v6 = 0;
  }

  sub_1E6739D68(v3, v4);
  return v6;
}

uint64_t sub_1E68625AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a1)
  {
    v30 = a1;
    a1 = swift_allocObject();
    a1[2] = a3;
    a1[3] = a4;
    a1[4] = a5;
    a1[5] = a6;
    a1[6] = a7;
    a1[7] = a8;
    a1[8] = a9;
    a1[9] = a10;
    a1[10] = a11;
    a1[11] = a12;
    a1[12] = a13;
    a1[13] = a14;
    a1[14] = a15;
    a1[15] = a16;
    a1[16] = a17;
    a1[17] = a18;
    a1[18] = a19;
    a1[19] = a20;
    a1[20] = a21;
    a1[21] = a22;
    a1[22] = a23;
    a1[23] = a24;
    a1[24] = a25;
    a1[25] = a26;
    a1[26] = a27;
    a1[27] = a28;
    a1[28] = a29;
    a1[29] = a30;
    a1[30] = v30;
    a1[31] = a2;
    v37 = sub_1E67D5600;
  }

  else
  {
    v37 = 0;
  }

  v41[0] = v37;
  v41[1] = a1;
  swift_getFunctionTypeMetadata1();
  v38 = sub_1E68B3750();
  sub_1E672890C(v41, v38, &v42);
  return v42;
}

uint64_t (*sub_1E686279C(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 312));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v6 = swift_allocObject();
    v7 = *(a1 + 32);
    *(v6 + 16) = *(a1 + 16);
    *(v6 + 32) = v7;
    v8 = *(a1 + 64);
    *(v6 + 48) = *(a1 + 48);
    *(v6 + 64) = v8;
    v9 = *(a1 + 96);
    *(v6 + 80) = *(a1 + 80);
    *(v6 + 96) = v9;
    v10 = *(a1 + 128);
    *(v6 + 112) = *(a1 + 112);
    *(v6 + 128) = v10;
    v11 = *(a1 + 160);
    *(v6 + 144) = *(a1 + 144);
    *(v6 + 160) = v11;
    v12 = *(a1 + 192);
    *(v6 + 176) = *(a1 + 176);
    *(v6 + 192) = v12;
    v13 = *(a1 + 224);
    *(v6 + 208) = *(a1 + 208);
    *(v6 + 224) = v13;
    *(v6 + 240) = v3;
    *(v6 + 248) = v4;
    v14 = sub_1E67D54BC;
  }

  else
  {
    v14 = 0;
  }

  sub_1E6739D68(v3, v4);
  return v14;
}

uint64_t HorizontalGridView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v206 = a2;
  v205 = sub_1E68B2300();
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205, v3);
  v203 = v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v184 = &v294;
  v5 = a1[3];
  v200 = a1[14];
  v293 = v5;
  *&v294 = v200;
  v6 = a1[19];
  v201 = a1[26];
  v7 = a1;
  *(&v294 + 1) = v6;
  v295 = v201;
  v197 = type metadata accessor for CanvasSectionHeaderView(255, &v293);
  sub_1E68B2390();
  v198 = sub_1E68B1E40();
  v199 = sub_1E68B2220();
  v196 = sub_1E68B3750();
  v215 = a1[18];
  swift_getTupleTypeMetadata2();
  v8 = sub_1E68B33B0();
  v214 = a1[29];
  v190 = *(v214 + 32);
  v191 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = a1[20];
  v293 = a1[5];
  *&v294 = v5;
  v211 = v293;
  *(&v294 + 1) = v5;
  v295 = v9;
  v10 = v9;
  v212 = v9;
  *&v296 = v6;
  *(&v296 + 1) = v6;
  v11 = type metadata accessor for ActionCardView(255, &v293);
  v183 = v11;
  WitnessTable = swift_getWitnessTable();
  v293 = v11;
  *&v294 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v209 = sub_1E68B2440();
  sub_1E68B1E40();
  v12 = sub_1E68B1E40();
  v186 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v305 = v10;
  v306 = v186;
  v13 = MEMORY[0x1E697E858];
  v14 = swift_getWitnessTable();
  v303 = v14;
  v304 = MEMORY[0x1E697F568];
  v207 = v13;
  v180 = v12;
  v179 = swift_getWitnessTable();
  v293 = v12;
  *&v294 = v179;
  v167 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v15 = sub_1E68B1E40();
  v172 = v15;
  v301 = v14;
  v302 = MEMORY[0x1E697E040];
  v171 = swift_getWitnessTable();
  v293 = v15;
  *&v294 = v171;
  swift_getOpaqueTypeMetadata2();
  v173 = sub_1E68B2220();
  v175 = sub_1E68B2B90();
  v174 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v178 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v181 = sub_1E68B2220();
  v162 = sub_1E68B2220();
  v210 = v7[10];
  v194 = v7[16];
  v195 = v7[28];
  v16 = v211;
  v293 = v211;
  *&v294 = v5;
  *(&v294 + 1) = v5;
  v295 = v210;
  v17 = v212;
  *&v296 = v194;
  *(&v296 + 1) = v212;
  v297 = v6;
  v298 = v6;
  OpaqueTypeMetadata2 = v7[24];
  v299 = OpaqueTypeMetadata2;
  v300 = v195;
  v18 = type metadata accessor for FullWidthStageView(255, &v293);
  v177 = v18;
  v176 = swift_getWitnessTable();
  v293 = v18;
  *&v294 = v176;
  swift_getOpaqueTypeMetadata2();
  v187 = v5;
  v188 = v6;
  v20 = type metadata accessor for InfoActionCardView(255, v5, v6, v19);
  v170 = v20;
  v169 = swift_getWitnessTable();
  v293 = v20;
  *&v294 = v169;
  swift_getOpaqueTypeMetadata2();
  v168 = sub_1E68B2220();
  v139 = sub_1E68B2220();
  v208 = v7;
  v193 = *(v7 + 21);
  v293 = v16;
  v295 = v17;
  v296 = v193;
  v192 = *(v7 + 3);
  v294 = v192;
  v21 = type metadata accessor for LargeBrickView(255, &v293);
  v166 = v21;
  v165 = swift_getWitnessTable();
  v293 = v21;
  *&v294 = v165;
  swift_getOpaqueTypeMetadata2();
  v22 = v16;
  v24 = type metadata accessor for DynamicBrickView(255, v16, v17, v23);
  v164 = v24;
  v163 = swift_getWitnessTable();
  v293 = v24;
  *&v294 = v163;
  swift_getOpaqueTypeMetadata2();
  v155 = sub_1E68B2220();
  v26 = type metadata accessor for MonogramVerticalStackView(255, v16, v17, v25);
  v160 = v26;
  v159 = swift_getWitnessTable();
  v293 = v26;
  *&v294 = v159;
  swift_getOpaqueTypeMetadata2();
  v156 = sub_1E68B2220();
  v161 = sub_1E68B2220();
  v132[1] = sub_1E68B2220();
  v28 = type metadata accessor for StandardCardView(255, v22, v17, v27);
  v158 = v28;
  v157 = swift_getWitnessTable();
  v293 = v28;
  *&v294 = v157;
  swift_getOpaqueTypeMetadata2();
  v293 = v22;
  *&v294 = v5;
  *(&v294 + 1) = v17;
  v295 = v6;
  v29 = type metadata accessor for StandardHorizontalStackView(255, &v293);
  v154 = v29;
  v153 = swift_getWitnessTable();
  v293 = v29;
  *&v294 = v153;
  swift_getOpaqueTypeMetadata2();
  v135 = sub_1E68B2220();
  v31 = type metadata accessor for StandardVerticalStackView(255, v22, v17, v30);
  v152 = v31;
  v151 = swift_getWitnessTable();
  v293 = v31;
  *&v294 = v151;
  swift_getOpaqueTypeMetadata2();
  v32 = v22;
  v146 = type metadata accessor for SummaryCardView(255, v22, v17, v33);
  v150 = sub_1E68B2220();
  v132[2] = sub_1E68B2220();
  v35 = type metadata accessor for TallCardView(255, v22, v17, v34);
  v148 = v35;
  v147 = swift_getWitnessTable();
  v293 = v35;
  *&v294 = v147;
  swift_getOpaqueTypeMetadata2();
  v37 = type metadata accessor for VerticalStackCardView(255, v22, v17, v36);
  v140 = swift_getWitnessTable();
  v293 = v37;
  *&v294 = v140;
  swift_getOpaqueTypeMetadata2();
  v132[3] = sub_1E68B2220();
  v39 = type metadata accessor for WideBrickView(255, v32, v17, v38);
  v133 = swift_getWitnessTable();
  v293 = v39;
  *&v294 = v133;
  swift_getOpaqueTypeMetadata2();
  v132[4] = sub_1E68B2220();
  v134 = sub_1E68B2220();
  v136 = sub_1E68B2220();
  v137 = sub_1E68B2220();
  v141 = sub_1E68B2B90();
  v143 = sub_1E68B1E40();
  v144 = sub_1E68B2220();
  v149 = sub_1E68B1E40();
  v138 = sub_1E68B1E40();
  v40 = v208;
  v209 = *(v208 + 4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v185 = v40[23];
  v42 = v185;
  v293 = v209;
  *v184 = *(&v209 + 1);
  *(&v294 + 1) = AssociatedConformanceWitness;
  v295 = v42;
  v142 = type metadata accessor for CanvasContextMenu(255, &v293);
  v145 = sub_1E68B1E40();
  v293 = v183;
  *&v294 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v293 = v180;
  *&v294 = v179;
  v44 = swift_getOpaqueTypeConformance2();
  v293 = v172;
  *&v294 = v171;
  v45 = swift_getOpaqueTypeConformance2();
  v291 = v44;
  v292 = v45;
  v290 = swift_getWitnessTable();
  v288 = swift_getWitnessTable();
  v289 = MEMORY[0x1E697E5D8];
  v46 = swift_getWitnessTable();
  v47 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v286 = v46;
  v287 = v47;
  v48 = swift_getWitnessTable();
  v184 = MEMORY[0x1E6981870];
  v49 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v284 = v48;
  v285 = v49;
  v50 = swift_getWitnessTable();
  v282 = OpaqueTypeConformance2;
  v283 = v50;
  v51 = swift_getWitnessTable();
  v293 = v177;
  *&v294 = v176;
  v52 = swift_getOpaqueTypeConformance2();
  v293 = v170;
  *&v294 = v169;
  v53 = swift_getOpaqueTypeConformance2();
  v280 = v52;
  v281 = v53;
  v54 = swift_getWitnessTable();
  v278 = v51;
  v279 = v54;
  v55 = swift_getWitnessTable();
  v293 = v166;
  *&v294 = v165;
  v56 = swift_getOpaqueTypeConformance2();
  v293 = v164;
  *&v294 = v163;
  v57 = swift_getOpaqueTypeConformance2();
  v276 = v56;
  v277 = v57;
  v58 = swift_getWitnessTable();
  v293 = v160;
  *&v294 = v159;
  v274 = swift_getOpaqueTypeConformance2();
  v275 = v57;
  v59 = swift_getWitnessTable();
  v272 = v58;
  v273 = v59;
  v60 = swift_getWitnessTable();
  v270 = v55;
  v271 = v60;
  v61 = swift_getWitnessTable();
  v293 = v158;
  *&v294 = v157;
  v62 = swift_getOpaqueTypeConformance2();
  v293 = v154;
  *&v294 = v153;
  v63 = swift_getOpaqueTypeConformance2();
  v268 = v62;
  v269 = v63;
  v64 = swift_getWitnessTable();
  v293 = v152;
  *&v294 = v151;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = swift_getWitnessTable();
  v266 = v65;
  v267 = v66;
  v67 = swift_getWitnessTable();
  v264 = v64;
  v265 = v67;
  v68 = swift_getWitnessTable();
  v293 = v148;
  *&v294 = v147;
  v69 = swift_getOpaqueTypeConformance2();
  v293 = v37;
  *&v294 = v140;
  v70 = swift_getOpaqueTypeConformance2();
  v262 = v69;
  v263 = v70;
  v71 = swift_getWitnessTable();
  v293 = v39;
  *&v294 = v133;
  v72 = swift_getOpaqueTypeConformance2();
  v260 = OpaqueTypeMetadata2;
  v261 = v72;
  v73 = swift_getWitnessTable();
  v258 = v71;
  v259 = v73;
  v74 = swift_getWitnessTable();
  v256 = v68;
  v257 = v74;
  v75 = swift_getWitnessTable();
  v254 = v61;
  v255 = v75;
  v253 = swift_getWitnessTable();
  v251 = swift_getWitnessTable();
  v252 = v186;
  v76 = swift_getWitnessTable();
  v249 = MEMORY[0x1E6981E60];
  v250 = v76;
  v77 = swift_getWitnessTable();
  v78 = MEMORY[0x1E69805D0];
  v247 = v77;
  v248 = MEMORY[0x1E69805D0];
  v245 = swift_getWitnessTable();
  v246 = v78;
  v79 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v243 = v79;
  v244 = v80;
  v81 = v145;
  v82 = swift_getWitnessTable();
  v293 = v81;
  *&v294 = v82;
  v83 = v81;
  v84 = swift_getOpaqueTypeMetadata2();
  v293 = v83;
  *&v294 = v82;
  v85 = swift_getOpaqueTypeConformance2();
  v293 = v84;
  *&v294 = v85;
  swift_getOpaqueTypeMetadata2();
  v86 = sub_1E68B2220();
  v87 = v191;
  v88 = swift_getWitnessTable();
  v89 = AssociatedTypeWitness;
  v90 = swift_getAssociatedConformanceWitness();
  v293 = v87;
  *&v294 = v89;
  *(&v294 + 1) = v86;
  v295 = v88;
  *&v296 = v90;
  sub_1E68B2D40();
  v293 = v84;
  *&v294 = v85;
  v241 = swift_getOpaqueTypeConformance2();
  v242 = v85;
  v240 = swift_getWitnessTable();
  swift_getWitnessTable();
  v91 = sub_1E68B2ED0();
  v92 = swift_getWitnessTable();
  v293 = v91;
  *&v294 = v92;
  swift_getOpaqueTypeMetadata2();
  v293 = v91;
  *&v294 = v92;
  swift_getOpaqueTypeConformance2();
  v93 = sub_1E68B1B80();
  v94 = sub_1E68B2480();
  v95 = swift_getWitnessTable();
  v293 = v93;
  *&v294 = v94;
  *(&v294 + 1) = v95;
  v295 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200, &qword_1E68BB7D8);
  v96 = sub_1E68B2D80();
  v97 = sub_1E673F2EC();
  v98 = swift_getWitnessTable();
  v99 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  v238 = v98;
  v239 = v99;
  v100 = swift_getWitnessTable();
  v236 = v97;
  v237 = v100;
  v235 = swift_getWitnessTable();
  v101 = swift_getWitnessTable();
  v293 = v93;
  *&v294 = v94;
  *(&v294 + 1) = v95;
  v295 = MEMORY[0x1E697CC08];
  v102 = swift_getOpaqueTypeConformance2();
  v103 = sub_1E67D2CA8();
  v232 = v101;
  v233 = v102;
  v234 = v103;
  v191 = v96;
  swift_getWitnessTable();
  v104 = sub_1E68B2CC0();
  v207 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v105);
  v107 = v132 - v106;
  v198 = swift_getWitnessTable();
  v293 = v104;
  *&v294 = v198;
  v199 = MEMORY[0x1E697CF18];
  v108 = swift_getOpaqueTypeMetadata2();
  v109 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v110);
  v112 = v132 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v113, v114);
  v116 = v132 - v115;
  sub_1E68B21D0();
  v117 = v208;
  *&v118 = v208[2];
  *(&v118 + 1) = v187;
  *&v119 = v208[4];
  *(&v119 + 1) = v211;
  v216 = v118;
  v217 = v119;
  v218 = v192;
  v219 = v209;
  v220 = v210;
  v221 = *(v208 + 11);
  *&v118 = v208[13];
  *(&v118 + 1) = v200;
  *&v119 = v208[15];
  *(&v119 + 1) = v194;
  v223 = v119;
  *&v119 = v208[17];
  *(&v119 + 1) = v215;
  *&v120 = v188;
  *(&v120 + 1) = v212;
  v222 = v118;
  v225 = v120;
  v224 = v119;
  *&v118 = v185;
  *(&v118 + 1) = OpaqueTypeMetadata2;
  v227 = v118;
  v226 = v193;
  *&v118 = v208[25];
  *(&v118 + 1) = v201;
  *&v119 = v208[27];
  *(&v119 + 1) = v195;
  v229 = v119;
  v228 = v118;
  v230 = v214;
  v121 = v202;
  v231 = v202;
  sub_1E68B2CB0();
  v122 = sub_1E68B24F0();
  v123 = (v121 + *(v117 + 65));
  v124 = *v123;
  v125 = v123[1];
  v126 = v123[2];
  v127 = v123[3];
  v128 = v203;
  sub_1E68B22F0();
  v129 = v198;
  MEMORY[0x1E69510A0](v122, v128, v104, v198, v126, v125, v124, v127);
  (*(v204 + 8))(v128, v205);
  (*(v207 + 8))(v107, v104);
  v293 = v104;
  *&v294 = v129;
  swift_getOpaqueTypeConformance2();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v130 = *(v109 + 8);
  v130(v112, v108);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v130)(v116, v108);
}

uint64_t sub_1E6863E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v179 = a8;
  v183 = a7;
  v177 = a6;
  v161 = a4;
  v159 = a2;
  v163 = a1;
  v167 = a9;
  v160 = a13;
  v158 = a12;
  v176 = a23;
  v174 = a22;
  v162 = a28;
  v175 = a29;
  v173 = a24;
  v182 = a25;
  v156 = a16;
  v172 = a17;
  v171 = a10;
  v180 = a11;
  v170 = a30;
  v155 = a18;
  v157 = a26;
  v153 = a27;
  v154 = a14;
  v152 = a15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v203 = a3;
  v204 = a15;
  v205 = a20;
  v206 = a27;
  v164 = type metadata accessor for CanvasSectionHeaderView(255, &v203);
  sub_1E68B2390();
  v165 = sub_1E68B1E40();
  v166 = sub_1E68B2220();
  v178 = sub_1E68B3750();
  v181 = a19;
  swift_getTupleTypeMetadata2();
  v32 = sub_1E68B33B0();
  v150 = *(a30 + 32);
  v151 = v32;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v169 = a5;
  v203 = a5;
  v204 = a3;
  v205 = a3;
  v206 = a21;
  v207 = a20;
  v208 = a20;
  v144 = type metadata accessor for ActionCardView(255, &v203);
  WitnessTable = swift_getWitnessTable();
  v203 = v144;
  v204 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  v33 = sub_1E68B1E40();
  v148 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v217 = a21;
  v218 = v148;
  v34 = MEMORY[0x1E697E858];
  v35 = swift_getWitnessTable();
  v215 = v35;
  v216 = MEMORY[0x1E697F568];
  v168 = v34;
  v140 = swift_getWitnessTable();
  v203 = v33;
  v204 = v140;
  v127 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v132 = sub_1E68B1E40();
  v213 = v35;
  v214 = MEMORY[0x1E697E040];
  v130 = swift_getWitnessTable();
  v203 = v132;
  v204 = v130;
  swift_getOpaqueTypeMetadata2();
  v133 = sub_1E68B2220();
  v135 = sub_1E68B2B90();
  v134 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v137 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  sub_1E68B2220();
  v122 = sub_1E68B2220();
  v203 = a5;
  v204 = a3;
  v205 = a3;
  v206 = a11;
  v207 = a17;
  v208 = a21;
  v209 = a20;
  v210 = a20;
  v211 = a25;
  v212 = a29;
  v139 = type metadata accessor for FullWidthStageView(255, &v203);
  v138 = swift_getWitnessTable();
  v203 = v139;
  v204 = v138;
  swift_getOpaqueTypeMetadata2();
  v146 = a3;
  v147 = a20;
  v131 = type metadata accessor for InfoActionCardView(255, a3, a20, v36);
  v129 = swift_getWitnessTable();
  v203 = v131;
  v204 = v129;
  swift_getOpaqueTypeMetadata2();
  v128 = sub_1E68B2220();
  v100 = sub_1E68B2220();
  v203 = a5;
  v204 = v177;
  v205 = v183;
  v206 = a21;
  v207 = a22;
  v208 = a23;
  v126 = type metadata accessor for LargeBrickView(255, &v203);
  v125 = swift_getWitnessTable();
  v203 = v126;
  v204 = v125;
  swift_getOpaqueTypeMetadata2();
  v124 = type metadata accessor for DynamicBrickView(255, a5, a21, v37);
  v123 = swift_getWitnessTable();
  v203 = v124;
  v204 = v123;
  swift_getOpaqueTypeMetadata2();
  v115 = sub_1E68B2220();
  v120 = type metadata accessor for MonogramVerticalStackView(255, a5, a21, v38);
  v119 = swift_getWitnessTable();
  v203 = v120;
  v204 = v119;
  swift_getOpaqueTypeMetadata2();
  v116 = sub_1E68B2220();
  v121 = sub_1E68B2220();
  v94[1] = sub_1E68B2220();
  v118 = type metadata accessor for StandardCardView(255, a5, a21, v39);
  v117 = swift_getWitnessTable();
  v203 = v118;
  v204 = v117;
  swift_getOpaqueTypeMetadata2();
  v203 = a5;
  v204 = a3;
  v205 = a21;
  v206 = a20;
  v114 = type metadata accessor for StandardHorizontalStackView(255, &v203);
  v113 = swift_getWitnessTable();
  v203 = v114;
  v204 = v113;
  swift_getOpaqueTypeMetadata2();
  v97 = sub_1E68B2220();
  v112 = type metadata accessor for StandardVerticalStackView(255, a5, a21, v40);
  v111 = swift_getWitnessTable();
  v203 = v112;
  v204 = v111;
  swift_getOpaqueTypeMetadata2();
  v107 = type metadata accessor for SummaryCardView(255, a5, a21, v41);
  v110 = sub_1E68B2220();
  v94[2] = sub_1E68B2220();
  v145 = a21;
  v43 = type metadata accessor for TallCardView(255, a5, a21, v42);
  v108 = swift_getWitnessTable();
  v203 = v43;
  v204 = v108;
  swift_getOpaqueTypeMetadata2();
  v45 = type metadata accessor for VerticalStackCardView(255, a5, a21, v44);
  v101 = swift_getWitnessTable();
  v203 = v45;
  v204 = v101;
  swift_getOpaqueTypeMetadata2();
  v94[3] = sub_1E68B2220();
  v47 = type metadata accessor for WideBrickView(255, a5, a21, v46);
  v95 = swift_getWitnessTable();
  v203 = v47;
  v204 = v95;
  swift_getOpaqueTypeMetadata2();
  v94[4] = sub_1E68B2220();
  v96 = sub_1E68B2220();
  v98 = sub_1E68B2220();
  v99 = sub_1E68B2220();
  v103 = sub_1E68B2B90();
  v104 = sub_1E68B1E40();
  v106 = sub_1E68B2220();
  v136 = sub_1E68B1E40();
  v102 = sub_1E68B1E40();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v203 = v179;
  v204 = a10;
  v205 = AssociatedConformanceWitness;
  v206 = a24;
  v105 = type metadata accessor for CanvasContextMenu(255, &v203);
  v109 = sub_1E68B1E40();
  v203 = v144;
  v204 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v203 = v33;
  v204 = v140;
  v50 = swift_getOpaqueTypeConformance2();
  v203 = v132;
  v204 = v130;
  v201 = v50;
  v202 = swift_getOpaqueTypeConformance2();
  v51 = MEMORY[0x1E697F968];
  v200 = swift_getWitnessTable();
  v198 = swift_getWitnessTable();
  v199 = MEMORY[0x1E697E5D8];
  v196 = swift_getWitnessTable();
  v197 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v194 = swift_getWitnessTable();
  v195 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v192 = OpaqueTypeConformance2;
  v193 = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  v203 = v139;
  v204 = v138;
  v53 = swift_getOpaqueTypeConformance2();
  v203 = v131;
  v204 = v129;
  v190 = v53;
  v191 = swift_getOpaqueTypeConformance2();
  v188 = v52;
  v189 = swift_getWitnessTable();
  v54 = swift_getWitnessTable();
  v203 = v126;
  v204 = v125;
  v55 = swift_getOpaqueTypeConformance2();
  v203 = v124;
  v204 = v123;
  v186[76] = v55;
  v187 = swift_getOpaqueTypeConformance2();
  v56 = swift_getWitnessTable();
  v203 = v120;
  v204 = v119;
  v186[74] = swift_getOpaqueTypeConformance2();
  v186[75] = v187;
  v186[72] = v56;
  v186[73] = swift_getWitnessTable();
  v186[70] = v54;
  v186[71] = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v203 = v118;
  v204 = v117;
  v58 = swift_getOpaqueTypeConformance2();
  v203 = v114;
  v204 = v113;
  v186[68] = v58;
  v186[69] = swift_getOpaqueTypeConformance2();
  v59 = swift_getWitnessTable();
  v203 = v112;
  v204 = v111;
  v186[66] = swift_getOpaqueTypeConformance2();
  v186[67] = swift_getWitnessTable();
  v186[64] = v59;
  v186[65] = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  v203 = v43;
  v204 = v108;
  v61 = swift_getOpaqueTypeConformance2();
  v203 = v45;
  v204 = v101;
  v186[62] = v61;
  v186[63] = swift_getOpaqueTypeConformance2();
  v62 = swift_getWitnessTable();
  v203 = v47;
  v204 = v95;
  v186[60] = a25;
  v186[61] = swift_getOpaqueTypeConformance2();
  v186[58] = v62;
  v186[59] = swift_getWitnessTable();
  v186[56] = v60;
  v186[57] = swift_getWitnessTable();
  v186[54] = v57;
  v186[55] = swift_getWitnessTable();
  v186[53] = swift_getWitnessTable();
  v186[51] = swift_getWitnessTable();
  v186[52] = v148;
  v63 = swift_getWitnessTable();
  v186[49] = MEMORY[0x1E6981E60];
  v186[50] = v63;
  WitnessTable = v51;
  v64 = swift_getWitnessTable();
  v65 = MEMORY[0x1E69805D0];
  v186[47] = v64;
  v186[48] = MEMORY[0x1E69805D0];
  v186[45] = swift_getWitnessTable();
  v186[46] = v65;
  v186[43] = swift_getWitnessTable();
  v186[44] = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  v203 = v109;
  v204 = v66;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v203 = v109;
  v204 = v66;
  v68 = swift_getOpaqueTypeConformance2();
  v203 = OpaqueTypeMetadata2;
  v204 = v68;
  swift_getOpaqueTypeMetadata2();
  v69 = sub_1E68B2220();
  v70 = swift_getWitnessTable();
  v71 = swift_getAssociatedConformanceWitness();
  v203 = v151;
  v204 = AssociatedTypeWitness;
  v205 = v69;
  v206 = v70;
  v207 = v71;
  sub_1E68B2D40();
  v203 = OpaqueTypeMetadata2;
  v204 = v68;
  v186[41] = swift_getOpaqueTypeConformance2();
  v186[42] = v68;
  v186[40] = swift_getWitnessTable();
  swift_getWitnessTable();
  v72 = sub_1E68B2ED0();
  v73 = swift_getWitnessTable();
  v203 = v72;
  v204 = v73;
  swift_getOpaqueTypeMetadata2();
  v203 = v72;
  v204 = v73;
  swift_getOpaqueTypeConformance2();
  v144 = sub_1E68B1B80();
  v142 = sub_1E68B2480();
  v141 = swift_getWitnessTable();
  v203 = v144;
  v204 = v142;
  v205 = v141;
  v206 = MEMORY[0x1E697CC08];
  v140 = MEMORY[0x1E697D2A8];
  AssociatedTypeWitness = swift_getOpaqueTypeMetadata2();
  v138 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200, &qword_1E68BB7D8);
  v74 = sub_1E68B2D80();
  v75 = *(v74 - 8);
  v150 = v74;
  v151 = v75;
  MEMORY[0x1EEE9AC00](v74, v76);
  v139 = v94 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78, v79);
  v148 = v94 - v80;
  v186[2] = v159;
  v186[3] = v146;
  v186[4] = v161;
  v186[5] = v169;
  v186[6] = v177;
  v186[7] = v183;
  v186[8] = v179;
  v186[9] = v171;
  v186[10] = v180;
  v186[11] = v158;
  v186[12] = v160;
  v186[13] = v154;
  v186[14] = v152;
  v186[15] = v156;
  v186[16] = v172;
  v186[17] = v155;
  v186[18] = v181;
  v186[19] = v147;
  v186[20] = v145;
  v186[21] = v174;
  v186[22] = v176;
  v186[23] = v173;
  v186[24] = v182;
  v186[25] = v157;
  v186[26] = v153;
  v186[27] = v162;
  v186[28] = v175;
  v186[29] = v170;
  v186[30] = v163;
  v185[2] = v159;
  v185[3] = v146;
  v185[4] = v161;
  v185[5] = v169;
  v185[6] = v177;
  v185[7] = v183;
  v185[8] = v179;
  v185[9] = v171;
  v185[10] = v180;
  v185[11] = v158;
  v185[12] = v160;
  v185[13] = v154;
  v185[14] = v152;
  v185[15] = v156;
  v185[16] = v172;
  v185[17] = v155;
  v185[18] = v181;
  v185[19] = v147;
  v185[20] = v145;
  v185[21] = v174;
  v185[22] = v176;
  v185[23] = v173;
  v185[24] = v182;
  v185[25] = v157;
  v185[26] = v153;
  v185[27] = v162;
  v185[28] = v175;
  v185[29] = v170;
  v185[30] = v163;
  v184[2] = v159;
  v184[3] = v146;
  v184[4] = v161;
  v184[5] = v169;
  v184[6] = v177;
  v184[7] = v183;
  v184[8] = v179;
  v184[9] = v171;
  v184[10] = v180;
  v184[11] = v158;
  v184[12] = v160;
  v184[13] = v154;
  v184[14] = v152;
  v184[15] = v156;
  v184[16] = v172;
  v184[17] = v155;
  v184[18] = v181;
  v184[19] = v147;
  v184[20] = v145;
  v184[21] = v174;
  v184[22] = v176;
  v184[23] = v173;
  v184[24] = v182;
  v184[25] = v157;
  v184[26] = v153;
  v184[27] = v162;
  v184[28] = v175;
  v184[29] = v170;
  v184[30] = v163;
  v81 = sub_1E673F2EC();
  v82 = swift_getWitnessTable();
  v83 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  v186[38] = v82;
  v186[39] = v83;
  v84 = swift_getWitnessTable();
  v186[36] = v81;
  v186[37] = v84;
  v186[35] = swift_getWitnessTable();
  v85 = v178;
  v86 = swift_getWitnessTable();
  v203 = v144;
  v204 = v142;
  v205 = v141;
  v206 = MEMORY[0x1E697CC08];
  v87 = swift_getOpaqueTypeConformance2();
  v88 = sub_1E67D2CA8();
  v89 = v139;
  sub_1E68615E8(sub_1E686DE6C, v186, sub_1E686DE84, v185, sub_1E686DE9C, v184, v85, AssociatedTypeWitness, v138, v86, v87, v88);
  v186[32] = v86;
  v186[33] = v87;
  v186[34] = v88;
  v90 = v150;
  swift_getWitnessTable();
  v91 = v148;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v92 = *(v151 + 8);
  v92(v89, v90);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v92)(v91, v90);
}

uint64_t sub_1E6865454@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, char *a12, char *a13, char *a14, char *a15, char *a16, char *a17, char *a18, char *a19, uint64_t a20, char *a21, char *a22, char *a23, char *a24, char *a25, char *a26, char *a27, char *a28, char *a29, uint64_t a30)
{
  v244 = a8;
  v259 = a7;
  v266 = a6;
  v256 = a4;
  v254 = a2;
  v242 = a1;
  v179 = a9;
  v245 = a30;
  v246 = a29;
  v241 = a28;
  v240 = a27;
  v239 = a26;
  v260 = a25;
  v247 = a24;
  v267 = a23;
  v265 = a22;
  v263 = a19;
  v253 = a18;
  v262 = a17;
  v252 = a16;
  v251 = a15;
  v250 = a14;
  v249 = a13;
  v248 = a12;
  v268 = a11;
  v261 = a10;
  v32 = sub_1E68B2460();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v177[1] = v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1E68B2480();
  v178 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243, v35);
  v177[0] = v177 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v37 = sub_1E68B33B0();
  v237 = *(a30 + 32);
  v238 = v37;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v269 = a5;
  v264 = a3;
  v270 = a3;
  v271 = a3;
  v272 = a21;
  v273 = a20;
  v274 = a20;
  v38 = type metadata accessor for ActionCardView(255, &v269);
  v234 = v38;
  WitnessTable = swift_getWitnessTable();
  v269 = v38;
  v270 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v225 = sub_1E68B2440();
  sub_1E68B1E40();
  v39 = sub_1E68B1E40();
  v235 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v354 = a21;
  v355 = v235;
  v40 = MEMORY[0x1E697E858];
  v41 = swift_getWitnessTable();
  v352 = v41;
  v353 = MEMORY[0x1E697F568];
  v232 = v40;
  v230 = v39;
  v229 = swift_getWitnessTable();
  v269 = v39;
  v270 = v229;
  v216 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v42 = sub_1E68B1E40();
  v221 = v42;
  v350 = v41;
  v351 = MEMORY[0x1E697E040];
  v219 = swift_getWitnessTable();
  v269 = v42;
  v270 = v219;
  swift_getOpaqueTypeMetadata2();
  v222 = sub_1E68B2220();
  v224 = sub_1E68B2B90();
  v223 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v226 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v231 = sub_1E68B2220();
  v211 = sub_1E68B2220();
  v269 = a5;
  v43 = v264;
  v270 = v264;
  v271 = v264;
  v272 = v268;
  v273 = v262;
  v274 = a21;
  v275 = a20;
  v276 = a20;
  v277 = v260;
  v278 = v246;
  v44 = type metadata accessor for FullWidthStageView(255, &v269);
  OpaqueTypeMetadata2 = v44;
  v227 = swift_getWitnessTable();
  v269 = v44;
  v270 = v227;
  swift_getOpaqueTypeMetadata2();
  v255 = a20;
  v46 = type metadata accessor for InfoActionCardView(255, v43, a20, v45);
  v220 = v46;
  v218 = swift_getWitnessTable();
  v269 = v46;
  v270 = v218;
  swift_getOpaqueTypeMetadata2();
  v217 = sub_1E68B2220();
  v188 = sub_1E68B2220();
  v269 = a5;
  v270 = v266;
  v271 = v259;
  v272 = a21;
  v273 = v265;
  v274 = v267;
  v47 = type metadata accessor for LargeBrickView(255, &v269);
  v215 = v47;
  v214 = swift_getWitnessTable();
  v269 = v47;
  v270 = v214;
  swift_getOpaqueTypeMetadata2();
  v49 = type metadata accessor for DynamicBrickView(255, a5, a21, v48);
  v213 = v49;
  v212 = swift_getWitnessTable();
  v269 = v49;
  v270 = v212;
  swift_getOpaqueTypeMetadata2();
  v204 = sub_1E68B2220();
  v51 = type metadata accessor for MonogramVerticalStackView(255, a5, a21, v50);
  v209 = v51;
  v208 = swift_getWitnessTable();
  v269 = v51;
  v270 = v208;
  swift_getOpaqueTypeMetadata2();
  v205 = sub_1E68B2220();
  v210 = sub_1E68B2220();
  sub_1E68B2220();
  v53 = type metadata accessor for StandardCardView(255, a5, a21, v52);
  v207 = v53;
  v206 = swift_getWitnessTable();
  v269 = v53;
  v270 = v206;
  swift_getOpaqueTypeMetadata2();
  v269 = a5;
  v270 = v43;
  v271 = a21;
  v272 = a20;
  v54 = type metadata accessor for StandardHorizontalStackView(255, &v269);
  v203 = v54;
  v202 = swift_getWitnessTable();
  v269 = v54;
  v270 = v202;
  swift_getOpaqueTypeMetadata2();
  v185 = sub_1E68B2220();
  v56 = type metadata accessor for StandardVerticalStackView(255, a5, a21, v55);
  v201 = v56;
  v200 = swift_getWitnessTable();
  v269 = v56;
  v270 = v200;
  swift_getOpaqueTypeMetadata2();
  v258 = a5;
  v195 = type metadata accessor for SummaryCardView(255, a5, a21, v57);
  v199 = sub_1E68B2220();
  v180 = sub_1E68B2220();
  v59 = type metadata accessor for TallCardView(255, a5, a21, v58);
  v197 = v59;
  v196 = swift_getWitnessTable();
  v269 = v59;
  v270 = v196;
  swift_getOpaqueTypeMetadata2();
  v257 = a21;
  v61 = type metadata accessor for VerticalStackCardView(255, a5, a21, v60);
  v189 = swift_getWitnessTable();
  v269 = v61;
  v270 = v189;
  swift_getOpaqueTypeMetadata2();
  v181 = sub_1E68B2220();
  v63 = type metadata accessor for WideBrickView(255, a5, a21, v62);
  v183 = swift_getWitnessTable();
  v269 = v63;
  v270 = v183;
  swift_getOpaqueTypeMetadata2();
  v182 = sub_1E68B2220();
  v184 = sub_1E68B2220();
  v186 = sub_1E68B2220();
  v187 = sub_1E68B2220();
  v191 = sub_1E68B2B90();
  v192 = sub_1E68B1E40();
  v194 = sub_1E68B2220();
  v225 = sub_1E68B1E40();
  v190 = sub_1E68B1E40();
  v64 = v244;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v269 = v64;
  v270 = v261;
  v271 = AssociatedConformanceWitness;
  v272 = v247;
  v193 = type metadata accessor for CanvasContextMenu(255, &v269);
  v198 = sub_1E68B1E40();
  v269 = v234;
  v270 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v269 = v230;
  v270 = v229;
  v67 = swift_getOpaqueTypeConformance2();
  v269 = v221;
  v270 = v219;
  v68 = swift_getOpaqueTypeConformance2();
  v348 = v67;
  v349 = v68;
  v347 = swift_getWitnessTable();
  v234 = MEMORY[0x1E6981600];
  v345 = swift_getWitnessTable();
  v346 = MEMORY[0x1E697E5D8];
  v69 = swift_getWitnessTable();
  v70 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v343 = v69;
  v344 = v70;
  v71 = swift_getWitnessTable();
  v72 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v341 = v71;
  v342 = v72;
  v73 = swift_getWitnessTable();
  v339 = OpaqueTypeConformance2;
  v340 = v73;
  v74 = swift_getWitnessTable();
  v269 = OpaqueTypeMetadata2;
  v270 = v227;
  v75 = swift_getOpaqueTypeConformance2();
  v269 = v220;
  v270 = v218;
  v76 = swift_getOpaqueTypeConformance2();
  v337 = v75;
  v338 = v76;
  v77 = swift_getWitnessTable();
  v335 = v74;
  v336 = v77;
  v78 = swift_getWitnessTable();
  v269 = v215;
  v270 = v214;
  v79 = swift_getOpaqueTypeConformance2();
  v269 = v213;
  v270 = v212;
  v80 = swift_getOpaqueTypeConformance2();
  v333 = v79;
  v334 = v80;
  v81 = swift_getWitnessTable();
  v269 = v209;
  v270 = v208;
  v331 = swift_getOpaqueTypeConformance2();
  v332 = v80;
  v82 = swift_getWitnessTable();
  v329 = v81;
  v330 = v82;
  v83 = swift_getWitnessTable();
  v327 = v78;
  v328 = v83;
  v84 = swift_getWitnessTable();
  v269 = v207;
  v270 = v206;
  v85 = swift_getOpaqueTypeConformance2();
  v269 = v203;
  v270 = v202;
  v86 = swift_getOpaqueTypeConformance2();
  v325 = v85;
  v326 = v86;
  v87 = swift_getWitnessTable();
  v269 = v201;
  v270 = v200;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = swift_getWitnessTable();
  v323 = v88;
  v324 = v89;
  v90 = swift_getWitnessTable();
  v321 = v87;
  v322 = v90;
  v91 = swift_getWitnessTable();
  v269 = v197;
  v270 = v196;
  v92 = swift_getOpaqueTypeConformance2();
  v269 = v61;
  v270 = v189;
  v93 = swift_getOpaqueTypeConformance2();
  v319 = v92;
  v320 = v93;
  v94 = swift_getWitnessTable();
  v269 = v63;
  v270 = v183;
  v95 = swift_getOpaqueTypeConformance2();
  v317 = v260;
  v318 = v95;
  v96 = swift_getWitnessTable();
  v315 = v94;
  v316 = v96;
  v97 = swift_getWitnessTable();
  v313 = v91;
  v314 = v97;
  v98 = swift_getWitnessTable();
  v311 = v84;
  v312 = v98;
  v310 = swift_getWitnessTable();
  v308 = swift_getWitnessTable();
  v309 = v235;
  v99 = swift_getWitnessTable();
  v306 = MEMORY[0x1E6981E60];
  v307 = v99;
  v100 = swift_getWitnessTable();
  v101 = MEMORY[0x1E69805D0];
  v304 = v100;
  v305 = MEMORY[0x1E69805D0];
  v302 = swift_getWitnessTable();
  v303 = v101;
  v102 = swift_getWitnessTable();
  v103 = swift_getWitnessTable();
  v300 = v102;
  v301 = v103;
  v104 = v198;
  v105 = swift_getWitnessTable();
  v269 = v104;
  v106 = v104;
  v270 = v105;
  v107 = swift_getOpaqueTypeMetadata2();
  v269 = v106;
  v270 = v105;
  v108 = swift_getOpaqueTypeConformance2();
  v269 = v107;
  v270 = v108;
  swift_getOpaqueTypeMetadata2();
  v109 = sub_1E68B2220();
  v110 = v238;
  v111 = swift_getWitnessTable();
  v112 = AssociatedTypeWitness;
  v113 = v263;
  v114 = swift_getAssociatedConformanceWitness();
  v269 = v110;
  v270 = v112;
  v271 = v109;
  v272 = v111;
  v273 = v114;
  sub_1E68B2D40();
  v269 = v107;
  v270 = v108;
  v298 = swift_getOpaqueTypeConformance2();
  v299 = v108;
  v297 = swift_getWitnessTable();
  swift_getWitnessTable();
  v115 = sub_1E68B2ED0();
  v116 = swift_getWitnessTable();
  v269 = v115;
  v270 = v116;
  v117 = swift_getOpaqueTypeMetadata2();
  v269 = v115;
  v270 = v116;
  v118 = swift_getOpaqueTypeConformance2();
  WitnessTable = v117;
  v230 = v118;
  v119 = sub_1E68B1B80();
  AssociatedTypeWitness = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v120);
  v234 = v177 - v121;
  v122 = swift_getWitnessTable();
  v238 = v119;
  v269 = v119;
  v270 = v243;
  v232 = v122;
  v271 = v122;
  v272 = MEMORY[0x1E697CC08];
  v237 = swift_getOpaqueTypeMetadata2();
  v235 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237, v123);
  v229 = v177 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v125, v126);
  v231 = v177 - v127;
  v269 = v254;
  v270 = v264;
  v271 = v256;
  v272 = v258;
  v273 = v266;
  v128 = v259;
  v274 = v259;
  v129 = v244;
  v275 = v244;
  v276 = v261;
  v277 = v268;
  v278 = v248;
  v279 = v249;
  v280 = v250;
  v281 = v251;
  v282 = v252;
  v283 = v262;
  v284 = v253;
  v285 = v113;
  v286 = v255;
  v287 = v257;
  v288 = v265;
  v289 = v267;
  v130 = v247;
  v290 = v247;
  v131 = v260;
  v291 = v260;
  v132 = v239;
  v292 = v239;
  v133 = v240;
  v293 = v240;
  v134 = v241;
  v294 = v241;
  v135 = v246;
  v295 = v246;
  v136 = v245;
  v296 = v245;
  result = type metadata accessor for HorizontalGridView(0, &v269);
  if ((*&v242[*(result + 256)] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OpaqueTypeMetadata2 = v177;
    MEMORY[0x1EEE9AC00](result, v138);
    v139 = v264;
    v177[-30] = v254;
    v177[-29] = v139;
    v140 = v258;
    v177[-28] = v256;
    v177[-27] = v140;
    v177[-26] = v266;
    v177[-25] = v128;
    v141 = v261;
    v177[-24] = v129;
    v177[-23] = v141;
    v142 = v248;
    v177[-22] = v268;
    v177[-21] = v142;
    v143 = v250;
    v177[-20] = v249;
    v177[-19] = v143;
    v144 = v252;
    v177[-18] = v251;
    v177[-17] = v144;
    v145 = v253;
    v177[-16] = v262;
    v177[-15] = v145;
    v146 = v255;
    v177[-14] = v263;
    v177[-13] = v146;
    v147 = v265;
    v177[-12] = v257;
    v177[-11] = v147;
    v177[-10] = v267;
    v177[-9] = v130;
    v177[-8] = v131;
    v177[-7] = v132;
    v177[-6] = v133;
    v177[-5] = v134;
    v148 = v134;
    v149 = v135;
    v177[-4] = v135;
    v177[-3] = v136;
    v150 = v136;
    v177[-2] = v151;
    v153 = sub_1E67900C8(sub_1E686E040, &v177[-32], 0, v152);
    v154 = sub_1E68B24B0();
    OpaqueTypeMetadata2 = v177;
    MEMORY[0x1EEE9AC00](v154, v155);
    v156 = v264;
    v177[-30] = v254;
    v177[-29] = v156;
    v157 = v258;
    v177[-28] = v256;
    v177[-27] = v157;
    v158 = v259;
    v177[-26] = v266;
    v177[-25] = v158;
    v159 = v261;
    v177[-24] = v129;
    v177[-23] = v159;
    v160 = v248;
    v177[-22] = v268;
    v177[-21] = v160;
    v161 = v250;
    v177[-20] = v249;
    v177[-19] = v161;
    v162 = v252;
    v177[-18] = v251;
    v177[-17] = v162;
    v163 = v253;
    v177[-16] = v262;
    v177[-15] = v163;
    v164 = v255;
    v177[-14] = v263;
    v177[-13] = v164;
    v165 = v265;
    v177[-12] = v257;
    v177[-11] = v165;
    v177[-10] = v267;
    v177[-9] = v130;
    v177[-8] = v131;
    v177[-7] = v132;
    v177[-6] = v133;
    v177[-5] = v148;
    v177[-4] = v149;
    v177[-3] = v150;
    v166 = v242;
    v177[-2] = v153;
    v177[-1] = v166;
    v167 = v234;
    sub_1E68B1B90();

    sub_1E68B2450();
    v168 = v177[0];
    sub_1E68B2470();
    v169 = v229;
    v170 = v238;
    v171 = v243;
    v172 = v232;
    v173 = MEMORY[0x1E697CC08];
    sub_1E68B2940();
    (*(v178 + 8))(v168, v171);
    (*(AssociatedTypeWitness + 8))(v167, v170);
    v269 = v170;
    v270 = v171;
    v271 = v172;
    v272 = v173;
    swift_getOpaqueTypeConformance2();
    v174 = v231;
    v175 = v237;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v176 = *(v235 + 8);
    v176(v169, v175);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    return (v176)(v174, v175);
  }

  return result;
}

uint64_t sub_1E6866BB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  v42 = a1;
  v43 = a8;
  v41 = a18;
  v40 = a17;
  v39 = a16;
  v38 = a15;
  v37 = a14;
  v36 = a13;
  v35 = a12;
  v34 = a11;
  v33 = a10;
  v32 = a9;
  v26 = sub_1E68B2DA0();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = (&v32 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v29 = xmmword_1E68BB7B0;
  (*(v30 + 104))(v29, *MEMORY[0x1E697D748]);
  v44[0] = a2;
  v44[1] = a3;
  v44[2] = a4;
  v44[3] = a5;
  v44[4] = a6;
  v44[5] = a7;
  v45 = v32;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  v49 = v36;
  v50 = v37;
  v51 = v38;
  v52 = v39;
  v53 = v40;
  v54 = v41;
  v55 = a19;
  v56 = a20;
  type metadata accessor for HorizontalGridView(0, v44);
  sub_1E68B2E30();
  return sub_1E68B2DC0();
}

uint64_t sub_1E6866E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v212 = a8;
  v211 = a7;
  v199 = a5;
  v216 = a3;
  v205 = a2;
  v218 = a1;
  v206 = a9;
  v204 = a29;
  v203 = a28;
  v200 = a17;
  v198 = a16;
  v217 = a15;
  v215 = a14;
  v227 = a11;
  v219 = a10;
  v210 = a25;
  v221 = a24;
  v201 = a27;
  v229 = a26;
  v214 = a19;
  v222 = a18;
  v213 = a13;
  v228 = a12;
  v226 = a23;
  v223 = a30;
  v225 = a31;
  v224 = a20;
  v33 = sub_1E68B22C0();
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v202 = v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v36 = sub_1E68B33B0();
  v196 = *(a31 + 32);
  v197 = v36;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v259 = a6;
  v220 = a4;
  v260 = a4;
  v261 = a4;
  v262 = a22;
  v263 = a21;
  v264 = a21;
  v37 = type metadata accessor for ActionCardView(255, &v259);
  v193 = v37;
  WitnessTable = swift_getWitnessTable();
  v259 = v37;
  v260 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v184 = sub_1E68B2440();
  sub_1E68B1E40();
  v38 = sub_1E68B1E40();
  v194 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v344 = a22;
  v345 = v194;
  v39 = MEMORY[0x1E697E858];
  v40 = swift_getWitnessTable();
  v342 = v40;
  v343 = MEMORY[0x1E697F568];
  v191 = v39;
  v189 = v38;
  v188 = swift_getWitnessTable();
  v259 = v38;
  v260 = v188;
  v175 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v41 = sub_1E68B1E40();
  v180 = v41;
  v340 = v40;
  v341 = MEMORY[0x1E697E040];
  v178 = swift_getWitnessTable();
  v259 = v41;
  v260 = v178;
  swift_getOpaqueTypeMetadata2();
  v181 = sub_1E68B2220();
  v183 = sub_1E68B2B90();
  v182 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v185 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v190 = sub_1E68B2220();
  v170 = sub_1E68B2220();
  v259 = a6;
  v42 = v220;
  v260 = v220;
  v261 = v220;
  v262 = v228;
  v263 = v222;
  v264 = a22;
  v265 = a21;
  v266 = a21;
  v267 = v229;
  v268 = v223;
  v43 = type metadata accessor for FullWidthStageView(255, &v259);
  OpaqueTypeMetadata2 = v43;
  v186 = swift_getWitnessTable();
  v259 = v43;
  v260 = v186;
  swift_getOpaqueTypeMetadata2();
  v44 = v42;
  v209 = a21;
  v46 = type metadata accessor for InfoActionCardView(255, v42, a21, v45);
  v179 = v46;
  v177 = swift_getWitnessTable();
  v259 = v46;
  v260 = v177;
  swift_getOpaqueTypeMetadata2();
  v176 = sub_1E68B2220();
  v148 = sub_1E68B2220();
  v259 = a6;
  v260 = v211;
  v261 = v212;
  v262 = a22;
  v263 = v226;
  v264 = v221;
  v47 = type metadata accessor for LargeBrickView(255, &v259);
  v174 = v47;
  v173 = swift_getWitnessTable();
  v259 = v47;
  v260 = v173;
  swift_getOpaqueTypeMetadata2();
  v49 = type metadata accessor for DynamicBrickView(255, a6, a22, v48);
  v172 = v49;
  v171 = swift_getWitnessTable();
  v259 = v49;
  v260 = v171;
  swift_getOpaqueTypeMetadata2();
  v163 = sub_1E68B2220();
  v51 = type metadata accessor for MonogramVerticalStackView(255, a6, a22, v50);
  v168 = v51;
  v167 = swift_getWitnessTable();
  v259 = v51;
  v260 = v167;
  swift_getOpaqueTypeMetadata2();
  v164 = sub_1E68B2220();
  v169 = sub_1E68B2220();
  v142[1] = sub_1E68B2220();
  v53 = type metadata accessor for StandardCardView(255, a6, a22, v52);
  v166 = v53;
  v165 = swift_getWitnessTable();
  v259 = v53;
  v260 = v165;
  swift_getOpaqueTypeMetadata2();
  v259 = a6;
  v260 = v44;
  v261 = a22;
  v262 = a21;
  v54 = type metadata accessor for StandardHorizontalStackView(255, &v259);
  v162 = v54;
  v161 = swift_getWitnessTable();
  v259 = v54;
  v260 = v161;
  swift_getOpaqueTypeMetadata2();
  v145 = sub_1E68B2220();
  v56 = type metadata accessor for StandardVerticalStackView(255, a6, a22, v55);
  v160 = v56;
  v159 = swift_getWitnessTable();
  v259 = v56;
  v260 = v159;
  swift_getOpaqueTypeMetadata2();
  v155 = type metadata accessor for SummaryCardView(255, a6, a22, v57);
  v158 = sub_1E68B2220();
  v142[2] = sub_1E68B2220();
  v59 = type metadata accessor for TallCardView(255, a6, a22, v58);
  v156 = swift_getWitnessTable();
  v259 = v59;
  v260 = v156;
  swift_getOpaqueTypeMetadata2();
  v207 = a6;
  v208 = a22;
  v61 = type metadata accessor for VerticalStackCardView(255, a6, a22, v60);
  v149 = swift_getWitnessTable();
  v259 = v61;
  v260 = v149;
  swift_getOpaqueTypeMetadata2();
  v142[3] = sub_1E68B2220();
  v63 = type metadata accessor for WideBrickView(255, a6, a22, v62);
  v143 = swift_getWitnessTable();
  v259 = v63;
  v260 = v143;
  swift_getOpaqueTypeMetadata2();
  v142[4] = sub_1E68B2220();
  v144 = sub_1E68B2220();
  v146 = sub_1E68B2220();
  v147 = sub_1E68B2220();
  v151 = sub_1E68B2B90();
  v152 = sub_1E68B1E40();
  v154 = sub_1E68B2220();
  v184 = sub_1E68B1E40();
  v150 = sub_1E68B1E40();
  v64 = v219;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v259 = v64;
  v260 = v227;
  v261 = AssociatedConformanceWitness;
  v262 = v210;
  v153 = type metadata accessor for CanvasContextMenu(255, &v259);
  v157 = sub_1E68B1E40();
  v259 = v193;
  v260 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v259 = v189;
  v260 = v188;
  v67 = swift_getOpaqueTypeConformance2();
  v259 = v180;
  v260 = v178;
  v68 = swift_getOpaqueTypeConformance2();
  v338 = v67;
  v339 = v68;
  v337 = swift_getWitnessTable();
  v193 = MEMORY[0x1E6981600];
  v335 = swift_getWitnessTable();
  v336 = MEMORY[0x1E697E5D8];
  v69 = swift_getWitnessTable();
  v70 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v333 = v69;
  v334 = v70;
  v71 = swift_getWitnessTable();
  v72 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v331 = v71;
  v332 = v72;
  v73 = swift_getWitnessTable();
  v329 = OpaqueTypeConformance2;
  v330 = v73;
  v74 = swift_getWitnessTable();
  v259 = OpaqueTypeMetadata2;
  v260 = v186;
  v75 = swift_getOpaqueTypeConformance2();
  v259 = v179;
  v260 = v177;
  v76 = swift_getOpaqueTypeConformance2();
  v327 = v75;
  v328 = v76;
  v77 = swift_getWitnessTable();
  v325 = v74;
  v326 = v77;
  v78 = swift_getWitnessTable();
  v259 = v174;
  v260 = v173;
  v79 = swift_getOpaqueTypeConformance2();
  v259 = v172;
  v260 = v171;
  v80 = swift_getOpaqueTypeConformance2();
  v323 = v79;
  v324 = v80;
  v81 = swift_getWitnessTable();
  v259 = v168;
  v260 = v167;
  v321 = swift_getOpaqueTypeConformance2();
  v322 = v80;
  v82 = swift_getWitnessTable();
  v319 = v81;
  v320 = v82;
  v83 = swift_getWitnessTable();
  v317 = v78;
  v318 = v83;
  v84 = swift_getWitnessTable();
  v259 = v166;
  v260 = v165;
  v85 = swift_getOpaqueTypeConformance2();
  v259 = v162;
  v260 = v161;
  v86 = swift_getOpaqueTypeConformance2();
  v315 = v85;
  v316 = v86;
  v87 = swift_getWitnessTable();
  v259 = v160;
  v260 = v159;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = swift_getWitnessTable();
  v313 = v88;
  v314 = v89;
  v90 = swift_getWitnessTable();
  v311 = v87;
  v312 = v90;
  v91 = swift_getWitnessTable();
  v259 = v59;
  v260 = v156;
  v92 = swift_getOpaqueTypeConformance2();
  v259 = v61;
  v260 = v149;
  v93 = swift_getOpaqueTypeConformance2();
  v309 = v92;
  v310 = v93;
  v94 = swift_getWitnessTable();
  v259 = v63;
  v260 = v143;
  v95 = swift_getOpaqueTypeConformance2();
  v307 = v229;
  v308 = v95;
  v96 = swift_getWitnessTable();
  v305 = v94;
  v306 = v96;
  v97 = swift_getWitnessTable();
  v303 = v91;
  v304 = v97;
  v98 = swift_getWitnessTable();
  v301 = v84;
  v302 = v98;
  v300 = swift_getWitnessTable();
  v298 = swift_getWitnessTable();
  v299 = v194;
  v99 = swift_getWitnessTable();
  v296 = MEMORY[0x1E6981E60];
  v297 = v99;
  v100 = swift_getWitnessTable();
  v101 = MEMORY[0x1E69805D0];
  v294 = v100;
  v295 = MEMORY[0x1E69805D0];
  v292 = swift_getWitnessTable();
  v293 = v101;
  v102 = swift_getWitnessTable();
  v103 = swift_getWitnessTable();
  v290 = v102;
  v291 = v103;
  v104 = v157;
  v105 = swift_getWitnessTable();
  v259 = v104;
  v260 = v105;
  v106 = swift_getOpaqueTypeMetadata2();
  v259 = v104;
  v260 = v105;
  v107 = swift_getOpaqueTypeConformance2();
  v259 = v106;
  v260 = v107;
  swift_getOpaqueTypeMetadata2();
  v108 = sub_1E68B2220();
  v109 = v197;
  v110 = swift_getWitnessTable();
  v111 = AssociatedTypeWitness;
  v112 = v224;
  v113 = swift_getAssociatedConformanceWitness();
  v259 = v109;
  v260 = v111;
  v261 = v108;
  v262 = v110;
  v263 = v113;
  v191 = sub_1E68B2D40();
  v259 = v106;
  v260 = v107;
  v288 = swift_getOpaqueTypeConformance2();
  v289 = v107;
  v287 = swift_getWitnessTable();
  v189 = swift_getWitnessTable();
  v114 = sub_1E68B2ED0();
  v193 = v114;
  v197 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v115);
  v190 = v142 - v116;
  WitnessTable = swift_getWitnessTable();
  v259 = v114;
  v260 = WitnessTable;
  v194 = MEMORY[0x1E697D1A0];
  v117 = swift_getOpaqueTypeMetadata2();
  v118 = *(v117 - 8);
  AssociatedTypeWitness = v117;
  v196 = v118;
  MEMORY[0x1EEE9AC00](v117, v119);
  OpaqueTypeMetadata2 = v142 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v121, v122);
  v188 = v142 - v123;

  v186 = sub_1E68B2120();
  v259 = v216;
  v260 = v220;
  v124 = v198;
  v125 = v199;
  v261 = v199;
  v262 = v207;
  v126 = v211;
  v263 = v211;
  v127 = v212;
  v264 = v212;
  v265 = v219;
  v266 = v227;
  v267 = v228;
  v268 = v213;
  v269 = v215;
  v270 = v217;
  v271 = v198;
  v129 = v200;
  v128 = v201;
  v272 = v200;
  v273 = v222;
  v274 = v214;
  v275 = v112;
  v276 = v209;
  v277 = v208;
  v278 = v226;
  v279 = v221;
  v130 = v210;
  v280 = v210;
  v281 = v229;
  v282 = v201;
  v131 = v203;
  v283 = v203;
  v132 = v204;
  v284 = v204;
  v285 = v223;
  v286 = v225;
  v133 = type metadata accessor for HorizontalGridView(0, &v259);
  v185 = *(v205 + *(v133 + 264) + 8);
  v230 = v216;
  v231 = v220;
  v232 = v125;
  v233 = v207;
  v234 = v126;
  v235 = v127;
  v236 = v219;
  v237 = v227;
  v238 = v228;
  v239 = v213;
  v240 = v215;
  v241 = v217;
  v242 = v124;
  v243 = v129;
  v244 = v222;
  v245 = v214;
  v246 = v224;
  v247 = v209;
  v248 = v208;
  v249 = v226;
  v250 = v221;
  v251 = v130;
  v252 = v229;
  v253 = v128;
  v254 = v131;
  v255 = v132;
  v256 = v223;
  v257 = v225;
  v258 = v205;
  sub_1E67D1D10();
  v134 = v190;
  sub_1E68B2EC0();
  v135 = OpaqueTypeMetadata2;
  v137 = WitnessTable;
  v136 = v193;
  sub_1E68B28F0();
  (*(v197 + 8))(v134, v136);
  v259 = v136;
  v260 = v137;
  swift_getOpaqueTypeConformance2();
  v138 = v188;
  v139 = AssociatedTypeWitness;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v140 = *(v196 + 8);
  v140(v135, v139);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v140)(v138, v139);
}

uint64_t sub_1E6868358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v219 = a8;
  v231 = a7;
  v229 = a6;
  v212 = a4;
  v211 = a2;
  v216 = a1;
  v217 = a9;
  v227 = a29;
  v215 = a28;
  v214 = a27;
  v213 = a26;
  v235 = a25;
  v232 = a24;
  v230 = a23;
  v228 = a22;
  v210 = a18;
  v226 = a17;
  v209 = a16;
  v208 = a15;
  v207 = a14;
  v206 = a13;
  v205 = a12;
  v233 = a11;
  v225 = a10;
  v295 = a2;
  v296 = a3;
  v297 = a4;
  v298 = a5;
  v299 = a6;
  v300 = a7;
  v301 = a8;
  v302 = a10;
  v303 = a11;
  v304 = a12;
  v305 = a13;
  v306 = a14;
  v307 = a15;
  v308 = a16;
  v309 = a17;
  v310 = a18;
  v311 = a19;
  v234 = a19;
  v312 = a20;
  v313 = a21;
  v314 = a22;
  v315 = a23;
  v316 = a24;
  v317 = a25;
  v318 = a26;
  v319 = a27;
  v320 = a28;
  v321 = a29;
  v322 = a30;
  v223 = a30;
  v222 = type metadata accessor for HorizontalGridView(0, &v295);
  v203 = *(v222 - 8);
  v204 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v222, v32);
  v202 = v146 - v33;
  swift_getTupleTypeMetadata2();
  v201 = sub_1E68B33B0();
  v224 = *(a30 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v218 = a5;
  v295 = a5;
  v296 = a3;
  v297 = a3;
  v220 = a21;
  v298 = a21;
  v299 = a20;
  v300 = a20;
  v34 = type metadata accessor for ActionCardView(255, &v295);
  v197 = v34;
  WitnessTable = swift_getWitnessTable();
  v295 = v34;
  v296 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v188 = sub_1E68B2440();
  sub_1E68B1E40();
  v35 = sub_1E68B1E40();
  v200 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v293 = a21;
  v294 = v200;
  v36 = MEMORY[0x1E697E858];
  v37 = swift_getWitnessTable();
  v291 = v37;
  v292 = MEMORY[0x1E697F568];
  v195 = v36;
  v193 = v35;
  v192 = swift_getWitnessTable();
  v295 = v35;
  v296 = v192;
  v179 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v38 = sub_1E68B1E40();
  v184 = v38;
  v289 = v37;
  v290 = MEMORY[0x1E697E040];
  v182 = swift_getWitnessTable();
  v295 = v38;
  v296 = v182;
  swift_getOpaqueTypeMetadata2();
  v185 = sub_1E68B2220();
  v187 = sub_1E68B2B90();
  v186 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v189 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v194 = sub_1E68B2220();
  v174 = sub_1E68B2220();
  v39 = v218;
  v295 = v218;
  v40 = a3;
  v296 = a3;
  v297 = a3;
  v298 = v233;
  v299 = v226;
  v41 = v220;
  v300 = v220;
  v301 = a20;
  v302 = a20;
  v303 = v235;
  v304 = v227;
  v42 = type metadata accessor for FullWidthStageView(255, &v295);
  OpaqueTypeMetadata2 = v42;
  v190 = swift_getWitnessTable();
  v295 = v42;
  v296 = v190;
  swift_getOpaqueTypeMetadata2();
  v43 = v40;
  v198 = v40;
  v199 = a20;
  v45 = type metadata accessor for InfoActionCardView(255, v40, a20, v44);
  v183 = v45;
  v181 = swift_getWitnessTable();
  v295 = v45;
  v296 = v181;
  swift_getOpaqueTypeMetadata2();
  v180 = sub_1E68B2220();
  v152 = sub_1E68B2220();
  v46 = v39;
  v295 = v39;
  v296 = v229;
  v297 = v231;
  v47 = v41;
  v298 = v41;
  v299 = v228;
  v300 = v230;
  v48 = type metadata accessor for LargeBrickView(255, &v295);
  v178 = v48;
  v177 = swift_getWitnessTable();
  v295 = v48;
  v296 = v177;
  swift_getOpaqueTypeMetadata2();
  v50 = type metadata accessor for DynamicBrickView(255, v46, v41, v49);
  v176 = v50;
  v175 = swift_getWitnessTable();
  v295 = v50;
  v296 = v175;
  swift_getOpaqueTypeMetadata2();
  v167 = sub_1E68B2220();
  v52 = type metadata accessor for MonogramVerticalStackView(255, v46, v41, v51);
  v172 = v52;
  v171 = swift_getWitnessTable();
  v295 = v52;
  v296 = v171;
  swift_getOpaqueTypeMetadata2();
  v168 = sub_1E68B2220();
  v173 = sub_1E68B2220();
  v146[1] = sub_1E68B2220();
  v54 = type metadata accessor for StandardCardView(255, v46, v47, v53);
  v170 = v54;
  v169 = swift_getWitnessTable();
  v295 = v54;
  v296 = v169;
  swift_getOpaqueTypeMetadata2();
  v295 = v46;
  v296 = v43;
  v297 = v47;
  v298 = a20;
  v55 = type metadata accessor for StandardHorizontalStackView(255, &v295);
  v166 = v55;
  v165 = swift_getWitnessTable();
  v295 = v55;
  v296 = v165;
  swift_getOpaqueTypeMetadata2();
  v149 = sub_1E68B2220();
  v57 = type metadata accessor for StandardVerticalStackView(255, v46, v47, v56);
  v164 = v57;
  v163 = swift_getWitnessTable();
  v295 = v57;
  v296 = v163;
  swift_getOpaqueTypeMetadata2();
  v159 = type metadata accessor for SummaryCardView(255, v46, v47, v58);
  v162 = sub_1E68B2220();
  v146[2] = sub_1E68B2220();
  v60 = type metadata accessor for TallCardView(255, v46, v47, v59);
  v160 = swift_getWitnessTable();
  v295 = v60;
  v296 = v160;
  swift_getOpaqueTypeMetadata2();
  v62 = type metadata accessor for VerticalStackCardView(255, v46, v47, v61);
  v153 = swift_getWitnessTable();
  v295 = v62;
  v296 = v153;
  swift_getOpaqueTypeMetadata2();
  v146[3] = sub_1E68B2220();
  v64 = type metadata accessor for WideBrickView(255, v46, v47, v63);
  v147 = swift_getWitnessTable();
  v295 = v64;
  v296 = v147;
  swift_getOpaqueTypeMetadata2();
  v146[4] = sub_1E68B2220();
  v148 = sub_1E68B2220();
  v150 = sub_1E68B2220();
  v151 = sub_1E68B2220();
  v155 = sub_1E68B2B90();
  v156 = sub_1E68B1E40();
  v158 = sub_1E68B2220();
  v188 = sub_1E68B1E40();
  v154 = sub_1E68B1E40();
  v65 = v219;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v295 = v65;
  v296 = v225;
  v297 = AssociatedConformanceWitness;
  v298 = v232;
  v157 = type metadata accessor for CanvasContextMenu(255, &v295);
  v161 = sub_1E68B1E40();
  v295 = v197;
  v296 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v295 = v193;
  v296 = v192;
  v68 = swift_getOpaqueTypeConformance2();
  v295 = v184;
  v296 = v182;
  v69 = swift_getOpaqueTypeConformance2();
  v287 = v68;
  v288 = v69;
  v286 = swift_getWitnessTable();
  v197 = MEMORY[0x1E6981600];
  v284 = swift_getWitnessTable();
  v285 = MEMORY[0x1E697E5D8];
  v70 = swift_getWitnessTable();
  v71 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v282 = v70;
  v283 = v71;
  v72 = swift_getWitnessTable();
  v73 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v280 = v72;
  v281 = v73;
  v74 = swift_getWitnessTable();
  v278 = OpaqueTypeConformance2;
  v279 = v74;
  v75 = swift_getWitnessTable();
  v295 = OpaqueTypeMetadata2;
  v296 = v190;
  v76 = swift_getOpaqueTypeConformance2();
  v295 = v183;
  v296 = v181;
  v77 = swift_getOpaqueTypeConformance2();
  v276 = v76;
  v277 = v77;
  v78 = swift_getWitnessTable();
  v274 = v75;
  v275 = v78;
  v79 = swift_getWitnessTable();
  v295 = v178;
  v296 = v177;
  v80 = swift_getOpaqueTypeConformance2();
  v295 = v176;
  v296 = v175;
  v81 = swift_getOpaqueTypeConformance2();
  v272 = v80;
  v273 = v81;
  v82 = swift_getWitnessTable();
  v295 = v172;
  v296 = v171;
  v270 = swift_getOpaqueTypeConformance2();
  v271 = v81;
  v83 = swift_getWitnessTable();
  v268 = v82;
  v269 = v83;
  v84 = swift_getWitnessTable();
  v266 = v79;
  v267 = v84;
  v85 = swift_getWitnessTable();
  v295 = v170;
  v296 = v169;
  v86 = swift_getOpaqueTypeConformance2();
  v295 = v166;
  v296 = v165;
  v87 = swift_getOpaqueTypeConformance2();
  v264 = v86;
  v265 = v87;
  v88 = swift_getWitnessTable();
  v295 = v164;
  v296 = v163;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = swift_getWitnessTable();
  v262 = v89;
  v263 = v90;
  v91 = swift_getWitnessTable();
  v260 = v88;
  v261 = v91;
  v92 = swift_getWitnessTable();
  v295 = v60;
  v296 = v160;
  v93 = swift_getOpaqueTypeConformance2();
  v295 = v62;
  v296 = v153;
  v94 = swift_getOpaqueTypeConformance2();
  v258 = v93;
  v259 = v94;
  v95 = swift_getWitnessTable();
  v295 = v64;
  v296 = v147;
  v96 = swift_getOpaqueTypeConformance2();
  v256 = v235;
  v257 = v96;
  v97 = swift_getWitnessTable();
  v254 = v95;
  v255 = v97;
  v98 = swift_getWitnessTable();
  v252 = v92;
  v253 = v98;
  v99 = swift_getWitnessTable();
  v250 = v85;
  v251 = v99;
  v249 = swift_getWitnessTable();
  v247 = swift_getWitnessTable();
  v248 = v200;
  v100 = swift_getWitnessTable();
  v245 = MEMORY[0x1E6981E60];
  v246 = v100;
  v101 = swift_getWitnessTable();
  v102 = MEMORY[0x1E69805D0];
  v243 = v101;
  v244 = MEMORY[0x1E69805D0];
  v241 = swift_getWitnessTable();
  v242 = v102;
  v103 = swift_getWitnessTable();
  v104 = swift_getWitnessTable();
  v239 = v103;
  v240 = v104;
  v105 = v161;
  v106 = swift_getWitnessTable();
  v295 = v105;
  v296 = v106;
  v107 = swift_getOpaqueTypeMetadata2();
  v295 = v105;
  v296 = v106;
  v200 = swift_getOpaqueTypeConformance2();
  v295 = v107;
  v296 = v200;
  WitnessTable = v107;
  v197 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v108 = sub_1E68B2220();
  v195 = v108;
  v109 = v201;
  v110 = swift_getWitnessTable();
  v111 = v234;
  v112 = AssociatedTypeWitness;
  v113 = swift_getAssociatedConformanceWitness();
  v295 = v109;
  v296 = v112;
  v297 = v108;
  v298 = v110;
  v299 = v113;
  v114 = sub_1E68B2D40();
  v201 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v115);
  v117 = v146 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = MEMORY[0x1EEE9AC00](v118, v119);
  v122 = v146 - v121;
  v194 = *(v216 + *(v222 + 244));
  v124 = v202;
  v123 = v203;
  (*(v203 + 16))(v202, v120);
  v125 = (*(v123 + 80) + 240) & ~*(v123 + 80);
  v126 = swift_allocObject();
  v127 = v198;
  *(v126 + 2) = v211;
  *(v126 + 3) = v127;
  v128 = v218;
  *(v126 + 4) = v212;
  *(v126 + 5) = v128;
  v129 = v231;
  *(v126 + 6) = v229;
  *(v126 + 7) = v129;
  v130 = v225;
  *(v126 + 8) = v219;
  *(v126 + 9) = v130;
  v131 = v205;
  v132 = v206;
  *(v126 + 10) = v233;
  *(v126 + 11) = v131;
  v133 = v207;
  *(v126 + 12) = v132;
  *(v126 + 13) = v133;
  v134 = v209;
  *(v126 + 14) = v208;
  *(v126 + 15) = v134;
  v135 = v210;
  *(v126 + 16) = v226;
  *(v126 + 17) = v135;
  v136 = v199;
  *(v126 + 18) = v111;
  *(v126 + 19) = v136;
  v137 = v228;
  *(v126 + 20) = v220;
  *(v126 + 21) = v137;
  v138 = v232;
  *(v126 + 22) = v230;
  *(v126 + 23) = v138;
  v139 = v213;
  *(v126 + 24) = v235;
  *(v126 + 25) = v139;
  v140 = v215;
  *(v126 + 26) = v214;
  *(v126 + 27) = v140;
  v141 = v223;
  *(v126 + 28) = v227;
  *(v126 + 29) = v141;
  (*(v123 + 32))(&v126[v125], v124, v222);

  v295 = WitnessTable;
  v142 = v200;
  v296 = v200;
  v237 = swift_getOpaqueTypeConformance2();
  v238 = v142;
  v143 = swift_getWitnessTable();
  sub_1E68B2D20();
  v236 = v143;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v144 = *(v201 + 8);
  v144(v117, v114);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v144)(v122, v114);
}

uint64_t sub_1E6869760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v382 = a8;
  v372 = a7;
  v377 = a6;
  v381 = a5;
  v360 = a4;
  v367 = a3;
  v347 = a2;
  v359 = a1;
  v334 = a9;
  v373 = a30;
  v370 = a29;
  v358 = a28;
  v356 = a27;
  v384 = a24;
  v383 = a23;
  v379 = a22;
  v380 = a21;
  v385 = a18;
  v375 = a17;
  v355 = a16;
  v357 = a15;
  v374 = a14;
  v365 = a13;
  v378 = a26;
  v371 = a12;
  v368 = a19;
  v376 = a10;
  v32 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v331 = v279 - v34;
  v366 = a31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v445 = a11;
  v361 = *(&a11 + 1);
  v369 = a11;
  *&v446 = AssociatedConformanceWitness;
  *(&v446 + 1) = a25;
  v354 = a25;
  v346 = type metadata accessor for CanvasContextMenu(0, &v445);
  v333 = *(v346 - 8);
  MEMORY[0x1EEE9AC00](v346, v35);
  v330 = v279 - v36;
  v364 = a20;
  v337 = *(a20 - 8);
  v350 = *(v337 + 64);
  MEMORY[0x1EEE9AC00](v37, v38);
  v348 = v279 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v445 = a4;
  v40 = v381;
  *(&v445 + 1) = v381;
  *&v446 = v377;
  v41 = v372;
  *(&v446 + 1) = v372;
  v447 = v382;
  v448 = a10;
  v449 = a11;
  v450 = a12;
  v451 = v365;
  v452 = v374;
  v453 = v357;
  v454 = v355;
  v455 = v375;
  v456 = v385;
  v457 = v368;
  v458 = a20;
  v42 = v380;
  v459 = v380;
  v43 = v379;
  v460 = v379;
  v461 = v383;
  v462 = v384;
  v463 = a25;
  v464 = v378;
  v465 = v356;
  v466 = v358;
  v467 = v370;
  v44 = v373;
  v468 = v373;
  v469 = a31;
  v363 = type metadata accessor for HorizontalGridView(0, &v445);
  v362 = *(v363 - 8);
  v351 = *(v362 + 64);
  MEMORY[0x1EEE9AC00](v363, v45);
  v345 = v279 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v329 = v279 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v344 = v279 - v52;
  v53 = v41;
  *&v445 = v41;
  *(&v445 + 1) = v40;
  *&v446 = v40;
  *(&v446 + 1) = v43;
  v447 = v42;
  v448 = v42;
  v54 = type metadata accessor for ActionCardView(255, &v445);
  v352 = v54;
  WitnessTable = swift_getWitnessTable();
  *&v445 = v54;
  *(&v445 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v343 = sub_1E68B2440();
  sub_1E68B1E40();
  v55 = sub_1E68B1E40();
  v353 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v443 = v43;
  v444 = v353;
  v56 = MEMORY[0x1E697E858];
  v57 = swift_getWitnessTable();
  v441 = v57;
  v442 = MEMORY[0x1E697F568];
  v336 = v56;
  v322 = v55;
  v321 = swift_getWitnessTable();
  *&v445 = v55;
  *(&v445 + 1) = v321;
  v309 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v58 = sub_1E68B1E40();
  v314 = v58;
  v439 = v57;
  v440 = MEMORY[0x1E697E040];
  v312 = swift_getWitnessTable();
  *&v445 = v58;
  *(&v445 + 1) = v312;
  swift_getOpaqueTypeMetadata2();
  v315 = sub_1E68B2220();
  v317 = sub_1E68B2B90();
  v316 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v318 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v335 = sub_1E68B2220();
  v304 = sub_1E68B2220();
  v59 = v53;
  *&v445 = v53;
  v60 = v381;
  *(&v445 + 1) = v381;
  *&v446 = v381;
  *(&v446 + 1) = v371;
  v447 = v385;
  v61 = v379;
  v448 = v379;
  v62 = v380;
  *&v449 = v380;
  *(&v449 + 1) = v380;
  v450 = v378;
  v451 = v44;
  v63 = type metadata accessor for FullWidthStageView(255, &v445);
  v320 = v63;
  v319 = swift_getWitnessTable();
  *&v445 = v63;
  *(&v445 + 1) = v319;
  swift_getOpaqueTypeMetadata2();
  v65 = type metadata accessor for InfoActionCardView(255, v60, v62, v64);
  v313 = v65;
  v311 = swift_getWitnessTable();
  *&v445 = v65;
  *(&v445 + 1) = v311;
  swift_getOpaqueTypeMetadata2();
  v310 = sub_1E68B2220();
  v285 = sub_1E68B2220();
  *&v445 = v59;
  *(&v445 + 1) = v382;
  *&v446 = v376;
  *(&v446 + 1) = v61;
  v447 = v383;
  v448 = v384;
  v66 = type metadata accessor for LargeBrickView(255, &v445);
  v308 = v66;
  v307 = swift_getWitnessTable();
  *&v445 = v66;
  *(&v445 + 1) = v307;
  swift_getOpaqueTypeMetadata2();
  v68 = type metadata accessor for DynamicBrickView(255, v59, v61, v67);
  v306 = v68;
  v305 = swift_getWitnessTable();
  *&v445 = v68;
  *(&v445 + 1) = v305;
  swift_getOpaqueTypeMetadata2();
  v297 = sub_1E68B2220();
  v70 = type metadata accessor for MonogramVerticalStackView(255, v59, v61, v69);
  v302 = v70;
  v301 = swift_getWitnessTable();
  *&v445 = v70;
  *(&v445 + 1) = v301;
  swift_getOpaqueTypeMetadata2();
  v298 = sub_1E68B2220();
  v303 = sub_1E68B2220();
  v279[0] = sub_1E68B2220();
  v72 = type metadata accessor for StandardCardView(255, v59, v61, v71);
  v300 = v72;
  v299 = swift_getWitnessTable();
  *&v445 = v72;
  *(&v445 + 1) = v299;
  swift_getOpaqueTypeMetadata2();
  *&v445 = v59;
  *(&v445 + 1) = v60;
  *&v446 = v61;
  *(&v446 + 1) = v62;
  v73 = type metadata accessor for StandardHorizontalStackView(255, &v445);
  v296 = v73;
  v295 = swift_getWitnessTable();
  *&v445 = v73;
  *(&v445 + 1) = v295;
  swift_getOpaqueTypeMetadata2();
  v282 = sub_1E68B2220();
  v75 = type metadata accessor for StandardVerticalStackView(255, v59, v61, v74);
  v294 = v75;
  v293 = swift_getWitnessTable();
  *&v445 = v75;
  *(&v445 + 1) = v293;
  swift_getOpaqueTypeMetadata2();
  v289 = type metadata accessor for SummaryCardView(255, v59, v61, v76);
  v292 = sub_1E68B2220();
  v279[1] = sub_1E68B2220();
  v78 = type metadata accessor for TallCardView(255, v59, v61, v77);
  v291 = v78;
  v290 = swift_getWitnessTable();
  *&v445 = v78;
  *(&v445 + 1) = v290;
  swift_getOpaqueTypeMetadata2();
  v80 = type metadata accessor for VerticalStackCardView(255, v59, v61, v79);
  v286 = swift_getWitnessTable();
  *&v445 = v80;
  *(&v445 + 1) = v286;
  swift_getOpaqueTypeMetadata2();
  v279[2] = sub_1E68B2220();
  v82 = type metadata accessor for WideBrickView(255, v59, v61, v81);
  v280 = swift_getWitnessTable();
  *&v445 = v82;
  *(&v445 + 1) = v280;
  swift_getOpaqueTypeMetadata2();
  v279[3] = sub_1E68B2220();
  v281 = sub_1E68B2220();
  v283 = sub_1E68B2220();
  v284 = sub_1E68B2220();
  v287 = sub_1E68B2B90();
  v288 = sub_1E68B1E40();
  v339 = sub_1E68B2220();
  v324 = *(v339 - 8);
  MEMORY[0x1EEE9AC00](v339, v339);
  v340 = v279 - v83;
  v341 = sub_1E68B1E40();
  v326 = *(v341 - 8);
  MEMORY[0x1EEE9AC00](v341, v341);
  v342 = v279 - v84;
  v343 = sub_1E68B1E40();
  v327 = *(v343 - 8);
  MEMORY[0x1EEE9AC00](v343, v343);
  v323 = v279 - v85;
  v338 = sub_1E68B1E40();
  v328 = *(v338 - 8);
  MEMORY[0x1EEE9AC00](v338, v86);
  v325 = v279 - v87;
  *&v445 = v352;
  *(&v445 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v445 = v322;
  *(&v445 + 1) = v321;
  v89 = swift_getOpaqueTypeConformance2();
  *&v445 = v314;
  *(&v445 + 1) = v312;
  v90 = swift_getOpaqueTypeConformance2();
  v437 = v89;
  v438 = v90;
  v91 = MEMORY[0x1E697F968];
  v436 = swift_getWitnessTable();
  v434 = swift_getWitnessTable();
  v435 = MEMORY[0x1E697E5D8];
  v92 = swift_getWitnessTable();
  v93 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v432 = v92;
  v433 = v93;
  v94 = swift_getWitnessTable();
  v95 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v430 = v94;
  v431 = v95;
  v96 = swift_getWitnessTable();
  v428 = OpaqueTypeConformance2;
  v429 = v96;
  v97 = swift_getWitnessTable();
  *&v445 = v320;
  *(&v445 + 1) = v319;
  v98 = swift_getOpaqueTypeConformance2();
  *&v445 = v313;
  *(&v445 + 1) = v311;
  v99 = swift_getOpaqueTypeConformance2();
  v426 = v98;
  v427 = v99;
  v100 = swift_getWitnessTable();
  v424 = v97;
  v425 = v100;
  v101 = swift_getWitnessTable();
  *&v445 = v308;
  *(&v445 + 1) = v307;
  v102 = swift_getOpaqueTypeConformance2();
  *&v445 = v306;
  *(&v445 + 1) = v305;
  v103 = swift_getOpaqueTypeConformance2();
  v422 = v102;
  v423 = v103;
  v104 = swift_getWitnessTable();
  *&v445 = v302;
  *(&v445 + 1) = v301;
  v420 = swift_getOpaqueTypeConformance2();
  v421 = v103;
  v105 = swift_getWitnessTable();
  v418 = v104;
  v419 = v105;
  v106 = swift_getWitnessTable();
  v416 = v101;
  v417 = v106;
  v107 = swift_getWitnessTable();
  *&v445 = v300;
  *(&v445 + 1) = v299;
  v108 = swift_getOpaqueTypeConformance2();
  *&v445 = v296;
  *(&v445 + 1) = v295;
  v109 = swift_getOpaqueTypeConformance2();
  v414 = v108;
  v415 = v109;
  v110 = swift_getWitnessTable();
  *&v445 = v294;
  *(&v445 + 1) = v293;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = swift_getWitnessTable();
  v412 = v111;
  v413 = v112;
  v113 = swift_getWitnessTable();
  v410 = v110;
  v411 = v113;
  v114 = swift_getWitnessTable();
  *&v445 = v291;
  *(&v445 + 1) = v290;
  v115 = swift_getOpaqueTypeConformance2();
  *&v445 = v80;
  *(&v445 + 1) = v286;
  v116 = swift_getOpaqueTypeConformance2();
  v408 = v115;
  v409 = v116;
  v117 = swift_getWitnessTable();
  *&v445 = v82;
  *(&v445 + 1) = v280;
  v118 = swift_getOpaqueTypeConformance2();
  v119 = v378;
  v406 = v378;
  v407 = v118;
  v120 = swift_getWitnessTable();
  v404 = v117;
  v405 = v120;
  v121 = swift_getWitnessTable();
  v402 = v114;
  v403 = v121;
  v122 = swift_getWitnessTable();
  v400 = v107;
  v401 = v122;
  v322 = v91;
  v399 = swift_getWitnessTable();
  v397 = swift_getWitnessTable();
  v398 = v353;
  v123 = swift_getWitnessTable();
  v395 = MEMORY[0x1E6981E60];
  v396 = v123;
  v309 = swift_getWitnessTable();
  v124 = MEMORY[0x1E69805D0];
  v393 = v309;
  v394 = MEMORY[0x1E69805D0];
  v310 = swift_getWitnessTable();
  v391 = v310;
  v392 = v124;
  v125 = swift_getWitnessTable();
  v315 = v125;
  v126 = swift_getWitnessTable();
  v389 = v125;
  v390 = v126;
  v127 = v338;
  v128 = swift_getWitnessTable();
  *&v445 = v127;
  *(&v445 + 1) = v128;
  v129 = v128;
  v313 = v128;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v314 = OpaqueTypeMetadata2;
  v321 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v131);
  v312 = v279 - v132;
  *&v445 = v127;
  *(&v445 + 1) = v129;
  v316 = swift_getOpaqueTypeConformance2();
  *&v445 = OpaqueTypeMetadata2;
  *(&v445 + 1) = v316;
  v318 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v133 = sub_1E68B2220();
  v134 = *(v133 - 8);
  v319 = v133;
  v320 = v134;
  MEMORY[0x1EEE9AC00](v133, v135);
  v311 = v279 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = MEMORY[0x1EEE9AC00](v137, v138);
  v317 = v279 - v140;
  v141 = v362;
  v142 = *(v362 + 16);
  v352 = v362 + 16;
  v353 = v142;
  v143 = v344;
  (v142)(v344, v367, v363, v139);
  v144 = v337;
  v145 = v364;
  (*(v337 + 16))(v348, v347, v364);
  v146 = *(v141 + 80);
  v147 = v141;
  v148 = (v146 + 240) & ~v146;
  v304 = v148 + v351;
  WitnessTable = v148;
  v351 = v146 | 7;
  v149 = (v304 + *(v144 + 80)) & ~*(v144 + 80);
  v150 = swift_allocObject();
  v151 = v381;
  v150[2] = v360;
  v150[3] = v151;
  v152 = v372;
  v150[4] = v377;
  v150[5] = v152;
  v153 = v376;
  v150[6] = v382;
  v150[7] = v153;
  v154 = v361;
  v150[8] = v369;
  v150[9] = v154;
  v155 = v365;
  v150[10] = v371;
  v150[11] = v155;
  v156 = v357;
  v150[12] = v374;
  v150[13] = v156;
  v157 = v355;
  v158 = v375;
  v150[14] = v355;
  v150[15] = v158;
  v159 = v368;
  v150[16] = v385;
  v150[17] = v159;
  v160 = v380;
  v150[18] = v145;
  v150[19] = v160;
  v161 = v383;
  v150[20] = v379;
  v150[21] = v161;
  v162 = v354;
  v150[22] = v384;
  v150[23] = v162;
  v150[24] = v119;
  v163 = v356;
  v164 = v358;
  v150[25] = v356;
  v150[26] = v164;
  v165 = v373;
  v150[27] = v370;
  v150[28] = v165;
  v150[29] = v366;
  v166 = *(v147 + 32);
  v362 = v147 + 32;
  v350 = v166;
  v167 = v143;
  v168 = v363;
  v166(v150 + v148, v167, v363);
  v169 = v150 + v149;
  v170 = v145;
  (*(v144 + 32))(v169, v348, v145);
  v171 = v168[68];
  v172 = (v367 + v168[69]);
  v173 = v172[1];
  v308 = *v172;
  v174 = (v367 + v168[70]);
  v176 = *v174;
  v175 = v174[1];
  v306 = v171;
  v307 = v176;
  v336 = v175;
  v337 = v173;
  v177 = (v367 + v168[71]);
  v179 = *v177;
  v178 = v177[1];
  v305 = v179;
  v335 = v178;
  v180 = v329;
  v353(v329);
  v348 = ((v304 + 7) & 0xFFFFFFFFFFFFFFF8);
  v181 = swift_allocObject();
  v182 = v381;
  *(v181 + 16) = v360;
  *(v181 + 24) = v182;
  v183 = v372;
  *(v181 + 32) = v377;
  *(v181 + 40) = v183;
  v184 = v376;
  *(v181 + 48) = v382;
  *(v181 + 56) = v184;
  v185 = v361;
  *(v181 + 64) = v369;
  *(v181 + 72) = v185;
  v186 = v371;
  v187 = v365;
  *(v181 + 80) = v371;
  *(v181 + 88) = v187;
  v188 = v357;
  *(v181 + 96) = v374;
  *(v181 + 104) = v188;
  v189 = v375;
  *(v181 + 112) = v157;
  *(v181 + 120) = v189;
  v190 = v368;
  *(v181 + 128) = v385;
  *(v181 + 136) = v190;
  v191 = v380;
  *(v181 + 144) = v170;
  *(v181 + 152) = v191;
  v192 = v383;
  *(v181 + 160) = v379;
  *(v181 + 168) = v192;
  v193 = v354;
  *(v181 + 176) = v384;
  *(v181 + 184) = v193;
  *(v181 + 192) = v378;
  *(v181 + 200) = v163;
  v194 = v358;
  v195 = v370;
  *(v181 + 208) = v358;
  *(v181 + 216) = v195;
  v196 = v366;
  *(v181 + 224) = v373;
  *(v181 + 232) = v196;
  v197 = v180;
  v198 = v363;
  v350(v181 + WitnessTable, v197, v363);
  *&v348[v181] = v359;
  (v353)(v345, v367, v198);
  v199 = swift_allocObject();
  v200 = v381;
  *(v199 + 16) = v360;
  *(v199 + 24) = v200;
  v201 = v372;
  *(v199 + 32) = v377;
  *(v199 + 40) = v201;
  v202 = v376;
  *(v199 + 48) = v382;
  *(v199 + 56) = v202;
  v203 = v361;
  *(v199 + 64) = v369;
  *(v199 + 72) = v203;
  v204 = v365;
  *(v199 + 80) = v186;
  *(v199 + 88) = v204;
  *(v199 + 96) = v374;
  *(v199 + 104) = v188;
  v205 = v375;
  *(v199 + 112) = v355;
  *(v199 + 120) = v205;
  *(v199 + 128) = v385;
  *(v199 + 136) = v190;
  v206 = v380;
  *(v199 + 144) = v364;
  *(v199 + 152) = v206;
  v207 = v383;
  *(v199 + 160) = v379;
  *(v199 + 168) = v207;
  *(v199 + 176) = v384;
  *(v199 + 184) = v193;
  v208 = v356;
  *(v199 + 192) = v378;
  *(v199 + 200) = v208;
  v209 = v370;
  *(v199 + 208) = v194;
  *(v199 + 216) = v209;
  v210 = v366;
  *(v199 + 224) = v373;
  *(v199 + 232) = v210;
  v350(v199 + WitnessTable, v345, v363);
  *&v348[v199] = v359;
  v211 = v379;
  v212 = v372;
  v213 = v382;
  v214 = v376;
  v215 = v371;
  sub_1E6892048(&v445);
  v388[0] = v445;
  v388[1] = v446;

  v278 = v210;
  v216 = v381;
  v277 = v212;
  v217 = v367;
  CanvasItemDescriptorProtocol.buildView<A, B, C, D, E, F>(onSelection:sizeClass:contentMargins:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:viewDescriptorBuilder:actionButtonViewBuilder:)(sub_1E686E7DC, v150, v367 + v306, v388, v308, v337, v307, v336, v340, v305, v335, sub_1E686E9B0, v181, sub_1E686E9C8, v199, v364, v385, v277, v213, v214, v215, v381, v278, v373, v211, v383, v384, v378, v380);

  v218 = v344;
  v219 = v363;
  (v353)(v344, v217, v363);
  v220 = v348;
  v221 = swift_allocObject();
  v222 = v360;
  *(v221 + 16) = v360;
  *(v221 + 24) = v216;
  v223 = v372;
  *(v221 + 32) = v377;
  *(v221 + 40) = v223;
  v224 = v376;
  *(v221 + 48) = v382;
  *(v221 + 56) = v224;
  v225 = v361;
  *(v221 + 64) = v369;
  *(v221 + 72) = v225;
  v226 = v365;
  *(v221 + 80) = v371;
  *(v221 + 88) = v226;
  v227 = v357;
  *(v221 + 96) = v374;
  *(v221 + 104) = v227;
  v228 = v375;
  *(v221 + 112) = v355;
  *(v221 + 120) = v228;
  v229 = v368;
  *(v221 + 128) = v385;
  *(v221 + 136) = v229;
  v230 = v380;
  *(v221 + 144) = v364;
  *(v221 + 152) = v230;
  v231 = v383;
  *(v221 + 160) = v379;
  *(v221 + 168) = v231;
  v232 = v354;
  *(v221 + 176) = v384;
  *(v221 + 184) = v232;
  v233 = v356;
  *(v221 + 192) = v378;
  *(v221 + 200) = v233;
  v234 = v370;
  *(v221 + 208) = v358;
  *(v221 + 216) = v234;
  v235 = v366;
  *(v221 + 224) = v373;
  *(v221 + 232) = v235;
  v350(v221 + WitnessTable, v218, v219);
  *&v220[v221] = v359;
  v237 = v339;
  v236 = v340;
  sub_1E68B2AA0();

  (*(v324 + 8))(v236, v237);
  v238 = v218;
  v239 = v363;
  (v353)(v218, v367, v363);
  v240 = swift_allocObject();
  v241 = v381;
  *(v240 + 16) = v222;
  *(v240 + 24) = v241;
  v242 = v372;
  *(v240 + 32) = v377;
  *(v240 + 40) = v242;
  v243 = v376;
  *(v240 + 48) = v382;
  *(v240 + 56) = v243;
  v244 = v369;
  *(v240 + 64) = v369;
  *(v240 + 72) = v225;
  *(v240 + 80) = v371;
  *(v240 + 88) = v226;
  v245 = v357;
  *(v240 + 96) = v374;
  *(v240 + 104) = v245;
  v246 = v375;
  *(v240 + 112) = v355;
  *(v240 + 120) = v246;
  v247 = v368;
  *(v240 + 128) = v385;
  *(v240 + 136) = v247;
  v248 = v364;
  v249 = v380;
  *(v240 + 144) = v364;
  *(v240 + 152) = v249;
  v250 = v383;
  *(v240 + 160) = v379;
  *(v240 + 168) = v250;
  v251 = v354;
  *(v240 + 176) = v384;
  *(v240 + 184) = v251;
  v252 = v356;
  *(v240 + 192) = v378;
  *(v240 + 200) = v252;
  *(v240 + 208) = v358;
  *(v240 + 216) = v234;
  v253 = v366;
  *(v240 + 224) = v373;
  *(v240 + 232) = v253;
  v254 = v239;
  v350(v240 + WitnessTable, v238, v239);
  *&v348[v240] = v359;
  v255 = v323;
  v256 = v341;
  v257 = v342;
  sub_1E68B27E0();

  (*(v326 + 8))(v257, v256);
  v258 = v253;
  v259 = *(v253 + 168);
  v260 = v331;
  v261 = v347;
  v259(v248, v258);
  v262 = v367;
  v263 = v330;
  sub_1E67C02C4(v260, *(v367 + *(v254 + 292)), *(v367 + *(v254 + 292) + 8), v244, v361, AssociatedConformanceWitness, v251, v330);

  v264 = v325;
  v265 = v343;
  v266 = v346;
  MEMORY[0x1E69512E0](v263, v343, v346, v315);
  (*(v333 + 8))(v263, v266);
  (*(v327 + 8))(v255, v265);
  sub_1E68B24B0();
  sub_1E68B2E60();
  v267 = v312;
  v268 = v338;
  sub_1E68B2960();
  (*(v328 + 8))(v264, v268);
  v269 = v262 + *(v254 + 252);
  v270 = v316;
  v271 = v311;
  v272 = v314;
  sub_1E6814294(v261, v269, v359, v314, v311, v374, v375, v368, v364, v316, v370, v366);
  (*(v321 + 8))(v267, v272);
  *&v445 = v272;
  *(&v445 + 1) = v270;
  v386 = swift_getOpaqueTypeConformance2();
  v387 = v270;
  v273 = v319;
  swift_getWitnessTable();
  v274 = v317;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v275 = *(v320 + 8);
  v275(v271, v273);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v275)(v274, v273);
}

uint64_t (*sub_1E686B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30))(uint64_t a1)
{
  v30 = *(a12 - 8);
  v31 = MEMORY[0x1EEE9AC00](a17, a11);
  v33 = v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[0] = v34;
  v57[1] = v35;
  v57[2] = v36;
  v57[3] = v37;
  v57[4] = v38;
  v57[5] = v39;
  v58 = v40;
  v59 = v41;
  v60 = a12;
  v61 = v43;
  v62 = v42;
  v63 = v44;
  v64 = v45;
  *(v46 + 136) = v47;
  *(v46 + 152) = v48;
  *(v46 + 168) = v49;
  *(v46 + 184) = v31;
  v65 = a19;
  v66 = v51;
  v67 = v50;
  v68 = a30;
  v52 = type metadata accessor for HorizontalGridView(0, v57);
  result = sub_1E686279C(v52);
  if (result)
  {
    v55 = result;
    v56 = v54;
    (*(a30 + 152))(a19, a30);
    v55(v33);
    sub_1E672E440(v55, v56);
    return (*(v30 + 8))(v33, a12);
  }

  return result;
}

uint64_t sub_1E686B8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v56 - v30;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v35 = v56 - v34;
  v56[0] = v36;
  v56[1] = v37;
  v56[2] = v38;
  v56[3] = v39;
  v56[4] = v40;
  v57 = v41;
  v58 = v42;
  v59 = a12;
  v60 = v43;
  v61 = v44;
  v62 = v45;
  v63 = v46;
  *(v47 + 136) = v48;
  *(v47 + 152) = v49;
  v64 = v50;
  v65 = a26;
  *(v47 + 184) = v51;
  *(v47 + 200) = v33;
  v66 = v52;
  v53 = type metadata accessor for HorizontalGridView(0, v56);
  sub_1E68623F8(v53);
  sub_1E67D5458(a1, a3);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v54 = *(v28 + 8);
  v54(v31, a12);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v54)(v35, a12);
}

uint64_t sub_1E686BAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v52 - v26;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = v52 - v30;
  v52[0] = v32;
  v52[1] = v33;
  v52[2] = v34;
  v52[3] = v35;
  v52[4] = v36;
  v53 = v37;
  v54 = v38;
  v55 = v39;
  v56 = v40;
  v57 = v41;
  v58 = v43;
  v59 = v42;
  v60 = a21;
  v61 = v45;
  v62 = v44;
  v63 = v46;
  v64 = v29;
  v65 = v48;
  v66 = v47;
  v49 = type metadata accessor for HorizontalGridView(0, v52);
  sub_1E68621E4(v49);
  sub_1E67D41E8(a1, a3, 0);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v50 = *(v24 + 8);
  v50(v27, a5);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v50)(v31, a5);
}

void (*sub_1E686BC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(uint64_t)))(uint64_t)
{
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  v27[4] = a7;
  v27[5] = a8;
  v28 = a9;
  v29 = a10;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v34 = a15;
  v35 = a16;
  v36 = a17;
  v37 = a18;
  v38 = a19;
  v39 = a20;
  v22 = type metadata accessor for HorizontalGridView(0, v27);
  result = a21(v22);
  if (result)
  {
    v25 = result;
    v26 = v24;
    result(a2);
    return sub_1E672E440(v25, v26);
  }

  return result;
}

uint64_t sub_1E686BD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v151 = a1;
  v160 = a9;
  v161 = a26;
  *&v176 = a2;
  *(&v176 + 1) = a3;
  v134 = a4;
  *&v177 = a4;
  *(&v177 + 1) = a5;
  v136 = a5;
  v138 = a6;
  v178 = a6;
  v179 = a7;
  v140 = a7;
  v142 = a8;
  v180 = a8;
  v123 = a10;
  v124 = a11;
  v181 = a10;
  v182 = a11;
  v126 = a12;
  v127 = a13;
  v183 = a12;
  v184 = a13;
  v185 = a14;
  v186 = a15;
  v130 = a16;
  v131 = a17;
  v187 = a16;
  v188 = a17;
  v132 = a18;
  v189 = a18;
  v190 = a19;
  v191 = a20;
  v135 = a21;
  v192 = a21;
  v137 = a22;
  v193 = a22;
  v139 = a23;
  v194 = a23;
  v141 = a24;
  v195 = a24;
  v143 = a25;
  v144 = a28;
  v196 = a25;
  v197 = a26;
  v198 = a27;
  v199 = a28;
  v145 = a29;
  v200 = a29;
  v201 = a30;
  v125 = type metadata accessor for HorizontalGridView(0, &v176);
  v122 = *(v125 - 8);
  v121 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v125, v32);
  v152 = &v118 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v153 = a3;
  *&v176 = a3;
  *(&v176 + 1) = a15;
  v147 = a15;
  v148 = a20;
  *&v177 = a20;
  *(&v177 + 1) = a27;
  v150 = a27;
  v34 = type metadata accessor for CanvasSectionHeaderView(255, &v176);
  sub_1E68B2390();
  v158 = v34;
  v159 = sub_1E68B1E40();
  v35 = sub_1E68B2220();
  v155 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v149 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v118 - v40;
  v146 = a30;
  v133 = a19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v128 = a2;
  v129 = a14;
  *&v176 = a2;
  *(&v176 + 1) = a14;
  *&v177 = AssociatedConformanceWitness;
  *(&v177 + 1) = v161;
  v43 = type metadata accessor for CanvasSectionHeader(255, &v176);
  v44 = sub_1E68B3750();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v46);
  v48 = &v118 - v47;
  v49 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v118 - v52;
  v54 = sub_1E68B3750();
  v156 = *(v54 - 8);
  v157 = v54;
  MEMORY[0x1EEE9AC00](v54, v55);
  v162 = &v118 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57, v58);
  v154 = &v118 - v60;
  v61 = v151;
  (*(v45 + 16))(v48, v59);
  if ((*(v49 + 48))(v48, 1, v43) == 1)
  {
    (*(v45 + 8))(v48, v44);
    (*(v155 + 56))(v162, 1, 1, v35);
    v62 = sub_1E673F2EC();
    WitnessTable = swift_getWitnessTable();
    v64 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    v174 = WitnessTable;
    v175 = v64;
    v65 = swift_getWitnessTable();
    v172 = v62;
    v173 = v65;
    swift_getWitnessTable();
  }

  else
  {
    (*(v49 + 32))(v53, v48, v43);
    v119 = v53;
    v120 = v49;
    v66 = v122;
    v67 = v61;
    v68 = v125;
    (*(v122 + 16))(v152, v61, v125);
    v69 = (*(v66 + 80) + 240) & ~*(v66 + 80);
    v70 = swift_allocObject();
    v71 = v153;
    *(v70 + 2) = v128;
    *(v70 + 3) = v71;
    v72 = v136;
    *(v70 + 4) = v134;
    *(v70 + 5) = v72;
    v73 = v140;
    *(v70 + 6) = v138;
    *(v70 + 7) = v73;
    v74 = v123;
    v75 = v124;
    *(v70 + 8) = v142;
    *(v70 + 9) = v74;
    v76 = v126;
    v77 = v127;
    *(v70 + 10) = v75;
    *(v70 + 11) = v76;
    v79 = v129;
    v78 = v130;
    *(v70 + 12) = v77;
    *(v70 + 13) = v79;
    v142 = v35;
    v80 = v147;
    *(v70 + 14) = v147;
    *(v70 + 15) = v78;
    v81 = v132;
    *(v70 + 16) = v131;
    *(v70 + 17) = v81;
    v140 = v41;
    v82 = v148;
    *(v70 + 18) = v133;
    *(v70 + 19) = v82;
    v83 = v137;
    *(v70 + 20) = v135;
    *(v70 + 21) = v83;
    v84 = v141;
    *(v70 + 22) = v139;
    *(v70 + 23) = v84;
    v85 = v161;
    *(v70 + 24) = v143;
    *(v70 + 25) = v85;
    v86 = v150;
    v87 = v144;
    v88 = v145;
    *(v70 + 26) = v150;
    *(v70 + 27) = v87;
    v89 = v146;
    *(v70 + 28) = v88;
    *(v70 + 29) = v89;
    (*(v66 + 32))(&v70[v69], v152, v68);
    v90 = v67 + v68[74];
    v91 = *v90;
    v92 = *(v90 + 8);
    v93 = (v67 + v68[65]);
    v94 = v93[1];
    v176 = *v93;
    v177 = v94;
    LODWORD(v67) = *(v67 + v68[67]);

    v116 = v82;
    v117 = v86;
    v115 = v80;
    v95 = v142;
    v96 = v149;
    v97 = v119;
    sub_1E68AF848(sub_1E686DEB4, v70, v91, v92, &v176, v67, v43, v153, v149, v115, v116, v117);

    (*(v120 + 8))(v97, v43);
    v98 = sub_1E673F2EC();
    v99 = swift_getWitnessTable();
    v100 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    v165 = v99;
    v166 = v100;
    v101 = swift_getWitnessTable();
    v163 = v98;
    v164 = v101;
    swift_getWitnessTable();
    v102 = v140;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v103 = v155;
    v104 = *(v155 + 8);
    v104(v96, v95);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v104(v102, v95);
    v105 = v162;
    (*(v103 + 32))(v162, v96, v95);
    (*(v103 + 56))(v105, 0, 1, v95);
  }

  v106 = v154;
  v107 = v162;
  sub_1E67FDFA4(v162, v154);
  v108 = v157;
  v109 = *(v156 + 8);
  v109(v107, v157);
  v110 = sub_1E673F2EC();
  v111 = swift_getWitnessTable();
  v112 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  v170 = v111;
  v171 = v112;
  v113 = swift_getWitnessTable();
  v168 = v110;
  v169 = v113;
  v167 = swift_getWitnessTable();
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v109)(v106, v108);
}

uint64_t sub_1E686C738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21)
{
  v52 = a7;
  v50 = a6;
  v48 = a5;
  v46 = a4;
  v55 = a1;
  v57 = a8;
  v54 = a21;
  v53 = a20;
  v51 = a19;
  v49 = a18;
  v47 = a17;
  v45 = a16;
  v44 = a13;
  v43 = a12;
  v42 = a11;
  v41 = a10;
  v40 = a9;
  v56 = sub_1E68B3750();
  v23 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v24);
  v26 = &v40 - v25;
  v27 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v40 - v34;
  v58[0] = a2;
  v58[1] = a3;
  v58[2] = v46;
  v58[3] = v48;
  v58[4] = v50;
  v58[5] = v52;
  v59 = v40;
  v60 = v41;
  v61 = v42;
  v62 = v43;
  v63 = v44;
  v64 = a14;
  v65 = a15;
  v66 = v45;
  v67 = v47;
  v68 = v49;
  v69 = v51;
  v70 = v53;
  v71 = v54;
  v36 = type metadata accessor for HorizontalGridView(0, v58);
  sub_1E68621E4(v36);
  v37 = *(a2 - 8);
  (*(v37 + 16))(v26, v55, a2);
  (*(v37 + 56))(v26, 0, 1, a2);
  sub_1E67D41E8(v26, 0, 1);

  (*(v23 + 8))(v26, v56);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v38 = *(v27 + 8);
  v38(v31, a3);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v38)(v35, a3);
}

uint64_t sub_1E686CB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19)
{
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v32 = a18;
  v33 = a19;
  v20 = type metadata accessor for HorizontalGridView(0, v22);
  LOBYTE(v22[0]) = *(a1 + *(v20 + 248));
  return sub_1E6739E78(*(a1 + *(v20 + 260) + 8));
}

void sub_1E686CC80(void *a1)
{
  v2 = a1[2];
  v3 = a1[13];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = a1[25];
  v58 = v2;
  v59 = v3;
  v60 = AssociatedConformanceWitness;
  v61 = v5;
  type metadata accessor for CanvasSectionHeader(255, &v58);
  v6 = sub_1E68B3750();
  if (v7 <= 0x3F)
  {
    v58 = v6;
    v8 = sub_1E68B33B0();
    if (v9 <= 0x3F)
    {
      v59 = v8;
      v60 = &type metadata for CanvasSectionFooter;
      v10 = sub_1E68B3750();
      if (v11 <= 0x3F)
      {
        v61 = v10;
        v62 = MEMORY[0x1E69E6530];
        v63 = &type metadata for ContentMargins;
        v64 = &type metadata for CanvasSectionDensityFactor;
        v65 = &type metadata for DynamicTypeSize;
        v12 = swift_checkMetadataState();
        if (v13 <= 0x3F)
        {
          v66 = v12;
          FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
          v17 = type metadata accessor for AssumeEquatable(319, FunctionTypeMetadata1, v15, v16);
          if (v18 <= 0x3F)
          {
            v67 = v17;
            v19 = swift_getFunctionTypeMetadata1();
            v22 = type metadata accessor for AssumeEquatable(319, v19, v20, v21);
            if (v23 <= 0x3F)
            {
              v68 = v22;
              v24 = swift_getFunctionTypeMetadata1();
              v27 = type metadata accessor for AssumeEquatable(319, v24, v25, v26);
              if (v28 <= 0x3F)
              {
                v69 = v27;
                sub_1E68B3750();
                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208, &qword_1E68BB878);
                FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
                v32 = type metadata accessor for AssumeEquatable(319, FunctionTypeMetadata2, v30, v31);
                if (v33 <= 0x3F)
                {
                  v70 = v32;
                  v34 = swift_getFunctionTypeMetadata1();
                  v37 = type metadata accessor for AssumeEquatable(319, v34, v35, v36);
                  if (v38 <= 0x3F)
                  {
                    v71 = v37;
                    v39 = swift_getFunctionTypeMetadata1();
                    v42 = type metadata accessor for AssumeEquatable(319, v39, v40, v41);
                    if (v43 <= 0x3F)
                    {
                      v72 = v42;
                      v44 = swift_getFunctionTypeMetadata2();
                      v47 = type metadata accessor for AssumeEquatable(319, v44, v45, v46);
                      if (v48 <= 0x3F)
                      {
                        v73 = v47;
                        sub_1E67D3FB0(319);
                        if (v50 <= 0x3F)
                        {
                          v74 = v49;
                          v75 = v49;
                          swift_getFunctionTypeMetadata1();
                          v51 = sub_1E68B3750();
                          v54 = type metadata accessor for AssumeEquatable(319, v51, v52, v53);
                          if (v55 <= 0x3F)
                          {
                            v76 = v54;
                            v56 = sub_1E68B1950();
                            if (v57 <= 0x3F)
                            {
                              v77 = v56;
                              swift_cvw_initStructMetadataWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E686CFC4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v67 = *(sub_1E68B1820() - 8);
  v56 = a3[13];
  v66 = *(v56 - 8);
  v69 = *(v66 + 84);
  v4 = v69 - 1;
  if (!v69)
  {
    v4 = 0;
  }

  v60 = *(v67 + 84);
  v58 = v4;
  if (v4 <= v60)
  {
    v4 = *(v67 + 84);
  }

  v55 = a3[2];
  v64 = *(v55 - 8);
  v5 = *(v64 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 > v4)
  {
    v4 = v6;
  }

  v68 = v4 == 0;
  v61 = v4;
  v7 = v4 != 0;
  v8 = v4 - 1;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v11 = a3[15];
  v10 = a3[16];
  v65 = *(v11 - 8);
  v12 = *(v65 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  v59 = v13;
  v62 = v9;
  if (v9 > v13)
  {
    v13 = v9;
  }

  v14 = *(v10 - 8);
  v71 = v14;
  v57 = *(v14 + 84);
  if (v13 <= v57)
  {
    v15 = *(v14 + 84);
  }

  else
  {
    v15 = v13;
  }

  v16 = *(sub_1E68B1950() - 8);
  v17 = *(v67 + 64);
  v18 = *(v66 + 80);
  v19 = *(v64 + 80);
  v20 = *(v65 + 80);
  v21 = *(v14 + 80);
  v22 = *(v14 + 64);
  v23 = *(v16 + 80);
  if (v15 <= *(v16 + 84))
  {
    v24 = *(v16 + 84);
  }

  else
  {
    v24 = v15;
  }

  if (v24 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = v24;
  }

  if (v69)
  {
    v26 = *(v66 + 64);
  }

  else
  {
    v26 = *(v66 + 64) + 1;
  }

  result = a2;
  if (v5)
  {
    v28 = v68;
  }

  else
  {
    v28 = v68 + 1;
  }

  if (v12)
  {
    v29 = *(v65 + 64);
  }

  else
  {
    v29 = *(v65 + 64) + 1;
  }

  if (!a2)
  {
    return result;
  }

  v30 = v12;
  v31 = v17 + v18;
  v32 = v28 + *(v64 + 64) + ((v26 + v19 + ((v17 + v18) & ~v18)) & ~v19);
  v33 = v20 + 9;
  v34 = v29 + 7;
  v35 = v21 + 25;
  v36 = v22 + 7;
  v37 = v23 + 16;
  if (a2 > v25)
  {
    v38 = ((v37 + ((((((((((((((((((((v36 + ((v35 + ((((((v34 + ((v33 + ((v32 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + *(v16 + 64);
    v39 = 8 * v38;
    if (v38 > 3)
    {
      goto LABEL_37;
    }

    v41 = ((a2 - v25 + ~(-1 << v39)) >> v39) + 1;
    if (HIWORD(v41))
    {
      v40 = *(a1 + v38);
      if (v40)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v41 <= 0xFF)
      {
        if (v41 < 2)
        {
          goto LABEL_57;
        }

LABEL_37:
        v40 = *(a1 + v38);
        if (!*(a1 + v38))
        {
          goto LABEL_57;
        }

LABEL_44:
        v42 = (v40 - 1) << v39;
        if (v38 > 3)
        {
          v42 = 0;
        }

        if (v38)
        {
          if (v38 <= 3)
          {
            v43 = v38;
          }

          else
          {
            v43 = 4;
          }

          if (v43 > 2)
          {
            if (v43 == 3)
            {
              v44 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v44 = *a1;
            }
          }

          else if (v43 == 1)
          {
            v44 = *a1;
          }

          else
          {
            v44 = *a1;
          }
        }

        else
        {
          v44 = 0;
        }

        return v25 + (v44 | v42) + 1;
      }

      v40 = *(a1 + v38);
      if (*(a1 + v38))
      {
        goto LABEL_44;
      }
    }
  }

LABEL_57:
  if (v62 == v25)
  {
    if (v61 < 2)
    {
      return 0;
    }

    if (v60 == v61)
    {
      v47 = (*(v67 + 48))(a1);
    }

    else
    {
      v49 = (a1 + v31) & ~v18;
      if (v58 == v61)
      {
        v50 = (*(v66 + 48))(v49, v69, v56);
      }

      else
      {
        v50 = (*(v64 + 48))((v49 + v26 + v19) & ~v19, v5, v55);
      }

      if (v50 >= 2)
      {
        v47 = v50 - 1;
      }

      else
      {
        v47 = 0;
      }
    }

    goto LABEL_82;
  }

  v45 = ((a1 + v32 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v24 & 0x80000000) != 0)
  {
    v48 = (v45 + v33) & ~v20;
    if (v59 == v25)
    {
      if (v30 < 2)
      {
        return 0;
      }

      v47 = (*(v65 + 48))(v48, v30, v11);
LABEL_82:
      if (v47 >= 2)
      {
        return v47 - 1;
      }

      else
      {
        return 0;
      }
    }

    v51 = (v35 + ((((((v34 + v48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v21;
    if (v57 == v25)
    {
      v52 = *(v71 + 48);

      return v52(v51, v57, v10);
    }

    else
    {
      v53 = *(v16 + 48);
      v54 = (v37 + ((((((((((((((((((((v36 + v51) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v23;

      return v53(v54);
    }
  }

  else
  {
    v46 = *v45;
    if (*v45 >= 0xFFFFFFFF)
    {
      LODWORD(v46) = -1;
    }

    return (v46 + 1);
  }
}

void sub_1E686D668(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v61 = *(sub_1E68B1820() - 8);
  v60 = *(a4[13] - 8);
  v64 = *(v60 + 84);
  v5 = v64 - 1;
  if (!v64)
  {
    v5 = 0;
  }

  v6 = *(a4[2] - 8);
  v58 = *(v61 + 84);
  v56 = v5;
  if (v5 <= v58)
  {
    v5 = *(v61 + 84);
  }

  v63 = *(v6 + 84);
  v7 = v63 - 1;
  if (!v63)
  {
    v7 = 0;
  }

  v54 = v7;
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4[15] - 8);
  v68 = v10;
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v57 = v12;
  v59 = v9;
  if (v9 > v12)
  {
    v12 = v9;
  }

  v62 = *(a4[16] - 8);
  v55 = *(v62 + 84);
  if (v12 <= v55)
  {
    v13 = *(v62 + 84);
  }

  else
  {
    v13 = v12;
  }

  v14 = 0;
  v15 = *(sub_1E68B1950() - 8);
  v16 = *(v60 + 64);
  v17 = *(v61 + 64);
  v18 = v13 > *(v15 + 84);
  v19 = v13;
  v20 = *(v60 + 80);
  v21 = *(v6 + 80);
  v22 = *(v10 + 80);
  v23 = *(v10 + 64);
  v24 = *(v62 + 80);
  v25 = *(v62 + 64);
  v26 = *(v15 + 80);
  if (v18)
  {
    v27 = v19;
  }

  else
  {
    v27 = *(v15 + 84);
  }

  if (v27 <= 0x7FFFFFFF)
  {
    v28 = 0x7FFFFFFF;
  }

  else
  {
    v28 = v27;
  }

  if (!v64)
  {
    ++v16;
  }

  if (v63)
  {
    v29 = *(v6 + 64);
  }

  else
  {
    v29 = *(v6 + 64) + 1;
  }

  v30 = v17 + v20;
  v31 = ((v16 + v21 + ((v17 + v20) & ~v20)) & ~v21) + v29;
  if (v8)
  {
    v32 = ((v16 + v21 + ((v17 + v20) & ~v20)) & ~v21) + v29;
  }

  else
  {
    v32 = v31 + 1;
  }

  if (!v11)
  {
    ++v23;
  }

  v33 = v25 + 7;
  v34 = ((v26 + 16 + ((((((((((((((((((((v25 + 7 + ((v24 + 25 + ((((((v23 + 7 + ((v22 + 9 + ((v32 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26) + *(v15 + 64);
  if (a3 > v28)
  {
    if (v34 <= 3)
    {
      v35 = ((a3 - v28 + ~(-1 << (8 * v34))) >> (8 * v34)) + 1;
      if (HIWORD(v35))
      {
        v14 = 4;
      }

      else
      {
        if (v35 < 0x100)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35 >= 2)
        {
          v14 = v36;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  if (v28 < a2)
  {
    v37 = ~v28 + a2;
    if (v34 < 4)
    {
      v38 = (v37 >> (8 * v34)) + 1;
      if (v34)
      {
        v39 = v37 & ~(-1 << (8 * v34));
        bzero(a1, v34);
        if (v34 != 3)
        {
          if (v34 == 2)
          {
            *a1 = v39;
            if (v14 > 1)
            {
LABEL_91:
              if (v14 == 2)
              {
                *&a1[v34] = v38;
              }

              else
              {
                *&a1[v34] = v38;
              }

              return;
            }
          }

          else
          {
            *a1 = v37;
            if (v14 > 1)
            {
              goto LABEL_91;
            }
          }

          goto LABEL_88;
        }

        *a1 = v39;
        a1[2] = BYTE2(v39);
      }

      if (v14 > 1)
      {
        goto LABEL_91;
      }
    }

    else
    {
      bzero(a1, v34);
      *a1 = v37;
      v38 = 1;
      if (v14 > 1)
      {
        goto LABEL_91;
      }
    }

LABEL_88:
    if (v14)
    {
      a1[v34] = v38;
    }

    return;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v34] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_63;
    }

LABEL_62:
    if (!a2)
    {
      return;
    }

    goto LABEL_63;
  }

  if (v14 == 2)
  {
    *&a1[v34] = 0;
    goto LABEL_62;
  }

  *&a1[v34] = 0;
  if (!a2)
  {
    return;
  }

LABEL_63:
  if (v59 == v28)
  {
    if (a2 >= v8)
    {
      if (v31 <= 3)
      {
        v45 = ~(-1 << (8 * v31));
      }

      else
      {
        v45 = -1;
      }

      if (v31)
      {
        v46 = v45 & (a2 - v8);
        if (v31 <= 3)
        {
          v47 = v31;
        }

        else
        {
          v47 = 4;
        }

        bzero(a1, v31);
        if (v47 > 2)
        {
          if (v47 == 3)
          {
            *a1 = v46;
            a1[2] = BYTE2(v46);
          }

          else
          {
            *a1 = v46;
          }
        }

        else if (v47 == 1)
        {
          *a1 = v46;
        }

        else
        {
          *a1 = v46;
        }
      }
    }

    else
    {
      if (v58 == v8)
      {
        v40 = *(v61 + 56);
        v41 = a2 + 1;
        v42 = a1;
LABEL_103:

        v40(v42, v41);
        return;
      }

      v42 = (&a1[v30] & ~v20);
      if (v56 == v8)
      {
        v40 = *(v60 + 56);
        v41 = a2 + 2;
        goto LABEL_103;
      }

      v48 = (&v42[v16 + v21] & ~v21);
      if (a2 < v54)
      {
        v40 = *(v6 + 56);
        v41 = a2 + 2;
        v42 = (&v42[v16 + v21] & ~v21);
        goto LABEL_103;
      }

      if (v29 <= 3)
      {
        v51 = ~(-1 << (8 * v29));
      }

      else
      {
        v51 = -1;
      }

      if (v29)
      {
        v52 = v51 & (a2 - v54);
        if (v29 <= 3)
        {
          v53 = v29;
        }

        else
        {
          v53 = 4;
        }

        bzero(v48, v29);
        if (v53 > 2)
        {
          if (v53 == 3)
          {
            *v48 = v52;
            v48[2] = BYTE2(v52);
          }

          else
          {
            *v48 = v52;
          }
        }

        else if (v53 == 1)
        {
          *v48 = v52;
        }

        else
        {
          *v48 = v52;
        }
      }
    }
  }

  else
  {
    v43 = (&a1[v32 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v27 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v44 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v44 = a2 - 1;
      }

      *v43 = v44;
      return;
    }

    v42 = ((v43 + v22 + 9) & ~v22);
    if (v57 == v28)
    {
      if (v11 < 2)
      {
        return;
      }

      v40 = *(v68 + 56);
      v41 = a2 + 1;
      goto LABEL_103;
    }

    v42 = ((v24 + 25 + (((((&v42[v23 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v24);
    if (v55 == v28)
    {
      v40 = *(v62 + 56);
      v41 = a2;
      goto LABEL_103;
    }

    v49 = v26 + 16 + (((((((((((((((((((&v42[v33] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    v50 = *(v15 + 56);

    v50(v49 & ~v26, a2);
  }
}

uint64_t sub_1E686DEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = v2[3];
  v37 = v2[5];
  v38 = v2[4];
  v35 = v2[7];
  v36 = v2[6];
  v33 = v2[9];
  v34 = v2[8];
  v31 = v2[11];
  v32 = v2[10];
  v29 = v2[13];
  v30 = v2[12];
  v27 = v2[15];
  v28 = v2[14];
  v25 = v2[17];
  v26 = v2[16];
  v23 = v2[19];
  v24 = v2[18];
  v3 = v2[21];
  v22 = v2[20];
  v4 = v2[22];
  v5 = v2[23];
  v6 = v2[24];
  v7 = v2[25];
  v9 = v2[26];
  v8 = v2[27];
  v11 = v2[28];
  v10 = v2[29];
  v43[0] = v2[2];
  v40 = v43[0];
  v43[1] = v39;
  v43[2] = v38;
  v43[3] = v37;
  v43[4] = v36;
  v43[5] = v35;
  v43[6] = v34;
  v43[7] = v33;
  v43[8] = v32;
  v43[9] = v31;
  v43[10] = v30;
  v43[11] = v29;
  v43[12] = v28;
  v43[13] = v27;
  v43[14] = v26;
  v43[15] = v25;
  v43[16] = v24;
  v43[17] = v23;
  v43[18] = v22;
  v43[19] = v3;
  v43[20] = v4;
  v43[21] = v5;
  v43[22] = v6;
  v43[23] = v7;
  v43[24] = v9;
  v43[25] = v8;
  v43[26] = v11;
  v43[27] = v10;
  type metadata accessor for HorizontalGridView(0, v43);
  *&v21 = v9;
  *(&v21 + 1) = v8;
  *&v20 = v6;
  *(&v20 + 1) = v7;
  *&v19 = v4;
  *(&v19 + 1) = v5;
  *&v18 = v22;
  *(&v18 + 1) = v3;
  *(&v17 + 1) = v25;
  *(&v16 + 1) = v27;
  *&v17 = v26;
  *(&v15 + 1) = v29;
  *&v16 = v28;
  *(&v14 + 1) = v31;
  *&v15 = v30;
  *(&v13 + 1) = v33;
  *&v14 = v32;
  *&v13 = v34;
  return sub_1E686C738(a1, v40, v39, v38, v37, v36, v35, a2, v13, v14, v15, v16, v17, v24, v23, v18, v19, v20, v21, v11, v10);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 192);
  v4 = *(v0 + 232);
  v5 = *(v0 + 32);
  v31 = *(v0 + 16);
  v30 = v31;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v32 = v5;
  v33 = v6;
  v8 = *(v0 + 80);
  v34 = v7;
  v35 = v8;
  v36 = v1;
  v37 = *(v0 + 104);
  v29 = v37;
  v38 = v2;
  v26 = *(v0 + 144);
  v28 = *(v0 + 128);
  v39 = v28;
  v40 = v26;
  v9 = *(v0 + 176);
  v41 = *(v0 + 160);
  v42 = v9;
  v44 = *(v0 + 200);
  v27 = v44;
  v45 = *(v0 + 216);
  v43 = v3;
  v46 = v4;
  v10 = type metadata accessor for HorizontalGridView(0, &v31);
  v11 = *(*(v10 - 1) + 80);
  v12 = (v11 + 240) & ~v11;
  v13 = v0 + v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = vzip1q_s64(v30, v29);
  *&v32 = AssociatedConformanceWitness;
  *(&v32 + 1) = v27;
  v15 = type metadata accessor for CanvasSectionHeader(0, &v31);
  if (!(*(*(v15 - 8) + 48))(v0 + v12, 1, v15))
  {
    v16 = sub_1E68B1820();
    (*(*(v16 - 8) + 8))(v0 + v12, v16);
    v17 = *(v15 + 52);
    v18 = *(v29.i64[0] - 8);
    if (!(*(v18 + 48))(v13 + v17, 1, v29.i64[0]))
    {
      (*(v18 + 8))(v13 + v17, v29.i64[0]);
    }

    v19 = *(v15 + 56);
    v20 = *(v30.i64[0] - 8);
    if (!(*(v20 + 48))(v13 + v19, 1, v30.i64[0]))
    {
      (*(v20 + 8))(v13 + v19, v30.i64[0]);
    }
  }

  v21 = v10[63];
  v22 = *(v2 - 8);
  if (!(*(v22 + 48))(v13 + v21, 1, v2))
  {
    (*(v22 + 8))(v13 + v21, v2);
  }

  (*(*(v28 - 8) + 8))(v13 + v10[68]);

  if (*(v13 + v10[76]))
  {
  }

  if (*(v13 + v10[77]))
  {
  }

  if (*(v13 + v10[78]))
  {
  }

  v23 = v10[79];
  v24 = sub_1E68B1950();
  (*(*(v24 - 8) + 8))(v13 + v23, v24);
  return swift_deallocObject();
}

uint64_t sub_1E686E644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = v3[3];
  v31 = v3[5];
  v32 = v3[4];
  v29 = v3[7];
  v30 = v3[6];
  v27 = v3[9];
  v28 = v3[8];
  v25 = v3[11];
  v26 = v3[10];
  v23 = v3[13];
  v24 = v3[12];
  v21 = v3[15];
  v22 = v3[14];
  v19 = v3[17];
  v20 = v3[16];
  v17 = v3[19];
  v18 = v3[18];
  v4 = v3[21];
  v16 = v3[20];
  v5 = v3[22];
  v6 = v3[23];
  v7 = v3[24];
  v8 = v3[25];
  v9 = v3[26];
  v10 = v3[27];
  v38[0] = v3[2];
  v34 = v38[0];
  v38[1] = v33;
  v38[2] = v32;
  v38[3] = v31;
  v38[4] = v30;
  v38[5] = v29;
  v38[6] = v28;
  v38[7] = v27;
  v38[8] = v26;
  v38[9] = v25;
  v38[10] = v24;
  v38[11] = v23;
  v38[12] = v22;
  v38[13] = v21;
  v38[14] = v20;
  v38[15] = v19;
  v38[16] = v18;
  v38[17] = v17;
  v38[18] = v16;
  v38[19] = v4;
  v38[20] = v5;
  v38[21] = v6;
  v38[22] = v7;
  v38[23] = v8;
  v38[24] = v9;
  v38[25] = v10;
  v11 = v3[29];
  v39 = v3[28];
  v12 = v39;
  v40 = v11;
  v13 = *(type metadata accessor for HorizontalGridView(0, v38) - 8);
  *(&v15 + 1) = v27;
  *&v15 = v28;
  return sub_1E6869760(a1, a2, v3 + ((*(v13 + 80) + 240) & ~*(v13 + 80)), v34, v33, v32, v31, v30, a3, v29, v15, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v4, v5, v6, v7, v8, v9, v10, v12, v11);
}

uint64_t (*sub_1E686E7DC())(uint64_t a1)
{
  v30 = v0[3];
  v28 = v0[5];
  v29 = v0[4];
  v26 = v0[7];
  v27 = v0[6];
  v24 = v0[9];
  v25 = v0[8];
  v22 = v0[11];
  v23 = v0[10];
  v20 = v0[13];
  v21 = v0[12];
  v18 = v0[15];
  v19 = v0[14];
  v16 = v0[17];
  v17 = v0[16];
  v1 = v0[18];
  v14 = v0[20];
  v15 = v0[19];
  v13 = v0[21];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[29];
  v32[0] = v0[2];
  v31 = v32[0];
  v32[1] = v30;
  v32[2] = v29;
  v32[3] = v28;
  v32[4] = v27;
  v32[5] = v26;
  v32[6] = v25;
  v32[7] = v24;
  v32[8] = v23;
  v32[9] = v22;
  v32[10] = v21;
  v32[11] = v20;
  v32[12] = v19;
  v32[13] = v18;
  v32[14] = v17;
  v32[15] = v16;
  v32[16] = v1;
  v32[17] = v15;
  v32[18] = v14;
  v32[19] = v13;
  v32[20] = v2;
  v32[21] = v3;
  v32[22] = v4;
  v32[23] = v5;
  v32[24] = v6;
  v32[25] = v7;
  v32[26] = v8;
  v32[27] = v9;
  v10 = *(type metadata accessor for HorizontalGridView(0, v32) - 8);
  v11 = (*(v10 + 80) + 240) & ~*(v10 + 80);
  return sub_1E686B70C(v0 + v11, v0 + ((v11 + *(v10 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v1, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E686E9E0(uint64_t a1, uint64_t (*a2)(uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = *(v2 + 3);
  v30 = *(v2 + 5);
  v31 = *(v2 + 4);
  v28 = *(v2 + 7);
  v29 = *(v2 + 6);
  v26 = *(v2 + 9);
  v27 = *(v2 + 8);
  v24 = *(v2 + 11);
  v25 = *(v2 + 10);
  v22 = *(v2 + 13);
  v23 = *(v2 + 12);
  v20 = *(v2 + 15);
  v21 = *(v2 + 14);
  v18 = *(v2 + 17);
  v19 = *(v2 + 16);
  v16 = *(v2 + 19);
  v17 = *(v2 + 18);
  v3 = *(v2 + 21);
  v15 = *(v2 + 20);
  v4 = *(v2 + 22);
  v5 = *(v2 + 23);
  v6 = *(v2 + 24);
  v7 = *(v2 + 25);
  v8 = *(v2 + 26);
  v9 = *(v2 + 27);
  v36[0] = *(v2 + 2);
  v33 = v36[0];
  v36[1] = v32;
  v36[2] = v31;
  v36[3] = v30;
  v36[4] = v29;
  v36[5] = v28;
  v36[6] = v27;
  v36[7] = v26;
  v36[8] = v25;
  v36[9] = v24;
  v36[10] = v23;
  v36[11] = v22;
  v36[12] = v21;
  v36[13] = v20;
  v36[14] = v19;
  v36[15] = v18;
  v36[16] = v17;
  v36[17] = v16;
  v36[18] = v15;
  v36[19] = v3;
  v36[20] = v4;
  v36[21] = v5;
  v36[22] = v6;
  v36[23] = v7;
  v36[24] = v8;
  v36[25] = v9;
  v10 = *(v2 + 29);
  v37 = *(v2 + 28);
  v11 = v37;
  v38 = v10;
  v12 = *(type metadata accessor for HorizontalGridView(0, v36) - 8);
  v13 = (*(v12 + 80) + 240) & ~*(v12 + 80);
  return a2(a1, &v2[v13], *&v2[(*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8], v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t objectdestroy_26Tm()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 192);
  v4 = *(v0 + 232);
  v5 = *(v0 + 32);
  v31 = *(v0 + 16);
  v30 = v31;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v32 = v5;
  v33 = v6;
  v8 = *(v0 + 80);
  v34 = v7;
  v35 = v8;
  v36 = v1;
  v37 = *(v0 + 104);
  v29 = v37;
  v38 = v2;
  v26 = *(v0 + 144);
  v28 = *(v0 + 128);
  v39 = v28;
  v40 = v26;
  v9 = *(v0 + 176);
  v41 = *(v0 + 160);
  v42 = v9;
  v44 = *(v0 + 200);
  v27 = v44;
  v45 = *(v0 + 216);
  v43 = v3;
  v46 = v4;
  v10 = type metadata accessor for HorizontalGridView(0, &v31);
  v11 = *(*(v10 - 1) + 80);
  v12 = (v11 + 240) & ~v11;
  v13 = v0 + v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = vzip1q_s64(v30, v29);
  *&v32 = AssociatedConformanceWitness;
  *(&v32 + 1) = v27;
  v15 = type metadata accessor for CanvasSectionHeader(0, &v31);
  if (!(*(*(v15 - 8) + 48))(v0 + v12, 1, v15))
  {
    v16 = sub_1E68B1820();
    (*(*(v16 - 8) + 8))(v0 + v12, v16);
    v17 = *(v15 + 52);
    v18 = *(v29.i64[0] - 8);
    if (!(*(v18 + 48))(v13 + v17, 1, v29.i64[0]))
    {
      (*(v18 + 8))(v13 + v17, v29.i64[0]);
    }

    v19 = *(v15 + 56);
    v20 = *(v30.i64[0] - 8);
    if (!(*(v20 + 48))(v13 + v19, 1, v30.i64[0]))
    {
      (*(v20 + 8))(v13 + v19, v30.i64[0]);
    }
  }

  v21 = v10[63];
  v22 = *(v2 - 8);
  if (!(*(v22 + 48))(v13 + v21, 1, v2))
  {
    (*(v22 + 8))(v13 + v21, v2);
  }

  (*(*(v28 - 8) + 8))(v13 + v10[68]);

  if (*(v13 + v10[76]))
  {
  }

  if (*(v13 + v10[77]))
  {
  }

  if (*(v13 + v10[78]))
  {
  }

  v23 = v10[79];
  v24 = sub_1E68B1950();
  (*(*(v24 - 8) + 8))(v13 + v23, v24);
  return swift_deallocObject();
}

void (*sub_1E686F08C(uint64_t (*a1)(uint64_t)))(uint64_t)
{
  v40 = v1[4];
  v41 = v1[3];
  v38 = v1[6];
  v39 = v1[5];
  v36 = v1[8];
  v37 = v1[7];
  v34 = v1[10];
  v35 = v1[9];
  v32 = v1[12];
  v33 = v1[11];
  v30 = v1[14];
  v31 = v1[13];
  v28 = v1[16];
  v29 = v1[15];
  v26 = v1[18];
  v27 = v1[17];
  v2 = v1[21];
  v24 = v1[20];
  v25 = v1[19];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  v10 = v1[28];
  v9 = v1[29];
  v44[0] = v1[2];
  v42 = v44[0];
  v44[1] = v41;
  v44[2] = v40;
  v44[3] = v39;
  v44[4] = v38;
  v44[5] = v37;
  v44[6] = v36;
  v44[7] = v35;
  v44[8] = v34;
  v44[9] = v33;
  v44[10] = v32;
  v44[11] = v31;
  v44[12] = v30;
  v44[13] = v29;
  v44[14] = v28;
  v44[15] = v27;
  v44[16] = v26;
  v44[17] = v25;
  v44[18] = v24;
  v44[19] = v2;
  v44[20] = v3;
  v44[21] = v4;
  v44[22] = v5;
  v44[23] = v6;
  v44[24] = v7;
  v44[25] = v8;
  v44[26] = v10;
  v44[27] = v9;
  v11 = *(type metadata accessor for HorizontalGridView(0, v44) - 8);
  v12 = (*(v11 + 80) + 240) & ~*(v11 + 80);
  *(&v23 + 1) = v8;
  *(&v22 + 1) = v6;
  *&v23 = v7;
  *(&v21 + 1) = v4;
  *&v22 = v5;
  *(&v20 + 1) = v2;
  *&v21 = v3;
  *(&v19 + 1) = v25;
  *&v20 = v24;
  *(&v18 + 1) = v27;
  *&v19 = v26;
  *(&v17 + 1) = v29;
  *&v18 = v28;
  *(&v16 + 1) = v31;
  *&v17 = v30;
  *(&v15 + 1) = v33;
  *&v16 = v32;
  *(&v14 + 1) = v35;
  *&v15 = v34;
  *&v14 = v36;
  return sub_1E686BC88(v1 + v12, *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v42, v41, v40, v39, v38, v37, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v10, v9, a1);
}

uint64_t sub_1E686F250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a1;
  v18 = a2;
  v19 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098400, &qword_1E68C5250);
  v6 = sub_1E68B1E40();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - v9;
  v22 = sub_1E686F4B8;
  v23 = 0;
  sub_1E68B2E80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099CD8, &qword_1E68C5258);
  sub_1E673F530(&qword_1ED099CE0, &qword_1ED099CD8, &qword_1E68C5258, MEMORY[0x1E697E378]);
  v11 = a4;
  sub_1E68B2760();
  v12 = swift_allocObject();
  v13 = v18;
  *(v12 + 16) = v17;
  *(v12 + 24) = v13;
  v14 = sub_1E673F530(&qword_1ED098418, &qword_1ED098400, &qword_1E68C5250, MEMORY[0x1E697F940]);
  v20 = v11;
  v21 = v14;

  swift_getWitnessTable();
  sub_1E686F524();
  sub_1E67BF6D4();
  sub_1E68B28D0();

  return (*(v7 + 8))(v10, v6);
}

void sub_1E686F4B8(uint64_t *a2@<X8>)
{
  v3 = sub_1E68B2B20();
  sub_1E68B1C60();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

unint64_t sub_1E686F524()
{
  result = qword_1ED099CE8;
  if (!qword_1ED099CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CE8);
  }

  return result;
}

uint64_t sub_1E686F57C()
{
  sub_1E68771E0();
}

uint64_t sub_1E686F5A4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t *LazyCanvasItemPlaceholderFetcher.__allocating_init(batchSize:fetcherProvider:fetchItemForPlaceholders:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1E6877214(a1, a2, a3, a4);

  return v8;
}

uint64_t *LazyCanvasItemPlaceholderFetcher.init(batchSize:fetcherProvider:fetchItemForPlaceholders:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1E6877214(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1E686F69C(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = *v1;
  v2[31] = *v1;
  v4 = *(v3 + 80);
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E686F794, v1, 0);
}

uint64_t sub_1E686F794()
{
  v1 = sub_1E68B1990();
  swift_beginAccess();

  v2 = sub_1E68B3380();

  if (v1 >= v2)
  {
    sub_1E68438C8();
    swift_allocError();
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = 0;
    *(v23 + 24) = 1;
    swift_willThrow();
    goto LABEL_13;
  }

  v3 = v0[30];
  sub_1E68B1990();
  swift_beginAccess();

  sub_1E68B33F0();

  result = sub_1E68B1980();
  v5 = *(v3 + 120);
  if (!v5)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (result == 0x8000000000000000 && v5 == -1)
  {
    goto LABEL_23;
  }

  v6 = result / v5 * v5;
  if ((result / v5 * v5) >> 64 != v6 >> 63)
  {
    goto LABEL_20;
  }

  v7 = __OFADD__(v6, v5);
  v8 = v6 + v5;
  if (v7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v34 = v8;
  v35 = v6;
  v9 = *(v0[31] + 88);
  (*(v9 + 128))(v0[32], v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = swift_getAssociatedTypeWitness();
  v36 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v40 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = swift_getAssociatedConformanceWitness();
  v37 = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v0[2] = AssociatedTypeWitness;
  v0[3] = v38;
  v0[4] = v36;
  v0[5] = v10;
  v0[6] = v11;
  v0[7] = v40;
  v0[8] = AssociatedConformanceWitness;
  v0[9] = v39;
  v0[10] = v37;
  v0[11] = v12;
  v42 = v14;
  v44 = v13;
  v0[12] = v13;
  v0[13] = v14;
  v0[14] = v15;
  v0[15] = v16;
  type metadata accessor for LazyCanvasItemDescriptor(0, (v0 + 2));
  v17 = sub_1E68B3380();

  v18 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v18 >= v34)
  {
    v18 = v34;
  }

  if (v18 < v35)
  {
    v20 = v0[33];
    v19 = v0[34];
    v21 = v0[32];
    sub_1E68438C8();
    swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = 0;
    *(v22 + 24) = 1;
    swift_willThrow();
    (*(v20 + 8))(v19, v21);
LABEL_13:

    v24 = v0[1];

    return v24();
  }

  v25 = v0[34];
  v26 = v0[32];
  v27 = v0[30];
  v0[26] = v35;
  v0[27] = v18;
  v28 = swift_task_alloc();
  v28[2] = v26;
  v28[3] = v9;
  v28[4] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0983A8, &qword_1E68BBA18);
  v0[16] = v10;
  v0[17] = v12;
  v0[18] = v44;
  v0[19] = v42;
  type metadata accessor for CanvasItemPlaceholder(0, (v0 + 16));
  sub_1E6877538();
  v29 = sub_1E68B32E0();

  v30 = v27[19];
  v31 = v27[20];
  __swift_project_boxed_opaque_existential_1(v27 + 16, v30);
  v0[28] = v29;
  sub_1E68B33B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v32 = sub_1E68B3640();
  v0[35] = v32;
  v45 = (*(v31 + 120) + **(v31 + 120));
  v33 = swift_task_alloc();
  v0[36] = v33;
  *v33 = v0;
  v33[1] = sub_1E686FE34;

  return v45(v32, v30, v31);
}

uint64_t sub_1E686FE34()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = sub_1E686FFDC;
  }

  else
  {
    v5 = *(v2 + 240);

    v4 = sub_1E686FF5C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E686FF5C()
{
  (*(v0[33] + 8))(v0[34], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E686FFDC()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[33];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E687006C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a1;
  v31 = a2;
  v32 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v33 = AssociatedTypeWitness;
  v34 = v27;
  v35 = v23;
  v36 = v7;
  v10 = v22;
  v27 = v7;
  v37 = v8;
  v38 = v26;
  v39 = AssociatedConformanceWitness;
  v40 = v25;
  v41 = v24;
  v42 = v9;
  AssociatedTypeWitness = swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = v9;
  v43 = v22;
  v44 = AssociatedTypeWitness;
  v45 = swift_getAssociatedConformanceWitness();
  v46 = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for LazyCanvasItemDescriptor(0, &v33);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v22 - v15;
  (*(a4 + 128))(a3, a4, v14);
  sub_1E68B33F0();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v27;
    v34 = AssociatedConformanceWitness;
    v35 = v10;
    v36 = AssociatedTypeWitness;
    v17 = type metadata accessor for CanvasItemPlaceholder(0, &v33);
    v18 = *(v17 - 8);
    v19 = v32;
    (*(v18 + 32))(v32, v16, v17);
    return (*(v18 + 56))(v19, 0, 1, v17);
  }

  else
  {
    v33 = v27;
    v34 = AssociatedConformanceWitness;
    v35 = v10;
    v36 = AssociatedTypeWitness;
    v21 = type metadata accessor for CanvasItemPlaceholder(0, &v33);
    (*(*(v21 - 8) + 56))(v32, 1, 1, v21);
    return (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_1E68704C0(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *v1;
  v4 = sub_1E68B19A0();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[21] = v5;
  *v5 = v2;
  v5[1] = sub_1E68705F0;

  return sub_1E686F69C(a1);
}

uint64_t sub_1E68705F0()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    v3 = v2[15];

    return MEMORY[0x1EEE6DFA0](sub_1E6870738, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1E6870738()
{
  *(v0 + 96) = *(v0 + 176);
  MEMORY[0x1E6952820]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AC0, &unk_1E68B7F50);
  if (swift_dynamicCast() && *(v0 + 40) == 1 && !(*(v0 + 24) | *(v0 + 32) | *(v0 + 16)))
  {
    v3 = *(v0 + 120);
    MEMORY[0x1E6952810](*(v0 + 176));
    swift_beginAccess();
    *(v0 + 104) = *(v3 + 112);
    sub_1E68B33B0();
    swift_getWitnessTable();
    if (sub_1E68B36E0())
    {
      v5 = *(v0 + 152);
      v4 = *(v0 + 160);
      v6 = *(v0 + 136);
      v7 = *(v0 + 144);
      (*(v7 + 16))(v5, *(v0 + 112), v6);
      swift_beginAccess();
      sub_1E6875E14(v4, v5);
      (*(v7 + 8))(v4, v6);
      swift_endAccess();
      sub_1E68438C8();
      swift_allocError();
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 1;
    }

    else
    {
      sub_1E68438C8();
      swift_allocError();
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
    }

    *(v8 + 24) = 1;
    swift_willThrow();
    MEMORY[0x1E6952810](*(v0 + 96));
  }

  else
  {
    MEMORY[0x1E6952810](*(v0 + 96));
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6870998()
{
  *(v1 + 104) = v0;
  *(v1 + 112) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1E68709E0, v0, 0);
}

uint64_t sub_1E68709E0()
{
  v1 = *(v0 + 104);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v6 = (*(v3 + 128) + **(v3 + 128));
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_1E6870B08;

  return v6(v2, v3);
}

uint64_t sub_1E6870B08()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 104);

    return MEMORY[0x1EEE6DFA0](sub_1E6870C50, v6, 0);
  }
}

uint64_t sub_1E6870C50()
{
  v1 = v0[13];
  v2 = v0[14];
  swift_beginAccess();
  v0[12] = *(v1 + 112);
  v3 = swift_task_alloc();
  v4 = *(v2 + 80);
  *(v3 + 16) = v4;
  v5 = *(v2 + 88);
  *(v3 + 24) = v5;
  sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();

  v0[2] = AssociatedTypeWitness;
  v0[3] = AssociatedConformanceWitness;
  v0[4] = v8;
  v0[5] = v9;
  type metadata accessor for CanvasItemPlaceholder(255, (v0 + 2));
  sub_1E68B33B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_1E68B3300();

  v11 = sub_1E68B3380();
  v12 = *(v1 + 120);
  if (v12)
  {
    v13 = v0[13];
    v24 = v13;
    v0[9] = 0;
    v0[10] = v11;
    v0[11] = v12;
    v14 = swift_task_alloc();
    *(v14 + 16) = v10;
    *(v14 + 24) = v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099CF0, &qword_1E68C5298);
    swift_getWitnessTable();
    v16 = sub_1E68B3630();
    v17 = sub_1E673F530(&qword_1ED099CF8, &qword_1ED099CF0, &qword_1E68C5298, MEMORY[0x1E69E7C28]);
    v19 = sub_1E68718EC(sub_1E6878298, v14, v15, v16, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
    v0[17] = v19;

    type metadata accessor for LazyCanvasItemPlaceholderFetcher(255, v4, v5, v20);
    swift_getWitnessTable();
    v21 = swift_task_alloc();
    v0[18] = v21;
    *(v21 + 16) = v19;
    *(v21 + 24) = v24;
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_1E6871024;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1E6871024()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_1E6871154;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1E68782B0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E6871154()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E68711C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v32 = (*(a2 + 128))(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  v3 = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  v18 = AssociatedTypeWitness;
  v19 = v12;
  v20 = v10;
  v21 = v3;
  v22 = v4;
  v23 = v14;
  v24 = AssociatedConformanceWitness;
  v25 = v13;
  v26 = v11;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v30 = swift_getAssociatedConformanceWitness();
  v31 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LazyCanvasItemDescriptor(255, &v18);
  sub_1E68B33B0();
  v18 = v3;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  type metadata accessor for CanvasItemPlaceholder(0, &v18);
  swift_getWitnessTable();
  v8 = sub_1E68B32E0();

  *a3 = v8;
  return result;
}

uint64_t sub_1E68714E0@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v29 = AssociatedTypeWitness;
  v30 = v22;
  v31 = v20;
  v32 = v4;
  v33 = v5;
  v34 = v24;
  v35 = AssociatedConformanceWitness;
  v36 = v23;
  v37 = v21;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  v41 = swift_getAssociatedConformanceWitness();
  v42 = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for LazyCanvasItemDescriptor(0, &v29);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v20 - v13;
  (*(v10 + 16))(&v20 - v13, v27, v9, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v4;
    v30 = v6;
    v31 = v7;
    v32 = v8;
    v15 = type metadata accessor for CanvasItemPlaceholder(0, &v29);
    v16 = *(v15 - 8);
    v17 = v28;
    (*(v16 + 32))(v28, v14, v15);
    return (*(v16 + 56))(v17, 0, 1, v15);
  }

  else
  {
    v29 = v4;
    v30 = v6;
    v31 = v7;
    v32 = v8;
    v19 = type metadata accessor for CanvasItemPlaceholder(0, &v29);
    (*(*(v19 - 8) + 56))(v28, 1, 1, v19);
    return (*(v10 + 8))(v14, v9);
  }
}

uint64_t sub_1E68718EC(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a8;
  v9 = v8;
  v69 = a2;
  v70 = a4;
  v68 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v52 = &v51 - v15;
  v55 = a5;
  v53 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v65 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v66 = &v51 - v21;
  v22 = sub_1E68B3750();
  v56 = *(v22 - 8);
  v57 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v59 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v51 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v58 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v64 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a6;
  v71 = swift_getAssociatedTypeWitness();
  v60 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v38);
  v40 = &v51 - v39;
  v41 = sub_1E68B32D0();
  v72 = sub_1E68B38E0();
  v67 = sub_1E68B38F0();
  sub_1E68B38C0();
  (*(v64 + 2))(v37, v61, a3);
  v70 = v40;
  v64 = a3;
  result = sub_1E68B32C0();
  if (v41 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v41)
  {
    v43 = (v63 + 48);
    v44 = (v63 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1E68B3780();
      result = (*v43)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v68(v28, v66);
      if (v9)
      {
        (*(v60 + 8))(v70, v71);

        (*(v53 + 32))(v54, v66, v55);
        return (*v44)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v44)(v28, AssociatedTypeWitness);
      sub_1E68B38D0();
      if (!--v41)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v45 = v59;
  sub_1E68B3780();
  v46 = v45;
  v47 = v63;
  v48 = *(v63 + 48);
  v66 = (v63 + 48);
  v64 = v48;
  if (v48(v45, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v60 + 8))(v70, v71);
    (*(v56 + 8))(v46, v57);
    return v72;
  }

  else
  {
    v63 = *(v47 + 32);
    v49 = (v47 + 8);
    v50 = v52;
    while (1)
    {
      (v63)(v50, v46, AssociatedTypeWitness);
      v68(v50, v65);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v49)(v50, AssociatedTypeWitness);
      sub_1E68B38D0();
      sub_1E68B3780();
      if (v64(v46, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v49)(v50, AssociatedTypeWitness);
    (*(v60 + 8))(v70, v71);

    return (*(v53 + 32))(v54, v65, v55);
  }
}

uint64_t sub_1E6871FE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[13] = a2;
  v4[16] = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E68720B8, a4, 0);
}

uint64_t sub_1E68720B8()
{
  v1 = *(v0 + 128);
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v30 = v3;
  v31 = v2;
  v7 = swift_getAssociatedConformanceWitness();
  *(v0 + 16) = AssociatedTypeWitness;
  *(v0 + 24) = AssociatedConformanceWitness;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  type metadata accessor for CanvasItemPlaceholder(255, v0 + 16);
  swift_getWitnessTable();
  sub_1E68B3630();
  if (sub_1E68B3380())
  {
    v9 = 0;
    v33 = **(v0 + 104);
    v32 = *(v0 + 112) + 32;
    do
    {
      v12 = sub_1E68B3370();
      sub_1E68B3340();
      if (v12)
      {
        v13 = *(v32 + 8 * v9);

        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = sub_1E68B3840();
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      v34 = v14;
      v16 = *(v0 + 136);
      v15 = *(v0 + 144);
      v17 = *(v0 + 120);
      v18 = sub_1E68B3460();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v15, 1, 1, v18);
      v20 = swift_allocObject();
      v20[2] = 0;
      v21 = v20 + 2;
      v20[3] = 0;
      v20[4] = v17;
      v20[5] = v13;
      sub_1E678271C(v15, v16);
      LODWORD(v15) = (*(v19 + 48))(v16, 1, v18);

      v22 = *(v0 + 136);
      if (v15 == 1)
      {
        sub_1E6744A10(*(v0 + 136), &qword_1ED097A10, &qword_1E68B7DE0);
        if (!*v21)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1E68B3450();
        (*(v19 + 8))(v22, v18);
        if (!*v21)
        {
LABEL_11:
          v23 = 0;
          v25 = 0;
          goto LABEL_12;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = sub_1E68B3400();
      v25 = v24;
      swift_unknownObjectRelease();
LABEL_12:

      if (v25 | v23)
      {
        v10 = v0 + 48;
        *(v0 + 48) = 0;
        *(v0 + 56) = 0;
        *(v0 + 64) = v23;
        *(v0 + 72) = v25;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v0 + 144);
      *(v0 + 80) = 1;
      *(v0 + 88) = v10;
      *(v0 + 96) = v33;
      swift_task_create();

      sub_1E6744A10(v11, &qword_1ED097A10, &qword_1E68B7DE0);
      ++v9;
    }

    while (v34 != sub_1E68B3380());
  }

  v26 = *(v0 + 120);
  type metadata accessor for LazyCanvasItemPlaceholderFetcher(255, v30, v31, v8);
  WitnessTable = swift_getWitnessTable();
  v28 = swift_task_alloc();
  *(v0 + 152) = v28;
  *v28 = v0;
  v28[1] = sub_1E68782B4;

  return sub_1E687269C(v26, WitnessTable);
}

uint64_t sub_1E687254C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E687256C, 0, 0);
}

uint64_t sub_1E687256C()
{
  v1 = v0[2];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 120) + **(v3 + 120));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E6878294;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_1E687269C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1E68B3400();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E6872730, v4, v6);
}

uint64_t sub_1E6872730()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AC0, &unk_1E68B7F50);
  if (sub_1E68B3530())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D18, &qword_1E68C5478);
    *v3 = v0;
    v3[1] = sub_1E6872868;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return MEMORY[0x1EEE6DAC8](v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_1E6872868()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1E6872AB4;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1E6872984;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E6872984()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_1E68B3530())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D18, &qword_1E68C5478);
  *v4 = v0;
  v4[1] = sub_1E6872868;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 96, v7, v6, v5);
}

uint64_t sub_1E6872AB4()
{
  v1 = v0[11];
  if (v0[9])
  {
    MEMORY[0x1E6952810](v0[11]);
    v1 = v0[9];
  }

  if (sub_1E68B3530())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D18, &qword_1E68C5478);
    *v4 = v0;
    v4[1] = sub_1E6872868;
    v6 = v0[3];
    v7 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 12, v7, v6, v5);
  }
}

uint64_t sub_1E6872BF0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6872C38, v1, 0);
}

uint64_t sub_1E6872C38()
{
  v1 = v0[14];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 136) + **(v3 + 136));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1E6872D68;
  v5 = v0[13];

  return v7(v5, v2, v3);
}

uint64_t sub_1E6872D68()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 112);

    return MEMORY[0x1EEE6DFA0](sub_1E6872EB0, v6, 0);
  }
}

uint64_t sub_1E6872EB0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  swift_beginAccess();
  v0[12] = *(v1 + 112);
  v4 = swift_task_alloc();
  v5 = *(v2 + 80);
  v4[2] = v5;
  v6 = *(v2 + 88);
  v4[3] = v6;
  v4[4] = v3;
  sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();

  v0[2] = AssociatedTypeWitness;
  v0[3] = AssociatedConformanceWitness;
  v0[4] = v9;
  v0[5] = v10;
  type metadata accessor for CanvasItemPlaceholder(255, (v0 + 2));
  sub_1E68B33B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = sub_1E68B3300();

  v12 = sub_1E68B3380();
  v13 = *(v1 + 120);
  if (v13)
  {
    v14 = v0[14];
    v25 = v14;
    v0[9] = 0;
    v0[10] = v12;
    v0[11] = v13;
    v15 = swift_task_alloc();
    *(v15 + 16) = v11;
    *(v15 + 24) = v14;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099CF0, &qword_1E68C5298);
    swift_getWitnessTable();
    v17 = sub_1E68B3630();
    v18 = sub_1E673F530(&qword_1ED099CF8, &qword_1ED099CF0, &qword_1E68C5298, MEMORY[0x1E69E7C28]);
    v20 = sub_1E68718EC(sub_1E68776CC, v15, v16, v17, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
    v0[18] = v20;

    type metadata accessor for LazyCanvasItemPlaceholderFetcher(255, v5, v6, v21);
    swift_getWitnessTable();
    v22 = swift_task_alloc();
    v0[19] = v22;
    *(v22 + 16) = v20;
    *(v22 + 24) = v25;
    v23 = swift_task_alloc();
    v0[20] = v23;
    *v23 = v0;
    v23[1] = sub_1E6873288;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1E6873288()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_1E68733D0;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1E68733B8;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E68733D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E687343C@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v33 = (*(a3 + 128))(a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v19 = AssociatedTypeWitness;
  v20 = v13;
  v21 = v11;
  v22 = v4;
  v23 = v5;
  v24 = v15;
  v25 = AssociatedConformanceWitness;
  v26 = v14;
  v27 = v12;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LazyCanvasItemDescriptor(255, &v19);
  sub_1E68B33B0();
  v19 = v4;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  type metadata accessor for CanvasItemPlaceholder(0, &v19);
  swift_getWitnessTable();
  v9 = sub_1E68B32E0();

  *a4 = v9;
  return result;
}

uint64_t sub_1E6873764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a5@<X8>)
{
  v28[1] = a2;
  v36 = a1;
  v39 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = swift_getAssociatedConformanceWitness();
  v33 = swift_getAssociatedConformanceWitness();
  v40 = AssociatedTypeWitness;
  v41 = AssociatedConformanceWitness;
  v42 = v34;
  v43 = v33;
  v6 = type metadata accessor for CanvasItemPlaceholder(0, &v40);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v28[0] = v28 - v8;
  v31 = swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v40 = v31;
  v41 = v29;
  v42 = v9;
  v43 = AssociatedTypeWitness;
  v44 = v10;
  v45 = v11;
  v46 = v32;
  v47 = v30;
  v48 = v12;
  v49 = AssociatedConformanceWitness;
  v50 = v34;
  v51 = v33;
  v52 = v13;
  v53 = v14;
  v15 = type metadata accessor for LazyCanvasItemDescriptor(0, &v40);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = v28 - v19;
  (*(v16 + 16))(v28 - v19, v36, v15, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v37;
    v22 = *(v37 + 32);
    v23 = v28[0];
    v24 = v20;
    v25 = v38;
    v26 = v39;
    v22(v28[0], v24, v38);
    if (sub_1E68B35E0())
    {
      v22(v26, v23, v25);
      return (*(v21 + 56))(v26, 0, 1, v25);
    }

    else
    {
      (*(v21 + 8))(v23, v25);
      return (*(v21 + 56))(v26, 1, 1, v25);
    }
  }

  else
  {
    (*(v37 + 56))(v39, 1, 1, v38);
    return (*(v16 + 8))(v20, v15);
  }
}

uint64_t *sub_1E6873C0C@<X0>(uint64_t *result@<X0>, uint64_t *a3@<X2>, uint64_t **a4@<X8>)
{
  v4 = *result;
  v5 = a3[15];
  v6 = *result + v5;
  if (__OFADD__(*result, v5))
  {
    __break(1u);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = swift_getAssociatedConformanceWitness();
    v15 = swift_getAssociatedConformanceWitness();
    type metadata accessor for CanvasItemPlaceholder(0, &AssociatedTypeWitness);
    result = sub_1E68B3380();
    if (result >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = result;
    }

    if (v7 >= v4)
    {
      AssociatedTypeWitness = sub_1E68B33E0();
      AssociatedConformanceWitness = v8;
      v14 = v9;
      v15 = v10;
      sub_1E68B3790();
      swift_getWitnessTable();
      swift_getWitnessTable();
      result = sub_1E68B3640();
      *a4 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6873DD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[13] = a2;
  v4[16] = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6873EB0, a4, 0);
}

uint64_t sub_1E6873EB0()
{
  v1 = *(v0 + 128);
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v30 = v3;
  v31 = v2;
  v7 = swift_getAssociatedConformanceWitness();
  *(v0 + 16) = AssociatedTypeWitness;
  *(v0 + 24) = AssociatedConformanceWitness;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  type metadata accessor for CanvasItemPlaceholder(255, v0 + 16);
  swift_getWitnessTable();
  sub_1E68B3630();
  if (sub_1E68B3380())
  {
    v9 = 0;
    v33 = **(v0 + 104);
    v32 = *(v0 + 112) + 32;
    do
    {
      v12 = sub_1E68B3370();
      sub_1E68B3340();
      if (v12)
      {
        v13 = *(v32 + 8 * v9);

        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = sub_1E68B3840();
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      v34 = v14;
      v16 = *(v0 + 136);
      v15 = *(v0 + 144);
      v17 = *(v0 + 120);
      v18 = sub_1E68B3460();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v15, 1, 1, v18);
      v20 = swift_allocObject();
      v20[2] = 0;
      v21 = v20 + 2;
      v20[3] = 0;
      v20[4] = v17;
      v20[5] = v13;
      sub_1E678271C(v15, v16);
      LODWORD(v15) = (*(v19 + 48))(v16, 1, v18);

      v22 = *(v0 + 136);
      if (v15 == 1)
      {
        sub_1E6744A10(*(v0 + 136), &qword_1ED097A10, &qword_1E68B7DE0);
        if (!*v21)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1E68B3450();
        (*(v19 + 8))(v22, v18);
        if (!*v21)
        {
LABEL_11:
          v23 = 0;
          v25 = 0;
          goto LABEL_12;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = sub_1E68B3400();
      v25 = v24;
      swift_unknownObjectRelease();
LABEL_12:

      if (v25 | v23)
      {
        v10 = v0 + 48;
        *(v0 + 48) = 0;
        *(v0 + 56) = 0;
        *(v0 + 64) = v23;
        *(v0 + 72) = v25;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v0 + 144);
      *(v0 + 80) = 1;
      *(v0 + 88) = v10;
      *(v0 + 96) = v33;
      swift_task_create();

      sub_1E6744A10(v11, &qword_1ED097A10, &qword_1E68B7DE0);
      ++v9;
    }

    while (v34 != sub_1E68B3380());
  }

  v26 = *(v0 + 120);
  type metadata accessor for LazyCanvasItemPlaceholderFetcher(255, v30, v31, v8);
  WitnessTable = swift_getWitnessTable();
  v28 = swift_task_alloc();
  *(v0 + 152) = v28;
  *v28 = v0;
  v28[1] = sub_1E6874344;

  return sub_1E687269C(v26, WitnessTable);
}

uint64_t sub_1E6874344()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E6874478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E6874498, 0, 0);
}

uint64_t sub_1E6874498()
{
  v1 = v0[2];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 120) + **(v3 + 120));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E68745C8;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_1E68745C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E68746BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E68746E4, v4, 0);
}

uint64_t sub_1E68746E4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = v1[19];
  v4 = v1[20];
  v10 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v10;
  *(v5 + 40) = v1;
  v11 = (*(v4 + 144) + **(v4 + 144));
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1E6874868;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return v11(v8, sub_1E68777A0, v5, v7, v3, v4);
}

uint64_t sub_1E6874868()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x1EEE6DFA0](sub_1E68749A4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1E68749A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6874A08(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();

  a3(v8, a1, a2);
}

uint64_t sub_1E6874AAC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6874AF4, v1, 0);
}

uint64_t sub_1E6874AF4()
{
  v1 = v0[9];
  swift_beginAccess();

  v2 = sub_1E68B33D0();

  if ((v2 & 1) == 0)
  {
    v3 = v0[8];

    swift_beginAccess();
    *(v1 + 112) = v3;
  }

  sub_1E6874BE4();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6874BE4()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v20[-1] - v5;
  swift_beginAccess();
  v20[0] = v0[14];
  v7 = *(v2 + 80);
  sub_1E68B33B0();
  swift_getWitnessTable();
  result = sub_1E68B36E0();
  if ((result & 1) == 0)
  {
    result = swift_beginAccess();
    if (*(v0[21] + 16))
    {
      swift_beginAccess();
      v20[5] = v0[21];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D00, &qword_1E68C5440);
      v9 = *(v2 + 88);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v12 = swift_getAssociatedConformanceWitness();
      v13 = swift_getAssociatedConformanceWitness();
      v20[0] = AssociatedTypeWitness;
      v20[1] = AssociatedConformanceWitness;
      v20[2] = v12;
      v20[3] = v13;
      type metadata accessor for CanvasItemPlaceholder(0, v20);
      sub_1E673F530(&qword_1ED099D08, &qword_1ED099D00, &qword_1E68C5440, MEMORY[0x1E69E6508]);
      v14 = sub_1E68B32E0();

      swift_beginAccess();
      v1[21] = MEMORY[0x1E69E7CD0];

      v15 = sub_1E68B3460();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
      type metadata accessor for LazyCanvasItemPlaceholderFetcher(255, v7, v9, v16);
      WitnessTable = swift_getWitnessTable();
      v18 = swift_allocObject();
      v18[2] = v1;
      v18[3] = WitnessTable;
      v18[4] = v14;
      v18[5] = v1;
      swift_retain_n();
      sub_1E67877E0(0, 0, v6, &unk_1E68C5450, v18);
    }
  }

  return result;
}