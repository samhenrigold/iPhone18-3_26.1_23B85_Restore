unint64_t sub_264A97F18()
{
  result = qword_27FF8AFE0;
  if (!qword_27FF8AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AFE0);
  }

  return result;
}

unint64_t sub_264A97F70()
{
  result = qword_27FF8AFE8;
  if (!qword_27FF8AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AFE8);
  }

  return result;
}

unint64_t sub_264A97FC8()
{
  result = qword_27FF8AFF0;
  if (!qword_27FF8AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AFF0);
  }

  return result;
}

unint64_t sub_264A98020()
{
  result = qword_27FF8AFF8;
  if (!qword_27FF8AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AFF8);
  }

  return result;
}

unint64_t sub_264A98078()
{
  result = qword_27FF8B000;
  if (!qword_27FF8B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B000);
  }

  return result;
}

unint64_t sub_264A980D0()
{
  result = qword_27FF8B008;
  if (!qword_27FF8B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B008);
  }

  return result;
}

unint64_t sub_264A98128()
{
  result = qword_27FF8B010;
  if (!qword_27FF8B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B010);
  }

  return result;
}

unint64_t sub_264A98180()
{
  result = qword_27FF8B018;
  if (!qword_27FF8B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B018);
  }

  return result;
}

unint64_t sub_264A981D8()
{
  result = qword_27FF8B020;
  if (!qword_27FF8B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B020);
  }

  return result;
}

unint64_t sub_264A98230()
{
  result = qword_27FF8B028;
  if (!qword_27FF8B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B028);
  }

  return result;
}

unint64_t sub_264A98288()
{
  result = qword_27FF8B030;
  if (!qword_27FF8B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B030);
  }

  return result;
}

unint64_t sub_264A982E0()
{
  result = qword_27FF8B038;
  if (!qword_27FF8B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B038);
  }

  return result;
}

unint64_t sub_264A98338()
{
  result = qword_27FF8B040;
  if (!qword_27FF8B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B040);
  }

  return result;
}

uint64_t sub_264A9838C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74747542656D6F68 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6374697753707061 && a2 == 0xEB00000000726568 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6353657461746F72 && a2 == 0xEC0000006E656572 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x615068636E75616CLL && a2 == 0xED000064616F6C79)
  {

    return 4;
  }

  else
  {
    v6 = sub_264B41AA4();

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

uint64_t sub_264A9855C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A985D0()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit24MockHIDServicePrimitives__currentHIDServices;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B078, &qword_264B4F060);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockHIDServicePrimitives(uint64_t a1)
{
  result = qword_27FF8B050;
  if (!qword_27FF8B050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A986D4(uint64_t a1)
{
  sub_264A98780(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_264A98780(uint64_t a1)
{
  if (!qword_27FF8B060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8B068, &qword_264B4F038);
    v1 = sub_264B40AA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF8B060);
    }
  }
}

uint64_t sub_264A987E4@<X0>(void *a1@<X8>)
{
  result = sub_264B403C4();
  *a1 = 1;
  a1[1] = v3;
  return result;
}

uint64_t sub_264A988DC@<X0>(void *a1@<X8>)
{
  result = sub_264B403C4();
  *a1 = 2;
  a1[1] = v3;
  return result;
}

uint64_t sub_264A989D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A98A4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B070, &qword_264B4F058);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B078, &qword_264B4F060);
  sub_264B40A54();
  swift_endAccess();
  sub_264A98BEC();
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id sub_264A98BC4@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = *(*v2 + 40);
  if (v3)
  {
    v4 = *(*v2 + 32);
  }

  else
  {
    a1 = 0;
    v4 = 0;
  }

  *a2 = a1;
  a2[1] = v4;
  a2[2] = v3;
  return v3;
}

unint64_t sub_264A98BEC()
{
  result = qword_27FF8B080;
  if (!qword_27FF8B080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8B070, &qword_264B4F058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B080);
  }

  return result;
}

uint64_t sub_264A98C50@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_264A98CD4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

unint64_t sub_264A98D68()
{
  result = qword_27FF8B088;
  if (!qword_27FF8B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B088);
  }

  return result;
}

uint64_t sub_264A98E34()
{
  v1 = 6513005;
  if (*v0 != 1)
  {
    v1 = 0x656E6F685069;
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

uint64_t sub_264A98E84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264A9AD0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_264A98EAC(uint64_t a1)
{
  v2 = sub_264A993F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A98EE8(uint64_t a1)
{
  v2 = sub_264A993F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A98F24(uint64_t a1)
{
  v2 = sub_264A9944C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A98F60(uint64_t a1)
{
  v2 = sub_264A9944C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A98F9C(uint64_t a1)
{
  v2 = sub_264A994A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A98FD8(uint64_t a1)
{
  v2 = sub_264A994A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A99014(uint64_t a1)
{
  v2 = sub_264A994F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A99050(uint64_t a1)
{
  v2 = sub_264A994F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Platform.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B090, &qword_264B4F190);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v28 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B098, &qword_264B4F198);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v25 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0A0, &qword_264B4F1A0);
  v23 = *(v9 - 8);
  v24 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0A8, &qword_264B4F1A8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A993F8();
  sub_264B41BD4();
  if (v18)
  {
    if (v18 == 1)
    {
      v32 = 1;
      sub_264A994A0();
      v12 = v25;
      sub_264B419B4();
      v20 = v26;
      v19 = v27;
    }

    else
    {
      v33 = 2;
      sub_264A9944C();
      v12 = v28;
      sub_264B419B4();
      v20 = v29;
      v19 = v30;
    }
  }

  else
  {
    v31 = 0;
    sub_264A994F4();
    sub_264B419B4();
    v20 = v23;
    v19 = v24;
  }

  (*(v20 + 8))(v12, v19);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_264A993F8()
{
  result = qword_27FF8B0B0;
  if (!qword_27FF8B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B0B0);
  }

  return result;
}

unint64_t sub_264A9944C()
{
  result = qword_27FF8B0B8;
  if (!qword_27FF8B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B0B8);
  }

  return result;
}

unint64_t sub_264A994A0()
{
  result = qword_27FF8B0C0;
  if (!qword_27FF8B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B0C0);
  }

  return result;
}

unint64_t sub_264A994F4()
{
  result = qword_27FF8B0C8;
  if (!qword_27FF8B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B0C8);
  }

  return result;
}

uint64_t Platform.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

uint64_t Platform.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0D0, &qword_264B4F1B0);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v38 = &v32 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0D8, &qword_264B4F1B8);
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0E0, &qword_264B4F1C0);
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0E8, &unk_264B4F1C8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v32 - v16;
  v18 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_264A993F8();
  v19 = v40;
  sub_264B41BC4();
  if (!v19)
  {
    v32 = v9;
    v40 = v14;
    v21 = v38;
    v20 = v39;
    v22 = sub_264B419A4();
    v23 = (2 * *(v22 + 16)) | 1;
    v42 = v22;
    v43 = v22 + 32;
    v44 = 0;
    v45 = v23;
    v24 = sub_2649E0EDC();
    if (v24 == 3 || v44 != v45 >> 1)
    {
      v26 = sub_264B417A4();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
      *v28 = &type metadata for Platform;
      sub_264B41904();
      sub_264B41794();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v40 + 8))(v17, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = v24;
      if (v24)
      {
        if (v24 == 1)
        {
          v47 = 1;
          sub_264A994A0();
          sub_264B418F4();
          v25 = v40;
          (*(v34 + 8))(v8, v37);
          (*(v25 + 8))(v17, v13);
        }

        else
        {
          v47 = 2;
          sub_264A9944C();
          v30 = v21;
          sub_264B418F4();
          v31 = v40;
          (*(v35 + 8))(v30, v36);
          (*(v31 + 8))(v17, v13);
        }
      }

      else
      {
        v47 = 0;
        sub_264A994F4();
        sub_264B418F4();
        (*(v33 + 8))(v12, v32);
        (*(v40 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v20 = v46;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v41);
}

uint64_t sub_264A99C44()
{
  v1 = *v0;
  v2 = 0x6C6F636F746F7270;
  v3 = 0x646C697542736FLL;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x696C696261706163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D726F6674616C70;
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

uint64_t sub_264A99CF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264A9AE20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_264A99D20(uint64_t a1)
{
  v2 = sub_264A9A45C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A99D5C(uint64_t a1)
{
  v2 = sub_264A9A45C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ParticipantVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0F0, &qword_264B4F1D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - v7;
  v19 = *(v1 + 8);
  v9 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v9;
  v10 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = v10;
  v13 = *(v1 + 48);
  v14 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A9A45C();
  sub_264B41BD4();
  v27 = 0;
  sub_264B41A14();
  if (!v2)
  {
    v26 = v19;
    v25 = 1;
    sub_264A9A4B0();
    sub_264B41A24();
    v24 = 2;
    sub_264B419E4();
    v23 = 3;
    sub_264B419E4();
    v20 = v13;
    v21 = v14;
    v22 = 4;
    sub_264A9A504();
    sub_264B419C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ParticipantVersion.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B110, &qword_264B4F1E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A9A45C();
  sub_264B41BC4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v30) = 0;
  v10 = sub_264B41974();
  LOBYTE(v28[0]) = 1;
  sub_264A9A558();
  sub_264B41984();
  v11 = v30;
  LOBYTE(v30) = 2;
  *&v27 = sub_264B41944();
  *(&v27 + 1) = v12;
  v26 = v11;
  LOBYTE(v30) = 3;
  v13 = sub_264B41944();
  v15 = v14;
  v25 = v13;
  v40 = 4;
  sub_264A9A5AC();
  sub_264B41924();
  (*(v6 + 8))(v9, v5);
  v24 = v37;
  v16 = v38;
  v39 = v38;
  *&v28[0] = v10;
  v17 = v15;
  v23 = v15;
  LOBYTE(v15) = v26;
  BYTE8(v28[0]) = v26;
  v18 = v27;
  v28[1] = v27;
  v19 = v25;
  *v29 = v25;
  *&v29[8] = v17;
  *&v29[16] = v37;
  v29[24] = v38;
  v20 = v27;
  *a2 = v28[0];
  a2[1] = v20;
  a2[2] = *v29;
  *(a2 + 41) = *&v29[9];
  sub_264A186B4(v28, &v30);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v30 = v10;
  v31 = v15;
  v32 = v18;
  v33 = v19;
  v34 = v23;
  v35 = v24;
  v36 = v16;
  return sub_264A18710(&v30);
}

uint64_t _s16ScreenSharingKit18ParticipantVersionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    v11 = *(a2 + 56);
    if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_264B41AA4() & 1) == 0 || (v4 != v8 || v5 != v9) && (sub_264B41AA4() & 1) == 0)
    {
      return 0;
    }

    if (v7)
    {
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v6 == v10)
      {
        v12 = v11;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t sub_264A9A45C()
{
  result = qword_27FF8B0F8;
  if (!qword_27FF8B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B0F8);
  }

  return result;
}

unint64_t sub_264A9A4B0()
{
  result = qword_27FF8B100;
  if (!qword_27FF8B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B100);
  }

  return result;
}

unint64_t sub_264A9A504()
{
  result = qword_27FF8B108;
  if (!qword_27FF8B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B108);
  }

  return result;
}

unint64_t sub_264A9A558()
{
  result = qword_27FF8B118;
  if (!qword_27FF8B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B118);
  }

  return result;
}

unint64_t sub_264A9A5AC()
{
  result = qword_27FF8B120;
  if (!qword_27FF8B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B120);
  }

  return result;
}

unint64_t sub_264A9A604()
{
  result = qword_27FF8B128;
  if (!qword_27FF8B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B128);
  }

  return result;
}

unint64_t sub_264A9A65C()
{
  result = qword_27FF8B130;
  if (!qword_27FF8B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B130);
  }

  return result;
}

unint64_t sub_264A9A6B4()
{
  result = qword_27FF8B138;
  if (!qword_27FF8B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B138);
  }

  return result;
}

unint64_t sub_264A9A70C()
{
  result = qword_27FF8B140;
  if (!qword_27FF8B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B140);
  }

  return result;
}

unint64_t sub_264A9A764()
{
  result = qword_27FF8B148;
  if (!qword_27FF8B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B148);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_264A9A7F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_264A9A83C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264A9A8F0()
{
  result = qword_27FF8B150;
  if (!qword_27FF8B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B150);
  }

  return result;
}

unint64_t sub_264A9A948()
{
  result = qword_27FF8B158;
  if (!qword_27FF8B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B158);
  }

  return result;
}

unint64_t sub_264A9A9A0()
{
  result = qword_27FF8B160;
  if (!qword_27FF8B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B160);
  }

  return result;
}

unint64_t sub_264A9A9F8()
{
  result = qword_27FF8B168;
  if (!qword_27FF8B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B168);
  }

  return result;
}

unint64_t sub_264A9AA50()
{
  result = qword_27FF8B170;
  if (!qword_27FF8B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B170);
  }

  return result;
}

unint64_t sub_264A9AAA8()
{
  result = qword_27FF8B178;
  if (!qword_27FF8B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B178);
  }

  return result;
}

unint64_t sub_264A9AB00()
{
  result = qword_27FF8B180;
  if (!qword_27FF8B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B180);
  }

  return result;
}

unint64_t sub_264A9AB58()
{
  result = qword_27FF8B188;
  if (!qword_27FF8B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B188);
  }

  return result;
}

unint64_t sub_264A9ABB0()
{
  result = qword_27FF8B190;
  if (!qword_27FF8B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B190);
  }

  return result;
}

unint64_t sub_264A9AC08()
{
  result = qword_27FF8B198;
  if (!qword_27FF8B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B198);
  }

  return result;
}

unint64_t sub_264A9AC60()
{
  result = qword_27FF8B1A0;
  if (!qword_27FF8B1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B1A0);
  }

  return result;
}

unint64_t sub_264A9ACB8()
{
  result = qword_27FF8B1A8;
  if (!qword_27FF8B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B1A8);
  }

  return result;
}

uint64_t sub_264A9AD0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6513005 && a2 == 0xE300000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F685069 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_264B41AA4();

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

uint64_t sub_264A9AE20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C697542736FLL && a2 == 0xE700000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000264B5DB70 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    return 4;
  }

  else
  {
    v6 = sub_264B41AA4();

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

__n128 RTIMessage.init(sessionID:sessionState:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a2;
  v5 = a2[1].n128_u64[0];
  v6 = a2[1].n128_u8[8];
  v7 = sub_264B40104();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  v8 = (a3 + *(type metadata accessor for RTIMessage(0) + 20));
  result = v10;
  *v8 = v10;
  v8[1].n128_u64[0] = v5;
  v8[1].n128_u8[8] = v6;
  return result;
}

uint64_t type metadata accessor for RTIMessage(uint64_t a1)
{
  result = qword_27FF8B2A8;
  if (!qword_27FF8B2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264A9B0D4()
{
  v1 = 0x446E6F6973736573;
  v2 = *v0;
  if (v2 == 3)
  {
    v3 = 0x446E6F6973736573;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x446E6F6973736573;
  }

  v5 = 0xD000000000000018;
  if (v2 == 1)
  {
    v5 = 0x6974634174786574;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_264A9B1B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264A9E96C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_264A9B1DC(uint64_t a1)
{
  v2 = sub_264A9D6E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B218(uint64_t a1)
{
  v2 = sub_264A9D6E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B254(uint64_t a1)
{
  v2 = sub_264A9D988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B290(uint64_t a1)
{
  v2 = sub_264A9D988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B2CC(uint64_t a1)
{
  v2 = sub_264A9D73C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B308(uint64_t a1)
{
  v2 = sub_264A9D73C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B344(uint64_t a1)
{
  v2 = sub_264A9D790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B380(uint64_t a1)
{
  v2 = sub_264A9D790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B3D4(uint64_t a1)
{
  v2 = sub_264A9D838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B410(uint64_t a1)
{
  v2 = sub_264A9D838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264B41AA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_264A9B4D0(uint64_t a1)
{
  v2 = sub_264A9D7E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B50C(uint64_t a1)
{
  v2 = sub_264A9D7E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B548(uint64_t a1)
{
  v2 = sub_264A9D88C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B584(uint64_t a1)
{
  v2 = sub_264A9D88C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B5C0(uint64_t a1)
{
  v2 = sub_264A9D934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B5FC(uint64_t a1)
{
  v2 = sub_264A9D934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RTISessionState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1B0, &qword_264B4F9F0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v50 = &v47 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1B8, &qword_264B4F9F8);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v6);
  v47 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1C0, &qword_264B4FA00);
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v62 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1C8, &qword_264B4FA08);
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v57 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1D0, &qword_264B4FA10);
  v58 = *(v14 - 8);
  v59 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v56 = &v47 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1D8, &qword_264B4FA18);
  v54 = *(v17 - 8);
  v55 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1E0, &qword_264B4FA20);
  v53 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v47 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1E8, &qword_264B4FA28);
  v26 = *(v25 - 8);
  v66 = v25;
  v67 = v26;
  MEMORY[0x28223BE20](v25, v27);
  v28 = *(v1 + 8);
  *&v65 = *v1;
  *(&v65 + 1) = v28;
  v29 = *(v1 + 16);
  v30 = *(v1 + 24);
  v31 = a1[3];
  v32 = a1;
  v34 = &v47 - v33;
  __swift_project_boxed_opaque_existential_1(v32, v31);
  sub_264A9D6E8();
  sub_264B41BD4();
  if (v30)
  {
    v35 = 4;
  }

  else
  {
    v35 = 0;
  }

  v36 = (v29 >> 60) & 3 | v35;
  if (v36 <= 2)
  {
    if (!v36)
    {
      LOBYTE(v68) = 0;
      sub_264A9D988();
      v41 = v66;
      sub_264B419B4();
      v68 = v65;
      v69 = v29;
      sub_264A9D8E0();
      sub_264B41A24();
      (*(v53 + 8))(v24, v21);
      return (*(v67 + 8))(v34, v41);
    }

    if (v36 == 1)
    {
      LOBYTE(v68) = 1;
      sub_264A9D934();
      v37 = v66;
      sub_264B419B4();
      v68 = v65;
      v69 = v29 & 0xCFFFFFFFFFFFFFFFLL;
      sub_264A9D8E0();
      v38 = v55;
      sub_264B41A24();
      (*(v54 + 8))(v20, v38);
      return (*(v67 + 8))(v34, v37);
    }

    LOBYTE(v68) = 2;
    sub_264A9D88C();
    v40 = v56;
    v41 = v66;
    sub_264B419B4();
    v68 = v65;
    v69 = v29 & 0xCFFFFFFFFFFFFFFFLL;
    sub_264A9D8E0();
    v42 = v59;
    sub_264B41A24();
    v43 = v58;
LABEL_14:
    (*(v43 + 8))(v40, v42);
    return (*(v67 + 8))(v34, v41);
  }

  if (v36 == 3)
  {
    LOBYTE(v68) = 3;
    sub_264A9D838();
    v40 = v57;
    v41 = v66;
    sub_264B419B4();
    v42 = v61;
    sub_264B419E4();
    v43 = v60;
    goto LABEL_14;
  }

  if (v36 == 4)
  {
    LOBYTE(v68) = 4;
    sub_264A9D7E4();
    v40 = v62;
    v41 = v66;
    sub_264B419B4();
    v42 = v64;
    sub_264B419E4();
    v43 = v63;
    goto LABEL_14;
  }

  if (v65 == 0 && v29 == 0x1000000000000000)
  {
    LOBYTE(v68) = 5;
    sub_264A9D790();
    v44 = v47;
    v45 = v66;
    sub_264B419B4();
    (*(v48 + 8))(v44, v49);
  }

  else
  {
    LOBYTE(v68) = 6;
    sub_264A9D73C();
    v46 = v50;
    v45 = v66;
    sub_264B419B4();
    (*(v51 + 8))(v46, v52);
  }

  return (*(v67 + 8))(v34, v45);
}

uint64_t RTISessionState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B238, &qword_264B4FA30);
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v78 = &v63 - v5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B240, &qword_264B4FA38);
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v6);
  v83 = &v63 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B248, &qword_264B4FA40);
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v8);
  v82 = &v63 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B250, &qword_264B4FA48);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v10);
  v81 = &v63 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B258, &qword_264B4FA50);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v12);
  v79 = &v63 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B260, &qword_264B4FA58);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v14);
  v16 = &v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B268, &qword_264B4FA60);
  v65 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v63 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B270, &unk_264B4FA68);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v63 - v24;
  v26 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_264A9D6E8();
  v27 = v92;
  sub_264B41BC4();
  if (!v27)
  {
    v28 = v20;
    v63 = v17;
    v64 = v16;
    v29 = v81;
    v30 = v82;
    v31 = v83;
    v92 = v22;
    v32 = v21;
    v33 = sub_264B419A4();
    v34 = (2 * *(v33 + 16)) | 1;
    v88 = v33;
    v89 = v33 + 32;
    v90 = 0;
    v91 = v34;
    v35 = sub_2649E0EE0();
    if (v35 != 7 && v90 == v91 >> 1)
    {
      if (v35 <= 2u)
      {
        if (v35)
        {
          if (v35 == 1)
          {
            LOBYTE(v85) = 1;
            sub_264A9D934();
            v45 = v64;
            sub_264B418F4();
            sub_264A9D9DC();
            v55 = v67;
            sub_264B41984();
            (*(v66 + 8))(v45, v55);
            (*(v92 + 8))(v25, v32);
            swift_unknownObjectRelease();
            v60 = 0;
            v57 = v85;
            v59 = v86;
            v61 = v87 | 0x1000000000000000;
          }

          else
          {
            LOBYTE(v85) = 2;
            sub_264A9D88C();
            v50 = v79;
            sub_264B418F4();
            sub_264A9D9DC();
            v51 = v69;
            sub_264B41984();
            v52 = v92;
            (*(v68 + 8))(v50, v51);
            (*(v52 + 8))(v25, v32);
            swift_unknownObjectRelease();
            v60 = 0;
            v57 = v85;
            v59 = v86;
            v61 = v87 | 0x2000000000000000;
          }
        }

        else
        {
          LOBYTE(v85) = 0;
          sub_264A9D988();
          sub_264B418F4();
          sub_264A9D9DC();
          v49 = v63;
          sub_264B41984();
          (*(v65 + 8))(v28, v49);
          (*(v92 + 8))(v25, v21);
          swift_unknownObjectRelease();
          v60 = 0;
          v57 = v85;
          v59 = v86;
          v61 = v87;
        }
      }

      else
      {
        v36 = v25;
        if (v35 > 4u)
        {
          v46 = v80;
          v47 = v92;
          v48 = v32;
          if (v35 == 5)
          {
            LOBYTE(v85) = 5;
            sub_264A9D790();
            sub_264B418F4();
            (*(v75 + 8))(v31, v73);
            (*(v47 + 8))(v36, v32);
            swift_unknownObjectRelease();
            v57 = 0;
            v59 = 0;
            v60 = 1;
            v61 = 0x1000000000000000;
          }

          else
          {
            LOBYTE(v85) = 6;
            sub_264A9D73C();
            v54 = v78;
            sub_264B418F4();
            (*(v76 + 8))(v54, v77);
            (*(v47 + 8))(v36, v48);
            swift_unknownObjectRelease();
            v59 = 0;
            v57 = 1;
            v61 = 0x1000000000000000;
            v60 = 1;
          }

          v43 = v84;
          goto LABEL_22;
        }

        v37 = v92;
        v38 = v32;
        if (v35 == 3)
        {
          LOBYTE(v85) = 3;
          sub_264A9D838();
          sub_264B418F4();
          v39 = v70;
          v57 = sub_264B41944();
          v59 = v58;
          (*(v71 + 8))(v29, v39);
          (*(v37 + 8))(v36, v32);
          swift_unknownObjectRelease();
          v60 = 0;
          v61 = 0x3000000000000000;
        }

        else
        {
          LOBYTE(v85) = 4;
          sub_264A9D7E4();
          v53 = v30;
          sub_264B418F4();
          v56 = v72;
          v57 = sub_264B41944();
          v59 = v62;
          (*(v74 + 8))(v53, v56);
          (*(v37 + 8))(v36, v38);
          swift_unknownObjectRelease();
          v61 = 0;
          v60 = 1;
        }
      }

      v43 = v84;
      v46 = v80;
LABEL_22:
      *v46 = v57;
      *(v46 + 8) = v59;
      *(v46 + 16) = v61;
      *(v46 + 24) = v60;
      return __swift_destroy_boxed_opaque_existential_0(v43);
    }

    v40 = sub_264B417A4();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
    *v42 = &type metadata for RTISessionState;
    sub_264B41904();
    sub_264B41794();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    (*(v92 + 8))(v25, v21);
    swift_unknownObjectRelease();
  }

  v43 = v84;
  return __swift_destroy_boxed_opaque_existential_0(v43);
}

uint64_t RTIMessage.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264B40104();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double RTIMessage.sessionState.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RTIMessage(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;

  return sub_264A6B440(v4, v5, v6, v7);
}

uint64_t sub_264A9CBD8()
{
  if (*v0)
  {
    return 0x536E6F6973736573;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_264A9CC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x536E6F6973736573 && a2 == 0xEC00000065746174)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

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

uint64_t sub_264A9CD08(uint64_t a1)
{
  v2 = sub_264A9DB0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9CD44(uint64_t a1)
{
  v2 = sub_264A9DB0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RTIMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B280, &qword_264B4FA78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A9DB0C();
  sub_264B41BD4();
  LOBYTE(v16) = 0;
  sub_264B40104();
  sub_264A10760(&qword_27FF89430, MEMORY[0x277CC95F8]);
  sub_264B41A24();
  if (!v2)
  {
    v10 = v3 + *(type metadata accessor for RTIMessage(0) + 20);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    v16 = *v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v15[15] = 1;
    sub_264A6B440(v16, v11, v12, v13);
    sub_264A9DB60();
    sub_264B41A24();
    sub_264A693A0(v16, v17, v18, v19);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RTIMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = sub_264B40104();
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B298, &qword_264B4FA80);
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for RTIMessage(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A9DB0C();
  sub_264B41BC4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = v12;
  v16 = v15;
  v17 = v30;
  LOBYTE(v34) = 0;
  sub_264A10760(&qword_27FF89408, MEMORY[0x277CC9618]);
  v18 = v33;
  v19 = v31;
  sub_264B41984();
  v20 = *(v17 + 32);
  v27 = v16;
  v20(v16, v6, v18);
  v37 = 1;
  sub_264A9DBB4();
  sub_264B41984();
  (*(v32 + 8))(v11, v19);
  v21 = v35;
  v22 = v36;
  v23 = v27;
  v24 = v27 + *(v28 + 20);
  *v24 = v34;
  *(v24 + 16) = v21;
  *(v24 + 24) = v22;
  sub_264A9DC08(v23, v29);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_264A9DC6C(v23);
}

uint64_t sub_264A9D2F8@<X0>(uint64_t a1@<X8>)
{
  sub_264A9DC08(v1, a1);
  type metadata accessor for ControlMessage(0);

  return swift_storeEnumTagMultiPayload();
}

BOOL _s16ScreenSharingKit15RTISessionStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v44[0] = v5;
  v44[1] = v6;
  v44[2] = v7;
  v45 = v8;
  v46 = v10;
  v47 = v9;
  v48 = v11;
  v49 = v12;
  if (v8)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = (v7 >> 60) & 3 | v13;
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      if (v12)
      {
        v26 = 4;
      }

      else
      {
        v26 = 0;
      }

      if (((v11 >> 60) & 3 | v26) != 3)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v14 != 4)
      {
        if (v6 | v5 || v7 != 0x1000000000000000)
        {
          if (v12)
          {
            v35 = 4;
          }

          else
          {
            v35 = 0;
          }

          if (((v11 >> 60) & 3 | v35) != 5 || v10 != 1 || v9 != 0 || v11 != 0x1000000000000000)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v12)
          {
            v32 = 4;
          }

          else
          {
            v32 = 0;
          }

          if (((v11 >> 60) & 3 | v32) != 5 || (v9 | v10) != 0 || v11 != 0x1000000000000000)
          {
            goto LABEL_68;
          }
        }

LABEL_32:
        sub_264A9EBC8(v44);
        return 1;
      }

      if (v12)
      {
        v16 = 4;
      }

      else
      {
        v16 = 0;
      }

      if (((v11 >> 60) & 3 | v16) != 4)
      {
        goto LABEL_68;
      }
    }

    if (v5 != v10 || v6 != v9)
    {
      v39 = v5;
      v40 = v6;
      v41 = v7;
      v42 = v8;
      v43 = sub_264B41AA4();
      sub_264A6B440(v39, v40, v41, v42);
      sub_264A6B440(v10, v9, v11, v12);
      sub_264A9EBC8(v44);
      return v43 & 1;
    }

    v27 = v5;
    v28 = v6;
    sub_264A6B440(v5, v6, v7, v8);
    sub_264A6B440(v27, v28, v11, v12);
    goto LABEL_32;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      if (v12)
      {
        v15 = 4;
      }

      else
      {
        v15 = 0;
      }

      if (((v11 >> 60) & 3 | v15) != 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v12)
      {
        v30 = 4;
      }

      else
      {
        v30 = 0;
      }

      if (((v11 >> 60) & 3 | v30) != 2)
      {
        goto LABEL_68;
      }
    }

    if (v5 == v10)
    {
      v18 = v5;
      v19 = v6;
      v20 = v7;
      v21 = v8;
      sub_264A6B440(v5, v9, v11, v12);
      sub_264A6B440(v18, v19, v20, v21);
      sub_264A6B440(v18, v19, v20, v21);
      sub_264A6B440(v18, v9, v11, v12);
      v23 = v20 & 0xCFFFFFFFFFFFFFFFLL;
      v25 = v11 & 0xCFFFFFFFFFFFFFFFLL;
      v22 = v19;
      v24 = v9;
LABEL_39:
      v31 = sub_264A2E750(v22, v23, v24, v25);
      sub_264A9EBC8(v44);
      sub_264A693A0(v18, v9, v11, v12);
      sub_264A693A0(v18, v19, v20, v21);
      return v31;
    }
  }

  else
  {
    if (v12)
    {
      v17 = 4;
    }

    else
    {
      v17 = 0;
    }

    if (!((v11 >> 60) & 3 | v17) && v5 == v10)
    {
      v18 = v5;
      v19 = v6;
      v20 = v7;
      v21 = v8;
      sub_264A6B440(v5, v9, v11, v12);
      sub_264A6B440(v18, v19, v20, v21);
      sub_264A6B440(v18, v19, v20, v21);
      sub_264A6B440(v18, v9, v11, v12);
      v22 = v19;
      v23 = v20;
      v24 = v9;
      v25 = v11;
      goto LABEL_39;
    }
  }

LABEL_68:
  sub_264A6B440(v5, v6, v7, v8);
  sub_264A6B440(v10, v9, v11, v12);
  sub_264A9EBC8(v44);
  return 0;
}

unint64_t sub_264A9D6E8()
{
  result = qword_27FF8B1F0;
  if (!qword_27FF8B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B1F0);
  }

  return result;
}

unint64_t sub_264A9D73C()
{
  result = qword_27FF8B1F8;
  if (!qword_27FF8B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B1F8);
  }

  return result;
}

unint64_t sub_264A9D790()
{
  result = qword_27FF8B200;
  if (!qword_27FF8B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B200);
  }

  return result;
}

unint64_t sub_264A9D7E4()
{
  result = qword_27FF8B208;
  if (!qword_27FF8B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B208);
  }

  return result;
}

unint64_t sub_264A9D838()
{
  result = qword_27FF8B210;
  if (!qword_27FF8B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B210);
  }

  return result;
}

unint64_t sub_264A9D88C()
{
  result = qword_27FF8B218;
  if (!qword_27FF8B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B218);
  }

  return result;
}

unint64_t sub_264A9D8E0()
{
  result = qword_27FF8B220;
  if (!qword_27FF8B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B220);
  }

  return result;
}

unint64_t sub_264A9D934()
{
  result = qword_27FF8B228;
  if (!qword_27FF8B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B228);
  }

  return result;
}

unint64_t sub_264A9D988()
{
  result = qword_27FF8B230;
  if (!qword_27FF8B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B230);
  }

  return result;
}

unint64_t sub_264A9D9DC()
{
  result = qword_27FF8B278;
  if (!qword_27FF8B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B278);
  }

  return result;
}

BOOL _s16ScreenSharingKit10RTIMessageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_264B400C4())
  {
    v4 = type metadata accessor for RTIMessage(0);
    v5 = a1 + *(v4 + 20);
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    v20 = *v5;
    v21 = v6;
    v22 = v7;
    v23 = v8;
    v9 = a2 + *(v4 + 20);
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v16 = *v9;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    sub_264A6B440(v20, v6, v7, v8);
    v13 = sub_264A6B440(v16, v10, v11, v12);
    v14 = _s16ScreenSharingKit15RTISessionStateO2eeoiySbAC_ACtFZ_0(&v20, &v16, v13);
    sub_264A693A0(v16, v17, v18, v19);
    sub_264A693A0(v20, v21, v22, v23);
  }

  else
  {
    return 0;
  }

  return v14;
}

unint64_t sub_264A9DB0C()
{
  result = qword_27FF8B288;
  if (!qword_27FF8B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B288);
  }

  return result;
}

unint64_t sub_264A9DB60()
{
  result = qword_27FF8B290;
  if (!qword_27FF8B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B290);
  }

  return result;
}

unint64_t sub_264A9DBB4()
{
  result = qword_27FF8B2A0;
  if (!qword_27FF8B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2A0);
  }

  return result;
}

uint64_t sub_264A9DC08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RTIMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A9DC6C(uint64_t a1)
{
  v2 = type metadata accessor for RTIMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit15RTISessionStateO(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 60) & 3 | (4 * (*(a1 + 24) & 1));
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_264A9DD00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FB && *(a1 + 25))
  {
    return (*a1 + 1019);
  }

  v3 = ((*(a1 + 16) >> 60) & 3 | (4 * *(a1 + 24))) ^ 0x3FF;
  if (v3 >= 0x3FA)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_264A9DD54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 1019;
    if (a3 >= 0x3FB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-a2 & 3) << 60;
      *(result + 24) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_264A9DDBC(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 16) = *(result + 16) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 24) = a2 == 4;
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = xmmword_264B4F9E0;
    *(result + 24) = 1;
  }

  return result;
}

uint64_t sub_264A9DE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = (*(a1 + *(a3 + 20) + 16) >> 60) & 3 | (4 * *(a1 + *(a3 + 20) + 24));
    v11 = v10 ^ 0x3FE;
    v12 = 1024 - v10;
    if (v11 >= 0x3FA)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_264A9DF04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264B40104();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = a1 + *(a4 + 20);
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = (-a2 & 3) << 60;
    *(v11 + 24) = -a2 >> 2;
  }

  return result;
}

uint64_t sub_264A9DFD0(uint64_t a1)
{
  result = sub_264B40104();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_264A9E0D8()
{
  result = qword_27FF8B2B8;
  if (!qword_27FF8B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2B8);
  }

  return result;
}

unint64_t sub_264A9E130()
{
  result = qword_27FF8B2C0;
  if (!qword_27FF8B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2C0);
  }

  return result;
}

unint64_t sub_264A9E188()
{
  result = qword_27FF8B2C8;
  if (!qword_27FF8B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2C8);
  }

  return result;
}

unint64_t sub_264A9E1E0()
{
  result = qword_27FF8B2D0;
  if (!qword_27FF8B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2D0);
  }

  return result;
}

unint64_t sub_264A9E238()
{
  result = qword_27FF8B2D8;
  if (!qword_27FF8B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2D8);
  }

  return result;
}

unint64_t sub_264A9E290()
{
  result = qword_27FF8B2E0;
  if (!qword_27FF8B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2E0);
  }

  return result;
}

unint64_t sub_264A9E2E8()
{
  result = qword_27FF8B2E8;
  if (!qword_27FF8B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2E8);
  }

  return result;
}

unint64_t sub_264A9E340()
{
  result = qword_27FF8B2F0;
  if (!qword_27FF8B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2F0);
  }

  return result;
}

unint64_t sub_264A9E398()
{
  result = qword_27FF8B2F8;
  if (!qword_27FF8B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2F8);
  }

  return result;
}

unint64_t sub_264A9E3F0()
{
  result = qword_27FF8B300;
  if (!qword_27FF8B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B300);
  }

  return result;
}

unint64_t sub_264A9E448()
{
  result = qword_27FF8B308;
  if (!qword_27FF8B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B308);
  }

  return result;
}

unint64_t sub_264A9E4A0()
{
  result = qword_27FF8B310;
  if (!qword_27FF8B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B310);
  }

  return result;
}

unint64_t sub_264A9E4F8()
{
  result = qword_27FF8B318;
  if (!qword_27FF8B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B318);
  }

  return result;
}

unint64_t sub_264A9E550()
{
  result = qword_27FF8B320;
  if (!qword_27FF8B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B320);
  }

  return result;
}

unint64_t sub_264A9E5A8()
{
  result = qword_27FF8B328;
  if (!qword_27FF8B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B328);
  }

  return result;
}

unint64_t sub_264A9E600()
{
  result = qword_27FF8B330;
  if (!qword_27FF8B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B330);
  }

  return result;
}

unint64_t sub_264A9E658()
{
  result = qword_27FF8B338;
  if (!qword_27FF8B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B338);
  }

  return result;
}

unint64_t sub_264A9E6B0()
{
  result = qword_27FF8B340;
  if (!qword_27FF8B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B340);
  }

  return result;
}

unint64_t sub_264A9E708()
{
  result = qword_27FF8B348;
  if (!qword_27FF8B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B348);
  }

  return result;
}

unint64_t sub_264A9E760()
{
  result = qword_27FF8B350;
  if (!qword_27FF8B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B350);
  }

  return result;
}

unint64_t sub_264A9E7B8()
{
  result = qword_27FF8B358;
  if (!qword_27FF8B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B358);
  }

  return result;
}

unint64_t sub_264A9E810()
{
  result = qword_27FF8B360;
  if (!qword_27FF8B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B360);
  }

  return result;
}

unint64_t sub_264A9E868()
{
  result = qword_27FF8B368;
  if (!qword_27FF8B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B368);
  }

  return result;
}

unint64_t sub_264A9E8C0()
{
  result = qword_27FF8B370;
  if (!qword_27FF8B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B370);
  }

  return result;
}

unint64_t sub_264A9E918()
{
  result = qword_27FF8B378;
  if (!qword_27FF8B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B378);
  }

  return result;
}

uint64_t sub_264A9E96C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x446E6F6973736573 && a2 == 0xEF6E696765426469;
  if (v3 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974634174786574 && a2 == 0xEA00000000006E6FLL || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000264B5ECC0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446E6F6973736573 && a2 == 0xEF65737561506469 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000264B5ECE0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446E6F6973736573 && a2 == 0xED0000646E456469 || (sub_264B41AA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446E6F6973736573 && a2 == 0xED00006569446469)
  {

    return 6;
  }

  else
  {
    v6 = sub_264B41AA4();

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

uint64_t sub_264A9EBC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B380, qword_264B50740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_264A9ECCC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AXPBackedAccessibilityServerPrimitives();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_264A9ED84()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CE7180]) init];
  [v1 setTransportDelegate_];
  if (qword_27FF88400 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE58);
  v3 = v0;
  v4 = sub_264B40944();
  v5 = sub_264B41484();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    swift_getObjectType();
    v8 = sub_264B41C44();
    v10 = sub_2649CC004(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_2649CC004(0xD000000000000014, 0x8000000264B5EDF0, &v12);
    _os_log_impl(&dword_2649C6000, v4, v5, "%s - %s: starting accessibility on AXPRemoteCacheManager", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  [v1 start];
  v11 = *&v3[OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpManager];
  *&v3[OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpManager] = v1;
}

void sub_264A9EF7C()
{
  if (qword_27FF88400 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AE58);
  v2 = v0;
  v3 = sub_264B40944();
  v4 = sub_264B41484();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315394;
    swift_getObjectType();
    v7 = sub_264B41C44();
    v9 = sub_2649CC004(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2649CC004(0xD000000000000013, 0x8000000264B5EDD0, &v12);
    _os_log_impl(&dword_2649C6000, v3, v4, "%s - %s: stopping accessibility on AXPRemoteCacheManager", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpManager;
  v11 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpManager];
  if (v11)
  {
    [v11 setTransportDelegate_];
    v11 = *&v2[v10];
  }

  *&v2[v10] = 0;
}

uint64_t sub_264A9F198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4 + OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpTransportDataHandler;
  v6 = *v5;
  if (*v5)
  {
    v11 = *(v5 + 8);

    v6(a1, a2, a3, a4);
    return sub_2649CB67C(v6, v11);
  }

  else
  {
    sub_264A9F734();
    swift_allocError();
    *v13 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_264A9F258()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B470, qword_264B4BB60);
  sub_264A9F6D0();
  return sub_264B40AB4();
}

uint64_t sub_264A9F444(void *a1, void *aBlock, void *a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = sub_264B40024();
  v10 = v9;

  v3[6] = v8;
  v3[7] = v10;

  return MEMORY[0x2822009F8](sub_264A9F4E8, 0, 0);
}

uint64_t sub_264A9F4E8()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v0[2] = v2;
  v0[3] = v1;

  sub_264B409C4();

  sub_2649DEF6C(v2, v1);
  v3[2](v3, 0);
  _Block_release(v3);
  v5 = v0[1];

  return v5();
}

void sub_264A9F64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_264B40014();
  v7 = sub_264B41014();
  (*(a5 + 16))(a5, v6, v7);
}

unint64_t sub_264A9F6D0()
{
  result = qword_27FF8A5F0;
  if (!qword_27FF8A5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF8B470, qword_264B4BB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A5F0);
  }

  return result;
}

unint64_t sub_264A9F734()
{
  result = qword_27FF8B480;
  if (!qword_27FF8B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B480);
  }

  return result;
}

uint64_t sub_264A9F788(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2649E0EE4;

  return v6();
}

uint64_t sub_264A9F870(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2649CD850;

  return v7();
}

uint64_t sub_264A9F958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  sub_264A16208(a3, v24 - v11);
  v13 = sub_264B41274();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_264A6E820(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_264B41264();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_264B411C4();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_264B41074() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_264A6E820(a3);

    return v22;
  }

LABEL_8:
  sub_264A6E820(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_264A9FC14(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2649DCDF0;

  return v6(a1);
}

uint64_t sub_264A9FF7C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A9FFBC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264AA0004()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2649CD850;

  return sub_264A9F444(v2, v3, v4);
}

uint64_t sub_264AA00BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264AA00F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return sub_264A9FC14(a1, v4);
}

uint64_t sub_264AA01AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649CD850;

  return sub_264A9FC14(a1, v4);
}

uint64_t sub_264AA0270(uint64_t a1, uint64_t a2)
{
  v3 = sub_264B40104();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_264AABCD0(&qword_27FF89470, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v8 = sub_264B40F84(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_264AABCD0(&unk_27FF89390, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v16 = sub_264B40F94();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_264AA0488(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_264B41B84();
    MEMORY[0x266748E90](a1 & 1);
    v5 = sub_264B41BB4();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_264AA0550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_264B41B84();
  sub_264B41084();
  v6 = sub_264B41BB4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_264B41AA4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_264AA0668(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  ObjectType = swift_getObjectType();
  v16[3] = a1;
  (*(*(a2 + 8) + 8))(v16, ObjectType);
  v8 = v16[0];
  v9 = *a3;
  swift_beginAccess();
  if (*(*(v3 + v9) + 16) && (, sub_264A20B44(v8), v11 = v10, , (v11 & 1) != 0))
  {
    sub_2649FEC60();
    swift_allocError();
    *v12 = 1;
    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v3 + v9);
    *(v3 + v9) = 0x8000000000000000;
    sub_264A22B6C(a1, a2, v8, isUniquelyReferenced_nonNull_native);
    *(v3 + v9) = v15;
    return swift_endAccess();
  }
}

uint64_t MediaSessionConfig.rawValue.getter()
{
  if (*v0)
  {
    return 0x7373656C65726977;
  }

  else
  {
    return 0x6465726977;
  }
}

ScreenSharingKit::MediaSessionConfig_optional __swiftcall MediaSessionConfig.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264B418D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_264AA0868(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7373656C65726977;
  }

  else
  {
    v3 = 0x6465726977;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA0000000000796CLL;
  }

  if (*a2)
  {
    v5 = 0x7373656C65726977;
  }

  else
  {
    v5 = 0x6465726977;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000796CLL;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264B41AA4();
  }

  return v8 & 1;
}

unint64_t sub_264AA0914()
{
  result = qword_27FF8B488;
  if (!qword_27FF8B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B488);
  }

  return result;
}

uint64_t sub_264AA0968()
{
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_264AA09EC(uint64_t a1)
{
  sub_264B41084();
}

uint64_t sub_264AA0A5C(uint64_t a1)
{
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_264AA0ADC@<X0>(char *a2@<X8>)
{
  v3 = sub_264B418D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_264AA0B3C(uint64_t *a1@<X8>)
{
  v2 = 0x6465726977;
  if (*v1)
  {
    v2 = 0x7373656C65726977;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000796CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_264AA0BE0()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 192);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D441F0]) init];
    v4 = v3;
    if (*(v0 + 112))
    {
      v5 = 0x40000220000;
    }

    else
    {
      v5 = 2359296;
    }

    [v3 setControlFlags_];
    v6 = sub_264B41014();
    [v4 setServiceType_];

    [v4 setDispatchQueue_];
    sub_264AA0CD0(v4);
    sub_2649F4240(v4);
    v7 = *(v0 + 192);
    *(v0 + 192) = v4;
    v2 = v4;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

void sub_264AA0CD0(void *a1)
{
  v10 = sub_264AA8834;
  v11 = 0;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_2649D68F4;
  v9 = &block_descriptor_94;
  v3 = _Block_copy(&v6);
  [a1 setInvalidationHandler_];
  _Block_release(v3);
  v10 = sub_264AABAC4;
  v11 = v1;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_2649D68F4;
  v9 = &block_descriptor_97;
  v4 = _Block_copy(&v6);

  [a1 setInterruptionHandler_];
  _Block_release(v4);
  v10 = sub_264AABACC;
  v11 = v1;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_2649F9844;
  v9 = &block_descriptor_100;
  v5 = _Block_copy(&v6);

  [a1 setErrorHandler_];
  _Block_release(v5);
}

uint64_t sub_264AA0E98(void **a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DB8, &unk_264B46FB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v39 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v38 = &v36 - v15;
  v16 = *a1;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v17 = sub_264B40964();
  __swift_project_value_buffer(v17, qword_27FFA71D0);
  sub_2649DDB20(v16);

  v18 = sub_264B40944();
  v19 = sub_264B414B4();
  sub_2649FE684(v16);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = v13;
    v21 = v20;
    v22 = swift_slowAlloc();
    v40 = v16;
    v41[0] = v22;
    *v21 = 136446466;
    sub_2649DDB20(v16);
    v23 = sub_264B41064();
    v37 = v4;
    v25 = v8;
    v26 = v5;
    v27 = sub_2649CC004(v23, v24, v41);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2082;
    v40 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
    sub_2649DDB20(v40);
    v28 = sub_264B41064();
    v30 = sub_2649CC004(v28, v29, v41);
    v4 = v37;

    *(v21 + 14) = v30;
    v5 = v26;
    v8 = v25;
    _os_log_impl(&dword_2649C6000, v18, v19, "Session client state changed from %{public}s to %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v22, -1, -1);
    v31 = v21;
    v13 = v36;
    MEMORY[0x266749940](v31, -1, -1);
  }

  v32 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionStateStreamContinuation;
  swift_beginAccess();
  sub_2649D046C(v2 + v32, v12, &qword_27FF88D78, &qword_264B45850);
  v33 = v39;
  if ((*(v39 + 48))(v12, 1, v13) == 1)
  {
    return sub_2649D04D4(v12, &qword_27FF88D78, &qword_264B45850);
  }

  v35 = v38;
  (*(v33 + 32))(v38, v12, v13);
  v40 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  sub_2649DDB20(v40);
  sub_264B412A4();
  (*(v5 + 8))(v8, v4);
  return (*(v33 + 8))(v35, v13);
}

uint64_t sub_264AA12E4()
{
  v1 = v0;
  v2 = sub_264B3FFD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71D0);
  v8 = sub_264B41484();
  sub_264B3FF94();
  v9 = sub_264B3FFA4();
  v11 = v10;
  (*(v3 + 8))(v6, v2);

  v12 = sub_264B40944();

  if (os_log_type_enabled(v12, v8))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136446722;
    v15 = sub_2649CC004(v9, v11, v20);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2050;
    *(v13 + 14) = 107;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_2649CC004(0x74696E696564, 0xE600000000000000, v20);
    _os_log_impl(&dword_2649C6000, v12, v8, "%{public}s:%{public}ld %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v16 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v17 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v17 == 1)
  {
    sub_2649FE684(1);
    sub_2649FE684(1);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_264B41754();
    MEMORY[0x266748390](0xD000000000000032, 0x8000000264B5F210);
    v19[1] = 1;
    sub_264B41864();
    result = sub_264B41874();
    __break(1u);
  }

  else
  {
    sub_2649DDB20(*(v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
    sub_2649FE684(v17);
    sub_2649FE684(1);

    __swift_destroy_boxed_opaque_existential_0((v1 + 136));

    sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionID, &unk_27FF8BFC0, &qword_264B47140);

    sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionStateStreamContinuation, &qword_27FF88D78, &qword_264B45850);
    sub_2649FE684(*(v1 + v16));

    swift_defaultActor_destroy();
    return v1;
  }

  return result;
}

uint64_t sub_264AA16E4()
{
  sub_264AA12E4();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MediaTransportClientSession(uint64_t a1)
{
  result = qword_27FF8B4C0;
  if (!qword_27FF8B4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AA1764(uint64_t a1)
{
  sub_264A0DF00(319);
  if (v1 <= 0x3F)
  {
    sub_264AA18A0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_264AA18A0(uint64_t a1)
{
  if (!qword_27FF88D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88D08, &qword_264B49A40);
    v1 = sub_264B41614();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF88D00);
    }
  }
}

void sub_264AA1904()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState) >= 2uLL)
  {
    sub_264AAB93C();
    v11 = swift_allocError();
    *v12 = 3;
    swift_willThrow();
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v13 = sub_264B40964();
    __swift_project_value_buffer(v13, qword_27FFA71D0);
    oslog = sub_264B40944();
    v14 = sub_264B41494();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v14, "Received session started message from the server, but we're already terminal. Ignoring", v15, 2u);
      MEMORY[0x266749940](v15, -1, -1);
    }
  }

  else
  {
    v2 = v0;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FFA71D0);
    v4 = sub_264B40944();
    v5 = sub_264B41474();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2649C6000, v4, v5, "Received session started message from the server, session is now activated...", v6, 2u);
      MEMORY[0x266749940](v6, -1, -1);
    }

    v7 = *(v2 + v1);
    *(v2 + v1) = 1;
    sub_2649DDB20(v7);
    sub_2649FE684(v7);
    v17 = v7;
    sub_264AA0E98(&v17);
    sub_2649FE684(v7);
    LOBYTE(v17) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B44150;
    *(inited + 32) = 0x6E6F73616552;
    v9 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0x6E776F6E6B6E75;
    *(inited + 56) = 0xE700000000000000;
    v10 = sub_264A24308(inited);
    swift_setDeallocating();
    sub_2649D04D4(v9, &qword_27FF89220, &qword_264B48430);
    sub_264A9113C(&v17, v10);
  }
}

uint64_t sub_264AA1C00()
{
  v1[6] = v0;
  v2 = sub_264B3FFD4();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AA1CC0, v0, 0);
}

uint64_t sub_264AA1CC0()
{
  v46 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_264B40964();
  v0[10] = __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v45);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 165;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6164696C61766E69, 0xEC00000029286574, v45);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[6];
  v14 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v15 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v15 >= 3)
  {

    v25 = sub_264B40944();
    v26 = sub_264B41494();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[6];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45[0] = v29;
      *v28 = 136446210;
      v0[5] = v27;
      type metadata accessor for MediaTransportClientSession(0);

      v30 = sub_264B41064();
      v32 = sub_2649CC004(v30, v31, v45);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2649C6000, v25, v26, "%{public}s Client is already in a terminal state.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x266749940](v29, -1, -1);
      MEMORY[0x266749940](v28, -1, -1);
    }

    sub_2649FEF6C();
    swift_allocError();
    *v33 = 9;
    swift_willThrow();

    v34 = v0[1];

    return v34();
  }

  else if (v15 == 2)
  {
    sub_2649FE684(2);
    sub_2649FE684(2);

    v16 = sub_264B40944();
    v17 = sub_264B414B4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[6];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45[0] = v20;
      *v19 = 136446210;
      v0[3] = v18;
      type metadata accessor for MediaTransportClientSession(0);

      v21 = sub_264B41064();
      v23 = sub_2649CC004(v21, v22, v45);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2649C6000, v16, v17, "%{public}s Client in the process of tearing down, will wait for terminal state...", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    sub_264AABCD0(&qword_27FF8B4D0, type metadata accessor for MediaTransportClientSession, &unk_264B50A68);
    v24 = swift_task_alloc();
    v0[16] = v24;
    *v24 = v0;
    v24[1] = sub_264AA277C;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    sub_2649DDB20(*(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
    sub_2649FE684(v15);
    sub_2649FE684(2);
    v35 = *(v13 + v14);
    v0[11] = v35;
    *(v13 + v14) = 2;
    sub_2649DDB20(v35);
    sub_2649DDB20(v35);
    sub_2649FE684(v35);
    v45[0] = v35;
    sub_264AA0E98(v45);
    sub_2649FE684(v35);
    if (v35 == 1)
    {
      sub_2649FE684(1);
      sub_2649FE684(1);
      v36 = sub_264B40944();
      v37 = sub_264B414B4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2649C6000, v36, v37, "Attempting to send stopped message to direct peer.", v38, 2u);
        MEMORY[0x266749940](v38, -1, -1);
      }

      v39 = sub_264B41044();
      v41 = v40;
      v0[12] = v40;
      v42 = swift_task_alloc();
      v0[13] = v42;
      *v42 = v0;
      v42[1] = sub_264AA2480;

      return sub_2649EB0F0(1, v39, v41);
    }

    else
    {
      sub_2649DDB20(v35);
      sub_2649FE684(v35);
      sub_2649FE684(1);
      v0[4] = 3;
      v43 = swift_task_alloc();
      v0[15] = v43;
      *v43 = v0;
      v43[1] = sub_264AA2600;

      return sub_264AA2BB8(v0 + 4);
    }
  }
}

uint64_t sub_264AA2480()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x2822009F8](sub_264AA2A08, v3, 0);
  }

  else
  {

    v2[4] = 3;
    v4 = swift_task_alloc();
    v2[15] = v4;
    *v4 = v2;
    v4[1] = sub_264AA2600;

    return sub_264AA2BB8(v2 + 4);
  }
}

uint64_t sub_264AA2600()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_264AA2710, v1, 0);
}

uint64_t sub_264AA2710()
{
  sub_2649FE684(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264AA277C()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_264AA288C, v1, 0);
}

uint64_t sub_264AA288C()
{
  v12 = v0;

  v1 = sub_264B40944();
  v2 = sub_264B414B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[6];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    type metadata accessor for MediaTransportClientSession(0);

    v6 = sub_264B41064();
    v8 = sub_2649CC004(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2649C6000, v1, v2, "%{public}s Client has completed in-flight teardown, returning", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x266749940](v5, -1, -1);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_264AA2A08()
{
  v1 = v0[14];

  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to send stopped message to server: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  else
  {
  }

  v0[4] = 3;
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_264AA2600;

  return sub_264AA2BB8(v0 + 4);
}

uint64_t sub_264AA2BB8(uint64_t *a1)
{
  v2[9] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_264B3FFD4();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a1;
  v2[17] = v6;
  v2[18] = v7;

  return MEMORY[0x2822009F8](sub_264AA2D34, v1, 0);
}

uint64_t sub_264AA2D34()
{
  v21 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FFA71D0);
  v19 = 540700532;
  v20 = 0xE400000000000000;
  v0[8] = v1;
  sub_2649DDB20(v1);
  v6 = sub_264B41064();
  MEMORY[0x266748390](v6);

  v7 = v20;
  v18 = v19;
  v8 = sub_264B414B4();
  sub_264B3FF94();
  v9 = sub_264B3FFA4();
  v11 = v10;
  (*(v3 + 8))(v2, v4);
  v12 = sub_264B40944();
  if (os_log_type_enabled(v12, v8))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446978;
    v15 = sub_2649CC004(v9, v11, &v19);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2050;
    *(v13 + 14) = 370;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_2649CC004(0x6E776F4472616574, 0xED0000293A6F7428, &v19);
    *(v13 + 32) = 2082;
    *(v13 + 34) = sub_2649CC004(v18, v7, &v19);
    _os_log_impl(&dword_2649C6000, v12, v8, "%{public}s:%{public}ld %{public}s %{public}s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_264AA3008;

  return sub_264AA800C();
}

uint64_t sub_264AA3008()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_264AA3118, v1, 0);
}

uint64_t sub_264AA3118()
{
  v18 = v0;
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = sub_264AA0BE0();
  [v6 invalidate];

  [*(v5 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_wifiReservation) invalidate];
  v7 = *(v5 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  *(v5 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState) = v1;
  sub_2649DDB20(v1);
  sub_2649DDB20(v7);
  sub_2649FE684(v7);
  v17 = v7;
  sub_264AA0E98(&v17);
  sub_2649FE684(v7);
  v8 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionStateStreamContinuation;
  swift_beginAccess();
  sub_2649D046C(v5 + v8, v2, &qword_27FF88D78, &qword_264B45850);
  v9 = (*(v4 + 48))(v2, 1, v3);
  v10 = v0[14];
  if (v9)
  {
    sub_2649D04D4(v0[14], &qword_27FF88D78, &qword_264B45850);
  }

  else
  {
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    (*(v12 + 16))(v11, v0[14], v13);
    sub_2649D04D4(v10, &qword_27FF88D78, &qword_264B45850);
    sub_264B412B4();
    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[13];
  (*(v0[11] + 56))(v14, 1, 1, v0[10]);
  swift_beginAccess();
  sub_2649FECCC(v14, v5 + v8, &qword_27FF88D78, &qword_264B45850);
  swift_endAccess();
  sub_2649EA194();

  v15 = v0[1];

  return v15();
}

uint64_t sub_264AA3374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v25 = a1;
  v4 = sub_264B3FFD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71D0);
  v10 = sub_264B41484();
  sub_264B3FF94();
  v11 = sub_264B3FFA4();
  v13 = v12;
  (*(v5 + 8))(v8, v4);

  v14 = sub_264B40944();

  if (os_log_type_enabled(v14, v10))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26[0] = v16;
    *v15 = 136446722;
    v17 = sub_2649CC004(v11, v13, v26);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2050;
    *(v15 + 14) = 212;
    *(v15 + 22) = 2082;
    *(v15 + 24) = sub_2649CC004(0xD000000000000028, 0x8000000264B5A520, v26);
    _os_log_impl(&dword_2649C6000, v14, v10, "%{public}s:%{public}ld %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v16, -1, -1);
    MEMORY[0x266749940](v15, -1, -1);
  }

  else
  {
  }

  v18 = v27;
  swift_beginAccess();
  v19 = *(v3 + 200);

  v20 = v25;
  v21 = sub_264AA0550(v25, v18, v19);

  if (v21)
  {
    swift_beginAccess();
    sub_264AAA2B8(v20, v18);
    swift_endAccess();
  }

  else
  {
    sub_264AAAC50();
    swift_allocError();
    *v23 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_264AA36B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v28 - v6;
  v8 = sub_264B40104();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v13 = sub_264B40964();
  __swift_project_value_buffer(v13, qword_27FFA71D0);
  v32 = *(v9 + 16);
  v32(v12, a1, v8);
  v14 = sub_264B40944();
  v15 = sub_264B41484();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = v7;
    v19 = v18;
    v33[0] = v18;
    *v17 = 136315138;
    v20 = sub_264B400A4();
    v29 = a1;
    v22 = v21;
    (*(v9 + 8))(v12, v8);
    v23 = sub_2649CC004(v20, v22, v33);
    a1 = v29;

    *(v17 + 4) = v23;
    _os_log_impl(&dword_2649C6000, v14, v15, "Setting sessionID: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v24 = v19;
    v7 = v30;
    MEMORY[0x266749940](v24, -1, -1);
    v25 = v17;
    v2 = v31;
    MEMORY[0x266749940](v25, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v32(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v26 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionID;
  swift_beginAccess();
  sub_2649FECCC(v7, v2 + v26, &unk_27FF8BFC0, &qword_264B47140);
  return swift_endAccess();
}

uint64_t sub_264AA39D4(uint64_t a1, _BYTE *a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_264B40104();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v6 = sub_264B3FFD4();
  *(v3 + 104) = v6;
  *(v3 + 112) = *(v6 - 8);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 154) = *a2;

  return MEMORY[0x2822009F8](sub_264AA3B48, v2, 0);
}

uint64_t sub_264AA3B48()
{
  v42 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v41);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 229;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000015, 0x8000000264B5F170, v41);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 56);
  v14 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v15 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v15 != 1)
  {
    sub_2649DDB20(*(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
    sub_2649FE684(v15);
    sub_2649FE684(1);

    v24 = sub_264B40944();
    v25 = sub_264B41494();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 154);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41[0] = v28;
      *v27 = 136446466;
      *(v0 + 152) = v26;
      v29 = sub_264B41064();
      v31 = sub_2649CC004(v29, v30, v41);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      v32 = *(v13 + v14);
      *(v0 + 40) = v32;
      sub_2649DDB20(v32);
      v33 = sub_264B41064();
      v35 = sub_2649CC004(v33, v34, v41);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_2649C6000, v24, v25, "Unable to create %{public}s, state is now: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v28, -1, -1);
      MEMORY[0x266749940](v27, -1, -1);
    }

    v23 = 10;
    goto LABEL_14;
  }

  v16 = *(v0 + 72);
  v17 = *(v0 + 80);
  v18 = *(v0 + 64);
  sub_2649FE684(1);
  sub_2649FE684(1);
  v19 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionID;
  swift_beginAccess();
  sub_2649D046C(v13 + v19, v18, &unk_27FF8BFC0, &qword_264B47140);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_2649D04D4(*(v0 + 64), &unk_27FF8BFC0, &qword_264B47140);
    v20 = sub_264B40944();
    v21 = sub_264B41494();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2649C6000, v20, v21, "SessionID is uninitialized", v22, 2u);
      MEMORY[0x266749940](v22, -1, -1);
    }

    v23 = 11;
LABEL_14:
    sub_2649FEF6C();
    swift_allocError();
    *v36 = v23;
    swift_willThrow();

    v37 = *(v0 + 8);

    return v37();
  }

  v39 = *(v0 + 154);
  (*(*(v0 + 80) + 32))(*(v0 + 96), *(v0 + 64), *(v0 + 72));
  *(v0 + 153) = v39;
  v40 = swift_task_alloc();
  *(v0 + 128) = v40;
  *v40 = v0;
  v40[1] = sub_264AA40F0;

  return sub_264AA4560((v0 + 153));
}

uint64_t sub_264AA40F0(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  v4 = v3[7];
  if (v1)
  {
    v5 = sub_264AA44BC;
  }

  else
  {
    v5 = sub_264AA4208;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264AA4208()
{
  v1 = *(v0 + 154);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 96), *(v0 + 72));
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 88);
  v5 = *(v0 + 56);
  if (v1 != 1)
  {
    v6 = type metadata accessor for MediaTransportAudioStream(0);
    v12 = objc_allocWithZone(v6);
    v13 = v3;

    v14 = sub_264AAB22C(1, v13, v5, v4, v12, &qword_27FF8B4F0, type metadata accessor for MediaTransportClientSession, &unk_264B50A4C);

    v10 = v14;
    sub_264AA0668(v10, &off_287659370, &OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_mediaStreamByType);
    if (!v2)
    {
      v11 = &off_287659350;
      goto LABEL_7;
    }

LABEL_5:
    v15 = *(v0 + 136);
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));

    v16 = *(v0 + 8);
    goto LABEL_8;
  }

  v6 = type metadata accessor for MediaTransportVideoStream(0);
  v7 = objc_allocWithZone(v6);
  v8 = v3;

  v9 = sub_264AAACF8(1, v8, v5, v4, v7, &qword_27FF8B4F0, type metadata accessor for MediaTransportClientSession, &unk_264B50A4C);

  v10 = v9;
  sub_264AA0668(v10, &off_28765EAA8, &OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_mediaStreamByType);
  if (v2)
  {
    goto LABEL_5;
  }

  v11 = &off_28765EA88;
LABEL_7:
  v17 = *(v0 + 136);
  v18 = *(v0 + 96);
  v19 = *(v0 + 72);
  v20 = *(v0 + 80);
  v21 = *(v0 + 48);

  v21[3] = v6;
  v21[4] = v11;

  *v21 = v10;
  (*(v20 + 8))(v18, v19);

  v16 = *(v0 + 8);
LABEL_8:

  return v16();
}

uint64_t sub_264AA44BC()
{
  (*(v0[10] + 8))(v0[12], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_264AA4560(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = *a1;
  return MEMORY[0x2822009F8](sub_264AA4588, v1, 0);
}

uint64_t sub_264AA4588()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = [objc_allocWithZone(MEMORY[0x277D44210]) init];
  *(v0 + 24) = v3;
  sub_264AABCD0(&qword_27FF8B4D0, type metadata accessor for MediaTransportClientSession, &unk_264B50A68);
  v4 = sub_264AA0BE0();
  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  if (v1 == 1)
  {
    *(v5 + 40) = 256;
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_264AA4774;
  }

  else
  {
    *(v5 + 40) = 1;
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_264AA48DC;
  }

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264AA4774()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_264AA48C0, v2, 0);
}

uint64_t sub_264AA48DC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_264AABDA4, v2, 0);
}

uint64_t sub_264AA4A28(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v2[38] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D60, &qword_264B457F8);
  v2[39] = v3;
  v2[40] = *(v3 - 8);
  v2[41] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AA4BD8, v1, 0);
}

uint64_t sub_264AA4BD8()
{
  v20 = v0;
  v1 = v0[46];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[37];
  v5 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionStateStreamContinuation;
  v0[47] = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionStateStreamContinuation;
  swift_beginAccess();
  sub_2649D046C(v4 + v5, v1, &qword_27FF88D78, &qword_264B45850);
  LODWORD(v2) = (*(v3 + 48))(v1, 1, v2);
  sub_2649D04D4(v1, &qword_27FF88D78, &qword_264B45850);
  if (v2 == 1)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    v0[48] = __swift_project_value_buffer(v6, qword_27FFA71D0);

    v7 = sub_264B40944();
    v8 = sub_264B414B4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[37];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_2649CC004(*(v9 + 120), *(v9 + 128), &v19);
      _os_log_impl(&dword_2649C6000, v7, v8, "Activating MediaTransportClientSession: Starting device discovery for %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x266749940](v11, -1, -1);
      MEMORY[0x266749940](v10, -1, -1);
    }

    v12 = v0[37];
    __swift_project_boxed_opaque_existential_1(v12 + 17, v12[20]);
    v14 = v12[15];
    v13 = v12[16];
    v15 = swift_task_alloc();
    v0[49] = v15;
    *v15 = v0;
    v15[1] = sub_264AA4EE0;

    return sub_264B03FB8((v0 + 7), v14, v13);
  }

  else
  {
    sub_264AAB93C();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_264AA4EE0()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 296);
  if (v0)
  {
    v4 = sub_264AA56A0;
  }

  else
  {
    v4 = sub_264AA500C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264AA500C()
{
  v42 = v0;
  sub_2649D2AAC((v0 + 56), v0 + 16);
  sub_2649CB5C0(v0 + 16, v0 + 96);
  v1 = sub_264B40944();
  v2 = sub_264B414B4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v41[0] = v4;
    *v3 = 136446210;
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    *(v0 + 200) = swift_getAssociatedTypeWitness();
    *(v0 + 208) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    sub_264B41764();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B518, &qword_264B50B50);
    v5 = sub_264B41064();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v8 = sub_2649CC004(v5, v7, v41);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_2649C6000, v1, v2, "Found device matching identifier: %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x266749940](v4, -1, -1);
    MEMORY[0x266749940](v3, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  v9 = *(v0 + 296);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v11 = *(v9 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  sub_2649DDB20(v11);
  sub_2649FE684(v11);
  sub_2649FE684(1);
  if (v11)
  {

    v12 = sub_264B40944();
    v13 = sub_264B41494();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 296);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v41[0] = v16;
      *v15 = 136446466;
      *(v0 + 272) = v14;
      type metadata accessor for MediaTransportClientSession(0);

      v17 = sub_264B41064();
      v19 = sub_2649CC004(v17, v18, v41);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = *(v9 + v10);
      *(v0 + 280) = v20;
      sub_2649DDB20(v20);
      v21 = sub_264B41064();
      v23 = sub_2649CC004(v21, v22, v41);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_2649C6000, v12, v13, "%{public}s cannot be activated because we've already become %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v16, -1, -1);
      MEMORY[0x266749940](v15, -1, -1);
    }

    sub_264AAB93C();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v25 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 352);
    v38 = *(v0 + 360);
    v39 = *(v0 + 376);
    v27 = *(v0 + 344);
    v37 = *(v0 + 336);
    v28 = *(v0 + 320);
    v29 = *(v0 + 328);
    v30 = *(v0 + 312);
    v40 = *(v0 + 304);
    v32 = *(v0 + 288);
    v31 = *(v0 + 296);
    (*(v28 + 104))(v29, *MEMORY[0x277D85778], v30);
    v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D68, &qword_264B46FC0);
    v32[4] = sub_2649CB4C8(&qword_27FF88D70, &qword_27FF88D68, &qword_264B46FC0, MEMORY[0x277D857C0]);
    __swift_allocate_boxed_opaque_existential_1(v32);
    sub_264B41284();
    (*(v28 + 8))(v29, v30);
    (*(v27 + 16))(v38, v26, v37);
    (*(v27 + 56))(v38, 0, 1, v37);
    swift_beginAccess();
    sub_2649FECCC(v38, v31 + v39, &qword_27FF88D78, &qword_264B45850);
    swift_endAccess();
    v33 = sub_264B41274();
    (*(*(v33 - 8) + 56))(v40, 1, 1, v33);
    sub_2649CB5C0(v0 + 16, v0 + 136);
    v34 = sub_264AABCD0(&qword_27FF8B4D0, type metadata accessor for MediaTransportClientSession, &unk_264B50A68);
    v35 = swift_allocObject();
    v35[2] = v31;
    v35[3] = v34;
    v35[4] = v31;
    sub_2649D2AAC((v0 + 136), (v35 + 5));
    swift_retain_n();
    sub_264A10C20(0, 0, v40, &unk_264B50B48, v35);

    (*(v27 + 8))(v26, v37);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v25 = *(v0 + 8);
  }

  return v25();
}

uint64_t sub_264AA56A0()
{
  v1 = *(v0 + 400);
  *(v0 + 264) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  if (swift_dynamicCast() && (*(v0 + 408) & 1) == 0)
  {

    sub_2649FEF6C();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_264AA57DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_264AA587C;

  return sub_264AA5B08(a5);
}

uint64_t sub_264AA587C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v4 = swift_task_alloc();
    *(v2 + 40) = v4;
    *v4 = v3;
    v4[1] = sub_264AA59F8;

    return sub_264AA676C(v0);
  }

  else
  {
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_264AA59F8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_2649F387C, v1, 0);
}

uint64_t sub_264AA5B08(uint64_t a1)
{
  *(v2 + 280) = a1;
  *(v2 + 288) = v1;
  return MEMORY[0x2822009F8](sub_264AA5B28, v1, 0);
}

uint64_t sub_264AA5B28()
{
  v34 = v0;
  v1 = (v0 + 18);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[35];
  v3 = sub_264B40964();
  v0[37] = __swift_project_value_buffer(v3, qword_27FFA71D0);
  sub_2649CB5C0(v2, (v0 + 18));
  v4 = sub_264B40944();
  v5 = sub_264B41474();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v6 = 136315138;
    __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
    v0[29] = swift_getAssociatedTypeWitness();
    v0[30] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v0 + 26);
    v1 = (v0 + 18);
    sub_264B41764();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B518, &qword_264B50B50);
    v7 = sub_264B41064();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v0 + 18);
    v10 = sub_2649CC004(v7, v9, &v33);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Activating RPRemoteDisplaySession with device %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x266749940](v32, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  }

  v11 = v0[36];
  v12 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v13 = *(v11 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v13 == 1)
  {
    sub_2649FE684(1);
    sub_2649FE684(1);
    v14 = sub_264B40944();
    v15 = sub_264B41494();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2649C6000, v14, v15, "The session is already active, cannot activate", v16, 2u);
      MEMORY[0x266749940](v16, -1, -1);
    }

    v17 = 2;
    goto LABEL_14;
  }

  sub_2649DDB20(*(v11 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
  sub_2649FE684(v13);
  sub_2649FE684(1);
  if (*(v11 + v12) > 1uLL)
  {
    v17 = 3;
LABEL_14:
    sub_264AAB93C();
    swift_allocError();
    *v19 = v17;
    swift_willThrow();
    v20 = v0[1];

    return v20();
  }

  sub_2649CB5C0(v0[35], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B520, &unk_264B50B68);
  type metadata accessor for RapportBackedMediaTransportDevice();
  if (swift_dynamicCast())
  {
    v18 = *(v0[26] + 32);
  }

  else
  {
    v18 = 0;
  }

  v0[38] = v18;
  v22 = v0[36];
  v23 = sub_264AA0BE0();
  [v23 setDestinationDevice_];

  v24 = [objc_allocWithZone(MEMORY[0x277D7BB40]) initForService_];
  v0[39] = v24;
  [v24 setShowsUIAlertOnError_];
  v25 = *(v22 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_wifiReservation);
  *(v22 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_wifiReservation) = v24;
  v26 = v24;

  v27 = sub_264B40944();
  v28 = sub_264B414B4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2649C6000, v27, v28, "Attempting to activate WiFi reservation", v29, 2u);
    MEMORY[0x266749940](v29, -1, -1);
  }

  v0[2] = v0;
  v0[3] = sub_264AA60C0;
  v30 = swift_continuation_init();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  v0[40] = v31;
  v0[25] = v31;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2649F4D64;
  v0[21] = &block_descriptor_87;
  v0[22] = v30;
  [v26 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264AA60C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 288);
  if (v2)
  {
    v4 = sub_264AA6564;
  }

  else
  {
    v4 = sub_264AA61E0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264AA61E0(uint64_t a1)
{
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "WiFi reservation active", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = v1[40];
  v6 = v1[36];

  v7 = *(v6 + 192);
  v1[42] = v7;
  v1[10] = v1;
  v1[11] = sub_264AA635C;
  v8 = swift_continuation_init();
  v1[25] = v5;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_2649F4D64;
  v1[21] = &block_descriptor_90;
  v1[22] = v8;
  [v7 activateWithCompletion_];

  return MEMORY[0x282200938](v1 + 10);
}

uint64_t sub_264AA635C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 288);
  if (v2)
  {
    v4 = sub_264AA66E8;
  }

  else
  {
    v4 = sub_264AA647C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264AA647C()
{
  v1 = sub_264B40944();
  v2 = sub_264B41474();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2649C6000, v1, v2, "RPRemoteDisplaySession activated!", v3, 2u);
    MEMORY[0x266749940](v3, -1, -1);
  }

  v4 = *(v0 + 304);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_264AA6564(uint64_t a1)
{
  v16 = v1;
  v2 = v1[41];
  swift_willThrow();
  v3 = v2;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_264B41B24();
    v10 = sub_2649CC004(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "WiFi reservation failed: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = v1[38];
  v12 = v1[39];
  swift_willThrow();

  v13 = v1[1];

  return v13();
}

uint64_t sub_264AA66E8(uint64_t a1)
{
  v2 = v1[42];
  v4 = v1[38];
  v3 = v1[39];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_264AA676C(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_264AA678C, v1, 0);
}

uint64_t sub_264AA678C()
{
  v38 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71D0);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_264B41B24();
    v10 = sub_2649CC004(v8, v9, &v37);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Client session interrupted: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = v0[10];
  v12 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v13 = *(v11 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v13 > 2)
  {

    v23 = sub_264B40944();
    v24 = sub_264B41494();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v0[10];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136446210;
      v0[7] = v25;
      type metadata accessor for MediaTransportClientSession(0);

      v28 = sub_264B41064();
      v30 = sub_2649CC004(v28, v29, &v37);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2649C6000, v23, v24, "%{public}s Client is already in a terminal state, not interrupting again.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x266749940](v27, -1, -1);
      MEMORY[0x266749940](v26, -1, -1);
    }

    v31 = v0[1];

    return v31();
  }

  else if (v13 == 2)
  {
    sub_2649FE684(2);
    sub_2649FE684(2);

    v14 = sub_264B40944();
    v15 = sub_264B414B4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[10];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v17 = 136446210;
      v0[5] = v16;
      type metadata accessor for MediaTransportClientSession(0);

      v19 = sub_264B41064();
      v21 = sub_2649CC004(v19, v20, &v37);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2649C6000, v14, v15, "%{public}s Client is in the process of tearing down, will wait for terminal state before resuming interruption call...", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x266749940](v18, -1, -1);
      MEMORY[0x266749940](v17, -1, -1);
    }

    sub_264AABCD0(&qword_27FF8B4D0, type metadata accessor for MediaTransportClientSession, &unk_264B50A68);
    v22 = swift_task_alloc();
    v0[12] = v22;
    *v22 = v0;
    v22[1] = sub_264AA6E30;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v32 = v0[9];
    sub_2649DDB20(*(v11 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
    sub_2649FE684(v13);
    sub_2649FE684(2);
    v33 = *(v11 + v12);
    *(v11 + v12) = 2;
    sub_2649DDB20(v33);
    sub_2649FE684(v33);
    v37 = v33;
    sub_264AA0E98(&v37);
    sub_2649FE684(v33);
    v0[6] = v32;
    v34 = v32;
    v35 = swift_task_alloc();
    v0[11] = v35;
    *v35 = v0;
    v35[1] = sub_264AA6D20;

    return sub_264AA2BB8(v0 + 6);
  }
}

uint64_t sub_264AA6D20()
{
  v1 = *v0;
  v4 = *v0;

  sub_2649FE684(*(v1 + 48));
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264AA6E30()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_2649F5338, v1, 0);
}

uint64_t sub_264AA6F40(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_264B3FFD4();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AA7000, v1, 0);
}

uint64_t sub_264AA7000()
{
  v26 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_264B40964();
  v0[10] = __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  v9 = *(v2 + 8);
  v0[11] = v9;
  v0[12] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);

  v10 = sub_264B40944();

  if (os_log_type_enabled(v10, v5))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446722;
    v13 = sub_2649CC004(v6, v8, &v25);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2050;
    *(v11 + 14) = 329;
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_2649CC004(0xD000000000000022, 0x8000000264B5EFD0, &v25);
    _os_log_impl(&dword_2649C6000, v10, v5, "%{public}s:%{public}ld %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
  }

  v14 = v0[6];
  v15 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_mediaStreamByType;
  swift_beginAccess();
  v16 = *(v14 + v15);
  if (*(v16 + 16))
  {

    v17 = sub_264A20B44(1);
    if (v18)
    {
      v0[13] = *(*(v16 + 56) + 16 * v17);
      swift_unknownObjectRetain();

      type metadata accessor for MediaTransportVideoStream(0);
      v19 = swift_dynamicCastClass();
      v0[14] = v19;
      if (v19)
      {

        return MEMORY[0x2822009F8](sub_264AA73A4, 0, 0);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v20 = sub_264B40944();
  v21 = sub_264B414A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2649C6000, v20, v21, "No Video Transport Stream, cannot set layer", v22, 2u);
    MEMORY[0x266749940](v22, -1, -1);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_264AA73A4()
{
  sub_264B41244();
  *(v0 + 120) = sub_264B41234();
  v2 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264AA7438, v2, v1);
}

uint64_t sub_264AA7438()
{
  v21 = v0;
  v1 = v0[14];
  v2 = v0[5];

  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentVideoLayer);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentVideoLayer) = v2;
  v4 = v2;

  v5 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient);
  if (v5)
  {
    v6 = v0[5];
    v7 = v5;
    sub_264AEABE4(v6, v7);
    v0[16] = 0;
LABEL_5:

    goto LABEL_7;
  }

  v8 = v0[11];
  v9 = v0[9];
  v10 = v0[7];
  v11 = sub_264B414B4();
  sub_264B3FF94();
  v12 = sub_264B3FFA4();
  v14 = v13;
  v8(v9, v10);
  v7 = sub_264B40944();
  if (os_log_type_enabled(v7, v11))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v15 = 136446978;
    v17 = sub_2649CC004(v12, v14, v20);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2050;
    *(v15 + 14) = 103;
    *(v15 + 22) = 2082;
    *(v15 + 24) = sub_2649CC004(0xD000000000000011, 0x8000000264B5F0E0, v20);
    *(v15 + 32) = 2082;
    *(v15 + 34) = sub_2649CC004(0xD00000000000004ELL, 0x8000000264B5F000, v20);
    _os_log_impl(&dword_2649C6000, v7, v11, "%{public}s:%{public}ld %{public}s %{public}s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v16, -1, -1);
    MEMORY[0x266749940](v15, -1, -1);
    goto LABEL_5;
  }

LABEL_7:
  v18 = v0[6];

  return MEMORY[0x2822009F8](sub_264AA7728, v18, 0);
}

uint64_t sub_264AA76B8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264AA7728()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

unsigned __int8 *sub_264AA7794(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FC0, &unk_264B470B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v32 - v10;
  v12 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v12 != 1)
  {
    sub_2649DDB20(*(v3 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
    sub_2649FE684(v12);
    v15 = 1;
    sub_2649FE684(1);
    sub_264AAAC50();
    swift_allocError();
    goto LABEL_5;
  }

  v38 = *a3;
  sub_2649FE684(1);
  sub_2649FE684(1);
  swift_beginAccess();
  a3 = *(v3 + 200);

  v13 = sub_264AA0550(a1, a2, a3);

  if (v13)
  {
    sub_264AAAC50();
    swift_allocError();
    v15 = 0;
LABEL_5:
    *v14 = v15;
    swift_willThrow();
    return a3;
  }

  v35 = v8;
  swift_beginAccess();

  sub_264A130D8(&v37, a1, a2);
  swift_endAccess();

  v34 = *(v3 + 184);
  v16 = sub_264AA0BE0();
  type metadata accessor for MediaTransportControlStream(0);
  a3 = swift_allocObject();
  a3[32] = 0;
  *(a3 + 5) = sub_264AAAA68(&unk_287655FA0);
  v17 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_stateStream;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  (*(*(v18 - 8) + 56))(&a3[v17], 1, 1, v18);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v19 = sub_264B40964();
  __swift_project_value_buffer(v19, qword_27FFA71D0);

  v20 = sub_264B40944();
  v21 = sub_264B414B4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = v16;
    v23 = v22;
    v24 = swift_slowAlloc();
    v33 = v7;
    v25 = v24;
    v36[0] = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_2649CC004(a1, a2, v36);
    _os_log_impl(&dword_2649C6000, v20, v21, "MediaTransportControlStream initialized with streamID:%{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v26 = v25;
    v7 = v33;
    MEMORY[0x266749940](v26, -1, -1);
    v27 = v23;
    v16 = v32;
    MEMORY[0x266749940](v27, -1, -1);
  }

  a3[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_role] = 1;
  *(a3 + 2) = a1;
  *(a3 + 3) = a2;
  *&a3[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportDispatchQueue] = v34;
  a3[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_QOS] = v38;
  v28 = objc_allocWithZone(MEMORY[0x277D44210]);

  v29 = [v28 init];
  *&a3[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream] = v29;
  [v29 setMessenger_];
  *&a3[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_currentSession] = v16;
  v30 = v35;
  (*(v35 + 104))(v11, *MEMORY[0x277D85778], v7);
  sub_264B41284();
  (*(v30 + 8))(v11, v7);
  return a3;
}

uint64_t sub_264AA7C48(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return sub_264AA39D4(a1, a2);
}

uint64_t sub_264AA7DA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649E0EE4;

  return sub_264AA6F40(a1);
}

uint64_t sub_264AA7E38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649E0EE4;

  return sub_264AA4A28(a1);
}

uint64_t sub_264AA7ED0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264AA1C00();
}

uint64_t sub_264AA7F5C(uint64_t a1)
{
  result = sub_264AABCD0(&qword_27FF8B4D0, type metadata accessor for MediaTransportClientSession, &unk_264B50A68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_264AA7FB4(uint64_t a1)
{
  result = sub_264AABCD0(&qword_27FF8B4D8, type metadata accessor for MediaTransportClientSession, &unk_264B50A30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_264AA802C()
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  v0[5] = __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Removing and invalidating AV streams", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = sub_2649F9A38(0);
  v0[6] = v5;
  if (v5)
  {
    v7 = v6;
    v8 = v5;
    ObjectType = swift_getObjectType();
    v0[3] = v8;
    v10 = *(v7 + 8);
    v19 = (*(v10 + 24) + **(v10 + 24));
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v12 = sub_264AA833C;
LABEL_9:
    v11[1] = v12;

    return v19(ObjectType, v10);
  }

  v13 = sub_2649F9A38(1);
  v0[8] = v13;
  if (v13)
  {
    v15 = v14;
    v16 = v13;
    ObjectType = swift_getObjectType();
    v0[2] = v16;
    v10 = *(v15 + 8);
    v19 = (*(v10 + 24) + **(v10 + 24));
    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v12 = sub_264AA8648;
    goto LABEL_9;
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_264AA833C()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_264AA844C, v1, 0);
}

uint64_t sub_264AA844C(uint64_t a1)
{
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Invalidated audio stream", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  swift_unknownObjectRelease();
  v5 = sub_2649F9A38(1);
  v1[8] = v5;
  if (v5)
  {
    v7 = v6;
    v8 = v5;
    ObjectType = swift_getObjectType();
    v1[2] = v8;
    v10 = *(v7 + 8);
    v14 = (*(v10 + 24) + **(v10 + 24));
    v11 = swift_task_alloc();
    v1[9] = v11;
    *v11 = v1;
    v11[1] = sub_264AA8648;

    return v14(ObjectType, v10);
  }

  else
  {
    v13 = v1[1];

    return v13();
  }
}

uint64_t sub_264AA8648()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_264AA8758, v1, 0);
}

uint64_t sub_264AA8758(uint64_t a1)
{
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Invalidated video stream", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  swift_unknownObjectRelease();
  v5 = *(v1 + 8);

  return v5();
}

void sub_264AA8834()
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FFA71D0);
  oslog = sub_264B40944();
  v1 = sub_264B41474();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2649C6000, oslog, v1, "remoteDisplaySession invalidationHandler", v2, 2u);
    MEMORY[0x266749940](v2, -1, -1);
  }
}

uint64_t sub_264AA891C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_264B41274();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_264A10C20(0, 0, v4, &unk_264B50B90, v7);
}

uint64_t sub_264AA8A60()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v2 = sub_264B40964();
    __swift_project_value_buffer(v2, qword_27FFA71D0);
    v3 = sub_264B40944();
    v4 = sub_264B414B4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2649C6000, v3, v4, "remoteDisplaySession interruptionHandler", v5, 2u);
      MEMORY[0x266749940](v5, -1, -1);
    }

    sub_264AAB93C();
    v6 = swift_allocError();
    v0[7] = v6;
    *v7 = 1;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_2649F6A6C;

    return sub_264AA676C(v6);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_264AA8C3C(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = sub_264B41274();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a1;
  sub_264A10C20(0, 0, v6, &unk_264B50B80, v9);
}

uint64_t sub_264AA8D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  return MEMORY[0x2822009F8](sub_264AA8D90, 0, 0);
}

uint64_t sub_264AA8D90()
{
  v24 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[10];
    if (v3)
    {
      v4 = v3;
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v5 = sub_264B40964();
      __swift_project_value_buffer(v5, qword_27FFA71D0);
      v6 = v3;
      v7 = sub_264B40944();
      v8 = sub_264B41494();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v23 = v10;
        *v9 = 136446210;
        swift_getErrorValue();
        v11 = sub_264B41B24();
        v13 = sub_2649CC004(v11, v12, &v23);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_2649C6000, v7, v8, "remoteDisplaySession %{public}s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x266749940](v10, -1, -1);
        MEMORY[0x266749940](v9, -1, -1);
      }

      return MEMORY[0x2822009F8](sub_264AA9108, v2, 0);
    }

    else
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v15 = sub_264B40964();
      __swift_project_value_buffer(v15, qword_27FFA71D0);
      v16 = sub_264B40944();
      v17 = sub_264B41494();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2649C6000, v16, v17, "remoteDisplaySession error handler called with no error", v18, 2u);
        MEMORY[0x266749940](v18, -1, -1);
      }

      sub_264AAB93C();
      v19 = swift_allocError();
      v0[13] = v19;
      *v20 = 6;
      v21 = swift_task_alloc();
      v0[14] = v21;
      *v21 = v0;
      v21[1] = sub_264AA937C;

      return sub_264AA676C(v19);
    }
  }

  else
  {
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_264AA9138()
{
  if (*(v0 + 120))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 80);
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_264AA9218;

    return sub_264AA676C(v3);
  }
}

uint64_t sub_264AA9218()
{

  return MEMORY[0x2822009F8](sub_264AA9314, 0, 0);
}

uint64_t sub_264AA9314()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264AA937C()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_2649F97E4, 0, 0);
}

uint64_t sub_264AA9494(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, int a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v35 = sub_264B40EB4();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264B40EE4();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v31 - v19;
  v34 = *(a2 + 184);
  v21 = swift_allocObject();
  swift_weakInit();
  (*(v17 + 16))(v20, a1, v16);
  v22 = (*(v17 + 80) + 42) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = a3;
  v24 = v31;
  *(v23 + 32) = v31;
  v25 = v33;
  *(v23 + 40) = v32;
  *(v23 + 41) = v25 & 1;
  (*(v17 + 32))(v23 + v22, v20, v16);
  aBlock[4] = sub_264AAB88C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_12;
  v26 = _Block_copy(aBlock);

  v27 = a3;
  v28 = v24;
  sub_264B40EC4();
  v39 = MEMORY[0x277D84F90];
  sub_264AABCD0(&qword_27FF892C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_2649CB4C8(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0, MEMORY[0x277D83970]);
  v29 = v35;
  sub_264B41684();
  MEMORY[0x266748860](0, v15, v11, v26);
  _Block_release(v26);
  (*(v38 + 8))(v11, v29);
  (*(v36 + 8))(v15, v37);
}

uint64_t sub_264AA9898(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  [a2 setDispatchQueue_];
  [a2 setMessenger_];
  [a2 setTrafficFlags_];
  v10 = 0x277CCA000uLL;
  v11 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  v12 = [v11 processIdentifier];

  if ((v12 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v40 = a4;
  v13 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  a4 = sub_2649D2500();
  v39 = v14;

  v10 = sub_2649C90C4();
  if (qword_27FF883E8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v15 = sub_264B40964();
  __swift_project_value_buffer(v15, qword_27FFA71D0);
  v16 = sub_264B40944();
  v17 = sub_264B414B4();
  v41 = a5;
  if (os_log_type_enabled(v16, v17))
  {
    v37 = v10;
    v18 = v12;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v44 = v20;
    *v19 = 134349570;
    *(v19 + 4) = v18;
    *(v19 + 12) = 2082;
    v42 = a4;
    v43 = v39 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B500, &qword_264B50B10);
    v21 = sub_264B41064();
    v23 = sub_2649CC004(v21, v22, &v44);

    *(v19 + 14) = v23;
    v10 = v37;
    *(v19 + 22) = 2050;
    *(v19 + 24) = v37;
    _os_log_impl(&dword_2649C6000, v16, v17, "currentProcessID: %{public}llu, currentProcessUPID: %{public}s, AVCDaemonUPID: %{public}llu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x266749940](v20, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);
  }

  v24 = v40;
  if (v40)
  {
    v25 = a4;
  }

  else
  {
    v25 = v10;
  }

  if (v40 & 1) != 0 && (v39)
  {
    v26 = sub_264B40944();
    v27 = sub_264B41494();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v38 = v10;
      v29 = swift_slowAlloc();
      v42 = v29;
      *v28 = 136446210;
      LOBYTE(v44) = v41 & 1;
      v30 = sub_264B41064();
      v32 = sub_2649CC004(v30, v31, &v42);

      *(v28 + 4) = v32;
      v24 = v40;
      _os_log_impl(&dword_2649C6000, v26, v27, "Unable to fetch current process's UPID, falling back to out-of-process for stream: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x266749940](v29, -1, -1);
      MEMORY[0x266749940](v28, -1, -1);

      v25 = v38;
    }

    else
    {

      v25 = v10;
    }
  }

  v33 = sub_264B40944();
  v34 = sub_264B414B4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67240448;
    *(v35 + 4) = v24 & 1;
    *(v35 + 8) = 2050;
    *(v35 + 10) = v25;
    _os_log_impl(&dword_2649C6000, v33, v34, "runInProcess = %{BOOL,public}d, delegateProcessUPID = %{public}llu", v35, 0x12u);
    MEMORY[0x266749940](v35, -1, -1);
  }

  [a2 setDelegatedProcessUPID_];
  [a2 setStreamType_];
  [a2 setStreamFlags_];
  v36 = sub_264B41014();
  [a2 setStreamID_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
}

uint64_t sub_264AA9D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - v7;
  (*(v5 + 16))(&v15 - v7, a1, v4);
  v9 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_tearDownContinuations;
  v10 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_tearDownContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_2649D8028(0, v10[2] + 1, 1, v10);
    *(a2 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_2649D8028((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(a2 + v9) = v10;
  return result;
}

uint64_t sub_264AA9F00@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  sub_264B41B84();
  MEMORY[0x266748E90](a1 & 1);
  result = sub_264B41BB4();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != (a1 & 1))
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v12 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_264A14E38();
      v11 = v12;
    }

    *a2 = *(*(v11 + 48) + v8);
    result = sub_264AAA3F4(v8);
    *v2 = v12;
  }

  else
  {
LABEL_5:
    *a2 = 2;
  }

  return result;
}

uint64_t sub_264AAA010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_264B40104();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_264AABCD0(&qword_27FF89470, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v32 = a1;
  v11 = sub_264B40F84();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v31 + 48) + v19 * v14, v5);
      sub_264AABCD0(&unk_27FF89390, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v20 = sub_264B40F94();
      (*(v17 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_264A14F7C();
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19 * v14, v5);
    sub_264AAA59C(v14);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_264AAA2B8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_264B41B84();
  sub_264B41084();
  v6 = sub_264B41BB4();
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
    if (v11 || (sub_264B41AA4() & 1) != 0)
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
    sub_264A151B4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_264AAA8A4(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_264AAA3F4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_264B416A4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_264B41B84();
        MEMORY[0x266748E90](v10);
        v11 = sub_264B41BB4() & v7;
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
          v13 = (v12 + v2);
          v14 = (v12 + v6);
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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

uint64_t sub_264AAA59C(int64_t a1)
{
  v3 = sub_264B40104();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = sub_264B416A4();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v15 = v13;
      v16 = (v14 + 1) & v13;
      v36 = *(v4 + 16);
      v37 = v4 + 16;
      v17 = *(v4 + 72);
      v34 = (v4 + 8);
      v35 = v10;
      v18 = v17;
      do
      {
        v19 = v18;
        v20 = v18 * v12;
        v36(v8, *(v9 + 48) + v18 * v12, v3);
        v21 = v9;
        v22 = v16;
        v23 = v15;
        v24 = v21;
        sub_264AABCD0(&qword_27FF89470, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v25 = sub_264B40F84();
        (*v34)(v8, v3);
        v26 = v25 & v23;
        v15 = v23;
        v16 = v22;
        if (a1 >= v22)
        {
          if (v26 >= v22 && a1 >= v26)
          {
LABEL_16:
            v9 = v24;
            v29 = *(v24 + 48);
            v18 = v19;
            v30 = v19 * a1;
            if (v19 * a1 < v20 || v29 + v19 * a1 >= (v29 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v30 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v26 >= v22 || a1 >= v26)
        {
          goto LABEL_16;
        }

        v9 = v24;
        v18 = v19;
LABEL_5:
        v12 = (v12 + 1) & v15;
        v10 = v35;
      }

      while (((*(v35 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v31 = *(v9 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v33;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_264AAA8A4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_264B416A4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_264B41B84();

        sub_264B41084();
        v10 = sub_264B41BB4();

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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

uint64_t sub_264AAAA68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_264AAACA4();
  result = MEMORY[0x266748730](v2, &type metadata for ControlMessageReliability, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_264A12A80(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_264AAAB44(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266748730](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_264A130D8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_264AAABDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_264A54FD4();
  result = MEMORY[0x266748730](v2, &type metadata for SceneInteractorBlockedReasons, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_264A13228(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_264AAAC50()
{
  result = qword_27FF8B4E0;
  if (!qword_27FF8B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B4E0);
  }

  return result;
}

unint64_t sub_264AAACA4()
{
  result = qword_27FF8B4E8;
  if (!qword_27FF8B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B4E8);
  }

  return result;
}

id sub_264AAACF8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v43 = a3;
  v44 = a2;
  v42 = a1;
  v13 = sub_264B3FFD4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_264AABCD0(a6, a7, a8);
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] = 0;
  v18 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  (*(*(v19 - 8) + 56))(&a5[v18], 1, 1, v19);
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator] = 0;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_clientActivated] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream____lazy_storage___screenCapture] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentVideoLayer] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStream] = 0;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isVideoStreamRunning] = 0;
  v20 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  (*(*(v21 - 8) + 56))(&a5[v20], 1, 1, v21);
  v22 = &a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentSession];
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentSession + 8] = 0;
  swift_unknownObjectWeakInit();
  v23 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_streamDidStopContinuation;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v24 - 8) + 56))(&a5[v23], 1, 1, v24);
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations] = MEMORY[0x277D84F90];
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v25 = sub_264B40964();
  __swift_project_value_buffer(v25, qword_27FFA71D0);
  v26 = sub_264B41484();
  sub_264B3FF94();
  v27 = sub_264B3FFA4();
  v29 = v28;
  (*(v14 + 8))(v17, v13);

  v30 = sub_264B40944();

  if (os_log_type_enabled(v30, v26))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v45 = v32;
    *v31 = 136446722;
    v33 = sub_2649CC004(v27, v29, &v45);

    *(v31 + 4) = v33;
    *(v31 + 12) = 2050;
    *(v31 + 14) = 88;
    *(v31 + 22) = 2082;
    *(v31 + 24) = sub_2649CC004(0xD000000000000032, 0x8000000264B5F190, &v45);
    _os_log_impl(&dword_2649C6000, v30, v26, "%{public}s:%{public}ld %{public}s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v32, -1, -1);
    MEMORY[0x266749940](v31, -1, -1);
  }

  else
  {
  }

  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_role] = v42 & 1;
  v34 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_sessionID;
  v35 = sub_264B40104();
  v36 = *(v35 - 8);
  (*(v36 + 16))(&a5[v34], a4, v35);
  *(v22 + 1) = v41;
  swift_unknownObjectWeakAssign();
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream] = v44;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isNegotiationComplete] = 0;
  v37 = type metadata accessor for MediaTransportVideoStream(0);
  v46.receiver = a5;
  v46.super_class = v37;
  v38 = objc_msgSendSuper2(&v46, sel_init);
  (*(v36 + 8))(a4, v35);
  return v38;
}

id sub_264AAB22C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v44 = a3;
  v45 = a2;
  v43 = a1;
  v13 = sub_264B3FFD4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_264AABCD0(a6, a7, a8);
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamType] = 0;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError] = 0;
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStream] = 0;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isAudioStreamRunning] = 0;
  v18 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF897C8, &unk_264B50B00);
  (*(*(v19 - 8) + 56))(&a5[v18], 1, 1, v19);
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator] = 0;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_clientActivated] = 0;
  v20 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  (*(*(v21 - 8) + 56))(&a5[v20], 1, 1, v21);
  v22 = &a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentSession];
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentSession + 8] = 0;
  swift_unknownObjectWeakInit();
  v23 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamDidStopContinuation;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v24 - 8) + 56))(&a5[v23], 1, 1, v24);
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations] = MEMORY[0x277D84F90];
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v25 = sub_264B40964();
  __swift_project_value_buffer(v25, qword_27FFA71D0);
  v26 = sub_264B41484();
  sub_264B3FF94();
  v27 = sub_264B3FFA4();
  v29 = v28;
  (*(v14 + 8))(v17, v13);

  v30 = sub_264B40944();

  if (os_log_type_enabled(v30, v26))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v46 = v32;
    *v31 = 136446722;
    v33 = sub_2649CC004(v27, v29, &v46);

    *(v31 + 4) = v33;
    *(v31 + 12) = 2050;
    *(v31 + 14) = 143;
    *(v31 + 22) = 2082;
    *(v31 + 24) = sub_2649CC004(0xD000000000000032, 0x8000000264B5F190, &v46);
    _os_log_impl(&dword_2649C6000, v30, v26, "%{public}s:%{public}ld %{public}s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v32, -1, -1);
    MEMORY[0x266749940](v31, -1, -1);
  }

  else
  {
  }

  v34 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_role;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_role] = v43 & 1;
  v35 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_sessionID;
  v36 = sub_264B40104();
  v37 = *(v36 - 8);
  (*(v37 + 16))(&a5[v35], a4, v36);
  *(v22 + 1) = v42;
  swift_unknownObjectWeakAssign();
  *&a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream] = v45;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isNegotiationComplete] = 0;
  a5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isRunInProcess] = a5[v34];
  v38 = type metadata accessor for MediaTransportAudioStream(0);
  v47.receiver = a5;
  v47.super_class = v38;
  v39 = objc_msgSendSuper2(&v47, sel_init);
  (*(v37 + 8))(a4, v36);
  return v39;
}

uint64_t sub_264AAB774()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264AAB7AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 42) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264AAB88C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);

  return sub_264AA9898(v1, v2, v3, v4, v5);
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_264AAB93C()
{
  result = qword_27FF8B510;
  if (!qword_27FF8B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B510);
  }

  return result;
}

uint64_t sub_264AAB990()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_264AAB9D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264AA57DC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_264AABAD4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264AABB1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649CD850;

  return sub_264AA8D70(a1, v4, v5, v7, v6);
}

uint64_t sub_264AABBDC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264AABC1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264AA8A40(a1, v4, v5, v6);
}

uint64_t sub_264AABCD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_264AABD2C()
{
  result = qword_27FF8B528;
  if (!qword_27FF8B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B528);
  }

  return result;
}

void sub_264AABDB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B40104();
  v72 = *(v4 - 8);
  v73 = v4;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v70 = &v66 - v9;
  v10 = sub_264B3FFD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v15 = sub_264B40964();
  v16 = __swift_project_value_buffer(v15, qword_27FF8AE88);
  v17 = sub_264B41484();
  sub_264B3FF94();
  v18 = sub_264B3FFA4();
  v20 = v19;
  (*(v11 + 8))(v14, v10);

  v21 = sub_264B40944();

  if (os_log_type_enabled(v21, v17))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v68 = v16;
    v24 = a1;
    v25 = v2;
    v26 = v23;
    v75[0] = v23;
    *v22 = 136446722;
    v27 = sub_2649CC004(v18, v20, v75);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2050;
    *(v22 + 14) = 62;
    *(v22 + 22) = 2082;
    *(v22 + 24) = sub_2649CC004(0xD00000000000002BLL, 0x8000000264B5F460, v75);
    _os_log_impl(&dword_2649C6000, v21, v17, "%{public}s:%{public}ld %{public}s", v22, 0x20u);
    swift_arrayDestroy();
    v28 = v26;
    v2 = v25;
    a1 = v24;
    MEMORY[0x266749940](v28, -1, -1);
    MEMORY[0x266749940](v22, -1, -1);
  }

  else
  {
  }

  if (*(v2 + 144))
  {
    v29 = *(a1 + *(type metadata accessor for HIDUpdateInputDevicesMessage(0) + 20));
    v30 = *(v29 + 16);
    v31 = MEMORY[0x277D84F90];
    v69 = v2;
    if (v30)
    {
      v32 = a1;
      v75[0] = MEMORY[0x277D84F90];
      sub_264AAFD30(0, v30, 0);
      v31 = v75[0];
      v33 = (v29 + 40);
      do
      {
        v35 = *(v33 - 1);
        v34 = *v33;
        v75[0] = v31;
        v37 = *(v31 + 16);
        v36 = *(v31 + 24);
        v38 = v34;
        if (v37 >= v36 >> 1)
        {
          v40 = v38;
          sub_264AAFD30((v36 > 1), v37 + 1, 1);
          v38 = v40;
          v31 = v75[0];
        }

        *(v31 + 16) = v37 + 1;
        v39 = v31 + 16 * v37;
        *(v39 + 32) = v35;
        *(v39 + 40) = v38;
        v33 += 2;
        --v30;
      }

      while (v30);
      a1 = v32;
    }

    v44 = sub_264AAD8D4(v31);

    v45 = sub_264B40944();
    v46 = sub_264B41484();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      v75[0] = v48;
      *v47 = 136315138;
      v50 = *(v44 + 2);
      v51 = MEMORY[0x277D84F90];
      if (v50)
      {
        v67 = v48;
        v68 = a1;
        v74 = MEMORY[0x277D84F90];
        sub_264AAFD50(0, v50, 0);
        v51 = v74;
        v52 = (v44 + 40);
        do
        {
          v53 = *v52;
          v54 = sub_264B40364();

          v74 = v51;
          v56 = *(v51 + 16);
          v55 = *(v51 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_264AAFD50((v55 > 1), v56 + 1, 1);
            v51 = v74;
          }

          *(v51 + 16) = v56 + 1;
          *(v51 + 8 * v56 + 32) = v54;
          v52 += 2;
          --v50;
        }

        while (v50);
        v49 = v67;
        a1 = v68;
      }

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B5B0, &qword_264B50DB0);
      v58 = MEMORY[0x266748460](v51, v57);
      v60 = v59;

      v61 = sub_2649CC004(v58, v60, v75);

      *(v47 + 4) = v61;
      _os_log_impl(&dword_2649C6000, v45, v46, "Update input devices to: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x266749940](v49, -1, -1);
      MEMORY[0x266749940](v47, -1, -1);
    }

    else
    {
    }

    v63 = v71;
    v62 = v72;
    v64 = v73;
    (*(v72 + 16))(v71, a1, v73);
    swift_beginAccess();
    v65 = v70;
    sub_264A12BC4(v70, v63);
    (*(v62 + 8))(v65, v64);
    swift_endAccess();
    sub_264B40284();
  }

  else
  {
    v41 = sub_264B40944();
    v42 = sub_264B41494();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2649C6000, v41, v42, "Unexpected HIDUpdateInputDevicesMessage message for FaceTime session, dropping the message", v43, 2u);
      MEMORY[0x266749940](v43, -1, -1);
    }
  }
}

void sub_264AAC478(uint64_t a1)
{
  v142 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v139 = &v135 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v135 - v10;
  v144 = sub_264B40264();
  v141 = *(v144 - 8);
  v13 = MEMORY[0x28223BE20](v144, v12);
  v135 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v135 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v136 = &v135 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v143 = &v135 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v138 = &v135 - v26;
  v27 = sub_264B3FFD4();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v32 = sub_264B40964();
  v33 = __swift_project_value_buffer(v32, qword_27FF8AE88);
  v34 = sub_264B41484();
  sub_264B3FF94();
  v35 = sub_264B3FFA4();
  v37 = v36;
  (*(v28 + 8))(v31, v27);

  v140 = v33;
  v38 = sub_264B40944();

  v39 = os_log_type_enabled(v38, v34);
  v137 = v18;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v148[0] = v41;
    *v40 = 136446722;
    v42 = sub_2649CC004(v35, v37, v148);

    *(v40 + 4) = v42;
    *(v40 + 12) = 2050;
    *(v40 + 14) = 82;
    *(v40 + 22) = 2082;
    *(v40 + 24) = sub_2649CC004(0xD000000000000022, 0x8000000264B5F430, v148);
    _os_log_impl(&dword_2649C6000, v38, v34, "%{public}s:%{public}ld %{public}s", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v41, -1, -1);
    MEMORY[0x266749940](v40, -1, -1);
  }

  else
  {
  }

  v44 = v142;
  v43 = v143;
  v46 = v144;
  v45 = v145;
  if ((*(v142 + 8) & 1) == 0)
  {
    v47 = *(v145 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_telemetry);
    if (v47)
    {
      v48 = *(v47 + OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer);
      if (v48)
      {
        v49 = *v142;
        if (*v142)
        {
          __swift_project_boxed_opaque_existential_1((v48 + 24), *(v48 + 48));
          LOBYTE(v148[0]) = 3;

          sub_264A560D4(v148, v49, 0, 0, 0);
          v43 = v143;
        }
      }
    }
  }

  v50 = *(v45 + 144);
  v51 = type metadata accessor for HIDReportMessage(0);
  v52 = (v141 + 48);
  v53 = v44 + *(v51 + 20);
  if ((v50 & 1) == 0)
  {
    sub_264A18824(v53, v11);
    v58 = *v52;
    if ((*v52)(v11, 1, v46) == 1)
    {
      sub_2649D04D4(v11, &qword_27FF89520, &unk_264B47C00);
    }

    else
    {
      v72 = v138;
      sub_264AB07D0(v11, v138, MEMORY[0x277D77AA8]);
      sub_264AB068C(v72, v43, MEMORY[0x277D77AA8]);
      v73 = v43;
      v74 = sub_264B40944();
      v75 = sub_264B41494();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v143 = v76;
        v77 = swift_slowAlloc();
        v148[0] = v77;
        *v76 = 136315138;
        v78 = sub_264B40244();
        v80 = v79;
        v81 = v73;
        v82 = MEMORY[0x277D77AA8];
        sub_264AB0BBC(v81, MEMORY[0x277D77AA8]);
        v83 = sub_2649CC004(v78, v80, v148);
        v46 = v144;

        v84 = v143;
        *(v143 + 4) = v83;
        v85 = v75;
        v86 = v84;
        _os_log_impl(&dword_2649C6000, v74, v85, "Unexpected sender set to %s for FTRC", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v77);
        MEMORY[0x266749940](v77, -1, -1);
        MEMORY[0x266749940](v86, -1, -1);

        v87 = v138;
        v88 = v82;
      }

      else
      {

        v91 = MEMORY[0x277D77AA8];
        sub_264AB0BBC(v43, MEMORY[0x277D77AA8]);
        v87 = v72;
        v88 = v91;
      }

      sub_264AB0BBC(v87, v88);
      v45 = v145;
    }

    v92 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_facetimeSenderID;
    swift_beginAccess();
    v93 = v45 + v92;
    v94 = v139;
    sub_264A18824(v93, v139);
    if (v58(v94, 1, v46) == 1)
    {
      sub_2649D04D4(v94, &qword_27FF89520, &unk_264B47C00);
      v54 = sub_264B40944();
      v55 = sub_264B41494();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        v57 = "Dropping report data, facetimeSenderID isn't configured";
        goto LABEL_31;
      }

LABEL_32:

      return;
    }

    v59 = v136;
    sub_264AB07D0(v94, v136, MEMORY[0x277D77AA8]);
    v95 = v44 + *(v51 + 24);
    v97 = *v95;
    v96 = *(v95 + 8);
    v98 = v96 >> 62;
    if ((v96 >> 62) > 1)
    {
      if (v98 != 2)
      {
        goto LABEL_41;
      }

      v99 = *(v97 + 16);
      v100 = *(v97 + 24);
    }

    else
    {
      if (!v98)
      {
        if ((v96 & 0xFF000000000000) != 0)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v99 = v97;
      v100 = v97 >> 32;
    }

    sub_2649DEF18(*v95, *(v95 + 8));
    if (v99 != v100)
    {
LABEL_42:
      v101 = sub_264B40004();
LABEL_43:
      if (v101 == sub_264B40454())
      {
        sub_264B40274();
LABEL_76:
        v89 = v97;
        v90 = v96;
        goto LABEL_77;
      }

      sub_2649DEF18(v97, v96);
      v102 = sub_264B40944();
      v103 = sub_264B41494();
      sub_2649DEF6C(v97, v96);
      if (!os_log_type_enabled(v102, v103))
      {
        v106 = v97;
        v107 = v96;
LABEL_51:
        sub_2649DEF6C(v106, v107);

LABEL_78:
        v124 = MEMORY[0x277D77AA8];
        v123 = v59;
        goto LABEL_79;
      }

      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v147 = v105;
      *v104 = 136315138;
      if (v98 > 1)
      {
        if (v98 != 2)
        {
          goto LABEL_73;
        }

        v110 = *(v97 + 16);
        v111 = *(v97 + 24);
      }

      else
      {
        if (!v98)
        {
          if ((v96 & 0xFF000000000000) != 0)
          {
            goto LABEL_74;
          }

          goto LABEL_73;
        }

        v110 = v97;
        v111 = v97 >> 32;
      }

      if (v110 != v111)
      {
LABEL_74:
        v125 = sub_264B40004();
        goto LABEL_75;
      }

LABEL_73:
      v125 = 0;
LABEL_75:
      v146 = v125;
      v126 = sub_264B41064();
      v128 = sub_2649CC004(v126, v127, &v147);

      *(v104 + 4) = v128;
      _os_log_impl(&dword_2649C6000, v102, v103, "Unexpected report with reportID: %s received during FTRC session", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x266749940](v105, -1, -1);
      MEMORY[0x266749940](v104, -1, -1);

      goto LABEL_76;
    }

LABEL_41:
    v101 = 0;
    goto LABEL_43;
  }

  sub_264A18824(v53, v5);
  if ((*v52)(v5, 1, v46) == 1)
  {
    sub_2649D04D4(v5, &qword_27FF89520, &unk_264B47C00);
    v54 = sub_264B40944();
    v55 = sub_264B41494();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      v57 = "Received HIDReportMessage without sender, dropping the message";
LABEL_31:
      _os_log_impl(&dword_2649C6000, v54, v55, v57, v56, 2u);
      MEMORY[0x266749940](v56, -1, -1);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v59 = v137;
  sub_264AB07D0(v5, v137, MEMORY[0x277D77AA8]);
  v60 = *(v59 + *(v46 + 20));
  sub_264A206BC(v60);
  v61 = (v44 + *(v51 + 24));
  v63 = *v61;
  v62 = v61[1];
  v64 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_proxyServiceIDsMap;
  swift_beginAccess();
  v65 = *(v45 + v64);
  if (!*(v65 + 16) || (v66 = sub_264A20A88(v60), (v67 & 1) == 0))
  {
    sub_2649DEF18(v63, v62);
    sub_264B40274();
    v89 = v63;
    v90 = v62;
LABEL_77:
    sub_2649DEF6C(v89, v90);
    goto LABEL_78;
  }

  v68 = (*(v65 + 56) + 16 * v66);
  v70 = *v68;
  v69 = v68[1];
  v71 = v62 >> 62;
  if ((v62 >> 62) > 1)
  {
    if (v71 != 2)
    {
      goto LABEL_58;
    }

    v108 = *(v63 + 16);
    v109 = *(v63 + 24);
  }

  else
  {
    if (!v71)
    {
      if ((v62 & 0xFF000000000000) != 0)
      {
        goto LABEL_59;
      }

LABEL_58:
      v112 = 0;
      goto LABEL_60;
    }

    v108 = v63;
    v109 = v63 >> 32;
  }

  sub_2649DEF18(v63, v62);
  if (v108 == v109)
  {
    goto LABEL_58;
  }

LABEL_59:
  v112 = sub_264B40004();
LABEL_60:
  if (sub_264B40444() != v112)
  {
    if (sub_264B40434() == v112 || sub_264B40424() == v112 || sub_264B40414() == v112)
    {
      v118 = sub_264B40944();
      v119 = sub_264B41484();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 134217984;
        *(v120 + 4) = v69;
        _os_log_impl(&dword_2649C6000, v118, v119, "Dispatching report to proxy mice service with id: %llu", v120, 0xCu);
        MEMORY[0x266749940](v120, -1, -1);
      }

      v121 = sub_264B40104();
      v117 = v135;
      (*(*(v121 - 8) + 16))(v135, v59, v121);
      *(v117 + *(v144 + 20)) = v69;
      goto LABEL_70;
    }

    v102 = sub_264B40944();
    v129 = sub_264B41494();
    if (os_log_type_enabled(v102, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v147 = v131;
      *v130 = 136315138;
      v146 = v112;
      v132 = sub_264B41064();
      v134 = sub_2649CC004(v132, v133, &v147);

      *(v130 + 4) = v134;
      _os_log_impl(&dword_2649C6000, v102, v129, "Received unsupported report of type %s while dispatching to proxy services", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v131);
      MEMORY[0x266749940](v131, -1, -1);
      MEMORY[0x266749940](v130, -1, -1);
    }

    v106 = v63;
    v107 = v62;
    goto LABEL_51;
  }

  v113 = sub_264B40944();
  v114 = sub_264B41484();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 134217984;
    *(v115 + 4) = v70;
    _os_log_impl(&dword_2649C6000, v113, v114, "Dispatching report to proxy keyboard service with id: %llu", v115, 0xCu);
    MEMORY[0x266749940](v115, -1, -1);
  }

  v116 = sub_264B40104();
  v117 = v135;
  (*(*(v116 - 8) + 16))(v135, v59, v116);
  *(v117 + *(v144 + 20)) = v70;
LABEL_70:
  sub_264B40274();
  sub_2649DEF6C(v63, v62);
  v122 = MEMORY[0x277D77AA8];
  sub_264AB0BBC(v117, MEMORY[0x277D77AA8]);
  v123 = v59;
  v124 = v122;
LABEL_79:
  sub_264AB0BBC(v123, v124);
}

void sub_264AAD2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v41 - v4;
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v41 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v41 - v17;
  v19 = sub_264B403C4();
  v45 = v1;
  v47[4] = v19;
  v48 = v20;
  sub_264B40324();
  sub_264B403D4();
  sub_264B40304();
  sub_264B40354();
  sub_264B40334();
  sub_264B40384();
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v46 = v6;
  v21 = sub_264B40964();
  __swift_project_value_buffer(v21, qword_27FF8AE88);
  v22 = v48;
  v23 = sub_264B40944();
  v24 = sub_264B41484();
  v25 = os_log_type_enabled(v23, v24);
  v44 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47[0] = v42;
    *v26 = 136315138;
    sub_264B40364();
    v43 = v7;
    v27 = sub_264B40F74();
    v29 = v28;
    v7 = v43;

    v30 = sub_2649CC004(v27, v29, v47);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_2649C6000, v23, v24, "Digitizer properties: %s", v26, 0xCu);
    v31 = v42;
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x266749940](v31, -1, -1);
    MEMORY[0x266749940](v26, -1, -1);
  }

  sub_264B400F4();
  v32 = v7;
  v33 = *(v7 + 16);
  v34 = v46;
  v33(v11, v18, v46);
  v35 = v45;
  swift_beginAccess();
  sub_264A12BC4(v15, v11);
  v36 = *(v32 + 8);
  v36(v15, v34);
  swift_endAccess();
  v33(v5, v18, v34);
  v37 = sub_264B40264();
  *&v5[*(v37 + 20)] = 1;
  (*(*(v37 - 8) + 56))(v5, 0, 1, v37);
  v38 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_facetimeSenderID;
  swift_beginAccess();
  sub_264AB0B4C(v5, v35 + v38);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AA8, &qword_264B44E78);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_264B44150;
  v40 = v44;
  *(v39 + 32) = 1;
  *(v39 + 40) = v40;
  sub_264B40284();

  v36(v18, v34);
}

char *sub_264AAD8D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B3FFD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88410 != -1)
  {
LABEL_71:
    swift_once();
  }

  v9 = sub_264B40964();
  v10 = __swift_project_value_buffer(v9, qword_27FF8AE88);
  v11 = sub_264B41484();
  sub_264B3FF94();
  v12 = sub_264B3FFA4();
  v14 = v13;
  (*(v5 + 8))(v8, v4);

  v117 = v10;
  v15 = sub_264B40944();

  if (os_log_type_enabled(v15, v11))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v120 = v17;
    *v16 = 136446722;
    v18 = sub_2649CC004(v12, v14, &v120);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2050;
    *(v16 + 14) = 190;
    *(v16 + 22) = 2082;
    *(v16 + 24) = sub_2649CC004(0xD000000000000023, 0x8000000264B5F400, &v120);
    _os_log_impl(&dword_2649C6000, v15, v11, "%{public}s:%{public}ld %{public}s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v17, -1, -1);
    MEMORY[0x266749940](v16, -1, -1);
  }

  else
  {
  }

  v114 = *(a1 + 16);
  if (v114)
  {
    v20 = 0;
    v109 = 0;
    v5 = 131073;
    v111 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_proxyServiceID;
    v112 = a1 + 32;
    v21 = MEMORY[0x277D84F90];
    v106 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_proxyServiceIDsMap;
    *&v19 = 136315138;
    v107 = v19;
    *&v19 = 134218496;
    v103 = v19;
    *&v19 = 136315394;
    v104 = v19;
    v110 = v2;
    while (1)
    {
      v23 = *(v112 + 16 * v20 + 8);
      v122 = *(v112 + 16 * v20);
      v123 = v23;
      swift_beginAccess();
      v24 = v23;
      sub_264B40354();
      sub_264B40334();
      sub_264B40394();
      sub_264B40314();
      sub_264B403A4();
      swift_endAccess();
      v25 = *(v2 + 120);
      if (!v25)
      {
        break;
      }

      v26 = *(v2 + 112);
      swift_bridgeObjectRetain_n();
      v27 = sub_264B40944();
      v28 = sub_264B414B4();

      v29 = os_log_type_enabled(v27, v28);
      v115 = v24;
      v116 = v21;
      v113 = v26;
      if (v29)
      {
        v30 = v26;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v120 = v32;
        *v31 = v107;
        *(v31 + 4) = sub_2649CC004(v30, v25, &v120);
        _os_log_impl(&dword_2649C6000, v27, v28, "Found recipientDisplayIdentifier: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x266749940](v32, -1, -1);
        MEMORY[0x266749940](v31, -1, -1);
      }

      swift_beginAccess();
      v34 = v122;
      v33 = v123;
      v35 = sub_264B402E4();
      swift_endAccess();
      v36 = *(v35 + 16);
      v37 = 32;
      do
      {
        a1 = v36;
        if (!v36)
        {
          break;
        }

        v38 = sub_264B40404();
        v37 += 4;
        v36 = a1 - 1;
      }

      while ((v38 & 1) == 0);

      v39 = *(sub_264B402E4() + 16);
      v40 = 32;
      do
      {
        if (!v39)
        {

          if (a1)
          {
            v59 = sub_264B40944();
            v60 = sub_264B414B4();
            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              *v61 = 0;
              _os_log_impl(&dword_2649C6000, v59, v60, "hasMouseLikeUsage, setting displayIdentifier", v61, 2u);
              MEMORY[0x266749940](v61, -1, -1);
            }

            swift_beginAccess();
            sub_264B402F4();
LABEL_47:
            swift_endAccess();
            v54 = v122;
            v55 = v123;
            v21 = v116;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v69 = v115;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v21 = sub_2649D84B8(0, *(v21 + 2) + 1, 1, v21);
            }

            v57 = *(v21 + 2);
            v70 = *(v21 + 3);
            v58 = v57 + 1;
            if (v57 >= v70 >> 1)
            {
              v21 = sub_2649D84B8((v70 > 1), v57 + 1, 1, v21);
            }

LABEL_8:
            *(v21 + 2) = v58;
            v22 = &v21[16 * v57];
            *(v22 + 4) = v54;
          }

          else
          {

            v62 = sub_264B40944();
            v63 = sub_264B414B4();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              *v64 = 0;
              _os_log_impl(&dword_2649C6000, v62, v63, "Neither hasMouseLikeUsage nor hasKeyboardLikeUsage", v64, 2u);
              MEMORY[0x266749940](v64, -1, -1);
            }

            v55 = v33;
            v21 = v116;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_2649D84B8(0, *(v21 + 2) + 1, 1, v21);
            }

            v66 = *(v21 + 2);
            v65 = *(v21 + 3);
            if (v66 >= v65 >> 1)
            {
              v21 = sub_2649D84B8((v65 > 1), v66 + 1, 1, v21);
            }

            *(v21 + 2) = v66 + 1;
            v22 = &v21[16 * v66];
            *(v22 + 4) = v34;
          }

          *(v22 + 5) = v55;

          goto LABEL_10;
        }

        v40 += 4;
        --v39;
      }

      while ((sub_264B40404() & 1) == 0);

      v41 = sub_264B40944();
      v8 = sub_264B414B4();
      v42 = os_log_type_enabled(v41, v8);
      if (!a1)
      {
        if (v42)
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_2649C6000, v41, v8, "hasKeyboardLikeUsage, setting exclusivityIdentifier", v67, 2u);
          MEMORY[0x266749940](v67, -1, -1);
        }

        swift_beginAccess();
        sub_264B40344();
        goto LABEL_47;
      }

      if (v42)
      {
        a1 = swift_slowAlloc();
        *a1 = 0;
        _os_log_impl(&dword_2649C6000, v41, v8, "hasMouseLikeUsage and hasKeyboardLikeUsage, setting up separate services with new ids", a1, 2u);
        MEMORY[0x266749940](a1, -1, -1);
      }

      v43 = *(v2 + v111);
      v4 = v43 - 1;
      if (!v43)
      {
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v2 = v43 - 2;
      if (v43 == 1)
      {
        goto LABEL_70;
      }

      v44 = v110;
      *(v110 + v111) = v2;
      v45 = v106;
      swift_beginAccess();
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v118 = *(v44 + v45);
      *(v44 + v45) = 0x8000000000000000;
      sub_264A23094(v4, v4 - 1, v34, v46);
      *(v44 + v45) = v118;
      swift_endAccess();
      v47 = v33;
      sub_264B40364();

      v48 = v109;
      v49 = sub_264B403E4();
      v108 = v47;
      if (v48)
      {

        v109 = 0;
        v21 = v116;
        v80 = v48;
        v81 = sub_264B40944();
        v82 = sub_264B41494();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v120 = v116;
          *v83 = v104;
          v85 = v108;
          v86 = v21;
          v87 = sub_264B402D4();
          v89 = v88;

          v90 = sub_2649CC004(v87, v89, &v120);

          *(v83 + 4) = v90;
          v21 = v86;
          *(v83 + 12) = 2112;
          v91 = v48;
          v92 = _swift_stdlib_bridgeErrorToNSError();
          *(v83 + 14) = v92;
          *v84 = v92;
          _os_log_impl(&dword_2649C6000, v81, v82, "Setting up %s failed with error: %@", v83, 0x16u);
          sub_2649D04D4(v84, &unk_27FF89880, &unk_264B46B20);
          MEMORY[0x266749940](v84, -1, -1);
          v93 = v116;
          __swift_destroy_boxed_opaque_existential_0(v116);
          MEMORY[0x266749940](v93, -1, -1);
          MEMORY[0x266749940](v83, -1, -1);

          v5 = 131073;
        }

        else
        {
        }

        v2 = v110;
      }

      else
      {
        v120 = v49;
        v121 = v50;

        sub_264B40344();
        v109 = v120;
        v105 = v121;
        v71 = v116;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_2649D84B8(0, *(v71 + 2) + 1, 1, v71);
        }

        v73 = *(v71 + 2);
        v72 = *(v71 + 3);
        v116 = v71;
        if (v73 >= v72 >> 1)
        {
          v116 = sub_2649D84B8((v72 > 1), v73 + 1, 1, v116);
        }

        v74 = v116;
        *(v116 + 2) = v73 + 1;
        v75 = &v74[16 * v73];
        v76 = v74;
        v77 = v105;
        *(v75 + 4) = v109;
        *(v75 + 5) = v77;
        v78 = sub_264B403E4();
        v109 = 0;
        v118 = v78;
        v119 = v79;
        sub_264B402F4();
        v94 = v118;
        v96 = *(v76 + 2);
        v95 = *(v76 + 3);
        v97 = v119;
        if (v96 >= v95 >> 1)
        {
          v21 = sub_2649D84B8((v95 > 1), v96 + 1, 1, v116);
        }

        else
        {
          v21 = v116;
        }

        *(v21 + 2) = v96 + 1;
        v98 = &v21[16 * v96];
        *(v98 + 4) = v94;
        *(v98 + 5) = v97;
        v99 = sub_264B40944();
        v100 = sub_264B414B4();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = v103;
          *(v101 + 4) = v34;
          *(v101 + 12) = 2048;
          *(v101 + 14) = v4;
          *(v101 + 22) = 2048;
          *(v101 + 24) = v2;
          _os_log_impl(&dword_2649C6000, v99, v100, "Added proxy services for service with ID: %llu\nkeyboard service id: %llu\nmouse service id: %llu", v101, 0x20u);
          MEMORY[0x266749940](v101, -1, -1);
        }

        v2 = v110;
      }

LABEL_10:
      if (++v20 == v114)
      {
        return v21;
      }
    }

    v51 = sub_264B40944();
    v52 = sub_264B41494();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2649C6000, v51, v52, "did not find recipientDisplayIdentifier, passing through unchanged", v53, 2u);
      MEMORY[0x266749940](v53, -1, -1);
    }

    v54 = v122;
    v55 = v123;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_2649D84B8(0, *(v21 + 2) + 1, 1, v21);
    }

    v57 = *(v21 + 2);
    v56 = *(v21 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      v21 = sub_2649D84B8((v56 > 1), v57 + 1, 1, v21);
    }

    goto LABEL_8;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_264AAE638()
{
  v1 = sub_264B40104();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_deviceIDs;
  swift_beginAccess();
  v16[0] = v6;
  v7 = *(v0 + v6);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 56);
  v11 = (v8 + 63) >> 6;
  v16[1] = v2 + 8;
  v16[2] = v2 + 16;

  for (i = 0; v10; result = (*(v2 + 8))(v5, v1))
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    (*(v2 + 16))(v5, *(v7 + 48) + *(v2 + 72) * (v15 | (v14 << 6)), v1);
    sub_264B40284();
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      *(v0 + v16[0]) = MEMORY[0x277D84FA0];
    }

    v10 = *(v7 + 56 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264AAE828()
{

  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_facetimeSenderID, &qword_27FF89520, &unk_264B47C00);

  sub_2649CB67C(*(v0 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler), *(v0 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler + 8));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_264AAE8CC()
{
  sub_264AAE828();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for UHIDKitBackedControlEventConsumer(uint64_t a1)
{
  result = qword_27FF8B570;
  if (!qword_27FF8B570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AAE94C(uint64_t a1)
{
  sub_264AAEA40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_264AAEA40(uint64_t a1)
{
  if (!qword_27FF8B580)
  {
    sub_264B40264();
    v1 = sub_264B41614();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF8B580);
    }
  }
}

uint64_t sub_264AAEA98(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_264AAEABC, v2, 0);
}

uint64_t sub_264AAEABC()
{
  v18 = v0;
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AE88);

  v2 = sub_264B40944();
  v3 = sub_264B41474();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v0[2] = v4;
    type metadata accessor for UHIDKitBackedControlEventConsumer(0);

    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "%s did activate", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v10 = v0[4];
  v11 = v0[5];
  v12 = (v11 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler);
  v13 = *(v11 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler);
  v14 = *(v11 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler + 8);
  *v12 = v0[3];
  v12[1] = v10;

  sub_2649CB67C(v13, v14);
  swift_allocObject();
  swift_weakInit();

  sub_264B402A4();

  if ((*(v11 + 144) & 1) == 0)
  {
    sub_264AAD2D0(*(v0[5] + 136));
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_264AAED04(uint64_t a1, uint64_t a2)
{
  v3 = sub_264B40264();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v16 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = sub_264B41274();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    sub_264AB068C(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D77AA8]);
    v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v12;
    sub_264AB07D0(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, MEMORY[0x277D77AA8]);
    sub_264A10C20(0, 0, v10, &unk_264B50DA8, v15);
  }

  return result;
}

uint64_t sub_264AAEF18()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_isInterrupted) = 1;
  sub_264AAE638();
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler);
  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = *(v2 + 8);
    v6 = sub_264AB0930(&qword_27FF8B5A8, &unk_264B50D28);
    sub_264AAFD90();
    v7 = swift_allocError();
    *v8 = 0;

    v3(v4, v6, v7);

    sub_2649CB67C(v3, v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_264AAF050()
{
  v13 = v0;
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AE88);

  v2 = sub_264B40944();
  v3 = sub_264B41474();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v0[2] = v4;
    type metadata accessor for UHIDKitBackedControlEventConsumer(0);

    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "%s did invalidate", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  sub_264AAE638();
  v10 = v0[1];

  return v10();
}

uint64_t sub_264AAF20C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  type metadata accessor for HIDReportMessage(0);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for HIDUpdateInputDevicesMessage(0);
  v2[16] = swift_task_alloc();
  type metadata accessor for ControlMessage(0);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B590, &qword_264B50D78);
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for HIDMessage(0);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AAF398, v1, 0);
}

uint64_t sub_264AAF398()
{
  v56 = v0;
  v2 = v0[17];
  v1 = v0[18];
  if (*(v0[13] + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_isInterrupted))
  {
    sub_264AAFD90();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();

    v4 = v0[1];
    v5 = 0;
  }

  else
  {
    v6 = v0[19];
    v7 = v0[20];
    v8 = v0[12];
    v9 = v8[3];
    v10 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v10 + 8))(v9, v10);
    sub_264ADAB50(v2, v1);
    v11 = (*(v7 + 48))(v1, 1, v6);
    if (v11 == 1)
    {
      sub_2649D04D4(v0[18], &qword_27FF8B590, &qword_264B50D78);
      if (qword_27FF88410 != -1)
      {
        swift_once();
      }

      v17 = v0[12];
      v18 = sub_264B40964();
      __swift_project_value_buffer(v18, qword_27FF8AE88);
      sub_2649CB5C0(v17, (v0 + 2));

      v19 = sub_264B40944();
      v20 = sub_264B41494();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = v0[13];
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v55[0] = v23;
        *v22 = 136446466;
        v0[11] = v21;
        type metadata accessor for UHIDKitBackedControlEventConsumer(0);

        v24 = sub_264B41064();
        v26 = sub_2649CC004(v24, v25, v55);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2082;
        v27 = v0[5];
        v28 = __swift_project_boxed_opaque_existential_1(v0 + 2, v27);
        v0[10] = v27;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
        (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v28, v27);
        __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
        swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_0(v0 + 7);
        v30 = sub_264B41C44();
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        v33 = sub_2649CC004(v30, v32, v55);

        *(v22 + 14) = v33;
        _os_log_impl(&dword_2649C6000, v19, v20, "%{public}s unexpected message type: %{public}s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266749940](v23, -1, -1);
        MEMORY[0x266749940](v22, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      }
    }

    else
    {
      v13 = v0[21];
      v12 = v0[22];
      sub_264AB07D0(v0[18], v12, type metadata accessor for HIDMessage);
      sub_264AB068C(v12, v13, type metadata accessor for HIDMessage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v15 = v0[22];
          v16 = v0[14];
          sub_264AB07D0(v0[21], v16, type metadata accessor for HIDReportMessage);
          sub_264AAC478(v16);
          sub_264AB0BBC(v16, type metadata accessor for HIDReportMessage);
        }

        else
        {
          if (qword_27FF88410 != -1)
          {
            swift_once();
          }

          v50 = sub_264B40964();
          __swift_project_value_buffer(v50, qword_27FF8AE88);
          v51 = sub_264B40944();
          v52 = sub_264B414B4();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_2649C6000, v51, v52, "Performing reset gesture state", v53, 2u);
            MEMORY[0x266749940](v53, -1, -1);
          }

          v15 = v0[22];

          sub_264B40294();
        }

        v48 = type metadata accessor for HIDMessage;
        v49 = v15;
      }

      else
      {
        v35 = v0[15];
        v34 = v0[16];
        v36 = v0[13];
        sub_264AB07D0(v0[21], v34, type metadata accessor for HIDUpdateInputDevicesMessage);
        v37 = *(v36 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_hidDebugInfo);
        v38 = *(v34 + *(v35 + 20));
        v39 = *(v38 + 16);
        v40 = MEMORY[0x277D84F90];
        if (v39)
        {
          v55[0] = MEMORY[0x277D84F90];
          sub_264AAFD70(0, v39, 0);
          v40 = v55[0];
          v41 = (v38 + 32);
          v42 = *(v55[0] + 16);
          do
          {
            v44 = *v41;
            v41 += 2;
            v43 = v44;
            v55[0] = v40;
            v45 = *(v40 + 24);
            if (v42 >= v45 >> 1)
            {
              sub_264AAFD70((v45 > 1), v42 + 1, 1);
              v40 = v55[0];
            }

            *(v40 + 16) = v42 + 1;
            *(v40 + 8 * v42++ + 32) = v43;
            --v39;
          }

          while (v39);
        }

        v46 = v0[22];
        v47 = v0[16];
        *(v37 + 24) = v40;

        sub_264AABDB4(v47);
        sub_264AB0BBC(v46, type metadata accessor for HIDMessage);
        v48 = type metadata accessor for HIDUpdateInputDevicesMessage;
        v49 = v47;
      }

      sub_264AB0BBC(v49, v48);
    }

    v4 = v0[1];
    v5 = v11 != 1;
  }

  return v4(v5);
}

uint64_t sub_264AAFA40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return sub_264AAEA98(a1, a2);
}

uint64_t sub_264AAFAE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264AAF030();
}

uint64_t sub_264AAFB70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264AAF20C(a1);
}

uint64_t sub_264AAFC04(uint64_t a1)
{
  result = sub_264AB0930(&qword_27FF8B588, &unk_264B50D44);
  *(a1 + 8) = result;
  return result;
}

void *sub_264AAFC48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264AAFDE4(a1, a2, a3, *v3, &qword_27FF8B5C8, &qword_264B50DC8, type metadata accessor for ContinuityDevice);
  *v3 = result;
  return result;
}

void *sub_264AAFC8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264AAFDE4(a1, a2, a3, *v3, &qword_27FF8B5D0, &qword_264B50DD0, MEMORY[0x277D4B7C0]);
  *v3 = result;
  return result;
}

void *sub_264AAFCD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264AAFFC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264AAFCF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264AB0108(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264AAFD10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264AB0214(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264AAFD30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264AB0308(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_264AAFD50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264AB0414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264AAFD70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264AB0548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_264AAFD90()
{
  result = qword_27FF8B598;
  if (!qword_27FF8B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B598);
  }

  return result;
}

void *sub_264AAFDE4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_264AAFFC0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AE8, &unk_264B50DE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA30, &qword_264B44EE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264AB0108(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B5D8, &qword_264B50DD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264AB0214(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B5C0, &qword_264B50DC0);
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

char *sub_264AB0308(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AA8, &qword_264B44E78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_264AB0414(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B5B8, &qword_264B50DB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B5B0, &qword_264B50DB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264AB0548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B5A0, &qword_264B50D80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_264AB064C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264AB068C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264AB06F4()
{
  v1 = *(sub_264B40264() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_264B40104();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264AB07D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264AB0838(uint64_t a1)
{
  sub_264B40264();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649CD850;

  return sub_264AAEEF8(a1, v4, v5, v6);
}

uint64_t sub_264AB0930(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UHIDKitBackedControlEventConsumer(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264AB0974(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_facetimeSenderID;
  v13 = sub_264B40264();
  (*(*(v13 - 8) + 56))(v6 + v12, 1, 1, v13);
  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_deviceIDs) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_isInterrupted) = 0;
  v14 = (v6 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_interruptionHandler);
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_hidDebugInfo;
  type metadata accessor for HIDDebugInfo();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F90];
  v16[2] = 0;
  v16[3] = v17;
  v16[4] = sub_264A23F08(v17);
  *(v6 + v15) = v16;
  v18 = OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_proxyServiceIDsMap;
  *(v6 + v18) = sub_264A23FE8(v17);
  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_proxyServiceID) = -1;
  *(v6 + 112) = a3;
  *(v6 + 120) = a4;
  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit33UHIDKitBackedControlEventConsumer_telemetry) = a5;
  sub_264B402C4();
  swift_allocObject();
  v19 = a5;

  v20 = sub_264B402B4();
  if (v20)
  {
    *(v6 + 128) = v20;
    *(v6 + 136) = a1;
    *(v6 + 144) = a2 & 1;
    return v6;
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

uint64_t sub_264AB0B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264AB0BBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264AB0C30()
{
  result = qword_27FF8B5E0;
  if (!qword_27FF8B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B5E0);
  }

  return result;
}

id sub_264AB0D08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConcreteAXUIClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_264AB0DC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = (v2 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler + 8);
  *v4 = a1;
  v4[1] = a2;

  sub_2649CB67C(v6, v5);
  sub_264B41754();

  v7 = [objc_opt_self() processInfo];
  [v7 processIdentifier];

  v8 = sub_264B41A64();
  MEMORY[0x266748390](v8);

  v9 = objc_allocWithZone(MEMORY[0x277CE7740]);
  v10 = sub_264B41014();

  v11 = sub_264B41014();
  v12 = [v9 initWithIdentifier:v10 serviceBundleName:v11];

  v13 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient);
  *(v3 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient) = v12;
  v14 = v12;

  if (v14)
  {
    [v14 setDelegate_];
  }

  else
  {
    sub_2649E24BC();
    swift_allocError();
    *v15 = 8;
    swift_willThrow();
  }
}