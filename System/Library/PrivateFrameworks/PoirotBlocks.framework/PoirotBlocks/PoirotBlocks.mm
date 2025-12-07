uint64_t sub_21B17A878@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B20D2F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21B17A8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21B17A974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21B17AA40()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21B17AA88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17AACC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17AB0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17ABA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B17AC60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B17AD58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B17AE14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B17AEF4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21B17AF3C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B17AF7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17AFB4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B17AFF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17B02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B20C728();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_21B17B0F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21B20C728();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21B17B1AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21B20C768();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B17B258(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21B20C768();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B17B2FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17B334(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DatasetColumnType(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B17B3E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DatasetColumnType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B17B484(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B20CCE8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21B17B4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B20CCE8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21B17B564()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17B59C()
{
  if (*(v0 + 56) != 255)
  {
    sub_21B1BDE44(*(v0 + 40), *(v0 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_21B17B61C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B17B654@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_21B17B69C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

void *sub_21B17B6E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 2;
  return result;
}

uint64_t sub_21B17B6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B20CFD8();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21B17B7C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21B20CFD8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t *sub_21B17B884@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = MEMORY[0x277D3E338];
  a2[3] = MEMORY[0x277D837D0];
  a2[4] = v4;
  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_21B17B8F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21B20C768();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B17B99C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21B20C768();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B17BA40()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B17BA7C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B17BAB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B17BB04(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21B20C678();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21B17BC34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_21B20C678();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21B17BD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_21B17BDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_21B17BE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource.Container(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21B17BEDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource.Container(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21B17BF74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17BFAC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B17C01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B20C728();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21B17C150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21B20C728();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21B17C284(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21B17C2EC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

_OWORD *sub_21B17C304(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21B17C3F8(uint64_t a1, id *a2)
{
  result = sub_21B20D2D8();
  *a2 = 0;
  return result;
}

uint64_t sub_21B17C470(uint64_t a1, id *a2)
{
  v3 = sub_21B20D2E8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21B17C4F0@<X0>(uint64_t *a2@<X8>)
{
  sub_21B20D2F8();
  v3 = sub_21B20D2C8();

  *a2 = v3;
  return result;
}

uint64_t sub_21B17C534(uint64_t a1)
{
  v2 = sub_21B17C840(&qword_27CD6EA40, type metadata accessor for URLResourceKey, &unk_21B210E48);
  v3 = sub_21B17C840(&qword_27CD6EA48, type metadata accessor for URLResourceKey, &unk_21B210DE8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21B17C5F0(uint64_t a1)
{
  v2 = sub_21B17C840(&qword_27CD6E9A0, type metadata accessor for BMUseCaseIdentifier, &unk_21B210CB8);
  v3 = sub_21B17C840(&qword_27CD6E9A8, type metadata accessor for BMUseCaseIdentifier, &unk_21B210C58);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21B17C6AC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21B20D2C8();

  *a2 = v3;
  return result;
}

uint64_t sub_21B17C6F4(uint64_t a1)
{
  v2 = sub_21B17C840(&qword_27CD6E9B0, type metadata accessor for BMStreamIdentifier, &unk_21B210B50);
  v3 = sub_21B17C840(&qword_27CD6E9B8, type metadata accessor for BMStreamIdentifier, &unk_21B210AF0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21B17C840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21B17C888()
{
  v0 = sub_21B20D2F8();
  v1 = MEMORY[0x21CEEBBD0](v0);

  return v1;
}

uint64_t sub_21B17C8C4(uint64_t a1)
{
  sub_21B20D2F8();
  sub_21B20D388();
}

uint64_t sub_21B17C918(uint64_t a1)
{
  sub_21B20D2F8();
  sub_21B20DC88();
  sub_21B20D388();
  v1 = sub_21B20DCA8();

  return v1;
}

uint64_t sub_21B17C98C(void *a1, uint64_t *a2)
{
  v2 = sub_21B20D2F8();
  v4 = v3;
  if (v2 == sub_21B20D2F8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21B20DB28();
  }

  return v7 & 1;
}

void sub_21B17CB48(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t ExecutionInputPayload.hostTaskIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExecutionInputPayload.parameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExecutionInputPayload(0) + 20);

  return sub_21B17CD58(v3, a1);
}

uint64_t type metadata accessor for ExecutionInputPayload(uint64_t a1)
{
  result = qword_27CD6EAF0;
  if (!qword_27CD6EAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B17CD58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t ExecutionInputPayload.recipeName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExecutionInputPayload(0) + 24));

  return v1;
}

uint64_t ExecutionInputPayload.archivedRecipe.getter()
{
  v1 = v0 + *(type metadata accessor for ExecutionInputPayload(0) + 28);
  v2 = *v1;
  sub_21B17CE94(*v1, *(v1 + 8));
  return v2;
}

void sub_21B17CE94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_21B17CEA8(a1, a2);
  }
}

void sub_21B17CEA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t ExecutionInputPayload.init(withHostTaskIdentifier:parameters:recipeFolderURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_21B20C678();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = a1;
  a5[1] = a2;
  v29 = a2;
  v15 = type metadata accessor for ExecutionInputPayload(0);
  v16 = v15[5];
  sub_21B17CD58(a3, a5 + v16);
  v17 = sub_21B20C598();
  v18 = (a5 + v15[6]);
  *v18 = v17;
  v18[1] = v19;
  v20 = v30;
  sub_21B1C867C(a4, v14);
  if (v20)
  {
    v30 = v20;
    (*(v11 + 8))(a4, v10);
    sub_21B17DA0C(a3);

    sub_21B17DA0C(a5 + v16);
  }

  else
  {
    v21 = sub_21B20C688();
    v30 = 0;
    v23 = v21;
    v29 = v24;
    sub_21B1C9218();
    v25 = *(v11 + 8);
    v25(a4, v10);
    sub_21B17DA0C(a3);
    result = (v25)(v14, v10);
    v26 = (a5 + v15[7]);
    v27 = v29;
    *v26 = v23;
    v26[1] = v27;
  }

  return result;
}

double ExecutionInputPayload.init(withHostTaskIdentifier:parameters:command:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for ExecutionInputPayload(0);
  sub_21B17DA74(a3, a4 + v6[5]);
  v7 = a4 + v6[6];
  strcpy(v7, "get-host-info");
  *(v7 + 7) = -4864;
  result = 0.0;
  *(a4 + v6[7]) = xmmword_21B210EE0;
  return result;
}

uint64_t ExecutionInputPayload.unarchiveRecipe(into:)(uint64_t a1)
{
  result = type metadata accessor for ExecutionInputPayload(0);
  v4 = v1 + *(result + 28);
  v5 = *(v4 + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    sub_21B17CE94(*v4, *(v4 + 8));
    sub_21B1C9338(v6, v5, a1);
    return sub_21B17DAE4(v6, v5);
  }

  return result;
}

uint64_t sub_21B17D21C()
{
  v1 = *v0;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](v1);
  return sub_21B20DCA8();
}

uint64_t sub_21B17D264(uint64_t a1)
{
  v2 = *v1;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](v2);
  return sub_21B20DCA8();
}

unint64_t sub_21B17D2A8()
{
  v1 = 0x6574656D61726170;
  v2 = 0x614E657069636572;
  if (*v0 != 2)
  {
    v2 = 0x6465766968637261;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_21B17D338@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21B17E1D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21B17D378(uint64_t a1)
{
  v2 = sub_21B17DB90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B17D3B4(uint64_t a1)
{
  v2 = sub_21B17DB90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExecutionInputPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB8, &qword_21B210EF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B17DB90();
  sub_21B20DD08();
  LOBYTE(v15) = 0;
  sub_21B20D998();
  if (!v2)
  {
    v10 = type metadata accessor for ExecutionInputPayload(0);
    LOBYTE(v15) = 1;
    type metadata accessor for PoirotToolTaskParameters(0);
    sub_21B17DC84(&qword_27CD6EAC8, &protocol conformance descriptor for PoirotToolTaskParameters);
    sub_21B20D9D8();
    LOBYTE(v15) = 2;
    sub_21B20D9E8();
    v11 = (v3 + *(v10 + 28));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 3;
    sub_21B17CE94(v15, v12);
    sub_21B17DBE4();
    sub_21B20D9D8();
    sub_21B17DAE4(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ExecutionInputPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAD8, &qword_21B210F00);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = v23 - v10;
  v12 = type metadata accessor for ExecutionInputPayload(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B17DB90();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = a1;
  v16 = v26;
  LOBYTE(v28) = 0;
  *v15 = sub_21B20D868();
  v15[1] = v17;
  v23[1] = v17;
  type metadata accessor for PoirotToolTaskParameters(0);
  LOBYTE(v28) = 1;
  sub_21B17DC84(&qword_27CD6EAE0, &protocol conformance descriptor for PoirotToolTaskParameters);
  sub_21B20D8B8();
  sub_21B17DA74(v7, v15 + v12[5]);
  LOBYTE(v28) = 2;
  v18 = sub_21B20D8C8();
  v19 = v24;
  v20 = (v15 + v12[6]);
  *v20 = v18;
  v20[1] = v21;
  v29 = 3;
  sub_21B17DCC8();
  sub_21B20D8B8();
  (*(v16 + 8))(v11, v27);
  *(v15 + v12[7]) = v28;
  sub_21B17DD1C(v15, v25);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_21B17DD80(v15);
}

uint64_t sub_21B17DA0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B17DA74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B17DAE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21B17DAF8(a1, a2);
  }

  return a1;
}

uint64_t sub_21B17DAF8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
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

unint64_t sub_21B17DB90()
{
  result = qword_27CD6EAC0;
  if (!qword_27CD6EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EAC0);
  }

  return result;
}

unint64_t sub_21B17DBE4()
{
  result = qword_27CD6EAD0;
  if (!qword_27CD6EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EAD0);
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

uint64_t sub_21B17DC84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PoirotToolTaskParameters(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B17DCC8()
{
  result = qword_27CD6EAE8;
  if (!qword_27CD6EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EAE8);
  }

  return result;
}

uint64_t sub_21B17DD1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionInputPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B17DD80(uint64_t a1)
{
  v2 = type metadata accessor for ExecutionInputPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21B17DE04(uint64_t a1)
{
  sub_21B17DF1C(319, &qword_2811F9F58, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21B17DEC4(319);
    if (v2 <= 0x3F)
    {
      sub_21B17DF1C(319, &qword_27CD6EB08, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B17DEC4(uint64_t a1)
{
  if (!qword_27CD6EB00)
  {
    type metadata accessor for PoirotToolTaskParameters(255);
    v1 = sub_21B20D5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD6EB00);
    }
  }
}

void sub_21B17DF1C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21B20D5D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ExecutionInputPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExecutionInputPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B17E0D0()
{
  result = qword_27CD6EB10;
  if (!qword_27CD6EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB10);
  }

  return result;
}

unint64_t sub_21B17E128()
{
  result = qword_27CD6EB18;
  if (!qword_27CD6EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB18);
  }

  return result;
}

unint64_t sub_21B17E180()
{
  result = qword_27CD6EB20;
  if (!qword_27CD6EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB20);
  }

  return result;
}

uint64_t sub_21B17E1D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000021B20E880 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E657069636572 && a2 == 0xEA0000000000656DLL || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xEE00657069636552)
  {

    return 3;
  }

  else
  {
    v5 = sub_21B20DB28();

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

uint64_t sub_21B17E380(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21B17E3DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21B17E460(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v31 = a3;
  v8 = *a4;
  v9 = a4[1];
  v10 = a4[2];
  v11 = *(a4 + 24);
  v12 = a4[4];
  v13 = a4[5];
  sub_21B17FB4C(a1, v35);
  v33 = &type metadata for AggregationBlockConfig;
  v34 = sub_21B17FC04();
  v14 = swift_allocObject();
  v32[0] = v14;
  *(v14 + 16) = v8;
  *(v14 + 24) = v9;
  *(v14 + 32) = v10;
  *(v14 + 40) = v11;
  *(v14 + 48) = v12;
  *(v14 + 56) = v13;
  if (a2)
  {
    goto LABEL_4;
  }

  __swift_project_boxed_opaque_existential_1(v35, v36);
  v15 = sub_21B20D368();
  v17 = v16;
  swift_beginAccess();
  a2 = sub_21B1BA38C(v15, v17);
  swift_endAccess();
  if (a2)
  {

LABEL_4:
    *(v5 + 88) = v11;
    *(v5 + 56) = a2;
    *(v5 + 64) = v10;

    __swift_destroy_boxed_opaque_existential_1(a1);
    *(v5 + 72) = v12;
    *(v5 + 80) = v13;
    v18 = *(*__swift_project_boxed_opaque_existential_1(v35, v36) + 152);
    v19 = __swift_project_boxed_opaque_existential_1(v32, v33);
    MEMORY[0x28223BE20](v19, v19);
    v21 = (v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
    (*(v22 + 16))(v21);
    v23 = *v21;
    v24 = v21[1];
    *(v5 + 16) = 0;
    *(v5 + 24) = v18;

    *(v5 + 32) = v23;
    *(v5 + 40) = v24;
    *(v5 + 48) = v31;
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return v5;
  }

  sub_21B17FC58();
  v26 = swift_allocError();
  *v27 = v15;
  *(v27 + 8) = v17;
  *(v27 + 16) = 3;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v35);
  type metadata accessor for QueryBlock();
  swift_deallocPartialClassInstance();
  v35[0] = v26;
  v28 = v26;
  v29 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {

    sub_21B17FAF8();
    swift_allocError();
    *v30 = v26;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v5;
}

uint64_t sub_21B17E7AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21B20D4D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B17E964(a1, a2, a3);
  if (v3)
  {
    v17 = v3;
    v12 = v3;
    v13 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if (swift_dynamicCast())
    {
    }

    else
    {
      v17 = v3;
      if (swift_dynamicCast())
      {
        (*(v8 + 8))(v11, v7);
      }

      else
      {
        sub_21B17FAF8();
        swift_allocError();
        *v14 = v3 | 0x8000000000000000;
        swift_willThrow();
      }
    }
  }

  return 1;
}

uint64_t sub_21B17E964(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v75 = a3;
  v81 = a2;
  v78 = a1;
  v80 = sub_21B20D4D8();
  v70 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v7);
  v79 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DatasetColumnDescription(0);
  v76 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B20CF28();
  v72 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v66 - v19;

  sub_21B20CE98();
  if (v4)
  {

    v22 = v79;
    v21 = v80;
    v23 = v6;
    goto LABEL_4;
  }

  *(&v82 + 1) = v17;
  v71 = v20;
  v24 = v72;
  v67 = v13;

  *&v83 = *v78;
  v25 = v83;
  v27 = v3[9];
  v26 = v3[10];
  v68 = v3;

  sub_21B1D151C(v27, v26);

  v28 = *(&v82 + 1);
  sub_21B20CF18();
  v74 = 0;
  v36 = *(v24 + 8);
  v72 = v24 + 8;
  v66 = v36;
  v36(v28, v67);

  v37 = v68[5];
  *&v82 = v68[4];
  *(&v82 + 1) = v37;
  v38 = v75;
  v39 = v76;
  v69 = v75 + 16;
  v40 = v68[8];
  v41 = v25;
  v77 = v40;
  v42 = v78;
  while (1)
  {
    v73 = v41;
    v43 = *(v40 + 16);
    if (v43)
    {
      v87 = MEMORY[0x277D84F90];

      sub_21B18FD70(0, v43, 0);
      v44 = v87;
      v45 = v40 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v46 = *(v39 + 72);
      do
      {
        sub_21B17FCC8(v45, v12);
        v87 = v44;
        v48 = *(v44 + 16);
        v47 = *(v44 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_21B18FD70((v47 > 1), v48 + 1, 1);
          v44 = v87;
        }

        v85 = v9;
        v86 = sub_21B17FD2C();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v83);
        sub_21B17FCC8(v12, boxed_opaque_existential_1);
        *(v44 + 16) = v48 + 1;
        sub_21B17C284(&v83, v44 + 40 * v48 + 32);
        sub_21B17FDE8(v12);
        v45 += v46;
        --v43;
      }

      while (v43);

      v38 = v75;
      v42 = v78;
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
    }

    v50 = *(v44 + 16);

    if (!v50)
    {
      break;
    }

    v85 = &type metadata for DatasetColumnLayout;
    v51 = sub_21B17FE44();
    v83 = v82;
    v86 = v51;
    v84 = v77;

    v52 = v71;
    v53 = v74;
    v54 = sub_21B20CED8();
    v74 = v53;
    if (v53)
    {
      v66(v52, v67);
      __swift_destroy_boxed_opaque_existential_1(&v83);
      goto LABEL_32;
    }

    v55 = v54;
    __swift_destroy_boxed_opaque_existential_1(&v83);
    v39 = v76;
    if (!v55)
    {
      goto LABEL_29;
    }

LABEL_24:
    ObjectType = swift_getObjectType();
    v83 = v82;
    v84 = v55;
    v59 = *(v38 + 16);

    v59(&v83, ObjectType, v38);
    v60 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v60;
    *v42 = v60;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_21B1D280C(0, *(v60 + 2) + 1, 1, v60);
      *v42 = v41;
    }

    v63 = *(v41 + 2);
    v62 = *(v41 + 3);
    if (v63 >= v62 >> 1)
    {
      v41 = sub_21B1D280C((v62 > 1), v63 + 1, 1, v41);
    }

    *(v41 + 2) = v63 + 1;
    v64 = &v41[24 * v63];
    v65 = *(&v82 + 1);
    *(v64 + 4) = v82;
    *(v64 + 5) = v65;
    *(v64 + 6) = v55;
    *v42 = v41;
    v40 = v77;
  }

  v52 = v71;
  v56 = v74;
  v57 = sub_21B20CEE8();
  v74 = v56;
  if (!v56)
  {
    v55 = v57;
    v39 = v76;
    if (!v57)
    {
LABEL_29:
      v66(v52, v67);
      v23 = v68;
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  v66(v52, v67);
LABEL_32:
  v5 = v74;
  v23 = v68;
  v22 = v79;
  v21 = v80;
LABEL_4:
  if (*(v23 + 88) == 1)
  {
    *&v83 = v5;
    v29 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if (swift_dynamicCast())
    {
      (*(v70 + 8))(v22, v21);
    }

    else
    {
      v30 = swift_getObjectType();
      v31 = swift_allocObject();
      *(v31 + 16) = v23;
      *(v31 + 24) = v5;
      v32 = v75;
      v33 = *(v75 + 8);
      v34 = v5;

      v33(sub_21B17FCAC, v31, v30, v32);

LABEL_9:
      *(v23 + 16) = 1;
    }
  }

  return 1;
}

uint64_t sub_21B17F0C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21B20D348();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21B2110C0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v17[4] = 0;
  v17[5] = 0xE000000000000000;

  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD000000000000023, 0x800000021B20E8D0);
  swift_getErrorValue();
  sub_21B20DB08();
  sub_21B20D338();
  v11 = sub_21B20D308();
  v13 = v12;

  (*(v4 + 8))(v7, v3);
  if (v13 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  v15 = 0xC000000000000000;
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  *(v8 + 48) = 3;
  if (v13 >> 60 != 15)
  {
    v15 = v13;
  }

  *(v8 + 56) = v14;
  *(v8 + 64) = v15;
  return v8;
}

uint64_t sub_21B17F290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v3[4];
  v7 = v3[5];
  v8 = *(a2 + 16);
  v55 = a3;
  v56 = v6;
  if (v8)
  {
    v9 = sub_21B1B9778(v6, v7);
    if (v10)
    {
      v11 = (*(a2 + 56) + 16 * v9);
      v7 = v11[1];
      v56 = *v11;
    }
  }

  v54 = v7;

  sub_21B17FB4C(a1, v60);
  v53 = v3;
  v12 = v3[7];
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  v15 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 64);
  v19 = (v16 + 63) >> 6;

  v57 = a2;

  for (i = 0; v18; v14 = v32)
  {
    v22 = i;
LABEL_12:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = (v22 << 10) | (16 * v23);
    v25 = (*(v57 + 48) + v24);
    v27 = *v25;
    v26 = v25[1];
    v28 = (*(v57 + 56) + v24);
    v30 = *v28;
    v29 = v28[1];
    v59[0] = v13;
    v59[1] = v14;
    v58[0] = 9509;
    v58[1] = 0xE200000000000000;

    MEMORY[0x21CEEBBB0](v27, v26);
    MEMORY[0x21CEEBBB0](9509, 0xE200000000000000);
    v61 = v14;
    v59[5] = v30;
    v59[6] = v29;
    sub_21B17FBB0();
    v13 = sub_21B20D628();
    v32 = v31;
  }

  while (1)
  {
    v22 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      v33 = v57;

      type metadata accessor for Query();
      v34 = swift_allocObject();
      *(v34 + 48) = 0;
      v35 = v14;
      v36 = v56;
      v37 = v54;
      *(v34 + 16) = v56;
      *(v34 + 24) = v37;
      *(v34 + 32) = v13;
      *(v34 + 40) = v35;
      v61 = v53[6];
      v38 = v53[8];

      v39 = sub_21B1B303C(v33, v38);
      v40 = *(v53 + 88);
      v42 = v53[9];
      v41 = v53[10];
      v57 = type metadata accessor for AggregationBlock();
      v43 = swift_allocObject();
      sub_21B17FB4C(v60, v59);
      v58[3] = &type metadata for AggregationBlockConfig;
      v58[4] = sub_21B17FC04();
      v44 = swift_allocObject();
      v58[0] = v44;
      *(v44 + 16) = v36;
      *(v44 + 24) = v37;
      *(v44 + 32) = v39;
      *(v44 + 40) = v40;
      *(v44 + 48) = v42;
      *(v44 + 56) = v41;
      *(v43 + 88) = v40;
      *(v43 + 56) = v34;
      *(v43 + 64) = v39;
      swift_bridgeObjectRetain_n();

      __swift_destroy_boxed_opaque_existential_1(v60);
      *(v43 + 72) = v42;
      *(v43 + 80) = v41;
      v45 = *(*__swift_project_boxed_opaque_existential_1(v59, v59[3]) + 152);
      v46 = __swift_project_boxed_opaque_existential_1(v58, &type metadata for AggregationBlockConfig);
      MEMORY[0x28223BE20](v46, v46);
      v48 = (&v53 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v49 + 16))(v48);
      v50 = *v48;
      v51 = v48[1];
      *(v43 + 16) = 0;
      *(v43 + 24) = v45;

      *(v43 + 32) = v50;
      *(v43 + 40) = v51;
      *(v43 + 48) = v61;
      __swift_destroy_boxed_opaque_existential_1(v58);
      result = __swift_destroy_boxed_opaque_existential_1(v59);
      v52 = v55;
      v55[3] = v57;
      v52[4] = &off_282CA0120;
      *v52 = v43;
      return result;
    }

    v18 = *(v15 + 8 * v22);
    ++i;
    if (v18)
    {
      i = v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B17F6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v3[4];
  v7 = v3[5];
  v8 = *(a2 + 16);
  v55 = a3;
  if (v8)
  {
    v9 = sub_21B1B9778(v6, v7);
    if (v10)
    {
      v11 = (*(a2 + 56) + 16 * v9);
      v6 = *v11;
      v7 = v11[1];
    }
  }

  v53 = v7;
  v54 = v6;

  sub_21B17FB4C(a1, v58);
  v52 = v3;
  v12 = v3[7];
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;

  for (i = 0; v17; v14 = v31)
  {
    v21 = i;
LABEL_12:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = (v21 << 10) | (16 * v22);
    v24 = (*(a2 + 48) + v23);
    v26 = *v24;
    v25 = v24[1];
    v27 = (*(a2 + 56) + v23);
    v29 = *v27;
    v28 = v27[1];
    v57[0] = v13;
    v57[1] = v14;
    v56[0] = v26;
    v56[1] = v25;
    v57[5] = v29;
    v57[6] = v28;
    sub_21B17FBB0();
    v13 = sub_21B20D628();
    v31 = v30;
  }

  while (1)
  {
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      type metadata accessor for Query();
      v32 = swift_allocObject();
      *(v32 + 48) = 0;
      v34 = v53;
      v33 = v54;
      *(v32 + 16) = v54;
      *(v32 + 24) = v34;
      *(v32 + 32) = v13;
      *(v32 + 40) = v14;
      v51 = *(v52 + 48);
      v35 = *(v52 + 64);

      v36 = sub_21B1B303C(a2, v35);
      v37 = *(v52 + 88);
      v38 = *(v52 + 72);
      v39 = *(v52 + 80);
      v52 = type metadata accessor for AggregationBlock();
      v40 = swift_allocObject();
      sub_21B17FB4C(v58, v57);
      v56[3] = &type metadata for AggregationBlockConfig;
      v56[4] = sub_21B17FC04();
      v41 = swift_allocObject();
      v56[0] = v41;
      *(v41 + 16) = v33;
      *(v41 + 24) = v34;
      *(v41 + 32) = v36;
      *(v41 + 40) = v37;
      *(v41 + 48) = v38;
      *(v41 + 56) = v39;
      *(v40 + 88) = v37;
      *(v40 + 56) = v32;
      *(v40 + 64) = v36;
      swift_bridgeObjectRetain_n();

      __swift_destroy_boxed_opaque_existential_1(v58);
      *(v40 + 72) = v38;
      *(v40 + 80) = v39;
      v42 = *(*__swift_project_boxed_opaque_existential_1(v57, v57[3]) + 152);
      v43 = __swift_project_boxed_opaque_existential_1(v56, &type metadata for AggregationBlockConfig);
      MEMORY[0x28223BE20](v43, v43);
      v45 = (&v50 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v46 + 16))(v45);
      v47 = *v45;
      v48 = v45[1];
      *(v40 + 16) = 0;
      *(v40 + 24) = v42;

      *(v40 + 32) = v47;
      *(v40 + 40) = v48;
      *(v40 + 48) = v51;
      __swift_destroy_boxed_opaque_existential_1(v56);
      result = __swift_destroy_boxed_opaque_existential_1(v57);
      v49 = v55;
      v55[3] = v52;
      v49[4] = &off_282CA0120;
      *v49 = v40;
      return result;
    }

    v17 = *(a2 + 64 + 8 * v21);
    ++i;
    if (v17)
    {
      i = v21;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B17FA7C()
{

  return MEMORY[0x2821FE8D8](v0, 89, 7);
}

unint64_t sub_21B17FAF8()
{
  result = qword_27CD6EB30;
  if (!qword_27CD6EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB30);
  }

  return result;
}

uint64_t sub_21B17FB4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21B17FBB0()
{
  result = qword_27CD6EB38;
  if (!qword_27CD6EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB38);
  }

  return result;
}

unint64_t sub_21B17FC04()
{
  result = qword_27CD6EB40;
  if (!qword_27CD6EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB40);
  }

  return result;
}

unint64_t sub_21B17FC58()
{
  result = qword_27CD6EB48;
  if (!qword_27CD6EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB48);
  }

  return result;
}

uint64_t sub_21B17FCC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnDescription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B17FD2C()
{
  result = qword_27CD6EB50;
  if (!qword_27CD6EB50)
  {
    type metadata accessor for DatasetColumnDescription(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB50);
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

uint64_t sub_21B17FDE8(uint64_t a1)
{
  v2 = type metadata accessor for DatasetColumnDescription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B17FE44()
{
  result = qword_27CD6EB58;
  if (!qword_27CD6EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB58);
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

uint64_t sub_21B17FECC(uint64_t a1, unsigned int a2)
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

uint64_t sub_21B17FF14(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B17FFBC()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_21B1800FC()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_21B1801E8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(*(a1 + 8) + 8))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21B180240()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB80, &qword_21B211418);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  *(v0 + 16) = 0;

  sub_21B20CE98();

  if (!v1)
  {
    v7 = sub_21B20CF28();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    v8 = OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_statement;
    swift_beginAccess();
    sub_21B180F98(v5, v0 + v8);
    result = swift_endAccess();
    *(v0 + OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_initialized) = 0;
  }

  return result;
}

uint64_t sub_21B180388()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB80, &qword_21B211418);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - v3;
  *(v0 + 16) = 1;
  v5 = sub_21B20CF28();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_statement;
  swift_beginAccess();
  sub_21B180F98(v4, v0 + v6);
  return swift_endAccess();
}

uint64_t sub_21B180480(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v59 = a3;
  ObjectType = a1;
  v61 = sub_21B20D4D8();
  v58 = *(v61 - 1);
  MEMORY[0x28223BE20](v61, v8);
  v60 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB80, &qword_21B211418);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v57 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v56 - v15;
  v17 = sub_21B20CF28();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v56 - v24;
  v26 = OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_statement;
  swift_beginAccess();
  sub_21B180F0C(v6 + v26, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_21B180EA4(v16);
LABEL_3:
    v27 = 0;
    return v27 & 1;
  }

  v56[1] = a2;
  v28 = *(v18 + 32);
  v62 = v25;
  v28(v25, v16, v17);
  v29 = OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_initialized;
  if ((*(v6 + OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_initialized) & 1) == 0)
  {
    v63[0] = *ObjectType;
    v35 = v4;
    v36 = *(v6 + 72);
    v37 = *(v6 + 80);

    sub_21B1D151C(v36, v37);
    v5 = v35;
    if (v35)
    {

      goto LABEL_19;
    }

    sub_21B20CF18();
    (*(v18 + 8))(v22, v17);

    *(v6 + v29) = 1;
  }

  v30 = sub_21B186FF4();
  if (v5)
  {
    v63[0] = v5;
    v31 = v5;
    v32 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    v34 = v60;
    v33 = v61;
    if (swift_dynamicCast())
    {

      (*(v58 + 8))(v34, v33);
    }

    else
    {
      v48 = *(v6 + 88);

      if (v48 == 1)
      {
        ObjectType = swift_getObjectType();
        v49 = swift_allocObject();
        v50 = v59;
        v51 = v49;
        *(v49 + 16) = v6;
        *(v49 + 24) = v5;
        v61 = *(v50 + 8);
        v52 = v5;

        (v61)(sub_21B180F7C, v51, ObjectType, v50);

        (*(v18 + 8))(v62, v17);
        *(v6 + 16) = 1;
        v53 = v57;
        (*(v18 + 56))(v57, 1, 1, v17);
        swift_beginAccess();
        sub_21B180F98(v53, v6 + v26);
        swift_endAccess();
        v27 = 0;
        return v27 & 1;
      }
    }

LABEL_19:
    (*(v18 + 8))(v62, v17);
    return v27 & 1;
  }

  v38 = v30;
  if (!v30)
  {
    (*(v18 + 8))(v62, v17);
    *(v6 + 16) = 1;
    v55 = v57;
    (*(v18 + 56))(v57, 1, 1, v17);
    swift_beginAccess();
    sub_21B180F98(v55, v6 + v26);
    swift_endAccess();
    goto LABEL_3;
  }

  v39 = *(v6 + 32);
  v40 = *(v6 + 40);
  v41 = ObjectType;
  v42 = *ObjectType;
  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v41 = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_21B1D280C(0, *(v42 + 2) + 1, 1, v42);
    *v41 = v42;
  }

  v45 = *(v42 + 2);
  v44 = *(v42 + 3);
  if (v45 >= v44 >> 1)
  {
    v42 = sub_21B1D280C((v44 > 1), v45 + 1, 1, v42);
  }

  *(v42 + 2) = v45 + 1;
  v46 = &v42[24 * v45];
  *(v46 + 4) = v39;
  *(v46 + 5) = v40;
  *(v46 + 6) = v38;
  *ObjectType = v42;
  v47 = swift_getObjectType();
  v63[0] = v39;
  v63[1] = v40;
  v63[2] = v38;
  (*(v59 + 16))(v63, v47);
  (*(v18 + 8))(v62, v17);

  v27 = 1;
  return v27 & 1;
}

uint64_t sub_21B180AFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21B20D348();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21B2110C0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v17[4] = 0;
  v17[5] = 0xE000000000000000;

  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD000000000000023, 0x800000021B20E8D0);
  swift_getErrorValue();
  sub_21B20DB08();
  sub_21B20D338();
  v11 = sub_21B20D308();
  v13 = v12;

  (*(v4 + 8))(v7, v3);
  if (v13 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  v15 = 0xC000000000000000;
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  *(v8 + 48) = 3;
  if (v13 >> 60 != 15)
  {
    v15 = v13;
  }

  *(v8 + 56) = v14;
  *(v8 + 64) = v15;
  return v8;
}

uint64_t sub_21B180CD4()
{

  sub_21B180EA4(v0 + OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_statement);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ExtractionBlock(uint64_t a1)
{
  result = qword_27CD6EB68;
  if (!qword_27CD6EB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B180DB4(uint64_t a1)
{
  sub_21B180E4C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21B180E4C(uint64_t a1)
{
  if (!qword_27CD6EB78)
  {
    sub_21B20CF28();
    v1 = sub_21B20D5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD6EB78);
    }
  }
}

uint64_t sub_21B180EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB80, &qword_21B211418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B180F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB80, &qword_21B211418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B180F98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB80, &qword_21B211418);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B181014(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B18105C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B1810C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = *a3;
  v7 = a3[1];
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 72) = 0;

  v10 = sub_21B1BBFE4(v9);

  *(v4 + 56) = v10;

  v12 = sub_21B1BBFE4(v11);

  *(v4 + 64) = v12;
  if (*(*(v4 + 56) + 16) < 2uLL)
  {

    sub_21B20D6A8();

    strcpy(v20, "Configured: ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    v21 = *(*(v4 + 56) + 16);
    v13 = sub_21B20DAB8();
    MEMORY[0x21CEEBBB0](v13);

    MEMORY[0x21CEEBBB0](0xD000000000000015, 0x800000021B20EAE0);
    v14 = 0;
    v15 = v20[0];
    v16 = v20[1];
LABEL_6:
    sub_21B1833A8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v16;
    *(v18 + 16) = v14;
    swift_willThrow();

    sub_21B183364(*(v4 + 72), *(v4 + 80), *(v4 + 88));
    type metadata accessor for JoinBlock();
    swift_deallocPartialClassInstance();
    return v4;
  }

  if (!*(v12 + 16))
  {

    sub_21B20D6A8();

    strcpy(v20, "Configured: ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    v21 = *(*(v4 + 64) + 16);
    v17 = sub_21B20DAB8();
    MEMORY[0x21CEEBBB0](v17);

    MEMORY[0x21CEEBBB0](0xD000000000000015, 0x800000021B20EB00);
    v15 = v20[0];
    v16 = v20[1];
    v14 = 1;
    goto LABEL_6;
  }

  *(v4 + 16) = 0;
  *(v4 + 24) = a1;

  *(v4 + 32) = v8;
  *(v4 + 40) = v7;
  *(v4 + 48) = a2;
  return v4;
}

void sub_21B18137C(unint64_t *a1)
{
  sub_21B181438(a1);
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if (swift_dynamicCast())
    {
      sub_21B1833FC(v4, v5, v6);
    }

    else
    {
      sub_21B1833A8();
      swift_allocError();
      *v3 = v1;
      *(v3 + 8) = 0;
      *(v3 + 16) = 5;
      swift_willThrow();
    }
  }
}

uint64_t sub_21B181438(unint64_t *a1)
{
  v119 = a1;
  v130 = type metadata accessor for DatasetColumnDescription(0);
  v2 = *(v130 - 8);
  v4 = MEMORY[0x28223BE20](v130, v3);
  v131 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v122 = v114 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v132 = v114 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v120 = v114 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = v114 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = v114 - v20;
  v22 = sub_21B197480(MEMORY[0x277D84F90]);
  v125 = v2;
  v126 = v1;
  v23 = v1[7];
  v24 = v23 + 56;
  v25 = 1 << *(v23 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v23 + 56);
  v28 = (v25 + 63) >> 6;
  v114[0] = v2 + 48;

  v29 = 0;
  v116 = v28;
  v117 = v23 + 56;
  if (!v27)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v118 = v27;
    v31 = (*(v23 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v27)))));
    v32 = *v31;
    v33 = v31[1];

    _s12PoirotBlocks18DatasetDescriptionV12removeLayout8withNameAA0c6ColumnF0VSgSS_tF_0(v32, v33, &v135);
    v34 = v136;
    if (!v136)
    {

      v135 = 0;
      v136 = 0xE000000000000000;
      sub_21B20D6A8();

      v135 = 0xD000000000000015;
      v136 = 0x800000021B20EA40;
      MEMORY[0x21CEEBBB0](v32, v33);

      MEMORY[0x21CEEBBB0](0x7373696D20736920, 0xEB00000000676E69);
      v108 = v135;
      v109 = v136;
      sub_21B1833A8();
      swift_allocError();
      *v110 = v108;
      *(v110 + 8) = v109;
      *(v110 + 16) = 2;
      swift_willThrow();
    }

    v35 = v137;
    v36 = v135;

    sub_21B183364(v36, v34, v35);
    v138 = v22;
    v123 = *(v35 + 16);
    if (v123)
    {
      v127 = v18;
      v115 = v23;
      v37 = 0;
      v38 = v132;
      v121 = v21;
      v124 = v35;
      while (1)
      {
        if (v37 >= *(v35 + 16))
        {
          goto LABEL_76;
        }

        v39 = v35 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
        v40 = *(v125 + 72);
        sub_21B186818(v39 + v40 * v37, v21, type metadata accessor for DatasetColumnDescription);
        v41 = v138;
        if (v138[2] && (v43 = *v21, v42 = *(v21 + 1), v44 = sub_21B1B9778(*v21, v42), (v45 & 1) != 0))
        {
          v46 = v120;
          sub_21B186818(v41[7] + v44 * v40, v120, type metadata accessor for DatasetColumnDescription);
          sub_21B1867B4(v46, v127);
          v47 = v126[8];
          if (!*(v47 + 16) || (sub_21B20DC88(), sub_21B20D388(), v48 = sub_21B20DCA8(), v49 = -1 << *(v47 + 32), v50 = v48 & ~v49, ((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0))
          {
LABEL_66:
            v135 = 0;
            v136 = 0xE000000000000000;
            sub_21B20D6A8();
            MEMORY[0x21CEEBBB0](0xD000000000000038, 0x800000021B20EAA0);
            v87 = v127;
            v88 = v122;
            sub_21B186818(v127, v122, type metadata accessor for DatasetColumnDescription);
            v89 = sub_21B20D358();
            MEMORY[0x21CEEBBB0](v89);

            MEMORY[0x21CEEBBB0](0x3A646E6F6365530ALL, 0xE900000000000020);
            sub_21B186818(v21, v88, type metadata accessor for DatasetColumnDescription);
            v90 = sub_21B20D358();
            MEMORY[0x21CEEBBB0](v90);

            v91 = v135;
            v92 = v136;
            v93 = 4;
LABEL_67:
            sub_21B1833A8();
            swift_allocError();
            *v94 = v91;
            *(v94 + 8) = v92;
            *(v94 + 16) = v93;
            swift_willThrow();
            sub_21B17FDE8(v87);

            sub_21B17FDE8(v21);
          }

          v51 = ~v49;
          while (1)
          {
            v52 = (*(v47 + 48) + 16 * v50);
            v53 = *v52 == v43 && v52[1] == v42;
            if (v53 || (sub_21B20DB28() & 1) != 0)
            {
              break;
            }

            v50 = (v50 + 1) & v51;
            if (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
            {
              goto LABEL_66;
            }
          }

          v67 = v43 == *v127 && v42 == *(v127 + 1);
          if (!v67 && (sub_21B20DB28() & 1) == 0)
          {
LABEL_74:
            v135 = 0;
            v136 = 0xE000000000000000;
            sub_21B20D6A8();
            MEMORY[0x21CEEBBB0](0xD000000000000033, 0x800000021B20EA60);
            v87 = v127;
            v111 = v122;
            sub_21B186818(v127, v122, type metadata accessor for DatasetColumnDescription);
            v112 = sub_21B20D358();
            MEMORY[0x21CEEBBB0](v112);

            MEMORY[0x21CEEBBB0](0x3A646E6F6365530ALL, 0xE900000000000020);
            sub_21B186818(v21, v111, type metadata accessor for DatasetColumnDescription);
            v113 = sub_21B20D358();
            MEMORY[0x21CEEBBB0](v113);

            v91 = v135;
            v92 = v136;
            v93 = 3;
            goto LABEL_67;
          }

          sub_21B20CCE8();
          sub_21B186880(&qword_27CD6EC08, MEMORY[0x277D3E200], MEMORY[0x277D3E210]);
          sub_21B20D3F8();
          sub_21B20D3F8();
          if (v135 == v133 && v136 == v134)
          {
          }

          else
          {
            v83 = sub_21B20DB28();

            if ((v83 & 1) == 0)
            {
              goto LABEL_74;
            }
          }

          v82 = v127;
          v35 = v124;
          v38 = v132;
          if (v127[*(v130 + 28)])
          {
            v82 = v127;
            if ((v127[16] & 1) == 0)
            {
              v82 = v127;
              if (v21[16] == 1)
              {
                v84 = sub_21B1D4120(&v135, v43, v42);
                v86 = v85;
                if (!(*v114[0])(v85, 1, v130))
                {
                  *(v86 + 16) = 1;
                }

                (v84)(&v135, 0);
                v82 = v127;
              }
            }
          }
        }

        else
        {
          v128 = v40;
          v54 = v122;
          sub_21B186818(v21, v122, type metadata accessor for DatasetColumnDescription);
          v56 = *v54;
          v55 = *(v54 + 8);
          *v38 = *v54;
          *(v38 + 1) = v55;
          v38[16] = *(v54 + 16);
          v57 = v130;
          sub_21B186818(v54 + *(v130 + 24), &v38[*(v130 + 24)], type metadata accessor for DatasetColumnType);
          swift_bridgeObjectRetain_n();
          sub_21B17FDE8(v54);
          v129 = *(v57 + 28);
          v58 = v126[8];
          if (*(v58 + 16) && (sub_21B20DC88(), sub_21B20D388(), v59 = sub_21B20DCA8(), v60 = -1 << *(v58 + 32), v61 = v59 & ~v60, ((*(v58 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) != 0))
          {
            v62 = ~v60;
            while (1)
            {
              v63 = (*(v58 + 48) + 16 * v61);
              v64 = *v63 == v56 && v63[1] == v55;
              if (v64 || (sub_21B20DB28() & 1) != 0)
              {
                break;
              }

              v61 = (v61 + 1) & v62;
              if (((*(v58 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            v65 = 1;
            v66 = v132;
          }

          else
          {
LABEL_34:
            v65 = 0;
            v66 = v132;
            v132[16] = 1;
          }

          *(v66 + v129) = v65;
          sub_21B186818(v66, v131, type metadata accessor for DatasetColumnDescription);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v135 = v41;
          v70 = sub_21B1B9778(v56, v55);
          v71 = v41[2];
          v72 = (v69 & 1) == 0;
          v73 = v71 + v72;
          if (__OFADD__(v71, v72))
          {
            goto LABEL_77;
          }

          v74 = v69;
          if (v41[3] >= v73)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21B20398C();
            }
          }

          else
          {
            sub_21B2010D8(v73, isUniquelyReferenced_nonNull_native);
            v75 = sub_21B1B9778(v56, v55);
            if ((v74 & 1) != (v76 & 1))
            {
              goto LABEL_79;
            }

            v70 = v75;
          }

          v38 = v132;
          v77 = v135;
          if (v74)
          {
            sub_21B186750(v131, v135[7] + v70 * v128);
          }

          else
          {
            v135[(v70 >> 6) + 8] |= 1 << v70;
            v78 = (v77[6] + 16 * v70);
            *v78 = v56;
            v78[1] = v55;
            sub_21B1867B4(v131, v77[7] + v70 * v128);
            v79 = v77[2];
            v80 = __OFADD__(v79, 1);
            v81 = v79 + 1;
            if (v80)
            {
              goto LABEL_78;
            }

            v77[2] = v81;
          }

          v138 = v77;
          v82 = v38;
          v21 = v121;
          v35 = v124;
        }

        ++v37;
        sub_21B17FDE8(v82);
        sub_21B17FDE8(v21);
        if (v37 == v123)
        {
          v22 = v138;
          v23 = v115;
          v18 = v127;
          break;
        }
      }
    }

    v27 = (v118 - 1) & v118;

    v24 = v117;
    v28 = v116;
  }

  while (v27);
LABEL_5:
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      v97 = v126[4];
      v96 = v126[5];
      v98 = v22[2];
      if (!v98)
      {
        goto LABEL_71;
      }

      v99 = sub_21B1C6F40(v22[2], 0);
      v100 = sub_21B1C7718(&v135, v99 + ((*(v125 + 80) + 32) & ~*(v125 + 80)), v98, v22);
      v101 = v135;

      sub_21B17AB4C(v101);
      if (v100 != v98)
      {
        __break(1u);
LABEL_71:

        v99 = MEMORY[0x277D84F90];
      }

      v102 = v119;
      v103 = v126;
      v104 = v126[9];
      v105 = v126[10];
      v106 = v126[11];
      v126[9] = v97;
      v103[10] = v96;
      v103[11] = v99;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_21B183364(v104, v105, v106);

      v107 = swift_isUniquelyReferenced_nonNull_native();
      v135 = *v102;
      *v102 = 0x8000000000000000;
      sub_21B1BB4EC(v97, v96, v99, v97, v96, v107);

      result = swift_bridgeObjectRelease_n();
      *v102 = v135;
      return result;
    }

    v27 = *(v24 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

uint64_t sub_21B1820FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_21B182950(a1, a2, a3);
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if (swift_dynamicCast())
    {
      sub_21B1833FC(v7, v8, v9);
    }

    else
    {
      sub_21B1833A8();
      swift_allocError();
      *v5 = v3;
      *(v5 + 8) = 0;
      *(v5 + 16) = 6;
      swift_willThrow();
    }
  }

  return 1;
}

uint64_t sub_21B1821C4()
{
  v2 = sub_21B20C368();
  MEMORY[0x28223BE20](v2, v3);
  sub_21B20C3A8();
  swift_allocObject();
  sub_21B20C398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBD0, &unk_21B2197F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B211420;
  sub_21B20C358();
  sub_21B20C348();
  v15 = v4;
  sub_21B186880(&qword_27CD6EBD8, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBE0, &qword_21B217FE0);
  sub_21B1865AC();
  sub_21B20D638();
  sub_21B20C378();
  v5 = v0[10];
  if (!v5)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v6 = v0[9];
  v7 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21B2110C0;
  v9 = v0[5];
  v14 = v0[4];
  v15 = v7;
  sub_21B186658(v6, v5, v7);

  sub_21B186658(v6, v5, v7);

  sub_21B183610(&v15);
  if (!v1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBF0, &unk_21B2115E0);
    sub_21B18669C();
    v10 = sub_21B20C388();
    v12 = v11;

    *(v8 + 32) = v14;
    *(v8 + 40) = v9;
    *(v8 + 48) = 0;
    *(v8 + 56) = v10;
    *(v8 + 64) = v12;
    sub_21B183364(v6, v5, v7);
    sub_21B183364(v6, v5, v7);
LABEL_5:

    return v8;
  }

  __break(1u);
  return result;
}

char *sub_21B182534(uint64_t a1)
{
  v3 = v2;
  v5 = sub_21B20CB18();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v37 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B20CAF8();
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[4];
  v36 = v1[5];
  v13 = v1[8];
  v14 = v13[2];
  if (v14)
  {
    v29 = v2;
    v31 = v12;
    v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v8;
    v15 = sub_21B1C703C(v14, 0);
    v16 = sub_21B1C7940(&v38, v15 + 4, v14, v13);
    v17 = v38;
    v30 = a1;

    sub_21B17AB4C(v17);
    if (v16 != v14)
    {
      __break(1u);
      goto LABEL_8;
    }

    v11 = v32;
    v8 = v33;
    v12 = v31;
    a1 = v30;
    v3 = v29;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v38 = v15;
  sub_21B1836B8(&v38);
  v13 = v3;
  v18 = v36;
  if (!v3)
  {
    v19 = v38;
    sub_21B1D4F40(v12, v36, sub_21B1D4F38, 0, a1, v11);
    sub_21B183490(v19);

    v20 = sub_21B1821C4();
    v21 = v37;
    v22 = v12;
    v33 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B2110C0;

    sub_21B20CB08();
    v25 = sub_21B20CA78();
    v27 = v26;
    (*(v34 + 8))(v21, v35);
    *(inited + 32) = v22;
    *(inited + 40) = v18;
    *(inited + 48) = 1;
    *(inited + 56) = v25;
    *(inited + 64) = v27;
    v38 = v33;
    sub_21B1D21C8(inited);
    v28 = v38;
    (*(v39 + 8))(v11, v8);
    return v28;
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_21B182950(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = *a1;
  v23 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  v9 = sub_21B185A70(v8, sub_21B183458, v3, &v23);
  v10 = v23;
  if (v4)
  {
    goto LABEL_2;
  }

  v12 = v9;

  v13 = *(v12 + 16);

  if (v13 > 1)
  {

    v18 = sub_21B186364(MEMORY[0x277D84F98], v12, v5);

    v23 = v10;

    sub_21B1D1E98(v19);
    *a1 = v23;
    ObjectType = swift_getObjectType();
    v21 = swift_allocObject();
    *(v21 + 16) = v5;
    *(v21 + 24) = v18;
    v22 = *(a3 + 8);

    v22(sub_21B186414, v21, ObjectType, a3);

    *(v5 + 16) = 1;
    return 1;
  }

  *(v5 + 16) = 1;
  if (!*(v12 + 16))
  {
LABEL_2:

    return 1;
  }

  if (*(v12 + 16))
  {
    v15 = *(v5 + 32);
    v14 = *(v5 + 40);
    v16 = *(v12 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB90, &qword_21B2115B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B2110C0;
    *(inited + 32) = v15;
    *(inited + 40) = v14;
    *(inited + 48) = v16;
    v23 = v10;
    sub_21B1D1DA0(inited);
    *a1 = v23;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B182BE8(void *a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 16);
  v6 = a3[5];
  v25 = a3[4];
  v7 = v25;
  v26 = v6;
  v27 = v5;
  v8 = a3[8];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_21B182E28(0, 0, v8, 0, v25, v6, v5, &v22);

  if (v3)
  {

    return swift_bridgeObjectRelease_n();
  }

  else
  {

    v11 = v22;
    v10 = v23;
    v12 = v24;
    v13 = *a1;
    if (*(*a1 + 16))
    {
      v14 = sub_21B1B97F0(v22, v23, v24);
      if (v15)
      {
        v16 = (*(v13 + 56) + 24 * v14);
        v18 = *v16;
        v17 = v16[1];
        v19 = v16[2];
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v5;
        sub_21B185D08(v19, sub_21B18585C, 0, isUniquelyReferenced_nonNull_native, &v22, &v25, v18, v17, v19);

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v5 = v22;
        v7 = v25;
        v6 = v26;
      }
    }

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a1;
    sub_21B1BB660(v7, v6, v5, v11, v10, v12, v21);

    *a1 = v22;
  }

  return result;
}

void *sub_21B182E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v49 = a4;
  v10 = a2;
  if (!a2)
  {
    v10 = a6;

    a1 = a5;
  }

  v41 = v10;
  v39 = a1;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  if (v14)
  {
    while (1)
    {
LABEL_13:
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v23 = (*(a3 + 48) + ((v16 << 10) | (16 * v22)));
      v24 = *v23;
      v25 = v23[1];
      v26 = *(a7 + 16);

      if (v26 && (v27 = sub_21B1B9778(v24, v25), (v28 & 1) != 0))
      {
        sub_21B17FB4C(*(a7 + 56) + 40 * v27, v45);
        sub_21B17C284(v45, &v42);
        *&v46 = v24;
        *(&v46 + 1) = v25;
        v18 = *(&v43 + 1);
        v19 = __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
        *(&v48 + 1) = v18;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
        (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v19, v18);
        __swift_destroy_boxed_opaque_existential_1(&v42);
        if (!*(&v46 + 1))
        {
          goto LABEL_8;
        }

        v42 = v46;
        v43 = v47;
        v44 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_21B1D2B80(0, v17[2] + 1, 1, v17);
        }

        v30 = v17[2];
        v29 = v17[3];
        if (v30 >= v29 >> 1)
        {
          v17 = sub_21B1D2B80((v29 > 1), v30 + 1, 1, v17);
        }

        v17[2] = v30 + 1;
        v31 = &v17[6 * v30];
        v32 = v42;
        v33 = v44;
        v31[3] = v43;
        v31[4] = v33;
        v31[2] = v32;
        if (!v14)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if ((v49 & 1) == 0)
        {

          sub_21B186430();
          swift_allocError();
          *v37 = v24;
          *(v37 + 8) = v25;
          *(v37 + 16) = 0;
          swift_willThrow();
        }

        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
LABEL_8:
        sub_21B186488(&v46, &qword_27CD6EBB0, &qword_21B2115C8);
        if (!v14)
        {
          goto LABEL_9;
        }
      }
    }
  }

  while (1)
  {
LABEL_9:
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v21 >= v15)
    {
      break;
    }

    v14 = *(a3 + 56 + 8 * v21);
    ++v16;
    if (v14)
    {
      v16 = v21;
      goto LABEL_13;
    }
  }

  if (v17[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBB8, &qword_21B2115D0);
    v34 = sub_21B20D808();
  }

  else
  {
    v34 = MEMORY[0x277D84F98];
  }

  *&v46 = v34;

  sub_21B1854A0(v35, 1, &v46);
  if (!v38)
  {

    return DatasetRow.init(name:_:)(v39, v41, v46, a8);
  }

LABEL_30:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

char *sub_21B1831A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_5:
    v8 = sub_21B182534(v4);

    return v8;
  }

  v4 = sub_21B1C6EB0(*(a2 + 16), 0);
  v5 = sub_21B1C7598(&v9, v4 + 4, v2, a2);
  v6 = v9;

  result = sub_21B17AB4C(v6);
  if (v5 == v2)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_21B18328C()
{

  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[11];

  sub_21B183364(v1, v2, v3);
}

uint64_t sub_21B1832C8()
{

  sub_21B183364(v0[9], v0[10], v0[11]);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void sub_21B183364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

unint64_t sub_21B1833A8()
{
  result = qword_27CD6EB88;
  if (!qword_27CD6EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB88);
  }

  return result;
}

void sub_21B1833FC(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    goto LABEL_5;
  }

  if (a3 > 4u)
  {
    if (a3 == 5 || a3 == 6)
    {
    }
  }

  else if (a3 == 3 || a3 == 4)
  {
LABEL_5:
  }
}

uint64_t sub_21B183490(uint64_t a1)
{
  v2 = sub_21B20CB28();
  result = MEMORY[0x28223BE20](v2, v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v13 = *(v5 + 104);
    v12 = *MEMORY[0x277CE18E0];
    v14 = v5 + 104;
    v9 = (v5 + 8);
    v10 = a1 + 16 * v8 + 24;
    do
    {
      --v8;
      v13(v7, v12, v2);
      sub_21B186558();

      sub_21B20CAC8();
      (*v9)(v7, v2);

      v10 -= 16;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_21B183610(uint64_t *a1)
{
  v2 = *(type metadata accessor for DatasetColumnDescription(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21B1858BC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21B183724(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_21B1836B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21B1858E4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21B183850(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21B183724(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B20DAA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DatasetColumnDescription(0);
        v6 = sub_21B20D488();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for DatasetColumnDescription(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21B183C48(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21B183948(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B183850(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B20DAA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21B20D488();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21B1845E8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21B183B78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B183948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for DatasetColumnDescription(0);
  v9 = MEMORY[0x28223BE20](v37, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = (&v30 - v14);
  result = MEMORY[0x28223BE20](v13, v16);
  v20 = (&v30 - v19);
  v32 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v24 = -v22;
    v25 = a1 - a3;
    v31 = v22;
    v26 = v21 + v22 * a3;
LABEL_6:
    v35 = v23;
    v36 = a3;
    v33 = v26;
    v34 = v25;
    while (1)
    {
      sub_21B186818(v26, v20, type metadata accessor for DatasetColumnDescription);
      sub_21B186818(v23, v15, type metadata accessor for DatasetColumnDescription);
      if (*v20 == *v15 && v20[1] == v15[1])
      {
        sub_21B17FDE8(v15);
        result = sub_21B17FDE8(v20);
LABEL_5:
        a3 = v36 + 1;
        v23 = v35 + v31;
        v25 = v34 - 1;
        v26 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_6;
      }

      v28 = sub_21B20DB28();
      sub_21B17FDE8(v15);
      result = sub_21B17FDE8(v20);
      if ((v28 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v21)
      {
        break;
      }

      sub_21B1867B4(v26, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21B1867B4(v11, v23);
      v23 += v24;
      v26 += v24;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B183B78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_21B20DB28(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B183C48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v133 = a1;
  v146 = type metadata accessor for DatasetColumnDescription(0);
  v139 = *(v146 - 8);
  v10 = MEMORY[0x28223BE20](v146, v9);
  v135 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v145 = &v126 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = (&v126 - v17);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = (&v126 - v21);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v144 = (&v126 - v25);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v143 = (&v126 - v28);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v132 = (&v126 - v31);
  result = MEMORY[0x28223BE20](v30, v32);
  v131 = (&v126 - v34);
  v35 = *(a3 + 8);
  if (v35 < 1)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v133;
    if (!*v133)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_112:
      v147 = v37;
      v121 = *(v37 + 16);
      if (v121 >= 2)
      {
        while (*a3)
        {
          v122 = v37;
          v37 = *(v37 + 16 * v121);
          v123 = v122;
          v124 = *&v122[16 * v121 + 24];
          sub_21B184BC4(*a3 + *(v139 + 72) * v37, *a3 + *(v139 + 72) * *&v122[16 * v121 + 16], *a3 + *(v139 + 72) * v124, v5);
          if (v6)
          {
          }

          if (v124 < v37)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_21B185388(v123);
          }

          if (v121 - 2 >= *(v123 + 2))
          {
            goto LABEL_136;
          }

          v125 = &v123[16 * v121];
          *v125 = v37;
          v125[1] = v124;
          v147 = v123;
          result = sub_21B1852FC(v121 - 1);
          v37 = v147;
          v121 = *(v147 + 16);
          if (v121 <= 1)
          {
          }
        }

        goto LABEL_146;
      }
    }

LABEL_142:
    result = sub_21B185388(v37);
    v37 = result;
    goto LABEL_112;
  }

  v127 = a4;
  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v140 = a3;
  v136 = v22;
  while (1)
  {
    v38 = v36;
    v39 = v36 + 1;
    if (v36 + 1 < v35)
    {
      v137 = v35;
      v128 = v37;
      v40 = *a3;
      v41 = *(v139 + 72);
      v42 = v36 + 1;
      v43 = v131;
      sub_21B186818(v40 + v41 * v39, v131, type metadata accessor for DatasetColumnDescription);
      v141 = v41;
      v44 = v40 + v41 * v38;
      v45 = v132;
      sub_21B186818(v44, v132, type metadata accessor for DatasetColumnDescription);
      v46 = *v43 == *v45 && v43[1] == v45[1];
      v129 = v6;
      if (v46)
      {
        LODWORD(v138) = 0;
      }

      else
      {
        LODWORD(v138) = sub_21B20DB28();
      }

      sub_21B17FDE8(v132);
      result = sub_21B17FDE8(v131);
      v130 = v38;
      v47 = v38 + 2;
      v48 = v141 * (v38 + 2);
      v49 = v40 + v48;
      v50 = v42;
      v51 = v141 * v42;
      a3 = v40 + v141 * v42;
      do
      {
        v6 = v47;
        v53 = v50;
        v37 = v51;
        v5 = v48;
        if (v47 >= v137)
        {
          break;
        }

        v142 = v47;
        v54 = v18;
        v55 = v143;
        sub_21B186818(v49, v143, type metadata accessor for DatasetColumnDescription);
        v56 = v144;
        sub_21B186818(a3, v144, type metadata accessor for DatasetColumnDescription);
        v57 = *v55 == *v56 && v55[1] == v56[1];
        v52 = v57 ? 0 : sub_21B20DB28();
        v18 = v54;
        v6 = v142;
        sub_21B17FDE8(v144);
        result = sub_21B17FDE8(v143);
        v47 = v6 + 1;
        v49 += v141;
        a3 += v141;
        v50 = v53 + 1;
        v51 = v37 + v141;
        v48 = v5 + v141;
        v22 = v136;
      }

      while (((v138 ^ v52) & 1) == 0);
      if (v138)
      {
        if (v6 < v130)
        {
          goto LABEL_139;
        }

        if (v130 >= v6)
        {
          v39 = v6;
          v37 = v128;
          v6 = v129;
          a3 = v140;
          v38 = v130;
          goto LABEL_36;
        }

        v58 = v130 * v141;
        v59 = v130;
        do
        {
          if (v59 != v53)
          {
            v61 = *v140;
            if (!*v140)
            {
              goto LABEL_145;
            }

            v142 = v61 + v58;
            sub_21B1867B4(v61 + v58, v135);
            if (v58 < v37 || v142 >= v61 + v5)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_21B1867B4(v135, v61 + v37);
          }

          ++v59;
          v37 -= v141;
          v5 -= v141;
          v58 += v141;
        }

        while (v59 < v53--);
      }

      v39 = v6;
      v37 = v128;
      v6 = v129;
      a3 = v140;
      v38 = v130;
    }

LABEL_36:
    v62 = *(a3 + 8);
    v142 = v39;
    if (v39 < v62)
    {
      v89 = __OFSUB__(v39, v38);
      v63 = v39 - v38;
      if (v89)
      {
        goto LABEL_138;
      }

      if (v63 < v127)
      {
        break;
      }
    }

LABEL_59:
    if (v142 < v38)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B18539C(0, *(v37 + 16) + 1, 1, v37);
      v37 = result;
    }

    v75 = *(v37 + 16);
    v74 = *(v37 + 24);
    v76 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      result = sub_21B18539C((v74 > 1), v75 + 1, 1, v37);
      v37 = result;
    }

    *(v37 + 16) = v76;
    v77 = v37 + 16 * v75;
    v78 = v142;
    *(v77 + 32) = v38;
    *(v77 + 40) = v78;
    v5 = *v133;
    if (!*v133)
    {
      goto LABEL_147;
    }

    if (v75)
    {
      while (1)
      {
        a3 = v76 - 1;
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v79 = *(v37 + 32);
          v80 = *(v37 + 40);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_79:
          if (v82)
          {
            goto LABEL_126;
          }

          v95 = (v37 + 16 * v76);
          v97 = *v95;
          v96 = v95[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_129;
          }

          v101 = (v37 + 32 + 16 * a3);
          v103 = *v101;
          v102 = v101[1];
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_133;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              a3 = v76 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v105 = (v37 + 16 * v76);
        v107 = *v105;
        v106 = v105[1];
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_93:
        if (v100)
        {
          goto LABEL_128;
        }

        v108 = v37 + 16 * a3;
        v110 = *(v108 + 32);
        v109 = *(v108 + 40);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_131;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_100:
        v116 = a3 - 1;
        if (a3 - 1 >= v76)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v140)
        {
          goto LABEL_144;
        }

        v117 = v37;
        v118 = v37 + 32;
        v37 = *(v37 + 32 + 16 * v116);
        v119 = *(v118 + 16 * a3 + 8);
        sub_21B184BC4(*v140 + *(v139 + 72) * v37, *v140 + *(v139 + 72) * *(v118 + 16 * a3), *v140 + *(v139 + 72) * v119, v5);
        if (v6)
        {
        }

        if (v119 < v37)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_21B185388(v117);
        }

        if (v116 >= *(v117 + 2))
        {
          goto LABEL_123;
        }

        v120 = &v117[16 * v116];
        *(v120 + 4) = v37;
        *(v120 + 5) = v119;
        v147 = v117;
        result = sub_21B1852FC(a3);
        v37 = v147;
        v76 = *(v147 + 16);
        if (v76 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = v37 + 32 + 16 * v76;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_124;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_125;
      }

      v90 = (v37 + 16 * v76);
      v92 = *v90;
      v91 = v90[1];
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_127;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_130;
      }

      if (v94 >= v86)
      {
        v112 = (v37 + 32 + 16 * a3);
        v114 = *v112;
        v113 = v112[1];
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_134;
        }

        if (v81 < v115)
        {
          a3 = v76 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v140;
    v35 = v140[1];
    v36 = v142;
    if (v142 >= v35)
    {
      goto LABEL_110;
    }
  }

  if (__OFADD__(v38, v127))
  {
    goto LABEL_140;
  }

  if (v38 + v127 >= v62)
  {
    v64 = v62;
  }

  else
  {
    v64 = v38 + v127;
  }

  if (v64 < v38)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v142 == v64)
  {
    goto LABEL_59;
  }

  v128 = v37;
  v129 = v6;
  v65 = *a3;
  v66 = *(v139 + 72);
  v67 = *a3 + v66 * (v142 - 1);
  v68 = -v66;
  v130 = v38;
  a3 = v38 - v142;
  v134 = v66;
  v69 = v65 + v142 * v66;
  v137 = v64;
LABEL_48:
  v5 = v69;
  v138 = a3;
  v141 = v67;
  while (1)
  {
    sub_21B186818(v5, v22, type metadata accessor for DatasetColumnDescription);
    sub_21B186818(v67, v18, type metadata accessor for DatasetColumnDescription);
    if (*v22 == *v18 && v22[1] == v18[1])
    {
      sub_21B17FDE8(v18);
      sub_21B17FDE8(v22);
LABEL_47:
      v67 = v141 + v134;
      a3 = v138 - 1;
      v69 += v134;
      if (++v142 == v137)
      {
        v142 = v137;
        v37 = v128;
        v6 = v129;
        v38 = v130;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v71 = sub_21B20DB28();
    sub_21B17FDE8(v18);
    result = sub_21B17FDE8(v22);
    if ((v71 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!v65)
    {
      break;
    }

    v72 = v145;
    sub_21B1867B4(v5, v145);
    swift_arrayInitWithTakeFrontToBack();
    sub_21B1867B4(v72, v67);
    v67 += v68;
    v5 += v68;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_21B1845E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_21B185388(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_21B1850D4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_21B20DB28();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_21B20DB28();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B18539C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_21B18539C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_21B1850D4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21B185388(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_21B1852FC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_21B20DB28(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_21B184BC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for DatasetColumnDescription(0);
  v9 = MEMORY[0x28223BE20](v53, v8);
  v52 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9, v11);
  v51 = (&v45 - v13);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = (&v45 - v16);
  result = MEMORY[0x28223BE20](v15, v18);
  v21 = (&v45 - v20);
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  v50 = a2;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_71;
  }

  v24 = a3 - v50;
  if (a3 - v50 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_72;
  }

  v25 = (a2 - a1) / v23;
  v56 = a1;
  v55 = a4;
  if (v25 >= v24 / v23)
  {
    v28 = v24 / v23 * v23;
    if (a4 < v50 || v50 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v50)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v28;
    if (v28 >= 1)
    {
      v34 = -v23;
      v35 = a4 + v28;
      v48 = a4;
      v49 = -v23;
      do
      {
        v46 = v33;
        v36 = v50;
        v50 += v34;
        while (1)
        {
          if (v36 <= a1)
          {
            v56 = v36;
            v54 = v46;
            goto LABEL_69;
          }

          v37 = a3;
          v47 = v33;
          v38 = v49;
          v39 = v35 + v49;
          v40 = v51;
          sub_21B186818(v35 + v49, v51, type metadata accessor for DatasetColumnDescription);
          v41 = v52;
          sub_21B186818(v50, v52, type metadata accessor for DatasetColumnDescription);
          v42 = *v40 == *v41 && v40[1] == v41[1];
          v43 = v42 ? 0 : sub_21B20DB28();
          a3 = v37 + v38;
          sub_21B17FDE8(v52);
          sub_21B17FDE8(v51);
          v44 = v48;
          if (v43)
          {
            break;
          }

          v33 = v39;
          if (v37 < v35 || a3 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v37 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v35 = v39;
          if (v39 <= v44)
          {
            v50 = v36;
            goto LABEL_68;
          }
        }

        if (v37 < v36 || a3 >= v36)
        {
          swift_arrayInitWithTakeFrontToBack();
          v33 = v47;
        }

        else
        {
          v33 = v47;
          if (v37 != v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v34 = v49;
      }

      while (v35 > v44);
    }

LABEL_68:
    v56 = v50;
    v54 = v33;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v50;
    }

    else
    {
      v27 = v50;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v29 = a4 + v26;
    v54 = a4 + v26;
    if (v26 >= 1 && v27 < a3)
    {
      while (1)
      {
        sub_21B186818(v27, v21, type metadata accessor for DatasetColumnDescription);
        sub_21B186818(a4, v17, type metadata accessor for DatasetColumnDescription);
        if (*v21 == *v17 && v21[1] == v17[1])
        {
          break;
        }

        v32 = sub_21B20DB28();
        sub_21B17FDE8(v17);
        sub_21B17FDE8(v21);
        if ((v32 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < v27 || a1 >= v27 + v23)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v27)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v27 += v23;
LABEL_38:
        a1 += v23;
        v56 = a1;
        if (a4 >= v29 || v27 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_21B17FDE8(v17);
      sub_21B17FDE8(v21);
LABEL_30:
      if (a1 < a4 || a1 >= a4 + v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v55 = a4 + v23;
      a4 += v23;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_21B1D7E44(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_21B1850D4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_21B20DB28() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_21B20DB28() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_21B1852FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21B185388(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_21B18539C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBA0, &qword_21B2115B8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_21B1854A0(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_21B1864E8(a1 + 32, &v44);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_21B17C304(v46, v41);
  v9 = *a3;
  v10 = sub_21B1B9778(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_21B201438(v15, a2 & 1);
    v10 = sub_21B1B9778(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_21B20DBF8();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_21B203BE0();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_21B17C304(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_21B1864E8(v25, &v44);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_21B17C304(v46, v41);
      v29 = *a3;
      v30 = sub_21B1B9778(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_21B201438(v34, 1);
        v30 = sub_21B1B9778(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_21B17C304(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
  sub_21B20D7C8();
  __break(1u);
}

uint64_t sub_21B18585C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_21B17FB4C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_21B1858F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21B17FB4C(*(v3 + 56) + 40 * v13, v21);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_21B17C284(v21, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v24;
      v21[2] = v25;
      v22 = v26;
      v20(v21);
      return sub_21B186488(v21, &qword_27CD6EBA8, &qword_21B2115C0);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B185A70(uint64_t result, uint64_t (*a2)(uint64_t *), uint64_t a3, char **a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = result + 48;
    v26 = v6 - 1;
    v9 = MEMORY[0x277D84F90];
    v29 = *(result + 16);
    v30 = result;
    v27 = result + 48;
    do
    {
      v28 = v9;
      v10 = (v8 + 24 * v7);
      v11 = v7;
      while (1)
      {
        if (v11 >= *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 - 2);
        v13 = *(v10 - 1);
        v14 = *v10;
        v34 = v12;
        v35 = v13;
        v36 = v14;

        v15 = a2(&v34);
        if (v4)
        {
          v9 = v28;

          goto LABEL_21;
        }

        if (v15)
        {
          break;
        }

        v16 = v35;
        v33 = v34;
        v17 = v36;
        v18 = *a4;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_21B1D280C(0, *(v18 + 2) + 1, 1, v18);
          *a4 = v18;
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        if (v21 >= v20 >> 1)
        {
          v18 = sub_21B1D280C((v20 > 1), v21 + 1, 1, v18);
          *a4 = v18;
        }

        ++v11;
        *(v18 + 2) = v21 + 1;
        v22 = &v18[24 * v21];
        *(v22 + 4) = v33;
        *(v22 + 5) = v16;
        *(v22 + 6) = v17;

        v10 += 3;
        v5 = v30;
        if (v29 == v11)
        {
          v9 = v28;
          goto LABEL_21;
        }
      }

      v9 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      v37 = v28;
      if ((result & 1) == 0)
      {
        result = sub_21B18FD38(0, *(v28 + 16) + 1, 1);
        v9 = v37;
      }

      v24 = *(v9 + 16);
      v23 = *(v9 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_21B18FD38((v23 > 1), v24 + 1, 1);
        v9 = v37;
      }

      v7 = v11 + 1;
      *(v9 + 16) = v24 + 1;
      v25 = (v9 + 24 * v24);
      v25[4] = v12;
      v25[5] = v13;
      v25[6] = v14;
      v8 = v27;
      v5 = v30;
    }

    while (v26 != v11);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

LABEL_21:

  return v9;
}

void sub_21B185D08(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = -1 << *(a1 + 32);
  v12 = ~v11;
  v13 = *(a1 + 64);
  v14 = -v11;
  v70 = a1;
  v71 = a1 + 64;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v72 = v12;
  v73 = 0;
  v74 = v15 & v13;
  v75 = a2;
  v76 = a3;

  sub_21B1858F8(&v67);
  v16 = v68;
  if (!v68)
  {
LABEL_19:
    sub_21B17AB4C(v70);

    return;
  }

  while (1)
  {
    v17 = v67;
    v65 = v67;
    v66 = v16;
    sub_21B17C284(&v69, v64);
    v18 = *a5;
    v20 = sub_21B1B9778(v17, v16);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v24 = v19;
    if (v18[3] < v23)
    {
      break;
    }

    if (a4)
    {
      if (v19)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_21B203964();
      if (v24)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v29 = *a5;
    *(*a5 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v30 = (v29[6] + 16 * v20);
    *v30 = v17;
    v30[1] = v16;
    sub_21B17C284(v64, v29[7] + 40 * v20);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_33;
    }

    v29[2] = v33;
LABEL_6:
    sub_21B1858F8(&v67);
    v16 = v68;
    a4 = 1;
    if (!v68)
    {
      goto LABEL_19;
    }
  }

  sub_21B2010B0(v23, a4 & 1);
  v25 = sub_21B1B9778(v17, v16);
  if ((v24 & 1) != (v26 & 1))
  {
    goto LABEL_35;
  }

  v20 = v25;
  if ((v24 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v27 = *a5;
  sub_21B17FB4C(*(*a5 + 56) + 40 * v20, v62);
  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  if (sub_21B20CE18())
  {
    sub_21B17FB4C(v62, v63);
    __swift_destroy_boxed_opaque_existential_1(v62);
    __swift_destroy_boxed_opaque_existential_1(v64);

    v28 = (v27[7] + 40 * v20);
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_21B17C284(v63, v28);
    goto LABEL_6;
  }

  v59[0] = 0;
  v59[1] = 0xE000000000000000;
  sub_21B20D6A8();
  v60 = 0;
  v61 = 0xE000000000000000;
  MEMORY[0x21CEEBBB0](0xD00000000000002DLL, 0x800000021B20E9B0);
  v34 = *(a6 + 16);
  v35 = *(v34 + 16);
  if (!v35)
  {
    goto LABEL_23;
  }

  v36 = sub_21B1C703C(*(v34 + 16), 0);
  v37 = sub_21B1C7A98(v59, (v36 + 32), v35, v34);
  v38 = v59[0];
  swift_bridgeObjectRetain_n();
  sub_21B17AB4C(v38);
  v39 = v37 == v35;
  v40 = a9;
  if (!v39)
  {
    __break(1u);
LABEL_23:

    v36 = MEMORY[0x277D84F90];
    v40 = a9;
  }

  v41 = v77;
  v59[0] = v36;
  sub_21B1836B8(v59);
  v20 = v41;
  if (v41)
  {
    goto LABEL_36;
  }

  v42 = MEMORY[0x21CEEBC80](v59[0], MEMORY[0x277D837D0]);
  v44 = v43;

  MEMORY[0x21CEEBBB0](v42, v44);

  MEMORY[0x21CEEBBB0](0x3A646E6F6365530ALL, 0xE900000000000020);
  v45 = *(v40 + 16);
  if (v45)
  {
    v77 = 0;
    v46 = sub_21B1C703C(v45, 0);
    v47 = sub_21B1C7A98(v59, (v46 + 32), v45, v40);
    v48 = v59[0];
    v20 = v59[4];

    sub_21B17AB4C(v48);
    if (v47 == v45)
    {
      v20 = v77;
      goto LABEL_29;
    }

LABEL_34:
    __break(1u);
LABEL_35:

    sub_21B20DBF8();
    __break(1u);
LABEL_36:
    v57 = v20;
LABEL_38:

    __break(1u);
    goto LABEL_39;
  }

  v46 = MEMORY[0x277D84F90];
LABEL_29:
  v59[0] = v46;
  sub_21B1836B8(v59);
  if (v20)
  {
    v57 = v20;
    goto LABEL_38;
  }

  v49 = MEMORY[0x21CEEBC80](v59[0], MEMORY[0x277D837D0]);
  v51 = v50;

  MEMORY[0x21CEEBBB0](v49, v51);

  v52 = v60;
  v53 = v61;
  sub_21B186430();
  v54 = swift_allocError();
  *v55 = v52;
  *(v55 + 8) = v53;
  *(v55 + 16) = 2;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v62);
  v62[0] = v54;
  v56 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(v64);
    sub_21B17AB4C(v70);

    return;
  }

LABEL_39:
  *&v63[0] = 0;
  *(&v63[0] + 1) = 0xE000000000000000;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);

  sub_21B20D7C8();
  __break(1u);
}

uint64_t sub_21B186364(uint64_t result, uint64_t a2, void *a3)
{
  v10 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    for (i = (a2 + 48); ; i += 3)
    {
      v7 = *(i - 1);
      v8 = *i;
      v9[0] = *(i - 2);
      v9[1] = v7;
      v9[2] = v8;

      sub_21B182BE8(&v10, v9, a3);

      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return v10;
      }
    }
  }

  return result;
}

unint64_t sub_21B186430()
{
  result = qword_27CD6EB98;
  if (!qword_27CD6EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB98);
  }

  return result;
}

uint64_t sub_21B186488(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21B1864E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBC0, &qword_21B2115D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B186558()
{
  result = qword_27CD6EBC8;
  if (!qword_27CD6EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EBC8);
  }

  return result;
}

unint64_t sub_21B1865AC()
{
  result = qword_27CD6EBE8;
  if (!qword_27CD6EBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6EBE0, &qword_21B217FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EBE8);
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

void sub_21B186658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

unint64_t sub_21B18669C()
{
  result = qword_27CD6EBF8;
  if (!qword_27CD6EBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6EBF0, &unk_21B2115E0);
    sub_21B186880(&qword_27CD6EC00, type metadata accessor for DatasetColumnDescription, &protocol conformance descriptor for DatasetColumnDescription);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EBF8);
  }

  return result;
}

uint64_t sub_21B186750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnDescription(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1867B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B186818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B186880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21B1868D4(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = *a3;
  v6 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_21B20D368();
  v12 = v11;
  swift_beginAccess();
  v13 = sub_21B1BA38C(v10, v12);
  swift_endAccess();
  if (v13)
  {

    *(v4 + 56) = v13;
    *(v4 + 64) = v8;
    *(v4 + 72) = v9;
    v14 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 152);
    *(v4 + 16) = 0;
    *(v4 + 24) = v14;

    *(v4 + 32) = v7;
    *(v4 + 40) = v6;
    *(v4 + 48) = a2;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_21B17FC58();
    swift_allocError();
    *v15 = v10;
    *(v15 + 8) = v12;
    *(v15 + 16) = 3;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MaterializedViewBlock();
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t sub_21B186A4C()
{
  result = sub_21B1E7C08();
  if (!v1)
  {
    *(v0 + 16) = 0;
  }

  return result;
}

uint64_t sub_21B186A80(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);

  v6 = sub_21B1D151C(v4, v5);

  if (!v2)
  {
    sub_21B1E79C0(v3, v6);

    *(v1 + 16) = 1;
  }

  return 1;
}

uint64_t sub_21B186B28()
{
}

uint64_t sub_21B186B58()
{

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_21B186BEC(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_21B20CF28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21B20CEA8();

  if (!v2)
  {
    v11 = v1[10];
    if (v11)
    {
      v12 = v1[9];
      v13 = *a1;
      if (!*(*a1 + 16) || (v14 = sub_21B1B9778(v3[9], v3[10]), (v15 & 1) == 0))
      {
        v29 = 0;
        v30 = 0xE000000000000000;
        sub_21B20D6A8();

        v29 = 0x203A6B636F6C42;
        v30 = 0xE700000000000000;
        MEMORY[0x21CEEBBB0](v3[4], v3[5]);
        MEMORY[0x21CEEBBB0](0xD000000000000026, 0x800000021B20EC20);
        v19 = v12;
        v20 = v11;
        goto LABEL_10;
      }

      v16 = *(*(*(v13 + 56) + 24 * v14 + 16) + 16);
      if (sub_21B20CEC8() >= v16)
      {
        v29 = 0;
        v30 = 0xE000000000000000;
        sub_21B20D6A8();

        v29 = 0x6572207972657551;
        v30 = 0xEF20736572697571;
        v31 = sub_21B20CEC8();
        v17 = sub_21B20DAB8();
        MEMORY[0x21CEEBBB0](v17);

        MEMORY[0x21CEEBBB0](0xD000000000000011, 0x800000021B20EC50);
        v31 = v16;
        v18 = sub_21B20DAB8();
        MEMORY[0x21CEEBBB0](v18);

        v19 = 0x7078652065726120;
        v20 = 0xED00006465746365;
LABEL_10:
        MEMORY[0x21CEEBBB0](v19, v20);
        v22 = v29;
        v23 = v30;
        sub_21B18722C();
        swift_allocError();
        *v24 = v22;
        *(v24 + 8) = v23;
        *(v24 + 16) = 0;
        swift_willThrow();
        return (*(v6 + 8))(v9, v5);
      }
    }

    else if (sub_21B20CEC8() >= 1)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_21B20D6A8();
      MEMORY[0x21CEEBBB0](0x6572207972657551, 0xEF20736572697571);
      v31 = sub_21B20CEC8();
      v21 = sub_21B20DAB8();
      MEMORY[0x21CEEBBB0](v21);

      v19 = 0xD000000000000030;
      v20 = 0x800000021B20EBE0;
      goto LABEL_10;
    }

    v25 = v3[4];
    v26 = v3[5];
    v27 = v3[8];
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *a1;
    *a1 = 0x8000000000000000;
    sub_21B1BB4EC(v25, v26, v27, v25, v26, isUniquelyReferenced_nonNull_native);

    *a1 = v29;
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_21B186FF4()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[8];

  v6 = sub_21B1B5784(v5);

  v7 = *(v6 + 16);

  if (!v7)
  {
    return sub_21B20CEE8();
  }

  v10[3] = &type metadata for DatasetColumnLayout;
  v10[0] = v3;
  v10[1] = v2;
  v10[4] = sub_21B17FE44();
  v10[2] = v4;

  v8 = sub_21B20CED8();
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v1)
  {
    return v8;
  }

  return result;
}

uint64_t sub_21B187100()
{
}

uint64_t sub_21B187138()
{

  return MEMORY[0x2821FE8D8](v0, 89, 7);
}

uint64_t sub_21B1871D4@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 72);
  v2 = *(*v1 + 80);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 64);
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
}

unint64_t sub_21B18722C()
{
  result = qword_27CD6EC10;
  if (!qword_27CD6EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC10);
  }

  return result;
}

uint64_t sub_21B187280(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (!v9)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v6 != 1)
  {
    if (v9 == 2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v9 != 1)
  {
    return 0;
  }

LABEL_4:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  else
  {
    return sub_21B20DB28();
  }
}

uint64_t sub_21B1872E4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC28, &qword_21B2117E8);
  v4 = MEMORY[0x28223BE20](v80, v3);
  v79 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v78 = (&v66 - v8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v77 = (&v66 - v11);
  MEMORY[0x28223BE20](v10, v12);
  v76 = &v66 - v13;
  v14 = type metadata accessor for DatasetColumnDescription(0);
  v74 = *(v14 - 8);
  v75 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1[4];
  v66 = v1[3];
  v19 = v1[8];
  ObjectType = swift_getObjectType();
  v21 = *(v19 + 8);
  v67 = v18;

  v22 = v21(ObjectType, v19);
  if (*(v22 + 16) && (v25 = v2 + 3, v23 = v2[3], v24 = v25[1], , v26 = sub_21B1B9778(v23, v24), v28 = v27, , (v28 & 1) != 0) && (v29 = *(*(v22 + 56) + 8 * v26), , , (v30 = *(v29 + 16)) != 0))
  {
    v86 = MEMORY[0x277D84F90];

    sub_21B18FDB0(0, v30, 0);
    v31 = v86;
    v32 = v29 + 64;
    result = sub_21B20D648();
    v34 = result;
    v35 = 0;
    v36 = *(v29 + 36);
    v69 = v29 + 72;
    v70 = v30;
    v72 = v29;
    v73 = v29 + 64;
    v71 = v36;
    while ((v34 & 0x8000000000000000) == 0 && v34 < 1 << *(v29 + 32))
    {
      if ((*(v32 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
      {
        goto LABEL_27;
      }

      if (v36 != *(v29 + 36))
      {
        goto LABEL_28;
      }

      v82 = 1 << v34;
      v83 = v34 >> 6;
      v81 = v35;
      v85 = v31;
      v38 = v80;
      v39 = *(v80 + 48);
      v40 = *(v29 + 56);
      v41 = (*(v29 + 48) + 16 * v34);
      v42 = v17;
      v44 = *v41;
      v43 = v41[1];
      v45 = type metadata accessor for DatasetColumnType(0);
      v46 = v76;
      sub_21B188B7C(v40 + *(*(v45 - 8) + 72) * v34, &v76[v39], type metadata accessor for DatasetColumnType);
      v47 = v77;
      *v77 = v44;
      *(v47 + 8) = v43;
      sub_21B188AC0(&v46[v39], v47 + *(v38 + 48), type metadata accessor for DatasetColumnType);
      v48 = v78;
      sub_21B1889E0(v47, v78);
      v50 = *v48;
      v49 = v48[1];
      v84 = *(v38 + 48);
      v51 = v47;
      v52 = v79;
      sub_21B188A50(v51, v79);

      v53 = *(v38 + 48);
      v31 = v85;
      *v42 = v50;
      *(v42 + 8) = v49;
      v17 = v42;
      *(v42 + 16) = 0;
      v54 = v75;
      *(v42 + *(v75 + 28)) = 0;
      sub_21B188AC0(v52 + v53, v42 + *(v54 + 24), type metadata accessor for DatasetColumnType);
      sub_21B188BE4(v48 + v84, type metadata accessor for DatasetColumnType);
      v86 = v31;
      v56 = *(v31 + 16);
      v55 = *(v31 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_21B18FDB0((v55 > 1), v56 + 1, 1);
        v31 = v86;
      }

      *(v31 + 16) = v56 + 1;
      result = sub_21B188AC0(v42, v31 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v56, type metadata accessor for DatasetColumnDescription);
      v29 = v72;
      v32 = v73;
      v37 = 1 << *(v72 + 32);
      if (v34 >= v37)
      {
        goto LABEL_29;
      }

      v57 = *(v73 + 8 * v83);
      if ((v57 & v82) == 0)
      {
        goto LABEL_30;
      }

      LODWORD(v36) = v71;
      if (v71 != *(v72 + 36))
      {
        goto LABEL_31;
      }

      v58 = v57 & (-2 << (v34 & 0x3F));
      if (v58)
      {
        v37 = __clz(__rbit64(v58)) | v34 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v59 = v83 << 6;
        v60 = v83 + 1;
        v61 = (v69 + 8 * v83);
        while (v60 < (v37 + 63) >> 6)
        {
          v63 = *v61++;
          v62 = v63;
          v59 += 64;
          ++v60;
          if (v63)
          {
            result = sub_21B17C2EC(v34, v71, 0);
            v37 = __clz(__rbit64(v62)) + v59;
            goto LABEL_6;
          }
        }

        result = sub_21B17C2EC(v34, v71, 0);
      }

LABEL_6:
      v35 = v81 + 1;
      v34 = v37;
      if (v81 + 1 == v70)
      {
        result = swift_bridgeObjectRelease_n();
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
LABEL_23:
    v64 = v68;
    v65 = v67;
    *v68 = v66;
    v64[1] = v65;
    v64[2] = v31;
  }

  return result;
}

uint64_t sub_21B187848(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v26 = a2;
  v8 = type metadata accessor for DatasetColumnDescription(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a3[1];
  v27 = *a3;
  v14 = a3[2];
  *(v5 + 16) = 1;
  v15 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 120);
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {

    sub_21B188B28();
    swift_allocError();
    *v18 = 0xD000000000000044;
    v18[1] = 0x800000021B20ECB0;
    swift_willThrow();
    type metadata accessor for QueryParametersBlock();
    swift_deallocPartialClassInstance();
LABEL_17:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  v19 = v16;
  *(v5 + 40) = v14;
  if (!v14)
  {
    swift_unknownObjectRetain();
LABEL_16:
    *(v5 + 48) = v26;
    *(v5 + 24) = v27;
    *(v5 + 32) = v13;

    *(v5 + 56) = v15;
    *(v5 + 64) = v19;
    goto LABEL_17;
  }

  v25 = a1;
  v20 = *(v14 + 16);
  swift_unknownObjectRetain();

  if (!v20)
  {
    a1 = v25;
    goto LABEL_16;
  }

  v24 = v5;
  v21 = 0;
  while (v21 < *(v14 + 16))
  {
    sub_21B188B7C(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v12, type metadata accessor for DatasetColumnDescription);
    sub_21B187B28(v12, v15, v19, v27, v13);
    if (v4)
    {
      goto LABEL_19;
    }

    ++v21;
    sub_21B188BE4(v12, type metadata accessor for DatasetColumnDescription);
    if (v20 == v21)
    {
      v5 = v24;
      a1 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:

  sub_21B188BE4(v12, type metadata accessor for DatasetColumnDescription);

  type metadata accessor for QueryParametersBlock();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void sub_21B187B28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = type metadata accessor for DatasetColumnDescription(0);
  v10 = MEMORY[0x28223BE20](v82, v9);
  v12 = &v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v10, v13);
  v80 = &v75[-v15];
  MEMORY[0x28223BE20](v14, v16);
  v79 = &v75[-v17];
  v18 = type metadata accessor for DatasetColumnType(0);
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  v78 = &v75[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21, v23);
  v81 = &v75[-v25];
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v75[-v28];
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v75[-v31];
  ObjectType = swift_getObjectType();
  v34 = (*(a3 + 8))(ObjectType, a3);
  if (*(v34 + 16) && (v35 = sub_21B1B9778(a4, a5), (v36 & 1) != 0) && (v37 = *(*(v34 + 56) + 8 * v35), , , *(v37 + 16)) && (v38 = sub_21B1B9778(*a1, a1[1]), (v39 & 1) != 0))
  {
    sub_21B188B7C(*(v37 + 56) + *(v19 + 72) * v38, v29, type metadata accessor for DatasetColumnType);

    v40 = v32;
    sub_21B188AC0(v29, v32, type metadata accessor for DatasetColumnType);
    v41 = v82;
    sub_21B20CCE8();
    sub_21B188C7C();
    sub_21B20D3F8();
    sub_21B20D3F8();
    if (v85[0] == v83 && v85[1] == v84)
    {
    }

    else
    {
      v52 = sub_21B20DB28();

      if ((v52 & 1) == 0)
      {
        if (qword_27CD6E950 != -1)
        {
          swift_once();
        }

        v53 = sub_21B20D218();
        __swift_project_value_buffer(v53, qword_27CD7E090);
        v54 = v79;
        sub_21B188B7C(a1, v79, type metadata accessor for DatasetColumnDescription);
        v55 = v80;
        sub_21B188B7C(a1, v80, type metadata accessor for DatasetColumnDescription);
        v56 = v81;
        sub_21B188B7C(v40, v81, type metadata accessor for DatasetColumnType);
        v57 = sub_21B20D1F8();
        v58 = sub_21B20D598();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v85[0] = v77;
          *v59 = 136315650;
          v76 = v58;
          v60 = v54;
          v61 = *v54;
          v62 = v54[1];

          sub_21B188BE4(v60, type metadata accessor for DatasetColumnDescription);
          v63 = sub_21B19D4B0(v61, v62, v85);

          *(v59 + 4) = v63;
          *(v59 + 12) = 2080;
          v64 = v78;
          sub_21B188B7C(&v55[*(v41 + 24)], v78, type metadata accessor for DatasetColumnType);
          v65 = _s12PoirotBlocks17DatasetColumnTypeV11descriptionSSvg_0();
          v67 = v66;
          sub_21B188BE4(v64, type metadata accessor for DatasetColumnType);
          sub_21B188BE4(v55, type metadata accessor for DatasetColumnDescription);
          v68 = sub_21B19D4B0(v65, v67, v85);

          *(v59 + 14) = v68;
          *(v59 + 22) = 2080;
          v69 = v81;
          sub_21B188B7C(v81, v64, type metadata accessor for DatasetColumnType);
          v70 = _s12PoirotBlocks17DatasetColumnTypeV11descriptionSSvg_0();
          v72 = v71;
          sub_21B188BE4(v64, type metadata accessor for DatasetColumnType);
          sub_21B188BE4(v69, type metadata accessor for DatasetColumnType);
          v73 = sub_21B19D4B0(v70, v72, v85);

          *(v59 + 24) = v73;
          _os_log_impl(&dword_21B179000, v57, v76, "QueryParametersBlock requires query parameter with %s name to be of the %s, but environment provides %s", v59, 0x20u);
          v74 = v77;
          swift_arrayDestroy();
          MEMORY[0x21CEECC50](v74, -1, -1);
          MEMORY[0x21CEECC50](v59, -1, -1);
        }

        else
        {

          sub_21B188BE4(v56, type metadata accessor for DatasetColumnType);
          sub_21B188BE4(v55, type metadata accessor for DatasetColumnDescription);
          sub_21B188BE4(v54, type metadata accessor for DatasetColumnDescription);
        }

        v51 = v40;
        v50 = type metadata accessor for DatasetColumnType;
        goto LABEL_13;
      }
    }

    v50 = type metadata accessor for DatasetColumnType;
    v51 = v32;
  }

  else
  {

    if (qword_27CD6E950 != -1)
    {
      swift_once();
    }

    v42 = sub_21B20D218();
    __swift_project_value_buffer(v42, qword_27CD7E090);
    sub_21B188B7C(a1, v12, type metadata accessor for DatasetColumnDescription);
    v43 = sub_21B20D1F8();
    v44 = sub_21B20D598();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v85[0] = v46;
      *v45 = 136315138;
      v47 = *v12;
      v48 = v12[1];

      sub_21B188BE4(v12, type metadata accessor for DatasetColumnDescription);
      v49 = sub_21B19D4B0(v47, v48, v85);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_21B179000, v43, v44, "QueryParametersBlock requires query parameter with %s name and environment does not provide one", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x21CEECC50](v46, -1, -1);
      MEMORY[0x21CEECC50](v45, -1, -1);

      return;
    }

    v50 = type metadata accessor for DatasetColumnDescription;
    v51 = v12;
  }

LABEL_13:
  sub_21B188BE4(v51, v50);
}

uint64_t sub_21B1882D4(char **a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[8];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 16);

  v10(&v27, v7, v6, ObjectType, v8);
  if (v4)
  {
  }

  else
  {
    v11 = sub_21B188494(v27);

    DatasetRow.init(name:_:)(v7, v6, v11, &v24);
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = swift_getObjectType();
    v24 = v12;
    v25 = v13;
    v26 = v14;
    (*(a3 + 16))(&v24, v15, a3);
    v16 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_21B1D280C(0, *(v16 + 2) + 1, 1, v16);
      *a1 = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_21B1D280C((v18 > 1), v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    v20 = &v16[24 * v19];
    *(v20 + 4) = v12;
    *(v20 + 5) = v13;
    *(v20 + 6) = v14;
    *a1 = v16;
    *(v5 + 16) = 1;
  }

  return 1;
}

unint64_t sub_21B188494(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBB8, &qword_21B2115D0);
    v2 = sub_21B20D808();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_21B17FB4C(*(a1 + 56) + 40 * v13, v30);
        *&v29 = v15;
        *(&v29 + 1) = v16;
        v26[2] = v29;
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v17 = v29;
        sub_21B17C284(v27, v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
        swift_dynamicCast();
        sub_21B17C304(&v23, v25);
        sub_21B17C304(v25, v26);
        sub_21B17C304(v26, &v24);
        result = sub_21B1B9778(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_21B17C304(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_21B17C304(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21B188734(void *a1)
{
  if (*(*a1 + 16) && (v4 = *(v1 + 24), v3 = *(v1 + 32), , sub_21B1B9778(v4, v3), LOBYTE(v4) = v5, , (v4 & 1) != 0))
  {
    v7 = *(v1 + 24);
    v6 = *(v1 + 32);
    sub_21B18898C();
    swift_allocError();
    *v8 = v7;
    *(v8 + 8) = v6;
    *(v8 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v10 = *(v1 + 24);
    v11 = *(v1 + 32);

    sub_21B1872E4(v14);
    v12 = v14[2];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14[0] = *a1;
    *a1 = 0x8000000000000000;
    sub_21B1BB4EC(v10, v11, v12, v10, v11, isUniquelyReferenced_nonNull_native);

    *a1 = v14[0];
  }

  return result;
}

uint64_t sub_21B188864()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_21B18894C()
{
  v1 = *(*v0 + 24);

  return v1;
}

unint64_t sub_21B18898C()
{
  result = qword_27CD6EC18;
  if (!qword_27CD6EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC18);
  }

  return result;
}

uint64_t sub_21B1889E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC28, &qword_21B2117E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B188A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC28, &qword_21B2117E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B188AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21B188B28()
{
  result = qword_27CD6EC30;
  if (!qword_27CD6EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC30);
  }

  return result;
}

uint64_t sub_21B188B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B188BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_21B188C7C()
{
  result = qword_27CD6EC08;
  if (!qword_27CD6EC08)
  {
    sub_21B20CCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC08);
  }

  return result;
}

uint64_t sub_21B188CE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B188D28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B188D7C()
{

  sub_21B188EC8(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_21B188E20(uint64_t *a1)
{
  v3 = v1;
  v4 = *(v1 + 48);
  if (!v4 || (v5 = *(v1 + 56), v7 = *a1, sub_21B188EB8(v4, v5), , v4(&v7), , sub_21B188EC8(v4, v5), !v2))
  {
    *(v3 + 16) = 1;
  }

  return 1;
}

uint64_t sub_21B188EB8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21B188EC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21B188EE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21B188F2C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21B188F8C(void *a1, uint64_t a2, __int128 *a3)
{
  v7 = a3[3];
  v24 = a3[2];
  v25 = v7;
  *v26 = a3[4];
  *&v26[16] = *(a3 + 10);
  v8 = a3[1];
  v22 = *a3;
  v23 = v8;
  *(v3 + 184) = 0;
  v9 = *(&v23 + 1);
  v10 = v24;
  v11 = BYTE8(v24);
  v12 = v25;
  *(v3 + 56) = v23;
  *(v3 + 64) = v9;
  *(v3 + 72) = v10;
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  *(v3 + 144) = 0;

  v13 = sub_21B1891C8(&v22, a1, a2, v21);
  if (v4)
  {
    sub_21B189514(&v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_21B1894C0(v3 + 56);
    type metadata accessor for TemplateBlock();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = *v26;
    *(v3 + 152) = *v26;
    MEMORY[0x28223BE20](v13, v14);
    v19[2] = v21;
    v19[3] = a1;
    swift_bridgeObjectRetain_n();
    v17 = sub_21B1C5824(sub_21B189568, v19, v15);

    *(v3 + 176) = v17;
    v27 = *&v26[8];
    *(v3 + 160) = *&v26[8];
    v18 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 152);
    *(v3 + 16) = 0;
    *(v3 + 24) = v18;
    v28 = v22;
    sub_21B189588(&v27, v20);

    sub_21B189588(&v28, v20);
    sub_21B189514(&v22);
    *(v3 + 32) = v28;
    *(v3 + 48) = a2;

    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_21B1891C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  sub_21B17FB4C(a2, v25);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v11 = sub_21B20D368();
  v13 = v12;
  swift_beginAccess();

  v14 = sub_21B1BA38C(v11, v13);
  swift_endAccess();
  if (v14)
  {

    v21[0] = v5;
    v21[1] = v6;
    v21[2] = v7;
    v22 = v8;
    v23 = v9;
    v24 = v10;
    v15 = type metadata accessor for AggregationBlock();
    swift_allocObject();
    v16 = v25[6];
    result = sub_21B17E460(v25, v14, a3, v21);
    if (!v16)
    {
      a4[3] = v15;
      a4[4] = &off_282C9FFD0;
      *a4 = result;
    }
  }

  else
  {

    sub_21B17FC58();
    swift_allocError();
    *v18 = v11;
    *(v18 + 8) = v13;
    *(v18 + 16) = 3;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  return result;
}

uint64_t sub_21B18936C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_21B17F6C0(a3, v9, a5);
  if (v5)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t sub_21B1893E0()
{
  sub_21B1894C0(v0 + 56);
}

uint64_t sub_21B189420()
{

  sub_21B1894C0(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t sub_21B1895E4(void *a1, uint64_t a2, __int128 *a3)
{
  v7 = a3[3];
  v24 = a3[2];
  v25 = v7;
  *v26 = a3[4];
  *&v26[16] = *(a3 + 10);
  v8 = a3[1];
  v22 = *a3;
  v23 = v8;
  *(v3 + 184) = 0;
  v9 = *(&v23 + 1);
  v10 = v24;
  v11 = BYTE8(v24);
  v12 = v25;
  *(v3 + 56) = v23;
  *(v3 + 64) = v9;
  *(v3 + 72) = v10;
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  *(v3 + 144) = 0;

  v13 = sub_21B1891C8(&v22, a1, a2, v21);
  if (v4)
  {
    sub_21B189514(&v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_21B1894C0(v3 + 56);
    type metadata accessor for TemplateBlockLegacy();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = *v26;
    *(v3 + 152) = *v26;
    MEMORY[0x28223BE20](v13, v14);
    v19[2] = v21;
    v19[3] = a1;
    swift_bridgeObjectRetain_n();
    v17 = sub_21B1C5824(sub_21B1898B8, v19, v15);

    *(v3 + 176) = v17;
    v27 = *&v26[8];
    *(v3 + 160) = *&v26[8];
    v18 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 152);
    *(v3 + 16) = 0;
    *(v3 + 24) = v18;
    v28 = v22;
    sub_21B189588(&v27, v20);

    sub_21B189588(&v28, v20);
    sub_21B189514(&v22);
    *(v3 + 32) = v28;
    *(v3 + 48) = a2;

    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_21B189820@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_21B17F290(a3, v9, a5);
  if (v5)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t sub_21B1898D8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21B20DB28();
  }
}

uint64_t sub_21B189914(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = *a3;
  v7 = a3[1];
  v9 = *(a3 + 16);
  v10 = a3[3];
  v22 = *(a3 + 33);
  v23 = *(a3 + 32);
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 1;
  v11 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 120);
  swift_getObjectType();
  v12 = swift_conformsToProtocol2();
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {

    sub_21B188B28();
    swift_allocError();
    *v14 = 0xD00000000000003ALL;
    v14[1] = 0x800000021B20EEB0;
    swift_willThrow();
  }

  else
  {
    v15 = v12;
    v20 = v10;
    v21 = v8;
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 48);
    swift_unknownObjectRetain();
    v17(ObjectType, v15);
    if (!v24)
    {
      *(v4 + 56) = v11;
      *(v4 + 64) = v15;
      *(v4 + 72) = v21;
      *(v4 + 80) = v7;
      *(v4 + 88) = v9;
      *(v4 + 96) = v20;
      *(v4 + 104) = v23;
      *(v4 + 105) = v22;
      v19 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 152);
      *(v4 + 16) = 0;
      *(v4 + 24) = v19;
      *(v4 + 32) = v21;
      *(v4 + 40) = v7;
      *(v4 + 48) = a2;

      __swift_destroy_boxed_opaque_existential_1(a1);
      return v4;
    }

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for TimeWindowBlock();
  swift_deallocPartialClassInstance();
  return v4;
}

void sub_21B189B04()
{
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 16) = 0;
}

uint64_t sub_21B189B18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v7 = sub_21B20C728();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B18A0B0();
  if (!v4)
  {
    v14 = v13;
    v56 = a1;
    v57 = v11;
    v53 = v7;
    v54 = v8;
    v55 = a2;
    v58 = 0;
    v15 = *(v3 + 64);
    ObjectType = swift_getObjectType();
    (*(v15 + 32))(ObjectType, v15);
    v18 = *(v3 + 88);
    v19 = 86400.0;
    if (v18)
    {
      v19 = 604800.0;
    }

    if (v18 == 2)
    {
      v19 = v17 - v14;
    }

    v20 = v14 + v19;
    if (v17 < v19 + v14 + v19)
    {
      *(v3 + 16) = 1;
    }

    v21 = v57;
    if (v20 > v17)
    {
      goto LABEL_15;
    }

    if (v14 > v20)
    {
      if (qword_27CD6E950 != -1)
      {
        swift_once();
      }

      v22 = sub_21B20D218();
      __swift_project_value_buffer(v22, qword_27CD7E090);
      v23 = sub_21B20D1F8();
      v24 = sub_21B20D598();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134218240;
        *(v25 + 4) = v14;
        *(v25 + 12) = 2048;
        *(v25 + 14) = v20;
        _os_log_impl(&dword_21B179000, v23, v24, "current interval is invalid from %f to %f", v25, 0x16u);
        MEMORY[0x21CEECC50](v25, -1, -1);
      }

LABEL_15:
      v12 = 0;
      return v12 & 1;
    }

    *(v3 + 112) = v14;
    *(v3 + 120) = v20;
    *(v3 + 128) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC38, &unk_21B211B80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B211A80;
    *(inited + 32) = 0x73745F7472617473;
    *(inited + 40) = 0xE800000000000000;
    v27 = v3;
    v28 = MEMORY[0x277D839F8];
    v29 = MEMORY[0x277D3E350];
    *(inited + 72) = MEMORY[0x277D839F8];
    *(inited + 80) = v29;
    *(inited + 48) = v14;
    *(inited + 88) = 0x73745F646E65;
    *(inited + 96) = 0xE600000000000000;
    *(inited + 128) = v28;
    *(inited + 136) = v29;
    *(inited + 104) = v20;
    *(inited + 144) = 0xD000000000000013;
    *(inited + 152) = 0x800000021B20EE50;
    sub_21B20C718();
    sub_21B20C708();
    v31 = v30;
    (*(v54 + 8))(v21, v53);
    *(inited + 184) = v28;
    *(inited + 192) = v29;
    *(inited + 160) = v31;
    v32 = sub_21B19734C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC40, &qword_21B212500);
    swift_arrayDestroy();
    v33 = *(v3 + 88);
    if (v33 == 2)
    {
      v34 = v56;
    }

    else if (v33)
    {
      v35 = *(v3 + 105);
      v34 = v56;
      if (v35 != 2 && (v35 & 1) != 0)
      {
        v36 = sub_21B18A3F0(7uLL);
        v37 = v14 + v36 * 86400.0;
        v64 = MEMORY[0x277D84A28];
        v65 = MEMORY[0x277D3E388];
        *&v62 = v36;
        sub_21B17C284(&v62, v60);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v32;
        v39 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
        sub_21B18A47C(*v39, 0xD000000000000016, 0x800000021B20EE70, isUniquelyReferenced_nonNull_native, &v66);
        __swift_destroy_boxed_opaque_existential_1(v60);
        v40 = v66;
        v64 = v28;
        v65 = MEMORY[0x277D3E350];
        *&v62 = v37;
        sub_21B17C284(&v62, v60);
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v40;
        v42 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
        v3 = v27;
        sub_21B18A5E4(0xD000000000000014, 0x800000021B20EE90, v41, &v66, *v42);
        __swift_destroy_boxed_opaque_existential_1(v60);
        v32 = v66;
      }
    }

    else
    {
      v34 = v56;
    }

    v43 = *(v3 + 32);
    v44 = *(v3 + 40);
    v45 = *v34;
    swift_bridgeObjectRetain_n();

    v46 = swift_isUniquelyReferenced_nonNull_native();
    *v34 = v45;
    if ((v46 & 1) == 0)
    {
      v45 = sub_21B1D280C(0, *(v45 + 2) + 1, 1, v45);
      *v34 = v45;
    }

    v48 = *(v45 + 2);
    v47 = *(v45 + 3);
    if (v48 >= v47 >> 1)
    {
      v45 = sub_21B1D280C((v47 > 1), v48 + 1, 1, v45);
    }

    *(v45 + 2) = v48 + 1;
    v49 = &v45[24 * v48];
    *(v49 + 4) = v43;
    *(v49 + 5) = v44;
    *(v49 + 6) = v32;
    *v34 = v45;
    v50 = swift_getObjectType();
    *&v62 = v43;
    *(&v62 + 1) = v44;
    v63 = v32;
    (*(v59 + 16))(&v62, v50);

    v12 = 1;
  }

  return v12 & 1;
}

double sub_21B18A0B0()
{
  v3 = sub_21B20C728();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 96);
  v24 = v4;
  v25 = v8;
  v9 = *(v0 + 104);
  if (*(v0 + 128))
  {
    v10 = *(v0 + 64);
    ObjectType = swift_getObjectType();
    *&v12 = COERCE_DOUBLE((*(v10 + 8))(ObjectType, v10));
    if (v13)
    {
      sub_21B20C6D8();
      sub_21B20C708();
      v2 = v14;
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v2 = *&v12;
    }
  }

  else
  {
    v15 = *(v0 + 120);
    v10 = *(v0 + 64);
    v16 = swift_getObjectType();
    (*(v10 + 16))(COERCE_DOUBLE(*&v15), 0, v16, v10);
    sub_21B20D4E8();
    if (v1)
    {
      return v2;
    }

    v2 = v15;
  }

  v17 = swift_getObjectType();
  (*(v10 + 32))(v17, v10);
  if ((v9 & 1) == 0)
  {
    v20 = v18;
    if (((*(v10 + 40))(v17, v10) & 1) == 0)
    {
      v21 = v25 * 86400.0;
      if (v21 < v20 - v2)
      {
        v2 = v20 - v21;
        v22 = *(v0 + 88);
        if (v22 != 2)
        {
          v26 = v22 & 1;
          sub_21B20C6F8();
          sub_21B1AB0EC(v7);
          v2 = v23;
          (*(v24 + 8))(v7, v3);
        }
      }
    }
  }

  return v2;
}

uint64_t sub_21B18A31C()
{
  swift_unknownObjectRelease();
}

uint64_t sub_21B18A34C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 129, 7);
}

unint64_t sub_21B18A3F0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x21CEECC70](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x21CEECC70](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B18A47C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x277D84A28];
  v25 = MEMORY[0x277D3E388];
  v9 = *a5;
  v11 = sub_21B1B9778(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_21B17C284(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_21B203964();
    goto LABEL_7;
  }

  sub_21B2010B0(v14, a4 & 1);
  v20 = sub_21B1B9778(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_21B20DBF8();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D84A28]);
  sub_21B18A7D0(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_1(&v23);
}

uint64_t sub_21B18A5E4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, double a5)
{
  *&v23 = a5;
  v24 = MEMORY[0x277D839F8];
  v25 = MEMORY[0x277D3E350];
  v9 = *a4;
  v11 = sub_21B1B9778(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_21B17C284(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_21B203964();
    goto LABEL_7;
  }

  sub_21B2010B0(v14, a3 & 1);
  v20 = sub_21B1B9778(a1, a2);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_21B20DBF8();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D839F8]);
  sub_21B18A740(v11, a1, a2, v17, *v22);

  return __swift_destroy_boxed_opaque_existential_1(&v23);
}

uint64_t sub_21B18A740(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  *&v11 = a5;
  v12 = MEMORY[0x277D839F8];
  v13 = MEMORY[0x277D3E350];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21B17C284(&v11, a4[7] + 40 * a1);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_21B18A7D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D84A28];
  v13 = MEMORY[0x277D3E388];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21B17C284(&v11, a5[7] + 40 * a1);
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_21B18A8D0(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = a3[3];
  *(v3 + 56) = a3[2];
  *(v3 + 64) = v7;
  sub_21B18BFF8((a3 + 4), v3 + 72, &qword_27CD6EC48, &qword_21B214CC0);
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B18BFF8(*v8 + 80, &v24, &qword_27CD6EC70, &qword_21B211CB0);
  if (v25)
  {
    sub_21B17C284(&v24, v29);
    v10 = v30;
    v9 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v12 = *a3;
    v11 = a3[1];
    v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = *v13;
    v15 = *(*v13 + 160);
    v16 = *(*v13 + 168);
    v17 = *(*v13 + 192);
    v26[0] = v15;
    v26[1] = v16;
    v27 = *(v14 + 176);
    v28 = v17;
    v18 = *(v9 + 16);

    v19 = v32;
    v18(&v24, v12, v11, a3, v26, v10, v9);

    if (v19)
    {
      sub_21B18C060(a3);
      __swift_destroy_boxed_opaque_existential_1(v29);
      __swift_destroy_boxed_opaque_existential_1(a1);

      sub_21B186488(v4 + 72, &qword_27CD6EC48, &qword_21B214CC0);
      type metadata accessor for UserDefinedBlock();
      swift_deallocPartialClassInstance();
    }

    else
    {
      sub_21B17C284(&v24, v4 + 112);
      v20 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 152);
      sub_21B18C0B4(a3, &v24);
      *(v4 + 16) = 0;
      *(v4 + 24) = v20;
      v21 = v24;

      sub_21B18C060(&v24);
      *(v4 + 32) = v21;
      *(v4 + 48) = a2;
      sub_21B18C060(a3);
      __swift_destroy_boxed_opaque_existential_1(v29);
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    return v4;
  }

  else
  {

    sub_21B186488(&v24, &qword_27CD6EC70, &qword_21B211CB0);
    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

uint64_t *sub_21B18ABA0(uint64_t *result)
{
  v2 = result;
  if (v1[7])
  {

    v4 = sub_21B1BBFE4(v3);

    v5 = sub_21B1BC1FC();
    if (*(v5 + 16) <= *(v4 + 16) >> 3)
    {
      sub_21B18B148(v5);

      if (*(v4 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = sub_21B18B274(v5, v4);

      if (*(v6 + 16))
      {
LABEL_4:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC50, &qword_21B211CA0);
        sub_21B18BF40();
        sub_21B17FBB0();
        v7 = sub_21B20D3E8();
        v9 = v8;

        sub_21B18BFA4();
        swift_allocError();
        *v10 = v7;
        *(v10 + 8) = v9;
        *(v10 + 16) = 1;
        return swift_willThrow();
      }
    }
  }

  v11 = v1[8];
  if (v11)
  {
    v12 = v1[4];
    v13 = v1[5];

    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    *v2 = 0x8000000000000000;
    sub_21B1BB4EC(v12, v13, v11, v12, v13, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }

  return result;
}

uint64_t sub_21B18AD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + 136);
  v10 = *(v5 + 144);
  __swift_project_boxed_opaque_existential_1((v5 + 112), v9);
  v11 = (*(v10 + 16))(a1, a2, a3, v9, v10);
  if (!v4)
  {
    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    __swift_project_boxed_opaque_existential_1((v5 + 112), v12);
    if ((*(v13 + 8))(v12, v13))
    {
      *(v5 + 16) = 1;
    }
  }

  return v11 & 1;
}

uint64_t sub_21B18AE40()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((v0 + 112), v2);
  result = (*(v3 + 24))(v2, v3);
  if (!v1)
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_1((v0 + 112), v5);
    result = (*(v6 + 8))(v5, v6);
    *(v0 + 16) = result & 1;
  }

  return result;
}

uint64_t sub_21B18AEEC()
{

  sub_21B186488(v0 + 72, &qword_27CD6EC48, &qword_21B214CC0);

  return __swift_destroy_boxed_opaque_existential_1((v0 + 112));
}

uint64_t sub_21B18AF3C()
{

  sub_21B186488(v0 + 72, &qword_27CD6EC48, &qword_21B214CC0);
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

void *sub_21B18AFEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC68, &qword_21B211CA8);
  v2 = *v0;
  v3 = sub_21B20D668();
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

uint64_t sub_21B18B148(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_21B18B7E4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_21B18B274(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_21B20DC88();

    sub_21B20D388();
    v23 = sub_21B20DCA8();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_21B20DB28() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v30 = *(v5 + 32);
  v55 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v55;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28, v29);
    v2 = &v54 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v57 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_21B18BB58(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v61 = v27;
            v40 = (v39 + ((v27 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            sub_21B20DC88();

            sub_21B20D388();
            v42 = sub_21B20DCA8();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v41 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((sub_21B20DB28() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v41 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v35 = v59[v2];
          v59[v2] = v35 & ~v44;
          v26 = (v35 & v44) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v50);
  v52 = v54;
  v53 = sub_21B18B920(v51, v55, v5, v2, v63);

  if (!v52)
  {

    MEMORY[0x21CEECC50](v51, -1, -1);
    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_21B1868C8(v13);
    return v5;
  }

  result = MEMORY[0x21CEECC50](v51, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_21B18B7E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_21B20DC88();
  sub_21B20D388();
  v6 = sub_21B20DCA8();
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
    if (v11 || (sub_21B20DB28() & 1) != 0)
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
    sub_21B18AFEC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_21B18BD7C(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_21B18B920(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_21B18BB58(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_21B20DC88();

        sub_21B20D388();
        v19 = sub_21B20DCA8();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_21B20DB28() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_21B18BB58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC68, &qword_21B211CA8);
  result = sub_21B20D688();
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
    sub_21B20DC88();

    sub_21B20D388();
    result = sub_21B20DCA8();
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

unint64_t sub_21B18BD7C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21B20D658();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21B20DC88();

        sub_21B20D388();
        v10 = sub_21B20DCA8();

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

unint64_t sub_21B18BF40()
{
  result = qword_27CD6EC58;
  if (!qword_27CD6EC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6EC50, &qword_21B211CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC58);
  }

  return result;
}

unint64_t sub_21B18BFA4()
{
  result = qword_27CD6EC60;
  if (!qword_27CD6EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC60);
  }

  return result;
}

uint64_t sub_21B18BFF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

PoirotBlocks::DataSourceType_optional __swiftcall DataSourceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21B20D828();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DataSourceType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x727453656D6F6962;
  v3 = 0xD000000000000010;
  v4 = 0x7473754374736F68;
  if (v1 != 3)
  {
    v4 = 0x6573616261746164;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x627550656D6F6962;
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

uint64_t sub_21B18C23C()
{
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B18C350(uint64_t a1)
{
  sub_21B20D388();
}

uint64_t sub_21B18C450(uint64_t a1)
{
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

void sub_21B18C56C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006D6165;
  v4 = 0x727453656D6F6962;
  v5 = 0x800000021B20E720;
  v6 = 0xD000000000000010;
  v7 = 0xEF656C6261546D6FLL;
  v8 = 0x7473754374736F68;
  if (v2 != 3)
  {
    v8 = 0x6573616261746164;
    v7 = 0xED0000656C626154;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x627550656D6F6962;
    v3 = 0xEE0072656873696CLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}