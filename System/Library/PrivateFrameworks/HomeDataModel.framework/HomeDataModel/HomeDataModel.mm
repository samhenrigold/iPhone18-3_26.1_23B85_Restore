void *sub_1D16EE918@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1D16EE980(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1D16EE9B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D16EE9DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

_DWORD *sub_1D16EEAC8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_1D16EEB0C(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1D16EEC7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D173FE78(a1);

  *a2 = v3;
  return result;
}

_WORD *sub_1D16EECF8@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for RGBColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D16EEE20(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_1D16EEE38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D16EEEC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16EEEF8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D16EF5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
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

uint64_t sub_1D16EF6D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

void *sub_1D16EF7EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643258, &qword_1D1E716B0, type metadata accessor for StaticService);
  *v3 = result;
  return result;
}

uint64_t sub_1D16EF838()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v24 = *(*(v1 - 8) + 80);
  v22 = *(*(v1 - 8) + 64);
  v26 = type metadata accessor for Action.NaturalLightAction(0);
  v21 = *(*(v26 - 8) + 80);
  v25 = *(*(v26 - 8) + 64);
  v23 = (v24 + 16) & ~v24;

  v2 = v0 + v23 + *(v1 + 20);
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for StaticHome(0);

  v6 = v5[6];
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v10 = v2 + v5[7];
  v4(v10, v3);
  v19 = v4;
  v20 = v3;
  v11 = type metadata accessor for StaticRoom(0);

  v12 = *(v11 + 24);
  if (!v9(v10 + v12, 1, v7))
  {
    (*(v8 + 8))(v10 + v12, v7);
  }

  v19(v10 + *(v11 + 36), v20);

  v13 = v2 + v5[8];
  v19(v13, v20);
  v14 = type metadata accessor for StaticUser(0);

  v19(v13 + *(v14 + 24), v20);

  v15 = v2 + v5[22];
  v16 = type metadata accessor for StaticResident(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v19(v15, v20);

    sub_1D1771B5C(*(v15 + *(v16 + 36)), *(v15 + *(v16 + 36) + 8));
    v19(v15 + *(v16 + 40), v20);
  }

  v17 = (v23 + v22 + v21) & ~v21;

  v19(v0 + v17, v20);
  v19(v0 + v17 + *(v26 + 20), v20);

  return MEMORY[0x1EEE6BDD0](v0, v17 + v25, v24 | v21 | 7);
}

uint64_t sub_1D16EFE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D16EFEBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D16EFF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xAE)
    {
      return v10 - 173;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D16F002C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 - 83;
  }

  return result;
}

uint64_t sub_1D16F028C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66C5C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D16F02F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66C5C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D16F0368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D16F0428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D16F04F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1D17ACEA8(v1, v2);
}

uint64_t sub_1D16F0638(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CE0, &qword_1D1E738D0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1D1E669FC();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[10]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1D16F080C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CE0, &qword_1D1E738D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_1D1E669FC();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[11];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_1D16F09E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_1D1E669FC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_1D16F0B6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = sub_1D1E669FC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D16F0CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D16F0D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D16F0DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D16F0E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D16F0ED0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D1E669FC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[7];
    goto LABEL_5;
  }

  if (a2 == 251)
  {
    v14 = *(a1 + a3[8]);
    if (v14 <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = *(a1 + a3[8]);
    }

    v16 = v15 - 4;
    if (v14 >= 4)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1D16F1054(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1D1E669FC();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_5;
  }

  if (a3 == 251)
  {
    *(a1 + a4[8]) = a2 + 4;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1D16F11D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1D16F1244()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D16F12B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16F12FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D16F1344()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F137C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16F13C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16F140C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D16F1444()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F147C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16F14B4()
{
  v1 = sub_1D1E68A8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D16F15CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D16F1688(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return CameraController.State.mode.setter(&v3);
}

uint64_t sub_1D16F16CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1D17DCDF4(v1, v2);
}

void sub_1D16F17AC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D17DD324(v1);
}

void sub_1D16F1804(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D17DD18C(v1);
}

uint64_t sub_1D16F18A0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6444F0, &unk_1D1E758E0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D16F18D0()
{
  v1 = type metadata accessor for AccessoryDetails(0);
  v213 = *(*(v1 - 8) + 80);
  v2 = (v213 + 32) & ~v213;
  v211 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v214 = v0;
  v212 = v2;
  v3 = v0 + v2;
  type metadata accessor for AccessoryDetails.Payload(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v215 = v0 + v2;
  v216 = v1;
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v57 = sub_1D1E66A7C();
      v58 = *(v57 - 8);
      v59 = *(v58 + 8);
      v59(v3, v57);
      v60 = type metadata accessor for StaticAccessory(0);
      v61 = v60[5];
      v62 = sub_1D1E669FC();
      v203 = *(v62 - 8);
      v207 = *(v203 + 48);
      if (!v207(v3 + v61, 1, v62))
      {
        (*(v203 + 8))(v3 + v61, v62);
      }

      v63 = v3 + v60[8];
      type metadata accessor for StaticAccessory.DeviceIdentifier(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v59(v63, v57);
      }

      else
      {
      }

      v69 = v3 + v60[9];
      v70 = type metadata accessor for StaticDeviceMetadata(0);
      if (!(*(*(v70 - 8) + 48))(v69, 1, v70))
      {
        v59(v69, v57);
      }

      v71 = v60[10];
      if (!v207(v3 + v71, 1, v62))
      {
        (*(v203 + 8))(v3 + v71, v62);
      }

      v59(v3 + v60[12], v57);

      v72 = v60[22];
      if (!(*(v58 + 48))(v3 + v72, 1, v57))
      {
        v59(v3 + v72, v57);
      }

      v73 = v3 + v60[23];
      v74 = *(v73 + 8);
      if (v74 != 255)
      {
        sub_1D1771B5C(*v73, v74);
      }

      v75 = v3 + v60[30];
      v76 = type metadata accessor for StaticSoftwareUpdate(0);
      if (!(*(*(v76 - 8) + 48))(v75, 1, v76))
      {
        v59(v75, v57);
        v77 = v75 + *(v76 + 20);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        v78 = swift_getEnumCaseMultiPayload();
        if (v78 == 2 || v78 == 1)
        {

          v79 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
          if (!v207(v77 + v79, 1, v62))
          {
            (*(v203 + 8))(v77 + v79, v62);
          }

          v3 = v215;
        }

        else if (!v78)
        {
          v59(v77, v57);
          if (*(v77 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) >= 2uLL)
          {
          }
        }
      }

      v80 = v3 + v60[38];
      v81 = type metadata accessor for StaticMatterDevice(0);
      v1 = v216;
      if (!(*(*(v81 - 1) + 48))(v80, 1, v81))
      {
        v59(v80, v57);

        v59(v80 + v81[9], v57);
        v59(v80 + v81[10], v57);

        v59(v80 + v81[12], v57);
        v82 = v81[13];
        if (!v207(v80 + v82, 1, v62))
        {
          (*(v203 + 8))(v80 + v82, v62);
        }

        v83 = v80 + v81[15];

        v84 = *(type metadata accessor for MatterTileMetadata(0) + 44);
        if (!v207(v83 + v84, 1, v62))
        {
          (*(v203 + 8))(v83 + v84, v62);
        }
      }

      goto LABEL_92;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_92;
    }

    v5 = sub_1D1E66A7C();
    v200 = *(v5 - 8);
    v6 = *(v200 + 8);
    v6(v3, v5);
    v7 = type metadata accessor for StaticService(0);

    v206 = v6;
    v6(v3 + v7[11], v5);
    v8 = v3 + v7[13];
    v9 = type metadata accessor for StaticDeviceMetadata(0);
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {
      v6(v8, v5);
    }

    v10 = v7[14];
    v11 = sub_1D1E669FC();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (!v13(v3 + v10, 1, v11))
    {
      (*(v12 + 8))(v3 + v10, v11);
    }

    v14 = v3;
    v15 = v7[15];
    if (!v13(v14 + v15, 1, v11))
    {
      (*(v12 + 8))(v14 + v15, v11);
    }

    v16 = v7[29];
    v17 = *(v200 + 48);
    if (!v17(v14 + v16, 1, v5))
    {
      v206(v14 + v16, v5);
    }

    v201 = v12;
    v18 = v7[30];
    if (!v17(v14 + v18, 1, v5))
    {
      v206(v14 + v18, v5);
    }

    v19 = v14 + v7[34];
    v20 = type metadata accessor for StaticSoftwareUpdate(0);
    v3 = v14;
    if ((*(*(v20 - 8) + 48))(v19, 1, v20))
    {
      goto LABEL_82;
    }

    v206(v19, v5);
    v21 = v19 + *(v20 + 20);
    type metadata accessor for StaticSoftwareUpdate.Kind(0);
    v22 = swift_getEnumCaseMultiPayload();
    if (v22 == 2)
    {

      v85 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
      if (v13(v21 + v85, 1, v11))
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v22 != 1)
      {
        if (!v22)
        {
          v206(v21, v5);
          if (*(v21 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) >= 2uLL)
          {
          }
        }

LABEL_82:

        v86 = v7[37];
        if (!v17(v3 + v86, 1, v5))
        {
          v206(v3 + v86, v5);
        }

        v87 = v7[39];
        v88 = type metadata accessor for EndpointPath(0);
        v1 = v216;
        if (!(*(*(v88 - 8) + 48))(v3 + v87, 1, v88))
        {
          v206(v3 + v87, v5);
        }

        v89 = v3 + v7[40];
        v90 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
        if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
        {
          if (*(v89 + 16) != 1)
          {
          }

          v91 = v89 + *(v90 + 20);
          v92 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
          if (!(*(*(v92 - 8) + 48))(v91, 1, v92))
          {

            v93 = *(v92 + 24);
            v94 = sub_1D1E66C5C();
            (*(*(v94 - 8) + 8))(v91 + v93, v94);
          }

LABEL_91:

          goto LABEL_92;
        }

        goto LABEL_92;
      }

      v85 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
      if (v13(v21 + v85, 1, v11))
      {
LABEL_81:

        v3 = v215;
        goto LABEL_82;
      }
    }

    (*(v201 + 8))(v21 + v85, v11);
    goto LABEL_81;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v64 = sub_1D1E66A7C();
    (*(*(v64 - 8) + 8))(v0 + v2, v64);
    v65 = type metadata accessor for StaticServiceGroup(0);

    v66 = *(v65 + 32);
    v67 = sub_1D1E669FC();
    v68 = *(v67 - 8);
    if (!(*(v68 + 48))(v3 + v66, 1, v67))
    {
      (*(v68 + 8))(v3 + v66, v67);
    }

    goto LABEL_91;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v23 = sub_1D1E66A7C();
    v24 = *(*(v23 - 8) + 8);
    v24(v3, v23);
    v25 = type metadata accessor for StaticEndpoint(0);
    v24(v3 + v25[5], v23);

    v26 = v3 + v25[10];
    v27 = type metadata accessor for StaticRVCClusterGroup(0);
    if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
    {
      v24(v26, v23);

      if (*(v26 + *(v27 + 28) + 16))
      {
      }

      v28 = (v26 + *(v27 + 60));
      if (*v28)
      {

        if (v28[9] != 1)
        {
        }
      }
    }

    v29 = v26 + *(type metadata accessor for StaticClusterGroups(0) + 20);
    v30 = type metadata accessor for StaticThermostatClusterGroup(0);
    if (!(*(*(v30 - 1) + 48))(v29, 1, v30))
    {
      v24(v29, v23);
      v31 = v29 + v30[7];

      v32 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
      v33 = (v31 + v32[9]);
      v34 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
      if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
      {
        v35 = v33[1];
        if (v35 >> 60 != 15)
        {
          sub_1D174E7C4(*v33, v35);
        }

        v36 = *(v34 + 20);
        v37 = sub_1D1E669FC();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v33 + v36, 1, v37))
        {
          (*(v38 + 8))(v33 + v36, v37);
        }
      }

      v39 = (v31 + v32[11]);
      v40 = v39[1];
      if (v40 >> 60 != 15)
      {
        sub_1D174E7C4(*v39, v40);
      }

      v41 = (v31 + v32[12]);
      v42 = v41[1];
      if (v42 >> 60 != 15)
      {
        sub_1D174E7C4(*v41, v42);
      }

      v43 = v32[13];
      v44 = sub_1D1E669FC();
      v45 = *(v44 - 8);
      v46 = *(v45 + 48);
      if (!v46(v31 + v43, 1, v44))
      {
        (*(v45 + 8))(v31 + v43, v44);
      }

      v47 = v30[8];
      v48 = v47 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
      if (!v46(v29 + v48, 1, v44))
      {
        (*(v45 + 8))(v29 + v48, v44);
      }

      v49 = v29 + v30[12];
      v50 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
      v51 = *(v50 + 32);
      if (!v46(v49 + v51, 1, v44))
      {
        (*(v45 + 8))(v49 + v51, v44);
      }

      v52 = *(v50 + 36);
      v1 = v216;
      if (!v46(v49 + v52, 1, v44))
      {
        (*(v45 + 8))(v49 + v52, v44);
      }
    }

    v3 = v215;

    v53 = v215 + v25[13];

    v54 = *(type metadata accessor for MatterTileMetadata(0) + 44);
    v55 = sub_1D1E669FC();
    v56 = *(v55 - 8);
    if (!(*(v56 + 48))(v53 + v54, 1, v55))
    {
      (*(v56 + 8))(v53 + v54, v55);
    }
  }

LABEL_92:
  v95 = v3 + *(v1 + 20);
  v96 = swift_getEnumCaseMultiPayload();
  if (v96 <= 1)
  {
    if (v96)
    {
      if (v96 != 1)
      {
        goto LABEL_185;
      }

      v97 = sub_1D1E66A7C();
      v98 = *(v97 - 8);
      v99 = *(v98 + 8);
      v99(v95, v97);
      v100 = type metadata accessor for StaticService(0);

      v209 = v99;
      v99(v95 + v100[11], v97);
      v101 = v95 + v100[13];
      v102 = type metadata accessor for StaticDeviceMetadata(0);
      if (!(*(*(v102 - 8) + 48))(v101, 1, v102))
      {
        v99(v101, v97);
      }

      v103 = v100[14];
      v104 = sub_1D1E669FC();
      v105 = *(v104 - 8);
      v106 = *(v105 + 48);
      if (!v106(v95 + v103, 1, v104))
      {
        (*(v105 + 8))(v95 + v103, v104);
      }

      v107 = v100[15];
      if (!v106(v95 + v107, 1, v104))
      {
        (*(v105 + 8))(v95 + v107, v104);
      }

      v202 = v105;

      v108 = v100[29];
      v109 = *(v98 + 48);
      if (!v109(v95 + v108, 1, v97))
      {
        v209(v95 + v108, v97);
      }

      v204 = v106;
      v110 = v100[30];
      if (!v109(v95 + v110, 1, v97))
      {
        v209(v95 + v110, v97);
      }

      v111 = v95 + v100[34];
      v112 = type metadata accessor for StaticSoftwareUpdate(0);
      if (!(*(*(v112 - 8) + 48))(v111, 1, v112))
      {
        v209(v111, v97);
        v113 = v111 + *(v112 + 20);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        v114 = swift_getEnumCaseMultiPayload();
        if (v114 == 2 || v114 == 1)
        {

          v172 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
          if (!v204(v113 + v172, 1, v104))
          {
            (*(v202 + 8))(v113 + v172, v104);
          }
        }

        else
        {
          if (v114)
          {
            goto LABEL_166;
          }

          v209(v113, v97);
          if (*(v113 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
          {
            goto LABEL_166;
          }
        }
      }

LABEL_166:

      v173 = v100[37];
      if (!v109(v95 + v173, 1, v97))
      {
        v209(v95 + v173, v97);
      }

      v174 = v100[39];
      v175 = type metadata accessor for EndpointPath(0);
      v1 = v216;
      if (!(*(*(v175 - 8) + 48))(v95 + v174, 1, v175))
      {
        v209(v95 + v174, v97);
      }

      v176 = v95 + v100[40];
      v177 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
      if (!(*(*(v177 - 8) + 48))(v176, 1, v177))
      {
        if (*(v176 + 16) != 1)
        {
        }

        v178 = v176 + *(v177 + 20);
        v179 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
        if (!(*(*(v179 - 8) + 48))(v178, 1, v179))
        {

          v180 = *(v179 + 24);
          v181 = sub_1D1E66C5C();
          (*(*(v181 - 8) + 8))(v178 + v180, v181);
        }

LABEL_175:

        goto LABEL_185;
      }

      goto LABEL_185;
    }

    v150 = sub_1D1E66A7C();
    v151 = *(v150 - 8);
    v152 = *(v151 + 8);
    v152(v95, v150);
    v153 = type metadata accessor for StaticAccessory(0);
    v154 = v153[5];
    v155 = sub_1D1E669FC();
    v210 = (*(v155 - 8) + 48);
    v205 = *(v155 - 8);
    v208 = *v210;
    if (!(*v210)(v95 + v154, 1))
    {
      (*(v205 + 8))(v95 + v154, v155);
    }

    v156 = v95 + v153[8];
    type metadata accessor for StaticAccessory.DeviceIdentifier(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v152(v156, v150);
    }

    else
    {
    }

    v162 = v95 + v153[9];
    v163 = type metadata accessor for StaticDeviceMetadata(0);
    if (!(*(*(v163 - 8) + 48))(v162, 1, v163))
    {
      v152(v162, v150);
    }

    v164 = v153[10];
    if (!(v208)(v95 + v164, 1, v155))
    {
      (*(v205 + 8))(v95 + v164, v155);
    }

    v152(v95 + v153[12], v150);

    v165 = v153[22];
    if (!(*(v151 + 48))(v95 + v165, 1, v150))
    {
      v152(v95 + v165, v150);
    }

    v166 = v95 + v153[23];
    v167 = *(v166 + 8);
    if (v167 != 255)
    {
      sub_1D1771B5C(*v166, v167);
    }

    v168 = v95 + v153[30];
    v169 = type metadata accessor for StaticSoftwareUpdate(0);
    if (!(*(*(v169 - 8) + 48))(v168, 1, v169))
    {
      v152(v168, v150);
      v170 = v168 + *(v169 + 20);
      type metadata accessor for StaticSoftwareUpdate.Kind(0);
      v171 = swift_getEnumCaseMultiPayload();
      if (v171 == 2 || v171 == 1)
      {

        v182 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
        if (!(v208)(v170 + v182, 1, v155))
        {
          (*(v205 + 8))(v170 + v182, v155);
        }
      }

      else
      {
        if (v171)
        {
          goto LABEL_180;
        }

        v152(v170, v150);
        if (*(v170 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
        {
          goto LABEL_180;
        }
      }
    }

LABEL_180:

    v183 = v95 + v153[38];
    v184 = type metadata accessor for StaticMatterDevice(0);
    v1 = v216;
    if (!(*(*(v184 - 1) + 48))(v183, 1, v184))
    {
      v152(v183, v150);

      v152(v183 + v184[9], v150);
      v152(v183 + v184[10], v150);

      v152(v183 + v184[12], v150);
      v185 = v184[13];
      if (!(v208)(v183 + v185, 1, v155))
      {
        (*(v205 + 8))(v183 + v185, v155);
      }

      v186 = v183 + v184[15];

      v187 = *(type metadata accessor for MatterTileMetadata(0) + 44);
      if (!(v208)(v186 + v187, 1, v155))
      {
        (*(v205 + 8))(v186 + v187, v155);
      }
    }

    goto LABEL_185;
  }

  if (v96 == 2)
  {
    v157 = sub_1D1E66A7C();
    (*(*(v157 - 8) + 8))(v95, v157);
    v158 = type metadata accessor for StaticServiceGroup(0);

    v159 = *(v158 + 32);
    v160 = sub_1D1E669FC();
    v161 = *(v160 - 8);
    if (!(*(v161 + 48))(v95 + v159, 1, v160))
    {
      (*(v161 + 8))(v95 + v159, v160);
    }

    goto LABEL_175;
  }

  if (v96 == 3)
  {
    v115 = sub_1D1E66A7C();
    v116 = *(*(v115 - 8) + 8);
    v116(v95, v115);
    v117 = type metadata accessor for StaticEndpoint(0);
    v116(v95 + v117[5], v115);

    v118 = v95 + v117[10];
    v119 = type metadata accessor for StaticRVCClusterGroup(0);
    if (!(*(*(v119 - 8) + 48))(v118, 1, v119))
    {
      v116(v118, v115);

      if (*(v118 + *(v119 + 28) + 16))
      {
      }

      v120 = (v118 + *(v119 + 60));
      if (*v120)
      {

        if (v120[9] != 1)
        {
        }
      }
    }

    v121 = v118 + *(type metadata accessor for StaticClusterGroups(0) + 20);
    v122 = type metadata accessor for StaticThermostatClusterGroup(0);
    if (!(*(*(v122 - 1) + 48))(v121, 1, v122))
    {
      v116(v121, v115);
      v123 = v121 + v122[7];

      v124 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
      v125 = (v123 + v124[9]);
      v126 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
      if (!(*(*(v126 - 8) + 48))(v125, 1, v126))
      {
        v127 = v125[1];
        if (v127 >> 60 != 15)
        {
          sub_1D174E7C4(*v125, v127);
        }

        v128 = *(v126 + 20);
        v129 = sub_1D1E669FC();
        v130 = *(v129 - 8);
        if (!(*(v130 + 48))(v125 + v128, 1, v129))
        {
          (*(v130 + 8))(v125 + v128, v129);
        }
      }

      v131 = (v123 + v124[11]);
      v132 = v131[1];
      if (v132 >> 60 != 15)
      {
        sub_1D174E7C4(*v131, v132);
      }

      v133 = (v123 + v124[12]);
      v134 = v133[1];
      if (v134 >> 60 != 15)
      {
        sub_1D174E7C4(*v133, v134);
      }

      v135 = v124[13];
      v136 = sub_1D1E669FC();
      v137 = *(v136 - 8);
      v138 = *(v137 + 48);
      if (!v138(v123 + v135, 1, v136))
      {
        (*(v137 + 8))(v123 + v135, v136);
      }

      v139 = v122[8];
      v140 = v139 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
      if (!v138(v121 + v140, 1, v136))
      {
        (*(v137 + 8))(v121 + v140, v136);
      }

      v141 = v121 + v122[12];
      v142 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
      v143 = *(v142 + 32);
      if (!v138(v141 + v143, 1, v136))
      {
        (*(v137 + 8))(v141 + v143, v136);
      }

      v144 = *(v142 + 36);
      v145 = v138(v141 + v144, 1, v136);
      v1 = v216;
      if (!v145)
      {
        (*(v137 + 8))(v141 + v144, v136);
      }
    }

    v146 = v95 + v117[13];

    v147 = *(type metadata accessor for MatterTileMetadata(0) + 44);
    v148 = sub_1D1E669FC();
    v149 = *(v148 - 8);
    if (!(*(v149 + 48))(v146 + v147, 1, v148))
    {
      (*(v149 + 8))(v146 + v147, v148);
    }
  }

LABEL_185:
  v188 = type metadata accessor for AccessoryDetailsBasicInfo(0);

  v189 = v95 + *(v188 + 24);
  v190 = type metadata accessor for StaticRoom(0);
  if (!(*(*(v190 - 8) + 48))(v189, 1, v190))
  {
    v191 = sub_1D1E66A7C();
    v192 = *(*(v191 - 8) + 8);
    v192(v189, v191);

    v193 = *(v190 + 24);
    v194 = sub_1D1E669FC();
    v195 = *(v194 - 8);
    if (!(*(v195 + 48))(v189 + v193, 1, v194))
    {
      (*(v195 + 8))(v189 + v193, v194);
    }

    v192(v189 + *(v190 + 36), v191);

    v1 = v216;
  }

  v196 = v215 + *(v1 + 24);
  v197 = type metadata accessor for StaticDeviceMetadata(0);
  if (!(*(*(v197 - 8) + 48))(v196, 1, v197))
  {
    v198 = sub_1D1E66A7C();
    (*(*(v198 - 8) + 8))(v196, v198);
  }

  return MEMORY[0x1EEE6BDD0](v214, v212 + v211, v213 | 7);
}

void *sub_1D16F4110@<X0>(_BYTE *a1@<X8>)
{
  result = AccessoryDetails.updateState.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1D16F414C(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AccessoryDetails(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_1D16F4180(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AccessoryDetails.Payload(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 <= 8)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(a1 + a3[7]);
  }

  v18 = v17 - 8;
  if (v16 >= 2)
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D16F42E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AccessoryDetails.Payload(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for AccessoryDetailsBasicInfo(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2 + 8;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_1D16F4460(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D1DE83C0(v1);
}

uint64_t sub_1D16F44CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AccessoryDetailsBasicInfo.roomName.setter(v1, v2);
}

uint64_t sub_1D16F4510(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AccessoryDetailsBasicInfo(0);
  *(a2 + *(result + 32)) = v3;
  return result;
}

uint64_t sub_1D16F4548(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AccessoryDetailsBasicInfo(0);
  *(a2 + *(result + 36)) = v3;
  return result;
}

void *sub_1D16F457C@<X0>(_BYTE *a1@<X8>)
{
  result = AccessoryDetailsBasicInfo.iconSymbol.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1D16F45F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryDetails.Payload(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1D16F4730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryDetails.Payload(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D16F4864()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v116 = *(*(v2 - 8) + 80);
  v3 = (v116 + 24) & ~v116;
  v114 = *(*(v2 - 8) + 64);

  v115 = v3;
  v4 = v1 + v3;
  type metadata accessor for AccessoryDetails.Payload(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v117 = v2;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_94;
      }

      v6 = sub_1D1E66A7C();
      v7 = *(v6 - 8);
      v8 = *(v7 + 8);
      v8(v4, v6);
      v9 = type metadata accessor for StaticService(0);

      v109 = v8;
      v8(v4 + v9[11], v6);
      v10 = v4 + v9[13];
      v11 = type metadata accessor for StaticDeviceMetadata(0);
      if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
      {
        v8(v10, v6);
      }

      v12 = v9[14];
      v13 = sub_1D1E669FC();
      v14 = *(v13 - 8);
      v15 = *(v14 + 48);
      if (!v15(v4 + v12, 1, v13))
      {
        (*(v14 + 8))(v4 + v12, v13);
      }

      v16 = v9[15];
      if (!v15(v4 + v16, 1, v13))
      {
        (*(v14 + 8))(v4 + v16, v13);
      }

      v106 = v14;

      v17 = v9[29];
      v18 = *(v7 + 48);
      if (!v18(v4 + v17, 1, v6))
      {
        v8(v4 + v17, v6);
      }

      v111 = v1;
      v19 = v9[30];
      if (!v18(v4 + v19, 1, v6))
      {
        v8(v4 + v19, v6);
      }

      v20 = v4 + v9[34];
      v21 = type metadata accessor for StaticSoftwareUpdate(0);
      if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
      {
        v8(v20, v6);
        v22 = v20 + *(v21 + 20);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        v23 = swift_getEnumCaseMultiPayload();
        if (v23 == 2 || v23 == 1)
        {

          v105 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
          if (!v15(v22 + v105, 1, v13))
          {
            (*(v106 + 8))(v22 + v105, v13);
          }
        }

        else
        {
          if (v23)
          {
            goto LABEL_75;
          }

          v8(v22, v6);
          if (*(v22 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
          {
            goto LABEL_75;
          }
        }
      }

LABEL_75:

      v81 = v9[37];
      if (!v18(v4 + v81, 1, v6))
      {
        v109(v4 + v81, v6);
      }

      v82 = v9[39];
      v83 = type metadata accessor for EndpointPath(0);
      v1 = v111;
      if (!(*(*(v83 - 8) + 48))(v4 + v82, 1, v83))
      {
        v109(v4 + v82, v6);
      }

      v84 = v4 + v9[40];
      v85 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
      if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
      {
        if (*(v84 + 16) != 1)
        {
        }

        v86 = v84 + *(v85 + 20);
        v87 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
        if (!(*(*(v87 - 8) + 48))(v86, 1, v87))
        {

          v88 = *(v87 + 24);
          v89 = sub_1D1E66C5C();
          (*(*(v89 - 8) + 8))(v86 + v88, v89);
        }

LABEL_84:

        goto LABEL_94;
      }

      goto LABEL_94;
    }

    v59 = sub_1D1E66A7C();
    v60 = *(v59 - 8);
    v61 = *(v60 + 8);
    v61(v4, v59);
    v62 = type metadata accessor for StaticAccessory(0);
    v63 = v62[5];
    v64 = sub_1D1E669FC();
    v107 = *(v64 - 8);
    v108 = *(v107 + 48);
    if (!v108(v4 + v63, 1, v64))
    {
      (*(v107 + 8))(v4 + v63, v64);
    }

    v110 = v64;

    v65 = v4 + v62[8];
    type metadata accessor for StaticAccessory.DeviceIdentifier(0);
    v113 = v1;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61(v65, v59);
    }

    else
    {
    }

    v71 = v4 + v62[9];
    v72 = type metadata accessor for StaticDeviceMetadata(0);
    if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
    {
      v61(v71, v59);
    }

    v73 = v62[10];
    if (!v108(v4 + v73, 1, v110))
    {
      (*(v107 + 8))(v4 + v73, v110);
    }

    v61(v4 + v62[12], v59);

    v74 = v62[22];
    if (!(*(v60 + 48))(v4 + v74, 1, v59))
    {
      v61(v4 + v74, v59);
    }

    v75 = v4 + v62[23];
    v76 = *(v75 + 8);
    if (v76 != 255)
    {
      sub_1D1771B5C(*v75, v76);
    }

    v77 = v4 + v62[30];
    v78 = type metadata accessor for StaticSoftwareUpdate(0);
    if (!(*(*(v78 - 8) + 48))(v77, 1, v78))
    {
      v61(v77, v59);
      v79 = v77 + *(v78 + 20);
      type metadata accessor for StaticSoftwareUpdate.Kind(0);
      v80 = swift_getEnumCaseMultiPayload();
      if (v80 == 2 || v80 == 1)
      {

        v90 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
        if (!v108(v79 + v90, 1, v110))
        {
          (*(v107 + 8))(v79 + v90, v110);
        }
      }

      else
      {
        if (v80)
        {
          goto LABEL_89;
        }

        v61(v79, v59);
        if (*(v79 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
        {
          goto LABEL_89;
        }
      }
    }

LABEL_89:

    v91 = v4 + v62[38];
    v92 = type metadata accessor for StaticMatterDevice(0);
    v1 = v113;
    if (!(*(*(v92 - 1) + 48))(v91, 1, v92))
    {
      v61(v91, v59);

      v61(v91 + v92[9], v59);
      v61(v91 + v92[10], v59);

      v61(v91 + v92[12], v59);
      v93 = v92[13];
      if (!v108(v91 + v93, 1, v110))
      {
        (*(v107 + 8))(v91 + v93, v110);
      }

      v94 = v91 + v92[15];

      v95 = *(type metadata accessor for MatterTileMetadata(0) + 44);
      if (!v108(v94 + v95, 1, v110))
      {
        (*(v107 + 8))(v94 + v95, v110);
      }
    }

    goto LABEL_94;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v66 = sub_1D1E66A7C();
    (*(*(v66 - 8) + 8))(v1 + v3, v66);
    v67 = type metadata accessor for StaticServiceGroup(0);

    v68 = *(v67 + 32);
    v69 = sub_1D1E669FC();
    v70 = *(v69 - 8);
    if (!(*(v70 + 48))(v4 + v68, 1, v69))
    {
      (*(v70 + 8))(v4 + v68, v69);
    }

    goto LABEL_84;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v24 = sub_1D1E66A7C();
    v25 = *(*(v24 - 8) + 8);
    v25(v4, v24);
    v26 = type metadata accessor for StaticEndpoint(0);
    v25(v4 + v26[5], v24);

    v27 = v4 + v26[10];
    v28 = type metadata accessor for StaticRVCClusterGroup(0);
    if (!(*(*(v28 - 8) + 48))(v27, 1, v28))
    {
      v25(v27, v24);

      if (*(v27 + *(v28 + 28) + 16))
      {
      }

      v29 = (v27 + *(v28 + 60));
      if (*v29)
      {

        if (v29[9] != 1)
        {
        }
      }
    }

    v30 = v27 + *(type metadata accessor for StaticClusterGroups(0) + 20);
    v31 = type metadata accessor for StaticThermostatClusterGroup(0);
    if (!(*(*(v31 - 1) + 48))(v30, 1, v31))
    {
      v112 = v1;
      v25(v30, v24);
      v32 = v30 + v31[7];

      v33 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
      v34 = (v32 + v33[9]);
      v35 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
      if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
      {
        v36 = v34[1];
        if (v36 >> 60 != 15)
        {
          sub_1D174E7C4(*v34, v36);
        }

        v37 = *(v35 + 20);
        v38 = sub_1D1E669FC();
        v39 = *(v38 - 8);
        if (!(*(v39 + 48))(v34 + v37, 1, v38))
        {
          (*(v39 + 8))(v34 + v37, v38);
        }
      }

      v40 = (v32 + v33[11]);
      v41 = v40[1];
      if (v41 >> 60 != 15)
      {
        sub_1D174E7C4(*v40, v41);
      }

      v42 = (v32 + v33[12]);
      v43 = v42[1];
      if (v43 >> 60 != 15)
      {
        sub_1D174E7C4(*v42, v43);
      }

      v44 = v33[13];
      v45 = sub_1D1E669FC();
      v46 = *(v45 - 8);
      v47 = *(v46 + 48);
      if (!v47(v32 + v44, 1, v45))
      {
        (*(v46 + 8))(v32 + v44, v45);
      }

      v48 = v31[8];
      v49 = v48 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
      if (!v47(v30 + v49, 1, v45))
      {
        (*(v46 + 8))(v30 + v49, v45);
      }

      v50 = v30 + v31[12];
      v51 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
      v52 = *(v51 + 32);
      if (!v47(v50 + v52, 1, v45))
      {
        (*(v46 + 8))(v50 + v52, v45);
      }

      v53 = *(v51 + 36);
      v54 = v47(v50 + v53, 1, v45);
      v1 = v112;
      if (!v54)
      {
        (*(v46 + 8))(v50 + v53, v45);
      }
    }

    v55 = v4 + v26[13];

    v56 = *(type metadata accessor for MatterTileMetadata(0) + 44);
    v57 = sub_1D1E669FC();
    v58 = *(v57 - 8);
    if (!(*(v58 + 48))(v55 + v56, 1, v57))
    {
      (*(v58 + 8))(v55 + v56, v57);
    }
  }

LABEL_94:

  v96 = v4 + *(v117 + 24);
  v97 = type metadata accessor for StaticRoom(0);
  if (!(*(*(v97 - 8) + 48))(v96, 1, v97))
  {
    v98 = v1;
    v99 = sub_1D1E66A7C();
    v100 = *(*(v99 - 8) + 8);
    v100(v96, v99);

    v101 = *(v97 + 24);
    v102 = sub_1D1E669FC();
    v103 = *(v102 - 8);
    if (!(*(v103 + 48))(v96 + v101, 1, v102))
    {
      (*(v103 + 8))(v96 + v101, v102);
    }

    v100(v96 + *(v97 + 36), v99);

    v1 = v98;
  }

  return MEMORY[0x1EEE6BDD0](v1, ((v114 + v115 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v116 | 7);
}

uint64_t sub_1D16F5D48()
{
  v1 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v2 = *(*(v1 - 8) + 80);
  v110 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v111 = (v2 + 48) & ~v2;
  v3 = v0 + v111;
  type metadata accessor for AccessoryDetails.Payload(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v112 = v1;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_94;
      }

      v5 = sub_1D1E66A7C();
      v99 = *(v5 - 8);
      v6 = *(v99 + 8);
      v6(v0 + ((v2 + 48) & ~v2), v5);
      v7 = type metadata accessor for StaticService(0);

      v104 = v6;
      v6(v3 + v7[11], v5);
      v8 = v3 + v7[13];
      v9 = type metadata accessor for StaticDeviceMetadata(0);
      if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
      {
        v6(v8, v5);
      }

      v10 = v7[14];
      v11 = sub_1D1E669FC();
      v12 = *(v11 - 8);
      v13 = *(v12 + 48);
      if (!v13(v3 + v10, 1, v11))
      {
        (*(v12 + 8))(v3 + v10, v11);
      }

      v14 = v7[15];
      if (!v13(v3 + v14, 1, v11))
      {
        (*(v12 + 8))(v3 + v14, v11);
      }

      v98 = v12;

      v15 = v7[29];
      v16 = *(v99 + 48);
      if (!v16(v3 + v15, 1, v5))
      {
        v104(v3 + v15, v5);
      }

      v107 = v2;
      v17 = v7[30];
      if (!v16(v3 + v17, 1, v5))
      {
        v104(v3 + v17, v5);
      }

      v18 = v3 + v7[34];
      v19 = type metadata accessor for StaticSoftwareUpdate(0);
      if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
      {
        v104(v18, v5);
        v20 = v18 + *(v19 + 20);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        v21 = swift_getEnumCaseMultiPayload();
        if (v21 == 2 || v21 == 1)
        {

          v101 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
          if (!v13(v20 + v101, 1, v11))
          {
            (*(v98 + 8))(v20 + v101, v11);
          }
        }

        else
        {
          if (v21)
          {
            goto LABEL_75;
          }

          v104(v20, v5);
          if (*(v20 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
          {
            goto LABEL_75;
          }
        }
      }

LABEL_75:

      v75 = v7[37];
      if (!v16(v3 + v75, 1, v5))
      {
        v104(v3 + v75, v5);
      }

      v76 = v7[39];
      v77 = type metadata accessor for EndpointPath(0);
      v2 = v107;
      if (!(*(*(v77 - 8) + 48))(v3 + v76, 1, v77))
      {
        v104(v3 + v76, v5);
      }

      v78 = v3 + v7[40];
      v79 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
      if (!(*(*(v79 - 8) + 48))(v78, 1, v79))
      {
        if (*(v78 + 16) != 1)
        {
        }

        v80 = v78 + *(v79 + 20);
        v81 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
        if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
        {

          v82 = *(v81 + 24);
          v83 = sub_1D1E66C5C();
          (*(*(v83 - 8) + 8))(v80 + v82, v83);
        }

LABEL_84:

        goto LABEL_94;
      }

      goto LABEL_94;
    }

    v54 = sub_1D1E66A7C();
    v55 = *(v54 - 8);
    v56 = *(v55 + 8);
    v56(v0 + ((v2 + 48) & ~v2), v54);
    v57 = type metadata accessor for StaticAccessory(0);
    v58 = v57[5];
    v106 = sub_1D1E669FC();
    v100 = *(v106 - 8);
    v103 = *(v100 + 48);
    if (!v103(v3 + v58, 1))
    {
      (*(v100 + 8))(v3 + v58, v106);
    }

    v59 = v3 + v57[8];
    type metadata accessor for StaticAccessory.DeviceIdentifier(0);
    v109 = v2;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v56(v59, v54);
    }

    else
    {
    }

    v65 = v3 + v57[9];
    v66 = type metadata accessor for StaticDeviceMetadata(0);
    if (!(*(*(v66 - 8) + 48))(v65, 1, v66))
    {
      v56(v65, v54);
    }

    v67 = v57[10];
    if (!(v103)(v3 + v67, 1, v106))
    {
      (*(v100 + 8))(v3 + v67, v106);
    }

    v56(v3 + v57[12], v54);

    v68 = v57[22];
    if (!(*(v55 + 48))(v3 + v68, 1, v54))
    {
      v56(v3 + v68, v54);
    }

    v69 = v3 + v57[23];
    v70 = *(v69 + 8);
    if (v70 != 255)
    {
      sub_1D1771B5C(*v69, v70);
    }

    v71 = v3 + v57[30];
    v72 = type metadata accessor for StaticSoftwareUpdate(0);
    if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
    {
      v56(v71, v54);
      v73 = v71 + *(v72 + 20);
      type metadata accessor for StaticSoftwareUpdate.Kind(0);
      v74 = swift_getEnumCaseMultiPayload();
      if (v74 == 2 || v74 == 1)
      {

        v84 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
        if (!(v103)(v73 + v84, 1, v106))
        {
          (*(v100 + 8))(v73 + v84, v106);
        }
      }

      else
      {
        if (v74)
        {
          goto LABEL_89;
        }

        v56(v73, v54);
        if (*(v73 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
        {
          goto LABEL_89;
        }
      }
    }

LABEL_89:

    v85 = v3 + v57[38];
    v86 = type metadata accessor for StaticMatterDevice(0);
    v2 = v109;
    if (!(*(*(v86 - 1) + 48))(v85, 1, v86))
    {
      v56(v85, v54);

      v56(v85 + v86[9], v54);
      v56(v85 + v86[10], v54);

      v56(v85 + v86[12], v54);
      v87 = v86[13];
      if (!(v103)(v85 + v87, 1, v106))
      {
        (*(v100 + 8))(v85 + v87, v106);
      }

      v88 = v85 + v86[15];

      v89 = *(type metadata accessor for MatterTileMetadata(0) + 44);
      if (!(v103)(v88 + v89, 1, v106))
      {
        (*(v100 + 8))(v88 + v89, v106);
      }
    }

    goto LABEL_94;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v60 = sub_1D1E66A7C();
    (*(*(v60 - 8) + 8))(v0 + ((v2 + 48) & ~v2), v60);
    v61 = type metadata accessor for StaticServiceGroup(0);

    v62 = *(v61 + 32);
    v63 = sub_1D1E669FC();
    v64 = *(v63 - 8);
    if (!(*(v64 + 48))(v3 + v62, 1, v63))
    {
      (*(v64 + 8))(v3 + v62, v63);
    }

    goto LABEL_84;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v108 = v2;
    v22 = sub_1D1E66A7C();
    v23 = *(*(v22 - 8) + 8);
    v23(v3, v22);
    v24 = type metadata accessor for StaticEndpoint(0);
    v23(v3 + v24[5], v22);

    v25 = v3 + v24[10];
    v26 = type metadata accessor for StaticRVCClusterGroup(0);
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {
      v23(v25, v22);

      if (*(v25 + *(v26 + 28) + 16))
      {
      }

      v27 = (v25 + *(v26 + 60));
      if (*v27)
      {

        if (v27[9] != 1)
        {
        }
      }
    }

    v28 = v25 + *(type metadata accessor for StaticClusterGroups(0) + 20);
    v29 = type metadata accessor for StaticThermostatClusterGroup(0);
    if (!(*(*(v29 - 1) + 48))(v28, 1, v29))
    {
      v23(v28, v22);
      v30 = v28 + v29[7];

      v31 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
      v32 = (v30 + v31[9]);
      v33 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
      if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
      {
        v34 = v32[1];
        if (v34 >> 60 != 15)
        {
          sub_1D174E7C4(*v32, v34);
        }

        v35 = *(v33 + 20);
        v36 = sub_1D1E669FC();
        v102 = *(v36 - 8);
        if (!(*(v102 + 48))(v32 + v35, 1, v36))
        {
          (*(v102 + 8))(v32 + v35, v36);
        }
      }

      v37 = (v30 + v31[11]);
      v38 = v37[1];
      if (v38 >> 60 != 15)
      {
        sub_1D174E7C4(*v37, v38);
      }

      v39 = (v30 + v31[12]);
      v40 = v39[1];
      if (v40 >> 60 != 15)
      {
        sub_1D174E7C4(*v39, v40);
      }

      v41 = v31[13];
      v42 = sub_1D1E669FC();
      v105 = *(v42 - 8);
      v43 = *(v105 + 48);
      if (!v43(v30 + v41, 1, v42))
      {
        (*(v105 + 8))(v30 + v41, v42);
      }

      v44 = v29[8];
      v45 = v44 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
      if (!v43(v28 + v45, 1, v42))
      {
        (*(v105 + 8))(v28 + v45, v42);
      }

      v46 = v28 + v29[12];
      v47 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
      v48 = *(v47 + 32);
      if (!v43(v46 + v48, 1, v42))
      {
        (*(v105 + 8))(v46 + v48, v42);
      }

      v49 = *(v47 + 36);
      if (!v43(v46 + v49, 1, v42))
      {
        (*(v105 + 8))(v46 + v49, v42);
      }
    }

    v50 = v3 + v24[13];

    v51 = *(type metadata accessor for MatterTileMetadata(0) + 44);
    v52 = sub_1D1E669FC();
    v53 = *(v52 - 8);
    v2 = v108;
    if (!(*(v53 + 48))(v50 + v51, 1, v52))
    {
      (*(v53 + 8))(v50 + v51, v52);
    }
  }

LABEL_94:

  v90 = v3 + *(v112 + 24);
  v91 = type metadata accessor for StaticRoom(0);
  if (!(*(*(v91 - 8) + 48))(v90, 1, v91))
  {
    v92 = sub_1D1E66A7C();
    v93 = *(*(v92 - 8) + 8);
    v93(v90, v92);

    v94 = *(v91 + 24);
    v95 = sub_1D1E669FC();
    v96 = *(v95 - 8);
    if (!(*(v96 + 48))(v90 + v94, 1, v95))
    {
      (*(v96 + 8))(v90 + v94, v95);
    }

    v93(v90 + *(v91 + 36), v92);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v110 + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D16F72B8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D1E671BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D16F7364(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D1E671BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16F7408(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D16F74DC(uint64_t *a1)
{
  sub_1D1E6728C();
  sub_1D1E671DC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D16F7574@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1D16F75A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for StaticCharacteristic(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D16F7694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for StaticCharacteristic(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D16F77A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F77D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D16F7888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D16F7948(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D16F7A04()
{
  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_1D1780640(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1D16F7A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 24);
    if (v4 > 3)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1D1E66A7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D16F7AF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 24) = -a2;
  }

  else
  {
    v7 = sub_1D1E66A7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16F7BA4()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F7C00()
{
  v1 = (type metadata accessor for StaticAlarm(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[11];
  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[12], v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D16F7D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D1E66A7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D16F7E18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D1E66A7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16F7F0C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E669FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_1D1E66A7C();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[10];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1D16F8044(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E669FC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 8) = a2;
  }

  else
  {
    v13 = sub_1D1E66A7C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1D16F8180@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1D16F81E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D16F824C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16F8290()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F832C()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D16F8458()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D16F8490()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D16F8554()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D16F8650()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v3 + v7 + 8) & ~v3;
  v9 = (v5 + v8) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v6));

  v10(v0 + v8, v1);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v3 | 7);
}

uint64_t sub_1D16F8770()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D16F8874()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B10, &qword_1D1E7BCB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v10 | 7);
}

uint64_t sub_1D16F89EC()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D16F8B2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F8B64@<X0>(_BYTE *a1@<X8>)
{
  result = HMAccessory.shouldShowInDashboard.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D16F8BBC@<X0>(_BYTE *a1@<X8>)
{
  result = HMAccessory.isFavorite.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D16F8C14@<X0>(_BYTE *a1@<X8>)
{
  result = HMAccessory.contributesToHomeStatus.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D16F8C6C@<X0>(_BYTE *a1@<X8>)
{
  result = HMAccessory.showAsIndividualTiles.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D16F8CEC@<X0>(uint64_t *a1@<X8>)
{
  result = HMAccessory.customNearbyAccessoryIdentifiers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D16F8D58()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F8D90@<X0>(_BYTE *a1@<X8>)
{
  result = HMActionSet.shouldShowInDashboard.getter();
  *a1 = result & 1;
  return result;
}

double sub_1D16F8DE8@<D0>(_OWORD *a1@<X8>)
{
  HMActionSet.icon.getter(v5);
  v2 = v5[3];
  a1[2] = v5[2];
  a1[3] = v2;
  a1[4] = v6[0];
  *(a1 + 73) = *(v6 + 9);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

uint64_t sub_1D16F8E40@<X0>(uint64_t *a1@<X8>)
{
  result = HMActionSet.iconTint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D16F8EDC@<X0>(_BYTE *a1@<X8>)
{
  result = HMApplicationData.isDoubleHigh.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D16F8F4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F8F84@<X0>(uint64_t *a1@<X8>)
{
  result = HMHome.sectionsSortOrder.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D16F8FDC@<X0>(_BYTE *a1@<X8>)
{
  result = HMHome.showPredictedScenesOnDashboard.getter();
  *a1 = result & 1;
  return result;
}

char *sub_1D16F9034@<X0>(char **a1@<X8>)
{
  result = sub_1D18AB1A8(0xD000000000000028, 0x80000001D1EBB9B0);
  *a1 = result;
  return result;
}

char *sub_1D16F90B8@<X0>(char **a1@<X8>)
{
  result = sub_1D18AB1A8(0xD000000000000025, 0x80000001D1EBB9E0);
  *a1 = result;
  return result;
}

char *sub_1D16F913C@<X0>(char **a1@<X8>)
{
  result = sub_1D18AB1A8(0xD000000000000023, 0x80000001D1EBBA70);
  *a1 = result;
  return result;
}

char *sub_1D16F91C0@<X0>(char **a1@<X8>)
{
  result = sub_1D18AB1A8(0xD000000000000026, 0x80000001D1EBBA10);
  *a1 = result;
  return result;
}

char *sub_1D16F9244@<X0>(char **a1@<X8>)
{
  result = sub_1D18AB1A8(0xD000000000000030, 0x80000001D1EBBAD0);
  *a1 = result;
  return result;
}

uint64_t sub_1D16F931C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16F9370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D16F8F48();
  *a1 = result;
  return result;
}

uint64_t sub_1D16F93F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16F9434()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F946C@<X0>(_BYTE *a1@<X8>)
{
  result = HMMediaSystem.shouldShowInDashboard.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D16F94C4@<X0>(_BYTE *a1@<X8>)
{
  result = HMMediaSystem.isFavorite.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D16F951C@<X0>(_BYTE *a1@<X8>)
{
  result = HMMediaSystem.contributesToHomeStatus.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D16F95A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F95E4@<X0>(_BYTE *a1@<X8>)
{
  result = HMService.shouldShowInDashboard.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D16F963C@<X0>(_BYTE *a1@<X8>)
{
  result = HMService.isFavorite.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D16F9694@<X0>(_BYTE *a1@<X8>)
{
  result = HMService.contributesToHomeStatus.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1D16F96EC@<X0>(unint64_t *a1@<X8>)
{
  result = HMService.customIconSFSymbol.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D16F9730@<X0>(unint64_t *a1@<X8>)
{
  result = HMService.customIconSymbol.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D16F97AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F9828()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F9860()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D16F98B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16F98F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D16F9938()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D18, &unk_1D1E7C4D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D16F99F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xAE)
    {
      return v10 - 173;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D16F9AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 - 83;
  }

  return result;
}

uint64_t sub_1D16F9B6C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F9FB8@<X0>(uint64_t *a1@<X8>)
{
  result = CharacteristicKind.Format.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1D16FA058(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D16FB364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D16FB424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D16FB518(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for EndpointPath(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for MatterTileMetadata(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = type metadata accessor for StaticClusterGroups(0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[13];

  return v18(v19, a2, v17);
}

uint64_t sub_1D16FB6D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for EndpointPath(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for MatterTileMetadata(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = type metadata accessor for StaticClusterGroups(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[13];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D16FB890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for MatterTileMetadata(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D16FB9B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for MatterTileMetadata(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D16FBB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D16FBBF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClusterPath(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D16FBCC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FBD6C()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 1936154996;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D16FBDB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D192F3E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D16FBF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EndpointPath(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D16FC050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EndpointPath(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D16FC11C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticService(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F0, &qword_1D1E72F68);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1D1951AE4(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for StaticService);
      sub_1D1E6920C();
      StaticService.hash(into:)(v32);
      result = sub_1D1E6926C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v16 * v20, type metadata accessor for StaticService);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D16FC424(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for StaticService(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_1D16FC11C(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1D16FCA80();
      goto LABEL_12;
    }

    v26 = v10;
    sub_1D16FCC8C(v13 + 1);
  }

  v15 = *v4;
  sub_1D1E6920C();
  StaticService.hash(into:)(v27);
  v16 = sub_1D1E6926C();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1D1951A7C(*(v15 + 48) + v19 * a2, v12, type metadata accessor for StaticService);
      v20 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_1D1951B4C(v12, type metadata accessor for StaticService);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for StaticService);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

void *sub_1D16FC668()
{
  v1 = v0;
  v2 = type metadata accessor for StaticServiceGroup(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647430, &unk_1D1E8EAB0);
  v6 = *v0;
  v7 = sub_1D1E687FC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D1951A7C(*(v6 + 48) + v21, v5, type metadata accessor for StaticServiceGroup);
        result = sub_1D1951AE4(v5, *(v8 + 48) + v21, type metadata accessor for StaticServiceGroup);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D16FC874()
{
  v1 = v0;
  v2 = type metadata accessor for StaticZone(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647420, &qword_1D1E85610);
  v6 = *v0;
  v7 = sub_1D1E687FC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D1951A7C(*(v6 + 48) + v21, v5, type metadata accessor for StaticZone);
        result = sub_1D1951AE4(v5, *(v8 + 48) + v21, type metadata accessor for StaticZone);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D16FCA80()
{
  v1 = v0;
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F0, &qword_1D1E72F68);
  v6 = *v0;
  v7 = sub_1D1E687FC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D1951A7C(*(v6 + 48) + v21, v5, type metadata accessor for StaticService);
        result = sub_1D1951AE4(v5, *(v8 + 48) + v21, type metadata accessor for StaticService);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_1D16FCC8C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticService(0);
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F0, &qword_1D1E72F68);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_1D1951A7C(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for StaticService);
      sub_1D1E6920C();
      StaticService.hash(into:)(v30);
      result = sub_1D1E6926C();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v15 * v19, type metadata accessor for StaticService);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1D16FCF68()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D16FCFC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D16FD0A4(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D16FD0C4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t sub_1D16FD0E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1D16FD3B0(uint64_t a1)
{
  result = sub_1D197E754();
  *(a1 + 8) = result;
  return result;
}

void *sub_1D16FD3E0@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_1D16FD408()
{
  v1 = type metadata accessor for StaticThermostatClusterGroup(0);
  v2 = *(*(v1 - 1) + 80);
  v28 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);
  v4 = sub_1D1E66A7C();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];

  v6 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v7 = (v5 + v6[9]);
  v8 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = v7[1];
    if (v9 >> 60 != 15)
    {
      sub_1D174E7C4(*v7, v9);
    }

    v10 = *(v8 + 20);
    v11 = sub_1D1E669FC();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v7 + v10, 1, v11))
    {
      (*(v12 + 8))(v7 + v10, v11);
    }
  }

  v13 = (v5 + v6[11]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_1D174E7C4(*v13, v14);
  }

  v15 = (v5 + v6[12]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1D174E7C4(*v15, v16);
  }

  v17 = v6[13];
  v18 = sub_1D1E669FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (!v20(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  v21 = v1[8];
  v22 = v21 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
  if (!v20(v3 + v22, 1, v18))
  {
    (*(v19 + 8))(v3 + v22, v18);
  }

  v23 = v3 + v1[12];
  v24 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  v25 = *(v24 + 32);
  if (!v20(v23 + v25, 1, v18))
  {
    (*(v19 + 8))(v23 + v25, v18);
  }

  v26 = *(v24 + 36);
  if (!v20(v23 + v26, 1, v18))
  {
    (*(v19 + 8))(v23 + v26, v18);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v28 + ((v2 + 32) & ~v2) + 1) & 0xFFFFFFFFFFFFFFFELL) + 5, v2 | 7);
}

uint64_t sub_1D16FD7E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FD81C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for EndpointPath(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 2)
    {
      return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[12];

  return v18(v19, a2, v17);
}

uint64_t sub_1D16FD9E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for EndpointPath(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D16FDBC4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 32)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1D16FDC80(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 32)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16FDDA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D16FDDC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

uint64_t sub_1D16FDE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 9);
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *(a1 + 9);
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D16FDEC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 9) = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16FDF6C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480B0, &qword_1D1E8A838);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 52);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D16FE0B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480B0, &qword_1D1E8A838);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D16FE1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_1D16FE2B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16FE438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClusterPath(0);
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

uint64_t sub_1D16FE4F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClusterPath(0);
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

uint64_t sub_1D16FE604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClusterPath(0);
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
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D16FE6DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClusterPath(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D16FE7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D16FE884(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClusterPath(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D16FE940()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FE978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D16FE9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D16FEA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClusterPath(0);
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

uint64_t sub_1D16FEB30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClusterPath(0);
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

unint64_t sub_1D16FEC10(uint64_t a1)
{
  result = sub_1D19D0630();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D16FEC60()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FEC98()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D16FECF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_1D16FED40(uint64_t a1)
{
  result = sub_1D19DCCE4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D16FED68()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FEF50()
{
  v1 = 0x444965646F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x746E696F70646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656D6F68;
  }
}

uint64_t sub_1D16FEFA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19E952C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D16FEFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EndpointPath(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0x1E)
    {
      return v10 - 29;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D16FF090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EndpointPath(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 29;
  }

  return result;
}

uint64_t sub_1D16FF1F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FF23C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D16FF2C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FF360()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16FF3A0()
{
  v1 = *(v0 + 48);
  if (v1 <= 4)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      }

      goto LABEL_9;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (v1 == 5)
  {
    goto LABEL_8;
  }

  if (v1 == 6)
  {
    sub_1D174E7C4(*(v0 + 16), *(v0 + 24));
  }

LABEL_9:

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D16FF424(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486D8, &qword_1D1E91190);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D16FF4E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486D8, &qword_1D1E91190);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16FF590()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16FF5D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16FF610()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D16FF65C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FF6A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FF6E0()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FF8CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16FF90C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16FF960()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FF9AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16FF9F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D16FFABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16FFB6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1D16FFCB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ClusterPath(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 8) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1D16FFE50(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for EndpointPath(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D16FFF80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for EndpointPath(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D17000D0()
{
  swift_unknownObjectRelease();

  sub_1D1A283E8(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  if (*(v0 + 80) != 255)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D1700138()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1700170()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for MatterStateSnapshot(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  swift_unknownObjectRelease();

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);

  v10(v0 + v8 + v6[7], v1);

  if (*(v0 + v8 + v6[10] + 8) != 255)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1D1700308(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D1E66A7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D17003B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D1E66A7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1700458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D1700560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D17006AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for EndpointPath(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for StaticClusterGroups(0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[10];
      goto LABEL_5;
    }

    v17 = type metadata accessor for MatterTileMetadata(0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[13];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1D170086C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for EndpointPath(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = type metadata accessor for StaticClusterGroups(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v17 = type metadata accessor for MatterTileMetadata(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[13];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D1700AA0()
{
  if (*(v0 + 16))
  {

    if (*(v0 + 32) != 255)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D1700AF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1700B28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[13];
      goto LABEL_3;
    }

    v15 = type metadata accessor for MatterTileMetadata(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[15];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D1700CAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[13];
    goto LABEL_3;
  }

  v15 = type metadata accessor for MatterTileMetadata(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[15];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D1700E34()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1700E6C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D1700EB8(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return HMAccessory.accessoryDelegate.setter(v2, v1);
}

uint64_t sub_1D1700EF8(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return HMAccessorySettingsDataSource.settingsDelegate.setter(v2, v1);
}

uint64_t sub_1D1700F38(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return HMHome.homeDelegate.setter(v2, v1);
}

uint64_t sub_1D1700F78(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return HMHomeManager.homeManagerDelegate.setter(v2, v1);
}

uint64_t sub_1D1700FB8(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return HMMediaSession.mediaSessionDelegate.setter(v2, v1);
}

uint64_t sub_1D1700FF8(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return HMUserActionPredictionController.predictionDelegate.setter(v2, v1);
}

void sub_1D1701084(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D1A7E4AC(v1);
}

void sub_1D17010BC(os_unfair_lock_s **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 4);
  os_unfair_lock_opaque = v3[5]._os_unfair_lock_opaque;
  v5 = BYTE1(v3[5]._os_unfair_lock_opaque);
  v6 = BYTE2(v3[5]._os_unfair_lock_opaque);
  os_unfair_lock_opaque_high = HIBYTE(v3[5]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v3 + 4);
  *a2 = os_unfair_lock_opaque;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = os_unfair_lock_opaque_high;
}

void sub_1D1701120(char *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  os_unfair_lock_lock(*a2 + 4);
  LOBYTE(v6[5]._os_unfair_lock_opaque) = v2;
  BYTE1(v6[5]._os_unfair_lock_opaque) = v3;
  BYTE2(v6[5]._os_unfair_lock_opaque) = v4;
  HIBYTE(v6[5]._os_unfair_lock_opaque) = v5;

  os_unfair_lock_unlock(v6 + 4);
}

id sub_1D170118C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void *sub_1D17011E8@<X0>(uint64_t *a1@<X8>)
{
  result = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
  *a1 = result;
  return result;
}

void sub_1D1701210(void *a1)
{

  sub_1D1A82D30(v1);
}

uint64_t sub_1D1701244()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C20, &qword_1D1E95FF8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D1701274()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C28, qword_1D1E96000);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D17012A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D17012E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1701320()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1701390()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C28, qword_1D1E96000);
  sub_1D1AA35F0(v1);

  return MEMORY[0x1EEE6BDD0](v0, 17, 7);
}

uint64_t sub_1D17013EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D1701500()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D17015D8()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v22 = *(*(v1 - 8) + 80);
  v20 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v21 = (v22 + 32) & ~v22;

  v2 = v0 + v21 + *(v1 + 20);
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for StaticHome(0);

  v6 = v5[6];
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v10 = v2 + v5[7];
  v4(v10, v3);
  v19 = v4;
  v11 = type metadata accessor for StaticRoom(0);

  v18 = v3;
  v12 = *(v11 + 24);
  if (!v9(v10 + v12, 1, v7))
  {
    (*(v8 + 8))(v10 + v12, v7);
  }

  v19(v10 + *(v11 + 36), v18);

  v13 = v2 + v5[8];
  v19(v13, v18);
  v14 = type metadata accessor for StaticUser(0);

  v19(v13 + *(v14 + 24), v18);

  v15 = v2 + v5[22];
  v16 = type metadata accessor for StaticResident(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v19(v15, v18);

    sub_1D1771B5C(*(v15 + *(v16 + 36)), *(v15 + *(v16 + 36) + 8));
    v19(v15 + *(v16 + 40), v18);
  }

  return MEMORY[0x1EEE6BDD0](v0, v21 + v20, v22 | 7);
}

uint64_t sub_1D1701AE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1701B30()
{
  v17 = sub_1D1E66A7C();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_1D1E6709C();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_1D1E6701C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = v2 | v6 | v11;
  v14 = (*(v10 + 64) + v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 8, v13 | 7);
}

uint64_t sub_1D1701D10()
{
  v1 = sub_1D1E6709C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1D1701E64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1701EF8()
{
  v1 = sub_1D1E6701C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v23 = (v3 + 32) & ~v3;
  v24 = v1;
  v4 = (*(v2 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = sub_1D1E66FDC();
  v5 = *(v22 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 17) & ~v6;
  v18 = v7;
  v8 = *(v5 + 64);
  v21 = sub_1D1E6709C();
  v9 = *(v21 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v12 = *(v9 + 64);
  v19 = sub_1D1E66A7C();
  v13 = *(v19 - 8);
  v14 = *(v13 + 80);
  v15 = (v11 + v12 + v14) & ~v14;
  v20 = v3 | v6 | v10 | v14;
  v16 = (*(v13 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v23, v24);
  (*(v5 + 8))(v0 + v18, v22);
  (*(v9 + 8))(v0 + v11, v21);
  (*(v13 + 8))(v0 + v15, v19);

  return MEMORY[0x1EEE6BDD0](v0, ((((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32, v20 | 7);
}

uint64_t sub_1D17021D0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649D90, &unk_1D1E96370);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D1702294()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D17022D8()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = v4 + *(v2 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1D17024DC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1702554()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D170263C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A288, &qword_1D1E96640);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D17026D0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649D90, &unk_1D1E96370);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D170270C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1702748(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    sub_1D1E66A7C();
    sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E6769C();
    sub_1D1E67D7C();
    v9 = sub_1D1E685AC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

void *sub_1D1702884(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_1D1E66A7C();
    sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E6769C();
    sub_1D1E67D7C();
    v7 = sub_1D1E685AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D17029AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 84) == a2)
  {
    v5 = *(v4 + 48);

    return v5(a1);
  }

  else
  {
    updated = _s24SnapshotUpdateControllerC13UpdateRequestV8ScheduleOMa(0, *(a3 + 16), *(a3 + 24), *(a3 + 32));
    v11 = *(*(updated - 8) + 48);
    v12 = a1 + *(a3 + 44);

    return v11(v12, a2, updated);
  }
}

uint64_t sub_1D1702A8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84) == a3)
  {
    v7 = *(v6 + 56);

    return v7(a1, a2, a2, v5);
  }

  else
  {
    updated = _s24SnapshotUpdateControllerC13UpdateRequestV8ScheduleOMa(0, v5, *(a4 + 24), *(a4 + 32));
    v12 = *(*(updated - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, updated);
  }
}

uint64_t sub_1D1702B88(uint64_t a1, uint64_t a2, void *a3)
{
  updated = _s24SnapshotUpdateControllerC13UpdateRequestV17PrioritizedConfigVMa(0, a3[2], a3[3], a3[4]);
  v6 = (*(*(updated - 8) + 48))(a1, a2, updated);
  if (v6 >= 2)
  {
    return v6 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1702C00(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  updated = _s24SnapshotUpdateControllerC13UpdateRequestV17PrioritizedConfigVMa(0, a4[2], a4[3], a4[4]);
  v8 = *(*(updated - 8) + 56);

  return v8(a1, v6, a3, updated);
}

uint64_t sub_1D1702C88()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D1702CC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1702D14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1702D6C()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1702DA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1702DF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1702E2C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1702E7C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1702F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1702F98(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D1703028()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D1703078()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D17030C0()
{
  if (*(v0 + 16))
  {

    if (*(v0 + 32) != 255)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D1703110()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D170315C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D17031A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D17032D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D170331C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D1703404()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D170343C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D1703494()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D17034E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D170353C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1703584()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D17035D4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for StateSnapshot(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v24 = v4;
    v25 = (v2 + 48) & ~v2;
    v26 = v2;

    v6 = v0 + v3 + *(v5 + 20);
    v7 = sub_1D1E66A7C();
    v8 = *(*(v7 - 8) + 8);
    v8(v6, v7);
    v9 = type metadata accessor for StaticHome(0);

    v10 = v9[6];
    v11 = sub_1D1E669FC();
    v20 = *(v11 - 8);
    v21 = *(v20 + 48);
    if (!v21(v6 + v10, 1, v11))
    {
      (*(v20 + 8))(v6 + v10, v11);
    }

    v12 = v6 + v9[7];
    v8(v12, v7);
    v22 = v7;
    v23 = v8;
    v13 = type metadata accessor for StaticRoom(0);

    v14 = *(v13 + 24);
    if (!v21(v12 + v14, 1, v11))
    {
      (*(v20 + 8))(v12 + v14, v11);
    }

    v23(v12 + *(v13 + 36));

    v15 = v6 + v9[8];
    (v23)(v15, v22);
    v16 = type metadata accessor for StaticUser(0);

    (v23)(v15 + *(v16 + 24), v22);

    v17 = v6 + v9[22];
    v18 = type metadata accessor for StaticResident(0);
    v2 = v26;
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      (v23)(v17, v22);

      sub_1D1771B5C(*(v17 + *(v18 + 36)), *(v17 + *(v18 + 36) + 8));
      (v23)(v17 + *(v18 + 40), v22);
    }

    v4 = v24;
    v3 = v25;
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D1703B50()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D1703B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StateSnapshot(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for MatterStateSnapshot(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D1703CC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StateSnapshot(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for MatterStateSnapshot(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D1703E88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1703F58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1703F90()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1703FD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1704010()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v15 = (v3 + 72) & ~v3;
  v4 = (*(v2 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v8 = sub_1D1E680DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v4 + v10 + 8) & ~v10;
  v12 = v3 | v10;
  v13 = (((*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v15, v1);

  (*(v9 + 8))(v0 + v11, v8);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v13 + 8, v12 | 7);
}

uint64_t sub_1D17042C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D1704308()
{
  v17 = sub_1D1E66A7C();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_1D1E6709C();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_1D1E6701C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = v2 | v6 | v11;
  v14 = (*(v10 + 64) + v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 8, v13 | 7);
}

uint64_t sub_1D17044E8()
{
  v1 = sub_1D1E6709C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v9 = sub_1D1E680BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v5 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v3 | v11;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v13, v14 | 7);
}

uint64_t sub_1D1704750()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v4 = sub_1D1E680BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  (*(v5 + 8))(v0 + v7, v4);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v6 | 7);
}

uint64_t sub_1D1704900()
{
  v1 = sub_1D1E6701C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v23 = (v3 + 48) & ~v3;
  v24 = v1;
  v4 = (*(v2 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = sub_1D1E66FDC();
  v5 = *(v22 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 17) & ~v6;
  v18 = v7;
  v8 = *(v5 + 64);
  v21 = sub_1D1E6709C();
  v9 = *(v21 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v12 = *(v9 + 64);
  v19 = sub_1D1E66A7C();
  v13 = *(v19 - 8);
  v14 = *(v13 + 80);
  v15 = (v11 + v12 + v14) & ~v14;
  v20 = v3 | v6 | v10 | v14;
  v16 = (((((*(v13 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v23, v24);
  (*(v5 + 8))(v0 + v18, v22);
  (*(v9 + 8))(v0 + v11, v21);
  (*(v13 + 8))(v0 + v15, v19);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v16 + 32, v20 | 7);
}

uint64_t sub_1D1704BB0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1D1B1384C();
}

__n128 sub_1D1704C24(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D1704C30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1704C74()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1704CC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1D1704D08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for WeakMutex.WeakWrapper(255, *a1, a3, a4);
  return sub_1D1E66E2C();
}

uint64_t sub_1D1704D54()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1704D8C()
{
  v1 = sub_1D1E67F2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D1704E68()
{
  v1 = sub_1D1E67F2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D1704FD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1705010()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1705058()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1705090()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1D17050D8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1705114()
{
  v1 = _s8IntervalVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  v6 = *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v1 + 20);
  v10 = sub_1D1E68A2C();
  v11 = *(*(v10 - 8) + 8);
  v11(v5 + v9, v10);
  v11(v5 + *(v1 + 24), v10);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D17052D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D170538C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D170544C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D17054B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D1705530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
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

uint64_t sub_1D17055FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
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

uint64_t sub_1D17056C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TilesFilter(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for StatusItemLocation(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1D1705818(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for IconTextValueStringDataHolder(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for TilesFilter(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for StatusItemLocation(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[9];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D1705970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 252)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D1705A8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IconTextValueStringDataHolder(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 252)
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170626C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 252)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D1706388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IconTextValueStringDataHolder(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 252)
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170659C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, v3);
}

uint64_t sub_1D17066E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_1D1706828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1706894(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D1706914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 5)
      {
        return v14 - 4;
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

uint64_t sub_1D1706A1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IconTextValueStringDataHolder(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TilesFilter(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 4;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D1706B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 4)
      {
        return v14 - 3;
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

uint64_t sub_1D1706C34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IconTextValueStringDataHolder(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TilesFilter(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D170729C()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v22 = *(*(v1 - 8) + 80);
  v20 = *(*(v1 - 8) + 64);

  v21 = (v22 + 24) & ~v22;

  v2 = v0 + v21 + *(v1 + 20);
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for StaticHome(0);

  v6 = v5[6];
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v10 = v2 + v5[7];
  v4(v10, v3);
  v19 = v4;
  v11 = type metadata accessor for StaticRoom(0);

  v18 = v3;
  v12 = *(v11 + 24);
  if (!v9(v10 + v12, 1, v7))
  {
    (*(v8 + 8))(v10 + v12, v7);
  }

  v19(v10 + *(v11 + 36), v18);

  v13 = v2 + v5[8];
  v19(v13, v18);
  v14 = type metadata accessor for StaticUser(0);

  v19(v13 + *(v14 + 24), v18);

  v15 = v2 + v5[22];
  v16 = type metadata accessor for StaticResident(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v19(v15, v18);

    sub_1D1771B5C(*(v15 + *(v16 + 36)), *(v15 + *(v16 + 36) + 8));
    v19(v15 + *(v16 + 40), v18);
  }

  return MEMORY[0x1EEE6BDD0](v0, v21 + v20, v22 | 7);
}

uint64_t sub_1D17077A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D17077DC()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v22 = *(*(v1 - 8) + 80);
  v20 = *(*(v1 - 8) + 64);

  v23 = v0;
  v21 = (v22 + 112) & ~v22;

  v2 = v0 + v21 + *(v1 + 20);
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for StaticHome(0);

  v6 = v5[6];
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v10 = v2 + v5[7];
  v4(v10, v3);
  v19 = v4;
  v11 = type metadata accessor for StaticRoom(0);

  v18 = v3;
  v12 = *(v11 + 24);
  if (!v9(v10 + v12, 1, v7))
  {
    (*(v8 + 8))(v10 + v12, v7);
  }

  v19(v10 + *(v11 + 36), v18);

  v13 = v2 + v5[8];
  v19(v13, v18);
  v14 = type metadata accessor for StaticUser(0);

  v19(v13 + *(v14 + 24), v18);

  v15 = v2 + v5[22];
  v16 = type metadata accessor for StaticResident(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v19(v15, v18);

    sub_1D1771B5C(*(v15 + *(v16 + 36)), *(v15 + *(v16 + 36) + 8));
    v19(v15 + *(v16 + 40), v18);
  }

  return MEMORY[0x1EEE6BDD0](v23, v21 + v20, v22 | 7);
}

uint64_t sub_1D1707D28()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v22 = *(*(v1 - 8) + 80);
  v20 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v23 = v0;
  v21 = (v22 + 128) & ~v22;

  v2 = v0 + v21 + *(v1 + 20);
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for StaticHome(0);

  v6 = v5[6];
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v10 = v2 + v5[7];
  v4(v10, v3);
  v19 = v4;
  v11 = type metadata accessor for StaticRoom(0);

  v18 = v3;
  v12 = *(v11 + 24);
  if (!v9(v10 + v12, 1, v7))
  {
    (*(v8 + 8))(v10 + v12, v7);
  }

  v19(v10 + *(v11 + 36), v18);

  v13 = v2 + v5[8];
  v19(v13, v18);
  v14 = type metadata accessor for StaticUser(0);

  v19(v13 + *(v14 + 24), v18);

  v15 = v2 + v5[22];
  v16 = type metadata accessor for StaticResident(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v19(v15, v18);

    sub_1D1771B5C(*(v15 + *(v16 + 36)), *(v15 + *(v16 + 36) + 8));
    v19(v15 + *(v16 + 40), v18);
  }

  return MEMORY[0x1EEE6BDD0](v23, v21 + v20, v22 | 7);
}

uint64_t sub_1D1708270()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v25 = *(*(v1 - 8) + 80);
  v23 = *(*(v1 - 8) + 64);
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v22 = *(v3 + 80);
  v26 = *(v3 + 64);
  swift_unknownObjectRelease();
  v24 = (v25 + 32) & ~v25;

  v4 = v0 + v24 + *(v1 + 20);
  v5 = *(v3 + 8);
  v5(v4, v2);
  v6 = type metadata accessor for StaticHome(0);

  v7 = v6[6];
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = v4 + v6[7];
  v5(v11, v2);
  v21 = v2;
  v12 = type metadata accessor for StaticRoom(0);

  v20 = v5;
  v13 = *(v12 + 24);
  if (!v10(v11 + v13, 1, v8))
  {
    (*(v9 + 8))(v11 + v13, v8);
  }

  v20(v11 + *(v12 + 36), v21);

  v14 = v4 + v6[8];
  v20(v14, v21);
  v15 = type metadata accessor for StaticUser(0);

  v20(v14 + *(v15 + 24), v21);

  v16 = v4 + v6[22];
  v17 = type metadata accessor for StaticResident(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    v20(v16, v21);

    sub_1D1771B5C(*(v16 + *(v17 + 36)), *(v16 + *(v17 + 36) + 8));
    v20(v16 + *(v17 + 40), v21);
  }

  v18 = (v24 + v23 + v22) & ~v22;

  v20(v0 + v18, v21);

  return MEMORY[0x1EEE6BDD0](v0, v18 + v26, v25 | v22 | 7);
}

uint64_t sub_1D17087E4()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v22 = *(*(v1 - 8) + 80);
  v20 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v23 = v0;
  v21 = (v22 + 40) & ~v22;

  v2 = v0 + v21 + *(v1 + 20);
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for StaticHome(0);

  v6 = v5[6];
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v10 = v2 + v5[7];
  v4(v10, v3);
  v19 = v4;
  v11 = type metadata accessor for StaticRoom(0);

  v18 = v3;
  v12 = *(v11 + 24);
  if (!v9(v10 + v12, 1, v7))
  {
    (*(v8 + 8))(v10 + v12, v7);
  }

  v19(v10 + *(v11 + 36), v18);

  v13 = v2 + v5[8];
  v19(v13, v18);
  v14 = type metadata accessor for StaticUser(0);

  v19(v13 + *(v14 + 24), v18);

  v15 = v2 + v5[22];
  v16 = type metadata accessor for StaticResident(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v19(v15, v18);

    sub_1D1771B5C(*(v15 + *(v16 + 36)), *(v15 + *(v16 + 36) + 8));
    v19(v15 + *(v16 + 40), v18);
  }

  return MEMORY[0x1EEE6BDD0](v23, v21 + v20, v22 | 7);
}

uint64_t sub_1D1708E48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[12];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[13];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E8, &qword_1D1E9B040);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[16];

  return v18(v19, a2, v17);
}

uint64_t sub_1D170902C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[12];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E8, &qword_1D1E9B040);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[16];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D1709214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D1709280(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D17092F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D17093EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D17094F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D17095AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_1D1709664()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D17096AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D17096EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D17097B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D1709880()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D17098B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D1709910()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D1709960()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D17099B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D17099F4()
{
  if (*v0)
  {
    return 0x6F7250616964656DLL;
  }

  else
  {
    return 0x6F7250746867696CLL;
  }
}

uint64_t sub_1D1709A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D1709AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D170A33C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[7] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[22];
      goto LABEL_5;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[30];
      goto LABEL_5;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[38];

    return v21(v22, a2, v20);
  }
}

uint64_t sub_1D170A610(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v16 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[22];
    goto LABEL_5;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[30];
    goto LABEL_5;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[38];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1D170AB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 64);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D170AC78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 64);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170ADAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D170ADE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D170AE1C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D170AE60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D170AEB0()
{
  v1 = (type metadata accessor for StaticActionSet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);

  v6(v0 + v3 + v1[9], v5);

  v7 = v1[18];
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  v10 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v2 | 7);
}

uint64_t sub_1D170B0C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D170B10C()
{
  v1 = (type metadata accessor for StaticActionSet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);

  v6(v0 + v3 + v1[9], v5);

  v7 = v1[18];
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  v10 = (v4 + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D170B320()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D170B368()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D170B3A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D170B478(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[18];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[25];

  return v18(v19, a2, v17);
}

uint64_t sub_1D170B65C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[18];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[25];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D170B8D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[18];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D170BA64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[18];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D170BDF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[13];
LABEL_17:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_18;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[14];
    goto LABEL_17;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[29];
    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = a3[34];
    goto LABEL_17;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v14 = *(v19 - 8);
    v15 = a3[39];
    goto LABEL_17;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[40];

  return v21(v22, a2, v20);
}

uint64_t sub_1D170C0D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[13];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[14];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[29];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[34];
    goto LABEL_15;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[39];
    goto LABEL_15;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[40];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1D170C3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1D170C48C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
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
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1D170CA68()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D170CAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D170CBDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170CD10()
{
  v1 = type metadata accessor for StaticService(0);
  v34 = *(*(v1 - 1) + 80);
  v32 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v35 = v0;
  v33 = (v34 + 32) & ~v34;
  v2 = v0 + v33;
  v3 = sub_1D1E66A7C();
  v36 = *(v3 - 8);
  v4 = *(v36 + 8);
  v4(v0 + v33, v3);

  v4(v0 + v33 + v1[11], v3);
  v5 = v0 + v33 + v1[13];
  v6 = type metadata accessor for StaticDeviceMetadata(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v4(v5, v3);
  }

  v7 = v1[14];
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  v11 = v1[15];
  if (!v10(v2 + v11, 1, v8))
  {
    (*(v9 + 8))(v2 + v11, v8);
  }

  v31 = v9;

  v12 = v1[29];
  v13 = *(v36 + 48);
  if (!v13(v2 + v12, 1, v3))
  {
    v4(v2 + v12, v3);
  }

  v14 = v1[30];
  if (!v13(v2 + v14, 1, v3))
  {
    v4(v2 + v14, v3);
  }

  v37 = v4;

  v15 = v2 + v1[34];
  v16 = type metadata accessor for StaticSoftwareUpdate(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v37(v15, v3);
    v17 = v15 + *(v16 + 20);
    type metadata accessor for StaticSoftwareUpdate.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {

      v30 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
      if (!v10(v17 + v30, 1, v8))
      {
        (*(v31 + 8))(v17 + v30, v8);
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_21;
      }

      v37(v17, v3);
      if (*(v17 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_21:

  v19 = v1[37];
  if (!v13(v2 + v19, 1, v3))
  {
    v37(v2 + v19, v3);
  }

  v20 = v1[39];
  v21 = type metadata accessor for EndpointPath(0);
  if (!(*(*(v21 - 8) + 48))(v2 + v20, 1, v21))
  {
    v37(v2 + v20, v3);
  }

  v22 = v2 + v1[40];
  v23 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    if (*(v22 + 16) != 1)
    {
    }

    v24 = v22 + *(v23 + 20);
    v25 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
    if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
    {

      v26 = *(v25 + 24);
      v27 = sub_1D1E66C5C();
      (*(*(v27 - 8) + 8))(v24 + v26, v27);
    }
  }

  v28 = (v32 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v35, v28 + 8, v34 | 7);
}

uint64_t sub_1D170D8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StateSnapshot(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D170D9D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StateSnapshot(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170DB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticUserActionPrediction(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D170DB74(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for StaticUserActionPrediction(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D170DBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D170DD20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170DED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
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
    v11 = sub_1D1E66A7C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D170E00C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
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
    v11 = sub_1D1E66A7C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170E208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 72);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D170E33C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 72);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170E538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D170E5F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D170E884(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for StaticHome(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D170E930(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StaticHome(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D170E9E4()
{
  v1 = type metadata accessor for StaticMatterDevice(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);

  v6(v0 + v3 + v1[9], v5);
  v6(v0 + v3 + v1[10], v5);

  v6(v0 + v3 + v1[12], v5);
  v7 = v1[13];
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = v4 + v1[15];

  v12 = *(type metadata accessor for MatterTileMetadata(0) + 44);
  if (!v10(v11 + v12, 1, v8))
  {
    (*(v9 + 8))(v11 + v12, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v14, v2 | 7);
}