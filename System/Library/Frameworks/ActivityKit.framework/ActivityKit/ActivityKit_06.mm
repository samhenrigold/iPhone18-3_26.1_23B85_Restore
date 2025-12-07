unint64_t sub_1A2CE5F68()
{
  result = qword_1ED709798;
  if (!qword_1ED709798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709798);
  }

  return result;
}

unint64_t sub_1A2CE5FC0()
{
  result = qword_1ED7097A0;
  if (!qword_1ED7097A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097A0);
  }

  return result;
}

unint64_t sub_1A2CE6018()
{
  result = qword_1ED708930;
  if (!qword_1ED708930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708930);
  }

  return result;
}

unint64_t sub_1A2CE6070()
{
  result = qword_1ED708938;
  if (!qword_1ED708938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708938);
  }

  return result;
}

unint64_t sub_1A2CE60C8()
{
  result = qword_1ED708920;
  if (!qword_1ED708920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708920);
  }

  return result;
}

unint64_t sub_1A2CE6120()
{
  result = qword_1ED708928;
  if (!qword_1ED708928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708928);
  }

  return result;
}

unint64_t sub_1A2CE6178()
{
  result = qword_1ED708940;
  if (!qword_1ED708940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708940);
  }

  return result;
}

unint64_t sub_1A2CE61D0()
{
  result = qword_1ED708948;
  if (!qword_1ED708948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708948);
  }

  return result;
}

uint64_t sub_1A2CE6224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73616364616F7262 && a2 == 0xED00006873755074;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1752397168 && a2 == 0xE400000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

uint64_t sub_1A2CE6344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

double sub_1A2CE6458(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  result = sub_1A2C66A98(a1, a2);
  if ((a5 & 1) == 0)
  {

    return sub_1A2C66A98(a3, a4);
  }

  return result;
}

uint64_t sub_1A2CE64D8(uint64_t a1)
{
  v2 = sub_1A2CE6D00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE6514(uint64_t a1)
{
  v2 = sub_1A2CE6D00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE6550(uint64_t a1)
{
  v2 = sub_1A2CE6CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE658C(uint64_t a1)
{
  v2 = sub_1A2CE6CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE65C8(uint64_t a1)
{
  v2 = sub_1A2CE6C58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE6604(uint64_t a1)
{
  v2 = sub_1A2CE6C58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE6640(uint64_t a1)
{
  v2 = sub_1A2CE6C04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE667C(uint64_t a1)
{
  v2 = sub_1A2CE6C04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE66D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2CE6E24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2CE66FC(uint64_t a1)
{
  v2 = sub_1A2CE6BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE6738(uint64_t a1)
{
  v2 = sub_1A2CE6BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityProtectionClass.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A16A8, &qword_1A2D12ED0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A16B0, &qword_1A2D12ED8);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A16B8, &qword_1A2D12EE0);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A16C0, &qword_1A2D12EE8);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A16C8, &qword_1A2D12EF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CE6BB0();
  sub_1A2D08C74();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_1A2CE6C58();
      v9 = v23;
      sub_1A2D08A84();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_1A2CE6C04();
      v9 = v26;
      sub_1A2D08A84();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_1A2CE6CAC();
    sub_1A2D08A84();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_1A2CE6D00();
  sub_1A2D08A84();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_1A2CE6BB0()
{
  result = qword_1ED708A80;
  if (!qword_1ED708A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A80);
  }

  return result;
}

unint64_t sub_1A2CE6C04()
{
  result = qword_1ED708A88;
  if (!qword_1ED708A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A88);
  }

  return result;
}

unint64_t sub_1A2CE6C58()
{
  result = qword_1EB0A16D0;
  if (!qword_1EB0A16D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A16D0);
  }

  return result;
}

unint64_t sub_1A2CE6CAC()
{
  result = qword_1EB0A16D8;
  if (!qword_1EB0A16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A16D8);
  }

  return result;
}

unint64_t sub_1A2CE6D00()
{
  result = qword_1EB0A16E0;
  if (!qword_1EB0A16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A16E0);
  }

  return result;
}

uint64_t ActivityProtectionClass.hashValue.getter(unsigned __int8 a1)
{
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](a1);
  return sub_1A2D08C54();
}

void *sub_1A2CE6DDC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1A2CE6F78(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A2CE6E24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x417373616C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x427373616C63 && a2 == 0xE600000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437373616C63 && a2 == 0xE600000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x447373616C63 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

void *sub_1A2CE6F78(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A16F8, &qword_1A2D133F0);
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1700, &qword_1A2D133F8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1708, &qword_1A2D13400);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1710, &qword_1A2D13408);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1718, &qword_1A2D13410);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1A2CE6BB0();
  v15 = v43;
  sub_1A2D08C64();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_1A2D08A64();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_1A2C6E0DC();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_1A2CE6CAC();
        v29 = v33;
        sub_1A2D089D4();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_1A2CE6D00();
        v23 = v33;
        sub_1A2D089D4();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_1A2CE6C58();
      v28 = v33;
      sub_1A2D089D4();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_1A2CE6C04();
      v30 = v33;
      sub_1A2D089D4();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_1A2D088A4();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
  *v11 = &type metadata for ActivityProtectionClass;
  sub_1A2D089E4();
  sub_1A2D08894();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x1E69E6AF8], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v11;
}

unint64_t sub_1A2CE75BC()
{
  result = qword_1EB0A16E8;
  if (!qword_1EB0A16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A16E8);
  }

  return result;
}

unint64_t sub_1A2CE7664()
{
  result = qword_1EB0A16F0;
  if (!qword_1EB0A16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A16F0);
  }

  return result;
}

unint64_t sub_1A2CE76BC()
{
  result = qword_1ED708AC0;
  if (!qword_1ED708AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AC0);
  }

  return result;
}

unint64_t sub_1A2CE7714()
{
  result = qword_1ED708AC8;
  if (!qword_1ED708AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AC8);
  }

  return result;
}

unint64_t sub_1A2CE776C()
{
  result = qword_1ED708AB0;
  if (!qword_1ED708AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AB0);
  }

  return result;
}

unint64_t sub_1A2CE77C4()
{
  result = qword_1ED708AB8;
  if (!qword_1ED708AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AB8);
  }

  return result;
}

unint64_t sub_1A2CE781C()
{
  result = qword_1ED708AA0;
  if (!qword_1ED708AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AA0);
  }

  return result;
}

unint64_t sub_1A2CE7874()
{
  result = qword_1ED708AA8;
  if (!qword_1ED708AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AA8);
  }

  return result;
}

unint64_t sub_1A2CE78CC()
{
  result = qword_1ED708A90;
  if (!qword_1ED708A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A90);
  }

  return result;
}

unint64_t sub_1A2CE7924()
{
  result = qword_1ED708A98;
  if (!qword_1ED708A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A98);
  }

  return result;
}

unint64_t sub_1A2CE797C()
{
  result = qword_1ED708A70;
  if (!qword_1ED708A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A70);
  }

  return result;
}

unint64_t sub_1A2CE79D4()
{
  result = qword_1ED708A78;
  if (!qword_1ED708A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A78);
  }

  return result;
}

uint64_t ActivityQoS.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 1751607656;
  }

  if (a1 == 1)
  {
    return 7827308;
  }

  result = sub_1A2D08B64();
  __break(1u);
  return result;
}

uint64_t static ActivityQoS.< infix(_:_:)(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1720, &qword_1A2D13418);
  if (!a1)
  {
    if (a2 >= 2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 0;
    }

    if (!a2)
    {
      return 1;
    }
  }

LABEL_9:
  result = sub_1A2D08B24();
  __break(1u);
  return result;
}

unint64_t ActivityQoS.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1A2CE7B10()
{
  result = qword_1EB0A1728;
  if (!qword_1EB0A1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1728);
  }

  return result;
}

uint64_t sub_1A2CE7B64()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E4900](v1);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE7BD8(uint64_t a1)
{
  v2 = *v1;
  sub_1A2D08C14();
  MEMORY[0x1A58E4900](v2);
  return sub_1A2D08C54();
}

unint64_t *sub_1A2CE7C1C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1A2CE7CE8(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1720, &qword_1A2D13418);
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_9;
    }

    if (!v3)
    {
      return 1;
    }

    if (v3 != 1)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 < 2)
  {
    return 0;
  }

LABEL_9:
  result = sub_1A2D08B24();
  __break(1u);
  return result;
}

uint64_t sub_1A2CE7D5C(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1720, &qword_1A2D13418);
  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_9;
    }

    if (!v2)
    {
      return 0;
    }

    if (v2 != 1)
    {
      goto LABEL_9;
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

LABEL_9:
  result = sub_1A2D08B24();
  __break(1u);
  return result;
}

uint64_t sub_1A2CE7DD0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1720, &qword_1A2D13418);
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_9;
    }

    if (!v3)
    {
      return 0;
    }

    if (v3 != 1)
    {
      goto LABEL_9;
    }

    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

LABEL_9:
  result = sub_1A2D08B24();
  __break(1u);
  return result;
}

uint64_t sub_1A2CE7E44(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1720, &qword_1A2D13418);
  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_9;
    }

    if (!v2)
    {
      return 1;
    }

    if (v2 != 1)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v2 < 2)
  {
    return 0;
  }

LABEL_9:
  result = sub_1A2D08B24();
  __break(1u);
  return result;
}

uint64_t sub_1A2CE7EB8(uint64_t a1)
{
  if (!*v1)
  {
    return 1751607656;
  }

  if (*v1 == 1)
  {
    return 7827308;
  }

  result = sub_1A2D08B64();
  __break(1u);
  return result;
}

unint64_t sub_1A2CE7F2C()
{
  result = qword_1EB0A1730;
  if (!qword_1EB0A1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1730);
  }

  return result;
}

uint64_t sub_1A2CE7F84()
{
  v0 = sub_1A2D086E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A2C5D300();
  sub_1A2D082E4();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C5ACDC();
  sub_1A2D08804();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1A2D08724();
  qword_1ED712970 = result;
  return result;
}

uint64_t sub_1A2CE81C0()
{
  v5 = *MEMORY[0x1E69E9840];
  out_token = -1;
  sub_1A2D07FE4();
  v0 = sub_1A2D08464();

  notify_register_check((v0 + 32), &out_token);

  if (out_token != -1)
  {
    v2 = getpid();
    if ((v2 & 0x80000000) != 0)
    {
      __break(1u);
    }

    notify_set_state(out_token, v2);
    sub_1A2D07FE4();
    v3 = sub_1A2D08464();

    notify_post((v3 + 32));

    return notify_cancel(out_token);
  }

  return result;
}

uint64_t static ProcessDescriptor.Request.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34();
  }
}

uint64_t static ProcessDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34();
  }
}

unint64_t ProcessDescriptor.Request.description.getter(unint64_t a1, unint64_t a2)
{
  v2 = 0xD000000000000010;
  if (a2)
  {
    v2 = a1;
  }

  if (a2 == 1)
  {
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    v3 = v2;
  }

  sub_1A2C66A98(a1, a2);
  return v3;
}

uint64_t sub_1A2CE83A0(uint64_t a1)
{
  v2 = sub_1A2C6D588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE83DC(uint64_t a1)
{
  v2 = sub_1A2C6D588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE8418(uint64_t a1)
{
  v2 = sub_1A2C6D5DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE8454(uint64_t a1)
{
  v2 = sub_1A2C6D5DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE8490(uint64_t a1)
{
  v2 = sub_1A2CE9948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE84CC(uint64_t a1)
{
  v2 = sub_1A2CE9948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SceneTarget.Request.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x1A58E48E0](1);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    return MEMORY[0x1A58E48E0](v5);
  }

  MEMORY[0x1A58E48E0](0);
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a3 == 1)
  {
    v5 = 1;
    return MEMORY[0x1A58E48E0](v5);
  }

  MEMORY[0x1A58E48E0](2);

  return sub_1A2D08484();
}

uint64_t SceneTarget.Request.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0]((a3 & 1) != 0);
  if (a2)
  {
    if (a2 != 1)
    {
      MEMORY[0x1A58E48E0](2);
      sub_1A2D08484();
      return sub_1A2D08C54();
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1A58E48E0](v5);
  return sub_1A2D08C54();
}

void *SceneTarget.Request.init(from:)(void *a1)
{
  result = sub_1A2C6FEA8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1A2CE8684(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1A2D08C14();
  SceneTarget.Request.hash(into:)(v6, v2, v3, v4);
  return sub_1A2D08C54();
}

uint64_t SceneTarget.targetProcess.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 40) == 1)
  {
    v3 = v1[3];
    v2 = v1[4];
    v5 = v1[1];
    v4 = v1[2];
    v6 = *v1;
    *a1 = *v1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v4 & 1;
    *(a1 + 17) = BYTE1(v4) & 1;
    *(a1 + 18) = BYTE2(v4) & 1;
    *(a1 + 19) = BYTE3(v4) & 1;
    *(a1 + 24) = v3;
    *(a1 + 32) = v2;
    *&v12 = v6;
    *(&v12 + 1) = v5;
    *&v13 = v4;
    *(&v13 + 1) = v3;
    v14 = v2;
    v15 = 1;
  }

  else
  {
    if (qword_1EB09EF58 != -1)
    {
      v10 = a1;
      swift_once();
      a1 = v10;
    }

    v7 = *&dword_1EB09EF70;
    v12 = xmmword_1EB09EF60;
    v13 = *&dword_1EB09EF70;
    v8 = qword_1EB09EF80;
    v14 = qword_1EB09EF80;
    *a1 = xmmword_1EB09EF60;
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
  }

  return sub_1A2C73320(&v12, v11);
}

double SceneTarget.containingAppProcess.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 17) = BYTE1(v4) & 1;
  *(a1 + 18) = BYTE2(v4) & 1;
  *(a1 + 19) = BYTE3(v4) & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1A2C72A00(v2, v3, v4, v5, v6);
}

uint64_t sub_1A2CE8824(uint64_t a1)
{
  v2 = sub_1A2C72E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE8860(uint64_t a1)
{
  v2 = sub_1A2C72E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE889C(uint64_t a1)
{
  v2 = sub_1A2C72EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE88D8(uint64_t a1)
{
  v2 = sub_1A2C72EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE8914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001A2D1ADD0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A2D08B34();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A2CE89A8(uint64_t a1)
{
  v2 = sub_1A2CE9CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE89E4(uint64_t a1)
{
  v2 = sub_1A2CE9CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SceneTarget.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0]((v1 & 1) != 0);
  ProcessDescriptor.hash(into:)(v3);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE8C24(uint64_t a1)
{
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0]((*(v1 + 40) & 1) != 0);
  ProcessDescriptor.hash(into:)(v3);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE8CD8()
{
  if (qword_1EB09EF58 != -1)
  {
    swift_once();
  }

  v2[0] = xmmword_1EB09EF60;
  v2[1] = *&dword_1EB09EF70;
  v3 = qword_1EB09EF80;
  xmmword_1EB0A1738 = xmmword_1EB09EF60;
  unk_1EB0A1748 = *&dword_1EB09EF70;
  qword_1EB0A1758 = qword_1EB09EF80;
  return sub_1A2C73320(v2, v1);
}

uint64_t static ProcessDescriptor.chronod.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F730 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1EB0A1748;
  v6[0] = xmmword_1EB0A1738;
  v6[1] = unk_1EB0A1748;
  v2 = qword_1EB0A1758;
  v7 = qword_1EB0A1758;
  *a1 = xmmword_1EB0A1738;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  return sub_1A2C73320(v6, v5);
}

void sub_1A2CE8DE0()
{
  dword_1EB09EF70 = 0;
  qword_1EB09EF78 = 0;
  qword_1EB09EF80 = 0;
  *&xmmword_1EB09EF60 = 0xD00000000000002ALL;
  *(&xmmword_1EB09EF60 + 1) = 0x80000001A2D1AEE0;
}

void __swiftcall ProcessDescriptor.init(identifier:)(ActivityKit::ProcessDescriptor *__return_ptr retstr, Swift::String identifier)
{
  *&retstr->canEndAllActivities = 0;
  retstr->appIntentExtensionBundleIdentifier.value._countAndFlagsBits = 0;
  retstr->appIntentExtensionBundleIdentifier.value._object = 0;
  retstr->bundleIdentifier = identifier;
}

uint64_t static ProcessDescriptor.widget.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09EF58 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *&dword_1EB09EF70;
  v6[0] = xmmword_1EB09EF60;
  v6[1] = *&dword_1EB09EF70;
  v2 = qword_1EB09EF80;
  v7 = qword_1EB09EF80;
  *a1 = xmmword_1EB09EF60;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  return sub_1A2C73320(v6, v5);
}

unint64_t ProcessDescriptor.Request.debugDescription.getter(unint64_t a1, unint64_t a2)
{
  sub_1A2D08864();

  v4 = 0x80000001A2D1AD20;
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (a2)
  {
    v4 = a2;
  }

  if (a2 == 1)
  {
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 1)
  {
    v7 = 0x80000001A2D1AD00;
  }

  else
  {
    v7 = v4;
  }

  v8 = sub_1A2C66A98(a1, a2);
  MEMORY[0x1A58E4150](v6, v7, v8);

  MEMORY[0x1A58E4150](10530, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_1A2CE8F98(uint64_t a1)
{
  v2 = sub_1A2C6AC28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE8FD4(uint64_t a1)
{
  v2 = sub_1A2C6AC28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE9010(uint64_t a1)
{
  v2 = sub_1A2CE9D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE904C(uint64_t a1)
{
  v2 = sub_1A2CE9D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE9088(uint64_t a1)
{
  v2 = sub_1A2CE9D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE90C4(uint64_t a1)
{
  v2 = sub_1A2CE9D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE9100(uint64_t a1)
{
  v2 = sub_1A2C6AC7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE913C(uint64_t a1)
{
  v2 = sub_1A2C6AC7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProcessDescriptor.Request.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    return MEMORY[0x1A58E48E0](v3, a2);
  }

  if (a3 == 1)
  {
    v3 = 1;
    return MEMORY[0x1A58E48E0](v3, a2);
  }

  MEMORY[0x1A58E48E0](2);

  return sub_1A2D08484();
}

uint64_t ProcessDescriptor.Request.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1A2D08C14();
  if (a2)
  {
    if (a2 != 1)
    {
      MEMORY[0x1A58E48E0](2);
      sub_1A2D08484();
      return sub_1A2D08C54();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1A58E48E0](v3);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE9294()
{
  v1 = *(v0 + 8);
  sub_1A2D08C14();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1A58E48E0](2);
      sub_1A2D08484();
      return sub_1A2D08C54();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1A58E48E0](v2);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE9314(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x1A58E48E0](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x1A58E48E0](v3);
  }

  MEMORY[0x1A58E48E0](2);

  return sub_1A2D08484();
}

uint64_t sub_1A2CE939C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1A2D08C14();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1A58E48E0](2);
      sub_1A2D08484();
      return sub_1A2D08C54();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1A58E48E0](v3);
  return sub_1A2D08C54();
}

unint64_t sub_1A2CE9418()
{
  v1 = v0[1];
  v2 = 0xD000000000000010;
  if (v1)
  {
    v2 = *v0;
  }

  if (v1 == 1)
  {
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    v3 = v2;
  }

  sub_1A2C66A98(*v0, v1);
  return v3;
}

uint64_t sub_1A2CE9498(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_1A2D08B34();
  }

  return 1;
}

uint64_t ProcessDescriptor.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ProcessDescriptor.appIntentExtensionBundleIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ProcessDescriptor.appIntentExtensionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_1A2CE9698@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2CEAB20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2CE96CC(uint64_t a1)
{
  v2 = sub_1A2C731E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE9708(uint64_t a1)
{
  v2 = sub_1A2C731E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProcessDescriptor.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1A2D08484();
  sub_1A2D08C34();
  sub_1A2D08C34();
  sub_1A2D08C34();
  sub_1A2D08C34();
  if (!v2)
  {
    return sub_1A2D08C34();
  }

  sub_1A2D08C34();

  return sub_1A2D08484();
}

uint64_t ProcessDescriptor.hashValue.getter()
{
  sub_1A2D08C14();
  ProcessDescriptor.hash(into:)(v1);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE9844()
{
  sub_1A2D08C14();
  ProcessDescriptor.hash(into:)(v1);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE9888(uint64_t a1)
{
  sub_1A2D08C14();
  ProcessDescriptor.hash(into:)(v2);
  return sub_1A2D08C54();
}

BOOL sub_1A2CE98C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        return a5 == 1;
      }

      return a5 >= 2 && (a1 == a4 && a2 == a5 || (sub_1A2D08B34() & 1) != 0);
    }
  }

  else
  {
    if (a6)
    {
      return 0;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        return a5 == 1;
      }

      return a5 >= 2 && (a1 == a4 && a2 == a5 || (sub_1A2D08B34() & 1) != 0);
    }
  }

  return !a5;
}

unint64_t sub_1A2CE9948()
{
  result = qword_1EB09F5B0;
  if (!qword_1EB09F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F5B0);
  }

  return result;
}

uint64_t _s11ActivityKit11SceneTargetO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (*(a1 + 40))
  {
    if (*(a2 + 40))
    {
      v20 = *(a2 + 32);
      if (__PAIR128__(v2, v3) == __PAIR128__(v8, v7))
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

LABEL_6:
    v17 = *(a2 + 8);
    v18 = *a2;
    v12 = *(a1 + 8);
    sub_1A2C72A00(*a2, v17, v10, v9, v11);
    sub_1A2C72A00(v3, v12, v4, v5, v6);
    sub_1A2C732E4(v3, v12, v4, v5, v6);
    sub_1A2C732E4(v18, v17, v10, v9, v11);
    return 0;
  }

  if (*(a2 + 40))
  {
    goto LABEL_6;
  }

  v20 = *(a2 + 32);
  if (__PAIR128__(v2, v3) == __PAIR128__(v8, v7))
  {
LABEL_8:
    v14 = *(a1 + 8);
    sub_1A2C72A00(v3, v2, v10, v9, v11);
    sub_1A2C72A00(v3, v14, v4, v5, v6);
    sub_1A2C732E4(v3, v14, v4, v5, v6);
    sub_1A2C732E4(v3, v14, v10, v9, v20);
    return 1;
  }

LABEL_9:
  v15 = *a2;
  v16 = *(a1 + 8);
  v19 = sub_1A2D08B34();
  sub_1A2C72A00(v15, v8, v10, v9, v11);
  sub_1A2C72A00(v3, v16, v4, v5, v6);
  sub_1A2C732E4(v3, v16, v4, v5, v6);
  sub_1A2C732E4(v15, v8, v10, v9, v20);
  return v19 & 1;
}

unint64_t sub_1A2CE9CD0()
{
  result = qword_1ED708EB0;
  if (!qword_1ED708EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708EB0);
  }

  return result;
}

unint64_t sub_1A2CE9D24()
{
  result = qword_1EB09F5A8;
  if (!qword_1EB09F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F5A8);
  }

  return result;
}

unint64_t sub_1A2CE9D78()
{
  result = qword_1ED7088F0;
  if (!qword_1ED7088F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7088F0);
  }

  return result;
}

unint64_t sub_1A2CE9DD0()
{
  result = qword_1EB0A17D8;
  if (!qword_1EB0A17D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A17D8);
  }

  return result;
}

unint64_t sub_1A2CE9E28()
{
  result = qword_1EB0A17E0;
  if (!qword_1EB0A17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A17E0);
  }

  return result;
}

unint64_t sub_1A2CE9E80()
{
  result = qword_1EB0A17E8;
  if (!qword_1EB0A17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A17E8);
  }

  return result;
}

unint64_t sub_1A2CE9ED8()
{
  result = qword_1EB0A17F0;
  if (!qword_1EB0A17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A17F0);
  }

  return result;
}

uint64_t sub_1A2CE9F2C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1A2CE9F70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

unint64_t sub_1A2CEA07C()
{
  result = qword_1EB0A17F8;
  if (!qword_1EB0A17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A17F8);
  }

  return result;
}

unint64_t sub_1A2CEA0D4()
{
  result = qword_1EB0A1800;
  if (!qword_1EB0A1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1800);
  }

  return result;
}

unint64_t sub_1A2CEA12C()
{
  result = qword_1EB0A1808;
  if (!qword_1EB0A1808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1808);
  }

  return result;
}

unint64_t sub_1A2CEA184()
{
  result = qword_1EB0A1810;
  if (!qword_1EB0A1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1810);
  }

  return result;
}

unint64_t sub_1A2CEA1DC()
{
  result = qword_1EB0A1818;
  if (!qword_1EB0A1818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1818);
  }

  return result;
}

unint64_t sub_1A2CEA234()
{
  result = qword_1EB0A1820;
  if (!qword_1EB0A1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1820);
  }

  return result;
}

unint64_t sub_1A2CEA28C()
{
  result = qword_1EB0A1828;
  if (!qword_1EB0A1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1828);
  }

  return result;
}

unint64_t sub_1A2CEA2E4()
{
  result = qword_1EB0A1830;
  if (!qword_1EB0A1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1830);
  }

  return result;
}

unint64_t sub_1A2CEA33C()
{
  result = qword_1EB0A1838;
  if (!qword_1EB0A1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1838);
  }

  return result;
}

unint64_t sub_1A2CEA394()
{
  result = qword_1ED709650;
  if (!qword_1ED709650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709650);
  }

  return result;
}

unint64_t sub_1A2CEA3EC()
{
  result = qword_1ED709658;
  if (!qword_1ED709658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709658);
  }

  return result;
}

unint64_t sub_1A2CEA444()
{
  result = qword_1ED708C98;
  if (!qword_1ED708C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C98);
  }

  return result;
}

unint64_t sub_1A2CEA49C()
{
  result = qword_1ED708CA0;
  if (!qword_1ED708CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CA0);
  }

  return result;
}

unint64_t sub_1A2CEA4F4()
{
  result = qword_1ED708CA8;
  if (!qword_1ED708CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CA8);
  }

  return result;
}

unint64_t sub_1A2CEA54C()
{
  result = qword_1ED708CB0;
  if (!qword_1ED708CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CB0);
  }

  return result;
}

unint64_t sub_1A2CEA5A4()
{
  result = qword_1ED708C88;
  if (!qword_1ED708C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C88);
  }

  return result;
}

unint64_t sub_1A2CEA5FC()
{
  result = qword_1ED708C90;
  if (!qword_1ED708C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C90);
  }

  return result;
}

unint64_t sub_1A2CEA654()
{
  result = qword_1ED708C70;
  if (!qword_1ED708C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C70);
  }

  return result;
}

unint64_t sub_1A2CEA6AC()
{
  result = qword_1ED708C78;
  if (!qword_1ED708C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C78);
  }

  return result;
}

unint64_t sub_1A2CEA704()
{
  result = qword_1ED709668;
  if (!qword_1ED709668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709668);
  }

  return result;
}

unint64_t sub_1A2CEA75C()
{
  result = qword_1ED709670;
  if (!qword_1ED709670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709670);
  }

  return result;
}

unint64_t sub_1A2CEA7B4()
{
  result = qword_1ED709678;
  if (!qword_1ED709678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709678);
  }

  return result;
}

unint64_t sub_1A2CEA80C()
{
  result = qword_1ED709680;
  if (!qword_1ED709680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709680);
  }

  return result;
}

unint64_t sub_1A2CEA864()
{
  result = qword_1ED709688;
  if (!qword_1ED709688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709688);
  }

  return result;
}

unint64_t sub_1A2CEA8BC()
{
  result = qword_1ED709690;
  if (!qword_1ED709690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709690);
  }

  return result;
}

unint64_t sub_1A2CEA914()
{
  result = qword_1ED708CC8;
  if (!qword_1ED708CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CC8);
  }

  return result;
}

unint64_t sub_1A2CEA96C()
{
  result = qword_1ED708CD0;
  if (!qword_1ED708CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CD0);
  }

  return result;
}

unint64_t sub_1A2CEA9C4()
{
  result = qword_1ED708CD8;
  if (!qword_1ED708CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CD8);
  }

  return result;
}

unint64_t sub_1A2CEAA1C()
{
  result = qword_1ED708CE0;
  if (!qword_1ED708CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CE0);
  }

  return result;
}

unint64_t sub_1A2CEAA74()
{
  result = qword_1ED708CE8;
  if (!qword_1ED708CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CE8);
  }

  return result;
}

unint64_t sub_1A2CEAACC()
{
  result = qword_1ED708CF0;
  if (!qword_1ED708CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CF0);
  }

  return result;
}

uint64_t sub_1A2CEAB20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001A2D196E0 == a2;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A2D1AE30 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A2D1AE50 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A2D1AE70 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A2D1AE90 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001A2D1AEB0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

Swift::Bool __swiftcall ActivityQoSPredicate.matches(activityIdentifier:)(Swift::String activityIdentifier)
{
  if (*v1)
  {
    v6 = activityIdentifier;
    MEMORY[0x1EEE9AC00](activityIdentifier._countAndFlagsBits);
    v5[2] = &v6;
    v3 = sub_1A2C956A8(sub_1A2CB05CC, v5, v2);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1A2CEADCC(uint64_t a1)
{
  v2 = sub_1A2CEB2A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CEAE08(uint64_t a1)
{
  v2 = sub_1A2CEB2A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityQoSPredicate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1878, &unk_1A2D147A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CEB2A4();

  sub_1A2D08C74();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
  sub_1A2C8A470(&unk_1ED708820, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1A2D08AA4();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ActivityQoSPredicate.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1888, &qword_1A2D147B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CEB2A4();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    sub_1A2C8A470(&qword_1ED709510, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1A2D08A14();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2CEB1B0(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CEB330();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t static ActivityQoSPredicate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_1A2CC30E4(v2, v3);
  }
}

unint64_t sub_1A2CEB2A4()
{
  result = qword_1EB0A1880;
  if (!qword_1EB0A1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1880);
  }

  return result;
}

unint64_t sub_1A2CEB2F8(void *a1)
{
  a1[1] = sub_1A2CBBB44();
  a1[2] = sub_1A2CEB330();
  result = sub_1A2CEB384();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CEB330()
{
  result = qword_1EB0A1B30;
  if (!qword_1EB0A1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1B30);
  }

  return result;
}

unint64_t sub_1A2CEB384()
{
  result = qword_1EB0A1890;
  if (!qword_1EB0A1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1890);
  }

  return result;
}

unint64_t sub_1A2CEB3FC()
{
  result = qword_1EB0A1898;
  if (!qword_1EB0A1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1898);
  }

  return result;
}

unint64_t sub_1A2CEB454()
{
  result = qword_1EB0A18A0;
  if (!qword_1EB0A18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A18A0);
  }

  return result;
}

unint64_t sub_1A2CEB4AC()
{
  result = qword_1EB0A18A8;
  if (!qword_1EB0A18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A18A8);
  }

  return result;
}

uint64_t ActivityRequest.init(attributesType:attributesData:initialOpaqueContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v24 = a1[1];
  a9[2] = *a1;
  a9[3] = v24;
  a9[4] = a2;
  a9[5] = a3;
  v25 = type metadata accessor for ActivityRequest(0);
  sub_1A2C671E0(a4, a9 + v25[7], type metadata accessor for OpaqueActivityContent);
  *(a9 + v25[8]) = a5;
  *(a9 + v25[9]) = a6;
  v26 = a9 + v25[10];
  *v26 = *a7;
  *(v26 + 2) = *(a7 + 16);
  *(a9 + v25[11]) = a8;
  *(a9 + v25[12]) = a10;
  *(a9 + v25[13]) = a11;
  *(a9 + v25[14]) = a12;
  *(a9 + v25[15]) = a13;
  *a9 = a14;
  a9[1] = a15;
  *(a9 + v25[16]) = a16;
  v27 = v25[17];
  v28 = sub_1A2D07F94();
  result = (*(*(v28 - 8) + 32))(a9 + v27, a17, v28);
  v30 = (a9 + v25[18]);
  *v30 = a18;
  v30[1] = a19;
  return result;
}

double ActivityRequest.copy(withIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = v3[3];
  v5 = v3[5];
  v26 = v3[4];
  v27 = v3[2];
  v6 = type metadata accessor for ActivityRequest(0);
  sub_1A2C69790(v3 + v6[7], &a3[v6[7]], type metadata accessor for OpaqueActivityContent);
  v7 = *(v3 + v6[8]);
  v8 = *(v3 + v6[9]);
  v9 = v6[11];
  v10 = v3 + v6[10];
  v31 = *v10;
  v32 = *(v10 + 2);
  v11 = *(v3 + v9);
  v12 = *(v3 + v6[12]);
  v13 = *(v3 + v6[14]);
  v23 = *(v3 + v6[15]);
  v24 = *(v3 + v6[13]);
  v14 = v6[17];
  v22 = *(v3 + v6[16]);
  v15 = sub_1A2D07F94();
  (*(*(v15 - 8) + 16))(&a3[v14], v3 + v14, v15);
  v16 = (v3 + v6[18]);
  v17 = *v16;
  v18 = v16[1];
  *(a3 + 2) = v27;
  *(a3 + 3) = v25;
  *(a3 + 4) = v26;
  *(a3 + 5) = v5;
  *&a3[v6[8]] = v7;
  *&a3[v6[9]] = v8;
  v19 = &a3[v6[10]];
  *(v19 + 2) = v32;
  *v19 = v31;
  *&a3[v6[11]] = v11;
  a3[v6[12]] = v12;
  a3[v6[13]] = v24;
  a3[v6[14]] = v13;
  a3[v6[15]] = v23;
  *a3 = a1;
  *(a3 + 1) = a2;
  a3[v6[16]] = v22;
  v20 = &a3[v6[18]];
  *v20 = v17;
  *(v20 + 1) = v18;

  sub_1A2C5E63C(v26, v5);

  sub_1A2C66F58(&v31, v30);

  return result;
}

uint64_t sub_1A2CEB87C(uint64_t result, uint64_t a2)
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
    v27 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = *(result + 56) + 24 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(*(result + 48) + v12);
    sub_1A2C66A94(*v14, v16, v17);
    v19 = sub_1A2C66BC0(v18);
    if ((v20 & 1) == 0)
    {
LABEL_45:
      sub_1A2C6AE9C();
      return 0;
    }

    v21 = *(a2 + 56) + 24 * v19;
    v22 = *v21;
    v23 = *(v21 + 8);
    if ((*(v21 + 16) & 1) == 0)
    {
      if (v17)
      {
        goto LABEL_45;
      }

      if (v23)
      {
        if (v23 == 1)
        {
          if (v16 != 1)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v16 < 2)
          {
            goto LABEL_45;
          }

          if (v22 != v15 || v23 != v16)
          {
            goto LABEL_41;
          }
        }
      }

      else if (v16)
      {
        goto LABEL_45;
      }

      goto LABEL_6;
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_45;
    }

    if (!v23)
    {
      if (v16)
      {
        goto LABEL_45;
      }

      goto LABEL_6;
    }

    if (v23 == 1)
    {
      if (v16 != 1)
      {
        goto LABEL_45;
      }

      goto LABEL_6;
    }

    if (v16 < 2)
    {
      goto LABEL_45;
    }

    if (v22 == v15 && v23 == v16)
    {
LABEL_6:
      sub_1A2C6AE9C();
      result = v13;
      v7 = v27;
    }

    else
    {
LABEL_41:
      v26 = sub_1A2D08B34();
      sub_1A2C6AE9C();
      result = v13;
      v7 = v27;
      if ((v26 & 1) == 0)
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
      v27 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>, char a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v59 = a8;
  v69 = a5;
  v70 = a7;
  v68 = a4;
  v77 = a3;
  v60 = a9;
  v72 = a18;
  v73 = a16;
  v74[0] = a20;
  v71 = a14;
  v65 = a25;
  v66 = a22;
  v63 = a20;
  v64 = a24;
  v61 = a23;
  v74[1] = a23;
  v74[2] = a24;
  v74[3] = a25;
  v28 = type metadata accessor for ActivityContent(0, v74);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v55[-v30];
  v32 = type metadata accessor for OpaqueActivityContent(0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v62 = &v55[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = *a2;
  v34 = a2[1];
  v36 = a1;
  v75 = *a6;
  v76 = *(a6 + 2);
  sub_1A2D07D84();
  swift_allocObject();
  sub_1A2D07D74();
  v37 = v67;
  v38 = sub_1A2D07D64();
  if (v37)
  {
    v40 = v77;

    sub_1A2C69EAC(&v75);
    v43 = sub_1A2D07F94();
    (*(*(v43 - 8) + 8))(v73, v43);
    (*(v29 + 8))(v40, v28);
    return (*(*(a19 - 8) + 8))(a1, a19);
  }

  else
  {
    v57 = v35;
    v58 = v34;
    v41 = v60;
    v66 = v38;
    v67 = v39;
    (*(v29 + 16))(v31, v77, v28);
    v42 = v62;
    OpaqueActivityContent.init<A>(encoding:)(v31, v63, v61, v64, v65, v62);
    v65 = a17;
    LODWORD(v64) = a15;
    v63 = a13;
    LODWORD(v61) = a12;
    v56 = a11;

    (*(v29 + 8))(v77, v28);
    (*(*(a19 - 8) + 8))(v36, a19);
    v45 = type metadata accessor for ActivityRequest(0);
    sub_1A2C671E0(v42, v41 + v45[7], type metadata accessor for OpaqueActivityContent);
    v46 = v58;
    v41[2] = v57;
    v41[3] = v46;
    v47 = v67;
    v41[4] = v66;
    v41[5] = v47;
    v48 = v69;
    *(v41 + v45[8]) = v68;
    *(v41 + v45[9]) = v48;
    v49 = v41 + v45[10];
    *v49 = v75;
    *(v49 + 2) = v76;
    *(v41 + v45[11]) = v70;
    *(v41 + v45[12]) = v59 & 1;
    *(v41 + v45[13]) = a10 & 1;
    *(v41 + v45[14]) = v56 & 1;
    *(v41 + v45[15]) = v61 & 1;
    v50 = v71;
    *v41 = v63;
    v41[1] = v50;
    *(v41 + v45[16]) = v64;
    v51 = v45[17];
    v52 = sub_1A2D07F94();
    result = (*(*(v52 - 8) + 32))(v41 + v51, v73, v52);
    v53 = (v41 + v45[18]);
    v54 = v72;
    *v53 = v65;
    v53[1] = v54;
  }

  return result;
}

uint64_t ActivityRequest.identifier.getter()
{
  v1 = *v0;

  return v1;
}

double ActivityRequest.attributesType.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t ActivityRequest.platterTarget.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityRequest(0) + 32));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A2C66BC0(0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 56) + 24 * v2;
  v5 = *v4;
  sub_1A2C66A94(*v4, *(v4 + 8), *(v4 + 16));
  return v5;
}

uint64_t ActivityRequest.assetProviderBundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityRequest(0) + 72));

  return v1;
}

uint64_t sub_1A2CEC0E4(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C69EDC(&qword_1ED708D38, type metadata accessor for ActivityRequest, &protocol conformance descriptor for ActivityRequest);
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2CEC1D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2CECA88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2CEC20C(uint64_t a1)
{
  v2 = sub_1A2C6A740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CEC248(uint64_t a1)
{
  v2 = sub_1A2C6A740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL _s11ActivityKit0A7RequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1A2D08B34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_1A2D08B34() & 1) == 0)
  {
    return 0;
  }

  if (!sub_1A2C8D278(a1[4], a1[5], a2[4], a2[5]))
  {
    return 0;
  }

  v8 = type metadata accessor for ActivityRequest(0);
  if (!static OpaqueActivityContent.== infix(_:_:)(a1 + v8[7], a2 + v8[7]))
  {
    return 0;
  }

  if ((sub_1A2CEB87C(*(a1 + v8[8]), *(a2 + v8[8])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1A2CEB87C(*(a1 + v8[9]), *(a2 + v8[9])) & 1) == 0)
  {
    return 0;
  }

  v9 = v8[10];
  v26 = *(a1 + v9);
  v27 = *(a1 + v9 + 16);
  v24 = *(a1 + v9);
  v25 = *(a1 + v9 + 16);
  v10 = a2 + v9;
  v28 = *v10;
  v29 = *(v10 + 2);
  v22 = *v10;
  v23 = *(v10 + 2);
  sub_1A2C66F58(&v26, v21);
  sub_1A2C66F58(&v28, v21);
  v11 = _s11ActivityKit0A19PresentationOptionsV2eeoiySbAC_ACtFZ_0(&v24, &v22);
  v30 = v22;
  v31 = v23;
  sub_1A2C69EAC(&v30);
  v32 = v24;
  v33 = v25;
  sub_1A2C69EAC(&v32);
  if ((v11 & 1) == 0 || (sub_1A2CC2F58(*(a1 + v8[11]), *(a2 + v8[11])) & 1) == 0 || *(a1 + v8[12]) != *(a2 + v8[12]) || *(a1 + v8[13]) != *(a2 + v8[13]) || *(a1 + v8[14]) != *(a2 + v8[14]) || *(a1 + v8[15]) != *(a2 + v8[15]))
  {
    return 0;
  }

  v13 = v8[16];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 4)
  {
    if (v15 != 4)
    {
      return 0;
    }
  }

  else if (v14 != v15)
  {
    return 0;
  }

  if ((_s11ActivityKit0A13EndingOptionsV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v16 = v8[18];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    return v20 && (*v17 == *v19 && v18 == v20 || (sub_1A2D08B34() & 1) != 0);
  }

  return !v20;
}

unint64_t sub_1A2CEC510()
{
  result = qword_1EB09EFC0;
  if (!qword_1EB09EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EFC0);
  }

  return result;
}

unint64_t sub_1A2CEC564()
{
  result = qword_1EB09F0D8;
  if (!qword_1EB09F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F0D8);
  }

  return result;
}

unint64_t sub_1A2CEC5B8()
{
  result = qword_1ED708D58;
  if (!qword_1ED708D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708D58);
  }

  return result;
}

unint64_t sub_1A2CEC60C()
{
  result = qword_1ED709268;
  if (!qword_1ED709268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A18B8, &qword_1A2D17DB0);
    sub_1A2CEC690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709268);
  }

  return result;
}

unint64_t sub_1A2CEC690()
{
  result = qword_1ED709270;
  if (!qword_1ED709270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709270);
  }

  return result;
}

uint64_t sub_1A2CEC6E4(void *a1)
{
  a1[1] = sub_1A2C69EDC(&qword_1EB09EFD8, type metadata accessor for ActivityRequest, &protocol conformance descriptor for ActivityRequest);
  a1[2] = sub_1A2C69EDC(&qword_1ED708D38, type metadata accessor for ActivityRequest, &protocol conformance descriptor for ActivityRequest);
  result = sub_1A2C69EDC(&unk_1EB09EFC8, type metadata accessor for ActivityRequest, &protocol conformance descriptor for ActivityRequest);
  a1[3] = result;
  return result;
}

void sub_1A2CEC790(uint64_t a1)
{
  sub_1A2CEC920(319, &qword_1ED70A008, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for OpaqueActivityContent(319);
    if (v2 <= 0x3F)
    {
      sub_1A2CD1390(319);
      if (v3 <= 0x3F)
      {
        sub_1A2CEC920(319, &qword_1ED709518, &type metadata for ActivityContentSource.Request, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1A2CEC920(319, qword_1ED70A010, &type metadata for ActivityProtectionClass, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1A2D07F94();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1A2CEC920(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A2CEC984()
{
  result = qword_1EB0A18E0;
  if (!qword_1EB0A18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A18E0);
  }

  return result;
}

unint64_t sub_1A2CEC9DC()
{
  result = qword_1ED708D40;
  if (!qword_1ED708D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708D40);
  }

  return result;
}

unint64_t sub_1A2CECA34()
{
  result = qword_1ED708D48;
  if (!qword_1ED708D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708D48);
  }

  return result;
}

uint64_t sub_1A2CECA88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00657079547365 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00617461447365 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A2D1B000 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5472657474616C70 && a2 == 0xED00007465677261 || (sub_1A2D08B34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A2D1B020 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A2D1B040 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D656870457369 && a2 == 0xEB000000006C6172 || (sub_1A2D08B34() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E756F626E557369 && a2 == 0xEB00000000646564 || (sub_1A2D08B34() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746E656D6F4D7369 && a2 == 0xEB00000000797261 || (sub_1A2D08B34() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74726F706D497369 && a2 == 0xEB00000000746E61 || (sub_1A2D08B34() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69746365746F7270 && a2 == 0xEF7373616C436E6FLL || (sub_1A2D08B34() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1A2D08B34() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x726154656E656373 && a2 == 0xEC00000073746567 || (sub_1A2D08B34() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A2D1B060 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A2D19720 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1A2CECFBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18F8, &qword_1A2D17D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2CED030(uint64_t a1)
{
  v2 = sub_1A2CEE3B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CED06C(uint64_t a1)
{
  v2 = sub_1A2CEE3B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CED0A8()
{
  if (*v0)
  {
    return 0x7265746661;
  }

  else
  {
    return 0x74616964656D6D69;
  }
}

uint64_t sub_1A2CED0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74616964656D6D69 && a2 == 0xE900000000000065;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265746661 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CED1C4(uint64_t a1)
{
  v2 = sub_1A2CEE2F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CED200(uint64_t a1)
{
  v2 = sub_1A2CEE2F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CED23C(uint64_t a1)
{
  v2 = sub_1A2CEE404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CED278(uint64_t a1)
{
  v2 = sub_1A2CEE404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPlatterDismissalPolicy.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1900, &qword_1A2D14CF0);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v21 - v3;
  v4 = sub_1A2D07F94();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1908, &qword_1A2D14CF8);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for ActivityPlatterDismissalPolicy(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1910, &qword_1A2D14D00);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CEE2F8();
  v16 = v28;
  sub_1A2D08C74();
  sub_1A2CEE34C(v29, v11);
  if ((*(v16 + 48))(v11, 1, v4) == 1)
  {
    v30 = 0;
    sub_1A2CEE404();
    sub_1A2D08A84();
    (*(v22 + 8))(v8, v23);
  }

  else
  {
    v18 = v24;
    (*(v16 + 32))(v24, v11, v4);
    v31 = 1;
    sub_1A2CEE3B0();
    v19 = v25;
    sub_1A2D08A84();
    sub_1A2C6D540(&qword_1ED7093B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    v20 = v27;
    sub_1A2D08AE4();
    (*(v26 + 8))(v19, v20);
    (*(v16 + 8))(v18, v4);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t ActivityPlatterDismissalPolicy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1930, &qword_1A2D14D08);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1938, &qword_1A2D14D10);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1940, &unk_1A2D14D18);
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for ActivityPlatterDismissalPolicy(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1A2CEE2F8();
  v20 = v51;
  sub_1A2D08C64();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v51 = v13;
  v42 = v15;
  v43 = v18;
  v22 = v48;
  v21 = v49;
  v23 = sub_1A2D08A64();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_1A2C6D870();
  v26 = v10;
  v27 = v12;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v30 = sub_1A2D088A4();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
    *v32 = v51;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v50 + 8))(v12, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  if (v25)
  {
    v57 = 1;
    sub_1A2CEE3B0();
    v28 = v22;
    sub_1A2D089D4();
    v29 = v50;
    v35 = v21;
    v36 = sub_1A2D07F94();
    sub_1A2C6D540(&qword_1ED7097D0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v37 = v42;
    v38 = v46;
    sub_1A2D08A54();
    (*(v47 + 8))(v28, v38);
    (*(v29 + 8))(v27, v26);
    swift_unknownObjectRelease();
    (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
    v39 = v43;
    sub_1A2CEE458(v37, v43);
  }

  else
  {
    v57 = 0;
    sub_1A2CEE404();
    sub_1A2D089D4();
    v34 = v50;
    v35 = v21;
    (*(v45 + 8))(v9, v44);
    (*(v34 + 8))(v12, v10);
    swift_unknownObjectRelease();
    v40 = sub_1A2D07F94();
    v39 = v43;
    (*(*(v40 - 8) + 56))(v43, 1, 1, v40);
  }

  sub_1A2CEE458(v39, v35);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1A2CEDD78(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C6D540(&qword_1EB0A1948, type metadata accessor for ActivityPlatterDismissalPolicy, &protocol conformance descriptor for ActivityPlatterDismissalPolicy);
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2CEDE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A70, &unk_1A2D0D250);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v8 = sub_1A2D07F44();
  v10 = v9;
  sub_1A2C6D540(&qword_1EB0A0A78, type metadata accessor for ActivityPlatterDismissalPolicy, &protocol conformance descriptor for ActivityPlatterDismissalPolicy);
  sub_1A2D07E64();
  sub_1A2C54E38(a2, &qword_1EB0A0A70, &unk_1A2D0D250);
  sub_1A2C55840(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1A2CEE8D8(v7, a2);
}

uint64_t _s11ActivityKit0A22PlatterDismissalPolicyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A2D07F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActivityPlatterDismissalPolicy(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A1998, &unk_1A2D15130);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1A2CEE34C(a1, &v20 - v12);
  sub_1A2CEE34C(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1A2CEE34C(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v17 = _s11ActivityKit0A13EndingOptionsV2eeoiySbAC_ACtFZ_0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1A2C9A6A4(v13);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A2C54E38(v13, &unk_1EB0A1998, &unk_1A2D15130);
    v17 = 0;
    return v17 & 1;
  }

  sub_1A2C9A6A4(v13);
  v17 = 1;
  return v17 & 1;
}

uint64_t type metadata accessor for ActivityPlatterDismissalPolicy(uint64_t a1)
{
  result = qword_1EB09ED68;
  if (!qword_1EB09ED68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A2CEE2F8()
{
  result = qword_1EB0A1918;
  if (!qword_1EB0A1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1918);
  }

  return result;
}

uint64_t sub_1A2CEE34C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityPlatterDismissalPolicy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A2CEE3B0()
{
  result = qword_1EB0A1920;
  if (!qword_1EB0A1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1920);
  }

  return result;
}

unint64_t sub_1A2CEE404()
{
  result = qword_1EB0A1928;
  if (!qword_1EB0A1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1928);
  }

  return result;
}

uint64_t sub_1A2CEE458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityPlatterDismissalPolicy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2CEE4BC(void *a1)
{
  a1[1] = sub_1A2C6D540(&qword_1EB0A0A78, type metadata accessor for ActivityPlatterDismissalPolicy, &protocol conformance descriptor for ActivityPlatterDismissalPolicy);
  a1[2] = sub_1A2C6D540(&qword_1EB0A1948, type metadata accessor for ActivityPlatterDismissalPolicy, &protocol conformance descriptor for ActivityPlatterDismissalPolicy);
  result = sub_1A2C6D540(&qword_1EB0A1950, type metadata accessor for ActivityPlatterDismissalPolicy, &protocol conformance descriptor for ActivityPlatterDismissalPolicy);
  a1[3] = result;
  return result;
}

uint64_t sub_1A2CEE590(uint64_t a1)
{
  v1 = sub_1A2D07F94();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1A2CEE61C()
{
  result = qword_1EB0A1958;
  if (!qword_1EB0A1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1958);
  }

  return result;
}

unint64_t sub_1A2CEE674()
{
  result = qword_1EB0A1960;
  if (!qword_1EB0A1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1960);
  }

  return result;
}

unint64_t sub_1A2CEE6CC()
{
  result = qword_1EB0A1968;
  if (!qword_1EB0A1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1968);
  }

  return result;
}

unint64_t sub_1A2CEE724()
{
  result = qword_1EB0A1970;
  if (!qword_1EB0A1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1970);
  }

  return result;
}

unint64_t sub_1A2CEE77C()
{
  result = qword_1EB0A1978;
  if (!qword_1EB0A1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1978);
  }

  return result;
}

unint64_t sub_1A2CEE7D4()
{
  result = qword_1EB0A1980;
  if (!qword_1EB0A1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1980);
  }

  return result;
}

unint64_t sub_1A2CEE82C()
{
  result = qword_1EB0A1988;
  if (!qword_1EB0A1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1988);
  }

  return result;
}

unint64_t sub_1A2CEE884()
{
  result = qword_1EB0A1990;
  if (!qword_1EB0A1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1990);
  }

  return result;
}

uint64_t sub_1A2CEE8D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A70, &unk_1A2D0D250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ActivityInputServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709D80 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709D90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

ActivityKit::ActivityInputServerError::Code_optional __swiftcall ActivityInputServerError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *ActivityInputServerError.init(code:underlyingError:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t ActivityInputServerError.errorUserInfo.getter()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A19A8, qword_1A2D15140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 32) = sub_1A2D08444();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1);
    v4 = sub_1A2CAAF40(inited);
    swift_setDeallocating();
    sub_1A2CEED3C(inited + 32);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1A2CAAF40(v6);
  }
}

unint64_t sub_1A2CEEBAC()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A19A8, qword_1A2D15140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 32) = sub_1A2D08444();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1);
    v4 = sub_1A2CAAF40(inited);
    swift_setDeallocating();
    sub_1A2CEED3C(inited + 32);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1A2CAAF40(v6);
  }
}

uint64_t sub_1A2CEECC4(uint64_t a1)
{
  v2 = sub_1A2CEEF58();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A2CEED00(uint64_t a1)
{
  v2 = sub_1A2CEEF58();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1A2CEED3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A19B0, &qword_1A2D0BDC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A2CEEDA8()
{
  result = qword_1EB0A19B8;
  if (!qword_1EB0A19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A19B8);
  }

  return result;
}

unint64_t sub_1A2CEEE00()
{
  result = qword_1EB0A19C0;
  if (!qword_1EB0A19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A19C0);
  }

  return result;
}

uint64_t sub_1A2CEEE64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1A2CEEEC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A2CEEF58()
{
  result = qword_1EB0A19C8;
  if (!qword_1EB0A19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A19C8);
  }

  return result;
}

uint64_t sub_1A2CEEFAC()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09F590);
  __swift_project_value_buffer(v0, qword_1EB09F590);
  return sub_1A2D08084();
}

uint64_t sub_1A2CEF030()
{
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }

  v0 = off_1ED709CF8;
  type metadata accessor for ActivityCenter();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  qword_1ED708EA8 = v1;
}

uint64_t static ActivityCenter.shared.getter()
{
  if (qword_1ED708EA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A2CEF110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A2C53CD8(*(v3 + 16) + 32, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = *(v8 + 8);

  v10 = v16;
  v9(a1, a2, v7, v8);
  if (v10)
  {

    __swift_destroy_boxed_opaque_existential_1(v13);
    v11 = type metadata accessor for ActivityDescriptor(0);
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }

  else
  {

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

uint64_t sub_1A2CEF238(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(*(v1 + 16) + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 16))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CEF2F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for OpaqueActivityPayload(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = qword_1ED708D98;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for ActivityUIDismissalPolicy(0);
  v13 = __swift_project_value_buffer(v12, qword_1ED708DA0);
  sub_1A2C7F304(v13, v6, type metadata accessor for ActivityUIDismissalPolicy);
  v14 = type metadata accessor for ActivityEndingOptions(0);
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  sub_1A2C90058(a1, a2, v9, v6);

  sub_1A2C54E38(v6, &unk_1EB0A0AC0, &qword_1A2D0A810);
  return sub_1A2C54E38(v9, &qword_1EB0A02E0, &qword_1A2D0AA50);
}

uint64_t sub_1A2CEF500(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(*(v1 + 16) + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 48))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CEF5BC(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(*(v1 + 16) + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 56))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CEF678(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(*(v1 + 16) + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 64))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CEF734(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  sub_1A2C53CD8(*(v3 + 16) + 32, v12);
  v7 = v13;
  v8 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v15 = v6;
  v9 = *(v8 + 40);

  v10 = v9(a1, a2, &v15, v7, v8);

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

id sub_1A2CEF804(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0940, &unk_1A2D0D280);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0AE0, &qword_1A2D15370);
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A19D0, &qword_1A2D15378);
  v13 = *(v12 - 8);
  v39 = v12;
  v40 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v34 - v14;
  v15 = *(*(v2 + 16) + 88);
  v16 = *&v15[OBJC_IVAR____TtC11ActivityKit40ActivityFrequentUpdatesObservationClient_singleton];
  v17 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activities;
  swift_beginAccess();
  v18 = *(v16 + v17);
  v19 = MEMORY[0x1E69E7CD0];
  if (v18)
  {
    v19 = v18;
  }

  v45 = v19;

  v35 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0AF0, qword_1A2D0D290);
  sub_1A2D081D4();
  v45 = *(v16 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activityDiffPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0B00, &qword_1A2D0CDF0);
  sub_1A2C56A78(&unk_1EB09EB48, &qword_1EB0A0940, &unk_1A2D0D280, MEMORY[0x1E695C008]);
  sub_1A2C56A78(&qword_1EB09EB70, &qword_1EB0A0B00, &qword_1A2D0CDF0, MEMORY[0x1E695BF88]);
  sub_1A2D08244();
  (*(v6 + 8))(v8, v5);
  sub_1A2C56A78(&qword_1EB09EBE0, &qword_1EB0A0AE0, &qword_1A2D15370, MEMORY[0x1E695BDC0]);
  v20 = v36;
  v21 = sub_1A2D081F4();
  (*(v9 + 8))(v11, v20);

  v45 = v21;
  sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v22 = sub_1A2D086F4();
  v44 = v22;
  v23 = sub_1A2D086D4();
  v24 = v38;
  (*(*(v23 - 8) + 56))(v38, 1, 1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A19D8, &qword_1A2D15380);
  sub_1A2C56A78(&unk_1EB09EB80, &qword_1EB0A19D8, &qword_1A2D15380, MEMORY[0x1E695BED8]);
  sub_1A2C8B9D4();
  v25 = v37;
  sub_1A2D08264();
  sub_1A2C54E38(v24, &qword_1EB0A0570, &qword_1A2D0ADA0);

  v26 = swift_allocObject();
  v27 = v42;
  *(v26 + 16) = v41;
  *(v26 + 24) = v27;
  sub_1A2C56A78(&qword_1EB09EBC0, &qword_1EB0A19D0, &qword_1A2D15378, MEMORY[0x1E695BE98]);

  v28 = v39;
  v29 = sub_1A2D08284();

  (*(v40 + 8))(v25, v28);
  v30 = type metadata accessor for CancellableAssertion();
  v31 = objc_allocWithZone(v30);
  v45 = v29;
  sub_1A2D080E4();
  swift_allocObject();

  *&v31[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v43.receiver = v31;
  v43.super_class = v30;
  v32 = objc_msgSendSuper2(&v43, sel_init);

  return v32;
}

void sub_1A2CEFE1C(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *a1 + 56;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(v3 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];

      a2(v13, v14);

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }
}

uint64_t ActivityCenter.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1A2CEFF88()
{
  result = [objc_allocWithZone(type metadata accessor for ActivityCenterObjcBridge()) init];
  qword_1ED708900 = result;
  return result;
}

id static ActivityCenterObjcBridge.shared.getter()
{
  if (qword_1ED7088F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED708900;

  return v1;
}

id sub_1A2CF0070()
{
  v1 = v0;
  v13 = sub_1A2D086E4();
  v2 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12 = OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge_queue;
  v7 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v11[1] = "bservationClient";
  v11[2] = v7;
  sub_1A2D082F4();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v13);
  *&v0[v12] = sub_1A2D08724();
  v8 = OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge_latestActivityContentUpdateByIdentifier;
  *&v1[v8] = sub_1A2CAB070(MEMORY[0x1E69E7CC0]);
  if (qword_1ED708EA0 != -1)
  {
    swift_once();
  }

  *&v1[OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge__activityCenter] = qword_1ED708EA8;
  v9 = type metadata accessor for ActivityCenterObjcBridge();
  v14.receiver = v1;
  v14.super_class = v9;

  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_1A2CF0388(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A19E0, &qword_1A2D15388);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge__activityCenter);
  if (qword_1ED7092D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED708D30;
  v9 = *(v7 + 16);
  v24 = xmmword_1ED708D00;
  v25 = xmmword_1ED708D20;
  v23 = xmmword_1ED708D10;
  sub_1A2C53CD8(v9 + 32, v29);
  v10 = v30;
  v11 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v27[1] = v23;
  v27[0] = v24;
  v27[2] = v25;
  v28 = v8;
  v12 = *(v11 + 48);

  v13 = v12(v27, v10, v11);

  __swift_destroy_boxed_opaque_existential_1(v29);
  *&v27[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0278, &qword_1A2D0A940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A03B0, &qword_1A2D0AAB8);
  sub_1A2C56A78(&qword_1EB09EBA0, &qword_1EB0A0278, &qword_1A2D0A940, MEMORY[0x1E695BED8]);
  sub_1A2C56A78(&qword_1EB0A19F0, &qword_1EB0A03B0, &qword_1A2D0AAB8, MEMORY[0x1E695C008]);
  sub_1A2D08234();

  v14 = swift_allocObject();
  v15 = v22;
  *(v14 + 16) = v21;
  *(v14 + 24) = v15;
  sub_1A2C56A78(&qword_1EB0A19F8, &qword_1EB0A19E0, &qword_1A2D15388, MEMORY[0x1E695BDA0]);

  v16 = sub_1A2D08284();

  (*(v4 + 8))(v6, v3);
  v17 = type metadata accessor for CancellableAssertion();
  v18 = objc_allocWithZone(v17);
  *&v27[0] = v16;
  sub_1A2D080E4();
  swift_allocObject();

  *&v18[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v26.receiver = v18;
  v26.super_class = v17;
  v19 = objc_msgSendSuper2(&v26, sel_init);

  return v19;
}

uint64_t sub_1A2CF0764(uint64_t *a1)
{
  if (qword_1EB09F588 != -1)
  {
    swift_once();
  }

  v1 = sub_1A2D08094();
  __swift_project_value_buffer(v1, qword_1EB09F590);
  v2 = sub_1A2D07EC4();
  v3 = [v2 localizedDescription];
  v4 = sub_1A2D08444();
  v6 = v5;

  v7 = v2;

  v8 = sub_1A2D08074();
  v9 = sub_1A2D08684();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446978;
    *(v10 + 4) = sub_1A2C55558(0xD000000000000041, 0x80000001A2D1B210, &v20);
    *(v10 + 12) = 2082;
    v12 = [v7 domain];
    v13 = sub_1A2D08444();
    v15 = v14;

    v16 = sub_1A2C55558(v13, v15, &v20);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2048;
    v17 = [v7 code];

    *(v10 + 24) = v17;
    *(v10 + 32) = 2082;
    v18 = sub_1A2C55558(v4, v6, &v20);

    *(v10 + 34) = v18;
    _os_log_impl(&dword_1A2C51000, v8, v9, "%{public}s: %{public}s (%ld) %{public}s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1A58E5180](v11, -1, -1);
    MEMORY[0x1A58E5180](v10, -1, -1);
  }

  else
  {
  }

  v20 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0158, &qword_1A2D0A860);
  return sub_1A2D081D4();
}

uint64_t sub_1A2CF0A18(uint64_t *a1, void (*a2)(void, __n128))
{
  v4 = type metadata accessor for ActivityDescriptor(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *a1;
  v13 = *(*a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v18 = a2;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1A2D088E4();
    sub_1A2C569A0(0, &qword_1ED7088D8, off_1E76B6500);
    v15 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    do
    {
      sub_1A2C7F304(v15, v11, type metadata accessor for ActivityDescriptor);
      sub_1A2C7F304(v11, v7, type metadata accessor for ActivityDescriptor);
      ACActivityDescriptor.init(descriptor:)(v7);
      sub_1A2C6E22C(v11, type metadata accessor for ActivityDescriptor);
      sub_1A2D088C4();
      sub_1A2D088F4();
      sub_1A2D08904();
      sub_1A2D088D4();
      v15 += v16;
      --v13;
    }

    while (v13);
    a2 = v18;
    v14 = v19;
  }

  a2(v14, v9);
}

void sub_1A2CF0C30(uint64_t a1, uint64_t a2)
{
  sub_1A2C569A0(0, &qword_1ED7088D8, off_1E76B6500);
  v3 = sub_1A2D08544();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1A2CF0CAC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge_latestActivityContentUpdateByIdentifier;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_1A2C64868(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v17 = type metadata accessor for ActivityDescriptorContentState(0);
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v16 = 0;
    goto LABEL_6;
  }

  v12 = v10;
  v13 = *(v9 + 56);
  v14 = type metadata accessor for ActivityDescriptorContentState(0);
  v15 = *(v14 - 8);
  sub_1A2C7F304(v13 + *(v15 + 72) * v12, v7, type metadata accessor for ActivityDescriptorContentState);

  v16 = 1;
  (*(v15 + 56))(v7, 0, 1, v14);
LABEL_6:
  sub_1A2C54E38(v7, &qword_1EB0A0A68, &unk_1A2D0D240);
  return v16;
}

uint64_t sub_1A2CF0EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for OpaqueActivityPayload(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = qword_1ED708D98;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for ActivityUIDismissalPolicy(0);
  v13 = __swift_project_value_buffer(v12, qword_1ED708DA0);
  sub_1A2C7F304(v13, v6, type metadata accessor for ActivityUIDismissalPolicy);
  v14 = type metadata accessor for ActivityEndingOptions(0);
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  sub_1A2C90058(a1, a2, v9, v6);

  sub_1A2C54E38(v6, &unk_1EB0A0AC0, &qword_1A2D0A810);
  return sub_1A2C54E38(v9, &qword_1EB0A02E0, &qword_1A2D0AA50);
}

id sub_1A2CF11D0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0690, &qword_1A2D0B768);
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v30 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A08, &qword_1A2D15390);
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v30 - v8;
  v36 = v2;
  v10 = *&v2[OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge__activityCenter];
  if (qword_1ED7092D8 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED708D30;
  v12 = *(v10 + 16);
  v39 = xmmword_1ED708D00;
  v40 = xmmword_1ED708D20;
  v38 = xmmword_1ED708D10;
  sub_1A2C53CD8(v12 + 32, v44);
  v14 = v45;
  v13 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v42[1] = v38;
  v42[0] = v39;
  v42[2] = v40;
  v43 = v11;
  v15 = *(v13 + 64);

  v16 = v15(v42, v14, v13);

  __swift_destroy_boxed_opaque_existential_1(v44);
  *&v42[0] = v16;
  sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v17 = sub_1A2D086F4();
  v44[0] = v17;
  v18 = sub_1A2D086D4();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02B8, &qword_1A2D0A980);
  sub_1A2C56A78(&qword_1ED708F10, &qword_1EB0A02B8, &qword_1A2D0A980, MEMORY[0x1E695BED8]);
  sub_1A2C8B9D4();
  sub_1A2D08264();
  sub_1A2C54E38(v5, &qword_1EB0A0570, &qword_1A2D0ADA0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0378, &qword_1A2D0AA90);
  sub_1A2C56A78(&qword_1ED708F18, &qword_1EB0A0690, &qword_1A2D0B768, MEMORY[0x1E695BE98]);
  sub_1A2C56A78(&qword_1ED7088E0, &qword_1EB0A0378, &qword_1A2D0AA90, MEMORY[0x1E695C008]);
  v19 = v32;
  sub_1A2D08234();
  (*(v31 + 8))(v7, v19);
  v20 = swift_allocObject();
  v21 = v36;
  v22 = v35;
  v20[2] = v36;
  v20[3] = v22;
  v20[4] = v37;
  sub_1A2C56A78(&qword_1ED7088E8, &qword_1EB0A1A08, &qword_1A2D15390, MEMORY[0x1E695BDA0]);
  v23 = v21;

  v24 = v34;
  v25 = sub_1A2D08284();

  (*(v33 + 8))(v9, v24);
  v26 = type metadata accessor for CancellableAssertion();
  v27 = objc_allocWithZone(v26);
  *&v42[0] = v25;
  sub_1A2D080E4();
  swift_allocObject();

  *&v27[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v41.receiver = v27;
  v41.super_class = v26;
  v28 = objc_msgSendSuper2(&v41, sel_init);

  return v28;
}

uint64_t sub_1A2CF17BC(uint64_t *a1)
{
  if (qword_1EB09F588 != -1)
  {
    swift_once();
  }

  v1 = sub_1A2D08094();
  __swift_project_value_buffer(v1, qword_1EB09F590);
  v2 = sub_1A2D07EC4();
  v3 = [v2 localizedDescription];
  v4 = sub_1A2D08444();
  v6 = v5;

  v7 = v2;

  v8 = sub_1A2D08074();
  v9 = sub_1A2D08684();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446978;
    *(v10 + 4) = sub_1A2C55558(0xD00000000000003DLL, 0x80000001A2D1B1D0, &v20);
    *(v10 + 12) = 2082;
    v12 = [v7 domain];
    v13 = sub_1A2D08444();
    v15 = v14;

    v16 = sub_1A2C55558(v13, v15, &v20);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2048;
    v17 = [v7 code];

    *(v10 + 24) = v17;
    *(v10 + 32) = 2082;
    v18 = sub_1A2C55558(v4, v6, &v20);

    *(v10 + 34) = v18;
    _os_log_impl(&dword_1A2C51000, v8, v9, "%{public}s: %{public}s (%ld) %{public}s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1A58E5180](v11, -1, -1);
    MEMORY[0x1A58E5180](v10, -1, -1);
  }

  else
  {
  }

  v20 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
  return sub_1A2D081D4();
}

id sub_1A2CF1AA4(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  v12 = a6(a5, v10);

  return v12;
}

id ActivityCenterObjcBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityCenterObjcBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A2CF1CB4(uint64_t a1, uint64_t a2)
{
  v8 = [objc_allocWithZone(type metadata accessor for ActivityAuthorization()) init];
  v4 = *(*&v8[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  os_unfair_lock_lock(v4);
  v5 = &v8[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    LOWORD(v9) = 512;
    (*(v6 + 48))(a1, a2, &v9, ObjectType, v6);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CF22B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1A2D08434();
  (*(v2 + 16))(v2, v3);
}

uint64_t sub_1A2CF2330(uint64_t a1)
{
  v2 = sub_1A2CF2554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CF236C(uint64_t a1)
{
  v2 = sub_1A2CF2554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresentationMap.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A18, &qword_1A2D15410);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CF2554();

  sub_1A2D08C74();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A20, &qword_1A2D15418);
  sub_1A2CF27B4(&qword_1EB09EB38, sub_1A2CF25A8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1A2D08AE4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A2CF2554()
{
  result = qword_1EB09F0B8;
  if (!qword_1EB09F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F0B8);
  }

  return result;
}

unint64_t sub_1A2CF25A8()
{
  result = qword_1EB09ED38;
  if (!qword_1EB09ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED38);
  }

  return result;
}

uint64_t ActivityPresentationMap.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A28, &qword_1A2D15420);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CF2554();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A20, &qword_1A2D15418);
    sub_1A2CF27B4(&qword_1EB09EB30, sub_1A2CF2838, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1A2D08A54();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2CF27B4(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A1A20, &qword_1A2D15418);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A2CF2838()
{
  result = qword_1EB09ED30;
  if (!qword_1EB09ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED30);
  }

  return result;
}

unint64_t sub_1A2CF28BC(void *a1)
{
  a1[1] = sub_1A2CA5A20();
  a1[2] = sub_1A2CF28F4();
  result = sub_1A2CF2948();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CF28F4()
{
  result = qword_1EB09EDB8;
  if (!qword_1EB09EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EDB8);
  }

  return result;
}

unint64_t sub_1A2CF2948()
{
  result = qword_1EB09EDB0;
  if (!qword_1EB09EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EDB0);
  }

  return result;
}

uint64_t sub_1A2CF299C(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CF28F4();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

unint64_t sub_1A2CF2A88()
{
  result = qword_1EB0A1A30;
  if (!qword_1EB0A1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1A30);
  }

  return result;
}

unint64_t sub_1A2CF2AE0()
{
  result = qword_1EB09F0A8;
  if (!qword_1EB09F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F0A8);
  }

  return result;
}

unint64_t sub_1A2CF2B38()
{
  result = qword_1EB09F0B0;
  if (!qword_1EB09F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F0B0);
  }

  return result;
}

uint64_t sub_1A2CF2B8C(uint64_t a1, unsigned __int8 a2)
{
  sub_1A2D08C14();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

uint64_t sub_1A2CF2CB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D617473656D6974;
  v3 = 0xE900000000000070;
  v4 = a1;
  v5 = 0x746144656C617473;
  v6 = 0xE800000000000000;
  if (a1 == 5)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v5 = 0x7974746168437369;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001A2D18B20;
  if (a1 != 3)
  {
    v7 = 25705;
    v8 = 0xE200000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x53746E65746E6F63;
  v10 = 0xEC00000065746174;
  if (a1 != 1)
  {
    v9 = 0x746E65746E6F63;
    v10 = 0xE700000000000000;
  }

  if (!a1)
  {
    v9 = 0x6D617473656D6974;
    v10 = 0xE900000000000070;
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
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 0xEC00000065746174;
        if (v11 != 0x53746E65746E6F63)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v3 = 0xE700000000000000;
        if (v11 != 0x746E65746E6F63)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v3 = 0xE900000000000065;
        if (v11 != 0x746144656C617473)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v3 = 0xE800000000000000;
        if (v11 != 0x7974746168437369)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v3 = 0x80000001A2D18B20;
      if (v11 != 0xD000000000000012)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0xE200000000000000;
    v2 = 25705;
  }

  if (v11 != v2)
  {
LABEL_37:
    v13 = sub_1A2D08B34();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v3)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

unint64_t ActivityPayloadError.errorDescription.getter()
{
  v1 = type metadata accessor for ActivityPayloadError(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2C72030(v0, v3, type metadata accessor for ActivityPayloadError);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A40, &qword_1A2D15658);
  v6 = *(*(v5 - 8) + 8);
  v6(&v3[v4], v5);
  v6(v3, v5);
  return 0xD00000000000001ELL;
}

uint64_t ActivityPayloadError.failureReason.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A48, &qword_1A2D15660);
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A50, &qword_1A2D15668);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v29 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A58, &qword_1A2D15670);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v29 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A60, &qword_1A2D15678);
  v36 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A40, &qword_1A2D15658);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for ActivityPayloadError(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2C72030(v1, v19, type metadata accessor for ActivityPayloadError);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650) + 48);
  v21 = *(v11 + 32);
  v21(v16, v19, v10);
  v21(v13, &v19[v20], v10);
  sub_1A2C72100();
  sub_1A2D07DA4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A68, &qword_1A2D15680);
  v23 = v29;
  (*(*(v22 - 8) + 56))(v29, 1, 1, v22);
  v24 = v33;
  sub_1A2D07F04();
  sub_1A2D07D24();
  (*(v34 + 8))(v24, v35);
  sub_1A2C54E38(v23, &qword_1EB0A1A50, &qword_1A2D15668);
  (*(v30 + 8))(v7, v32);
  sub_1A2C56A78(&qword_1EB0A1A70, &qword_1EB0A1A60, &qword_1A2D15678, MEMORY[0x1E6968050]);
  v25 = v31;
  sub_1A2D07DB4();
  v39 = v37;
  v40 = v38;
  MEMORY[0x1A58E4150](0x6564656563786520, 0xEA00000000002064);
  sub_1A2D07DB4();
  MEMORY[0x1A58E4150](v37, v38);

  v26 = v39;
  (*(v36 + 8))(v9, v25);
  v27 = *(v11 + 8);
  v27(v13, v10);
  v27(v16, v10);
  return v26;
}

unint64_t ActivityPayloadError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityPayloadError(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2CAAF40(MEMORY[0x1E69E7CC0]);
  sub_1A2C72030(v1, v4, type metadata accessor for ActivityPayloadError);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650) + 48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A40, &qword_1A2D15658);
  v8 = *(*(v7 - 8) + 8);
  v8(&v4[v6], v7);
  v8(v4, v7);
  v9 = sub_1A2D08444();
  v11 = v10;
  v12 = MEMORY[0x1E69E6158];
  v44 = MEMORY[0x1E69E6158];
  *&v43 = 0xD00000000000001ELL;
  *(&v43 + 1) = 0x80000001A2D1B260;
  sub_1A2CAB5F4(&v43, v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v5;
  sub_1A2CF4CBC(v42, v9, v11, isUniquelyReferenced_nonNull_native);

  v14 = v41;
  v15 = ActivityPayloadError.failureReason.getter();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = sub_1A2D08444();
    v21 = v20;
    v44 = v12;
    *&v43 = v17;
    *(&v43 + 1) = v18;
    sub_1A2CAB5F4(&v43, v42);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v14;
    sub_1A2CF4CBC(v42, v19, v21, v22);

    v14 = v41;
  }

  sub_1A2C75024(&qword_1EB0A1A78, type metadata accessor for ActivityPayloadError, &protocol conformance descriptor for ActivityPayloadError);
  v23 = sub_1A2D07E54();
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    v27 = sub_1A2D08444();
    v29 = v28;
    v44 = v12;
    *&v43 = v25;
    *(&v43 + 1) = v26;
    sub_1A2CAB5F4(&v43, v42);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v14;
    sub_1A2CF4CBC(v42, v27, v29, v30);

    v14 = v41;
  }

  v31 = sub_1A2D07E24();
  if (v32)
  {
    v33 = v31;
    v34 = v32;
    v35 = sub_1A2D08444();
    v37 = v36;
    v44 = v12;
    *&v43 = v33;
    *(&v43 + 1) = v34;
    sub_1A2CAB5F4(&v43, v42);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v14;
    sub_1A2CF4CBC(v42, v35, v37, v38);

    return v41;
  }

  return v14;
}

unint64_t sub_1A2CF3888(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2C72030(v1, v3, type metadata accessor for ActivityPayloadError);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A40, &qword_1A2D15658);
  v6 = *(*(v5 - 8) + 8);
  v6(&v3[v4], v5);
  v6(v3, v5);
  return 0xD00000000000001ELL;
}

uint64_t sub_1A2CF39B0(uint64_t a1)
{
  v2 = sub_1A2C75024(&qword_1EB0A1AC0, type metadata accessor for ActivityPayloadError, &protocol conformance descriptor for ActivityPayloadError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A2CF3A1C(uint64_t a1)
{
  v2 = sub_1A2C75024(&qword_1EB0A1AC0, type metadata accessor for ActivityPayloadError, &protocol conformance descriptor for ActivityPayloadError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t OpaqueActivityPayload.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OpaqueActivityPayload(0) + 20);
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OpaqueActivityPayload.contentState.getter()
{
  v1 = v0 + *(type metadata accessor for OpaqueActivityPayload(0) + 24);
  v2 = *v1;
  sub_1A2C5E63C(*v1, *(v1 + 8));
  return v2;
}

uint64_t OpaqueActivityPayload.contentState.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for OpaqueActivityPayload(0) + 24);
  result = sub_1A2C55840(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t OpaqueActivityPayload.isChatty.setter(char a1)
{
  result = type metadata accessor for OpaqueActivityPayload(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_1A2CF3EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1A2D07F94();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A2CF3F6C(uint64_t a1)
{
  sub_1A2D08484();
}

unint64_t sub_1A2CF4088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A2CF65C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1A2CF40B8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = *v1;
  v4 = 0xE900000000000070;
  v5 = 0x6D617473656D6974;
  v6 = 0x746144656C617473;
  if (v3 != 5)
  {
    v6 = 0x7974746168437369;
    v2 = 0xE800000000000000;
  }

  v7 = 0x80000001A2D18B20;
  v8 = 0xD000000000000012;
  if (v3 != 3)
  {
    v8 = 25705;
    v7 = 0xE200000000000000;
  }

  if (*v1 > 4u)
  {
    v7 = v2;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xEC00000065746174;
  v10 = 0x53746E65746E6F63;
  if (v3 != 1)
  {
    v10 = 0x746E65746E6F63;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v5 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v7;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t sub_1A2CF419C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CF65C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CF41D0(uint64_t a1)
{
  v2 = sub_1A2C74FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CF420C(uint64_t a1)
{
  v2 = sub_1A2C74FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CF4250(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C75024(&qword_1EB09F658, type metadata accessor for OpaqueActivityPayload, &protocol conformance descriptor for OpaqueActivityPayload);
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t ActivityPayload.timestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1A2D07F94();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ActivityPayload.init(timestamp:contentState:alertConfiguration:staleDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v51 = a4;
  v53 = a1;
  v54 = a3;
  v57 = a2;
  v55 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v43 - v14;
  v50 = sub_1A2D07F94();
  v56 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v43 - v17;
  v48 = *(a5 - 8);
  v19 = v48;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[0] = a5;
  v58[1] = a6;
  v23 = a6;
  v45 = a6;
  v46 = a7;
  v58[2] = a7;
  v58[3] = a8;
  v44 = a8;
  v47 = type metadata accessor for ActivityContent(0, v58);
  v24 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v43 - v29;
  v31 = *(v19 + 16);
  v32 = a5;
  v43 = a5;
  v31(v22, v57, a5, v28);
  v33 = v51;
  sub_1A2C6BD18(v51, v18, &qword_1EB0A0E28, &unk_1A2D0EC10);
  ActivityContent.init(state:staleDate:relevanceScore:)(v22, v18, v32, v23, a7, a8, v30, 0.0);
  v34 = v49;
  v35 = v50;
  v36 = v53;
  (*(v56 + 16))(v49, v53, v50);
  v37 = v47;
  (*(v24 + 16))(v26, v30, v47);
  v38 = v54;
  v39 = v52;
  sub_1A2C6BD18(v54, v52, &qword_1EB0A04D0, &unk_1A2D15640);
  v40 = v39;
  v41 = v43;
  ActivityPayload.init(timestamp:content:alertConfiguration:)(v34, v26, v40, v43, v45, v46, v44, v55);
  sub_1A2C54E38(v33, &qword_1EB0A0E28, &unk_1A2D0EC10);
  sub_1A2C54E38(v38, &qword_1EB0A04D0, &unk_1A2D15640);
  (*(v48 + 8))(v57, v41);
  (*(v56 + 8))(v36, v35);
  return (*(v24 + 8))(v30, v37);
}

uint64_t ActivityPayload.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for OpaqueActivityContent(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v41 = a5;
  v15 = type metadata accessor for ActivityContent(0, &v45);
  v39 = *(v15 - 8);
  v40 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v38 = type metadata accessor for ActivityPayload(0, &v45);
  v18 = *(v38 + 60);
  v19 = type metadata accessor for AlertConfiguration(0);
  v20 = *(*(v19 - 8) + 56);
  v43 = v18;
  v20(a6 + v18, 1, 1, v19);
  v21 = sub_1A2D07FC4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v49 = a6;
  v23(a6, a1, v21);
  v24 = type metadata accessor for OpaqueActivityPayload(0);
  v25 = v24[7];
  v44 = a1;
  sub_1A2C72030(a1 + v25, v14, type metadata accessor for OpaqueActivityContent);
  v26 = v42;
  ActivityContent.init(from:)(v14, a2, a3, a4, v41, v17);
  if (v26)
  {
    sub_1A2C6E28C(v44, type metadata accessor for OpaqueActivityPayload);
    v27 = v49;
    (*(v22 + 8))(v49, v21);
    return sub_1A2C54E38(v27 + v43, &qword_1EB0A04D0, &unk_1A2D15640);
  }

  else
  {
    v29 = v38;
    v30 = v49;
    (*(v39 + 32))(v49 + *(v38 + 56), v17, v40);
    v31 = v24[5];
    v32 = *(v29 + 52);
    v33 = sub_1A2D07F94();
    v34 = v44;
    (*(*(v33 - 8) + 16))(v30 + v32, v44 + v31, v33);
    v35 = v24[8];
    v36 = v43;
    sub_1A2C54E38(v30 + v43, &qword_1EB0A04D0, &unk_1A2D15640);
    sub_1A2C6BD18(v34 + v35, v30 + v36, &qword_1EB0A04D0, &unk_1A2D15640);
    return sub_1A2C6E28C(v34, type metadata accessor for OpaqueActivityPayload);
  }
}

void sub_1A2CF4B28(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A2C64868(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for BufferedAlert(0);
      sub_1A2C8B18C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for BufferedAlert);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1A2CB4108();
    goto LABEL_7;
  }

  sub_1A2CB3378(v15, a4 & 1);
  v21 = sub_1A2C64868(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1A2D08B84();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1A2C7D544(v12, a2, a3, a1, v18, type metadata accessor for BufferedAlert, type metadata accessor for BufferedAlert);
}

void sub_1A2CF4CBC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A2C64868(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A2CB4450();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A2CB33F0(v16, a4 & 1);
    v11 = sub_1A2C64868(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1A2D08B84();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_1A2CAB5F4(a1, v22);
  }

  else
  {
    sub_1A2CF4E38(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1A2CF4E38(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A2CAB5F4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t _s11ActivityKit06OpaqueA7PayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A2D07F94();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1208, &qword_1A2D0FAF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for AlertConfiguration(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1AC8, qword_1A2D15A78);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  if ((sub_1A2D07FA4() & 1) == 0)
  {
    goto LABEL_19;
  }

  v44 = v10;
  v21 = type metadata accessor for OpaqueActivityPayload(0);
  if ((_s11ActivityKit0A13EndingOptionsV2eeoiySbAC_ACtFZ_0() & 1) == 0 || !sub_1A2C8D278(*(a1 + v21[6]), *(a1 + v21[6] + 8), *(a2 + v21[6]), *(a2 + v21[6] + 8)) || !_s11ActivityKit06OpaqueA7ContentV2eeoiySbAC_ACtFZ_0(a1 + v21[7], a2 + v21[7]))
  {
    goto LABEL_19;
  }

  v43 = v21;
  v22 = v21[8];
  v23 = *(v18 + 48);
  sub_1A2C6BD18(a1 + v22, v20, &qword_1EB0A04D0, &unk_1A2D15640);
  v24 = a2 + v22;
  v25 = v23;
  sub_1A2C6BD18(v24, &v20[v23], &qword_1EB0A04D0, &unk_1A2D15640);
  v26 = *(v12 + 48);
  if (v26(v20, 1, v11) != 1)
  {
    sub_1A2C6BD18(v20, v17, &qword_1EB0A04D0, &unk_1A2D15640);
    if (v26(&v20[v25], 1, v11) != 1)
    {
      sub_1A2C67248(&v20[v25], v14, type metadata accessor for AlertConfiguration);
      v29 = _s11ActivityKit18AlertConfigurationV2eeoiySbAC_ACtFZ_0(v17, v14);
      sub_1A2C6E28C(v14, type metadata accessor for AlertConfiguration);
      sub_1A2C6E28C(v17, type metadata accessor for AlertConfiguration);
      sub_1A2C54E38(v20, &qword_1EB0A04D0, &unk_1A2D15640);
      if ((v29 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    sub_1A2C6E28C(v17, type metadata accessor for AlertConfiguration);
LABEL_10:
    v27 = &qword_1EB0A1AC8;
    v28 = qword_1A2D15A78;
LABEL_18:
    sub_1A2C54E38(v20, v27, v28);
    goto LABEL_19;
  }

  if (v26(&v20[v25], 1, v11) != 1)
  {
    goto LABEL_10;
  }

  sub_1A2C54E38(v20, &qword_1EB0A04D0, &unk_1A2D15640);
LABEL_12:
  v30 = v43;
  v20 = v44;
  v31 = v43[9];
  v32 = *(v8 + 48);
  sub_1A2C6BD18(a1 + v31, v44, &qword_1EB0A0E28, &unk_1A2D0EC10);
  sub_1A2C6BD18(a2 + v31, &v20[v32], &qword_1EB0A0E28, &unk_1A2D0EC10);
  v34 = v47;
  v33 = v48;
  v35 = *(v47 + 48);
  if (v35(v20, 1, v48) == 1)
  {
    if (v35(&v20[v32], 1, v33) == 1)
    {
      sub_1A2C54E38(v20, &qword_1EB0A0E28, &unk_1A2D0EC10);
LABEL_22:
      v37 = *(a1 + v30[10]) ^ *(a2 + v30[10]) ^ 1;
      return v37 & 1;
    }

    goto LABEL_17;
  }

  v36 = v46;
  sub_1A2C6BD18(v20, v46, &qword_1EB0A0E28, &unk_1A2D0EC10);
  if (v35(&v20[v32], 1, v33) == 1)
  {
    (*(v34 + 8))(v36, v33);
LABEL_17:
    v27 = &qword_1EB0A1208;
    v28 = &qword_1A2D0FAF0;
    goto LABEL_18;
  }

  v39 = &v20[v32];
  v40 = v45;
  (*(v34 + 32))(v45, v39, v33);
  sub_1A2C75024(&qword_1EB0A1210, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v41 = sub_1A2D08424();
  v42 = *(v34 + 8);
  v42(v40, v33);
  v42(v36, v33);
  sub_1A2C54E38(v20, &qword_1EB0A0E28, &unk_1A2D0EC10);
  if (v41)
  {
    goto LABEL_22;
  }

LABEL_19:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_1A2CF550C(void *a1)
{
  a1[1] = sub_1A2C75024(&qword_1ED709070, type metadata accessor for OpaqueActivityPayload, &protocol conformance descriptor for OpaqueActivityPayload);
  a1[2] = sub_1A2C75024(&qword_1EB09F658, type metadata accessor for OpaqueActivityPayload, &protocol conformance descriptor for OpaqueActivityPayload);
  result = sub_1A2C75024(&qword_1EB09EE58, type metadata accessor for OpaqueActivityPayload, &protocol conformance descriptor for OpaqueActivityPayload);
  a1[3] = result;
  return result;
}

uint64_t sub_1A2CF55B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A2CF5630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1A2CF56B8(uint64_t a1)
{
  sub_1A2CF57B8(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    sub_1A2C58638(319, &qword_1EB0A1AB0, sub_1A2C72100, MEMORY[0x1E6968070]);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v8;
    }
  }

  return v3;
}

void sub_1A2CF57B8(uint64_t a1)
{
  if (!qword_1EB0A1AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A1A40, &qword_1A2D15658);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB0A1AA8);
    }
  }
}

void sub_1A2CF5840(uint64_t a1)
{
  v2 = sub_1A2D07FC4();
  if (v3 <= 0x3F)
  {
    v12 = 0;
    v16 = v2;
    v4 = sub_1A2D07F94();
    if (v5 <= 0x3F)
    {
      v13 = 0;
      v17 = v4;
      v6 = *(a1 + 32);
      v11[0] = *(a1 + 16);
      v11[1] = v6;
      v7 = type metadata accessor for ActivityContent(319, v11);
      if (v8 <= 0x3F)
      {
        v14 = 0;
        v18 = v7;
        sub_1A2C58638(319, &qword_1ED709990, type metadata accessor for AlertConfiguration, MEMORY[0x1E69E6720]);
        if (v10 <= 0x3F)
        {
          v15 = 0;
          v19 = v9;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A2CF5930(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = sub_1A2D07FC4();
  v6 = *(v5 - 8);
  v53 = v5;
  v7 = *(v6 + 84);
  v52 = sub_1A2D07F94();
  v8 = *(v52 - 8);
  v9 = *(v8 + 84);
  v48 = *(a3 + 16);
  v10 = *(v48 - 8);
  if (v9 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v9 - 1;
  if (!v9)
  {
    v12 = 0;
  }

  v49 = v12;
  v50 = *(v10 + 84);
  if (v12 <= v50)
  {
    v12 = *(v10 + 84);
  }

  v51 = v12;
  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(sub_1A2D07EF4() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  v18 = v17 - 1;
  if (v18 <= v13)
  {
    v18 = v13;
  }

  v19 = *(v8 + 80);
  v20 = *(v8 + 64);
  v21 = *(v10 + 64) + v19;
  v22 = v21 & ~v19;
  v23 = *(v14 + 80);
  v24 = *(v14 + 64);
  v25 = v22 + 7;
  if (v9)
  {
    v26 = v22 + 7;
  }

  else
  {
    v26 = v22 + 8;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = *(v6 + 64) + v19;
  v28 = v19 | *(v10 + 80) & 0xF8 | 7;
  v29 = v23 | 7;
  v30 = v24 + v23;
  v31 = v24 + 7;
  v32 = a1;
  if (v18 >= a2)
  {
    goto LABEL_43;
  }

  v33 = ((v23 + ((v26 + v20) & 0xFFFFFFFFFFFFFFF8) + ((v20 + (v27 & ~v19) + v28) & ~v28) + 8) & ~v29) + ((((v31 + (v30 & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v33 <= 3)
  {
    v34 = ((a2 - v18 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v34 = 2;
  }

  if (v34 >= 0x10000)
  {
    v35 = 4;
  }

  else
  {
    v35 = 2;
  }

  if (v34 < 0x100)
  {
    v35 = 1;
  }

  if (v34 >= 2)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  if (v36 <= 1)
  {
    if (!v36)
    {
      goto LABEL_43;
    }

    v37 = *(a1 + v33);
    if (!*(a1 + v33))
    {
      goto LABEL_43;
    }

LABEL_39:
    v39 = (v37 - 1) << (8 * v33);
    if (v33 <= 3)
    {
      v40 = *a1;
    }

    else
    {
      v39 = 0;
      v40 = *a1;
    }

    return v18 + (v40 | v39) + 1;
  }

  if (v36 == 2)
  {
    v37 = *(a1 + v33);
    if (*(a1 + v33))
    {
      goto LABEL_39;
    }
  }

  else
  {
    v37 = *(a1 + v33);
    if (v37)
    {
      goto LABEL_39;
    }
  }

LABEL_43:
  if (v7 == v18)
  {
    v41 = v53;
    v42 = *(v6 + 48);
    v43 = v7;
    goto LABEL_45;
  }

  v32 = ((a1 + v27) & ~v19);
  if (v9 == v18)
  {
    v42 = *(v8 + 48);
    v43 = v9;
    v41 = v52;

    return v42(v32, v43, v41);
  }

  v32 = ((v32 + v20 + v28) & ~v28);
  if (v51 == v18)
  {
    v43 = v50;
    if (v50 >= v49)
    {
      v42 = *(v10 + 48);
      v41 = v48;
LABEL_45:

      return v42(v32, v43, v41);
    }

    v44 = (*(v8 + 48))((v32 + v21) & ~v19, v9, v52);
  }

  else
  {
    v45 = (v32 + v29 + ((v25 + v20 + (v9 == 0)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v29;
    if (v16 < 0x7FFFFFFE)
    {
      v46 = *(((v31 + ((v30 + v45) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v46 >= 0xFFFFFFFF)
      {
        LODWORD(v46) = -1;
      }

      v47 = v46 - 1;
      if (v47 < 0)
      {
        v47 = -1;
      }

      v44 = v47 + 1;
    }

    else
    {
      v44 = (*(v15 + 48))(v45);
    }
  }

  if (v44 >= 2)
  {
    return v44 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1A2CF5DCC(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = sub_1A2D07FC4();
  v7 = *(v6 - 8);
  v66 = v7;
  v67 = v6;
  v8 = *(v7 + 84);
  v65 = sub_1A2D07F94();
  v9 = *(v65 - 8);
  v71 = v9;
  v10 = *(v9 + 84);
  v61 = *(a4 + 16);
  v11 = *(v61 - 8);
  if (v10 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v70 = *(v61 - 8);
  v13 = v10 - 1;
  if (!v10)
  {
    v13 = 0;
  }

  v62 = *(v11 + 84);
  v63 = v13;
  if (v13 <= v62)
  {
    v13 = *(v11 + 84);
  }

  v64 = v13;
  if (v13 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = sub_1A2D07EF4();
  v16 = a3;
  v17 = 0;
  v18 = *(v15 - 8);
  v19 = *(v18 + 84);
  v20 = *(v7 + 64);
  v21 = *(v9 + 80);
  v22 = *(v9 + 64);
  v23 = *(v11 + 64);
  v24 = *(v18 + 80);
  v25 = *(v18 + 64);
  if (v19 <= 0x7FFFFFFE)
  {
    v26 = 2147483646;
  }

  else
  {
    v26 = *(v18 + 84);
  }

  if (v26 - 1 <= v14)
  {
    v27 = v14;
  }

  else
  {
    v27 = v26 - 1;
  }

  v28 = v20 + v21;
  v29 = v21 | *(v11 + 80) & 0xF8 | 7;
  v30 = (v22 + ((v20 + v21) & ~v21) + v29) & ~v29;
  v31 = v23 + v21;
  v32 = (v23 + v21) & ~v21;
  v33 = v24 | 7;
  v34 = v25 + v24;
  v35 = v32 + 7;
  v36 = v32 + 8;
  if (v10)
  {
    v36 = v35;
  }

  v37 = v24 + ((v36 + v22) & 0xFFFFFFFFFFFFFFF8) + v30;
  v38 = v25 + 7;
  v39 = ((((v25 + 7 + (v34 & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 10;
  v40 = v39 + ((v37 + 8) & ~v33);
  if (v27 < v16)
  {
    if (v40 <= 3)
    {
      v41 = ((v16 - v27 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v41 = 2;
    }

    if (v41 >= 0x10000)
    {
      v42 = 4;
    }

    else
    {
      v42 = 2;
    }

    if (v41 < 0x100)
    {
      v42 = 1;
    }

    if (v41 >= 2)
    {
      v17 = v42;
    }

    else
    {
      v17 = 0;
    }
  }

  if (v27 >= a2)
  {
    v45 = a1;
    if (v17 > 1)
    {
      if (v17 != 2)
      {
        *(a1 + v40) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_49;
      }

      *(a1 + v40) = 0;
    }

    else if (v17)
    {
      *(a1 + v40) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_49;
    }

    if (!a2)
    {
      return;
    }

LABEL_49:
    if (v8 == v27)
    {
      v46 = v67;
      v47 = *(v66 + 56);
      v48 = a2;
      v49 = v8;
LABEL_54:

      v47(v45, v48, v49, v46);
      return;
    }

    v50 = ~v21;
    v45 = ((a1 + v28) & v50);
    if (v10 == v27)
    {
      v47 = *(v71 + 56);
      v48 = a2;
LABEL_53:
      v49 = v10;
      v46 = v65;
      goto LABEL_54;
    }

    v45 = ((v45 + v22 + v29) & ~v29);
    if (v64 == v27)
    {
      if (v10)
      {
        v49 = v62;
        v51 = v63;
        if (v62 >= v63)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v49 = v62;
        v51 = v63;
        if (v62 >= v63)
        {
LABEL_86:
          v47 = *(v70 + 56);
          v48 = a2;
          v46 = v61;
          goto LABEL_54;
        }

        v22 = (v22 + 1);
      }

      v53 = ((v45 + v31) & v50);
      if (v51 >= a2)
      {
        v47 = *(v71 + 56);
        v48 = a2 + 1;
        v45 = ((v45 + v31) & v50);
        goto LABEL_53;
      }

      if (v22 <= 3)
      {
        v58 = ~(-1 << (8 * v22));
      }

      else
      {
        v58 = -1;
      }

      if (!v22)
      {
        return;
      }

      v54 = v58 & (~v63 + a2);
      if (v22 <= 3)
      {
        v59 = v22;
      }

      else
      {
        v59 = 4;
      }

      bzero(((v45 + v31) & v50), v22);
      if (v59 <= 2)
      {
        if (v59 == 1)
        {
          *v53 = v54;
          return;
        }

        goto LABEL_87;
      }

      if (v59 == 3)
      {
        *v53 = v54;
        v53[2] = BYTE2(v54);
        return;
      }
    }

    else
    {
      v52 = (v35 + v22 + (v10 == 0)) & 0xFFFFFFFFFFFFFFF8;
      v53 = ((v45 + v33 + v52 + 8) & ~v33);
      if (v26 - 1 >= a2)
      {
        v54 = a2 - v26;
        if (a2 < v26)
        {
          v55 = a2 + 1;
          if (v19 <= 0x7FFFFFFD)
          {
            v60 = ((v38 + (&v53[v34] & ~v24)) & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFD)
            {
              v60[2] = 0;
              v60[3] = 0;
              *v60 = a2 - 2147483646;
              v60[1] = 0;
            }

            else
            {
              v60[1] = v55;
            }
          }

          else
          {
            v56 = *(v18 + 56);
            v57 = (v45 + v33 + v52 + 8) & ~v33;

            v56(v57, v55);
          }

          return;
        }
      }

      else
      {
        v54 = a2 - v26;
      }

      bzero(((v45 + v33 + v52 + 8) & ~v33), v39);
      if (v39 <= 3)
      {
LABEL_87:
        *v53 = v54;
        return;
      }
    }

    *v53 = v54;
    return;
  }

  v43 = ~v27 + a2;
  bzero(a1, v40);
  if (v40 <= 3)
  {
    v44 = HIWORD(v43) + 1;
  }

  else
  {
    v44 = 1;
  }

  if (v40 <= 3)
  {
    *a1 = v43;
    if (v17 > 1)
    {
LABEL_37:
      if (v17 == 2)
      {
        *(a1 + v40) = v44;
      }

      else
      {
        *(a1 + v40) = v44;
      }

      return;
    }
  }

  else
  {
    *a1 = v43;
    if (v17 > 1)
    {
      goto LABEL_37;
    }
  }

  if (v17)
  {
    *(a1 + v40) = v44;
  }
}

uint64_t getEnumTagSinglePayload for OpaqueActivityPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OpaqueActivityPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A2CF64BC()
{
  result = qword_1EB0A1AB8;
  if (!qword_1EB0A1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1AB8);
  }

  return result;
}

unint64_t sub_1A2CF6514()
{
  result = qword_1ED709078;
  if (!qword_1ED709078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709078);
  }

  return result;
}

unint64_t sub_1A2CF656C()
{
  result = qword_1ED709080;
  if (!qword_1ED709080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709080);
  }

  return result;
}

unint64_t sub_1A2CF65C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A2D089C4();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

double sub_1A2CF66C4(uint64_t a1, _OWORD *a2)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v3 = sub_1A2D07F44();
  v5 = v4;
  sub_1A2C6CDD0();
  sub_1A2D07E64();

  sub_1A2C55840(v3, v5);

  result = *&v7;
  *a2 = v7;
  return result;
}

double sub_1A2CF67CC(uint64_t a1, uint64_t *a2)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v3 = sub_1A2D07F44();
  v5 = v4;
  sub_1A2CB47D4();
  sub_1A2D07E64();
  sub_1A2CFA6C8(*a2, a2[1]);
  sub_1A2C55840(v3, v5);

  result = *&v7;
  *a2 = v7;
  return result;
}

uint64_t sub_1A2CF68D4(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  a3();
  sub_1A2D07E64();

  sub_1A2C55840(v6, v8);

  *a2 = v10;
  return result;
}

double sub_1A2CF69C4(uint64_t a1, uint64_t *a2)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v3 = sub_1A2D07F44();
  v5 = v4;
  sub_1A2CBBB98();
  sub_1A2D07E64();
  sub_1A2CFA650(*a2, a2[1], a2[2], a2[3], a2[4], a2[5], a2[6]);
  sub_1A2C55840(v3, v5);

  *a2 = v7;
  *(a2 + 1) = v8;
  result = *&v9;
  *(a2 + 2) = v9;
  a2[6] = v10;
  return result;
}

uint64_t sub_1A2CF6AC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1A2CF6B1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = a3 + 32;
    v8 = (result + 40);
    v21 = (a2 + 40);
    do
    {
      v9 = (v7 + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      if (*v9)
      {
        if (!v5)
        {
          goto LABEL_4;
        }

        v12 = *(v10 + 16);
        if (v12 != *(v5 + 16))
        {
          goto LABEL_4;
        }

        if (v12)
        {
          v13 = v10 == v5;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = (v10 + 40);
          v15 = v8;
          while (v12)
          {
            result = *(v14 - 1);
            if (result != *(v15 - 1) || *v14 != *v15)
            {
              result = sub_1A2D08B34();
              if ((result & 1) == 0)
              {
                goto LABEL_4;
              }
            }

            v14 += 2;
            v15 += 2;
            if (!--v12)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
          __break(1u);
          return result;
        }
      }

      else if (v5)
      {
        goto LABEL_4;
      }

LABEL_22:
      if (v11)
      {
        if (a2)
        {
          v17 = *(v11 + 16);
          if (v17 == *(a2 + 16))
          {
            if (!v17 || v11 == a2)
            {
              return v6;
            }

            v18 = (v11 + 40);
            for (i = v21; ; i += 2)
            {
              if (*(v18 - 1) != *(i - 1) || *v18 != *i)
              {
                result = sub_1A2D08B34();
                if ((result & 1) == 0)
                {
                  break;
                }
              }

              v18 += 2;
              if (!--v17)
              {
                return v6;
              }
            }
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v3);
  }

  return 0;
}

uint64_t sub_1A2CF6C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    v6 = (a1 + 40);
    do
    {
      v7 = *(v5 + 8 * v4);
      if (v7)
      {
        if (a1)
        {
          v8 = *(v7 + 16);
          if (v8 == *(a1 + 16))
          {
            if (!v8 || v7 == a1)
            {
              return v4;
            }

            v9 = (v7 + 40);
            for (i = v6; ; i += 2)
            {
              v11 = *(v9 - 1) == *(i - 1) && *v9 == *i;
              if (!v11 && (sub_1A2D08B34() & 1) == 0)
              {
                break;
              }

              v9 += 2;
              if (!--v8)
              {
                return v4;
              }
            }
          }
        }
      }

      else
      {

        if (!a1)
        {
          return v4;
        }
      }

      ++v4;
    }

    while (v4 != v2);
  }

  return 0;
}

uint64_t sub_1A2CF6D80@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A2CF9C7C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A2CF6E24@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *(v7 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v7 + 8 * a1;
    *a3 = *(v11 + 32);
    result = memmove((v11 + 32), (v11 + 40), 8 * (v9 - 1 - a1));
    *(v7 + 16) = v10;
    *v3 = v7;
  }

  return result;
}

uint64_t sub_1A2CF6EB8()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB0A1AD0);
  __swift_project_value_buffer(v0, qword_1EB0A1AD0);
  return sub_1A2D08084();
}

id sub_1A2CF6F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB09F748 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB0A1AE8;
  v7 = sub_1A2D08434();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A2CF7068;
  v11[3] = &block_descriptor_13;
  v8 = _Block_copy(v11);

  v9 = [v6 listenForActivityQoSWithActivityIdentifier:v7 handler:v8];
  _Block_release(v8);

  return v9;
}

uint64_t sub_1A2CF7068(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void *sub_1A2CF7220(uint64_t *a1)
{
  if (qword_1EB09F748 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1A2D080E4();
  result = sub_1A2D08704();
  if (!v1)
  {
    return v3;
  }

  return result;
}

id ActivityQoSObservationClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityQoSObservationClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityQoSObservationClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1A2CF73D8()
{
  result = [objc_allocWithZone(_s11ActivityKit9SingletonCMa_3()) init];
  qword_1EB0A1AE8 = result;
  return result;
}

char *sub_1A2CF7468()
{
  v22 = sub_1A2D086E4();
  v1 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v21 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue;
  v6 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v20[0] = "Could not observe activity QoS";
  v20[1] = v6;
  sub_1A2D082E4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v22);
  *&v0[v21] = sub_1A2D08724();
  v7 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_serverStartupToken] = -1;
  v8 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__qosPublisher;
  v9 = MEMORY[0x1E69E7CC0];
  aBlock[0] = sub_1A2CAB258(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1B58, &unk_1A2D15AE0);
  swift_allocObject();
  *&v0[v8] = sub_1A2D081B4();
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__queue_qos] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__queue_predicates] = v9;
  v10 = *&v0[v7];
  *&v0[v7] = 0;

  v11 = _s11ActivityKit9SingletonCMa_3();
  v24.receiver = v0;
  v24.super_class = v11;
  v12 = objc_msgSendSuper2(&v24, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A2CFA62C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_56_1;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = v13;

  dispatch_sync(v18, v16);

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

void sub_1A2CF78D0()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2CFA5D0();
    v9 = v0;
    v10 = sub_1A2D08784();
    if (v10)
    {
      v11 = *&v0[v8];
      *&v9[v8] = v10;
      v12 = v10;

      v13 = swift_allocObject();
      *(v13 + 16) = v9;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1A2CFA624;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1A2C573C4;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_38_3;
      v15 = _Block_copy(aBlock);
      v9;

      [v12 configureConnection_];
      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        sub_1A2CF8138();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

void sub_1A2CF7B7C(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1A2CF7E74;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_41_4;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CF7E80;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_44_3;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CF7E8C;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_47_2;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2CF7E98(uint64_t a1, const char *a2)
{
  if (qword_1EB09F740 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB0A1AD0);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CF7F88()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1A2CF78D0();
    v8 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_connection);
    if (v8)
    {
      v9 = v8;
      if ([v9 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C54E38(v10, &qword_1EB0A04E0, &unk_1A2D0AA70);
      }

      else
      {
        memset(v10, 0, sizeof(v10));
        sub_1A2C54E38(v10, &qword_1EB0A04E0, &unk_1A2D0AA70);
        [v9 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CF8138()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CFA5C8;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_29_3;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1EB09F740 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1EB0A1AD0);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

void sub_1A2CF8330(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A2CF8B40();
  }
}

uint64_t sub_1A2CF8384()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
  *v5 = v6;
  (*(isa + 13))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(isa + 1))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2CF7F88();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_connection);
  if (!v8)
  {
    if (qword_1EB09F740 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1EB0A1AD0);
    v1 = sub_1A2D08074();
    v10 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v10, "ActivityQoSObservationClient: Failed to establish a connection", v11, 2u);
      MEMORY[0x1A58E5180](v11, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1A2C54E38(v20, &qword_1EB0A04E0, &unk_1A2D0AA70);
  }

  if (qword_1EB09F740 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1EB0A1AD0);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D08694();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "ActivityQoSObservationClient: Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

void *sub_1A2CF86C8(uint64_t *a1)
{
  v2 = v1;
  v46 = *MEMORY[0x1E69E9840];
  v4 = sub_1A2D08344();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(v2 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v11 = v10;
  LOBYTE(v10) = sub_1A2D08364();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    goto LABEL_36;
  }

  v12 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__queue_predicates;
  swift_beginAccess();
  v13 = *(v2 + v12);

  v14 = sub_1A2CF6C94(v9, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    swift_beginAccess();
    sub_1A2CF6E24(v14, sub_1A2CF9CA4, &v45);
    swift_endAccess();

    result = sub_1A2CF8384();
    if (result)
    {
      v18 = result;
      v19 = *(v2 + v12);
      v20 = *(v19 + 16);

      if (v20)
      {
        v21 = 0;
        v22 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v21 >= *(v19 + 16))
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
          }

          v23 = *(v19 + 8 * v21 + 32);
          if (!v23)
          {

            v22 = 0;
            goto LABEL_26;
          }

          v24 = *(v23 + 16);
          v25 = *(v22 + 2);
          v26 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            goto LABEL_32;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v26 <= *(v22 + 3) >> 1)
          {
            if (!*(v23 + 16))
            {
              goto LABEL_6;
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

            v22 = sub_1A2C8A10C(isUniquelyReferenced_nonNull_native, v28, 1, v22);
            if (!*(v23 + 16))
            {
LABEL_6:

              if (v24)
              {
                goto LABEL_33;
              }

              goto LABEL_7;
            }
          }

          if ((*(v22 + 3) >> 1) - *(v22 + 2) < v24)
          {
            goto LABEL_34;
          }

          swift_arrayInitWithCopy();

          if (v24)
          {
            v29 = *(v22 + 2);
            v30 = __OFADD__(v29, v24);
            v31 = v29 + v24;
            if (v30)
            {
              goto LABEL_35;
            }

            *(v22 + 2) = v31;
          }

LABEL_7:
          if (v20 == ++v21)
          {
            goto LABEL_24;
          }
        }
      }

      v22 = MEMORY[0x1E69E7CC0];
LABEL_24:

LABEL_26:
      v44[0] = v22;
      sub_1A2D07EB4();
      swift_allocObject();
      sub_1A2D07EA4();
      sub_1A2CEB330();
      v32 = sub_1A2D07E94();
      v34 = v33;

      v35 = sub_1A2D07F24();
      sub_1A2C55840(v32, v34);

      v36 = sub_1A2D07F44();
      v38 = v37;

      v39 = sub_1A2D07F24();
      v44[0] = 0;
      LOBYTE(v32) = [v18 subscribeToActivityQoSMatchingPredicate:v39 error:v44];

      if (v32)
      {
        v40 = v44[0];
        sub_1A2C55840(v36, v38);
      }

      else
      {
        v41 = v44[0];
        v42 = sub_1A2D07ED4();

        swift_willThrow();
        sub_1A2C55840(v36, v38);
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_1A2CF8B40()
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    goto LABEL_35;
  }

  result = sub_1A2CF8384();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__queue_predicates;
    swift_beginAccess();
    v11 = *(v0 + v10);
    v12 = *(v11 + 16);

    if (v12)
    {
      v13 = 0;
      v14 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v13 >= *(v11 + 16))
        {
          __break(1u);
LABEL_31:
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

        v15 = *(v11 + 8 * v13 + 32);
        if (!v15)
        {

          v14 = 0;
          goto LABEL_25;
        }

        v16 = *(v15 + 16);
        v17 = *(v14 + 2);
        v18 = v17 + v16;
        if (__OFADD__(v17, v16))
        {
          goto LABEL_31;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v18 <= *(v14 + 3) >> 1)
        {
          if (!*(v15 + 16))
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (v17 <= v18)
          {
            v20 = v17 + v16;
          }

          else
          {
            v20 = v17;
          }

          v14 = sub_1A2C8A10C(isUniquelyReferenced_nonNull_native, v20, 1, v14);
          if (!*(v15 + 16))
          {
LABEL_5:

            if (v16)
            {
              goto LABEL_32;
            }

            goto LABEL_6;
          }
        }

        if ((*(v14 + 3) >> 1) - *(v14 + 2) < v16)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v21 = *(v14 + 2);
          v22 = __OFADD__(v21, v16);
          v23 = v21 + v16;
          if (v22)
          {
            goto LABEL_34;
          }

          *(v14 + 2) = v23;
        }

LABEL_6:
        if (v12 == ++v13)
        {
          goto LABEL_23;
        }
      }
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_23:

LABEL_25:
    v36 = v14;
    sub_1A2D07EB4();
    swift_allocObject();
    sub_1A2D07EA4();
    sub_1A2CEB330();
    v24 = sub_1A2D07E94();
    v26 = v25;

    v27 = sub_1A2D07F24();
    sub_1A2C55840(v24, v26);

    v28 = sub_1A2D07F44();
    v30 = v29;

    v31 = sub_1A2D07F24();
    v36 = 0;
    LOBYTE(v24) = [v9 subscribeToActivityQoSMatchingPredicate:v31 error:&v36];

    if (v24)
    {
      v32 = v36;
      sub_1A2C55840(v28, v30);
    }

    else
    {
      v33 = v36;
      v34 = sub_1A2D07ED4();

      swift_willThrow();
      sub_1A2C55840(v28, v30);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1A2CF8F4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1A2CF9000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A2D0AD20;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  sub_1A2D080E4();
  swift_bridgeObjectRetain_n();

  sub_1A2D08704();

  v10 = type metadata accessor for CancellableAssertion();
  v11 = objc_allocWithZone(v10);
  swift_allocObject();

  *&v11[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v14.receiver = v11;
  v14.super_class = v10;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

uint64_t sub_1A2CF92CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v70 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v69 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A1B68, &unk_1A2D15AF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - v13;
  v72 = sub_1A2CF8384();
  if (!v72)
  {
    sub_1A2CA1590();
    swift_allocError();
    *v30 = xmmword_1A2D0AC20;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 0u;
    *(v30 + 48) = 0u;
    *(v30 + 64) = 0;
    return swift_willThrow();
  }

  v63 = v14;
  v15 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__queue_predicates;
  swift_beginAccess();
  v61 = v15;
  v16 = *(a1 + v15);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v11;
  v68 = a5;
  v62 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_34:
    v16 = sub_1A2CB2DAC(0, *(v16 + 2) + 1, 1, v16);
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  v20 = v19 + 1;
  v65 = a4;
  v66 = v12;
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1A2CB2DAC((v18 > 1), v19 + 1, 1, v16);
  }

  v12 = 0;
  *(v16 + 2) = v20;
  v64 = a2;
  *&v16[8 * v19 + 32] = a2;
  v21 = MEMORY[0x1E69E7CC0];
  a2 = MEMORY[0x1E69E6158];
  while (1)
  {
    if (v12 >= *(v16 + 2))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    a4 = *&v16[8 * v12 + 32];
    if (!a4)
    {
      break;
    }

    v22 = *(a4 + 16);
    v23 = *(v21 + 2);
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      goto LABEL_30;
    }

    v25 = swift_isUniquelyReferenced_nonNull_native();
    if (v25 && v24 <= *(v21 + 3) >> 1)
    {
      if (!*(a4 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v23 <= v24)
      {
        v26 = v23 + v22;
      }

      else
      {
        v26 = v23;
      }

      v21 = sub_1A2C8A10C(v25, v26, 1, v21);
      if (!*(a4 + 16))
      {
LABEL_6:

        if (v22)
        {
          goto LABEL_31;
        }

        goto LABEL_7;
      }
    }

    if ((*(v21 + 3) >> 1) - *(v21 + 2) < v22)
    {
      goto LABEL_32;
    }

    swift_arrayInitWithCopy();

    if (v22)
    {
      v27 = *(v21 + 2);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (v28)
      {
        goto LABEL_33;
      }

      *(v21 + 2) = v29;
    }

LABEL_7:
    if (v20 == ++v12)
    {
      goto LABEL_25;
    }
  }

  v21 = 0;
LABEL_25:
  v74 = v21;
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CEB330();
  v32 = v71;
  v33 = sub_1A2D07E94();
  if (v32)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v35 = v33;
    v36 = v34;

    v37 = sub_1A2D07F24();
    sub_1A2C55840(v35, v36);

    v38 = sub_1A2D07F44();
    v40 = v39;

    v41 = sub_1A2D07F24();
    v74 = 0;
    LOBYTE(v37) = [v72 subscribeToActivityQoSMatchingPredicate:v41 error:&v74];

    v42 = v74;
    if (v37)
    {
      v43 = v62;
      *(v62 + v61) = v16;
      v44 = v42;

      v45 = *(v43 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__qosPublisher);
      v73 = *(v43 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
      v46 = v73;
      v74 = v45;
      v47 = sub_1A2D086D4();
      v48 = *(*(v47 - 8) + 56);
      v71 = v38;
      v49 = v69;
      v48(v69, 1, 1, v47);

      v60 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1B58, &unk_1A2D15AE0);
      sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
      v61 = v40;
      sub_1A2C56A78(&unk_1EB0A1B78, &qword_1EB0A1B58, &unk_1A2D15AE0, MEMORY[0x1E695BFB0]);
      sub_1A2C8B9D4();
      v50 = v63;
      sub_1A2D08264();
      sub_1A2C54E38(v49, &qword_1EB0A0570, &qword_1A2D0ADA0);

      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v52 = swift_allocObject();
      v53 = v64;
      *(v52 + 16) = v51;
      *(v52 + 24) = v53;
      v54 = swift_allocObject();
      v55 = v70;
      v54[2] = v53;
      v54[3] = v55;
      v54[4] = v65;
      sub_1A2C56A78(&qword_1EB0A1B88, &unk_1EB0A1B68, &unk_1A2D15AF0, MEMORY[0x1E695BE98]);
      swift_bridgeObjectRetain_n();

      v56 = v67;
      v57 = sub_1A2D08224();
      sub_1A2C55840(v71, v61);
      swift_unknownObjectRelease();

      result = (*(v66 + 8))(v50, v56);
      *v68 = v57;
    }

    else
    {
      v58 = v74;

      sub_1A2D07ED4();

      swift_willThrow();
      sub_1A2C55840(v38, v40);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1A2CF9AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a3;
    sub_1A2CF86C8(&v6);
  }
}

uint64_t sub_1A2CF9B4C(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *a1;

  v6 = sub_1A2CFA144(v5, a2);

  a3(v6);
}

unint64_t *sub_1A2CF9CB8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1A2CF9F90(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1A2CF9D54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A1B90, &qword_1A2D0BD98);
  result = sub_1A2D08994();
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
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + 8 * v16);
    sub_1A2D08C14();

    sub_1A2D08484();
    result = sub_1A2D08C54();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

unint64_t *sub_1A2CF9F90(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v19 = a2;
  v20 = result;
  v21 = 0;
  v22 = a3;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  do
  {
    do
    {
      if (!v8)
      {
        v13 = v4;
        v12 = v24;
        do
        {
          v4 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
            return result;
          }

          if (v4 >= v9)
          {
            return sub_1A2CF9D54(v20, v19, v21, v22);
          }

          v14 = *(v5 + 8 * v4);
          ++v13;
        }

        while (!v14);
        v8 = (v14 - 1) & v14;
        v11 = __clz(__rbit64(v14)) | (v4 << 6);
        if (!v24)
        {
          break;
        }

        goto LABEL_12;
      }

      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v11 = v10 | (v4 << 6);
      v12 = v24;
      if (!v24)
      {
        break;
      }

LABEL_12:
      v15 = *(*(v22 + 48) + 16 * v11 + 8);
      v23[0] = *(*(v22 + 48) + 16 * v11);
      v23[1] = v15;
      MEMORY[0x1EEE9AC00](result);
      v18[2] = v23;

      v16 = sub_1A2C956A8(sub_1A2CB05CC, v18, v12);
    }

    while ((v16 & 1) == 0);
    *(v20 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
  }

  while (!__OFADD__(v21++, 1));
  __break(1u);
  return sub_1A2CF9D54(v20, v19, v21, v22);
}

unint64_t *sub_1A2CFA144(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1A2CF9CB8(v12, v7, a1, a2);
      MEMORY[0x1A58E5180](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1A2CF9F90((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1A2CFA304(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = sub_1A2D08344();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1A2D07F24();
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v11 = sub_1A2D07F44();
  v13 = v12;
  sub_1A2CABCD8();
  sub_1A2D07E64();
  sub_1A2C55840(v11, v13);

  v14 = v19;
  if (v19)
  {

    v15 = *(a3 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
    *v9 = v15;
    (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
    v16 = v15;
    LOBYTE(v15) = sub_1A2D08364();
    (*(v7 + 8))(v9, v6);
    if (v15)
    {
      *(a3 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__queue_qos) = v14;

      v19 = v14;

      sub_1A2D08174();

      a4[2](a4, 0);
    }

    __break(1u);
  }

  _Block_release(a4);
  __break(1u);
  _Block_release(a4);
  sub_1A2C55840(v11, v13);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CFA568(uint64_t a1)
{
  v2 = v1[4];
  if (*(a1 + 16) && (v4 = sub_1A2C64868(v1[2], v1[3]), (v5 & 1) != 0))
  {
    v6 = *(*(a1 + 56) + 8 * v4);
  }

  else
  {
    v6 = 1;
  }

  return v2(v6);
}

unint64_t sub_1A2CFA5D0()
{
  result = qword_1EB0A1B50;
  if (!qword_1EB0A1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1B50);
  }

  return result;
}

void sub_1A2CFA650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {

    sub_1A2C5E574(a3, a4, a5, a6, a7);
  }
}

uint64_t sub_1A2CFA6C8(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

double PushType.contentSourceRequest.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_1A2D0EBF0;
  *(a1 + 32) = 0;

  return result;
}

double static PushType.channel(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  return result;
}

uint64_t sub_1A2CFA788(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1BE0, &qword_1A2D15D80);
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1BE8, &qword_1A2D15D88);
  v16 = *(v7 - 8);
  v17 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1BF0, &qword_1A2D15D90);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFB52C();
  v14 = v20;
  sub_1A2D08C74();
  if (v14)
  {
    v22 = 1;
    sub_1A2CFB580();
    sub_1A2D08A84();
    sub_1A2D08AB4();
    (*(v18 + 8))(v6, v4);
  }

  else
  {
    v21 = 0;
    sub_1A2CFB5D4();
    sub_1A2D08A84();
    (*(v16 + 8))(v9, v17);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A2CFAA7C(uint64_t a1)
{
  v2 = sub_1A2CFB580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFAAB8(uint64_t a1)
{
  v2 = sub_1A2CFB580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFAAF4()
{
  if (*v0)
  {
    return 0x6C656E6E616863;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_1A2CFAB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CFAC04(uint64_t a1)
{
  v2 = sub_1A2CFB52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFAC40(uint64_t a1)
{
  v2 = sub_1A2CFB52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFAC7C(uint64_t a1)
{
  v2 = sub_1A2CFB5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFACB8(uint64_t a1)
{
  v2 = sub_1A2CFB5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1A2CFACF4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1A2CFB628(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1A2CFAD3C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1A2D08B34();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t static PushType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1A2D08B34() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1A2CFADF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CFAE7C(uint64_t a1)
{
  v2 = sub_1A2CFB0B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFAEB8(uint64_t a1)
{
  v2 = sub_1A2CFB0B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFAEF4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1A2D08B34() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t PushType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1BA0, &qword_1A2D15B00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFB0B4();

  sub_1A2D08C74();
  v10[0] = v7;
  v10[1] = v8;
  sub_1A2CFB108();
  sub_1A2D08AE4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A2CFB0B4()
{
  result = qword_1EB0A1BA8;
  if (!qword_1EB0A1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BA8);
  }

  return result;
}

unint64_t sub_1A2CFB108()
{
  result = qword_1EB0A1BB0;
  if (!qword_1EB0A1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BB0);
  }

  return result;
}

uint64_t PushType.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1BB8, &qword_1A2D15B08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFB0B4();
  sub_1A2D08C64();
  if (!v2)
  {
    sub_1A2CFB2CC();
    sub_1A2D08A54();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1A2CFB2CC()
{
  result = qword_1EB0A1BC0;
  if (!qword_1EB0A1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BC0);
  }

  return result;
}

uint64_t sub_1A2CFB360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1A2CFB3B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A2CFB428()
{
  result = qword_1EB0A1BC8;
  if (!qword_1EB0A1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BC8);
  }

  return result;
}

unint64_t sub_1A2CFB480()
{
  result = qword_1EB0A1BD0;
  if (!qword_1EB0A1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BD0);
  }

  return result;
}

unint64_t sub_1A2CFB4D8()
{
  result = qword_1EB0A1BD8;
  if (!qword_1EB0A1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BD8);
  }

  return result;
}

unint64_t sub_1A2CFB52C()
{
  result = qword_1EB0A1BF8;
  if (!qword_1EB0A1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BF8);
  }

  return result;
}

unint64_t sub_1A2CFB580()
{
  result = qword_1EB0A1C00;
  if (!qword_1EB0A1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C00);
  }

  return result;
}

unint64_t sub_1A2CFB5D4()
{
  result = qword_1EB0A1C08;
  if (!qword_1EB0A1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C08);
  }

  return result;
}

void *sub_1A2CFB628(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C10, &qword_1A2D15D98);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C18, &qword_1A2D15DA0);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C20, &unk_1A2D15DA8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v31 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1A2CFB52C();
  v14 = v30;
  sub_1A2D08C64();
  if (!v14)
  {
    v26 = v5;
    v15 = v29;
    v30 = v9;
    v16 = sub_1A2D08A64();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1A2C6D870();
    v19 = v8;
    v13 = v11;
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v21 = sub_1A2D088A4();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
      *v23 = &type metadata for PushType.Request;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v30 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v36 = 1;
      sub_1A2CFB580();
      sub_1A2D089D4();
      v20 = v30;
      v27 = v11;
      v13 = sub_1A2D08A24();
      (*(v28 + 8))(v4, v15);
      (*(v20 + 8))(v27, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      sub_1A2CFB5D4();
      sub_1A2D089D4();
      v25 = v30;
      (*(v27 + 1))(v7, v26);
      (*(v25 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v13;
}

unint64_t sub_1A2CFBB68()
{
  result = qword_1EB0A1C28;
  if (!qword_1EB0A1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C28);
  }

  return result;
}

unint64_t sub_1A2CFBBC0()
{
  result = qword_1EB0A1C30;
  if (!qword_1EB0A1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C30);
  }

  return result;
}

unint64_t sub_1A2CFBC18()
{
  result = qword_1EB0A1C38;
  if (!qword_1EB0A1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C38);
  }

  return result;
}

unint64_t sub_1A2CFBC70()
{
  result = qword_1EB0A1C40;
  if (!qword_1EB0A1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C40);
  }

  return result;
}

unint64_t sub_1A2CFBCC8()
{
  result = qword_1EB0A1C48;
  if (!qword_1EB0A1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C48);
  }

  return result;
}

unint64_t sub_1A2CFBD20()
{
  result = qword_1EB0A1C50;
  if (!qword_1EB0A1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C50);
  }

  return result;
}

unint64_t sub_1A2CFBD78()
{
  result = qword_1EB0A1C58;
  if (!qword_1EB0A1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C58);
  }

  return result;
}

unint64_t sub_1A2CFBDD0()
{
  result = qword_1EB0A1C60;
  if (!qword_1EB0A1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C60);
  }

  return result;
}

ActivityKit::ActivityPresenter __swiftcall ActivityPresenter.init(bundleIdentifier:presentations:)(Swift::String bundleIdentifier, Swift::OpaquePointer presentations)
{
  *v2 = bundleIdentifier;
  *(v2 + 16) = presentations;
  result.bundleIdentifier = bundleIdentifier;
  result.presentations = presentations;
  return result;
}

uint64_t sub_1A2CFBE30()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E656E696D6F7270;
  }
}

uint64_t sub_1A2CFBE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656E696D6F7270 && a2 == 0xE900000000000074;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A2D1B420 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CFBF60(uint64_t a1)
{
  v2 = sub_1A2CFC378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFBF9C(uint64_t a1)
{
  v2 = sub_1A2CFC378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFBFD8(uint64_t a1)
{
  v2 = sub_1A2CFC420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFC014(uint64_t a1)
{
  v2 = sub_1A2CFC420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFC050(uint64_t a1)
{
  v2 = sub_1A2CFC3CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFC08C(uint64_t a1)
{
  v2 = sub_1A2CFC3CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresentationState.ForegroundModifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C68, &qword_1A2D160A0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C70, &qword_1A2D160A8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C78, &qword_1A2D160B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFC378();
  sub_1A2D08C74();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A2CFC3CC();
    v14 = v18;
    sub_1A2D08A84();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A2CFC420();
    sub_1A2D08A84();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A2CFC378()
{
  result = qword_1EB0A1C80;
  if (!qword_1EB0A1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C80);
  }

  return result;
}

unint64_t sub_1A2CFC3CC()
{
  result = qword_1EB0A1C88;
  if (!qword_1EB0A1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C88);
  }

  return result;
}

unint64_t sub_1A2CFC420()
{
  result = qword_1EB0A1C90;
  if (!qword_1EB0A1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C90);
  }

  return result;
}

uint64_t ActivityPresentationState.ForegroundModifier.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C98, &qword_1A2D160B8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CA0, &qword_1A2D160C0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CA8, &unk_1A2D160C8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFC378();
  v12 = v31;
  sub_1A2D08C64();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1A2D08A64();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1A2C6D870();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1A2D088A4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
      *v22 = &type metadata for ActivityPresentationState.ForegroundModifier;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1A2CFC3CC();
        sub_1A2D089D4();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1A2CFC420();
        sub_1A2D089D4();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1A2CFC978()
{
  if (*v0)
  {
    return 0x6D6574737973;
  }

  else
  {
    return 0x65746E4972657375;
  }
}

uint64_t sub_1A2CFC9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746E4972657375 && a2 == 0xEF6E6F6974636172;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CFCA9C(uint64_t a1)
{
  v2 = sub_1A2CFCEB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFCAD8(uint64_t a1)
{
  v2 = sub_1A2CFCEB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFCB14(uint64_t a1)
{
  v2 = sub_1A2CFCF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFCB50(uint64_t a1)
{
  v2 = sub_1A2CFCF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFCB8C(uint64_t a1)
{
  v2 = sub_1A2CFCF5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFCBC8(uint64_t a1)
{
  v2 = sub_1A2CFCF5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresentationState.DisplacementReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CB0, &qword_1A2D160D8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CB8, &qword_1A2D160E0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CC0, &qword_1A2D160E8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFCEB4();
  sub_1A2D08C74();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A2CFCF08();
    v14 = v18;
    sub_1A2D08A84();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A2CFCF5C();
    sub_1A2D08A84();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}