uint64_t sub_2751C42B4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2751C42EC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2751C434C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2751C4384()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2751C43D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465646461 && a2 == 0xE500000000000000;
  if (v4 || (sub_2751CC380() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2751CC380();

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

uint64_t sub_2751C44D4(char a1)
{
  sub_2751CC3D0();
  MEMORY[0x277C6C950](a1 & 1);
  return sub_2751CC3F0();
}

uint64_t sub_2751C451C(char a1)
{
  if (a1)
  {
    return 0x6465766F6D6572;
  }

  else
  {
    return 0x6465646461;
  }
}

uint64_t sub_2751C456C(uint64_t a1)
{
  sub_2751CC3D0();
  sub_2751C44AC(v3, *v1);
  return sub_2751CC3F0();
}

uint64_t sub_2751C45B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2751C43D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2751C4600(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2751C4654(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2751C46B0()
{
  sub_2751CC3D0();
  MEMORY[0x277C6C950](0);
  return sub_2751CC3F0();
}

uint64_t sub_2751C471C(uint64_t a1)
{
  sub_2751CC3D0();
  MEMORY[0x277C6C950](0);
  return sub_2751CC3F0();
}

void *sub_2751C476C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[0] = a2;
  v21[1] = a3;
  v19 = a3;
  v16 = a5;
  v17 = a4;
  v21[2] = a4;
  v21[3] = a5;
  _s4DiffV4TailO10CodingKeysOMa(255, v21);
  swift_getWitnessTable();
  v8 = sub_2751CC320();
  v18 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751CC400();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14[1] = a2;
    v15 = a1;
    v12 = v18;
    sub_2751CC1A0();
    v22 = 0;
    v20 = v19;
    swift_getWitnessTable();
    sub_2751CC310();
    v11 = v21[0];
    (*(v12 + 8))(v10, v8);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return v11;
}

uint64_t sub_2751C4A2C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a2;
  v17 = a3;
  v16[0] = a4;
  v16[1] = a5;
  v13 = a6;
  v16[2] = a6;
  v16[3] = a7;
  _s4DiffV4TailO10CodingKeysOMa(255, v16);
  swift_getWitnessTable();
  v8 = sub_2751CC350();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751CC410();
  if (v17)
  {
    LOBYTE(v16[0]) = 1;
    sub_2751CC330();
  }

  else
  {
    v16[0] = v14;
    v18 = 0;
    sub_2751CC1A0();
    v15 = v13;
    swift_getWitnessTable();
    sub_2751CC340();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2751C4C14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461647075 && a2 == 0xE700000000000000;
  if (v4 || (sub_2751CC380() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1818845556 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2751CC380();

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

uint64_t sub_2751C4D18(char a1)
{
  sub_2751CC3D0();
  MEMORY[0x277C6C950](a1 & 1);
  return sub_2751CC3F0();
}

uint64_t sub_2751C4D60(char a1)
{
  if (a1)
  {
    return 1818845556;
  }

  else
  {
    return 0x64657461647075;
  }
}

void *sub_2751C4D90@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2751C476C(a1, a2[2], a2[3], a2[4], a2[5]);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t sub_2751C4E3C(uint64_t a1)
{
  sub_2751CC3D0();
  sub_2751C4CF0(v3, *v1);
  return sub_2751CC3F0();
}

uint64_t sub_2751C4E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2751C4C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2751C4EF4@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_2751C4F30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2751C4F84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Array<A>.Diff.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v22 = a2[3];
  v23 = v4;
  v5 = a2[4];
  v6 = a2[5];
  v30 = v4;
  v31 = v22;
  v21 = v5;
  v32 = v5;
  v33 = v6;
  _s4DiffV10CodingKeysOMa(255, &v30);
  swift_getWitnessTable();
  v7 = sub_2751CC350();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = *v2;
  v20 = v2[1];
  v34 = *(v2 + 16);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);

  v15 = v23;
  sub_2751CC410();
  v30 = v10;
  LOBYTE(v26) = 0;
  swift_getAssociatedTypeWitness();
  sub_2751CC090();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = MEMORY[0x277D83B90];
  v29 = AssociatedConformanceWitness;
  swift_getWitnessTable();
  v17 = v25;
  sub_2751CC340();
  if (v17)
  {

    return (*(v24 + 8))(v9, v14);
  }

  else
  {
    v19 = v24;

    v26 = v20;
    v27 = v34;
    v35 = 1;
    v30 = v15;
    v31 = v22;
    v32 = v21;
    v33 = v6;
    _s4DiffV4TailOMa(0, &v30);
    swift_getWitnessTable();
    sub_2751CC340();
    return (*(v19 + 8))(v9, v14);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t Array<A>.Diff.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v25 = a6;
  v26 = a2;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v28 = a5;
  _s4DiffV10CodingKeysOMa(255, &v34);
  swift_getWitnessTable();
  v29 = sub_2751CC320();
  v9 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = v11;
  v12 = v38;
  sub_2751CC400();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = a1;
  v13 = v9;
  v14 = v28;
  v15 = v26;
  swift_getAssociatedTypeWitness();
  sub_2751CC090();
  LOBYTE(v30) = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = MEMORY[0x277D83BB8];
  v33 = AssociatedConformanceWitness;
  swift_getWitnessTable();
  v17 = v29;
  v18 = v27;
  sub_2751CC310();
  v19 = v34;
  v34 = v15;
  v35 = a3;
  v36 = a4;
  v37 = v14;
  _s4DiffV4TailOMa(0, &v34);
  LOBYTE(v34) = 1;
  swift_getWitnessTable();
  sub_2751CC310();
  (*(v13 + 8))(v18, v17);
  v20 = v30;
  v21 = v31;
  v22 = v25;
  *v25 = v19;
  v22[1] = v20;
  *(v22 + 16) = v21;

  sub_2751C56C0(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v38);

  return sub_2751C56CC(v20, v21);
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

uint64_t sub_2751C56C0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_2751C56CC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t Array<A>.diff(from:)@<X0>(uint64_t a2@<X1>, uint64_t a7@<X8>)
{
  v7 = sub_2751CC1A0();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x277C6C660](&v18, v7, WitnessTable);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277D83B98];
  sub_2751CC040();
  sub_2751CC2F0();
  sub_2751CC090();
  swift_getWitnessTable();
  sub_2751CC110();

  if ((MEMORY[0x277C6C5F0](a2, v10, AssociatedTypeWitness, v11) & 1) != 0 && (v12 = sub_2751CC170(), v12 == sub_2751CC170()))
  {

    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
  }

  else
  {
    v14 = sub_2751CC170();
    v15 = sub_2751CC170();
    if (v15 < v14)
    {
      sub_2751CC1C0();
      sub_2751CC290();
      swift_getWitnessTable();
      result = sub_2751CC1B0();
    }

    else
    {
      result = v14;
    }

    *a7 = a2;
    *(a7 + 8) = result;
    *(a7 + 16) = v15 >= v14;
  }

  return result;
}

uint64_t sub_2751C59A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a3;
  v39 = a1;
  v40 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_2751CC270();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v38 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v41 = &v35 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v20 = (&v35 - v19);
  v21 = *(a4 - 8);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v35 - v25;
  (*(v27 + 16))(v20, a2, TupleTypeMetadata2);
  v28 = *v20;
  (*(v21 + 32))(v26, v20 + *(TupleTypeMetadata2 + 48), a4);
  if (v28 >= sub_2751CC170())
  {
    return (*(v21 + 8))(v26, a4);
  }

  sub_2751CC1D0();
  (*(v40 + 40))(v24, a4);
  v29 = v42;
  if ((*(v42 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    v30 = *(v21 + 8);
    v30(v24, a4);
    v30(v26, a4);
    return (*(v36 + 8))(v15, v37);
  }

  else
  {
    v32 = v41;
    (*(v29 + 32))(v41, v15, AssociatedTypeWitness);
    v33 = v38;
    (*(v29 + 16))(v38, v32, AssociatedTypeWitness);
    (*(v29 + 56))(v33, 0, 1, AssociatedTypeWitness);
    v44 = v28;
    sub_2751CC090();
    sub_2751CC0B0();
    (*(v29 + 8))(v41, AssociatedTypeWitness);
    v34 = *(v21 + 8);
    v34(v24, a4);
    return (v34)(v26, a4);
  }
}

__int128 *Array<A>.apply(diff:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v19 = a1[1];
  v20 = *(a1 + 16);
  v25 = a2;
  v21 = v11;
  swift_getAssociatedTypeWitness();
  sub_2751CC090();

  swift_getWitnessTable();
  v12 = &v21;
  sub_2751CC120();

  if (!v6)
  {
    if ((v20 & 1) == 0)
    {
      v21 = v19;
      sub_2751CC1A0();

      swift_getWitnessTable();
      sub_2751CC180();
      return v25;
    }

    if (sub_2751CC170() >= v19)
    {
      sub_2751CC1A0();

      swift_getWitnessTable();
      sub_2751CC240();
      sub_2751CC290();
      swift_getWitnessTable();
      v12 = sub_2751CC1B0();

      return v12;
    }

    v21 = a3;
    v22 = a4;
    v23 = a5;
    v24 = a6;
    _s6ErrorsOMa(0, &v21);
    swift_getWitnessTable();
    swift_allocError();
    v14 = v13;
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_2751CC2A0();
    MEMORY[0x277C6C640](0xD00000000000002ELL, 0x80000002751CD0D0);
    v15 = sub_2751CC360();
    MEMORY[0x277C6C640](v15);

    MEMORY[0x277C6C640](0xD000000000000017, 0x80000002751CD100);
    v16 = sub_2751CC360();
    v12 = &v21;
    MEMORY[0x277C6C640](v16);

    v17 = v22;
    *v14 = v21;
    v14[1] = v17;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_2751C6220(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v33 = a2;
  v31 = *(a4 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;

  v17 = sub_2751CC170();

  if (v17 <= a1)
  {
    v32[0] = a4;
    v32[1] = a5;
    v32[2] = v29;
    v32[3] = a7;
    _s6ErrorsOMa(0, v32);
    swift_getWitnessTable();
    swift_allocError();
    v25 = v24;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27 = *(swift_getTupleTypeMetadata2() + 48);
    *v25 = a1;
    (*(*(AssociatedTypeWitness - 8) + 16))(&v25[v27], v33, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    sub_2751CC1D0();
    v18 = v30;
    (*(a7 + 48))(v33, a4, a7);
    v19 = v31;
    result = (*(v31 + 8))(v14, a4);
    if (!v18)
    {
      sub_2751CC1A0();
      sub_2751CC150();
      sub_2751C6D4C(a1, *a3, a4);
      v21 = *a3;
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v23 = v21 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v23 = v21;
      }

      return (*(v19 + 40))(v23 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * a1, v16, a4);
    }
  }

  return result;
}

uint64_t sub_2751C6524(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_2751C6608@<X0>(uint64_t *a1@<X8>)
{
  result = static Array<A>.zero.getter();
  *a1 = result;
  return result;
}

__int128 *sub_2751C6650@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 **a4@<X8>)
{
  result = Array<A>.apply(diff:)(a1, *v4, *(a2 + 16), *(a3 - 8), *(a3 - 16), *(a3 - 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_2751C6690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2751C66F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2751C6740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2751C67A0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2751C6840(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = 16;
  if (v6 > 0x10)
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_25;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_2751C69D0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = ((*(v7 + 80) + 8) & ~*(v7 + 80)) + *(v7 + 64);
  if (v8 <= 0x10)
  {
    v8 = 16;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_2751C6BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2751C6C48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2751C6C90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2751C6D4C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2751C6DE4(unsigned int *a1, int a2)
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

_WORD *sub_2751C6E34(_WORD *result, int a2, int a3)
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

uint64_t sub_2751C6EC0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2751C6F50(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2751C710C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2751CC020();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2751C7154(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000;
  if (v4 || (sub_2751CC380() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465747265736E69 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2751CC380();

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

uint64_t sub_2751C7258(char a1)
{
  sub_2751CC3D0();
  MEMORY[0x277C6C950](a1 & 1);
  return sub_2751CC3F0();
}

uint64_t sub_2751C72A0(char a1)
{
  if (a1)
  {
    return 0x6465747265736E69;
  }

  else
  {
    return 0x6465766F6D6572;
  }
}

uint64_t sub_2751C7394(uint64_t a1)
{
  sub_2751CC3D0();
  sub_2751C7230(v3, *v1);
  return sub_2751CC3F0();
}

uint64_t sub_2751C7428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2751C7154(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2751C747C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_2751C92E0();
  *a2 = result;
  return result;
}

uint64_t sub_2751C74B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2751C750C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Dictionary<>.Diff.encode(to:)(void *a1, uint64_t a2)
{
  v24 = *(a2 + 16);
  v4 = *(a2 + 40);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  v28 = v24;
  v18 = *(a2 + 24);
  v29 = v18;
  v30 = v4;
  v21 = *(a2 + 48);
  v31 = v21;
  v32 = v5;
  v33 = v6;
  v19 = v6;
  v20 = v4;
  _s4DiffV10CodingKeysOMa_0(255, &v28);
  swift_getWitnessTable();
  v7 = sub_2751CC350();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = *v2;
  v17 = v2[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v11 = v7;
  v12 = v20;
  sub_2751CC410();
  v28 = v10;
  v34 = 0;
  sub_2751CC220();
  v27 = v12;
  swift_getWitnessTable();
  v13 = v22;
  sub_2751CC340();

  if (!v13)
  {
    v28 = v17;
    v34 = 1;
    swift_getAssociatedTypeWitness();
    sub_2751CC090();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = v12;
    v26 = AssociatedConformanceWitness;
    swift_getWitnessTable();
    sub_2751CC340();
  }

  return (*(v23 + 8))(v9, v11);
}

uint64_t Dictionary<>.Diff.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v26 = a4;
  v22 = a9;
  v23 = a6;
  v25 = a2;
  v31[0] = a2;
  v31[1] = a3;
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = a6;
  v31[5] = a7;
  v31[6] = a8;
  v31[7] = a10;
  _s4DiffV10CodingKeysOMa_0(255, v31);
  swift_getWitnessTable();
  v24 = sub_2751CC320();
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v21 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v27;
  sub_2751CC400();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = a1;
  v15 = v11;
  sub_2751CC220();
  v32 = 0;
  v30 = v26;
  swift_getWitnessTable();
  v16 = v24;
  sub_2751CC310();
  v21 = v31[0];
  swift_getAssociatedTypeWitness();
  sub_2751CC090();
  v32 = 1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = v26;
  v29 = AssociatedConformanceWitness;
  swift_getWitnessTable();
  sub_2751CC310();
  (*(v15 + 8))(v13, v16);
  v18 = v31[0];
  v19 = v22;
  *v22 = v21;
  v19[1] = v18;

  __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t Dictionary<>.diff(from:)@<X0>(uint64_t a3@<X2>, uint64_t a7@<X6>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_2751CC040();
  sub_2751CC090();
  sub_2751CC090();
  swift_getWitnessTable();
  sub_2751CC110();
  sub_2751CC070();

  swift_getWitnessTable();
  sub_2751CC100();
  sub_2751CC1A0();
  swift_getWitnessTable();
  v13 = sub_2751CC230();
  result = MEMORY[0x277C6C5F0](v17, a3, AssociatedTypeWitness, a7);
  if (result & 1) != 0 && (result = sub_2751CC200(), (result))
  {

    *a9 = 0;
    a9[1] = 0;
  }

  else
  {
    *a9 = v13;
    a9[1] = v17;
  }

  return result;
}

uint64_t sub_2751C7E74(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = a8;
  v69 = a3;
  v61 = a1;
  v65 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = &v53 - v15;
  v67 = v16;
  v17 = sub_2751CC270();
  v54 = *(v17 - 8);
  v55 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v64 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v60 = &v53 - v20;
  v21 = sub_2751CC270();
  v57 = *(v21 - 8);
  v58 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  v26 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v53 - v30;
  v32 = *(a5 - 8);
  MEMORY[0x28223BE20](v29);
  v63 = &v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v25 + 16);
  v34 = (v25 + 16);
  v66 = a2;
  v36 = a2;
  v37 = v35;
  v35(v31, v36, TupleTypeMetadata2);
  v62 = *(TupleTypeMetadata2 + 48);
  sub_2751CC0A0();
  v38 = (*(v32 + 48))(v23, 1, a5);
  v68 = a4;
  v69 = (v32 + 8);
  if (v38 == 1)
  {
    (*(v57 + 8))(v23, v58);
    v63 = v34;
    v64 = *v69;
    (v64)(v62 + v31, a5);
    (*(*(v68 - 8) + 8))(v31, v68);
    v39 = v66;
    v37(v28, v66, TupleTypeMetadata2);
    v40 = *(TupleTypeMetadata2 + 48);
    static Diffable.diff(from:)(v39 + v40, a5, v65);
    sub_2751CC090();
    sub_2751CC0B0();
    return (v64)(&v28[v40], a5);
  }

  else
  {
    v58 = v37;
    v42 = v63;
    (*(v32 + 32))(v63, v23, a5);
    v43 = v62 + v31;
    v62 = *(v32 + 8);
    v62(v43, a5);
    (*(*(v68 - 8) + 8))(v31);
    v44 = v66;
    v45 = v64;
    (*(v65 + 40))(v42, a5);
    v46 = v59;
    v47 = v45;
    v48 = v67;
    if ((*(v59 + 48))(v47, 1, v67) == 1)
    {
      v62(v63, a5);
      return (*(v54 + 8))(v64, v55);
    }

    else
    {
      v49 = v56;
      (*(v46 + 32))(v56, v64, v48);
      v58(v28, v44, TupleTypeMetadata2);
      v50 = *(TupleTypeMetadata2 + 48);
      v51 = v60;
      (*(v46 + 16))(v60, v49, v48);
      (*(v46 + 56))(v51, 0, 1, v48);
      sub_2751CC090();
      sub_2751CC0B0();
      (*(v46 + 8))(v49, v48);
      v52 = v62;
      v62(v63, a5);
      return v52(&v28[v50], a5);
    }
  }
}

BOOL sub_2751C8548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2751CC070();
  swift_getWitnessTable();
  return (sub_2751CC130() & 1) == 0;
}

uint64_t Dictionary<>.apply(diff:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2751CC220();

  swift_getWitnessTable();
  sub_2751CC120();

  swift_getAssociatedTypeWitness();
  sub_2751CC090();
  swift_getWitnessTable();
  sub_2751CC120();

  if (v11)
  {
  }

  return a2;
}

uint64_t sub_2751C87CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_2751CC270();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  MEMORY[0x28223BE20](v11);
  (*(v15 + 16))(&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  (*(*(a4 - 8) + 56))(v13, 1, 1, a4);
  sub_2751CC090();
  return sub_2751CC0B0();
}

uint64_t sub_2751C8948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v32 = a6;
  v33 = a7;
  v31 = a2;
  v30 = a9;
  v29 = a10;
  v15 = sub_2751CC270();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  v28 = *(a4 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a5 - 8);
  MEMORY[0x28223BE20](v19);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v30;
  *&v30 = a3;
  v25 = v34;
  result = sub_2751C8BD4(v31, a5, a8, v24, v27, *(&v27 + 1), v29);
  if (!v25)
  {
    (*(v28 + 16))(v21, a1, a4);
    (*(v22 + 16))(v18, v24, a5);
    (*(v22 + 56))(v18, 0, 1, a5);
    sub_2751CC090();
    sub_2751CC0B0();
    return (*(v22 + 8))(v24, a5);
  }

  return result;
}

uint64_t sub_2751C8BD4@<X0>(uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20[0] = a6;
  v20[1] = a7;
  v21 = a3;
  v22 = a10;
  v11 = sub_2751CC270();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  v16 = *(a5 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2751CC0A0();
  if ((*(v16 + 48))(v15, 1, a5) == 1)
  {
    (*(v12 + 8))(v15, v11);
    return static Diffable.value(from:)(v21, a5, v22);
  }

  else
  {
    (*(v16 + 32))(v18, v15, a5);
    (*(v22 + 48))(v21, a5);
    return (*(v16 + 8))(v18, a5);
  }
}

uint64_t sub_2751C8DFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = static Dictionary<>.zero.getter(a1[2], a1[3], a2, a3, a1[4]);
  *a4 = result;
  return result;
}

uint64_t sub_2751C8E74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Dictionary<>.apply(diff:)(a1, *v4, a2[2], a2[3], *(a3 - 8), *(a3 - 16), a2[4], *(a3 - 24), *(a3 - 32), *(a3 - 40));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_2751C8F78(uint64_t a1)
{
  v3 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_2751C903C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2751C9090(uint64_t *a1, int a2)
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

uint64_t sub_2751C90D8(uint64_t result, int a2, int a3)
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

uint64_t sub_2751C9134(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2751C91C4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2751C92E8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2751C993C();
  v6 = sub_2751CC0C0();
  v7 = *(a2 - 8);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v11 = *(a2 - 8);
    (*(v11 + 16))(a3, v3, a2);
    v7 = v11;
    v8 = 0;
  }

  v9 = *(v7 + 56);

  return v9(a3, v8, 1, a2);
}

uint64_t Diffable<>.diff(from:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = sub_2751CC0C0();
  v9 = *(a2 - 8);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v13 = *(a2 - 8);
    (*(v13 + 16))(a4, v5, a2);
    v9 = v13;
    v10 = 0;
  }

  v11 = *(v9 + 56);

  return v11(a4, v10, 1, a2);
}

uint64_t static Diffable.diff(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v9, v8);
  (*(a3 + 40))(v7, a2, a3);
  return (*(v5 + 8))(v7, a2);
}

uint64_t static Diffable.value(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 32))(v10, v9);
  (*(a3 + 48))(a1, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t Diffable<>.update(work:)(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  [v4 copyWithZone_];
  sub_2751CC280();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  a1(v4);
  v10 = v4;
  (*(a4 + 40))(&v9, a3, a4);
  return swift_unknownObjectRelease();
}

uint64_t sub_2751C98B4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *v2 == *result && v4 == *(result + 8);
  if (v6 || (result = sub_2751CC380(), (result & 1) != 0))
  {
    v5 = 0;
    v4 = 0;
  }

  else
  {
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_2751C991C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

unint64_t sub_2751C993C()
{
  result = qword_2809ABD00[0];
  if (!qword_2809ABD00[0])
  {
    sub_2751CC020();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809ABD00);
  }

  return result;
}

Swift::Double_optional __swiftcall Double.diff(from:)(Swift::Double from)
{
  v2 = v1 - from;
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = LOBYTE(v2);
  }

  result.value = v2;
  result.is_nil = v3;
  return result;
}

double *sub_2751C99D4@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 - *result;
  v4 = v3;
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  *a2 = v4;
  *(a2 + 8) = v3 == 0.0;
  return result;
}

double sub_2751C99FC@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

float *sub_2751C9A64@<X0>(float *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 - *result;
  v4 = v3;
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  *a2 = v4;
  *(a2 + 4) = v3 == 0.0;
  return result;
}

float sub_2751C9A8C@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

Swift::Int_optional __swiftcall Int.diff(from:)(Swift::Int from)
{
  v2 = __OFSUB__(v1, from);
  v3 = v1 - from;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v1) = v3 == 0;
  }

  result.is_nil = v1;
  result.value = v3;
  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Int.apply(diff:)(Swift::Int diff)
{
  v2 = __OFADD__(v1, diff);
  result = v1 + diff;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void *sub_2751C9AE8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (__OFSUB__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    v3 = *v2 == *result;
    *a2 = *v2 - *result;
    *(a2 + 8) = v3;
  }

  return result;
}

void *sub_2751C9B10@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

uint64_t sub_2751C9B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_2751CC2D0();
  sub_2751CC2E0();
  v11 = sub_2751CC0C0();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (v11)
  {
    v12(v10, v4);
    v13 = 1;
  }

  else
  {
    (*(v5 + 32))(a3, v10, v4);
    v13 = 0;
  }

  return (*(v5 + 56))(a3, v13, 1, v4);
}

uint64_t sub_2751C9CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2751CC2C0();
  return (*(v5 + 32))(a3, v7, v4);
}

uint64_t sub_2751C9DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2751CC2E0();
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t sub_2751C9ED0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2751C9F40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2751CA080(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2751CA2B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465747265736E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_2751CC380() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2751CC380();

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

uint64_t sub_2751CA3B4(char a1)
{
  sub_2751CC3D0();
  MEMORY[0x277C6C950](a1 & 1);
  return sub_2751CC3F0();
}

uint64_t sub_2751CA3FC(char a1)
{
  if (a1)
  {
    return 0x6465766F6D6572;
  }

  else
  {
    return 0x6465747265736E69;
  }
}

uint64_t sub_2751CA474(uint64_t a1)
{
  sub_2751CC3D0();
  sub_2751CA38C(v3, *v1);
  return sub_2751CC3F0();
}

uint64_t sub_2751CA4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2751CA2B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2751CA514@<X0>(_BYTE *a2@<X8>)
{
  result = sub_2751CB4F4();
  *a2 = result;
  return result;
}

uint64_t sub_2751CA548(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2751CA59C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Set<>.Diff.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v14 = *(a2 + 16);
  v15 = v4;
  v19[0] = v14;
  v19[1] = v4;
  _s4DiffV10CodingKeysOMa_1(255, v19);
  swift_getWitnessTable();
  v5 = sub_2751CC350();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = *v2;
  v13 = v2[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_2751CC410();
  *&v19[0] = v8;
  v20 = 0;
  sub_2751CC1A0();
  v18 = v15;
  swift_getWitnessTable();
  v9 = v17;
  sub_2751CC340();
  if (v9)
  {

    return (*(v16 + 8))(v7, v5);
  }

  else
  {
    v11 = v16;

    *&v19[0] = v13;
    v20 = 1;
    sub_2751CC340();
    return (*(v11 + 8))(v7, v5);
  }
}

uint64_t Set<>.Diff.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v17 = a6;
  v18 = a3;
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  _s4DiffV10CodingKeysOMa_1(255, v21);
  swift_getWitnessTable();
  v19 = sub_2751CC320();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751CC400();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v8;
  sub_2751CC1A0();
  v22 = 0;
  v20 = v18;
  swift_getWitnessTable();
  v12 = v19;
  sub_2751CC310();
  v13 = v21[0];
  v22 = 1;
  sub_2751CC310();
  (*(v11 + 8))(v10, v12);
  v14 = v21[0];
  v15 = v17;
  *v17 = v13;
  v15[1] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Set<>.apply(diff:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2751CC1A0();

  swift_getWitnessTable();
  sub_2751CC120();

  sub_2751CC120();

  return a2;
}

uint64_t sub_2751CAC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_2751CC270();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  sub_2751CC220();
  sub_2751CC1F0();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2751CAD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v14 - v11;
  (*(v7 + 16))(v10);
  sub_2751CC220();
  sub_2751CC1E0();
  return (*(v7 + 8))(v12, a3);
}

uint64_t Set<>.diff(from:)@<X0>(uint64_t *a7@<X8>)
{
  sub_2751CC220();
  swift_getWitnessTable();
  v7 = sub_2751CC0E0();
  v8 = sub_2751CC0E0();
  sub_2751CC1A0();
  swift_getWitnessTable();
  result = sub_2751CC250();
  if (result & 1) != 0 && (result = sub_2751CC250(), (result))
  {

    *a7 = 0;
    a7[1] = 0;
  }

  else
  {
    *a7 = v7;
    a7[1] = v8;
  }

  return result;
}

uint64_t sub_2751CB0A8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v8 = sub_2751CC210();
  v9 = *(a3 - 8);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    (*(*(a3 - 8) + 16))(a5, a1, a3);
    v10 = 0;
  }

  return (*(v9 + 56))(a5, v10, 1, a3);
}

uint64_t sub_2751CB1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static Set<>.zero.getter(*(a1 + 16), a2, a3, *(a1 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_2751CB220@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Set<>.apply(diff:)(a1, *v4, *(a2 + 16), *(a3 - 8), *(a3 - 16), *(a2 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_2751CB25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2751CB2A4(uint64_t *a1, int a2)
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

uint64_t sub_2751CB2EC(uint64_t result, int a2, int a3)
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

uint64_t sub_2751CB348(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2751CB3D8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t (*combine<A, B, C>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_2751CB6E0;
}

uint64_t sub_2751CB5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getFunctionTypeMetadata3();
  result = sub_2751CC170();
  if (result)
  {
    v12 = 0;
    for (i = a4 + 40; ; i += 16)
    {
      v14 = sub_2751CC160();
      result = sub_2751CC140();
      if ((v14 & 1) == 0)
      {
        break;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_8;
      }

      v16 = *(i - 8);

      v16(a1, a2, a3);

      result = sub_2751CC170();
      ++v12;
      if (v15 == result)
      {
        return result;
      }
    }

    result = sub_2751CC2B0();
    __break(1u);
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t (*pullback<A, B, C, D, E, F, G, H>(_:action:featureConfiguration:generalConfiguration:localConfiguration:topicConfigurations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a3;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a4;
  v16[7] = a5;
  v16[8] = a6;
  v16[9] = a7;

  return sub_2751CBCD4;
}

uint64_t sub_2751CB7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *, char *, char *, char *, char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v53 = a6;
  v54 = a5;
  v51 = a3;
  v52 = a1;
  v47 = a7;
  v48 = a9;
  v49 = a8;
  v50 = a10;
  v46 = *(*a10 + *MEMORY[0x277D84DE8] + 8);
  v45 = *(v46 - 8);
  v10 = MEMORY[0x28223BE20]((*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v39 - v10;
  v44 = *(v12 + v13 + 8);
  v43 = *(v44 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v39 - v15;
  v42 = *(v17 + v18 + 8);
  v41 = *(v42 - 8);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v39 - v20;
  v40 = *(v22 + v23 + 8);
  v39 = *(v40 - 8);
  v24 = MEMORY[0x28223BE20](v19);
  v26 = &v39 - v25;
  v29 = *(v27 + v28 + 8);
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v24);
  v33 = &v39 - v32;
  v34 = *(v29 + 16);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v31);
  v37 = &v39 - v36;
  swift_getAtKeyPath();
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    return (*(v30 + 8))(v33, v29);
  }

  (*(v35 + 32))(v37, v33, v34);
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v54(v52, v37, v26, v21, v16, v11);
  (*(v45 + 8))(v11, v46);
  (*(v43 + 8))(v16, v44);
  (*(v41 + 8))(v21, v42);
  (*(v39 + 8))(v26, v40);
  return (*(v35 + 8))(v37, v34);
}

uint64_t (*(*logging<A, B, C>(log:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  v9 = a1;
  return sub_2751CBE20;
}

uint64_t (*sub_2751CBD88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  v13 = a3;
  return sub_2751CBF44;
}

uint64_t sub_2751CBE2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a4(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ABE88, &unk_2751CD0E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2751CD0D0;
  sub_2751CC370();
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_2751CBFBC();
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  v10 = sub_2751CC260();
  sub_2751CC030("Processed Action %@", 19, 2, &dword_2751C3000, a6, v10, v9);
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

unint64_t sub_2751CBFBC()
{
  result = qword_2811ED460;
  if (!qword_2811ED460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811ED460);
  }

  return result;
}