uint64_t sub_26845DF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3D94();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26845E008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B3D94();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_26845E0C8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26845E0EC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D618B10]();
  *a1 = result;
  return result;
}

uint64_t sub_26845E144()
{

  return swift_deallocObject();
}

uint64_t sub_26845E194(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2E8, &unk_2684B68E0);
  sub_2684B45B4();
  v4 = MEMORY[0x277CE0868];
  sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2684B45B4();
  sub_2684B45B4();
  sub_2684B45B4();
  swift_getTupleTypeMetadata2();
  sub_2684B50F4();
  swift_getWitnessTable();
  sub_2684B4FA4();
  sub_2684B45B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2F8, &qword_2684B8010);
  sub_2684B45B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D300, &unk_2684B68F0);
  sub_2684B45B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2E0, &unk_2684B85F0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26846ACF0(&qword_28027D308, &qword_28027D2F8, &qword_2684B8010, v4);
  swift_getWitnessTable();
  sub_26846ACF0(&qword_28027D310, &qword_28027D300, &unk_2684B68F0, MEMORY[0x277CE08B0]);
  swift_getWitnessTable();
  sub_26846ACF0(&qword_28027D318, &qword_28027D2E0, &unk_2684B85F0, MEMORY[0x277D84470]);
  swift_getOpaqueTypeMetadata2();
  sub_2684B45B4();
  sub_2684B45B4();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  sub_26846B18C(WitnessTable, v1, v2);
  return swift_getWitnessTable();
}

uint64_t sub_26845E544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B40B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26845E610(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B40B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_26845E6E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D378, &qword_2684B6A78);
  sub_2684B3A24();
  sub_26846DA14();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26845E778(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3DC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26845E7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3DC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26845E854()
{
  v1 = *(type metadata accessor for SetTaskAttribute3pSnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_2684B3DC4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

double sub_26845E938@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_26846EEA4(a2, a3, a4);
  sub_2684B4804();
  result = *&v6;
  *a1 = v6;
  return result;
}

void *sub_26845E98C@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_26846EE50(a2, a3, a4);
  result = sub_2684B4804();
  *a1 = v6;
  return result;
}

uint64_t sub_26845E9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B4084();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26845EAA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B4084();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26845EB64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3AD4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26845EBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3AD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26845EC94()
{

  return swift_deallocObject();
}

uint64_t sub_26845ECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2684B4EE4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_26845EE10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2684B4EE4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_26845EF30()
{
  v1 = type metadata accessor for CompletionButton(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150) + 32);
  v4 = sub_2684B41E4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[5];
  v6 = sub_2684B4EE4();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v2 + v1[8];
  if (*(v7 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
  }

  sub_26846B1E0(*(v2 + v1[9]), *(v2 + v1[9] + 8));

  return swift_deallocObject();
}

uint64_t sub_26845F0C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D658, &qword_2684B71D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26845F158()
{
  v1 = type metadata accessor for CompletionButton(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150) + 32);
  v4 = sub_2684B41E4();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  v5 = v1[5];
  v6 = sub_2684B4EE4();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  v7 = v0 + v2 + v1[8];
  if (*(v7 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
  }

  sub_26846B1E0(*(v0 + v2 + v1[9]), *(v0 + v2 + v1[9] + 8));

  return swift_deallocObject();
}

uint64_t sub_26845F31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B4084();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26845F418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B4084();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26845F52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D710, &qword_2684B7418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26845F59C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D710, &qword_2684B7418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26845F64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3FB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2684B52B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26845F73C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3FB4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2684B52B4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26845F848(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B41E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26845F8B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B41E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26845F924@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2684B4784();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26845F990()
{
  v1 = sub_2684B37F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for LinkAttachmentViewInternal(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v8 = sub_2684B4034();
  (*(*(v8 - 8) + 8))(v0 + v6, v8);

  return swift_deallocObject();
}

uint64_t sub_26845FB04()
{

  return swift_deallocObject();
}

uint64_t sub_26845FBC8()
{

  return swift_deallocObject();
}

uint64_t sub_26845FC10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684B46C4();
  *a1 = result;
  return result;
}

uint64_t sub_26845FCAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D968, &qword_2684B7C08);
  sub_26847C330();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26845FD14()
{
  v1 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v7 = *&v8[0];
  v8[1] = v1;
  v2 = (type metadata accessor for DIButton(0, v8) - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  (*(*(v7 - 8) + 8))(v3);

  v4 = v2[16];
  v5 = sub_2684B52B4();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  return swift_deallocObject();
}

uint64_t sub_26845FE44(uint64_t a1)
{
  sub_2684B4F84();

  return swift_getWitnessTable();
}

uint64_t sub_26845FE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2684B52B4();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26845FF48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_2684B52B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26845FFEC()
{

  return swift_deallocObject();
}

uint64_t sub_268460030()
{

  return swift_deallocObject();
}

uint64_t sub_268460068()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA68, &unk_2684B7D50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA58, &qword_2684B7D40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA60, &qword_2684B7D48);
  sub_26847E17C();
  swift_getOpaqueTypeConformance2();
  sub_26846ACF0(&qword_28027DAB8, &qword_28027DA58, &qword_2684B7D40, MEMORY[0x277CDF728]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_268460170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B41E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB60, &unk_2684B7DF0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26846026C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B41E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB60, &unk_2684B7DF0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_268460374()
{
  sub_26846D468(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_2684603E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3EF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_26846050C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3EF4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_268460620@<X0>(uint64_t a1@<X8>)
{
  result = sub_2684B47A4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2684606C8()
{

  return swift_deallocObject();
}

uint64_t sub_26846071C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DC98, &qword_2684B81B8);
  sub_2684817A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_268460780(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3924();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2684607EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3924();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2684608A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D0, &qword_2684B7560);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26846097C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D0, &qword_2684B7560);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_268460A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 96);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_268460B5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 96) = (a2 - 1);
  }

  return result;
}

uint64_t sub_268460C78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684B41A4();
  *a1 = result;
  return result;
}

uint64_t sub_268460D34()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DDE0, &qword_2684B8620);
  sub_268488508();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_268460D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3D24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2684B52B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_268460E8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3D24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2684B52B4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_268460F8C()
{
  sub_26846D468(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_268461004()
{
  v1 = sub_2684B40B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for ReminderComposeSnippet(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = sub_2684B3D24();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = v5[7];
  v9 = sub_2684B52B4();
  (*(*(v9 - 8) + 8))(v0 + v6 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_268461208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2684612D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26846139C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684B47C4();
  *a1 = result;
  return result;
}

uint64_t sub_2684613F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E220, &qword_2684B8C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268461460()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E238, &qword_2684B8C78);
  sub_2684B48F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E230, &qword_2684B8C70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E228, &qword_2684B8C68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E220, &qword_2684B8C60);
  sub_268494514();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2684947B8(&qword_28027E280, MEMORY[0x277CDDF20], MEMORY[0x277CDDF18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_268461604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3924();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2684B3974();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268461718(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3924();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2684B3974();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_26846186C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2684618E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3924();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_2684B3974();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_2684619FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3924();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2684B3974();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_268461B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3DD4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_268461B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3DD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_268461C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B4184();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_268461CF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B4184();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_268461DAC()
{
  v1 = (type metadata accessor for AppLinkView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_2684B4184();
  (*(*(v3 - 8) + 8))(v2, v3);
  sub_26845E0C8(*(v2 + v1[7]), *(v2 + v1[7] + 8));
  v4 = *(v2 + v1[8]);
  if (v4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_268461EC8()
{

  return swift_deallocObject();
}

uint64_t sub_268461F10()
{

  return swift_deallocObject();
}

uint64_t sub_268461F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3924();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_268462018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B3924();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_268462104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3B24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2684B52B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2684621F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3B24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2684B52B4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26846233C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3E74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_2684B52B4();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_268462448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3E74();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2684B52B4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_268462554()
{
  v1 = (type metadata accessor for RemindersAppPunchoutModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_2684B3E74();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = sub_2684B52B4();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  sub_26846B1E0(*(v2 + v1[8]), *(v2 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t sub_268462688()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E560, &qword_2684B9920);
  sub_26849C64C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2684626EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3CF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_268462758(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3CF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2684627FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2684B52B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2684628A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2684B52B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_268462950()
{

  return swift_deallocObject();
}

uint64_t sub_26846298C()
{

  return swift_deallocObject();
}

uint64_t sub_2684629C4()
{
  sub_26846D468(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_268462A08(void *a1)
{
  swift_getTupleTypeMetadata2();
  sub_2684B5664();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DAB0, &unk_2684B9A90);
  sub_2684B45B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA58, &qword_2684B7D40);
  sub_26846ACF0(&qword_28027DAA8, &qword_28027DAB0, &unk_2684B9A90, MEMORY[0x277CE0470]);
  swift_getWitnessTable();
  sub_26846ACF0(&qword_28027DAB8, &qword_28027DA58, &qword_2684B7D40, MEMORY[0x277CDF728]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  sub_2684B5034();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_2684B5254();
  sub_2684B45B4();
  WitnessTable = swift_getWitnessTable();
  sub_26846B18C(WitnessTable, v1, v2);
  return swift_getWitnessTable();
}

uint64_t sub_268462CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_268462DAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B3CF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_268462E68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684B4724();
  *a1 = result;
  return result;
}

uint64_t sub_268462EC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E748, &qword_2684B9D48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268462F30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E750, &qword_2684B9D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268462FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3B84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_268463020(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3B84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_268463090()
{
  v1 = *(type metadata accessor for CreateNote3pSnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_2684B3B84();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_268463174()
{
  sub_26846D468(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_2684631BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B40F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2684632B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B40F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2684633D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3E64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 80);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_268463494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B3E64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 80) = (a2 - 1);
  }

  return result;
}

uint64_t sub_268463550()
{
  v1 = sub_2684B3CF4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for ReminderSearchResult1pSnippet(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = sub_2684B3E64();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = v0 + v6 + v5[7];
  sub_26845E0C8(*v8, *(v8 + 8));
  sub_26845E0C8(*(v8 + 16), *(v8 + 24));
  sub_26845E0C8(*(v8 + 32), *(v8 + 40));
  sub_26845E0C8(*(v8 + 48), *(v8 + 56));

  return swift_deallocObject();
}

void *sub_2684636F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_2684A6B08(a2, a3, a4);
  result = sub_2684B4804();
  *a1 = v6;
  return result;
}

uint64_t sub_26846379C()
{
  v1 = (type metadata accessor for ReminderSearchResult1pSnippet(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2684B3CF4();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = sub_2684B3E64();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  v8 = v0 + v2 + v1[7];
  sub_26845E0C8(*v8, *(v8 + 8));
  sub_26845E0C8(*(v8 + 16), *(v8 + 24));
  sub_26845E0C8(*(v8 + 32), *(v8 + 40));
  sub_26845E0C8(*(v8 + 48), *(v8 + 56));

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_268463944()
{

  return swift_deallocObject();
}

uint64_t sub_26846397C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3E34();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2684639E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3E34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_268463A5C()
{
  v1 = *(type metadata accessor for ReminderSearchResult1pSnippet.SectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_2684B3E34();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_268463B78()
{

  return swift_deallocObject();
}

uint64_t sub_268463BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3CE4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_268463C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3CE4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_268463CAC()
{

  return swift_deallocObject();
}

uint64_t sub_268463CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3E34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_268463DE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3E34();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void *sub_268463EF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_26849A6FC(a2, a3, a4);
  result = sub_2684B4804();
  *a1 = v6;
  return result;
}

uint64_t sub_26846401C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027ED98, &unk_2684BADF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684640D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_268464190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B3CF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_268464270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3C84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 80);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_268464330(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B3C84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 80) = (a2 - 1);
  }

  return result;
}

uint64_t sub_268464408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE80, &qword_2684BB198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268464478(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE80, &qword_2684BB198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268464550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderEnvironmentSetupModifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2684B45B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  sub_268464850(v6);
  MEMORY[0x26D6191B0](v6, a1, v4, a2);
  sub_268467AAC(v6, type metadata accessor for ReminderEnvironmentSetupModifier);
  v11 = sub_268466FB0(&qword_28027D008, type metadata accessor for ReminderEnvironmentSetupModifier, &unk_2684B81F4);
  v14[0] = a2;
  v14[1] = v11;
  swift_getWitnessTable();
  v12 = sub_2684B4BC4();
  (*(v8 + 8))(v10, v7);
  return v12;
}

uint64_t sub_268464730()
{
  sub_2684B5A64();
  MEMORY[0x26D619E40](0);
  return sub_2684B5A94();
}

uint64_t sub_26846479C(uint64_t a1)
{
  sub_2684B5A64();
  MEMORY[0x26D619E40](0);
  return sub_2684B5A94();
}

uint64_t sub_268464804@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_268464850@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D070, &qword_2684B6308);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = [objc_opt_self() sharedPreferences];
  v6 = [v5 languageCode];

  if (v6)
  {
    sub_2684B5554();

    sub_2684B38A4();
    v7 = sub_2684B3924();
    v8 = *(v7 - 8);
    (*(v8 + 56))(v4, 0, 1, v7);
    return (*(v8 + 32))(a1, v4, v7);
  }

  else
  {
    v10 = sub_2684B3924();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v4, 1, 1, v10);
    sub_2684B38E4();
    result = (*(v11 + 48))(v4, 1, v10);
    if (result != 1)
    {
      return sub_268467A4C(v4, &qword_28027D070, &qword_2684B6308);
    }
  }

  return result;
}

uint64_t sub_268464A64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684B4664();
  *a1 = result;
  return result;
}

void *sub_268464AB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_268467BB4(a2, a3, a4);
  result = sub_2684B4804();
  *a1 = v6;
  return result;
}

uint64_t sub_268464B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2684B4624();
  *a1 = result & 1;
  return result;
}

uint64_t sub_268464C00()
{
  v1 = *v0;
  sub_2684B5A64();
  MEMORY[0x26D619E40](v1);
  return sub_2684B5A94();
}

uint64_t sub_268464C74(uint64_t a1)
{
  v2 = *v1;
  sub_2684B5A64();
  MEMORY[0x26D619E40](v2);
  return sub_2684B5A94();
}

void *sub_268464CCC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_268464D1C@<D0>(uint64_t (*a2)(void)@<X1>, _OWORD *a4@<X8>)
{
  a2();
  sub_2684B53E4();
  result = *&v6;
  *a4 = v6;
  return result;
}

char *sub_268464D78(uint64_t a1)
{
  v195 = a1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF50, &qword_2684B61F8);
  MEMORY[0x28223BE20](v132);
  v131 = &v128 - v1;
  v2 = type metadata accessor for SimpleConfirmationSnippetView(0);
  MEMORY[0x28223BE20](v2 - 8);
  v129 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2684B3DD4();
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v138 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF58, &qword_2684B6200);
  MEMORY[0x28223BE20](v137);
  v136 = &v128 - v5;
  v6 = type metadata accessor for SearchForNotebookItems3pSnippet(0);
  MEMORY[0x28223BE20](v6 - 8);
  v134 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_2684B3CE4();
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v144 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF60, &qword_2684B6208);
  MEMORY[0x28223BE20](v143);
  v142 = &v128 - v9;
  v139 = type metadata accessor for NoteSearchResult1pSnippet(0);
  MEMORY[0x28223BE20](v139);
  v141 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_2684B3D94();
  v140 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v150 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF68, &qword_2684B6210);
  MEMORY[0x28223BE20](v156);
  v155 = (&v128 - v12);
  v163 = sub_2684B3AF4();
  v154 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v153 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF70, &qword_2684B6218);
  MEMORY[0x28223BE20](v162);
  v161 = &v128 - v14;
  v15 = type metadata accessor for SetTaskAttribute3pSnippet(0);
  MEMORY[0x28223BE20](v15 - 8);
  v159 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_2684B3DC4();
  v158 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v157 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF78, &qword_2684B6220);
  MEMORY[0x28223BE20](v169);
  v168 = &v128 - v18;
  v19 = type metadata accessor for AddTasks3pSnippet(0);
  MEMORY[0x28223BE20](v19 - 8);
  v166 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_2684B3AD4();
  v165 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v164 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF80, &qword_2684B6228);
  MEMORY[0x28223BE20](v183);
  v182 = &v128 - v22;
  v177 = type metadata accessor for ReminderSearchResult1pSnippet(0);
  MEMORY[0x28223BE20](v177);
  v180 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_2684B3E64();
  v179 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v178 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF88, &qword_2684B6230);
  MEMORY[0x28223BE20](v190);
  v189 = &v128 - v25;
  v184 = type metadata accessor for ReminderDetail1pSnippet(0);
  MEMORY[0x28223BE20](v184);
  v187 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_2684B3C84();
  v186 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v185 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF90, &qword_2684B6238);
  MEMORY[0x28223BE20](v176);
  v175 = &v128 - v28;
  v170 = type metadata accessor for ReminderComposeSnippet(0);
  MEMORY[0x28223BE20](v170);
  v173 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_2684B3D24();
  v172 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v171 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2684B3C54();
  v192 = *(v31 - 8);
  v193 = v31;
  MEMORY[0x28223BE20](v31);
  v191 = &v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF98, &qword_2684B6240);
  MEMORY[0x28223BE20](v149);
  v148 = &v128 - v33;
  Note3pSnippet = type metadata accessor for CreateNote3pSnippet(0);
  MEMORY[0x28223BE20](Note3pSnippet - 8);
  v146 = &v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_2684B3B84();
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v152 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CFA0, &qword_2684B6248);
  MEMORY[0x28223BE20](v194);
  v38 = &v128 - v37;
  v39 = type metadata accessor for AppPunchoutSnippet(0);
  MEMORY[0x28223BE20](v39);
  v41 = &v128 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2684B3B24();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v128 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2684B41F4();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = &v128 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 16))(v49, v195, v46);
  v50 = (*(v47 + 88))(v49, v46);
  if (v50 == *MEMORY[0x277D5DFE0])
  {
    (*(v47 + 96))(v49, v46);
    (*(v43 + 32))(v45, v49, v42);
    (*(v43 + 16))(v41, v45, v42);
    sub_2684B52A4();
    v53 = &v38[*(v194 + 36)];
    sub_268464850(v53);
    v195 = *(type metadata accessor for NotebookEnvironmentSetupModifier(0) + 20);
    v54 = [objc_opt_self() standardUserDefaults];
    v55 = sub_2684B5544();
    v56 = [v54 BOOLForKey_];

    *(v53 + v195) = v56;
    sub_2684678F8(v41, v38, type metadata accessor for AppPunchoutSnippet);
    sub_268467960();
    v49 = sub_2684B4BC4();
    sub_268467A4C(v38, &qword_28027CFA0, &qword_2684B6248);
    sub_268467AAC(v41, type metadata accessor for AppPunchoutSnippet);
    (*(v43 + 8))(v45, v42);
    return v49;
  }

  if (v50 == *MEMORY[0x277D5E0A8])
  {
    (*(v47 + 96))(v49, v46);
    v58 = v191;
    v57 = v192;
    v59 = v193;
    (*(v192 + 32))(v191, v49, v193);
    sub_26849D39C(&v196);
    v60 = v197;
    v61 = v198;
    __swift_project_boxed_opaque_existential_1(&v196, v197);
    v49 = sub_268464550(v60, v61);
    (*(v57 + 8))(v58, v59);
    __swift_destroy_boxed_opaque_existential_1(&v196);
    return v49;
  }

  if (v50 == *MEMORY[0x277D5E0B0])
  {
    (*(v47 + 96))(v49, v46);
    v64 = v185;
    v63 = v186;
    v65 = v188;
    (*(v186 + 32))(v185, v49, v188);
    v66 = v187;
    (*(v63 + 16))(v187, v64, v65);
    v67 = v184;
    v68 = v66 + *(v184 + 20);
    *v68 = swift_getKeyPath();
    *(v68 + 8) = 0;
    *(v68 + 16) = swift_getKeyPath();
    *(v68 + 24) = 0;
    *(v68 + 32) = swift_getKeyPath();
    *(v68 + 40) = 0;
    *(v68 + 48) = swift_getKeyPath();
    *(v68 + 56) = 0;
    *(v68 + 64) = xmmword_2684B6170;
    *(v68 + 80) = sub_268464CDC;
    *(v68 + 88) = 0;
    *(v68 + 96) = xmmword_2684B6170;
    v69 = v66 + *(v67 + 24);
    *v69 = swift_getKeyPath();
    *(v69 + 8) = 0;
    v70 = v189;
    sub_268464850(&v189[*(v190 + 36)]);
    sub_2684678F8(v66, v70, type metadata accessor for ReminderDetail1pSnippet);
    sub_2684675A4();
    v49 = sub_2684B4BC4();
    sub_268467A4C(v70, &qword_28027CF88, &qword_2684B6230);
    v71 = type metadata accessor for ReminderDetail1pSnippet;
LABEL_10:
    sub_268467AAC(v66, v71);
    (*(v63 + 8))(v64, v65);
    return v49;
  }

  if (v50 == *MEMORY[0x277D5E128])
  {
    (*(v47 + 96))(v49, v46);
    v63 = v179;
    v64 = v178;
    v65 = v181;
    (*(v179 + 32))(v178, v49, v181);
    v66 = v180;
    (*(v63 + 16))(v180, v64, v65);
    v72 = v66 + *(v177 + 20);
    *v72 = swift_getKeyPath();
    *(v72 + 8) = 0;
    *(v72 + 16) = swift_getKeyPath();
    *(v72 + 24) = 0;
    *(v72 + 32) = swift_getKeyPath();
    *(v72 + 40) = 0;
    *(v72 + 48) = swift_getKeyPath();
    *(v72 + 56) = 0;
    *(v72 + 64) = xmmword_2684B6170;
    *(v72 + 80) = sub_268464CFC;
    *(v72 + 88) = 0;
    *(v72 + 96) = xmmword_2684B6170;
    v73 = v182;
    sub_268464850(&v182[*(v183 + 36)]);
    sub_2684678F8(v66, v73, type metadata accessor for ReminderSearchResult1pSnippet);
    sub_2684674B8();
    v49 = sub_2684B4BC4();
    sub_268467A4C(v73, &qword_28027CF80, &qword_2684B6228);
    v71 = type metadata accessor for ReminderSearchResult1pSnippet;
    goto LABEL_10;
  }

  if (v50 == *MEMORY[0x277D5E0C0])
  {
    (*(v47 + 96))(v49, v46);
    v63 = v172;
    v64 = v171;
    v65 = v174;
    (*(v172 + 32))(v171, v49, v174);
    v66 = v173;
    (*(v63 + 16))(v173, v64, v65);
    sub_2684B52A4();
    v74 = v175;
    sub_268464850(&v175[*(v176 + 36)]);
    sub_2684678F8(v66, v74, type metadata accessor for ReminderComposeSnippet);
    sub_268467690();
    v49 = sub_2684B4BC4();
    sub_268467A4C(v74, &qword_28027CF90, &qword_2684B6238);
    v71 = type metadata accessor for ReminderComposeSnippet;
    goto LABEL_10;
  }

  if (v50 == *MEMORY[0x277D5DFD8])
  {
    (*(v47 + 96))(v49, v46);
    v63 = v165;
    v64 = v164;
    v65 = v167;
    (*(v165 + 32))(v164, v49, v167);
    v66 = v166;
    (*(v63 + 16))(v166, v64, v65);
    v75 = v168;
    sub_268464850(&v168[*(v169 + 36)]);
    sub_2684678F8(v66, v75, type metadata accessor for AddTasks3pSnippet);
    sub_2684673CC();
    v49 = sub_2684B4BC4();
    sub_268467A4C(v75, &qword_28027CF78, &qword_2684B6220);
    v71 = type metadata accessor for AddTasks3pSnippet;
    goto LABEL_10;
  }

  if (v50 == *MEMORY[0x277D5E108])
  {
    (*(v47 + 96))(v49, v46);
    v63 = v158;
    v64 = v157;
    v65 = v160;
    (*(v158 + 32))(v157, v49, v160);
    v66 = v159;
    (*(v63 + 16))(v159, v64, v65);
    v76 = v161;
    sub_268464850(&v161[*(v162 + 36)]);
    sub_2684678F8(v66, v76, type metadata accessor for SetTaskAttribute3pSnippet);
    sub_2684672E0();
    v49 = sub_2684B4BC4();
    sub_268467A4C(v76, &qword_28027CF70, &qword_2684B6218);
    v71 = type metadata accessor for SetTaskAttribute3pSnippet;
    goto LABEL_10;
  }

  if (v50 == *MEMORY[0x277D5E010])
  {
    (*(v47 + 96))(v49, v46);
    v77 = v154;
    v78 = v153;
    (*(v154 + 32))(v153, v49, v163);
    v79 = sub_2684B3AE4();
    v194 = v80;
    v195 = v79;
    v81 = v155;
    v82 = v155 + *(v156 + 36);
    sub_268464850(v82);
    v83 = *(type metadata accessor for NotebookEnvironmentSetupModifier(0) + 20);
    v84 = [objc_opt_self() standardUserDefaults];
    v85 = sub_2684B5544();
    v86 = [v84 BOOLForKey_];

    *(v82 + v83) = v86;
    v87 = v194;
    *v81 = v195;
    v81[1] = v87;
    sub_2684671D0();
    v49 = sub_2684B4BC4();
    sub_268467A4C(v81, &qword_28027CF68, &qword_2684B6210);
    (*(v77 + 8))(v78, v163);
  }

  else if (v50 == *MEMORY[0x277D5E008])
  {
    (*(v47 + 96))(v49, v46);
    v88 = v145;
    v89 = v152;
    v90 = v147;
    (*(v145 + 32))(v152, v49, v147);
    v91 = v146;
    (*(v88 + 16))(v146, v89, v90);
    v92 = v148;
    v93 = &v148[*(v149 + 36)];
    sub_268464850(v93);
    v195 = *(type metadata accessor for NotebookEnvironmentSetupModifier(0) + 20);
    v94 = [objc_opt_self() standardUserDefaults];
    v95 = sub_2684B5544();
    v96 = [v94 BOOLForKey_];

    *(v93 + v195) = v96;
    sub_2684678F8(v91, v92, type metadata accessor for CreateNote3pSnippet);
    sub_26846780C();
    v49 = sub_2684B4BC4();
    sub_268467A4C(v92, &qword_28027CF98, &qword_2684B6240);
    sub_268467AAC(v91, type metadata accessor for CreateNote3pSnippet);
    (*(v88 + 8))(v152, v90);
  }

  else if (v50 == *MEMORY[0x277D5E100])
  {
    (*(v47 + 96))(v49, v46);
    v97 = v140;
    v98 = v150;
    v99 = v151;
    (*(v140 + 32))(v150, v49, v151);
    v100 = v141;
    (*(v97 + 16))(v141, v98, v99);
    v101 = v139;
    v102 = v100 + *(v139 + 20);
    *v102 = swift_getKeyPath();
    *(v102 + 8) = 0;
    v103 = v100 + *(v101 + 24);
    *v103 = swift_getKeyPath();
    *(v103 + 8) = 0;
    v104 = v142;
    v105 = &v142[*(v143 + 36)];
    sub_268464850(v105);
    v106 = *(type metadata accessor for NotebookEnvironmentSetupModifier(0) + 20);
    v107 = [objc_opt_self() standardUserDefaults];
    v108 = sub_2684B5544();
    v109 = [v107 BOOLForKey_];

    *(v105 + v106) = v109;
    sub_2684678F8(v100, v104, type metadata accessor for NoteSearchResult1pSnippet);
    sub_2684670E4();
    v49 = sub_2684B4BC4();
    sub_268467A4C(v104, &qword_28027CF60, &qword_2684B6208);
    sub_268467AAC(v100, type metadata accessor for NoteSearchResult1pSnippet);
    (*(v97 + 8))(v150, v151);
  }

  else if (v50 == *MEMORY[0x277D5E0B8])
  {
    (*(v47 + 96))(v49, v46);
    v110 = v133;
    v111 = v144;
    v112 = v135;
    (*(v133 + 32))(v144, v49, v135);
    v113 = v134;
    (*(v110 + 16))(v134, v111, v112);
    v114 = v136;
    v115 = &v136[*(v137 + 36)];
    sub_268464850(v115);
    v195 = *(type metadata accessor for NotebookEnvironmentSetupModifier(0) + 20);
    v116 = [objc_opt_self() standardUserDefaults];
    v117 = sub_2684B5544();
    v118 = [v116 BOOLForKey_];

    *(v115 + v195) = v118;
    sub_2684678F8(v113, v114, type metadata accessor for SearchForNotebookItems3pSnippet);
    sub_268466FF8();
    v49 = sub_2684B4BC4();
    sub_268467A4C(v114, &qword_28027CF58, &qword_2684B6200);
    sub_268467AAC(v113, type metadata accessor for SearchForNotebookItems3pSnippet);
    (*(v110 + 8))(v144, v112);
  }

  else if (v50 == *MEMORY[0x277D5E110])
  {
    (*(v47 + 96))(v49, v46);
    v119 = v128;
    v120 = v138;
    v121 = v130;
    (*(v128 + 32))(v138, v49, v130);
    v122 = v129;
    (*(v119 + 16))(v129, v120, v121);
    v123 = v131;
    v124 = &v131[*(v132 + 36)];
    sub_268464850(v124);
    v195 = *(type metadata accessor for NotebookEnvironmentSetupModifier(0) + 20);
    v125 = [objc_opt_self() standardUserDefaults];
    v126 = sub_2684B5544();
    v127 = [v125 BOOLForKey_];

    *(v124 + v195) = v127;
    sub_2684678F8(v122, v123, type metadata accessor for SimpleConfirmationSnippetView);
    sub_268466E7C();
    v49 = sub_2684B4BC4();
    sub_268467A4C(v123, &qword_28027CF50, &qword_2684B61F8);
    sub_268467AAC(v122, type metadata accessor for SimpleConfirmationSnippetView);
    (*(v119 + 8))(v138, v121);
  }

  else
  {
    sub_268466E28(v50, v51, v52);
    swift_allocError();
    swift_willThrow();
    (*(v47 + 8))(v49, v46);
  }

  return v49;
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

unint64_t sub_268466E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027CFA8;
  if (!qword_28027CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFA8);
  }

  return result;
}

unint64_t sub_268466E7C()
{
  result = qword_28027CFB0;
  if (!qword_28027CFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF50, &qword_2684B61F8);
    sub_268466FB0(&qword_28027CFB8, type metadata accessor for SimpleConfirmationSnippetView, &unk_2684B9530);
    sub_268466FB0(&qword_28027CFC0, type metadata accessor for NotebookEnvironmentSetupModifier, &unk_2684B9684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFB0);
  }

  return result;
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

uint64_t sub_268466FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_268466FF8()
{
  result = qword_28027CFC8;
  if (!qword_28027CFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF58, &qword_2684B6200);
    sub_268466FB0(&qword_28027CFD0, type metadata accessor for SearchForNotebookItems3pSnippet, &unk_2684BA4F0);
    sub_268466FB0(&qword_28027CFC0, type metadata accessor for NotebookEnvironmentSetupModifier, &unk_2684B9684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFC8);
  }

  return result;
}

unint64_t sub_2684670E4()
{
  result = qword_28027CFD8;
  if (!qword_28027CFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF60, &qword_2684B6208);
    sub_268466FB0(&qword_28027CFE0, type metadata accessor for NoteSearchResult1pSnippet, &unk_2684B64DC);
    sub_268466FB0(&qword_28027CFC0, type metadata accessor for NotebookEnvironmentSetupModifier, &unk_2684B9684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFD8);
  }

  return result;
}

unint64_t sub_2684671D0()
{
  result = qword_28027CFE8;
  if (!qword_28027CFE8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF68, &qword_2684B6210);
    sub_26846728C(v1, v2, v3);
    sub_268466FB0(&qword_28027CFC0, type metadata accessor for NotebookEnvironmentSetupModifier, &unk_2684B9684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFE8);
  }

  return result;
}

unint64_t sub_26846728C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027CFF0;
  if (!qword_28027CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFF0);
  }

  return result;
}

unint64_t sub_2684672E0()
{
  result = qword_28027CFF8;
  if (!qword_28027CFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF70, &qword_2684B6218);
    sub_268466FB0(&qword_28027D000, type metadata accessor for SetTaskAttribute3pSnippet, &unk_2684B6AAC);
    sub_268466FB0(&qword_28027D008, type metadata accessor for ReminderEnvironmentSetupModifier, &unk_2684B81F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFF8);
  }

  return result;
}

unint64_t sub_2684673CC()
{
  result = qword_28027D010;
  if (!qword_28027D010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF78, &qword_2684B6220);
    sub_268466FB0(&qword_28027D018, type metadata accessor for AddTasks3pSnippet, &unk_2684B6D54);
    sub_268466FB0(&qword_28027D008, type metadata accessor for ReminderEnvironmentSetupModifier, &unk_2684B81F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D010);
  }

  return result;
}

unint64_t sub_2684674B8()
{
  result = qword_28027D020;
  if (!qword_28027D020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF80, &qword_2684B6228);
    sub_268466FB0(&qword_28027D028, type metadata accessor for ReminderSearchResult1pSnippet, &unk_2684BA138);
    sub_268466FB0(&qword_28027D008, type metadata accessor for ReminderEnvironmentSetupModifier, &unk_2684B81F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D020);
  }

  return result;
}

unint64_t sub_2684675A4()
{
  result = qword_28027D030;
  if (!qword_28027D030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF88, &qword_2684B6230);
    sub_268466FB0(&qword_28027D038, type metadata accessor for ReminderDetail1pSnippet, &unk_2684BB0C0);
    sub_268466FB0(&qword_28027D008, type metadata accessor for ReminderEnvironmentSetupModifier, &unk_2684B81F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D030);
  }

  return result;
}

unint64_t sub_268467690()
{
  result = qword_28027D040;
  if (!qword_28027D040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF90, &qword_2684B6238);
    sub_268466FB0(&qword_28027D048, type metadata accessor for ReminderComposeSnippet, &unk_2684B8968);
    sub_268466FB0(&qword_28027D008, type metadata accessor for ReminderEnvironmentSetupModifier, &unk_2684B81F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D040);
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

unint64_t sub_26846780C()
{
  result = qword_28027D050;
  if (!qword_28027D050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF98, &qword_2684B6240);
    sub_268466FB0(&qword_28027D058, type metadata accessor for CreateNote3pSnippet, &unk_2684B9E64);
    sub_268466FB0(&qword_28027CFC0, type metadata accessor for NotebookEnvironmentSetupModifier, &unk_2684B9684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D050);
  }

  return result;
}

uint64_t sub_2684678F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_268467960()
{
  result = qword_28027D060;
  if (!qword_28027D060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CFA0, &qword_2684B6248);
    sub_268466FB0(&qword_28027D068, type metadata accessor for AppPunchoutSnippet, &unk_2684B97D4);
    sub_268466FB0(&qword_28027CFC0, type metadata accessor for NotebookEnvironmentSetupModifier, &unk_2684B9684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D060);
  }

  return result;
}

uint64_t sub_268467A4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_268467AAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_268467B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027D078;
  if (!qword_28027D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D078);
  }

  return result;
}

unint64_t sub_268467B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027D080;
  if (!qword_28027D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D080);
  }

  return result;
}

unint64_t sub_268467BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027D088;
  if (!qword_28027D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D088);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotebookUIPlugin.Errors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NotebookUIPlugin.Errors(_WORD *result, int a2, int a3)
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

unint64_t sub_268467D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027D098;
  if (!qword_28027D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D098);
  }

  return result;
}

void sub_268467DC0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t type metadata accessor for NoteSearchResult1pSnippet(uint64_t a1)
{
  result = qword_28027D0B0;
  if (!qword_28027D0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268467E84(uint64_t a1)
{
  sub_2684B3D94();
  if (v1 <= 0x3F)
  {
    sub_268467F10(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_268467F10(uint64_t a1)
{
  if (!qword_28027D0C0)
  {
    type metadata accessor for VRXIdiom(255);
    v1 = sub_2684B43F4();
    if (!v2)
    {
      atomic_store(v1, &qword_28027D0C0);
    }
  }
}

uint64_t sub_268467F84()
{
  v0 = sub_2684B3D64();
  if (!*(v0 + 16) || (v1 = *(v0 + 32), , , v2 = *(sub_2684B3D64() + 16), , v2 != 1))
  {

    return 0;
  }

  return v1;
}

uint64_t sub_268467FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v29 = sub_2684B5484();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NoteSearchResult1pSnippet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D0C8, &qword_2684B6530);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D0D0, &qword_2684B6538);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v14 = &v27 - v13;
  sub_26846A5F0(v2, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_26846A654(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D0D8, &qword_2684B6540);
  sub_26846ACF0(&qword_28027D0E0, &qword_28027D0D8, &qword_2684B6540, MEMORY[0x277CE14C0]);
  sub_2684B5184();
  v17 = v29;
  (*(v3 + 104))(v5, *MEMORY[0x277D63EC0], v29);
  sub_26846ACF0(&qword_28027D0E8, &qword_28027D0C8, &qword_2684B6530, MEMORY[0x277D63B90]);
  sub_2684B4C44();
  (*(v3 + 8))(v5, v17);
  (*(v10 + 8))(v12, v9);
  sub_268467F84();
  v19 = v18;
  if (v18)
  {
  }

  v20 = v19 == 0;
  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = v31;
  (*(v28 + 32))(v31, v14, v30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D0F0, &qword_2684B65D0);
  v26 = v24 + *(result + 36);
  *v26 = v20;
  *(v26 + 8) = KeyPath;
  *(v26 + 16) = 0;
  *(v26 + 24) = v22;
  *(v26 + 32) = 0;
  *(v26 + 40) = v23;
  *(v26 + 48) = 0;
  return result;
}

uint64_t sub_268468424@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D0F8, &qword_2684B65D8);
  MEMORY[0x28223BE20](v33);
  v2 = &v29 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D100, &qword_2684B65E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D108, &qword_2684B65E8);
  MEMORY[0x28223BE20](v31);
  v10 = &v29 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D110, &qword_2684B65F0);
  MEMORY[0x28223BE20](v32);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D118, &qword_2684B65F8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = sub_268467F84();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    KeyPath = swift_getKeyPath();
    sub_2684688F8(v8);
    v30 = v8;
    sub_26846A6DC(v8, v6, &qword_28027D100, &qword_2684B65E0);
    *v2 = v21;
    *(v2 + 1) = v22;
    *(v2 + 2) = KeyPath;
    *(v2 + 12) = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D130, &unk_2684B6600);
    sub_26846A6DC(v6, &v2[*(v24 + 48)], &qword_28027D100, &qword_2684B65E0);
    swift_bridgeObjectRetain_n();

    sub_26846A6D0(v25, 0);
    sub_268467A4C(v6, &qword_28027D100, &qword_2684B65E0);

    sub_26845E0C8(KeyPath, 0);
    sub_26846A6DC(v2, v10, &qword_28027D0F8, &qword_2684B65D8);
    swift_storeEnumTagMultiPayload();
    v26 = MEMORY[0x277CE14C0];
    sub_26846ACF0(&qword_28027D120, &qword_28027D0F8, &qword_2684B65D8, MEMORY[0x277CE14C0]);
    sub_26846ACF0(&qword_28027D128, &qword_28027D110, &qword_2684B65F0, v26);
    sub_2684B49B4();

    sub_268467A4C(v2, &qword_28027D0F8, &qword_2684B65D8);
    sub_268467A4C(v30, &qword_28027D100, &qword_2684B65E0);
  }

  else
  {
    sub_268468C84(v12);
    sub_26846A6DC(v12, v10, &qword_28027D110, &qword_2684B65F0);
    swift_storeEnumTagMultiPayload();
    v27 = MEMORY[0x277CE14C0];
    sub_26846ACF0(&qword_28027D120, &qword_28027D0F8, &qword_2684B65D8, MEMORY[0x277CE14C0]);
    sub_26846ACF0(&qword_28027D128, &qword_28027D110, &qword_2684B65F0, v27);
    sub_2684B49B4();
    sub_268467A4C(v12, &qword_28027D110, &qword_2684B65F0);
  }

  sub_26846A6DC(v18, v16, &qword_28027D118, &qword_2684B65F8);
  sub_26846A6DC(v16, v34, &qword_28027D118, &qword_2684B65F8);
  sub_268467A4C(v18, &qword_28027D118, &qword_2684B65F8);
  return sub_268467A4C(v16, &qword_28027D118, &qword_2684B65F8);
}

uint64_t sub_2684688F8@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_2684B4E34();
  v1 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D138, &qword_2684BA200);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D140, &qword_2684B6610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_2684B3FB4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B3D84();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_268467A4C(v10, &qword_28027D140, &qword_2684B6610);
    v15 = 1;
    v16 = v25;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    (*(v12 + 16))(v7, v14, v11);
    type metadata accessor for ReadingPromptButtons(0);
    sub_2684B52A4();
    (*(v1 + 104))(v3, *MEMORY[0x277CE0EE8], v24);
    v17 = sub_2684B4E94();
    KeyPath = swift_getKeyPath();
    v26 = v17;

    v19 = sub_2684B44B4();
    (*(v12 + 8))(v14, v11);

    v20 = &v7[*(v4 + 36)];
    *v20 = KeyPath;
    v20[1] = v19;
    v21 = v25;
    sub_26846A79C(v7, v25);
    v15 = 0;
    v16 = v21;
  }

  return (*(v5 + 56))(v16, v15, 1, v4);
}

uint64_t sub_268468C84@<X0>(char *a1@<X8>)
{
  v96 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D148, &qword_2684B6648);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v68 - v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D150, &qword_2684B6650);
  MEMORY[0x28223BE20](v78);
  v81 = &v68 - v3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D158, &qword_2684B6658);
  v4 = MEMORY[0x28223BE20](v95);
  v79 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v84 = &v68 - v6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D160, &qword_2684B6660);
  MEMORY[0x28223BE20](v92);
  v94 = &v68 - v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D168, &qword_2684B6668);
  MEMORY[0x28223BE20](v93);
  v77 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D100, &qword_2684B65E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v73 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v68 - v12;
  v13 = type metadata accessor for NoteSearchResult1pSnippet(0);
  v14 = v13 - 8;
  v69 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v70 = v15;
  v71 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D170, &qword_2684B6670);
  v74 = *(v75 - 8);
  v16 = MEMORY[0x28223BE20](v75);
  v72 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v85 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D178, &qword_2684B6678);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v91 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v90 = &v68 - v22;
  v23 = sub_2684B3994();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D180, &qword_2684B6680);
  MEMORY[0x28223BE20](v27);
  v29 = &v68 - v28;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D188, &qword_2684B6688);
  v88 = *(v89 - 8);
  v30 = MEMORY[0x28223BE20](v89);
  v87 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v68 - v32;
  sub_2684B3D74();
  sub_2684B3D54();
  sub_2684B39D4();
  (*(v24 + 104))(v26, *MEMORY[0x277D62F20], v23);
  sub_26846A80C();
  v86 = v33;
  sub_2684B4C04();
  (*(v24 + 8))(v26, v23);
  v34 = sub_268467A4C(v29, &qword_28027D180, &qword_2684B6680);
  if (*(v1 + *(v14 + 28) + 9) == 1)
  {
    v35 = v71;
    sub_26846A5F0(v1, v71);
    v36 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v37 = swift_allocObject();
    sub_26846A654(v35, v37 + v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1D8, &qword_2684B66A0);
    sub_26846AA8C();
    v38 = v85;
    sub_2684B5184();
    v39 = v76;
    sub_2684688F8(v76);
    v40 = v74;
    v41 = *(v74 + 16);
    v42 = v72;
    v43 = v75;
    v41(v72, v38, v75);
    v44 = v73;
    sub_26846A6DC(v39, v73, &qword_28027D100, &qword_2684B65E0);
    v45 = v77;
    v41(v77, v42, v43);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D210, &qword_2684B66B8);
    sub_26846A6DC(v44, v45 + *(v46 + 48), &qword_28027D100, &qword_2684B65E0);
    sub_268467A4C(v44, &qword_28027D100, &qword_2684B65E0);
    v47 = *(v40 + 8);
    v47(v42, v43);
    sub_26846A6DC(v45, v94, &qword_28027D168, &qword_2684B6668);
    swift_storeEnumTagMultiPayload();
    sub_26846ACF0(&qword_28027D1B0, &qword_28027D168, &qword_2684B6668, MEMORY[0x277CE14C0]);
    sub_26846A930();
    v48 = v90;
    sub_2684B49B4();
    sub_268467A4C(v45, &qword_28027D168, &qword_2684B6668);
    sub_268467A4C(v39, &qword_28027D100, &qword_2684B65E0);
    v47(v85, v43);
  }

  else
  {
    MEMORY[0x28223BE20](v34);
    sub_2684B4A34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1A0, &qword_2684B6690);
    v49 = MEMORY[0x277CE14C0];
    sub_26846ACF0(&qword_28027D1A8, &qword_28027D1A0, &qword_2684B6690, MEMORY[0x277CE14C0]);
    v50 = v80;
    sub_2684B43C4();
    sub_2684B5094();
    sub_2684B45F4();
    v51 = v81;
    (*(v82 + 32))(v81, v50, v83);
    v52 = (v51 + *(v78 + 36));
    v53 = v102;
    v52[4] = v101;
    v52[5] = v53;
    v52[6] = v103;
    v54 = v98;
    *v52 = v97;
    v52[1] = v54;
    v55 = v100;
    v52[2] = v99;
    v52[3] = v55;
    v56 = v79;
    sub_26846A8C8(v51, v79, &qword_28027D150, &qword_2684B6650);
    *(v56 + *(v95 + 36)) = 256;
    v57 = v84;
    sub_26846A8C8(v56, v84, &qword_28027D158, &qword_2684B6658);
    sub_26846A6DC(v57, v94, &qword_28027D158, &qword_2684B6658);
    swift_storeEnumTagMultiPayload();
    sub_26846ACF0(&qword_28027D1B0, &qword_28027D168, &qword_2684B6668, v49);
    sub_26846A930();
    v48 = v90;
    sub_2684B49B4();
    sub_268467A4C(v57, &qword_28027D158, &qword_2684B6658);
  }

  v58 = v88;
  v59 = *(v88 + 16);
  v60 = v87;
  v61 = v86;
  v62 = v89;
  v59(v87, v86, v89);
  v63 = v91;
  sub_26846A6DC(v48, v91, &qword_28027D178, &qword_2684B6678);
  v64 = v96;
  v59(v96, v60, v62);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1D0, &qword_2684B6698);
  sub_26846A6DC(v63, &v64[*(v65 + 48)], &qword_28027D178, &qword_2684B6678);
  sub_268467A4C(v48, &qword_28027D178, &qword_2684B6678);
  v66 = *(v58 + 8);
  v66(v61, v62);
  sub_268467A4C(v63, &qword_28027D178, &qword_2684B6678);
  return (v66)(v60, v62);
}

uint64_t sub_268469924(uint64_t a1)
{
  v2 = type metadata accessor for NoteSearchResult1pSnippet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_2684B3D64();
  v6 = sub_2684AB780(v5);

  v11[1] = v6;
  swift_getKeyPath();
  sub_26846A5F0(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_26846A654(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26846ACD4;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D218, &qword_2684B66E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1F0, &qword_2684B66A8);
  sub_26846ACF0(&qword_28027D220, &qword_28027D218, &qword_2684B66E0, MEMORY[0x277D83980]);
  sub_26846AB10();
  return sub_2684B5014();
}

uint64_t sub_268469B1C@<X0>(uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v28 = a4;
  v5 = sub_2684B47F4();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2684B3994();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1F8, &qword_2684B66B0);
  MEMORY[0x28223BE20](v26);
  v13 = &v24 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D228, &qword_2684B66E8);
  v14 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v16 = &v24 - v15;

  sub_2684B3D54();
  sub_2684B3A04();
  v17 = a3 + *(type metadata accessor for NoteSearchResult1pSnippet(0) + 24);
  if ((*(v17 + 8) & 1) == 0)
  {
    v18 = *v17;

    sub_2684B5704();
    v19 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v18, 0);
    (*(v24 + 8))(v7, v25);
  }

  v20 = sub_2684B5794();
  v21 = MEMORY[0x277D62F48];
  if ((v20 & 1) == 0)
  {
    v21 = MEMORY[0x277D62F58];
  }

  (*(v9 + 104))(v11, *v21, v8);
  sub_26846ABD8();
  sub_2684B4C04();
  (*(v9 + 8))(v11, v8);
  sub_268467A4C(v13, &qword_28027D1F8, &qword_2684B66B0);
  v22 = v28;
  (*(v14 + 32))(v28, v16, v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1F0, &qword_2684B66A8);
  *(v22 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_268469EC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D100, &qword_2684B65E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = type metadata accessor for NoteSearchResult1pSnippet(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D230, &qword_2684B66F0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  sub_26846A5F0(a1, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_26846A654(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D238, &qword_2684B66F8);
  sub_26846ADD4();
  sub_2684B5184();
  sub_2684688F8(v7);
  v20 = *(v12 + 16);
  v20(v15, v17, v11);
  v21 = v26;
  sub_26846A6DC(v7, v26, &qword_28027D100, &qword_2684B65E0);
  v22 = v27;
  v20(v27, v15, v11);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D248, &unk_2684B6700);
  sub_26846A6DC(v21, &v22[*(v23 + 48)], &qword_28027D100, &qword_2684B65E0);
  sub_268467A4C(v7, &qword_28027D100, &qword_2684B65E0);
  v24 = *(v12 + 8);
  v24(v17, v11);
  sub_268467A4C(v21, &qword_28027D100, &qword_2684B65E0);
  return (v24)(v15, v11);
}

uint64_t sub_26846A200(uint64_t a1)
{
  v2 = type metadata accessor for NoteSearchResult1pSnippet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_2684B3D64();
  v6 = sub_2684AB780(v5);

  v13[3] = v6;
  swift_getKeyPath();
  sub_26846A5F0(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_26846A654(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26846AF98;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D218, &qword_2684B66E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D228, &qword_2684B66E8);
  sub_26846ACF0(&qword_28027D220, &qword_28027D218, &qword_2684B66E0, MEMORY[0x277D83980]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D1F8, &qword_2684B66B0);
  v11 = sub_26846ABD8();
  v13[1] = v10;
  v13[2] = v11;
  swift_getOpaqueTypeConformance2();
  return sub_2684B5014();
}

uint64_t sub_26846A434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2684B3994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1F8, &qword_2684B66B0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;

  sub_2684B3D54();
  sub_2684B3A04();
  (*(v4 + 104))(v6, *MEMORY[0x277D62F28], v3);
  sub_26846ABD8();
  sub_2684B4C04();
  (*(v4 + 8))(v6, v3);
  return sub_268467A4C(v9, &qword_28027D1F8, &qword_2684B66B0);
}

uint64_t sub_26846A5F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteSearchResult1pSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26846A654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteSearchResult1pSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26846A6D0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_26846A6DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26846A744@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D618B10]();
  *a1 = result;
  return result;
}

uint64_t sub_26846A79C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D138, &qword_2684BA200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26846A80C()
{
  result = qword_28027D190;
  if (!qword_28027D190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D180, &qword_2684B6680);
    sub_26846AC8C(&qword_28027D198, MEMORY[0x277D36048], MEMORY[0x277D36040]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D190);
  }

  return result;
}

uint64_t sub_26846A8C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_26846A930()
{
  result = qword_28027D1B8;
  if (!qword_28027D1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D158, &qword_2684B6658);
    sub_26846A9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D1B8);
  }

  return result;
}

unint64_t sub_26846A9BC()
{
  result = qword_28027D1C0;
  if (!qword_28027D1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D150, &qword_2684B6650);
    sub_26846ACF0(&qword_28027D1C8, &qword_28027D148, &qword_2684B6648, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D1C0);
  }

  return result;
}

unint64_t sub_26846AA8C()
{
  result = qword_28027D1E0;
  if (!qword_28027D1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D1D8, &qword_2684B66A0);
    sub_26846AB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D1E0);
  }

  return result;
}

unint64_t sub_26846AB10()
{
  result = qword_28027D1E8;
  if (!qword_28027D1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D1F0, &qword_2684B66A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D1F8, &qword_2684B66B0);
    sub_26846ABD8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D1E8);
  }

  return result;
}

unint64_t sub_26846ABD8()
{
  result = qword_28027D200;
  if (!qword_28027D200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D1F8, &qword_2684B66B0);
    sub_26846AC8C(&qword_28027D208, MEMORY[0x277D36060], MEMORY[0x277D36058]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D200);
  }

  return result;
}

uint64_t sub_26846AC8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26846ACF0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26846AD50(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NoteSearchResult1pSnippet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_26846ADD4()
{
  result = qword_28027D240;
  if (!qword_28027D240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D238, &qword_2684B66F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D1F8, &qword_2684B66B0);
    sub_26846ABD8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D240);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for NoteSearchResult1pSnippet(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_2684B3D94();
  (*(*(v3 - 8) + 8))(v2, v3);
  sub_26845E0C8(*(v2 + v1[7]), *(v2 + v1[7] + 8));
  sub_26845E0C8(*(v2 + v1[8]), *(v2 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t sub_26846AFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(type metadata accessor for NoteSearchResult1pSnippet(0) - 8);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a4(a1, a2, a3, v9);
}

unint64_t sub_26846B090()
{
  result = qword_28027D250;
  if (!qword_28027D250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D0F0, &qword_2684B65D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D0C8, &qword_2684B6530);
    sub_26846ACF0(&qword_28027D0E8, &qword_28027D0C8, &qword_2684B6530, MEMORY[0x277D63B90]);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26846B18C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D250);
  }

  return result;
}

unint64_t sub_26846B18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027D258[0];
  if (!qword_28027D258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28027D258);
  }

  return result;
}

uint64_t sub_26846B1E8(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_2684B5104();
}

uint64_t sub_26846B3B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D2E0, &unk_2684B85F0);
  MEMORY[0x28223BE20](v95);
  v94 = &v66 - v3;
  v92 = sub_2684B45E4();
  MEMORY[0x28223BE20](v92);
  v93 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2E8, &unk_2684B68E0);
  v90 = a1 + 5;
  v89 = a1[2];
  v5 = sub_2684B45B4();
  v88 = a1[4];
  v6 = v88;
  v79 = MEMORY[0x277CE0868];
  v7 = sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0, MEMORY[0x277CE0868]);
  v113 = v6;
  v114 = v7;
  WitnessTable = swift_getWitnessTable();
  v103 = v5;
  v104 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_2684B45B4();
  sub_2684B45B4();
  v86 = a1[3];
  sub_2684B45B4();
  swift_getTupleTypeMetadata2();
  v84 = sub_2684B50F4();
  v83 = swift_getWitnessTable();
  v9 = sub_2684B4FA4();
  v85 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v66 - v10;
  v12 = sub_2684B45B4();
  v82 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2F8, &qword_2684B8010);
  v15 = sub_2684B45B4();
  v87 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v80 = &v66 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D300, &unk_2684B68F0);
  v17 = sub_2684B45B4();
  v75 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v81 = &v66 - v18;
  v78 = swift_getWitnessTable();
  v111 = v78;
  v112 = MEMORY[0x277CDF918];
  v19 = swift_getWitnessTable();
  v77 = v19;
  v20 = sub_26846ACF0(&qword_28027D308, &qword_28027D2F8, &qword_2684B8010, v79);
  v109 = v19;
  v110 = v20;
  v21 = swift_getWitnessTable();
  v79 = v21;
  v22 = sub_26846ACF0(&qword_28027D310, &qword_28027D300, &unk_2684B68F0, MEMORY[0x277CE08B0]);
  v107 = v21;
  v108 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_26846ACF0(&qword_28027D318, &qword_28027D2E0, &unk_2684B85F0, MEMORY[0x277D84470]);
  v103 = v17;
  v104 = v95;
  v71 = v23;
  v105 = v23;
  v106 = v24;
  v66 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v27 = &v66 - v26;
  v72 = v28;
  v29 = sub_2684B45B4();
  v73 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v67 = &v66 - v30;
  v31 = sub_2684B45B4();
  v74 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31);
  v68 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v70 = &v66 - v34;
  *&v35 = v88;
  *(&v35 + 1) = *v90;
  *&v36 = v89;
  *(&v36 + 1) = v86;
  v96 = v36;
  v97 = v35;
  v98 = v91;
  sub_2684B4834();
  sub_2684B4F94();
  sub_2684B4DC4();
  (*(v85 + 8))(v11, v9);
  v37 = v80;
  sub_2684B4E24();
  (*(v82 + 8))(v14, v12);
  LODWORD(v103) = sub_2684B49C4();
  v38 = *(v92 + 20);
  v39 = *MEMORY[0x277CE0118];
  v40 = sub_2684B48B4();
  v41 = v93;
  (*(*(v40 - 8) + 104))(&v93[v38], v39, v40);
  __asm { FMOV            V0.2D, #10.0 }

  *v41 = _Q0;
  v47 = v41;
  v48 = v81;
  sub_26846CC9C(&qword_28027D320, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  sub_2684B4C94();
  sub_26846CC40(v47);
  (*(v87 + 8))(v37, v15);
  v49 = sub_2684B4594();
  v50 = v94;
  (*(*(v49 - 8) + 104))();
  sub_26846CC9C(&qword_28027D328, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_2684B5534();
  if (result)
  {
    v52 = v95;
    v53 = v71;
    v54 = v66;
    sub_2684B4D34();
    sub_268467A4C(v50, &qword_28027D2E0, &unk_2684B85F0);
    (*(v75 + 8))(v48, v17);
    sub_2684B4A94();
    v103 = v17;
    v104 = v52;
    v105 = v53;
    v106 = v54;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v56 = v67;
    v57 = v72;
    sub_2684B4DD4();
    (*(v69 + 8))(v27, v57);
    v101 = OpaqueTypeConformance2;
    v102 = MEMORY[0x277CDF918];
    v58 = swift_getWitnessTable();
    v59 = v68;
    sub_2684ACFD8(1, v29, v58);
    v60 = (*(v73 + 8))(v56, v29);
    v63 = sub_26846B18C(v60, v61, v62);
    v99 = v58;
    v100 = v63;
    swift_getWitnessTable();
    v64 = v70;
    sub_26847D324();
    v65 = *(v74 + 8);
    v65(v59, v31);
    sub_26847D324();
    return (v65)(v64, v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26846C00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a5;
  v58 = a4;
  v77 = a6;
  v72 = a3;
  v75 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v70 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2684B45B4();
  v74 = *(v73 - 8);
  v10 = MEMORY[0x28223BE20](v73);
  v69 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D330, &qword_2684BAEE0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v56 - v15;
  v64 = a2;
  v67 = *(a2 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2E8, &unk_2684B68E0);
  v19 = sub_2684B45B4();
  v66 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  v22 = sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0, MEMORY[0x277CE0868]);
  v86 = a4;
  v87 = v22;
  v68 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v84 = v19;
  v85 = WitnessTable;
  v61 = MEMORY[0x277D63920];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v25 = &v56 - v24;
  v26 = sub_2684B45B4();
  v65 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v56 - v27;
  v78 = sub_2684B45B4();
  v80 = *(v78 - 8);
  v29 = MEMORY[0x28223BE20](v78);
  v57 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v79 = &v56 - v32;
  v60 = a1;
  (*a1)(v31);
  v63 = *(a1 + 56);
  v33 = sub_2684B4AE4();
  (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
  sub_2684B4B04();
  sub_268467A4C(v16, &qword_28027D330, &qword_2684BAEE0);
  v34 = v64;
  sub_2684B4D84();

  v67[1](v18, v34);
  v35 = WitnessTable;
  sub_2684B4BE4();
  (*(v66 + 8))(v21, v19);
  sub_2684B50A4();
  v84 = v19;
  v85 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2684B4D94();
  (*(v62 + 8))(v25, OpaqueTypeMetadata2);
  sub_2684B4A84();
  v83[6] = OpaqueTypeConformance2;
  v83[7] = MEMORY[0x277CDF678];
  v37 = swift_getWitnessTable();
  v38 = v57;
  sub_2684B4DD4();
  (*(v65 + 8))(v28, v26);
  v39 = MEMORY[0x277CDF918];
  v83[4] = v37;
  v83[5] = MEMORY[0x277CDF918];
  v40 = v78;
  v66 = swift_getWitnessTable();
  sub_26847D324();
  v41 = *(v80 + 8);
  v65 = v80 + 8;
  v67 = v41;
  v42 = (v41)(v38, v40);
  v43 = v70;
  (*(v60 + 16))(v42);
  sub_2684B4A84();
  v44 = v69;
  v45 = v72;
  v46 = v76;
  sub_2684B4DD4();
  (*(v75 + 8))(v43, v45);
  v83[2] = v46;
  v83[3] = v39;
  v47 = v73;
  v48 = swift_getWitnessTable();
  v49 = v71;
  sub_26847D324();
  v50 = v74;
  v51 = *(v74 + 8);
  v51(v44, v47);
  v52 = v79;
  v53 = v78;
  (*(v80 + 16))(v38, v79, v78);
  v84 = v38;
  (*(v50 + 16))(v44, v49, v47);
  v85 = v44;
  v83[0] = v53;
  v83[1] = v47;
  v81 = v66;
  v82 = v48;
  sub_26846B1E8(&v84, 2uLL, v83);
  v51(v49, v47);
  v54 = v67;
  (v67)(v52, v53);
  v51(v44, v47);
  return (v54)(v38, v53);
}

double sub_26846C9B4@<D0>(_OWORD *a1@<X8>)
{
  result = 24.0;
  *a1 = xmmword_2684B6710;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TriggerPillConstants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TriggerPillConstants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_26846CA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_26846CA98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26846CAE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_26846CBD8@<D0>(_OWORD *a1@<X8>)
{
  result = 16.0;
  *a1 = xmmword_2684B6720;
  return result;
}

uint64_t sub_26846CC40(uint64_t a1)
{
  v2 = sub_2684B45E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26846CC9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TemporalTriggerView(uint64_t a1)
{
  result = qword_28027D338;
  if (!qword_28027D338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26846CD58(uint64_t a1)
{
  result = sub_2684B40B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26846CDE8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for TemporalTriggerFormatStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B40B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D348, &unk_2684BA020);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  (*(v6 + 16))(v8, v1, v5);
  sub_2684B38E4();
  sub_2684B3944();
  v4[*(v2 + 24)] = 2;
  sub_26846D420(&qword_28027D350, type metadata accessor for TemporalTriggerFormatStyle, &unk_2684B8E98);
  sub_26846D420(&qword_28027D358, MEMORY[0x277D5E170], MEMORY[0x277D5E178]);
  v12 = sub_2684B4B84();
  v14 = v13;
  v16 = v15;
  if (*(v1 + *(type metadata accessor for TemporalTriggerView(0) + 20)) == 1 && (sub_26846D1D0() & 1) != 0)
  {
    v33 = sub_2684B4E44();
  }

  else
  {
    LODWORD(v33) = sub_2684B49F4();
  }

  v33 = sub_2684B44B4();
  v17 = sub_2684B4B44();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_26846D468(v12, v14, v16 & 1);

  v33 = v17;
  v34 = v19;
  v21 &= 1u;
  v35 = v21;
  v36 = v23;
  sub_2684B4D44();
  sub_26846D468(v17, v19, v21);

  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  v27 = v32;
  (*(v30 + 32))(v32, v11, v31);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D360, &qword_2684B6A08);
  v29 = v27 + *(result + 36);
  *v29 = 1;
  *(v29 + 8) = KeyPath;
  *(v29 + 16) = 0;
  *(v29 + 24) = v25;
  *(v29 + 32) = 0;
  *(v29 + 40) = v26;
  *(v29 + 48) = 0;
  return result;
}

uint64_t sub_26846D1D0()
{
  v0 = sub_2684B3974();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B3844();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = (v5 + 8);
  if (sub_2684B40A4())
  {
    sub_2684B3964();
    sub_2684B3834();
    sub_2684B3934();
    v12 = *v11;
    (*v11)(v8, v4);
    (*(v1 + 8))(v3, v0);
    sub_2684B4094();
    v13 = sub_2684B3824();
    v12(v8, v4);
    v12(v10, v4);
  }

  else
  {
    sub_2684B4094();
    sub_2684B3834();
    v13 = sub_2684B3824();
    v14 = *v11;
    (*v11)(v8, v4);
    v14(v10, v4);
  }

  return v13 & 1;
}

uint64_t sub_26846D420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26846D468(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26846D478()
{
  result = qword_28027D368;
  if (!qword_28027D368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D360, &qword_2684B6A08);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26846B18C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D368);
  }

  return result;
}

uint64_t sub_26846D534(void *a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3;
}

BOOL sub_26846D588(uint64_t a1, unint64_t a2)
{
  v4 = sub_2684B3784();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B3764();
  v8 = sub_2684B3774();
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v17[0] = a1;
    v17[1] = a2;
    sub_26846D6EC(v8, v9, v10);
    v12 = sub_2684B57B4();
    v14 = v13;
    (*(v5 + 8))(v7, v4);

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    return v15 != 0;
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

unint64_t sub_26846D6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027D370;
  if (!qword_28027D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D370);
  }

  return result;
}

uint64_t sub_26846D76C@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_2684B3994();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B3A24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D378, &qword_2684B6A78);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - v11;
  sub_2684B3A14();
  (*(v2 + 104))(v4, *MEMORY[0x277D62F48], v1);
  v13 = sub_26846DA14();
  sub_2684B4C04();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  sub_26846DA6C(&unk_287913BB8);
  v15[2] = v5;
  v15[3] = v13;
  swift_getOpaqueTypeConformance2();
  sub_2684B4C54();

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_26846DA14()
{
  result = qword_28027D380;
  if (!qword_28027D380)
  {
    sub_2684B3A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D380);
  }

  return result;
}

uint64_t sub_26846DA6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D388, &unk_2684B6A80);
    v3 = sub_2684B5864();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_2684B5A64();
      MEMORY[0x26D619E40](v10);
      result = sub_2684B5A94();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t type metadata accessor for SetTaskAttribute3pSnippet(uint64_t a1)
{
  result = qword_28027D390;
  if (!qword_28027D390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26846DC1C(uint64_t a1)
{
  result = sub_2684B3DC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26846DCA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2684B3B54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SetTaskAttribute3pSnippet(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_26846EEF8(v1, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetTaskAttribute3pSnippet);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_26846EFD4(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SetTaskAttribute3pSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3A0, &qword_2684B6B00);
  sub_26846ACF0(&qword_28027D3A8, &qword_28027D3A0, &qword_2684B6B00, MEMORY[0x277CE14C0]);
  sub_2684B5184();
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3B0, &qword_2684B6B90) + 36);
  *v15 = 0;
  *(v15 + 8) = KeyPath;
  *(v15 + 16) = 0;
  *(v15 + 24) = v13;
  *(v15 + 32) = 0;
  *(v15 + 40) = v14;
  *(v15 + 48) = 0;
  v16 = swift_getKeyPath();
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3B8, &qword_2684B6BC0) + 36);
  *v17 = 0xD00000000000001ELL;
  *(v17 + 8) = 0x80000002684C4380;
  *(v17 + 16) = v16;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  sub_2684B3DA4();
  v18 = swift_getKeyPath();
  v19 = sub_2684B3B34();
  (*(v4 + 8))(v6, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3C0, &qword_2684B6BF0);
  v21 = (a1 + *(result + 36));
  *v21 = v18;
  v21[1] = v19;
  return result;
}

uint64_t sub_26846DFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v66 = sub_2684B41E4();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ReminderDetail3pView(0);
  MEMORY[0x28223BE20](v56);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3D8, &qword_2684B6BF8);
  MEMORY[0x28223BE20](v61);
  v57 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E0, &unk_2684B6C00);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v67 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = &v53 - v10;
  v11 = sub_2684B3B54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v59 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  v20 = sub_2684B3EA4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F0, &qword_2684B6C10);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v62 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v53 - v27;
  v60 = a1;
  sub_2684B3DA4();
  sub_2684B3B44();
  v29 = *(v12 + 8);
  v58 = v11;
  v55 = v29;
  v29(v14, v11);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_268467A4C(v19, &qword_28027D3E8, &unk_2684B7F40);
    v30 = 1;
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    sub_2684B3E84();
    sub_2684B5214();
    (*(v21 + 8))(v23, v20);
    v30 = 0;
  }

  v53 = v28;
  v31 = sub_2684B5204();
  (*(*(v31 - 8) + 56))(v28, v30, 1, v31);
  KeyPath = swift_getKeyPath();
  sub_2684B3DB4();
  v32 = *(v56 + 20);
  *&v5[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F8, &qword_2684BA7E0);
  swift_storeEnumTagMultiPayload();
  v33 = swift_getKeyPath();
  v34 = swift_getKeyPath();
  v35 = v57;
  sub_26846EEF8(v5, v57, type metadata accessor for ReminderDetail3pView);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D400, &qword_2684B6C50) + 36);
  *v36 = v33;
  *(v36 + 8) = 0;
  *(v36 + 16) = v34;
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  sub_26846EF60(v5);
  v37 = swift_getKeyPath();
  v38 = v35 + *(v61 + 36);
  strcpy(v38, "modifiedTask");
  *(v38 + 13) = 0;
  *(v38 + 14) = -5120;
  *(v38 + 16) = v37;
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  sub_2684B3DA4();
  v39 = v59;
  sub_2684B3B44();
  v55(v14, v58);
  v40 = v63;
  sub_2684B3DB4();
  v41 = sub_2684B3FC4();
  v43 = v42;
  (*(v64 + 8))(v40, v66);
  v44 = v65;
  sub_26846E7C8(v39, v41, v43, &qword_28027D3D8, &qword_2684B6BF8, &qword_28027D3E0, &unk_2684B6C00, v65);

  sub_268467A4C(v39, &qword_28027D3E8, &unk_2684B7F40);
  sub_268467A4C(v35, &qword_28027D3D8, &qword_2684B6BF8);
  v45 = v53;
  v46 = v62;
  sub_26846A6DC(v53, v62, &qword_28027D3F0, &qword_2684B6C10);
  v47 = v67;
  sub_26846A6DC(v44, v67, &qword_28027D3E0, &unk_2684B6C00);
  v48 = v68;
  sub_26846A6DC(v46, v68, &qword_28027D3F0, &qword_2684B6C10);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D408, &qword_2684B6C58);
  v50 = v48 + *(v49 + 48);
  v51 = KeyPath;
  *v50 = KeyPath;
  *(v50 + 8) = 0;
  sub_26846A6DC(v47, v48 + *(v49 + 64), &qword_28027D3E0, &unk_2684B6C00);
  sub_26846EFBC(v51, 0);
  sub_268467A4C(v44, &qword_28027D3E0, &unk_2684B6C00);
  sub_268467A4C(v45, &qword_28027D3F0, &qword_2684B6C10);
  sub_268467A4C(v47, &qword_28027D3E0, &unk_2684B6C00);
  sub_26846EFC8(v51, 0);
  return sub_268467A4C(v46, &qword_28027D3F0, &qword_2684B6C10);
}

uint64_t sub_26846E7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a6;
  v31 = a7;
  v28 = a4;
  v29 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for PunchoutToNotebookItemModifier(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26846A6DC(a1, v14, &qword_28027D3E8, &unk_2684B7F40);
  v18 = sub_2684B3EA4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v14, 1, v18) == 1)
  {
    sub_268467A4C(v14, &qword_28027D3E8, &unk_2684B7F40);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = sub_2684B3E84();
    v21 = v22;
    (*(v19 + 8))(v14, v18);
  }

  *v17 = v20;
  v17[1] = v21;
  v17[2] = a2;
  v17[3] = a3;

  sub_2684B52A4();
  v23 = v17 + *(v15 + 28);
  v32 = 0;
  sub_2684B4F24();
  v24 = v34;
  *v23 = v33;
  *(v23 + 1) = v24;
  sub_26846A6DC(v27, a8, v28, v29);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  return sub_26846EFD4(v17, a8 + *(v25 + 36), type metadata accessor for PunchoutToNotebookItemModifier);
}

uint64_t sub_26846EA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for PunchoutToNotebookItemModifier(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26846A6DC(a1, v10, &qword_28027D3E8, &unk_2684B7F40);
  v14 = sub_2684B3EA4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_268467A4C(v10, &qword_28027D3E8, &unk_2684B7F40);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = sub_2684B3E84();
    v17 = v18;
    (*(v15 + 8))(v10, v14);
  }

  *v13 = v16;
  v13[1] = v17;
  v13[2] = a2;
  v13[3] = a3;

  sub_2684B52A4();
  v19 = v13 + *(v11 + 28);
  v24 = 0;
  sub_2684B4F24();
  v20 = v26;
  *v19 = v25;
  *(v19 + 1) = v20;
  sub_26846EEF8(v23, a4, type metadata accessor for ReminderDetail3pView);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D470, &unk_2684B6C90);
  return sub_26846EFD4(v13, a4 + *(v21 + 36), type metadata accessor for PunchoutToNotebookItemModifier);
}

uint64_t sub_26846EC84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SetTaskAttribute3pSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26846DFB8(v4, a1);
}

double sub_26846ECF4@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_26846EEA4(a2, a3, a4);
  sub_2684B4804();
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_26846ED44(void *a1, uint64_t a2, uint64_t a3)
{
  sub_26846EEA4(a1, a2, a3);

  return sub_2684B4814();
}

void *sub_26846EDA4@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_26846EE50(a2, a3, a4);
  result = sub_2684B4804();
  *a1 = v6;
  return result;
}

uint64_t sub_26846EDF4(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  sub_26846EE50(a1, a2, a3);
  v4 = v3;
  return sub_2684B4814();
}

unint64_t sub_26846EE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027D3C8;
  if (!qword_28027D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D3C8);
  }

  return result;
}

unint64_t sub_26846EEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027D3D0;
  if (!qword_28027D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D3D0);
  }

  return result;
}

uint64_t sub_26846EEF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26846EF60(uint64_t a1)
{
  v2 = type metadata accessor for ReminderDetail3pView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_26846EFBC(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_26846EFC8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26846EFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26846F03C()
{
  result = qword_28027D420;
  if (!qword_28027D420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D3C0, &qword_2684B6BF0);
    sub_26846F0F4();
    sub_26846ACF0(&qword_28027D450, &qword_28027D458, &unk_2684B6FA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D420);
  }

  return result;
}

unint64_t sub_26846F0F4()
{
  result = qword_28027D428;
  if (!qword_28027D428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D3B8, &qword_2684B6BC0);
    v3 = sub_26846F180();
    sub_26846F238(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D428);
  }

  return result;
}

unint64_t sub_26846F180()
{
  result = qword_28027D430;
  if (!qword_28027D430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D3B0, &qword_2684B6B90);
    v3 = sub_26846ACF0(&qword_28027D438, &qword_28027D440, &unk_2684B6C70, MEMORY[0x277D63B90]);
    sub_26846B18C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D430);
  }

  return result;
}

unint64_t sub_26846F238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027D448;
  if (!qword_28027D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D448);
  }

  return result;
}

uint64_t type metadata accessor for LocationTriggerTextView(uint64_t a1)
{
  result = qword_28027D478;
  if (!qword_28027D478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26846F300(uint64_t a1)
{
  result = sub_2684B4084();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26846F3A0@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for LocationTriggerTextView(0) + 20)) == 1)
  {
    sub_2684B4EC4();
    v3 = sub_2684B4BB4();
    v5 = v4;
    v7 = v6;

    v8 = sub_2684B4B44();
    v29 = v9;
    v30 = v8;
    v28 = v10;
    sub_26846D468(v3, v5, v7 & 1);

    v11 = sub_26846F560();
    v13 = v12;
    v15 = v14;
    v27 = sub_2684B4B54();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_26846D468(v11, v13, v15 & 1);

    v22 = v27;
    sub_26846D468(v30, v29, v28 & 1);
  }

  else
  {
    v22 = sub_26846F560();
    v17 = v23;
    v19 = v24;
    v21 = v25;
  }

  result = sub_2684B49F4();
  *a1 = v22;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = result;
  *(a1 + 36) = 0;
  return result;
}

uint64_t sub_26846F560()
{
  v0 = sub_2684B4004();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v17[-v5];
  v7 = sub_2684B3D44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_2684B4064() & 1) == 0)
  {
    return sub_26846F834();
  }

  sub_2684B4054();
  (*(v1 + 104))(v4, *MEMORY[0x277D5E160], v0);
  v11 = sub_2684B3FF4();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v6, v0);
  v13 = MEMORY[0x277D5E0F0];
  if ((v11 & 1) == 0)
  {
    v13 = MEMORY[0x277D5E0D8];
  }

  (*(v8 + 104))(v10, *v13, v7);
  sub_2684B3D34();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v14 = qword_280282928;
  v15 = sub_2684B4B94();
  (*(v8 + 8))(v10, v7);
  return v15;
}

uint64_t sub_26846F834()
{
  v0 = sub_2684B4004();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - v5;
  v7 = sub_2684B3D44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B4054();
  (*(v1 + 104))(v4, *MEMORY[0x277D5E160], v0);
  v11 = sub_2684B3FF4();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v6, v0);
  v13 = MEMORY[0x277D5E0E8];
  if ((v11 & 1) == 0)
  {
    v13 = MEMORY[0x277D5E0E0];
  }

  (*(v8 + 104))(v10, *v13, v7);
  sub_2684B3D34();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v14 = qword_280282928;
  v15 = sub_2684B4B94();
  v17 = v16;
  v19 = v18;
  (*(v8 + 8))(v10, v7);
  v23[3] = 32;
  v23[4] = 0xE100000000000000;
  v20 = sub_2684B4074();
  MEMORY[0x26D619980](v20);

  v21 = sub_2684B4B54();

  sub_26846D468(v15, v17, v19 & 1);

  return v21;
}

unint64_t sub_26846FB7C()
{
  result = qword_28027D488;
  if (!qword_28027D488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D490, &qword_2684B6D08);
    sub_26846FC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D488);
  }

  return result;
}

unint64_t sub_26846FC08()
{
  result = qword_28027D498;
  if (!qword_28027D498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D4A0, &qword_2684B6D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D498);
  }

  return result;
}

uint64_t sub_26846FC6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4A8, &unk_2684B6D30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_2684B3F64();
  __swift_allocate_value_buffer(v3, qword_2802828F8);
  __swift_project_value_buffer(v3, qword_2802828F8);
  v4 = *MEMORY[0x277D5E150];
  v5 = sub_2684B3F04();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v2, v4, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  return sub_2684B3F34();
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

uint64_t type metadata accessor for AddTasks3pSnippet(uint64_t a1)
{
  result = qword_28027D4B0;
  if (!qword_28027D4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26846FEC8(uint64_t a1)
{
  result = sub_2684B3AD4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26846FF50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2684B3B54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AddTasks3pSnippet(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_26847205C(v1, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddTasks3pSnippet);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_268471B2C(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4C0, &qword_2684B6DA8);
  sub_26846ACF0(&qword_28027D4C8, &qword_28027D4C0, &qword_2684B6DA8, MEMORY[0x277CE14C0]);
  sub_2684B5184();
  KeyPath = swift_getKeyPath();
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4D0, &qword_2684B6DD8) + 36);
  *v13 = 0xD000000000000016;
  *(v13 + 8) = 0x80000002684C43A0;
  *(v13 + 16) = KeyPath;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  sub_2684B3AA4();
  v14 = swift_getKeyPath();
  v15 = sub_2684B3B34();
  (*(v4 + 8))(v6, v3);
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4D8, &qword_2684B6E08) + 36));
  *v16 = v14;
  v16[1] = v15;
  v17 = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v19 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4E0, &qword_2684B6E98);
  v21 = a1 + *(result + 36);
  *v21 = 1;
  *(v21 + 8) = v17;
  *(v21 + 16) = 0;
  *(v21 + 24) = v18;
  *(v21 + 32) = 0;
  *(v21 + 40) = v19;
  *(v21 + 48) = 0;
  return result;
}

uint64_t sub_268470254(uint64_t a1)
{
  v2 = sub_2684B3894();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2684B4144();
}

uint64_t sub_26847031C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = type metadata accessor for AddTasks3pSnippet(0);
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = v4;
  v86 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4E8, &unk_2684B6EA0);
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v90 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v89 = &v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4F0, &qword_2684B8A20);
  MEMORY[0x28223BE20](v9 - 8);
  v79 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D410, &qword_2684B6C60);
  MEMORY[0x28223BE20](v11 - 8);
  v83 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D418, &qword_2684B6C68);
  MEMORY[0x28223BE20](v13 - 8);
  v82 = &v75 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4F8, &qword_2684B6EB0);
  v15 = MEMORY[0x28223BE20](v81);
  v88 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v80 = &v75 - v18;
  MEMORY[0x28223BE20](v17);
  v96 = &v75 - v19;
  v20 = sub_2684B3B54();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v76 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v75 - v27;
  v29 = sub_2684B3EA4();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F0, &qword_2684B6C10);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v95 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v75 - v36;
  v87 = a1;
  sub_2684B3AA4();
  sub_2684B3B44();
  v38 = *(v21 + 8);
  v77 = v20;
  v38(v23, v20);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_268467A4C(v28, &qword_28027D3E8, &unk_2684B7F40);
    v39 = 1;
  }

  else
  {
    (*(v30 + 32))(v32, v28, v29);
    sub_2684B3E84();
    sub_2684B5214();
    (*(v30 + 8))(v32, v29);
    v39 = 0;
  }

  v40 = sub_2684B5204();
  (*(*(v40 - 8) + 56))(v37, v39, 1, v40);
  KeyPath = swift_getKeyPath();
  v41 = v83;
  v42 = v87;
  sub_268470E18(v83);
  sub_2684B3AA4();
  v43 = v76;
  sub_2684B3B44();
  v38(v23, v77);
  v44 = v79;
  sub_2684B3AB4();
  v45 = sub_2684B3C14();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v44, 1, v45);
  v94 = v37;
  if (v47 == 1)
  {
    sub_268467A4C(v44, &qword_28027D4F0, &qword_2684B8A20);
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v48 = sub_2684B3BC4();
    v49 = v50;
    (*(v46 + 8))(v44, v45);
  }

  v51 = v82;
  sub_26846E7A4(v43, v48, v49, v82);

  sub_268467A4C(v43, &qword_28027D3E8, &unk_2684B7F40);
  sub_268467A4C(v41, &qword_28027D410, &qword_2684B6C60);
  v52 = swift_getKeyPath();
  v53 = v80;
  sub_26846A8C8(v51, v80, &qword_28027D418, &qword_2684B6C68);
  v54 = v53 + *(v81 + 36);
  *v54 = 0xD000000000000010;
  *(v54 + 8) = 0x80000002684C43C0;
  *(v54 + 16) = v52;
  *(v54 + 24) = 0;
  *(v54 + 32) = 0;
  v55 = v96;
  sub_26846A8C8(v53, v96, &qword_28027D4F8, &qword_2684B6EB0);
  v56 = sub_2684B3AC4();
  v57 = sub_2684AB930(v56);

  v97 = v57;
  swift_getKeyPath();
  v58 = v86;
  sub_26847205C(v42, v86, type metadata accessor for AddTasks3pSnippet);
  v59 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v60 = swift_allocObject();
  sub_268471B2C(v58, v60 + v59);
  v61 = swift_allocObject();
  *(v61 + 16) = sub_268471CCC;
  *(v61 + 24) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D500, &unk_2684B6EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E0, &unk_2684B6C00);
  sub_26846ACF0(&qword_28027D508, &qword_28027D500, &unk_2684B6EF8, MEMORY[0x277D83980]);
  sub_268472014(&qword_28027D510, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_268471DBC();
  v62 = v89;
  sub_2684B5014();
  v63 = v95;
  sub_26846A6DC(v94, v95, &qword_28027D3F0, &qword_2684B6C10);
  v64 = v88;
  sub_26846A6DC(v55, v88, &qword_28027D4F8, &qword_2684B6EB0);
  v65 = v90;
  v66 = v91;
  v67 = *(v91 + 16);
  v68 = v92;
  v67(v90, v62, v92);
  v69 = v93;
  sub_26846A6DC(v63, v93, &qword_28027D3F0, &qword_2684B6C10);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D548, &qword_2684B6F08);
  v71 = v69 + v70[12];
  v72 = KeyPath;
  *v71 = KeyPath;
  *(v71 + 8) = 0;
  sub_26846A6DC(v64, v69 + v70[16], &qword_28027D4F8, &qword_2684B6EB0);
  v67((v69 + v70[20]), v65, v68);
  sub_26846EFBC(v72, 0);
  v73 = *(v66 + 8);
  v73(v62, v68);
  sub_268467A4C(v96, &qword_28027D4F8, &qword_2684B6EB0);
  sub_268467A4C(v94, &qword_28027D3F0, &qword_2684B6C10);
  v73(v65, v68);
  sub_268467A4C(v64, &qword_28027D4F8, &qword_2684B6EB0);
  sub_26846EFC8(v72, 0);
  return sub_268467A4C(v95, &qword_28027D3F0, &qword_2684B6C10);
}

uint64_t sub_268470E18@<X0>(uint64_t a2@<X8>)
{
  v27 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D558, &qword_2684B6F50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D560, &qword_2684B6F58);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D568, &qword_2684B6F60);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  sub_26847111C(&v26 - v16);
  sub_26847187C(v4);
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  sub_26846A6DC(v4, v11, &qword_28027D558, &qword_2684B6F50);
  v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D570, &qword_2684B6F68) + 36)];
  *v20 = KeyPath;
  v20[8] = 0;
  *(v20 + 2) = v19;
  *(v20 + 3) = 0;
  v20[32] = 0;
  sub_268467A4C(v4, &qword_28027D558, &qword_2684B6F50);
  v21 = swift_getKeyPath();
  v22 = &v11[*(v6 + 44)];
  *v22 = 0x656C746974;
  *(v22 + 1) = 0xE500000000000000;
  *(v22 + 2) = v21;
  *(v22 + 3) = 0;
  v22[32] = 0;
  sub_26846A6DC(v17, v15, &qword_28027D568, &qword_2684B6F60);
  sub_26846A6DC(v11, v9, &qword_28027D560, &qword_2684B6F58);
  v23 = v27;
  sub_26846A6DC(v15, v27, &qword_28027D568, &qword_2684B6F60);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D578, &qword_2684B6F70);
  sub_26846A6DC(v9, v23 + *(v24 + 48), &qword_28027D560, &qword_2684B6F58);
  sub_268467A4C(v11, &qword_28027D560, &qword_2684B6F58);
  sub_268467A4C(v17, &qword_28027D568, &qword_2684B6F60);
  sub_268467A4C(v9, &qword_28027D560, &qword_2684B6F58);
  return sub_268467A4C(v15, &qword_28027D568, &qword_2684B6F60);
}

uint64_t sub_26847111C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2684B5414();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D588, &qword_2684B6F80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4F0, &qword_2684B8A20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  sub_2684B3AB4();
  v12 = sub_2684B3C14();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_268467A4C(v11, &qword_28027D4F0, &qword_2684B8A20);
    v14 = 1;
  }

  else
  {
    v25 = a1;
    v15 = sub_2684B3C04();
    v17 = v16;
    (*(v13 + 8))(v11, v12);
    v14 = 1;
    if (v17)
    {
      v35 = MEMORY[0x277D837D0];
      v36 = MEMORY[0x277D63F80];
      v33 = v15;
      v34 = v17;
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      sub_2684B5404();
      KeyPath = swift_getKeyPath();
      v19 = swift_getKeyPath();
      v20 = v26;
      (*(v26 + 16))(v8, v4, v2);
      v21 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D590, &qword_2684B6F88) + 36)];
      *v21 = KeyPath;
      v21[8] = 0;
      *(v21 + 2) = v19;
      *(v21 + 3) = 0;
      v21[32] = 0;
      (*(v20 + 8))(v4, v2);
      v22 = swift_getKeyPath();
      v23 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D598, &qword_2684B6F90) + 36)];
      *v23 = 0x70756F7267;
      *(v23 + 1) = 0xE500000000000000;
      *(v23 + 2) = v22;
      *(v23 + 3) = 0;
      v23[32] = 0;
      v8[*(v5 + 36)] = 1;
      a1 = v25;
      sub_26846A8C8(v8, v25, &qword_28027D588, &qword_2684B6F80);
      v14 = 0;
    }

    else
    {
      a1 = v25;
    }
  }

  return (*(v6 + 56))(a1, v14, 1, v5);
}

uint64_t sub_2684714C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a1;
  v34 = a3;
  v36 = a4;
  v35 = sub_2684B3B54();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ReminderDetail3pView(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3D8, &qword_2684B6BF8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v19 = sub_2684B41E4();
  (*(*(v19 - 8) + 16))(v14, a2, v19);
  v20 = *(v12 + 28);
  *&v14[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F8, &qword_2684BA7E0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  sub_26847205C(v14, v18, type metadata accessor for ReminderDetail3pView);
  v23 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D400, &qword_2684B6C50) + 36)];
  *v23 = KeyPath;
  v23[8] = 0;
  *(v23 + 2) = v22;
  *(v23 + 3) = 0;
  v23[32] = 0;
  v38 = 0x7361546465646461;
  v39 = 0xEA0000000000736BLL;
  MEMORY[0x26D619980](91, 0xE100000000000000);
  v37 = v33;
  v24 = sub_2684B59E4();
  MEMORY[0x26D619980](v24);

  MEMORY[0x26D619980](93, 0xE100000000000000);
  v25 = v38;
  v26 = v39;
  sub_26846EF60(v14);
  v27 = swift_getKeyPath();
  v28 = &v18[*(v16 + 44)];
  *v28 = v25;
  *(v28 + 1) = v26;
  *(v28 + 2) = v27;
  *(v28 + 3) = 0;
  v28[32] = 0;
  sub_2684B3AA4();
  sub_2684B3B44();
  (*(v5 + 8))(v7, v35);
  v29 = sub_2684B3FC4();
  sub_26846E780(v10, v29, v30, v36);

  sub_268467A4C(v10, &qword_28027D3E8, &unk_2684B7F40);
  return sub_268467A4C(v18, &qword_28027D3D8, &qword_2684B6BF8);
}

uint64_t sub_26847187C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D580, &qword_2684B6F78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4F0, &qword_2684B8A20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = sub_2684B3C14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B3AB4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_268467A4C(v8, &qword_28027D4F0, &qword_2684B8A20);
    v13 = 1;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = sub_2684B3BF4();
    v24 = MEMORY[0x277D837D0];
    v25 = MEMORY[0x277D63F80];
    v22 = v14;
    v23 = v15;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_2684B5404();
    (*(v10 + 8))(v12, v9);
    v5[*(v2 + 36)] = 1;
    sub_26846A8C8(v5, a1, &qword_28027D580, &qword_2684B6F78);
    v13 = 0;
  }

  return (*(v3 + 56))(a1, v13, 1, v2);
}

uint64_t sub_268471B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddTasks3pSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268471B90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddTasks3pSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26847031C(v4, a1);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for AddTasks3pSnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_2684B3AD4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_268471CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AddTasks3pSnippet(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_2684714C8(a1, a2, v8, a3);
}

uint64_t sub_268471D54(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D550, &qword_2684B6F10);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_268471DBC()
{
  result = qword_28027D518;
  if (!qword_28027D518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D3E0, &unk_2684B6C00);
    sub_268471E78();
    sub_268472014(&qword_28027D540, type metadata accessor for PunchoutToNotebookItemModifier, &unk_2684B7CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D518);
  }

  return result;
}

unint64_t sub_268471E78()
{
  result = qword_28027D520;
  if (!qword_28027D520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D3D8, &qword_2684B6BF8);
    v3 = sub_268471F04();
    sub_26846F238(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D520);
  }

  return result;
}

unint64_t sub_268471F04()
{
  result = qword_28027D528;
  if (!qword_28027D528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D400, &qword_2684B6C50);
    v3 = sub_268472014(&qword_28027D530, type metadata accessor for ReminderDetail3pView, &unk_2684B7E18);
    sub_268471FC0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D528);
  }

  return result;
}

unint64_t sub_268471FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027D538;
  if (!qword_28027D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D538);
  }

  return result;
}

uint64_t sub_268472014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26847205C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2684720C4()
{
  result = qword_28027D5A0;
  if (!qword_28027D5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D4E0, &qword_2684B6E98);
    v3 = sub_268472150();
    sub_26846B18C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D5A0);
  }

  return result;
}

unint64_t sub_268472150()
{
  result = qword_28027D5A8;
  if (!qword_28027D5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D4D8, &qword_2684B6E08);
    sub_268472208();
    sub_26846ACF0(&qword_28027D450, &qword_28027D458, &unk_2684B6FA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D5A8);
  }

  return result;
}

unint64_t sub_268472208()
{
  result = qword_28027D5B0;
  if (!qword_28027D5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D4D0, &qword_2684B6DD8);
    v3 = sub_26846ACF0(&qword_28027D5B8, &qword_28027D5C0, &qword_2684B6F98, MEMORY[0x277D63B90]);
    sub_26846F238(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D5B0);
  }

  return result;
}

uint64_t sub_2684722C0()
{
  v1 = v0;
  v2 = sub_2684B47F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 32);
  v13 = *(v1 + 1);
  v6 = v13;
  if (v14 != 1)
  {

    sub_2684B5704();
    v9 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_268472750(&v13);
    (*(v3 + 8))(v5, v2);
    v6 = v11;
    v7 = v12;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = *v1;

    return v8;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = v6;
  v12 = v7;
  MEMORY[0x26D619980](46, 0xE100000000000000);
  MEMORY[0x26D619980](*v1, v1[1]);
  return v11;
}

uint64_t sub_268472464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26846EEA4(a1, a2, a3);
  sub_2684B4804();
  return v4;
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

uint64_t sub_2684724D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_268472518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2684725AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = sub_2684722C0();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D5D8, &qword_2684B7130);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D5E0, &qword_2684B7138);
  v10 = (a2 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v5;
  v10[2] = v7;
  return result;
}

uint64_t sub_268472670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2684726D4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_2684726D4()
{
  result = qword_28027D5C8;
  if (!qword_28027D5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D5D0, &qword_2684B7100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D5C8);
  }

  return result;
}

uint64_t sub_268472750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D5E8, &qword_2684B7140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2684727B8()
{
  result = qword_28027D5F0;
  if (!qword_28027D5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D5E0, &qword_2684B7138);
    sub_26846ACF0(&qword_28027D5F8, &qword_28027D5D8, &qword_2684B7130, MEMORY[0x277CE04B0]);
    sub_26846ACF0(&qword_28027D600, &qword_28027D608, &qword_2684B7148, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D5F0);
  }

  return result;
}

uint64_t type metadata accessor for CompletionButton(uint64_t a1)
{
  result = qword_28027D618;
  if (!qword_28027D618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268472910(uint64_t a1)
{
  sub_268472A1C(319);
  if (v1 <= 0x3F)
  {
    sub_2684B4EE4();
    if (v2 <= 0x3F)
    {
      sub_268472AD8(319, &qword_28027D630, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_268472A74(319);
        if (v4 <= 0x3F)
        {
          sub_268472AD8(319, &qword_28027D648, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_268472A1C(uint64_t a1)
{
  if (!qword_28027D628)
  {
    sub_2684B41E4();
    v1 = sub_2684B5004();
    if (!v2)
    {
      atomic_store(v1, &qword_28027D628);
    }
  }
}

void sub_268472A74(uint64_t a1)
{
  if (!qword_28027D638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D640, qword_2684B8BF0);
    v1 = sub_2684B43F4();
    if (!v2)
    {
      atomic_store(v1, &qword_28027D638);
    }
  }
}

void sub_268472AD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_268472B48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_2684B47F4();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CompletionButton(0);
  v6 = v5 - 8;
  v37 = *(v5 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D650, &qword_2684B71D0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v34 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D658, &qword_2684B71D8);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  *v10 = sub_2684B50C4();
  v10[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D660, &qword_2684B71E0);
  sub_268472FC4(v2, v10 + *(v15 + 44));
  sub_26846ACF0(&qword_28027D668, &qword_28027D650, &qword_2684B71D0, MEMORY[0x277CE11A8]);
  sub_2684B4D44();
  sub_268467A4C(v10, &qword_28027D650, &qword_2684B71D0);
  v16 = sub_2684B4AC4();
  KeyPath = swift_getKeyPath();
  v18 = &v13[*(v11 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  sub_268473CC4(v2, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v20 = swift_allocObject();
  v21 = v38;
  sub_268473D28(&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_268473DEC();
  sub_2684B4CF4();

  sub_26845F0C0(v13);
  v22 = v2 + *(v6 + 44);
  v23 = *v22;
  if (*(v22 + 8) != 1)
  {

    sub_2684B5704();
    v24 = sub_2684B4A24();
    sub_2684B4324();

    v25 = v34;
    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846B1E0(v23, 0);
    (*(v35 + 8))(v25, v36);
    LOBYTE(v23) = v39;
  }

  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = (v23 & 1) == 0;
  v28 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D678, &qword_2684B7250) + 36));
  *v28 = v26;
  v28[1] = sub_268473F14;
  v28[2] = v27;
  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D680, &unk_2684B72E0);
  v33 = v21 + *(result + 36);
  *v33 = 1;
  *(v33 + 8) = v29;
  *(v33 + 16) = 0;
  *(v33 + 24) = v30;
  *(v33 + 32) = 0;
  *(v33 + 40) = v31;
  *(v33 + 48) = 0;
  return result;
}

uint64_t sub_268472FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v68 = a2;
  v53 = sub_2684B4554();
  MEMORY[0x28223BE20](v53);
  v52 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6A0, &qword_2684B7310);
  v3 = MEMORY[0x28223BE20](v65);
  v67 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v64 = (&v52 - v6);
  MEMORY[0x28223BE20](v5);
  v66 = &v52 - v7;
  v8 = sub_2684B41E4();
  v56 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v61 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6A8, &qword_2684B7318);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = (&v52 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6B0, &qword_2684B7320);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v63 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v52 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x26D619380]();
  sub_2684B3FD4();
  v27 = *(v9 + 8);
  v57 = v9 + 8;
  v58 = v27;
  v27(v13, v8);
  v55 = 0x80000002684C43E0;
  v28 = sub_2684B4EC4();
  v29 = (v17 + *(v15 + 44));
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6B8, &qword_2684B7328);
  v30 = *(v60 + 28);
  v31 = *MEMORY[0x277CE1048];
  v32 = sub_2684B4EE4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 104);
  v59 = v32;
  v34(v29 + v30, v31);
  *v29 = swift_getKeyPath();
  v35 = v54;
  *v17 = v28;
  sub_26846A8C8(v17, v23, &qword_28027D6A8, &qword_2684B7318);
  v62 = v25;
  sub_26846A8C8(v23, v25, &qword_28027D6B0, &qword_2684B7320);
  MEMORY[0x26D619380](v26);
  sub_2684B3FD4();
  v36 = v56;
  v37 = v58;
  v58(v13, v56);
  v38 = sub_2684B4EC4();
  v39 = v61;
  MEMORY[0x26D619380](v26);
  LOBYTE(v28) = sub_2684B3FD4();
  v37(v39, v36);
  if ((v28 & 1) != 0 || *(v35 + *(type metadata accessor for CompletionButton(0) + 24)) == 1)
  {
    sub_2684B4544();
  }

  else
  {
    v69 = sub_2684B49E4();
  }

  v40 = sub_2684B44B4();
  v41 = *(type metadata accessor for CompletionButton(0) + 20);
  KeyPath = swift_getKeyPath();
  v43 = v64;
  v44 = (v64 + *(v65 + 36));
  (*(v33 + 16))(v44 + *(v60 + 28), v35 + v41, v59);
  *v44 = KeyPath;
  *v43 = v38;
  v43[1] = v40;
  v45 = v66;
  sub_26846A8C8(v43, v66, &qword_28027D6A0, &qword_2684B7310);
  v47 = v62;
  v46 = v63;
  sub_26846A6DC(v62, v63, &qword_28027D6B0, &qword_2684B7320);
  v48 = v67;
  sub_26846A6DC(v45, v67, &qword_28027D6A0, &qword_2684B7310);
  v49 = v68;
  sub_26846A6DC(v46, v68, &qword_28027D6B0, &qword_2684B7320);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6C0, &unk_2684B7360);
  sub_26846A6DC(v48, v49 + *(v50 + 48), &qword_28027D6A0, &qword_2684B7310);
  sub_268467A4C(v45, &qword_28027D6A0, &qword_2684B7310);
  sub_268467A4C(v47, &qword_28027D6B0, &qword_2684B7320);
  sub_268467A4C(v48, &qword_28027D6A0, &qword_2684B7310);
  return sub_268467A4C(v46, &qword_28027D6B0, &qword_2684B7320);
}

void *sub_268473624(uint64_t a1)
{
  v2 = type metadata accessor for CompletionButton(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D688, &qword_2684B76A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-v8];
  v10 = (a1 + *(v3 + 36));
  v11 = *v10;
  v12 = *(v10 + 1);
  v21 = *v10;
  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D690, &qword_2684B72F0);
  result = sub_2684B4F34();
  if ((v20 & 1) == 0)
  {
    v21 = v11;
    v22 = v12;
    v20 = 1;
    sub_2684B4F44();
    v14 = sub_2684B56C4();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_268473CC4(a1, &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_2684B56A4();
    v15 = sub_2684B5694();
    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v15;
    *(v17 + 24) = v18;
    sub_268473D28(v6, v17 + v16);
    sub_268476E6C(0, 0, v9, &unk_2684B7300, v17);
  }

  return result;
}

uint64_t sub_268473854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2684B41E4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_2684B56A4();
  v4[14] = sub_2684B5694();
  v7 = sub_2684B5684();

  return MEMORY[0x2822009F8](sub_268473954, v7, v6);
}

uint64_t sub_268473954()
{
  v15 = *(v0 + 104);
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  v16 = type metadata accessor for CompletionButton(0);
  sub_268473B54((v0 + 16));
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x26D619380]();
  v6 = sub_2684B3FD4();
  v7 = *(v2 + 8);
  v7(v1, v4);
  MEMORY[0x26D619380](v5);
  (*(v13 + 16))((v6 & 1) == 0, v1, v14);
  v7(v1, v4);
  (*(v2 + 16))(v1, v15, v4);
  sub_2684B4FC4();
  v7(v15, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v8 = (v3 + *(v16 + 28));
  v9 = *v8;
  v10 = *(v8 + 1);
  *(v0 + 56) = v9;
  *(v0 + 64) = v10;
  *(v0 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D690, &qword_2684B72F0);
  sub_2684B4F44();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_268473B54@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2684B47F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26846A6DC(v2, v10, &qword_28027D698, &qword_2684B7308);
  if (v11 == 1)
  {
    return sub_268474100(v10, a1);
  }

  sub_2684B5704();
  v9 = sub_2684B4A24();
  sub_2684B4324();

  sub_2684B47E4();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_268473CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268473D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_268473D8C()
{
  v1 = *(type metadata accessor for CompletionButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268473624(v2);
}

unint64_t sub_268473DEC()
{
  result = qword_28027D670;
  if (!qword_28027D670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D658, &qword_2684B71D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D650, &qword_2684B71D0);
    sub_26846ACF0(&qword_28027D668, &qword_28027D650, &qword_2684B71D0, MEMORY[0x277CE11A8]);
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D670);
  }

  return result;
}

uint64_t sub_268473F1C(uint64_t a1)
{
  v4 = *(type metadata accessor for CompletionButton(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26847400C;

  return sub_268473854(a1, v6, v7, v1 + v5);
}

uint64_t sub_26847400C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_268474100(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_268474118(uint64_t a1)
{
  v2 = sub_2684B4EE4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2684B4694();
}

unint64_t sub_2684741E0()
{
  result = qword_28027D6C8;
  if (!qword_28027D6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D680, &unk_2684B72E0);
    v3 = sub_26847426C();
    sub_26846B18C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D6C8);
  }

  return result;
}

unint64_t sub_26847426C()
{
  result = qword_28027D6D0;
  if (!qword_28027D6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D678, &qword_2684B7250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D658, &qword_2684B71D8);
    sub_268473DEC();
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D6D8, &qword_28027D6E0, &qword_2684B7F00, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D6D0);
  }

  return result;
}

void sub_268474360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  v4 = sub_2684B3A84();

  sub_2684B5454();
}

uint64_t type metadata accessor for LocationTriggerPill(uint64_t a1)
{
  result = qword_28027D6F0;
  if (!qword_28027D6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26847446C(uint64_t a1)
{
  sub_2684B4084();
  if (v1 <= 0x3F)
  {
    sub_2684744F0(319, v1, v2);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2684744F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_28027D700)
  {
    sub_26847454C(0, a2, a3);
    v3 = sub_2684B4464();
    if (!v4)
    {
      atomic_store(v3, &qword_28027D700);
    }
  }
}

unint64_t sub_26847454C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027D708;
  if (!qword_28027D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D708);
  }

  return result;
}

uint64_t sub_2684745BC(uint64_t a1)
{
  if (sub_2684B4064())
  {
    sub_2684B4EC4();
    sub_2684B4E74();
    sub_2684B4E54();
  }

  else
  {
    sub_2684B4EC4();
    sub_2684B4E74();
    sub_2684B4E44();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D738, &qword_2684B7440);
  sub_268475610();
  sub_2684B4D44();
}

uint64_t sub_2684746BC@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D710, &qword_2684B7418);
  MEMORY[0x28223BE20](v45);
  v3 = &v38 - v2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D718, &unk_2684B7420);
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - v4;
  v5 = sub_2684B4004();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = sub_2684B3D44();
  v40 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D348, &unk_2684BA020);
  v42 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v41 = &v38 - v16;
  if (sub_2684B4064())
  {
    v39 = v15;
    v17 = v43;
    sub_2684B4054();
    (*(v6 + 104))(v9, *MEMORY[0x277D5E160], v5);
    v18 = sub_2684B3FF4();
    v19 = *(v6 + 8);
    v19(v9, v5);
    v19(v11, v5);
    v20 = v40;
    v21 = MEMORY[0x277D5E0F0];
    if ((v18 & 1) == 0)
    {
      v21 = MEMORY[0x277D5E0D8];
    }

    (*(v40 + 104))(v14, *v21, v12);
    sub_2684B3D34();
    sub_2684B4894();
    if (qword_28027CF30 != -1)
    {
      swift_once();
    }

    v22 = qword_280282928;
    v23 = sub_2684B4B94();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    (*(v20 + 8))(v14, v12);
    v47 = v23;
    v48 = v25;
    v49 = v27 & 1;
    v50 = v29;
    v30 = MEMORY[0x277CE0BD8];
    v31 = MEMORY[0x277CE0BC8];
    v32 = v41;
    sub_2684B4D44();
    sub_26846D468(v23, v25, v27 & 1);

    v33 = v42;
    v34 = v39;
    (*(v42 + 16))(v17, v32, v39);
    swift_storeEnumTagMultiPayload();
    v47 = v30;
    v48 = v31;
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D728, &qword_28027D710, &qword_2684B7418, MEMORY[0x277CE1138]);
    sub_2684B49B4();
    return (*(v33 + 8))(v32, v34);
  }

  else
  {
    type metadata accessor for LocationTriggerPill(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
    sub_2684B4454();
    v36 = v47;
    *v3 = sub_2684B4834();
    *(v3 + 1) = v36;
    v3[16] = 0;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D720, &unk_2684B7430);
    sub_268474CDC(v1, &v3[*(v37 + 44)]);
    sub_26845F52C(v3, v43);
    swift_storeEnumTagMultiPayload();
    v47 = MEMORY[0x277CE0BD8];
    v48 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D728, &qword_28027D710, &qword_2684B7418, MEMORY[0x277CE1138]);
    sub_2684B49B4();
    return sub_26845F59C(v3);
  }
}

uint64_t sub_268474CDC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = sub_2684B4004();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = sub_2684B3D44();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D348, &unk_2684BA020);
  v14 = *(v44 - 8);
  v15 = MEMORY[0x28223BE20](v44);
  v46 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v45 = &v44 - v17;
  v47 = a1;
  sub_2684B4054();
  (*(v4 + 104))(v7, *MEMORY[0x277D5E160], v3);
  LOBYTE(a1) = sub_2684B3FF4();
  v18 = *(v4 + 8);
  v18(v7, v3);
  v18(v9, v3);
  v19 = MEMORY[0x277D5E0E8];
  if ((a1 & 1) == 0)
  {
    v19 = MEMORY[0x277D5E0E0];
  }

  (*(v11 + 104))(v13, *v19, v10);
  sub_2684B3D34();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v20 = qword_280282928;
  v21 = sub_2684B4B94();
  v23 = v22;
  v25 = v24;
  (*(v11 + 8))(v13, v10);
  v26 = sub_2684B4B64();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_26846D468(v21, v23, v25 & 1);

  v49 = v26;
  v50 = v28;
  v51 = v30 & 1;
  v52 = v32;
  v33 = v45;
  sub_2684B4D44();
  sub_26846D468(v26, v28, v30 & 1);

  v34 = sub_2684B4074();
  v36 = v35;
  v37 = *(v14 + 16);
  v38 = v46;
  v39 = v44;
  v37(v46, v33, v44);
  v40 = v48;
  v37(v48, v38, v39);
  v41 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D730, &unk_2684B89E0) + 48)];
  *v41 = v34;
  *(v41 + 1) = v36;
  v41[16] = 0;
  *(v41 + 3) = MEMORY[0x277D84F90];
  sub_268475600(v34, v36, 0);
  v42 = *(v14 + 8);

  v42(v33, v39);
  sub_26846D468(v34, v36, 0);

  return (v42)(v38, v39);
}

double sub_2684751AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1 - 8);
  v7 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  sub_268475340(v2, &v15 - v8);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_2684753A4(v9, v11 + v10);
  sub_268475340(v2, v7);
  v12 = swift_allocObject();
  sub_2684753A4(v7, v12 + v10);
  KeyPath = swift_getKeyPath();
  *a2 = sub_268475408;
  *(a2 + 8) = v11;
  *(a2 + 16) = sub_26847559C;
  *(a2 + 24) = v12;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  result = 24.0;
  *(a2 + 48) = xmmword_2684B6710;
  *(a2 + 64) = sub_2684A3C08;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_268475340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationTriggerPill(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684753A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationTriggerPill(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268475408()
{
  v1 = *(type metadata accessor for LocationTriggerPill(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2684745BC(v2);
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for LocationTriggerPill(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_2684B4084();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_268475600(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_268475610()
{
  result = qword_28027D740;
  if (!qword_28027D740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D738, &qword_2684B7440);
    sub_26846ACF0(&qword_28027D748, &qword_28027D750, &qword_2684B7448, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D740);
  }

  return result;
}

uint64_t type metadata accessor for ReadingPromptButtons(uint64_t a1)
{
  result = qword_28027D768;
  if (!qword_28027D768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26847573C(uint64_t a1)
{
  result = sub_2684B3FB4();
  if (v2 <= 0x3F)
  {
    result = sub_2684B52B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2684757DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D778, &qword_2684B74C8);
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v32 = sub_2684B51B4();
  v29 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D780, &qword_2684B74D0);
  MEMORY[0x28223BE20](v31);
  v8 = &v26 - v7;
  v9 = type metadata accessor for ReadingPromptButtons(0);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D788, &qword_2684B74D8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  if (sub_2684B3FA4())
  {
    sub_26847664C(v1, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v16 = swift_allocObject();
    sub_2684766B0(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    sub_2684B4F74();
    (*(v12 + 16))(v8, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_2684765E8();
    sub_2684768D0(&qword_28027D798, MEMORY[0x277D63C38], MEMORY[0x277D63C18]);
    sub_2684B49B4();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    sub_268475D98(v5);
    v26 = sub_2684765E8();
    v37 = v11;
    v38 = v26;
    swift_getOpaqueTypeConformance2();
    v18 = sub_2684B4BC4();
    (*(v27 + 8))(v5, v3);
    v19 = MEMORY[0x277D63A60];
    v39 = MEMORY[0x277CE11C8];
    v40 = MEMORY[0x277D63A60];
    v37 = v18;
    sub_26847664C(v2, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v21 = swift_allocObject();
    sub_2684766B0(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    sub_2684B4F74();
    v22 = sub_2684B4BC4();
    (*(v12 + 8))(v14, v11);
    v36 = v19;
    v35 = MEMORY[0x277CE11C8];
    v34 = v22;
    v23 = v28;
    sub_2684B51A4();
    v24 = v29;
    v25 = v32;
    (*(v29 + 16))(v8, v23, v32);
    swift_storeEnumTagMultiPayload();
    sub_2684768D0(&qword_28027D798, MEMORY[0x277D63C38], MEMORY[0x277D63C18]);
    sub_2684B49B4();
    return (*(v24 + 8))(v23, v25);
  }
}

uint64_t sub_268475D98@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = sub_2684B4554();
  MEMORY[0x28223BE20](v2);
  v18 = sub_2684B5134();
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReadingPromptButtons(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D788, &qword_2684B74D8);
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v17 - v10;
  sub_26847664C(v1, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_2684766B0(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_2684B4F74();
  v14 = v18;
  (*(v3 + 104))(v5, *MEMORY[0x277D63A90], v18);
  v20 = sub_2684B4E74();
  sub_2684B44B4();
  sub_2684B4544();
  sub_2684B44B4();
  sub_2684765E8();
  v15 = v17;
  sub_2684B4BD4();

  (*(v3 + 8))(v5, v14);
  return (*(v9 + 8))(v11, v15);
}

uint64_t sub_2684760F4()
{
  v0 = sub_2684B3A44();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B5464();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReadingPromptButtons(0);
  sub_2684B5294();
  sub_2684B3A34();
  v8 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  sub_2684768D0(&qword_28027D7A0, MEMORY[0x277D5DF90], MEMORY[0x277D5DF88]);
  v9 = sub_2684B3A84();

  sub_2684B5454();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26847630C()
{
  v0 = sub_2684B3A64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B5464();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReadingPromptButtons(0);
  sub_2684B5294();
  sub_2684B3A54();
  v8 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  sub_2684768D0(&qword_28027D7A8, MEMORY[0x277D5DFA0], MEMORY[0x277D5DF98]);
  v9 = sub_2684B3A84();

  sub_2684B5454();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26847651C@<X0>(uint64_t a2@<X8>)
{
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v3 = qword_280282928;
  result = sub_2684B4B94();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

unint64_t sub_2684765E8()
{
  result = qword_28027D790;
  if (!qword_28027D790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D788, &qword_2684B74D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D790);
  }

  return result;
}

uint64_t sub_26847664C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingPromptButtons(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684766B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingPromptButtons(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26847672C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ReadingPromptButtons(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for ReadingPromptButtons(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_2684B3FB4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = sub_2684B52B4();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_2684768D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_268476918()
{
  result = qword_28027D7B0;
  if (!qword_28027D7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D7B8, &unk_2684B74E0);
    sub_2684765E8();
    sub_2684768D0(&qword_28027D798, MEMORY[0x277D63C38], MEMORY[0x277D63C18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D7B0);
  }

  return result;
}

uint64_t type metadata accessor for ReminderDisambiguationRow(uint64_t a1)
{
  result = qword_28027D7C0;
  if (!qword_28027D7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268476A4C(uint64_t a1)
{
  result = sub_2684B41E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_268476AD4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2684B41E4();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D0, &qword_2684B7560) + 28)) = 0;
  v4 = type metadata accessor for ReminderView(0);
  *(a1 + *(v4 + 20)) = 0;
  *(a1 + *(v4 + 24)) = 0;
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D8, &qword_2684B7598) + 36));
  *v7 = KeyPath;
  v7[1] = sub_268476C74;
  v7[2] = v6;
  LOBYTE(KeyPath) = sub_2684B4A44();
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7E0, &qword_2684B75A0) + 36);
  *v8 = KeyPath;
  result = 0.0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 1;
  return result;
}

uint64_t sub_268476C08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2684B4784();
  *a1 = result & 1;
  return result;
}

unint64_t sub_268476C8C()
{
  result = qword_28027D7E8;
  if (!qword_28027D7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D7E0, &qword_2684B75A0);
    sub_268476D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D7E8);
  }

  return result;
}

unint64_t sub_268476D18()
{
  result = qword_28027D7F0;
  if (!qword_28027D7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D7D8, &qword_2684B7598);
    sub_268476DA4();
    sub_268476DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D7F0);
  }

  return result;
}

unint64_t sub_268476DA4()
{
  result = qword_28027D7F8;
  if (!qword_28027D7F8)
  {
    type metadata accessor for ReminderView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D7F8);
  }

  return result;
}

unint64_t sub_268476DFC()
{
  result = qword_28027D6D8;
  if (!qword_28027D6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D6E0, &qword_2684B7F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D6D8);
  }

  return result;
}

uint64_t sub_268476E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D688, &qword_2684B76A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26846A6DC(a3, v25 - v10, &qword_28027D688, &qword_2684B76A0);
  v12 = sub_2684B56C4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_268467A4C(v11, &qword_28027D688, &qword_2684B76A0);
  }

  else
  {
    sub_2684B56B4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2684B5684();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2684B5574() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_268467A4C(a3, &qword_28027D688, &qword_2684B76A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_268467A4C(a3, &qword_28027D688, &qword_2684B76A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26847716C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2684B4034();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = sub_2684B4A94();
  sub_2684B4364();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D868, &qword_2684B7788);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

id sub_268477224()
{
  v0 = sub_2684B37F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B4014();
  if (v5 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v6 = v4;
  v7 = v5;
  sub_268479988(v4, v5);
  v8 = sub_2684B3804();
  v9 = [objc_opt_self() metadataWithDataRepresentation_];

  sub_2684799DC(v6, v7);
  sub_2684799DC(v6, v7);
  sub_2684B4024();
  LOBYTE(v6) = sub_268477728(v3);
  (*(v1 + 8))(v3, v0);
  if ((v6 & 1) == 0)
  {

LABEL_4:
    sub_2684B4024();
    v9 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
    v10 = sub_2684B37D4();
    [v9 setURL_];

    (*(v1 + 8))(v3, v0);
  }

  return v9;
}

void sub_2684773F8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LinkAttachmentViewInternal(0);
  v26 = *(v4 - 8);
  v5 = v26[8];
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_2684B37F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D688, &qword_2684B76A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = [a2 metadata];
  if ((sub_268477728(a1) & 1) != 0 && (v14 = [v13 icon]) != 0)
  {
    v26 = v14;

    v15 = v26;
  }

  else
  {
    v16 = sub_2684B56C4();
    v17 = *(*(v16 - 8) + 56);
    v24 = v12;
    v17(v12, 1, 1, v16);
    (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    sub_268478D70(v25, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v19 = a2;
    v20 = (v8 + *(v26 + 80) + v18) & ~*(v26 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    (*(v7 + 32))(v21 + v18, v9, v6);
    sub_268478DD4(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    *(v21 + ((v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
    v22 = v19;
    sub_268476E6C(0, 0, v24, &unk_2684B76B0, v21);
  }
}

uint64_t sub_268477728(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2684B37F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v54 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D828, &qword_2684B76E8);
  v8 = MEMORY[0x28223BE20](v7);
  v63 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v51[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D830, &unk_2684B76F0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v62 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v51[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v61 = &v51[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v51[-v20];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v51[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v51[-v25];
  v27 = v5[2];
  v56 = v5 + 2;
  v57 = a1;
  v55 = v27;
  v27(&v51[-v25], a1, v4);
  v28 = 1;
  v65 = v5[7];
  v65(v26, 0, 1, v4);
  v58 = v2;
  v29 = [v2 URL];
  if (v29)
  {
    v30 = v29;
    sub_2684B37E4();

    v28 = 0;
  }

  v65(v24, v28, 1, v4);
  v59 = v7;
  v31 = *(v7 + 48);
  sub_26846A6DC(v26, v11, &qword_28027D830, &unk_2684B76F0);
  sub_26846A6DC(v24, &v11[v31], &qword_28027D830, &unk_2684B76F0);
  v64 = v5;
  v32 = v5[6];
  if (v32(v11, 1, v4) != 1)
  {
    sub_26846A6DC(v11, v21, &qword_28027D830, &unk_2684B76F0);
    v53 = v32;
    if (v32(&v11[v31], 1, v4) != 1)
    {
      v40 = v64;
      v41 = v54;
      (v64[4])(v54, &v11[v31], v4);
      sub_26847993C(&qword_28027D838, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v52 = sub_2684B5534();
      v42 = v40[1];
      v42(v41, v4);
      sub_268467A4C(v24, &qword_28027D830, &unk_2684B76F0);
      sub_268467A4C(v26, &qword_28027D830, &unk_2684B76F0);
      v42(v21, v4);
      sub_268467A4C(v11, &qword_28027D830, &unk_2684B76F0);
      v32 = v53;
      if (v52)
      {
        goto LABEL_18;
      }

LABEL_9:
      v34 = v61;
      v55(v61, v57, v4);
      v35 = 1;
      v65(v34, 0, 1, v4);
      v36 = [v58 originalURL];
      if (v36)
      {
        v37 = v60;
        v38 = v36;
        sub_2684B37E4();

        v35 = 0;
        v39 = v62;
      }

      else
      {
        v39 = v62;
        v37 = v60;
      }

      v43 = v59;
      v65(v37, v35, 1, v4);
      v44 = *(v43 + 48);
      v45 = v63;
      sub_26846A6DC(v34, v63, &qword_28027D830, &unk_2684B76F0);
      sub_26846A6DC(v37, &v45[v44], &qword_28027D830, &unk_2684B76F0);
      if (v32(v45, 1, v4) == 1)
      {
        sub_268467A4C(v37, &qword_28027D830, &unk_2684B76F0);
        sub_268467A4C(v34, &qword_28027D830, &unk_2684B76F0);
        if (v32(&v45[v44], 1, v4) == 1)
        {
          v33 = v45;
          goto LABEL_17;
        }
      }

      else
      {
        sub_26846A6DC(v45, v39, &qword_28027D830, &unk_2684B76F0);
        if (v32(&v45[v44], 1, v4) != 1)
        {
          v47 = v64;
          v48 = v54;
          (v64[4])(v54, &v45[v44], v4);
          sub_26847993C(&qword_28027D838, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
          v46 = sub_2684B5534();
          v49 = v47[1];
          v49(v48, v4);
          sub_268467A4C(v37, &qword_28027D830, &unk_2684B76F0);
          sub_268467A4C(v34, &qword_28027D830, &unk_2684B76F0);
          v49(v39, v4);
          sub_268467A4C(v45, &qword_28027D830, &unk_2684B76F0);
          return v46 & 1;
        }

        sub_268467A4C(v37, &qword_28027D830, &unk_2684B76F0);
        sub_268467A4C(v34, &qword_28027D830, &unk_2684B76F0);
        (v64[1])(v39, v4);
      }

      sub_268467A4C(v45, &qword_28027D828, &qword_2684B76E8);
      v46 = 0;
      return v46 & 1;
    }

    sub_268467A4C(v24, &qword_28027D830, &unk_2684B76F0);
    sub_268467A4C(v26, &qword_28027D830, &unk_2684B76F0);
    (v64[1])(v21, v4);
    v32 = v53;
LABEL_8:
    sub_268467A4C(v11, &qword_28027D828, &qword_2684B76E8);
    goto LABEL_9;
  }

  sub_268467A4C(v24, &qword_28027D830, &unk_2684B76F0);
  sub_268467A4C(v26, &qword_28027D830, &unk_2684B76F0);
  if (v32(&v11[v31], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  v33 = v11;
LABEL_17:
  sub_268467A4C(v33, &qword_28027D830, &unk_2684B76F0);
LABEL_18:
  v46 = 1;
  return v46 & 1;
}

uint64_t sub_268477F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  v7 = sub_2684B37F4();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268478040, 0, 0);
}

uint64_t sub_268478040()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD46E0]) init];
  v0[27] = v1;
  v2 = sub_2684B37D4();
  v0[28] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_268478194;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D808, &qword_2684B76D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2684787B8;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 startFetchingMetadataForURL:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_268478194()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_2684784D8;
  }

  else
  {
    v2 = sub_2684782A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2684782A4()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[18];
  v0[30] = v6;

  sub_2684B4024();
  v7 = sub_268477728(v3);
  (*(v5 + 8))(v3, v4);
  if (v7)
  {
    sub_2684B56A4();
    v0[31] = sub_2684B5694();
    v9 = sub_2684B5684();

    return MEMORY[0x2822009F8](sub_2684783E8, v9, v8);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2684783E8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 176);

  [v2 setMetadata_];

  return MEMORY[0x2822009F8](sub_268478468, 0, 0);
}

uint64_t sub_268478468()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2684784D8()
{
  v30 = v0;
  v1 = v0[28];
  v2 = v0[27];
  swift_willThrow();

  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v3 = v0[29];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[20];
  v8 = sub_2684B4354();
  __swift_project_value_buffer(v8, qword_280282910);
  (*(v5 + 16))(v4, v7, v6);
  v9 = v3;
  v10 = sub_2684B4334();
  v11 = sub_2684B56F4();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[29];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[23];
  if (v12)
  {
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29[0] = v28;
    *v17 = 136315394;
    sub_26847993C(&qword_28027D810, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v18 = sub_2684B59E4();
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = sub_268479394(v18, v20, v29);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v0[19] = v13;
    v22 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D818, &qword_2684B76D8);
    v23 = sub_2684B5564();
    v25 = sub_268479394(v23, v24, v29);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_26845C000, v10, v11, "Failed retrieving link metadata for %s with error: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D61A450](v28, -1, -1);
    MEMORY[0x26D61A450](v17, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_2684787B8(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D818, &qword_2684B76D8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_268478890(void *a1)
{
  v2 = sub_2684B37F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 metadata];
  sub_2684B4024();
  v7 = sub_268477728(v5);

  v8 = *(v3 + 8);
  result = v8(v5, v2);
  if ((v7 & 1) == 0)
  {
    v10 = sub_268477224();
    [a1 setMetadata_];
    sub_2684B4024();
    sub_2684773F8(v5, a1);

    return v8(v5, v2);
  }

  return result;
}

id sub_2684789EC()
{
  v0 = sub_2684B37F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CD46D0]) init];
  v5 = sub_268477224();
  [v4 setMetadata_];
  sub_2684B4024();
  sub_2684773F8(v3, v4);
  (*(v1 + 8))(v3, v0);
  [v4 _setPreferredSizeClass_];

  return v4;
}

double sub_268478B2C(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 10.0;
  if (a2)
  {
    *&a1 = 10.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return result;
}

uint64_t sub_268478B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26847993C(&qword_28027D840, type metadata accessor for LinkAttachmentViewInternal, &unk_2684B7610);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_268478C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26847993C(&qword_28027D840, type metadata accessor for LinkAttachmentViewInternal, &unk_2684B7610);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_268478CB0(uint64_t a1)
{
  sub_26847993C(&qword_28027D840, type metadata accessor for LinkAttachmentViewInternal, &unk_2684B7610);
  sub_2684B4984();
  __break(1u);
}

uint64_t sub_268478D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkAttachmentViewInternal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268478DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkAttachmentViewInternal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268478E38(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2684B37F4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for LinkAttachmentViewInternal(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_26847400C;

  return sub_268477F70(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_268478FC0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2684790B8;

  return v6(a1);
}

uint64_t sub_2684790B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2684791B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268479D10;

  return sub_268478FC0(a1, v4);
}

uint64_t sub_268479268(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26847400C;

  return sub_268478FC0(a1, v4);
}

uint64_t sub_268479330(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_268479394(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_268479460(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_268479330(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_268479460(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26847956C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2684B58F4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_26847956C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2684795B8(a1, a2);
  sub_2684796E8(&unk_287913BE0);
  return v3;
}

void *sub_2684795B8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2684797D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2684B58F4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2684B55C4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2684797D4(v10, 0);
        result = sub_2684B5874();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2684796E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_268479848(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2684797D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D820, &qword_2684B76E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_268479848(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D820, &qword_2684B76E0);
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

uint64_t sub_26847993C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268479988(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2684799DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2684799F0(a1, a2);
  }

  return a1;
}

uint64_t sub_2684799F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B4034();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B4034();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_268479B90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268479BC8(uint64_t a1)
{
  result = sub_2684B4034();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_268479C50()
{
  result = qword_28027D870;
  if (!qword_28027D870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D868, &qword_2684B7788);
    sub_26847993C(&qword_28027D800, type metadata accessor for LinkAttachmentViewInternal, &unk_2684B75C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D870);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_268479D38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
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

uint64_t sub_268479D80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_268479DD4()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v11.origin.x = v3;
  v11.origin.y = v5;
  v11.size.width = v7;
  v11.size.height = v9;
  Width = CGRectGetWidth(v11);
  v12.origin.x = v3;
  v12.origin.y = v5;
  v12.size.width = v7;
  v12.size.height = v9;
  *(v0 + 9) = CGRectGetHeight(v12) < Width;
}

uint64_t sub_268479ED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
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

uint64_t sub_268479F20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_268479F94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = sub_2684B5364();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2684B47F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v2 + 32);
  v38 = *(v2 + 16);
  v11 = v38;
  if (v39 == 1)
  {
    v12 = *(&v38 + 1);

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v23 = sub_2684B4354();
    __swift_project_value_buffer(v23, qword_280282910);
    v24 = sub_2684B4334();
    v25 = sub_2684B5704();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_17;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "[IntentsUISlotViewModifier] intentsUIParameterPath not set up in view environment";
    goto LABEL_16;
  }

  sub_2684B5704();
  v20 = v8;
  v21 = a2;
  v22 = sub_2684B4A24();
  sub_2684B4324();

  a2 = v21;
  v8 = v20;
  sub_2684B47E4();
  swift_getAtKeyPath();
  sub_268467A4C(&v38, &qword_28027D5E8, &qword_2684B7140);
  (*(v20 + 8))(v10, v7);
  v11 = v36;
  v12 = v37;
  if (!v37)
  {
    goto LABEL_7;
  }

LABEL_3:
  LOBYTE(v37) = *(v2 + 8);
  v13 = *v2;
  v36 = v13;
  v32 = v5;
  if (v37 != 1)
  {

    sub_2684B5704();
    v28 = v7;
    v29 = v8;
    v30 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_268467A4C(&v36, &qword_28027D888, &qword_2684B79E0);
    v14 = (*(v29 + 8))(v10, v28);
    v13 = v35;
    if (v35)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v14 = v13;
  if (!v13)
  {
LABEL_12:

    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v31 = sub_2684B4354();
    __swift_project_value_buffer(v31, qword_280282910);
    v24 = sub_2684B4334();
    v25 = sub_2684B5704();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_17;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "[IntentsUISlotViewModifier] INInteraction not set up in view environment.";
LABEL_16:
    _os_log_impl(&dword_26845C000, v24, v25, v27, v26, 2u);
    MEMORY[0x26D61A450](v26, -1, -1);
LABEL_17:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D878, &qword_2684B79D8);
    sub_26847A6CC();
    result = sub_2684B4BC4();
    v18 = result;
    goto LABEL_18;
  }

LABEL_5:
  MEMORY[0x28223BE20](v14);
  *(&v32 - 4) = v11;
  *(&v32 - 3) = v12;
  *(&v32 - 2) = a1;
  v15 = v13;
  v16 = v34;
  sub_2684B5374();

  sub_26847A73C();
  v17 = v33;
  v18 = sub_2684B4BC4();

  result = (*(v32 + 8))(v16, v17);
LABEL_18:
  *a2 = v18;
  return result;
}

uint64_t sub_26847A4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B5164();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D898, &qword_2684B79E8);
  v10 = swift_allocObject();
  v15 = xmmword_2684B7880;
  *(v10 + 16) = xmmword_2684B7880;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v16 = a3;

  sub_2684B5174();
  v11 = sub_2684B5334();
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8A0, &unk_2684B79F0);
  v12 = swift_allocObject();
  *(v12 + 16) = v15;
  *(v12 + 32) = v11;
  v13 = sub_2684B5324();

  return v13;
}

uint64_t sub_26847A634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D878, &qword_2684B79D8);
  a2[3] = v4;
  a2[4] = sub_26847A6CC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, a1, v4);
}

unint64_t sub_26847A6CC()
{
  result = qword_28027D880;
  if (!qword_28027D880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D878, &qword_2684B79D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D880);
  }

  return result;
}

unint64_t sub_26847A73C()
{
  result = qword_28027D890;
  if (!qword_28027D890)
  {
    sub_2684B5364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D890);
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

uint64_t sub_26847A800@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v47 = type metadata accessor for ListBadgeView.EmblemView(0);
  MEMORY[0x28223BE20](v47);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2684B3BA4();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8C8, &qword_2684B7A90);
  MEMORY[0x28223BE20](v46);
  v6 = (&v40 - v5);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8D0, &qword_2684B7A98);
  MEMORY[0x28223BE20](v45);
  v8 = (&v40 - v7);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8D8, &qword_2684B7AA0);
  MEMORY[0x28223BE20](v48);
  v10 = &v40 - v9;
  v11 = sub_2684B4E34();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2684B3BB4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v18, v2, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == *MEMORY[0x277D5DFF0])
  {
    (*(v16 + 96))(v18, v15);
    v20 = v18[1];
    v44 = *v18;
    v43 = v20;
    v21 = *(v2 + *(type metadata accessor for ListBadgeView(0) + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8F8, &qword_2684B7AA8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2684B7A00;
    v23 = *MEMORY[0x277CE0EE0];
    v24 = *(v12 + 104);
    v24(v14, v23, v11);

    *(v22 + 32) = sub_2684B4EA4();
    v24(v14, v23, v11);
    *(v22 + 40) = sub_2684B4EA4();
    MEMORY[0x26D619420](v22);
    sub_2684B5114();
    sub_2684B5124();
    sub_2684B4514();
    *&v51 = v44;
    *(&v51 + 1) = v43;
    *&v52 = v21;
    *(&v52 + 1) = v55;
    v53 = v56;
    v54 = v57;
    v25 = v52;
    *v8 = v51;
    v8[1] = v25;
    v26 = v54;
    v8[2] = v53;
    v8[3] = v26;
    swift_storeEnumTagMultiPayload();
    v27 = sub_26847BD74(&v51, v50);
    sub_26847BC08(v27, v28, v29);
    sub_26847BC5C();
    sub_2684B49B4();
    sub_26846A6DC(v10, v6, &qword_28027D8D8, &qword_2684B7AA0);
    swift_storeEnumTagMultiPayload();
    sub_26847BB7C();
    sub_2684B49B4();
    sub_26847BDAC(&v51);
    return sub_268467A4C(v10, &qword_28027D8D8, &qword_2684B7AA0);
  }

  else
  {
    v40 = v6;
    v31 = v47;
    if (v19 == *MEMORY[0x277D5DFF8])
    {
      (*(v16 + 96))(v18, v15);
      v32 = v41;
      v33 = v44;
      v34 = v18;
      v35 = v42;
      (*(v41 + 32))(v44, v34, v42);
      v36 = v43;
      (*(v32 + 16))(v43, v33, v35);
      *(v36 + *(v31 + 20)) = *(v2 + *(type metadata accessor for ListBadgeView(0) + 20));
      sub_26847BCB4(v36, v8);
      v37 = swift_storeEnumTagMultiPayload();
      sub_26847BC08(v37, v38, v39);
      sub_26847BC5C();

      sub_2684B49B4();
      sub_26846A6DC(v10, v40, &qword_28027D8D8, &qword_2684B7AA0);
      swift_storeEnumTagMultiPayload();
      sub_26847BB7C();
      sub_2684B49B4();
      sub_268467A4C(v10, &qword_28027D8D8, &qword_2684B7AA0);
      sub_26847BD18(v36);
      return (*(v32 + 8))(v44, v35);
    }

    else
    {
      *v40 = sub_2684B4E64();
      swift_storeEnumTagMultiPayload();
      sub_26847BB7C();
      sub_2684B49B4();
      return (*(v16 + 8))(v18, v15);
    }
  }
}

uint64_t sub_26847AFD4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D330, &qword_2684BAEE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D920, &qword_2684B7BA8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;

  sub_2684B44C4();
  v9 = sub_2684B4AE4();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_2684B4B04();
  sub_268467A4C(v5, &qword_28027D330, &qword_2684BAEE0);
  v10 = sub_2684B4B74();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_2684B50A4();
  sub_2684B45F4();
  v14 &= 1u;
  v37 = v14;
  v17 = sub_2684B50A4();
  v19 = v18;
  v20 = &v8[*(v6 + 36)];
  *v20 = sub_2684B50A4();
  v20[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D928, &qword_2684B7BB0);
  sub_26847B2BC(a1, v20 + *(v22 + 44));
  v23 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D930, &qword_2684B7BB8) + 36));
  *v23 = v17;
  v23[1] = v19;
  *v8 = v10;
  *(v8 + 1) = v12;
  v8[16] = v14;
  *(v8 + 3) = v16;
  v24 = v31;
  *(v8 + 2) = v30;
  *(v8 + 3) = v24;
  v25 = v36;
  v26 = v34;
  *(v8 + 7) = v35;
  *(v8 + 8) = v25;
  v27 = v33;
  *(v8 + 4) = v32;
  *(v8 + 5) = v27;
  *(v8 + 6) = v26;
  sub_26847C198();
  sub_2684B4D44();
  return sub_268467A4C(v8, &qword_28027D920, &qword_2684B7BA8);
}

uint64_t sub_26847B2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D958, &qword_2684B7BC8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *&v25[32] = *(a1 + 56);
  v13 = *(a1 + 40);
  *v25 = v12;
  *&v25[16] = v13;
  v14 = v12;
  v15 = *(v8 + 44);
  v16 = *MEMORY[0x277CE13E0];
  v17 = sub_2684B50D4();
  v18 = *(*(v17 - 8) + 104);
  v22 = *&v25[24];
  v23 = *&v25[8];
  v18(&v10[v15], v16, v17);
  *v10 = v14;
  v19 = v23;
  *(v10 + 24) = v22;
  *(v10 + 8) = v19;
  *(v10 + 20) = 256;
  sub_26846A6DC(v10, v7, &qword_28027D958, &qword_2684B7BC8);
  *a2 = v11;
  *(a2 + 8) = 256;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D960, &qword_2684B7BD0);
  sub_26846A6DC(v7, a2 + *(v20 + 48), &qword_28027D958, &qword_2684B7BC8);

  sub_26847C2D4(v25, v24);

  sub_268467A4C(v10, &qword_28027D958, &qword_2684B7BC8);
  sub_268467A4C(v7, &qword_28027D958, &qword_2684B7BC8);
}

uint64_t sub_26847B498@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_26847C190;
  a1[1] = v5;
  return sub_26847BD74(v10, &v9);
}

uint64_t sub_26847B514()
{
  v1 = sub_2684B4ED4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B3B94();
  v5 = sub_2684B5544();

  sub_2684B5744();

  sub_2684B4EB4();
  (*(v2 + 104))(v4, *MEMORY[0x277CE0FE0], v1);
  v6 = sub_2684B4EF4();

  (*(v2 + 8))(v4, v1);
  v7 = sub_2684B4E74();
  KeyPath = swift_getKeyPath();
  v9 = *(v0 + *(type metadata accessor for ListBadgeView.EmblemView(0) + 20));
  v11[1] = v6;
  v11[2] = KeyPath;
  v11[3] = v7;
  v11[4] = v9;
  v12 = 256;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D968, &qword_2684B7C08);
  sub_26847C330();
  sub_2684B4D44();
}

uint64_t sub_26847B704@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8A8, &qword_2684BB110);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8B0, &qword_2684B7A20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_2684B3BB4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_2684B3BD4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v17 = sub_2684B3C14();
    (*(*(v17 - 8) + 8))(a1, v17);
    sub_268467A4C(v9, &qword_28027D8B0, &qword_2684B7A20);
    v18 = type metadata accessor for ListBadgeView(0);
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }

  else
  {
    v26 = *(v11 + 32);
    v27 = a2;
    v26(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    sub_2684B3BE4();
    v20 = sub_2684B3F64();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v6, 1, v20) == 1)
    {
      sub_268467A4C(v6, &qword_28027D8A8, &qword_2684BB110);
      v22 = sub_2684B4E54();
    }

    else
    {
      v22 = sub_26849A760();
      (*(v21 + 8))(v6, v20);
    }

    v23 = sub_2684B3C14();
    (*(*(v23 - 8) + 8))(a1, v23);
    (*(v11 + 8))(v16, v10);
    v24 = v27;
    v26(v27, v14, v10);
    v25 = type metadata accessor for ListBadgeView(0);
    *&v24[*(v25 + 20)] = v22;
    return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  }
}

unint64_t sub_26847BB7C()
{
  result = qword_28027D8E0;
  if (!qword_28027D8E0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D8D8, &qword_2684B7AA0);
    sub_26847BC08(v1, v2, v3);
    sub_26847BC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D8E0);
  }

  return result;
}

unint64_t sub_26847BC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027D8E8;
  if (!qword_28027D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D8E8);
  }

  return result;
}

unint64_t sub_26847BC5C()
{
  result = qword_28027D8F0;
  if (!qword_28027D8F0)
  {
    type metadata accessor for ListBadgeView.EmblemView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D8F0);
  }

  return result;
}

uint64_t sub_26847BCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListBadgeView.EmblemView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26847BD18(uint64_t a1)
{
  v2 = type metadata accessor for ListBadgeView.EmblemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26847BF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26847C024(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26847C06C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26847C0CC()
{
  result = qword_28027D910;
  if (!qword_28027D910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D918, &qword_2684B7B00);
    sub_26847BB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D910);
  }

  return result;
}

unint64_t sub_26847C198()
{
  result = qword_28027D938;
  if (!qword_28027D938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D920, &qword_2684B7BA8);
    sub_26847C250();
    sub_26846ACF0(&qword_28027D950, &qword_28027D930, &qword_2684B7BB8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D938);
  }

  return result;
}

unint64_t sub_26847C250()
{
  result = qword_28027D940;
  if (!qword_28027D940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D948, &qword_2684B7BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D940);
  }

  return result;
}

unint64_t sub_26847C330()
{
  result = qword_28027D970;
  if (!qword_28027D970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D968, &qword_2684B7C08);
    sub_26847C3E8();
    sub_26846ACF0(&qword_28027D998, &qword_28027D9A0, &qword_2684B7C18, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D970);
  }

  return result;
}

unint64_t sub_26847C3E8()
{
  result = qword_28027D978;
  if (!qword_28027D978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D980, &qword_2684B7C10);
    sub_26846ACF0(&qword_28027D988, &qword_28027D990, &qword_2684B8CC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D978);
  }

  return result;
}

uint64_t sub_26847C4E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v27 = *(v7 + 40);
  v9 = sub_2684B4F84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  (*(v5 + 16))(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v16 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *&v18 = *(a1 + 16);
  *(&v18 + 1) = v8;
  *&v19 = *(a1 + 32);
  *(&v19 + 1) = v27;
  v23 = v19;
  v24 = v18;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  (*(v5 + 32))(v17 + v16, v25, a1);
  v29 = v24;
  v30 = v23;
  v31 = v26;
  sub_2684B4F74();
  swift_getWitnessTable();
  v20 = *(v10 + 16);
  v20(v15, v13, v9);
  v21 = *(v10 + 8);
  v21(v13, v9);
  v20(v28, v15, v9);
  return (v21)(v15, v9);
}

uint64_t sub_26847C798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2684B5464();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  type metadata accessor for DIButton(0, v15);
  sub_2684B5294();
  sub_268474360(a1, a2, a4);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_26847C8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  v16 = type metadata accessor for DIButton(0, v20);
  (*(a1 + *(v16 + 52)))();
  v17 = *(v6 + 16);
  v17(v11, v9, a2);
  v18 = *(v6 + 8);
  v18(v9, a2);
  v17(a3, v11, a2);
  return (v18)(v11, a2);
}

uint64_t sub_26847CA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_2684B4BC4();
}

uint64_t sub_26847CA78(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_26847D10C();
    if (v3 <= 0x3F)
    {
      result = sub_2684B52B4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26847CB18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_2684B52B4();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1, v7, v5);
      }

      else
      {
        v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 16) & ~v11);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_26847CDBC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_2684B52B4() - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + *(v10 + 64);
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_52:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == v14)
  {
    v22 = *(v25 + 56);

    v22(a1, a2, v9, v7);
  }

  else
  {
    v23 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) != 0)
    {
      v24 = *(v10 + 56);

      v24((v23 + v12 + 16) & ~v12, a2);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v23 = a2 & 0x7FFFFFFF;
      v23[1] = 0;
    }

    else
    {
      *v23 = (a2 - 1);
    }
  }
}