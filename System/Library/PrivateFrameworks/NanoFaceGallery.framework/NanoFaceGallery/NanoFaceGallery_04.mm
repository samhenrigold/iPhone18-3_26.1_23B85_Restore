uint64_t sub_25B09D4C0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v5 && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v6 && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  if (a1[5] != a2[5])
  {
    return 0;
  }

  v7 = type metadata accessor for SnapshotContext(0);
  if ((sub_25B0E2420() & 1) == 0 || (MEMORY[0x25F85F040](a1 + v7[9], a2 + v7[9]) & 1) == 0)
  {
    return 0;
  }

  v8 = v7[10];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12 || (*v9 != *v11 || v10 != v12) && (sub_25B0E3E30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = v7[11];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  if (v14 == *v16 && v15 == v16[1] || (sub_25B0E3E30() & 1) != 0)
  {
    v17 = v7[12];
    v18 = (a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    v21 = v20[1];
    if (v19)
    {
      if (v21 && (*v18 == *v20 && v19 == v21 || (sub_25B0E3E30() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v21)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_25B09D658(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_25B09D690(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_25B0E3E30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56646C697542736FLL && a2 == 0xEE006E6F69737265 || (sub_25B0E3E30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025B0EC100 == a2 || (sub_25B0E3E30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_25B0E3E30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_25B0E3E30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_25B0E3E30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025B0EC120 == a2 || (sub_25B0E3E30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025B0EC140 == a2 || (sub_25B0E3E30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6172676F6E6F6DLL && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_25B0E3E30();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_25B09D97C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B88, &qword_25B0E8168);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B90, &qword_25B0E8170);
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B98, &qword_25B0E8178);
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B09DE38(v11, v12, v13);
  v14 = v31;
  sub_25B0E3F60();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = a1;
  v15 = v29;
  v16 = sub_25B0E3DB0();
  v17 = (2 * *(v16 + 16)) | 1;
  v32 = v16;
  v33 = v16 + 32;
  v34 = 0;
  v35 = v17;
  v18 = sub_25B044AA8();
  if (v18 == 2 || v34 != v35 >> 1)
  {
    v22 = sub_25B0E3C00();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30DA8, &unk_25B0E5060);
    *v24 = &type metadata for SnapshotContext.Source;
    sub_25B0E3D70();
    sub_25B0E3BF0();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v30 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v31;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v18;
  if (v18)
  {
    v37 = 1;
    sub_25B09DE8C(v18, v19, v20);
    sub_25B0E3D60();
    v21 = v30;
    (*(v28 + 8))(v4, v15);
  }

  else
  {
    v37 = 0;
    sub_25B09DEE0(v18, v19, v20);
    sub_25B0E3D60();
    v21 = v30;
    (*(v27 + 8))(v7, v5);
  }

  (*(v21 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v36 & 1;
}

unint64_t sub_25B09DE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31BA0;
  if (!qword_27FA31BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31BA0);
  }

  return result;
}

unint64_t sub_25B09DE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31BA8;
  if (!qword_27FA31BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31BA8);
  }

  return result;
}

unint64_t sub_25B09DEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31BB0;
  if (!qword_27FA31BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31BB0);
  }

  return result;
}

unint64_t sub_25B09DF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31BD8;
  if (!qword_27FA31BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31BD8);
  }

  return result;
}

unint64_t sub_25B09DF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31BE0;
  if (!qword_27FA31BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31BE0);
  }

  return result;
}

unint64_t sub_25B09DFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31BE8;
  if (!qword_27FA31BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31BE8);
  }

  return result;
}

uint64_t sub_25B09E030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B09E094(uint64_t a1)
{
  v2 = type metadata accessor for SnapshotContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B09E0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31C08;
  if (!qword_27FA31C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C08);
  }

  return result;
}

unint64_t sub_25B09E144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31C10;
  if (!qword_27FA31C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C10);
  }

  return result;
}

uint64_t sub_25B09E198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SnapshotContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnapshotContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_25B09E3A8(uint64_t a1)
{
  sub_25B0E2440();
  if (v1 <= 0x3F)
  {
    sub_25B0E24F0();
    if (v2 <= 0x3F)
    {
      sub_25B09E470();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25B09E470()
{
  if (!qword_27FA31C48)
  {
    v0 = sub_25B0E3B10();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA31C48);
    }
  }
}

unint64_t sub_25B09E4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31C50;
  if (!qword_27FA31C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C50);
  }

  return result;
}

unint64_t sub_25B09E520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31C58;
  if (!qword_27FA31C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C58);
  }

  return result;
}

unint64_t sub_25B09E578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31C60;
  if (!qword_27FA31C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C60);
  }

  return result;
}

unint64_t sub_25B09E5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31C68;
  if (!qword_27FA31C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C68);
  }

  return result;
}

unint64_t sub_25B09E628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31C70;
  if (!qword_27FA31C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C70);
  }

  return result;
}

unint64_t sub_25B09E680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31C78;
  if (!qword_27FA31C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C78);
  }

  return result;
}

unint64_t sub_25B09E6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31C80;
  if (!qword_27FA31C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C80);
  }

  return result;
}

unint64_t sub_25B09E730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31C88;
  if (!qword_27FA31C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C88);
  }

  return result;
}

unint64_t sub_25B09E788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31C90;
  if (!qword_27FA31C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C90);
  }

  return result;
}

unint64_t sub_25B09E7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31C98;
  if (!qword_27FA31C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C98);
  }

  return result;
}

unint64_t sub_25B09E838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31CA0;
  if (!qword_27FA31CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CA0);
  }

  return result;
}

unint64_t sub_25B09E890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31CA8;
  if (!qword_27FA31CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CA8);
  }

  return result;
}

uint64_t SnapshotKey.fileNameRepresentation.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SnapshotKey.fileNameRepresentation.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SnapshotKey.fullKey.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SnapshotKey.fullKey.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_25B09E9FC()
{
  if (*v0)
  {
    return 0x79654B6C6C7566;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_25B09EA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000025B0EC160 == a2 || (sub_25B0E3E30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x79654B6C6C7566 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_25B0E3E30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_25B09EB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B09ED30(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_25B09EB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B09ED30(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SnapshotKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31CB0, &qword_25B0E86D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *(v1 + 16);
  v13[1] = *(v1 + 24);
  v13[2] = v7;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B09ED30(v8, v9, v10);
  sub_25B0E3F70();
  v15 = 0;
  v11 = v13[3];
  sub_25B0E3DE0();
  if (!v11)
  {
    v14 = 1;
    sub_25B0E3DE0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_25B09ED30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31CB8;
  if (!qword_27FA31CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CB8);
  }

  return result;
}

uint64_t SnapshotKey.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31CC0, &qword_25B0E86D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B09ED30(v9, v10, v11);
  sub_25B0E3F60();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v12 = sub_25B0E3D90();
  v14 = v13;
  v20 = v12;
  v21 = 1;
  v15 = sub_25B0E3D90();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  *a2 = v20;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static SnapshotKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25B0E3E30(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25B0E3E30();
    }
  }

  return result;
}

uint64_t SnapshotKey.hash(into:)(uint64_t a1)
{
  sub_25B0E3780();

  return sub_25B0E3780();
}

uint64_t SnapshotKey.hashValue.getter()
{
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B09F110()
{
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B09F178(uint64_t a1)
{
  sub_25B0E3780();

  return sub_25B0E3780();
}

uint64_t sub_25B09F1C8(uint64_t a1)
{
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B09F22C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25B0E3E30(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25B0E3E30();
    }
  }

  return result;
}

uint64_t SnapshotKey.id.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C0, &qword_25B0E77D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25B0E7730;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;

  return v5;
}

unint64_t sub_25B09F354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31CC8;
  if (!qword_27FA31CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CC8);
  }

  return result;
}

unint64_t sub_25B09F3AC()
{
  result = qword_27FA31CD0;
  if (!qword_27FA31CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31CD8, &qword_25B0EA030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CD0);
  }

  return result;
}

uint64_t sub_25B09F428@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C0, &qword_25B0E77D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25B0E7730;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  *a1 = v7;
}

uint64_t sub_25B09F4B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25B09F4FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B09F560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31CE0;
  if (!qword_27FA31CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CE0);
  }

  return result;
}

unint64_t sub_25B09F5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31CE8;
  if (!qword_27FA31CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CE8);
  }

  return result;
}

unint64_t sub_25B09F610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31CF0;
  if (!qword_27FA31CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CF0);
  }

  return result;
}

uint64_t sub_25B09F664()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31CF8);
  __swift_project_value_buffer(v0, qword_27FA31CF8);
  return sub_25B0E2960();
}

uint64_t FaceLibraryManager.Entry.identifiableFace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B0E2750();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FaceLibraryManager.Entry.identifiableFace.setter(uint64_t a1)
{
  v3 = sub_25B0E2750();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FaceLibraryManager.Entry.location.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FaceLibraryManager.Entry(0) + 20);

  return sub_25B050C60(a1, v3);
}

BOOL static FaceLibraryManager.Entry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (MEMORY[0x25F85F260]())
  {
    v4 = type metadata accessor for FaceLibraryManager.Entry(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      type metadata accessor for FacePlacement.Location(0);
      if (sub_25B0E2520())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t FaceLibraryManager.Entry.hash(into:)(uint64_t a1)
{
  sub_25B0E2750();
  sub_25B09FA40(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
  sub_25B0E36D0();
  v2 = type metadata accessor for FaceLibraryManager.Entry(0);
  MEMORY[0x25F860A80](*(v1 + *(v2 + 20)) + 1);
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2540();
  sub_25B09FA40(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  return sub_25B0E36D0();
}

uint64_t sub_25B09FA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FaceLibraryManager.Entry.hashValue.getter()
{
  sub_25B0E3F10();
  sub_25B0E2750();
  sub_25B09FA40(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
  sub_25B0E36D0();
  v1 = type metadata accessor for FaceLibraryManager.Entry(0);
  MEMORY[0x25F860A80](*(v0 + *(v1 + 20)) + 1);
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2540();
  sub_25B09FA40(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t sub_25B09FB98@<X0>(uint64_t *a2@<X8>)
{
  result = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25B09FBC0(uint64_t a1)
{
  sub_25B0E3F10();
  sub_25B0E2750();
  sub_25B09FA40(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
  sub_25B0E36D0();
  MEMORY[0x25F860A80](*(v1 + *(a1 + 20)) + 1);
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2540();
  sub_25B09FA40(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t sub_25B09FCCC(uint64_t a1, uint64_t a2)
{
  sub_25B0E2750();
  sub_25B09FA40(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
  sub_25B0E36D0();
  MEMORY[0x25F860A80](*(v2 + *(a2 + 20)) + 1);
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2540();
  sub_25B09FA40(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  return sub_25B0E36D0();
}

uint64_t sub_25B09FDC0(uint64_t a1, uint64_t a2)
{
  sub_25B0E3F10();
  sub_25B0E2750();
  sub_25B09FA40(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
  sub_25B0E36D0();
  MEMORY[0x25F860A80](*(v2 + *(a2 + 20)) + 1);
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2540();
  sub_25B09FA40(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t FaceLibraryManager.libraryFaces.getter()
{
  v0 = sub_25B0E2750();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = FaceLibraryManager.identifiableFaces.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    v14 = MEMORY[0x277D84F90];
    sub_25B0E3C50();
    v7 = v1 + 16;
    v6 = *(v1 + 16);
    v12[1] = v4;
    v13 = v6;
    v8 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    v10 = (v7 - 8);
    do
    {
      v13(v3, v8, v0);
      sub_25B0E2730();
      (*v10)(v3, v0);
      sub_25B0E3C30();
      sub_25B0E3C60();
      sub_25B0E3C70();
      sub_25B0E3C40();
      v8 += v9;
      --v5;
    }

    while (v5);

    return v14;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t FaceLibraryManager.identifiableFaces.getter()
{
  v1 = type metadata accessor for FaceLibraryManager.Entry(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B0E2750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v21 = v0;
  sub_25B09FA40(&qword_27FA31D18, type metadata accessor for FaceLibraryManager, &protocol conformance descriptor for FaceLibraryManager);
  sub_25B0E28D0();

  swift_beginAccess();
  v9 = *(v0 + 16);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v20 = MEMORY[0x277D84F90];

    sub_25B08C250(0, v10, 0);
    v11 = v20;
    v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v18[1] = v9;
    v13 = v9 + v12;
    v14 = *(v2 + 72);
    v18[2] = v6 + 32;
    v19 = v14;
    do
    {
      sub_25B0A3BA4(v13, v4, type metadata accessor for FaceLibraryManager.Entry);
      (*(v6 + 16))(v8, v4, v5);
      sub_25B0A3C0C(v4);
      v20 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25B08C250((v15 > 1), v16 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v16 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v8, v5);
      v13 += v19;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t FaceLibraryManager.entries.getter()
{
  swift_getKeyPath();
  sub_25B09FA40(&qword_27FA31D18, type metadata accessor for FaceLibraryManager, &protocol conformance descriptor for FaceLibraryManager);
  sub_25B0E28D0();

  swift_beginAccess();
}

uint64_t sub_25B0A03FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25B09FA40(&qword_27FA31D18, type metadata accessor for FaceLibraryManager, &protocol conformance descriptor for FaceLibraryManager);
  sub_25B0E28D0();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t FaceLibraryManager.entries.setter(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_25B0A39B0(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B09FA40(&qword_27FA31D18, type metadata accessor for FaceLibraryManager, &protocol conformance descriptor for FaceLibraryManager);
    sub_25B0E28C0();
  }
}

uint64_t sub_25B0A0650(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t (*FaceLibraryManager.entries.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC15NanoFaceGallery18FaceLibraryManager___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25B09FA40(&qword_27FA31D18, type metadata accessor for FaceLibraryManager, &protocol conformance descriptor for FaceLibraryManager);
  sub_25B0E28D0();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B0E28F0();

  swift_beginAccess();
  return sub_25B0A07F8;
}

void sub_25B0A07F8(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_25B0E28E0();

  free(v1);
}

uint64_t FaceLibraryManager.__allocating_init()()
{
  v0 = swift_allocObject();
  FaceLibraryManager.init()();
  return v0;
}

uint64_t FaceLibraryManager.init()()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_25B0E2900();
  os_unfair_lock_lock((v0 + 24));
  sub_25B0A0938((v0 + 32), v0);
  os_unfair_lock_unlock((v0 + 24));
  return v0;
}

uint64_t sub_25B0A0938(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;

  sub_25B0E3900();
  sub_25B0E38F0();
  v6 = MEMORY[0x277D85700];
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_25B0E3940();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();

  v9 = sub_25B0E38F0();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v6;
  v10[4] = v8;

  v11 = sub_25B052F48(0, 0, v5, &unk_25B0E8AD0, v10);

  *a1 = v11;
  return result;
}

uint64_t FaceLibraryManager.deinit()
{
  os_unfair_lock_lock((v0 + 24));
  if (*(v0 + 32))
  {
    sub_25B0E39E0();
  }

  os_unfair_lock_unlock((v0 + 24));
  os_unfair_lock_lock((v0 + 40));
  if (*(v0 + 48))
  {
    sub_25B0E39E0();
  }

  os_unfair_lock_unlock((v0 + 40));

  sub_25B058448(v0 + 32, &qword_27FA31D20, &qword_25B0E8978);
  sub_25B058448(v0 + 48, &qword_27FA31D20, &qword_25B0E8978);
  v1 = OBJC_IVAR____TtC15NanoFaceGallery18FaceLibraryManager___observationRegistrar;
  v2 = sub_25B0E2910();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FaceLibraryManager.__deallocating_deinit()
{
  FaceLibraryManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25B0A0C84(uint64_t a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31878, &unk_25B0E8B00);
  v2 = MEMORY[0x28223BE20](v38);
  v34 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v37 = &v27 - v4;
  v5 = type metadata accessor for FaceLibraryManager.Entry(0);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v40 = MEMORY[0x277D84F90];
    sub_25B08C294(0, v8, 0);
    v9 = v40;
    v10 = 0;
    v30 = sub_25B0E2750();
    v11 = *(v30 - 8);
    v12 = *(v11 + 16);
    v11 += 16;
    v32 = v8;
    v33 = v12;
    v13 = (a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64)));
    v14 = *(v11 + 56);
    v31 = v11;
    v28 = (v11 + 16);
    v29 = v14;
    v15 = v34;
    do
    {
      v39 = v9;
      v17 = v37;
      v16 = v38;
      v18 = *(v38 + 48);
      v19 = v30;
      v20 = v33;
      v33(&v37[v18], v13, v30);
      *v15 = v10;
      v21 = *(v16 + 48);
      (*v28)(&v15[v21], &v17[v18], v19);
      v22 = &v7[*(v36 + 20)];
      type metadata accessor for FacePlacement.Location(0);
      sub_25B0E2530();
      *v22 = 2;
      v23 = v19;
      v9 = v39;
      v20(v7, &v15[v21], v23);
      sub_25B058448(v15, &qword_27FA31878, &unk_25B0E8B00);
      v40 = v9;
      v25 = *(v9 + 16);
      v24 = *(v9 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_25B08C294((v24 > 1), v25 + 1, 1);
        v9 = v40;
      }

      ++v10;
      *(v9 + 16) = v25 + 1;
      sub_25B0A3FA8(v7, v9 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v25);
      v13 += v29;
    }

    while (v32 != v10);
  }

  return v9;
}

uint64_t sub_25B0A0F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F30, &unk_25B0E8AD8);
  v4[10] = swift_task_alloc();
  v5 = sub_25B0E3A90();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = sub_25B0E3900();
  v4[15] = sub_25B0E38F0();
  v7 = sub_25B0E3850();
  v4[16] = v7;
  v4[17] = v6;

  return MEMORY[0x2822009F8](sub_25B0A109C, v7, v6);
}

uint64_t sub_25B0A109C()
{
  if (qword_27FA30D18 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  v0[18] = __swift_project_value_buffer(v1, qword_27FA31CF8);
  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B03D000, v2, v3, "Making face task for manager…", v4, 2u);
    MEMORY[0x25F8613E0](v4, -1, -1);
  }

  v5 = objc_opt_self();
  v0[19] = v5;
  v6 = [v5 currentDevice];
  v0[20] = v6;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_25B0A19A0(v6);
  }

  v7 = [objc_opt_self() defaultCenter];
  sub_25B0E3AA0();

  sub_25B0E3A80();
  swift_beginAccess();
  v0[21] = sub_25B0E38F0();
  v8 = sub_25B09FA40(&qword_27FA31D58, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_25B0A1310;
  v10 = v0[10];
  v11 = v0[11];

  return MEMORY[0x282200308](v10, v11, v8);
}

uint64_t sub_25B0A1310()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_25B0E3850();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_25B0A1914;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_25B0E3850();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_25B0A14A8;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_25B0A14A8()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_25B0A150C, v1, v2);
}

uint64_t sub_25B0A150C()
{
  v1 = *(v0 + 80);
  v2 = sub_25B0E22B0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 160);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

LABEL_14:

    v22 = *(v0 + 8);

    return v22();
  }

  v4 = sub_25B0E2950();
  v5 = sub_25B0E3A50();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25B03D000, v4, v5, "Active device changed…", v6, 2u);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  if (!swift_weakLoadStrong())
  {

    v15 = sub_25B0E2950();
    v16 = sub_25B0E3A50();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_25B03D000, v15, v16, "Active device changed - skipping, vanished…", v17, 2u);
      MEMORY[0x25F8613E0](v17, -1, -1);
    }

    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v21 = *(v0 + 80);
    v20 = *(v0 + 88);

    (*(v19 + 8))(v18, v20);
    v14 = v21;
    goto LABEL_13;
  }

  if (sub_25B0E39F0())
  {

    v7 = sub_25B0E2950();
    v8 = sub_25B0E3A50();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25B03D000, v7, v8, "Active device changed - skipping, cancelled…", v9, 2u);
      MEMORY[0x25F8613E0](v9, -1, -1);
    }

    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);

    (*(v11 + 8))(v10, v12);
    v14 = v13;
LABEL_13:
    sub_25B058448(v14, &unk_27FA32F30, &unk_25B0E8AD8);
    goto LABEL_14;
  }

  v24 = *(v0 + 80);
  v25 = [*(v0 + 152) currentDevice];
  sub_25B0A19A0(v25);

  sub_25B058448(v24, &unk_27FA32F30, &unk_25B0E8AD8);
  *(v0 + 168) = sub_25B0E38F0();
  v26 = sub_25B09FA40(&qword_27FA31D58, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v27 = swift_task_alloc();
  *(v0 + 176) = v27;
  *v27 = v0;
  v27[1] = sub_25B0A1310;
  v28 = *(v0 + 80);
  v29 = *(v0 + 88);

  return MEMORY[0x282200308](v28, v29, v26);
}

uint64_t sub_25B0A1914()
{
  *(v0 + 64) = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F40, &unk_25B0E6060);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

void sub_25B0A19A0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_25B0A0C84(MEMORY[0x277D84F90]);
  FaceLibraryManager.entries.setter(v7);
  if (a1)
  {
    v8 = qword_27FA30D18;
    v9 = a1;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_25B0E2970();
    __swift_project_value_buffer(v10, qword_27FA31CF8);
    v11 = v9;
    v12 = sub_25B0E2950();
    v13 = sub_25B0E3A50();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = a1;
      v16 = v11;
      _os_log_impl(&dword_25B03D000, v12, v13, "Manager updating face task with %@…", v14, 0xCu);
      sub_25B058448(v15, &unk_27FA31850, &qword_25B0E74B0);
      MEMORY[0x25F8613E0](v15, -1, -1);
      MEMORY[0x25F8613E0](v14, -1, -1);
    }

    os_unfair_lock_lock((v2 + 40));

    sub_25B0E3900();
    sub_25B0E38F0();
    v17 = MEMORY[0x277D85700];
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v18 = sub_25B0E3940();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = v11;

    v21 = sub_25B0E38F0();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = v17;
    v22[4] = v20;
    v22[5] = v19;

    *(v2 + 48) = sub_25B052F48(0, 0, v6, &unk_25B0E8AF0, v22);

    os_unfair_lock_unlock((v2 + 40));
  }

  else
  {
    if (qword_27FA30D18 != -1)
    {
      swift_once();
    }

    v23 = sub_25B0E2970();
    __swift_project_value_buffer(v23, qword_27FA31CF8);
    v24 = sub_25B0E2950();
    v25 = sub_25B0E3A30();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_25B03D000, v24, v25, "Manager updating face task has no device…", v26, 2u);
      MEMORY[0x25F8613E0](v26, -1, -1);
    }

    os_unfair_lock_lock((v2 + 40));

    sub_25B0E3900();
    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    *(v2 + 48) = 0;

    os_unfair_lock_unlock((v2 + 40));
  }
}

uint64_t sub_25B0A1E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v8 = sub_25B0E24A0();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = sub_25B0E3900();
  v5[30] = sub_25B0E38F0();
  v10 = sub_25B0E3850();
  v5[31] = v10;
  v5[32] = v9;

  return MEMORY[0x2822009F8](sub_25B0A1FCC, v10, v9);
}

uint64_t sub_25B0A1FCC()
{
  if (qword_27FA30D18 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  v0[33] = __swift_project_value_buffer(v1, qword_27FA31CF8);
  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A30();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B03D000, v2, v3, "Starting face task…", v4, 2u);
    MEMORY[0x25F8613E0](v4, -1, -1);
  }

  v5 = v0[18];

  v6 = *MEMORY[0x277D2BEA0];
  v7 = [v5 pairingID];
  if (v7)
  {
    v9 = v0[27];
    v8 = v0[28];
    v10 = v0[26];
    v11 = v7;
    sub_25B0E2480();

    v12 = sub_25B0E2470();
    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D2C0A0]) initWithCollectionIdentifier:v6 deviceUUID:v12];
  v0[34] = v13;

  type metadata accessor for WatchLibrary();
  v0[35] = swift_initStackObject();
  v14 = v13;
  v0[36] = sub_25B09B4F4(v14);

  v15 = swift_task_alloc();
  v0[37] = v15;
  *v15 = v0;
  v15[1] = sub_25B0A21F8;

  return sub_25B099D98();
}

uint64_t sub_25B0A21F8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 304) = a1;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);

  return MEMORY[0x2822009F8](sub_25B0A2320, v4, v3);
}

uint64_t sub_25B0A2320()
{

  v1 = sub_25B0E2950();
  v2 = sub_25B0E3A30();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[38];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_25B03D000, v1, v2, "Initially loading %ld face(s)…", v5, 0xCu);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = sub_25B0A0C84(v0[38]);
    FaceLibraryManager.entries.setter(v6);
  }

  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  sub_25B09AB88();
  sub_25B0E39A0();
  (*(v8 + 8))(v7, v9);
  swift_beginAccess();
  v0[39] = 0;
  v10 = sub_25B0E38F0();
  v0[40] = v10;
  v11 = swift_task_alloc();
  v0[41] = v11;
  *v11 = v0;
  v11[1] = sub_25B0A2524;
  v12 = v0[23];
  v13 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 42, v10, v13, v12);
}

uint64_t sub_25B0A2524()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return MEMORY[0x2822009F8](sub_25B0A2668, v3, v2);
}

uint64_t sub_25B0A2668(uint64_t a1)
{
  if (*(v1 + 336))
  {
    v2 = *(v1 + 272);
    (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));

LABEL_17:

    v28 = *(v1 + 8);

    return v28();
  }

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25B03D000, v3, v4, "Face task update…", v5, 2u);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    v16 = sub_25B0E2950();
    v17 = sub_25B0E3A30();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v1 + 272);
    v21 = *(v1 + 192);
    v20 = *(v1 + 200);
    v22 = *(v1 + 184);
    if (v18)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_25B03D000, v16, v17, "Face task update ignored - vanished…", v23, 2u);
      MEMORY[0x25F8613E0](v23, -1, -1);
    }

    else
    {
    }

    (*(v21 + 8))(v20, v22);
    goto LABEL_17;
  }

  v7 = Strong;
  if (sub_25B0E39F0())
  {

    v8 = sub_25B0E2950();
    v9 = sub_25B0E3A30();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v1 + 272);
    v13 = *(v1 + 192);
    v12 = *(v1 + 200);
    v14 = *(v1 + 184);
    if (v10)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25B03D000, v8, v9, "Face task update ignored - cancelled…", v15, 2u);
      MEMORY[0x25F8613E0](v15, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v12, v14);
    goto LABEL_17;
  }

  v24 = sub_25B0A0C84(*(v1 + 304));
  swift_beginAccess();

  v26 = sub_25B0A39B0(v25, v24);

  if (v26)
  {
    *(v7 + 16) = v24;

    v27 = *(v1 + 312);
  }

  else
  {
    v27 = *(v1 + 312);
    swift_getKeyPath();
    v30 = swift_task_alloc();
    *(v30 + 16) = v7;
    *(v30 + 24) = v24;
    *(v1 + 136) = v7;
    sub_25B09FA40(&qword_27FA31D18, type metadata accessor for FaceLibraryManager, &protocol conformance descriptor for FaceLibraryManager);
    sub_25B0E28C0();
  }

  *(v1 + 312) = v27;
  v31 = sub_25B0E38F0();
  *(v1 + 320) = v31;
  v32 = swift_task_alloc();
  *(v1 + 328) = v32;
  *v32 = v1;
  v32[1] = sub_25B0A2524;
  v33 = *(v1 + 184);
  v34 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v1 + 336, v31, v34, v33);
}

uint64_t sub_25B0A2B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 3)
  {
    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*v3, *i), vceqq_s64(v3[1], i[1])))) & 1) == 0 || v3[2].i64[0] != i[2].i64[0])
    {
      break;
    }

    if (v3[-1].i64[1] != i[-1].i64[1])
    {
      return 0;
    }

    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

void sub_25B0A2BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E2750();
  v42 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - v7;
  v8 = *(a1 + 16);
  if (v8 == *(a2 + 16) && v8 && a1 != a2)
  {
    v9 = 0;
    v10 = a1 + 32;
    v11 = a2 + 32;
    v39 = (v42 + 8);
    v34 = v8;
    v33 = a1 + 32;
    v32 = a2 + 32;
    v40 = v42 + 16;
    while (1)
    {
      v12 = (v10 + 72 * v9);
      v13 = v12[1];
      v44 = *v12;
      v45 = v13;
      v14 = v12[3];
      v46 = v12[2];
      v47 = v14;
      v48 = *(v12 + 8);
      v15 = (v11 + 72 * v9);
      v16 = v15[3];
      v51 = v15[2];
      v52 = v16;
      v53 = *(v15 + 8);
      v17 = v15[1];
      v49 = *v15;
      v50 = v17;
      if (v44 != v49 && (sub_25B0E3E30() & 1) == 0)
      {
        break;
      }

      if (*(&v45 + 1))
      {
        if (!*(&v50 + 1) || v45 != v50 && (sub_25B0E3E30() & 1) == 0)
        {
          return;
        }
      }

      else if (*(&v50 + 1))
      {
        return;
      }

      if (*(&v46 + 1))
      {
        if (!*(&v51 + 1) || v46 != v51 && (sub_25B0E3E30() & 1) == 0)
        {
          return;
        }
      }

      else if (*(&v51 + 1))
      {
        return;
      }

      v18 = v47;
      v19 = v52;
      sub_25B08CEB4(&v44, v43);
      sub_25B08CEB4(&v49, v43);
      sub_25B0AD0C8(v18, v19);
      if ((v20 & 1) == 0 || (v35 = v9, v21 = *(&v47 + 1), v22 = *(&v52 + 1), v23 = *(*(&v47 + 1) + 16), v24 = v36, v23 != *(*(&v52 + 1) + 16)))
      {
LABEL_32:
        sub_25B08CF10(&v49);
        sub_25B08CF10(&v44);
        return;
      }

      if (v23 && *(&v47 + 1) != *(&v52 + 1))
      {
        v25 = 0;
        v26 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v38 = *(&v47 + 1) + v26;
        v37 = *(&v52 + 1) + v26;
        while (v25 < *(v21 + 16))
        {
          v27 = *(v42 + 72) * v25;
          v28 = *(v42 + 16);
          v28(v24, v38 + v27, v4);
          if (v25 >= *(v22 + 16))
          {
            goto LABEL_35;
          }

          v29 = v41;
          v28(v41, v37 + v27, v4);
          sub_25B09FA40(&qword_27FA314D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE10]);
          v30 = sub_25B0E3700();
          v31 = *v39;
          (*v39)(v29, v4);
          v31(v24, v4);
          if ((v30 & 1) == 0)
          {
            goto LABEL_32;
          }

          if (v23 == ++v25)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

LABEL_28:
      sub_25B08CF10(&v49);
      sub_25B08CF10(&v44);
      if (v48 != v53)
      {
        return;
      }

      v9 = v35 + 1;
      if (v35 + 1 == v34)
      {
        return;
      }

      v10 = v33;
      v11 = v32;
    }
  }
}

void sub_25B0A3030(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E2750();
  v84 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v83 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v69 - v7;
  v9 = *(a1 + 16);
  if (v9 == *(a2 + 16))
  {
    if (v9)
    {
      if (a1 != a2)
      {
        v10 = *(a1 + 80);
        *v99 = *(a1 + 64);
        *&v99[16] = v10;
        v11 = *(a1 + 112);
        v100 = *(a1 + 96);
        v101 = v11;
        v12 = *(a1 + 48);
        v97 = *(a1 + 32);
        v98 = v12;
        v13 = *(a2 + 80);
        *v104 = *(a2 + 64);
        *&v104[16] = v13;
        v14 = *(a2 + 112);
        v105 = *(a2 + 96);
        v106 = v14;
        v15 = *(a2 + 48);
        v102 = *(a2 + 32);
        v103 = v15;
        if (v97 == v102)
        {
          v81 = (v84 + 8);
          v82 = v84 + 16;
          v16 = 1;
          v85 = &v69 - v7;
          v75 = a1 + 32;
          v76 = v9;
          v74 = a2 + 32;
          while (1)
          {
            v78 = v16;
            v17 = *(&v97 + 1) == *(&v102 + 1) && v98 == v103;
            if (!v17 && (sub_25B0E3E30() & 1) == 0)
            {
              return;
            }

            if (*v99)
            {
              if (!*v104)
              {
                return;
              }

              v18 = *(&v98 + 1) == *(&v103 + 1) && *v99 == *v104;
              if (!v18 && (sub_25B0E3E30() & 1) == 0)
              {
                return;
              }
            }

            else if (*v104)
            {
              return;
            }

            if (*&v99[16])
            {
              if (!*&v104[16] || *&v99[8] != *&v104[8] && (sub_25B0E3E30() & 1) == 0)
              {
                return;
              }
            }

            else if (*&v104[16])
            {
              return;
            }

            v19 = *&v99[24];
            v20 = *&v104[24];
            sub_25B08CE58(&v97, &v92);
            sub_25B08CE58(&v102, &v92);
            sub_25B0AD0C8(v19, v20);
            if ((v21 & 1) == 0 || (v22 = v100, v23 = v105, v24 = *(v100 + 16), v24 != *(v105 + 16)))
            {
LABEL_75:
              sub_25B0A3DE0(&v102);
              sub_25B0A3DE0(&v97);
              return;
            }

            if (v24 && v100 != v105)
            {
              break;
            }

LABEL_35:
            if (*(&v100 + 1) != *(&v105 + 1))
            {
              goto LABEL_75;
            }

            v33 = v106;
            v34 = *(v101 + 16);
            if (v34 != *(v106 + 16))
            {
              goto LABEL_75;
            }

            if (v34 && v101 != v106)
            {
              if (*(v101 + 16))
              {
                v35 = 0;
                v36 = v101 + 32;
                v72 = *(v101 + 16);
                v73 = v106 + 32;
                v37 = 1;
                v70 = v106;
                v71 = v101;
                v69 = v101 + 32;
                do
                {
                  v38 = v37;
                  v39 = (v36 + 72 * v35);
                  v87 = *v39;
                  v40 = v39[1];
                  v41 = v39[2];
                  v42 = v39[3];
                  v91 = *(v39 + 8);
                  v89 = v41;
                  v90 = v42;
                  v88 = v40;
                  if (v35 >= *(v33 + 16))
                  {
                    goto LABEL_82;
                  }

                  v43 = (v73 + 72 * v35);
                  v92 = *v43;
                  v44 = v43[1];
                  v45 = v43[2];
                  v46 = v43[3];
                  v96 = *(v43 + 8);
                  v94 = v45;
                  v95 = v46;
                  v93 = v44;
                  if (v87 != v92 && (sub_25B0E3E30() & 1) == 0)
                  {
                    goto LABEL_75;
                  }

                  if (*(&v88 + 1))
                  {
                    if (!*(&v93 + 1) || v88 != v93 && (sub_25B0E3E30() & 1) == 0)
                    {
                      goto LABEL_75;
                    }
                  }

                  else if (*(&v93 + 1))
                  {
                    goto LABEL_75;
                  }

                  if (*(&v89 + 1))
                  {
                    if (!*(&v94 + 1) || v89 != v94 && (sub_25B0E3E30() & 1) == 0)
                    {
                      goto LABEL_75;
                    }
                  }

                  else if (*(&v94 + 1))
                  {
                    goto LABEL_75;
                  }

                  v77 = v38;
                  v47 = v90;
                  v48 = v95;
                  sub_25B08CEB4(&v87, v86);
                  sub_25B08CEB4(&v92, v86);
                  sub_25B0AD0C8(v47, v48);
                  if ((v49 & 1) == 0 || (v50 = *(&v90 + 1), v51 = *(&v95 + 1), v52 = *(*(&v90 + 1) + 16), v52 != *(*(&v95 + 1) + 16)))
                  {
LABEL_74:
                    sub_25B08CF10(&v92);
                    sub_25B08CF10(&v87);
                    goto LABEL_75;
                  }

                  if (v52 && *(&v90 + 1) != *(&v95 + 1))
                  {
                    v53 = 0;
                    v54 = (*(v84 + 80) + 32) & ~*(v84 + 80);
                    v79 = *(&v95 + 1) + v54;
                    v80 = *(&v90 + 1) + v54;
                    while (v53 < *(v50 + 16))
                    {
                      v55 = *(v84 + 72) * v53;
                      v56 = *(v84 + 16);
                      v56(v8, v80 + v55, v4);
                      if (v53 >= *(v51 + 16))
                      {
                        goto LABEL_81;
                      }

                      v57 = v83;
                      v56(v83, v79 + v55, v4);
                      sub_25B09FA40(&qword_27FA314D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE10]);
                      v58 = sub_25B0E3700();
                      v59 = *v81;
                      v60 = v57;
                      v8 = v85;
                      (*v81)(v60, v4);
                      v59(v8, v4);
                      if ((v58 & 1) == 0)
                      {
                        goto LABEL_74;
                      }

                      if (v52 == ++v53)
                      {
                        goto LABEL_65;
                      }
                    }

                    goto LABEL_80;
                  }

LABEL_65:
                  sub_25B08CF10(&v92);
                  sub_25B08CF10(&v87);
                  if (v91 != v96)
                  {
                    goto LABEL_75;
                  }

                  if (v77 == v72)
                  {
                    goto LABEL_69;
                  }

                  v37 = v77 + 1;
                  v33 = v70;
                  v35 = v77;
                  v36 = v69;
                }

                while (v77 < *(v71 + 16));
              }

LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
              return;
            }

LABEL_69:
            sub_25B0A3DE0(&v102);
            sub_25B0A3DE0(&v97);
            if (*(&v101 + 1) == *(&v106 + 1) && v78 != v76)
            {
              v61 = (v75 + 96 * v78);
              v62 = v61[3];
              v16 = v78 + 1;
              *v99 = v61[2];
              *&v99[16] = v62;
              v63 = v61[5];
              v100 = v61[4];
              v101 = v63;
              v64 = v61[1];
              v97 = *v61;
              v98 = v64;
              v65 = (v74 + 96 * v78);
              v66 = v65[3];
              *v104 = v65[2];
              *&v104[16] = v66;
              v67 = v65[5];
              v105 = v65[4];
              v106 = v67;
              v68 = v65[1];
              v102 = *v65;
              v103 = v68;
              if (v97 == v102)
              {
                continue;
              }
            }

            return;
          }

          v25 = 0;
          v26 = (*(v84 + 80) + 32) & ~*(v84 + 80);
          v79 = v105 + v26;
          v80 = v100 + v26;
          while (v25 < *(v22 + 16))
          {
            v27 = *(v84 + 72) * v25;
            v28 = *(v84 + 16);
            v28(v8, v80 + v27, v4);
            if (v25 >= *(v23 + 16))
            {
              goto LABEL_78;
            }

            v29 = v83;
            v28(v83, v79 + v27, v4);
            sub_25B09FA40(&qword_27FA314D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE10]);
            v30 = sub_25B0E3700();
            v31 = *v81;
            v32 = v29;
            v8 = v85;
            (*v81)(v32, v4);
            v31(v8, v4);
            if ((v30 & 1) == 0)
            {
              goto LABEL_75;
            }

            if (v24 == ++v25)
            {
              goto LABEL_35;
            }
          }

          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }
      }
    }
  }
}

uint64_t sub_25B0A379C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E2750();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_25B09FA40(&qword_27FA314D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE10]);
    v21 = sub_25B0E3700();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25B0A39B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceLibraryManager.Entry(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_25B0A3BA4(v13, v10, type metadata accessor for FaceLibraryManager.Entry);
      sub_25B0A3BA4(v14, v7, type metadata accessor for FaceLibraryManager.Entry);
      if ((MEMORY[0x25F85F260](v10, v7) & 1) == 0 || v10[*(v4 + 20)] != v7[*(v4 + 20)])
      {
        break;
      }

      type metadata accessor for FacePlacement.Location(0);
      v16 = sub_25B0E2520();
      sub_25B0A3C0C(v7);
      sub_25B0A3C0C(v10);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_25B0A3C0C(v7);
    sub_25B0A3C0C(v10);
    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_25B0A3BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0A3C0C(uint64_t a1)
{
  v2 = type metadata accessor for FaceLibraryManager.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B0A3CE0(uint64_t a1)
{
  result = sub_25B0E2910();
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

uint64_t sub_25B0A3E34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B05859C;

  return sub_25B0A0F6C(a1, v4, v5, v6);
}

uint64_t sub_25B0A3EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B0498DC;

  return sub_25B0A1E04(a1, v4, v5, v7, v6);
}

uint64_t sub_25B0A3FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceLibraryManager.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static FaceManager.Placement.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != v4)
  {
    return v4 & (v3 ^ 1u);
  }

  type metadata accessor for FaceManager.Placement(0);

  return sub_25B0E2510();
}

NanoFaceGallery::FaceManager::Placement::Location_optional __swiftcall FaceManager.Placement.Location.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_25B0A40AC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t FaceManager.Placement.init(faceIdentifier:location:galleryRowIndex:faceIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v12 = sub_25B0E2560();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  v17 = &a6[*(type metadata accessor for FaceManager.Placement(0) + 24)];
  *v17 = a1;
  v17[1] = a2;
  *a6 = v16;
  if (v16)
  {
    (*(v13 + 104))(v15, *MEMORY[0x277D2BDE0], v12);
    v18 = sub_25B0E2550();
    (*(v13 + 8))(v15, v12);
    if (v18)
    {
      v19 = a5 < 3;
    }

    else
    {
      v19 = a4 < 5;
    }

    v20 = v19;
  }

  else
  {
    v20 = a5 < 5;
    if (a4)
    {
      v20 = a5 < 3;
    }
  }

  v21 = !v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25B0E8B10;
  *(v22 + 32) = v16;
  *(v22 + 40) = v21;
  *(v22 + 48) = a4;
  *(v22 + 56) = a5;
  return MEMORY[0x25F85F060]();
}

uint64_t FaceManager.Placement.hash(into:)(uint64_t a1)
{
  MEMORY[0x25F860A80](*v1);
  type metadata accessor for FaceManager.Placement(0);
  sub_25B0E2540();
  sub_25B0A5100(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();

  return sub_25B0E3780();
}

uint64_t FaceManager.Placement.hashValue.getter()
{
  sub_25B0E3F10();
  MEMORY[0x25F860A80](*v0);
  type metadata accessor for FaceManager.Placement(0);
  sub_25B0E2540();
  sub_25B0A5100(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B0A4470(uint64_t a1)
{
  sub_25B0E3F10();
  MEMORY[0x25F860A80](*v1);
  sub_25B0E2540();
  sub_25B0A5100(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B0A4530(uint64_t a1, uint64_t a2)
{
  MEMORY[0x25F860A80](*v2);
  sub_25B0E2540();
  sub_25B0A5100(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();

  return sub_25B0E3780();
}

uint64_t sub_25B0A45EC(uint64_t a1, uint64_t a2)
{
  sub_25B0E3F10();
  MEMORY[0x25F860A80](*v2);
  sub_25B0E2540();
  sub_25B0A5100(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B0A46A8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == v4)
  {
    return sub_25B0E2510();
  }

  else
  {
    return v4 & (v3 ^ 1u);
  }
}

BOOL sub_25B0A46D4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (v3 == v4)
  {
    v5 = sub_25B0E2510();
  }

  else
  {
    v5 = v4 & (v3 ^ 1);
  }

  return (v5 & 1) == 0;
}

BOOL sub_25B0A4724(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == v4)
  {
    v5 = sub_25B0E2510();
  }

  else
  {
    v5 = v4 & (v3 ^ 1);
  }

  return (v5 & 1) == 0;
}

uint64_t sub_25B0A4770(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (v3 == v4)
  {
    return sub_25B0E2510();
  }

  else
  {
    return v4 & (v3 ^ 1u);
  }
}

uint64_t FaceManager.Metadata.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FaceManager.Metadata.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FaceManager.Metadata.caption.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FaceManager.Metadata.caption.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FaceManager.Metadata.curationPlacements.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t FaceManager.Metadata.placement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FaceManager.Metadata(0) + 36);

  return sub_25B0A4FE0(v3, a1);
}

uint64_t FaceManager.Metadata.placement.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FaceManager.Metadata(0) + 36);

  return sub_25B0A5044(a1, v3);
}

id FaceManager.Metadata.face.getter()
{
  v1 = *(v0 + *(type metadata accessor for FaceManager.Metadata(0) + 40));

  return v1;
}

void FaceManager.Metadata.face.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FaceManager.Metadata(0) + 40);

  *(v1 + v3) = a1;
}

uint64_t FaceManager.Metadata.hash(into:)(uint64_t a1)
{
  sub_25B0E3780();
  sub_25B0E3780();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x25F860AA0](*&v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  MEMORY[0x25F860AA0](*&v4);
  v5 = *(v1 + 48);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x25F860AA0](*&v5);
  v6 = *(v1 + 56);
  MEMORY[0x25F860A80](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = v8[1];
      v12 = v8[2];
      v13 = v8[4];
      MEMORY[0x25F860A80](v8[3]);
      MEMORY[0x25F860A80](v10);
      MEMORY[0x25F860A80](v11);
      MEMORY[0x25F860A80](v12);
      MEMORY[0x25F860A80](v13);
      MEMORY[0x25F860A80](v9);
      v8 += 6;
      --v7;
    }

    while (v7);
  }

  v14 = type metadata accessor for FaceManager.Metadata(0);
  MEMORY[0x25F860A80](*(v1 + *(v14 + 36)));
  type metadata accessor for FaceManager.Placement(0);
  sub_25B0E2540();
  sub_25B0A5100(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();
  sub_25B0E3780();
  return sub_25B0E3B00();
}

uint64_t FaceManager.Metadata.hashValue.getter()
{
  sub_25B0E3F10();
  FaceManager.Metadata.hash(into:)(v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B0A4CE0()
{
  sub_25B0E3F10();
  FaceManager.Metadata.hash(into:)(v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B0A4D24(uint64_t a1)
{
  sub_25B0E3F10();
  FaceManager.Metadata.hash(into:)(v2);
  return sub_25B0E3F50();
}

uint64_t sub_25B0A4D64(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x25F860AA0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x25F860AA0](*&v3);
}

uint64_t _s15NanoFaceGallery0B7ManagerO8MetadataV2eeoiySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24);
  if (!v5 && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40))
  {
    return 0;
  }

  if (a1[6] != *(a2 + 48))
  {
    return 0;
  }

  if ((sub_25B0A2B4C(*(a1 + 7), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for FaceManager.Metadata(0) + 36);
  v8 = a1 + v7;
  v9 = a2 + v7;
  if (*(a1 + v7) != *(a2 + v7))
  {
    return 0;
  }

  v10 = type metadata accessor for FaceManager.Placement(0);
  if ((sub_25B0E2520() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v10 + 24);
  v12 = *&v8[v11];
  v13 = *&v8[v11 + 8];
  v14 = (v9 + v11);
  if ((v12 != *v14 || v13 != v14[1]) && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  sub_25B046E60(0, &qword_27FA319D0, 0x277D82BB8);
  return sub_25B0E3AF0() & 1;
}

uint64_t _s15NanoFaceGallery0B7ManagerO9PlacementV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for FaceManager.Placement(0);
  if ((sub_25B0E2520() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *&a1[v5];
  v7 = *&a1[v5 + 8];
  v8 = &a2[v5];
  if (v6 == *v8 && v7 == *(v8 + 1))
  {
    return 1;
  }

  return sub_25B0E3E30();
}

uint64_t sub_25B0A4FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceManager.Placement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0A5044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceManager.Placement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B0A50AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31D60;
  if (!qword_27FA31D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31D60);
  }

  return result;
}

uint64_t sub_25B0A5100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B0A51C8(uint64_t a1)
{
  result = sub_25B0E2540();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25B0A5284(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_25B0A5360(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for FaceManager.Placement(319);
      if (v3 <= 0x3F)
      {
        sub_25B046E60(319, &qword_27FA31DA0, 0x277D2C000);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25B0A5360(uint64_t a1)
{
  if (!qword_27FA31D98)
  {
    type metadata accessor for NTKFaceCurationPlacement(255);
    v1 = sub_25B0E3840();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA31D98);
    }
  }
}

uint64_t sub_25B0A53BC()
{
  swift_getKeyPath();
  sub_25B0A6558(&qword_27FA31DC0, type metadata accessor for FontManager, &unk_25B0E8D54);
  sub_25B0E28D0();
}

uint64_t sub_25B0A5460(uint64_t a1)
{

  v3 = sub_25B0E3180();

  if (v3)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B0A6558(&qword_27FA31DC0, type metadata accessor for FontManager, &unk_25B0E8D54);
    sub_25B0E28C0();
  }
}

uint64_t sub_25B0A55B4()
{
  v1 = v0;
  v2 = sub_25B0E2990();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_25B0E29C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DC8, &qword_25B0E8D98);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *(v1 + 24) = v10;
  sub_25B0E2900();
  sub_25B0E29B0();
  sub_25B0E29A0();
  (*(v7 + 8))(v9, v6);
  sub_25B0E2980();
  (*(v3 + 8))(v5, v2);
  *(v1 + 16) = sub_25B0E31C0();
  v11 = *(v1 + 24);
  swift_allocObject();
  swift_weakInit();

  os_unfair_lock_lock((v11 + 24));
  sub_25B0A6488((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));

  return v1;
}

uint64_t sub_25B0A57E8(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;

  v6 = sub_25B0E3940();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  result = sub_25B052F48(0, 0, v5, &unk_25B0E8DA8, v8);
  *a1 = result;
  return result;
}

uint64_t sub_25B0A5954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F30, &unk_25B0E8AD8);
  v4[7] = swift_task_alloc();
  v5 = sub_25B0E3A90();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B0A5A4C, 0, 0);
}

uint64_t sub_25B0A5A4C()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_25B0E3AA0();

  sub_25B0E3A80();
  swift_beginAccess();
  v2 = sub_25B0A6558(&qword_27FA31D58, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_25B0A5B94;
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_25B0A5B94()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_25B0A5E34;
  }

  else
  {
    v2 = sub_25B0A5CA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B0A5CC4()
{
  v1 = v0[7];
  v2 = sub_25B0E22B0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
LABEL_8:

    v7 = v0[1];

    return v7();
  }

  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (!Strong)
  {
    v6 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_25B0A65A0(v6);
    goto LABEL_8;
  }

  sub_25B0E3900();
  v0[14] = sub_25B0E38F0();
  v5 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B0A5EC0, v5, v4);
}

uint64_t sub_25B0A5E34()
{
  *(v0 + 40) = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F40, &unk_25B0E6060);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_25B0A5EC0()
{

  sub_25B0A6018();

  return MEMORY[0x2822009F8](sub_25B0A5F2C, 0, 0);
}

uint64_t sub_25B0A5F2C()
{
  v1 = v0[7];

  sub_25B0A65A0(v1);
  v2 = sub_25B0A6558(&qword_27FA31D58, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_25B0A5B94;
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_25B0A6018()
{
  v0 = sub_25B0E2990();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25B0E29C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA30D28 != -1)
  {
    swift_once();
  }

  v8 = sub_25B0E2970();
  __swift_project_value_buffer(v8, qword_27FA399E0);
  v9 = sub_25B0E2950();
  v10 = sub_25B0E3A50();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25B03D000, v9, v10, "Refreshing current font…", v11, 2u);
    MEMORY[0x25F8613E0](v11, -1, -1);
  }

  sub_25B0E29B0();
  sub_25B0E29A0();
  (*(v5 + 8))(v7, v4);
  sub_25B0E2980();
  (*(v1 + 8))(v3, v0);
  v12 = sub_25B0E31C0();
  return sub_25B0A5460(v12);
}

uint64_t sub_25B0A6260()
{
  v1 = *(v0 + 3);

  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    sub_25B0E39E0();
  }

  os_unfair_lock_unlock((v1 + 24));

  v2 = OBJC_IVAR____TtC15NanoFaceGallery11FontManager___observationRegistrar;
  v3 = sub_25B0E2910();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for FontManager(uint64_t a1)
{
  result = qword_27FA31DB0;
  if (!qword_27FA31DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B0A63AC(uint64_t a1)
{
  result = sub_25B0E2910();
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

uint64_t sub_25B0A644C()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_25B0A64A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B0498DC;

  return sub_25B0A5954(a1, v4, v5, v6);
}

uint64_t sub_25B0A6558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B0A65A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F30, &unk_25B0E8AD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ForYouFacesManager.suggestedFaces.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DD0, &qword_25B0E8DB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_25B0E2750();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v29 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v24 = &v23 - v7;
  v8 = *(v0 + 16);
  swift_getKeyPath();
  v30[0] = v8;
  sub_25B0AB454(&qword_27FA31DD8, type metadata accessor for GalleryManager, &unk_25B0E8F8C);
  sub_25B0E28D0();

  v9 = *(v8 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_25B0A6974();
  v11 = result;
  v28 = result[2];
  if (!v28)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_15:

    return v16;
  }

  v12 = 0;
  v13 = v26;
  v27 = (v25 + 48);
  v14 = (v25 + 32);
  v15 = result + 5;
  v16 = MEMORY[0x277D84F90];
  v23 = v9;
  while (v12 < *(v11 + 16))
  {
    v17 = *v15;
    v30[0] = *(v15 - 1);
    v30[1] = v17;

    sub_25B0A7724(v30, v9, v3);

    if ((*v27)(v3, 1, v13) == 1)
    {
      result = sub_25B0A8A2C(v3);
    }

    else
    {
      v18 = *v14;
      v19 = v24;
      (*v14)(v24, v3, v13);
      v18(v29, v19, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_25B089C98(0, v16[2] + 1, 1, v16);
      }

      v21 = v16[2];
      v20 = v16[3];
      if (v21 >= v20 >> 1)
      {
        v16 = sub_25B089C98((v20 > 1), v21 + 1, 1, v16);
      }

      v16[2] = v21 + 1;
      v22 = v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21;
      v13 = v26;
      result = (v18)(v22, v29, v26);
      v9 = v23;
    }

    ++v12;
    v15 += 2;
    if (v28 == v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

char *sub_25B0A6974()
{
  v0 = sub_25B0A7C74();
  v1 = v0;
  if (v0 >> 62)
  {
LABEL_121:
    v2 = sub_25B0E3CC0();
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v138[0] = MEMORY[0x277D84F90];
    result = sub_25B08C2F8(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_124;
    }

    v4 = 0;
    v5 = v138[0];
    do
    {
      v6 = v5;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25F860730](v4, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v4 + 32);
      }

      v8 = v7;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DF8, &qword_25B0E8E38);
      v9 = sub_25B0E3760();
      v11 = v10;

      v5 = v6;
      v138[0] = v6;
      v12 = *(v6 + 16);
      v13 = *(v5 + 24);
      if (v12 >= v13 >> 1)
      {
        sub_25B08C2F8((v13 > 1), v12 + 1, 1);
        v5 = v138[0];
      }

      ++v4;
      *(v5 + 16) = v12 + 1;
      v14 = v5 + 16 * v12;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v4);
    v119 = v5;
  }

  else
  {

    v119 = MEMORY[0x277D84F90];
  }

  if (qword_27FA30D30 != -1)
  {
    swift_once();
  }

  v15 = sub_25B0E2970();
  __swift_project_value_buffer(v15, qword_27FA399F8);

  v16 = sub_25B0E2950();
  v17 = sub_25B0E3A50();

  v18 = "FaceGallery  PROJECT:NanoFaceGallery-1\n";
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v138[0] = v20;
    *v19 = 136315138;
    v21 = MEMORY[0x25F860360](v119, MEMORY[0x277D837D0]);
    v23 = sub_25B04BE04(v21, v22, v138);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_25B03D000, v16, v17, "newFaces: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x25F8613E0](v20, -1, -1);
    MEMORY[0x25F8613E0](v19, -1, -1);
  }

  v24 = FaceLibraryManager.libraryFaces.getter();
  v25 = v24;
  if (v24 >> 62)
  {
    v26 = sub_25B0E3CC0();
  }

  else
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26)
  {
    v138[0] = MEMORY[0x277D84F90];
    result = sub_25B08C2F8(0, v26 & ~(v26 >> 63), 0);
    if ((v26 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      v28 = v138[0];
      do
      {
        v29 = v28;
        if ((v25 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x25F860730](v27, v25);
        }

        else
        {
          v30 = *(v25 + 8 * v27 + 32);
        }

        v31 = v30;
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DF8, &qword_25B0E8E38);
        v32 = sub_25B0E3760();
        v34 = v33;

        v28 = v29;
        v138[0] = v29;
        v36 = *(v29 + 16);
        v35 = *(v29 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_25B08C2F8((v35 > 1), v36 + 1, 1);
          v28 = v138[0];
        }

        ++v27;
        *(v28 + 16) = v36 + 1;
        v37 = v28 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
      }

      while (v26 != v27);
      v38 = v28;

      v18 = "@(#)PROGRAM:NanoFaceGallery  PROJECT:NanoFaceGallery-1\n" + 16;
      goto LABEL_31;
    }

LABEL_124:
    __break(1u);
    return result;
  }

  v38 = MEMORY[0x277D84F90];
LABEL_31:

  v39 = sub_25B0E2950();
  v1 = sub_25B0E3A50();

  if (os_log_type_enabled(v39, v1))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v138[0] = v41;
    *v40 = *(v18 + 388);
    v42 = MEMORY[0x25F860360](v38, MEMORY[0x277D837D0]);
    v44 = sub_25B04BE04(v42, v43, v138);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_25B03D000, v39, v1, "libraryFaces: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x25F8613E0](v41, -1, -1);
    MEMORY[0x25F8613E0](v40, -1, -1);
  }

  v45 = MEMORY[0x277D84F90];
  v138[0] = MEMORY[0x277D84F90];
  sub_25B0A80D0();
  v47 = v46;
  v48 = *(v38 + 16);
  if (v48 >= 3)
  {
    v49 = 3;
  }

  else
  {
    v49 = *(v38 + 16);
  }

  if (v48)
  {
    v50 = 0;
    v123 = v46 + 64;
    v116 = v38 + 32;
    v122 = *(v18 + 388);
    v51 = v45;
    v124 = v46;
    v118 = v38;
    v115 = v49;
    while (1)
    {
      if (v50 == v49)
      {
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (v50 >= *(v38 + 16))
      {
        goto LABEL_120;
      }

      v126 = v51;
      v117 = v50 + 1;
      v52 = (v116 + 16 * v50);
      v1 = v52[1];
      v131 = *v52;
      v53 = 1 << *(v47 + 32);
      v54 = v53 < 64 ? ~(-1 << v53) : -1;
      v55 = v54 & *(v47 + 64);
      v56 = (v53 + 63) >> 6;

      v51 = 0;
      v57 = MEMORY[0x277D84F90];
      v129 = v1;
      v121 = v56;
LABEL_45:
      v128 = v57;
      if (v55)
      {
        break;
      }

      while (1)
      {
        v58 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v58 >= v56)
        {
          break;
        }

        v55 = *(v123 + 8 * v58);
        ++v51;
        if (v55)
        {
          v51 = v58;
          goto LABEL_50;
        }
      }

      v75 = sub_25B0E2950();
      v76 = sub_25B0E3A50();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        ObjectType = v78;
        *v77 = 136315394;
        v79 = sub_25B04BE04(v131, v1, &ObjectType);

        *(v77 + 4) = v79;
        *(v77 + 12) = 2080;
        v80 = *(v57 + 2);
        if (v80)
        {
          v136 = MEMORY[0x277D84F90];
          sub_25B08C318(0, v80, 0);
          v81 = v136;
          v82 = (v57 + 32);
          v83 = *(v136 + 16);
          do
          {
            v85 = *v82++;
            v84 = v85;
            v86 = *(v136 + 24);
            if (v83 >= v86 >> 1)
            {
              sub_25B08C318((v86 > 1), v83 + 1, 1);
            }

            *(v136 + 16) = v83 + 1;
            *(v136 + 8 * v83++ + 32) = v84;
            --v80;
          }

          while (v80);
          v57 = v128;
        }

        else
        {
          v81 = MEMORY[0x277D84F90];
        }

        v87 = MEMORY[0x25F860360](v81, MEMORY[0x277D83B88]);
        v1 = v88;

        v89 = sub_25B04BE04(v87, v1, &ObjectType);

        *(v77 + 14) = v89;
        _os_log_impl(&dword_25B03D000, v75, v76, "%s containedGroups: %s", v77, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8613E0](v78, -1, -1);
        MEMORY[0x25F8613E0](v77, -1, -1);

        v47 = v124;
      }

      else
      {
      }

      v51 = v126;
      v90 = *(v57 + 2);
      if (v90)
      {
        v1 = 0;
        v91 = v57 + 32;
        v130 = v57 + 32;
        v132 = *(v57 + 2);
        while (v1 < *(v57 + 2))
        {
          if (*(v47 + 16))
          {
            sub_25B066160(*&v91[8 * v1]);
            if (v92)
            {
              v133 = v1;

              v94 = sub_25B0AAF44(v93, v119, v118, v138);

              v95 = 0;
              v96 = v94 + 56;
              v97 = 1 << *(v94 + 32);
              if (v97 < 64)
              {
                v98 = ~(-1 << v97);
              }

              else
              {
                v98 = -1;
              }

              v99 = v98 & *(v94 + 56);
              v100 = (v97 + 63) >> 6;
              v135 = v94;
              while (v99)
              {
LABEL_105:
                v102 = (*(v94 + 48) + ((v95 << 10) | (16 * __clz(__rbit64(v99)))));
                v104 = *v102;
                v103 = v102[1];
                swift_bridgeObjectRetain_n();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v51 = sub_25B089CE8(0, *(v51 + 2) + 1, 1, v51);
                }

                v106 = *(v51 + 2);
                v105 = *(v51 + 3);
                if (v106 >= v105 >> 1)
                {
                  v51 = sub_25B089CE8((v105 > 1), v106 + 1, 1, v51);
                }

                *(v51 + 2) = v106 + 1;
                v107 = &v51[16 * v106];
                *(v107 + 4) = v104;
                *(v107 + 5) = v103;
                v138[0] = v51;

                v108 = sub_25B0E2950();
                v109 = sub_25B0E3A50();

                if (os_log_type_enabled(v108, v109))
                {
                  v110 = swift_slowAlloc();
                  v127 = v51;
                  v111 = swift_slowAlloc();
                  ObjectType = v111;
                  *v110 = v122;
                  v112 = sub_25B04BE04(v104, v103, &ObjectType);

                  *(v110 + 4) = v112;
                  _os_log_impl(&dword_25B03D000, v108, v109, "suggesting %s", v110, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v111);
                  v113 = v111;
                  v51 = v127;
                  MEMORY[0x25F8613E0](v113, -1, -1);
                  v114 = v110;
                  v94 = v135;
                  MEMORY[0x25F8613E0](v114, -1, -1);
                }

                else
                {
                }

                v99 &= v99 - 1;
                if (*(v51 + 2) == 3)
                {

                  goto LABEL_113;
                }
              }

              while (1)
              {
                v101 = v95 + 1;
                if (__OFADD__(v95, 1))
                {
                  goto LABEL_115;
                }

                if (v101 >= v100)
                {

                  v47 = v124;
                  v57 = v128;
                  v90 = v132;
                  v1 = v133;
                  v91 = v130;
                  break;
                }

                v99 = *(v96 + 8 * v101);
                ++v95;
                if (v99)
                {
                  v95 = v101;
                  goto LABEL_105;
                }
              }
            }
          }

          if (++v1 == v90)
          {
            goto LABEL_38;
          }
        }

        goto LABEL_118;
      }

LABEL_38:

      v38 = v118;
      v50 = v117;
      v49 = v115;
      if (v117 == v115)
      {
        goto LABEL_116;
      }
    }

LABEL_50:
    v59 = (v51 << 9) | (8 * __clz(__rbit64(v55)));
    v120 = *(*(v47 + 48) + v59);
    v60 = *(*(v47 + 56) + v59);
    sub_25B0E3900();

    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v125 = (v55 - 1) & v55;
    v61 = v60 + 56;
    v62 = 1 << *(v60 + 32);
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    else
    {
      v63 = -1;
    }

    v64 = v63 & *(v60 + 56);
    v65 = (v62 + 63) >> 6;

    v66 = 0;
    v134 = v60;
    while (v64)
    {
LABEL_61:
      v68 = (*(v60 + 48) + ((v66 << 10) | (16 * __clz(__rbit64(v64)))));
      v69 = *v68;
      v70 = v68[1];

      sub_25B0E38F0();
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v1 = v129;
      if (v69 == v131 && v70 == v129)
      {

LABEL_71:

        v47 = v124;
        v56 = v121;
        v55 = v125;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_25B089DF4(0, *(v57 + 2) + 1, 1, v57);
        }

        v74 = *(v57 + 2);
        v73 = *(v57 + 3);
        if (v74 >= v73 >> 1)
        {
          v57 = sub_25B089DF4((v73 > 1), v74 + 1, 1, v57);
        }

        *(v57 + 2) = v74 + 1;
        *&v57[8 * v74 + 32] = v120;
LABEL_76:

        goto LABEL_45;
      }

      v64 &= v64 - 1;
      v72 = sub_25B0E3E30();

      v60 = v134;
      if (v72)
      {
        goto LABEL_71;
      }
    }

    while (1)
    {
      v67 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v67 >= v65)
      {

        v47 = v124;
        v56 = v121;
        v55 = v125;
        goto LABEL_76;
      }

      v64 = *(v61 + 8 * v67);
      ++v66;
      if (v64)
      {
        v66 = v67;
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

LABEL_113:
  ObjectType = v119;
  sub_25B08BF80(v51);
  return ObjectType;
}

uint64_t sub_25B0A7724@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = sub_25B0E2750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v57 = *a1;
  v55 = v9;
  v10 = sub_25B0E3900();
  v44 = sub_25B0E38F0();
  v53 = v10;
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a2 + 16);
  if (!v11)
  {
LABEL_20:
    if (qword_27FA30D30 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v12 = 0;
  v13 = a2 + 32;
  v52 = v6 + 16;
  v51 = (v6 + 8);
  v42 = a2 + 32;
  v43 = v11;
  while (1)
  {
    v14 = (v13 + 72 * v12);
    v15 = v14[7];
    v56 = *(v15 + 16);
    if (v56)
    {
      break;
    }

LABEL_6:
    if (++v12 == v11)
    {
      goto LABEL_20;
    }
  }

  v46 = v12;
  v16 = v14[1];
  v17 = v14[5];
  v18 = v14[6];
  v19 = v14[3];
  v54 = v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v48 = v17;

  v47 = v18;

  v50 = v16;

  v49 = v19;

  v20 = 0;
  while (v20 < *(v15 + 16))
  {
    v23 = v6;
    v24 = v5;
    (*(v6 + 16))(v8, v54 + *(v6 + 72) * v20, v5);
    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v25 = sub_25B0E2730();
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DF8, &qword_25B0E8E38);
    v26 = sub_25B0E3760();
    v28 = v27;

    if (v26 == v57 && v28 == v55)
    {

      v5 = v24;
    }

    else
    {
      v29 = sub_25B0E3E30();

      v5 = v24;
      if ((v29 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v21 = sub_25B0E2730();
    v22 = [v21 curationPlacements];

    if (v22)
    {

      v6 = v23;
      v30 = v45;
      (*(v23 + 32))(v45, v8, v5);
      v31 = 0;
      goto LABEL_24;
    }

LABEL_11:
    ++v20;
    (*v51)(v8, v5);

    v6 = v23;
    if (v56 == v20)
    {

      v13 = v42;
      v11 = v43;
      v12 = v46;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_21:
  v32 = sub_25B0E2970();
  __swift_project_value_buffer(v32, qword_27FA399F8);
  v33 = v55;

  v34 = sub_25B0E2950();
  v35 = sub_25B0E3A30();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = v6;
    v38 = swift_slowAlloc();
    ObjectType = v38;
    *v36 = 136315138;
    *(v36 + 4) = sub_25B04BE04(v57, v33, &ObjectType);
    _os_log_impl(&dword_25B03D000, v34, v35, "could not find item for face class %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v39 = v38;
    v6 = v37;
    MEMORY[0x25F8613E0](v39, -1, -1);
    MEMORY[0x25F8613E0](v36, -1, -1);
  }

  v31 = 1;
  v30 = v45;
LABEL_24:
  (*(v6 + 56))(v30, v31, 1, v5);
}

uint64_t sub_25B0A7C74()
{
  v1 = sub_25B0E2750();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  swift_getKeyPath();
  v40 = v5;
  sub_25B0AB454(&qword_27FA31DD8, type metadata accessor for GalleryManager, &unk_25B0E8F8C);
  sub_25B0E28D0();

  v6 = *(v5 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v32 = v1;
    v33 = v4;
    v31 = v2;
    v8 = *(v6 + 16);

    v34 = v8;
    if (v8)
    {
      v9 = 0;
      v35 = "NanoFaceGallery.FaceObserver";
      v10 = (v6 + 88);
      while (1)
      {
        if (v9 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 - 7);
        v11 = *(v10 - 6);
        v14 = *(v10 - 1);
        v13 = *v10;
        v15 = *(v10 - 2);
        v16 = *(v10 - 4);
        sub_25B0E3900();
        v37 = v15;

        v36 = v14;

        v39 = v13;

        v38 = v16;

        sub_25B0E38F0();
        sub_25B0E3850();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v17 = sub_25B0E3730();
        v18 = sub_25B0E3730();
        v19 = NTKCompanionClockFaceLocalizedString();

        v20 = sub_25B0E3740();
        v22 = v21;

        if (v12 == v20 && v11 == v22)
        {
          break;
        }

        v23 = sub_25B0E3E30();

        if (v23)
        {
          goto LABEL_13;
        }

        ++v9;

        v10 += 9;
        if (v34 == v9)
        {
          goto LABEL_18;
        }
      }

LABEL_13:

      v24 = v39;
      v25 = *(v39 + 16);
      if (!v25)
      {

        goto LABEL_18;
      }

      v34 = v11;
      v40 = MEMORY[0x277D84F90];
      sub_25B0E3C50();
      v26 = v32;
      v35 = *(v31 + 16);
      v27 = v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v28 = *(v31 + 72);
      v29 = (v31 + 8);
      v30 = v33;
      do
      {
        (v35)(v30, v27, v26);
        sub_25B0E2730();
        (*v29)(v30, v26);
        sub_25B0E3C30();
        sub_25B0E3C60();
        sub_25B0E3C70();
        sub_25B0E3C40();
        v27 += v28;
        --v25;
      }

      while (v25);

      return v40;
    }

    else
    {
LABEL_18:

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_25B0A80D0()
{
  v62 = sub_25B0E2750();
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = *(v0 + 16);
  swift_getKeyPath();
  *&v71[0] = v2;
  sub_25B0AB454(&qword_27FA31DD8, type metadata accessor for GalleryManager, &unk_25B0E8F8C);
  sub_25B0E28D0();

  v3 = *(v2 + 16);
  if (!v3)
  {
    sub_25B0D44F0(MEMORY[0x277D84F90]);
    return;
  }

  v4 = sub_25B0D44F0(MEMORY[0x277D84F90]);
  v5 = *(v3 + 16);

  v52 = v5;
  if (!v5)
  {
LABEL_40:

    return;
  }

  v6 = 0;
  v51 = v3 + 32;
  v60 = v65 + 16;
  v59 = v65 + 8;
  v7 = MEMORY[0x277D84FA0];
  v50 = v3;
  while (1)
  {
    if (v6 >= *(v3 + 16))
    {
      goto LABEL_44;
    }

    v58 = v6;
    v10 = (v51 + 72 * v6);
    v11 = v10[1];
    v12 = v10[6];
    v13 = v10[7];
    v14 = v10[5];
    v15 = v10[3];
    sub_25B0E3900();
    v55 = v14;

    v54 = v12;

    v57 = v11;

    v56 = v15;

    v53 = sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v66 = *(v13 + 16);
    if (v66)
    {
      break;
    }

LABEL_4:

    v8 = v58 + 1;

    v6 = v8;
    v9 = v8 == v52;
    v3 = v50;
    if (v9)
    {
      goto LABEL_40;
    }
  }

  v16 = 0;
  v17 = *(v65 + 80);
  v63 = v13;
  v64 = v13 + ((v17 + 32) & ~v17);
  while (v16 < *(v13 + 16))
  {
    v18 = v65;
    v20 = v61;
    v19 = v62;
    (*(v65 + 16))(v61, v64 + *(v65 + 72) * v16, v62);
    v21 = sub_25B0E2730();
    (*(v18 + 8))(v20, v19);
    v22 = [v21 curationPlacements];
    v67 = v16;
    if (!v22)
    {
      goto LABEL_28;
    }

    v23 = v22;
    sub_25B0AB408();
    v24 = sub_25B0E37F0();

    if (v24 >> 62)
    {
      v25 = sub_25B0E3CC0();
      if (!v25)
      {
LABEL_27:

LABEL_28:
        v27 = MEMORY[0x277D84F90];
        v34 = *(MEMORY[0x277D84F90] + 16);
        if (v34)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_27;
      }
    }

    v72 = MEMORY[0x277D84F90];
    sub_25B08C2D8(0, v25 & ~(v25 >> 63), 0);
    if (v25 < 0)
    {
      goto LABEL_43;
    }

    v26 = 0;
    v27 = v72;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x25F860730](v26, v24);
      }

      else
      {
        v28 = *(v24 + 8 * v26 + 32);
      }

      v29 = v28;
      [v28 placement];
      v69 = v71[1];
      v70 = v71[0];
      v68 = v71[2];

      v72 = v27;
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_25B08C2D8((v30 > 1), v31 + 1, 1);
        v27 = v72;
      }

      ++v26;
      *(v27 + 16) = v31 + 1;
      v32 = (v27 + 48 * v31);
      v33 = v69;
      v32[2] = v70;
      v32[3] = v33;
      v32[4] = v68;
    }

    while (v25 != v26);

    v7 = MEMORY[0x277D84FA0];
    v34 = *(v27 + 16);
    if (v34)
    {
LABEL_29:
      *&v71[0] = MEMORY[0x277D84F90];
      sub_25B08C338(0, v34, 0);
      v35 = *&v71[0];
      v37 = *(*&v71[0] + 16);
      v38 = 32;
      do
      {
        v39 = *(v27 + v38);
        *&v71[0] = v35;
        v40 = v35[3];
        if (v37 >= v40 >> 1)
        {
          sub_25B08C338((v40 > 1), v37 + 1, 1);
          v35 = *&v71[0];
        }

        v35[2] = v37 + 1;
        v35[v37 + 4] = v39;
        v38 += 48;
        ++v37;
        --v34;
      }

      while (v34);

      v7 = MEMORY[0x277D84FA0];
      v36 = v35[2];
      if (!v36)
      {
        goto LABEL_10;
      }

LABEL_34:
      v41 = v35 + 4;
      do
      {
        v47 = *v41++;
        v46 = v47;
        if (v4[2] && (v48 = sub_25B066160(v46), (v49 & 1) != 0))
        {
          v72 = *(v4[7] + 8 * v48);
        }

        else
        {
          v72 = v7;
        }

        *&v71[0] = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DF8, &qword_25B0E8E38);
        v42 = sub_25B0E3760();
        sub_25B0A94B4(v71, v42, v43);

        v44 = v72;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v71[0] = v4;
        sub_25B0690E4(v44, v46, isUniquelyReferenced_nonNull_native);
        v4 = *&v71[0];
        --v36;
      }

      while (v36);
      goto LABEL_10;
    }

LABEL_24:

    v35 = MEMORY[0x277D84F90];
    v36 = *(MEMORY[0x277D84F90] + 16);
    if (v36)
    {
      goto LABEL_34;
    }

LABEL_10:
    v16 = v67 + 1;

    v13 = v63;
    if (v16 == v66)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_25B0A878C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

      v9 = a1(v12);

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

uint64_t ForYouFacesManager.deinit()
{

  v1 = OBJC_IVAR____TtC15NanoFaceGallery18ForYouFacesManager___observationRegistrar;
  v2 = sub_25B0E2910();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ForYouFacesManager.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15NanoFaceGallery18ForYouFacesManager___observationRegistrar;
  v2 = sub_25B0E2910();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_25B0A8954@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25B0AB454(&qword_27FA31DD8, type metadata accessor for GalleryManager, &unk_25B0E8F8C);
  sub_25B0E28D0();

  *a2 = *(v3 + 16);
}

uint64_t sub_25B0A8A2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DD0, &qword_25B0E8DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ForYouFacesManager(uint64_t a1)
{
  result = qword_27FA31DE8;
  if (!qword_27FA31DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B0A8B00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E00, &qword_25B0E8E40);
  result = sub_25B0E3B90();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_25B0E3F10();
      sub_25B0E3780();
      result = sub_25B0E3F50();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void *sub_25B0A8D60(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25B0E2750();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E10, &qword_25B0E8E48);
  v8 = sub_25B0E3B90();
  v9 = v8;
  if (*(v7 + 16))
  {
    v45 = v2;
    v10 = 0;
    v11 = *(v7 + 56);
    v46 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v16 = v4 + 16;
    v47 = v4;
    v17 = (v4 + 8);
    v48 = v8 + 56;
    v51 = v7;
    v49 = v15;
    v50 = v8;
    while (v14)
    {
      v26 = v16;
      v27 = __clz(__rbit64(v14));
      v57 = (v14 - 1) & v14;
LABEL_14:
      v31 = (*(v7 + 48) + 72 * (v27 | (v10 << 6)));
      v32 = *v31;
      v33 = v31[1];
      v35 = v31[2];
      v34 = v31[3];
      v36 = v31[4];
      v37 = v31[5];
      v58 = v10;
      v59 = v36;
      v38 = v31[7];
      v60 = v31[6];
      v61 = v37;
      v62 = v38;
      v52 = v31[8];
      sub_25B0E3F10();
      v54 = v33;
      v55 = v32;
      sub_25B0E3780();
      sub_25B0E3F30();
      if (v34)
      {
        sub_25B0E3780();
      }

      v56 = v34;
      v53 = v35;
      if (v61)
      {
        sub_25B0E3F30();
        sub_25B0E3780();
      }

      else
      {
        sub_25B0E3F30();
      }

      sub_25B0AD448(v63, v60);
      v39 = v62;
      MEMORY[0x25F860A80](*(v62 + 16));
      v40 = *(v39 + 16);
      v16 = v26;
      if (v40)
      {
        v41 = v62 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v42 = *(v47 + 72);
        v43 = *(v47 + 16);
        do
        {
          v43(v6, v41, v3);
          sub_25B0AB454(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
          sub_25B0E36D0();
          (*v17)(v6, v3);
          v41 += v42;
          --v40;
        }

        while (v40);
      }

      v18 = v52;
      MEMORY[0x25F860A80](v52);
      sub_25B0E3F50();
      v9 = v50;
      v19 = v48;
      v20 = sub_25B0E3B70();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v9 + 48) + 72 * v20);
      v22 = v54;
      *v21 = v55;
      v21[1] = v22;
      v23 = v56;
      v14 = v57;
      v21[2] = v53;
      v21[3] = v23;
      v10 = v58;
      v24 = v61;
      v21[4] = v59;
      v21[5] = v24;
      v25 = v62;
      v21[6] = v60;
      v21[7] = v25;
      v21[8] = v18;
      ++*(v9 + 16);
      v7 = v51;
      v15 = v49;
    }

    v28 = v10;
    result = v46;
    while (1)
    {
      v10 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= v15)
      {
        break;
      }

      v30 = v46[v10];
      ++v28;
      if (v30)
      {
        v26 = v16;
        v27 = __clz(__rbit64(v30));
        v57 = (v30 - 1) & v30;
        goto LABEL_14;
      }
    }

    v44 = 1 << *(v7 + 32);
    if (v44 >= 64)
    {
      bzero(v46, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v46 = -1 << v44;
    }

    v2 = v45;
    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

unint64_t *sub_25B0A91C8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = sub_25B0AAC48(v11, a2, a3, a4, a5, a6);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

uint64_t sub_25B0A9290(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E00, &qword_25B0E8E40);
  result = sub_25B0E3BA0();
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
    sub_25B0E3F10();

    sub_25B0E3780();
    result = sub_25B0E3F50();
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

uint64_t sub_25B0A94B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25B0E3F10();
  sub_25B0E3780();
  v8 = sub_25B0E3F50();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25B0E3E30() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_25B0A9BD4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_25B0A9604(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v4 = sub_25B0E2750();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v68 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - v8;
  v54 = v2;
  v10 = *v2;
  sub_25B0E3F10();
  sub_25B0AB55C(&v75);
  v11 = sub_25B0E3F50();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_30:
    v48 = v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v73[0] = *v48;
    sub_25B08CEB4(a2, &v75);
    sub_25B0A9D54(a2, v14, isUniquelyReferenced_nonNull_native);
    *v48 = *&v73[0];
    v50 = *(a2 + 48);
    v51 = v55;
    *(v55 + 32) = *(a2 + 32);
    *(v51 + 48) = v50;
    *(v51 + 64) = *(a2 + 64);
    v52 = *(a2 + 16);
    *v51 = *a2;
    *(v51 + 16) = v52;
    return;
  }

  v65 = v4;
  v66 = v9;
  v15 = ~v13;
  v17 = *a2;
  v16 = *(a2 + 8);
  v64 = v5 + 16;
  v67 = v5;
  v63 = v5 + 8;
  v60 = v10;
  v59 = v10 + 56;
  v58 = ~v13;
  v57 = v16;
  v56 = v17;
  v18 = (v5 + 8);
  while (1)
  {
    v19 = *(v10 + 48) + 72 * v14;
    v75 = *v19;
    v21 = *(v19 + 32);
    v20 = *(v19 + 48);
    v22 = *(v19 + 64);
    v76 = *(v19 + 16);
    v77 = v21;
    v79 = v22;
    v78 = v20;
    if (v75 != __PAIR128__(v16, v17) && (sub_25B0E3E30() & 1) == 0)
    {
      goto LABEL_4;
    }

    v23 = *(a2 + 24);
    if (*(&v76 + 1))
    {
      if (!v23 || v76 != *(a2 + 16) && (sub_25B0E3E30() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v23)
    {
      goto LABEL_4;
    }

    v24 = *(a2 + 40);
    if (*(&v77 + 1))
    {
      if (!v24 || v77 != *(a2 + 32) && (sub_25B0E3E30() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v24)
    {
      goto LABEL_4;
    }

    v25 = v78;
    v26 = *(a2 + 48);
    sub_25B08CEB4(&v75, v73);
    sub_25B0AD0C8(v25, v26);
    if ((v27 & 1) == 0 || (v28 = *(a2 + 56), v71 = *(&v78 + 1), v29 = *(*(&v78 + 1) + 16), v70 = v28, v30 = *(v28 + 16), v69 = v29, v29 != v30))
    {
LABEL_3:
      sub_25B08CF10(&v75);
      v10 = v60;
      v12 = v59;
      v15 = v58;
      v16 = v57;
      v17 = v56;
      goto LABEL_4;
    }

    if (v69 && v71 != v70)
    {
      break;
    }

LABEL_28:
    sub_25B08CF10(&v75);
    v10 = v60;
    v12 = v59;
    v15 = v58;
    v16 = v57;
    v17 = v56;
    if (v79 == *(a2 + 64))
    {
      sub_25B08CF10(a2);
      v41 = *(v10 + 48) + 72 * v14;
      v43 = *(v41 + 16);
      v42 = *(v41 + 32);
      v44 = *(v41 + 64);
      v73[3] = *(v41 + 48);
      v74 = v44;
      v73[0] = *v41;
      v73[1] = v43;
      v73[2] = v42;
      v45 = *(v41 + 48);
      v46 = v55;
      *(v55 + 32) = *(v41 + 32);
      *(v46 + 48) = v45;
      *(v46 + 64) = *(v41 + 64);
      v47 = *(v41 + 16);
      *v46 = *v41;
      *(v46 + 16) = v47;
      sub_25B08CEB4(v73, v72);
      return;
    }

LABEL_4:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v31 = 0;
  v32 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v62 = v71 + v32;
  v61 = v70 + v32;
  while (v31 < *(v71 + 16))
  {
    v33 = *(v67 + 72) * v31;
    v34 = *(v67 + 16);
    v35 = v66;
    v36 = v65;
    v34(v66, v62 + v33, v65);
    if (v31 >= *(v70 + 16))
    {
      goto LABEL_32;
    }

    v37 = v61 + v33;
    v38 = v68;
    v34(v68, v37, v36);
    sub_25B0AB454(&qword_27FA314D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE10]);
    v39 = sub_25B0E3700();
    v40 = *v18;
    (*v18)(v38, v36);
    v40(v35, v36);
    if ((v39 & 1) == 0)
    {
      goto LABEL_3;
    }

    if (v69 == ++v31)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_25B0A9BD4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25B0A8B00(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25B0AA2C0();
      goto LABEL_16;
    }

    sub_25B0AA5AC(v8 + 1);
  }

  v10 = *v4;
  sub_25B0E3F10();
  sub_25B0E3780();
  result = sub_25B0E3F50();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25B0E3E30();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25B0E3E70();
  __break(1u);
  return result;
}

void sub_25B0A9D54(unint64_t *a1, unint64_t a2, char a3)
{
  v7 = sub_25B0E2750();
  v59 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v58 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v46 - v10;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v54 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_37;
  }

  if (a3)
  {
    sub_25B0A8D60(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25B0AA41C();
      goto LABEL_37;
    }

    sub_25B0AA7E4(v11 + 1);
  }

  v13 = *v3;
  sub_25B0E3F10();
  sub_25B0AB55C(&v64);
  v14 = sub_25B0E3F50();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v61 = ~v16;
    v17 = *a1;
    v62 = a1[1];
    v53 = (v59 + 8);
    v48 = v13;
    v47 = v13 + 56;
    do
    {
      v18 = *(v13 + 48) + 72 * a2;
      v64 = *v18;
      v20 = *(v18 + 32);
      v19 = *(v18 + 48);
      v21 = *(v18 + 64);
      v65 = *(v18 + 16);
      v66 = v20;
      v68 = v21;
      v67 = v19;
      if (v64 != __PAIR128__(v62, v17) && (sub_25B0E3E30() & 1) == 0)
      {
        goto LABEL_11;
      }

      v22 = a1[3];
      if (*(&v65 + 1))
      {
        if (!v22 || v65 != *(a1 + 1) && (sub_25B0E3E30() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v22)
      {
        goto LABEL_11;
      }

      v23 = a1[5];
      if (*(&v66 + 1))
      {
        if (!v23 || v66 != *(a1 + 2) && (sub_25B0E3E30() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v23)
      {
        goto LABEL_11;
      }

      v24 = v67;
      v25 = a1[6];
      sub_25B08CEB4(&v64, v63);
      sub_25B0AD0C8(v24, v25);
      if ((v26 & 1) != 0 && (v27 = a1[7], v57 = *(&v67 + 1), v28 = *(*(&v67 + 1) + 16), v56 = v27, v29 = *(v27 + 16), v55 = v28, v28 == v29))
      {
        if (v55 && v57 != v56)
        {
          v30 = 0;
          v31 = (*(v59 + 80) + 32) & ~*(v59 + 80);
          v52 = v57 + v31;
          v49 = v56 + v31;
          v51 = a1;
          v50 = v17;
          while (v30 < *(v57 + 16))
          {
            v32 = *(v59 + 72) * v30;
            v33 = *(v59 + 16);
            v33(v60, v52 + v32, v7);
            if (v30 >= *(v56 + 16))
            {
              goto LABEL_40;
            }

            v34 = v60;
            v35 = v58;
            v33(v58, v49 + v32, v7);
            sub_25B0AB454(&qword_27FA314D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE10]);
            v36 = sub_25B0E3700();
            v37 = *v53;
            v38 = v35;
            v17 = v50;
            a1 = v51;
            (*v53)(v38, v7);
            v37(v34, v7);
            if ((v36 & 1) == 0)
            {
              goto LABEL_10;
            }

            if (v55 == ++v30)
            {
              goto LABEL_35;
            }
          }

          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

LABEL_35:
        sub_25B08CF10(&v64);
        v13 = v48;
        v15 = v47;
        if (v68 == a1[8])
        {
          sub_25B0E3E70();
          __break(1u);
          break;
        }
      }

      else
      {
LABEL_10:
        sub_25B08CF10(&v64);
        v13 = v48;
        v15 = v47;
      }

LABEL_11:
      a2 = (a2 + 1) & v61;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_37:
  v39 = *v54;
  *(v39 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v40 = *(v39 + 48) + 72 * a2;
  *(v40 + 64) = a1[8];
  v41 = *(a1 + 3);
  *(v40 + 32) = *(a1 + 2);
  *(v40 + 48) = v41;
  v42 = *(a1 + 1);
  *v40 = *a1;
  *(v40 + 16) = v42;
  v43 = *(v39 + 16);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    goto LABEL_41;
  }

  *(v39 + 16) = v45;
}

void *sub_25B0AA2C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E00, &qword_25B0E8E40);
  v2 = *v0;
  v3 = sub_25B0E3B80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_25B0AA41C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E10, &qword_25B0E8E48);
  v2 = *v0;
  v3 = sub_25B0E3B80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 72 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        v24 = *(v18 + 8);
        v23[3] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x48uLL);
        result = sub_25B08CEB4(v23, v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_25B0AA5AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E00, &qword_25B0E8E40);
  result = sub_25B0E3B90();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_25B0E3F10();

      sub_25B0E3780();
      result = sub_25B0E3F50();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_25B0AA7E4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25B0E2750();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E10, &qword_25B0E8E48);
  result = sub_25B0E3B90();
  v9 = result;
  if (!*(v7 + 16))
  {

LABEL_25:
    *v2 = v9;
    return result;
  }

  v34 = v2;
  v10 = 0;
  v11 = *(v7 + 56);
  v35 = v7 + 56;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v36 = v4;
  v16 = (v4 + 8);
  v38 = result + 56;
  v41 = v7;
  v39 = v15;
  v40 = result;
  v37 = v4 + 16;
  while (v14)
  {
    v22 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_14:
    v43 = v10;
    v25 = *(v7 + 48) + 72 * (v22 | (v10 << 6));
    v27 = *(v25 + 32);
    v26 = *(v25 + 48);
    v28 = *(v25 + 16);
    v50 = *(v25 + 64);
    v48 = v27;
    v49 = v26;
    v46 = *v25;
    v47 = v28;
    sub_25B0E3F10();
    sub_25B08CEB4(&v46, v44);
    sub_25B0E3780();
    if (*(&v47 + 1))
    {
      sub_25B0E3F30();
      sub_25B0E3780();
      if (*(&v48 + 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_25B0E3F30();
      if (*(&v48 + 1))
      {
LABEL_16:
        sub_25B0E3F30();
        sub_25B0E3780();
        goto LABEL_19;
      }
    }

    sub_25B0E3F30();
LABEL_19:
    sub_25B0AD448(v45, v49);
    v29 = *(&v49 + 1);
    MEMORY[0x25F860A80](*(*(&v49 + 1) + 16));
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = v29 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v32 = *(v36 + 72);
      v33 = *(v36 + 16);
      do
      {
        v33(v6, v31, v3);
        sub_25B0AB454(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
        sub_25B0E36D0();
        (*v16)(v6, v3);
        v31 += v32;
        --v30;
      }

      while (v30);
    }

    MEMORY[0x25F860A80](v50);
    sub_25B0E3F50();
    v9 = v40;
    v17 = v38;
    result = sub_25B0E3B70();
    *(v17 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v18 = *(v9 + 48) + 72 * result;
    *v18 = v46;
    v19 = v47;
    v20 = v48;
    v21 = v49;
    *(v18 + 64) = v50;
    *(v18 + 32) = v20;
    *(v18 + 48) = v21;
    *(v18 + 16) = v19;
    ++*(v9 + 16);
    v7 = v41;
    v15 = v39;
    v10 = v43;
    v14 = v42;
  }

  v23 = v10;
  while (1)
  {
    v10 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v10 >= v15)
    {

      v2 = v34;
      goto LABEL_25;
    }

    v24 = *(v35 + 8 * v10);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v42 = (v24 - 1) & v24;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_25B0AAC48(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v33 = 0;
  v34 = a6;
  v36 = a5;
  v38 = a4;
  v39 = a3;
  v31 = a2;
  v32 = result;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    v16 = *(v39 + 48);
    v37 = v15;
    v17 = (v16 + 16 * v15);
    v18 = *v17;
    v19 = v17[1];
    sub_25B0E3900();

    sub_25B0E38F0();
    sub_25B0E3850();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    if ((isCurrentExecutor & 1) == 0)
    {
      isCurrentExecutor = swift_task_reportUnexpectedExecutor();
    }

    v40 = v18;
    v41 = v19;
    MEMORY[0x28223BE20](isCurrentExecutor);
    v29 = &v40;
    v21 = v42;
    v22 = sub_25B0A878C(sub_25B0AB49C, v28, v38);
    if (v22 & 1) != 0 || (v40 = v18, v41 = v19, MEMORY[0x28223BE20](v22), v29 = &v40, v23 = sub_25B0A878C(sub_25B0AB49C, v28, v36), (v23))
    {
      v42 = v21;
    }

    else
    {
      v35 = &v30;
      v24 = *v34;
      v40 = v18;
      v41 = v19;
      MEMORY[0x28223BE20](v23);
      v29 = &v40;

      v25 = sub_25B0A878C(sub_25B0AB49C, v28, v24);
      v42 = v21;

      if ((v25 & 1) == 0)
      {
        *(v32 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_20:
          v27 = v39;

          return sub_25B0A9290(v32, v31, v33, v27);
        }
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_20;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25B0AAF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v41 = a4;
  v5 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v46 = a2;

  v43 = a3;

  if (v7 > 0xD)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v37 = &v37;
    v38 = v8;
    MEMORY[0x28223BE20](v10);
    v39 = &v37 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v9);
    v40 = 0;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v45 = v5;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      v19 = v16 | (v11 << 6);
      v20 = *(v5 + 48);
      v44 = v19;
      v21 = (v20 + 16 * v19);
      v22 = *v21;
      v23 = v21[1];
      sub_25B0E3900();

      v9 = sub_25B0E38F0();
      sub_25B0E3850();
      isCurrentExecutor = swift_task_isCurrentExecutor();
      if ((isCurrentExecutor & 1) == 0)
      {
        isCurrentExecutor = swift_task_reportUnexpectedExecutor();
      }

      v48 = v22;
      v49 = v23;
      MEMORY[0x28223BE20](isCurrentExecutor);
      *(&v37 - 2) = &v48;
      v25 = v47;
      v26 = sub_25B0A878C(sub_25B0AB394, (&v37 - 4), v46);
      if (v26 & 1) != 0 || (v48 = v22, v49 = v23, MEMORY[0x28223BE20](v26), *(&v37 - 2) = &v48, v27 = sub_25B0A878C(sub_25B0AB49C, (&v37 - 4), v43), (v27))
      {
        v47 = v25;

        v5 = v45;
      }

      else
      {
        v42 = &v37;
        v28 = *v41;
        v48 = v22;
        v49 = v23;
        MEMORY[0x28223BE20](v27);
        *(&v37 - 2) = &v48;

        v29 = sub_25B0A878C(sub_25B0AB49C, (&v37 - 4), v28);
        v47 = v25;

        v5 = v45;
        if ((v29 & 1) == 0)
        {
          *&v39[(v44 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v44;
          if (__OFADD__(v40++, 1))
          {
            __break(1u);
LABEL_21:
            v31 = sub_25B0A9290(v39, v38, v40, v5);

            goto LABEL_22;
          }
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
        goto LABEL_21;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();
  v34 = v46;

  v35 = v43;

  v36 = v47;
  v31 = sub_25B0A91C8(v33, v8, v5, v34, v35, v41);
  v47 = v36;

  MEMORY[0x25F8613E0](v33, -1, -1);

LABEL_22:

  return v31;
}

uint64_t sub_25B0AB3B0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25B0E3E30() & 1;
  }
}

unint64_t sub_25B0AB408()
{
  result = qword_27FA31E08;
  if (!qword_27FA31E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA31E08);
  }

  return result;
}

uint64_t sub_25B0AB454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B0AB4B8()
{
  swift_getKeyPath();
  sub_25B0AD90C(&qword_27FA31DD8, type metadata accessor for GalleryManager, &unk_25B0E8F8C);
  sub_25B0E28D0();
}

uint64_t sub_25B0AB55C(__int128 *a1)
{
  v2 = v1;
  sub_25B0E3780();
  if (v1[3])
  {
    sub_25B0E3F30();
    sub_25B0E3780();
    if (v1[5])
    {
LABEL_3:
      sub_25B0E3F30();
      sub_25B0E3780();
      goto LABEL_6;
    }
  }

  else
  {
    sub_25B0E3F30();
    if (v1[5])
    {
      goto LABEL_3;
    }
  }

  sub_25B0E3F30();
LABEL_6:
  sub_25B0AD448(a1, v1[6]);
  v4 = v1[7];
  v5 = *(v4 + 16);
  MEMORY[0x25F860A80](v5);
  if (v5)
  {
    v6 = *(sub_25B0E2750() - 8);
    v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    sub_25B0AD90C(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
    do
    {
      sub_25B0E36D0();
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  return MEMORY[0x25F860A80](v2[8]);
}

uint64_t sub_25B0AB6F8()
{
  sub_25B0E3F10();
  sub_25B0AB55C(v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B0AB73C(uint64_t a1)
{
  sub_25B0E3F10();
  sub_25B0AB55C(v2);
  return sub_25B0E3F50();
}

uint64_t sub_25B0AB778@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL sub_25B0AB784(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_25B0AD668(v7, v9);
}

uint64_t sub_25B0AB7E0(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B0AD90C(&qword_27FA31DD8, type metadata accessor for GalleryManager, &unk_25B0E8F8C);
    sub_25B0E28C0();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_25B0A2BE0(v3, a1);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 16) = a1;
}

uint64_t sub_25B0AB948()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_25B0E2900();
  os_unfair_lock_lock((v0 + 24));
  sub_25B0AB9C4((v0 + 32), v0);
  os_unfair_lock_unlock((v0 + 24));
  return v0;
}

uint64_t sub_25B0AB9C4(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;

  sub_25B0E3900();
  sub_25B0E38F0();
  v6 = MEMORY[0x277D85700];
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_25B0E3940();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();

  v9 = sub_25B0E38F0();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v6;
  v10[4] = v8;

  v11 = sub_25B052F48(0, 0, v5, &unk_25B0E8FB0, v10);

  *a1 = v11;
  return result;
}

uint64_t sub_25B0ABBA0()
{
  os_unfair_lock_lock((v0 + 24));
  if (*(v0 + 32))
  {
    sub_25B0E39E0();
  }

  os_unfair_lock_unlock((v0 + 24));
  os_unfair_lock_lock((v0 + 40));
  if (*(v0 + 48))
  {
    sub_25B0E39E0();
  }

  os_unfair_lock_unlock((v0 + 40));

  sub_25B058448(v0 + 32, &qword_27FA31D20, &qword_25B0E8978);
  sub_25B058448(v0 + 48, &qword_27FA31D20, &qword_25B0E8978);
  v1 = OBJC_IVAR____TtC15NanoFaceGallery14GalleryManager___observationRegistrar;
  v2 = sub_25B0E2910();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_25B0ABCB8()
{
  sub_25B0ABBA0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for GalleryManager(uint64_t a1)
{
  result = qword_27FA31E20;
  if (!qword_27FA31E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B0ABD64(uint64_t a1)
{
  result = sub_25B0E2910();
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25B0ABE30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25B0ABE78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B0ABEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31E30;
  if (!qword_27FA31E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31E30);
  }

  return result;
}

uint64_t sub_25B0ABF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F30, &unk_25B0E8AD8);
  v4[10] = swift_task_alloc();
  v5 = sub_25B0E3A90();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = sub_25B0E3900();
  v4[15] = sub_25B0E38F0();
  v7 = sub_25B0E3850();
  v4[16] = v7;
  v4[17] = v6;

  return MEMORY[0x2822009F8](sub_25B0AC060, v7, v6);
}

uint64_t sub_25B0AC060()
{
  v1 = objc_opt_self();
  v0[18] = v1;
  v2 = [v1 currentDevice];
  v0[19] = v2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_25B0AC744(v2);
  }

  v3 = [objc_opt_self() defaultCenter];
  sub_25B0E3AA0();

  sub_25B0E3A80();
  swift_beginAccess();
  v0[20] = sub_25B0E38F0();
  v4 = sub_25B0AD90C(&qword_27FA31D58, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_25B0AC21C;
  v6 = v0[10];
  v7 = v0[11];

  return MEMORY[0x282200308](v6, v7, v4);
}

uint64_t sub_25B0AC21C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_25B0E3850();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_25B0AC6B8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_25B0E3850();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_25B0AC3B4;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_25B0AC3B4()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_25B0AC418, v1, v2);
}

uint64_t sub_25B0AC418()
{
  v1 = *(v0 + 80);
  v2 = sub_25B0E22B0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 152);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

LABEL_8:

    v9 = *(v0 + 8);

    return v9();
  }

  if (!swift_weakLoadStrong())
  {
    v7 = *(v0 + 152);
    v8 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v6 = v8;
    goto LABEL_7;
  }

  if (sub_25B0E39F0())
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v6 = v5;
LABEL_7:
    sub_25B058448(v6, &unk_27FA32F30, &unk_25B0E8AD8);
    goto LABEL_8;
  }

  v11 = *(v0 + 80);
  v12 = [*(v0 + 144) currentDevice];
  sub_25B0AC744(v12);

  sub_25B058448(v11, &unk_27FA32F30, &unk_25B0E8AD8);
  *(v0 + 160) = sub_25B0E38F0();
  v13 = sub_25B0AD90C(&qword_27FA31D58, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v14 = swift_task_alloc();
  *(v0 + 168) = v14;
  *v14 = v0;
  v14[1] = sub_25B0AC21C;
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);

  return MEMORY[0x282200308](v15, v16, v13);
}

uint64_t sub_25B0AC6B8()
{
  *(v0 + 64) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F40, &unk_25B0E6060);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

void sub_25B0AC744(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_25B0AB7E0(MEMORY[0x277D84F90]);
  if (a1)
  {
    v7 = a1;
    os_unfair_lock_lock((v1 + 40));

    sub_25B0E3900();
    sub_25B0E38F0();
    v8 = MEMORY[0x277D85700];
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v9 = sub_25B0E3940();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = v7;

    v12 = sub_25B0E38F0();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v8;
    v13[4] = v11;
    v13[5] = v10;

    *(v2 + 48) = sub_25B052F48(0, 0, v6, &unk_25B0E8FC0, v13);

    os_unfair_lock_unlock((v2 + 40));
  }

  else
  {
    os_unfair_lock_lock((v1 + 40));

    sub_25B0E3900();
    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    *(v1 + 48) = 0;

    os_unfair_lock_unlock((v1 + 40));
  }
}

uint64_t sub_25B0AC9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_25B0E24A0();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31880, &qword_25B0E7758);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = sub_25B0E3900();
  v5[17] = sub_25B0E38F0();
  v8 = sub_25B0E3850();
  v5[18] = v8;
  v5[19] = v7;

  return MEMORY[0x2822009F8](sub_25B0ACB24, v8, v7);
}

uint64_t sub_25B0ACB24()
{
  v1 = v0[8];
  type metadata accessor for WatchGallery();
  inited = swift_initStackObject();
  v0[20] = inited;
  *(inited + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_25B0ACBE4;

  return WatchGallery.groups.getter(v4, v5);
}

uint64_t sub_25B0ACBE4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return MEMORY[0x2822009F8](sub_25B0ACD0C, v4, v3);
}

uint64_t sub_25B0ACD0C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = v0[22];
  if (!Strong)
  {

LABEL_21:

    v26 = v0[1];

    return v26();
  }

  v3 = *(v2 + 16);
  if (!v3)
  {

    v5 = MEMORY[0x277D84F90];
LABEL_20:
    sub_25B0AB7E0(v5);

    goto LABEL_21;
  }

  v31 = v0[13];
  v4 = v0[11];
  v38 = MEMORY[0x277D84F90];
  sub_25B08C230(0, v3, 0);
  v5 = v38;
  v34 = *(v2 + 16);
  result = sub_25B0E2830();
  v7 = 0;
  v28 = v2 + ((*(*(result - 8) + 80) + 32) & ~*(*(result - 8) + 80));
  v29 = *(result - 8);
  v30 = result;
  v27 = (v4 + 8);
  v32 = v2;
  v33 = v0;
  while (v34 != v7)
  {
    if (v7 >= *(v2 + 16))
    {
      goto LABEL_25;
    }

    v8 = *(v31 + 48);
    v9 = v0[15];
    v10 = v0[14];
    (*(v29 + 16))(v9 + v8, v28 + *(v29 + 72) * v7, v30);
    *v10 = v7;
    (*(v29 + 32))(&v10[*(v31 + 48)], v9 + v8, v30);
    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v11 = sub_25B0E2800();
    if (v12)
    {
      v13 = v12;
      v37 = v11;
      v14 = v5;
    }

    else
    {
      v14 = v5;
      v15 = v0[12];
      v16 = v0[10];
      sub_25B0E2490();
      v37 = sub_25B0E2460();
      v13 = v17;
      (*v27)(v15, v16);
    }

    v18 = v0[14];
    v36 = sub_25B0E2820();
    v35 = v19;
    v20 = sub_25B0E27D0();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = MEMORY[0x277D84F98];
    }

    v22 = sub_25B0E2810();

    result = sub_25B058448(v18, &qword_27FA31880, &qword_25B0E7758);
    v5 = v14;
    v24 = *(v14 + 16);
    v23 = *(v14 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_25B08C230((v23 > 1), v24 + 1, 1);
      v5 = v14;
    }

    *(v5 + 16) = v24 + 1;
    v25 = (v5 + 72 * v24);
    v25[11] = v22;
    v25[12] = v7;
    v25[4] = v37;
    v25[5] = v13;
    v25[6] = v36;
    v25[7] = v35;
    v25[8] = 0;
    v25[9] = 0;
    v25[10] = v21;
    ++v7;
    v2 = v32;
    v0 = v33;
    if (v3 == v7)
    {

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_25B0AD0C8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v4 = a1;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        a1 = a2;
      }

      else
      {
        a1 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      a2 = v4;

LABEL_39:
      MEMORY[0x2821FD6E8](a1, a2);
      return;
    }

    v5 = v4;
    goto LABEL_17;
  }

  if (v3)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = v2;
LABEL_17:

    sub_25B0AD2CC(v5, a2);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = a2;
    v7 = 0;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_32:
      v15 = v12 | (v7 << 6);
      v16 = *(*(v2 + 56) + 8 * v15);
      v17 = *(*(v2 + 48) + 8 * v15);
      v18 = v16;
      v19 = sub_25B065C20(v17);
      v21 = v20;

      if ((v21 & 1) == 0)
      {

        return;
      }

      sub_25B073AE0();
      v22 = *(*(v6 + 56) + 8 * v19);
      v23 = sub_25B0E3AF0();

      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return;
      }

      v14 = *(v2 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_39;
  }
}

void sub_25B0AD2CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_25B0E3CC0())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a2 + 56) + 8 * v12);
      v14 = *(*(a2 + 48) + 8 * v12);
      v15 = v13;
      v16 = sub_25B0E3CD0();

      if (!v16)
      {

        return;
      }

      sub_25B073AE0();
      swift_dynamicCast();
      v17 = sub_25B0E3AF0();

      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_25B0AD448(__int128 *a1, unint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = sub_25B0E3CB0();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v3 | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v5 = ~v8;
    v4 = a2 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(a2 + 64);
    v7 = a2;
  }

  v11 = (v5 + 64) >> 6;

  v13 = 0;
  v14 = 0;
  v25 = v7;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v15 = v6;
    v16 = v14;
    if (!v6)
    {
      break;
    }

LABEL_14:
    v18 = (v15 - 1) & v15;
    v19 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v20 = *(*(v7 + 48) + v19);
    v21 = *(*(v7 + 56) + v19);
    v22 = v20;
    v23 = v21;
    if (!v22)
    {
LABEL_20:
      sub_25B043EC8(v25);
      return MEMORY[0x25F860A80](v13);
    }

    while (1)
    {
      v27 = *a1;
      sub_25B0E3B00();

      sub_25B0E3B00();
      result = sub_25B0E3F50();
      v13 ^= result;
      v14 = v16;
      v6 = v18;
      v7 = v25;
      if ((v25 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v24 = sub_25B0E3CF0();
      if (v24)
      {
        v26 = v24;
        sub_25B073AE0();
        swift_dynamicCast();
        swift_dynamicCast();
        v23 = v26;
        v22 = v27;
        v16 = v14;
        v18 = v6;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  v17 = v14;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_20;
    }

    v15 = *(v4 + 8 * v16);
    ++v17;
    if (v15)
    {
      v7 = v25;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_25B0AD668(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_25B0E3E30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9 || (a1[4] != a2[4] || v8 != v9) && (sub_25B0E3E30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  sub_25B0AD0C8(a1[6], a2[6]);
  if (v10 & 1) != 0 && (sub_25B0A379C(a1[7], a2[7]))
  {
    return a1[8] == a2[8];
  }

  return 0;
}

uint64_t sub_25B0AD75C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B05859C;

  return sub_25B0ABF30(a1, v4, v5, v6);
}

uint64_t sub_25B0AD810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B0498DC;

  return sub_25B0AC9E4(a1, v4, v5, v7, v6);
}

uint64_t sub_25B0AD8D0()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_25B0AD90C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_15NanoFaceGallery07CuratedC0V0D3RowVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_25B0AD9B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_25B0ADA00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B0ADAA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *&v64 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F30, &qword_25B0E91C8);
  v62 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - v8;
  sub_25B0E3900();
  v63 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0AE15C(&v99);
  v96 = v107;
  v97[0] = v108[0];
  *(v97 + 9) = *(v108 + 9);
  v92 = v103;
  v93 = v104;
  v94 = v105;
  v95 = v106;
  v88 = v99;
  v89 = v100;
  v90 = v101;
  v91 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F38, &qword_25B0E91D0);
  sub_25B0B0178(&qword_27FA31F40, &qword_27FA31F38, &qword_25B0E91D0, sub_25B0B0148);
  v66 = v9;
  sub_25B0E3360();
  v125[8] = v96;
  v126[0] = v97[0];
  *(v126 + 9) = *(v97 + 9);
  v125[4] = v92;
  v125[5] = v93;
  v125[7] = v95;
  v125[6] = v94;
  v125[0] = v88;
  v125[1] = v89;
  v125[3] = v91;
  v125[2] = v90;
  sub_25B058448(v125, &qword_27FA31F38, &qword_25B0E91D0);
  v10 = [objc_opt_self() mainScreen];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v129.origin.x = v12;
  v129.origin.y = v14;
  v129.size.width = v16;
  v129.size.height = v18;
  Width = CGRectGetWidth(v129);
  if (*a2 <= 0x14uLL && ((1 << *a2) & 0x124842) != 0)
  {
    v20 = v5;
    v21 = 5;
  }

  else
  {
    v20 = v5;
    v21 = 3;
  }

  *(&v64 + 1) = v21;
  v22 = v64;
  v23 = Width * 0.5 + -44.0;
  v61 = a2[11];
  v24 = v61;
  *&v64 = a2[8];
  v128[0] = v64;
  v127 = *(a1 + 192);
  v123 = 0;
  *&v122[7] = v127;
  sub_25B0B00E0(v128, &v99, &qword_27FA31F68, &qword_25B0E91E8);
  sub_25B0B0A60(&v127, &v99);
  v25 = sub_25B0E3130();
  sub_25B0E2A00();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v124 = 0;
  sub_25B0AE4D0(v82);
  v34 = v62;
  v35 = *(v62 + 16);
  v36 = v65;
  v35(v65, v66, v20);
  v79 = v82[12];
  v80 = v82[13];
  v81[0] = v83[0];
  *(v81 + 9) = *(v83 + 9);
  v75 = v82[8];
  v76 = v82[9];
  v77 = v82[10];
  v78 = v82[11];
  v71 = v82[4];
  v72 = v82[5];
  v73 = v82[6];
  v74 = v82[7];
  v67 = v82[0];
  v68 = v82[1];
  v69 = v82[2];
  v70 = v82[3];
  v35(v22, v36, v20);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F70, &qword_25B0E91F0);
  v38 = &v22[*(v37 + 48)];
  LOBYTE(v84[0]) = 3;
  *(&v84[0] + 1) = v24;
  v84[1] = v64;
  *v85 = v23;
  BYTE8(v85[0]) = 0;
  *(v85 + 9) = *v122;
  *(&v85[1] + 1) = *&v122[15];
  LOBYTE(v86) = v25;
  *(&v86 + 1) = v27;
  *&v87[0] = v29;
  *(&v87[0] + 1) = v31;
  *&v87[1] = v33;
  BYTE8(v87[1]) = 0;
  v39 = v64;
  *v38 = v84[0];
  *(v38 + 1) = v39;
  v40 = v87[0];
  *(v38 + 4) = v86;
  *(v38 + 5) = v40;
  *(v38 + 89) = *(v87 + 9);
  v41 = v85[1];
  *(v38 + 2) = v85[0];
  *(v38 + 3) = v41;
  v42 = *(v37 + 64);
  v43 = v71;
  v44 = v72;
  v92 = v71;
  v93 = v72;
  v45 = v73;
  v46 = v74;
  v94 = v73;
  v95 = v74;
  v47 = v75;
  v48 = v76;
  v96 = v75;
  v97[0] = v76;
  v49 = v77;
  v50 = v78;
  v97[1] = v77;
  v97[2] = v78;
  v51 = v80;
  v97[3] = v79;
  v97[4] = v80;
  v52 = v81[0];
  v98[0] = v81[0];
  *(v98 + 9) = *(v81 + 9);
  v53 = v69;
  v54 = v70;
  v90 = v69;
  v91 = v70;
  v55 = v67;
  v56 = v68;
  v88 = v67;
  v89 = v68;
  v57 = &v22[v42];
  *(v57 + 12) = v79;
  *(v57 + 13) = v51;
  *(v57 + 14) = v52;
  *(v57 + 233) = *(v81 + 9);
  *(v57 + 8) = v47;
  *(v57 + 9) = v48;
  *(v57 + 10) = v49;
  *(v57 + 11) = v50;
  *(v57 + 4) = v43;
  *(v57 + 5) = v44;
  *(v57 + 6) = v45;
  *(v57 + 7) = v46;
  *v57 = v55;
  *(v57 + 1) = v56;
  *(v57 + 2) = v53;
  *(v57 + 3) = v54;
  sub_25B0B00E0(v84, &v99, &qword_27FA31F78, &qword_25B0E91F8);
  sub_25B0B00E0(&v88, &v99, &qword_27FA31F80, &qword_25B0E9200);
  v58 = *(v34 + 8);
  v58(v66, v20);
  v108[3] = v79;
  v108[4] = v80;
  v109[0] = v81[0];
  *(v109 + 9) = *(v81 + 9);
  v107 = v75;
  v108[0] = v76;
  v108[1] = v77;
  v108[2] = v78;
  v103 = v71;
  v104 = v72;
  v105 = v73;
  v106 = v74;
  v99 = v67;
  v100 = v68;
  v101 = v69;
  v102 = v70;
  sub_25B058448(&v99, &qword_27FA31F80, &qword_25B0E9200);
  v110[0] = 3;
  v111 = v61;
  v112 = v64;
  v113 = v23;
  v114 = 0;
  *v115 = *v122;
  *&v115[15] = *&v122[15];
  v116 = v25;
  v117 = v27;
  v118 = v29;
  v119 = v31;
  v120 = v33;
  v121 = 0;
  sub_25B058448(v110, &qword_27FA31F78, &qword_25B0E91F8);
  v58(v65, v20);
}

void sub_25B0AE15C(uint64_t a2@<X8>)
{
  v4 = sub_25B0E24C0();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_25B0E22E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_25B0E3710();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_25B0E22F0();
  MEMORY[0x28223BE20](v10 - 8);

  sub_25B0E3720();
  if (qword_27FA30D20 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27FA399C8);
  (*(v6 + 16))(v8, v11, v5);
  sub_25B0E24B0();
  sub_25B0E2300();
  v12 = sub_25B0E3200();
  v14 = v13;
  v16 = v15;
  sub_25B0E31B0();
  sub_25B0E3190();

  v17 = sub_25B0E31F0();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_25B0B0ABC(v12, v14, v16 & 1);

  LOBYTE(v12) = sub_25B0E3120();
  sub_25B0E2A00();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v45[24] = v21 & 1;
  v45[16] = 0;
  LOBYTE(v14) = sub_25B0E3130();
  sub_25B0E2A00();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v45[32] = 0;
  v40 = sub_25B0E3100();
  sub_25B0E2A00();
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = v12;
  *(a2 + 40) = v25;
  *(a2 + 48) = v27;
  *(a2 + 56) = v29;
  *(a2 + 64) = v31;
  *(a2 + 72) = 0;
  *(a2 + 80) = v14;
  *(a2 + 88) = v33;
  *(a2 + 96) = v35;
  *(a2 + 104) = v37;
  *(a2 + 112) = v39;
  *(a2 + 120) = 0;
  *(a2 + 128) = v40;
  *(a2 + 136) = v41;
  *(a2 + 144) = v42;
  *(a2 + 152) = v43;
  *(a2 + 160) = v44;
  *(a2 + 168) = 0;
}

void sub_25B0AE4D0(uint64_t a2@<X8>)
{
  v3 = sub_25B0E24C0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_25B0E22E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_25B0E3710();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_25B0E22F0();
  MEMORY[0x28223BE20](v9 - 8);

  sub_25B0E3720();
  if (qword_27FA30D20 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_27FA399C8);
  (*(v5 + 16))(v7, v10, v4);
  sub_25B0E24B0();
  sub_25B0E2300();
  v11 = sub_25B0E3200();
  v13 = v12;
  v15 = v14;
  sub_25B0E3170();
  v41 = sub_25B0E31F0();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_25B0B0ABC(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  sub_25B0E3590();
  sub_25B0E2D30();
  *&v42[55] = v48;
  *&v42[71] = v49;
  *&v42[87] = v50;
  *&v42[103] = v51;
  *&v42[7] = v45;
  *&v42[23] = v46;
  v23 = v19 & 1;
  v43 = v19 & 1;
  *&v42[39] = v47;
  v24 = sub_25B0E3130();
  sub_25B0E2A00();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v44 = 0;
  v33 = sub_25B0E3100();
  sub_25B0E2A00();
  v34 = *&v42[80];
  *(a2 + 105) = *&v42[64];
  *(a2 + 121) = v34;
  *(a2 + 137) = *&v42[96];
  v35 = *&v42[16];
  *(a2 + 41) = *v42;
  *(a2 + 57) = v35;
  v36 = *&v42[48];
  *(a2 + 73) = *&v42[32];
  *a2 = v41;
  *(a2 + 8) = v17;
  *(a2 + 16) = v23;
  *(a2 + 24) = v21;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 152) = *&v42[111];
  *(a2 + 89) = v36;
  *(a2 + 160) = v24;
  *(a2 + 168) = v26;
  *(a2 + 176) = v28;
  *(a2 + 184) = v30;
  *(a2 + 192) = v32;
  *(a2 + 200) = 0;
  *(a2 + 208) = v33;
  *(a2 + 216) = v37;
  *(a2 + 224) = v38;
  *(a2 + 232) = v39;
  *(a2 + 240) = v40;
  *(a2 + 248) = 0;
}

uint64_t sub_25B0AE8CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = sub_25B0E2FE0();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E38, &qword_25B0E9138);
  MEMORY[0x28223BE20](v78);
  v7 = &v73 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E40, &qword_25B0E9140);
  v8 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v10 = &v73 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E48, &qword_25B0E9148);
  MEMORY[0x28223BE20](v75);
  v77 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E50, &qword_25B0E9150);
  MEMORY[0x28223BE20](v12);
  v14 = &v73 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E58, &qword_25B0E9158);
  MEMORY[0x28223BE20](v76);
  v16 = &v73 - v15;
  v17 = *(v2 + 14);
  v137 = v2[6];
  v18 = *(v2 + 136);
  v19 = *(v2 + 168);
  v134 = *(v2 + 152);
  v135 = v19;
  v136 = *(v2 + 23);
  v132 = *(v2 + 120);
  v133 = v18;
  if (v17)
  {
    v125 = v2[6];
    v128 = *(v2 + 136);
    v129 = *(v2 + 152);
    v130 = *(v2 + 168);
    v20 = *(v2 + 23);
    v126 = v17;
    v131 = v20;
    v127 = *(v2 + 120);
    v82 = v125;
    v84 = v127;
    v83 = v17;
    v88 = v20;
    v87 = v130;
    v86 = v129;
    v85 = v128;
    sub_25B08CE58(&v82, &v110);
    *v14 = sub_25B0E2E90();
    *(v14 + 1) = 0x4030000000000000;
    v14[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F08, &qword_25B0E91A0);
    sub_25B0AF0C8(v2, &v125, &v14[*(v21 + 44)]);
    sub_25B058150(&qword_27FA31EE8, &qword_27FA31E50, &qword_25B0E9150, MEMORY[0x277CE1138]);
    sub_25B0E32D0();
    sub_25B058448(v14, &qword_27FA31E50, &qword_25B0E9150);
    v22 = v2[3];
    v90 = v2[2];
    v91 = v22;
    v23 = v2[5];
    v92 = v2[4];
    v93 = v23;
    v24 = v2[1];
    v89[0] = *v2;
    v89[1] = v24;
    v96 = v90;
    v97 = v22;
    v98 = v92;
    v99 = v23;
    v94 = v89[0];
    v95 = v24;
    v100 = v137;
    sub_25B08CE58(v89, &v110);
    v25 = sub_25B0E3590();
    v26 = v136;
    *&v108[0] = v17;
    *(&v108[4] + 1) = v136;
    v27 = v98;
    v28 = v99;
    v105 = v98;
    v106 = v99;
    v29 = v100;
    v107 = v100;
    v30 = v94;
    v31 = v95;
    v101 = v94;
    v102 = v95;
    v33 = v96;
    v32 = v97;
    v103 = v96;
    v104 = v97;
    v34 = v133;
    *(v108 + 8) = v132;
    v35 = v134;
    *(&v108[3] + 8) = v135;
    v36 = v135;
    *(&v108[2] + 8) = v134;
    v37 = v132;
    *(&v108[1] + 8) = v133;
    *&v109 = v25;
    *(&v109 + 1) = v38;
    v39 = &v16[*(v76 + 36)];
    v40 = v108[4];
    *(v39 + 10) = v108[3];
    *(v39 + 11) = v40;
    *(v39 + 12) = v109;
    v41 = v108[0];
    *(v39 + 6) = v107;
    *(v39 + 7) = v41;
    v42 = v108[2];
    *(v39 + 8) = v108[1];
    *(v39 + 9) = v42;
    v43 = v104;
    *(v39 + 2) = v103;
    *(v39 + 3) = v43;
    v44 = v106;
    *(v39 + 4) = v105;
    *(v39 + 5) = v44;
    v45 = v102;
    *v39 = v101;
    *(v39 + 1) = v45;
    v114 = v27;
    v115 = v28;
    v116 = v29;
    v110 = v30;
    v111 = v31;
    v112 = v33;
    v113 = v32;
    v118 = v37;
    v117 = v17;
    v122 = v26;
    v121 = v36;
    v120 = v35;
    v119 = v34;
    v123 = v25;
    v124 = v38;
    sub_25B0B00E0(&v101, v81, &qword_27FA31F00, &qword_25B0E9198);
    sub_25B058448(&v110, &qword_27FA31F00, &qword_25B0E9198);
    sub_25B0B00E0(v16, v77, &qword_27FA31E58, &qword_25B0E9158);
    swift_storeEnumTagMultiPayload();
    sub_25B0AFF18();
    v46 = sub_25B0AFCF0();
    v81[0] = v78;
    v81[1] = v46;
    swift_getOpaqueTypeConformance2();
    sub_25B0E2F30();
    return sub_25B058448(v16, &qword_27FA31E58, &qword_25B0E9158);
  }

  else
  {
    *v7 = sub_25B0E2F00();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E60, &qword_25B0E9160);
    sub_25B0AF39C(v2, &v7[*(v48 + 44)]);
    v49 = sub_25B0E33B0();
    *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E68, &qword_25B0E9168) + 36)] = v49;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E70, &qword_25B0E9170);
    v51 = *(v50 + 36);
    v52 = v2[3];
    v53 = v2[1];
    v112 = v2[2];
    v113 = v52;
    v54 = v2[3];
    v55 = v2[5];
    v114 = v2[4];
    v115 = v55;
    v56 = v2[1];
    v110 = *v2;
    v57 = v110;
    v111 = v56;
    v103 = v112;
    v104 = v54;
    v58 = v2[5];
    v105 = v114;
    v106 = v58;
    v7[v51] = 0;
    v101 = v57;
    v102 = v53;
    MEMORY[0x28223BE20](v50);
    *(&v73 - 2) = v2;
    v59 = v78;
    v60 = &v7[*(v78 + 36)];
    v61 = sub_25B08CE58(&v110, v81);
    v64 = sub_25B0AFC48(v61, v62, v63);
    sub_25B0AFC9C(v64, v65, v66);
    sub_25B0E2BF0();
    v67 = sub_25B0E3590();
    v69 = v68;
    v70 = &v60[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E88, &qword_25B0E9178) + 36)];
    *v70 = v67;
    v70[1] = v69;
    sub_25B0E2FD0();
    v71 = sub_25B0AFCF0();
    sub_25B0E32E0();
    (*(v73 + 8))(v5, v74);
    sub_25B058448(v7, &qword_27FA31E38, &qword_25B0E9138);
    v72 = v79;
    (*(v8 + 16))(v77, v10, v79);
    swift_storeEnumTagMultiPayload();
    sub_25B0AFF18();
    *&v101 = v59;
    *(&v101 + 1) = v71;
    swift_getOpaqueTypeConformance2();
    sub_25B0E2F30();
    return (*(v8 + 8))(v10, v72);
  }
}

uint64_t sub_25B0AF0C8@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F10, &qword_25B0E91A8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = a1[3];
  v27[2] = a1[2];
  v27[3] = v16;
  v17 = a1[5];
  v27[4] = a1[4];
  v27[5] = v17;
  v18 = a1[1];
  v27[0] = *a1;
  v27[1] = v18;
  *v15 = sub_25B0E2F00();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F18, &qword_25B0E91B0);
  sub_25B0ADAA0(a1, v27, &v15[*(v19 + 44)]);
  v20 = sub_25B0E33B0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F20, &qword_25B0E91B8);
  *&v15[*(v21 + 36)] = v20;
  v15[*(v4 + 36)] = 0;
  *v13 = sub_25B0E2F00();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_25B0ADAA0(a1, v25, &v13[*(v19 + 44)]);
  *&v13[*(v21 + 36)] = sub_25B0E33B0();
  v13[*(v4 + 36)] = 0;
  sub_25B0B00E0(v15, v10, &qword_27FA31F10, &qword_25B0E91A8);
  sub_25B0B00E0(v13, v7, &qword_27FA31F10, &qword_25B0E91A8);
  v22 = v26;
  sub_25B0B00E0(v10, v26, &qword_27FA31F10, &qword_25B0E91A8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F28, &qword_25B0E91C0);
  sub_25B0B00E0(v7, v22 + *(v23 + 48), &qword_27FA31F10, &qword_25B0E91A8);
  sub_25B058448(v13, &qword_27FA31F10, &qword_25B0E91A8);
  sub_25B058448(v15, &qword_27FA31F10, &qword_25B0E91A8);
  sub_25B058448(v7, &qword_27FA31F10, &qword_25B0E91A8);
  sub_25B058448(v10, &qword_27FA31F10, &qword_25B0E91A8);
}

uint64_t sub_25B0AF39C@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F90, &qword_25B0E9240);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v49 - v8;
  sub_25B0E3900();
  v10 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a1[3];
  v99 = a1[2];
  v100 = v11;
  v12 = a1[5];
  v101 = a1[4];
  v102 = v12;
  v13 = a1[1];
  v97 = *a1;
  v98 = v13;
  sub_25B0AE15C(v94);
  v49[1] = v10;
  if (v97 <= 0x14 && ((1 << v97) & 0x124842) != 0)
  {
    v14 = 5;
  }

  else
  {
    v14 = 3;
  }

  v15 = *(&v102 + 1);
  v16 = v101;
  v103[0] = v101;
  v96 = a1[12];
  v92 = 1;
  *&v91[7] = v96;
  sub_25B0B00E0(v103, &v83, &qword_27FA31F68, &qword_25B0E91E8);
  sub_25B0B0A60(&v96, &v83);
  v17 = sub_25B0E3130();
  sub_25B0E2A00();
  v93 = 0;
  LOBYTE(v83) = 3;
  *(&v83 + 1) = v15;
  *&v84 = v16;
  *(&v84 + 1) = v14;
  *&v85[0] = 0;
  BYTE8(v85[0]) = 1;
  *(v85 + 9) = *v91;
  *(&v85[1] + 1) = *&v91[15];
  LOBYTE(v86) = v17;
  *(&v86 + 1) = v18;
  *&v87[0] = v19;
  *(&v87[0] + 1) = v20;
  *&v87[1] = v21;
  BYTE8(v87[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F78, &qword_25B0E91F8);
  sub_25B0B0178(&qword_27FA31F98, &qword_27FA31F78, &qword_25B0E91F8, sub_25B0B0B20);
  sub_25B0E32D0();
  v75[4] = v86;
  v76[0] = v87[0];
  *(v76 + 9) = *(v87 + 9);
  v75[0] = v83;
  v75[1] = v84;
  v75[2] = v85[0];
  v75[3] = v85[1];
  sub_25B058448(v75, &qword_27FA31F78, &qword_25B0E91F8);
  sub_25B0AE4D0(v77);
  v73 = v94[8];
  v74[0] = v95[0];
  *(v74 + 9) = *(v95 + 9);
  v69 = v94[4];
  v70 = v94[5];
  v71 = v94[6];
  v72 = v94[7];
  v65 = v94[0];
  v66 = v94[1];
  v67 = v94[2];
  v68 = v94[3];
  sub_25B0B00E0(v9, v7, &qword_27FA31F90, &qword_25B0E9240);
  v62 = v77[12];
  v63 = v77[13];
  v64[0] = v78[0];
  *(v64 + 9) = *(v78 + 9);
  v58 = v77[8];
  v59 = v77[9];
  v60 = v77[10];
  v61 = v77[11];
  v54 = v77[4];
  v55 = v77[5];
  v56 = v77[6];
  v57 = v77[7];
  v50 = v77[0];
  v51 = v77[1];
  v52 = v77[2];
  v53 = v77[3];
  v22 = v74[0];
  v79[8] = v73;
  v80[0] = v74[0];
  *(v80 + 9) = *(v74 + 9);
  v23 = v69;
  v24 = v70;
  v79[4] = v69;
  v79[5] = v70;
  v26 = v71;
  v25 = v72;
  v79[6] = v71;
  v79[7] = v72;
  v27 = v65;
  v28 = v66;
  v79[0] = v65;
  v79[1] = v66;
  v30 = v67;
  v29 = v68;
  v79[2] = v67;
  v79[3] = v68;
  a2[8] = v73;
  a2[9] = v22;
  *(a2 + 153) = *(v74 + 9);
  a2[4] = v23;
  a2[5] = v24;
  a2[6] = v26;
  a2[7] = v25;
  *a2 = v27;
  a2[1] = v28;
  a2[2] = v30;
  a2[3] = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FA8, &qword_25B0E9248);
  sub_25B0B00E0(v7, a2 + *(v31 + 48), &qword_27FA31F90, &qword_25B0E9240);
  v32 = *(v31 + 64);
  v33 = v63;
  v81[12] = v62;
  v81[13] = v63;
  v34 = v64[0];
  v82[0] = v64[0];
  *(v82 + 9) = *(v64 + 9);
  v35 = v58;
  v36 = v59;
  v81[8] = v58;
  v81[9] = v59;
  v37 = v60;
  v38 = v61;
  v81[10] = v60;
  v81[11] = v61;
  v39 = v54;
  v40 = v55;
  v81[4] = v54;
  v81[5] = v55;
  v41 = v56;
  v42 = v57;
  v81[6] = v56;
  v81[7] = v57;
  v43 = v50;
  v44 = v51;
  v81[0] = v50;
  v81[1] = v51;
  v45 = v52;
  v46 = v53;
  v81[2] = v52;
  v81[3] = v53;
  v47 = (a2 + v32);
  v47[12] = v62;
  v47[13] = v33;
  v47[14] = v34;
  *(v47 + 233) = *(v64 + 9);
  v47[8] = v35;
  v47[9] = v36;
  v47[10] = v37;
  v47[11] = v38;
  v47[4] = v39;
  v47[5] = v40;
  v47[6] = v41;
  v47[7] = v42;
  *v47 = v43;
  v47[1] = v44;
  v47[2] = v45;
  v47[3] = v46;
  sub_25B0B00E0(v79, &v83, &qword_27FA31F38, &qword_25B0E91D0);
  sub_25B0B00E0(v81, &v83, &qword_27FA31F80, &qword_25B0E9200);
  sub_25B058448(v9, &qword_27FA31F90, &qword_25B0E9240);
  v87[7] = v62;
  v87[8] = v63;
  v88[0] = v64[0];
  *(v88 + 9) = *(v64 + 9);
  v87[3] = v58;
  v87[4] = v59;
  v87[5] = v60;
  v87[6] = v61;
  v86 = v54;
  v87[0] = v55;
  v87[1] = v56;
  v87[2] = v57;
  v83 = v50;
  v84 = v51;
  v85[0] = v52;
  v85[1] = v53;
  sub_25B058448(&v83, &qword_27FA31F80, &qword_25B0E9200);
  sub_25B058448(v7, &qword_27FA31F90, &qword_25B0E9240);
  v89[8] = v73;
  v90[0] = v74[0];
  *(v90 + 9) = *(v74 + 9);
  v89[4] = v69;
  v89[5] = v70;
  v89[7] = v72;
  v89[6] = v71;
  v89[0] = v65;
  v89[1] = v66;
  v89[3] = v68;
  v89[2] = v67;
  sub_25B058448(v89, &qword_27FA31F38, &qword_25B0E91D0);
}

uint64_t sub_25B0AF9D0@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25B0E2930();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1[3];
  v17[2] = a1[2];
  v17[3] = v8;
  v9 = a1[5];
  v17[4] = a1[4];
  v17[5] = v9;
  v10 = a1[1];
  v17[0] = *a1;
  v17[1] = v10;
  if (*&v17[0] == 1 && (sub_25B0D48FC(), v12 = *(v11 + 16), , v12))
  {
    sub_25B0D48FC();
    v14 = v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F88, &qword_25B0E9238);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25B0E7720;
    if (qword_27FA30D48 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_27FA39A10);
    (*(v5 + 16))(v7, v15, v4);
    *(v14 + 32) = sub_25B0E33D0();
  }

  *a2 = v14;
  a2[1] = &unk_286C58F28;
  return result;
}

unint64_t sub_25B0AFC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31E78;
  if (!qword_27FA31E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31E78);
  }

  return result;
}

unint64_t sub_25B0AFC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31E80;
  if (!qword_27FA31E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31E80);
  }

  return result;
}

unint64_t sub_25B0AFCF0()
{
  result = qword_27FA31E90;
  if (!qword_27FA31E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31E38, &qword_25B0E9138);
    sub_25B0AFDA8();
    sub_25B058150(&qword_27FA31EC8, &qword_27FA31E88, &qword_25B0E9178, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31E90);
  }

  return result;
}

unint64_t sub_25B0AFDA8()
{
  result = qword_27FA31E98;
  if (!qword_27FA31E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31E70, &qword_25B0E9170);
    sub_25B0AFE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31E98);
  }

  return result;
}

unint64_t sub_25B0AFE34()
{
  result = qword_27FA31EA0;
  if (!qword_27FA31EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31E68, &qword_25B0E9168);
    sub_25B058150(&qword_27FA31EA8, &qword_27FA31EB0, &unk_25B0E9180, MEMORY[0x277CE1198]);
    sub_25B058150(&qword_27FA31EB8, &qword_27FA31EC0, &unk_25B0EA2D0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31EA0);
  }

  return result;
}

unint64_t sub_25B0AFF18()
{
  result = qword_27FA31ED0;
  if (!qword_27FA31ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31E58, &qword_25B0E9158);
    sub_25B0AFFD0();
    sub_25B058150(&qword_27FA31EF8, &qword_27FA31F00, &qword_25B0E9198, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31ED0);
  }

  return result;
}

unint64_t sub_25B0AFFD0()
{
  result = qword_27FA31ED8;
  if (!qword_27FA31ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31EE0, &qword_25B0E9190);
    sub_25B058150(&qword_27FA31EE8, &qword_27FA31E50, &qword_25B0E9150, MEMORY[0x277CE1138]);
    sub_25B0B0088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31ED8);
  }

  return result;
}

unint64_t sub_25B0B0088()
{
  result = qword_27FA31EF0;
  if (!qword_27FA31EF0)
  {
    sub_25B0E3080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31EF0);
  }

  return result;
}

uint64_t sub_25B0B00E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25B0B0178(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25B0B01FC()
{
  result = qword_27FA31F58;
  if (!qword_27FA31F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31F60, &qword_25B0E91E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31F58);
  }

  return result;
}

uint64_t sub_25B0B0280@<X0>(unsigned __int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FC8, &qword_25B0E9348);
  v57 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FD0, &qword_25B0E9350);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v59 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v51 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  sub_25B0E3900();
  v56 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = a1[3];
  v18 = a1[1];
  v72 = a1[2];
  v73 = v17;
  v19 = a1[3];
  v20 = a1[5];
  v74 = a1[4];
  v75 = v20;
  v21 = a1[1];
  v70 = *a1;
  v71 = v21;
  v66 = v72;
  v67 = v19;
  v22 = a1[5];
  v68 = v74;
  v69 = v22;
  v64 = v70;
  v65 = v18;
  v23 = sub_25B08CE58(&v70, v63);
  v53 = sub_25B0AFC48(v23, v24, v25);
  sub_25B0AFC9C(v53, v26, v27);
  sub_25B0E2BF0();
  v29 = *(&v71 + 1);
  v28 = v72;
  v62 = __PAIR128__(v71, *(&v70 + 1));

  MEMORY[0x25F8602F0](8236, 0xE200000000000000);
  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (!v28)
  {
    v28 = 0xE000000000000000;
  }

  MEMORY[0x25F8602F0](v30, v28);

  v64 = v62;
  v51 = sub_25B058150(&qword_27FA31FD8, &qword_27FA31FC8, &qword_25B0E9348, MEMORY[0x277CDD938]);
  sub_25B04C9BC(v51, v31, v32);
  sub_25B0E32B0();

  v52 = v16;
  v33 = *(v57 + 8);
  v33(v7, v3);
  v34 = a1[9];
  v35 = a1[7];
  v66 = a1[8];
  v67 = v34;
  v36 = a1[9];
  v37 = a1[11];
  v68 = a1[10];
  v69 = v37;
  v38 = a1[7];
  v64 = a1[6];
  v65 = v38;
  v63[2] = v66;
  v63[3] = v36;
  v39 = a1[11];
  v63[4] = v68;
  v63[5] = v39;
  v63[0] = v64;
  v63[1] = v35;
  sub_25B08CE58(&v64, &v61);
  v40 = v55;
  sub_25B0E2BF0();
  v42 = *(&v65 + 1);
  v41 = v66;
  v63[0] = __PAIR128__(v65, *(&v64 + 1));

  MEMORY[0x25F8602F0](8236, 0xE200000000000000);
  if (v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  if (!v41)
  {
    v41 = 0xE000000000000000;
  }

  MEMORY[0x25F8602F0](v43, v41);

  v44 = v54;
  sub_25B0E32B0();

  v33(v40, v3);
  v45 = v52;
  v46 = v58;
  sub_25B0B00E0(v52, v58, &qword_27FA31FD0, &qword_25B0E9350);
  v47 = v59;
  sub_25B0B00E0(v44, v59, &qword_27FA31FD0, &qword_25B0E9350);
  v48 = v60;
  sub_25B0B00E0(v46, v60, &qword_27FA31FD0, &qword_25B0E9350);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FE0, &qword_25B0E9358);
  sub_25B0B00E0(v47, v48 + *(v49 + 48), &qword_27FA31FD0, &qword_25B0E9350);
  sub_25B058448(v44, &qword_27FA31FD0, &qword_25B0E9350);
  sub_25B058448(v45, &qword_27FA31FD0, &qword_25B0E9350);
  sub_25B058448(v47, &qword_27FA31FD0, &qword_25B0E9350);
  sub_25B058448(v46, &qword_27FA31FD0, &qword_25B0E9350);
}

uint64_t sub_25B0B0814@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_25B0E2930();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F88, &qword_25B0E9238);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25B0E7720;
  if (qword_27FA30D48 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_27FA39A10);
  (*(v6 + 16))(v8, v10, v5);
  *(v9 + 32) = sub_25B0E33D0();

  *a3 = v9;
  a3[1] = a2;
  return result;
}

uint64_t sub_25B0B09D4@<X0>(uint64_t a9@<X8>)
{
  v11 = v9[9];
  v19[8] = v9[8];
  v19[9] = v11;
  v12 = v9[11];
  v19[10] = v9[10];
  v19[11] = v12;
  v13 = v9[5];
  v19[4] = v9[4];
  v19[5] = v13;
  v14 = v9[7];
  v19[6] = v9[6];
  v19[7] = v14;
  v15 = v9[1];
  v19[0] = *v9;
  v19[1] = v15;
  v16 = v9[3];
  v19[2] = v9[2];
  v19[3] = v16;
  *a9 = sub_25B0E2EA0();
  *(a9 + 8) = 0x4030000000000000;
  *(a9 + 16) = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FC0, &qword_25B0E9340);
  return sub_25B0B0280(v19, a9 + *(v17 + 44));
}

uint64_t sub_25B0B0ABC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25B0B0ACC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B0E2DD0();
  *a1 = result;
  return result;
}

unint64_t sub_25B0B0B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31FA0;
  if (!qword_27FA31FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31FA0);
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_25B0B0BA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_25B0B0BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B0B0C70()
{
  result = qword_27FA31FB0;
  if (!qword_27FA31FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31FB8, ">[");
    sub_25B0AFF18();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31E38, &qword_25B0E9138);
    sub_25B0AFCF0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31FB0);
  }

  return result;
}

uint64_t type metadata accessor for CuratedGalleryView(uint64_t a1)
{
  result = qword_27FA32000;
  if (!qword_27FA32000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B0B0DE8(uint64_t a1)
{
  sub_25B0B0E84(319);
  if (v1 <= 0x3F)
  {
    sub_25B0B0EDC();
    if (v2 <= 0x3F)
    {
      sub_25B0B0F2C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25B0B0E84(uint64_t a1)
{
  if (!qword_27FA32010)
  {
    sub_25B0E2C70();
    v1 = sub_25B0E2A60();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA32010);
    }
  }
}

void sub_25B0B0EDC()
{
  if (!qword_27FA32018)
  {
    v0 = sub_25B0E3840();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA32018);
    }
  }
}

unint64_t sub_25B0B0F2C()
{
  result = qword_27FA32020;
  if (!qword_27FA32020)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FA32020);
  }

  return result;
}

uint64_t sub_25B0B1004()
{
  sub_25B0E3F10();
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = *(v0 + 7);
  *&v13[13] = *(v0 + 5);
  *&v13[15] = v3;
  v4 = v0[10];
  v13[17] = v0[9];
  *&v13[9] = *(v0 + 1);
  *&v13[11] = v2;
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[13];
  v8 = v0[14];
  v10 = v0[22];
  v9 = v0[23];
  MEMORY[0x25F860A80](v1);
  sub_25B0AB55C(v13);
  sub_25B0DB028(v13, v4);
  MEMORY[0x25F860A80](v6);
  if (v8)
  {
    v11 = *(v0 + 17);
    v14 = *(v0 + 15);
    v15 = v11;
    v16 = *(v0 + 19);
    v17 = v0[21];
    sub_25B0E3F30();
    MEMORY[0x25F860A80](v5);
    v13[18] = v7;
    v13[19] = v8;
    sub_25B0AB55C(v13);
    sub_25B0DB028(v13, v10);
    MEMORY[0x25F860A80](v9);
  }

  else
  {
    sub_25B0E3F30();
  }

  return sub_25B0E3F50();
}

uint64_t sub_25B0B118C(__int128 *a1)
{
  v3 = v1[10];
  v5 = v1[11];
  v4 = v1[12];
  v6 = v1[14];
  v8 = v1[22];
  v7 = v1[23];
  MEMORY[0x25F860A80](*v1);
  sub_25B0AB55C(a1);
  sub_25B0DB028(a1, v3);
  MEMORY[0x25F860A80](v5);
  if (!v6)
  {
    return sub_25B0E3F30();
  }

  sub_25B0E3F30();
  MEMORY[0x25F860A80](v4);
  sub_25B0AB55C(a1);
  sub_25B0DB028(a1, v8);
  return MEMORY[0x25F860A80](v7);
}

uint64_t sub_25B0B12A4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 3);
  v4 = *(v1 + 7);
  v23 = *(v1 + 5);
  v24 = v4;
  v5 = v1[10];
  v25 = v1[9];
  v21 = *(v1 + 1);
  v22 = v3;
  v7 = v1[11];
  v6 = v1[12];
  v8 = v1[13];
  v9 = v1[14];
  v11 = v1[22];
  v10 = v1[23];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v2);
  sub_25B0AB55C(v14);
  sub_25B0DB028(v14, v5);
  MEMORY[0x25F860A80](v7);
  if (v9)
  {
    v12 = *(v1 + 17);
    v17 = *(v1 + 15);
    v18 = v12;
    v19 = *(v1 + 19);
    v20 = v1[21];
    sub_25B0E3F30();
    MEMORY[0x25F860A80](v6);
    v15 = v8;
    v16 = v9;
    sub_25B0AB55C(v14);
    sub_25B0DB028(v14, v11);
    MEMORY[0x25F860A80](v10);
  }

  else
  {
    sub_25B0E3F30();
  }

  return sub_25B0E3F50();
}

uint64_t sub_25B0B13D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v21[2] = v1[2];
  v21[3] = v3;
  v4 = v1[5];
  v21[4] = v1[4];
  v21[5] = v4;
  v5 = v1[1];
  v21[0] = *v1;
  v21[1] = v5;
  v6 = v1[9];
  v22[2] = v1[8];
  v22[3] = v6;
  v7 = v1[11];
  v22[4] = v1[10];
  v22[5] = v7;
  v8 = v1[7];
  v22[0] = v1[6];
  v22[1] = v8;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318A8, &unk_25B0E94C0);
  v10 = swift_allocObject();
  v11 = v1[2];
  v12 = v1[4];
  v13 = v1[5];
  *(v10 + 80) = v1[3];
  *(v10 + 96) = v12;
  if (v9)
  {
    v14 = *v1;
    v15 = v1[1];
    *(v10 + 16) = xmmword_25B0E7730;
    *(v10 + 32) = v14;
    *(v10 + 48) = v15;
    *(v10 + 64) = v11;
    v16 = v1[6];
    *(v10 + 112) = v13;
    *(v10 + 128) = v16;
    *(v10 + 144) = v9;
    *(v10 + 152) = *(v1 + 120);
    *(v10 + 216) = *(v1 + 23);
    *(v10 + 200) = *(v1 + 168);
    *(v10 + 184) = *(v1 + 152);
    *(v10 + 168) = *(v1 + 136);
  }

  else
  {
    *(v10 + 112) = v13;
    v17 = *v1;
    v18 = v1[1];
    *(v10 + 16) = xmmword_25B0E7720;
    *(v10 + 32) = v17;
    *(v10 + 48) = v18;
    *(v10 + 64) = v11;
  }

  *a1 = v10;
  sub_25B08CE58(v21, v20);
  return sub_25B0B00E0(v22, v20, &qword_27FA320C0, &qword_25B0E94B8);
}

uint64_t sub_25B0B150C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v15[8] = a1[8];
  v15[9] = v2;
  v3 = a1[11];
  v15[10] = a1[10];
  v15[11] = v3;
  v4 = a1[5];
  v15[4] = a1[4];
  v15[5] = v4;
  v5 = a1[7];
  v15[6] = a1[6];
  v15[7] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[3];
  v15[2] = a1[2];
  v15[3] = v7;
  v8 = a2[9];
  v16[8] = a2[8];
  v16[9] = v8;
  v9 = a2[11];
  v16[10] = a2[10];
  v16[11] = v9;
  v10 = a2[5];
  v16[4] = a2[4];
  v16[5] = v10;
  v11 = a2[7];
  v16[6] = a2[6];
  v16[7] = v11;
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v13 = a2[3];
  v16[2] = a2[2];
  v16[3] = v13;
  return sub_25B0B3FD0(v15, v16) & 1;
}

uint64_t sub_25B0B15A0()
{
  v81 = sub_25B0E2E60();
  v1 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32070, &qword_25B0E9490);
  MEMORY[0x28223BE20](v94);
  v93 = &v77 - v3;
  v92 = sub_25B0E2C70();
  v4 = *(v92 - 8);
  v5 = MEMORY[0x28223BE20](v92);
  v91 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v77 - v7;
  v9 = *(type metadata accessor for CuratedGalleryView(0) + 20);
  v95 = v0;
  v10 = *(v0 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_25B0B33E8(*(v10 + 16), 0);
    v13 = sub_25B0B3764(v118, v12 + 32, v11, v10);

    if (v13 != v11)
    {
      goto LABEL_40;
    }

    if (*(v12 + 2))
    {
      goto LABEL_4;
    }

LABEL_37:

    return MEMORY[0x277D84F90];
  }

  v12 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_37;
  }

LABEL_4:
  v90 = v8;
  v78 = (v4 + 32);
  v79 = (v1 + 8);
  v89 = *MEMORY[0x277CDF9F0];
  v87 = (v4 + 8);
  v88 = (v4 + 104);
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = *(v12 + 2);
      if (!v16)
      {
        break;
      }

      goto LABEL_7;
    }

    result = sub_25B0B3A1C(v12);
    v12 = result;
    v16 = *(result + 16);
    if (!v16)
    {
      break;
    }

LABEL_7:
    v17 = v16 - 1;
    v18 = v12 + 32;
    v19 = &v12[96 * v17 + 32];
    v20 = *v19;
    v21 = *(v19 + 8);
    v132 = *(v19 + 24);
    v22 = *(v19 + 40);
    v23 = *(v19 + 56);
    v24 = *(v19 + 72);
    v136 = *(v19 + 88);
    v134 = v23;
    v135 = v24;
    v133 = v22;
    v131 = v21;
    *(v12 + 2) = v17;
    v127 = v133;
    v128 = v134;
    v129 = v135;
    v130 = v136;
    v125 = v21;
    v126 = v132;
    if (v20 <= 0x14 && ((1 << v20) & 0x124842) != 0)
    {
      goto LABEL_11;
    }

    v102 = v15;
    sub_25B0B00E0(v95, v93, &qword_27FA32070, &qword_25B0E9490);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v103 = v12;
    if (EnumCaseMultiPayload == 1)
    {
      v39 = v90;
      v40 = v92;
      (*v78)();
    }

    else
    {
      sub_25B0E3A40();
      v41 = sub_25B0E30D0();
      sub_25B0E2940();

      v40 = v92;
      v42 = v80;
      sub_25B0E2E50();
      v39 = v90;
      swift_getAtKeyPath();

      (*v79)(v42, v81);
    }

    v43 = v91;
    (*v88)(v91, v89, v40);
    sub_25B0B3A30(&qword_27FA320C8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    LODWORD(v101) = sub_25B0E36F0();
    v44 = *v87;
    (*v87)(v43, v40);
    v44(v39, v40);
    v15 = v102;
    v12 = v103;
    if (v101)
    {
LABEL_11:
      *(&v118[2] + 8) = v127;
      *(&v118[3] + 8) = v128;
      *(&v118[4] + 8) = v129;
      *(v118 + 8) = v125;
      *&v118[0] = v20;
      *(&v118[5] + 1) = v130;
      *(&v118[1] + 8) = v126;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      sub_25B0B3A78(v118, &v104);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_25B08A018(0, *(v15 + 2) + 1, 1, v15);
      }

      v27 = *(v15 + 2);
      v26 = *(v15 + 3);
      if (v27 >= v26 >> 1)
      {
        v15 = sub_25B08A018((v26 > 1), v27 + 1, 1, v15);
      }

      *(v15 + 2) = v27 + 1;
      v28 = &v15[192 * v27];
      v29 = v118[0];
      v30 = v118[1];
      v31 = v118[3];
      *(v28 + 4) = v118[2];
      *(v28 + 5) = v31;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      v32 = v118[4];
      v33 = v118[5];
      v34 = v120;
      *(v28 + 8) = v119;
      *(v28 + 9) = v34;
      *(v28 + 6) = v32;
      *(v28 + 7) = v33;
      v35 = v121;
      v36 = v122;
      v37 = v124;
      *(v28 + 12) = v123;
      *(v28 + 13) = v37;
      *(v28 + 10) = v35;
      *(v28 + 11) = v36;
      v104 = v20;
      v107 = v127;
      v108 = v128;
      v109 = v129;
      v110 = v130;
      v105 = v125;
      v106 = v126;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      sub_25B0B3AB0(&v104);
      if (!*(v12 + 2))
      {
LABEL_35:

        return v15;
      }
    }

    else
    {
      v45 = *(v103 + 2);
      if (v45 && ((v46 = v18[12 * v45 - 12], v46 > 0x14) || ((1 << v46) & 0x124842) == 0))
      {
        v71 = v45 - 1;
        v72 = &v18[12 * v71];
        v48 = v72[1];
        v47 = v72[2];
        v73 = v72[4];
        v100 = v72[3];
        v101 = v73;
        v74 = v72[5];
        v82 = *(v72 + 3);
        v98 = v72[8];
        v75 = v72[9];
        v96 = v74;
        v97 = v75;
        v49 = v72[11];
        v99 = v72[10];
        *(v103 + 2) = v71;
      }

      else
      {
        v98 = 0;
        v99 = 0;
        v96 = 0;
        v97 = 0;
        v82 = 0uLL;
        v100 = 0;
        v101 = 0;
        v47 = 0;
        v48 = 0;
        v46 = 0;
        v49 = 0;
      }

      memset(v117, 0, sizeof(v117));
      sub_25B058448(v117, &qword_27FA320C0, &qword_25B0E94B8);
      *(&v118[2] + 8) = v127;
      *(&v118[3] + 8) = v128;
      *(&v118[4] + 8) = v129;
      *(v118 + 8) = v125;
      *(&v118[5] + 1) = v130;
      *(&v118[1] + 8) = v126;
      *&v118[0] = v20;
      v84 = v46;
      v85 = v48;
      *&v119 = v46;
      *(&v119 + 1) = v48;
      v86 = v47;
      *&v120 = v47;
      *(&v120 + 1) = v100;
      *&v121 = v101;
      *(&v121 + 1) = v96;
      v50 = v82;
      v122 = v82;
      v51 = *(&v82 + 1);
      *&v123 = v98;
      *(&v123 + 1) = v97;
      *&v124 = v99;
      *(&v124 + 1) = v49;
      sub_25B0B3A78(v118, &v104);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_25B08A018(0, *(v15 + 2) + 1, 1, v15);
      }

      v54 = *(v15 + 2);
      v53 = *(v15 + 3);
      v56 = v100;
      v55 = v101;
      v58 = v85;
      v57 = v86;
      if (v54 >= v53 >> 1)
      {
        v76 = sub_25B08A018((v53 > 1), v54 + 1, 1, v15);
        v58 = v85;
        v57 = v86;
        v56 = v100;
        v55 = v101;
        v60 = v50;
        v59 = v51;
        v15 = v76;
      }

      else
      {
        v59 = v51;
        v60 = v50;
      }

      *(v15 + 2) = v54 + 1;
      v61 = &v15[192 * v54];
      v62 = v118[0];
      v63 = v118[1];
      v64 = v118[3];
      *(v61 + 4) = v118[2];
      *(v61 + 5) = v64;
      *(v61 + 2) = v62;
      *(v61 + 3) = v63;
      v65 = v118[4];
      v66 = v118[5];
      v67 = v120;
      *(v61 + 8) = v119;
      *(v61 + 9) = v67;
      *(v61 + 6) = v65;
      *(v61 + 7) = v66;
      v68 = v121;
      v69 = v122;
      v70 = v124;
      *(v61 + 12) = v123;
      *(v61 + 13) = v70;
      *(v61 + 10) = v68;
      *(v61 + 11) = v69;
      v107 = v127;
      v108 = v128;
      v109 = v129;
      v110 = v130;
      v105 = v125;
      v106 = v126;
      v104 = v20;
      *&v111 = v84;
      *(&v111 + 1) = v58;
      *&v112 = v57;
      *(&v112 + 1) = v56;
      *&v113 = v55;
      *(&v113 + 1) = v96;
      *&v114 = v60;
      *(&v114 + 1) = v59;
      *&v115 = v98;
      *(&v115 + 1) = v97;
      *&v116 = v99;
      *(&v116 + 1) = v83;
      sub_25B0B3AB0(&v104);
      if (!*(v12 + 2))
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}