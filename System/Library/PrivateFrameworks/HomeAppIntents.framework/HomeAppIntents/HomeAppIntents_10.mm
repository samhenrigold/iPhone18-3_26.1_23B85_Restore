unint64_t sub_252806A78()
{
  result = qword_27F4FEF00;
  if (!qword_27F4FEF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF00);
  }

  return result;
}

unint64_t sub_252806B14()
{
  result = qword_27F4FEF18;
  if (!qword_27F4FEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF18);
  }

  return result;
}

unint64_t sub_252806B6C()
{
  result = qword_27F4FEF20;
  if (!qword_27F4FEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF20);
  }

  return result;
}

unint64_t sub_252806BC4()
{
  result = qword_27F4FEF28;
  if (!qword_27F4FEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF28);
  }

  return result;
}

unint64_t sub_252806C1C()
{
  result = qword_27F4FEF30;
  if (!qword_27F4FEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF30);
  }

  return result;
}

unint64_t sub_252806C70()
{
  result = qword_27F4FEF38;
  if (!qword_27F4FEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF38);
  }

  return result;
}

unint64_t sub_252806CC8()
{
  result = qword_27F4FEF40;
  if (!qword_27F4FEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF40);
  }

  return result;
}

unint64_t sub_252806D20()
{
  result = qword_27F4FEF48;
  if (!qword_27F4FEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF48);
  }

  return result;
}

unint64_t sub_252806D78()
{
  result = qword_27F4FEF50;
  if (!qword_27F4FEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF50);
  }

  return result;
}

unint64_t sub_252806DD0()
{
  result = qword_27F4FEF58;
  if (!qword_27F4FEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF58);
  }

  return result;
}

unint64_t sub_252806E6C()
{
  result = qword_27F4FEF70;
  if (!qword_27F4FEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF70);
  }

  return result;
}

unint64_t sub_252806F4C()
{
  result = qword_27F4FEF98;
  if (!qword_27F4FEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEF98);
  }

  return result;
}

unint64_t sub_252806FA4()
{
  result = qword_27F4FEFA0;
  if (!qword_27F4FEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFA0);
  }

  return result;
}

unint64_t sub_252806FF8()
{
  result = qword_27F4FEFA8;
  if (!qword_27F4FEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFA8);
  }

  return result;
}

unint64_t sub_25280704C()
{
  result = qword_27F4FEFB0;
  if (!qword_27F4FEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFB0);
  }

  return result;
}

uint64_t sub_2528070FC(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v16 = sub_2528BECF0();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v21 = MEMORY[0x277D84F90];
  sub_25282EFDC(0, v9, 0);
  v10 = v21;
  v11 = (a3 + 32);
  v15 = v6 + 32;
  while (1)
  {
    v19 = *v11;
    v20 = v19;
    sub_2528BEA50();
    sub_2528BEA50();
    v17(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v10;
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_25282EFDC((v12 > 1), v13 + 1, 1);
      v10 = v21;
    }

    *(v10 + 16) = v13 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v16);
    ++v11;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2528072E8(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v17 = MEMORY[0x277D84F90];
  sub_25282F11C(0, v4, 0);
  v5 = v17;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v15 = v9;
    a1(&v16, &v15);
    if (v3)
    {
      break;
    }

    v10 = v16;
    v17 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      v14 = v16;
      sub_25282F11C((v11 > 1), v12 + 1, 1);
      v10 = v14;
      v5 = v17;
    }

    *(v5 + 16) = v12 + 1;
    *(v5 + 16 * v12 + 32) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2528073F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v29 = a1;
  v4 = type metadata accessor for DeviceEntity(0);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2528BECF0();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_2528BFB20();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25272006C(a2, v11, &qword_27F4FCDB8, &unk_2528C5CC0);
  v19 = sub_2528C00D0();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v11, 1, v19) == 1)
  {
    sub_2527213D8(v11, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_4:
    sub_2527213D8(v14, &qword_27F4FCEF0, &unk_2528C6AB0);
    return MEMORY[0x277D84F90];
  }

  sub_252819FA8(v8);
  sub_2528C0080();
  (*(v6 + 8))(v8, v31);
  (*(v20 + 8))(v11, v19);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_4;
  }

  v22 = (*(v16 + 32))(v18, v14, v15);
  MEMORY[0x28223BE20](v22);
  v24 = v28;
  v23 = v29;
  *(&v28 - 2) = v18;
  *(&v28 - 1) = v24;
  v25 = sub_2528072E8(sub_25279F25C, (&v28 - 4), v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC758, &unk_2528C8020);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2528C3910;
  v27 = v30;
  sub_25272E7DC(v32, v30);
  sub_2528084C4(v27, v25, (v26 + 32));
  (*(v16 + 8))(v18, v15);
  return v26;
}

uint64_t sub_252807840(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 1;
  }

  v6 = (a3 + 32);
  v7 = v4 - 1;
  do
  {
    v8 = *v6++;
    v13 = v8;
    sub_2528BEA50();
    sub_2528BEA50();
    v9 = a1(&v13);

    result = (v3 == 0) & v9;
    v12 = v7-- != 0;
  }

  while (result == 1 && v12);
  return result;
}

void sub_252807908(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v23 = sub_2528BFDE0();
  MEMORY[0x28223BE20](v23);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v20 = v5 + 16;
  v21 = v5;
  v19 = (v5 + 8);
  v24 = a3;

  v13 = 0;
  while (v11)
  {
    v14 = v23;
LABEL_11:
    (*(v21 + 16))(v7, *(v24 + 48) + *(v21 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v14);
    v16 = v22(v7);
    if (v3)
    {
      (*v19)(v7, v14);

      return;
    }

    v17 = v16;
    v11 &= v11 - 1;
    (*v19)(v7, v14);
    if ((v17 & 1) == 0)
    {
LABEL_13:

      return;
    }
  }

  v14 = v23;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_13;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_252807B20(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 33) > 1u)
  {
    if (*(v2 + 33) != 2)
    {
      sub_2528C0E70();

      *v6 = 0xD000000000000013;
      *&v6[8] = 0x80000002528E5610;
      v9 = v3;
      v5 = sub_2528C1040();
      goto LABEL_9;
    }

    sub_2528C0E70();

    strcpy(v6, "device error: ");
    v6[15] = -18;
    LOBYTE(v9) = v3;
  }

  else
  {
    if (!*(v2 + 33))
    {
      *v6 = *v2;
      *&v6[8] = *(v2 + 1);
      v7 = v2[3];
      v8 = *(v2 + 32);
      return sub_252873604(a1, a2);
    }

    strcpy(v6, "error: ");
    *&v6[8] = 0xE700000000000000;
    LOBYTE(v9) = v3;
  }

  v5 = sub_2528C0A10();
LABEL_9:
  MEMORY[0x2530A80B0](v5);

  return *v6;
}

uint64_t sub_252807CB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2528C09B0();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  sub_2528BE6B0();
  v11[14] = v11[15];
  sub_25272E9EC();
  sub_2528C0980();
  sub_2528C0990();
  sub_2528BEC30();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_2528BE8D0();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_2528BE900();
}

uint64_t sub_252807F30()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502AA0);
  __swift_project_value_buffer(v0, qword_27F502AA0);
  return sub_2528BE9D0();
}

uint64_t sub_252807F94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25280DBF8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252807FC8(uint64_t a1)
{
  v2 = sub_25280D794();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252808014(uint64_t a1)
{
  sub_25280D794();

  return sub_2528BE550();
}

uint64_t sub_252808084(uint64_t a1)
{
  v2 = sub_25279F27C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2528080D8(uint64_t a1)
{
  v2 = sub_25280CFDC();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t DeviceResult.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = type metadata accessor for DeviceEntity(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528C09B0();
  MEMORY[0x28223BE20](v11 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  sub_2528BE6B0();
  sub_2528BE6B0();
  sub_25272E840(v10);
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v7 + 56))(v5, 1, 1, v6);
  v12 = sub_2528BE8D0();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  return sub_2528BE900();
}

uint64_t static DeviceResult.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB880 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FEFB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2528084C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for DeviceEntity(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = sub_2528BEC40();
  MEMORY[0x28223BE20](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
  sub_2528BEC20();
  sub_25280DE3C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  *a3 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD490, &unk_2528C8030);
  sub_2528BEC20();
  sub_25279F27C();
  a3[1] = sub_2528BE6F0();
  sub_25272E7DC(a1, v11);
  sub_25272E7DC(v11, v9);
  sub_2528BE6C0();
  sub_25272E840(v11);
  v14[1] = a2;
  sub_2528BE6C0();
  return sub_25272E840(a1);
}

uint64_t DeviceResult.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DeviceEntity(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (v10 - v6);
  v8 = sub_2528BEC40();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
  sub_2528BEC20();
  sub_25280DE3C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  *a1 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD490, &unk_2528C8030);
  sub_2528BEC20();
  sub_25279F27C();
  a1[1] = sub_2528BE6F0();
  sub_252826AC0(v7);
  sub_25272E7DC(v7, v5);
  sub_2528BE6C0();
  sub_25272E840(v7);
  v10[1] = MEMORY[0x277D84F90];
  return sub_2528BE6C0();
}

uint64_t sub_2528088B8(uint64_t a1)
{
  v2 = sub_25280D740();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252808904(uint64_t a1)
{
  sub_25280D740();

  return sub_2528BE550();
}

uint64_t sub_252808974(uint64_t a1)
{
  v2 = sub_25280D0D0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2528089C4(uint64_t a1)
{
  v2 = sub_25280D320();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_252808A10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2528BEC40();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for DeviceEntity(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v26[-v16];
  v27 = a2;
  v28 = a4;
  v18 = sub_2527A4850(sub_25280DEC4, v26, a3);
  sub_25272E7DC(a2, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
  sub_2528BEC20();
  sub_25280DE3C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  v19 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD490, &unk_2528C8030);
  sub_2528BEC20();
  sub_25279F27C();
  v20 = sub_2528BE6F0();
  sub_25272E7DC(v17, v15);
  sub_25272E7DC(v15, v12);
  sub_2528BE6C0();
  sub_25272E840(v15);
  v29 = v18;
  sub_2528BE6C0();
  sub_25272E840(v17);
  v21 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_252737BC0(0, *(v21 + 16) + 1, 1, v21);
    v21 = result;
  }

  v24 = *(v21 + 16);
  v23 = *(v21 + 24);
  if (v24 >= v23 >> 1)
  {
    result = sub_252737BC0((v23 > 1), v24 + 1, 1, v21);
    v21 = result;
  }

  *(v21 + 16) = v24 + 1;
  v25 = v21 + 16 * v24;
  *(v25 + 32) = v19;
  *(v25 + 40) = v20;
  *a1 = v21;
  return result;
}

void sub_252808CE4(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v137 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v7 - 8);
  v131 = &v111 - v8;
  v9 = sub_2528C01C0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v111 - v14;
  v15 = sub_2528BECF0();
  v133 = *(v15 - 8);
  v134 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v130 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v111 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v128 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v111 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v129 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v111 - v28;
  v30 = sub_2528BF9D0();
  v138 = *(v30 - 8);
  v139 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v127 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v135 = &v111 - v33;
  v136 = a2;
  v146 = *a1;
  LOBYTE(v141) = v146;
  v34 = *(a2 + 16);
  sub_2528BE6B0();
  LOWORD(v142) = v143;
  v35 = sub_252870A60(&v142);
  if (!*(v35 + 16))
  {

    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v125 = v19;
  v126 = v9;
  v36 = v35;
  sub_25272006C(v137, v24, &qword_27F4FCD98, &qword_2528C6200);
  v37 = sub_2528BF400();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v123 = v38 + 48;
  v122 = v39;
  if (v39(v24, 1, v37) == 1)
  {

    sub_2527213D8(v24, &qword_27F4FCD98, &qword_2528C6200);
    (*(v138 + 56))(v29, 1, 1, v139);
LABEL_12:
    sub_2527213D8(v29, &qword_27F4FD670, &qword_2528D3570);
    LOBYTE(v142) = v146;
    v143 = 0u;
    v144 = 0u;
    v145 = 256;
    *a4 = sub_25280DA84(&v142, &v143);
    a4[1] = v52;
    return;
  }

  v120 = v34;
  v124 = v36;
  v121 = a4;
  v40 = sub_2528BF370();
  v41 = *(v38 + 8);
  v119 = v37;
  v118 = v38 + 8;
  v117 = v41;
  v41(v24, v37);
  v42 = v125;
  sub_252819FA8(v125);
  v43 = v140;
  if (*(v40 + 16))
  {
    v44 = sub_252785C40(v42);
    v45 = v139;
    v46 = v126;
    if (v47)
    {
      v48 = v138;
      (*(v138 + 16))(v29, *(v40 + 56) + *(v138 + 72) * v44, v139);
      v125 = *(v133 + 8);
      v125(v42, v134);

      v49 = 0;
    }

    else
    {

      v125 = *(v133 + 8);
      v125(v42, v134);
      v49 = 1;
      v48 = v138;
    }
  }

  else
  {

    v125 = *(v133 + 8);
    v125(v42, v134);
    v49 = 1;
    v48 = v138;
    v45 = v139;
    v46 = v126;
  }

  v50 = v48[7];
  v50(v29, v49, 1, v45);
  v51 = v48[6];
  v126 = v48 + 6;
  v116 = v51;
  if (v51(v29, 1, v45) == 1)
  {

    a4 = v121;
    goto LABEL_12;
  }

  v114 = v50;
  v115 = v48 + 7;
  v53 = v48[4];
  v54 = v135;
  v113 = v48 + 4;
  v112 = v53;
  v55 = (v53)(v135, v29, v45);
  MEMORY[0x28223BE20](v55);
  *(&v111 - 2) = v54;
  sub_2527A497C(sub_25280DEE0, (&v111 - 4), v124);
  v57 = v56;
  v140 = v43;
  v58 = *(v56 + 16);
  if (v58)
  {
    v59 = 0;
    while (1)
    {
      if (v59 >= *(v57 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      (*(v10 + 16))(v13, v57 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v59, v46);
      if (sub_2528C01B0())
      {
        break;
      }

      ++v59;
      (*(v10 + 8))(v13, v46);
      if (v58 == v59)
      {
        goto LABEL_18;
      }
    }

    v77 = v132;
    (*(v10 + 32))(v132, v13, v46);
    v78 = sub_2528C01A0();
    (*(v10 + 8))(v77, v46);
    if (!v78)
    {
      goto LABEL_19;
    }

    *&v143 = v78;
    type metadata accessor for HMError(0);
    sub_25280DE3C(&qword_27F4FC0D0, type metadata accessor for HMError, &unk_2528C3258);
    sub_2528BEBE0();
    sub_2527A0688(v142, &v141);
    v79 = v121;
    if (v141 == 20)
    {
      v147 = v146;
      v142 = v78;
      sub_2528BEBE0();
      v143 = v141;
      v144 = 0uLL;
      v145 = 768;
      v80 = &v147;
    }

    else
    {
      LOBYTE(v142) = v146;
      v143 = v141;
      v144 = 0uLL;
      v145 = 256;
      v80 = &v142;
    }

    v87 = sub_25280DA84(v80, &v143);
    v89 = v88;

    *v79 = v87;
    v79[1] = v89;
    goto LABEL_31;
  }

LABEL_18:

LABEL_19:
  v60 = v146;
  v147 = v146;
  sub_2528BE6B0();
  LOWORD(v141) = v142;
  v61 = v135;
  sub_252874784(&v147, &v141, &v143);
  v62 = v145;
  v63 = v121;
  if (v145 <= 0xFDu)
  {

    LOBYTE(v142) = v60;
    v145 = v62;
    *v63 = sub_25280DA84(&v142, &v143);
    v63[1] = v74;
    v75 = *(v138 + 8);
    v76 = v61;
LABEL_32:
    v75(v76, v139);
    return;
  }

  v64 = sub_2528BF430();
  MEMORY[0x28223BE20](v64);
  *(&v111 - 16) = v60;
  *(&v111 - 1) = v136;
  sub_2527A4DC8(sub_25280DEFC, (&v111 - 4), v64);
  v66 = v65;

  v67 = v139;
  if (!*(v66 + 16))
  {

    v81 = v131;
    sub_2528BF450();
    v83 = v133;
    v82 = v134;
    if ((*(v133 + 48))(v81, 1, v134) == 1)
    {
      v84 = &qword_27F4FC628;
      v85 = &qword_2528C4750;
      v86 = v81;
    }

    else
    {
      v90 = v81;
      v91 = v130;
      (*(v83 + 32))(v130, v90, v82);
      v92 = v128;
      sub_25272006C(v137, v128, &qword_27F4FCD98, &qword_2528C6200);
      v93 = v119;
      if (v122(v92, 1, v119) == 1)
      {
        v125(v91, v82);
        sub_2527213D8(v92, &qword_27F4FCD98, &qword_2528C6200);
        v94 = v129;
        v67 = v139;
        v114(v129, 1, 1, v139);
      }

      else
      {
        v95 = sub_2528BF370();
        v96 = v93;
        v97 = v95;
        v117(v92, v96);
        if (*(v97 + 16) && (v98 = sub_252785C40(v91), (v99 & 1) != 0))
        {
          (*(v138 + 16))(v129, *(v97 + 56) + *(v138 + 72) * v98, v139);
          v100 = 0;
        }

        else
        {
          v100 = 1;
        }

        v94 = v129;
        v67 = v139;
        v114(v129, v100, 1, v139);
        if (v116(v94, 1, v67) != 1)
        {
          v112(v127, v94, v67);
          v147 = v60;
          sub_2528BE6B0();
          LOWORD(v141) = v142;
          sub_252874784(&v147, &v141, &v143);
          v105 = v145;
          if (v145 < 0xFEu)
          {

            LOBYTE(v142) = v60;
            v145 = v105;
            v106 = sub_25280DA84(&v142, &v143);
            v108 = v107;
            v109 = v82;
            v110 = *(v138 + 8);
            v110(v127, v67);
            v125(v130, v109);
            *v63 = v106;
            v63[1] = v108;
            v110(v135, v67);
            return;
          }

          (*(v138 + 8))(v127, v67);
          v101 = (v125)(v130, v82);
          goto LABEL_43;
        }

        v125(v130, v82);
      }

      v84 = &qword_27F4FD670;
      v85 = &qword_2528D3570;
      v86 = v94;
    }

    v101 = sub_2527213D8(v86, v84, v85);
LABEL_43:
    MEMORY[0x28223BE20](v101);
    *(&v111 - 2) = v61;
    sub_252807908(sub_25280DF6C, (&v111 - 4), v124);
    v103 = v102;

    LOBYTE(v142) = v60;
    if (v103)
    {
      v143 = 1uLL;
      v144 = 0uLL;
    }

    else
    {
      v143 = 0u;
      v144 = 0u;
    }

    v145 = 256;
    *v63 = sub_25280DA84(&v142, &v143);
    v63[1] = v104;
    (*(v138 + 8))(v61, v67);
    return;
  }

  if (*(v66 + 16))
  {
    v68 = *(v66 + 32);
    v69 = *(v66 + 40);
    v70 = *(v66 + 48);
    v71 = *(v66 + 56);
    v72 = *(v66 + 64);
    sub_252760C18(v68, v69, v70, v71, v72);

    LOBYTE(v142) = v60;
    *&v143 = v68;
    *(&v143 + 1) = v69;
    *&v144 = v70;
    *(&v144 + 1) = v71;
    v145 = v72;
    *v63 = sub_25280DA84(&v142, &v143);
    v63[1] = v73;
LABEL_31:
    v75 = *(v138 + 8);
    v76 = v135;
    goto LABEL_32;
  }

LABEL_51:
  __break(1u);
}

uint64_t sub_252809BC4@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_2528BF760();
  v6 = sub_2528C01F0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2527213D8(v5, &qword_27F4FE8A8, &qword_2528CDF80);
    v8 = 1;
  }

  else
  {
    sub_2528C01D0();
    (*(v7 + 8))(v5, v6);
    v8 = 0;
  }

  v9 = sub_2528C01C0();
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

BOOL sub_252809D44(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  sub_2528BF760();
  v4 = sub_2528C01F0();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_2527213D8(v3, &qword_27F4FE8A8, &qword_2528CDF80);
  return v5;
}

uint64_t sub_252809E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_2528C00D0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a4, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = sub_2528073F8(a3, v8, 0);
  sub_2527213D8(v8, &qword_27F4FCDB8, &unk_2528C5CC0);
  return sub_252735C2C(v11);
}

uint64_t sub_252809F90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v9 = sub_2528BEC40();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for DeviceEntity(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v31 = a2;
  v32 = a4;
  v33 = a5;
  v19 = sub_2527A4850(sub_25280DDAC, v30, a3);
  sub_25272E7DC(a2, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
  sub_2528BEC20();
  sub_25280DE3C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  v20 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD490, &unk_2528C8030);
  sub_2528BEC20();
  sub_25279F27C();
  v21 = sub_2528BE6F0();
  sub_25272E7DC(v18, v16);
  sub_25272E7DC(v16, v13);
  v22 = v29;
  sub_2528BE6C0();
  sub_25272E840(v16);
  v34 = v19;
  sub_2528BE6C0();
  sub_25272E840(v18);
  v23 = *v22;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_252737BC0(0, *(v23 + 16) + 1, 1, v23);
    v23 = result;
  }

  v26 = *(v23 + 16);
  v25 = *(v23 + 24);
  if (v26 >= v25 >> 1)
  {
    result = sub_252737BC0((v25 > 1), v26 + 1, 1, v23);
    v23 = result;
  }

  *(v23 + 16) = v26 + 1;
  v27 = v23 + 16 * v26;
  *(v27 + 32) = v20;
  *(v27 + 40) = v21;
  *v22 = v23;
  return result;
}

void sub_25280A270(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v111 = a4;
  v104 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF120, &qword_2528D1AB8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v92 - v9;
  v106 = sub_2528BFF90();
  v11 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v96 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2528BFD50();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v92 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  MEMORY[0x28223BE20](v19 - 8);
  v105 = &v92 - v20;
  v102 = sub_2528BF9D0();
  v110 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2528BECF0();
  v107 = *(v23 - 8);
  v108 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v97 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v98 = &v92 - v27;
  MEMORY[0x28223BE20](v26);
  v99 = &v92 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6B8, &unk_2528D1AC0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v92 - v33;
  v112 = *a1;
  v109 = a2;
  sub_2528BE6B0();
  if (v115 >> 14 == 1)
  {
    v35 = BYTE1(v115) & 0x3F;
  }

  else
  {
    v35 = v115;
  }

  v100 = v10;
  v101 = v11;
  if (v112 == 41)
  {
    if (v35 == 2)
    {
      v36 = MEMORY[0x277D15F90];
      goto LABEL_9;
    }
  }

  else if (v112 == 33)
  {
    v36 = MEMORY[0x277D15F88];
LABEL_9:
    v37 = *v36;
    v38 = sub_2528BFD30();
    v39 = v18;
    v40 = a5;
    v41 = *(v38 - 8);
    (*(v41 + 104))(v32, v37, v38);
    (*(v41 + 56))(v32, 0, 1, v38);
    a5 = v40;
    v18 = v39;
    goto LABEL_11;
  }

  v38 = sub_2528BFD30();
  (*(*(v38 - 8) + 56))(v32, 1, 1, v38);
LABEL_11:
  sub_25280DDCC(v32, v34);
  sub_2528BFD30();
  v42 = (*(*(v38 - 8) + 48))(v34, 1, v38);
  sub_2527213D8(v34, &qword_27F4FD6B8, &unk_2528D1AC0);
  if (v42 == 1)
  {
    *a5 = 0;
    a5[1] = 0;
    return;
  }

  v43 = v110;
  v44 = v104;
  if (!v104)
  {
LABEL_20:
    sub_25272006C(v111, v18, &qword_27F4FCD98, &qword_2528C6200);
    v52 = sub_2528BF400();
    v53 = *(v52 - 8);
    v54 = *(v53 + 48);
    v55 = v54(v18, 1, v52);
    v92 = a5;
    if (v55 == 1)
    {
      sub_2527213D8(v18, &qword_27F4FCD98, &qword_2528C6200);
      v56 = v105;
      (*(v43 + 56))(v105, 1, 1, v102);
      v57 = v103;
    }

    else
    {
      v58 = sub_2528BF370();
      (*(v53 + 8))(v18, v52);
      v59 = v98;
      sub_252819FA8(v98);
      if (*(v58 + 16) && (v60 = sub_252785C40(v59), (v61 & 1) != 0))
      {
        v62 = v102;
        (*(v110 + 16))(v105, *(v58 + 56) + *(v110 + 72) * v60, v102);
        (*(v107 + 8))(v59, v108);

        v63 = 0;
        v57 = v103;
      }

      else
      {

        (*(v107 + 8))(v59, v108);
        v63 = 1;
        v62 = v102;
        v57 = v103;
      }

      v64 = v110;
      v56 = v105;
      (*(v110 + 56))(v105, v63, 1, v62);
      if ((*(v64 + 48))(v56, 1, v62) != 1)
      {
        (*(v64 + 32))(v22, v56, v62);
        if (v112 == 33)
        {
          v76 = v93;
          v77 = v62;
          sub_2528BF640();
          v78 = sub_2528BFD10();
          (*(v94 + 8))(v76, v95);
          LOBYTE(v118) = 33;
          v115 = v78 & 1;
          v116 = 0uLL;
          v117 = 72;
          v79 = sub_25280DA84(&v118, &v115);
          v81 = v80;
          (*(v64 + 8))(v22, v77);
          v82 = v92;
          *v92 = v79;
          v82[1] = v81;
          return;
        }

        (*(v64 + 8))(v22, v62);
LABEL_28:
        sub_25272006C(v111, v57, &qword_27F4FCD98, &qword_2528C6200);
        v65 = v54(v57, 1, v52);
        v66 = v92;
        if (v65 == 1)
        {
          sub_2527213D8(v57, &qword_27F4FCD98, &qword_2528C6200);
          v67 = v100;
          (*(v101 + 56))(v100, 1, 1, v106);
          v68 = v112;
        }

        else
        {
          v69 = v57;
          v70 = sub_2528BF3A0();
          (*(v53 + 8))(v69, v52);
          v71 = v97;
          sub_252819FA8(v97);
          v67 = v100;
          v68 = v112;
          if (*(v70 + 16))
          {
            v72 = sub_252785C40(v71);
            v73 = v101;
            if (v74)
            {
              (*(v101 + 16))(v67, *(v70 + 56) + *(v101 + 72) * v72, v106);
              (*(v107 + 8))(v71, v108);

              v75 = 0;
            }

            else
            {

              (*(v107 + 8))(v71, v108);
              v75 = 1;
            }
          }

          else
          {

            (*(v107 + 8))(v71, v108);
            v75 = 1;
            v73 = v101;
          }

          v83 = v106;
          (*(v73 + 56))(v67, v75, 1, v106);
          if ((*(v73 + 48))(v67, 1, v83) != 1)
          {
            v85 = v96;
            (*(v73 + 32))();
            LOBYTE(v118) = v68;
            sub_252875310(&v118, &v115);
            if (v117 < 0xFEu)
            {
              LOBYTE(v118) = v68;
              v117 = v117;
              v86 = sub_25280DA84(&v118, &v115);
              v88 = v87;
              (*(v73 + 8))(v85, v106);
              *v66 = v86;
              v66[1] = v88;
              return;
            }

            (*(v73 + 8))(v85, v106);
LABEL_39:
            LOBYTE(v118) = v68;
            v115 = 0u;
            v116 = 0u;
            v117 = 256;
            *v66 = sub_25280DA84(&v118, &v115);
            v66[1] = v84;
            return;
          }
        }

        sub_2527213D8(v67, &qword_27F4FF120, &qword_2528D1AB8);
        goto LABEL_39;
      }
    }

    sub_2527213D8(v56, &qword_27F4FD670, &qword_2528D3570);
    goto LABEL_28;
  }

  v45 = v99;
  sub_252819FA8(v99);
  if (!*(v44 + 16) || (v46 = sub_252785C40(v45), (v47 & 1) == 0))
  {
    (*(v107 + 8))(v45, v108);
    goto LABEL_20;
  }

  v48 = *(*(v44 + 56) + 8 * v46);
  v49 = v48;
  (*(v107 + 8))(v45, v108);
  *&v115 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  type metadata accessor for HMError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = v110;
    goto LABEL_20;
  }

  v50 = v118;
  *&v115 = v118;
  sub_25280DE3C(&qword_27F4FC0D0, type metadata accessor for HMError, &unk_2528C3258);
  sub_2528BEBE0();
  sub_2527A0688(v118, &v113);
  if (v113 == 20)
  {
    v114 = v112;
    v118 = v50;
    sub_2528BEBE0();
    v115 = v113;
    v116 = 0uLL;
    v117 = 768;
    v51 = &v114;
  }

  else
  {
    LOBYTE(v118) = v112;
    v115 = v113;
    v116 = 0uLL;
    v117 = 256;
    v51 = &v118;
  }

  v89 = sub_25280DA84(v51, &v115);
  v91 = v90;

  *a5 = v89;
  a5[1] = v91;
}

uint64_t sub_25280AFA4(char **a1, __int128 *a2)
{
  v7 = sub_2528BEC40();
  MEMORY[0x28223BE20](v7 - 8);
  v33[1] = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceEntity(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v33[0] = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  v17 = *a2;
  v18 = *a1;
  v19 = *(*a1 + 2);
  v37 = v17;
  if (v19)
  {
    v33[2] = v2;
    v34 = a1;
    v20 = 0;
    v38 = v17;
    a1 = (v18 + 40);
    while (1)
    {
      if (v20 >= *(v18 + 2))
      {
        __break(1u);
        goto LABEL_21;
      }

      v3 = *(a1 - 1);
      v4 = *a1;
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();
      sub_2528BE6B0();
      v21 = _s14HomeAppIntents12DeviceEntityV2eeoiySbAC_ACtFZ_0(v16, v14);
      sub_25272E840(v14);
      sub_25272E840(v16);
      if (v21)
      {
        break;
      }

      ++v20;
      a1 += 2;
      if (v19 == v20)
      {
        v3 = 0;
        v4 = 0;
        a1 = v34;
        goto LABEL_14;
      }
    }

    v36 = v18;
    v22 = *(v18 + 2);
    sub_2528BEA50();
    sub_2528BEA50();
    v35 = v22;
    if (!v22)
    {
LABEL_13:

      a1 = v34;
      v18 = v36;
      goto LABEL_14;
    }

    v23 = 0;
    v18 = v36 + 40;
    while (v23 < *(v36 + 2))
    {
      a1 = *v18;
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();
      sub_2528BE6B0();
      v24 = _s14HomeAppIntents12DeviceEntityV2eeoiySbAC_ACtFZ_0(v16, v14);

      sub_25272E840(v14);
      sub_25272E840(v16);
      if (v24)
      {

        v30 = v34;
        sub_25280B4D0(v23, &v39);

        sub_2528BE6B0();
        sub_2528BE6B0();
        sub_2528BE6B0();
        sub_252735DE0(v39);
        v38 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
        sub_2528BEC20();
        sub_25280DE3C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
        v31 = sub_2528BE6F0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD490, &unk_2528C8030);
        sub_2528BEC20();
        sub_25279F27C();
        v32 = sub_2528BE6F0();
        sub_25272E7DC(v16, v14);
        sub_25272E7DC(v14, v33[0]);
        sub_2528BE6C0();
        sub_25272E840(v14);
        *&v39 = v38;
        sub_2528BE6C0();
        result = sub_25272E840(v16);
        if (*(*v30 + 16) < v23)
        {
          __break(1u);
        }

        else
        {
          sub_25280D8E8(v23, v23, v31, v32);
        }

        return result;
      }

      ++v23;
      v18 += 16;
      if (v35 == v23)
      {
        goto LABEL_13;
      }
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v3 = 0;
  v4 = 0;
LABEL_14:
  sub_2528BEA50();
  sub_2528BEA50();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_22:
    v18 = sub_252737BC0(0, *(v18 + 2) + 1, 1, v18);
  }

  v25 = v18;
  v26 = *(v18 + 2);
  v27 = v25;
  v28 = *(v25 + 3);
  if (v26 >= v28 >> 1)
  {
    v27 = sub_252737BC0((v28 > 1), v26 + 1, 1, v27);
  }

  result = sub_25280DE84(v3, v4);
  *(v27 + 2) = v26 + 1;
  *&v27[16 * v26 + 32] = v37;
  *a1 = v27;
  return result;
}

uint64_t sub_25280B4D0@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25280D7E8(v5);
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

uint64_t sub_25280B55C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v43 = a2;
  v41 = a3;
  v42 = a4;
  v5 = sub_2528C0150();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2528BF410();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC220, &qword_2528D1AB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_2528BF0B0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = MEMORY[0x277D15528];
  v49 = v19;
  if (v19 <= 30)
  {
    if (v19 != 3 && v19 != 11)
    {
      goto LABEL_8;
    }

LABEL_10:
    (*(v16 + 104))(v14, *v20, v15);
    (*(v16 + 56))(v14, 0, 1, v15);
    (*(v16 + 32))(v18, v14, v15);
    v26 = sub_2528BFB10();
    if (*(v26 + 16) && (v27 = sub_252786BE8(v18), (v28 & 1) != 0))
    {
      (*(v9 + 16))(v11, *(v26 + 56) + *(v9 + 72) * v27, v8);

      v50 = v19;
      sub_252875590(&v50, &v44);
      (*(v9 + 8))(v11, v8);
      v25 = v47;
      if (v47 <= 0xFDu)
      {
        v22 = *(&v44 + 1);
        v21 = v44;
        v23 = v45;
        v24 = v46;
        (*(v16 + 8))(v18, v15);
        goto LABEL_16;
      }
    }

    else
    {
    }

    sub_2528BFAC0();
    sub_252875B80(&v44);
    (*(v39 + 8))(v7, v40);
    (*(v16 + 8))(v18, v15);
    v22 = *(&v44 + 1);
    v21 = v44;
    v23 = v45;
    v24 = v46;
    v25 = v47;
    goto LABEL_16;
  }

  switch(v19)
  {
    case 31:
      goto LABEL_10;
    case 45:
      v20 = MEMORY[0x277D15540];
      goto LABEL_10;
    case 41:
      v20 = MEMORY[0x277D15548];
      goto LABEL_10;
  }

LABEL_8:
  (*(v16 + 56))(v14, 1, 1, v15);
  sub_2527213D8(v14, &qword_27F4FC220, &qword_2528D1AB0);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 254;
LABEL_16:
  v29 = v42;
  v30 = v41;
  if (v41 && *(v41 + 16) && (v31 = sub_252785BA8(v49), (v32 & 1) != 0))
  {
    v33 = v31;
    sub_2527AAB1C(v21, v22, v23, v24, v25);
    v34 = *(v30 + 56) + 40 * v33;
    v21 = *v34;
    v22 = *(v34 + 8);
    v23 = *(v34 + 16);
    v24 = *(v34 + 24);
    LOBYTE(v25) = *(v34 + 32);
    v35 = *(v34 + 33);
    sub_25277B0C4(*v34, v22, v23, v24, v25, v35);
  }

  else if (v25 <= 0xFD)
  {
    v35 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    LOBYTE(v25) = 0;
    v35 = 1;
  }

  v50 = v49;
  *&v44 = v21;
  *(&v44 + 1) = v22;
  v45 = v23;
  v46 = v24;
  v47 = v25;
  v48 = v35;
  result = sub_25280DA84(&v50, &v44);
  *v29 = result;
  v29[1] = v37;
  return result;
}

unint64_t sub_25280BA3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2528BEC40();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = *v1;
  if (*(v1 + 33) > 1u)
  {
    if (*(v1 + 33) == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF0A0, &unk_2528D1A60);
      sub_2528BEC20();
      sub_2527A28E4();
      v9 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Outcome.DeviceFailureCase;
      result = sub_25280D4F4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
      sub_2528BEC20();
      v9 = sub_2528BE760();
      sub_2528BE6C0();
      a1[3] = &type metadata for Outcome.FailureWithHomeKitErrorCodeCase;
      result = sub_25280D4A0();
    }
  }

  else if (*(v1 + 33))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5C8, &qword_2528C4728);
    sub_2528BEC20();
    sub_252746B7C();
    v9 = sub_2528BE6E0();
    sub_2528BE6C0();
    a1[3] = &type metadata for Outcome.FailureCase;
    result = sub_25280D548();
  }

  else
  {
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    v7 = *(v1 + 8);
    v8 = *(v1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF0B8, &unk_2528D1A70);
    sub_252760C18(v4, v7, v6, v5, v8);
    sub_2528BEC20();
    sub_2527604A4();
    v9 = sub_2528BE700();
    sub_2528BE6C0();
    a1[3] = &type metadata for Outcome.SuccessCase;
    result = sub_25280D59C();
  }

  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_25280BC74@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF0C8, &qword_2528D1A80);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v14 = &v13 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF0D0, &qword_2528D1A88);
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF0D8, &unk_2528D1A90);
  v15 = *(v5 - 8);
  v16 = v5;
  MEMORY[0x28223BE20](v5);
  v13 = &v13 - v6;
  v7 = sub_25280D5F0();
  MEMORY[0x2530A60E0](v7, &type metadata for Outcome, &type metadata for Outcome.SuccessCase.Resolver, v7);
  v8 = sub_25280D644();
  MEMORY[0x2530A60E0](v8, &type metadata for Outcome, &type metadata for Outcome.FailureCase.Resolver, v8);
  v9 = sub_25280D698();
  MEMORY[0x2530A60E0](v9, &type metadata for Outcome, &type metadata for Outcome.DeviceFailureCase.Resolver, v9);
  v10 = sub_25280D6EC();
  MEMORY[0x2530A60E0](v10, &type metadata for Outcome, &type metadata for Outcome.FailureWithHomeKitErrorCodeCase.Resolver, v10);
  sub_25280D44C();
  sub_2528BEAA0();
  v32 = v7;
  v33 = &type metadata for Outcome.SuccessCase.Resolver;
  sub_2528BEA90();
  v30 = &type metadata for Outcome.SuccessCase.Resolver;
  v31 = &type metadata for Outcome.FailureCase.Resolver;
  v28 = v7;
  v29 = v8;
  v11 = v14;
  sub_2528BEA90();
  v25 = &type metadata for Outcome.SuccessCase.Resolver;
  v26 = &type metadata for Outcome.FailureCase.Resolver;
  v27 = &type metadata for Outcome.DeviceFailureCase.Resolver;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  sub_2528BEA90();
  (*(v19 + 8))(v11, v21);
  (*(v17 + 8))(v4, v18);
  return (*(v15 + 8))(v13, v16);
}

uint64_t sub_25280C008(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return MEMORY[0x2822009F8](sub_25280C02C, 0, 0);
}

uint64_t sub_25280C02C()
{
  v1 = *(v0 + 56);
  sub_2528BE6B0();
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25280C0E0(uint64_t a1)
{
  v2 = sub_25280F1AC();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25280C12C(uint64_t a1)
{
  sub_25280F1AC();

  return sub_2528BE550();
}

uint64_t sub_25280C1C0(uint64_t a1)
{
  v2 = sub_25280E3E4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25280C20C(uint64_t a1)
{
  v2 = sub_25280E194();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25280C278(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25280C29C, 0, 0);
}

uint64_t sub_25280C29C()
{
  v1 = *(v0 + 16);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 256;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25280C354(uint64_t a1)
{
  v2 = sub_25280F158();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25280C3A0(uint64_t a1)
{
  sub_25280F158();

  return sub_2528BE550();
}

uint64_t sub_25280C434(uint64_t a1)
{
  v2 = sub_25280E73C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25280C480(uint64_t a1)
{
  v2 = sub_25280E4EC();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25280C4F8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25280C51C, 0, 0);
}

uint64_t sub_25280C51C()
{
  v1 = *(v0 + 16);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 512;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25280C5D4@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t (*a4)(char *, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v10 = sub_2528BEC40();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v13 = sub_2528BEC20();
  v14 = a3(v13);
  result = a4(v12, v14);
  *a5 = result;
  return result;
}

uint64_t sub_25280C69C(uint64_t a1)
{
  v2 = sub_25280F104();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25280C6E8(uint64_t a1)
{
  sub_25280F104();

  return sub_2528BE550();
}

uint64_t sub_25280C774(uint64_t a1)
{
  v2 = sub_25280EA94();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25280C7C0(uint64_t a1)
{
  v2 = sub_25280E844();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25280C80C()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502B00);
  __swift_project_value_buffer(v0, qword_27F502B00);
  return sub_2528BE9D0();
}

uint64_t sub_25280C870(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_25280C894, 0, 0);
}

uint64_t sub_25280C894()
{
  v1 = v0[3];
  sub_2528BE6B0();
  *v1 = v0[2];
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 768;
  v2 = v0[1];

  return v2();
}

uint64_t sub_25280C910@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
  sub_2528BEC20();
  result = sub_2528BE760();
  *a1 = result;
  return result;
}

uint64_t sub_25280C9B8(uint64_t a1)
{
  v2 = sub_25280F0B0();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25280CA04(uint64_t a1)
{
  sub_25280F0B0();

  return sub_2528BE550();
}

uint64_t sub_25280CA90(uint64_t a1)
{
  v2 = sub_25280EDEC();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25280CADC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  sub_2528BEC20();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_2528BE8D0();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_2528BE900();
}

uint64_t sub_25280CCA4(uint64_t a1)
{
  v2 = sub_25280EB9C();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25280CCF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C35E0;
  v1 = sub_25280D59C();
  *(v0 + 32) = &type metadata for Outcome.SuccessCase;
  *(v0 + 40) = v1;
  v2 = sub_25280D548();
  *(v0 + 48) = &type metadata for Outcome.FailureCase;
  *(v0 + 56) = v2;
  v3 = sub_25280D4F4();
  *(v0 + 64) = &type metadata for Outcome.DeviceFailureCase;
  *(v0 + 72) = v3;
  v4 = sub_25280D4A0();
  *(v0 + 80) = &type metadata for Outcome.FailureWithHomeKitErrorCodeCase;
  *(v0 + 88) = v4;
  return v0;
}

unint64_t sub_25280CD90()
{
  result = qword_27F4FEFD0;
  if (!qword_27F4FEFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFD0);
  }

  return result;
}

unint64_t sub_25280CDE8()
{
  result = qword_27F4FEFD8;
  if (!qword_27F4FEFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFD8);
  }

  return result;
}

unint64_t sub_25280CE40()
{
  result = qword_27F4FEFE0;
  if (!qword_27F4FEFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFE0);
  }

  return result;
}

unint64_t sub_25280CEDC()
{
  result = qword_27F4FEFF8;
  if (!qword_27F4FEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEFF8);
  }

  return result;
}

unint64_t sub_25280CF30()
{
  result = qword_27F4FF000;
  if (!qword_27F4FF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF000);
  }

  return result;
}

unint64_t sub_25280CF84()
{
  result = qword_27F4FF008;
  if (!qword_27F4FF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF008);
  }

  return result;
}

unint64_t sub_25280CFDC()
{
  result = qword_27F4FF010;
  if (!qword_27F4FF010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF010);
  }

  return result;
}

unint64_t sub_25280D078()
{
  result = qword_27F4FF028;
  if (!qword_27F4FF028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF028);
  }

  return result;
}

unint64_t sub_25280D0D0()
{
  result = qword_27F4FF030;
  if (!qword_27F4FF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF030);
  }

  return result;
}

unint64_t sub_25280D128()
{
  result = qword_27F4FF038;
  if (!qword_27F4FF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF038);
  }

  return result;
}

unint64_t sub_25280D180()
{
  result = qword_27F4FF040;
  if (!qword_27F4FF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF040);
  }

  return result;
}

unint64_t sub_25280D1D8()
{
  result = qword_27F4FF048;
  if (!qword_27F4FF048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF048);
  }

  return result;
}

unint64_t sub_25280D274()
{
  result = qword_27F4FF060;
  if (!qword_27F4FF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF060);
  }

  return result;
}

unint64_t sub_25280D2C8()
{
  result = qword_27F4FF068;
  if (!qword_27F4FF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF068);
  }

  return result;
}

unint64_t sub_25280D320()
{
  result = qword_27F4FF070;
  if (!qword_27F4FF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF070);
  }

  return result;
}

unint64_t sub_25280D3BC()
{
  result = qword_27F4FF088;
  if (!qword_27F4FF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF088);
  }

  return result;
}

unint64_t sub_25280D44C()
{
  result = qword_27F4FF090;
  if (!qword_27F4FF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF090);
  }

  return result;
}

unint64_t sub_25280D4A0()
{
  result = qword_27F4FF098;
  if (!qword_27F4FF098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF098);
  }

  return result;
}

unint64_t sub_25280D4F4()
{
  result = qword_27F4FF0A8;
  if (!qword_27F4FF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0A8);
  }

  return result;
}

unint64_t sub_25280D548()
{
  result = qword_27F4FF0B0;
  if (!qword_27F4FF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0B0);
  }

  return result;
}

unint64_t sub_25280D59C()
{
  result = qword_27F4FF0C0;
  if (!qword_27F4FF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0C0);
  }

  return result;
}

unint64_t sub_25280D5F0()
{
  result = qword_27F4FF0E0;
  if (!qword_27F4FF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0E0);
  }

  return result;
}

unint64_t sub_25280D644()
{
  result = qword_27F4FF0E8;
  if (!qword_27F4FF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0E8);
  }

  return result;
}

unint64_t sub_25280D698()
{
  result = qword_27F4FF0F0;
  if (!qword_27F4FF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0F0);
  }

  return result;
}

unint64_t sub_25280D6EC()
{
  result = qword_27F4FF0F8;
  if (!qword_27F4FF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF0F8);
  }

  return result;
}

unint64_t sub_25280D740()
{
  result = qword_27F4FF100;
  if (!qword_27F4FF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF100);
  }

  return result;
}

unint64_t sub_25280D794()
{
  result = qword_27F4FF108;
  if (!qword_27F4FF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF108);
  }

  return result;
}

unint64_t sub_25280D7FC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    sub_2528BEA50();
    result = sub_2528BEA50();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_25280D8E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_252737BC0(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_25280D7FC(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

char *sub_25280D9C4(uint64_t a1)
{
  result = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      sub_2528BEA50();
      sub_2528BEA50();
      sub_25280AFA4(&v6, &v5);

      ++v4;
      --v3;
    }

    while (v3);
    return v6;
  }

  return result;
}

uint64_t sub_25280DA84(char *a1, __int128 *a2)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3C8, &qword_2528C3EE0);
  sub_2528BEC20();
  sub_25272E944();
  v3 = sub_2528BE6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF110, &unk_2528D1AA0);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25280DD58();
  sub_2528BE700();
  sub_2528BEA50();
  sub_2528BE6C0();
  sub_2528BE6C0();

  return v3;
}

uint64_t sub_25280DBF8()
{
  v0 = sub_2528BEC40();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3C8, &qword_2528C3EE0);
  sub_2528BEC20();
  sub_25272E944();
  v1 = sub_2528BE6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF110, &unk_2528D1AA0);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25280DD58();
  sub_2528BE700();
  sub_2528BEA50();
  sub_2528BE6C0();
  sub_2528BE6C0();

  return v1;
}

unint64_t sub_25280DD58()
{
  result = qword_27F4FF118;
  if (!qword_27F4FF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF118);
  }

  return result;
}

uint64_t sub_25280DDCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6B8, &unk_2528D1AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25280DE3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25280DE84(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_25280DEFC@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + 16);
  sub_2528BE6B0();
  v4[0] = v4[1];
  return sub_252874784(&v5, v4, a1);
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25280E038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 34))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 33);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25280E080(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

unint64_t sub_25280E0E4()
{
  result = qword_27F4FF138;
  if (!qword_27F4FF138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF138);
  }

  return result;
}

unint64_t sub_25280E13C()
{
  result = qword_27F4FF140;
  if (!qword_27F4FF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF140);
  }

  return result;
}

unint64_t sub_25280E194()
{
  result = qword_27F4FF148;
  if (!qword_27F4FF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF148);
  }

  return result;
}

unint64_t sub_25280E1E8()
{
  result = qword_27F4FF150;
  if (!qword_27F4FF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF150);
  }

  return result;
}

unint64_t sub_25280E240()
{
  result = qword_27F4FF158;
  if (!qword_27F4FF158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF158);
  }

  return result;
}

unint64_t sub_25280E298()
{
  result = qword_27F4FF160;
  if (!qword_27F4FF160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF160);
  }

  return result;
}

unint64_t sub_25280E2F0()
{
  result = qword_27F4FF168;
  if (!qword_27F4FF168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF168);
  }

  return result;
}

unint64_t sub_25280E348()
{
  result = qword_27F4FF170;
  if (!qword_27F4FF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF170);
  }

  return result;
}

unint64_t sub_25280E3E4()
{
  result = qword_27F4FF188;
  if (!qword_27F4FF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF188);
  }

  return result;
}

unint64_t sub_25280E43C()
{
  result = qword_27F4FF190;
  if (!qword_27F4FF190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF190);
  }

  return result;
}

unint64_t sub_25280E494()
{
  result = qword_27F4FF198;
  if (!qword_27F4FF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF198);
  }

  return result;
}

unint64_t sub_25280E4EC()
{
  result = qword_27F4FF1A0;
  if (!qword_27F4FF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1A0);
  }

  return result;
}

unint64_t sub_25280E540()
{
  result = qword_27F4FF1A8;
  if (!qword_27F4FF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1A8);
  }

  return result;
}

unint64_t sub_25280E598()
{
  result = qword_27F4FF1B0;
  if (!qword_27F4FF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1B0);
  }

  return result;
}

unint64_t sub_25280E5F0()
{
  result = qword_27F4FF1B8;
  if (!qword_27F4FF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1B8);
  }

  return result;
}

unint64_t sub_25280E648()
{
  result = qword_27F4FF1C0;
  if (!qword_27F4FF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1C0);
  }

  return result;
}

unint64_t sub_25280E6A0()
{
  result = qword_27F4FF1C8;
  if (!qword_27F4FF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1C8);
  }

  return result;
}

unint64_t sub_25280E73C()
{
  result = qword_27F4FF1E0;
  if (!qword_27F4FF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1E0);
  }

  return result;
}

unint64_t sub_25280E794()
{
  result = qword_27F4FF1E8;
  if (!qword_27F4FF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1E8);
  }

  return result;
}

unint64_t sub_25280E7EC()
{
  result = qword_27F4FF1F0;
  if (!qword_27F4FF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1F0);
  }

  return result;
}

unint64_t sub_25280E844()
{
  result = qword_27F4FF1F8;
  if (!qword_27F4FF1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF1F8);
  }

  return result;
}

unint64_t sub_25280E898()
{
  result = qword_27F4FF200;
  if (!qword_27F4FF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF200);
  }

  return result;
}

unint64_t sub_25280E8F0()
{
  result = qword_27F4FF208;
  if (!qword_27F4FF208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF208);
  }

  return result;
}

unint64_t sub_25280E948()
{
  result = qword_27F4FF210;
  if (!qword_27F4FF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF210);
  }

  return result;
}

unint64_t sub_25280E9A0()
{
  result = qword_27F4FF218;
  if (!qword_27F4FF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF218);
  }

  return result;
}

unint64_t sub_25280E9F8()
{
  result = qword_27F4FF220;
  if (!qword_27F4FF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF220);
  }

  return result;
}

unint64_t sub_25280EA94()
{
  result = qword_27F4FF238;
  if (!qword_27F4FF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF238);
  }

  return result;
}

unint64_t sub_25280EAEC()
{
  result = qword_27F4FF240;
  if (!qword_27F4FF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF240);
  }

  return result;
}

unint64_t sub_25280EB44()
{
  result = qword_27F4FF248;
  if (!qword_27F4FF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF248);
  }

  return result;
}

unint64_t sub_25280EB9C()
{
  result = qword_27F4FF250;
  if (!qword_27F4FF250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF250);
  }

  return result;
}

unint64_t sub_25280EBF0()
{
  result = qword_27F4FF258;
  if (!qword_27F4FF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF258);
  }

  return result;
}

unint64_t sub_25280EC48()
{
  result = qword_27F4FF260;
  if (!qword_27F4FF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF260);
  }

  return result;
}

unint64_t sub_25280ECA0()
{
  result = qword_27F4FF268;
  if (!qword_27F4FF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF268);
  }

  return result;
}

unint64_t sub_25280ECF8()
{
  result = qword_27F4FF270;
  if (!qword_27F4FF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF270);
  }

  return result;
}

unint64_t sub_25280ED50()
{
  result = qword_27F4FF278;
  if (!qword_27F4FF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF278);
  }

  return result;
}

unint64_t sub_25280EDEC()
{
  result = qword_27F4FF290;
  if (!qword_27F4FF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF290);
  }

  return result;
}

unint64_t sub_25280EE44()
{
  result = qword_27F4FF298;
  if (!qword_27F4FF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF298);
  }

  return result;
}

unint64_t sub_25280EE9C()
{
  result = qword_27F4FF2A0;
  if (!qword_27F4FF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF2A0);
  }

  return result;
}

unint64_t sub_25280EEF4()
{
  result = qword_27F4FF2A8;
  if (!qword_27F4FF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF2A8);
  }

  return result;
}

unint64_t sub_25280EF4C()
{
  result = qword_27F4FF2B0;
  if (!qword_27F4FF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF2B0);
  }

  return result;
}

unint64_t sub_25280F0B0()
{
  result = qword_27F4FF2F8;
  if (!qword_27F4FF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF2F8);
  }

  return result;
}

unint64_t sub_25280F104()
{
  result = qword_27F4FF300;
  if (!qword_27F4FF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF300);
  }

  return result;
}

unint64_t sub_25280F158()
{
  result = qword_27F4FF308;
  if (!qword_27F4FF308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF308);
  }

  return result;
}

unint64_t sub_25280F1AC()
{
  result = qword_27F4FF310;
  if (!qword_27F4FF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF310);
  }

  return result;
}

uint64_t sub_25280F23C()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F4FF318);
  __swift_project_value_buffer(v0, qword_27F4FF318);
  return sub_2528BEC20();
}

uint64_t static ShowNavigationIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8A8 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FF318);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25280F388(char *a1, uint64_t *a2)
{
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

void (*ShowNavigationIntent.categoryType.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t sub_25280F52C(char *a1, uint64_t *a2)
{
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

void (*ShowNavigationIntent.dashboardViewType.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t sub_25280F6E0(uint64_t *a1, uint64_t *a2)
{

  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

void (*ShowNavigationIntent.deviceEntities.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t sub_25280F884(char *a1, uint64_t *a2)
{
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

void (*ShowNavigationIntent.secondaryAccessoryControlDestination.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t sub_25280FA70(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_25272006C(a1, &v10 - v7, &qword_27F4FD690, &unk_2528D2D30);
  sub_25272006C(v8, v6, &qword_27F4FD690, &unk_2528D2D30);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
  sub_2527213D8(v8, &qword_27F4FD690, &unk_2528D2D30);
}

uint64_t ShowNavigationIntent.roomEntity.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25272006C(a1, &v5 - v3, &qword_27F4FD690, &unk_2528D2D30);
  sub_2528BE7A0();
  return sub_2527213D8(a1, &qword_27F4FD690, &unk_2528D2D30);
}

void (*ShowNavigationIntent.roomEntity.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_25272EE48;
}

uint64_t ShowNavigationIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v77 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = &v58 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v58 - v4;
  v76 = sub_2528BE950();
  v73 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_2528BEC40();
  v72 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF330, &qword_2528D2D40);
  sub_2528BEC20();
  v20 = *(v17 + 56);
  v74 = v17 + 56;
  v75 = v20;
  v20(v15, 1, 1, v16);
  v81[0] = 8;
  v21 = sub_2528BE630();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v23(v12, 1, 1, v21);
  v23(v10, 1, 1, v21);
  v71 = *MEMORY[0x277CBA308];
  v25 = *(v73 + 104);
  v73 += 104;
  v70 = v25;
  v64 = v6;
  (v25)(v6);
  sub_2528167D8();
  v26 = v15;
  *v77 = sub_2528BE7D0();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF340, &qword_2528D2D48);
  v27 = v19;
  sub_2528BEC20();
  v75(v15, 1, 1, v72);
  v80 = 3;
  v28 = v12;
  v67 = v21;
  v68 = v23;
  v69 = v24;
  v23(v12, 1, 1, v21);
  v58 = v10;
  v23(v10, 1, 1, v21);
  v29 = v64;
  v30 = v71;
  v31 = v76;
  v32 = v70;
  v70(v64, v71, v76);
  sub_2527C56B8();
  v33 = v27;
  v65 = v26;
  v59 = v28;
  v77[1] = sub_2528BE7D0();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE8, &qword_2528D2D50);
  sub_2528BEC20();
  v75(v26, 1, 1, v72);
  v79 = 0;
  v35 = v67;
  v34 = v68;
  v68(v28, 1, 1, v67);
  v36 = v58;
  v34(v58, 1, 1, v35);
  v32(v29, v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF348, &qword_2528D2D58);
  v61 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FF350, &qword_27F4FF348, &qword_2528D2D58, MEMORY[0x277CBA480]);
  sub_2528170C4(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  v66 = v33;
  v37 = v65;
  v38 = v59;
  v39 = sub_2528BE7E0();
  v40 = v77;
  v77[2] = v39;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF358, &unk_2528D2D60);
  sub_2528BEC20();
  v41 = v37;
  v42 = v72;
  v75(v41, 1, 1, v72);
  v78 = 2;
  v44 = v67;
  v43 = v68;
  v68(v38, 1, 1, v67);
  v45 = v36;
  v43(v36, 1, 1, v44);
  v46 = v71;
  v70(v29, v71, v76);
  sub_252816A44();
  v47 = v65;
  v48 = v45;
  v40[3] = sub_2528BE7D0();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v75(v47, 1, 1, v42);
  v49 = type metadata accessor for HomeEntity(0);
  (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
  v50 = v38;
  v51 = v67;
  v52 = v68;
  v68(v38, 1, 1, v67);
  v52(v45, 1, 1, v51);
  v53 = v64;
  v54 = v70;
  v70(v64, v46, v76);
  sub_2528170C4(&qword_27F4FCC90, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);
  v55 = v65;
  v77[4] = sub_2528BE7F0();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF368, &qword_2528D2D70);
  sub_2528BEC20();
  v75(v55, 1, 1, v72);
  v56 = type metadata accessor for RoomEntity(0);
  (*(*(v56 - 8) + 56))(v63, 1, 1, v56);
  v52(v50, 1, 1, v51);
  v52(v48, 1, 1, v51);
  v54(v53, v71, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF370, &qword_2528D2D78);
  sub_25272275C(&qword_27F4FF378, &qword_27F4FF370, &qword_2528D2D78, v61);
  sub_2528170C4(&qword_27F4FCCD0, type metadata accessor for RoomEntity, &protocol conformance descriptor for RoomEntity);
  result = sub_2528BE7E0();
  v77[5] = result;
  return result;
}

uint64_t ShowNavigationIntent.init(categoryType:dashboardViewType:deviceEntities:secondaryAccessoryControlDestination:roomEntity:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v85 = a3;
  v86 = a5;
  v99 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v84 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v83 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v13 - 8);
  v79 = &v70 - v14;
  v98 = sub_2528BE950();
  v15 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v88 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v70 - v24;
  v26 = sub_2528BEC40();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v28) = *a2;
  v80 = *a1;
  v81 = v28;
  v82 = *a4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF330, &qword_2528D2D40);
  sub_2528BEC20();
  v30 = *(v27 + 56);
  v94 = v27 + 56;
  v95 = v26;
  v90 = v30;
  v31 = v26;
  v30(v25, 1, 1, v26);
  LOBYTE(v101) = 8;
  v32 = sub_2528BE630();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v91 = v34;
  v35 = v33 + 56;
  v34(v22, 1, 1, v32);
  v93 = v35;
  v36 = v20;
  v34(v20, 1, 1, v32);
  v96 = *MEMORY[0x277CBA308];
  v87 = *(v15 + 104);
  v97 = v15 + 104;
  v37 = v88;
  v87(v88);
  sub_2528167D8();
  v92 = v29;
  v78 = sub_2528BE7D0();
  *v99 = v78;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF340, &qword_2528D2D48);
  sub_2528BEC20();
  v38 = v31;
  v39 = v90;
  v90(v25, 1, 1, v38);
  LOBYTE(v101) = 3;
  v70 = v22;
  v89 = v32;
  v40 = v91;
  v91(v22, 1, 1, v32);
  v41 = v36;
  v40(v36, 1, 1, v32);
  v42 = v96;
  v43 = v98;
  v44 = v87;
  (v87)(v37, v96, v98);
  sub_2527C56B8();
  v72 = v25;
  v77 = sub_2528BE7D0();
  v99[1] = v77;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE8, &qword_2528D2D50);
  sub_2528BEC20();
  v39(v25, 1, 1, v95);
  v101 = 0;
  v45 = v70;
  v46 = v89;
  v47 = v91;
  v91(v70, 1, 1, v89);
  v47(v41, 1, 1, v46);
  v48 = v47;
  v44(v37, v42, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF348, &qword_2528D2D58);
  v75 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FF350, &qword_27F4FF348, &qword_2528D2D58, MEMORY[0x277CBA480]);
  sub_2528170C4(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  v49 = v72;
  v76 = sub_2528BE7E0();
  v50 = v99;
  v99[2] = v76;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF358, &unk_2528D2D60);
  sub_2528BEC20();
  v51 = v49;
  v52 = v49;
  v53 = v90;
  v90(v51, 1, 1, v95);
  LOBYTE(v100) = 2;
  v54 = v89;
  v48(v45, 1, 1, v89);
  v71 = v41;
  v48(v41, 1, 1, v54);
  v55 = v37;
  v56 = v87;
  (v87)(v55, v96, v98);
  sub_252816A44();
  v74 = sub_2528BE7D0();
  v50[3] = v74;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v57 = v52;
  v53(v52, 1, 1, v95);
  v58 = type metadata accessor for HomeEntity(0);
  (*(*(v58 - 8) + 56))(v79, 1, 1, v58);
  v59 = v45;
  v60 = v89;
  v61 = v91;
  v91(v45, 1, 1, v89);
  v62 = v71;
  v61(v71, 1, 1, v60);
  v63 = v88;
  (v56)(v88, v96, v98);
  sub_2528170C4(&qword_27F4FCC90, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);
  v64 = v62;
  v99[4] = sub_2528BE7F0();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF368, &qword_2528D2D70);
  sub_2528BEC20();
  v90(v57, 1, 1, v95);
  v65 = type metadata accessor for RoomEntity(0);
  v66 = v83;
  (*(*(v65 - 8) + 56))(v83, 1, 1, v65);
  v67 = v91;
  v91(v59, 1, 1, v60);
  v67(v64, 1, 1, v60);
  (v56)(v63, v96, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF370, &qword_2528D2D78);
  sub_25272275C(&qword_27F4FF378, &qword_27F4FF370, &qword_2528D2D78, v75);
  sub_2528170C4(&qword_27F4FCCD0, type metadata accessor for RoomEntity, &protocol conformance descriptor for RoomEntity);
  v99[5] = sub_2528BE7E0();
  LOBYTE(v100) = v80;
  sub_2528BE7A0();
  LOBYTE(v100) = v81;
  sub_2528BE7A0();
  v100 = v85;
  sub_2528BE7A0();
  LOBYTE(v100) = v82;
  sub_2528BE7A0();
  v68 = v86;
  sub_25272006C(v86, v66, &qword_27F4FD690, &unk_2528D2D30);
  sub_25272006C(v66, v84, &qword_27F4FD690, &unk_2528D2D30);
  sub_2528BE7A0();
  sub_2527213D8(v68, &qword_27F4FD690, &unk_2528D2D30);
  return sub_2527213D8(v66, &qword_27F4FD690, &unk_2528D2D30);
}

uint64_t ShowNavigationIntent.perform()(uint64_t a1)
{
  *(v2 + 128) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  *(v2 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0);
  *(v2 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  *(v2 + 152) = swift_task_alloc();
  v3 = sub_2528BF400();
  *(v2 + 160) = v3;
  v4 = *(v3 - 8);
  *(v2 + 168) = v4;
  *(v2 + 176) = *(v4 + 64);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  *(v2 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v2 + 208) = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  *(v2 + 216) = v5;
  *(v2 + 224) = *(v5 + 64);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  v6 = sub_2528BE8B0();
  *(v2 + 248) = v6;
  *(v2 + 256) = *(v6 - 8);
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30);
  *(v2 + 280) = swift_task_alloc();
  v7 = v1[1];
  *(v2 + 288) = *v1;
  *(v2 + 304) = v7;
  *(v2 + 320) = v1[2];

  return MEMORY[0x2822009F8](sub_252811748, 0, 0);
}

uint64_t sub_252811748()
{
  v50 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  *(v0 + 336) = __swift_project_value_buffer(v1, qword_27F5025C8);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();

  if (os_log_type_enabled(v2, v3))
  {
    v47 = v3;
    v4 = *(v0 + 280);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v49 = v6;
    *v5 = 136315906;
    sub_2528BE790();
    *(v0 + 361) = *(v0 + 360);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF388, &qword_2528D2D90);
    v7 = sub_2528C0DB0();
    v9 = sub_2527389AC(v7, v8, &v49);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    sub_2528BE790();
    *(v0 + 363) = *(v0 + 362);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF390, &qword_2528D2D98);
    v10 = sub_2528C0DB0();
    v12 = sub_2527389AC(v10, v11, &v49);

    *(v5 + 14) = v12;
    *(v5 + 22) = 2080;
    sub_2528BE790();
    *(v0 + 120) = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF28, &qword_2528D2DA0);
    v13 = sub_2528C0DB0();
    v15 = v14;

    v16 = sub_2527389AC(v13, v15, &v49);

    *(v5 + 24) = v16;
    *(v5 + 32) = 2080;
    sub_2528BE790();
    v17 = sub_2528C0DB0();
    v19 = v18;
    sub_2527213D8(v4, &qword_27F4FD690, &unk_2528D2D30);
    v20 = sub_2527389AC(v17, v19, &v49);

    *(v5 + 34) = v20;
    _os_log_impl(&dword_252711000, v2, v47, "Show Navigation Intent perform() called - category: %s dashboardViewType: %s devicesEntities: %s roomEntity: %s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v6, -1, -1);
    MEMORY[0x2530A8D80](v5, -1, -1);
  }

  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v21 = sub_2528C0890();
  v22 = sub_2528C0D10();

  if (os_log_type_enabled(v21, v22))
  {
    v24 = *(v0 + 320);
    v23 = *(v0 + 328);
    v26 = *(v0 + 304);
    v25 = *(v0 + 312);
    v48 = v22;
    v27 = *(v0 + 288);
    v28 = *(v0 + 296);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v49 = v30;
    *v29 = 136315138;
    *(v0 + 64) = v27;
    *(v0 + 72) = v28;
    *(v0 + 80) = v26;
    *(v0 + 88) = v25;
    *(v0 + 96) = v24;
    *(v0 + 104) = v23;
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BEA50();
    v31 = sub_2528C0A20();
    v33 = sub_2527389AC(v31, v32, &v49);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_252711000, v21, v48, "ShowNavigationIntent = %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x2530A8D80](v30, -1, -1);
    MEMORY[0x2530A8D80](v29, -1, -1);
  }

  v35 = *(v0 + 256);
  v34 = *(v0 + 264);
  v36 = *(v0 + 248);
  v37 = *(v0 + 200);
  v38 = *(v0 + 208);
  v39 = *(v0 + 304);
  *(v0 + 16) = *(v0 + 288);
  v40 = *(v0 + 320);
  *(v0 + 32) = v39;
  *(v0 + 48) = v40;
  sub_252816B9C();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v35 + 8))(v34, v36);
  v41 = type metadata accessor for HomeEntity(0);
  (*(*(v41 - 8) + 56))(v38, 1, 1, v41);
  v42 = sub_2528C05D0();
  (*(*(v42 - 8) + 56))(v37, 1, 1, v42);
  v43 = swift_task_alloc();
  *(v0 + 344) = v43;
  *v43 = v0;
  v43[1] = sub_252811D70;
  v44 = *(v0 + 200);
  v45 = *(v0 + 208);

  return sub_25277ECE4(v45, 0, 0, v44);
}

uint64_t sub_252811D70(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  *(*v1 + 352) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_252811ECC, 0, 0);
}

uint64_t sub_252811ECC()
{
  v1 = v0[18];
  sub_2527D38F8(v0[44], v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  if (v3 == 1)
  {
    sub_2527213D8(v6, &qword_27F4FCDA8, &unk_2528C5CB0);
    (*(v5 + 56))(v7, 1, 1, v4);
  }

  else
  {
    v8 = *(v2 + 48);
    v9 = *(v5 + 16);
    v10 = v0[18];
    v9(v0[19], v6 + v8, v0[20]);
    sub_2527D6704(v10 + v8);
    (*(v5 + 56))(v7, 0, 1, v4);
    v11 = sub_2528BECF0();
    (*(*(v11 - 8) + 8))(v10, v11);
    if ((*(v5 + 48))(v7, 1, v4) != 1)
    {
      v17 = v0[30];
      v30 = v0[29];
      v18 = v0[27];
      v19 = v0[24];
      v29 = v0[23];
      v20 = v0[21];
      v31 = v0[22];
      v21 = v0[20];
      v22 = v0[17];
      v32 = *(v20 + 32);
      v32(v19);
      v23 = sub_2528C0C40();
      (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
      v9(v29, v19, v21);
      sub_25272006C(v17, v30, &qword_27F4FCE00, &qword_2528C5D20);
      v24 = (*(v20 + 80) + 65) & ~*(v20 + 80);
      v25 = (v31 + *(v18 + 80) + v24) & ~*(v18 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      v27 = MEMORY[0x277D84F90];
      *(v26 + 32) = MEMORY[0x277D84F90];
      *(v26 + 40) = 2;
      *(v26 + 48) = v27;
      *(v26 + 56) = v27;
      *(v26 + 64) = 1;
      (v32)(v26 + v24, v29, v21);
      sub_25274AA0C(v30, v26 + v25, &qword_27F4FCE00, &qword_2528C5D20);
      sub_2527D3E74(0, 0, v22, &unk_2528CD990, v26);

      (*(v20 + 8))(v19, v21);
      sub_2527213D8(v17, &qword_27F4FCE00, &qword_2528C5D20);
      sub_2528BE670();

      v16 = v0[1];
      goto LABEL_8;
    }
  }

  sub_2527213D8(v0[19], &qword_27F4FCD98, &qword_2528C6200);
  v12 = sub_2528C0890();
  v13 = sub_2528C0CF0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_252711000, v12, v13, "No snapshot found for current home", v14, 2u);
    MEMORY[0x2530A8D80](v14, -1, -1);
  }

  v15 = v0[30];

  sub_2527D66B0();
  swift_allocError();
  swift_willThrow();
  sub_2527213D8(v15, &qword_27F4FCE00, &qword_2528C5D20);

  v16 = v0[1];
LABEL_8:

  return v16();
}

uint64_t sub_25281244C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8A8 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FF318);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2528124F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25271F3AC;

  return ShowNavigationIntent.perform()(a1);
}

uint64_t sub_252812590(uint64_t a1)
{
  v2 = sub_252816B9C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_2528125CC(_WORD *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v3 + 24) = swift_task_alloc();
  *(v3 + 64) = *a1;

  return MEMORY[0x2822009F8](sub_252812674, 0, 0);
}

uint64_t sub_252812674()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEB60, &qword_2528D3390);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_2528C3910;
  *(v3 + 32) = v1;
  v4 = type metadata accessor for HomeEntity(0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  if (sub_2528BE9A0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7F8, &qword_2528C48B0);
    type metadata accessor for RoomEntity(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2528C3910;
    swift_getKeyPath();
    sub_25281710C();
    sub_2528BE840();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_25281288C;
  v7 = *(v0 + 24);

  return sub_252836FA8(v3, v7, 0, v5);
}

uint64_t sub_25281288C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  sub_2527213D8(*(v4 + 24), &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2527FD0F8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_252812A50(uint64_t a1, _WORD *a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25274BC30;

  return sub_2528125CC(a2, v7, v5);
}

uint64_t sub_252812AF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v4 + 32) = swift_task_alloc();
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252812B9C, 0, 0);
}

uint64_t sub_252812B9C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for HomeEntity(0);
  v4 = *(*(v3 - 8) + 56);
  if (v1)
  {
    v4(*(v0 + 32), 1, 1, v3);
    if (sub_2528BE9A0())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7F8, &qword_2528C48B0);
      type metadata accessor for RoomEntity(0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_2528C3910;
      swift_getKeyPath();
      sub_25281710C();
      sub_2528BE840();
    }

    else
    {
      v5 = 0;
    }

    *(v0 + 72) = v5;
    v10 = sub_252838B2C;
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_2528130F0;
    v7 = *(v0 + 32);
  }

  else
  {
    v4(*(v0 + 40), 1, 1, v3);
    if (sub_2528BE9A0())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7F8, &qword_2528C48B0);
      type metadata accessor for RoomEntity(0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_2528C3910;
      swift_getKeyPath();
      sub_25281710C();
      sub_2528BE840();
    }

    else
    {
      v5 = 0;
    }

    *(v0 + 48) = v5;
    v10 = sub_252837E58;
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    *v8 = v0;
    v8[1] = sub_252812ECC;
    v7 = *(v0 + 40);
  }

  return v10(v2, v7, 0, v5);
}

uint64_t sub_252812ECC(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(*v2 + 64) = v1;

  sub_2527213D8(v4, &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252813084, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_252813084()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2528130F0(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(*v2 + 88) = v1;

  sub_2527213D8(v4, &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2528132A8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_2528132A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252813314(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_25273430C;

  return sub_252812AF0(v4, v5, v8, v6);
}

uint64_t sub_2528133C4()
{
  sub_2528C1130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3F8, &qword_2528D3310);
  sub_25272275C(&qword_27F4FF400, &qword_27F4FF3F8, &qword_2528D3310, MEMORY[0x277CBA398]);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_252813468(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3F8, &qword_2528D3310);
  sub_25272275C(&qword_27F4FF400, &qword_27F4FF3F8, &qword_2528D3310, MEMORY[0x277CBA398]);
  return sub_2528C0910();
}

uint64_t sub_2528134FC(uint64_t a1)
{
  sub_2528C1130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3F8, &qword_2528D3310);
  sub_25272275C(&qword_27F4FF400, &qword_27F4FF3F8, &qword_2528D3310, MEMORY[0x277CBA398]);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t ShowNavigationIntent.stateSnapshot.getter(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB0, &qword_2528D2DB0);
  v1[4] = swift_task_alloc();
  v2 = sub_2528BF400();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25281373C, 0, 0);
}

uint64_t sub_25281373C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = type metadata accessor for HomeEntity(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_2528C05D0();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_252813874;
  v6 = v0[8];
  v7 = v0[9];

  return sub_25277ECE4(v7, 0, 0, v6);
}

uint64_t sub_252813874(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  *(*v1 + 88) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2528139D0, 0, 0);
}

uint64_t sub_2528139D0()
{
  v36 = v0;
  v1 = v0[3];
  sub_2527D38F8(v0[11], v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[4];
    sub_2527213D8(v0[3], &qword_27F4FCDA8, &unk_2528C5CB0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
LABEL_4:
    sub_2527213D8(v0[4], &qword_27F4FCDB0, &qword_2528D2DB0);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v15 = sub_2528C08B0();
    __swift_project_value_buffer(v15, qword_27F5025C8);
    v16 = sub_2528C0890();
    v17 = sub_2528C0D10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2527389AC(0xD000000000000029, 0x80000002528E6460, &v35);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2527389AC(0x616E536574617473, 0xED0000746F687370, &v35);
      _os_log_impl(&dword_252711000, v16, v17, "%s-%s Using currentStateSnapshot", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v19, -1, -1);
      MEMORY[0x2530A8D80](v18, -1, -1);
    }

    sub_2528BEEB0();
    v0[12] = MEMORY[0x2530A6500]();
    v0[13] = sub_2528BEEE0();
    v0[14] = sub_2528BEED0();
    v0[15] = sub_2528170C4(&qword_27F4FF398, MEMORY[0x277D153D0], MEMORY[0x277D153D8]);
    v21 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_25281405C, v21, v20);
  }

  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v8 + *(v2 + 48);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
  v11 = *(v10 + 48);
  (*(v6 + 16))(v7, v9, v5);
  v12 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v9 + *(v12 + 20), v7 + v11, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2527D6704(v9);
  v13 = *(v10 - 8);
  (*(v13 + 56))(v7, 0, 1, v10);
  v14 = sub_2528BECF0();
  (*(*(v14 - 8) + 8))(v8, v14);
  if ((*(v13 + 48))(v7, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  v22 = v0[4];
  v23 = *(v10 + 48);
  v24 = *(v0[6] + 32);
  v24(v0[7], v22, v0[5]);
  sub_2527213D8(v22 + v23, &qword_27F4FCDB8, &unk_2528C5CC0);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v25 = sub_2528C08B0();
  __swift_project_value_buffer(v25, qword_27F5025C8);
  v26 = sub_2528C0890();
  v27 = sub_2528C0D10();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_2527389AC(0xD000000000000029, 0x80000002528E6460, &v35);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_2527389AC(0x616E536574617473, 0xED0000746F687370, &v35);
    _os_log_impl(&dword_252711000, v26, v27, "%s-%s Using gathered snapshot", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v29, -1, -1);
    MEMORY[0x2530A8D80](v28, -1, -1);
  }

  v30 = v0[6];
  v31 = v0[5];
  v32 = v0[2];
  v24(v32, v0[7], v31);
  (*(v30 + 56))(v32, 0, 1, v31);

  v33 = v0[1];

  return v33();
}

uint64_t sub_25281405C()
{

  *(v0 + 128) = sub_2528BEE90();

  return MEMORY[0x2822009F8](sub_2528140D8, 0, 0);
}

uint64_t sub_2528140D8()
{
  *(v0 + 136) = sub_2528BEED0();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25281416C, v2, v1);
}

uint64_t sub_25281416C()
{

  sub_2528BEE40();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ShowNavigationIntent.deepLinkURL.getter(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = sub_2528BFD70();
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  v4 = sub_2528BECF0();
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 - 8);
  *(v2 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30);
  *(v2 + 136) = swift_task_alloc();
  v5 = sub_2528C0050();
  *(v2 + 144) = v5;
  *(v2 + 152) = *(v5 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v6 = sub_2528C0180();
  *(v2 + 176) = v6;
  *(v2 + 184) = *(v6 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  *(v2 + 224) = swift_task_alloc();
  v7 = sub_2528BF400();
  *(v2 + 232) = v7;
  *(v2 + 240) = *(v7 - 8);
  *(v2 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3A0, &unk_2528D2DC0);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  v8 = v1[1];
  *(v2 + 304) = *v1;
  *(v2 + 320) = v8;
  *(v2 + 336) = v1[2];

  return MEMORY[0x2822009F8](sub_252814578, 0, 0);
}

uint64_t sub_252814578()
{
  v60 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  *(v0 + 352) = __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v59[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2527389AC(0xD000000000000029, 0x80000002528E6460, v59);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_2527389AC(0x6B6E694C70656564, 0xEB000000004C5255, v59);
    _os_log_impl(&dword_252711000, v2, v3, "%s-%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  v6 = *(v0 + 296);
  v7 = sub_2528BEC50();
  *(v0 + 360) = v7;
  v8 = *(v7 - 8);
  *(v0 + 368) = v8;
  v10 = v8 + 56;
  v9 = *(v8 + 56);
  *(v0 + 376) = v9;
  *(v0 + 384) = v10 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v6, 1, 1, v7);
  sub_2528BE790();
  v11 = *(v0 + 64);
  *(v0 + 392) = v11;
  if (v11)
  {
    if (*(v11 + 16))
    {
      v12 = *(v0 + 320);
      *(v0 + 16) = *(v0 + 304);
      *(v0 + 32) = v12;
      *(v0 + 48) = *(v0 + 336);
      v13 = swift_task_alloc();
      *(v0 + 400) = v13;
      *v13 = v0;
      v13[1] = sub_25281500C;
      v14 = *(v0 + 224);

      return ShowNavigationIntent.stateSnapshot.getter(v14);
    }
  }

  v16 = *(v0 + 136);
  sub_2528BE790();
  v17 = type metadata accessor for RoomEntity(0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    sub_2527213D8(*(v0 + 136), &qword_27F4FD690, &unk_2528D2D30);
    sub_2528BE790();
    v18 = *(v0 + 432);
    if (v18 <= 3)
    {
      v28 = MEMORY[0x277D16020];
      v29 = MEMORY[0x277D15FC0];
      if (v18 != 2)
      {
        v29 = MEMORY[0x277D15FE0];
      }

      if (*(v0 + 432))
      {
        v28 = MEMORY[0x277D16008];
      }

      if (*(v0 + 432) <= 1u)
      {
        v19 = v28;
      }

      else
      {
        v19 = v29;
      }

      goto LABEL_29;
    }

    if (*(v0 + 432) <= 5u)
    {
      v30 = v18 == 4;
      v19 = MEMORY[0x277D15FD8];
      if (!v30)
      {
        v19 = MEMORY[0x277D16010];
      }

      goto LABEL_29;
    }

    if (v18 == 6)
    {
      v19 = MEMORY[0x277D16000];
      goto LABEL_29;
    }

    if (v18 == 7)
    {
      v19 = MEMORY[0x277D15FF0];
LABEL_29:
      v31 = *(v0 + 168);
      v32 = *(v0 + 144);
      v33 = *(v0 + 152);
      v35 = *(v0 + 96);
      v34 = *(v0 + 104);
      v36 = *(v0 + 80);
      v37 = *(v0 + 88);
      (*(v37 + 104))(v35, *v19, v36);
      (*(v37 + 32))(v34, v35, v36);
      (*(v33 + 104))(v31, *MEMORY[0x277D164F0], v32);
      sub_2528C0040();
      (*(v33 + 8))(v31, v32);
      sub_2528BFD60();
      sub_2528C0170();
      sub_2528C0160();
      v38 = *(v0 + 104);
      v40 = *(v0 + 80);
      v39 = *(v0 + 88);
      (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
      (*(v39 + 8))(v38, v40);
      v27 = (v0 + 272);
      goto LABEL_30;
    }

    sub_2528BE790();
    if (*(v0 + 433) == 3)
    {
      goto LABEL_31;
    }

    v57 = *(v0 + 152);
    v56 = *(v0 + 160);
    v58 = *(v0 + 144);
    (*(v57 + 104))(v56, *MEMORY[0x277D16500], v58);
    sub_2528C0040();
    (*(v57 + 8))(v56, v58);
    sub_2528C0170();
    sub_2528C0160();
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    v27 = (v0 + 264);
  }

  else
  {
    v20 = *(v0 + 168);
    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    v24 = *(v0 + 128);
    v23 = *(v0 + 136);
    v26 = *(v0 + 112);
    v25 = *(v0 + 120);
    (*(v25 + 16))(v24, v23, v26);
    sub_2527213D8(v23, &qword_27F4FD690, &unk_2528D2D30);
    sub_2528BECB0();
    (*(v25 + 8))(v24, v26);
    (*(v21 + 104))(v20, *MEMORY[0x277D164E8], v22);
    sub_2528C0040();
    (*(v21 + 8))(v20, v22);
    sub_2528C0170();
    sub_2528C0160();
    (*(*(v0 + 184) + 8))(*(v0 + 208), *(v0 + 176));
    v27 = (v0 + 280);
  }

LABEL_30:
  v41 = *v27;
  v42 = *(v0 + 376);
  v43 = *(v0 + 360);
  v44 = *(v0 + 296);
  sub_2527213D8(v44, &qword_27F4FF3A0, &unk_2528D2DC0);
  v42(v41, 0, 1, v43);
  sub_25274AA0C(v41, v44, &qword_27F4FF3A0, &unk_2528D2DC0);
LABEL_31:
  v45 = *(v0 + 360);
  v46 = *(v0 + 368);
  v47 = *(v0 + 256);
  sub_25272006C(*(v0 + 296), v47, &qword_27F4FF3A0, &unk_2528D2DC0);
  if ((*(v46 + 48))(v47, 1, v45) == 1)
  {
    sub_2527213D8(*(v0 + 256), &qword_27F4FF3A0, &unk_2528D2DC0);
    v48 = sub_2528C0890();
    v49 = sub_2528C0CF0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_252711000, v48, v49, "No deep link generated", v50, 2u);
      MEMORY[0x2530A8D80](v50, -1, -1);
    }

    sub_252816BF0();
    swift_allocError();
    swift_willThrow();
    sub_2527213D8(*(v0 + 296), &qword_27F4FF3A0, &unk_2528D2DC0);

    v51 = *(v0 + 8);
  }

  else
  {
    v52 = *(v0 + 360);
    v53 = *(v0 + 368);
    v54 = *(v0 + 256);
    v55 = *(v0 + 72);
    sub_2527213D8(*(v0 + 296), &qword_27F4FF3A0, &unk_2528D2DC0);
    (*(v53 + 32))(v55, v54, v52);

    v51 = *(v0 + 8);
  }

  return v51();
}

uint64_t sub_25281500C()
{

  return MEMORY[0x2822009F8](sub_252815108, 0, 0);
}

uint64_t sub_252815108()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_2527213D8(v3, &qword_27F4FCD98, &qword_2528C6200);
    v4 = *(v0 + 136);
    sub_2528BE790();
    v5 = type metadata accessor for RoomEntity(0);
    if ((*(*(v5 - 8) + 48))(v4, 1, v5))
    {
      sub_2527213D8(*(v0 + 136), &qword_27F4FD690, &unk_2528D2D30);
      sub_2528BE790();
      v6 = *(v0 + 432);
      if (v6 <= 3)
      {
        v20 = MEMORY[0x277D16020];
        v21 = MEMORY[0x277D15FC0];
        if (v6 != 2)
        {
          v21 = MEMORY[0x277D15FE0];
        }

        if (*(v0 + 432))
        {
          v20 = MEMORY[0x277D16008];
        }

        if (*(v0 + 432) <= 1u)
        {
          v7 = v20;
        }

        else
        {
          v7 = v21;
        }

        goto LABEL_23;
      }

      if (*(v0 + 432) <= 5u)
      {
        v22 = v6 == 4;
        v7 = MEMORY[0x277D15FD8];
        if (!v22)
        {
          v7 = MEMORY[0x277D16010];
        }

        goto LABEL_23;
      }

      if (v6 == 6)
      {
        v7 = MEMORY[0x277D16000];
        goto LABEL_23;
      }

      if (v6 == 7)
      {
        v7 = MEMORY[0x277D15FF0];
LABEL_23:
        v23 = *(v0 + 168);
        v24 = *(v0 + 144);
        v25 = *(v0 + 152);
        v27 = *(v0 + 96);
        v26 = *(v0 + 104);
        v28 = *(v0 + 80);
        v29 = *(v0 + 88);
        (*(v29 + 104))(v27, *v7, v28);
        (*(v29 + 32))(v26, v27, v28);
        (*(v25 + 104))(v23, *MEMORY[0x277D164F0], v24);
        sub_2528C0040();
        (*(v25 + 8))(v23, v24);
        sub_2528BFD60();
        sub_2528C0170();
        sub_2528C0160();
        v30 = *(v0 + 104);
        v32 = *(v0 + 80);
        v31 = *(v0 + 88);
        (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
        (*(v31 + 8))(v30, v32);
        v19 = (v0 + 272);
        goto LABEL_24;
      }

      sub_2528BE790();
      if (*(v0 + 433) == 3)
      {
        goto LABEL_25;
      }

      v49 = *(v0 + 152);
      v48 = *(v0 + 160);
      v50 = *(v0 + 144);
      (*(v49 + 104))(v48, *MEMORY[0x277D16500], v50);
      sub_2528C0040();
      (*(v49 + 8))(v48, v50);
      sub_2528C0170();
      sub_2528C0160();
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      v19 = (v0 + 264);
    }

    else
    {
      v12 = *(v0 + 168);
      v14 = *(v0 + 144);
      v13 = *(v0 + 152);
      v16 = *(v0 + 128);
      v15 = *(v0 + 136);
      v18 = *(v0 + 112);
      v17 = *(v0 + 120);
      (*(v17 + 16))(v16, v15, v18);
      sub_2527213D8(v15, &qword_27F4FD690, &unk_2528D2D30);
      sub_2528BECB0();
      (*(v17 + 8))(v16, v18);
      (*(v13 + 104))(v12, *MEMORY[0x277D164E8], v14);
      sub_2528C0040();
      (*(v13 + 8))(v12, v14);
      sub_2528C0170();
      sub_2528C0160();
      (*(*(v0 + 184) + 8))(*(v0 + 208), *(v0 + 176));
      v19 = (v0 + 280);
    }

LABEL_24:
    v33 = *v19;
    v34 = *(v0 + 376);
    v35 = *(v0 + 360);
    v36 = *(v0 + 296);
    sub_2527213D8(v36, &qword_27F4FF3A0, &unk_2528D2DC0);
    v34(v33, 0, 1, v35);
    sub_25274AA0C(v33, v36, &qword_27F4FF3A0, &unk_2528D2DC0);
LABEL_25:
    v37 = *(v0 + 360);
    v38 = *(v0 + 368);
    v39 = *(v0 + 256);
    sub_25272006C(*(v0 + 296), v39, &qword_27F4FF3A0, &unk_2528D2DC0);
    if ((*(v38 + 48))(v39, 1, v37) == 1)
    {
      sub_2527213D8(*(v0 + 256), &qword_27F4FF3A0, &unk_2528D2DC0);
      v40 = sub_2528C0890();
      v41 = sub_2528C0CF0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_252711000, v40, v41, "No deep link generated", v42, 2u);
        MEMORY[0x2530A8D80](v42, -1, -1);
      }

      sub_252816BF0();
      swift_allocError();
      swift_willThrow();
      sub_2527213D8(*(v0 + 296), &qword_27F4FF3A0, &unk_2528D2DC0);

      v43 = *(v0 + 8);
    }

    else
    {
      v44 = *(v0 + 360);
      v45 = *(v0 + 368);
      v46 = *(v0 + 256);
      v47 = *(v0 + 72);
      sub_2527213D8(*(v0 + 296), &qword_27F4FF3A0, &unk_2528D2DC0);
      (*(v45 + 32))(v47, v46, v44);

      v43 = *(v0 + 8);
    }

    return v43();
  }

  v8 = *(v0 + 392);
  (*(v2 + 32))(*(v0 + 248), v3, v1);
  sub_2528BE790();
  *(v0 + 435) = *(v0 + 434);
  v9 = swift_task_alloc();
  *(v0 + 408) = v9;
  *v9 = v0;
  v9[1] = sub_252815A34;
  v10 = *(v0 + 248);

  return sub_25283980C(v8, (v0 + 435), v10);
}

uint64_t sub_252815A34(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = a2;

  return MEMORY[0x2822009F8](sub_252815B54, 0, 0);
}

uint64_t sub_252815B54()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  (*(v3 + 104))(v1, *MEMORY[0x277D164F8], v2);
  sub_2528C0040();
  (*(v3 + 8))(v1, v2);
  sub_2528C0170();
  sub_2528C0160();
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  (*(v0[23] + 8))(v0[27], v0[22]);
  (*(v5 + 8))(v4, v6);
  v7 = v0[47];
  v8 = v0[45];
  v9 = v0[36];
  v10 = v0[37];
  sub_2527213D8(v10, &qword_27F4FF3A0, &unk_2528D2DC0);
  v7(v9, 0, 1, v8);
  sub_25274AA0C(v9, v10, &qword_27F4FF3A0, &unk_2528D2DC0);
  v11 = v0[45];
  v12 = v0[46];
  v13 = v0[32];
  sub_25272006C(v0[37], v13, &qword_27F4FF3A0, &unk_2528D2DC0);
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_2527213D8(v0[32], &qword_27F4FF3A0, &unk_2528D2DC0);
    v14 = sub_2528C0890();
    v15 = sub_2528C0CF0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_252711000, v14, v15, "No deep link generated", v16, 2u);
      MEMORY[0x2530A8D80](v16, -1, -1);
    }

    sub_252816BF0();
    swift_allocError();
    swift_willThrow();
    sub_2527213D8(v0[37], &qword_27F4FF3A0, &unk_2528D2DC0);

    v17 = v0[1];
  }

  else
  {
    v19 = v0[45];
    v20 = v0[46];
    v21 = v0[32];
    v22 = v0[9];
    sub_2527213D8(v0[37], &qword_27F4FF3A0, &unk_2528D2DC0);
    (*(v20 + 32))(v22, v21, v19);

    v17 = v0[1];
  }

  return v17();
}

uint64_t ShowNavigationIntent.ShowNavigationIntentError.hashValue.getter()
{
  sub_2528C1130();
  MEMORY[0x2530A87A0](0);
  return sub_2528C1180();
}

uint64_t sub_252816078(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_25272006C(a1, &v10 - v7, &qword_27F4FC488, &unk_2528C3F80);
  sub_25272006C(v8, v6, &qword_27F4FC488, &unk_2528C3F80);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
  sub_2527213D8(v8, &qword_27F4FC488, &unk_2528C3F80);
}

uint64_t sub_2528161F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252816290, 0, 0);
}

uint64_t sub_252816290()
{
  v1 = v0[4];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_2528C3910;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  if (sub_2528BE9A0())
  {
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[6];
  v6 = type metadata accessor for HomeEntity(0);
  (*(*(v6 - 8) + 56))(v5, v4, 1, v6);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_252816420;
  v8 = v0[6];

  return sub_2528B5188(v3, v8);
}

uint64_t sub_252816420(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  sub_2527213D8(v4, &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {
    v5 = sub_2528166C0;
  }

  else
  {
    v5 = sub_252816588;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252816588()
{
  v1 = v0[9];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for RoomEntity(0);
    v4 = *(v3 - 8);
    sub_252817060(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

    v5 = 0;
  }

  else
  {

    v3 = type metadata accessor for RoomEntity(0);
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[2], v5, 1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2528166C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252816724(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *v2;
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2527228B0;

  return sub_2528161F0(a1, v5, v6, v8, v7);
}

unint64_t sub_2528167D8()
{
  result = qword_27F4FF338;
  if (!qword_27F4FF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF338);
  }

  return result;
}

uint64_t sub_25281682C@<X0>(uint64_t a1@<X8>)
{
  v8 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF418, &qword_2528D33C0);
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = &v8 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3F8, &qword_2528D3310);
  swift_getKeyPath();
  v14 = sub_2528BE9C0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD08, &unk_2528C5B90);
  v5 = sub_252817214();
  MEMORY[0x2530A60E0](&v15, &v14, v4, &type metadata for ShowNavigationIntentDeviceEntityFromAccessoryTypeResolver, v5);

  swift_getKeyPath();
  v13 = sub_2528BE9C0();
  v6 = sub_252817268();
  MEMORY[0x2530A60E0](&v14, &v13, v4, &type metadata for ShowNavigationIntentDeviceEntityFromInputTypeResolver, v6);

  v13 = v15;
  sub_252756100();
  sub_2528BEAA0();
  v11 = &type metadata for ShowNavigationIntentDeviceEntityFromAccessoryTypeResolver;
  v12 = v14;
  v10 = v5;
  sub_2528BEA90();
  (*(v1 + 8))(v3, v9);
}

unint64_t sub_252816A44()
{
  result = qword_27F4FF360;
  if (!qword_27F4FF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF360);
  }

  return result;
}

uint64_t sub_252816A98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3F8, &qword_2528D3310);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  v0 = type metadata accessor for RoomEntity(0);
  v1 = sub_2528171C0();
  MEMORY[0x2530A60E0](&v4, &v3, v0, &type metadata for ShowNavigationIntentRoomEntityFromNameResolver, v1);

  v3 = v4;
  sub_2528170C4(&qword_27F4FCD70, type metadata accessor for RoomEntity, &protocol conformance descriptor for RoomEntity);
  sub_2528BEAA0();
}

unint64_t sub_252816B9C()
{
  result = qword_27F4FF380;
  if (!qword_27F4FF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF380);
  }

  return result;
}

unint64_t sub_252816BF0()
{
  result = qword_27F4FF3A8;
  if (!qword_27F4FF3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3A8);
  }

  return result;
}

unint64_t sub_252816C48()
{
  result = qword_27F4FF3B0;
  if (!qword_27F4FF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3B0);
  }

  return result;
}

unint64_t sub_252816CA0()
{
  result = qword_27F4FF3B8;
  if (!qword_27F4FF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3B8);
  }

  return result;
}

unint64_t sub_252816D64()
{
  result = qword_27F4FF3C0;
  if (!qword_27F4FF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3C0);
  }

  return result;
}

unint64_t sub_252816DBC()
{
  result = qword_27F4FF3C8;
  if (!qword_27F4FF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3C8);
  }

  return result;
}

unint64_t sub_252816E14()
{
  result = qword_27F4FF3D0;
  if (!qword_27F4FF3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3D0);
  }

  return result;
}

unint64_t sub_252816E6C()
{
  result = qword_27F4FF3D8;
  if (!qword_27F4FF3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3D8);
  }

  return result;
}

unint64_t sub_252816EC4()
{
  result = qword_27F4FF3E0;
  if (!qword_27F4FF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3E0);
  }

  return result;
}

unint64_t sub_252816F1C()
{
  result = qword_27F4FF3E8;
  if (!qword_27F4FF3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3E8);
  }

  return result;
}

unint64_t sub_252816FBC()
{
  result = qword_27F4FF3F0;
  if (!qword_27F4FF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3F0);
  }

  return result;
}

uint64_t sub_252817060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoomEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2528170C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25281710C()
{
  result = qword_27F4FF408;
  if (!qword_27F4FF408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD690, &unk_2528D2D30);
    sub_2528170C4(&qword_27F4FCD70, type metadata accessor for RoomEntity, &protocol conformance descriptor for RoomEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF408);
  }

  return result;
}

unint64_t sub_2528171C0()
{
  result = qword_27F4FF410;
  if (!qword_27F4FF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF410);
  }

  return result;
}

unint64_t sub_252817214()
{
  result = qword_27F4FF420;
  if (!qword_27F4FF420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF420);
  }

  return result;
}

unint64_t sub_252817268()
{
  result = qword_27F4FF428;
  if (!qword_27F4FF428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF428);
  }

  return result;
}

uint64_t sub_2528172D4()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F4FF430);
  __swift_project_value_buffer(v0, qword_27F4FF430);
  return sub_2528BEC20();
}

uint64_t static ShowSceneResultIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FF430);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252817424(uint64_t *a1, uint64_t *a2)
{

  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

void (*ShowSceneResultIntent.sceneID.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t sub_252817580(char *a1, uint64_t *a2)
{
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

void (*ShowSceneResultIntent.hasSiriExecutionFailure.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE780();
  return sub_25272EE48;
}

uint64_t ShowSceneResultIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF448, &unk_2528D33F0);
  MEMORY[0x28223BE20](v1 - 8);
  v34 = v27 - v2;
  v35 = sub_2528BE950();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v30 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9B8, &unk_2528D3400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v27 - v12;
  v14 = sub_2528BEC40();
  v32 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF450, &qword_2528D3410);
  sub_2528BEC20();
  v31 = *(v15 + 56);
  v31(v13, 1, 1, v14);
  v16 = sub_2528C0940();
  v36 = 0;
  v37 = 0;
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_2528BE630();
  v18 = *(v17 - 8);
  v28 = *(v18 + 56);
  v29 = v18 + 56;
  v28(v7, 1, 1, v17);
  v19 = *MEMORY[0x277CBA308];
  v20 = *(v3 + 104);
  v27[0] = v3 + 104;
  v21 = v30;
  v20(v30, v19, v35);
  v22 = v21;
  v23 = sub_2528BE800();
  v24 = v33;
  *v33 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF458, &qword_2528D3418);
  sub_2528BEC20();
  v31(v13, 1, 1, v32);
  LOBYTE(v36) = 2;
  v25 = sub_2528C0BC0();
  (*(*(v25 - 8) + 56))(v34, 1, 1, v25);
  v28(v7, 1, 1, v17);
  v20(v22, v19, v35);
  v24[1] = sub_2528BE810();
  LOBYTE(v36) = 0;
  return sub_2528BE7A0();
}

uint64_t ShowSceneResultIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  *(v2 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0);
  *(v2 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  *(v2 + 56) = swift_task_alloc();
  v3 = sub_2528BF400();
  *(v2 + 64) = v3;
  v4 = *(v3 - 8);
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 + 64);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  *(v2 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v2 + 112) = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  *(v2 + 120) = v5;
  *(v2 + 128) = *(v5 + 64);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  v6 = sub_2528BE8B0();
  *(v2 + 152) = v6;
  *(v2 + 160) = *(v6 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = *v1;

  return MEMORY[0x2822009F8](sub_252817E2C, 0, 0);
}

uint64_t sub_252817E2C()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  *(v0 + 192) = __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_252711000, v2, v3, "Show Scene Result Intent perform() called", v4, 2u);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v16 = *(v0 + 176);

  *(v0 + 16) = v16;
  sub_2528188A8();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v6 + 8))(v5, v7);
  v10 = type metadata accessor for HomeEntity(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_2528C05D0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_252818088;
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);

  return sub_25277ECE4(v14, 0, 0, v13);
}

uint64_t sub_252818088(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  *(*v1 + 208) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2528181E4, 0, 0);
}

uint64_t sub_2528181E4()
{
  v1 = v0[6];
  sub_2527D38F8(v0[26], v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  if (v3 == 1)
  {
    sub_2527213D8(v6, &qword_27F4FCDA8, &unk_2528C5CB0);
    (*(v5 + 56))(v7, 1, 1, v4);
  }

  else
  {
    v8 = *(v2 + 48);
    v9 = *(v5 + 16);
    v10 = v0[6];
    v9(v0[7], v6 + v8, v0[8]);
    sub_2527D6704(v10 + v8);
    (*(v5 + 56))(v7, 0, 1, v4);
    v11 = sub_2528BECF0();
    (*(*(v11 - 8) + 8))(v10, v11);
    if ((*(v5 + 48))(v7, 1, v4) != 1)
    {
      v17 = v0[18];
      v31 = v0[15];
      v19 = v0[11];
      v18 = v0[12];
      v20 = v0[9];
      v29 = v0[17];
      v30 = v0[10];
      v21 = v0[8];
      v22 = v0[5];
      v32 = v22;
      v33 = *(v20 + 32);
      v33(v18);
      v23 = sub_2528C0C40();
      (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
      v9(v19, v18, v21);
      sub_2527F8AAC(v17, v29);
      v24 = (*(v20 + 80) + 65) & ~*(v20 + 80);
      v25 = (v30 + *(v31 + 80) + v24) & ~*(v31 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      v27 = MEMORY[0x277D84F90];
      *(v26 + 32) = MEMORY[0x277D84F90];
      *(v26 + 40) = 1;
      *(v26 + 48) = v27;
      *(v26 + 56) = v27;
      *(v26 + 64) = 2;
      (v33)(v26 + v24, v19, v21);
      sub_2527D6760(v29, v26 + v25);
      sub_2527D3E74(0, 0, v32, &unk_2528CD990, v26);

      (*(v20 + 8))(v18, v21);
      sub_2527213D8(v17, &qword_27F4FCE00, &qword_2528C5D20);
      sub_2528BE670();

      v16 = v0[1];
      goto LABEL_8;
    }
  }

  sub_2527213D8(v0[7], &qword_27F4FCD98, &qword_2528C6200);
  v12 = sub_2528C0890();
  v13 = sub_2528C0CF0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_252711000, v12, v13, "No snapshot found for current home", v14, 2u);
    MEMORY[0x2530A8D80](v14, -1, -1);
  }

  v15 = v0[18];

  sub_2527D66B0();
  swift_allocError();
  swift_willThrow();
  sub_2527213D8(v15, &qword_27F4FCE00, &qword_2528C5D20);

  v16 = v0[1];
LABEL_8:

  return v16();
}

uint64_t sub_252818728@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FF430);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2528187D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25271F3AC;

  return ShowSceneResultIntent.perform()(a1);
}

uint64_t sub_25281886C(uint64_t a1)
{
  v2 = sub_2528188A8();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2528188A8()
{
  result = qword_27F4FF460;
  if (!qword_27F4FF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF460);
  }

  return result;
}

unint64_t sub_252818900()
{
  result = qword_27F4FF468;
  if (!qword_27F4FF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF468);
  }

  return result;
}

unint64_t sub_252818958()
{
  result = qword_27F4FF470;
  if (!qword_27F4FF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF470);
  }

  return result;
}

uint64_t sub_252818A28(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_2528C1130();
    RobotVacuumCleanerRunState.rawValue.getter();
    sub_2528C0A40();

    v4 = sub_2528C1180();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xE700000000000000;
        v9 = 0x646570706F7473;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v9 = 0x676E696E6E7572;
            break;
          case 2:
            v8 = 0xE600000000000000;
            v9 = 0x646573756170;
            break;
          case 3:
            v8 = 0xE500000000000000;
            v9 = 0x726F727265;
            break;
          case 4:
            v9 = 0x43676E696B656573;
            v8 = 0xEE00726567726168;
            break;
          case 5:
            v8 = 0xE800000000000000;
            v9 = 0x676E696772616863;
            break;
          case 6:
            v8 = 0xE600000000000000;
            v9 = 0x64656B636F64;
            break;
          case 7:
            v9 = 0x676E697974706D65;
            v8 = 0xEF6E694274737544;
            break;
          case 8:
            v9 = 0x676E696E61656C63;
            v8 = 0xEB00000000706F4DLL;
            break;
          case 9:
            v9 = 0xD000000000000010;
            v8 = 0x80000002528E4E10;
            break;
          case 0xA:
            v9 = 0x676E697461647075;
            v8 = 0xEC0000007370614DLL;
            break;
          case 0xB:
            v8 = 0xE500000000000000;
            v9 = 0x6B63757473;
            break;
          case 0xC:
            v9 = 0xD000000000000018;
            v8 = 0x80000002528E4E40;
            break;
          case 0xD:
            v9 = 0x4D6E694274737564;
            v8 = 0xEE00676E69737369;
            break;
          case 0xE:
            v9 = 0x466E694274737564;
            v8 = 0xEB000000006C6C75;
            break;
          case 0xF:
            v9 = 0xD000000000000010;
            v8 = 0x80000002528E4E80;
            break;
          case 0x10:
            v9 = 0x6E61547265746177;
            v8 = 0xEE007974706D456BLL;
            break;
          case 0x11:
            v9 = 0xD000000000000010;
            v8 = 0x80000002528E4EA0;
            break;
          case 0x12:
            v9 = 0xD000000000000015;
            v8 = 0x80000002528E4EC0;
            break;
          case 0x13:
            v9 = 0x6574746142776F6CLL;
            v8 = 0xEA00000000007972;
            break;
          case 0x14:
            v9 = 0xD000000000000015;
            v8 = 0x80000002528E4EE0;
            break;
          case 0x15:
            v9 = 0xD000000000000012;
            v8 = 0x80000002528E4F00;
            break;
          case 0x16:
            v9 = 0xD000000000000015;
            v8 = 0x80000002528E4F20;
            break;
          case 0x17:
            v9 = 0x614A736C65656877;
            v8 = 0xEC00000064656D6DLL;
            break;
          case 0x18:
            v9 = 0x6D614A6873757262;
            v8 = 0xEB0000000064656DLL;
            break;
          case 0x19:
            v9 = 0xD000000000000018;
            v8 = 0x80000002528E4F50;
            break;
          case 0x1A:
            v9 = 0x6E776F6E6B6E75;
            break;
          default:
            break;
        }

        v10 = 0xE700000000000000;
        v11 = 0x646570706F7473;
        switch(a1)
        {
          case 1:
            if (v9 == 0x676E696E6E7572)
            {
              goto LABEL_80;
            }

            goto LABEL_81;
          case 2:
            v10 = 0xE600000000000000;
            v16 = 1937072496;
            goto LABEL_65;
          case 3:
            v10 = 0xE500000000000000;
            if (v9 != 0x726F727265)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 4:
            v12 = 0x43676E696B656573;
            v13 = 0x726567726168;
            goto LABEL_62;
          case 5:
            v10 = 0xE800000000000000;
            if (v9 != 0x676E696772616863)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 6:
            v10 = 0xE600000000000000;
            v16 = 1801678692;
LABEL_65:
            if (v9 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x646500000000))
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 7:
            v10 = 0xEF6E694274737544;
            if (v9 != 0x676E697974706D65)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 8:
            v14 = 0x676E696E61656C63;
            v15 = 7368525;
            goto LABEL_72;
          case 9:
            v10 = 0x80000002528E4E10;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 10:
            v10 = 0xEC0000007370614DLL;
            if (v9 != 0x676E697461647075)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 11:
            v10 = 0xE500000000000000;
            if (v9 != 0x6B63757473)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 12:
            v10 = 0x80000002528E4E40;
            if (v9 != 0xD000000000000018)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 13:
            v12 = 0x4D6E694274737564;
            v13 = 0x676E69737369;
            goto LABEL_62;
          case 14:
            v14 = 0x466E694274737564;
            v15 = 7105653;
            goto LABEL_72;
          case 15:
            v10 = 0x80000002528E4E80;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 16:
            v12 = 0x6E61547265746177;
            v13 = 0x7974706D456BLL;
LABEL_62:
            v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v9 != v12)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 17:
            v10 = 0x80000002528E4EA0;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 18:
            v10 = 0x80000002528E4EC0;
            if (v9 != 0xD000000000000015)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 19:
            v10 = 0xEA00000000007972;
            if (v9 != 0x6574746142776F6CLL)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 20:
            v10 = 0x80000002528E4EE0;
            if (v9 != 0xD000000000000015)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 21:
            v10 = 0x80000002528E4F00;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 22:
            v10 = 0x80000002528E4F20;
            if (v9 != 0xD000000000000015)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 23:
            v11 = 0x614A736C65656877;
            v10 = 0xEC00000064656D6DLL;
            goto LABEL_79;
          case 24:
            v14 = 0x6D614A6873757262;
            v15 = 6579565;
LABEL_72:
            v10 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v9 != v14)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 25:
            v10 = 0x80000002528E4F50;
            if (v9 != 0xD000000000000018)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 26:
            if (v9 != 0x6E776F6E6B6E75)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          default:
LABEL_79:
            if (v9 != v11)
            {
              goto LABEL_81;
            }

LABEL_80:
            if (v8 == v10)
            {

              v17 = 1;
              return v17 & 1;
            }

LABEL_81:
            v17 = sub_2528C1060();

            if (v17)
            {
              return v17 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v17 & 1;
            }

            break;
        }
      }
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2528191A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2528C0570();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_25283C680(&qword_27F4FC6C8, MEMORY[0x277D16AB0], MEMORY[0x277D16AC8]), v7 = sub_2528C0900(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_25283C680(&qword_27F4FC6D0, MEMORY[0x277D16AB0], MEMORY[0x277D16AD0]);
      v15 = sub_2528C0930();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_2528193BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2528BFDE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_25283C680(&qword_27F4FC798, MEMORY[0x277D16348], MEMORY[0x277D16350]), v7 = sub_2528C0900(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_25283C680(&qword_27F4FC7A0, MEMORY[0x277D16348], MEMORY[0x277D16360]);
      v15 = sub_2528C0930();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_2528195D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2528BFD70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_25283C680(&qword_27F4FF688, MEMORY[0x277D16028], MEMORY[0x277D16030]), v7 = sub_2528C0900(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_25283C680(&qword_27F4FF690, MEMORY[0x277D16028], MEMORY[0x277D16038]);
      v15 = sub_2528C0930();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_2528197EC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2528C1130();
  MEMORY[0x2530A87A0](a1);
  v4 = sub_2528C1180();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_2528198B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2528BECF0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_25283C680(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v7 = sub_2528C0900(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_25283C680(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_2528C0930();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_252819AD0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v38 = a3;
  v37 = a2(0);
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v30 - v6;
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v30[1] = v3;
    v43 = MEMORY[0x277D84F90];
    sub_25282EFBC(0, v7, 0);
    v41 = a1 + 56;
    v42 = v43;
    result = sub_2528C0E00();
    v9 = result;
    v10 = 0;
    v34 = v5 + 8;
    v35 = v5 + 16;
    v31 = a1 + 64;
    v32 = v7;
    v33 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v41 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      v16 = (*(v5 + 16))(v36, *(a1 + 48) + *(v5 + 72) * v9, v37);
      v40 = v38(v16);
      v18 = v17;
      result = (*(v5 + 8))(v14, v15);
      v19 = v42;
      v43 = v42;
      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_25282EFBC((v20 > 1), v21 + 1, 1);
        v19 = v43;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v40;
      *(v22 + 40) = v18;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v23 = *(v41 + 8 * v13);
      if ((v23 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v19;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v9 & 0x3F));
      if (v24)
      {
        v11 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v32;
        v5 = v33;
      }

      else
      {
        v25 = v13 << 6;
        v26 = v13 + 1;
        v12 = v32;
        v27 = (v31 + 8 * v13);
        v5 = v33;
        while (v26 < (v11 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_25271A63C(v9, v39, 0);
            v11 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_25271A63C(v9, v39, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v42;
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
  }

  return result;
}

uint64_t DeviceEntity.debugDescription.getter()
{
  sub_2528C0E70();

  sub_2528BE6B0();
  MEMORY[0x2530A80B0]();

  MEMORY[0x2530A80B0](47, 0xE100000000000000);
  sub_2528BE6B0();
  MEMORY[0x2530A80B0]();

  MEMORY[0x2530A80B0](47, 0xE100000000000000);
  sub_2528BE6B0();
  MEMORY[0x2530A80B0]();

  MEMORY[0x2530A80B0](10272, 0xE200000000000000);
  sub_2528BE6B0();
  MEMORY[0x2530A80B0]();

  MEMORY[0x2530A80B0](2108457, 0xE300000000000000);
  sub_2528BE6B0();
  v0 = DeviceType.description.getter();
  MEMORY[0x2530A80B0](v0);

  MEMORY[0x2530A80B0](125, 0xE100000000000000);
  return 123;
}

uint64_t sub_252819FA8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v8 - v3;
  sub_2528BE6B0();
  sub_2528BECA0();

  v5 = sub_2528BECF0();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_2527213D8(v4, &qword_27F4FC628, &qword_2528C4750);
  v8[2] = 0;
  v8[3] = 0xE000000000000000;
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
  type metadata accessor for DeviceEntity(0);
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
  sub_2528BE6B0();
  MEMORY[0x2530A80B0](v8[0], v8[1]);

  MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
  result = sub_2528C0EE0();
  __break(1u);
  return result;
}

uint64_t sub_25281A1D8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_252739514(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25281A2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528BFCF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_25273AF34(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25281A4D4(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_25281A580(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x2530A84E0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2528C0EF0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_25281A6A8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v23 = sub_2528BF9D0();
  MEMORY[0x28223BE20](v23);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v20 = v5 + 16;
  v21 = v5;
  v19 = (v5 + 8);
  v24 = a3;

  v13 = 0;
  while (v11)
  {
    v14 = v23;
LABEL_11:
    (*(v21 + 16))(v7, *(v24 + 56) + *(v21 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v14);
    v16 = v22(v7);
    if (v3)
    {
      (*v19)(v7, v14);

      return;
    }

    v17 = v16;
    v11 &= v11 - 1;
    (*v19)(v7, v14);
    if (v17)
    {
LABEL_13:

      return;
    }
  }

  v14 = v23;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_13;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_25281A8C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = &v68 - v9;
  v91 = sub_2528C00D0();
  v77 = *(v91 - 8);
  v10 = MEMORY[0x28223BE20](v91);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v68 - v13;
  v14 = sub_2528BECF0();
  v82 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v83 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v92 = &v68 - v18;
  MEMORY[0x28223BE20](v17);
  v74 = &v68 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6A8, &unk_2528D3CE8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v87 = &v68 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v68 - v26;
  if (*(a1 + 16) && (v28 = *(type metadata accessor for DeviceEntity(0) + 48), v29 = sub_252785C40(v2 + v28), (v30 & 1) != 0))
  {
    v31 = v77;
    v32 = *(a1 + 56) + *(v77 + 72) * v29;
    v33 = v91;
    (*(v77 + 16))(v27, v32, v91);
    (*(v31 + 56))(v27, 0, 1, v33);
    sub_2527213D8(v27, &qword_27F4FCDB8, &unk_2528C5CC0);
    v34 = v82;
    (*(v82 + 16))(a2, v3 + v28, v14);
    return (*(v34 + 56))(a2, 0, 1, v14);
  }

  else
  {
    v68 = a2;
    v81 = v2;
    v36 = (v77 + 56);
    (*(v77 + 56))(v27, 1, 1, v91);
    sub_2527213D8(v27, &qword_27F4FCDB8, &unk_2528C5CC0);
    v37 = *(a1 + 64);
    v70 = a1 + 64;
    v38 = 1 << *(a1 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & v37;
    v69 = (v38 + 63) >> 6;
    v72 = v82 + 16;
    v71 = v36 - 40;
    v41 = (v82 + 32);
    v89 = (v36 - 24);
    v79 = (v82 + 8);
    v80 = (v82 + 48);
    v78 = (v36 - 48);
    v76 = a1;

    v42 = 0;
    v73 = v12;
    v86 = v14;
    v88 = v23;
    v90 = v41;
    if (v40)
    {
      while (1)
      {
        v43 = v14;
        v44 = v42;
LABEL_16:
        v47 = __clz(__rbit64(v40));
        v40 &= v40 - 1;
        v48 = v47 | (v44 << 6);
        v49 = v76;
        v50 = v82;
        (*(v82 + 16))(v74, *(v76 + 48) + *(v82 + 72) * v48, v43);
        v51 = v77;
        v52 = v75;
        v53 = v91;
        (*(v77 + 16))(v75, *(v49 + 56) + *(v77 + 72) * v48, v91);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
        v55 = *(v54 + 48);
        v23 = v88;
        v41 = v90;
        (*(v50 + 32))();
        (*(v51 + 32))(&v23[v55], v52, v53);
        (*(*(v54 - 8) + 56))(v23, 0, 1, v54);
        v46 = v44;
        v12 = v73;
LABEL_17:
        v56 = v87;
        sub_25274AA0C(v23, v87, &qword_27F4FF6A8, &unk_2528D3CE8);
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
        if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
        {

          return (*(v82 + 56))(v68, 1, 1, v86);
        }

        v58 = v46;
        v59 = *(v57 + 48);
        v60 = *v41;
        v61 = v86;
        (*v41)(v92, v56, v86);
        v62 = v91;
        (*v89)(v12, v56 + v59, v91);
        sub_2528BE6B0();
        v36 = v85;
        sub_2528BECA0();

        if ((*v80)(v36, 1, v61) == 1)
        {
          goto LABEL_26;
        }

        v63 = v83;
        v60(v83, v36, v61);
        v64 = v84;
        sub_2528C0080();
        v36 = *v79;
        (*v79)(v63, v61);
        (*v78)(v12, v62);
        v65 = sub_2528BFB20();
        if ((*(*(v65 - 8) + 48))(v64, 1, v65) != 1)
        {
          break;
        }

        (v36)(v92, v61);
        sub_2527213D8(v64, &qword_27F4FCEF0, &unk_2528C6AB0);
        v42 = v58;
        v41 = v90;
        v23 = v88;
        v14 = v61;
        if (!v40)
        {
          goto LABEL_8;
        }
      }

      sub_2527213D8(v64, &qword_27F4FCEF0, &unk_2528C6AB0);
      v67 = v68;
      v60(v68, v92, v61);
      return (*(v82 + 56))(v67, 0, 1, v61);
    }

    else
    {
LABEL_8:
      if (v69 <= v42 + 1)
      {
        v45 = v42 + 1;
      }

      else
      {
        v45 = v69;
      }

      v46 = v45 - 1;
      while (1)
      {
        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v44 >= v69)
        {
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
          (*(*(v66 - 8) + 56))(v23, 1, 1, v66);
          v40 = 0;
          goto LABEL_17;
        }

        v40 = *(v70 + 8 * v44);
        ++v42;
        if (v40)
        {
          v43 = v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_26:
      sub_2527213D8(v36, &qword_27F4FC628, &qword_2528C4750);
      v95 = 0;
      v96 = 0xE000000000000000;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
      type metadata accessor for DeviceEntity(0);
      sub_2528C0ED0();
      MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
      sub_2528BE6B0();
      MEMORY[0x2530A80B0](v93, v94);

      MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
      result = sub_2528C0EE0();
      __break(1u);
    }
  }

  return result;
}

uint64_t DeviceEntity.init(staticService:snapshot:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v232 = a1;
  v216 = a3;
  v231 = sub_2528BF9D0();
  v228 = *(v231 - 8);
  v4 = MEMORY[0x28223BE20](v231);
  v227 = &v186 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v224 = (&v186 - v7);
  v8 = MEMORY[0x28223BE20](v6);
  v212 = &v186 - v9;
  MEMORY[0x28223BE20](v8);
  v211 = &v186 - v10;
  v194 = sub_2528BF070();
  v197 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v193 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_2528BF030();
  v191 = *(v192 - 8);
  v12 = MEMORY[0x28223BE20](v192);
  v189 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v188 = &v186 - v14;
  v203 = sub_2528BEE30();
  v201 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v200 = &v186 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  MEMORY[0x28223BE20](v16 - 8);
  v208 = &v186 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF4F0, &qword_2528D3578);
  v195 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v223 = &v186 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v209 = &v186 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF4F8, &qword_2528D3580);
  MEMORY[0x28223BE20](v22 - 8);
  v196 = &v186 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD660, &qword_2528D4D00);
  MEMORY[0x28223BE20](v24 - 8);
  v202 = &v186 - v25;
  v205 = sub_2528BF240();
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v210 = &v186 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2528BECF0();
  isa = v27[-1].isa;
  v230 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v199 = &v186 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v207 = &v186 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v186 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v186 - v35;
  v206 = sub_2528BFC70();
  v37 = *(v206 - 1);
  MEMORY[0x28223BE20](v206);
  v39 = &v186 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2528BEC40();
  MEMORY[0x28223BE20](v40 - 8);
  v222 = type metadata accessor for DeviceEntity(0);
  v215 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v42 = (&v186 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v221 = sub_2528BE730();
  *v42 = v221;
  sub_2528BEC20();
  v220 = sub_2528BE730();
  v42[1] = v220;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  v218 = sub_2528BE700();
  v42[2] = v218;
  sub_2528BEC20();
  v219 = sub_2528BE730();
  v42[3] = v219;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  v213 = sub_2528BE730();
  v42[4] = v213;
  sub_2528BEC20();
  v214 = sub_2528BE730();
  v42[5] = v214;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v43 = a2;
  v217 = sub_2528BE730();
  v42[6] = v217;
  v44 = sub_2528BF390();
  v45 = v232;
  sub_2528BF4C0();
  v46 = *(v44 + 16);
  v226 = v43;
  if (!v46 || (v47 = sub_252785C40(v36), (v48 & 1) == 0))
  {

    v34 = *(isa + 1);
    (v34)(v36, v230);
    goto LABEL_6;
  }

  v190 = v18;
  v49 = *(v44 + 56) + *(v37 + 9) * v47;
  v50 = v39;
  v51 = v39;
  v52 = v206;
  (*(v37 + 2))(v50, v49, v206);
  v53 = isa;
  v225 = *(isa + 1);
  v198 = isa + 8;
  v225(v36, v230);

  v54 = v210;
  sub_2528BF460();
  sub_2527FF5AC(v54, &v233);
  if (v233 == 33)
  {
    (*(v37 + 1))(v51, v52);
    v34 = v225;
LABEL_6:
    v55 = v231;
    v42 = v228;
    v44 = v224;
    if (qword_27F4FBB40 != -1)
    {
LABEL_54:
      swift_once();
    }

    v56 = sub_2528C08B0();
    __swift_project_value_buffer(v56, qword_27F5025C8);
    v57 = v42[2];
    v58 = v211;
    v57(v211, v45, v55);
    v59 = v212;
    v57(v212, v45, v55);
    v57(v44, v45, v55);
    v57(v227, v45, v55);
    v60 = sub_2528C0890();
    v61 = sub_2528C0CE0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v233 = v223;
      *v62 = 136315906;
      sub_25283C680(&qword_27F4FF518, MEMORY[0x277D15AC0], MEMORY[0x277D15AD8]);
      LODWORD(v209) = v61;
      v63 = sub_2528C1040();
      v65 = v64;
      v225 = v34;
      v67 = v42[1];
      v66 = (v42 + 1);
      v208 = (v66 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v67(v58, v55);
      v206 = v67;
      v68 = sub_2527389AC(v63, v65, &v233);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2080;
      v69 = v207;
      sub_2528BF4C0();
      sub_25283C680(&qword_27F4FD070, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v70 = v230;
      v71 = sub_2528C1040();
      v73 = v72;
      v225(v69, v70);
      v67(v59, v55);
      v74 = sub_2527389AC(v71, v73, &v233);

      v75 = v62;
      *(v62 + 14) = v74;
      *(v62 + 22) = 2080;
      v230 = v60;
      v76 = v210;
      v77 = v224;
      sub_2528BF460();
      sub_25283C680(&qword_27F4FF520, MEMORY[0x277D158E0], MEMORY[0x277D15900]);
      v78 = v205;
      v79 = sub_2528C1040();
      v81 = v80;
      v228 = v66;
      v82 = *(v204 + 8);
      v82(v76, v78);
      v83 = v77;
      v84 = v206;
      (v206)(v83, v231);
      v85 = sub_2527389AC(v79, v81, &v233);

      *(v75 + 24) = v85;
      *(v75 + 32) = 2080;
      v86 = v75;
      v87 = v227;
      sub_2528BF460();
      v88 = sub_2528C1040();
      v90 = v89;
      v82(v76, v78);
      v55 = v231;
      v84(v87, v231);
      v91 = v222;
      v92 = sub_2527389AC(v88, v90, &v233);

      *(v86 + 34) = v92;
      v93 = v230;
      _os_log_impl(&dword_252711000, v230, v209, "Unable to create DeviceEntity for %s with accessoryID: %s serviceKind: %s primaryServiceKind: %s", v86, 0x2Au);
      v94 = v223;
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v94, -1, -1);
      MEMORY[0x2530A8D80](v86, -1, -1);

      v95 = sub_2528BF400();
      (*(*(v95 - 8) + 8))(v226, v95);
    }

    else
    {

      v96 = sub_2528BF400();
      (*(*(v96 - 8) + 8))(v226, v96);
      v84 = v42[1];
      v84(v227, v55);
      v84(v44, v55);
      v84(v59, v55);
      v84(v58, v55);
      v91 = v222;
    }

    v84(v232, v55);

    return (*(v215 + 56))(v216, 1, 1, v91);
  }

  LODWORD(v211) = v233;
  v187 = v51;
  v210 = v37;
  v98 = sub_2528BF3B0();
  v99 = v98 + 64;
  v100 = 1 << *(v98 + 32);
  v101 = -1;
  if (v100 < 64)
  {
    v101 = ~(-1 << v100);
  }

  v102 = v101 & *(v98 + 64);
  v45 = (v100 + 63) >> 6;
  v212 = v53 + 16;
  v224 = (v228 + 7);
  v227 = v98;

  v103 = 0;
  v104 = &qword_27F4FF4F0;
  v55 = v230;
  while (1)
  {
    if (!v102)
    {
      v108 = isa;
      while (1)
      {
        v109 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          break;
        }

        if (v109 >= v45)
        {

          v125 = v195;
          v124 = v196;
          v126 = v190;
          (*(v195 + 56))(v196, 1, 1, v190);
          v123 = v225;
          goto LABEL_26;
        }

        v102 = *(v99 + 8 * v109);
        ++v103;
        if (v102)
        {
          v106 = v55;
          v44 = v34;
          v107 = v104;
          v103 = v109;
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_53;
    }

    v106 = v55;
    v44 = v34;
    v107 = v104;
    v108 = isa;
LABEL_22:
    v110 = __clz(__rbit64(v102)) | (v103 << 6);
    v111 = v227;
    v112 = v209;
    (*(v108 + 2))(v209, *(v227 + 6) + *(v108 + 9) * v110, v106);
    v113 = *(v111 + 7);
    v114 = sub_2528C0020();
    (*(*(v114 - 8) + 16))(&v112[*(v190 + 48)], v113 + *(*(v114 - 8) + 72) * v110, v114);
    v115 = v112;
    v104 = v107;
    sub_25274AA0C(v115, v223, v107, &qword_2528D3578);
    v116 = sub_2528BFFE0();
    v34 = v44;
    sub_2528BF900();
    if (*(v116 + 16))
    {
      v117 = sub_252785C40(v44);
      if (v118)
      {
        break;
      }
    }

    v102 &= v102 - 1;

    v55 = v230;
    v225(v44, v230);
    v105 = v208;
    (*v224)(v208, 1, 1, v231);
    sub_2527213D8(v105, &qword_27F4FD670, &qword_2528D3570);
    sub_2527213D8(v223, v104, &qword_2528D3578);
  }

  v119 = v228 + 2;
  v120 = v208;
  v121 = v231;
  (v228[2])(v208, *(v116 + 56) + v228[9] * v117, v231);
  v122 = v230;
  v123 = v225;
  v225(v44, v230);
  v55 = v122;

  (v119[5])(v120, 0, 1, v121);
  sub_2527213D8(v120, &qword_27F4FD670, &qword_2528D3570);

  v124 = v196;
  sub_25274AA0C(v223, v196, &qword_27F4FF4F0, &qword_2528D3578);
  v125 = v195;
  v126 = v190;
  (*(v195 + 56))(v124, 0, 1, v190);
LABEL_26:

  v127 = (*(v125 + 48))(v124, 1, v126);
  v128 = v232;
  v129 = v222;
  if (v127 == 1)
  {
    sub_2527213D8(v124, &qword_27F4FF4F8, &qword_2528D3580);
    v130 = sub_2528C0020();
    v131 = v202;
    (*(*(v130 - 8) + 56))(v202, 1, 1, v130);
  }

  else
  {
    v132 = *(v126 + 48);
    v133 = sub_2528C0020();
    v134 = *(v133 - 8);
    v131 = v202;
    (*(v134 + 32))(v202, v124 + v132, v133);
    (*(v134 + 56))(v131, 0, 1, v133);
    v123(v124, v55);
  }

  v135 = v187;
  *(v42 + *(v129 + 52)) = sub_25281F3E0(v131);
  v42[7] = sub_25281F600(v131, v128, v135);
  v136 = v200;
  sub_2528BF2F0();
  sub_2528BEE00();
  v137 = v201 + 8;
  isa = *(v201 + 8);
  (isa)(v136, v203);
  v138 = v207;
  sub_2528BF4C0();
  v139 = sub_2528BECB0();
  v141 = v140;
  v142 = v225;
  v225(v138, v55);
  v233 = v139;
  v234 = v141;
  sub_2528BE6C0();
  sub_2528BF900();
  v143 = sub_2528BECB0();
  v145 = v144;
  v142(v138, v55);
  v233 = v143;
  v234 = v145;
  sub_2528BE6C0();
  sub_25281F8E4(v128, v187, v211, &v233);
  sub_2528BE6C0();
  v233 = sub_2528BF950();
  v234 = v146;
  sub_2528BE6C0();
  sub_2528BF2F0();
  v147 = sub_2528BEE20();
  v149 = v148;
  v150 = v136;
  v151 = v137;
  (isa)(v150, v203);
  v233 = v147;
  v234 = v149;
  sub_2528BE6C0();
  v152 = sub_2528BF320();
  v153 = v199;
  sub_2528BF980();
  if (*(v152 + 16) && (v154 = sub_252785C40(v153), (v155 & 1) != 0))
  {
    v44 = v191;
    v156 = v188;
    v157 = v192;
    (*(v191 + 16))(v188, *(v152 + 56) + *(v191 + 72) * v154, v192);

    v158 = sub_2528BEFD0();
    (*(v44 + 8))(v156, v157);
    if (v158)
    {
      v201 = v151;
      v159 = v158 + 56;
      v160 = 1 << *(v158 + 32);
      v161 = -1;
      if (v160 < 64)
      {
        v161 = ~(-1 << v160);
      }

      v34 = v161 & *(v158 + 56);
      v55 = ((v160 + 63) >> 6);
      v223 = v197 + 16;
      v221 = v197 + 8;

      v45 = 0;
      v162 = MEMORY[0x277D84F90];
      v224 = v158;
      if (v34)
      {
        goto LABEL_39;
      }

      while (1)
      {
        v163 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (v163 >= v55)
        {
          v225(v199, v230);

          v128 = v232;
          v173 = v222;
          goto LABEL_47;
        }

        v34 = *(v159 + 8 * v163);
        ++v45;
        if (v34)
        {
          v45 = v163;
          do
          {
LABEL_39:
            v164 = v197;
            v165 = *(v158 + 48) + *(v197 + 72) * (__clz(__rbit64(v34)) | (v45 << 6));
            v166 = v193;
            v167 = v194;
            (*(v197 + 16))(v193, v165, v194);
            v227 = sub_2528BF050();
            v169 = v168;
            (*(v164 + 8))(v166, v167);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v162 = sub_252737D40(0, *(v162 + 2) + 1, 1, v162);
            }

            v171 = *(v162 + 2);
            v170 = *(v162 + 3);
            v44 = v171 + 1;
            if (v171 >= v170 >> 1)
            {
              v162 = sub_252737D40((v170 > 1), v171 + 1, 1, v162);
            }

            v34 &= v34 - 1;
            *(v162 + 2) = v44;
            v172 = &v162[16 * v171];
            *(v172 + 4) = v227;
            *(v172 + 5) = v169;
            v158 = v224;
          }

          while (v34);
        }
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
  }

  v225(v153, v55);
  v162 = MEMORY[0x277D84F90];
  v173 = v222;
LABEL_47:
  v174 = sub_252743FCC(v162);

  v233 = v174;
  sub_2528BE6C0();
  v175 = sub_2528BF9A0();
  v177 = v206;
  if (v176)
  {
    v178 = v226;
  }

  else
  {
    v179 = v200;
    v178 = v226;
    sub_2528BF2F0();
    v180 = v189;
    sub_2528BEDE0();
    (isa)(v179, v203);
    v181 = sub_2528BF020();
    v183 = v182;
    (*(v191 + 8))(v180, v192);
    v176 = v183;
    v175 = v181;
  }

  v233 = v175;
  v234 = v176;
  sub_2528BE6C0();
  v184 = sub_2528BF400();
  (*(*(v184 - 8) + 8))(v178, v184);
  sub_2527213D8(v202, &qword_27F4FD660, &qword_2528D4D00);
  (*(v210 + 1))(v187, v177);
  v185 = v216;
  sub_25283B8C4(v42, v216, type metadata accessor for DeviceEntity);
  (*(v215 + 56))(v185, 0, 1, v173);
  (v228[1])(v128, v231);
  return sub_25283B92C(v42, type metadata accessor for DeviceEntity);
}

uint64_t DeviceEntity.init(staticEndpoint:staticMatterDevice:snapshot:)@<X0>(void (*a1)(char *, void *)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v201 = a2;
  v193 = a4;
  v198 = sub_2528BFF00();
  v200 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v166 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_2528BFB20();
  v191 = *(v192 - 8);
  v7 = MEMORY[0x28223BE20](v192);
  v203 = (&v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v186 = &v159 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v185 = &v159 - v12;
  MEMORY[0x28223BE20](v11);
  v170 = &v159 - v13;
  v172 = sub_2528BF070();
  v175 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v171 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2528BF290();
  MEMORY[0x28223BE20](v15 - 8);
  v162 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_2528BFA70();
  v161 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v160 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_2528BEE30();
  v165 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v164 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD658, &qword_2528D35A0);
  MEMORY[0x28223BE20](v19 - 8);
  v168 = &v159 - v20;
  v174 = sub_2528BFC70();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v167 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC650, &qword_2528C4768);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v159 - v23;
  v187 = sub_2528BFCF0();
  v179 = *(v187 - 8);
  v25 = MEMORY[0x28223BE20](v187);
  v27 = &v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v176 = &v159 - v28;
  v204 = sub_2528BECF0();
  v29 = *(v204 - 1);
  v177 = v29;
  v30 = MEMORY[0x28223BE20](v204);
  v183 = &v159 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v159 - v32;
  v178 = sub_2528BF030();
  v180 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v184 = &v159 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2528BEC40();
  MEMORY[0x28223BE20](v35 - 8);
  v199 = type metadata accessor for DeviceEntity(0);
  v190 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v37 = (&v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v197 = sub_2528BE730();
  *v37 = v197;
  sub_2528BEC20();
  v196 = sub_2528BE730();
  v37[1] = v196;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  v194 = sub_2528BE700();
  v37[2] = v194;
  sub_2528BEC20();
  v195 = sub_2528BE730();
  v37[3] = v195;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  v188 = sub_2528BE730();
  v37[4] = v188;
  sub_2528BEC20();
  v189 = sub_2528BE730();
  v37[5] = v189;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v38 = sub_2528BE730();
  v37[6] = v38;
  v202 = a3;
  v39 = sub_2528BF320();
  v205 = a1;
  sub_2528BFB00();
  if (!*(v39 + 16) || (v40 = sub_252785C40(v33), (v41 & 1) == 0))
  {

    v182 = *(v29 + 8);
    v182(v33, v204);
LABEL_7:
    v47 = v205;
    v48 = v192;
    v49 = v191;
    v37 = v203;
    v50 = v186;
    v51 = v185;
    if (qword_27F4FBB40 == -1)
    {
LABEL_8:
      v52 = sub_2528C08B0();
      __swift_project_value_buffer(v52, qword_27F5025C8);
      v53 = *(v49 + 16);
      v53(v51, v47, v48);
      v53(v50, v47, v48);
      v53(v37, v47, v48);
      v54 = sub_2528C0890();
      v55 = sub_2528C0CF0();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        v206 = v184;
        *v56 = 136315650;
        sub_25283C680(&qword_27F4FF528, MEMORY[0x277D15C30], MEMORY[0x277D15C50]);
        v57 = sub_2528C1040();
        LODWORD(v180) = v55;
        v58 = v57;
        v60 = v59;
        v61 = *(v49 + 8);
        v61(v51, v48);
        v62 = sub_2527389AC(v58, v60, &v206);

        *(v56 + 4) = v62;
        v181 = v38;
        *(v56 + 12) = 2080;
        v63 = v183;
        sub_2528BFB00();
        sub_25283C680(&qword_27F4FD070, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v64 = v204;
        v65 = sub_2528C1040();
        v67 = v66;
        v182(v63, v64);
        v61(v50, v48);
        v68 = sub_2527389AC(v65, v67, &v206);

        *(v56 + 14) = v68;
        *(v56 + 22) = 2080;
        v69 = v203;
        sub_2528BFA90();
        sub_25283C680(&qword_27F4FC638, MEMORY[0x277D15F48], MEMORY[0x277D15F58]);
        v70 = sub_2528C0C80();
        v72 = v71;

        v61(v69, v48);
        v73 = sub_2527389AC(v70, v72, &v206);

        *(v56 + 24) = v73;
        _os_log_impl(&dword_252711000, v54, v180, "Unable to create DeviceEntity for %s with roomID: %s deviceTypes: %s", v56, 0x20u);
        v74 = v184;
        swift_arrayDestroy();
        MEMORY[0x2530A8D80](v74, -1, -1);
        MEMORY[0x2530A8D80](v56, -1, -1);

        v75 = sub_2528BF400();
        (*(*(v75 - 8) + 8))(v202, v75);
        (*(v200 + 8))(v201, v198);
        v61(v205, v48);
      }

      else
      {

        v76 = sub_2528BF400();
        (*(*(v76 - 8) + 8))(v202, v76);
        (*(v200 + 8))(v201, v198);
        v77 = *(v49 + 8);
        v77(v47, v48);
        v77(v37, v48);
        v77(v50, v48);
        v77(v51, v48);
      }

      v78 = v193;
      v79 = v190;
LABEL_12:

      return (*(v79 + 56))(v78, 1, 1, v199);
    }

LABEL_54:
    swift_once();
    goto LABEL_8;
  }

  v181 = v38;
  v42 = v180;
  v43 = v184;
  v44 = v178;
  (*(v180 + 16))(v184, *(v39 + 56) + *(v180 + 72) * v40, v178);
  v182 = *(v29 + 8);
  v182(v33, v204);

  sub_2528BFAD0();
  v45 = v179;
  v46 = v187;
  if ((*(v179 + 48))(v24, 1, v187) == 1)
  {
    (*(v42 + 8))(v43, v44);
    sub_2527213D8(v24, &qword_27F4FC650, &qword_2528C4768);
LABEL_5:
    v38 = v181;
    goto LABEL_7;
  }

  v81 = v176;
  (*(v45 + 32))(v176, v24, v46);
  (*(v45 + 16))(v27, v81, v46);
  v82 = (*(v45 + 88))(v27, v46);
  v83 = 15;
  v84 = v201;
  if (v82 == *MEMORY[0x277D15ED0])
  {
    v85 = v200;
    v86 = v170;
  }

  else
  {
    v85 = v200;
    v86 = v170;
    if (v82 != *MEMORY[0x277D15F00] && v82 != *MEMORY[0x277D15F28] && v82 != *MEMORY[0x277D15F18])
    {
      v83 = 26;
      if (v82 != *MEMORY[0x277D15F08] && v82 != *MEMORY[0x277D15F10])
      {
        v83 = 20;
        if (v82 != *MEMORY[0x277D15F38] && v82 != *MEMORY[0x277D15EF0])
        {
          v83 = 29;
          if (v82 != *MEMORY[0x277D15F20] && v82 != *MEMORY[0x277D15ED8])
          {
            if (v82 == *MEMORY[0x277D15F30])
            {
              v83 = 17;
            }

            else
            {
              if (v82 != *MEMORY[0x277D15EE0])
              {
                v157 = *(v45 + 8);
                v158 = v187;
                v157(v176, v187);
                (*(v180 + 8))(v184, v44);
                v157(v27, v158);
                goto LABEL_5;
              }

              v83 = 21;
            }
          }
        }
      }
    }
  }

  LODWORD(v203) = v83;
  v87 = sub_2528BFED0();
  v88 = v168;
  StateSnapshot.staticAccessory(withNodeID:)(v87, v168);
  v89 = v173;
  v90 = v174;
  if ((*(v173 + 48))(v88, 1, v174) == 1)
  {
    sub_2527213D8(v88, &qword_27F4FD658, &qword_2528D35A0);
    v91 = v205;
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v92 = sub_2528C08B0();
    __swift_project_value_buffer(v92, qword_27F5025C8);
    v93 = v191;
    v94 = v86;
    v95 = v86;
    v96 = v192;
    (*(v191 + 16))(v94, v91, v192);
    v97 = v166;
    v98 = v198;
    (*(v85 + 16))(v166, v84, v198);
    v99 = sub_2528C0890();
    v100 = sub_2528C0CF0();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v206 = v102;
      *v101 = 136315394;
      sub_25283C680(&qword_27F4FF528, MEMORY[0x277D15C30], MEMORY[0x277D15C50]);
      v103 = sub_2528C1040();
      v105 = v104;
      v204 = *(v93 + 8);
      (v204)(v95, v96);
      v106 = sub_2527389AC(v103, v105, &v206);

      *(v101 + 4) = v106;
      *(v101 + 12) = 2048;
      v107 = v166;
      v108 = sub_2528BFED0();
      v109 = *(v200 + 8);
      v110 = v107;
      v111 = v198;
      v109(v110, v198);
      *(v101 + 14) = v108;
      _os_log_impl(&dword_252711000, v99, v100, "Unable to create DeviceEntity for %s because couldn't find a staticAccessory for nodeID %llu", v101, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v102);
      MEMORY[0x2530A8D80](v102, -1, -1);
      MEMORY[0x2530A8D80](v101, -1, -1);

      v112 = sub_2528BF400();
      (*(*(v112 - 8) + 8))(v202, v112);
      v109(v201, v111);
      (v204)(v205, v96);
    }

    else
    {
      v149 = *(v85 + 8);
      v149(v97, v98);

      v150 = sub_2528BF400();
      (*(*(v150 - 8) + 8))(v202, v150);
      v149(v84, v98);
      v151 = *(v93 + 8);
      v151(v205, v96);
      v151(v95, v96);
    }

    (*(v179 + 8))(v176, v187);
    (*(v180 + 8))(v184, v178);

    v78 = v193;
    v79 = v190;
    goto LABEL_12;
  }

  (*(v89 + 32))(v167, v88, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2528C3910;
  *(inited + 32) = sub_2528BFEC0();
  *(inited + 40) = v114;
  v115 = sub_252749DC8(inited);
  swift_setDeallocating();
  sub_252836884(inited + 32);
  *(v37 + *(v199 + 52)) = v115;
  v37[7] = MEMORY[0x277D84FA0];
  v116 = v164;
  sub_2528BF2F0();
  sub_2528BEE00();
  v186 = *(v165 + 8);
  (v186)(v116, v169);
  v117 = v183;
  sub_2528BFC50();
  v118 = sub_2528BECB0();
  v120 = v119;
  v121 = v204;
  v47 = v182;
  v182(v117, v204);
  v206 = v118;
  v207 = v120;
  sub_2528BE6C0();
  v122 = v205;
  sub_2528BFAB0();
  v123 = v160;
  sub_2528BFA50();
  sub_2528BFA60();
  (*(v161 + 8))(v123, v163);
  v124 = sub_2528BECB0();
  v126 = v125;
  v127 = v117;
  v128 = v122;
  v38 = v202;
  v47(v127, v121);
  v206 = v124;
  v207 = v126;
  sub_2528BE6C0();
  LOWORD(v206) = v203;
  sub_2528BE6C0();
  v206 = sub_2528BFAE0();
  v207 = v129;
  sub_2528BE6C0();
  sub_2528BF2F0();
  v130 = sub_2528BEE20();
  v132 = v131;
  (v186)(v116, v169);
  v206 = v130;
  v207 = v132;
  sub_2528BE6C0();
  v48 = v184;
  v133 = sub_2528BEFD0();
  if (v133)
  {
    v134 = v133;
    v50 = (v133 + 56);
    v135 = 1 << *(v133 + 32);
    v136 = -1;
    if (v135 < 64)
    {
      v136 = ~(-1 << v135);
    }

    v49 = v136 & *(v133 + 56);
    v51 = (v135 + 63) >> 6;
    v203 = (v175 + 16);
    v197 = v175 + 8;

    v138 = 0;
    v139 = MEMORY[0x277D84F90];
    v196 = v137;
    if (v49)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v140 = v138 + 1;
      if (__OFADD__(v138, 1))
      {
        break;
      }

      if (v140 >= v51)
      {

        v128 = v205;
        v148 = v201;
        v38 = v202;
        v48 = v184;
        goto LABEL_49;
      }

      v49 = *&v50[8 * v140];
      ++v138;
      if (v49)
      {
        v138 = v140;
        do
        {
LABEL_39:
          v141 = v175;
          v142 = *(v134 + 48) + *(v175 + 72) * (__clz(__rbit64(v49)) | (v138 << 6));
          v143 = v171;
          v47 = v172;
          (*(v175 + 16))(v171, v142, v172);
          v204 = sub_2528BF050();
          v38 = v144;
          (*(v141 + 8))(v143, v47);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v139 = sub_252737D40(0, *(v139 + 2) + 1, 1, v139);
          }

          v146 = *(v139 + 2);
          v145 = *(v139 + 3);
          v48 = (v146 + 1);
          if (v146 >= v145 >> 1)
          {
            v139 = sub_252737D40((v145 > 1), v146 + 1, 1, v139);
          }

          v49 &= v49 - 1;
          *(v139 + 2) = v48;
          v147 = &v139[16 * v146];
          *(v147 + 4) = v204;
          *(v147 + 5) = v38;
          v134 = v196;
        }

        while (v49);
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  v139 = MEMORY[0x277D84F90];
  v148 = v201;
LABEL_49:
  v152 = v174;
  v153 = sub_252743FCC(v139);

  v206 = v153;
  sub_2528BE6C0();
  v206 = sub_2528BF020();
  v207 = v154;
  sub_2528BE6C0();
  v155 = sub_2528BF400();
  (*(*(v155 - 8) + 8))(v38, v155);
  (*(v200 + 8))(v148, v198);
  (*(v191 + 8))(v128, v192);
  (*(v173 + 8))(v167, v152);
  (*(v179 + 8))(v176, v187);
  (*(v180 + 8))(v48, v178);
  v156 = v193;
  sub_25283B8C4(v37, v193, type metadata accessor for DeviceEntity);
  (*(v190 + 56))(v156, 0, 1, v199);
  return sub_25283B92C(v37, type metadata accessor for DeviceEntity);
}

uint64_t static DeviceEntity.createAccessoryControlPath(from:secondaryAccessoryControlDestination:snapshot:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25281EA40;

  return sub_25283980C(a1, a2, a3);
}

uint64_t sub_25281EA40(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void *sub_25281EB68@<X0>(void *a1@<X8>)
{
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void (*DeviceEntity.id.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE6A0();
  return sub_25272DDC8;
}

uint64_t type metadata accessor for DeviceEntity(uint64_t a1)
{
  result = qword_27F4FF5F0;
  if (!qword_27F4FF5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25281EE00()
{
  result = qword_27F4FF508;
  if (!qword_27F4FF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF508);
  }

  return result;
}

uint64_t DeviceEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2528C09B0();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  sub_2528BE6B0();
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_2528BE8D0();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_2528BE900();
}

uint64_t sub_25281F0E8()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FF478);
  __swift_project_value_buffer(v0, qword_27F4FF478);
  return sub_2528BE9D0();
}

uint64_t static DeviceEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FF478);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t DeviceEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  swift_getKeyPath();
  *a1 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  a1[1] = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  swift_getKeyPath();
  a1[2] = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF530, &qword_2528D3648);
  swift_getKeyPath();
  a1[3] = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  swift_getKeyPath();
  a1[4] = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3F8, &qword_2528D3310);
  swift_getKeyPath();
  result = sub_2528BE9C0();
  a1[5] = result;
  return result;
}

uint64_t static DeviceEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F4FB8C0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27F4FF498;
  v2 = qword_27F4FF4A0;
  v3 = unk_27F4FF4A8;
  v4 = qword_27F4FF4B0;
  v5 = unk_27F4FF4B8;
  *a1 = qword_27F4FF490;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();

  return sub_2528BEA50();
}

uint64_t sub_25281F3E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD660, &qword_2528D4D00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_2528C0020();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D84FA0];
  sub_25272006C(a1, v4, &qword_27F4FD660, &qword_2528D4D00);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2527213D8(v4, &qword_27F4FD660, &qword_2528D4D00);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_2528C0000();
    sub_25273A0C4(&v15, v9, v10);

    (*(v6 + 8))(v8, v5);
  }

  if (sub_2528BF9B0())
  {
    v11 = sub_2528BFC60();
    sub_25273A0C4(&v15, v11, v12);
  }

  return v16;
}

uint64_t sub_25281F600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = a3;
  v23[2] = a2;
  v4 = sub_2528BECF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD660, &qword_2528D4D00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = sub_2528C0020();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x277D84FA0];
  sub_25272006C(a1, v10, &qword_27F4FD660, &qword_2528D4D00);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2527213D8(v10, &qword_27F4FD660, &qword_2528D4D00);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_2528BFFF0();
    v15 = sub_2528BECB0();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    sub_25273A0C4(&v24, v15, v17);

    (*(v12 + 8))(v14, v11);
  }

  v18 = v4;
  if (sub_2528BF9B0())
  {
    sub_2528BFC50();
    v19 = sub_2528BECB0();
    v21 = v20;
    (*(v5 + 8))(v7, v18);
    sub_25273A0C4(&v24, v19, v21);
  }

  return v25;
}

uint64_t sub_25281F8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, __int16 *a4@<X8>)
{
  v218 = a3;
  v217 = a2;
  v241 = a4;
  v260 = sub_2528BF9D0();
  v255 = *(v260 - 8);
  v5 = MEMORY[0x28223BE20](v260);
  v247 = &v207[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v210 = &v207[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v257 = &v207[-v10];
  MEMORY[0x28223BE20](v9);
  v211 = &v207[-v11];
  v245 = sub_2528BFA80();
  v242 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v232 = &v207[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF938, &qword_2528D41F8);
  v13 = MEMORY[0x28223BE20](v244);
  v216 = &v207[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v224 = &v207[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v222 = &v207[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v236 = &v207[-v20];
  MEMORY[0x28223BE20](v19);
  v235 = &v207[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF940, &qword_2528D4200);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v215 = &v207[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v213 = &v207[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v214 = &v207[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v220 = &v207[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v223 = &v207[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v231 = &v207[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v212 = &v207[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v230 = &v207[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v221 = &v207[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v219 = &v207[-v42];
  v43 = MEMORY[0x28223BE20](v41);
  v238 = &v207[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v234 = &v207[-v46];
  v47 = MEMORY[0x28223BE20](v45);
  v233 = &v207[-v48];
  v49 = MEMORY[0x28223BE20](v47);
  v239 = &v207[-v50];
  MEMORY[0x28223BE20](v49);
  v240 = &v207[-v51];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF948, &qword_2528D4208);
  v53 = MEMORY[0x28223BE20](v52 - 8);
  v254 = &v207[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v53);
  v56 = &v207[-v55];
  v57 = sub_2528BF240();
  v58 = *(v57 - 8);
  v59 = MEMORY[0x28223BE20](v57);
  v249 = &v207[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = MEMORY[0x28223BE20](v59);
  v248 = &v207[-v62];
  v63 = MEMORY[0x28223BE20](v61);
  v246 = &v207[-v64];
  v65 = MEMORY[0x28223BE20](v63);
  v256 = &v207[-v66];
  v67 = MEMORY[0x28223BE20](v65);
  v228 = &v207[-v68];
  v69 = MEMORY[0x28223BE20](v67);
  v229 = &v207[-v70];
  v71 = MEMORY[0x28223BE20](v69);
  v73 = &v207[-v72];
  v74 = MEMORY[0x28223BE20](v71);
  v243 = &v207[-v75];
  v76 = MEMORY[0x28223BE20](v74);
  v253 = &v207[-v77];
  v78 = MEMORY[0x28223BE20](v76);
  v237 = &v207[-v79];
  v80 = MEMORY[0x28223BE20](v78);
  v82 = &v207[-v81];
  MEMORY[0x28223BE20](v80);
  v84 = &v207[-v83];
  sub_2528BF460();
  sub_2528BF420();
  v85 = *(v58 + 48);
  v86 = v85(v56, 1, v57);
  v250 = a1;
  if (v86 == 1)
  {
    v87 = v58;
    sub_2528BF460();
    if (v85(v56, 1, v57) != 1)
    {
      sub_2527213D8(v56, &qword_27F4FF948, &qword_2528D4208);
    }
  }

  else
  {
    v87 = v58;
    (*(v58 + 32))(v82, v56, v57);
  }

  sub_25283C680(&qword_27F4FF950, MEMORY[0x277D158E0], MEMORY[0x277D158F0]);
  v88 = sub_2528C0930();
  v89 = *(v87 + 8);
  v89(v82, v57);
  v258 = v87 + 8;
  v259 = v89;
  v89(v84, v57);
  if ((v88 & 1) == 0)
  {
    v90 = v237;
    sub_2528BF460();
    sub_2527FF5AC(v90, &v263);
    v91 = v263;
    if (v263 != 33)
    {
      v92 = v254;
      sub_2528BF420();
      if (v85(v92, 1, v57) == 1)
      {
        v93 = v253;
        sub_2528BF460();
        if (v85(v92, 1, v57) != 1)
        {
          sub_2527213D8(v92, &qword_27F4FF948, &qword_2528D4208);
        }
      }

      else
      {
        v93 = v253;
        (*(v87 + 32))(v253, v92, v57);
      }

      result = sub_2527FF5AC(v93, &v263);
      if (v263 != 33)
      {
        v118 = v91 | (v263 << 8) | 0x8000;
        goto LABEL_86;
      }
    }
  }

  sub_2528BF460();
  v96 = v87 + 104;
  v95 = *(v87 + 104);
  v251 = *MEMORY[0x277D15850];
  v254 = v95;
  v95(v73);
  v97 = sub_25283C680(&qword_27F4FE890, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
  sub_2528C0AD0();
  v253 = v97;
  sub_2528C0AD0();
  v98 = MEMORY[0x277D15B88];
  v252 = v96;
  if (v263 == v261 && v264 == v262)
  {
    v99 = v259;
    v259(v73, v57);
    v99(v243, v57);
  }

  else
  {
    v100 = sub_2528C1060();
    v101 = v259;
    v259(v73, v57);
    v101(v243, v57);

    if ((v100 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v102 = v240;
  sub_2528BF5C0();
  v103 = *v98;
  v104 = v242;
  v105 = *(v242 + 104);
  v106 = v239;
  v107 = v245;
  v243 = v242 + 104;
  v226 = v105;
  v105(v239, v103, v245);
  v108 = *(v104 + 56);
  v227 = v104 + 56;
  v225 = v108;
  v108(v106, 0, 1, v107);
  v109 = *(v244 + 48);
  v110 = v235;
  sub_25272006C(v102, v235, &qword_27F4FF940, &qword_2528D4200);
  sub_25272006C(v106, &v110[v109], &qword_27F4FF940, &qword_2528D4200);
  v111 = *(v104 + 48);
  v112 = v111(v110, 1, v107);
  v209 = v104 + 48;
  if (v112 == 1)
  {
    sub_2527213D8(v106, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v102, &qword_27F4FF940, &qword_2528D4200);
    v113 = v111(&v110[v109], 1, v107) == 1;
    v114 = v110;
    v115 = v236;
    v116 = v238;
    v117 = v111;
    if (v113)
    {
      result = sub_2527213D8(v114, &qword_27F4FF940, &qword_2528D4200);
      v118 = 24087;
LABEL_86:
      *v241 = v118;
      return result;
    }

    goto LABEL_22;
  }

  v119 = v233;
  sub_25272006C(v110, v233, &qword_27F4FF940, &qword_2528D4200);
  v120 = v111(&v110[v109], 1, v107);
  v116 = v238;
  v117 = v111;
  if (v120 == 1)
  {
    sub_2527213D8(v239, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v240, &qword_27F4FF940, &qword_2528D4200);
    (*(v242 + 8))(v119, v107);
    v114 = v110;
    v115 = v236;
LABEL_22:
    sub_2527213D8(v114, &qword_27F4FF938, &qword_2528D41F8);
    goto LABEL_23;
  }

  v131 = v242;
  v132 = &v110[v109];
  v133 = v110;
  v134 = v232;
  (*(v242 + 32))(v232, v132, v107);
  sub_25283C680(&qword_27F4FF958, MEMORY[0x277D15B98], MEMORY[0x277D15BA8]);
  v208 = sub_2528C0930();
  v135 = *(v131 + 8);
  v135(v134, v107);
  sub_2527213D8(v239, &qword_27F4FF940, &qword_2528D4200);
  sub_2527213D8(v240, &qword_27F4FF940, &qword_2528D4200);
  v135(v233, v107);
  result = sub_2527213D8(v133, &qword_27F4FF940, &qword_2528D4200);
  v115 = v236;
  if (v208)
  {
    v118 = 24087;
    goto LABEL_86;
  }

LABEL_23:
  v121 = v234;
  sub_2528BF5C0();
  v122 = v245;
  v226(v116, *MEMORY[0x277D15B90], v245);
  v225(v116, 0, 1, v122);
  v123 = *(v244 + 48);
  sub_25272006C(v121, v115, &qword_27F4FF940, &qword_2528D4200);
  sub_25272006C(v116, v115 + v123, &qword_27F4FF940, &qword_2528D4200);
  if (v117(v115, 1, v122) == 1)
  {
    sub_2527213D8(v116, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v121, &qword_27F4FF940, &qword_2528D4200);
    v124 = v117(v115 + v123, 1, v122);
    v125 = v230;
    if (v124 == 1)
    {
      result = sub_2527213D8(v115, &qword_27F4FF940, &qword_2528D4200);
      v118 = 24073;
      goto LABEL_86;
    }
  }

  else
  {
    v126 = v219;
    sub_25272006C(v115, v219, &qword_27F4FF940, &qword_2528D4200);
    if (v117(v115 + v123, 1, v122) != 1)
    {
      v154 = v126;
      v155 = v242;
      v156 = v115 + v123;
      v157 = v232;
      (*(v242 + 32))(v232, v156, v122);
      sub_25283C680(&qword_27F4FF958, MEMORY[0x277D15B98], MEMORY[0x277D15BA8]);
      LODWORD(v240) = sub_2528C0930();
      v158 = *(v155 + 8);
      v158(v157, v122);
      sub_2527213D8(v238, &qword_27F4FF940, &qword_2528D4200);
      sub_2527213D8(v234, &qword_27F4FF940, &qword_2528D4200);
      v158(v154, v122);
      result = sub_2527213D8(v115, &qword_27F4FF940, &qword_2528D4200);
      v125 = v230;
      if (v240)
      {
        v118 = 24073;
        goto LABEL_86;
      }

      goto LABEL_29;
    }

    sub_2527213D8(v116, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v234, &qword_27F4FF940, &qword_2528D4200);
    (*(v242 + 8))(v126, v122);
    v125 = v230;
  }

  sub_2527213D8(v115, &qword_27F4FF938, &qword_2528D41F8);
LABEL_29:
  v127 = v221;
  sub_2528BF5C0();
  v128 = v245;
  v226(v125, *MEMORY[0x277D15B80], v245);
  v225(v125, 0, 1, v128);
  v129 = *(v244 + 48);
  v130 = v222;
  sub_25272006C(v127, v222, &qword_27F4FF940, &qword_2528D4200);
  sub_25272006C(v125, &v130[v129], &qword_27F4FF940, &qword_2528D4200);
  if (v117(v130, 1, v128) == 1)
  {
    sub_2527213D8(v125, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v127, &qword_27F4FF940, &qword_2528D4200);
    if (v117(&v130[v129], 1, v128) == 1)
    {
      result = sub_2527213D8(v130, &qword_27F4FF940, &qword_2528D4200);
      v118 = 24089;
      goto LABEL_86;
    }

    goto LABEL_36;
  }

  v136 = v212;
  sub_25272006C(v130, v212, &qword_27F4FF940, &qword_2528D4200);
  if (v117(&v130[v129], 1, v128) == 1)
  {
    sub_2527213D8(v125, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v127, &qword_27F4FF940, &qword_2528D4200);
    (*(v242 + 8))(v136, v128);
LABEL_36:
    sub_2527213D8(v130, &qword_27F4FF938, &qword_2528D41F8);
    goto LABEL_37;
  }

  v159 = v125;
  v160 = v242;
  v161 = &v130[v129];
  v162 = v232;
  (*(v242 + 32))(v232, v161, v128);
  sub_25283C680(&qword_27F4FF958, MEMORY[0x277D15B98], MEMORY[0x277D15BA8]);
  LODWORD(v243) = sub_2528C0930();
  v163 = *(v160 + 8);
  v163(v162, v128);
  sub_2527213D8(v159, &qword_27F4FF940, &qword_2528D4200);
  sub_2527213D8(v127, &qword_27F4FF940, &qword_2528D4200);
  v163(v136, v128);
  result = sub_2527213D8(v130, &qword_27F4FF940, &qword_2528D4200);
  if (v243)
  {
    v118 = 24089;
    goto LABEL_86;
  }

LABEL_37:
  v137 = v229;
  sub_2528BF460();
  v138 = v228;
  (v254)(v228, *MEMORY[0x277D15868], v57);
  sub_2528C0AD0();
  sub_2528C0AD0();
  if (v263 == v261 && v264 == v262)
  {
    v139 = v259;
    v259(v138, v57);
    v139(v137, v57);
  }

  else
  {
    v140 = sub_2528C1060();
    v141 = v138;
    v142 = v259;
    v259(v141, v57);
    v142(v137, v57);

    if ((v140 & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  result = sub_2528BF740();
  v143 = result;
  v144 = *(result + 16);
  if (v144)
  {
    v145 = 0;
    v243 = v255 + 16;
    v146 = (v255 + 8);
    while (v145 < *(v143 + 16))
    {
      (*(v255 + 16))(v257, v143 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v145, v260);
      sub_2528BF460();
      v147 = v246;
      (v254)(v246, v251, v57);
      sub_2528C0AD0();
      sub_2528C0AD0();
      if (v263 == v261 && v264 == v262)
      {
        v164 = v259;
        v259(v147, v57);
        v164(v256, v57);

LABEL_55:

        v165 = v255 + 32;
        v166 = v211;
        v167 = v260;
        (*(v255 + 32))(v211, v257, v260);
        v152 = v231;
        sub_2528BF5C0();
        (*(v165 - 24))(v166, v167);
        v153 = v245;
        v151 = v242;
        goto LABEL_56;
      }

      v148 = sub_2528C1060();
      v149 = v147;
      v150 = v259;
      v259(v149, v57);
      v150(v256, v57);

      if (v148)
      {
        goto LABEL_55;
      }

      ++v145;
      result = (*v146)(v257, v260);
      if (v144 == v145)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_88;
  }

LABEL_48:

  v151 = v242;
  v152 = v231;
  v153 = v245;
  (*(v242 + 56))(v231, 1, 1, v245);
LABEL_56:
  v168 = *MEMORY[0x277D15B88];
  v169 = *(v151 + 104);
  v170 = v223;
  v243 = v151 + 104;
  v240 = v169;
  v169(v223, v168, v153);
  v171 = *(v151 + 56);
  v239 = (v151 + 56);
  v238 = v171;
  (v171)(v170, 0, 1, v153);
  v172 = *(v244 + 48);
  v173 = v224;
  sub_25272006C(v152, v224, &qword_27F4FF940, &qword_2528D4200);
  sub_25272006C(v170, &v173[v172], &qword_27F4FF940, &qword_2528D4200);
  v174 = *(v151 + 48);
  v175 = (v174)(v173, 1, v153);
  v256 = (v151 + 48);
  v246 = v174;
  if (v175 == 1)
  {
    sub_2527213D8(v170, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v152, &qword_27F4FF940, &qword_2528D4200);
    if ((v174)(&v173[v172], 1, v153) == 1)
    {
      result = sub_2527213D8(v173, &qword_27F4FF940, &qword_2528D4200);
      v118 = 23;
      goto LABEL_86;
    }

    goto LABEL_61;
  }

  v176 = v220;
  sub_25272006C(v173, v220, &qword_27F4FF940, &qword_2528D4200);
  if ((v174)(&v173[v172], 1, v153) == 1)
  {
    sub_2527213D8(v170, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v231, &qword_27F4FF940, &qword_2528D4200);
    (*(v151 + 8))(v176, v153);
LABEL_61:
    sub_2527213D8(v173, &qword_27F4FF938, &qword_2528D41F8);
    goto LABEL_62;
  }

  v186 = &v173[v172];
  v187 = v232;
  (*(v151 + 32))(v232, v186, v153);
  sub_25283C680(&qword_27F4FF958, MEMORY[0x277D15B98], MEMORY[0x277D15BA8]);
  v188 = sub_2528C0930();
  v189 = *(v151 + 8);
  v189(v187, v153);
  sub_2527213D8(v170, &qword_27F4FF940, &qword_2528D4200);
  sub_2527213D8(v231, &qword_27F4FF940, &qword_2528D4200);
  v189(v220, v153);
  result = sub_2527213D8(v173, &qword_27F4FF940, &qword_2528D4200);
  if (v188)
  {
    v118 = 23;
    goto LABEL_86;
  }

LABEL_62:
  result = sub_2528BF740();
  v177 = result;
  v178 = *(result + 16);
  if (!v178)
  {
LABEL_69:

    v183 = v214;
    v184 = v245;
    v185 = v238;
    (v238)(v214, 1, 1, v245);
LABEL_74:
    v194 = v213;
    (v240)(v213, *MEMORY[0x277D15B90], v184);
    (v185)(v194, 0, 1, v184);
    v195 = *(v244 + 48);
    v196 = v216;
    sub_25272006C(v183, v216, &qword_27F4FF940, &qword_2528D4200);
    sub_25272006C(v194, &v196[v195], &qword_27F4FF940, &qword_2528D4200);
    v197 = v246;
    v198 = (v246)(v196, 1, v184);
    v199 = v215;
    if (v198 == 1)
    {
      sub_2527213D8(v194, &qword_27F4FF940, &qword_2528D4200);
      sub_2527213D8(v183, &qword_27F4FF940, &qword_2528D4200);
      if (v197(&v196[v195], 1, v184) == 1)
      {
        result = sub_2527213D8(v196, &qword_27F4FF940, &qword_2528D4200);
LABEL_85:
        v118 = 9;
        goto LABEL_86;
      }

      goto LABEL_79;
    }

    sub_25272006C(v196, v215, &qword_27F4FF940, &qword_2528D4200);
    if (v197(&v196[v195], 1, v184) == 1)
    {
      sub_2527213D8(v194, &qword_27F4FF940, &qword_2528D4200);
      sub_2527213D8(v183, &qword_27F4FF940, &qword_2528D4200);
      (*(v242 + 8))(v199, v184);
LABEL_79:
      sub_2527213D8(v196, &qword_27F4FF938, &qword_2528D41F8);
      goto LABEL_80;
    }

    v202 = v242;
    v203 = &v196[v195];
    v204 = v232;
    (*(v242 + 32))(v232, v203, v184);
    sub_25283C680(&qword_27F4FF958, MEMORY[0x277D15B98], MEMORY[0x277D15BA8]);
    v205 = sub_2528C0930();
    v206 = *(v202 + 8);
    v206(v204, v184);
    sub_2527213D8(v194, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v183, &qword_27F4FF940, &qword_2528D4200);
    v206(v199, v184);
    result = sub_2527213D8(v196, &qword_27F4FF940, &qword_2528D4200);
    if (v205)
    {
      goto LABEL_85;
    }

LABEL_80:
    v200 = v237;
    sub_2528BFC20();
    result = sub_2527FF5AC(v200, &v263);
    v201 = v263;
    if (v263 == 33 || (result = sub_2528BF9B0(), (result & 1) != 0))
    {
      v118 = v218;
    }

    else
    {
      v118 = v201 | (v218 << 8) | 0x4000;
    }

    goto LABEL_86;
  }

  v179 = 0;
  v257 = (v255 + 16);
  v180 = (v255 + 8);
  v181 = v259;
  while (v179 < *(v177 + 16))
  {
    (*(v255 + 16))(v247, v177 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v179, v260);
    sub_2528BF460();
    (v254)(v249, v251, v57);
    sub_2528C0AD0();
    sub_2528C0AD0();
    if (v263 == v261 && v264 == v262)
    {
      v190 = v259;
      v259(v249, v57);
      v190(v248, v57);

LABEL_73:

      v191 = v255 + 32;
      v192 = v210;
      v193 = v260;
      (*(v255 + 32))(v210, v247, v260);
      v183 = v214;
      sub_2528BF5C0();
      (*(v191 - 24))(v192, v193);
      v184 = v245;
      v185 = v238;
      goto LABEL_74;
    }

    v182 = sub_2528C1060();
    v181(v249, v57);
    v181(v248, v57);

    if (v182)
    {
      goto LABEL_73;
    }

    ++v179;
    result = (*v180)(v247, v260);
    if (v178 == v179)
    {
      goto LABEL_69;
    }
  }

LABEL_88:
  __break(1u);
  return result;
}

uint64_t DeviceEntity.init(staticServiceGroup:snapshot:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v157 = a2;
  v152 = a3;
  v158 = sub_2528C0020();
  v151 = *(v158 - 8);
  v4 = MEMORY[0x28223BE20](v158);
  v144 = (&v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v141 = &v126 - v7;
  MEMORY[0x28223BE20](v6);
  v140 = &v126 - v8;
  v131 = sub_2528BF070();
  v139 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v132 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_2528BF030();
  v133 = *(v134 - 8);
  v10 = MEMORY[0x28223BE20](v134);
  v128 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v127 = &v126 - v12;
  v138 = sub_2528BF9D0();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_2528BECF0();
  v156 = *(v145 - 8);
  v14 = MEMORY[0x28223BE20](v145);
  v135 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v142 = &v126 - v17;
  MEMORY[0x28223BE20](v16);
  v143 = &v126 - v18;
  v147 = sub_2528BEE30();
  v19 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v21 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2528BF240();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2528BEC40();
  MEMORY[0x28223BE20](v24 - 8);
  v25 = type metadata accessor for DeviceEntity(0);
  v149 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = (&v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v155 = sub_2528BE730();
  *v27 = v155;
  sub_2528BEC20();
  v154 = sub_2528BE730();
  v27[1] = v154;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  v28 = sub_2528BE700();
  v27[2] = v28;
  sub_2528BEC20();
  v153 = sub_2528BE730();
  v27[3] = v153;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  v146 = sub_2528BE730();
  v27[4] = v146;
  sub_2528BEC20();
  v148 = sub_2528BE730();
  v27[5] = v148;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v29 = a1;
  v30 = sub_2528BE730();
  v27[6] = v30;
  sub_2528BFFD0();
  sub_2527FF5AC(v23, &v159);
  v31 = v159;
  v150 = v25;
  if (v159 == 33)
  {
    v142 = v30;
    v147 = v28;
    v32 = v158;
    if (qword_27F4FBB40 == -1)
    {
LABEL_3:
      v33 = sub_2528C08B0();
      __swift_project_value_buffer(v33, qword_27F5025C8);
      v34 = v151;
      v35 = *(v151 + 16);
      v36 = v140;
      v35(v140, v29, v32);
      v37 = v141;
      v35(v141, v29, v32);
      v38 = v144;
      v138 = v29;
      v35(v144, v29, v32);
      v39 = sub_2528C0890();
      v40 = sub_2528C0CE0();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v159 = v139;
        *v41 = 136315650;
        sub_25283C680(&qword_27F4FF538, MEMORY[0x277D164A0], MEMORY[0x277D164B8]);
        LODWORD(v137) = v40;
        v42 = sub_2528C1040();
        v44 = v43;
        v45 = *(v34 + 8);
        v45(v36, v32);
        v46 = sub_2527389AC(v42, v44, &v159);

        *(v41 + 4) = v46;
        *(v41 + 12) = 2080;
        v47 = v143;
        sub_2528BFFF0();
        sub_25283C680(&qword_27F4FD070, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v48 = v145;
        v49 = sub_2528C1040();
        v51 = v50;
        (*(v156 + 8))(v47, v48);
        v52 = v158;
        v45(v37, v158);
        v53 = sub_2527389AC(v49, v51, &v159);

        *(v41 + 14) = v53;
        *(v41 + 22) = 2080;
        v54 = v144;
        sub_2528BFFD0();
        sub_25283C680(&qword_27F4FF520, MEMORY[0x277D158E0], MEMORY[0x277D15900]);
        v55 = v130;
        v56 = sub_2528C1040();
        v58 = v57;
        (*(v129 + 8))(v23, v55);
        v45(v54, v52);
        v59 = sub_2527389AC(v56, v58, &v159);

        *(v41 + 24) = v59;
        _os_log_impl(&dword_252711000, v39, v137, "Unable to create DeviceEntity for %s with serviceGroupId: %s primaryServiceKind: %s", v41, 0x20u);
        v60 = v139;
        swift_arrayDestroy();
        MEMORY[0x2530A8D80](v60, -1, -1);
        MEMORY[0x2530A8D80](v41, -1, -1);

        v61 = sub_2528BF400();
        (*(*(v61 - 8) + 8))(v157, v61);
        v45(v138, v52);
      }

      else
      {

        v109 = sub_2528BF400();
        (*(*(v109 - 8) + 8))(v157, v109);
        v110 = *(v34 + 8);
        v110(v138, v32);
        v110(v38, v32);
        v110(v37, v32);
        v110(v36, v32);
      }

      v111 = v152;
      v113 = v149;
      v112 = v150;

      return (*(v113 + 56))(v111, 1, 1, v112);
    }

LABEL_35:
    swift_once();
    goto LABEL_3;
  }

  sub_2528BF2F0();
  sub_2528BEE00();
  v62 = *(v19 + 8);
  v63 = v27;
  v64 = v147;
  v62(v21, v147);
  v65 = MEMORY[0x277D84FA0];
  v63[7] = MEMORY[0x277D84FA0];
  v66 = *(v25 + 52);
  v144 = v63;
  *(v63 + v66) = v65;
  v67 = v143;
  sub_2528BFFF0();
  v68 = sub_2528BECB0();
  v70 = v69;
  v71 = *(v156 + 8);
  v72 = v67;
  v73 = v145;
  v143 = (v156 + 8);
  v141 = v71;
  (v71)(v72, v145);
  v159 = v68;
  v160 = v70;
  sub_2528BE6C0();
  LOWORD(v159) = v31;
  sub_2528BE6C0();
  v159 = sub_2528C0000();
  v160 = v74;
  sub_2528BE6C0();
  v75 = v157;
  sub_2528BF2F0();
  v76 = sub_2528BEE20();
  v78 = v77;
  v154 = v21;
  v155 = v19 + 8;
  v140 = v62;
  v62(v21, v64);
  v159 = v76;
  v160 = v78;
  sub_2528BE6C0();
  sub_25283C680(&qword_27F4FF540, MEMORY[0x277D164A0], MEMORY[0x277D16498]);
  v79 = v158;
  v80 = sub_2528BFB70();
  v81 = v73;
  v82 = v75;
  if (*(v80 + 16))
  {
    v83 = v137;
    v84 = v136;
    v85 = v138;
    (*(v137 + 16))(v136, v80 + ((*(v83 + 80) + 32) & ~*(v83 + 80)), v138);

    v86 = v135;
    sub_2528BF980();
    (*(v83 + 8))(v84, v85);
    v87 = v142;
    (*(v156 + 32))(v142, v86, v81);
    v88 = sub_2528BF320();
    v89 = v144;
    if (*(v88 + 16) && (v90 = sub_252785C40(v87), (v91 & 1) != 0))
    {
      v92 = v133;
      v93 = v127;
      v94 = v134;
      (*(v133 + 16))(v127, *(v88 + 56) + *(v133 + 72) * v90, v134);

      v95 = sub_2528BEFD0();
      (*(v92 + 8))(v93, v94);
      if (v95)
      {
        v138 = v29;
        v32 = v95 + 56;
        v96 = 1 << *(v95 + 32);
        v97 = -1;
        if (v96 < 64)
        {
          v97 = ~(-1 << v96);
        }

        v98 = v97 & *(v95 + 56);
        v29 = (v96 + 63) >> 6;
        v137 = v139 + 16;
        v136 = (v139 + 8);

        v23 = 0;
        for (i = MEMORY[0x277D84F90]; v98; *(v107 + 5) = v108)
        {
          v100 = v132;
LABEL_17:
          v102 = v139;
          v103 = v131;
          (*(v139 + 16))(v100, *(v95 + 48) + *(v139 + 72) * (__clz(__rbit64(v98)) | (v23 << 6)), v131);
          v153 = sub_2528BF050();
          v156 = v104;
          (*(v102 + 8))(v100, v103);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            i = sub_252737D40(0, *(i + 2) + 1, 1, i);
          }

          v106 = *(i + 2);
          v105 = *(i + 3);
          v87 = v142;
          if (v106 >= v105 >> 1)
          {
            i = sub_252737D40((v105 > 1), v106 + 1, 1, i);
          }

          v98 &= v98 - 1;
          *(i + 2) = v106 + 1;
          v107 = &i[16 * v106];
          v108 = v156;
          *(v107 + 4) = v153;
        }

        while (1)
        {
          v101 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v101 >= v29)
          {

            v29 = v138;
            v82 = v157;
            v81 = v145;
            goto LABEL_28;
          }

          v98 = *(v32 + 8 * v101);
          ++v23;
          if (v98)
          {
            v100 = v132;
            v23 = v101;
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_35;
      }

      i = MEMORY[0x277D84F90];
      v115 = v147;
    }

    else
    {
      i = MEMORY[0x277D84F90];
LABEL_28:
      v115 = v147;
    }

    v117 = sub_252743FCC(i);

    v159 = v117;
    sub_2528BE6C0();
    (v141)(v87, v81);
    v116 = v154;
    v79 = v158;
  }

  else
  {

    v115 = v147;
    v116 = v154;
    v89 = v144;
  }

  v118 = sub_2528C0010();
  if (!v119)
  {
    sub_2528BF2F0();
    v120 = v128;
    sub_2528BEDE0();
    (v140)(v116, v115);
    v121 = sub_2528BF020();
    v123 = v122;
    (*(v133 + 8))(v120, v134);
    v119 = v123;
    v118 = v121;
  }

  v159 = v118;
  v160 = v119;
  sub_2528BE6C0();
  v124 = sub_2528BF400();
  (*(*(v124 - 8) + 8))(v82, v124);
  (*(v151 + 8))(v29, v79);
  v125 = v152;
  sub_25283B8C4(v89, v152, type metadata accessor for DeviceEntity);
  (*(v149 + 56))(v125, 0, 1, v150);
  return sub_25283B92C(v89, type metadata accessor for DeviceEntity);
}

uint64_t DeviceEntity.init(staticMediaProfile:snapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a2;
  v125 = a3;
  v128 = a1;
  v127 = sub_2528BFF90();
  v3 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v113 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2528BF030();
  v106 = *(v107 - 8);
  v5 = MEMORY[0x28223BE20](v107);
  v104 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v103 = &v99 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v8 - 8);
  v108 = &v99 - v9;
  v10 = sub_2528BECF0();
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v105 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = &v99 - v13;
  v111 = sub_2528BEE30();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF548, &qword_2528D36E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v99 - v16;
  v18 = sub_2528BFC30();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v99 - v23;
  v25 = sub_2528BEC40();
  MEMORY[0x28223BE20](v25 - 8);
  v126 = type metadata accessor for DeviceEntity(0);
  v123 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v27 = (&v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v120 = sub_2528BE730();
  *v27 = v120;
  sub_2528BEC20();
  v119 = sub_2528BE730();
  v27[1] = v119;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  v117 = sub_2528BE700();
  v27[2] = v117;
  sub_2528BEC20();
  v118 = sub_2528BE730();
  v27[3] = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  v121 = sub_2528BE730();
  v27[4] = v121;
  sub_2528BEC20();
  v28 = v128;
  v122 = sub_2528BE730();
  v27[5] = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v116 = sub_2528BE730();
  v27[6] = v116;
  sub_2528BFF10();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_2527213D8(v17, &qword_27F4FF548, &qword_2528D36E0);
LABEL_7:
    v52 = v127;
    v53 = v113;
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v54 = sub_2528C08B0();
    __swift_project_value_buffer(v54, qword_27F5025C8);
    v3[2](v53, v28, v52);
    v55 = sub_2528C0890();
    v56 = v3;
    v57 = v28;
    v58 = sub_2528C0CE0();
    if (os_log_type_enabled(v55, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v129 = v60;
      *v59 = 136315138;
      v61 = v112;
      sub_2528BFF50();
      sub_25283C680(&qword_27F4FD070, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v62 = v53;
      v63 = v115;
      v64 = sub_2528C1040();
      v66 = v65;
      (*(v114 + 8))(v61, v63);
      v67 = v56[1];
      v68 = v62;
      v69 = v127;
      (v67)(v68, v127);
      v70 = sub_2527389AC(v64, v66, &v129);

      *(v59 + 4) = v70;
      _os_log_impl(&dword_252711000, v55, v58, "Unable to create DeviceEntity for media profile %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      MEMORY[0x2530A8D80](v60, -1, -1);
      MEMORY[0x2530A8D80](v59, -1, -1);

      v71 = sub_2528BF400();
      (*(*(v71 - 8) + 8))(v124, v71);
      (v67)(v128, v69);
    }

    else
    {

      v72 = sub_2528BF400();
      (*(*(v72 - 8) + 8))(v124, v72);
      v73 = v3[1];
      (v73)(v57, v52);
      (v73)(v53, v52);
    }

    return (*(v123 + 56))(v125, 1, 1, v126);
  }

  (*(v19 + 32))(v24, v17, v18);
  (*(v19 + 16))(v22, v24, v18);
  if ((*(v19 + 88))(v22, v18) != *MEMORY[0x277D15D18])
  {
    v51 = *(v19 + 8);
    v51(v24, v18);
    v51(v22, v18);
    goto LABEL_7;
  }

  v99 = v19;
  v100 = v18;
  v101 = v24;
  v113 = v3;
  v29 = v124;
  *(v27 + *(v126 + 52)) = sub_252823B48();
  v27[7] = sub_252823DA0();
  v30 = v109;
  sub_2528BF2F0();
  sub_2528BEE00();
  v31 = v110 + 8;
  v102 = *(v110 + 8);
  v102(v30, v111);
  v32 = v112;
  sub_2528BFF40();
  v33 = sub_2528BECB0();
  v35 = v34;
  v36 = v114 + 8;
  v37 = *(v114 + 8);
  v37(v32, v115);
  v129 = v33;
  v130 = v35;
  sub_2528BE6C0();
  sub_2528BFF50();
  v38 = sub_2528BECB0();
  v40 = v39;
  v41 = v32;
  v42 = v29;
  v43 = v115;
  v116 = v36;
  v37(v41, v115);
  v129 = v38;
  v130 = v40;
  sub_2528BE6C0();
  LOWORD(v129) = 2;
  sub_2528BE6C0();
  v129 = sub_2528BFF60();
  v130 = v44;
  sub_2528BE6C0();
  sub_2528BF2F0();
  v45 = sub_2528BEE20();
  v47 = v46;
  v110 = v31;
  v102(v30, v111);
  v129 = v45;
  v130 = v47;
  sub_2528BE6C0();
  v48 = sub_2528BFF70();
  v49 = v108;
  sub_2527D3AB8(v48, v108);
  v50 = v114;

  if ((*(v50 + 48))(v49, 1, v43) == 1)
  {
    sub_2527213D8(v49, &qword_27F4FC628, &qword_2528C4750);
LABEL_18:
    v83 = v100;
    v84 = v99;
LABEL_19:
    v129 = MEMORY[0x277D84FA0];
    sub_2528BE6C0();
    goto LABEL_20;
  }

  v75 = v105;
  (*(v50 + 32))(v105, v49, v43);
  v76 = sub_2528BF320();
  if (!*(v76 + 16) || (v77 = sub_252785C40(v75), (v78 & 1) == 0))
  {

    v37(v75, v43);
    goto LABEL_18;
  }

  v120 = v37;
  v79 = v106;
  v80 = v103;
  v81 = v107;
  (*(v106 + 16))(v103, *(v76 + 56) + *(v106 + 72) * v77, v107);

  v82 = sub_2528BEFD0();
  (*(v79 + 8))(v80, v81);
  v83 = v100;
  v84 = v99;
  if (!v82)
  {
    v120(v75, v43);
    goto LABEL_19;
  }

  v85 = sub_252819AD0(v82, MEMORY[0x277D154F8], MEMORY[0x277D154F0]);

  v86 = sub_252743FCC(v85);

  v129 = v86;
  sub_2528BE6C0();
  v120(v75, v43);
LABEL_20:
  v87 = v128;
  v88 = v113;
  v89 = sub_2528BFF80();
  v91 = v101;
  if (!v90)
  {
    v92 = v109;
    sub_2528BF2F0();
    v93 = v104;
    sub_2528BEDE0();
    v102(v92, v111);
    v94 = sub_2528BF020();
    v96 = v95;
    (*(v106 + 8))(v93, v107);
    v90 = v96;
    v89 = v94;
    v88 = v113;
  }

  v129 = v89;
  v130 = v90;
  sub_2528BE6C0();
  v97 = sub_2528BF400();
  (*(*(v97 - 8) + 8))(v42, v97);
  v88[1](v87, v127);
  (*(v84 + 8))(v91, v83);
  v98 = v125;
  sub_25283B8C4(v27, v125, type metadata accessor for DeviceEntity);
  (*(v123 + 56))(v98, 0, 1, v126);
  return sub_25283B92C(v27, type metadata accessor for DeviceEntity);
}

uint64_t sub_252823B48()
{
  v0 = sub_2528BECF0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_2528BFC70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2528BF390();
  sub_2528BFF40();
  if (*(v8 + 16) && (v9 = sub_252785C40(v3), (v10 & 1) != 0))
  {
    (*(v5 + 16))(v7, *(v8 + 56) + *(v5 + 72) * v9, v4);
    (*(v1 + 8))(v3, v0);

    v11 = sub_2528BFC60();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2528C3910;
    *(inited + 32) = v11;
    v15 = inited + 32;
    *(inited + 40) = v13;
    v16 = sub_252749DC8(inited);
    swift_setDeallocating();
    sub_252836884(v15);
    return v16;
  }

  else
  {

    (*(v1 + 8))(v3, v0);
    return MEMORY[0x277D84FA0];
  }
}