uint64_t sub_1ADE1ED64()
{
  if (v0[6] != 1)
  {
    sub_1ADDCC35C(v0[2], v0[3]);
    sub_1ADDCC35C(v0[4], v0[5]);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE1EDB8()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1ADE1EEB0()
{
  sub_1ADDCC35C(*(v0 + 24), *(v0 + 32));
  sub_1ADDCC35C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1ADE1EF28()
{
  sub_1ADDCC35C(*(v0 + 24), *(v0 + 32));
  sub_1ADDCC35C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1ADE1EFB8()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1ADE1F0A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE1F0DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

__n128 sub_1ADE1F220(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1ADE1F2E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_1ADE1F318(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;

  sub_1ADECD208(a1, v4);
}

__n128 sub_1ADE1F368(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1ADE1F380()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1ADE1F3EC@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

BOOL sub_1ADE1F424@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ADDD6F8C(*v2, *(v2 + 8), *a1, *(a1 + 8));
  *a2 = result;
  return result;
}

__n128 sub_1ADE1F480@<Q0>(uint64_t a1@<X8>)
{
  sub_1ADE1F5AC(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7;
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

double sub_1ADE1F4F0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0x2000000000000000;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = -1;
  return result;
}

uint64_t sub_1ADE1F524(uint64_t a1)
{
  v1 = ((*(a1 + 48) >> 60) & 3 | (4 * *(a1 + 128))) ^ 0x3FF;
  if (v1 >= 0x3FB)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1ADE1F554(uint64_t result)
{
  *(result + 48) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 128) = 0;
  return result;
}

uint64_t sub_1ADE1F568(uint64_t result)
{
  *(result + 48) = *(result + 48) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(result + 128) = 0;
  return result;
}

uint64_t sub_1ADE1F580(uint64_t result)
{
  *(result + 48) = *(result + 48) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(result + 128) = 0;
  return result;
}

uint64_t sub_1ADE1F598(uint64_t result)
{
  *(result + 48) |= 0x3000000000000000uLL;
  *(result + 128) = 0;
  return result;
}

double sub_1ADE1F5AC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0x3000000000000000;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = -1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9Coherence14Proto_DocumentVs5Error_pIeglzo_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ADE1F674()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1ADE1F6E8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1ADE1FE00()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE1FE38()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1ADE1FE78()
{

  sub_1ADDCC35C(*(v0 + 40), *(v0 + 48));
  sub_1ADDCC35C(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1ADE1FEC8()
{

  sub_1ADDCC35C(*(v0 + 56), *(v0 + 64));
  sub_1ADDCC35C(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1ADE1FF18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE1FF50()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1ADE1FFD0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE20008()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE20058()
{

  sub_1ADDCC35C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1ADE200A0()
{
  swift_unknownObjectRelease();

  sub_1ADDCC35C(*(v0 + 40), *(v0 + 48));
  sub_1ADDCC35C(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1ADE200F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE20144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1ADE201C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_1AE23D3CC();
}

uint64_t sub_1ADE2024C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

id sub_1ADE202E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = type metadata accessor for CRArray(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));
  return sub_1ADF5C6F0(a1, v5, v6);
}

__n128 sub_1ADE20344(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1ADE20358(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AE23C12C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1ADE20404(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AE23C12C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ADE204A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE204E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
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

uint64_t sub_1ADE205B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

__n128 sub_1ADE20758(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1ADE207FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE20840()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE20878()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE208CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>)
{
  result = sub_1ADDF43A0(a1, sub_1ADE7205C, a3);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

__n128 sub_1ADE2093C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1ADE20948()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE20A54()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1ADE20D88(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

__n128 sub_1ADE20DC8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1ADE20DDC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FinalizedTimestamp(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

void *sub_1ADE20E88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FinalizedTimestamp(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ADE20F2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE20F64()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

__n128 sub_1ADE21030(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

__n128 sub_1ADE21144(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1ADE21198(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ADE21230()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE21270()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE212A8()
{
  v1 = sub_1AE23BFEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1ADE2136C()
{
  v1 = sub_1AE23BFEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1ADE21438()
{
  v1 = *(v0 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule(255, v1, AssociatedConformanceWitness, v3);
  v4 = sub_1AE23D21C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 64) & ~v6;
  v8 = *(v5 + 64);
  swift_unknownObjectRelease();

  (*(v5 + 8))(v0 + v7, v4);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v6 | 7);
}

__n128 sub_1ADE2154C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1ADE21560(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AE23C12C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

void *sub_1ADE2160C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AE23C12C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ADE216C0()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1ADE217EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE21824()
{

  sub_1ADDCC35C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE218FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE2193C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE21974()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE219BC()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE21A14()
{

  if (v0[7])
  {
  }

  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[13])
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1ADE21AB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE21AFC()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1ADE21B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23BFEC();
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

    return (v10 + 1);
  }
}

uint64_t sub_1ADE21C24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AE23BFEC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

__n128 sub_1ADE21D7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ADE21E08()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE21E4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE21EC0()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1ADE21F64()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE21F9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE22020()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1ADE22090(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[2];
  v6 = a3[3];
  v7 = a3[4];
  v10[0] = v5;
  v10[1] = type metadata accessor for TreeNode(255, v5, v6, v7);
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = &off_1F23C93F8;
  v10[5] = swift_getWitnessTable();
  v8 = type metadata accessor for CRDictionary.MergeableDelta(0, v10);
  return (*(*(v8 - 8) + 48))(a1, a2, v8);
}

uint64_t sub_1ADE2215C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4[2];
  v7 = a4[3];
  v8 = a4[4];
  v11[0] = v6;
  v11[1] = type metadata accessor for TreeNode(255, v6, v7, v8);
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = &off_1F23C93F8;
  v11[5] = swift_getWitnessTable();
  v9 = type metadata accessor for CRDictionary.MergeableDelta(0, v11);
  return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
}

__n128 sub_1ADE222DC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ADE222E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE22324()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE2235C()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE223A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE223DC()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE22434()
{

  if (v0[7])
  {
  }

  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[13])
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1ADE224D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE2251C()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1ADE225B4()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE22650()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE22688()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1ADE22728()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1ADE227FC()
{
  v1 = sub_1AE23BFEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1ADE228DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE22914()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1ADE229EC()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE22ADC()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE22B24()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE22B5C()
{
  sub_1ADDCC35C(*(v0 + 24), *(v0 + 32));
  sub_1ADDCC35C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE22BAC()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1ADE22C14()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE22C88()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE22CC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE22CFC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE22D34()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1ADE22D6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE22DAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1ADE22DEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1ADE22E38(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1ADE22E58(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ADE22EA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1ADE22EE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1ADE22F20()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1ADE22F60()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1ADE22FA8()
{

  if (v0[7])
  {
  }

  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[13])
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1ADE230C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1ADE23144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_1AE23D3CC();
}

uint64_t sub_1ADE231C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

void sub_1ADE23258(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for CROrderedSet(0, *(a1 + a2 - 24), *(a1 + a2 - 16), *(a1 + a2 - 8));
  CROrderedSet.subscript.getter(v4, v5, a3);
}

void sub_1ADE232B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = type metadata accessor for CROrderedSet(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));
  sub_1AE1E9CB4(a1, v5, v6);
}

__n128 sub_1ADE23314(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1ADE23328()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE23374()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  }

  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1ADE23404()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE2343C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE23474()
{
  v1 = sub_1AE23C70C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 44) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1AE23C6DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

double sub_1ADE23610(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1ADE23620()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE23664@<X0>(_BYTE *a1@<X8>)
{
  result = CRCustomFileSyncManager.disableReadingInBackground.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_1ADE236C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ADE236D8()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1ADE237B4()
{
  swift_unknownObjectRelease();

  sub_1ADDCC35C(*(v0 + 40), *(v0 + 48));
  sub_1ADDCC35C(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1ADE2380C()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1ADE238E4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE23934()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1ADE23984()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE239CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE23A04()
{

  sub_1ADDCC35C(*(v0 + 24), *(v0 + 32));
  sub_1ADDCC35C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1ADE23A54()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE23A8C()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1ADE23B24()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 sub_1ADE23BA8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1ADE23BCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1ADE23C48(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1ADE23C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADE23C98()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1ADE23D00()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE23D38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1ADE23D88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1ADE23DE0()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE23E18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE23E6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for Proto4_Selection.Affinity(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Proto4_Selection.Affinity(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1ADE23ED4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ADE23EF0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1ADE23F54(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1ADE23F88@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1ADE23FA0()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1ADE23FBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1ADE23FD8(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

BOOL sub_1ADE23FF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

void sub_1ADE24060(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != 1)
  {
    sub_1ADE42CB8(a1, a2);
  }
}

void sub_1ADE24578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1ADE24918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7A12348, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring const*,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring const* const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1ADE24F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _TtC9Coherence24CRTTMergeableStringIndex;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id Coherence_namespace::TopoID::toString(Coherence_namespace::TopoID *this)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:this];
  v4 = [v3 Coherence_shortDescription];
  v5 = [v2 stringWithFormat:@"%@.%d, %d", v4, *(this + 4), *(this + 5)];

  return v5;
}

__n128 Coherence_namespace::updateTopoID@<Q0>(uint64_t *__return_ptr a1@<X8>, Coherence_namespace *this@<X0>, const TopoID *a3@<X1>, const Coherence_namespace::TopoIDRange *a4@<X2>)
{
  result = *this;
  *a1 = *this;
  a1[2] = *(this + 2);
  if (*(this + 4) == a3->replica.index && !uuid_compare(this, a3->replica.uuid))
  {
    v9 = *(this + 5);
    clock = a3->clock;
    if (v9 >= clock && v9 < *a3[1].replica.uuid + clock)
    {
      result = *a4;
      *a1 = *a4;
      v11 = v9 - clock + *(a4 + 5);
      *(a1 + 4) = *(a4 + 4);
      *(a1 + 5) = v11;
    }
  }

  return result;
}

void Coherence_namespace::updateTopoIDRange(unsigned __int8 *uu1, unsigned __int8 *a2, __int128 *a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(uu1 + 4) == *(a2 + 4) && !uuid_compare(uu1, a2))
  {
    *uu1a = *uu1;
    v8 = *(uu1 + 6) + *(uu1 + 5);
    *&uu1a[16] = *(uu1 + 4);
    *&uu1a[20] = v8;
    if (Coherence_namespace::TopoID::operator<=(uu1a, a2) || (v27 = *a2, v9 = *(a2 + 6) + *(a2 + 5), v28 = *(a2 + 4), v29 = v9, Coherence_namespace::TopoID::operator>=(uu1, &v27)))
    {
      v10 = a4;
      v11 = uu1;
LABEL_18:
      std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](v10, v11);
      return;
    }

    v12 = *(uu1 + 5);
    v13 = *(a2 + 5);
    if (v13 <= v12)
    {
      *uu1a = *uu1;
      v18 = *(uu1 + 6);
      *&uu1a[16] = *(uu1 + 4);
      *&uu1a[20] = v18 + v12;
      v27 = *a2;
      v19 = *(a2 + 6) + v13;
      v28 = *(a2 + 4);
      v29 = v19;
      if (!Coherence_namespace::TopoID::operator>(uu1a, &v27))
      {
        *&uu1a[12] = *(uu1 + 12);
        *uu1a = *uu1;
        *uu1a = *a3;
        v26 = *(uu1 + 5) + *(a3 + 5) - *(a2 + 5);
        *&uu1a[16] = *(a3 + 4);
        *&uu1a[20] = v26;
        v11 = uu1a;
        goto LABEL_17;
      }

      v20 = *(a2 + 5);
      v21 = *(a2 + 6) + v20;
      v23 = *(uu1 + 4);
      v22 = *(uu1 + 5);
      v24 = *(uu1 + 6) - (v21 - v22);
      v35 = *uu1;
      v36 = v23;
      v37 = v21;
      v38 = v24;
      *uu1a = *a3;
      v25 = v22 - v20 + *(a3 + 5);
      *&uu1a[16] = *(a3 + 4);
      *&uu1a[20] = v25;
      *&uu1a[24] = v21 - v22;
    }

    else
    {
      v14 = *(uu1 + 6) - (v13 - v12);
      *uu1a = *uu1;
      *&uu1a[16] = *(uu1 + 2);
      *&uu1a[24] = v13 - v12;
      v35 = *uu1a;
      v36 = *(uu1 + 4);
      v38 = v14;
      v27 = *a2;
      v15 = *(a2 + 6) + v13;
      v28 = *(a2 + 4);
      v29 = v15;
      v31 = *uu1;
      v32 = *(uu1 + 4);
      v33 = v14 + v13;
      if (Coherence_namespace::TopoID::operator<(&v27, &v31))
      {
        v16 = *(a2 + 6);
        v27 = v35;
        v28 = v36;
        v29 = v13 + v16;
        v30 = v14 - v16;
        v38 = v16;
        std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](a4, &v27);
      }

      v35 = *a3;
      v17 = *(a3 + 5);
      v36 = *(a3 + 4);
      v37 = v17;
    }

    std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](a4, uu1a);
    v11 = &v35;
LABEL_17:
    v10 = a4;
    goto LABEL_18;
  }

  std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](a4, uu1);
}

void std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if ((v8 + 1) > 0x924924924924924)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x492492492492492)
    {
      v11 = 0x924924924924924;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoIDRange>>(a1, v11);
    }

    v12 = 28 * v8;
    v13 = *a2;
    *(v12 + 12) = *(a2 + 12);
    *v12 = v13;
    v7 = 28 * v8 + 28;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 12) = *(a2 + 12);
    *v5 = v6;
    v7 = v5 + 28;
  }

  *(a1 + 8) = v7;
}

BOOL Coherence_namespace::TopoID::operator<=(unsigned __int8 *uu1, unsigned __int8 *uu2)
{
  if (*(uu1 + 5) == *(uu2 + 5) && *(uu1 + 4) == *(uu2 + 4) && !uuid_compare(uu1, uu2))
  {
    return 1;
  }

  return Coherence_namespace::TopoID::operator<(uu1, uu2);
}

BOOL Coherence_namespace::TopoID::operator>=(unsigned __int8 *uu1, unsigned __int8 *uu2)
{
  if (*(uu1 + 5) == *(uu2 + 5) && *(uu1 + 4) == *(uu2 + 4) && !uuid_compare(uu1, uu2))
  {
    return 1;
  }

  return Coherence_namespace::TopoID::operator>(uu1, uu2);
}

BOOL Coherence_namespace::TopoID::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = *(a2 + 20);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == v6)
  {
    return uuid_compare(a1, a2) == -1;
  }

  else
  {
    return v5 < v6;
  }
}

BOOL Coherence_namespace::TopoID::operator>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = *(a2 + 20);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == v6)
  {
    return uuid_compare(a1, a2) == 1;
  }

  else
  {
    return v5 > v6;
  }
}

void sub_1ADE26570(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void Coherence_namespace::TopoSubstring::~TopoSubstring(Coherence_namespace::TopoSubstring *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

void sub_1ADE26B68(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_1ADE26E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL Coherence_namespace::TopoSubstring::isStartNode(Coherence_namespace::TopoSubstring *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = 0;
  uuid_copy(dst, UUID_NULL);
  *uu2 = *dst;
  v7 = 0;
  v8 = 0;
  v6 = v4;
  return Coherence_namespace::TopoIDRange::operator==(this, uu2);
}

BOOL Coherence_namespace::TopoSubstring::isEndNode(Coherence_namespace::TopoSubstring *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 0;
  uuid_copy(dst, UUID_NULL);
  *uu2 = *dst;
  v6 = v4;
  v7 = 0xFFFFFFFFLL;
  return Coherence_namespace::TopoIDRange::operator==(this, uu2);
}

BOOL Coherence_namespace::TopoIDRange::contains(Coherence_namespace::TopoIDRange *this, const TopoID *uu1)
{
  if (uu1->replica.index != *(this + 4))
  {
    return 0;
  }

  if (uuid_compare(uu1->replica.uuid, this))
  {
    return 0;
  }

  clock = uu1->clock;
  v5 = *(this + 5);
  if (clock < v5)
  {
    return 0;
  }

  return clock < *(this + 6) + v5;
}

uint64_t *Coherence_namespace::TopoIDRange::intersection@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, const Coherence_namespace::TopoIDRange *uu2@<X1>)
{
  v3 = this;
  if (*(this + 6))
  {
    v5 = *(uu2 + 6) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || *(this + 4) != *(uu2 + 4) || (this = uuid_compare(this, uu2), this))
  {
    length = 0;
    *a1 = *v3;
    a1[2] = v3[2];
  }

  else
  {
    v9.location = *(v3 + 5);
    v9.length = *(v3 + 6);
    v10.location = *(uu2 + 5);
    v10.length = *(uu2 + 6);
    v8 = NSIntersectionRange(v9, v10);
    length = v8.length;
    this = v8.location;
    *a1 = *v3;
    *(a1 + 4) = *(v3 + 4);
    *(a1 + 5) = v8.location;
  }

  *(a1 + 6) = length;
  return this;
}

void sub_1ADE29160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void std::vector<_NSRange>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, a2);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1ADE295A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  Coherence_namespace::TopoSubstring::~TopoSubstring(va);
  _Unwind_Resume(a1);
}

void std::vector<Coherence_namespace::TopoSubstring *>::shrink_to_fit(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = (v7 - v8);
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void mergeStringData(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v19 = a1;
  v11 = a5;
  if (*(a3 + 40) != *(a3 + 32))
  {
    if (a2)
    {
      v12 = [v19 attributedString];
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32([v12 length]);
      *(a3 + 84) = v13;

      v14 = [v19 attributedString];
      v15 = v14;
      if (*(a4 + 40) == *(a4 + 32))
      {
        v16 = 0;
      }

      else
      {
        v16 = *(a4 + 24);
      }

      [v14 Coherence_appendStorage:v11 fromRange:{*(a4 + 84), v16}];
LABEL_14:

      goto LABEL_15;
    }

    if (*(a4 + 84) != -1 && ((a6 & 1) != 0 || *(a4 + 40) != *(a4 + 32)))
    {
      v17 = [v19 attributedString];
      v15 = v17;
      if (*(a3 + 40) == *(a3 + 32))
      {
        v18 = 0;
      }

      else
      {
        v18 = *(a3 + 24);
      }

      [v17 Coherence_mergeAttributesInRange:*(a3 + 84) withStorage:v18 fromRange:{v11, *(a4 + 84), *(a4 + 24)}];
      goto LABEL_14;
    }
  }

LABEL_15:
}

void sub_1ADE29F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(a15);

  _Unwind_Resume(a1);
}

uint64_t std::map<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *,Coherence_namespace::$_0,std::allocator<std::pair<Coherence_namespace::TopoIDRange const,Coherence_namespace::TopoSubstring *>>>::operator[](uint64_t a1, _OWORD *a2)
{
  v2 = *std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::__find_equal<Coherence_namespace::TopoIDRange>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2 + 64;
}

uint64_t compareSubstring(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (*(a2 + 40) == *(a2 + 32))
  {
    goto LABEL_47;
  }

  *v29 = *a2;
  *&v29[16] = *(a2 + 16);
  *&v29[24] = 1;
  v6 = *(a3 + 8);
  if (!v6)
  {
    goto LABEL_47;
  }

  v7 = a3 + 8;
  do
  {
    v8 = std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>::operator()[abi:ne200100](v6 + 32, v29);
    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if (!v8)
    {
      v7 = v6;
    }

    v6 = *(v6 + v9);
  }

  while (v6);
  if (v7 == a3 + 8)
  {
    goto LABEL_47;
  }

  v10 = Coherence_namespace::TopoIDRange::operator==(*(v7 + 64), a2);
  v11 = *(v7 + 64);
  if (v10)
  {
    if (*(v11 + 40) != *(v11 + 32))
    {
      if (*(a2 + 40) == *(a2 + 32))
      {
        v12 = 0;
      }

      else
      {
        v12 = *(a2 + 24);
      }

      v13 = (*(v5 + 2))(v5, *(v11 + 84), *(v11 + 24), *(a2 + 84), v12);
LABEL_17:
      if ((v13 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (!Coherence_namespace::TopoIDRange::intersects(v11, a2))
  {
    goto LABEL_47;
  }

  v14 = *(v7 + 64);
  if (*(v14 + 20) == *(a2 + 20))
  {
    if (*(v14 + 24) <= *(a2 + 24))
    {
      *v29 = *a2;
      *&v29[12] = *(a2 + 12);
      v31 = 0;
      v32 = 0;
      v30 = 0;
      std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v30, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
      v33 = 0;
      v34 = 0;
      v35 = 0;
      std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v33, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
      v36 = *(a2 + 80);
      v23 = 0;
      uuid_clear(uu);
      v24 = 0;
      v28 = 0;
      v27 = 0u;
      *v25 = 0u;
      *__p = 0u;
      Coherence_namespace::TopoSubstring::splitAt(v29, *(*(v7 + 64) + 24), uu);
      if (compareSubstring(v5, uu, a3) & 1) != 0 || (compareSubstring(v5, v29, a3))
      {
        Coherence_namespace::TopoSubstring::~TopoSubstring(uu);
        Coherence_namespace::TopoSubstring::~TopoSubstring(v29);
LABEL_31:
        LOBYTE(a3) = 1;
        goto LABEL_48;
      }

      Coherence_namespace::TopoSubstring::~TopoSubstring(uu);
      Coherence_namespace::TopoSubstring::~TopoSubstring(v29);
    }

    else if (*(v14 + 40) != *(v14 + 32))
    {
      v13 = (*(v5 + 2))(v5, *(v14 + 84));
      goto LABEL_17;
    }

LABEL_47:
    LOBYTE(a3) = 0;
    goto LABEL_48;
  }

  *v29 = *a2;
  *&v29[12] = *(a2 + 12);
  v31 = 0;
  v32 = 0;
  v30 = 0;
  std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v30, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v33, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  v36 = *(a2 + 80);
  v23 = 0;
  uuid_clear(uu);
  v24 = 0;
  v28 = 0;
  v27 = 0u;
  *__p = 0u;
  *v25 = 0u;
  v15 = *(v7 + 64);
  v16 = *(v15 + 20);
  v17 = *(a2 + 20);
  if (v16 >= v17)
  {
    Coherence_namespace::TopoSubstring::splitAt(v29, v16 - v17, uu);
    v19 = compareSubstring(v5, uu, a3);
  }

  else
  {
    v18 = *(v15 + 24) + v16;
    if (v18 >= *(a2 + 24) + v17)
    {
      if (*(v15 + 40) == *(v15 + 32))
      {
        v20 = 0;
        LOBYTE(a3) = 0;
        goto LABEL_38;
      }

      v19 = (*(v5 + 2))(v5, v17 - v16 + *(v15 + 84));
    }

    else
    {
      Coherence_namespace::TopoSubstring::splitAt(v29, v18 - v17, uu);
      if (compareSubstring(v5, uu, a3))
      {
LABEL_36:
        v20 = 0;
        LOBYTE(a3) = 1;
        goto LABEL_38;
      }

      v19 = compareSubstring(v5, v29, a3);
    }
  }

  if (v19)
  {
    goto LABEL_36;
  }

  v20 = 1;
LABEL_38:
  if (__p[1])
  {
    *&v27 = __p[1];
    operator delete(__p[1]);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v20)
  {
    goto LABEL_47;
  }

LABEL_48:

  return a3 & 1;
}

void sub_1ADE2A464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  Coherence_namespace::TopoSubstring::~TopoSubstring(&a21);

  _Unwind_Resume(a1);
}

void sub_1ADE2AAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  _Block_object_dispose(&a27, 8);
  std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(a34);

  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__19(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void mergeSubstring(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v11 = a2;
  *v30 = *a3;
  *&v30[16] = *(a3 + 16);
  *&v30[24] = 1;
  v12 = *(a4 + 8);
  if (v12)
  {
    v13 = a4 + 8;
    do
    {
      v14 = std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>::operator()[abi:ne200100](v12 + 32, v30);
      if (v14)
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      if (!v14)
      {
        v13 = v12;
      }

      v12 = *(v12 + v15);
    }

    while (v12);
  }

  else
  {
    v13 = a4 + 8;
  }

  if (v13 == a4 + 8)
  {
    goto LABEL_23;
  }

  if (Coherence_namespace::TopoIDRange::operator==(*(v13 + 64), a3))
  {
    v20 = v22;
    (*(v22 + 2))(v22, *(v13 + 64), a3);
    goto LABEL_24;
  }

  if (!Coherence_namespace::TopoIDRange::intersects(*(v13 + 64), a3))
  {
LABEL_23:
    v20 = v22;
    v11[2](v11, a3);
    goto LABEL_24;
  }

  v16 = *(v13 + 64);
  v17 = *(v16 + 5);
  v18 = *(a3 + 20);
  if (v17 != v18)
  {
    if (v17 < v18)
    {
      *uu = *(v13 + 64);
      if (a5)
      {
        operator new();
      }

      Coherence_namespace::TopoSubstring::splitAt(v16, v18 - v17);
    }

    *v30 = *a3;
    *&v30[12] = *(a3 + 12);
    v32 = 0;
    v33 = 0;
    v31 = 0;
    std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v31, *(a3 + 32), *(a3 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 40) - *(a3 + 32)) >> 3));
    v34 = 0;
    v35 = 0;
    v36 = 0;
    std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v34, *(a3 + 56), *(a3 + 64), (*(a3 + 64) - *(a3 + 56)) >> 3);
    v37 = *(a3 + 80);
    if (v30 != a3)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v34, *(a3 + 56), *(a3 + 64), (*(a3 + 64) - *(a3 + 56)) >> 3);
    }

    v24 = 0;
    uuid_clear(uu);
    v25 = 0;
    v29 = 0;
    v28 = 0u;
    *v26 = 0u;
    *__p = 0u;
    v20 = v22;
    Coherence_namespace::TopoSubstring::splitAt(v30, *(*(v13 + 64) + 20) - *(a3 + 20), uu);
    if (a6)
    {
      goto LABEL_33;
    }

LABEL_34:
    mergeSubstring(v22, v11, v30, a4, a5, 0);
    v21 = uu;
    goto LABEL_35;
  }

  v19 = *(a3 + 24);
  if (*(v16 + 6) > v19)
  {
    *uu = *(v13 + 64);
    if (a5)
    {
      operator new();
    }

    Coherence_namespace::TopoSubstring::splitAt(v16, v19);
  }

  *v30 = *a3;
  *&v30[12] = *(a3 + 12);
  v32 = 0;
  v33 = 0;
  v31 = 0;
  std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(&v31, *(a3 + 32), *(a3 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 40) - *(a3 + 32)) >> 3));
  v34 = 0;
  v35 = 0;
  v36 = 0;
  std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v34, *(a3 + 56), *(a3 + 64), (*(a3 + 64) - *(a3 + 56)) >> 3);
  v37 = *(a3 + 80);
  if (v30 != a3)
  {
    std::vector<Coherence_namespace::TopoSubstring *>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(&v34, *(a3 + 56), *(a3 + 64), (*(a3 + 64) - *(a3 + 56)) >> 3);
  }

  v24 = 0;
  uuid_clear(uu);
  v25 = 0;
  v29 = 0;
  v28 = 0u;
  *v26 = 0u;
  *__p = 0u;
  v20 = v22;
  Coherence_namespace::TopoSubstring::splitAt(v30, *(*(v13 + 64) + 24), uu);
  if (!a6)
  {
    goto LABEL_34;
  }

LABEL_33:
  mergeSubstring(v20, v11, uu, a4, a5, 1);
  v21 = v30;
LABEL_35:
  mergeSubstring(v20, v11, v21, a4, a5, a6);
  if (__p[1])
  {
    *&v28 = __p[1];
    operator delete(__p[1]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

LABEL_24:
}

void sub_1ADE2B284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  Coherence_namespace::TopoSubstring::~TopoSubstring(&a23);

  _Unwind_Resume(a1);
}

void mergeAddNewSubstring(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  a1;
  a2;
  operator new();
}

void sub_1ADE2BE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  _Block_object_dispose(&a25, 8);
  std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(a32);

  _Unwind_Resume(a1);
}

void sub_1ADE2C3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v19 = v16;

  _Unwind_Resume(a1);
}

void sub_1ADE2C918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__split_buffer<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::~__split_buffer(va);

  _Unwind_Resume(a1);
}

void sub_1ADE2CED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, ...)
{
  va_start(va, a43);

  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v47 - 232), 8);
  _Block_object_dispose((v47 - 168), 8);
  _Block_object_dispose((v47 - 136), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__27(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void minIdPath(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a1;
  v85 = *a1;
  v6 = *(a1 + 4);
  v7 = *(v5 + 5);
  __p = 0;
  v71 = 0;
  v72 = 0;
  v67 = 0u;
  v68 = 0u;
  v69 = 1.0;
  v9 = v5 + 7;
  v8 = *(v5 + 7);
  v10 = *(v5 + 8);
  if (v10 == v8)
  {
    v11 = 0;
LABEL_77:
    if (v4)
    {
      goto LABEL_78;
    }

    goto LABEL_80;
  }

  v63 = (v5 + 4);
  v11 = 0;
  while (1)
  {
    v12 = v10 - v8;
    if ((v10 - v8) >= 9)
    {
      v13 = v12 >> 3;
      if ((v12 >> 3) >= 2)
      {
        v64 = v11;
        v14 = 0;
        do
        {
          v15 = v9;
          v16 = *v9;
          v17 = *(*v9 + 8 * v14);
          v18 = *(v17 + 80);
          if (v18 < 2)
          {
            ++v14;
          }

          else
          {
            *(v17 + 80) = v18 - 1;
            v19 = v16 + 8 * v14;
            v20 = v10 - v19 - 8;
            if (v10 != (v19 + 8))
            {
              v21 = v5;
              memmove((v16 + 8 * v14), (v19 + 8), v10 - v19 - 8);
              v5 = v21;
            }

            v10 = (v19 + v20);
            *(v5 + 8) = v19 + v20;
            --v13;
          }

          v9 = v15;
        }

        while (v14 < v13);
        v11 = v64;
        v10 = *v63;
        v8 = *v15;
      }
    }

    v22 = v10 - v8;
    if (v22 == 8)
    {
      break;
    }

    v71 = __p;
    v24 = v9;
    std::vector<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *>>::reserve(&__p, v22 >> 3);
    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::clear(&v67);
    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::__rehash<true>(&v67, vcvtps_u32_f32((*v63 - *v24) / v69));
    v65 = v24;
    v25 = *v24;
    v26 = *v63;
    while (v25 != v26)
    {
      *&v83 = *v25;
      *&v80 = &v83;
      std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring * const&>,std::tuple<>>(&v67, &v83, &std::piecewise_construct, &v80)[3] = 1;
      Coherence_namespace::TopoReplica::TopoReplica(&v77, 0, 0);
      v78.n128_u32[1] = 0;
      v27 = v83;
      v78.n128_u64[1] = v83;
      v79 = 0;
      v82 = 0;
      v80 = v77;
      v81 = v78;
      v28 = v71;
      if (v71 >= v72)
      {
        v32 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 4);
        v33 = v32 + 1;
        if (v32 + 1 > 0x555555555555555)
        {
          std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v72 - __p) >> 4) > v33)
        {
          v33 = 0x5555555555555556 * ((v72 - __p) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v72 - __p) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v34 = 0x555555555555555;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *>>>(&__p, v34);
        }

        v35 = 16 * ((v71 - __p) >> 4);
        *v35 = v80;
        *(v35 + 16) = v81;
        *(v35 + 32) = v82;
        *(v35 + 40) = v27;
        v31 = 48 * v32 + 48;
        v36 = (v35 - (v71 - __p));
        memcpy(v36, __p, v71 - __p);
        v37 = __p;
        __p = v36;
        v71 = v31;
        v72 = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        v29 = v78;
        v30 = v79;
        *v71 = v77;
        v28[1] = v29;
        v28[2].n128_u64[0] = v30;
        v28[2].n128_u64[1] = v27;
        v31 = &v28[3];
      }

      v71 = v31;
      ++v25;
    }

    do
    {
      while (1)
      {
        v80 = 0u;
        v81 = 0u;
        LODWORD(v82) = 1065353216;
        v38 = v68;
        if (v68)
        {
          do
          {
            v39 = v38[2];
            v40 = v38[3];
            v66 = v39;
            if (v40 >= *(v39 + 80))
            {
              minIdPath(v39, v4, &v77);
              v41 = __p;
              v42 = v71;
              v43 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 4);
              if (v71 != __p)
              {
                v44 = 0;
                if (v43 <= 1)
                {
                  v45 = 1;
                }

                else
                {
                  v45 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 4);
                }

                do
                {
                  if (*(__p + v44 + 24) == v66 && !uuid_is_null(__p + v44))
                  {
                    v75 = v77;
                    v76 = v78.n128_u64[0];
                    v73 = *(__p + v44);
                    v74 = *(__p + v44 + 16);
                    minimumPermenantID(&v75, &v73, &v83);
                    v77 = v83;
                    v78.n128_u64[0] = v84;
                  }

                  v44 += 48;
                  --v45;
                }

                while (v45);
                v41 = __p;
                v42 = v71;
                v43 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 4);
              }

              if (v42 != v41)
              {
                v46 = v66;
                if (v43 <= 1)
                {
                  v43 = 1;
                }

                do
                {
                  if (v41[1].n128_u64[1] == v46)
                  {
                    *v41 = v77;
                    v41[1] = v78;
                    v41[2].n128_u64[0] = v79;
                  }

                  v41 += 3;
                  --v43;
                }

                while (v43);
              }

              v75 = v85;
              v76 = __PAIR64__(v7, v6);
              v73 = v77;
              v74 = v78.n128_u64[0];
              minimumPermenantID(&v75, &v73, &v83);
              v85 = v83;
              v6 = v84;
              v7 = HIDWORD(v84);
              v40 = v79;
              v66 = v78.n128_i64[1];
            }

            v47 = std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::find<Coherence_namespace::TopoSubstring *>(&v80, &v66);
            if (v47)
            {
              v47[3] += v40;
            }

            else
            {
              *&v77 = &v66;
              std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring * const&>,std::tuple<>>(&v80, &v66, &std::piecewise_construct, &v77)[3] = v40;
            }

            v38 = *v38;
          }

          while (v38);
          v48 = *&v82;
          v49 = v81.n128_u64[0];
        }

        else
        {
          v49 = 0;
          v48 = 1.0;
        }

        v69 = v48;
        std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,void *> *>>(&v67, v49, 0);
        if (!v4)
        {
          break;
        }

        std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(&v80);
        if (*(&v68 + 1) <= 1uLL)
        {
          goto LABEL_73;
        }
      }

      v50 = __p;
      v51 = v71;
      v52 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 4);
      if (v71 - __p < 1)
      {
        v57 = 0;
        v53 = 0;
      }

      else
      {
        v53 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 4);
        while (1)
        {
          v54 = operator new(48 * v53, MEMORY[0x1E69E5398]);
          if (v54)
          {
            break;
          }

          v55 = v53 >> 1;
          v56 = v53 > 1;
          v53 >>= 1;
          if (!v56)
          {
            v57 = 0;
            v53 = v55;
            goto LABEL_65;
          }
        }

        v57 = v54;
      }

LABEL_65:
      std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(v50, v51, v52, v57, v53);
      if (v57)
      {
        operator delete(v57);
      }

      std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(&v80);
    }

    while (*(&v68 + 1) > 1uLL);
    if (*v63 != *v65)
    {
      v58 = 0;
      v59 = *v63 - *v65;
      if (v59 <= 1)
      {
        v59 = 1;
      }

      v60 = 40;
      do
      {
        (*v65)[v58++] = *(__p + v60);
        v60 += 48;
      }

      while (v59 != v58);
    }

LABEL_73:
    v5 = *(v68 + 16);
    v11 = *(v68 + 24);
    if (v11 < *(v5 + 20))
    {
      goto LABEL_77;
    }

LABEL_74:
    v9 = v5 + 7;
    v8 = *(v5 + 7);
    v10 = *(v5 + 8);
    v63 = (v5 + 4);
    if (v10 == v8)
    {
      goto LABEL_77;
    }
  }

  v5 = *v8;
  if (*(*v8 + 20) <= 1u)
  {
    v77 = v85;
    v78.n128_u64[0] = __PAIR64__(v7, v6);
    v83 = *v5;
    v23 = v5;
    v84 = *(v5 + 2);
    minimumPermenantID(&v77, &v83, &v80);
    v85 = v80;
    v6 = v81.n128_u32[0];
    v7 = v81.n128_u32[1];
    v5 = v23;
    goto LABEL_74;
  }

  v11 = 1;
  if (!v4)
  {
    goto LABEL_80;
  }

LABEL_78:
  if (v6)
  {
    v61 = v5;
    v80 = v85;
    v81.n128_u64[0] = __PAIR64__(v7, v6);
    (*(v4 + 2))(v4, &v80);
    v5 = v61;
  }

LABEL_80:
  *a3 = v85;
  *(a3 + 16) = v6;
  *(a3 + 20) = v7;
  *(a3 + 24) = v5;
  *(a3 + 32) = v11;
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(&v67);
  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }
}

void sub_1ADE2DAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(&a13);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1ADE2E030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v22 + 48);
  _Block_object_dispose((v23 - 128), 8);

  _Unwind_Resume(a1);
}

id Coherence_namespace::TopoReplica::toString(Coherence_namespace::TopoReplica *this)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:this];
  v4 = [v3 Coherence_shortDescription];
  v5 = [v2 stringWithFormat:@"%@.%d", v4, *(this + 4)];

  return v5;
}

void sub_1ADE2F1DC(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_1ADE2F910(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

uint64_t *std::vector<Coherence_namespace::TopoID>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Coherence_namespace::TopoID>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1ADE2FD9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Coherence_namespace::TopoID>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(a1, a2);
  }

  std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
}

BOOL Coherence_namespace::TopoIDRange::operator==(unsigned __int8 *uu1, unsigned __int8 *uu2)
{
  if (*(uu1 + 5) != *(uu2 + 5))
  {
    return 0;
  }

  if (*(uu1 + 4) == *(uu2 + 4) && !uuid_compare(uu1, uu2))
  {
    return *(uu1 + 6) == *(uu2 + 6);
  }

  return 0;
}

void **Coherence_namespace::TopoSubstring::splitAt(char **this, int a2, char **a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(this + 4);
  v7 = *(this + 5) + a2;
  v8 = *(this + 6) - a2;
  *(this + 6) = a2;
  *a3 = *this;
  *(a3 + 4) = v6;
  *(a3 + 5) = v7;
  *(a3 + 6) = v8;
  v9 = this[5] - this[4];
  if (v9)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  *(a3 + 21) = v10 + *(this + 21);
  std::vector<Coherence_namespace::TopoID>::reserve(a3 + 4, 0xAAAAAAAAAAAAAAABLL * (v9 >> 3));
  v11 = this[4];
  v12 = this[5];
  if (v11 != v12)
  {
    v13 = a3[5];
    do
    {
      __src = *v11;
      v14 = *(v11 + 5);
      v30 = *(v11 + 4);
      v15 = v14 + a2;
      v16 = a3[6];
      if (v13 >= v16)
      {
        v18 = a3[4];
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v18) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v18) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>((a3 + 4), v22);
        }

        v23 = 24 * v19;
        *v23 = __src;
        *(v23 + 16) = v30;
        *(v23 + 20) = v15;
        v13 = (24 * v19 + 24);
        v24 = a3[4];
        v25 = (a3[5] - v24);
        v26 = (v23 - v25);
        memcpy((v23 - v25), v24, v25);
        v27 = a3[4];
        a3[4] = v26;
        a3[5] = v13;
        a3[6] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        v17 = *(v11 + 4);
        *v13 = *v11;
        *(v13 + 4) = v17;
        *(v13 + 5) = v15;
        v13 += 24;
      }

      a3[5] = v13;
      v11 += 24;
    }

    while (v11 != v12);
  }

  if (a3 != this)
  {
    std::vector<Coherence_namespace::TopoSubstring *>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(a3 + 7, this[7], this[8], (this[8] - this[7]) >> 3);
  }

  *&__src = a3;
  result = std::vector<Coherence_namespace::TopoSubstring *>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring * const*,Coherence_namespace::TopoSubstring * const*>(this + 7, &__src, &__src + 8, 1uLL);
  *(a3 + 20) = 1;
  return result;
}

void std::vector<Coherence_namespace::TopoID>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(a1, a2);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }
}

BOOL Coherence_namespace::TopoIDRange::intersects(Coherence_namespace::TopoIDRange *this, const Coherence_namespace::TopoIDRange *uu1)
{
  if (*(uu1 + 4) != *(this + 4))
  {
    return 0;
  }

  if (uuid_compare(uu1, this))
  {
    return 0;
  }

  v5 = *(this + 5);
  v6 = *(uu1 + 5);
  return v6 < *(this + 6) + v5 && *(uu1 + 6) + v6 > v5;
}

BOOL std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>::operator()[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *uu1 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a1 + 24);
  v14 = *a2;
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v10 = v4 != 0;
  v8 = v4 - 1;
  if (!v10)
  {
    v8 = 0;
  }

  v18 = v2;
  v19 = v8 + v3;
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
  }

  v15 = v5;
  v16 = v9 + v6;
  v10 = v2 >= v5;
  if (v2 == v5)
  {
    v11 = uuid_compare(uu1, &v14);
    if (!v11)
    {
      return v19 < v16;
    }

    v12 = v11;
  }

  else
  {
    v12 = -1;
    if (v10)
    {
      v12 = 1;
    }
  }

  return v12 == -1;
}

uint64_t *std::vector<Coherence_namespace::TopoSubstring *>::__init_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Coherence_namespace::TopoSubstring *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1ADE302FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::map<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *,Coherence_namespace::$_0,std::allocator<std::pair<Coherence_namespace::TopoIDRange const,Coherence_namespace::TopoSubstring *>>>::erase[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);

  operator delete(a2);
}

uint64_t std::map<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *,Coherence_namespace::$_0,std::allocator<std::pair<Coherence_namespace::TopoIDRange const,Coherence_namespace::TopoSubstring *>>>::insert[abi:ne200100]<std::pair<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,0>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::__find_equal<Coherence_namespace::TopoIDRange>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t *std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::__find_equal<Coherence_namespace::TopoIDRange>(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v7 = v4;
        *uu1 = *a3;
        v8 = *(a3 + 16);
        v9 = *(a3 + 20);
        v10 = *(a3 + 24);
        v19 = *(v7 + 2);
        v11 = *(v7 + 12);
        v12 = *(v7 + 13);
        v13 = *(v7 + 14);
        v16 = v10 != 0;
        v14 = v10 - 1;
        if (!v16)
        {
          v14 = 0;
        }

        v23 = v8;
        v24 = v14 + v9;
        v15 = v13 - 1;
        if (!v13)
        {
          v15 = 0;
        }

        v20 = v11;
        v21 = v15 + v12;
        v16 = v8 >= v11;
        if (v8 == v11)
        {
          break;
        }

LABEL_13:
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_9:
        if (std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>::operator()[abi:ne200100]((v7 + 4), a3))
        {
          v5 = v7 + 1;
          v4 = v7[1];
          if (v4)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      v17 = uuid_compare(uu1, &v19);
      if (!v17)
      {
        v16 = v24 >= v21;
        goto LABEL_13;
      }

      if (v17 != -1)
      {
        goto LABEL_9;
      }

LABEL_14:
      v4 = *v7;
      v5 = v7;
      if (!*v7)
      {
        goto LABEL_17;
      }
    }
  }

  v7 = (a1 + 8);
LABEL_17:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void mergeAddChildren(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  if (v4 != v5)
  {
    v7 = (a3 + 8);
    do
    {
      v8 = *v4;
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      while (v9 != v10)
      {
        v11 = *v9;
        if (*(v8 + 20) == *(*v9 + 20) && *(v8 + 16) == *(v11 + 16) && !uuid_compare(v8, v11))
        {
          goto LABEL_18;
        }

        ++v9;
      }

      v16 = *v8;
      v17 = *(v8 + 16);
      v18 = 1;
      v12 = *v7;
      v13 = v7;
      if (!*v7)
      {
        goto LABEL_20;
      }

      do
      {
        v14 = std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>::operator()[abi:ne200100]((v12 + 4), &v16);
        v15 = v14;
        if (!v14)
        {
          v13 = v12;
        }

        v12 = v12[v15];
      }

      while (v12);
      if (v13 == v7)
      {
LABEL_20:
        mergeAddChildren();
      }

      *&v16 = v13[8];
      std::vector<Coherence_namespace::TopoSubstring *>::push_back[abi:ne200100](a1 + 56, &v16);
      ++*(v16 + 80);
LABEL_18:
      ++v4;
    }

    while (v4 != v5);
  }
}

uint64_t minimumPermenantID@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    *a3 = *result;
    v4 = *(result + 16);
  }

  else if (*(result + 16))
  {
    *a3 = *a2;
    v4 = *(a2 + 2);
  }

  else
  {
    v8 = *result;
    v9 = *(result + 16);
    v6 = *a2;
    v7 = *(a2 + 2);
    result = Coherence_namespace::TopoID::operator<(&v8, &v6);
    if (result)
    {
      v5 = &v8;
    }

    else
    {
      v5 = &v6;
    }

    *a3 = *v5;
    v4 = *(v5 + 2);
  }

  *(a3 + 16) = v4;
  return result;
}

void std::vector<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *>>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *>>>(a1, a2);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring * const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[3];
        v8[2] = a2[2];
        v8[3] = v9;
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__node_insert_multi(a1, v8);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v11 = *v8;
        operator delete(v8);
        v8 = v11;
      }

      while (v11);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__emplace_multi<std::pair<Coherence_namespace::TopoSubstring * const,unsigned long> const&>(a1);
  }
}

void sub_1ADE311B0(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  a2[1] = v6;
  inserted = std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__node_insert_multi_prepare(a1, v6, v4);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__rehash<false>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__do_rehash<false>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned long>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1ADE31754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(__n128 *result, __n128 *a2, unint64_t a3, __int128 *a4, int64_t a5)
{
  v65 = *MEMORY[0x1E69E9840];
  if (a3 < 2)
  {
    return *&v9;
  }

  v6 = result;
  if (a3 != 2)
  {
    if (a3 > 0)
    {
      v13 = a4;
      v14 = a3 >> 1;
      v15 = &result[3 * (a3 >> 1)];
      v16 = a3 >> 1;
      if (a3 > a5)
      {
        std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(result, v15, v16, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(&v6[3 * (a3 >> 1)], a2, a3 - (a3 >> 1), v13, a5);

        *&v9 = std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(v6, &v6[3 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v13, a5).n128_u64[0];
        return *&v9;
      }

      std::__stable_sort_move<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(result, v15, v16, a4);
      v38 = &v13[3 * v14];
      std::__stable_sort_move<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(&v6[3 * (a3 >> 1)], a2, a3 - (a3 >> 1), v38);
      v39 = &v13[3 * a3];
      v40 = v38;
      while (1)
      {
        if (v40 == v39)
        {
          if (v13 != v38)
          {
            v51 = 0;
            do
            {
              v52 = &v13[v51];
              v53 = &v6[v51];
              v9 = v13[v51];
              v54 = v13[v51 + 1];
              *(v53 + 4) = *&v13[v51 + 2];
              *v53 = v9;
              v53[1] = v54;
              *(v53 + 5) = *(&v13[v51 + 2] + 1);
              v51 += 3;
            }

            while (v52 + 3 != v38);
          }

          return *&v9;
        }

        v41 = *v40;
        v42 = v40[2];
        v63 = v40[1];
        v64 = v42;
        v62 = v41;
        v43 = v13[2];
        v44 = *v13;
        v60 = v13[1];
        v61 = v43;
        v59 = v44;
        if (v63.n128_u64[1] == *(&v60 + 1))
        {
          if (!Coherence_namespace::TopoID::operator<(&v62, &v59))
          {
LABEL_39:
            v9 = *v13;
            v46 = v13[1];
            *(v6 + 4) = *(v13 + 4);
            *v6 = v9;
            v6[1] = v46;
            *(v6 + 5) = *(v13 + 5);
            v13 += 3;
            goto LABEL_40;
          }
        }

        else if (v63.n128_u64[1] >= *(&v60 + 1))
        {
          goto LABEL_39;
        }

        v9 = *v40;
        v45 = v40[1];
        *(v6 + 4) = *(v40 + 4);
        *v6 = v9;
        v6[1] = v45;
        *(v6 + 5) = *(v40 + 5);
        v40 += 3;
LABEL_40:
        v6 += 3;
        if (v13 == v38)
        {
          if (v40 != v39)
          {
            v47 = 0;
            do
            {
              v48 = &v40[v47];
              v49 = &v6[v47];
              v9 = v40[v47];
              v50 = v40[v47 + 1];
              *(v49 + 4) = *&v40[v47 + 2];
              *v49 = v9;
              v49[1] = v50;
              *(v49 + 5) = *(&v40[v47 + 2] + 1);
              v47 += 3;
            }

            while (v48 + 3 != v39);
          }

          return *&v9;
        }
      }
    }

    if (result == a2)
    {
      return *&v9;
    }

    v23 = result + 3;
    if (&result[3] == a2)
    {
      return *&v9;
    }

    v24 = 0;
    v25 = result;
LABEL_17:
    v26 = v25;
    v25 = v23;
    v27 = *v23;
    v28 = v23[2];
    v63 = v23[1];
    v64 = v28;
    v62 = v27;
    v9 = v26[2];
    v29 = *v26;
    v60 = v26[1];
    v61 = v9;
    v59 = v29;
    if (v63.n128_u64[1] == *(&v60 + 1))
    {
      if (!Coherence_namespace::TopoID::operator<(&v62, &v59))
      {
        goto LABEL_30;
      }
    }

    else if (v63.n128_u64[1] >= *(&v60 + 1))
    {
      goto LABEL_30;
    }

    v56 = *v25;
    v57 = v25[1];
    v58 = *(v25 + 4);
    v30 = *(v26 + 11);
    v31 = *v26;
    v32 = v26[1];
    *(v25 + 4) = *(v26 + 4);
    *v25 = v31;
    v25[1] = v32;
    *(v25 + 5) = *(v26 + 5);
    if (v26 == v6)
    {
LABEL_28:
      v26 = v6;
      goto LABEL_29;
    }

    v33 = v24;
    while (1)
    {
      v34 = v6 + v33;
      v62 = v56;
      v63 = v57;
      v64.n128_u64[0] = v58;
      v64.n128_u64[1] = v30;
      v35 = *(v6 + v33 - 16);
      v36 = *(v6 + v33 - 48);
      v60 = *(v6 + v33 - 32);
      v61 = v35;
      v59 = v36;
      if (v57.n128_u64[1] == *(&v60 + 1))
      {
        if (!Coherence_namespace::TopoID::operator<(&v62, &v59))
        {
          v26 = (v6 + v33);
LABEL_29:
          *&v9 = v56;
          *v26 = v56;
          v26[1] = v57;
          *(v26 + 4) = v58;
          *(v26 + 5) = v30;
LABEL_30:
          v23 = (v25 + 3);
          v24 += 48;
          if (v25 + 3 == a2)
          {
            return *&v9;
          }

          goto LABEL_17;
        }
      }

      else if (v57.n128_u64[1] >= *(&v60 + 1))
      {
        goto LABEL_29;
      }

      v26 -= 3;
      v37 = *(v34 - 2);
      *v34 = *(v34 - 3);
      *(v34 + 1) = v37;
      *(v34 + 4) = *(v34 - 2);
      *(v6 + v33 + 40) = *(v6 + v33 - 8);
      v33 -= 48;
      if (!v33)
      {
        goto LABEL_28;
      }
    }
  }

  v7 = a2[-3];
  v8 = a2[-1];
  v63 = a2[-2];
  v64 = v8;
  v62 = v7;
  v9 = result[2];
  v10 = *result;
  v60 = result[1];
  v61 = v9;
  v59 = v10;
  if (v63.n128_u64[1] == *(&v60 + 1))
  {
    if (!Coherence_namespace::TopoID::operator<(&v62, &v59))
    {
      return *&v9;
    }
  }

  else if (v63.n128_u64[1] >= *(&v60 + 1))
  {
    return *&v9;
  }

  n128_u64 = a2[-3].n128_u64;
  v9 = *v6;
  v18 = v6[1];
  v19 = *(v6 + 4);
  v20 = a2[-1].n128_u64[0];
  v21 = a2[-2];
  *v6 = a2[-3];
  v6[1] = v21;
  *(v6 + 4) = v20;
  *(n128_u64 + 4) = v19;
  *n128_u64 = v9;
  n128_u64[1] = v18;
  v22 = *(v6 + 5);
  *(v6 + 5) = a2[-1].n128_u64[1];
  a2[-1].n128_u64[1] = v22;
  return *&v9;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(uint64_t result, __int128 *a2, unint64_t a3, __int128 *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v7 = result;
  if (a3 == 2)
  {
    v10 = a2 - 3;
    v11 = *(a2 - 3);
    v12 = *(a2 - 1);
    v62 = *(a2 - 2);
    v63 = v12;
    v61 = v11;
    v13 = *(result + 32);
    v14 = *result;
    v59 = *(result + 16);
    v60 = v13;
    v58 = v14;
    if (*(&v62 + 1) == *(&v59 + 1))
    {
      result = Coherence_namespace::TopoID::operator<(&v61, &v58);
      if (result)
      {
        goto LABEL_7;
      }
    }

    else if (*(&v62 + 1) < *(&v59 + 1))
    {
LABEL_7:
      v15 = *v10;
      v16 = *(a2 - 1);
      v4[1] = *(a2 - 2);
      v4[2] = v16;
      *v4 = v15;
      v17 = *v7;
      v18 = v7[1];
      v19 = v7[2];
LABEL_45:
      v4[4] = v18;
      v4[5] = v19;
      v4[3] = v17;
      return result;
    }

    v56 = *v7;
    v57 = v7[2];
    v4[1] = v7[1];
    v4[2] = v57;
    *v4 = v56;
    v17 = *v10;
    v18 = *(a2 - 2);
    v19 = *(a2 - 1);
    goto LABEL_45;
  }

  if (a3 == 1)
  {
    v8 = *result;
    v9 = *(result + 32);
    a4[1] = *(result + 16);
    a4[2] = v9;
    *a4 = v8;
    return result;
  }

  if (a3 > 8)
  {
    v42 = (result + 48 * (a3 >> 1));
    std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(result, v42, a3 >> 1, a4, a3 >> 1);
    result = std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(&v7[3 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v4[3 * (a3 >> 1)], a3 - (a3 >> 1));
    v43 = &v7[3 * (a3 >> 1)];
    while (1)
    {
      if (v43 == a2)
      {
        while (v7 != v42)
        {
          v52 = *v7;
          v53 = v7[2];
          v4[1] = v7[1];
          v4[2] = v53;
          *v4 = v52;
          v4 += 3;
          v7 += 3;
        }

        return result;
      }

      v44 = *v43;
      v45 = v43[2];
      v62 = v43[1];
      v63 = v45;
      v61 = v44;
      v46 = v7[2];
      v47 = *v7;
      v59 = v7[1];
      v60 = v46;
      v58 = v47;
      if (*(&v62 + 1) == *(&v59 + 1))
      {
        result = Coherence_namespace::TopoID::operator<(&v61, &v58);
        if ((result & 1) == 0)
        {
LABEL_34:
          v50 = *v7;
          v51 = v7[2];
          v4[1] = v7[1];
          v4[2] = v51;
          *v4 = v50;
          v7 += 3;
          goto LABEL_35;
        }
      }

      else if (*(&v62 + 1) >= *(&v59 + 1))
      {
        goto LABEL_34;
      }

      v48 = *v43;
      v49 = v43[2];
      v4[1] = v43[1];
      v4[2] = v49;
      *v4 = v48;
      v43 += 3;
LABEL_35:
      v4 += 3;
      if (v7 == v42)
      {
        while (v43 != a2)
        {
          v54 = *v43;
          v55 = v43[2];
          v4[1] = v43[1];
          v4[2] = v55;
          *v4 = v54;
          v4 += 3;
          v43 += 3;
        }

        return result;
      }
    }
  }

  if (result == a2)
  {
    return result;
  }

  v20 = *result;
  v21 = *(result + 32);
  a4[1] = *(result + 16);
  a4[2] = v21;
  *a4 = v20;
  v22 = (result + 48);
  if ((result + 48) == a2)
  {
    return result;
  }

  v23 = 0;
  v24 = a4;
  do
  {
    v25 = v22;
    v26 = v24 + 3;
    v27 = *v22;
    v28 = v22[2];
    v62 = v22[1];
    v63 = v28;
    v29 = v24[1];
    v58 = *v24;
    v59 = v29;
    v60 = v24[2];
    v61 = v27;
    if (*(&v62 + 1) == *(&v29 + 1))
    {
      result = Coherence_namespace::TopoID::operator<(&v61, &v58);
      if ((result & 1) == 0)
      {
LABEL_23:
        v38 = *v25;
        v39 = v25[2];
        v24[4] = v25[1];
        v24[5] = v39;
        *v26 = v38;
        goto LABEL_26;
      }
    }

    else if (*(&v62 + 1) >= *(&v59 + 1))
    {
      goto LABEL_23;
    }

    v30 = v24[1];
    *v26 = *v24;
    v24[4] = v30;
    v24[5] = v24[2];
    v31 = v4;
    if (v24 == v4)
    {
      goto LABEL_25;
    }

    v32 = v23;
    while (1)
    {
      v33 = v4 + v32;
      v34 = *v25;
      v35 = v25[2];
      v62 = v25[1];
      v63 = v35;
      v36 = *(v4 + v32 - 32);
      v58 = *(v4 + v32 - 48);
      v59 = v36;
      v60 = *(v4 + v32 - 16);
      v61 = v34;
      if (*(&v62 + 1) != *(&v36 + 1))
      {
        if (*(&v62 + 1) >= *(&v59 + 1))
        {
          v31 = v24;
          goto LABEL_25;
        }

        goto LABEL_20;
      }

      result = Coherence_namespace::TopoID::operator<(&v61, &v58);
      if ((result & 1) == 0)
      {
        break;
      }

LABEL_20:
      v24 -= 3;
      v37 = *(v33 - 2);
      *v33 = *(v33 - 3);
      *(v33 + 1) = v37;
      *(v33 + 4) = *(v33 - 2);
      *(v4 + v32 + 40) = *(v4 + v32 - 8);
      v32 -= 48;
      if (!v32)
      {
        v31 = v4;
        goto LABEL_25;
      }
    }

    v31 = (v4 + v32);
LABEL_25:
    v40 = *v25;
    v41 = v25[1];
    *(v31 + 4) = *(v25 + 4);
    *v31 = v40;
    v31[1] = v41;
    *(v31 + 5) = *(v7 + 11);
LABEL_26:
    v22 = v25 + 3;
    v23 += 48;
    v24 = v26;
    v7 = v25;
  }

  while (v25 + 3 != a2);
  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, __n128 *a6, uint64_t a7)
{
  v87 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    return result;
  }

  v7 = a5;
  do
  {
    if (v7 <= a7 || a4 <= a7)
    {
      if (a4 > v7)
      {
        if (a2 == a3)
        {
          return result;
        }

        v40 = 0;
        do
        {
          v41 = &a6[v40];
          result = a2[v40];
          v42 = a2[v40 + 2];
          v41[1] = a2[v40 + 1];
          v41[2] = v42;
          *v41 = result;
          v40 += 3;
        }

        while (&a2[v40] != a3);
        v43 = &a3[-1].n128_u64[1];
        v44 = &a6[v40];
        while (1)
        {
          if (a2 == a1)
          {
            for (; v44 != a6; v44 -= 3)
            {
              result = v44[-3];
              v71 = v44[-2];
              *(v43 - 1) = v44[-1].n128_u64[0];
              *(v43 - 3) = v71;
              *(v43 - 5) = result;
              *v43 = v44[-1].n128_u64[1];
              v43 -= 6;
            }

            return result;
          }

          v45 = a2 - 3;
          v46 = v44[-3];
          v47 = v44[-1];
          v85 = v44[-2];
          v86 = v47;
          v84 = v46;
          v48 = a2[-1];
          v49 = a2[-3];
          v82 = a2[-2];
          v83 = v48;
          v81 = v49;
          v50 = a6;
          if (v85.n128_u64[1] == v82.n128_u64[1])
          {
            v52 = Coherence_namespace::TopoID::operator<(&v84, &v81);
            v50 = a6;
            if (!v52)
            {
LABEL_54:
              v45 = v44 - 3;
              v51 = v44;
              v44 -= 3;
              goto LABEL_55;
            }
          }

          else if (v85.n128_u64[1] >= v82.n128_u64[1])
          {
            goto LABEL_54;
          }

          v51 = a2;
          a2 -= 3;
LABEL_55:
          result = *v45;
          v53 = v45[1];
          *(v43 - 1) = v45[2].n128_u64[0];
          *(v43 - 3) = v53;
          *(v43 - 5) = result;
          *v43 = v51[-1].n128_u64[1];
          v43 -= 6;
          if (v44 == v50)
          {
            return result;
          }
        }
      }

      if (a2 == a1)
      {
        return result;
      }

      v54 = a6;
      v55 = a1;
      do
      {
        v56 = *v55;
        v57 = *(v55 + 32);
        v54[1] = *(v55 + 16);
        v54[2] = v57;
        *v54 = v56;
        v54 += 3;
        v55 += 48;
      }

      while (v55 != a2);
      while (1)
      {
        if (a2 == a3)
        {
          v72 = 0;
          do
          {
            v73 = &a1[v72];
            v74 = &a6[v72];
            result = a6[v72];
            v75 = a6[v72 + 1];
            v73[2].n128_u64[0] = a6[v72 + 2].n128_u64[0];
            *v73 = result;
            v73[1] = v75;
            v73[2].n128_u64[1] = a6[v72 + 2].n128_u64[1];
            v72 += 3;
          }

          while (&v54[-3] != v74);
          return result;
        }

        v58 = *a2;
        v59 = a2[2];
        v85 = a2[1];
        v86 = v59;
        v84 = v58;
        v60 = a6;
        v61 = a6[2];
        v62 = *a6;
        v82 = a6[1];
        v83 = v61;
        v81 = v62;
        if (v85.n128_u64[1] == v82.n128_u64[1])
        {
          v64 = Coherence_namespace::TopoID::operator<(&v84, &v81);
          v60 = a6;
          if (!v64)
          {
LABEL_65:
            result = *v60;
            v65 = v60[1];
            a1[2].n128_u64[0] = v60[2].n128_u64[0];
            *a1 = result;
            a1[1] = v65;
            a1[2].n128_u64[1] = v60[2].n128_u64[1];
            v60 += 3;
            goto LABEL_66;
          }
        }

        else if (v85.n128_u64[1] >= v82.n128_u64[1])
        {
          goto LABEL_65;
        }

        result = *a2;
        v63 = a2[1];
        a1[2].n128_u64[0] = a2[2].n128_u64[0];
        *a1 = result;
        a1[1] = v63;
        a1[2].n128_u64[1] = a2[2].n128_u64[1];
        a2 += 3;
LABEL_66:
        a1 += 3;
        a6 = v60;
        if (v54 == v60)
        {
          return result;
        }
      }
    }

    if (!a4)
    {
      return result;
    }

    v11 = 0;
    v12 = -a4;
    while (1)
    {
      v13 = *a2;
      v14 = a2[2];
      v85 = a2[1];
      v86 = v14;
      v84 = v13;
      result = *(v11 + a1 + 32);
      v16 = *(v11 + a1);
      v82 = *(v11 + a1 + 16);
      v83 = result;
      v81 = v16;
      if (v85.n128_u64[1] == v82.n128_u64[1])
      {
        break;
      }

      if (v85.n128_u64[1] < v82.n128_u64[1])
      {
        goto LABEL_14;
      }

LABEL_11:
      v11 += 3;
      if (__CFADD__(v12++, 1))
      {
        return result;
      }
    }

    if (!Coherence_namespace::TopoID::operator<(&v84, &v81))
    {
      goto LABEL_11;
    }

LABEL_14:
    v76 = v11 + a1;
    if (-v12 < v7)
    {
      v77 = v7 / 2;
      v18 = &a2[3 * (v7 / 2)];
      v19 = a2;
      if ((a2 - a1) == v11)
      {
LABEL_16:
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v19 - a1 - v11) >> 4);
        goto LABEL_36;
      }

      v29 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1 - v11) >> 4);
      v19 = (v11 + a1);
      while (2)
      {
        v30 = v29 >> 1;
        v31 = &v19[3 * (v29 >> 1)];
        v32 = *v18;
        v33 = v18[2];
        v85 = v18[1];
        v86 = v33;
        v84 = v32;
        v34 = v31[2];
        v35 = *v31;
        v82 = v31[1];
        v83 = v34;
        v81 = v35;
        if (v85.n128_u64[1] == v82.n128_u64[1])
        {
          if (!Coherence_namespace::TopoID::operator<(&v84, &v81))
          {
LABEL_30:
            v19 = v31 + 3;
            v30 = v29 + ~v30;
          }
        }

        else if (v85.n128_u64[1] >= v82.n128_u64[1])
        {
          goto LABEL_30;
        }

        v29 = v30;
        if (!v30)
        {
          goto LABEL_16;
        }

        continue;
      }
    }

    if (v12 == -1)
    {
      v66 = (v11 + a1);
      v67 = *(v11 + a1);
      v68 = *(v11 + a1 + 16);
      v86.n128_u64[0] = *(v11[2].n128_u64 + a1);
      v84 = v67;
      v85 = v68;
      result = *a2;
      v69 = a2[1];
      v66[2].n128_u64[0] = a2[2].n128_u64[0];
      *v66 = result;
      v66[1] = v69;
      *a2 = v84;
      result.n128_u64[0] = v85.n128_u64[0];
      a2[1] = v85;
      a2[2].n128_u64[0] = v86.n128_u64[0];
      v70 = *(&v11[2].n128_u64[1] + a1);
      v66[2].n128_u64[1] = a2[2].n128_u64[1];
      a2[2].n128_u64[1] = v70;
      return result;
    }

    v20 = -v12 / 2;
    v18 = a2;
    if (a2 == a3)
    {
      goto LABEL_35;
    }

    v21 = (&a1[3 * v20] + v11);
    v22 = 0xAAAAAAAAAAAAAAABLL * (a3 - a2);
    v18 = a2;
    while (2)
    {
      v23 = v22 >> 1;
      v24 = &v18[3 * (v22 >> 1)];
      v25 = *v24;
      v26 = v24[2];
      v85 = v24[1];
      v86 = v26;
      v84 = v25;
      v27 = v21[2];
      v28 = *v21;
      v82 = v21[1];
      v83 = v27;
      v81 = v28;
      if (v85.n128_u64[1] == v82.n128_u64[1])
      {
        if (Coherence_namespace::TopoID::operator<(&v84, &v81))
        {
LABEL_22:
          v18 = v24 + 3;
          v23 = v22 + ~v23;
        }
      }

      else if (v85.n128_u64[1] < v82.n128_u64[1])
      {
        goto LABEL_22;
      }

      v22 = v23;
      if (v23)
      {
        continue;
      }

      break;
    }

    v20 = -v12 / 2;
LABEL_35:
    v77 = 0xAAAAAAAAAAAAAAABLL * ((v18 - a2) >> 4);
    v19 = (&a1[3 * v20] + v11);
LABEL_36:
    v36 = v18;
    if (v19 != a2)
    {
      v36 = v19;
      if (a2 != v18)
      {
        v36 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(v19, a2, v18);
      }
    }

    a4 = -(v20 + v12);
    v37 = v20;
    v38 = v7 - v77;
    if ((v37 + v77) >= (v7 - (v37 + v77) - v12))
    {
      v39 = v37;
      result.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(v36, v18, a3, a4, v7 - v77, a6, a7).n128_u64[0];
      v18 = v19;
      a4 = v39;
      a3 = v36;
      a1 = v76;
      v38 = v77;
    }

    else
    {
      result.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(Coherence_namespace::TopoSubstring *,void({block_pointer})(Coherence_namespace::TopoID))::$_0 &,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(v11 + a1, v19, v36, v37, v77, a6, a7).n128_u64[0];
      a1 = v36;
    }

    v7 = v38;
    a2 = v18;
  }

  while (v38);
  return result;
}

__int128 *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<minIdPathData,Coherence_namespace::TopoSubstring *> *>>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  result = (a1 + 48);
  v4 = result;
  v5 = a2;
  while (1)
  {
    v6 = *(v4 - 3);
    v7 = *(v4 - 2);
    v8 = *(v4 - 2);
    v9 = *(v5 + 4);
    v10 = v5[1];
    *(v4 - 3) = *v5;
    *(v4 - 2) = v10;
    *(v4 - 2) = v9;
    *(v5 + 4) = v8;
    *v5 = v6;
    v5[1] = v7;
    v11 = *(v4 - 1);
    *(v4 - 1) = *(v5 + 5);
    *(v5 + 5) = v11;
    v5 += 3;
    if (v5 == a3)
    {
      break;
    }

    if (v4 == a2)
    {
      a2 = v5;
    }

    v4 += 3;
    result += 3;
  }

  if (v4 != a2)
  {
    v12 = a2;
    do
    {
      while (1)
      {
        v18 = *(v4 + 4);
        v16 = *v4;
        v17 = v4[1];
        v13 = *v12;
        v14 = v12[1];
        *(v4 + 4) = *(v12 + 4);
        *v4 = v13;
        v4[1] = v14;
        *(v12 + 4) = v18;
        *v12 = v16;
        v12[1] = v17;
        v15 = *(v4 + 5);
        *(v4 + 5) = *(v12 + 5);
        *(v12 + 5) = v15;
        v4 += 3;
        v12 += 3;
        if (v12 == a3)
        {
          break;
        }

        if (v4 == a2)
        {
          a2 = v12;
        }
      }

      v12 = a2;
    }

    while (v4 != a2);
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v8 = Coherence_namespace::TopoID::operator<(a2, a1);
  v9 = Coherence_namespace::TopoID::operator<(a3, a2);
  if (v8)
  {
    if (v9)
    {
      v10 = a1[1].n128_u64[0];
      v11 = *a1;
      v12 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v12;
LABEL_9:
      *a3 = v11;
      a3[1].n128_u64[0] = v10;
      goto LABEL_10;
    }

    v19 = a1[1].n128_u64[0];
    v20 = *a1;
    v21 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v21;
    *a2 = v20;
    a2[1].n128_u64[0] = v19;
    if (Coherence_namespace::TopoID::operator<(a3, a2))
    {
      v10 = a2[1].n128_u64[0];
      v11 = *a2;
      v22 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v22;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v13 = a2[1].n128_u64[0];
    v14 = *a2;
    v15 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v15;
    *a3 = v14;
    a3[1].n128_u64[0] = v13;
    if (Coherence_namespace::TopoID::operator<(a2, a1))
    {
      v16 = a1[1].n128_u64[0];
      v17 = *a1;
      v18 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v18;
      *a2 = v17;
      a2[1].n128_u64[0] = v16;
    }
  }

LABEL_10:
  if (Coherence_namespace::TopoID::operator<(a4, a3))
  {
    v24 = a3[1].n128_i64[0];
    v25 = *a3;
    v26 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v26;
    *a4 = v25;
    a4[1].n128_u64[0] = v24;
    if (Coherence_namespace::TopoID::operator<(a3, a2))
    {
      v27 = a2[1].n128_u64[0];
      v28 = *a2;
      v29 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v29;
      *a3 = v28;
      a3[1].n128_u64[0] = v27;
      if (Coherence_namespace::TopoID::operator<(a2, a1))
      {
        v30 = a1[1].n128_u64[0];
        result = *a1;
        v31 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v31;
        *a2 = result;
        a2[1].n128_u64[0] = v30;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(uint64_t result, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = result;
    v4 = result + 24;
    if (result + 24 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        result = Coherence_namespace::TopoID::operator<(v4, v7);
        if (result)
        {
          v11 = *v6;
          v12 = *(v6 + 16);
          v8 = v5;
          while (1)
          {
            v9 = v3 + v8;
            *(v9 + 24) = *(v3 + v8);
            *(v9 + 40) = *(v3 + v8 + 16);
            if (!v8)
            {
              break;
            }

            v8 -= 24;
            result = Coherence_namespace::TopoID::operator<(&v11, v8 + v3);
            if ((result & 1) == 0)
            {
              v10 = v3 + v8 + 24;
              goto LABEL_10;
            }
          }

          v10 = v3;
LABEL_10:
          *v10 = v11;
          *(v10 + 16) = v12;
        }

        v4 = v6 + 24;
        v5 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = result;
    v4 = result + 24;
    if (result + 24 != a2)
    {
      v5 = result - 24;
      do
      {
        v6 = v3;
        v3 = v4;
        result = Coherence_namespace::TopoID::operator<(v4, v6);
        if (result)
        {
          v8 = *v3;
          v9 = *(v3 + 16);
          v7 = v5;
          do
          {
            *(v7 + 48) = *(v7 + 24);
            *(v7 + 64) = *(v7 + 40);
            result = Coherence_namespace::TopoID::operator<(&v8, v7);
            v7 -= 24;
          }

          while ((result & 1) != 0);
          *(v7 + 48) = v8;
          *(v7 + 64) = v9;
        }

        v4 = v3 + 24;
        v5 += 24;
      }

      while (v3 + 24 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,Coherence_namespace::TopoID *,std::__less<void,void> &>(__int128 *a1, unint64_t a2)
{
  v2 = a2;
  v18 = *MEMORY[0x1E69E9840];
  v14 = *a1;
  v15 = *(a1 + 2);
  if (Coherence_namespace::TopoID::operator<(&v14, a2 - 24))
  {
    v4 = a1;
    do
    {
      v4 += 24;
    }

    while (!Coherence_namespace::TopoID::operator<(&v14, v4));
  }

  else
  {
    v5 = a1 + 24;
    do
    {
      v4 = v5;
      if (v5 >= v2)
      {
        break;
      }

      v6 = Coherence_namespace::TopoID::operator<(&v14, v5);
      v5 = v4 + 24;
    }

    while (!v6);
  }

  if (v4 < v2)
  {
    do
    {
      v2 -= 24;
    }

    while (Coherence_namespace::TopoID::operator<(&v14, v2));
  }

  while (v4 < v2)
  {
    v7 = *v4;
    v17 = *(v4 + 16);
    v16 = v7;
    v8 = *v2;
    *(v4 + 16) = *(v2 + 16);
    *v4 = v8;
    v9 = v16;
    *(v2 + 16) = v17;
    *v2 = v9;
    do
    {
      v4 += 24;
    }

    while (!Coherence_namespace::TopoID::operator<(&v14, v4));
    do
    {
      v2 -= 24;
    }

    while (Coherence_namespace::TopoID::operator<(&v14, v2));
  }

  v10 = (v4 - 24);
  if ((v4 - 24) != a1)
  {
    v11 = *v10;
    *(a1 + 2) = *(v4 - 8);
    *a1 = v11;
  }

  v12 = v14;
  *(v4 - 8) = v15;
  *v10 = v12;
  return v4;
}

char *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,Coherence_namespace::TopoID *,std::__less<void,void> &>(char *a1, unint64_t a2)
{
  v4 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v15 = *a1;
  v16 = *(a1 + 2);
  do
  {
    v4 += 24;
  }

  while (Coherence_namespace::TopoID::operator<(&a1[v4], &v15));
  v5 = &a1[v4];
  v6 = &a1[v4 - 24];
  if (v4 == 24)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (!Coherence_namespace::TopoID::operator<(a2, &v15));
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!Coherence_namespace::TopoID::operator<(a2, &v15));
  }

  if (v5 < a2)
  {
    v7 = &a1[v4];
    v8 = a2;
    do
    {
      v17 = *v7;
      v9 = v17;
      v18 = *(v7 + 2);
      v10 = v18;
      v11 = *(v8 + 16);
      *v7 = *v8;
      *(v7 + 2) = v11;
      *(v8 + 16) = v10;
      *v8 = v9;
      do
      {
        v7 += 24;
      }

      while (Coherence_namespace::TopoID::operator<(v7, &v15));
      do
      {
        v8 -= 24;
      }

      while (!Coherence_namespace::TopoID::operator<(v8, &v15));
    }

    while (v7 < v8);
    v6 = v7 - 24;
  }

  if (v6 != a1)
  {
    v12 = *v6;
    *(a1 + 2) = *(v6 + 2);
    *a1 = v12;
  }

  v13 = v15;
  *(v6 + 2) = v16;
  *v6 = v13;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 24;
        v14 = Coherence_namespace::TopoID::operator<(a1 + 24, a1);
        v15 = Coherence_namespace::TopoID::operator<(v5, a1 + 24);
        if (v14)
        {
          if (!v15)
          {
            v33 = *(a1 + 16);
            v34 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v34;
            *(a1 + 40) = v33;
            if (!Coherence_namespace::TopoID::operator<(v5, a1 + 24))
            {
              return 1;
            }

            v16 = *(a1 + 40);
            v17 = *(a1 + 24);
            v35 = *(v5 + 16);
            *(a1 + 24) = *v5;
            *(a1 + 40) = v35;
            goto LABEL_16;
          }

LABEL_15:
          v16 = *(a1 + 16);
          v17 = *a1;
          v18 = *(v5 + 16);
          *a1 = *v5;
          *(a1 + 16) = v18;
LABEL_16:
          *v5 = v17;
          *(v5 + 16) = v16;
          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v24 = *(a1 + 40);
        v25 = *(a1 + 24);
        v26 = *(v5 + 16);
        *(a1 + 24) = *v5;
        *(a1 + 40) = v26;
        *v5 = v25;
        *(v5 + 16) = v24;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24));
        return 1;
      case 5:
        v6 = a2 - 24;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        if (!Coherence_namespace::TopoID::operator<(v6, a1 + 72))
        {
          return 1;
        }

        v7 = *(a1 + 88);
        v8 = *(a1 + 72);
        v9 = *(v6 + 16);
        *(a1 + 72) = *v6;
        *(a1 + 88) = v9;
        *v6 = v8;
        *(v6 + 16) = v7;
        if (!Coherence_namespace::TopoID::operator<(a1 + 72, a1 + 48))
        {
          return 1;
        }

        v10 = *(a1 + 64);
        v11 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v11;
        *(a1 + 88) = v10;
        if (!Coherence_namespace::TopoID::operator<(a1 + 48, a1 + 24))
        {
          return 1;
        }

        v12 = *(a1 + 40);
        v13 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v13;
        *(a1 + 64) = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (Coherence_namespace::TopoID::operator<(a1 + 24, a1))
    {
      v27 = *(a1 + 16);
      v28 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v28;
      *(a1 + 40) = v27;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 24;
    if (!Coherence_namespace::TopoID::operator<(a2 - 24, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v19 = (a1 + 48);
  v20 = Coherence_namespace::TopoID::operator<(a1 + 24, a1);
  v21 = Coherence_namespace::TopoID::operator<(a1 + 48, a1 + 24);
  if (v20)
  {
    if (v21)
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *v19;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v36 = *(a1 + 16);
      v37 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v37;
      *(a1 + 40) = v36;
      if (!Coherence_namespace::TopoID::operator<(a1 + 48, a1 + 24))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *v19;
      *(a1 + 40) = *(a1 + 64);
    }

    *v19 = v23;
    *(a1 + 64) = v22;
  }

  else if (v21)
  {
    v29 = *(a1 + 40);
    v30 = *(a1 + 24);
    *(a1 + 24) = *v19;
    *(a1 + 40) = *(a1 + 64);
    *v19 = v30;
    *(a1 + 64) = v29;
    if (Coherence_namespace::TopoID::operator<(a1 + 24, a1))
    {
      v31 = *(a1 + 16);
      v32 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v32;
      *(a1 + 40) = v31;
    }
  }

LABEL_33:
  v38 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if (Coherence_namespace::TopoID::operator<(v38, v19))
    {
      v45 = *v38;
      v46 = *(v38 + 16);
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 72) = *(a1 + v41 + 48);
        *(v42 + 88) = *(a1 + v41 + 64);
        if (v41 == -48)
        {
          break;
        }

        v41 -= 24;
        if (!Coherence_namespace::TopoID::operator<(&v45, v42 + 24))
        {
          v43 = a1 + v41 + 72;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      *v43 = v45;
      *(v43 + 16) = v46;
      if (++v40 == 8)
      {
        return v38 + 24 == a2;
      }
    }

    v19 = v38;
    v39 += 24;
    v38 += 24;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,Coherence_namespace::TopoID *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 24 * v10;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(a1, a4, v9, v12);
        v12 -= 24;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (Coherence_namespace::TopoID::operator<(v13, a1))
        {
          v14 = *(v13 + 16);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 16) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(a1, a4, v9, a1);
        }

        v13 += 24;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = (a2 - 24);
      do
      {
        v23 = *a1;
        v24 = *(a1 + 16);
        v19 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(a1, a4, v17);
        if (v18 == v19)
        {
          *v19 = v23;
          *(v19 + 2) = v24;
        }

        else
        {
          v20 = *v18;
          *(v19 + 2) = *(v18 + 2);
          *v19 = v20;
          *v18 = v23;
          *(v18 + 2) = v24;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(a1, (v19 + 24), a4, 0xAAAAAAAAAAAAAAABLL * (&v19[-a1 + 24] >> 3));
        }

        v18 = (v18 - 24);
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v9 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v10 = a1 + 24 * v9;
      v11 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v11 < a3 && Coherence_namespace::TopoID::operator<(a1 + 24 * v9, v10 + 24))
      {
        v10 += 24;
        v9 = v11;
      }

      if (!Coherence_namespace::TopoID::operator<(v10, v5))
      {
        v17 = *v5;
        v18 = *(v5 + 16);
        do
        {
          v13 = v10;
          v14 = *v10;
          *(v5 + 16) = *(v10 + 16);
          *v5 = v14;
          if (v7 < v9)
          {
            break;
          }

          v15 = (2 * v9) | 1;
          v10 = a1 + 24 * v15;
          v16 = 2 * v9 + 2;
          if (v16 < a3 && Coherence_namespace::TopoID::operator<(a1 + 24 * v15, v10 + 24))
          {
            v10 += 24;
            v15 = v16;
          }

          v5 = v13;
          v9 = v15;
        }

        while (!Coherence_namespace::TopoID::operator<(v10, &v17));
        result = v17;
        v13[1].n128_u64[0] = v18;
        *v13 = result;
      }
    }
  }

  return result;
}

char *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 24 * v5;
    v8 = v7 + 24;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = v7 + 48;
      if (Coherence_namespace::TopoID::operator<((v7 + 24), (v7 + 48)))
      {
        v8 = v11;
        v9 = v10;
      }
    }

    v12 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v12;
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a4 >= 2)
  {
    v5 = (a4 - 2) >> 1;
    v6 = a1 + 24 * v5;
    v7 = a2 - 24;
    if (Coherence_namespace::TopoID::operator<(v6, a2 - 24))
    {
      v11 = *v7;
      v12 = *(v7 + 16);
      do
      {
        v9 = v6;
        v10 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v10;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = a1 + 24 * v5;
        v7 = v9;
      }

      while (Coherence_namespace::TopoID::operator<(v6, &v11));
      result = *&v11;
      *v9 = v11;
      *(v9 + 16) = v12;
    }
  }

  return result;
}

void std::__split_buffer<Coherence_namespace::TopoSubstring **>::emplace_back<Coherence_namespace::TopoSubstring **&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring **>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<Coherence_namespace::TopoSubstring **>::emplace_front<Coherence_namespace::TopoSubstring **>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring **>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<Coherence_namespace::TopoSubstring **>::emplace_front<Coherence_namespace::TopoSubstring **&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring **>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring * const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoIDRange>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring * const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t *std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_NSRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1ADE34000(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_NSRange>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, a2);
  }

  std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<Coherence_namespace::TopoID,Coherence_namespace::TopoID>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[CRTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a1->n128_u64[0] >= a2->n128_u64[0])
  {
    if (v6 < v7)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v6 < v7)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a2->n128_u64[0] < *a3)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a3 < *a4)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a2->n128_u64[0] < *a3)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a4 < *a5)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a3 < *a4)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a2->n128_u64[0] < *a3)
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a1->n128_u64[0] < a2->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[CRTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = v9;
      if (*a1 < v7)
      {
        if (v7 >= v8)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (*(a1 + 16) >= v4->n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v7 >= v8)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*a1 < *(a1 + 16))
      {
        v42 = *a1;
        *a1 = *v6;
        *v6 = v42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[CRTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (*a1 >= v17)
    {
      if (v17 < v19)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v21 < v6->n128_u64[0])
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v17 >= v19)
    {
      v39 = *a1;
      *a1 = *v6;
      *v6 = v39;
      if (*(a1 + 16) >= v19)
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v18->n128_u64[0] >= v20->n128_u64[0])
    {
      return 1;
    }

    v40 = *v18;
    *v18 = *v20;
    *v20 = v40;
    if (v6->n128_u64[0] >= v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v6;
    *v6 = *v18;
    *v18 = v41;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*a1 >= v5)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (*a1 >= v14)
  {
    if (v14 < v12)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v15 < v13->n128_u64[0])
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v14 >= v12)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (*(a1 + 16) >= v12)
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    v34 = v11->n128_u64[0];
    v35 = v30->n128_u64[0];
    if (v34 < v30->n128_u64[0])
    {
      v36 = v31;
      while (1)
      {
        *(a1 + v36 + 48) = *(a1 + v36 + 32);
        if (v36 == -32)
        {
          break;
        }

        v37 = *(a1 + v36 + 16);
        v36 -= 16;
        if (v37 >= v35)
        {
          v38 = (a1 + v36 + 48);
          goto LABEL_41;
        }
      }

      v38 = a1;
LABEL_41:
      *v38 = v33;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(*a1);
    std::__tree<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,std::__map_value_compare<Coherence_namespace::TopoIDRange,std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>,Coherence_namespace::$_0,true>,std::allocator<std::__value_type<Coherence_namespace::TopoIDRange,Coherence_namespace::TopoSubstring *>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *(v8 + 12) = *(v7 + 12);
      *v8 = v9;
      v10 = *(v7 + 32);
      *(v7 + 32) = 0;
      *(v8 + 32) = v10;
      v7 += 40;
      v8 += 40;
    }

    while (v7 != v4);
    do
    {

      v5 += 40;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::__unordered_map_hasher<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::hash<Coherence_namespace::TopoID>,std::equal_to<Coherence_namespace::TopoID>,true>,std::__unordered_map_equal<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::equal_to<Coherence_namespace::TopoID>,std::hash<Coherence_namespace::TopoID>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>>>::__emplace_unique_key_args<Coherence_namespace::TopoID,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoID const&>,std::tuple<>>(void *a1, uint64_t a2, uint64_t a3, _OWORD **a4)
{
  v6 = CFHashBytes();
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_20;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (*(v13 + 9) != *(a2 + 20) || *(v13 + 8) != *(a2 + 16) || uuid_compare(v13 + 16, a2))
  {
    goto LABEL_19;
  }

  return v13;
}

uint64_t *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::__unordered_map_hasher<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::hash<Coherence_namespace::TopoID>,std::equal_to<Coherence_namespace::TopoID>,true>,std::__unordered_map_equal<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>,std::equal_to<Coherence_namespace::TopoID>,std::hash<Coherence_namespace::TopoID>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoID,std::pair<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring *>>>>::find<Coherence_namespace::TopoID>(void *a1, uint64_t a2)
{
  v4 = CFHashBytes();
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (*(i + 9) == *(a2 + 20) && *(i + 8) == *(a2 + 16) && !uuid_compare(i + 16, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_1ADE35AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = _TtC9Coherence34CRTTMergeableStringUndoEditCommand;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1ADE35C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__emplace_back_slow_path<objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong} const&>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 12) = *(a2 + 12);
    *v3 = v4;
    *(v3 + 32) = *(a2 + 4);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t *std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::push_back[abi:ne200100](uint64_t *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    v16[4] = result;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>>(result, v12);
    }

    v13 = 40 * v9;
    v16[0] = 0;
    v16[1] = v13;
    v16[3] = 0;
    v14 = *a2;
    *(v13 + 12) = *(a2 + 12);
    *v13 = v14;
    v15 = *(a2 + 4);
    *(a2 + 4) = 0;
    *(v13 + 32) = v15;
    v16[2] = 40 * v9 + 40;
    std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__swap_out_circular_buffer(result, v16);
    v8 = v3[1];
    result = std::__split_buffer<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::~__split_buffer(v16);
  }

  else
  {
    v6 = *a2;
    *(v4 + 12) = *(a2 + 12);
    *v4 = v6;
    v7 = *(a2 + 4);
    *(a2 + 4) = 0;
    *(v4 + 32) = v7;
    v8 = v4 + 40;
  }

  v3[1] = v8;
  return result;
}

void sub_1ADE36774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_48c119_ZTSNSt3__14pairIN19Coherence_namespace11TopoIDRangeEU8__strongPU37objcproto26CRTTMergeableStringStorage11objc_objectEE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 48) = v3;
  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

void sub_1ADE36A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 5;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void **std::vector<Coherence_namespace::TopoIDRange>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoIDRange*,Coherence_namespace::TopoIDRange*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *result) >> 2) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x924924924924924)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x492492492492492)
      {
        v11 = 0x924924924924924;
      }

      else
      {
        v11 = v10;
      }

      std::vector<Coherence_namespace::TopoIDRange>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<Coherence_namespace::TopoIDRange>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoIDRange>>(a1, a2);
  }

  std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__emplace_back_slow_path<objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong} const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v11[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>>(a1, v6);
  }

  v7 = 40 * v2;
  v11[0] = 0;
  v11[1] = v7;
  v11[3] = 0;
  v8 = *a2;
  *(v7 + 12) = *(a2 + 12);
  *v7 = v8;
  *(v7 + 32) = *(a2 + 4);
  v11[2] = v7 + 40;
  std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__swap_out_circular_buffer(a1, v11);
  v9 = a1[1];
  std::__split_buffer<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::~__split_buffer(v11);
  return v9;
}

void sub_1ADE36FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1ADE37358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::find<Coherence_namespace::TopoReplica>(void *a1, uint64_t a2)
{
  v4 = CFHashBytes();
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (*(i + 8) == *(a2 + 16) && !uuid_compare(i + 16, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::__emplace_unique_key_args<Coherence_namespace::TopoReplica,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoReplica const&>,std::tuple<>>(void *a1, uint64_t a2, uint64_t a3, __int128 **a4)
{
  v6 = CFHashBytes();
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_19;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_19;
    }

LABEL_18:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_19;
    }
  }

  if (*(v13 + 8) != *(a2 + 16) || uuid_compare(v13 + 16, a2))
  {
    goto LABEL_18;
  }

  return v13;
}

void sub_1ADE377A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1ADE38DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

BOOL Coherence_namespace::TopoIDRange::operator!=(unsigned __int8 *uu1, unsigned __int8 *uu2)
{
  if (*(uu1 + 5) != *(uu2 + 5))
  {
    return 1;
  }

  if (*(uu1 + 4) == *(uu2 + 4) && !uuid_compare(uu1, uu2))
  {
    return *(uu1 + 6) != *(uu2 + 6);
  }

  return 1;
}

void sub_1ADE39F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  Coherence_namespace::TopoSubstring::~TopoSubstring(&a21);

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>,std::__unordered_map_hasher<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoID>,std::equal_to<Coherence_namespace::TopoID>,true>,std::__unordered_map_equal<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoID>,std::hash<Coherence_namespace::TopoID>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>>>::__emplace_unique_key_args<Coherence_namespace::TopoID,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoID const&>,std::tuple<>>(void *a1, uint64_t a2, uint64_t a3, _OWORD **a4)
{
  v6 = CFHashBytes();
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_20;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (*(v13 + 9) != *(a2 + 20) || *(v13 + 8) != *(a2 + 16) || uuid_compare(v13 + 16, a2))
  {
    goto LABEL_19;
  }

  return v13;
}

uint64_t *std::vector<Coherence_namespace::TopoID>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<Coherence_namespace::TopoID>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

unsigned __int8 *std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(unsigned __int8 *uu1, unsigned __int8 *a2, unsigned __int8 *uu2)
{
  for (i = uu1; i != a2; i += 24)
  {
    if (*(i + 5) == *(uu2 + 5) && *(i + 4) == *(uu2 + 4) && !uuid_compare(i, uu2))
    {
      break;
    }
  }

  return i;
}

void sub_1ADE3AB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _TtC9Coherence24CRTTMergeableStringRange;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1ADE3B118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t Coherence_namespace::TopoID::TopoID(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_msgSend_replica(v3);
  Coherence_namespace::TopoReplica::TopoReplica(a1, v4);

  *(a1 + 20) = [v3 counter];
  return a1;
}

_TtC9Coherence13ObjCTimestamp *Coherence_namespace::TopoID::objc(Coherence_namespace::TopoID *this)
{
  v2 = [_TtC9Coherence13ObjCTimestamp alloc];
  v3 = Coherence_namespace::TopoReplica::objc(this);
  v4 = [(ObjCTimestamp *)v2 initWithReplica:v3 counter:*(this + 5)];

  return v4;
}

void Coherence_namespace::TopoSubstring::removeAddsNotIn(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v6 != v7)
  {
    while (1)
    {
      if (std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(*(a2 + 32), *(a2 + 40), v6) == *(a2 + 40))
      {
        v8 = Coherence_namespace::TopoID::objc(v6);
        v9 = [v5 contains:v8];

        if (v9)
        {
          break;
        }
      }

      v6 = (v6 + 24);
      if (v6 == v7)
      {
        v6 = v7;
        goto LABEL_6;
      }
    }

    if (v6 != v7)
    {
      for (i = (v6 + 24); i != v7; i = (i + 24))
      {
        if (std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(*(a2 + 32), *(a2 + 40), i) == *(a2 + 40))
        {
          v11 = Coherence_namespace::TopoID::objc(i);
          v12 = [v5 contains:v11];

          if (v12)
          {
            continue;
          }
        }

        v13 = *i;
        *(v6 + 2) = *(i + 2);
        *v6 = v13;
        v6 = (v6 + 24);
      }
    }
  }

LABEL_6:
  if (v6 != *(a1 + 40))
  {
    *(a1 + 40) = v6;
  }
}

unsigned __int8 *Coherence_namespace::TopoSubstring::removeDeltaAddsNotIn(unsigned __int8 *this, unsigned __int8 **a2)
{
  v2 = this;
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  v4 = *(this + 5);
  if (v3 == v4)
  {
    v6 = *(this + 4);
  }

  else
  {
    v6 = *(this + 5);
    v7 = (v3 + 24);
    while (1)
    {
      v13 = -1;
      uuid_copy(dst, v7 - 24);
      v8 = *(v7 - 1);
      *uu2 = *dst;
      v15 = v13;
      v16 = v8;
      this = std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(a2[4], a2[5], uu2);
      if (this != a2[5])
      {
        break;
      }

      v9 = v7 == v4;
      v7 = (v7 + 24);
      if (v9)
      {
        goto LABEL_16;
      }
    }

    if ((v7 - 24) != v4)
    {
      if (v7 == v4)
      {
        v6 = v7 - 24;
      }

      else
      {
        v6 = v7 - 24;
        do
        {
          v13 = -1;
          uuid_copy(dst, v7);
          v10 = *(v7 + 5);
          *uu2 = *dst;
          v15 = v13;
          v16 = v10;
          this = std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(a2[4], a2[5], uu2);
          if (this == a2[5])
          {
            v11 = *v7;
            *(v6 + 16) = *(v7 + 2);
            *v6 = v11;
            v6 += 24;
          }

          v7 = (v7 + 24);
        }

        while (v7 != v4);
      }
    }
  }

LABEL_16:
  if (v6 != *(v2 + 5))
  {
    *(v2 + 5) = v6;
  }

  return this;
}

void Coherence_namespace::TopoSubstring::addAddsIn(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a2 + 32);
  for (i = *(a2 + 40); v6 != i; v6 = (v6 + 24))
  {
    v8 = *v6;
    v17 = v6[1].n128_u64[0];
    v16 = v8;
    if (v17 != -1)
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      if (v9 == v10)
      {
        v10 = *(a1 + 40);
      }

      else
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
        do
        {
          v12 = v10 + 24 * (v11 >> 1);
          v13 = Coherence_namespace::TopoID::operator<(v12, &v16);
          if (v13)
          {
            v11 += ~(v11 >> 1);
          }

          else
          {
            v11 >>= 1;
          }

          if (v13)
          {
            v10 = (v12 + 24);
          }
        }

        while (v11);
        v9 = *(a1 + 40);
      }

      if (v9 == v10 || v17 != v10[1].n128_u64[0] || uuid_compare(&v16, v10))
      {
        v14 = Coherence_namespace::TopoID::objc(&v16);
        v15 = [v5 contains:{v14, *&v16}];

        if ((v15 & 1) == 0)
        {
          std::vector<Coherence_namespace::TopoID>::insert((a1 + 32), v10, &v16);
        }
      }
    }
  }
}

__n128 *std::vector<Coherence_namespace::TopoID>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    v15 = 2 * v14;
    if (2 * v14 <= v12)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v14 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v15;
    }

    v33 = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(a1, v16);
    }

    v30 = 0;
    v31 = 8 * (v13 >> 3);
    v32 = v31;
    std::__split_buffer<Coherence_namespace::TopoID>::emplace_back<Coherence_namespace::TopoID const&>(&v30, a3);
    v18 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v23;
    *(&v32 + 1) = v24;
    v30 = v23;
    v31 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else if (__src == v6)
  {
    v17 = *a3;
    *(v6 + 16) = a3[1].n128_u64[0];
    *v6 = v17;
    a1[1] = v6 + 24;
  }

  else
  {
    v8 = &__src[1].n128_i8[8];
    if (v6 < 0x18)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = (v6 + 24);
      v10 = *(v6 - 24);
      *(v6 + 16) = *(v6 - 8);
      *v6 = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1].n128_i8[8], __src, v6 - v8);
      v9 = a1[1];
    }

    v25 = v9 <= a3 || v4 > a3;
    v26 = 24;
    if (v25)
    {
      v26 = 0;
    }

    v27 = a3 + v26;
    v28 = *v27;
    v4[1].n128_u64[0] = *(v27 + 2);
    *v4 = v28;
  }

  return v4;
}

void sub_1ADE3C258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Coherence_namespace::TopoSubstring::hasNewAddedByFrom(Coherence_namespace::TopoSubstring *this, const Coherence_namespace::TopoSubstring *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  v2 = *(this + 5);
  if ((v2 - v3) > *(a2 + 5) - *(a2 + 4))
  {
    return 1;
  }

  if (v3 != v2)
  {
    while (1)
    {
      v6 = *v3;
      v13 = *(v3 + 2);
      v12 = v6;
      if (v13 != -1)
      {
        v7 = *(a2 + 4);
        v8 = *(a2 + 5) - v7;
        if (!v8)
        {
          break;
        }

        v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
        do
        {
          v10 = v7 + 24 * (v9 >> 1);
          v11 = Coherence_namespace::TopoID::operator<(v10, &v12);
          if (v11)
          {
            v9 += ~(v9 >> 1);
          }

          else
          {
            v9 >>= 1;
          }

          if (v11)
          {
            v7 = v10 + 24;
          }
        }

        while (v9);
        if (v7 == *(a2 + 5) || v13 != *(v7 + 16) || uuid_compare(&v12, v7))
        {
          break;
        }
      }

      v3 = (v3 + 24);
      if (v3 == v2)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

__n128 std::__split_buffer<Coherence_namespace::TopoID>::emplace_back<Coherence_namespace::TopoID const&>(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(a1[4], v10);
    }

    v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / -2;
    v8 = v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2);
    v9 = v4 - v5;
    if (v4 != v5)
    {
      memmove(v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2), v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v5->n128_u64[3 * v7];
    a1[2] = &v8[v9];
  }

  result = *a2;
  v4[1].n128_u64[0] = a2[1].n128_u64[0];
  *v4 = result;
  a1[2] += 24;
  return result;
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

id CRContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1ADE3C674()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  __swift_allocate_value_buffer(v3, qword_1EB5D7518);
  v4 = __swift_project_value_buffer(v3, qword_1EB5D7518);
  v5 = sub_1AE23BDDC();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  *v4 = 0;
  v6 = *(v3 + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9ED0, &qword_1AE240EF0);
  bzero(v4 + v6, *(*(v7 - 8) + 64));
  return sub_1ADDD2198(v2, v4 + v6, &qword_1EB5B9DC0, &qword_1AE240B90);
}

void static CRContext.sharedContextURL.getter(uint64_t a1@<X8>)
{
  if (qword_1EB5B9930 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  v3 = __swift_project_value_buffer(v2, qword_1EB5D7518);
  os_unfair_lock_lock(v3);
  sub_1ADE3CC28(v3 + *(v2 + 28), a1);

  os_unfair_lock_unlock(v3);
}

void sub_1ADE3C874(uint64_t x8_0@<X8>)
{
  if (qword_1EB5B9930 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  v4 = __swift_project_value_buffer(v3, qword_1EB5D7518);
  os_unfair_lock_lock(v4);
  sub_1ADE3CC28(v4 + *(v3 + 28), x8_0);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_1ADE3C930(uint64_t a1)
{
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v7(v6, a1, v2, v4);
  if (qword_1EB5B9930 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  v9 = __swift_project_value_buffer(v8, qword_1EB5D7518);
  os_unfair_lock_lock(v9);
  v10 = *(v8 + 28);
  sub_1ADDCEDE0(v9 + v10, &qword_1EB5B9DC0, &qword_1AE240B90);
  (v7)(v9 + v10, v6, v2);
  (*(v3 + 56))(v9 + v10, 0, 1, v2);
  os_unfair_lock_unlock(v9);
  return (*(v3 + 8))(v6, v2);
}

uint64_t static CRContext.sharedContextURL.setter(uint64_t a1)
{
  if (qword_1EB5B9930 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  v3 = __swift_project_value_buffer(v2, qword_1EB5D7518);
  os_unfair_lock_lock(v3);
  v4 = *(v2 + 28);
  sub_1ADDCEDE0(v3 + v4, &qword_1EB5B9DC0, &qword_1AE240B90);
  v5 = sub_1AE23BDDC();
  v8 = *(v5 - 8);
  (*(v8 + 16))(v3 + v4, a1, v5);
  (*(v8 + 56))(v3 + v4, 0, 1, v5);
  os_unfair_lock_unlock(v3);
  v6 = *(v8 + 8);

  return v6(a1, v5);
}

uint64_t sub_1ADE3CC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AE23BCAC();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  sub_1ADDCEE40(a1, &v28 - v14, &qword_1EB5B9DC0, &qword_1AE240B90);
  if ((*(v7 + 48))(v15, 1, v6) != 1)
  {
    return (*(v7 + 32))(a2, v15, v6);
  }

  v28 = a2;
  sub_1ADDCEDE0(v15, &qword_1EB5B9DC0, &qword_1AE240B90);
  v16 = [objc_opt_self() defaultManager];
  v17 = [v16 URLsForDirectory:14 inDomains:1];

  v18 = sub_1AE23CFDC();
  if (*(v18 + 16))
  {
    (*(v7 + 16))(v9, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    (*(v7 + 32))(v12, v9, v6);
    v32 = 0xD000000000000021;
    v33 = 0x80000001AE25ED80;
    v20 = v29;
    v19 = v30;
    v21 = v31;
    v22 = (*(v30 + 104))(v29, *MEMORY[0x1E6968F70], v31);
    sub_1ADE42DEC(v22, v23, v24);
    sub_1AE23BDCC();
    (*(v19 + 8))(v20, v21);
    return (*(v7 + 8))(v12, v6);
  }

  else
  {

    v26 = v28;
    if (qword_1EB5B9938 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v6, qword_1EB5D7530);
    return (*(v7 + 16))(v26, v27, v6);
  }
}

void (*static CRContext.sharedContextURL.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1AE23BDDC();
  *v4 = v5;
  v6 = *(v5 - 8);
  v4[1] = v6;
  v7 = *(v6 + 64);
  if (v2)
  {
    v4[2] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v9 = v8;
  v4[3] = v8;
  if (qword_1EB5B9930 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  v11 = __swift_project_value_buffer(v10, qword_1EB5D7518);
  v4[4] = v11;
  os_unfair_lock_lock(v11);
  v12 = *(v10 + 28);
  *(v4 + 10) = v12;
  sub_1ADE3CC28(v11 + v12, v9);
  os_unfair_lock_unlock(v11);
  return sub_1ADE3D1A4;
}

void sub_1ADE3D1A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v6 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    v9 = *(v7 + 16);
    v9((*a1)[2], v4, v8);
    os_unfair_lock_lock(v5);
    sub_1ADDCEDE0(v5 + v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    v9(v5 + v3, v6, v8);
    (*(v7 + 56))(v5 + v3, 0, 1, v8);
    os_unfair_lock_unlock(v5);
    v10 = *(v7 + 8);
    v10(v6, v8);
    v10(v4, v8);
  }

  else
  {
    os_unfair_lock_lock((*a1)[4]);
    sub_1ADDCEDE0(v5 + v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    (*(v7 + 16))(v5 + v3, v4, v8);
    (*(v7 + 56))(v5 + v3, 0, 1, v8);
    os_unfair_lock_unlock(v5);
    (*(v7 + 8))(v4, v8);
  }

  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1ADE3D354()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1AE23BDDC();
  __swift_allocate_value_buffer(v3, qword_1EB5D7530);
  v4 = __swift_project_value_buffer(v3, qword_1EB5D7530);
  sub_1AE23BDBC();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void sub_1ADE3D484()
{
  type metadata accessor for CRContext();
  v0 = sub_1ADE3D514(0, 0xE000000000000000, 0);
  if (qword_1EB5B96D8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7500);
  byte_1EB5D7504 = 1;
  os_unfair_lock_unlock(&dword_1EB5D7500);
  qword_1EB5B9948 = v0;
}

id sub_1ADE3D514(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v113 = a1;
  v114 = a2;
  v125 = *MEMORY[0x1E69E9840];
  v112 = sub_1AE23BCAC();
  v6 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v115 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v107 - v14;
  v16 = sub_1AE23BDDC();
  v117 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v110 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v116 = &v107 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v107 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v107 - v23;
  if (a3)
  {
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    v25 = NSTemporaryDirectory();
    sub_1AE23CD0C();

    sub_1AE23BCDC();

    type metadata accessor for CRAssetManager(0);
    swift_allocObject();
    v26 = sub_1ADDCD880(v24, &v122);
  }

  else
  {
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v26 = qword_1ED96F2A8;
  }

  if (qword_1EB5B9930 != -1)
  {
    swift_once();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  v28 = __swift_project_value_buffer(v27, qword_1EB5D7518);
  os_unfair_lock_lock(v28);
  v29 = v28 + *(v27 + 28);
  v30 = v118;
  v31 = 0;
  sub_1ADE3CC28(v29, v118);
  os_unfair_lock_unlock(v28);
  if (qword_1EB5B9938 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v16, qword_1EB5D7530);
  v32 = sub_1AE23BD7C();
  v35 = v117;
  if (v32)
  {
    sub_1ADE42E40(v32, v33, v34);
    v36 = swift_allocError();
    *v37 = 0xD000000000000031;
    *(v37 + 8) = 0x80000001AE25ED40;
    *(v37 + 16) = 0;
    swift_willThrow();
    goto LABEL_24;
  }

  v38 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v38 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {
LABEL_17:
    v42 = v16;
    strcpy(&v122, "data.sqlite3");
    BYTE13(v122) = 0;
    HIWORD(v122) = -5120;
    v43 = v112;
    v44 = (*(v6 + 104))(v8, *MEMORY[0x1E6968F70], v112);
    sub_1ADE42DEC(v44, v45, v46);
    sub_1AE23BDCC();
    (*(v6 + 8))(v8, v43);
    v121[0] = 0;
    v47 = objc_opt_self();
    v48 = [v47 defaultManager];
    sub_1AE23BD9C();
    v49 = sub_1AE23CCDC();

    v50 = [v48 fileExistsAtPath:v49 isDirectory:v121];

    if (v50 && (v121[0] & 1) == 0)
    {
      v108 = v26;
      v109 = v4;
      *&v122 = sub_1AE23BD9C();
      *(&v122 + 1) = v78;

      MEMORY[0x1B26FB670](0x706D65742DLL, 0xE500000000000000);

      v79 = v110;
      sub_1AE23BCEC();

      v80 = [v47 defaultManager];
      v81 = sub_1AE23BD1C();
      v82 = sub_1AE23BD1C();
      *&v122 = 0;
      v83 = [v80 moveItemAtURL:v81 toURL:v82 error:&v122];

      v84 = v122;
      if (!v83 || (v85 = v122, v86 = [v47 defaultManager], v87 = sub_1AE23BD1C(), *&v122 = 0, v88 = objc_msgSend(v86, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_, v87, 1, 0, &v122), v86, v87, v84 = v122, !v88))
      {
        v98 = v84;
        v36 = sub_1AE23BC9C();

        swift_willThrow();
        v99 = v117;
        v100 = *(v117 + 8);
        v16 = v42;
        v100(v79, v42);
        v100(v116, v42);
        v4 = v109;
        v35 = v99;
        v26 = v108;
        goto LABEL_24;
      }

      v107 = v31;
      v89 = v122;
      v90 = [v47 defaultManager];
      v91 = sub_1AE23BD1C();
      v92 = v116;
      v93 = sub_1AE23BD1C();
      *&v122 = 0;
      v94 = [v90 moveItemAtURL:v91 toURL:v93 error:&v122];

      v95 = v79;
      v4 = v109;
      v26 = v108;
      if (!v94)
      {
        v105 = v122;
        v36 = sub_1AE23BC9C();

        swift_willThrow();
        v35 = v117;
        v106 = *(v117 + 8);
        v16 = v42;
        v106(v95, v42);
        v106(v92, v42);
        goto LABEL_24;
      }

      v35 = v117;
      v96 = *(v117 + 8);
      v97 = v122;
      v16 = v42;
      v96(v95, v42);
      v55 = v116;
      v31 = v107;
    }

    else
    {
      v51 = [v47 defaultManager];
      v52 = sub_1AE23BD1C();
      *&v122 = 0;
      v53 = [v51 createDirectoryAtURL:v52 withIntermediateDirectories:1 attributes:0 error:&v122];

      if (!v53)
      {
        v58 = v122;
        v36 = sub_1AE23BC9C();

        swift_willThrow();
        v16 = v42;
        (*(v35 + 8))(v116, v42);
        goto LABEL_24;
      }

      v54 = v122;
      v16 = v42;
      v55 = v116;
    }

    v56 = v111;
    (*(v35 + 16))(v111, v55, v16);
    (*(v35 + 56))(v56, 0, 1, v16);
    v57 = sub_1AE196B1C(v56);
    if (!v31)
    {
      v101 = v57;
      v124 = 0;
      v122 = 0u;
      v123 = 0u;
      v102 = objc_allocWithZone(v4);
      *&v102[OBJC_IVAR___CRContext_assetManager] = v26;
      sub_1ADDCEE40(&v122, &v102[OBJC_IVAR___CRContext_encryptionDelegate], &qword_1EB5B9DB0, &qword_1AE240B80);
      v103 = &v102[OBJC_IVAR___CRContext_crdtDatabase];
      *v103 = v101;
      v103[1] = &off_1F23C64D8;
      v119.receiver = v102;
      v119.super_class = v4;
      v76 = objc_msgSendSuper2(&v119, sel_init);
      sub_1ADDCEDE0(&v122, &qword_1EB5B9DB0, &qword_1AE240B80);
      v104 = *(v35 + 8);
      v104(v55, v16);
      v104(v118, v16);
      return v76;
    }

    v36 = v31;
    (*(v35 + 8))(v55, v16);
LABEL_24:
    if (qword_1EB5B9950 != -1)
    {
      swift_once();
    }

    v59 = sub_1AE23C78C();
    __swift_project_value_buffer(v59, qword_1EB5D7548);
    v60 = v36;
    v61 = sub_1AE23C76C();
    v62 = sub_1AE23D61C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = v16;
      v64 = swift_slowAlloc();
      v65 = v4;
      v66 = v26;
      v67 = swift_slowAlloc();
      *v64 = 138412290;
      v68 = v36;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v64 + 4) = v69;
      *v67 = v69;
      _os_log_impl(&dword_1ADDCA000, v61, v62, "Unable to create file on disk for shared context: %@", v64, 0xCu);
      sub_1ADDCEDE0(v67, &unk_1EB5B9EC0, &qword_1AE240EE8);
      v70 = v67;
      v26 = v66;
      v4 = v65;
      MEMORY[0x1B26FDA50](v70, -1, -1);
      v71 = v64;
      v16 = v63;
      MEMORY[0x1B26FDA50](v71, -1, -1);
    }

    else
    {
    }

    v72 = v115;
    (*(v35 + 56))(v115, 1, 1, v16);
    v73 = sub_1AE196B1C(v72);
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    v74 = objc_allocWithZone(v4);
    *&v74[OBJC_IVAR___CRContext_assetManager] = v26;
    sub_1ADDCEE40(&v122, &v74[OBJC_IVAR___CRContext_encryptionDelegate], &qword_1EB5B9DB0, &qword_1AE240B80);
    v75 = &v74[OBJC_IVAR___CRContext_crdtDatabase];
    *v75 = v73;
    v75[1] = &off_1F23C64D8;
    v120.receiver = v74;
    v120.super_class = v4;
    v76 = objc_msgSendSuper2(&v120, sel_init);
    sub_1ADDCEDE0(&v122, &qword_1EB5B9DB0, &qword_1AE240B80);
    (*(v35 + 8))(v118, v16);
    return v76;
  }

  v107 = 0;
  v109 = v4;
  v108 = v26;
  v39 = v114;
  v40 = v113;
  *&v122 = sub_1AE23BCBC();
  *(&v122 + 1) = v41;

  MEMORY[0x1B26FB670](v40, v39);

  sub_1AE23BDBC();

  if ((*(v35 + 48))(v15, 1, v16) != 1)
  {
    (*(v35 + 8))(v30, v16);
    (*(v35 + 32))(v30, v15, v16);
    v26 = v108;
    v4 = v109;
    v31 = v107;
    goto LABEL_17;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id static CRContext.shared.getter()
{
  if (qword_1EB5B9940 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB5B9948;

  return v1;
}

uint64_t CRContext.__allocating_init(for:encryptionDelegate:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-v5 - 8];
  v7 = sub_1AE23BDDC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v8 + 16))(v11, a1, v7, v9);
  sub_1ADDCEE40(a2, v16, &qword_1EB5B9DB0, &qword_1AE240B80);
  (*(v8 + 56))(v6, 1, 1, v7);
  sub_1ADDFE5A4(v11, v16, v6);
  v13 = v12;
  sub_1ADDCEDE0(a2, &qword_1EB5B9DB0, &qword_1AE240B80);
  (*(v8 + 8))(a1, v7);
  return v13;
}

uint64_t sub_1ADE3E4E8@<X0>(uint64_t a1@<X8>)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  if (qword_1ED96A3D0 != -1)
  {
    swift_once();
  }

  if (byte_1ED969FC8 == 1)
  {
    v38 = v8;
    v39 = v5;
    v40 = a1;
    sub_1AE23BD5C();
    v15 = objc_opt_self();
    v16 = (v3 + 8);
    v37 = v3;
    for (i = (v3 + 32); ; (*i)(v14, v11, v2))
    {
      v18 = [v15 defaultManager];
      sub_1AE23BDAC();
      v19 = sub_1AE23CCDC();

      v20 = [v18 isWritableFileAtPath_];

      if (!v20)
      {
        break;
      }

      sub_1AE23BD5C();
      (*v16)(v14, v2);
    }

    v21 = v38;
    sub_1AE23BD3C();
    v22 = [v15 defaultManager];
    sub_1AE23BDAC();
    v23 = sub_1AE23CCDC();

    v24 = [v22 isWritableFileAtPath_];

    if (v24)
    {
      v25 = v37;
      (*(v37 + 8))(v14, v2);
      (*(v25 + 16))(v14, v21, v2);
    }

    v26 = v39;
    sub_1AE23BD2C();
    v27 = [v15 defaultManager];
    v28 = sub_1AE23BD1C();
    v41[0] = 0;
    v29 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v41];

    if (v29)
    {
      v30 = v41[0];
    }

    else
    {
      v33 = v41[0];
      v34 = sub_1AE23BC9C();

      swift_willThrow();
    }

    v35 = *v16;
    (*v16)(v21, v2);
    v35(v14, v2);
    return (*i)(v40, v26, v2);
  }

  else
  {
    v31 = NSTemporaryDirectory();
    sub_1AE23CD0C();

    sub_1AE23BCDC();
  }
}

void *sub_1ADE3E968()
{
  result = sub_1ADE50E58(MEMORY[0x1E69E7CC0]);
  off_1ED9664C8 = result;
  return result;
}

uint64_t CRContext.UniqueContextError.hashValue.getter()
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](0);
  return sub_1AE23E34C();
}

uint64_t sub_1ADE3EA0C()
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](0);
  return sub_1AE23E34C();
}

uint64_t sub_1ADE3EA78(uint64_t a1)
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](0);
  return sub_1AE23E34C();
}

void static CRContext.uniqueContext(for:)(uint64_t a1)
{
  if (qword_1ED96B308 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  sub_1AE23D6AC();
}

void sub_1ADE3EBBC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  if (qword_1ED966B70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_1ED9664C8;
  if (!*(off_1ED9664C8 + 2) || (v9 = sub_1ADDFF050(a1), (v10 & 1) == 0))
  {
    v20 = 0;
    v21 = 1;
    sub_1ADDCEDE0(&v20, &qword_1EB5B9E90, &qword_1AE240ED0);
    swift_endAccess();
LABEL_9:
    v16 = sub_1AE23BDDC();
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    Strong = sub_1ADE41744(a1, &v17, v7);
    sub_1ADDCEDE0(v7, &qword_1EB5B9DC0, &qword_1AE240B90);
    sub_1ADDCEDE0(&v17, &qword_1EB5B9DB0, &qword_1AE240B80);
    if (v2)
    {
      return;
    }

    goto LABEL_10;
  }

  sub_1ADE42CF8(v8[7] + 8 * v9, &v20);
  v21 = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1ADDCEDE0(&v20, &qword_1EB5B9E90, &qword_1AE240ED0);
  swift_endAccess();
  if (!Strong)
  {
    goto LABEL_9;
  }

  sub_1ADDCEE40(Strong + OBJC_IVAR___CRContext_encryptionDelegate, &v17, &qword_1EB5B9DB0, &qword_1AE240B80);
  v12 = *(&v18 + 1);
  v13 = sub_1ADDCEDE0(&v17, &qword_1EB5B9DB0, &qword_1AE240B80);
  if (v12)
  {
    sub_1ADE42D98(v13, v14, v15);
    swift_allocError();
    swift_willThrow();

    return;
  }

LABEL_10:
  *a2 = Strong;
}

uint64_t static CRContext.uniqueContext<A>(for:encryptionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1AE23BDDC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  static CRContext.uniqueContext<A>(for:encryptionDelegate:temporaryDirectory:)(a1);
  v11 = v10;
  sub_1ADDCEDE0(v8, &qword_1EB5B9DC0, &qword_1AE240B90);
  return v11;
}

void static CRContext.uniqueContext<A>(for:encryptionDelegate:temporaryDirectory:)(uint64_t a1)
{
  if (qword_1ED96B308 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  sub_1AE23D6AC();
}

void sub_1ADE3F094(uint64_t a1@<X1>, void (*a2)(char *, char *, uint64_t)@<X2>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X3>, uint64_t a4@<X4>, char *a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v63 = a6;
  v71 = a5;
  v72 = a3;
  v78 = a2;
  v70 = a7;
  v10 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v66 = &v57 - v11;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v57 - v16;
  v17 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v57 - v26;
  if (qword_1ED966B70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v28 = off_1ED9664C8;
  if (*(off_1ED9664C8 + 2) && (v29 = sub_1ADDFF050(a1), (v30 & 1) != 0))
  {
    sub_1ADE42CF8(v28[7] + 8 * v29, &v76);
    v77 = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1ADDCEDE0(&v76, &qword_1EB5B9E90, &qword_1AE240ED0);
    swift_endAccess();
    v61 = Strong;
    if (Strong)
    {
      v32 = *(v12 + 48);
      if (v32(v78, 1, a4) == 1)
      {
        v33 = v61;
        sub_1ADDCEE40(v61 + OBJC_IVAR___CRContext_encryptionDelegate, &v73, &qword_1EB5B9DB0, &qword_1AE240B80);
        v34 = *(&v74 + 1);
        v35 = sub_1ADDCEDE0(&v73, &qword_1EB5B9DB0, &qword_1AE240B80);
        if (!v34)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      }

      v72 = v32;
      sub_1ADDCEE40(v61 + OBJC_IVAR___CRContext_encryptionDelegate, &v73, &qword_1EB5B9DB0, &qword_1AE240B80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB0, &qword_1AE240B80);
      v39 = swift_dynamicCast();
      v40 = *(v12 + 56);
      if (v39)
      {
        v71 = *(v12 + 56);
        v40(v24, 0, 1, a4);
        v41 = *(v12 + 32);
        v42 = v69;
        v59 = v12 + 32;
        v58 = v41;
        v41(v69, v24, a4);
        v43 = v68;
        (*(v12 + 16))(v68, v42, a4);
        (v71)(v43, 0, 1, a4);
        v44 = v66;
        v71 = *(TupleTypeMetadata2 + 48);
        v60 = v12 + 48;
        v45 = *(v17 + 16);
        v45(v66, v43, v10);
        v46 = v78;
        v78 = v45;
        v45(&v71[v44], v46, v10);
        v47 = v72;
        if (v72(v44, 1, a4) == 1)
        {
          v48 = *(v17 + 8);
          v48(v68, v10);
          (*(v12 + 8))(v69, a4);
          if (v47(&v71[v44], 1, a4) == 1)
          {
            v48(v44, v10);
            v33 = v61;
LABEL_14:
            *v70 = v33;
            return;
          }
        }

        else
        {
          v78(v65, v44, v10);
          v49 = v71;
          if (v47(&v71[v44], 1, a4) != 1)
          {
            v51 = &v49[v44];
            v52 = v62;
            v58(v62, v51, a4);
            v53 = v65;
            LODWORD(v78) = sub_1AE23CCBC();
            v54 = v53;
            v55 = *(v12 + 8);
            v55(v52, a4);
            v56 = *(v17 + 8);
            v56(v68, v10);
            v55(v69, a4);
            v55(v54, a4);
            v35 = (v56)(v44, v10);
            v33 = v61;
            if (v78)
            {
              goto LABEL_14;
            }

LABEL_24:
            sub_1ADE42D98(v35, v36, v37);
            swift_allocError();
            swift_willThrow();

            return;
          }

          (*(v17 + 8))(v68, v10);
          v50 = *(v12 + 8);
          v50(v69, a4);
          v50(v65, a4);
        }

        v35 = (*(v64 + 8))(v44, TupleTypeMetadata2);
      }

      else
      {
        v40(v24, 1, 1, a4);
        v35 = (*(v17 + 8))(v24, v10);
      }

      v33 = v61;
      goto LABEL_24;
    }
  }

  else
  {
    v76 = 0;
    v77 = 1;
    sub_1ADDCEDE0(&v76, &qword_1EB5B9E90, &qword_1AE240ED0);
    swift_endAccess();
  }

  (*(v17 + 16))(v27, v78, v10);
  if ((*(v12 + 48))(v27, 1, a4) == 1)
  {
    (*(v17 + 8))(v27, v10);
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
  }

  else
  {
    *(&v74 + 1) = a4;
    v75 = v71;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v73);
    (*(v12 + 32))(boxed_opaque_existential_1, v27, a4);
  }

  v33 = sub_1ADE41744(a1, &v73, v72);
  sub_1ADDCEDE0(&v73, &qword_1EB5B9DB0, &qword_1AE240B80);
  if (!v7)
  {
    goto LABEL_14;
  }
}