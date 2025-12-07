uint64_t sub_1DB2F6DD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB50A650();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DB2F6E04()
{

  sub_1DB3013E0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1DB2F6E4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F6E84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F6EE0()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DB2F6F60()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DB2F6FE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F7020()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DB2F7068()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F70A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F70F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB2F7134()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2F7270()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F72AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DB2F7318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DB2F7388()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F73C8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 168));

  return MEMORY[0x1EEE6BDD0](v0, 288, 7);
}

uint64_t sub_1DB2F7468()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 168));

  return MEMORY[0x1EEE6BDD0](v0, 273, 7);
}

uint64_t sub_1DB2F7500()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F7548()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F759C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v1 = sub_1DB50AD30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2F7708@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = ScalarDictionary.subscript.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DB2F775C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = ScalarDictionary.subscript.getter(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DB2F77B0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F77E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MonotonicTimeReference(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DB2F78A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MonotonicTimeReference(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DB2F7964()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F79B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DB2F7A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DB2F7A90()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F7ADC()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DB2F7B2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435E0, &qword_1DB511ED8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2F7BCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F7C0C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DB2F7C54()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DB2F7C9C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F7CE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F7D20()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DB2F7D70()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1DB2F7DC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F7DF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DB2F7E50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2F7E88()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F7ED8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F7F18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43930, &qword_1DB512568);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43938, &qword_1DB512570);
  (*(*(v2 - 8) + 8))(v0 + 20, v2);

  return MEMORY[0x1EEE6BDD0](v0, 21, 7);
}

uint64_t sub_1DB2F7FD0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v4 = sub_1DB50AB10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 112) & ~v6;
  v8 = *(v5 + 64);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  (*(v5 + 8))(v0 + v7, v4);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v6 | 7);
}

uint64_t sub_1DB2F8150()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v4 = sub_1DB50AB10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 56) & ~v6;
  v8 = *(v5 + 64);

  (*(v5 + 8))(v0 + v7, v4);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v6 | 7);
}

uint64_t sub_1DB2F82EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DB2F8358(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DB2F83C8()
{
  swift_getAssociatedTypeWitness();
  v1 = sub_1DB50ABF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2F8470()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F84E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1DB2F8518@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DB2F8590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DB2F8658(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2F8708()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DB2F8770()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1DB2F87E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F8830()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F8870(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DB509CA0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2F891C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DB509CA0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2F89C4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DB509930();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2F8A70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DB509930();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2F8B14()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1DB2F8B80()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2F8BB8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DB2F8C18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F8C50()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F8C94()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F8CE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F8D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for NetRequest.ScopeContainer(0, *(a3 + a4 - 32), *(a3 + a4 - 16), a4);
  return sub_1DB397F20(a1, v7, v5, v6);
}

__n128 sub_1DB2F8DB4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1DB2F8E2C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_1DB2F8E38@<X0>(void *a1@<X8>)
{
  result = NetRequest.subscript.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1DB2F8E74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;

  return sub_1DB398060(&v7, v4, v5);
}

uint64_t sub_1DB2F8ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB509CA0();
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

uint64_t sub_1DB2F8F94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DB509CA0();
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

uint64_t sub_1DB2F9050()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

double sub_1DB2F90CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB30C4B8(a1 + 24, v6, &qword_1ECC44520, &qword_1DB5151E0);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1DB2F9140@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1DB2F914C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  return result;
}

uint64_t sub_1DB2F9190@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1DB2F919C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 128) = v4;
  *(a2 + 136) = v3;
  return result;
}

uint64_t sub_1DB2F91EC(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 144) = v3;
  return result;
}

uint64_t sub_1DB2F9230(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NetRequest(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2F92DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NetRequest(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2F9380()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F93E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F941C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1DB2F9478(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_1DB2F94D4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1DB2F94E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F9520()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F9558()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2F95B0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F95E8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F9644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DB2F96B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DB2F9740@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1DB2F974C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1DB2F97A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1DB2F97BC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 48) = *result;
  *(a2 + 56) = v2;
  return result;
}

uint64_t sub_1DB2F97D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NetRequest(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2F987C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NetRequest(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2F993C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F9974()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F99C0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F99F8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_1DB3BEB98(v0[7], v0[8]);
  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DB2F9A48()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2F9A88()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F9AC0()
{
  sub_1DB3BEB98(v0[2], v0[3]);
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F9B24()
{
  sub_1DB3BEB98(v0[2], v0[3]);
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F9B7C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F9BC8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2F9C08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F9C58()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F9C98()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F9CD0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB2F9D20()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2F9D70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F9DAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB2F9E10()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB2F9E70()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2F9EB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2F9EF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FA024@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1DB3E339C;
  a2[1] = v5;
}

uint64_t sub_1DB2FA094()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FA0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_1DB3E4898(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DB2FA118()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_1DB3013E0(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1DB2FA170(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for JetPackAsset.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DB2FA21C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for JetPackAsset.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FA324()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FA37C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2FA3BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1DB2FA3F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FA488()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2FA51C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

BOOL sub_1DB2FA5E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB50B680();

  return v2 != 0;
}

uint64_t sub_1DB2FA62C()
{
  v10 = *(v0 + 368);
  v11 = *(v0 + 384);
  v8 = *(v0 + 336);
  v9 = *(v0 + 352);
  v6 = *(v0 + 304);
  v7 = *(v0 + 320);
  v4 = *(v0 + 272);
  v5 = *(v0 + 288);
  v2 = *(v0 + 240);
  v3 = *(v0 + 256);
  sub_1DB403808(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11, *(&v11 + 1), *(v0 + 400), *(v0 + 408));

  return MEMORY[0x1EEE6BDD0](v0, 416, 7);
}

uint64_t sub_1DB2FA6F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FA734@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1DB2FA79C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2FA7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB509CA0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_1DB2FA8B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DB509CA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1DB2FA9A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DB50A030();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DB2FAA4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DB50A030();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FAAF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FAB64(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2FAC20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FACD4()
{
  v1 = sub_1DB509CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2FAD98()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FADF4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URLJetPackAssetFetcher(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2FAEA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URLJetPackAssetFetcher(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FAF44()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DB2FAF8C()
{
  v1 = sub_1DB509CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  sub_1DB3BEB98(*(v0 + v5 + 8), *(v0 + v5 + 16));
  if (*(v0 + v5 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + v5 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 64, v3 | 7);
}

uint64_t sub_1DB2FB074()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2FB0B4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FB0EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2FB130()
{
  v1 = (type metadata accessor for SilverBulletJetPackAssetFetcher(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 144) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  swift_unknownObjectRelease();
  v5 = v0 + v3 + v1[7];

  if (*(v5 + 8))
  {
  }

  v6 = *(type metadata accessor for URLJetPackAssetFetcher(0) + 24);
  v7 = sub_1DB509CA0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DB2FB2C4()
{
  v1 = (type metadata accessor for SilverBulletJetPackAssetFetcher(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 73) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v5 = v0 + v3 + v1[7];

  if (*(v5 + 8))
  {
  }

  v6 = *(type metadata accessor for URLJetPackAssetFetcher(0) + 24);
  v7 = sub_1DB509CA0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_0((v0 + v9));
  __swift_destroy_boxed_opaque_existential_0((v0 + v9 + 40));

  return MEMORY[0x1EEE6BDD0](v0, v9 + 80, v2 | 7);
}

uint64_t sub_1DB2FB47C()
{
  v1 = *(v0 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 112) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  (*(v3 + 8))(&v0[v5], AssociatedTypeWitness);

  (*(v6 + 8))(&v0[v8], v1);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1DB2FB5F4()
{
  v1 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = v4 | v7;
  v10 = (((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);
  (*(v6 + 8))(v0 + v8, v1);

  __swift_destroy_boxed_opaque_existential_0((v0 + v10));
  __swift_destroy_boxed_opaque_existential_0((v0 + v10 + 40));

  return MEMORY[0x1EEE6BDD0](v0, v10 + 80, v9 | 7);
}

uint64_t sub_1DB2FB790()
{
  v1 = *(type metadata accessor for URLJetPackAssetRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1DB509CA0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DB2FB884()
{
  v1 = *(type metadata accessor for URLJetPackAssetRequest(0) - 8);
  v15 = *(v1 + 80);
  v2 = (v15 + 96) & ~v15;
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for URLJetPackAssetFetcher(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v14 = *(*(v4 - 8) + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v7 = v0 + v2;
  v8 = sub_1DB509CA0();
  v9 = *(v8 - 8);
  v13 = *(v9 + 8);
  v13(v7, v8);

  v10 = v0 + v6;

  if (*(v0 + v6 + 8))
  {
  }

  v11 = *(v4 + 24);
  if (!(*(v9 + 48))(v10 + v11, 1, v8))
  {
    v13(v10 + v11, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v6 + v14, v15 | v5 | 7);
}

uint64_t sub_1DB2FBAA0()
{
  v1 = *(type metadata accessor for URLJetPackAssetRequest(0) - 8);
  v16 = *(v1 + 80);
  v2 = (v16 + 40) & ~v16;
  v3 = *(v1 + 64);
  v4 = type metadata accessor for URLJetPackAssetFetcher(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v15 = *(*(v4 - 8) + 64);
  swift_unknownObjectRelease();

  v7 = v0 + v2;
  v8 = sub_1DB509CA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);

  v11 = v0 + v6;

  if (*(v0 + v6 + 8))
  {
  }

  v12 = *(v4 + 24);
  if (!(*(v9 + 48))(v11 + v12, 1, v8))
  {
    v10(v11 + v12, v8);
  }

  v13 = (((v15 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_0((v0 + v13));
  __swift_destroy_boxed_opaque_existential_0((v0 + v13 + 40));

  return MEMORY[0x1EEE6BDD0](v0, v13 + 80, v16 | v5 | 7);
}

uint64_t get_enum_tag_for_layout_string_7JetCore17ContainerLocationC0C5ErrorO_0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1DB2FBD50(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1DB2FBD68()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2FBE20()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FBE90()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2FBEC8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2FBF84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FC034(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DB2FC0F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FC1A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2FC1D8()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DB2FC2C4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1DB2FC430()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FC478()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FC4C0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2FC500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DB50ABD0();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_1DB2FC570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DB50ABD0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_1DB2FC5E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FC624()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FC664()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43930, &qword_1DB512568);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43938, &qword_1DB512570);
  (*(*(v2 - 8) + 8))(v0 + 20, v2);

  return MEMORY[0x1EEE6BDD0](v0, 21, 7);
}

uint64_t sub_1DB2FC744()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_1DB3013E0(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1DB2FC7C4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FC838()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2FC88C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FC8C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2FC8FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DB2FC94C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FC994(char a1)
{
  if (a1)
  {
    return 0x6C616974696E6924;
  }

  else
  {
    return 0x746E65746E6924;
  }
}

uint64_t sub_1DB2FC9CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB2FCA04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FCA60()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1DB2FCAA4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>, uint64_t a3@<X2>)
{
  v4 = *(a1 + a3 - 8);
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  result = Preferences.subscript.getter(v7, a1, v4);
  *a2 = result;
  a2[1] = &off_1F56FF7E8;
  return result;
}

__n128 sub_1DB2FCB4C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1DB2FCBD0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB2FCC34()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2FCC84()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DB2FCCCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FCD04()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FCD44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FCD94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FCDD4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2FCEC0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2FCF94()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  sub_1DB3013E0(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1DB2FCFF8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB2FD030(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_1DB2FD040(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1DB2FD050()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

id sub_1DB2FD0AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unsignedLongLongValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD0E0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 unsignedIntValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD114@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 unsignedShortValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD148@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 unsignedCharValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD17C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unsignedIntegerValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD1B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 longLongValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD1E4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 intValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD218@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 shortValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD24C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 charValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD280@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerValue];
  *a2 = result;
  return result;
}

id sub_1DB2FD2B4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 floatValue];
  *a2 = v4;
  return result;
}

id sub_1DB2FD2E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 doubleValue];
  *a2 = v4;
  return result;
}

uint64_t sub_1DB2FD320()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB2FD368()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2FD47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB509CA0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_1DB2FD548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DB509CA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1DB2FD604()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  v5 = (v3 + 120) & ~v3;

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1DB2FD714()
{
  v1 = *(type metadata accessor for URLJetPackAssetRequest(0) - 8);
  v21 = *(v1 + 80);
  v2 = (v21 + 112) & ~v21;
  v3 = *(v1 + 64);
  v20 = type metadata accessor for URLJetPackAssetFetcher(0);
  v18 = *(*(v20 - 8) + 80);
  v4 = (v2 + v3 + v18) & ~v18;
  v17 = *(*(v20 - 8) + 64);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v5 = *(v19 - 8);
  v15 = *(v5 + 80);
  v16 = *(v5 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  v6 = v0 + v2;
  v7 = sub_1DB509CA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);

  v10 = v4;
  v11 = v0 + v4;

  if (*(v0 + v4 + 8))
  {
  }

  v12 = *(v20 + 24);
  if (!(*(v8 + 48))(v11 + v12, 1, v7))
  {
    v9(v11 + v12, v7);
  }

  v13 = (v17 + v10 + v15 + 2) & ~v15;

  (*(v5 + 8))(v0 + v13, v19);

  return MEMORY[0x1EEE6BDD0](v0, v13 + v16, v21 | v18 | v15 | 7);
}

uint64_t sub_1DB2FD9F4()
{
  v1 = *(type metadata accessor for URLJetPackAssetRequest(0) - 8);
  v21 = *(v1 + 80);
  v2 = (v21 + 104) & ~v21;
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = type metadata accessor for URLJetPackAssetFetcher(0);
  v18 = *(*(v20 - 8) + 80);
  v4 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + v18 + 8) & ~v18;
  v17 = *(*(v20 - 8) + 64);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v5 = *(v19 - 8);
  v15 = *(v5 + 80);
  v16 = *(v5 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  v6 = v0 + v2;
  v7 = sub_1DB509CA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);

  v10 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + v18 + 8) & ~v18;
  v11 = v0 + v4;

  if (*(v0 + v4 + 8))
  {
  }

  v12 = *(v20 + 24);
  if (!(*(v8 + 48))(v11 + v12, 1, v7))
  {
    v9(v11 + v12, v7);
  }

  v13 = (v17 + v10 + v15 + 2) & ~v15;

  (*(v5 + 8))(v0 + v13, v19);

  return MEMORY[0x1EEE6BDD0](v0, v13 + v16, v21 | v18 | v15 | 7);
}

uint64_t sub_1DB2FDD14()
{
  v1 = (type metadata accessor for ValidatedJetPackAssetLocations.URLLocation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  v9 = sub_1DB509CA0();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  if (*(v0 + v3 + v1[9]))
  {
  }

  v10 = v2 | v7;
  v11 = (((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  swift_unknownObjectRelease();

  (*(v6 + 8))(v0 + v11, v5);

  return MEMORY[0x1EEE6BDD0](v0, v11 + v8, v10 | 7);
}

uint64_t sub_1DB2FDEDC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v12, v10 | 7);
}

uint64_t sub_1DB2FE0A8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB2FE0F4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DB2FE17C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DB2FE1C4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB2FE21C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DB2FE31C(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v4 = *a3;

  return sub_1DB4F0B98(a1, v4);
}

uint64_t sub_1DB2FE3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for JetPackAsset.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DB2FE480(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for JetPackAsset.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FE524(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1DB509DD0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DB2FE5DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1DB509DD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FE6B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB2FE824(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DB2FE8E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DB2FEA0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1DB2FEB0C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1DB2FEB60(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

id JEGestaltGetSystemVersion()
{
  v4 = 0uLL;
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = v0;
  if (v0)
  {
    objc_msgSend_operatingSystemVersion(v0);
  }

  else
  {
    v4 = 0uLL;
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld.%ld", v4, 0];

  return v2;
}

__CFString *JEGestaltGetMarketingDeviceFamilyName()
{
  v0 = MGGetStringAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = v2;

  return v2;
}

__CFString *JEGestaltGetMarketingName()
{
  v0 = MGGetStringAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = v2;

  return v2;
}

__CFString *JEGestaltGetDeviceClass()
{
  v0 = MGGetStringAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = v2;

  return v2;
}

__CFString *JEGestaltGetProductType()
{
  v0 = MGGetStringAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = v2;

  return v2;
}

__CFString *JEGestaltGetDeviceModel()
{
  v0 = MGGetStringAnswer();
  if ([(__CFString *)v0 isEqualToString:@"iPod"])
  {

    v0 = @"iPod touch";
  }

  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = @"Unknown";
  }

  v2 = v1;

  return v1;
}

__CFString *JEGestaltGetBuildVersion()
{
  v0 = MGGetStringAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = v2;

  return v2;
}

id JEGestaltDiskUsageForKey(uint64_t a1)
{
  v2 = MGCopyAnswer();
  v3 = [v2 objectForKey:a1];

  return v3;
}

void *JEGestaltGetTotalSystemCapacity()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5138]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F57076C8;
  }

  v3 = v2;

  return v2;
}

void *JEGestaltGetTotalSystemAvailable()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5130]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F57076C8;
  }

  v3 = v2;

  return v2;
}

void *JEGestaltGetTotalDataCapacity()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5120]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F57076C8;
  }

  v3 = v2;

  return v2;
}

void *JEGestaltGetTotalDataAvailable()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5118]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F57076C8;
  }

  v3 = v2;

  return v2;
}

void *JEGestaltGetTotalDiskCapacity()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5128]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F57076E0;
  }

  v3 = v2;

  return v2;
}

double JEGestaltGetMainScreenSize()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0 && (v2 = [v0 bytes], v3 = objc_msgSend(v1, "length"), v3 >= 0x10))
  {
    v4 = *(v2 + (v3 & 0xFFFFFFFFFFFFFFF0) - 16);
  }

  else
  {
    v4 = MGGetSInt32Answer();
    MGGetSInt32Answer();
  }

  return v4;
}

double InitializeProcessLaunchTimeInterval()
{
  v3.tv_sec = 0;
  v3.tv_nsec = 0;
  v0 = clock_gettime(_CLOCK_MONOTONIC_RAW, &v3);
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      InitializeProcessLaunchTimeInterval_cold_1(v1);
    }
  }

  else
  {
    result = v3.tv_nsec / 1000000000.0 + v3.tv_sec;
    *&gProcessLaunchTimeInterval = result;
  }

  return result;
}

uint64_t sub_1DB2FF568(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = v7;
  if (!a3)
  {

LABEL_9:
    v22[0] = 1597071153;
    v22[1] = 0xE400000000000000;
    v13 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
    v14 = [v13 je_base62String];

    v15 = sub_1DB50A650();
    v17 = v16;

    MEMORY[0x1E1285C70](v15, v17);

    v22[3] = MEMORY[0x1E69E6158];
    v18 = a1[3];
    v19 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v18);
    (*(v19 + 16))(v22, 0x7645746E65696C63, 0xED00006449746E65, v18, v19);
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  if (!*(v7 + 16))
  {
  }

  v9 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v10 & 1) == 0)
  {
  }

  sub_1DB300B14(*(v8 + 56) + 32 * v9, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v11 = sub_1DB33114C(v20, v21, a3);

  if (v11)
  {
    goto LABEL_9;
  }

  return result;
}

id default argument 0 of AppVersionFieldProvider.init(bundle:)()
{
  v0 = [objc_opt_self() mainBundle];

  return v0;
}

uint64_t sub_1DB2FF810(uint64_t a1, id *a2)
{
  result = sub_1DB50A630();
  *a2 = 0;
  return result;
}

uint64_t sub_1DB2FF888(uint64_t a1, id *a2)
{
  v3 = sub_1DB50A640();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DB2FF908@<X0>(uint64_t *a2@<X8>)
{
  sub_1DB50A650();
  v3 = sub_1DB50A620();

  *a2 = v3;
  return result;
}

uint64_t sub_1DB2FF94C(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1EE30C808, type metadata accessor for FileAttributeKey, &unk_1DB50EDF8);
  v3 = sub_1DB300288(&qword_1ECC42610, type metadata accessor for FileAttributeKey, &unk_1DB50EA8C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFA08(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1ECC425E8, type metadata accessor for FileProtectionType, &unk_1DB50ED58);
  v3 = sub_1DB300288(&qword_1ECC425F0, type metadata accessor for FileProtectionType, &unk_1DB50ECF8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFAC4(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1ECC42528, type metadata accessor for AMSMediaArtworkFormat, &unk_1DB50E594);
  v3 = sub_1DB300288(&qword_1ECC42530, type metadata accessor for AMSMediaArtworkFormat, &unk_1DB50E534);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFB80(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1ECC42518, type metadata accessor for AMSMediaArtworkCropStyle, &unk_1DB50E6EC);
  v3 = sub_1DB300288(&qword_1ECC42520, type metadata accessor for AMSMediaArtworkCropStyle, &unk_1DB50E68C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFC3C(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1ECC425F8, type metadata accessor for AMSMediaArtworkColorKind, &unk_1DB50EC00);
  v3 = sub_1DB300288(&unk_1ECC42600, type metadata accessor for AMSMediaArtworkColorKind, &unk_1DB50EBA0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFCF8(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1ECC42538, type metadata accessor for AMSBagKey, &unk_1DB50E43C);
  v3 = sub_1DB300288(&unk_1ECC42540, type metadata accessor for AMSBagKey, &unk_1DB50E3DC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFDB4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1DB50A620();

  *a2 = v3;
  return result;
}

uint64_t sub_1DB2FFDFC(uint64_t a1)
{
  v2 = sub_1DB300288(&qword_1ECC42618, type metadata accessor for NSKeyValueChangeKey, &unk_1DB50EE3C);
  v3 = sub_1DB300288(&unk_1ECC42620, type metadata accessor for NSKeyValueChangeKey, &unk_1DB50E978);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB2FFEB8()
{
  v0 = sub_1DB50A650();
  v1 = MEMORY[0x1E1285D20](v0);

  return v1;
}

uint64_t sub_1DB2FFEF4(uint64_t a1)
{
  sub_1DB50A650();
  sub_1DB50A740();
}

uint64_t sub_1DB2FFF48(uint64_t a1)
{
  sub_1DB50A650();
  sub_1DB50BCF0();
  sub_1DB50A740();
  v1 = sub_1DB50BD30();

  return v1;
}

uint64_t sub_1DB2FFFBC(void *a1, uint64_t *a2)
{
  v2 = sub_1DB50A650();
  v4 = v3;
  if (v2 == sub_1DB50A650() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DB50BA30();
  }

  return v7 & 1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MonotonicTime(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MonotonicTime(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for LRUIntentCache.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LRUIntentCache.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SQLiteResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1DB300288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for StartUpPerformanceEvent.Checkpoint(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for StartUpPerformanceEvent.Checkpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DB300628(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB300648(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_1DB300688(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_1DB300B14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SandboxExtensionFileAsset.filePath.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DB300BC8()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB300C10(uint64_t a1)
{
  v2 = *v1;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v2);
  return sub_1DB50BD30();
}

uint64_t sub_1DB300C54()
{
  if (*v0)
  {
    return 0x68746150656C6966;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1DB300C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DB529480 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x68746150656C6966 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DB50BA30();

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

uint64_t sub_1DB300D88(uint64_t a1)
{
  v2 = sub_1DB30138C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB300DC4(uint64_t a1)
{
  v2 = sub_1DB30138C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SandboxExtensionFileAsset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42690, &unk_1DB50EEA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB30138C();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v37) = 0;
  sub_1DB3013EC();
  sub_1DB50B780();
  v10 = v42;
  v35 = v41;
  v32 = v43;
  v33 = v44;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v30 = v45;
  v31 = v44;
  v29[1] = __swift_project_boxed_opaque_existential_1(&v41, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB50EE90;
  v46 = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
  v12._countAndFlagsBits = 0xD000000000000033;
  v12._object = 0x80000001DB5293B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v40[3] = MEMORY[0x1E69E6158];
  v40[0] = v35;
  v40[1] = v10;
  sub_1DB301CDC(v40, v36);
  v37 = 0u;
  v38 = 0u;

  sub_1DB301D4C(v36, &v37);
  v39 = 2;
  v13 = v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29[0] = a2;
  v34 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
    v46 = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[40 * v16];
  v18 = v37;
  v19 = v38;
  v17[64] = v39;
  *(v17 + 2) = v18;
  *(v17 + 3) = v19;
  v46 = v13;
  sub_1DB301DBC(v40);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v11 + 32) = v46;
  Logger.debug(_:)(v11, v31, v30);

  __swift_destroy_boxed_opaque_existential_0(&v41);
  v41 = v35;
  v42 = v34;
  v43 = v32;
  v44 = v33;
  v21 = SandboxExtensionToken.consume()();

  if (!v21)
  {
    v22 = sub_1DB50B3E0();
    swift_allocError();
    v35 = v23;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    v24 = v35;
    sub_1DB50B3C0();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B00], v22);
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v41) = 1;
  v25 = sub_1DB50B740();
  v27 = v26;
  (*(v6 + 8))(v8, v5);
  v28 = v29[0];
  *v29[0] = v25;
  *(v28 + 8) = v27;
  *(v28 + 16) = v21;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  *(v28 + 48) = 1;

  sub_1DB301E24(v21, 0, 0, 0, 1);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_1DB3013E0(v21, 0, 0, 0, 1);
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

unint64_t sub_1DB30138C()
{
  result = qword_1EE30CB48[0];
  if (!qword_1EE30CB48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30CB48);
  }

  return result;
}

uint64_t sub_1DB3013E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return v5;
}

unint64_t sub_1DB3013EC()
{
  result = qword_1ECC426A0;
  if (!qword_1ECC426A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC426A0);
  }

  return result;
}

void SandboxExtensionFileAsset.encode(to:)(void *a1)
{
  v57 = sub_1DB50A6B0();
  v4 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B8, &qword_1DB50EEB8);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v48 - v8;
  v10 = *(v1 + 8);
  v59 = *v1;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v14 = *(v1 + 32);
  v13 = *(v1 + 40);
  if (*(v1 + 48))
  {
    v15 = *(v1 + 40);
    v16 = *(v1 + 32);
    v58 = sub_1DB50B410();
    v56 = swift_allocError();
    v18 = v17;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
    v18[3] = &type metadata for SandboxExtensionFileAsset;
    v19 = swift_allocObject();
    *v18 = v19;
    *(v19 + 16) = v59;
    *(v19 + 24) = v10;
    *(v19 + 32) = v11;
    *(v19 + 40) = v12;
    *(v19 + 48) = v16;
    *(v19 + 56) = v15;
    *(v19 + 64) = 1;
    v20 = a1[3];
    v59 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);

    sub_1DB301E24(v11, v12, v16, v15, 1);
    sub_1DB50BE00();
    sub_1DB50B3C0();
    (*(*(v58 - 8) + 104))(v18, *MEMORY[0x1E69E6B30]);
    swift_willThrow();
  }

  else
  {
    v55 = v2;
    v56 = v7;
    v49 = HIDWORD(v11);
    v51 = HIDWORD(v12);
    v53 = HIDWORD(v14);
    v48 = v12;
    v21 = a1[3];
    v52 = HIDWORD(v13);
    v22 = a1;
    v50 = v13;
    v23 = v14;
    __swift_project_boxed_opaque_existential_1(v22, v21);
    sub_1DB30138C();
    v54 = v9;
    sub_1DB50BE40();
    v24 = v59;
    v65 = v59;
    v66 = v10;
    sub_1DB50A690();
    sub_1DB301E30();
    sub_1DB50B1D0();
    (*(v4 + 8))(v6, v57);
    v65 = __PAIR64__(v49, v11);
    v66 = __PAIR64__(v51, v48);
    v67 = __PAIR64__(v53, v23);
    v68 = __PAIR64__(v52, v50);
    v25 = sandbox_extension_issue_file_to_process();

    v26 = v10;
    if (v25)
    {
      v27 = v24;
      v28 = sub_1DB50A790();
      v30 = v29;

      free(v25);
      v57 = v26;
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v27 = 0;
      v57 = 0;
    }

    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v31 = v68;
    v53 = v69;
    v52 = __swift_project_boxed_opaque_existential_1(&v65, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1DB50EE90;
    v70 = sub_1DB301BC0(0, 23, 0, MEMORY[0x1E69E7CC0]);
    v33._object = 0x80000001DB529460;
    v33._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    if (v30)
    {

      v34 = v28;
      v35 = v30;
    }

    else
    {
      v34 = 0;
      v35 = 0xE000000000000000;
    }

    v64[3] = MEMORY[0x1E69E6158];
    v64[0] = v34;
    v64[1] = v35;
    sub_1DB301CDC(v64, v60);
    v61 = 0u;
    v62 = 0u;
    sub_1DB301D4C(v60, &v61);
    v63 = 2;
    v36 = v70;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
    }

    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[40 * v38];
    v40 = v61;
    v41 = v62;
    v39[64] = v63;
    *(v39 + 2) = v40;
    *(v39 + 3) = v41;
    v70 = v36;
    sub_1DB301DBC(v64);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v42);
    *(v32 + 32) = v70;
    Logger.debug(_:)(v32, v31, v53);

    __swift_destroy_boxed_opaque_existential_0(&v65);
    v65 = v28;
    v66 = v30;
    v43 = v27;
    v67 = v27;
    v44 = v57;
    v68 = v57;
    LOBYTE(v61) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426D0, &qword_1DB50EEC8);
    sub_1DB301E84();
    v45 = v58;
    v46 = v54;
    v47 = v55;
    sub_1DB50B8A0();
    if (v47)
    {
      (*(v56 + 8))(v46, v45);
      sub_1DB301FA4(v28, v30, v43, v44);
    }

    else
    {
      sub_1DB301FA4(v28, v30, v43, v44);
      LOBYTE(v65) = 1;
      sub_1DB50B860();
      (*(v56 + 8))(v46, v45);
    }
  }
}

char *sub_1DB301BC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DB301CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB301D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB301DBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB301E24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return v5;
}

unint64_t sub_1DB301E30()
{
  result = qword_1EE30C870[0];
  if (!qword_1EE30C870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30C870);
  }

  return result;
}

unint64_t sub_1DB301E84()
{
  result = qword_1EE30CFD8;
  if (!qword_1EE30CFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC426D0, &qword_1DB50EEC8);
    sub_1DB301F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CFD8);
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

unint64_t sub_1DB301F50()
{
  result = qword_1EE30CFE0;
  if (!qword_1EE30CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CFE0);
  }

  return result;
}

void sub_1DB301FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DB302010(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1DB302058(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_1DB3020CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1DB302114(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SandboxExtensionFileAsset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SandboxExtensionFileAsset.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DB3022DC()
{
  result = qword_1ECC426D8;
  if (!qword_1ECC426D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC426D8);
  }

  return result;
}

unint64_t sub_1DB302334()
{
  result = qword_1EE30CB30;
  if (!qword_1EE30CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CB30);
  }

  return result;
}

unint64_t sub_1DB30238C()
{
  result = qword_1EE30CB38;
  if (!qword_1EE30CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CB38);
  }

  return result;
}

char *sub_1DB302404(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DB302534(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42938, &unk_1DB50F3F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB302640(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42928, &qword_1DB50F3E0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DB302744(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42710, &qword_1DB50F188);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DB302898(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E0, &unk_1DB50F160);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1DB302A34(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB302C64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC429B0, &qword_1DB50F468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DB302D80(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42790, &qword_1DB50F208);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42798, &qword_1DB50F210);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB302EC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42970, &qword_1DB50F428);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DB303014(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42988, &qword_1DB50F440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB303148(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42940, &qword_1DB5112F0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DB30324C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42708, &qword_1DB50F180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB303390(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42930, &qword_1DB50F3E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB3034B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42910, qword_1DB50F390);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DB3035BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42720, &qword_1DB50F198);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB303748(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426F0, &unk_1DB51FC00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DB303868(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42978, &qword_1DB50F430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 400);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[50 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 400 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42980, &qword_1DB50F438);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB3039BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC428D8, &qword_1DB50F358);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DB303BE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42830, &qword_1DB50F2A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DB303E24(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1DB303F58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42958, &qword_1DB50F410);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DB304088(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1DB3041D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC427A8, &qword_1DB50F220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB3042F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC427A0, &qword_1DB50F218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DB30446C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

void *sub_1DB304690(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 80);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[10 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 80 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t CodeByKind.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a4, a1, AssociatedTypeWitness);
}

uint64_t CodeByKind.wrappedValue.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t CodeByKind.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

uint64_t CodeByKind.description.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_1DB50BA00();
  return 0;
}

uint64_t CodeByKind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  v7 = sub_1DB50B3D0();
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v82 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v68 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A40, &unk_1DB516260);
  v81 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v90 = &v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A48, &qword_1DB50F510);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v68 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v68 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - v25;
  v83 = a2;
  v85 = a3;
  v28 = type metadata accessor for CodeByKind(0, a2, a3, v27);
  v72 = *(v28 - 8);
  v73 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v71 = &v68 - v29;
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3053A8();
  v31 = v84;
  sub_1DB50BDF0();
  if (v31)
  {
    *v23 = v31;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1DB3053FC(v20, v23);
  }

  v32 = v26;
  sub_1DB3053FC(v23, v26);
  sub_1DB30546C(v26, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = v90;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1DB30623C(v17, &qword_1ECC42A48, &qword_1DB50F510);
    v35 = v30;
  }

  else
  {
    v36 = v81;
    v37 = v79;
    (*(v81 + 32))(v90, v17, v79);
    v84 = xmmword_1DB50F500;
    v88 = xmmword_1DB50F500;
    v89 = 1;
    v35 = v30;
    if (sub_1DB50B7B0())
    {
      v88 = v84;
      v89 = 1;
      v38 = sub_1DB50B740();
      v40 = v85;
      v55 = v38;
      v56 = v39;
      v57 = (*(v85 + 16))();
      if (*(v57 + 16))
      {
        v58 = sub_1DB306160(v55, v56);
        if (v59)
        {
          v60 = v58;

          v61 = *(*(v57 + 56) + 8 * v60);

          v44 = v69;
          (*(v40 + 40))(v61, v35);
          (*(v81 + 8))(v90, v37);
          goto LABEL_11;
        }
      }

      v62 = v83;
      v63 = (*(v40 + 32))(v83, v40);
      if (v63)
      {
        v64 = v63;

        v65 = v70;
        (*(v40 + 40))(v64, v35, v62, v40);
        (*(v81 + 8))(v90, v37);
        sub_1DB30623C(v32, &qword_1ECC42A48, &qword_1DB50F510);
        v45 = v65;
        goto LABEL_12;
      }

      v88 = v84;
      v89 = 1;
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1DB50B320();

      v86 = 1008758606;
      v87 = 0xE400000000000000;
      v66 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v66);

      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB529510);
      MEMORY[0x1E1285C70](v55, v56);

      MEMORY[0x1E1285C70](96, 0xE100000000000000);
      sub_1DB50B3E0();
      swift_allocError();
      sub_1DB3061D8();
      v67 = v90;
      sub_1DB50B3B0();

      swift_willThrow();
      (*(v81 + 8))(v67, v37);
LABEL_14:
      sub_1DB30623C(v32, &qword_1ECC42A48, &qword_1DB50F510);
      return __swift_destroy_boxed_opaque_existential_0(v35);
    }

    (*(v36 + 8))(v34, v37);
  }

  v41 = v85;
  v42 = v83;
  v43 = (*(v85 + 24))(v83, v85);
  v44 = v82;
  if (!v43)
  {
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    sub_1DB50BDB0();
    *&v88 = 0;
    *(&v88 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB5294A0);
    v47 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v47);

    MEMORY[0x1E1285C70](0xD000000000000039, 0x80000001DB5294D0);
    v48 = v76;
    sub_1DB50B3C0();
    v49 = sub_1DB50B3E0();
    swift_allocError();
    v51 = v50;
    v53 = v77;
    v52 = v78;
    (*(v77 + 16))(v50, v48, v78);
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69E6B00], v49);
    swift_willThrow();
    (*(v53 + 8))(v48, v52);
    goto LABEL_14;
  }

  (*(v41 + 40))(v43, v35, v42, v41);
LABEL_11:
  sub_1DB30623C(v32, &qword_1ECC42A48, &qword_1DB50F510);
  v45 = v44;
LABEL_12:
  v46 = v71;
  (*(v74 + 32))(v71, v45, AssociatedTypeWitness);
  (*(v72 + 32))(v75, v46, v73);
  return __swift_destroy_boxed_opaque_existential_0(v35);
}

unint64_t sub_1DB3053A8()
{
  result = qword_1ECC42A50;
  if (!qword_1ECC42A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42A50);
  }

  return result;
}

uint64_t sub_1DB3053FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A48, &qword_1DB50F510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB30546C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A48, &qword_1DB50F510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CodeByKind.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A60, &unk_1DB5177A0);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v11 = a2 + 16;
  v9 = *(a2 + 16);
  v10 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = *(v13 + 16);
  v15(&v40 - v16, v3, AssociatedTypeWitness, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A68, &qword_1DB50F518);
  if (swift_dynamicCast())
  {
    v17 = a1;
    sub_1DB2FEA0C(&v44, v47);
    v18 = (*(v10 + 16))(v9, v10);
    MEMORY[0x1EEE9AC00](v18);
    *(&v40 - 2) = v47;
    v19 = v49;
    sub_1DB305DFC(sub_1DB306300, (&v40 - 4), v18);
    v21 = v20;

    if (v21)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1DB3053A8();
      sub_1DB50BE40();
      v44 = xmmword_1DB50F500;
      LOBYTE(v45) = 1;
      v22 = v41;
      sub_1DB50B860();

      if (!v19)
      {
        __swift_project_boxed_opaque_existential_1(v47, v48);
        sub_1DB50A5B0();
      }

      (*(v40 + 8))(v8, v22);
    }

    else
    {
      v29 = sub_1DB50B410();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0);
      v32 = v48;
      v33 = __swift_project_boxed_opaque_existential_1(v47, v48);
      *(&v45 + 1) = v32;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v44);
      (*(*(v32 - 8) + 16))(boxed_opaque_existential_0, v33, v32);
      v35 = runtimeType(of:)(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      v31[3] = swift_getMetatypeMetadata();
      *v31 = v35;
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      sub_1DB50BE00();
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1DB50B320();

      v42 = 0xD000000000000017;
      v43 = 0x80000001DB529550;
      v36 = v48;
      v37 = __swift_project_boxed_opaque_existential_1(v47, v48);
      *(&v45 + 1) = v36;
      v38 = __swift_allocate_boxed_opaque_existential_0(&v44);
      (*(*(v36 - 8) + 16))(v38, v37, v36);
      runtimeType(of:)(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      v39 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v39);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      sub_1DB50B3C0();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6B30], v29);
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_0(v47);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_1DB30623C(&v44, qword_1ECC42A70, &qword_1DB50F520);
    v49 = sub_1DB50B410();
    v40 = swift_allocError();
    v24 = v23;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
    v24[3] = AssociatedTypeWitness;
    v25 = __swift_allocate_boxed_opaque_existential_0(v24);
    (v15)(v25, v3, AssociatedTypeWitness);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE00();
    v47[0] = 0;
    v47[1] = 0xE000000000000000;
    sub_1DB50B320();

    *&v44 = 60;
    *(&v44 + 1) = 0xE100000000000000;
    v48 = AssociatedTypeWitness;
    v26 = __swift_allocate_boxed_opaque_existential_0(v47);
    (v15)(v26, v3, AssociatedTypeWitness);
    runtimeType(of:)(v47);
    __swift_destroy_boxed_opaque_existential_0(v47);
    v27 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v27);

    MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB529530);
    sub_1DB50B3C0();
    (*(*(v49 - 8) + 104))(v24, *MEMORY[0x1E69E6B30]);
    return swift_willThrow();
  }
}

uint64_t runtimeType(of:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return swift_getDynamicType();
}

BOOL sub_1DB305BE0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = a2[3];
  v4 = __swift_project_boxed_opaque_existential_1(a2, v3);
  v8[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v4, v3);
  v6 = runtimeType(of:)(v8);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v2 == v6;
}

uint64_t sub_1DB305C84(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (v12 << 10) | (16 * __clz(__rbit64(v8)));
      v14 = *(a3 + 56);
      v15 = (*(a3 + 48) + v13);
      v17 = *v15;
      v16 = v15[1];
      v19[0] = *v15;
      v19[1] = v16;
      v20 = *(v14 + v13);

      v18 = v21(v19);
      if (v3)
      {

        return v17;
      }

      if (v18)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    return v17;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return 0;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB305DFC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v20 = a3;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v20 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(v20 + 56) + 8 * v12);
      v19[0] = *v13;
      v19[1] = v14;
      v19[2] = v16;

      v17 = a1(v19);
      if (v3)
      {

        return v15;
      }

      if (v17)
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return v15;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CodeByKind<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return sub_1DB50A5D0();
}

uint64_t CodeByKind<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1DB50BCF0();
  swift_getAssociatedTypeWitness();
  sub_1DB50A5D0();
  return sub_1DB50BD30();
}

uint64_t sub_1DB30610C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DB50BCF0();
  CodeByKind<>.hash(into:)(v6, a2, v4);
  return sub_1DB50BD30();
}

unint64_t sub_1DB306160(uint64_t a1, uint64_t a2)
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  v4 = sub_1DB50BD30();

  return sub_1DB3067A8(a1, a2, v4);
}

unint64_t sub_1DB3061D8()
{
  result = qword_1ECC42A58;
  if (!qword_1ECC42A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A40, &unk_1DB516260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42A58);
  }

  return result;
}

uint64_t sub_1DB30623C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1DB306368(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB3063E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_1DB30657C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
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

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
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

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
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

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

unint64_t sub_1DB3067A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1DB50BA30())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t AsyncObjectGraphBuilder.withDependenciesSatisfied.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + 16))();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B00, &qword_1DB50F650);
  a2[3] = result;
  a2[4] = &off_1F56F7748;
  v5 = MEMORY[0x1E69E7CC0];
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t AsyncObjectGraphBuilder.satisfying<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB307600(a1, a2, a3, a4, a5, a6, &unk_1F56F1048, sub_1DB3069D4);
}

{
  return sub_1DB307600(a1, a2, a3, a4, a5, a6, &unk_1F56F1098, sub_1DB30BCE8);
}

char *sub_1DB306914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Promise(0, a5, a3, a4);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a1;

  v13 = sub_1DB498380(&unk_1DB50F778, v12);

  return v13;
}

uint64_t sub_1DB3069EC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1DB306AF4;

  return v9(a1, a4);
}

uint64_t sub_1DB306AF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AsyncObjectGraphBuilder.satisfying(allOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = (*(a4 + 16))(a3, a4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_1DB30BB08(sub_1DB306E9C, v9, v8);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B00, &qword_1DB50F650);
  a5[3] = result;
  a5[4] = &off_1F56F7748;
  v12 = MEMORY[0x1E69E7CC0];
  *a5 = v10;
  a5[1] = v12;
  return result;
}

uint64_t sub_1DB306CC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F70, &qword_1DB518F20);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = 0;
  v14 = sub_1DB50ABA0();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1DB50F760;
  v15[5] = v10;
  v15[6] = v11;

  sub_1DB419B9C(0, 0, v8, &unk_1DB50F768, v15);

  return v11;
}

uint64_t sub_1DB306EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB306EC8, 0, 0);
}

uint64_t sub_1DB306EC8()
{
  v1 = (*(v0 + 32))();
  *(v0 + 48) = sub_1DB40D210(v1);

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1DB306F8C;

  return BaseObjectGraph._withAllDependenciesResolved.getter();
}

uint64_t sub_1DB306F8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1DB3070E0;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_1DB3070BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB3070E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AsyncObjectGraphBuilder.makeObjectGraph()(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB307168, 0, 0);
}

uint64_t sub_1DB307168()
{
  v0[24] = (*(v0[22] + 16))(v0[21]);

  return MEMORY[0x1EEE6DFA0](sub_1DB3071E8, 0, 0);
}

uint64_t sub_1DB3071E8()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB3072B4;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1DB308088(v2);
  sub_1DB30623C(v2, &unk_1ECC44FC0, &unk_1DB50F4E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB3072B4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 200) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB307408, 0, 0);
  }

  else
  {

    v5 = *(v2 + 160);
    v6 = *(v3 + 8);

    return v6(v5);
  }
}

uint64_t sub_1DB307408()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static BaseObjectGraph.build(withName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1DB30BC94();
  v10 = MEMORY[0x1E12859D0](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v6);
  v7 = MEMORY[0x1E69E7CC0];
  sub_1DB307C9C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for BaseObjectGraph();
  v8 = swift_allocObject();
  v8[4] = a2;
  v8[2] = v10;
  v8[3] = a1;
  a3[3] = &type metadata for StandaloneObjectGraphBuilder;
  a3[4] = &off_1F56F8D18;
  *a3 = v8;
  a3[1] = v7;
}

uint64_t BaseObjectGraph.buildUpon.getter@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for StandaloneObjectGraphBuilder;
  a1[4] = &off_1F56F8D18;
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = v1;
  a1[1] = v2;
}

uint64_t Promise<A>.withDependenciesSatisfied.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_1DB3BA100();
  v5 = v4;
  v7 = v6;
  a1[3] = type metadata accessor for DependentObjectGraphBuilder(0, *(v3 + 80), v8, v9);
  a1[4] = &off_1F56F7748;
  *a1 = v5;
  a1[1] = v7;
}

uint64_t sub_1DB307600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a2;
  v14[6] = a3;
  v15 = *(a6 + 8);

  v15(a1, a8, v14, a5, a4, a6);
}

char *sub_1DB3076D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v7);
  type metadata accessor for Promise(0, a5, v11, v12);
  v16 = _s7JetCore7PromiseC8resolved7toValueACyxGx_tFZ_0(v9, v13, v14, v15);
  (*(v6 + 8))(v9, a5);
  return v16;
}

uint64_t AsyncObjectGraphBuilder.satisfying<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a5;
  (*(v9 + 32))(&v14[v13], v12, a4);
  (*(a5 + 8))(a1, sub_1DB30BD18, v14, a4, a3, a5);
}

uint64_t AsyncObjectGraphBuilder.subtracting<A>(allDependenciesExcept:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v24 = (*(v15 + 16))(v16, v15, v14);
  (*(v12 + 16))(&v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v17 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  (*(v12 + 32))(&v18[v17], &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v27[3] = &type metadata for SyncTaskScheduler;
  v27[4] = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F70, &qword_1DB518F20);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  *(v19 + 32) = 0;
  v22 = swift_allocObject();
  v22[2] = sub_1DB30BD80;
  v22[3] = v18;
  v22[4] = v19;
  v25[0] = sub_1DB30BE80;
  v25[1] = v22;
  v25[2] = sub_1DB30BE8C;
  v25[3] = v19;
  sub_1DB30BE90(v27, v26);
  v26[40] = 0;
  swift_retain_n();

  sub_1DB308088(v25);

  sub_1DB30623C(v25, &unk_1ECC44FC0, &unk_1DB50F4E0);
  __swift_destroy_boxed_opaque_existential_0(v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B00, &qword_1DB50F650);
  a6[3] = result;
  a6[4] = &off_1F56F7748;
  *a6 = v19;
  a6[1] = v21;
  return result;
}

uint64_t sub_1DB307BFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = sub_1DB40D6FC(a2, a3, a4);
  swift_beginAccess();
  v9 = *(v6 + 24);
  v8 = *(v6 + 32);
  swift_beginAccess();
  *(v7 + 24) = v9;
  *(v7 + 32) = v8;

  *a5 = v7;
  return result;
}

uint64_t sub_1DB307C9C(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  for (i = result + 32; ; i += 40)
  {
    sub_1DB30C420(i, &v26);
    v5 = v26;
    sub_1DB300B14(&v27, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    v22 = *v3;
    *v3 = 0x8000000000000000;
    v8 = sub_1DB30EE50(v5);
    v10 = v7[2];
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (v12)
    {
      break;
    }

    v14 = v9;
    if (v7[3] < v13)
    {
      sub_1DB31A6AC(v13, isUniquelyReferenced_nonNull_native);
      v8 = sub_1DB30EE50(v5);
      if ((v14 & 1) != (v15 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v16 = v22;
      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v19 = v8;
    sub_1DB311D10();
    v8 = v19;
    v16 = v22;
    if ((v14 & 1) == 0)
    {
LABEL_14:
      v16[(v8 >> 6) + 8] |= 1 << v8;
      *(v16[6] + 8 * v8) = v5;
      sub_1DB30C200(v23, (v16[7] + 32 * v8));
      v20 = v16[2];
      v12 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v12)
      {
        goto LABEL_18;
      }

      v16[2] = v21;
      v24 = 0u;
      v25 = 0u;
      *v3 = v16;
      goto LABEL_3;
    }

LABEL_11:
    v17 = 32 * v8;
    sub_1DB30C200((v16[7] + 32 * v8), &v24);
    sub_1DB30C200(v23, (v16[7] + v17));
    v18 = *(&v25 + 1);
    *v3 = v16;
    if (v18)
    {
      sub_1DB30623C(&v24, &qword_1ECC426B0, &qword_1DB50EEB0);
      sub_1DB3CBD24("JetCore/DependencyDictionary.swift", 34, 2, 340, v5);
      result = sub_1DB30BF1C(&v26);
      goto LABEL_4;
    }

LABEL_3:
    sub_1DB30BF1C(&v26);
    result = sub_1DB30623C(&v24, &qword_1ECC426B0, &qword_1DB50EEB0);
LABEL_4:
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

void sub_1DB307EB8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v20, &qword_1ECC42B18, &qword_1DB50F688);
  if (v22 > 1u)
  {
    v12 = *&v20[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E26EC(v12);
  }

  else if (v22)
  {
    v16 = v20[0];
    v17 = v20[1];
    *&v18 = v21;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE288(&v16);
    sub_1DB30BF1C(&v16);
  }

  else
  {
    v4 = *&v20[0];
    sub_1DB30C4B8(a1, &v16, &qword_1ECC42700, &unk_1DB50F690);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB302848(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB302848((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19[0];
    *(v8 + 89) = *(v19 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16 = v4;
    BYTE8(v18) = 0;
    swift_beginAccess();
    sub_1DB30C2D8(&v16, v1 + 24, &qword_1ECC42B18, &qword_1DB50F688);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB308088(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E271C(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E271C(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE3F4(v4);
    v15 = MEMORY[0x1E69E7D48];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1DB30C47C(v16, v17, v15);
    return;
  }

  sub_1DB30C4B8(a1, v22, &unk_1ECC44FC0, &unk_1DB50F4E0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB3029C4(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1DB3029C4((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C47C(v12, v13, MEMORY[0x1E69E7D48]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB30828C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E289C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E289C(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE424(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1DB30C3E8(v15, v16);
    return;
  }

  sub_1DB30C4B8(a1, v22, &unk_1ECC45030, &qword_1DB50F4D0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB3029E8(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1DB3029E8((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C3E8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB308440(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E28CC(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E28CC(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE454(v4);
    v15 = MEMORY[0x1E69E7CF8];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1DB30C47C(v16, v17, v15);
    return;
  }

  sub_1DB30C4B8(a1, v22, &qword_1ECC42840, &qword_1DB5142D0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB302B8C(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1DB302B8C((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C47C(v12, v13, MEMORY[0x1E69E7CF8]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB308644(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v19, qword_1ECC42BF0, &qword_1DB50F728);
  if (v20 > 1u)
  {
    v12 = *&v19[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E28FC(v12);
  }

  else if (v20)
  {
    sub_1DB2FEA0C(v19, v16);
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE5A4(v16);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v4 = *&v19[0];
    sub_1DB30C4B8(a1, v16, &qword_1ECC42950, &unk_1DB50F730);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB302BB0(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB302BB0((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16[0];
    v9 = v16[1];
    v10 = v17;
    v11 = v18[0];
    *(v8 + 89) = *(v18 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16[0] = v4;
    BYTE8(v17) = 0;
    swift_beginAccess();
    sub_1DB30C2D8(v16, v1 + 24, qword_1ECC42BF0, &qword_1DB50F728);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB308810(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (*(v1 + 40) > 1u)
  {
    if (*(v1 + 40) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E292C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E292C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE700(v4, v5);
    v16 = v4;
    v17 = v5;
    v18 = 1;
LABEL_12:
    sub_1DB30C340(v16, v17, v18);
    return;
  }

  sub_1DB30C4B8(a1, v20, &qword_1ECC429C0, &qword_1DB518FD0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB302BD4(0, v4[2] + 1, 1, v4);
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DB302BD4((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v8 = &v4[10 * v7];
  v8[2] = v20[0];
  v9 = v20[1];
  v10 = v20[2];
  v11 = v21[0];
  *(v8 + 89) = *(v21 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  *(v1 + 24) = v4;
  *(v1 + 32) = 0;
  v14 = *(v1 + 40);
  *(v1 + 40) = 0;
  sub_1DB30C340(v12, v13, v14);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB3089DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E295C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v17 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E295C(v4);
      v15 = v4;
      v16 = 3;
    }

    sub_1DB30C3C4(v15, v16);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE868(v4);
  }

  else
  {
    sub_1DB30C4B8(a1, v21, &qword_1ECC429D0, &unk_1DB50F740);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB302C1C(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v18 = v4;
      v19 = v4[2];
      v20 = sub_1DB302C1C((v6 > 1), v5 + 1, 1, v18);
      v5 = v19;
      v4 = v20;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v21[0];
    v9 = v21[1];
    v10 = v21[2];
    v11 = v22[0];
    *(v8 + 89) = *(v22 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1DB30C3C4(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB308B80(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E298C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v17 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E298C(v4);
      v15 = v4;
      v16 = 3;
    }

    sub_1DB30C3C4(v15, v16);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FE9A0();
  }

  else
  {
    sub_1DB30C4B8(a1, v21, &qword_1ECC429E0, &qword_1DB50F498);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB302C40(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v18 = v4;
      v19 = v4[2];
      v20 = sub_1DB302C40((v6 > 1), v5 + 1, 1, v18);
      v5 = v19;
      v4 = v20;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v21[0];
    v9 = v21[1];
    v10 = v21[2];
    v11 = v22[0];
    *(v8 + 89) = *(v22 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1DB30C3C4(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB308D20(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v19, &unk_1ECC42BC0, &unk_1DB51A950);
  if (v20 > 1u)
  {
    v12 = *&v19[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E29BC(v12);
  }

  else if (v20)
  {
    sub_1DB30C200(v19, v16);
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FEAB0(v16);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v4 = *&v19[0];
    sub_1DB30C4B8(a1, v16, &unk_1ECC45020, &unk_1DB50F700);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB302FCC(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB302FCC((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16[0];
    v9 = v16[1];
    v10 = v17;
    v11 = v18[0];
    *(v8 + 89) = *(v18 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16[0] = v4;
    LOBYTE(v17) = 0;
    swift_beginAccess();
    sub_1DB30C2D8(v16, v1 + 24, &unk_1ECC42BC0, &unk_1DB51A950);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB308EE8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E29EC(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v17 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E29EC(v4);
      v15 = v4;
      v16 = 3;
    }

    sub_1DB30C3C4(v15, v16);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FEC0C(v4 & 1);
  }

  else
  {
    sub_1DB30C4B8(a1, v21, &unk_1ECC44FD0, &qword_1DB50F1D0);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB303124(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v18 = v4;
      v19 = v4[2];
      v20 = sub_1DB303124((v6 > 1), v5 + 1, 1, v18);
      v5 = v19;
      v4 = v20;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v21[0];
    v9 = v21[1];
    v10 = v21[2];
    v11 = v22[0];
    *(v8 + 89) = *(v22 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1DB30C3C4(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB30908C(uint64_t a1)
{
  v3 = type metadata accessor for InMemoryJetPackResourceBundle(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BE0, &unk_1DB518FC0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v13, v11, &unk_1ECC42BE0, &unk_1DB518FC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1DB3E2A1C(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB30C210(v11, v5, type metadata accessor for InMemoryJetPackResourceBundle);
    os_unfair_lock_unlock(v12 + 4);
    sub_1DB3FED4C(v5);
    sub_1DB30C278(v5, type metadata accessor for InMemoryJetPackResourceBundle);
  }

  else
  {
    v15 = *v11;
    sub_1DB30C4B8(a1, v24, qword_1ECC453B0, &qword_1DB50F720);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DB303700(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1DB303700((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v8 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v8, v1 + v13, &unk_1ECC42BE0, &unk_1DB518FC0);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

void sub_1DB309368(uint64_t a1)
{
  v3 = type metadata accessor for DiskJetPackResourceBundle(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v13, v11, &unk_1ECC42BD0, &unk_1DB518FB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1DB3E2A4C(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB30C210(v11, v5, type metadata accessor for DiskJetPackResourceBundle);
    os_unfair_lock_unlock(v12 + 4);
    sub_1DB3FEF68(v5);
    sub_1DB30C278(v5, type metadata accessor for DiskJetPackResourceBundle);
  }

  else
  {
    v15 = *v11;
    sub_1DB30C4B8(a1, v24, &unk_1ECC453A0, &unk_1DB50F710);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DB303724(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1DB303724((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v8 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v8, v1 + v13, &unk_1ECC42BD0, &unk_1DB518FB0);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

void sub_1DB309644(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2A7C(v4);
      v15 = MEMORY[0x1E69E7D60];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2A7C(v4);
      v15 = MEMORY[0x1E69E7D60];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FF184(v4);
    v15 = MEMORY[0x1E69E7D60];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1DB30C47C(v16, v17, v15);
    return;
  }

  sub_1DB30C4B8(a1, v22, &qword_1ECC428D0, &qword_1DB50F350);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303AC0(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1DB303AC0((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C47C(v12, v13, MEMORY[0x1E69E7D60]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB309848(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2AAC(v4);
      v15 = MEMORY[0x1E69E7D60];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2AAC(v4);
      v15 = MEMORY[0x1E69E7D60];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FF1B4(v4);
    v15 = MEMORY[0x1E69E7D60];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1DB30C47C(v16, v17, v15);
    return;
  }

  sub_1DB30C4B8(a1, v22, &qword_1ECC428C0, &unk_1DB50F6F0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303AE4(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1DB303AE4((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C47C(v12, v13, MEMORY[0x1E69E7D60]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB309A4C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (*(v1 + 48) > 1u)
  {
    if (*(v1 + 48) == 2)
    {
      v17 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2ADC(v4);
      v18 = v4;
      v19 = v6;
      v20 = v5;
      v21 = 2;
    }

    else
    {
      v23 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2ADC(v4);
      v18 = v4;
      v19 = v6;
      v20 = v5;
      v21 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 48))
  {
    sub_1DB30C1AC(*(v1 + 24), *(v1 + 32));
    v22 = v5;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FF324(v4, v6, v22);
    v18 = v4;
    v19 = v6;
    v20 = v5;
    v21 = 1;
LABEL_12:
    sub_1DB30C0D4(v18, v19, v20, v21);
    return;
  }

  sub_1DB30C4B8(a1, v24, &qword_1ECC428A0, &unk_1DB50F6E0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303B08(0, v4[2] + 1, 1, v4);
  }

  v8 = v4[2];
  v7 = v4[3];
  if (v8 >= v7 >> 1)
  {
    v4 = sub_1DB303B08((v7 > 1), v8 + 1, 1, v4);
  }

  v4[2] = v8 + 1;
  v9 = &v4[10 * v8];
  v9[2] = v24[0];
  v10 = v24[1];
  v11 = v24[2];
  v12 = v25[0];
  *(v9 + 89) = *(v25 + 9);
  v9[4] = v11;
  v9[5] = v12;
  v9[3] = v10;
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = *(v1 + 40);
  *(v1 + 24) = v4;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v16 = *(v1 + 48);
  *(v1 + 48) = 0;
  sub_1DB30C0D4(v13, v14, v15, v16);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB309C44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45380, &qword_1DB51BBA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BB0, &unk_1DB50F6C0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v13, v11, &unk_1ECC42BB0, &unk_1DB50F6C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1DB3E2B0C(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB30C06C(v11, v5, &unk_1ECC45380, &qword_1DB51BBA0);
    os_unfair_lock_unlock(v12 + 4);
    sub_1DB3FF498(v5);
    sub_1DB30623C(v5, &unk_1ECC45380, &qword_1DB51BBA0);
  }

  else
  {
    v15 = *v11;
    sub_1DB30C4B8(a1, v24, &qword_1ECC42870, &unk_1DB518F90);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DB303B2C(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1DB303B2C((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v8 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v8, v1 + v13, &unk_1ECC42BB0, &unk_1DB50F6C0);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

void sub_1DB309F2C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2B3C(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2B3C(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FF6C8(v4);
    v15 = MEMORY[0x1E69E7D48];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1DB30C47C(v16, v17, v15);
    return;
  }

  sub_1DB30C4B8(a1, v22, &qword_1ECC428B0, &qword_1DB51CCF0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303B50(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1DB303B50((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C47C(v12, v13, MEMORY[0x1E69E7D48]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB30A130(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2B6C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2B6C(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FF838(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1DB30C3E8(v15, v16);
    return;
  }

  sub_1DB30C4B8(a1, v22, &qword_1ECC42880, &unk_1DB50F6D0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303B74(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1DB303B74((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C3E8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB30A2E4(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2B9C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2B9C(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FF99C(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1DB30C3E8(v15, v16);
    return;
  }

  sub_1DB30C4B8(a1, v22, &qword_1ECC42890, &unk_1DB518FA0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303B98(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1DB303B98((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C3E8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB30A498(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45340, &unk_1DB518F50);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v13, v11, &unk_1ECC45340, &unk_1DB518F50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1DB3E2BCC(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB30C06C(v11, v5, &unk_1ECC42B20, &unk_1DB50F6A0);
    os_unfair_lock_unlock(v12 + 4);
    sub_1DB3FF9CC(v5);
    sub_1DB30623C(v5, &unk_1ECC42B20, &unk_1DB50F6A0);
  }

  else
  {
    v15 = *v11;
    sub_1DB30C4B8(a1, v24, &unk_1ECC42B30, &qword_1DB50F1E0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DB303BBC(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1DB303BBC((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v8 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v8, v1 + v13, &unk_1ECC45340, &unk_1DB518F50);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

void sub_1DB30A780(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v21, &unk_1ECC45000, &unk_1DB51A930);
  if (v22 > 1u)
  {
    v12 = *&v21[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E2BFC(v12);
  }

  else if (v22)
  {
    v18 = v21[2];
    *v19 = v21[3];
    *&v19[16] = v21[4];
    v16 = v21[0];
    v17 = v21[1];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FFBFC(&v16);
    sub_1DB30C018(&v16);
  }

  else
  {
    v4 = *&v21[0];
    sub_1DB30C4B8(a1, &v16, &unk_1ECC42B90, &qword_1DB50F290);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB303D04(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB303D04((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16;
    v9 = v17;
    v10 = v18;
    v11 = *v19;
    *(v8 + 89) = *&v19[9];
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16 = v4;
    v20 = 0;
    swift_beginAccess();
    sub_1DB30C2D8(&v16, v1 + 24, &unk_1ECC45000, &unk_1DB51A930);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB30A960(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v19, &unk_1ECC45010, &unk_1DB51A940);
  if (v20 > 1u)
  {
    v12 = *&v19[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E2C2C(v12);
  }

  else if (v20)
  {
    sub_1DB2FEA0C(v19, v16);
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FFD7C(v16);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v4 = *&v19[0];
    sub_1DB30C4B8(a1, v16, &unk_1ECC42BA0, &qword_1DB50F2A0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB303D28(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB303D28((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16[0];
    v9 = v16[1];
    v10 = v17;
    v11 = v18[0];
    *(v8 + 89) = *(v18 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16[0] = v4;
    BYTE8(v17) = 0;
    swift_beginAccess();
    sub_1DB30C2D8(v16, v1 + 24, &unk_1ECC45010, &unk_1DB51A940);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB30AB2C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2C5C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2C5C(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FFED8(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1DB30C3E8(v15, v16);
    return;
  }

  sub_1DB30C4B8(a1, v22, &unk_1ECC44FF0, &qword_1DB50F270);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303D4C(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1DB303D4C((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C3E8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB30ACE0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2C8C(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2C8C(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FFF08(v4);
    v15 = MEMORY[0x1E69E7D48];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1DB30C47C(v16, v17, v15);
    return;
  }

  sub_1DB30C4B8(a1, v22, &unk_1ECC42B80, &qword_1DB50F280);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303D70(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1DB303D70((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C47C(v12, v13, MEMORY[0x1E69E7D48]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB30AEE4(uint64_t a1)
{
  v3 = type metadata accessor for JetPackAsset(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45350, &unk_1DB518F60);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v13, v11, &unk_1ECC45350, &unk_1DB518F60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1DB3E2CBC(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB30C210(v11, v5, type metadata accessor for JetPackAsset);
    os_unfair_lock_unlock(v12 + 4);
    sub_1DB3FFF38(v5);
    sub_1DB30C278(v5, type metadata accessor for JetPackAsset);
  }

  else
  {
    v15 = *v11;
    sub_1DB30C4B8(a1, v24, &unk_1ECC42B50, &qword_1DB50F240);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DB303D94(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1DB303D94((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v8 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v8, v1 + v13, &unk_1ECC45350, &unk_1DB518F60);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

void sub_1DB30B1C0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v20, &unk_1ECC45370, &unk_1DB518F80);
  if (v22 > 1u)
  {
    v12 = *&v20[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E2CEC(v12);
  }

  else if (v22)
  {
    v16 = v20[0];
    v17 = v20[1];
    v18 = v20[2];
    *&v19[0] = v21;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB400154(&v16);
    sub_1DB30BFC4(&v16);
  }

  else
  {
    v4 = *&v20[0];
    sub_1DB30C4B8(a1, &v16, &unk_1ECC42B70, &qword_1DB50F260);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB303DB8(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB303DB8((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19[0];
    *(v8 + 89) = *(v19 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16 = v4;
    BYTE8(v19[0]) = 0;
    swift_beginAccess();
    sub_1DB30C2D8(&v16, v1 + 24, &unk_1ECC45370, &unk_1DB518F80);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB30B3A0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v20, &unk_1ECC45360, &unk_1DB518F70);
  if (v22 > 1u)
  {
    v12 = *&v20[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E2D1C(v12);
  }

  else if (v22)
  {
    v16 = v20[0];
    v17 = v20[1];
    v18 = v20[2];
    *&v19[0] = v21;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB4002DC(&v16);
    sub_1DB30BF70(&v16);
  }

  else
  {
    v4 = *&v20[0];
    sub_1DB30C4B8(a1, &v16, &unk_1ECC42B60, &qword_1DB50F250);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB303DDC(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB303DDC((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19[0];
    *(v8 + 89) = *(v19 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16 = v4;
    BYTE8(v19[0]) = 0;
    swift_beginAccess();
    sub_1DB30C2D8(&v16, v1 + 24, &unk_1ECC45360, &unk_1DB518F70);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}