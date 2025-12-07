unint64_t sub_24B7AD294()
{
  result = qword_28110AA30;
  if (!qword_28110AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA30);
  }

  return result;
}

uint64_t sub_24B7AD330@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24B7AD3A8()
{
  v1 = 0x6269726373627573;
  if (*v0 != 1)
  {
    v1 = 0x7263736275736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_24B7AD410@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B7ADCF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B7AD450(uint64_t a1)
{
  v2 = sub_24B7ADA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AD48C(uint64_t a1)
{
  v2 = sub_24B7ADA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7AD4D4(uint64_t a1)
{
  v2 = sub_24B7ADAF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AD510(uint64_t a1)
{
  v2 = sub_24B7ADAF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7AD54C(uint64_t a1)
{
  v2 = sub_24B7ADB44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AD588(uint64_t a1)
{
  v2 = sub_24B7ADB44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7AD5C4(uint64_t a1)
{
  v2 = sub_24B7ADA9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AD600(uint64_t a1)
{
  v2 = sub_24B7ADA9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionState.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057F48, &qword_24B7B5840);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057F50, &qword_24B7B5848);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057F58, &qword_24B7B5850);
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057F60, &qword_24B7B5858);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7ADA48();
  sub_24B7B55DC();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_24B7ADAF0();
      sub_24B7B550C();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_24B7ADA9C();
      v16 = v22;
      sub_24B7B550C();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_24B7ADB44();
    sub_24B7B550C();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B7ADA48()
{
  result = qword_27F057F68;
  if (!qword_27F057F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F68);
  }

  return result;
}

unint64_t sub_24B7ADA9C()
{
  result = qword_27F057F70;
  if (!qword_27F057F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F70);
  }

  return result;
}

unint64_t sub_24B7ADAF0()
{
  result = qword_27F057F78;
  if (!qword_27F057F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F78);
  }

  return result;
}

unint64_t sub_24B7ADB44()
{
  result = qword_27F057F80;
  if (!qword_27F057F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F80);
  }

  return result;
}

uint64_t sub_24B7ADBB0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B7ADE18(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SubscriptionState.hashValue.getter(unsigned __int8 a1)
{
  sub_24B7B559C();
  MEMORY[0x24C24A040](a1);
  return sub_24B7B55BC();
}

uint64_t sub_24B7ADC68()
{
  v1 = *v0;
  sub_24B7B559C();
  MEMORY[0x24C24A040](v1);
  return sub_24B7B55BC();
}

uint64_t sub_24B7ADCB0(uint64_t a1)
{
  v2 = *v1;
  sub_24B7B559C();
  MEMORY[0x24C24A040](v2);
  return sub_24B7B55BC();
}

uint64_t sub_24B7ADCF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B7B554C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000006465 || (sub_24B7B554C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEC00000064656269)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B7B554C();

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

uint64_t sub_24B7ADE18(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057FD8, &qword_24B7B5CA0);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057FE0, &qword_24B7B5CA8);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057FE8, &qword_24B7B5CB0);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057FF0, &qword_24B7B5CB8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24B7ADA48();
  v13 = v34;
  sub_24B7B55CC();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_24B7B54FC();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_24B7AE910();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_24B7ADAF0();
          sub_24B7B54AC();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_24B7ADA9C();
        v24 = v11;
        sub_24B7B54AC();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_24B7ADB44();
        v24 = v11;
        sub_24B7B54AC();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_24B7B549C();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057FF8, &unk_24B7B5CC0) + 48);
    *v22 = &type metadata for SubscriptionState;
    sub_24B7B54BC();
    sub_24B7B548C();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

unint64_t sub_24B7AE38C()
{
  result = qword_27F057F88;
  if (!qword_27F057F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainerTipUpsellMonitorAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TrainerTipUpsellMonitorAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B7AE588()
{
  result = qword_27F057F90;
  if (!qword_27F057F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F90);
  }

  return result;
}

unint64_t sub_24B7AE5E0()
{
  result = qword_27F057F98;
  if (!qword_27F057F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F98);
  }

  return result;
}

unint64_t sub_24B7AE638()
{
  result = qword_27F057FA0;
  if (!qword_27F057FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FA0);
  }

  return result;
}

unint64_t sub_24B7AE690()
{
  result = qword_27F057FA8;
  if (!qword_27F057FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FA8);
  }

  return result;
}

unint64_t sub_24B7AE6E8()
{
  result = qword_27F057FB0;
  if (!qword_27F057FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FB0);
  }

  return result;
}

unint64_t sub_24B7AE740()
{
  result = qword_27F057FB8;
  if (!qword_27F057FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FB8);
  }

  return result;
}

unint64_t sub_24B7AE798()
{
  result = qword_27F057FC0;
  if (!qword_27F057FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FC0);
  }

  return result;
}

unint64_t sub_24B7AE7F0()
{
  result = qword_27F057FC8;
  if (!qword_27F057FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FC8);
  }

  return result;
}

unint64_t sub_24B7AE848()
{
  result = qword_27F057FD0;
  if (!qword_27F057FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FD0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_24B7AE910()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24B7AE944()
{
  v1 = 0x6570704177656976;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_24B7AE9AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B7AFE8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B7AE9D4(uint64_t a1)
{
  v2 = sub_24B7AF0EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AEA10(uint64_t a1)
{
  v2 = sub_24B7AF0EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7AEA4C(uint64_t a1)
{
  v2 = sub_24B7AF23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AEA88(uint64_t a1)
{
  v2 = sub_24B7AF23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7AEACC()
{
  sub_24B7B559C();
  MEMORY[0x24C24A040](0);
  return sub_24B7B55BC();
}

uint64_t sub_24B7AEB38(uint64_t a1)
{
  sub_24B7B559C();
  MEMORY[0x24C24A040](0);
  return sub_24B7B55BC();
}

uint64_t sub_24B7AEB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B7B554C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B7AEC04(uint64_t a1)
{
  v2 = sub_24B7AF194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AEC40(uint64_t a1)
{
  v2 = sub_24B7AF194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7AEC7C(uint64_t a1)
{
  v2 = sub_24B7AF140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AECB8(uint64_t a1)
{
  v2 = sub_24B7AF140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrainerTipUpsellMonitorAction.encode(to:)(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058000, &qword_24B7B5CD0);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v23 = &v19 - v3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058008, &qword_24B7B5CD8);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v22 = &v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058010, &qword_24B7B5CE0);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058018, &qword_24B7B5CE8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7AF0EC();
  sub_24B7B55DC();
  if (v14 == 2)
  {
    LOBYTE(v28) = 0;
    sub_24B7AF23C();
    sub_24B7B550C();
    (*(v20 + 8))(v7, v21);
    return (*(v9 + 8))(v11, v8);
  }

  if (v14 == 3)
  {
    LOBYTE(v28) = 2;
    sub_24B7AF140();
    v15 = v23;
    sub_24B7B550C();
    (*(v25 + 8))(v15, v27);
    return (*(v9 + 8))(v11, v8);
  }

  LOBYTE(v28) = 1;
  sub_24B7AF194();
  v17 = v22;
  sub_24B7B550C();
  v28 = v12;
  v29 = v13;
  v30 = v14 & 1;
  sub_24B7AF1E8();
  v18 = v26;
  sub_24B7B553C();
  (*(v24 + 8))(v17, v18);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_24B7AF0EC()
{
  result = qword_28110AA88;
  if (!qword_28110AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA88);
  }

  return result;
}

unint64_t sub_24B7AF140()
{
  result = qword_28110AA70;
  if (!qword_28110AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA70);
  }

  return result;
}

unint64_t sub_24B7AF194()
{
  result = qword_27F058020;
  if (!qword_27F058020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058020);
  }

  return result;
}

unint64_t sub_24B7AF1E8()
{
  result = qword_27F058028;
  if (!qword_27F058028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058028);
  }

  return result;
}

unint64_t sub_24B7AF23C()
{
  result = qword_27F058030;
  if (!qword_27F058030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058030);
  }

  return result;
}

uint64_t TrainerTipUpsellMonitorAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058038, &qword_24B7B5CF0);
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  MEMORY[0x28223BE20](v3);
  v48 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058040, &qword_24B7B5CF8);
  v7 = *(v6 - 8);
  v45 = v6;
  v46 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058048, &qword_24B7B5D00);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058050, &unk_24B7B5D08);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v17 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24B7AF0EC();
  v18 = v49;
  sub_24B7B55CC();
  if (!v18)
  {
    v19 = v48;
    v41 = 0;
    v49 = v14;
    v20 = sub_24B7B54FC();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
    {
      v24 = sub_24B7B549C();
      swift_allocError();
      v25 = v13;
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057FF8, &unk_24B7B5CC0);
      *v27 = &type metadata for TrainerTipUpsellMonitorAction;
      sub_24B7B54BC();
      sub_24B7B548C();
      (*(*(v24 - 8) + 104))(v27, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v49 + 8))(v16, v25);
LABEL_18:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    if (*(v20 + 32))
    {
      if (v22 == 1)
      {
        LOBYTE(v50) = 1;
        sub_24B7AF194();
        v28 = v41;
        sub_24B7B54AC();
        v29 = v47;
        v30 = v49;
        if (v28)
        {
          v31 = *(v49 + 8);
          v32 = v16;
LABEL_17:
          v31(v32, v13);
          goto LABEL_18;
        }

        sub_24B7AF874();
        v37 = v45;
        sub_24B7B54EC();
        (*(v46 + 8))(v9, v37);
        (*(v30 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v38 = v50;
        v39 = v51;
LABEL_25:
        *v29 = v38;
        *(v29 + 16) = v39;
        return __swift_destroy_boxed_opaque_existential_1(v52);
      }

      LOBYTE(v50) = 2;
      sub_24B7AF140();
      v34 = v41;
      sub_24B7B54AC();
      v35 = v49;
      if (v34)
      {
        v31 = *(v49 + 8);
        v32 = v16;
        goto LABEL_17;
      }

      (*(v44 + 8))(v19, v43);
      (*(v35 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v38 = 0uLL;
      v39 = 3;
    }

    else
    {
      LOBYTE(v50) = 0;
      sub_24B7AF23C();
      v33 = v41;
      sub_24B7B54AC();
      if (v33)
      {
        v31 = *(v49 + 8);
        v32 = v16;
        goto LABEL_17;
      }

      (*(v42 + 8))(v12, v10);
      (*(v49 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v38 = 0uLL;
      v39 = 2;
    }

    v29 = v47;
    goto LABEL_25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

unint64_t sub_24B7AF874()
{
  result = qword_27F058058;
  if (!qword_27F058058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058058);
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

uint64_t getEnumTagSinglePayload for TrainerTipUpsellMonitorAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFE) != 0))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TrainerTipUpsellMonitorAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_24B7AF9B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B7AF9CC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainerTipUpsellMonitorAction.TrainerTipPlayerDismissedCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TrainerTipUpsellMonitorAction.TrainerTipPlayerDismissedCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_24B7AFB20()
{
  result = qword_27F058060;
  if (!qword_27F058060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058060);
  }

  return result;
}

unint64_t sub_24B7AFB78()
{
  result = qword_27F058068;
  if (!qword_27F058068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058068);
  }

  return result;
}

unint64_t sub_24B7AFBD0()
{
  result = qword_28110AAA0;
  if (!qword_28110AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AAA0);
  }

  return result;
}

unint64_t sub_24B7AFC28()
{
  result = qword_28110AAA8;
  if (!qword_28110AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AAA8);
  }

  return result;
}

unint64_t sub_24B7AFC80()
{
  result = qword_28110AA90;
  if (!qword_28110AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA90);
  }

  return result;
}

unint64_t sub_24B7AFCD8()
{
  result = qword_28110AA98;
  if (!qword_28110AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA98);
  }

  return result;
}

unint64_t sub_24B7AFD30()
{
  result = qword_28110AA60;
  if (!qword_28110AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA60);
  }

  return result;
}

unint64_t sub_24B7AFD88()
{
  result = qword_28110AA68;
  if (!qword_28110AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA68);
  }

  return result;
}

unint64_t sub_24B7AFDE0()
{
  result = qword_28110AA78;
  if (!qword_28110AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA78);
  }

  return result;
}

unint64_t sub_24B7AFE38()
{
  result = qword_28110AA80;
  if (!qword_28110AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA80);
  }

  return result;
}

uint64_t sub_24B7AFE8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000024B7B7660 == a2 || (sub_24B7B554C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024B7B7680 == a2 || (sub_24B7B554C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B7B554C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t TrainerTipUpsellConfiguration.placementIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall TrainerTipUpsellConfiguration.init(interval:nativeRulesEnabled:placementIdentifier:minimumRatioComplete:subscriptionCheckEnabled:)(FitnessTrainerTips::TrainerTipUpsellConfiguration *__return_ptr retstr, Swift::Double interval, Swift::Bool nativeRulesEnabled, Swift::String placementIdentifier, Swift::Double minimumRatioComplete, Swift::Bool subscriptionCheckEnabled)
{
  retstr->interval = interval;
  retstr->nativeRulesEnabled = nativeRulesEnabled;
  retstr->placementIdentifier = placementIdentifier;
  retstr->minimumRatioComplete = minimumRatioComplete;
  retstr->subscriptionCheckEnabled = subscriptionCheckEnabled;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B7B0034(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B7B007C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

FitnessTrainerTips::TrainerTipPlayerDismissedEvent __swiftcall TrainerTipPlayerDismissedEvent.init(elapsedTime:duration:isUpsellEnabled:)(Swift::Double elapsedTime, Swift::Double duration, Swift::Bool isUpsellEnabled)
{
  *v3 = elapsedTime;
  *(v3 + 8) = duration;
  *(v3 + 16) = isUpsellEnabled;
  result.duration = duration;
  result.elapsedTime = elapsedTime;
  result.isUpsellEnabled = isUpsellEnabled;
  return result;
}

uint64_t sub_24B7B00FC()
{
  v1 = 0x6E6F697461727564;
  if (*v0 != 1)
  {
    v1 = 0x6C6C657370557369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5464657370616C65;
  }
}

uint64_t sub_24B7B016C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B7B07D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B7B0194(uint64_t a1)
{
  v2 = sub_24B7B03BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7B01D0(uint64_t a1)
{
  v2 = sub_24B7B03BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrainerTipPlayerDismissedEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058070, "&\t");
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7B03BC();
  sub_24B7B55DC();
  v11 = 0;
  sub_24B7B552C();
  if (!v1)
  {
    v10 = 1;
    sub_24B7B552C();
    v9 = 2;
    sub_24B7B551C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B7B03BC()
{
  result = qword_27F058078;
  if (!qword_27F058078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058078);
  }

  return result;
}

uint64_t TrainerTipPlayerDismissedEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058080, &qword_24B7B61E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7B03BC();
  sub_24B7B55CC();
  if (!v2)
  {
    v18 = 0;
    sub_24B7B54DC();
    v10 = v9;
    v17 = 1;
    sub_24B7B54DC();
    v13 = v12;
    v16 = 2;
    v14 = sub_24B7B54CC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for TrainerTipPlayerDismissedEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TrainerTipPlayerDismissedEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24B7B06CC()
{
  result = qword_27F058088;
  if (!qword_27F058088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058088);
  }

  return result;
}

unint64_t sub_24B7B0724()
{
  result = qword_27F058090;
  if (!qword_27F058090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058090);
  }

  return result;
}

unint64_t sub_24B7B077C()
{
  result = qword_27F058098;
  if (!qword_27F058098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058098);
  }

  return result;
}

uint64_t sub_24B7B07D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5464657370616C65 && a2 == 0xEB00000000656D69;
  if (v4 || (sub_24B7B554C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24B7B554C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6C657370557369 && a2 == 0xEF64656C62616E45)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B7B554C();

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

uint64_t sub_24B7B08F4()
{
  v0 = sub_24B7B53CC();
  __swift_allocate_value_buffer(v0, qword_27F059488);
  __swift_project_value_buffer(v0, qword_27F059488);
  return sub_24B7B53BC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t TrainerTipUpsellMonitorFeature.environment.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_24B7B0A70(v11, &v10);
}

__n128 TrainerTipUpsellMonitorFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t TrainerTipUpsellMonitorFeature.reduce(localState:sharedState:sideEffects:action:)(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580A0, &qword_24B7B63B0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v71[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v71[-v14];
  result = MEMORY[0x28223BE20](v13);
  v18 = &v71[-v17];
  v19 = *a4;
  v20 = a4[1];
  v21 = *(a4 + 16);
  v22 = v4[5];
  v76 = v4[4];
  v77 = v22;
  v23 = v4[7];
  v78 = v4[6];
  v79 = v23;
  v24 = v4[1];
  v72 = *v4;
  v73 = v24;
  v25 = v4[3];
  v74 = v4[2];
  v75 = v25;
  if (v21 == 2)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580A8, &qword_24B7B63B8);
    v44 = v43[16];
    v45 = v43[20];
    v46 = &v12[v43[24]];
    v71[0] = 1;
    sub_24B7B11E4();
    sub_24B7B547C();
    sub_24B7B544C();
    v47 = *MEMORY[0x277D04400];
    v48 = sub_24B7B53FC();
    (*(*(v48 - 8) + 104))(&v12[v44], v47, v48);
    v49 = *MEMORY[0x277D043E8];
    v50 = sub_24B7B53EC();
    (*(*(v50 - 8) + 104))(&v12[v45], v49, v50);
    v51 = swift_allocObject();
    v52 = v77;
    v51[5] = v76;
    v51[6] = v52;
    v53 = v79;
    v51[7] = v78;
    v51[8] = v53;
    v54 = v73;
    v51[1] = v72;
    v51[2] = v54;
    v55 = v75;
    v51[3] = v74;
    v51[4] = v55;
    *v46 = &unk_24B7B63C8;
    v46[1] = v51;
    (*(v9 + 104))(v12, *MEMORY[0x277D043B0], v8);
    v39 = *a3;
    sub_24B7B3BAC(&v72, v71);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_24B7B4070(0, v39[2] + 1, 1, v39);
    }

    v41 = v39[2];
    v56 = v39[3];
    v42 = v41 + 1;
    if (v41 >= v56 >> 1)
    {
      v39 = sub_24B7B4070((v56 > 1), v41 + 1, 1, v39);
    }

    v18 = v12;
  }

  else if (v21 == 3)
  {
    if (*a1)
    {
      return result;
    }

    *a1 = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580A8, &qword_24B7B63B8);
    v27 = v26[16];
    v28 = v26[20];
    v29 = &v18[v26[24]];
    v71[0] = 0;
    sub_24B7B11E4();
    sub_24B7B547C();
    sub_24B7B544C();
    v30 = *MEMORY[0x277D04400];
    v31 = sub_24B7B53FC();
    (*(*(v31 - 8) + 104))(&v18[v27], v30, v31);
    v32 = *MEMORY[0x277D043E0];
    v33 = sub_24B7B53EC();
    (*(*(v33 - 8) + 104))(&v18[v28], v32, v33);
    v34 = swift_allocObject();
    v35 = v77;
    v34[5] = v76;
    v34[6] = v35;
    v36 = v79;
    v34[7] = v78;
    v34[8] = v36;
    v37 = v73;
    v34[1] = v72;
    v34[2] = v37;
    v38 = v75;
    v34[3] = v74;
    v34[4] = v38;
    *v29 = &unk_24B7B63E8;
    v29[1] = v34;
    (*(v9 + 104))(v18, *MEMORY[0x277D043B0], v8);
    v39 = *a3;
    sub_24B7B3BAC(&v72, v71);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_24B7B4070(0, v39[2] + 1, 1, v39);
    }

    v41 = v39[2];
    v40 = v39[3];
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v39 = sub_24B7B4070((v40 > 1), v41 + 1, 1, v39);
    }
  }

  else
  {
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580A8, &qword_24B7B63B8);
    v58 = v57[16];
    v59 = v57[20];
    v60 = &v15[v57[24]];
    v71[0] = 2;
    sub_24B7B11E4();
    sub_24B7B547C();
    sub_24B7B544C();
    v61 = *MEMORY[0x277D04400];
    v62 = sub_24B7B53FC();
    (*(*(v62 - 8) + 104))(&v15[v58], v61, v62);
    v63 = *MEMORY[0x277D043E8];
    v64 = sub_24B7B53EC();
    (*(*(v64 - 8) + 104))(&v15[v59], v63, v64);
    v65 = swift_allocObject();
    v66 = v77;
    *(v65 + 80) = v76;
    *(v65 + 96) = v66;
    v67 = v79;
    *(v65 + 112) = v78;
    *(v65 + 128) = v67;
    v68 = v73;
    *(v65 + 16) = v72;
    *(v65 + 32) = v68;
    v69 = v75;
    *(v65 + 48) = v74;
    *(v65 + 64) = v69;
    *(v65 + 144) = v19;
    *(v65 + 152) = v20;
    *(v65 + 160) = v21 & 1;
    *v60 = &unk_24B7B63D8;
    v60[1] = v65;
    (*(v9 + 104))(v15, *MEMORY[0x277D043B0], v8);
    v39 = *a3;
    sub_24B7B3BAC(&v72, v71);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_24B7B4070(0, v39[2] + 1, 1, v39);
    }

    v41 = v39[2];
    v70 = v39[3];
    v42 = v41 + 1;
    if (v41 >= v70 >> 1)
    {
      v39 = sub_24B7B4070((v70 > 1), v41 + 1, 1, v39);
    }

    v18 = v15;
  }

  v39[2] = v42;
  result = (*(v9 + 32))(v39 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v41, v18, v8);
  *a3 = v39;
  return result;
}

unint64_t sub_24B7B11E4()
{
  result = qword_28110AA48;
  if (!qword_28110AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA48);
  }

  return result;
}

uint64_t sub_24B7B1238(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_24B7B543C();
  v2[20] = sub_24B7B542C();
  v6 = (*(a2 + 80) + **(a2 + 80));
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_24B7B134C;

  return v6(v2 + 7);
}

uint64_t sub_24B7B134C()
{
  v2 = *v1;
  v2[22] = v0;

  v4 = sub_24B7B540C();
  v2[23] = v4;
  v2[24] = v3;
  if (v0)
  {
    v5 = sub_24B7B1AB8;
  }

  else
  {
    v5 = sub_24B7B14AC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B7B14AC()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B7B545C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B7B542C();
  v0[25] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_24B7B1684;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v5, v7);
}

uint64_t sub_24B7B1684()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 184);
    v5 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_24B7B1798, v4, v5);
  }

  return result;
}

uint64_t sub_24B7B1798()
{
  v1 = *(v0 + 112);
  if (v1 == 2)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 120) = *(v0 + 96);
    *(v0 + 136) = v1 & 1;
    v4 = swift_task_alloc();
    *(v0 + 216) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580B0, &qword_24B7B6558);
    *v4 = v0;
    v4[1] = sub_24B7B18BC;

    return MEMORY[0x282159B08](v0 + 120, v5);
  }
}

uint64_t sub_24B7B18BC()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_24B7B19DC, v3, v2);
}

uint64_t sub_24B7B19DC(uint64_t a1)
{
  v2 = sub_24B7B542C();
  v1[25] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[26] = v3;
  *v3 = v1;
  v3[1] = sub_24B7B1684;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 12, v2, v4);
}

uint64_t sub_24B7B1AB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B7B1B1C(uint64_t a1, _OWORD *a2, char a3, double a4, double a5)
{
  *(v5 + 192) = a1;
  *(v5 + 200) = sub_24B7B543C();
  *(v5 + 208) = sub_24B7B542C();
  v10 = a2[5];
  *(v5 + 80) = a2[4];
  *(v5 + 96) = v10;
  v11 = a2[7];
  *(v5 + 112) = a2[6];
  *(v5 + 128) = v11;
  v12 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v12;
  v13 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v13;
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  *(v5 + 160) = a3;
  v14 = swift_task_alloc();
  *(v5 + 216) = v14;
  *v14 = v5;
  v14[1] = sub_24B7B1C1C;

  return sub_24B7B208C((v5 + 144));
}

uint64_t sub_24B7B1C1C(char a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_24B7B540C();
    v7 = v6;
    v8 = sub_24B7B2028;
    v9 = v5;
    v10 = v7;
  }

  else
  {
    *(v4 + 161) = a1 & 1;
    v11 = sub_24B7B540C();
    v10 = v12;
    *(v4 + 232) = v11;
    *(v4 + 240) = v12;
    v8 = sub_24B7B1D88;
    v9 = v11;
  }

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_24B7B1D88()
{
  if (*(v0 + 161) == 1)
  {
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 2;
    v1 = swift_task_alloc();
    *(v0 + 248) = v1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580B0, &qword_24B7B6558);
    *v1 = v0;
    v1[1] = sub_24B7B1EA4;

    return MEMORY[0x282159B08](v0 + 168, v2);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_24B7B1EA4()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x2822009F8](sub_24B7B1FC4, v3, v2);
}

uint64_t sub_24B7B1FC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B7B2028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B7B208C(__int128 *a1)
{
  *(v2 + 288) = v1;
  v3 = *a1;
  *(v2 + 233) = *(a1 + 16);
  v4 = *v1;
  *(v2 + 296) = v3;
  *(v2 + 312) = v4;
  v5 = *(v1 + 4);
  *(v2 + 328) = v5;
  v6 = *(v1 + 56);
  *(v2 + 336) = *(v1 + 40);
  *(v2 + 352) = v6;
  *(v2 + 368) = *(v1 + 9);
  v7 = v1[5];
  v8 = v1[7];
  *(v2 + 160) = v1[6];
  *(v2 + 176) = v8;
  *(v2 + 144) = v7;
  v11 = (v5 + *v5);
  v9 = swift_task_alloc();
  *(v2 + 376) = v9;
  *v9 = v2;
  v9[1] = sub_24B7B21C4;

  return v11();
}

uint64_t sub_24B7B21C4(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 234) = a1 & 1;

    return MEMORY[0x2822009F8](sub_24B7B2318, 0, 0);
  }
}

uint64_t sub_24B7B2318()
{
  if (*(v0 + 234) != 1)
  {
    if (qword_27F057F40 != -1)
    {
      swift_once();
    }

    v3 = sub_24B7B53CC();
    __swift_project_value_buffer(v3, qword_27F059488);
    v4 = sub_24B7B53AC();
    v5 = sub_24B7B546C();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "[TrainerTipUpsellMonitorFeature] Platform does not support tips upsell, skipping upsell";
    goto LABEL_14;
  }

  if (*(v0 + 233) == 1)
  {
    v10 = (*(v0 + 312) + **(v0 + 312));
    v1 = swift_task_alloc();
    *(v0 + 384) = v1;
    *v1 = v0;
    v1[1] = sub_24B7B25A4;

    return v10();
  }

  if (qword_27F057F40 != -1)
  {
    swift_once();
  }

  v8 = sub_24B7B53CC();
  __swift_project_value_buffer(v8, qword_27F059488);
  v4 = sub_24B7B53AC();
  v5 = sub_24B7B546C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "[TrainerTipUpsellMonitorFeature] Options do not contain upsell, skipping upsell";
LABEL_14:
    _os_log_impl(&dword_24B7AC000, v4, v5, v7, v6, 2u);
    MEMORY[0x24C24A230](v6, -1, -1);
  }

LABEL_15:

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_24B7B25A4(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 235) = a1 & 1;

    return MEMORY[0x2822009F8](sub_24B7B26F8, 0, 0);
  }
}

uint64_t sub_24B7B26F8()
{
  if (*(v0 + 235))
  {
    if (qword_27F057F40 != -1)
    {
      swift_once();
    }

    v1 = sub_24B7B53CC();
    __swift_project_value_buffer(v1, qword_27F059488);
    v2 = sub_24B7B53AC();
    v3 = sub_24B7B546C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24B7AC000, v2, v3, "[TrainerTipUpsellMonitorFeature] forcing tips upsell with user default, requesting upsell", v4, 2u);
      MEMORY[0x24C24A230](v4, -1, -1);
    }

    v5 = *(v0 + 8);

    return v5(1);
  }

  else
  {
    v8 = (*(v0 + 360) + **(v0 + 360));
    v7 = swift_task_alloc();
    *(v0 + 392) = v7;
    *v7 = v0;
    v7[1] = sub_24B7B28EC;

    return v8(v0 + 192);
  }
}

uint64_t sub_24B7B28EC()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_24B7B3454;
  }

  else
  {
    v2 = sub_24B7B2A00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B7B2A00()
{
  v1 = *(v0 + 192);
  *(v0 + 408) = v1;
  v2 = *(v0 + 200);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  *(v0 + 416) = v4;
  *(v0 + 424) = v3;
  v5 = *(v0 + 224);
  *(v0 + 432) = v5;
  v6 = *(v0 + 232);
  *(v0 + 236) = v6;
  if (v2 == 1)
  {
    if (v6)
    {
      v20 = (*(v0 + 344) + **(v0 + 344));
      v7 = swift_task_alloc();
      *(v0 + 440) = v7;
      *v7 = v0;
      v7[1] = sub_24B7B2CD4;

      return v20();
    }

    else
    {
      v14 = *(v0 + 288);
      v15 = *(v0 + 328);
      *(v0 + 16) = *(v0 + 312);
      v16 = *(v0 + 344);
      v17 = *(v0 + 360);
      *(v0 + 32) = *(v14 + 16);
      *(v0 + 48) = v15;
      *(v0 + 64) = v16;
      *(v0 + 80) = v17;
      v18 = *(v0 + 160);
      *(v0 + 96) = *(v0 + 144);
      *(v0 + 112) = v18;
      *(v0 + 128) = *(v0 + 176);
      *(v0 + 240) = v1;
      *(v0 + 248) = 1;
      *(v0 + 256) = v4;
      *(v0 + 264) = v3;
      *(v0 + 272) = v5;
      *(v0 + 280) = 0;
      v19 = swift_task_alloc();
      *(v0 + 456) = v19;
      *v19 = v0;
      v19[1] = sub_24B7B3060;

      return sub_24B7B3BEC((v0 + 240));
    }
  }

  else
  {

    if (qword_27F057F40 != -1)
    {
      swift_once();
    }

    v9 = sub_24B7B53CC();
    __swift_project_value_buffer(v9, qword_27F059488);
    v10 = sub_24B7B53AC();
    v11 = sub_24B7B546C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24B7AC000, v10, v11, "[TrainerTipUpsellMonitorFeature] native rules not enabled, requesting upsell", v12, 2u);
      MEMORY[0x24C24A230](v12, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13(1);
  }
}

uint64_t sub_24B7B2CD4(char a1)
{
  v4 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v5 = sub_24B7B2FF8;
  }

  else
  {
    *(v4 + 237) = a1;
    v5 = sub_24B7B2DFC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24B7B2DFC()
{
  if (*(v0 + 237) == 1)
  {

    if (qword_27F057F40 != -1)
    {
      swift_once();
    }

    v1 = sub_24B7B53CC();
    __swift_project_value_buffer(v1, qword_27F059488);
    v2 = sub_24B7B53AC();
    v3 = sub_24B7B546C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24B7AC000, v2, v3, "[TrainerTipUpsellMonitorFeature] subscription status not allowed, not requesting upsell", v4, 2u);
      MEMORY[0x24C24A230](v4, -1, -1);
    }

    v5 = *(v0 + 8);

    return v5(0);
  }

  else
  {
    v7 = *(v0 + 236);
    v8 = *(v0 + 432);
    v10 = *(v0 + 416);
    v9 = *(v0 + 424);
    v11 = *(v0 + 408);
    v12 = *(v0 + 288);
    v13 = *(v0 + 328);
    *(v0 + 16) = *(v0 + 312);
    v14 = *(v0 + 344);
    v15 = *(v0 + 360);
    *(v0 + 32) = *(v12 + 16);
    *(v0 + 48) = v13;
    *(v0 + 64) = v14;
    *(v0 + 80) = v15;
    v16 = *(v0 + 160);
    *(v0 + 96) = *(v0 + 144);
    *(v0 + 112) = v16;
    *(v0 + 128) = *(v0 + 176);
    *(v0 + 240) = v11;
    *(v0 + 248) = 1;
    *(v0 + 256) = v10;
    *(v0 + 264) = v9;
    *(v0 + 272) = v8;
    *(v0 + 280) = v7;
    v17 = swift_task_alloc();
    *(v0 + 456) = v17;
    *v17 = v0;
    v17[1] = sub_24B7B3060;

    return sub_24B7B3BEC((v0 + 240));
  }
}

uint64_t sub_24B7B2FF8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_24B7B3060(char a1)
{
  v4 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v5 = sub_24B7B3470;
  }

  else
  {
    *(v4 + 238) = a1 & 1;
    v5 = sub_24B7B318C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24B7B318C()
{
  v1 = *(v0 + 238);

  if (v1 != 1)
  {
    if (qword_27F057F40 != -1)
    {
      swift_once();
    }

    v8 = sub_24B7B53CC();
    __swift_project_value_buffer(v8, qword_27F059488);
    v4 = sub_24B7B53AC();
    v9 = sub_24B7B546C();
    if (os_log_type_enabled(v4, v9))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v10 = "[TrainerTipUpsellMonitorFeature] interval not expired, not requesting upsell";
      v11 = v9;
      v12 = v4;
      v13 = v6;
      v14 = 2;
LABEL_16:
      _os_log_impl(&dword_24B7AC000, v12, v11, v10, v13, v14);
      v7 = 0;
      goto LABEL_17;
    }

LABEL_18:
    v7 = 0;
    goto LABEL_20;
  }

  v2 = *(v0 + 304);
  if (v2 <= 0.0 || *(v0 + 432) > *(v0 + 296) / v2)
  {
    if (qword_27F057F40 != -1)
    {
      swift_once();
    }

    v15 = sub_24B7B53CC();
    __swift_project_value_buffer(v15, qword_27F059488);
    v4 = sub_24B7B53AC();
    v16 = sub_24B7B546C();
    if (os_log_type_enabled(v4, v16))
    {
      v18 = *(v0 + 296);
      v17 = *(v0 + 304);
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      *(v6 + 4) = v18;
      *(v6 + 12) = 2048;
      *(v6 + 14) = v17;
      v10 = "[TrainerTipUpsellMonitorFeature] minimum ratio complete not reached, not requesting upsell - elapsedTime = %f, duration = %f";
      v11 = v16;
      v12 = v4;
      v13 = v6;
      v14 = 22;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (qword_27F057F40 != -1)
  {
    swift_once();
  }

  v3 = sub_24B7B53CC();
  __swift_project_value_buffer(v3, qword_27F059488);
  v4 = sub_24B7B53AC();
  v5 = sub_24B7B546C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24B7AC000, v4, v5, "[TrainerTipUpsellMonitorFeature] all checks passed, requesting upsell", v6, 2u);
    v7 = 1;
LABEL_17:
    MEMORY[0x24C24A230](v6, -1, -1);
    goto LABEL_20;
  }

  v7 = 1;
LABEL_20:

  v19 = *(v0 + 8);

  return v19(v7);
}

uint64_t sub_24B7B3470()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_24B7B34D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B7B539C();
  *(v2 + 16) = v4;
  *(v2 + 24) = *(v4 - 8);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = sub_24B7B543C();
  *(v2 + 48) = sub_24B7B542C();
  v5 = *(a2 + 96);
  *(v2 + 56) = *(a2 + 112);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v2 + 72) = v6;
  *v6 = v2;
  v6[1] = sub_24B7B3644;

  return v8();
}

uint64_t sub_24B7B3644()
{
  v2 = *v1;
  v2[10] = v0;

  v4 = sub_24B7B540C();
  v2[11] = v4;
  v2[12] = v3;
  if (v0)
  {
    v5 = sub_24B7B3AA4;
  }

  else
  {
    v5 = sub_24B7B37A4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B7B37A4()
{
  v1 = v0[7];
  sub_24B7B538C();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_24B7B38A0;
  v3 = v0[4];

  return v5(v3);
}

uint64_t sub_24B7B38A0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[4];
  v5 = v2[3];
  v6 = v2[2];
  if (v0)
  {
    MEMORY[0x24C24A180](v0);
    (*(v5 + 8))(v4, v6);
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_24B7B4880;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_24B7B3A34;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24B7B3A34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B7B3AA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B7B3B14(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B7B4884;

  return sub_24B7B34D8(a1, v1 + 16);
}

uint64_t sub_24B7B3BEC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580B8, &qword_24B7B6570);
  v4 = swift_task_alloc();
  v2[2] = v4;
  v5 = sub_24B7B539C();
  v2[3] = v5;
  v2[4] = *(v5 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = *a1;
  v8 = (*(v1 + 16) + **(v1 + 16));
  v6 = swift_task_alloc();
  v2[8] = v6;
  *v6 = v2;
  v6[1] = sub_24B7B3D98;

  return v8(v4);
}

uint64_t sub_24B7B3D98()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24B7B3FF4;
  }

  else
  {
    v2 = sub_24B7B3EAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B7B3EAC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24B7B4814(v3);
    v4 = 1;
  }

  else
  {
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    (*(v2 + 32))(v6, v3, v1);
    sub_24B7B538C();
    sub_24B7B537C();
    v9 = v8;
    v10 = *(v2 + 8);
    v10(v7, v1);
    v10(v6, v1);
    v4 = v5 < v9;
  }

  v11 = *(v0 + 8);

  return v11(v4);
}

uint64_t sub_24B7B3FF4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void *sub_24B7B4070(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580C0, &qword_24B7B6578);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580A0, &qword_24B7B63B0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580A0, &qword_24B7B63B0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24B7B4260(uint64_t a1)
{
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  v6 = *(v1 + 160);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B7B431C;

  return sub_24B7B1B1C(a1, (v1 + 16), v6, v4, v5);
}

uint64_t sub_24B7B431C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24B7B448C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B7B4884;

  return sub_24B7B1238(a1, v1 + 16);
}

unint64_t sub_24B7B4528()
{
  result = qword_28110AA50;
  if (!qword_28110AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA50);
  }

  return result;
}

unint64_t sub_24B7B4580()
{
  result = qword_28110AA58;
  if (!qword_28110AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA58);
  }

  return result;
}

unint64_t sub_24B7B45D8()
{
  result = qword_28110AA38;
  if (!qword_28110AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA38);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_24B7B4650(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_24B7B4698(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B7B470C()
{
  result = qword_28110AA40;
  if (!qword_28110AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA40);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
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

uint64_t sub_24B7B4814(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580B8, &qword_24B7B6570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TrainerTipUpsellMonitorError.hashValue.getter()
{
  v1 = *v0;
  sub_24B7B559C();
  MEMORY[0x24C24A040](v1);
  return sub_24B7B55BC();
}

unint64_t sub_24B7B4914()
{
  result = qword_27F0580C8;
  if (!qword_27F0580C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0580C8);
  }

  return result;
}

uint64_t sub_24B7B49E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6176697463417369 && a2 == 0xEB00000000646574)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B7B554C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B7B4A6C(uint64_t a1)
{
  v2 = sub_24B7B4C1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7B4AA8(uint64_t a1)
{
  v2 = sub_24B7B4C1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrainerTipUpsellMonitorLocalState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580D0, &qword_24B7B6670);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7B4C1C();
  sub_24B7B55DC();
  sub_24B7B551C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24B7B4C1C()
{
  result = qword_27F0580D8;
  if (!qword_27F0580D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0580D8);
  }

  return result;
}

uint64_t TrainerTipUpsellMonitorLocalState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580E0, &qword_24B7B6678);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7B4C1C();
  sub_24B7B55CC();
  if (!v2)
  {
    v9 = sub_24B7B54CC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B7B4DE0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580D0, &qword_24B7B6670);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7B4C1C();
  sub_24B7B55DC();
  sub_24B7B551C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t getEnumTagSinglePayload for TrainerTipUpsellMonitorLocalState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrainerTipUpsellMonitorLocalState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B7B50BC()
{
  result = qword_27F0580E8;
  if (!qword_27F0580E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0580E8);
  }

  return result;
}

unint64_t sub_24B7B5114()
{
  result = qword_27F0580F0;
  if (!qword_27F0580F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0580F0);
  }

  return result;
}

unint64_t sub_24B7B516C()
{
  result = qword_27F0580F8;
  if (!qword_27F0580F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0580F8);
  }

  return result;
}

uint64_t TrainerTipUpsellMonitorEnvironment.fetchForceTrainerTipUpsellEnabled.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.fetchLastTrainerTipUpsellViewedDate.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.fetchPlatformSupportsTrainerTipUpsell.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.fetchSubscriptionStatus.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.fetchTrainerTipUpsellConfiguration.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.makeTrainerTipPlayerDismissedStream.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.presentTrainerTipUpsell.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.updateLastTrainerTipUpsellViewedDate.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

__n128 TrainerTipUpsellMonitorEnvironment.init(fetchForceTrainerTipUpsellEnabled:fetchLastTrainerTipUpsellViewedDate:fetchPlatformSupportsTrainerTipUpsell:fetchSubscriptionStatus:fetchTrainerTipUpsellConfiguration:makeTrainerTipPlayerDismissedStream:presentTrainerTipUpsell:updateLastTrainerTipUpsellViewedDate:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  return result;
}