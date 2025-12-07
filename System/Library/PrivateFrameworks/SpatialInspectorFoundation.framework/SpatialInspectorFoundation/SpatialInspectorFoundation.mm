__int128 *sub_26B28E5DC()
{
  if (qword_2803F4730 != -1)
  {
    swift_once();
  }

  return &xmmword_2803FC260;
}

double sub_26B28E62C@<D0>(_OWORD *a1@<X8>)
{
  if (qword_2803F4730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *&xmmword_2803FC260;
  *a1 = xmmword_2803FC260;
  return result;
}

uint64_t sub_26B28E6A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_2803F4730 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *&xmmword_2803FC260 = v1;
  *(&xmmword_2803FC260 + 1) = v2;
  return result;
}

uint64_t (*sub_26B28E728(uint64_t a1))()
{
  if (qword_2803F4730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B28E7B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B2BB768();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26B28E81C()
{
  v1 = v0 + *(type metadata accessor for SpatialInspectorDataV1(0) + 20);
  v2 = *v1;
  sub_26B28E8AC(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for SpatialInspectorDataV1(uint64_t a1)
{
  result = qword_2803F48C0;
  if (!qword_2803F48C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26B28E8AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_26B28E900()
{
  v1 = v0 + *(type metadata accessor for SpatialInspectorDataV1(0) + 24);
  v2 = *v1;
  sub_26B28E8AC(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_26B28E944()
{
  v1 = v0 + *(type metadata accessor for SpatialInspectorDataV1(0) + 28);
  v2 = *v1;
  sub_26B28E988(*v1, *(v1 + 8));
  return v2;
}

void sub_26B28E988(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_26B28E8AC(a1, a2);
  }
}

int *sub_26B28E9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  v21 = sub_26B2BB768();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  result = type metadata accessor for SpatialInspectorDataV1(0);
  v23 = (a9 + result[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + result[6]);
  *v24 = a4;
  v24[1] = a5;
  v25 = (a9 + result[7]);
  *v25 = a6;
  v25[1] = a7;
  v26 = a9 + result[8];
  *v26 = a8;
  *(v26 + 8) = a10;
  *(v26 + 16) = a11 & 1;
  v27 = a9 + result[9];
  *v27 = a12;
  *(v27 + 8) = a13;
  *(v27 + 16) = a14 & 1;
  return result;
}

uint64_t sub_26B28EB2C()
{
  v1 = *v0;
  sub_26B2BC1E8();
  MEMORY[0x26D6742C0](v1);
  return sub_26B2BC238();
}

uint64_t sub_26B28EBA0(uint64_t a1)
{
  v2 = *v1;
  sub_26B2BC1E8();
  MEMORY[0x26D6742C0](v2);
  return sub_26B2BC238();
}

unint64_t sub_26B28EBE4()
{
  v1 = *v0;
  v2 = 0x536465646F636E65;
  v3 = 0xD00000000000001DLL;
  v4 = 0x7A6953656E656373;
  if (v1 != 4)
  {
    v4 = 0x6E6543656E656373;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26B28ECC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B29007C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B28ED04(uint64_t a1)
{
  v2 = sub_26B28F170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B28ED40(uint64_t a1)
{
  v2 = sub_26B28F170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B28ED7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D70, &unk_26B2BC8F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B28F170();
  sub_26B2BC258();
  LOBYTE(v22) = 0;
  sub_26B2BB768();
  sub_26B28FA68(&qword_2803F3D78, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_26B2BC0B8();
  if (!v2)
  {
    v10 = type metadata accessor for SpatialInspectorDataV1(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    *&v22 = *v11;
    *(&v22 + 1) = v12;
    v24 = 1;
    sub_26B28E8AC(v22, v12);
    sub_26B28F1C4();
    sub_26B2BC0B8();
    sub_26B28F218(v22, *(&v22 + 1));
    v13 = (v3 + v10[6]);
    v14 = v13[1];
    *&v22 = *v13;
    *(&v22 + 1) = v14;
    v24 = 2;
    sub_26B28E8AC(v22, v14);
    sub_26B2BC0B8();
    sub_26B28F218(v22, *(&v22 + 1));
    v16 = (v3 + v10[7]);
    v17 = v16[1];
    *&v22 = *v16;
    *(&v22 + 1) = v17;
    v24 = 3;
    sub_26B28E988(v22, v17);
    sub_26B2BC048();
    sub_26B28F26C(v22, *(&v22 + 1));
    v18 = (v3 + v10[8]);
    v19 = *(v18 + 16);
    v22 = *v18;
    v23 = v19;
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
    sub_26B28F8D4(&qword_2803F3D90, MEMORY[0x277D84AF0]);
    sub_26B2BC048();
    v20 = (v3 + v10[9]);
    v21 = *(v20 + 16);
    v22 = *v20;
    v23 = v21;
    v24 = 5;
    sub_26B2BC048();
  }

  return (*(v6 + 8))(v9, v5);
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

unint64_t sub_26B28F170()
{
  result = qword_2803F4738[0];
  if (!qword_2803F4738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F4738);
  }

  return result;
}

unint64_t sub_26B28F1C4()
{
  result = qword_2803F3D80;
  if (!qword_2803F3D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3D80);
  }

  return result;
}

void sub_26B28F218(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_26B28F26C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_26B28F218(a1, a2);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_26B28F2C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_26B2BB768();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v23 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D98, &qword_26B2BC900);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for SpatialInspectorDataV1(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B28F170();
  v25 = v9;
  sub_26B2BC248();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v22;
    LOBYTE(v27) = 0;
    sub_26B28FA68(&qword_2803F3DA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v15 = v23;
    sub_26B2BBFC8();
    (*(v14 + 32))(v13, v15, v4);
    v29 = 1;
    sub_26B28F880();
    sub_26B2BBFC8();
    *&v13[v10[5]] = v27;
    v29 = 2;
    v23 = 0;
    sub_26B2BBFC8();
    *&v13[v10[6]] = v27;
    v29 = 3;
    sub_26B2BBF58();
    *&v13[v10[7]] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
    v29 = 4;
    v20[1] = sub_26B28F8D4(&qword_2803F3DB0, MEMORY[0x277D84AF8]);
    sub_26B2BBF58();
    v16 = v28;
    v17 = &v13[v10[8]];
    *v17 = v27;
    v17[16] = v16;
    v29 = 5;
    sub_26B2BBF58();
    (*(v24 + 8))(v25, v26);
    v18 = v28;
    v19 = &v13[v10[9]];
    *v19 = v27;
    v19[16] = v18;
    sub_26B28F924(v13, v21);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_26B28F988(v13);
  }
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

unint64_t sub_26B28F880()
{
  result = qword_2803F3DA8;
  if (!qword_2803F3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3DA8);
  }

  return result;
}

uint64_t sub_26B28F8D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3D88, &qword_26B2BDEC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B28F924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialInspectorDataV1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B28F988(uint64_t a1)
{
  v2 = type metadata accessor for SpatialInspectorDataV1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B28F9E4(uint64_t a1)
{
  *(a1 + 8) = sub_26B28FA68(&qword_2803F3DB8, type metadata accessor for SpatialInspectorDataV1, &unk_26B2BC924);
  result = sub_26B28FA68(&qword_2803F3DC0, type metadata accessor for SpatialInspectorDataV1, &unk_26B2BC94C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26B28FA68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B28FAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B2BB768();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26B28FBD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26B2BB768();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

void sub_26B28FCA0(uint64_t a1)
{
  sub_26B2BB768();
  if (v1 <= 0x3F)
  {
    sub_26B28FD4C();
    if (v2 <= 0x3F)
    {
      sub_26B28FD9C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26B28FD4C()
{
  if (!qword_2803F3DC8)
  {
    v0 = sub_26B2BBD28();
    if (!v1)
    {
      atomic_store(v0, &qword_2803F3DC8);
    }
  }
}

void sub_26B28FD9C(uint64_t a1)
{
  if (!qword_2803F3DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3D88, &qword_26B2BDEC0);
    v1 = sub_26B2BBD28();
    if (!v2)
    {
      atomic_store(v1, &qword_2803F3DD0);
    }
  }
}

uint64_t getEnumTagSinglePayload for SpatialInspectorDataV1.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialInspectorDataV1.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26B28FF78()
{
  result = qword_2803F49D0[0];
  if (!qword_2803F49D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F49D0);
  }

  return result;
}

unint64_t sub_26B28FFD0()
{
  result = qword_2803F4AE0;
  if (!qword_2803F4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4AE0);
  }

  return result;
}

unint64_t sub_26B290028()
{
  result = qword_2803F4AE8[0];
  if (!qword_2803F4AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F4AE8);
  }

  return result;
}

uint64_t sub_26B29007C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000026B2C3E20 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536465646F636E65 && a2 == 0xEC000000656E6563 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026B2C3E40 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000026B2C3E60 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7A6953656E656373 && a2 == 0xE900000000000065 || (sub_26B2BC138() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6543656E656373 && a2 == 0xEB00000000726574)
  {

    return 5;
  }

  else
  {
    v5 = sub_26B2BC138();

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

uint64_t sub_26B290294(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C616E7265746E69;
  }

  else
  {
    v3 = 0x7372655661746164;
  }

  if (v2)
  {
    v4 = 0xEB000000006E6F69;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x6C616E7265746E69;
  }

  else
  {
    v5 = 0x7372655661746164;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26B2BC138();
  }

  return v8 & 1;
}

uint64_t sub_26B290348()
{
  sub_26B2BC1E8();
  sub_26B2BB9E8();

  return sub_26B2BC238();
}

uint64_t sub_26B2903D8(uint64_t a1)
{
  sub_26B2BB9E8();
}

uint64_t sub_26B290454(uint64_t a1)
{
  sub_26B2BC1E8();
  sub_26B2BB9E8();

  return sub_26B2BC238();
}

uint64_t sub_26B2904E0@<X0>(char *a2@<X8>)
{
  v3 = sub_26B2BBF18();

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

void sub_26B290540(uint64_t *a1@<X8>)
{
  v2 = 0x7372655661746164;
  if (*v1)
  {
    v2 = 0x6C616E7265746E69;
  }

  v3 = 0xEB000000006E6F69;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26B29058C()
{
  if (*v0)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0x7372655661746164;
  }
}

uint64_t sub_26B2905D4@<X0>(char *a3@<X8>)
{
  v4 = sub_26B2BBF18();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_26B290644(uint64_t a1)
{
  v2 = sub_26B291068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B290680(uint64_t a1)
{
  v2 = sub_26B291068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B2906C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  return sub_26B290718(v1 + v3, a1);
}

uint64_t sub_26B290718(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26B29077C(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_26B2907E4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_26B2907E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id SpatialSceneDebugRepresentation.__allocating_init(encodedSceneUUID:encodedScene:sceneDebugRepresentation:sceneStatisticsRepresentation:sceneConfiguration:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v10 = v9;
  v39 = a8;
  v38 = a7;
  v36 = a2;
  v42 = a1;
  v16 = sub_26B2BB768();
  v41 = v16;
  v43 = *(v16 - 8);
  v17 = v43;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = objc_allocWithZone(v10);
  (*(v17 + 16))(v20, a1, v16);
  v46 = type metadata accessor for SpatialInspectorDataV2(0);
  v47 = sub_26B2915E4(&qword_2803F3DE0, type metadata accessor for SpatialInspectorDataV2, &unk_26B2BEBE0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
  v22 = v36;
  v23 = a3;
  sub_26B28E8AC(v36, a3);
  v24 = a4;
  v25 = a4;
  v26 = a5;
  sub_26B28E8AC(v25, a5);
  v27 = a6;
  v28 = a6;
  v29 = v38;
  sub_26B28E988(v28, v38);
  v30 = v39;
  v35 = a9;
  sub_26B28E988(v39, a9);
  sub_26B2A6338(v20, v22, v23, v24, v26, v27, v29, v30, boxed_opaque_existential_1, a9);
  v31 = v37;
  sub_26B2907E4(&v45, &v37[OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals]);
  v32 = sub_26B2A6008();
  swift_beginAccess();
  *&v31[OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_dataVersion] = *v32;
  v44.receiver = v31;
  v44.super_class = v40;
  v33 = objc_msgSendSuper2(&v44, sel_init);
  sub_26B28F26C(v30, v35);
  sub_26B28F26C(v27, v29);
  sub_26B28F218(v24, v26);
  sub_26B28F218(v22, v23);
  (*(v43 + 8))(v42, v41);
  return v33;
}

id SpatialSceneDebugRepresentation.init(encodedSceneUUID:encodedScene:sceneDebugRepresentation:sceneStatisticsRepresentation:sceneConfiguration:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v33 = a7;
  v37 = a1;
  ObjectType = swift_getObjectType();
  v36 = sub_26B2BB768();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, a1);
  v41 = type metadata accessor for SpatialInspectorDataV2(0);
  v42 = sub_26B2915E4(&qword_2803F3DE0, type metadata accessor for SpatialInspectorDataV2, &unk_26B2BEBE0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
  v21 = a3;
  sub_26B28E8AC(a2, a3);
  v22 = a4;
  v23 = a4;
  v24 = a5;
  sub_26B28E8AC(v23, a5);
  v25 = a6;
  v26 = a6;
  v27 = v33;
  sub_26B28E988(v26, v33);
  sub_26B28E988(a8, a9);
  sub_26B2A6338(v18, a2, v21, v22, v24, v25, v27, a8, boxed_opaque_existential_1, a9);
  v28 = v34;
  sub_26B2907E4(&v40, &v34[OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals]);
  v29 = sub_26B2A6008();
  swift_beginAccess();
  *&v28[OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_dataVersion] = *v29;
  v39.receiver = v28;
  v39.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v39, sel_init);
  sub_26B28F26C(a8, a9);
  sub_26B28F26C(v25, v27);
  sub_26B28F218(v22, v24);
  sub_26B28F218(a2, v21);
  (*(v38 + 8))(v37, v36);
  return v30;
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

uint64_t SpatialSceneDebugRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3DF0, &qword_26B2BCAD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B291068();
  sub_26B2BC258();
  v18 = *(v3 + OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_dataVersion);
  v19 = 0;
  sub_26B2910BC();
  sub_26B2BC0B8();
  if (!v2)
  {
    v11 = (v3 + OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals);
    swift_beginAccess();
    v12 = v11[3];
    v13 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v17[1] = v17;
    v14 = *(v12 - 8);
    MEMORY[0x28223BE20](v13, v13);
    v16 = v17 - v15;
    (*(v14 + 16))(v17 - v15);
    v19 = 1;
    sub_26B2BC0B8();
    (*(v14 + 8))(v16, v12);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26B291068()
{
  result = qword_2803F4B70[0];
  if (!qword_2803F4B70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F4B70);
  }

  return result;
}

unint64_t sub_26B2910BC()
{
  result = qword_2803F3DF8;
  if (!qword_2803F3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3DF8);
  }

  return result;
}

void *SpatialSceneDebugRepresentation.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E00, &qword_26B2BCAD8);
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v22 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B291068();
  sub_26B2BC248();
  if (!v2)
  {
    v22 = a1;
    v11 = v23;
    v28 = 0;
    sub_26B2914EC();
    sub_26B2BBFC8();
    v13 = v25;
    *&v3[OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_dataVersion] = v25;
    v14 = v13;
    if (v13 == 2)
    {
      v19 = type metadata accessor for SpatialInspectorDataV2(0);
      v28 = 1;
      v26 = v19;
      v16 = type metadata accessor for SpatialInspectorDataV2;
      v27 = sub_26B2915E4(&qword_2803F3DE0, type metadata accessor for SpatialInspectorDataV2, &unk_26B2BEBE0);
      __swift_allocate_boxed_opaque_existential_1(&v25);
      v17 = &unk_2803F3E18;
      v18 = &unk_26B2BEBFC;
      goto LABEL_9;
    }

    if (v13 == 1)
    {
      v15 = type metadata accessor for SpatialInspectorDataV1(0);
      v28 = 1;
      v26 = v15;
      v16 = type metadata accessor for SpatialInspectorDataV1;
      v27 = sub_26B2915E4(&qword_2803F3E20, type metadata accessor for SpatialInspectorDataV1, &unk_26B2BC908);
      __swift_allocate_boxed_opaque_existential_1(&v25);
      v17 = &qword_2803F3DB8;
      v18 = &unk_26B2BC924;
LABEL_9:
      sub_26B2915E4(v17, v16, v18);
      sub_26B2BBFC8();
      (*(v11 + 8))(v9, v6);
      sub_26B2907E4(&v25, &v3[OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals]);
      v24.receiver = v3;
      v24.super_class = ObjectType;
      v10 = objc_msgSendSuper2(&v24, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return v10;
    }

    v20 = sub_26B2A6008();
    swift_beginAccess();
    v10 = *v20;
    sub_26B291540();
    swift_allocError();
    *v21 = v14;
    v21[1] = v10;
    swift_willThrow();
    (*(v11 + 8))(v9, v6);
    a1 = v22;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  swift_deallocPartialClassInstance();
  return v10;
}

unint64_t sub_26B2914EC()
{
  result = qword_2803F3E08;
  if (!qword_2803F3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E08);
  }

  return result;
}

unint64_t sub_26B291540()
{
  result = qword_2803F3E10;
  if (!qword_2803F3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E10);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x26D6748E0);
  }

  return result;
}

uint64_t sub_26B2915E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id SpatialSceneDebugRepresentation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpatialSceneDebugRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_26B291708@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SpatialSceneDebugRepresentation.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

__n128 sub_26B29177C@<Q0>(__n128 *a2@<X8>)
{
  v3 = sub_26B2A6008();
  swift_beginAccess();
  result = *v3;
  *a2 = *v3;
  return result;
}

uint64_t SpatialSceneDebugRepresentation.encodedSceneUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SpatialInspectorDataV2(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  sub_26B290718(v1 + v7, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E28, &qword_26B2BCAE0);
  swift_dynamicCast();
  v8 = sub_26B2BB768();
  (*(*(v8 - 8) + 16))(a1, v6, v8);
  return sub_26B2918E0(v6);
}

uint64_t sub_26B2918E0(uint64_t a1)
{
  v2 = type metadata accessor for SpatialInspectorDataV2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SpatialSceneDebugRepresentation.encodedScene.getter()
{
  v1 = type metadata accessor for SpatialInspectorDataV2(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  sub_26B290718(v0 + v5, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E28, &qword_26B2BCAE0);
  swift_dynamicCast();
  v6 = &v4[*(v1 + 20)];
  v7 = *v6;
  sub_26B28E8AC(*v6, *(v6 + 1));
  sub_26B2918E0(v4);
  return v7;
}

uint64_t SpatialSceneDebugRepresentation.sceneDebugRepresentation.getter()
{
  v1 = type metadata accessor for SpatialInspectorDataV2(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  sub_26B290718(v0 + v5, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E28, &qword_26B2BCAE0);
  swift_dynamicCast();
  v6 = &v4[*(v1 + 24)];
  v7 = *v6;
  sub_26B28E8AC(*v6, *(v6 + 1));
  sub_26B2918E0(v4);
  return v7;
}

uint64_t SpatialSceneDebugRepresentation.sceneStatisticsRepresentation.getter()
{
  v1 = type metadata accessor for SpatialInspectorDataV2(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  sub_26B290718(v0 + v5, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E28, &qword_26B2BCAE0);
  swift_dynamicCast();
  v6 = &v4[*(v1 + 28)];
  v7 = *v6;
  sub_26B28E988(*v6, *(v6 + 1));
  sub_26B2918E0(v4);
  return v7;
}

uint64_t SpatialSceneDebugRepresentation.sceneConfiguration.getter()
{
  v1 = type metadata accessor for SpatialInspectorDataV2(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  sub_26B290718(v0 + v5, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E28, &qword_26B2BCAE0);
  swift_dynamicCast();
  v6 = &v4[*(v1 + 32)];
  v7 = *v6;
  sub_26B28E988(*v6, *(v6 + 1));
  sub_26B2918E0(v4);
  return v7;
}

__n128 sub_26B291D0C(__n128 *a1)
{
  result = *a1;
  *(v1 + OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_dataVersion) = *a1;
  return result;
}

uint64_t getEnumTagSinglePayload for SpatialSceneDebugRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialSceneDebugRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B291F14()
{
  result = qword_2803F4E00[0];
  if (!qword_2803F4E00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F4E00);
  }

  return result;
}

unint64_t sub_26B291F6C()
{
  result = qword_2803F4F10;
  if (!qword_2803F4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4F10);
  }

  return result;
}

unint64_t sub_26B291FC4()
{
  result = qword_2803F4F18[0];
  if (!qword_2803F4F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F4F18);
  }

  return result;
}

uint64_t SceneConfiguration.bundleID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

__n128 SceneConfiguration.cameraTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = v3;
  result = *(v1 + 112);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 SceneConfiguration.init(sceneSize:contentOrigin:bundleID:cameraTransform:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6 & 1;
  v10 = *(a10 + 16);
  *(a9 + 80) = *a10;
  *(a9 + 96) = v10;
  result = *(a10 + 32);
  *(a9 + 112) = result;
  *(a9 + 128) = *(a10 + 48);
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  return result;
}

uint64_t sub_26B2920BC()
{
  v1 = 0x7A6953656E656373;
  v2 = 0x4449656C646E7562;
  if (*v0 != 2)
  {
    v2 = 0x72546172656D6163;
  }

  if (*v0)
  {
    v1 = 0x4F746E65746E6F63;
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

uint64_t sub_26B292154@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B292D9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B292188(uint64_t a1)
{
  v2 = sub_26B2924EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2921C4(uint64_t a1)
{
  v2 = sub_26B2924EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SceneConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E30, &unk_26B2BCD10);
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = v1[4];
  v25 = v1[5];
  v26 = v10;
  v34 = *(v1 + 48);
  v11 = v1[7];
  v23 = v1[8];
  v24 = v11;
  v12 = *(v1 + 5);
  v20 = *(v1 + 6);
  v21 = v12;
  v13 = v1[15];
  v22 = v1[14];
  v18 = v13;
  v19 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2924EC();
  sub_26B2BC258();
  *&v29 = v7;
  *(&v29 + 1) = v8;
  LOBYTE(v30) = v9;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
  sub_26B28F8D4(&qword_2803F3D90, MEMORY[0x277D84AF0]);
  v14 = v28;
  sub_26B2BC048();
  if (v14)
  {
    return (*(v27 + 8))(v6, v3);
  }

  v16 = v22;
  v17 = v27;
  *&v29 = v26;
  *(&v29 + 1) = v25;
  LOBYTE(v30) = v34;
  v35 = 1;
  sub_26B2BC048();
  LOBYTE(v29) = 2;
  sub_26B2BC038();
  v29 = v21;
  v30 = v20;
  v31 = v16;
  v32 = v18;
  v33 = v19;
  v35 = 3;
  sub_26B292540();
  sub_26B2BC048();
  return (*(v17 + 8))(v6, v3);
}

unint64_t sub_26B2924EC()
{
  result = qword_2803F4FA0[0];
  if (!qword_2803F4FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F4FA0);
  }

  return result;
}

unint64_t sub_26B292540()
{
  result = qword_2803F3E38;
  if (!qword_2803F3E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E38);
  }

  return result;
}

uint64_t SceneConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E40, &qword_26B2BCD20);
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v6);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2924EC();
  sub_26B2BC248();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = a2;
  v40 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
  LOBYTE(v42) = 0;
  sub_26B28F8D4(&qword_2803F3DB0, MEMORY[0x277D84AF8]);
  v9 = v41;
  sub_26B2BBF58();
  v10 = v52;
  v38 = v51;
  v72 = v53;
  LOBYTE(v42) = 1;
  sub_26B2BBF58();
  v37 = v10;
  v11 = v51;
  v12 = v52;
  v71 = v53;
  LOBYTE(v51) = 2;
  v13 = sub_26B2BBF48();
  v15 = v14;
  v34 = v12;
  v35 = v11;
  v36 = v13;
  v73 = 3;
  sub_26B292940();
  sub_26B2BBF58();
  (*(v40 + 8))(v8, v9);
  v40 = v66;
  v32 = v67;
  v33 = *(&v66 + 1);
  v30 = v68;
  v31 = *(&v67 + 1);
  v29 = *(&v68 + 1);
  v16 = v69;
  v70 = v69;
  *&v42 = v38;
  *(&v42 + 1) = v37;
  LODWORD(v41) = v72;
  LOBYTE(v43) = v72;
  v18 = v34;
  v17 = v35;
  *&v44 = v35;
  *(&v44 + 1) = v34;
  LOBYTE(v9) = v71;
  LOBYTE(v45) = v71;
  v19 = v36;
  *(&v45 + 1) = v36;
  *&v46 = v15;
  v47 = v66;
  v48 = v67;
  v49 = v68;
  v50 = v69;
  v20 = v67;
  v21 = v68;
  v28 = v15;
  v22 = v39;
  *(v39 + 128) = v69;
  v22[6] = v20;
  v22[7] = v21;
  v23 = v42;
  v24 = v43;
  v25 = v47;
  v22[4] = v46;
  v22[5] = v25;
  v26 = v45;
  v22[2] = v44;
  v22[3] = v26;
  *v22 = v23;
  v22[1] = v24;
  sub_26B292994(&v42, &v51);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v51 = v38;
  v52 = v37;
  v53 = v41;
  v54 = v17;
  v55 = v18;
  v56 = v9;
  v57 = v19;
  v58 = v28;
  v59 = v40;
  v60 = v33;
  v61 = v32;
  v62 = v31;
  v63 = v30;
  v64 = v29;
  v65 = v16;
  return sub_26B2929CC(&v51);
}

unint64_t sub_26B292940()
{
  result = qword_2803F3E48;
  if (!qword_2803F3E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E48);
  }

  return result;
}

__n128 __swift_memcpy129_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26B292A60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_26B292ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26B292C98()
{
  result = qword_2803F51B0[0];
  if (!qword_2803F51B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F51B0);
  }

  return result;
}

unint64_t sub_26B292CF0()
{
  result = qword_2803F52C0;
  if (!qword_2803F52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F52C0);
  }

  return result;
}

unint64_t sub_26B292D48()
{
  result = qword_2803F52C8[0];
  if (!qword_2803F52C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F52C8);
  }

  return result;
}

uint64_t sub_26B292D9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A6953656E656373 && a2 == 0xE900000000000065;
  if (v4 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4F746E65746E6F63 && a2 == 0xED00006E69676972 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72546172656D6163 && a2 == 0xEF6D726F66736E61)
  {

    return 3;
  }

  else
  {
    v6 = sub_26B2BC138();

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

uint64_t InspectorStatisticsBase.Geometry.init(meshTriangleCount:meshVertexCount:meshCount:meshMemory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 4) = BYTE4(result) & 1;
  *(a6 + 8) = a2;
  *(a6 + 12) = BYTE4(a2) & 1;
  *(a6 + 16) = a3;
  *(a6 + 20) = BYTE4(a3) & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

unint64_t sub_26B292FDC()
{
  v1 = 0x747265566873656DLL;
  v2 = 0x6E756F436873656DLL;
  if (*v0 != 2)
  {
    v2 = 0x6F6D654D6873656DLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_26B293070@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B2993C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B293098(uint64_t a1)
{
  v2 = sub_26B293340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2930D4(uint64_t a1)
{
  v2 = sub_26B293340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorStatisticsBase.Geometry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E50, &qword_26B2BCF00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v12 - v6;
  v8 = *(v1 + 4);
  v17 = *(v1 + 8);
  v16 = *(v1 + 12);
  v15 = *(v1 + 16);
  v14 = *(v1 + 20);
  v13 = *(v1 + 24);
  v12[1] = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B293340();
  sub_26B2BC258();
  v25 = 0;
  v22 = v8;
  v9 = v18;
  sub_26B2BC058();
  if (v9)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v10 = v14;
  v24 = 1;
  v20 = v16;
  sub_26B2BC058();
  v23 = 2;
  v19 = v10;
  sub_26B2BC058();
  v21 = 3;
  sub_26B2BC068();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26B293340()
{
  result = qword_2803F5350;
  if (!qword_2803F5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F5350);
  }

  return result;
}

uint64_t InspectorStatisticsBase.Geometry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E58, &qword_26B2BCF08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B293340();
  sub_26B2BC248();
  if (!v2)
  {
    v33 = 0;
    v10 = sub_26B2BBF68();
    v11 = v10;
    v30 = BYTE4(v10) & 1;
    v32 = 1;
    v12 = sub_26B2BBF68();
    v13 = v12;
    v28 = BYTE4(v12) & 1;
    v31 = 2;
    v25 = sub_26B2BBF68();
    v27 = BYTE4(v25) & 1;
    v29 = 3;
    v14 = sub_26B2BBF78();
    v17 = v16;
    v18 = *(v6 + 8);
    v24 = v14;
    v18(v9, v5);
    v26 = v17 & 1;
    v19 = v30;
    v20 = v28;
    v21 = v27;
    *a2 = v11;
    *(a2 + 4) = v19;
    *(a2 + 8) = v13;
    *(a2 + 12) = v20;
    v22 = v24;
    *(a2 + 16) = v25;
    *(a2 + 20) = v21;
    *(a2 + 24) = v22;
    *(a2 + 32) = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 InspectorStatisticsBase.geometry.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 48);
  return result;
}

uint64_t InspectorStatisticsBase.Lighting.init(ambientLightCount:directionalLightCount:pointLightCount:spotLightCount:rectangularLightCount:shadowClusterIDs:shadowCasterCount:shadowReceiverCount:castingGroundshadowCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11)
{
  *a9 = result;
  *(a9 + 4) = BYTE4(result) & 1;
  *(a9 + 8) = a2;
  *(a9 + 12) = BYTE4(a2) & 1;
  *(a9 + 16) = a3;
  *(a9 + 20) = BYTE4(a3) & 1;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 36) = BYTE4(a5) & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 52) = BYTE4(a7) & 1;
  *(a9 + 56) = a8;
  *(a9 + 60) = BYTE4(a8) & 1;
  *(a9 + 64) = a10;
  *(a9 + 68) = a11 & 1;
  return result;
}

uint64_t sub_26B293790(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x67694C746E696F70;
    if (a1 != 2)
    {
      v4 = 0x6867694C746F7073;
    }

    v5 = 0xD000000000000011;
    if (a1)
    {
      v5 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 != 7)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000010;
    if (a1 == 4)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_26B2938D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B29954C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B293908(uint64_t a1)
{
  v2 = sub_26B293D2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B293944(uint64_t a1)
{
  v2 = sub_26B293D2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorStatisticsBase.Lighting.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E60, &qword_26B2BCF10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - v6;
  v8 = *(v1 + 4);
  v28 = *(v1 + 8);
  v31 = *(v1 + 12);
  v27 = *(v1 + 16);
  v26 = *(v1 + 20);
  v25 = *(v1 + 24);
  v24 = *(v1 + 28);
  v23 = *(v1 + 32);
  v22 = *(v1 + 36);
  v9 = *(v1 + 40);
  v20 = *(v1 + 48);
  v21 = v9;
  v19 = *(v1 + 52);
  v18 = *(v1 + 56);
  v17 = *(v1 + 60);
  v16 = *(v1 + 64);
  HIDWORD(v15) = *(v1 + 68);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B293D2C();
  sub_26B2BC258();
  LOBYTE(v30) = 0;
  v32[0] = v8;
  v10 = v29;
  sub_26B2BC058();
  if (!v10)
  {
    v11 = v26;
    v12 = v24;
    v13 = v22;
    LOBYTE(v30) = 1;
    v32[0] = v31;
    sub_26B2BC058();
    LOBYTE(v30) = 2;
    v32[0] = v11;
    sub_26B2BC058();
    LOBYTE(v30) = 3;
    v32[0] = v12;
    sub_26B2BC058();
    LOBYTE(v30) = 4;
    v32[0] = v13;
    sub_26B2BC058();
    v30 = v21;
    v32[0] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E68, &qword_26B2BCF18);
    sub_26B293D80();
    sub_26B2BC048();
    LOBYTE(v30) = 6;
    v32[0] = v19;
    sub_26B2BC058();
    LOBYTE(v30) = 7;
    v32[0] = v17;
    sub_26B2BC058();
    LOBYTE(v30) = 8;
    v32[0] = BYTE4(v15);
    sub_26B2BC058();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26B293D2C()
{
  result = qword_2803F5358;
  if (!qword_2803F5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F5358);
  }

  return result;
}

unint64_t sub_26B293D80()
{
  result = qword_2803F3E70;
  if (!qword_2803F3E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3E68, &qword_26B2BCF18);
    sub_26B294430(&qword_2803F3E78, sub_26B293E3C, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E70);
  }

  return result;
}

unint64_t sub_26B293E3C()
{
  result = qword_2803F3E88;
  if (!qword_2803F3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E88);
  }

  return result;
}

uint64_t InspectorStatisticsBase.Lighting.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E90, &qword_26B2BCF28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B293D2C();
  sub_26B2BC248();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v39) = 0;
  v10 = sub_26B2BBF68();
  v62 = BYTE4(v10) & 1;
  LOBYTE(v39) = 1;
  v11 = sub_26B2BBF68();
  v61 = BYTE4(v11) & 1;
  LOBYTE(v39) = 2;
  v34 = sub_26B2BBF68();
  v60 = BYTE4(v34) & 1;
  LOBYTE(v39) = 3;
  v33 = sub_26B2BBF68();
  v59 = BYTE4(v33) & 1;
  LOBYTE(v39) = 4;
  v32 = sub_26B2BBF68();
  v58 = BYTE4(v32) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E68, &qword_26B2BCF18);
  LOBYTE(v35) = 5;
  sub_26B294374();
  sub_26B2BBF58();
  v31 = v39;
  LOBYTE(v39) = 6;
  v30 = sub_26B2BBF68();
  v57 = BYTE4(v30) & 1;
  LOBYTE(v39) = 7;
  v29 = sub_26B2BBF68();
  v56 = BYTE4(v29) & 1;
  v63 = 8;
  v12 = sub_26B2BBF68();
  (*(v6 + 8))(v9, v5);
  v55 = BYTE4(v12) & 1;
  v28 = v10;
  LODWORD(v35) = v10;
  v27 = v62;
  BYTE4(v35) = v62;
  v26 = v11;
  DWORD2(v35) = v11;
  v25 = v61;
  BYTE12(v35) = v61;
  LODWORD(v36) = v34;
  v24 = v60;
  BYTE4(v36) = v60;
  DWORD2(v36) = v33;
  v23 = v59;
  BYTE12(v36) = v59;
  LODWORD(v37) = v32;
  v22 = v58;
  BYTE4(v37) = v58;
  v13 = v31;
  *(&v37 + 1) = v31;
  v14 = v30;
  *v38 = v30;
  HIDWORD(v21) = v57;
  v38[4] = v57;
  v15 = v29;
  *&v38[8] = v29;
  LOBYTE(v11) = v56;
  v38[12] = v56;
  *&v38[16] = v12;
  v38[20] = BYTE4(v12) & 1;
  v16 = v35;
  v17 = v36;
  v18 = v37;
  v19 = *v38;
  *(a2 + 61) = *&v38[13];
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *a2 = v16;
  *(a2 + 16) = v17;
  sub_26B2944FC(&v35, &v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LODWORD(v39) = v28;
  BYTE4(v39) = v27;
  v40 = v26;
  v41 = v25;
  v42 = v34;
  v43 = v24;
  v44 = v33;
  v45 = v23;
  v46 = v32;
  v47 = v22;
  v48 = v13;
  v49 = v14;
  v50 = BYTE4(v21);
  v51 = v15;
  v52 = v11;
  v53 = v12;
  v54 = BYTE4(v12) & 1;
  return sub_26B294534(&v39);
}

unint64_t sub_26B294374()
{
  result = qword_2803F3E98;
  if (!qword_2803F3E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3E68, &qword_26B2BCF18);
    sub_26B294430(&qword_2803F3EA0, sub_26B2944A8, MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E98);
  }

  return result;
}

uint64_t sub_26B294430(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3E80, &qword_26B2BCF20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B2944A8()
{
  result = qword_2803F3EA8;
  if (!qword_2803F3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3EA8);
  }

  return result;
}

uint64_t InspectorStatisticsBase.lighting.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 104);
  v9 = *(v1 + 88);
  v10[0] = v3;
  *(v10 + 13) = *(v1 + 117);
  v4 = *(v10 + 13);
  v8[0] = *(v1 + 56);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 61) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_26B2944FC(v8, v7);
}

unint64_t sub_26B294610()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v1 + 16);
  if (v2 >> 31)
  {
    __break(1u);
LABEL_4:
    v2 = 0;
  }

  return v2 | ((v1 == 0) << 32);
}

uint64_t InspectorStatisticsBase.Material.init(materialAssignmentCount:materialUseCounts:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  *(a3 + 8) = a2;
  return result;
}

unint64_t sub_26B294680()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_26B2946BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000017 && 0x800000026B2C41F0 == a2;
  if (v5 || (sub_26B2BC138() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026B2C4210 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26B2BC138();

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

uint64_t sub_26B2947A0(uint64_t a1)
{
  v2 = sub_26B2949F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2947DC(uint64_t a1)
{
  v2 = sub_26B2949F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorStatisticsBase.Material.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EB0, &qword_26B2BCF30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v8 = *(v1 + 4);
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2949F0();
  sub_26B2BC258();
  v17 = 0;
  v15 = v8;
  v9 = v13;
  sub_26B2BC058();
  if (!v9)
  {
    v14 = v12;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EB8, &qword_26B2BCF38);
    sub_26B294C4C(&qword_2803F3EC0, MEMORY[0x277D84D40], MEMORY[0x277D849B0], MEMORY[0x277D83508]);
    sub_26B2BC048();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26B2949F0()
{
  result = qword_2803F5360;
  if (!qword_2803F5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F5360);
  }

  return result;
}

uint64_t InspectorStatisticsBase.Material.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EC8, &qword_26B2BCF40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2949F0();
  sub_26B2BC248();
  if (!v2)
  {
    v15 = 0;
    v10 = sub_26B2BBF68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EB8, &qword_26B2BCF38);
    v14 = 1;
    sub_26B294C4C(&qword_2803F3ED0, MEMORY[0x277D84D68], MEMORY[0x277D849D8], MEMORY[0x277D83528]);
    sub_26B2BBF58();
    (*(v6 + 8))(v9, v5);
    v11 = v13[1];
    *a2 = v10;
    *(a2 + 4) = BYTE4(v10) & 1;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B294C4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3EB8, &qword_26B2BCF38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t InspectorStatisticsBase.material.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 132);
  v3 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
}

uint64_t InspectorStatisticsBase.Texture.TextureData.assetID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InspectorStatisticsBase.Texture.TextureData.init(assetID:memorySize:width:height:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 28) = a5;
  return result;
}

uint64_t sub_26B294D60()
{
  v1 = 0x44497465737361;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 0x746867696568;
  }

  if (*v0)
  {
    v1 = 0x695379726F6D656DLL;
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

uint64_t sub_26B294DD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B299840(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B294E00(uint64_t a1)
{
  v2 = sub_26B295060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B294E3C(uint64_t a1)
{
  v2 = sub_26B295060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorStatisticsBase.Texture.TextureData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3ED8, &qword_26B2BCF48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v11 = *(v1 + 16);
  LODWORD(v6) = *(v1 + 28);
  v13 = *(v1 + 24);
  v10[3] = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B295060();
  sub_26B2BC258();
  v17 = 0;
  v8 = v12;
  sub_26B2BC078();
  if (v8)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = 1;
  sub_26B2BC0E8();
  v15 = 2;
  sub_26B2BC0C8();
  v14 = 3;
  sub_26B2BC0C8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26B295060()
{
  result = qword_2803F5368;
  if (!qword_2803F5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F5368);
  }

  return result;
}

uint64_t InspectorStatisticsBase.Texture.TextureData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EE0, &qword_26B2BCF50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B295060();
  sub_26B2BC248();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v10 = sub_26B2BBF88();
  v12 = v11;
  v13 = v10;
  v21 = 1;
  v17 = sub_26B2BBFF8();
  v20 = 2;
  v18 = sub_26B2BBFD8();
  v19 = 3;
  v15 = sub_26B2BBFD8();
  (*(v6 + 8))(v9, v5);
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 28) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t InspectorStatisticsBase.Texture.init(count:memory:textures:entityTextures:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 4) = BYTE4(result) & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_26B29537C()
{
  v1 = 0x746E756F63;
  v2 = 0x7365727574786574;
  if (*v0 != 2)
  {
    v2 = 0x6554797469746E65;
  }

  if (*v0)
  {
    v1 = 0x79726F6D656DLL;
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

uint64_t sub_26B2953FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B2999A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B295424(uint64_t a1)
{
  v2 = sub_26B29574C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B295460(uint64_t a1)
{
  v2 = sub_26B29574C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorStatisticsBase.Texture.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EE8, &qword_26B2BCF58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - v6;
  v8 = *(v1 + 4);
  v9 = *(v1 + 8);
  v21 = *(v1 + 16);
  v10 = *(v1 + 32);
  v17 = *(v1 + 24);
  v18 = v9;
  v16 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B29574C();
  sub_26B2BC258();
  LOBYTE(v20) = 0;
  v22 = v8;
  v11 = v19;
  sub_26B2BC058();
  if (!v11)
  {
    v13 = v16;
    v14 = v17;
    LOBYTE(v20) = 1;
    sub_26B2BC068();
    v20 = v14;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EF0, &qword_26B2BCF60);
    sub_26B2957A0(&qword_2803F3EF8, sub_26B295824, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_26B2BC048();
    v20 = v13;
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3F08, &qword_26B2BCF68);
    sub_26B295878();
    sub_26B2BC048();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26B29574C()
{
  result = qword_2803F5370;
  if (!qword_2803F5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F5370);
  }

  return result;
}

uint64_t sub_26B2957A0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3EF0, &qword_26B2BCF60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B295824()
{
  result = qword_2803F3F00;
  if (!qword_2803F3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F00);
  }

  return result;
}

unint64_t sub_26B295878()
{
  result = qword_2803F3F10;
  if (!qword_2803F3F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3F08, &qword_26B2BCF68);
    sub_26B293E3C();
    sub_26B295D0C(&qword_2803F3F18, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F10);
  }

  return result;
}

uint64_t InspectorStatisticsBase.Texture.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3F28, &qword_26B2BCF78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B29574C();
  sub_26B2BC248();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19) = 0;
  v10 = sub_26B2BBF68();
  LOBYTE(v19) = 1;
  v11 = sub_26B2BBF78();
  v17 = v12;
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EF0, &qword_26B2BCF60);
  v18 = 2;
  sub_26B2957A0(&qword_2803F3F30, sub_26B295C08, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_26B2BBF58();
  v13 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3F08, &qword_26B2BCF68);
  v18 = 3;
  sub_26B295C5C();
  sub_26B2BBF58();
  (*(v6 + 8))(v9, v5);
  v14 = v19;
  *a2 = v10;
  *(a2 + 4) = BYTE4(v10) & 1;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26B295C08()
{
  result = qword_2803F3F38;
  if (!qword_2803F3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F38);
  }

  return result;
}

unint64_t sub_26B295C5C()
{
  result = qword_2803F3F40;
  if (!qword_2803F3F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3F08, &qword_26B2BCF68);
    sub_26B2944A8();
    sub_26B295D0C(&qword_2803F3F48, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F40);
  }

  return result;
}

uint64_t sub_26B295D0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3F20, &qword_26B2BCF70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t InspectorStatisticsBase.texture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 148);
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  v6 = *(v1 + 168);
  v5 = *(v1 + 176);
  *a1 = *(v1 + 144);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
}

__n128 InspectorStatisticsBase.__allocating_init(geometry:lighting:material:texture:)(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v8 = swift_allocObject();
  v9 = *a3;
  v10 = *(a3 + 4);
  v11 = *(a3 + 1);
  v12 = *a4;
  v13 = *(a4 + 4);
  v14 = *(a4 + 1);
  v15 = *(a4 + 16);
  v16 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v16;
  *(v8 + 48) = *(a1 + 32);
  v17 = *(a2 + 16);
  *(v8 + 56) = *a2;
  v18 = *(a2 + 32);
  v19 = *(a2 + 48);
  *(v8 + 117) = *(a2 + 61);
  *(v8 + 104) = v19;
  *(v8 + 88) = v18;
  *(v8 + 72) = v17;
  *(v8 + 128) = v9;
  *(v8 + 132) = v10;
  *(v8 + 136) = v11;
  *(v8 + 144) = v12;
  *(v8 + 148) = v13;
  *(v8 + 152) = v14;
  *(v8 + 160) = v15;
  result = *(a4 + 6);
  *(v8 + 168) = result;
  return result;
}

uint64_t InspectorStatisticsBase.init(geometry:lighting:material:texture:)(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *(a3 + 1);
  v8 = *a4;
  v9 = *(a4 + 4);
  v10 = *(a4 + 1);
  v11 = *(a4 + 16);
  v12 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v12;
  *(v4 + 48) = *(a1 + 32);
  v13 = *(a2 + 16);
  *(v4 + 56) = *a2;
  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  *(v4 + 117) = *(a2 + 61);
  *(v4 + 104) = v15;
  *(v4 + 88) = v14;
  *(v4 + 72) = v13;
  *(v4 + 128) = v5;
  *(v4 + 132) = v6;
  *(v4 + 136) = v7;
  *(v4 + 144) = v8;
  *(v4 + 148) = v9;
  *(v4 + 152) = v10;
  *(v4 + 160) = v11;
  *(v4 + 168) = *(a4 + 6);
  return v4;
}

uint64_t sub_26B295F38()
{
  v1 = 0x797274656D6F6567;
  v2 = 0x6C6169726574616DLL;
  if (*v0 != 2)
  {
    v2 = 0x65727574786574;
  }

  if (*v0)
  {
    v1 = 0x676E69746867696CLL;
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

uint64_t sub_26B295FB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B299B08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B295FDC(uint64_t a1)
{
  v2 = sub_26B296384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B296018(uint64_t a1)
{
  v2 = sub_26B296384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B296060(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3F50, &qword_26B2BCF80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B296384();
  sub_26B2BC258();
  v10 = *(v3 + 32);
  v41 = *(v3 + 16);
  v42 = v10;
  v43 = *(v3 + 48);
  v40 = 0;
  sub_26B2963D8();
  sub_26B2BC0B8();
  if (!v2)
  {
    v11 = *(v3 + 72);
    v12 = *(v3 + 104);
    v38[2] = *(v3 + 88);
    *v39 = v12;
    *&v39[13] = *(v3 + 117);
    v38[0] = *(v3 + 56);
    v38[1] = v11;
    v13 = *(v3 + 72);
    v14 = *(v3 + 104);
    v36 = *(v3 + 88);
    v37[0] = v14;
    *(v37 + 13) = *(v3 + 117);
    v34 = *(v3 + 56);
    v35 = v13;
    v33 = 1;
    sub_26B2944FC(v38, v31);
    sub_26B29642C();
    sub_26B2BC0B8();
    v31[2] = v36;
    *v32 = v37[0];
    *&v32[13] = *(v37 + 13);
    v31[0] = v34;
    v31[1] = v35;
    sub_26B294534(v31);
    v15 = *(v3 + 132);
    v16 = *(v3 + 136);
    v24 = *(v3 + 128);
    v25 = v15;
    v26 = v16;
    v30 = 2;
    sub_26B296480();

    sub_26B2BC0B8();

    v17 = *(v3 + 144);
    v18 = *(v3 + 148);
    v19 = *(v3 + 152);
    v20 = *(v3 + 160);
    v21 = *(v3 + 168);
    v22 = *(v3 + 176);
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = v22;
    v30 = 3;
    sub_26B2964D4();

    sub_26B2BC0B8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26B296384()
{
  result = qword_2803F5378[0];
  if (!qword_2803F5378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F5378);
  }

  return result;
}

unint64_t sub_26B2963D8()
{
  result = qword_2803F3F58;
  if (!qword_2803F3F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F58);
  }

  return result;
}

unint64_t sub_26B29642C()
{
  result = qword_2803F3F60;
  if (!qword_2803F3F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F60);
  }

  return result;
}

unint64_t sub_26B296480()
{
  result = qword_2803F3F68;
  if (!qword_2803F3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F68);
  }

  return result;
}

unint64_t sub_26B2964D4()
{
  result = qword_2803F3F70;
  if (!qword_2803F3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F70);
  }

  return result;
}

uint64_t InspectorStatisticsBase.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  InspectorStatisticsBase.init(from:)(a1);
  return v2;
}

uint64_t InspectorStatisticsBase.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3F78, &qword_26B2BCF88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B296384();
  sub_26B2BC248();
  if (v2)
  {
    type metadata accessor for InspectorStatisticsBase();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = 0;
    sub_26B2968FC();
    sub_26B2BBFC8();
    v9 = *&v27[5];
    *(v1 + 16) = *&v27[3];
    *(v1 + 32) = v9;
    *(v1 + 48) = v28;
    v30 = 1;
    sub_26B296950();
    sub_26B2BBFC8();
    v11 = v24;
    *(v1 + 72) = v25;
    v12 = *v27;
    *(v1 + 88) = v26;
    *(v1 + 104) = v12;
    *(v1 + 117) = *(&v27[1] + 5);
    *(v1 + 56) = v11;
    v29 = 2;
    sub_26B2969A4();
    sub_26B2BBFC8();
    v13 = v20;
    v14 = v21;
    *(v1 + 128) = v19;
    *(v1 + 132) = v13;
    *(v1 + 136) = v14;
    v29 = 3;
    sub_26B2969F8();
    sub_26B2BBFC8();
    (*(v5 + 8))(v8, v4);
    v15 = v20;
    v16 = v21;
    v17 = v22;
    *(v1 + 144) = v19;
    *(v1 + 148) = v15;
    *(v1 + 152) = v16;
    *(v1 + 160) = v17;
    *(v1 + 168) = v23;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t sub_26B2968FC()
{
  result = qword_2803F3F80;
  if (!qword_2803F3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F80);
  }

  return result;
}

unint64_t sub_26B296950()
{
  result = qword_2803F3F88;
  if (!qword_2803F3F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F88);
  }

  return result;
}

unint64_t sub_26B2969A4()
{
  result = qword_2803F3F90;
  if (!qword_2803F3F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F90);
  }

  return result;
}

unint64_t sub_26B2969F8()
{
  result = qword_2803F3F98;
  if (!qword_2803F3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F98);
  }

  return result;
}

uint64_t sub_26B296A4C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26B296AE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449797469746E65 && a2 == 0xE800000000000000;
  if (v4 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61646E6563736564 && a2 == 0xEF746E756F43746ELL)
  {

    return 1;
  }

  else
  {
    v6 = sub_26B2BC138();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B296BBC(char a1)
{
  if (a1)
  {
    return 0x61646E6563736564;
  }

  else
  {
    return 0x4449797469746E65;
  }
}

uint64_t sub_26B296C00()
{
  if (*v0)
  {
    return 0x61646E6563736564;
  }

  else
  {
    return 0x4449797469746E65;
  }
}

uint64_t sub_26B296C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449797469746E65 && a2 == 0xE800000000000000;
  if (v6 || (sub_26B2BC138() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61646E6563736564 && a2 == 0xEF746E756F43746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26B2BC138();

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

uint64_t sub_26B296D2C(uint64_t a1)
{
  v2 = sub_26B298180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B296D68(uint64_t a1)
{
  v2 = sub_26B298180();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 InspectorEntityStatistics.__allocating_init(entityID:descendantCount:geometry:lighting:material:texture:)(void *a1, int a2, uint64_t a3, __int128 *a4, int *a5, int *a6)
{
  v12 = swift_allocObject();
  v13 = *(a3 + 16);
  *(v12 + 16) = *a3;
  *(v12 + 32) = v13;
  v14 = *a4;
  *(v12 + 72) = a4[1];
  v15 = a4[3];
  *(v12 + 88) = a4[2];
  *(v12 + 104) = v15;
  v16 = *a5;
  v17 = *(a5 + 4);
  v18 = *(a5 + 1);
  v19 = *a6;
  v20 = *(a6 + 4);
  v21 = *(a6 + 1);
  v22 = *(a6 + 16);
  *(v12 + 184) = *a1;
  *(v12 + 192) = a2;
  *(v12 + 48) = *(a3 + 32);
  *(v12 + 117) = *(a4 + 61);
  *(v12 + 56) = v14;
  *(v12 + 128) = v16;
  *(v12 + 132) = v17;
  *(v12 + 136) = v18;
  *(v12 + 144) = v19;
  *(v12 + 148) = v20;
  *(v12 + 152) = v21;
  *(v12 + 160) = v22;
  result = *(a6 + 6);
  *(v12 + 168) = result;
  return result;
}

uint64_t InspectorEntityStatistics.init(entityID:descendantCount:geometry:lighting:material:texture:)(void *a1, int a2, uint64_t a3, uint64_t a4, int *a5, int *a6)
{
  v7 = *a5;
  v8 = *(a5 + 4);
  v9 = *(a5 + 1);
  v10 = *a6;
  v11 = *(a6 + 4);
  v12 = *(a6 + 1);
  v13 = *(a6 + 16);
  *(v6 + 184) = *a1;
  *(v6 + 192) = a2;
  v14 = *(a3 + 16);
  *(v6 + 16) = *a3;
  *(v6 + 32) = v14;
  *(v6 + 48) = *(a3 + 32);
  v15 = *(a4 + 16);
  *(v6 + 56) = *a4;
  v16 = *(a4 + 32);
  v17 = *(a4 + 48);
  *(v6 + 117) = *(a4 + 61);
  *(v6 + 104) = v17;
  *(v6 + 88) = v16;
  *(v6 + 72) = v15;
  *(v6 + 128) = v7;
  *(v6 + 132) = v8;
  *(v6 + 136) = v9;
  *(v6 + 144) = v10;
  *(v6 + 148) = v11;
  *(v6 + 152) = v12;
  *(v6 + 160) = v13;
  *(v6 + 168) = *(a6 + 6);
  return v6;
}

uint64_t InspectorEntityStatistics.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  InspectorEntityStatistics.init(from:)(a1);
  return v2;
}

uint64_t InspectorEntityStatistics.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FA0, &qword_26B2BCF90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B298180();
  sub_26B2BC248();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for InspectorEntityStatistics();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = 0;
    sub_26B2944A8();
    sub_26B2BBFC8();
    *(v1 + 184) = v11[0];
    LOBYTE(v11[0]) = 1;
    *(v1 + 192) = sub_26B2BBFD8();
    sub_26B290718(a1, v11);
    InspectorStatisticsBase.init(from:)(v11);
    (*(v5 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_26B297150(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FB0, &qword_26B2BCF98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B298180();
  sub_26B2BC258();
  v11 = *(v1 + 184);
  v10[15] = 0;
  sub_26B293E3C();
  sub_26B2BC0B8();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v10[14] = 1;
  sub_26B2BC0C8();
  sub_26B296060(a1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t _s26SpatialInspectorFoundation0B14StatisticsBaseCfd_0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 104);
  v4[2] = *(v0 + 88);
  v5[0] = v2;
  *(v5 + 13) = *(v0 + 117);
  v4[0] = *(v0 + 56);
  v4[1] = v1;
  sub_26B294534(v4);

  return v0;
}

uint64_t sub_26B2973A0(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 104);
  v5[2] = *(v1 + 88);
  v6[0] = v3;
  *(v6 + 13) = *(v1 + 117);
  v5[0] = *(v1 + 56);
  v5[1] = v2;
  sub_26B294534(v5);

  return swift_deallocClassInstance();
}

uint64_t sub_26B297430(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43797469746E65 && a2 == 0xEB00000000746E75;
  if (v4 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026B2C3FC0 == a2)
  {

    return 1;
  }

  else
  {
    v6 = sub_26B2BC138();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B297544(char a1)
{
  sub_26B2BC1E8();
  MEMORY[0x26D6742C0](a1 & 1);
  return sub_26B2BC238();
}

uint64_t sub_26B29758C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6F43797469746E65;
  }
}

uint64_t sub_26B2975D0()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6F43797469746E65;
  }
}

uint64_t sub_26B297618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43797469746E65 && a2 == 0xEB00000000746E75;
  if (v6 || (sub_26B2BC138() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026B2C3FC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26B2BC138();

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

uint64_t sub_26B297700(uint64_t a1)
{
  v2 = sub_26B298284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B29773C(uint64_t a1)
{
  v2 = sub_26B298284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorSceneStatistics.__allocating_init(entityCount:entityStatistics:)(int a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t InspectorSceneStatistics.init(entityCount:entityStatistics:)(int a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t static InspectorSceneStatistics.from(json:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26B2BB7C8();
  MEMORY[0x28223BE20](v2, v3);
  sub_26B2BB6C8();
  swift_allocObject();
  sub_26B2BB6B8();
  sub_26B298450(&qword_2803F3FB8, type metadata accessor for InspectorSceneStatistics, &protocol conformance descriptor for InspectorSceneStatistics);
  sub_26B2BB6A8();

  return v5;
}

uint64_t sub_26B297A50()
{
  v0 = sub_26B2BB7C8();
  MEMORY[0x28223BE20](v0, v1);
  sub_26B2BB6F8();
  swift_allocObject();
  sub_26B2BB6E8();
  type metadata accessor for InspectorSceneStatistics();
  sub_26B298450(&qword_2803F3FC8, type metadata accessor for InspectorSceneStatistics, &protocol conformance descriptor for InspectorSceneStatistics);
  v2 = sub_26B2BB6D8();

  return v2;
}

uint64_t InspectorSceneStatistics.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  InspectorSceneStatistics.init(from:)(a1);
  return v2;
}

uint64_t InspectorSceneStatistics.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FD0, &qword_26B2BCFA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B298284();
  sub_26B2BC248();
  if (v2)
  {
    type metadata accessor for InspectorSceneStatistics();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = 0;
    *(v1 + 16) = sub_26B2BBFD8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FE0, &qword_26B2BCFB0);
    v11 = 1;
    sub_26B2982D8();
    sub_26B2BBFC8();
    (*(v5 + 8))(v8, v4);
    *(v1 + 24) = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_26B297F18(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FF8, &qword_26B2BCFB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B298284();
  sub_26B2BC258();
  v13 = 0;
  sub_26B2BC0C8();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FE0, &qword_26B2BCFB0);
    sub_26B298394();
    sub_26B2BC0B8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t InspectorSceneStatistics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26B298100@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_26B298180()
{
  result = qword_2803F3FA8;
  if (!qword_2803F3FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3FA8);
  }

  return result;
}

uint64_t sub_26B29821C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FC0, &qword_26B2BCFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B298284()
{
  result = qword_2803F3FD8;
  if (!qword_2803F3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3FD8);
  }

  return result;
}

unint64_t sub_26B2982D8()
{
  result = qword_2803F3FE8;
  if (!qword_2803F3FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3FE0, &qword_26B2BCFB0);
    sub_26B2944A8();
    sub_26B298450(&qword_2803F3FF0, type metadata accessor for InspectorEntityStatistics, &protocol conformance descriptor for InspectorStatisticsBase);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3FE8);
  }

  return result;
}

unint64_t sub_26B298394()
{
  result = qword_2803F4000;
  if (!qword_2803F4000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3FE0, &qword_26B2BCFB0);
    sub_26B293E3C();
    sub_26B298450(&qword_2803F4008, type metadata accessor for InspectorEntityStatistics, &protocol conformance descriptor for InspectorStatisticsBase);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4000);
  }

  return result;
}

uint64_t sub_26B298450(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B298498()
{
  result = qword_2803F4010;
  if (!qword_2803F4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4010);
  }

  return result;
}

unint64_t sub_26B2984F0()
{
  result = qword_2803F4018;
  if (!qword_2803F4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4018);
  }

  return result;
}

unint64_t sub_26B298548()
{
  result = qword_2803F4020;
  if (!qword_2803F4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4020);
  }

  return result;
}

unint64_t sub_26B2985A0()
{
  result = qword_2803F4028;
  if (!qword_2803F4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4028);
  }

  return result;
}

unint64_t sub_26B2985F8()
{
  result = qword_2803F4030;
  if (!qword_2803F4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4030);
  }

  return result;
}

unint64_t sub_26B298650()
{
  result = qword_2803F4038;
  if (!qword_2803F4038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4038);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B298744(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B298764(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

__n128 __swift_memcpy69_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26B2987C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 69))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_26B298824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26B2988AC(uint64_t a1, unsigned int a2)
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

uint64_t sub_26B298908(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B29897C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_26B2989D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B298A50(uint64_t a1, int a2)
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

uint64_t sub_26B298A98(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for InspectorStatisticsBase.Lighting.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InspectorStatisticsBase.Lighting.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B298D98()
{
  result = qword_2803F6080[0];
  if (!qword_2803F6080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6080);
  }

  return result;
}

unint64_t sub_26B298DF0()
{
  result = qword_2803F6290[0];
  if (!qword_2803F6290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6290);
  }

  return result;
}

unint64_t sub_26B298E48()
{
  result = qword_2803F64A0[0];
  if (!qword_2803F64A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F64A0);
  }

  return result;
}

unint64_t sub_26B298EA0()
{
  result = qword_2803F66B0[0];
  if (!qword_2803F66B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F66B0);
  }

  return result;
}

unint64_t sub_26B298EF8()
{
  result = qword_2803F68C0[0];
  if (!qword_2803F68C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F68C0);
  }

  return result;
}

unint64_t sub_26B298F50()
{
  result = qword_2803F6AD0[0];
  if (!qword_2803F6AD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6AD0);
  }

  return result;
}

unint64_t sub_26B298FA8()
{
  result = qword_2803F6BE0;
  if (!qword_2803F6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6BE0);
  }

  return result;
}

unint64_t sub_26B299000()
{
  result = qword_2803F6BE8[0];
  if (!qword_2803F6BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6BE8);
  }

  return result;
}

unint64_t sub_26B299058()
{
  result = qword_2803F6C70;
  if (!qword_2803F6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6C70);
  }

  return result;
}

unint64_t sub_26B2990B0()
{
  result = qword_2803F6C78;
  if (!qword_2803F6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6C78);
  }

  return result;
}

unint64_t sub_26B299108()
{
  result = qword_2803F6D00;
  if (!qword_2803F6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6D00);
  }

  return result;
}

unint64_t sub_26B299160()
{
  result = qword_2803F6D08[0];
  if (!qword_2803F6D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6D08);
  }

  return result;
}

unint64_t sub_26B2991B8()
{
  result = qword_2803F6D90;
  if (!qword_2803F6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6D90);
  }

  return result;
}

unint64_t sub_26B299210()
{
  result = qword_2803F6D98[0];
  if (!qword_2803F6D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6D98);
  }

  return result;
}

unint64_t sub_26B299268()
{
  result = qword_2803F6E20;
  if (!qword_2803F6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6E20);
  }

  return result;
}

unint64_t sub_26B2992C0()
{
  result = qword_2803F6E28[0];
  if (!qword_2803F6E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6E28);
  }

  return result;
}

unint64_t sub_26B299318()
{
  result = qword_2803F6EB0;
  if (!qword_2803F6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6EB0);
  }

  return result;
}

unint64_t sub_26B299370()
{
  result = qword_2803F6EB8[0];
  if (!qword_2803F6EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6EB8);
  }

  return result;
}

uint64_t sub_26B2993C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000026B2C40F0 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747265566873656DLL && a2 == 0xEF746E756F437865 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E756F436873656DLL && a2 == 0xE900000000000074 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6D654D6873656DLL && a2 == 0xEA00000000007972)
  {

    return 3;
  }

  else
  {
    v5 = sub_26B2BC138();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_26B29954C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000026B2C4110 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026B2C4130 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67694C746E696F70 && a2 == 0xEF746E756F437468 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6867694C746F7073 && a2 == 0xEE00746E756F4374 || (sub_26B2BC138() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026B2C4150 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026B2C4170 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026B2C4190 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026B2C41B0 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026B2C41D0 == a2)
  {

    return 8;
  }

  else
  {
    v5 = sub_26B2BC138();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_26B299840(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497465737361 && a2 == 0xE700000000000000;
  if (v4 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x695379726F6D656DLL && a2 == 0xEA0000000000657ALL || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_26B2BC138();

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

uint64_t sub_26B2999A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6D656DLL && a2 == 0xE600000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365727574786574 && a2 == 0xE800000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6554797469746E65 && a2 == 0xEE00736572757478)
  {

    return 3;
  }

  else
  {
    v6 = sub_26B2BC138();

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

uint64_t sub_26B299B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797274656D6F6567 && a2 == 0xE800000000000000;
  if (v4 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69746867696CLL && a2 == 0xE800000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6169726574616DLL && a2 == 0xE800000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65727574786574 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_26B2BC138();

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

uint64_t static OS_os_log.spatialInspectorSubsystem.getter()
{
  swift_beginAccess();
  v0 = qword_2803F4040;

  return v0;
}

uint64_t static OS_os_log.spatialInspectorSubsystem.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_2803F4040 = a1;
  off_2803F4048 = a2;
}

uint64_t *sub_26B299DF8()
{
  if (qword_2803F6F40 != -1)
  {
    swift_once();
  }

  return &qword_2803FC270;
}

uint64_t *sub_26B299E88()
{
  if (qword_2803F6F48 != -1)
  {
    swift_once();
  }

  return &qword_2803FC278;
}

uint64_t *sub_26B299F24()
{
  if (qword_2803F6F50 != -1)
  {
    swift_once();
  }

  return &qword_2803FC280;
}

uint64_t *sub_26B299FB4()
{
  if (qword_2803F6F58 != -1)
  {
    swift_once();
  }

  return &qword_2803FC288;
}

uint64_t *sub_26B29A04C()
{
  if (qword_2803F6F60 != -1)
  {
    swift_once();
  }

  return &qword_2803FC290;
}

uint64_t *sub_26B29A0E0()
{
  if (qword_2803F6F68 != -1)
  {
    swift_once();
  }

  return &qword_2803FC298;
}

uint64_t *sub_26B29A17C()
{
  if (qword_2803F6F70 != -1)
  {
    swift_once();
  }

  return &qword_2803FC2A0;
}

uint64_t sub_26B29A208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_26B29AA08();
  swift_beginAccess();

  result = sub_26B2BBD18();
  *a4 = result;
  return result;
}

uint64_t *sub_26B29A298()
{
  if (qword_2803F6F78 != -1)
  {
    swift_once();
  }

  return &qword_2803FC2A8;
}

id sub_26B29A30C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26B29A6FC(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_26B2BB7C8();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_26B2BB7D8();
}

uint64_t sub_26B29A7AC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_26B2BB7C8();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_26B29A824@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_26B2BB7C8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t getEnumTagSinglePayload for Log(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Log(_WORD *result, int a2, int a3)
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

unint64_t sub_26B29AA08()
{
  result = qword_2803F4050;
  if (!qword_2803F4050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803F4050);
  }

  return result;
}

float sub_26B29AA54(double a1)
{
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F42D0, &qword_26B2BE900);
  v1 = MEMORY[0x277D839F8];
  if (swift_dynamicCast())
  {
    sub_26B2907E4(&v14, v12);
    v2 = v13;
    v3 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v4 = *(v2 - 8);
    MEMORY[0x28223BE20](v3, v3);
    v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    if (sub_26B2BBD98() < 65)
    {
      v8 = sub_26B2BBDA8();
      v9 = sub_26B2BBD88();
      (*(v4 + 8))(v6, v2);
      if (v8)
      {
        v7 = v9;
      }

      else
      {
        v7 = v9;
      }
    }

    else
    {
      sub_26B2A3B44();
      sub_26B2A3B98();
      sub_26B2BB818();
      (*(v4 + 8))(v6, v2);
      v7 = *&v11[1];
    }
  }

  else
  {
    v15 = v1;
    v16 = sub_26B2A1E74();
    *&v14 = v17;
    sub_26B2907E4(&v14, v12);
    v7 = *__swift_project_boxed_opaque_existential_1(v12, v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

float sub_26B29AC84(int a1)
{
  v12 = MEMORY[0x277D84CC0];
  v13 = sub_26B2A3E38();
  LODWORD(v11) = a1;
  sub_26B2907E4(&v11, v9);
  v2 = v10;
  v3 = __swift_project_boxed_opaque_existential_1(v9, v10);
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v3, v3);
  v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v6);
  if (sub_26B2BBDA8())
  {
    v7 = sub_26B2BBD88();
  }

  else
  {
    v7 = *v6;
  }

  (*(v4 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

float sub_26B29ADDC(__int16 a1)
{
  v13 = MEMORY[0x277D84C58];
  v14 = sub_26B2A3DE4();
  LOWORD(v12) = a1;
  sub_26B2907E4(&v12, v10);
  v2 = v11;
  v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v3, v3);
  v6 = (v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v6);
  if (sub_26B2BBDA8())
  {
    v8 = sub_26B2BBD88();
  }

  else
  {
    LOWORD(v7) = *v6;
    v8 = v7;
  }

  (*(v4 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

float sub_26B29AF34(char a1)
{
  v13 = MEMORY[0x277D84B78];
  v14 = sub_26B2A3D90();
  LOBYTE(v12) = a1;
  sub_26B2907E4(&v12, v10);
  v2 = v11;
  v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v3, v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  if (sub_26B2BBDA8())
  {
    v8 = sub_26B2BBD88();
  }

  else
  {
    LOBYTE(v7) = *v6;
    v8 = v7;
  }

  (*(v4 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

float sub_26B29B08C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v14 = a2;
  v15 = a3();
  *&v13 = a1;
  sub_26B2907E4(&v13, v11);
  v4 = v12;
  v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v5, v5);
  v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8);
  if (sub_26B2BBDA8())
  {
    v9 = sub_26B2BBD88();
  }

  else
  {
    v9 = *v8;
  }

  (*(v6 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

float sub_26B29B1E0(int a1)
{
  v12 = MEMORY[0x277D849A8];
  v13 = sub_26B2A3CE8();
  LODWORD(v11) = a1;
  sub_26B2907E4(&v11, v9);
  v2 = v10;
  v3 = __swift_project_boxed_opaque_existential_1(v9, v10);
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v3, v3);
  v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v6);
  if (sub_26B2BBDA8())
  {
    v7 = sub_26B2BBD88();
  }

  else
  {
    v7 = *v6;
  }

  (*(v4 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

float sub_26B29B338(__int16 a1)
{
  v12 = MEMORY[0x277D84958];
  v13 = sub_26B2A3C94();
  LOWORD(v11) = a1;
  sub_26B2907E4(&v11, v9);
  v2 = v10;
  v3 = __swift_project_boxed_opaque_existential_1(v9, v10);
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v3, v3);
  v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v6);
  if (sub_26B2BBDA8())
  {
    v7 = sub_26B2BBD88();
  }

  else
  {
    v7 = *v6;
  }

  (*(v4 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

float sub_26B29B490(char a1)
{
  v12 = MEMORY[0x277D84900];
  v13 = sub_26B2A3C40();
  LOBYTE(v11) = a1;
  sub_26B2907E4(&v11, v9);
  v2 = v10;
  v3 = __swift_project_boxed_opaque_existential_1(v9, v10);
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v3, v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  if (sub_26B2BBDA8())
  {
    v7 = sub_26B2BBD88();
  }

  else
  {
    v7 = *v6;
  }

  (*(v4 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

float sub_26B29B5E8(__n128 a1)
{
  v22 = a1.n128_u16[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F42D0, &qword_26B2BE900);
  v1 = MEMORY[0x277D84DC8];
  if (swift_dynamicCast())
  {
    sub_26B2907E4(&v19, v17);
    v2 = v18;
    v3 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v4 = *(v2 - 8);
    MEMORY[0x28223BE20](v3, v3);
    v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    if (sub_26B2BBD98() < 65)
    {
      v13 = sub_26B2BBDA8();
      v14 = sub_26B2BBD88();
      (*(v4 + 8))(v6, v2);
      if (v13)
      {
        _S8 = v14;
      }

      else
      {
        _S8 = v14;
      }
    }

    else
    {
      sub_26B2A3B44();
      sub_26B2A3B98();
      sub_26B2BB818();
      (*(v4 + 8))(v6, v2);
      _S8 = *&v16[1];
    }
  }

  else
  {
    v20 = v1;
    v21 = sub_26B2A3AF0();
    LOWORD(v19) = v22;
    sub_26B2907E4(&v19, v17);
    _H0 = *__swift_project_boxed_opaque_existential_1(v17, v18);
    __asm { FCVT            S8, H0 }
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return _S8;
}

void InspectorPropertyValue.id.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  sub_26B29B834(v2, v3, v4, v5, v6);
}

void sub_26B29B834(void *a1, unint64_t a2, uint64_t a3, void *a4, char a5)
{
  switch(a5)
  {
    case 4:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 16:
    case 17:
    case 18:
    case 21:
    case 25:
    case 26:
    case 27:
      goto LABEL_3;
    case 14:

      v5 = a1;
      break;
    case 15:

      sub_26B28E8AC(a1, a2);
      break;
    case 22:
    case 23:
    case 24:

LABEL_3:

      break;
    default:
      return;
  }
}

uint64_t InspectorPropertyValue.init(anyValue:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v201 = a2;
  v200.i64[0] = sub_26B2BB768();
  *&v199 = *(v200.i64[0] - 8);
  v4 = MEMORY[0x28223BE20](v200.i64[0], v3);
  v198.n128_u64[0] = v191.n128_u64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v191 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4058, &qword_26B2BDE40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v191 - v11;
  v13 = sub_26B2BB688();
  *&v197 = *(v13 - 1);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v191 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26B2BB708();
  *&v196 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v191 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v191 - v27;
  sub_26B29EFCC(a1, &v213);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4060, &qword_26B2BDE48);
  if (swift_dynamicCast())
  {
    sub_26B2907E4(&v206, v203);
    v29 = __swift_project_boxed_opaque_existential_1(v203, v204);
    MEMORY[0x28223BE20](v29, v29);
    (*(v31 + 16))(&v191 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_26B2A1F1C();
    sub_26B2BBEB8();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v32 = v202;
    __swift_destroy_boxed_opaque_existential_1(v203);
    v33 = 0;
    v34 = 0;
LABEL_22:
    result = __swift_destroy_boxed_opaque_existential_1(&v213);
    v55 = v201;
    *v201 = v32;
    v55[1] = v33;
    v55[2] = 0;
    v55[3] = 0;
    *(v55 + 32) = v34;
    return result;
  }

  v195 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4068, &qword_26B2BDE50);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4070, &qword_26B2BDE58);
    if (swift_dynamicCast())
    {
      sub_26B2907E4(&v206, v203);
      v50 = __swift_project_boxed_opaque_existential_1(v203, v204);
      MEMORY[0x28223BE20](v50, v50);
      (*(v52 + 16))(&v191 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_26B2A1E74();
      sub_26B2BB808();
      __swift_destroy_boxed_opaque_existential_1(v195);
      v32 = v202;
      __swift_destroy_boxed_opaque_existential_1(v203);
      v33 = 0;
      v34 = 2;
      goto LABEL_22;
    }

    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v195);
      v33 = 0;
      v32 = v206.n128_u8[0];
      v34 = 3;
      goto LABEL_22;
    }

    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v195);
      v33 = v206.n128_u64[1];
      v32 = v206.n128_u64[0];
      v34 = 4;
      goto LABEL_22;
    }

    if (!swift_dynamicCast())
    {
      if (!swift_dynamicCast())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4078, &qword_26B2BDE60);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1(v195);
          v33 = 0;
          v32 = v206.n128_u64[0];
          v34 = 5;
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4080, &qword_26B2BDE68);
        if (swift_dynamicCast())
        {
          v62.n128_u32[0] = v206.n128_u32[0];
          v200 = v62;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_26B2BDCE0;
          *(v63 + 32) = sub_26B29B5E8(v200);
          v64 = v200;
          v64.n128_u16[0] = v200.u16[1];
          v65 = sub_26B29B5E8(v64);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4088, &qword_26B2BDE70);
          if (!swift_dynamicCast())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4090, &qword_26B2BDE78);
            if (swift_dynamicCast())
            {
              v200 = v206;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
              v63 = swift_allocObject();
              *(v63 + 16) = xmmword_26B2BDCE0;
              v66 = v200.i64[0];
              v67 = MEMORY[0x277D83B88];
              v68 = sub_26B2A3BEC;
LABEL_45:
              v69 = v68;
              *(v63 + 32) = sub_26B29B08C(v66, v67, v68);
              v65 = sub_26B29B08C(v200.i64[1], v67, v69);
              goto LABEL_52;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4098, &qword_26B2BDE80);
            if (swift_dynamicCast())
            {
              v70.n128_u8[4] = v206.n128_u8[1];
              v70.n128_u8[0] = v206.n128_u8[0];
              v200 = v70;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
              v63 = swift_allocObject();
              *(v63 + 16) = xmmword_26B2BDCE0;
              *(v63 + 32) = sub_26B29B490(v200.i8[0]);
              v65 = sub_26B29B490(v200.i8[4]);
              goto LABEL_52;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40A0, &qword_26B2BDE88);
            if (swift_dynamicCast())
            {
              v71.n128_u16[2] = v206.n128_u16[1];
              v71.n128_u16[0] = v206.n128_u16[0];
              v200 = v71;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
              v63 = swift_allocObject();
              *(v63 + 16) = xmmword_26B2BDCE0;
              *(v63 + 32) = sub_26B29B338(v200.i16[0]);
              v65 = sub_26B29B338(v200.i16[2]);
              goto LABEL_52;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40A8, &qword_26B2BDE90);
            if (swift_dynamicCast())
            {
              v72.n128_u64[0] = v206.n128_u64[0];
              v200 = v72;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
              v63 = swift_allocObject();
              *(v63 + 16) = xmmword_26B2BDCE0;
              *(v63 + 32) = sub_26B29B1E0(v200.i32[0]);
              v65 = sub_26B29B1E0(v200.i32[1]);
              goto LABEL_52;
            }

            goto LABEL_54;
          }

          v200 = v206;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_26B2BDCE0;
          *(v63 + 32) = sub_26B29AA54(*v200.i64);
          v65 = sub_26B29AA54(*&v200.i64[1]);
        }

LABEL_52:
        *(v63 + 36) = v65;
        sub_26B2A1D94(v63);
        v74 = v73;
        swift_setDeallocating();
        swift_deallocClassInstance();
        v32 = v74;
        __swift_destroy_boxed_opaque_existential_1(v195);
        v33 = 0;
        v34 = 5;
        goto LABEL_22;
      }

      v32 = MEMORY[0x26D673A60](v206.n128_u64[0], v206.n128_u64[1], v207.n128_u64[0], v207.n128_u64[1]);
      v33 = v58;

      v59 = v195;
LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v59);
      v34 = 4;
      goto LABEL_22;
    }

    v56 = v206.n128_u64[0];
    if (v207.n128_u8[0])
    {
      v57 = HIDWORD(v206.n128_u64[0]);
      v21 = v195;
      if (!HIDWORD(v206.n128_u64[0]))
      {
        if ((v206.n128_u32[0] & 0xFFFFF800) == 0xD800)
        {
          __break(1u);
          goto LABEL_72;
        }

        v57 = (v206.n128_u64[0] >> 16);
        if (v206.n128_u64[0] >> 16 <= 0x10)
        {
          if (v206.n128_u64[0] <= 0x7F)
          {
            v60 = v206.n128_u32[0] + 1;
LABEL_34:
            v203[0] = (v60 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v60) >> 3))));
LABEL_35:
            v32 = sub_26B2BB9C8();
            v33 = v61;
            v59 = v21;
            goto LABEL_36;
          }

LABEL_65:
          v78 = (v56 & 0x3F) << 8;
          if (v56 >= 0x800)
          {
            v99 = (v78 | (v56 >> 6) & 0x3F) << 8;
            if (!v57)
            {
              v60 = (v56 >> 12) + v99 + 8487393;
              goto LABEL_68;
            }

            v79 = (v56 >> 18) + ((v99 | (v56 >> 12) & 0x3F) << 8);
            v80 = -2122219023;
          }

          else
          {
            v79 = (v56 >> 6) + v78;
            v80 = 33217;
          }

          v60 = v79 + v80;
LABEL_68:
          v21 = v195;
          goto LABEL_34;
        }

LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    else
    {
      v57 = v212 + 8;
      v21 = v195;
      if (v206.n128_u64[0])
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_64;
  }

  sub_26B2907E4(&v206, v203);
  v21 = v204;
  v35 = v205;
  v36 = __swift_project_boxed_opaque_existential_1(v203, v204);
  v16 = *(v21 - 1);
  v37 = *(v16 + 8);
  MEMORY[0x28223BE20](v36, v36);
  v17 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v191 - v17;
  (*(v16 + 2))(&v191 - v17);
  v28 = *(v35 + 8);
  if (sub_26B2BBDA8() & 1) == 0 || (v38 = swift_getAssociatedTypeWitness(), v198.n128_u64[0] = &v191, MEMORY[0x28223BE20](v38, v39), v200.i64[0] = v16, swift_getAssociatedConformanceWitness(), v40 = sub_26B2BC178(), *&v199 = &v191, MEMORY[0x28223BE20](v40, v41), v13 = &v191 - v17, v16 = v200.i64[0], sub_26B2BC118(), v8 = sub_26B2BB918(), (*(v16 + 1))(&v191 - v17, v21), v25 = v199, (v8))
  {
    if (sub_26B2BBD98() > 63)
    {
      v202 = -1;
      v42 = sub_26B2BBDA8();
      v43 = sub_26B2BBD98();
      if (v42)
      {
        if (v43 <= 64)
        {
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v200.i64[0] = &v191;
          MEMORY[0x28223BE20](AssociatedTypeWitness, v46);
          swift_getAssociatedConformanceWitness();
          v47 = sub_26B2BC178();
          MEMORY[0x28223BE20](v47, v48);
          sub_26B2BC118();
          v49 = sub_26B2BB8F8();
          (*(v16 + 1))(&v191 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
          if ((v49 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }
      }

      else if (v43 < 65)
      {
LABEL_20:
        sub_26B2BBD88();
        goto LABEL_21;
      }

      MEMORY[0x28223BE20](v43, v44);
      sub_26B2A1EC8();
      sub_26B2BBD78();
      v53 = sub_26B2BB908();
      (*(v16 + 1))(&v191 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
      if (v53)
      {
        __break(1u);
        goto LABEL_20;
      }
    }

LABEL_21:
    v32 = sub_26B2BBD88();
    (*(v16 + 1))(v12, v21);
    __swift_destroy_boxed_opaque_existential_1(v195);
    __swift_destroy_boxed_opaque_existential_1(v203);
    v33 = 0;
    v34 = 1;
    goto LABEL_22;
  }

  __break(1u);
LABEL_54:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40B0, &qword_26B2BDE98);
  if (swift_dynamicCast())
  {
    v200 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_26B2BDCE0;
    v66 = v200.i64[0];
    v67 = MEMORY[0x277D84A28];
    v68 = sub_26B2A3D3C;
    goto LABEL_45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40B8, &qword_26B2BDEA0);
  if (swift_dynamicCast())
  {
    v75.n128_u8[4] = v206.n128_u8[1];
    v75.n128_u8[0] = v206.n128_u8[0];
    v200 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_26B2BDCE0;
    *(v63 + 32) = sub_26B29AF34(v200.i8[0]);
    v65 = sub_26B29AF34(v200.i8[4]);
    goto LABEL_52;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40C0, &qword_26B2BDEA8);
  if (swift_dynamicCast())
  {
    v76.n128_u16[2] = v206.n128_u16[1];
    v76.n128_u16[0] = v206.n128_u16[0];
    v200 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_26B2BDCE0;
    *(v63 + 32) = sub_26B29ADDC(v200.i16[0]);
    v65 = sub_26B29ADDC(v200.i16[2]);
    goto LABEL_52;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40C8, &qword_26B2BDEB0);
  if (swift_dynamicCast())
  {
    v77.n128_u64[0] = v206.n128_u64[0];
    v200 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_26B2BDCE0;
    *(v63 + 32) = sub_26B29AC84(v200.i32[0]);
    v65 = sub_26B29AC84(v200.i32[1]);
    goto LABEL_52;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40D0, &qword_26B2BDEB8);
  if (swift_dynamicCast())
  {
    v200 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_26B2BDCE0;
    v66 = v200.i64[0];
    v67 = MEMORY[0x277D84D38];
    v68 = sub_26B2A1EC8;
    goto LABEL_45;
  }

LABEL_72:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v195);
    v33 = v206.n128_u64[1];
    v32 = v206.n128_u64[0];
    v34 = 6;
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40D8, &qword_26B2BDEC8);
  if (swift_dynamicCast())
  {
    v81.n128_u64[0] = v206.n128_u64[0];
    v200 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_26B2BDCD0;
    *(v82 + 32) = sub_26B29B5E8(v200);
    v83 = v200;
    v83.n128_u16[0] = v200.u16[1];
    *(v82 + 36) = sub_26B29B5E8(v83);
    v84 = v200;
    v84.n128_u16[0] = v200.u16[2];
    v85 = sub_26B29B5E8(v84);
LABEL_78:
    *(v82 + 40) = v85;
    sub_26B2A1DCC(v82);
    v200 = v87;
    swift_setDeallocating();
LABEL_79:
    swift_deallocClassInstance();
    v33 = v200.u64[1];
    v32 = v200.i64[0];
    __swift_destroy_boxed_opaque_existential_1(v195);
    v34 = 6;
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40E0, &qword_26B2BDED0);
  if (swift_dynamicCast())
  {
    v200 = v206;
    v86 = v207.n128_f64[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_26B2BDCD0;
    *(v82 + 32) = sub_26B29AA54(*v200.i64);
    *(v82 + 36) = sub_26B29AA54(*&v200.i64[1]);
    v85 = sub_26B29AA54(v86);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40E8, &qword_26B2BDED8);
  if (swift_dynamicCast())
  {
    v200 = v206;
    v88 = v207.n128_u64[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_26B2BDCD0;
    v90 = v200.i64[0];
    v91 = MEMORY[0x277D83B88];
    v92 = sub_26B2A3BEC;
LABEL_82:
    v93 = v92;
    *(v89 + 32) = sub_26B29B08C(v90, v91, v92);
    *(v89 + 36) = sub_26B29B08C(v200.i64[1], v91, v93);
    *(v89 + 40) = sub_26B29B08C(v88, v91, v93);
    sub_26B2A1DCC(v89);
    v200 = v94;
    swift_setDeallocating();
    goto LABEL_79;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40F0, &qword_26B2BDEE0);
  if (swift_dynamicCast())
  {
    v95.i32[0] = v206.n128_u32[0];
    v200 = vmovl_u8(v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_26B2BDCD0;
    *(v82 + 32) = sub_26B29B490(v200.i8[0]);
    *(v82 + 36) = sub_26B29B490(v200.i8[2]);
    v85 = sub_26B29B490(v200.i8[4]);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40F8, &qword_26B2BDEE8);
  if (swift_dynamicCast())
  {
    v96.n128_u64[0] = v206.n128_u64[0];
    v200 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_26B2BDCD0;
    *(v82 + 32) = sub_26B29B338(v200.i16[0]);
    *(v82 + 36) = sub_26B29B338(v200.i16[1]);
    v85 = sub_26B29B338(v200.i16[2]);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4100, &qword_26B2BDEF0);
  if (swift_dynamicCast())
  {
    v200 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_26B2BDCD0;
    *(v82 + 32) = sub_26B29B1E0(v200.i32[0]);
    *(v82 + 36) = sub_26B29B1E0(v200.i32[1]);
    v85 = sub_26B29B1E0(v200.i32[2]);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4108, &qword_26B2BDEF8);
  if (swift_dynamicCast())
  {
    v200 = v206;
    v88 = v207.n128_u64[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_26B2BDCD0;
    v90 = v200.i64[0];
    v91 = MEMORY[0x277D84A28];
    v92 = sub_26B2A3D3C;
    goto LABEL_82;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4110, &qword_26B2BDF00);
  if (swift_dynamicCast())
  {
    v97.i32[0] = v206.n128_u32[0];
    v200 = vmovl_u8(v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_26B2BDCD0;
    *(v82 + 32) = sub_26B29AF34(v200.i8[0]);
    *(v82 + 36) = sub_26B29AF34(v200.i8[2]);
    v85 = sub_26B29AF34(v200.i8[4]);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4118, &qword_26B2BDF08);
  if (swift_dynamicCast())
  {
    v98.n128_u64[0] = v206.n128_u64[0];
    v200 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_26B2BDCD0;
    *(v82 + 32) = sub_26B29ADDC(v200.i16[0]);
    *(v82 + 36) = sub_26B29ADDC(v200.i16[1]);
    v85 = sub_26B29ADDC(v200.i16[2]);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4120, &qword_26B2BDF10);
  if (swift_dynamicCast())
  {
    v200 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_26B2BDCD0;
    *(v82 + 32) = sub_26B29AC84(v200.i32[0]);
    *(v82 + 36) = sub_26B29AC84(v200.i32[1]);
    v85 = sub_26B29AC84(v200.i32[2]);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4128, &qword_26B2BDF18);
  if (swift_dynamicCast())
  {
    v200 = v206;
    v88 = v207.n128_u64[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_26B2BDCD0;
    v90 = v200.i64[0];
    v91 = MEMORY[0x277D84D38];
    v92 = sub_26B2A1EC8;
    goto LABEL_82;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4130, &qword_26B2BDF20);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v195);
    v33 = v206.n128_u64[1];
    v32 = v206.n128_u64[0];
    v34 = 7;
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4138, &qword_26B2BDF28);
  if (swift_dynamicCast())
  {
    v100.n128_u64[0] = v206.n128_u64[0];
    v200 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v34 = 7;
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_26B2BDCC0;
    *(v101 + 32) = sub_26B29B5E8(v200);
    v102 = v200;
    v102.n128_u16[0] = v200.u16[1];
    *(v101 + 36) = sub_26B29B5E8(v102);
    v103 = v200;
    v103.n128_u16[0] = v200.u16[2];
    *(v101 + 40) = sub_26B29B5E8(v103);
    v104 = v200;
    v104.n128_u16[0] = v200.u16[3];
    *(v101 + 44) = sub_26B29B5E8(v104);
    sub_26B2A1E18(v101);
    v200 = v105;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v33 = v200.u64[1];
    v32 = v200.i64[0];
    __swift_destroy_boxed_opaque_existential_1(v195);
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4140, &qword_26B2BDF30);
  if (swift_dynamicCast())
  {
    v200 = v207;
    v199 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v34 = 7;
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_26B2BDCC0;
    *(v106 + 32) = sub_26B29AA54(*&v199);
    *(v106 + 36) = sub_26B29AA54(*(&v199 + 1));
    *(v106 + 40) = sub_26B29AA54(*v200.i64);
    v107 = sub_26B29AA54(*&v200.i64[1]);
LABEL_125:
    *(v106 + 44) = v107;
    sub_26B2A1E18(v106);
    v200 = v118;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v33 = v200.u64[1];
    v32 = v200.i64[0];
    __swift_destroy_boxed_opaque_existential_1(v195);
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4148, &qword_26B2BDF38);
  if (swift_dynamicCast())
  {
    v200 = v207;
    v199 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_26B2BDCC0;
    v109 = v199;
    v110 = MEMORY[0x277D83B88];
    v111 = sub_26B2A3BEC;
LABEL_109:
    v112 = v111;
    *(v108 + 32) = sub_26B29B08C(v109, v110, v111);
    *(v108 + 36) = sub_26B29B08C(*(&v199 + 1), v110, v112);
    *(v108 + 40) = sub_26B29B08C(v200.i64[0], v110, v112);
    *(v108 + 44) = sub_26B29B08C(v200.i64[1], v110, v112);
    sub_26B2A1E18(v108);
    v200 = v113;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v33 = v200.u64[1];
    v32 = v200.i64[0];
    __swift_destroy_boxed_opaque_existential_1(v195);
    v34 = 7;
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4150, &qword_26B2BDF40);
  if (swift_dynamicCast())
  {
    v114.i32[0] = v206.n128_u32[0];
    v200 = vmovl_u8(v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v34 = 7;
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_26B2BDCC0;
    *(v106 + 32) = sub_26B29B490(v200.i8[0]);
    *(v106 + 36) = sub_26B29B490(v200.i8[2]);
    *(v106 + 40) = sub_26B29B490(v200.i8[4]);
    v107 = sub_26B29B490(v200.i8[6]);
    goto LABEL_125;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4158, &qword_26B2BDF48);
  if (swift_dynamicCast())
  {
    v115.n128_u64[0] = v206.n128_u64[0];
    v200 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v34 = 7;
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_26B2BDCC0;
    *(v106 + 32) = sub_26B29B338(v200.i16[0]);
    *(v106 + 36) = sub_26B29B338(v200.i16[1]);
    *(v106 + 40) = sub_26B29B338(v200.i16[2]);
    v107 = sub_26B29B338(v200.i16[3]);
    goto LABEL_125;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4160, &qword_26B2BDF50);
  if (swift_dynamicCast())
  {
    v200 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v34 = 7;
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_26B2BDCC0;
    *(v106 + 32) = sub_26B29B1E0(v200.i32[0]);
    *(v106 + 36) = sub_26B29B1E0(v200.i32[1]);
    *(v106 + 40) = sub_26B29B1E0(v200.i32[2]);
    v107 = sub_26B29B1E0(v200.i32[3]);
    goto LABEL_125;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4168, &qword_26B2BDF58);
  if (swift_dynamicCast())
  {
    v200 = v207;
    v199 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_26B2BDCC0;
    v109 = v199;
    v110 = MEMORY[0x277D84A28];
    v111 = sub_26B2A3D3C;
    goto LABEL_109;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4170, &qword_26B2BDF60);
  if (swift_dynamicCast())
  {
    v116.i32[0] = v206.n128_u32[0];
    v200 = vmovl_u8(v116);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v34 = 7;
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_26B2BDCC0;
    *(v106 + 32) = sub_26B29AF34(v200.i8[0]);
    *(v106 + 36) = sub_26B29AF34(v200.i8[2]);
    *(v106 + 40) = sub_26B29AF34(v200.i8[4]);
    v107 = sub_26B29AF34(v200.i8[6]);
    goto LABEL_125;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4178, &qword_26B2BDF68);
  if (swift_dynamicCast())
  {
    v117.n128_u64[0] = v206.n128_u64[0];
    v200 = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v34 = 7;
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_26B2BDCC0;
    *(v106 + 32) = sub_26B29ADDC(v200.i16[0]);
    *(v106 + 36) = sub_26B29ADDC(v200.i16[1]);
    *(v106 + 40) = sub_26B29ADDC(v200.i16[2]);
    v107 = sub_26B29ADDC(v200.i16[3]);
    goto LABEL_125;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4180, &qword_26B2BDF70);
  if (swift_dynamicCast())
  {
    v200 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v34 = 7;
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_26B2BDCC0;
    *(v106 + 32) = sub_26B29AC84(v200.i32[0]);
    *(v106 + 36) = sub_26B29AC84(v200.i32[1]);
    *(v106 + 40) = sub_26B29AC84(v200.i32[2]);
    v107 = sub_26B29AC84(v200.i32[3]);
    goto LABEL_125;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4188, &qword_26B2BDF78);
  if (swift_dynamicCast())
  {
    v200 = v207;
    v199 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_26B2BDCC0;
    v109 = v199;
    v110 = MEMORY[0x277D84D38];
    v111 = sub_26B2A1EC8;
    goto LABEL_109;
  }

  type metadata accessor for simd_quatf(0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v195);
    v33 = v206.n128_u64[1];
    v32 = v206.n128_u64[0];
    v34 = 8;
    goto LABEL_22;
  }

  type metadata accessor for simd_float2x2(0);
  if (swift_dynamicCast())
  {
    v119 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41B0, &unk_26B2BDFA0);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_26B2BDCE0;
    *(v120 + 32) = v119;
LABEL_134:
    __swift_destroy_boxed_opaque_existential_1(v195);
    result = __swift_destroy_boxed_opaque_existential_1(&v213);
    v127 = v201;
    *v201 = v120;
    v127[1] = 0;
    v127[2] = 0;
    v127[3] = 0;
    v128 = 9;
    goto LABEL_150;
  }

  type metadata accessor for simd_double2x2(0);
  if (swift_dynamicCast())
  {
    v198 = v206;
    v200 = v207;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41B0, &unk_26B2BDFA0);
    v120 = swift_allocObject();
    v199 = xmmword_26B2BDCE0;
    *(v120 + 16) = xmmword_26B2BDCE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v121 = swift_allocObject();
    *(v121 + 16) = v199;
    *(v121 + 32) = sub_26B29AA54(v198.n128_f64[0]);
    *(v121 + 36) = sub_26B29AA54(v198.n128_f64[1]);
    sub_26B2A1D94(v121);
    v123 = v122;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v120 + 32) = v123;
    v124 = swift_allocObject();
    *(v124 + 16) = v199;
    *(v124 + 32) = sub_26B29AA54(*v200.i64);
    *(v124 + 36) = sub_26B29AA54(*&v200.i64[1]);
    sub_26B2A1D94(v124);
    v126 = v125;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v120 + 40) = v126;
    goto LABEL_134;
  }

  type metadata accessor for simd_float3x3(0);
  if (swift_dynamicCast())
  {
    v200 = v206;
    v199 = v207;
    v198 = v208;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A8, &qword_26B2BDF98);
    v129 = swift_allocObject();
    v130 = v200;
    v129[1] = xmmword_26B2BDCD0;
    v129[2] = v130;
    v131 = v198;
    v129[3] = v199;
    v129[4] = v131;
LABEL_139:
    __swift_destroy_boxed_opaque_existential_1(v195);
    result = __swift_destroy_boxed_opaque_existential_1(&v213);
    v127 = v201;
    *v201 = v129;
    v127[1] = 0;
    v127[2] = 0;
    v127[3] = 0;
    v128 = 10;
    goto LABEL_150;
  }

  type metadata accessor for simd_double3x3(0);
  if (swift_dynamicCast())
  {
    v197 = v206;
    v198 = v208;
    v199 = v210;
    v132 = v207.n128_f64[0];
    v133 = *&v209;
    v134 = *&v211;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A8, &qword_26B2BDF98);
    v129 = swift_allocObject();
    v200 = xmmword_26B2BDCD0;
    v129[1] = xmmword_26B2BDCD0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v135 = swift_allocObject();
    v135[1] = v200;
    v135[2].n128_f32[0] = sub_26B29AA54(*&v197);
    v135[2].n128_f32[1] = sub_26B29AA54(*(&v197 + 1));
    v135[2].n128_f32[2] = sub_26B29AA54(v132);
    sub_26B2A1DCC(v135);
    v197 = v136;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v129[2] = v197;
    v137 = swift_allocObject();
    v137[1] = v200;
    v137[2].n128_f32[0] = sub_26B29AA54(v198.n128_f64[0]);
    v137[2].n128_f32[1] = sub_26B29AA54(v198.n128_f64[1]);
    v137[2].n128_f32[2] = sub_26B29AA54(v133);
    sub_26B2A1DCC(v137);
    v198 = v138;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v129[3] = v198;
    v139 = swift_allocObject();
    v139[1] = v200;
    v139[2].n128_f32[0] = sub_26B29AA54(*&v199);
    v139[2].n128_f32[1] = sub_26B29AA54(*(&v199 + 1));
    v139[2].n128_f32[2] = sub_26B29AA54(v134);
    sub_26B2A1DCC(v139);
    v200 = v140;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v129[4] = v200;
    goto LABEL_139;
  }

  type metadata accessor for simd_float4x4(0);
  if (swift_dynamicCast())
  {
    v200 = v206;
    v199 = v207;
    v198 = v208;
    v197 = v209;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4198, &qword_26B2BDF88);
    v141 = swift_allocObject();
    v142 = v200;
    v141[1] = xmmword_26B2BDCC0;
    v141[2] = v142;
    v143 = v198;
    v141[3] = v199;
    v141[4] = v143;
    v141[5] = v197;
LABEL_144:
    __swift_destroy_boxed_opaque_existential_1(v195);
    result = __swift_destroy_boxed_opaque_existential_1(&v213);
    v127 = v201;
    *v201 = v141;
    v127[1] = 0;
    v127[2] = 0;
    v127[3] = 0;
    v128 = 11;
    goto LABEL_150;
  }

  type metadata accessor for simd_double4x4(0);
  if (swift_dynamicCast())
  {
    v192 = v207;
    v191 = v206;
    v194 = v209;
    v193 = v208;
    v197 = v211;
    v196 = v210;
    v199 = v212[1];
    v198 = v212[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4198, &qword_26B2BDF88);
    v141 = swift_allocObject();
    v200 = xmmword_26B2BDCC0;
    v141[1] = xmmword_26B2BDCC0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v144 = swift_allocObject();
    v144[1] = v200;
    v144[2].n128_f32[0] = sub_26B29AA54(v191.n128_f64[0]);
    v144[2].n128_f32[1] = sub_26B29AA54(v191.n128_f64[1]);
    v144[2].n128_f32[2] = sub_26B29AA54(v192.n128_f64[0]);
    v144[2].n128_f32[3] = sub_26B29AA54(v192.n128_f64[1]);
    sub_26B2A1E18(v144);
    v192 = v145;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v141[2] = v192;
    v146 = swift_allocObject();
    v146[1] = v200;
    v146[2].n128_f32[0] = sub_26B29AA54(v193.n128_f64[0]);
    v146[2].n128_f32[1] = sub_26B29AA54(v193.n128_f64[1]);
    v146[2].n128_f32[2] = sub_26B29AA54(*&v194);
    v146[2].n128_f32[3] = sub_26B29AA54(*(&v194 + 1));
    sub_26B2A1E18(v146);
    v194 = v147;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v141[3] = v194;
    v148 = swift_allocObject();
    v148[1] = v200;
    v148[2].n128_f32[0] = sub_26B29AA54(*&v196);
    v148[2].n128_f32[1] = sub_26B29AA54(*(&v196 + 1));
    v148[2].n128_f32[2] = sub_26B29AA54(*&v197);
    v148[2].n128_f32[3] = sub_26B29AA54(*(&v197 + 1));
    sub_26B2A1E18(v148);
    v197 = v149;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v141[4] = v197;
    v150 = swift_allocObject();
    v150[1] = v200;
    v150[2].n128_f32[0] = sub_26B29AA54(v198.n128_f64[0]);
    v150[2].n128_f32[1] = sub_26B29AA54(v198.n128_f64[1]);
    v150[2].n128_f32[2] = sub_26B29AA54(*&v199);
    v150[2].n128_f32[3] = sub_26B29AA54(*(&v199 + 1));
    sub_26B2A1E18(v150);
    v200 = v151;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v141[5] = v200;
    goto LABEL_144;
  }

  if (swift_dynamicCast())
  {
    v152 = v196;
    (*(v196 + 32))(v25, v28, v17);
    (*(v152 + 16))(v21, v25, v17);
    v153 = sub_26B2BB968();
    v155 = v154;
    (*(v152 + 8))(v25, v17);
    v156 = v195;
LABEL_149:
    __swift_destroy_boxed_opaque_existential_1(v156);
    result = __swift_destroy_boxed_opaque_existential_1(&v213);
    v127 = v201;
    *v201 = v153;
    v127[1] = v155;
    v127[2] = 0;
    v127[3] = 0;
    v128 = 4;
    goto LABEL_150;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4190, &qword_26B2BDF80);
  if (swift_dynamicCast())
  {
    sub_26B2907E4(&v206, v203);
    __swift_project_boxed_opaque_existential_1(v203, v204);
    sub_26B2BB718();
    sub_26B29F0E0(v12);
    (*(v197 + 8))(v16, v13);
    v153 = sub_26B2BB978();
    v155 = v157;
    __swift_destroy_boxed_opaque_existential_1(v195);
    v156 = v203;
    goto LABEL_149;
  }

  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v195);
      v165 = v206.n128_u64[1];
      v164 = v206.n128_u64[0];
    }

    else
    {
      if (swift_dynamicCast())
      {
        v166 = v195;
        sub_26B29EFCC(v195, &v206);
        v167 = sub_26B2BB988();
        v169 = v168;
        __swift_destroy_boxed_opaque_existential_1(v166);
        result = __swift_destroy_boxed_opaque_existential_1(&v213);
        v127 = v201;
        *v201 = v167;
        v127[1] = v169;
        v127[2] = 0;
        v127[3] = 0;
        v128 = 18;
        goto LABEL_150;
      }

      __swift_project_boxed_opaque_existential_1(v195, *(v195 + 3));
      DynamicType = swift_getDynamicType();
      isClassType = swift_isClassType();
      if (DynamicType)
      {
        v172 = isClassType;
      }

      else
      {
        v172 = 0;
      }

      if (v172)
      {
        v173 = *(v195 + 3);
        v174 = __swift_project_boxed_opaque_existential_1(v195, v173);
        v175 = *(v173 - 8);
        MEMORY[0x28223BE20](v174, v174);
        v177 = &v191 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v175 + 16))(v177);
        v178 = sub_26B2BC128();
        (*(v175 + 8))(v177, v173);
        v179 = CFGetTypeID(v178);
        swift_unknownObjectRelease();
        if (v179 == CGColorGetTypeID())
        {
          sub_26B29F4C8(v195, &v206);
          type metadata accessor for CGColor(0);
          swift_dynamicCast();
          v180 = v203[0];
          result = __swift_destroy_boxed_opaque_existential_1(&v213);
          v127 = v201;
          *v201 = v180;
          v127[1] = 0;
          v127[2] = 0;
          v127[3] = 0;
          v128 = 14;
          goto LABEL_150;
        }
      }

      else
      {
        CGColorGetTypeID();
        v179 = 0;
      }

      type metadata accessor for CMClock(0);
      if (v179 == MEMORY[0x26D673D90]())
      {
        v181 = v172;
      }

      else
      {
        v181 = 0;
      }

      if ((v181 & 1) == 0)
      {
        type metadata accessor for CMTimebase(0);
        v182 = v179 == MEMORY[0x26D673DB0]() ? v172 : 0;
        if (v182 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v195);
          result = __swift_destroy_boxed_opaque_existential_1(&v213);
          v127 = v201;
          *v201 = 0u;
          *(v127 + 1) = 0u;
          v128 = -1;
          goto LABEL_150;
        }
      }

      v183 = v195;
      v184 = *(v195 + 3);
      v185 = __swift_project_boxed_opaque_existential_1(v195, v184);
      v186 = *(v184 - 8);
      MEMORY[0x28223BE20](v185, v185);
      v188 = &v191 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v186 + 16))(v188);
      v189 = sub_26B2BC128();
      (*(v186 + 8))(v188, v184);
      swift_unknownObjectRelease();
      v206.n128_u64[0] = v189;
      v164 = sub_26B2BC2B8();
      v165 = v190;
      __swift_destroy_boxed_opaque_existential_1(v183);
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v213);
    v127 = v201;
    *v201 = v164;
    v127[1] = v165;
    v127[2] = 0;
    v127[3] = 0;
    v128 = 13;
    goto LABEL_150;
  }

  v158 = v199;
  v159 = v198.n128_u64[0];
  v160 = v200.i64[0];
  (*(v199 + 32))(v198.n128_u64[0], v8, v200.i64[0]);
  v161 = sub_26B2BB758();
  v163 = v162;
  (*(v158 + 8))(v159, v160);
  __swift_destroy_boxed_opaque_existential_1(v195);
  result = __swift_destroy_boxed_opaque_existential_1(&v213);
  v127 = v201;
  *v201 = v161;
  v127[1] = v163;
  v127[2] = 0;
  v127[3] = 0;
  v128 = 12;
LABEL_150:
  *(v127 + 32) = v128;
  return result;
}

uint64_t sub_26B29EFCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26B29F0E0@<X0>(uint64_t a1@<X8>)
{
  v29[2] = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4330, &qword_26B2BE908);
  v3 = MEMORY[0x28223BE20](v31, v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v29 - v7;
  v9 = sub_26B2BB698();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4338, &qword_26B2BE910);
  MEMORY[0x28223BE20](v30, v14);
  v16 = v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4340, &qword_26B2BE918);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = v29 - v19;
  v21 = sub_26B2BB688();
  v22 = sub_26B2A3274(&qword_2803F4348, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  v32 = v21;
  v23 = v22;
  sub_26B2BBC68();
  sub_26B2A3274(&qword_2803F4350, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  result = sub_26B2BB938();
  if (result)
  {
    sub_26B2BBC78();
    sub_26B2A3274(&qword_2803F4358, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    result = sub_26B2BB928();
    if (result)
    {
      v29[1] = v1;
      v25 = *(v10 + 32);
      v25(v8, v20, v9);
      v29[0] = v23;
      v26 = v31;
      v25(&v8[*(v31 + 48)], v13, v9);
      sub_26B2A3E8C(v8, v5);
      v27 = *(v26 + 48);
      v25(v16, v5, v9);
      v28 = *(v10 + 8);
      v28(&v5[v27], v9);
      sub_26B2A3EFC(v8, v5);
      v25(&v16[*(v30 + 36)], &v5[*(v26 + 48)], v9);
      v28(v5, v9);
      sub_26B2BBCA8();
      return sub_26B2A3F6C(v16, &qword_2803F4338, &qword_26B2BE910);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

_OWORD *sub_26B29F4C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_26B29F4EC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26B29F53C(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vceq_f32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_26B29F5B0(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s32(vceqq_f32(v6, v7));
    if (((v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return (v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1;
}

uint64_t sub_26B29F630(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vminv_u16(vmovn_s32(vceqq_f32(v6, v7)));
    if ((v8 & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8 & 1;
}

uint64_t sub_26B29F6A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v3 = (a2 + 64);
      v4 = (a1 + 64);
      do
      {
        v5 = *(v4 - 3);
        v6 = *(v4 - 2);
        v7 = *(v4 - 1);
        v8 = *v4;
        v21 = *(v4 - 4);
        v22 = v5;
        v23 = v6;
        v24 = v7;
        v25 = v8;
        v10 = *(v3 - 3);
        v11 = *(v3 - 2);
        v12 = *(v3 - 1);
        v16 = *(v3 - 4);
        v9 = v16;
        v17 = v10;
        v18 = v11;
        v19 = v12;
        v20 = *v3;
        v13 = v20;
        sub_26B29B834(v21, v5, v6, v7, v8);
        sub_26B29B834(v9, v10, v11, v12, v13);
        v14 = _s26SpatialInspectorFoundation0B13PropertyValueO2eeoiySbAC_ACtFZ_0(&v21, &v16);
        sub_26B2A2FB0(v16, v17, v18, v19, v20);
        sub_26B2A2FB0(v21, v22, v23, v24, v25);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v4 += 48;
        v3 += 48;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_26B29F7B8(uint64_t result, uint64_t a2)
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
  v30 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v31 = v7;
  v32 = result;
  if (v6)
  {
    do
    {
      v8 = __clz(__rbit64(v6));
      v33 = (v6 - 1) & v6;
LABEL_12:
      v11 = v8 | (v3 << 6);
      v12 = (*(result + 48) + 24 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = v12[2];
      v16 = *(result + 56) + 48 * v11;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      v21 = *(v16 + 32);

      sub_26B29B834(v17, v18, v19, v20, v21);
      if (!v13)
      {
        return 1;
      }

      v39 = v17;
      v40 = v18;
      v41 = v19;
      v42 = v20;
      v43 = v21;
      v22 = sub_26B2A1750(v14, v13, v15);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        sub_26B2A2FB0(v17, v18, v19, v20, v21);
        return 0;
      }

      v25 = *(a2 + 56) + 48 * v22;
      v26 = *(v25 + 8);
      v27 = *(v25 + 16);
      v28 = *(v25 + 24);
      v34 = *v25;
      v35 = v26;
      v36 = v27;
      v37 = v28;
      v38 = *(v25 + 32);
      sub_26B29B834(v34, v26, v27, v28, v38);
      v29 = _s26SpatialInspectorFoundation0B13PropertyValueO2eeoiySbAC_ACtFZ_0(&v34, &v39);
      sub_26B2A2FB0(v34, v35, v36, v37, v38);
      sub_26B2A2FB0(v39, v40, v41, v42, v43);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      v7 = v31;
      result = v32;
      v6 = v33;
    }

    while (v33);
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v30 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void InspectorPropertyValue.hash(into:)(uint64_t a1)
{
  v2 = v1->n128_u64[0];
  v3 = v1->n128_u64[1];
  switch(v1[2].n128_u8[0])
  {
    case 1u:
      v5 = 1;
      goto LABEL_52;
    case 2u:
      MEMORY[0x26D6742C0](2);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v11 = v2;
      }

      else
      {
        v11 = 0;
      }

      MEMORY[0x26D6742F0](v11);
      return;
    case 3u:
      MEMORY[0x26D6742C0](3);
      sub_26B2BC208();
      return;
    case 4u:
      v6 = 4;
      goto LABEL_39;
    case 5u:
      MEMORY[0x26D6742C0](5);
      sub_26B2BC218();
      sub_26B2BC218();
      return;
    case 6u:
      v14 = *v1;
      MEMORY[0x26D6742C0](6);

      sub_26B2A1D1C(v14);
      return;
    case 7u:
      v13 = *v1;
      v12 = 7;
      goto LABEL_47;
    case 8u:
      v13 = *v1;
      v12 = 8;
LABEL_47:
      MEMORY[0x26D6742C0](v12);

      sub_26B2A1C8C(v13);
      return;
    case 9u:
      MEMORY[0x26D6742C0](9);

      sub_26B2A1C00(a1, v2);
      return;
    case 0xAu:
      MEMORY[0x26D6742C0](10);

      sub_26B2A1B5C(a1, v2);
      return;
    case 0xBu:
      MEMORY[0x26D6742C0](11);

      sub_26B2A1AA0(a1, v2);
      return;
    case 0xCu:
      v6 = 12;
      goto LABEL_39;
    case 0xDu:
      v6 = 13;
      goto LABEL_39;
    case 0xEu:
      MEMORY[0x26D6742C0](14);
      type metadata accessor for CGColor(0);
      sub_26B2A3274(&qword_2803F41E0, type metadata accessor for CGColor, &unk_26B2BE8C4);
      sub_26B2BB798();
      return;
    case 0xFu:
      MEMORY[0x26D6742C0](15);

      MEMORY[0x28211D370](a1, v2, v3);
      return;
    case 0x10u:
      v6 = 16;
      goto LABEL_39;
    case 0x11u:
      v6 = 17;
      goto LABEL_39;
    case 0x12u:
      v6 = 18;
      goto LABEL_39;
    case 0x13u:
      v5 = 19;
      goto LABEL_52;
    case 0x14u:
      v5 = 20;
      goto LABEL_52;
    case 0x15u:
      v6 = 21;
LABEL_39:
      MEMORY[0x26D6742C0](v6);
      goto LABEL_40;
    case 0x16u:
      v10 = 22;
      goto LABEL_54;
    case 0x17u:
      v10 = 23;
      goto LABEL_54;
    case 0x18u:
      v10 = 24;
LABEL_54:
      MEMORY[0x26D6742C0](v10);
      sub_26B2BB9E8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41D0, &unk_26B2BFF80);
      sub_26B2A3128(&qword_2803F41D8, &qword_2803F41D0, &unk_26B2BFF80, &protocol conformance descriptor for InspectorCollection<A>);
      sub_26B2BB8A8();
      break;
    case 0x19u:
      MEMORY[0x26D6742C0](25);
      MEMORY[0x26D6742C0](*(v2 + 16));
      v7 = *(v2 + 16);
      if (v7)
      {
        v8 = (v2 + 64);
        do
        {
          v15 = *(v8 - 4);
          v16 = *(v8 - 3);
          v17 = *(v8 - 2);
          v18 = *(v8 - 1);
          v9 = *v8;
          v8 += 48;
          sub_26B29B834(v15, v16, v17, v18, v9);
          InspectorPropertyValue.hash(into:)(a1);
          sub_26B2A2FB0(v15, v16, v17, v18, v9);
          --v7;
        }

        while (v7);
      }

      break;
    case 0x1Au:
      MEMORY[0x26D6742C0](26);

      sub_26B2A18C8(a1, v2);
      break;
    case 0x1Bu:
      MEMORY[0x26D6742C0](27);
      if (v3)
      {
        sub_26B2BC208();
LABEL_40:

        sub_26B2BB9E8();
      }

      else
      {
        sub_26B2BC208();
      }

      break;
    default:
      v5 = 0;
LABEL_52:
      MEMORY[0x26D6742C0](v5);
      MEMORY[0x26D6742F0](v2);
      break;
  }
}

uint64_t InspectorPropertyValue.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_26B2BC1E8();
  InspectorPropertyValue.hash(into:)(v4);
  return sub_26B2BC238();
}

uint64_t sub_26B29FFE8()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_26B2BC1E8();
  InspectorPropertyValue.hash(into:)(v4);
  return sub_26B2BC238();
}

uint64_t sub_26B2A0040(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_26B2BC1E8();
  InspectorPropertyValue.hash(into:)(v5);
  return sub_26B2BC238();
}

void sub_26B2A0090(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  sub_26B29B834(v2, v3, v4, v5, v6);
}

uint64_t InspectorPropertyValue.description.getter(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 32))
  {
    case 2:
      return sub_26B2AD2D0(*v1);
    case 3:
      if (LOBYTE(v2))
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (LOBYTE(v2))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      MEMORY[0x26D673B30](v11, v12);

      return 0;
    case 4:
    case 0xC:
    case 0xD:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:

      return *&v2;
    case 5:
      v4 = &qword_2803F4078;
      v5 = &qword_26B2BDE60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4078, &qword_26B2BDE60);
      v6 = &unk_2803F4208;
      v7 = MEMORY[0x277D84AE0];
      goto LABEL_13;
    case 6:
      v4 = &qword_2803F3D88;
      v5 = &qword_26B2BDEC0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
      v6 = &unk_2803F4200;
      v7 = MEMORY[0x277D84B08];
      goto LABEL_13;
    case 7:
    case 8:
      v4 = &qword_2803F4130;
      v5 = &qword_26B2BDF20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4130, &qword_26B2BDF20);
      v6 = &unk_2803F41F8;
      v7 = MEMORY[0x277D84B28];
LABEL_13:
      sub_26B2A3128(v6, v4, v5, v7);
      return sub_26B2BC188();
    case 9:
      v9 = &qword_2803F4078;
      v10 = &qword_26B2BDE60;
      goto LABEL_22;
    case 0xA:
      v9 = &qword_2803F3D88;
      v10 = &qword_26B2BDEC0;
      goto LABEL_22;
    case 0xB:
      v9 = &qword_2803F4130;
      v10 = &qword_26B2BDF20;
LABEL_22:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      goto LABEL_23;
    case 0xE:
      type metadata accessor for CGColor(0);
      sub_26B2BBEA8();
      return 0;
    case 0xF:
      return sub_26B2BB738();
    case 0x19:
      v8 = &type metadata for InspectorPropertyValue;
LABEL_23:
      result = MEMORY[0x26D673C60](*&v2, v8);
      break;
    case 0x1A:
      sub_26B2A30D4();
      result = sub_26B2BB828();
      break;
    case 0x1B:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41E8, &qword_26B2BDFB0);
      result = sub_26B2BB988();
      break;
    default:
      result = sub_26B2BC108();
      break;
  }

  return result;
}

uint64_t sub_26B2A03E8()
{
  v1 = *v0;

  return v1;
}

uint64_t InspectorPropertyValue.WrappedDictionaryKey.init(any:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_26B2A3170(a1, v9);
  v4 = sub_26B2BBDC8();
  v6 = v5;
  sub_26B2A31CC(v9);
  *a2 = v4;
  a2[1] = v6;
  v7 = sub_26B2BBDD8();
  result = sub_26B2A31CC(a1);
  a2[2] = v7;
  return result;
}

BOOL static InspectorPropertyValue.WrappedDictionaryKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_26B2BC138();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_26B2A04EC()
{
  if (*v0)
  {
    return 1752392040;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_26B2A0510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_26B2BC138() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1752392040 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26B2BC138();

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

uint64_t sub_26B2A05EC(uint64_t a1)
{
  v2 = sub_26B2A3220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2A0628(uint64_t a1)
{
  v2 = sub_26B2A3220();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorPropertyValue.WrappedDictionaryKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4210, &qword_26B2BDFB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v10[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2A3220();
  sub_26B2BC258();
  v12 = 0;
  v8 = v10[1];
  sub_26B2BC078();
  if (!v8)
  {
    v11 = 1;
    sub_26B2BC0A8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t InspectorPropertyValue.WrappedDictionaryKey.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_26B2BB9E8();
  return MEMORY[0x26D6742C0](v2);
}

uint64_t InspectorPropertyValue.WrappedDictionaryKey.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_26B2BC1E8();
  sub_26B2BB9E8();
  MEMORY[0x26D6742C0](v1);
  return sub_26B2BC238();
}

uint64_t InspectorPropertyValue.WrappedDictionaryKey.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4218, &qword_26B2BDFC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2A3220();
  sub_26B2BC248();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v10 = sub_26B2BBF88();
  v12 = v11;
  v13 = v10;
  v17 = 1;
  v14 = sub_26B2BBFB8();
  (*(v6 + 8))(v9, v5);
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B2A0A70()
{
  v1 = *(v0 + 16);
  sub_26B2BC1E8();
  sub_26B2BB9E8();
  MEMORY[0x26D6742C0](v1);
  return sub_26B2BC238();
}

uint64_t sub_26B2A0AD4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_26B2BB9E8();
  return MEMORY[0x26D6742C0](v2);
}

uint64_t sub_26B2A0B0C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_26B2BC1E8();
  sub_26B2BB9E8();
  MEMORY[0x26D6742C0](v2);
  return sub_26B2BC238();
}

BOOL sub_26B2A0B9C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_26B2BC138();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_26B2A0BF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4220, &qword_26B2BDFC8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26B2BDCF0;
  v1 = type metadata accessor for InspectorProperty();
  v2._countAndFlagsBits = 0x6D6574496C6F6F42;
  v2._object = 0xE800000000000000;
  InspectorPropertyID.init(id:)(v2);
  v22 = v24;
  v23 = v25;
  v18 = 1;
  v19 = 0;
  v20 = 0u;
  v21 = 3;
  InspectorProperty.__allocating_init(id:name:value:isInternal:)(&v22, 0x6D6574496C6F6F42, 0xE800000000000000, &v18, 1);
  *(v0 + 32) = v3;
  v4._countAndFlagsBits = 0x7449656C62756F44;
  v4._object = 0xEA00000000006D65;
  InspectorPropertyID.init(id:)(v4);
  v22 = v24;
  v23 = v25;
  v18 = 0x3FF199999999999ALL;
  v19 = 0;
  v20 = 0u;
  v21 = 2;
  InspectorProperty.__allocating_init(id:name:value:isInternal:)(&v22, 0x7449656C62756F44, 0xEA00000000006D65, &v18, 0);
  *(v0 + 40) = v5;
  v6 = sub_26B2A3274(&qword_2803F4228, type metadata accessor for InspectorProperty, &protocol conformance descriptor for InspectorProperty);
  InspectorCollection.init(from:)(v0, v1, v6, &v18);
  v8 = v18;
  v7 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4230, &qword_26B2BDFD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B2BDD00;
  *(v9 + 32) = 1;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 3;
  *(v9 + 80) = &unk_287BCE7B0;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 25;
  *(v9 + 128) = 128;
  *(v9 + 136) = 0;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 20;
  *(v9 + 176) = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  *(v9 + 184) = 0;
  *(v9 + 192) = 0u;
  *(v9 + 208) = 14;
  *(v9 + 224) = 0xD000000000000011;
  *(v9 + 232) = 0x800000026B2C4250;
  *(v9 + 240) = 0u;
  *(v9 + 256) = 16;
  *(v9 + 272) = xmmword_26B2BDD10;
  *(v9 + 288) = 0u;
  *(v9 + 304) = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4238, &qword_26B2BDFD8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26B2BDD20;
  v24 = 7955819;
  v25 = 0xE300000000000000;
  sub_26B2BBDE8();
  *(v10 + 32) = sub_26B2BBDC8();
  *(v10 + 40) = v11;
  v12 = sub_26B2BBDD8();
  sub_26B2A31CC(&v18);
  *(v10 + 48) = v12;
  *(v10 + 64) = 1;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  v13 = sub_26B2A32BC(v10);
  swift_setDeallocating();
  sub_26B2A3F6C(v10 + 32, &qword_2803F4240, &qword_26B2BDFE0);
  swift_deallocClassInstance();
  *(v9 + 320) = v13;
  *(v9 + 328) = 0;
  *(v9 + 336) = 0u;
  *(v9 + 352) = 26;
  *(v9 + 368) = xmmword_26B2BDD30;
  *(v9 + 384) = 0u;
  *(v9 + 400) = 18;
  *(v9 + 416) = 0x3FF199999999999ALL;
  *(v9 + 424) = 0;
  *(v9 + 432) = 0u;
  *(v9 + 448) = 2;
  *(v9 + 464) = 123;
  *(v9 + 472) = 0;
  *(v9 + 480) = 0u;
  *(v9 + 496) = 19;
  *(v9 + 512) = xmmword_26B2BDD40;
  *(v9 + 528) = 0u;
  *(v9 + 544) = 21;
  *(v9 + 560) = 0xD000000000000012;
  *(v9 + 568) = 0x800000026B2C4270;
  *(v9 + 576) = v8;
  *(v9 + 584) = v7;
  *(v9 + 592) = 22;
  *(v9 + 608) = xmmword_26B2BDD50;
  *(v9 + 624) = v8;
  *(v9 + 632) = v7;
  *(v9 + 640) = 23;
  *(v9 + 656) = 123;
  *(v9 + 688) = 0;
  *(v9 + 680) = 0;
  *(v9 + 664) = 0u;
  *(v9 + 704) = xmmword_26B2BDD60;
  *(v9 + 720) = v8;
  *(v9 + 728) = v7;
  *(v9 + 736) = 24;
  *(v9 + 752) = xmmword_26B2BDD70;
  *(v9 + 768) = 0u;
  *(v9 + 784) = 13;
  *(v9 + 800) = 0x3E4CCCCD3DCCCCCDLL;
  *(v9 + 824) = 0;
  *(v9 + 808) = 0u;
  *(v9 + 832) = 5;
  *(v9 + 848) = xmmword_26B2BDD80;
  *(v9 + 864) = 0u;
  *(v9 + 880) = 6;
  *(v9 + 896) = xmmword_26B2BDD90;
  *(v9 + 912) = 0u;
  *(v9 + 928) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41B0, &unk_26B2BDFA0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26B2BDCE0;
  *(v14 + 32) = 0x3E4CCCCD3DCCCCCDLL;
  *(v14 + 40) = 0x3ECCCCCD3E99999ALL;
  *(v9 + 944) = v14;
  *(v9 + 952) = 0;
  *(v9 + 960) = 0u;
  *(v9 + 976) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A8, &qword_26B2BDF98);
  v15 = swift_allocObject();
  v15[1] = xmmword_26B2BDCD0;
  v15[2] = xmmword_26B2BDD80;
  v15[3] = xmmword_26B2BDDA0;
  v15[4] = xmmword_26B2BDDB0;
  *(v9 + 992) = v15;
  *(v9 + 1000) = 0;
  *(v9 + 1008) = 0u;
  *(v9 + 1024) = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4198, &qword_26B2BDF88);
  v16 = swift_allocObject();
  v16[1] = xmmword_26B2BDCC0;
  v16[2] = xmmword_26B2BDD90;
  v16[3] = xmmword_26B2BDDC0;
  v16[4] = xmmword_26B2BDDD0;
  v16[5] = xmmword_26B2BDDE0;
  *(v9 + 1040) = v16;
  *(v9 + 1048) = 0;
  *(v9 + 1056) = 0u;
  *(v9 + 1072) = 11;
  *(v9 + 1088) = xmmword_26B2BDD90;
  *(v9 + 1104) = 0u;
  *(v9 + 1120) = 8;
  *(v9 + 1136) = xmmword_26B2BDDF0;
  *(v9 + 1152) = 0u;
  *(v9 + 1168) = 4;
  *(v9 + 1184) = 123;
  *(v9 + 1208) = 0;
  *(v9 + 1192) = 0u;
  *(v9 + 1216) = 1;
  *(v9 + 1232) = xmmword_26B2BDE00;
  *(v9 + 1248) = 0u;
  *(v9 + 1264) = 27;
  *(v9 + 1280) = xmmword_26B2BDE10;
  *(v9 + 1296) = 0u;
  *(v9 + 1312) = 12;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return v9;
}

uint64_t sub_26B2A12BC(uint64_t a1, uint64_t a2)
{
  sub_26B2BC1E8();
  swift_getWitnessTable();
  sub_26B2BB798();
  return sub_26B2BC238();
}

uint64_t sub_26B2A1324(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_26B2BB788();
}

uint64_t sub_26B2A1390@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_26B2BB658();
    if (v10)
    {
      v11 = sub_26B2BB678();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_26B2BB668();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_26B2BB658();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_26B2BB678();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_26B2BB668();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26B2A15C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_26B2A1F70(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_26B28F218(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_26B2A1390(v13, a3, a4, &v12);
  v10 = v4;
  sub_26B28F218(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_26B2A1750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26B2BC1E8();
  sub_26B2BB9E8();
  MEMORY[0x26D6742C0](a3);
  v6 = sub_26B2BC238();

  return sub_26B2A17E4(a1, a2, a3, v6);
}

unint64_t sub_26B2A17E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (sub_26B2BC138()) && v14 == a3)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_26B2A18C8(uint64_t a1, uint64_t a2)
{
  v21 = a2 + 64;
  v2 = 1 << *(a2 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a2 + 64);
  v20 = (v2 + 63) >> 6;

  v24 = 0;
  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_8:
      v8 = __clz(__rbit64(v4)) | (v7 << 6);
      v9 = *(a2 + 48) + 24 * v8;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *(a2 + 56) + 48 * v8;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *(v12 + 32);

      sub_26B29B834(v13, v14, v15, v16, v17);
      if (!v10)
      {
        break;
      }

      v4 &= v4 - 1;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v30 = v16;
      v31 = v17;
      v18 = *(a1 + 48);
      v25[2] = *(a1 + 32);
      v25[3] = v18;
      v26 = *(a1 + 64);
      v19 = *(a1 + 16);
      v25[0] = *a1;
      v25[1] = v19;

      sub_26B2BB9E8();

      MEMORY[0x26D6742C0](v11);

      InspectorPropertyValue.hash(into:)(v25);
      sub_26B2A2FB0(v13, v14, v15, v16, v17);
      result = sub_26B2BC238();
      v24 ^= result;
      v6 = v7;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x26D6742C0](v24);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v20)
      {
        goto LABEL_11;
      }

      v4 = *(v21 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B2A1AA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D6742C0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 16;
      sub_26B2BC218();
      sub_26B2BC218();
      sub_26B2BC218();
      result = sub_26B2BC218();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26B2A1B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D6742C0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 16;
      sub_26B2BC218();
      sub_26B2BC218();
      result = sub_26B2BC218();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26B2A1C00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D6742C0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 8;
      sub_26B2BC218();
      result = sub_26B2BC218();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26B2A1C8C(__n128 a1)
{
  sub_26B2BC218();
  sub_26B2BC218();
  sub_26B2BC218();
  return sub_26B2BC218();
}

uint64_t sub_26B2A1D1C(__n128 a1)
{
  sub_26B2BC218();
  sub_26B2BC218();
  return sub_26B2BC218();
}

uint64_t sub_26B2A1D94(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 1)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_26B2A1DCC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_26B2A1E18(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 4)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t sub_26B2A1E74()
{
  result = qword_2803F41B8;
  if (!qword_2803F41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F41B8);
  }

  return result;
}

unint64_t sub_26B2A1EC8()
{
  result = qword_2803F41C0;
  if (!qword_2803F41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F41C0);
  }

  return result;
}

unint64_t sub_26B2A1F1C()
{
  result = qword_2803F41C8;
  if (!qword_2803F41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F41C8);
  }

  return result;
}

uint64_t sub_26B2A1F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_26B2BB658();
  v11 = result;
  if (result)
  {
    result = sub_26B2BB678();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_26B2BB668();
  sub_26B2A1390(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_26B2A2028(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_26B28E8AC(a3, a4);
          return sub_26B2A15C0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s26SpatialInspectorFoundation0B13PropertyValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v51[0] = *a1;
  v51[1] = v3;
  v51[2] = v5;
  v51[3] = v4;
  v52 = v6;
  v53 = v7;
  v54 = v8;
  v55 = v10;
  v56 = v9;
  v57 = v11;
  switch(v6)
  {
    case 1:
      if (v11 == 1)
      {
        goto LABEL_86;
      }

      goto LABEL_98;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_98;
      }

      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      if (*&v2 == *&v7)
      {
        goto LABEL_37;
      }

      goto LABEL_100;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_98;
      }

      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      v18 = v7 ^ v2 ^ 1;
      return v18 & 1;
    case 4:
      if (v11 != 4)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 4);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 4;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 4);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 4;
      goto LABEL_111;
    case 5:
      if (v11 != 5)
      {
        goto LABEL_98;
      }

      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      v18 = *&v2 == *&v7 && *(&v2 + 1) == *(&v7 + 1);
      return v18 & 1;
    case 6:
      if (v11 != 6)
      {
        goto LABEL_98;
      }

      v29.i64[0] = v2;
      v29.i64[1] = v3;
      v46 = v29;
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      v30 = vceq_f32(__PAIR64__(v46.u32[1], v2), v7);
      if ((v30.i32[0] & v30.i32[1] & 1) == 0)
      {
        goto LABEL_100;
      }

      v31.i64[0] = v7;
      v31.i64[1] = v8;
      v18 = vmovn_s32(vceqq_f32(v46, v31)).i8[4];
      return v18 & 1;
    case 7:
      if (v11 == 7)
      {
        goto LABEL_76;
      }

      goto LABEL_98;
    case 8:
      if (v11 != 8)
      {
        goto LABEL_98;
      }

LABEL_76:
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      v18 = 0;
      if (*&v2 == *&v7)
      {
        v32.i64[0] = v2;
        v32.i64[1] = v3;
        v33.i64[0] = v7;
        v33.i64[1] = v8;
        v34 = vmovn_s32(vceqq_f32(v32, v33));
        if (v34.i8[2] & 1) != 0 && (v34.i8[4])
        {
          v18 = v34.i8[6];
        }
      }

      return v18 & 1;
    case 9:
      if (v11 != 9)
      {
        goto LABEL_97;
      }

      v18 = sub_26B29F53C(v2, v7);
      sub_26B29B834(v7, v8, v10, v9, 9);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 9;
      goto LABEL_111;
    case 10:
      if (v11 != 10)
      {
        goto LABEL_97;
      }

      v18 = sub_26B29F5B0(v2, v7);
      sub_26B29B834(v7, v8, v10, v9, 10);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 10;
      goto LABEL_111;
    case 11:
      if (v11 != 11)
      {
        goto LABEL_97;
      }

      v18 = sub_26B29F630(v2, v7);
      sub_26B29B834(v7, v8, v10, v9, 11);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 11;
      goto LABEL_111;
    case 12:
      if (v11 != 12)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 12);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 12;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 12);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 12;
      goto LABEL_111;
    case 13:
      if (v11 != 13)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 13);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 13;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 13);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 13;
      goto LABEL_111;
    case 14:
      if (v11 == 14)
      {
        type metadata accessor for CGColor(0);
        sub_26B29B834(v7, v8, v10, v9, 14);
        sub_26B29B834(v2, v3, v5, v4, 14);
        sub_26B2A3274(&qword_2803F41E0, type metadata accessor for CGColor, &unk_26B2BE8C4);
        v17 = sub_26B2BB788();
        goto LABEL_96;
      }

      v44 = v2;
      goto LABEL_98;
    case 15:
      if (v11 != 15)
      {
        sub_26B28E8AC(v2, v3);
        goto LABEL_98;
      }

      sub_26B29B834(v7, v8, v10, v9, 15);
      sub_26B29B834(v2, v3, v5, v4, 15);
      v17 = sub_26B2A2028(v2, v3, v7, v8);
LABEL_96:
      v37 = v17;
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      return v37 & 1;
    case 16:
      if (v11 != 16)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 16);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 16;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 16);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 16;
      goto LABEL_111;
    case 17:
      if (v11 != 17)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 17);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 17;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 17);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 17;
      goto LABEL_111;
    case 18:
      if (v11 != 18)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 18);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 18;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 18);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 18;
      goto LABEL_111;
    case 19:
      if (v11 == 19)
      {
        goto LABEL_86;
      }

      goto LABEL_98;
    case 20:
      if (v11 != 20)
      {
        goto LABEL_98;
      }

      goto LABEL_86;
    case 21:
      if (v11 != 21)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 21);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 21;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 21);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 21;
LABEL_111:
      sub_26B29B834(v19, v20, v21, v22, v23);
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      return v18 & 1;
    case 22:
      if (v11 != 22)
      {
        goto LABEL_93;
      }

      if (v2 == v7 && v3 == v8 || (sub_26B2BC138() & 1) != 0)
      {
        v49 = v5;
        v50 = v4;
        v47 = v10;
        v48 = v9;
        sub_26B29B834(v7, v8, v10, v9, 22);
        v24 = v2;
        v25 = v3;
        v26 = v5;
        v27 = v4;
        v28 = 22;
        goto LABEL_92;
      }

      sub_26B29B834(v7, v8, v10, v9, 22);
      v39 = v2;
      v40 = v3;
      v41 = v5;
      v42 = v4;
      v43 = 22;
      goto LABEL_99;
    case 23:
      if (v11 != 23)
      {
        goto LABEL_93;
      }

      if (v2 == v7 && v3 == v8 || (sub_26B2BC138() & 1) != 0)
      {
        v49 = v5;
        v50 = v4;
        v47 = v10;
        v48 = v9;
        sub_26B29B834(v7, v8, v10, v9, 23);
        v24 = v2;
        v25 = v3;
        v26 = v5;
        v27 = v4;
        v28 = 23;
        goto LABEL_92;
      }

      sub_26B29B834(v7, v8, v10, v9, 23);
      v39 = v2;
      v40 = v3;
      v41 = v5;
      v42 = v4;
      v43 = 23;
      goto LABEL_99;
    case 24:
      if (v11 != 24)
      {
LABEL_93:

LABEL_97:

LABEL_98:
        v39 = v7;
        v40 = v8;
        v41 = v10;
        v42 = v9;
        v43 = v11;
        goto LABEL_99;
      }

      if ((v2 != v7 || v3 != v8) && (sub_26B2BC138() & 1) == 0)
      {
        sub_26B29B834(v7, v8, v10, v9, 24);
        v39 = v2;
        v40 = v3;
        v41 = v5;
        v42 = v4;
        v43 = 24;
        goto LABEL_99;
      }

      v49 = v5;
      v50 = v4;
      v47 = v10;
      v48 = v9;
      sub_26B29B834(v7, v8, v10, v9, 24);
      v24 = v2;
      v25 = v3;
      v26 = v5;
      v27 = v4;
      v28 = 24;
LABEL_92:
      sub_26B29B834(v24, v25, v26, v27, v28);
      v35 = type metadata accessor for InspectorProperty();
      v36 = sub_26B2A3274(&qword_2803F4228, type metadata accessor for InspectorProperty, &protocol conformance descriptor for InspectorProperty);

      v18 = static InspectorCollection.== infix(_:_:)(&v49, &v47, v35, v36);
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);

      return v18 & 1;
    case 25:
      if (v11 != 25)
      {
        goto LABEL_97;
      }

      sub_26B29B834(v7, v8, v10, v9, 25);
      sub_26B29B834(v2, v3, v5, v4, 25);
      v17 = sub_26B29F6A4(v2, v7);
      goto LABEL_96;
    case 26:
      if (v11 != 26)
      {
        goto LABEL_97;
      }

      sub_26B29B834(v7, v8, v10, v9, 26);
      sub_26B29B834(v2, v3, v5, v4, 26);
      v17 = sub_26B29F7B8(v2, v7);
      goto LABEL_96;
    case 27:
      if (v11 != 27)
      {
        goto LABEL_97;
      }

      if (!v3)
      {

        sub_26B29B834(v7, v8, v10, v9, 27);
        sub_26B29B834(v2, 0, v5, v4, 27);
        sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
        if (v8)
        {
          sub_26B2A2FB0(v7, v8, v10, v9, 27);
LABEL_100:
          v18 = 0;
          return v18 & 1;
        }

LABEL_37:
        v18 = 1;
        return v18 & 1;
      }

      if (!v8)
      {
        sub_26B29B834(v7, 0, v10, v9, 27);
        sub_26B29B834(v7, 0, v10, v9, 27);
        v39 = v2;
        v40 = v3;
        v41 = v5;
        v42 = v4;
        v43 = 27;
LABEL_99:
        sub_26B29B834(v39, v40, v41, v42, v43);
        sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
        goto LABEL_100;
      }

      if (v2 != v7 || v3 != v8)
      {
        v45 = sub_26B2BC138();
        sub_26B29B834(v7, v8, v10, v9, 27);
        sub_26B29B834(v2, v3, v5, v4, 27);
        sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
        if ((v45 & 1) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_37;
      }

      sub_26B29B834(v2, v3, v10, v9, 27);
      v12 = v2;
      v13 = v3;
      v14 = v5;
      v15 = v4;
      v16 = 27;
LABEL_71:
      sub_26B29B834(v12, v13, v14, v15, v16);
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      v18 = 1;
      return v18 & 1;
    default:
      if (v11)
      {
        goto LABEL_98;
      }

LABEL_86:
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      v18 = v2 == v7;
      return v18 & 1;
  }
}

void sub_26B2A2FB0(void *a1, unint64_t a2, uint64_t a3, void *a4, char a5)
{
  switch(a5)
  {
    case 4:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 16:
    case 17:
    case 18:
    case 21:
    case 25:
    case 26:
    case 27:
      goto LABEL_3;
    case 14:

      break;
    case 15:

      sub_26B28F218(a1, a2);
      break;
    case 22:
    case 23:
    case 24:

LABEL_3:

      break;
    default:
      return;
  }
}

unint64_t sub_26B2A30D4()
{
  result = qword_2803F41F0;
  if (!qword_2803F41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F41F0);
  }

  return result;
}

uint64_t sub_26B2A3128(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B2A3220()
{
  result = qword_2803F7080[0];
  if (!qword_2803F7080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F7080);
  }

  return result;
}

uint64_t sub_26B2A3274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26B2A32BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F42C0, &qword_26B2BE8F0);
    v3 = sub_26B2BBEF8();

    v4 = (a1 + 96);
    while (1)
    {
      v20 = v1;
      v5 = *(v4 - 8);
      v6 = *(v4 - 7);
      v7 = *(v4 - 6);
      v8 = *(v4 - 4);
      v9 = *(v4 - 3);
      v10 = *(v4 - 2);
      v11 = *(v4 - 1);
      v12 = *v4;

      sub_26B29B834(v8, v9, v10, v11, v12);
      result = sub_26B2A1750(v5, v6, v7);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 24 * result);
      *v15 = v5;
      v15[1] = v6;
      v15[2] = v7;
      v16 = v3[7] + 48 * result;
      *v16 = v8;
      *(v16 + 8) = v9;
      *(v16 + 16) = v10;
      *(v16 + 24) = v11;
      *(v16 + 32) = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v4 += 80;
      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26B2A341C()
{
  result = qword_2803F4248;
  if (!qword_2803F4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4248);
  }

  return result;
}

unint64_t sub_26B2A3474()
{
  result = qword_2803F4250;
  if (!qword_2803F4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4250);
  }

  return result;
}

unint64_t sub_26B2A34CC()
{
  result = qword_2803F4258;
  if (!qword_2803F4258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4258);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy33_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B2A355C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE5 && *(a1 + 33))
  {
    return (*a1 + 229);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0x1B)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26B2A35A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE4)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 229;
    *(result + 8) = 0;
    if (a3 >= 0xE5)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE5)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26B2A3618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26B2A3660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}