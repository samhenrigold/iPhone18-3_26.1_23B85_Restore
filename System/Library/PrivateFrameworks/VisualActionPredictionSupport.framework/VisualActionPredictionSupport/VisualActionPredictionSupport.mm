uint64_t sub_1D9E3AB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2AD7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D9F2AD0C();
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

uint64_t sub_1D9E3AC34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D9F2AD7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1D9F2AD0C();
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

uint64_t sub_1D9E3AD68@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t getEnumTagSinglePayload for PredictionScope(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PredictionScope(uint64_t result, int a2, int a3)
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

uint64_t sub_1D9E3B138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedActionSet(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D9E3B1A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedActionSet(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D9E3B214()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9E3B24C()
{
  v1 = sub_1D9F2AD7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D9E3B360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VisualContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 33);
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

uint64_t sub_1D9E3B430(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for VisualContext(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 33) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D9E3B51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PredictedAction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for VisualContext(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 40);
      if (v14 > 2)
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

uint64_t sub_1D9E3B628(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PredictedAction(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for VisualContext(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 40) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D9E3B764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
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
    v8 = type metadata accessor for VisualContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D9E3B808(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = type metadata accessor for VisualContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D9E3B940(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PredictedActionSet(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D9E3B9EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PredictedActionSet(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D9E3BA90(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PredictedActionSet(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D9E3BB3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PredictedActionSet(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D9E3BBE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9E3BC24()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9E3BEFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9E3BF4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9E3BF84()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9E3BFCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9E3C00C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9E3C088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2AD7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 80);
    v11 = (v10 >> 5) & 0xFFFFFF87 | (8 * ((v10 >> 1) & 0xF));
    v12 = v11 ^ 0x7F;
    v13 = 128 - v11;
    if (v12 >= 0x79)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

double sub_1D9E3C158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D9F2AD7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 24);
    result = 0.0;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *v12 = 0u;
    *(v12 + 80) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
  }

  return result;
}

uint64_t sub_1D9E3C278(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D9E3C340(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D9E3C3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D9E3C4C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D9E3C588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D9E3C654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D9E3C754()
{
  v1 = sub_1D9F2AD7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D9E3C830()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9E3C868()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9E3C8A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9E3C8E0()
{
  v1 = sub_1D9F2AD7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D9E3C9AC()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v1 = sub_1D9F2B30C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

_OWORD *sub_1D9E3CA7C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_1D9E3CA94@<D0>(_OWORD *a1@<X8>)
{
  sub_1D9F2A97C();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_1D9E3CAD4@<X0>(void *a1@<X8>)
{
  result = sub_1D9F2A97C();
  *a1 = v3;
  return result;
}

double sub_1D9E3CB14@<D0>(_OWORD *a1@<X8>)
{
  sub_1D9F2A97C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1D9E3CB9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9E3CBD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D9E3CC0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9E3CC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2AD7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D9E3CD64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D9F2AD7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D9E3CE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D9E3CEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D9E3CF54()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D9E3D020()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D9E3D068()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9E3D0A8()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1D9E3D194()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D9E3D1D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D9E3D20C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D9E3D244()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D9E3D320()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9E3D358()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D9E3D43C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9E3D474()
{

  sub_1D9E84B4C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D9E3D4B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9E3D4F0()
{
  v1 = type metadata accessor for ServiceEnvelope(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1D9F2AD7C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v1 + 20);
  v7 = sub_1D9F2AD0C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = (v0 + v3 + *(v1 + 32));
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_1D9E4015C(*v8, v9);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D9E3D668()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9E3D6A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D9E3D84C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1D9F2AF7C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1D9F2B4CC();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1D9F2AFFC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1D9E3D9B8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1D9F2AF7C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1D9F2B4CC();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1D9F2AFFC();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D9E3DB24()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9E3DB5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9E3DB9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75050, &qword_1D9F3E720);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D9E3DC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2AD7C();
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

uint64_t sub_1D9E3DCF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D9F2AD7C();
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

uint64_t sub_1D9E3DDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2AD0C();
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

uint64_t sub_1D9E3DE70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D9F2AD0C();
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

uint64_t sub_1D9E3E038()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x7468676972;
  }

  if (*v0)
  {
    v1 = 1952867692;
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

uint64_t sub_1D9E3E09C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EE4FB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E3E0C4()
{
  v1 = 120;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 0x746867696568;
  }

  if (*v0)
  {
    v1 = 121;
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

uint64_t sub_1D9E3E120@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EE5110(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E3E150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Contact.Identity(0);
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

uint64_t sub_1D9E3E20C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Contact.Identity(0);
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

uint64_t sub_1D9E3E2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
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

uint64_t sub_1D9E3E39C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
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

uint64_t sub_1D9E3E6DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D9E3E734()
{

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1D9E3E77C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D9E3E7BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D9E3E81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2AD7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D9E3E934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D9F2AD7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D9E3EA48()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9E3EA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    v12 = v11 <= 0;
    if (v11 < 0)
    {
      v11 = -1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t sub_1D9E3EB58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 + 1);
  }

  return result;
}

BOOL sub_1D9E3EC78(void *a1, uint64_t *a2)
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

void *sub_1D9E3ECA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1D9E3ECD4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1D9E3EDAC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D9E3EE4C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D9E3EE88(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t sub_1D9E3EEF4(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_1D9E3EFE8(uint64_t a1, int a2)
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

uint64_t sub_1D9E3F008(uint64_t result, int a2, int a3)
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

void sub_1D9E3F044(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1D9E3F134(uint64_t a1, uint64_t a2)
{
  sub_1D9F2BAFC();
  swift_getWitnessTable();
  sub_1D9F2AD9C();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E3F19C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1D9F2AD8C();
}

uint64_t sub_1D9E3F270(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport18CancellationReasonO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport14ServiceFailureO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D9E3F314(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 17))
  {
    return (*a1 + 60);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 16) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D9E3F368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 16) = 0;
    *result = a2 - 60;
    *(result + 8) = 0;
    if (a3 >= 0x3C)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1D9E3F3CC(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_1D9E3F408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

void sub_1D9E3F498(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CA0, &unk_1D9F35D60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v27 - v6;
  v8 = sub_1D9F2B77C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F2AB4C();
  swift_allocObject();
  sub_1D9F2AB3C();
  empty = xpc_dictionary_create_empty();
  sub_1D9F2B76C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v29[3] = &type metadata for XPCValueContainer;
    v29[0] = empty;
    swift_unknownObjectRetain();
    v13 = sub_1D9F2AB2C();
    sub_1D9EAE614(v29, v11);
    v13(v28, 0);
    v14 = v27[1];
    v15 = sub_1D9F2AB1C();
    if (v14)
    {
      sub_1D9E3F7D8();
      swift_allocError();
      *v17 = v14;
      *(v17 + 8) = 0;
      *(v17 + 16) = 32;
      swift_willThrow();
      v18 = v14;

      swift_unknownObjectRelease();
    }

    else
    {
      v19 = v15;
      v20 = v16;
      sub_1D9F2A93C();
      v21 = type metadata accessor for ServiceEnvelope(0);
      sub_1D9F2ACEC();
      v22 = (*(v30 + 40))(a1);
      v24 = v23;

      *(a3 + v21[6]) = 0;
      v25 = (a3 + v21[7]);
      *v25 = v22;
      v25[1] = v24;
      v26 = (a3 + v21[8]);
      *v26 = v19;
      v26[1] = v20;
      *(a3 + v21[9]) = empty;
    }
  }
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

unint64_t sub_1D9E3F7D8()
{
  result = qword_1ECB72CA8;
  if (!qword_1ECB72CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72CA8);
  }

  return result;
}

uint64_t NSQualityOfService.dispatchQoS.getter(uint64_t a1)
{
  if (a1 <= 16)
  {
    if (a1 == -1)
    {
      return sub_1D9F2AFDC();
    }

    if (a1 == 9)
    {
      return sub_1D9F2AF9C();
    }
  }

  else
  {
    switch(a1)
    {
      case 17:
        return sub_1D9F2AFEC();
      case 25:
        return sub_1D9F2AFBC();
      case 33:
        return sub_1D9F2AFCC();
    }
  }

  return sub_1D9F2AFAC();
}

uint64_t type metadata accessor for ServiceEnvelope(uint64_t a1)
{
  result = qword_1EE0F2B48;
  if (!qword_1EE0F2B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9E3F8E8(uint64_t a1)
{
  sub_1D9F2AD7C();
  if (v1 <= 0x3F)
  {
    sub_1D9F2AD0C();
    if (v2 <= 0x3F)
    {
      sub_1D9E3F9EC(319, &qword_1EE0F2358, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1D9E3F9EC(319, &qword_1EE0F3878, MEMORY[0x1E6969080]);
        if (v4 <= 0x3F)
        {
          sub_1D9E3F9EC(319, &qword_1EE0F2A08, &type metadata for XPCValueContainer);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D9E3F9EC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D9F2B59C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D9E3FA48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1D9E3FB50()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA743920](v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E3FBC4()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA743920](v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E3FC08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D9E400BC(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1D9E3FC48()
{
  result = qword_1ECB72CB0;
  if (!qword_1ECB72CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72CB0);
  }

  return result;
}

unint64_t sub_1D9E3FCA0()
{
  result = qword_1ECB72CB8;
  if (!qword_1ECB72CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72CB8);
  }

  return result;
}

unint64_t sub_1D9E3FCF8()
{
  result = qword_1ECB72CC0;
  if (!qword_1ECB72CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72CC0);
  }

  return result;
}

unint64_t sub_1D9E3FD50()
{
  result = qword_1ECB72CC8;
  if (!qword_1ECB72CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72CC8);
  }

  return result;
}

uint64_t sub_1D9E3FDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v32 = a4;
  v33 = a3;
  v35[5] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CA0, &unk_1D9F35D60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_1D9F2B77C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServiceEnvelope(0);
  v16 = (v6 + *(v15 + 32));
  v17 = v16[1];
  if (v17 >> 60 == 15)
  {
    sub_1D9E3F7D8();
    swift_allocError();
    *v18 = xmmword_1D9F2CD00;
    *(v18 + 16) = 0x80;
    return swift_willThrow();
  }

  else
  {
    v20 = v15;
    v30 = a2;
    v31 = v5;
    v21 = *v16;
    sub_1D9F2AB0C();
    swift_allocObject();
    v29 = v21;
    sub_1D9E400F4(v21, v17);
    sub_1D9F2AAFC();
    sub_1D9F2B76C();
    result = (*(v12 + 48))(v10, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v22 = *(v6 + *(v20 + 36));
      if (v22)
      {
        v23 = &type metadata for XPCValueContainer;
      }

      else
      {
        v23 = 0;
        v35[1] = 0;
        v35[2] = 0;
      }

      v35[0] = v22;
      v35[3] = v23;
      swift_unknownObjectRetain();
      v24 = sub_1D9F2AAEC();
      sub_1D9EAE614(v35, v14);
      v24(v34, 0);
      v25 = v29;
      v26 = v31;
      sub_1D9F2AADC();
      if (v26)
      {
        sub_1D9E3F7D8();
        swift_allocError();
        *v27 = v26;
        *(v27 + 8) = 0;
        *(v27 + 16) = 64;
        swift_willThrow();
      }

      return sub_1D9E40148(v25, v17);
    }
  }

  return result;
}

uint64_t sub_1D9E400BC(uint64_t a1)
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

void sub_1D9E400F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_1D9E40148(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D9E4015C(result, a2);
  }

  return result;
}

uint64_t sub_1D9E4015C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t AppRecord.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D9E401F0()
{
  v1 = *v0;
  v2 = 0x6669636570736E75;
  v3 = 0x6D6574737973;
  v4 = 0x6C616E7265746E69;
  if (v1 != 3)
  {
    v4 = 0x726568746FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1919251317;
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

uint64_t sub_1D9E40284@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E45C24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E402C4(uint64_t a1)
{
  v2 = sub_1D9E43D68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E40300(uint64_t a1)
{
  v2 = sub_1D9E43D68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E40348(uint64_t a1)
{
  v2 = sub_1D9E43E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E40384(uint64_t a1)
{
  v2 = sub_1D9E43E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E403C8()
{
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](0);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E4040C()
{
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](0);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E40470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746163696C707061 && a2 == 0xEF657079546E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9E40500(uint64_t a1)
{
  v2 = sub_1D9E43DBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4053C(uint64_t a1)
{
  v2 = sub_1D9E43DBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E40578(uint64_t a1)
{
  v2 = sub_1D9E43E64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E405B4(uint64_t a1)
{
  v2 = sub_1D9E43E64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E405F0(uint64_t a1)
{
  v2 = sub_1D9E43F0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4062C(uint64_t a1)
{
  v2 = sub_1D9E43F0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E40668(uint64_t a1)
{
  v2 = sub_1D9E43EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E406A4(uint64_t a1)
{
  v2 = sub_1D9E43EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppRecord.Metadata.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CD0, &qword_1D9F2CF90);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CD8, &qword_1D9F2CF98);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CE0, &qword_1D9F2CFA0);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CE8, &qword_1D9F2CFA8);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CF0, &qword_1D9F2CFB0);
  v29 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CF8, &qword_1D9F2CFB8);
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = v1[1];
  v28 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E43D68();
  sub_1D9F2BB8C();
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v45 = 2;
      sub_1D9E43E64();
      v20 = v32;
      v19 = v42;
      sub_1D9F2B8FC();
      v22 = v33;
      v21 = v34;
    }

    else
    {
      if (v18 != 3)
      {
        goto LABEL_8;
      }

      v46 = 3;
      sub_1D9E43E10();
      v20 = v35;
      v19 = v42;
      sub_1D9F2B8FC();
      v22 = v36;
      v21 = v37;
    }

    (*(v22 + 8))(v20, v21);
    return (*(v41 + 8))(v17, v19);
  }

  if (!v18)
  {
    v43 = 0;
    sub_1D9E43F0C();
    v27 = v42;
    sub_1D9F2B8FC();
    (*(v29 + 8))(v14, v12);
    return (*(v41 + 8))(v17, v27);
  }

  if (v18 != 1)
  {
LABEL_8:
    v47 = 4;
    sub_1D9E43DBC();
    v23 = v38;
    v24 = v42;
    sub_1D9F2B8FC();
    v25 = v40;
    sub_1D9F2B95C();
    (*(v39 + 8))(v23, v25);
    return (*(v41 + 8))(v17, v24);
  }

  v44 = 1;
  sub_1D9E43EB8();
  v19 = v42;
  sub_1D9F2B8FC();
  (*(v30 + 8))(v11, v31);
  return (*(v41 + 8))(v17, v19);
}

uint64_t AppRecord.Metadata.Kind.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      return MEMORY[0x1DA7438F0](v3);
    }

    if (v2 == 3)
    {
      v3 = 3;
      return MEMORY[0x1DA7438F0](v3);
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      return MEMORY[0x1DA7438F0](v3);
    }

    if (v2 == 1)
    {
      v3 = 1;
      return MEMORY[0x1DA7438F0](v3);
    }
  }

  MEMORY[0x1DA7438F0](4);

  return sub_1D9F2B18C();
}

uint64_t AppRecord.Metadata.Kind.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D9F2BAFC();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x1DA7438F0](v2);
      return sub_1D9F2BB4C();
    }
  }

  MEMORY[0x1DA7438F0](4);
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.Metadata.Kind.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D30, &qword_1D9F2CFC0);
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v53 = &v40 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D38, &qword_1D9F2CFC8);
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v40 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D40, &qword_1D9F2CFD0);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v52 = &v40 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D48, &qword_1D9F2CFD8);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D50, &qword_1D9F2CFE0);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D58, &qword_1D9F2CFE8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v13;
  v15 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D9E43D68();
  v16 = v54;
  sub_1D9F2BB7C();
  if (!v16)
  {
    v17 = v10;
    v40 = v8;
    v18 = v52;
    v19 = v53;
    v54 = v12;
    v20 = v11;
    v21 = v14;
    v22 = sub_1D9F2B8DC();
    v23 = *(v22 + 16);
    if (!v23 || ((v24 = *(v22 + 32), v23 == 1) ? (v25 = v24 == 5) : (v25 = 1), v25))
    {
      v26 = sub_1D9F2B6BC();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
      *v28 = &type metadata for AppRecord.Metadata.Kind;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v54 + 8))(v14, v20);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v22 + 32) <= 1u)
      {
        if (*(v22 + 32))
        {
          v57 = 1;
          sub_1D9E43EB8();
          sub_1D9F2B7DC();
          (*(v42 + 8))(v7, v44);
          (*(v54 + 8))(v14, v20);
          swift_unknownObjectRelease();
          v34 = 0;
          v35 = 1;
        }

        else
        {
          v56 = 0;
          sub_1D9E43F0C();
          sub_1D9F2B7DC();
          (*(v41 + 8))(v17, v40);
          (*(v54 + 8))(v14, v20);
          swift_unknownObjectRelease();
          v34 = 0;
          v35 = 0;
        }
      }

      else
      {
        v44 = v22;
        v30 = v54;
        if (v24 == 2)
        {
          v58 = 2;
          sub_1D9E43E64();
          sub_1D9F2B7DC();
          (*(v43 + 8))(v18, v45);
          (*(v30 + 8))(v21, v20);
          swift_unknownObjectRelease();
          v34 = 0;
          v35 = 2;
        }

        else
        {
          v31 = v20;
          v32 = v21;
          if (v24 == 3)
          {
            v59 = 3;
            sub_1D9E43E10();
            v33 = v50;
            sub_1D9F2B7DC();
            (*(v46 + 8))(v33, v48);
            (*(v30 + 8))(v21, v31);
            swift_unknownObjectRelease();
            v34 = 0;
            v35 = 3;
          }

          else
          {
            v60 = 4;
            sub_1D9E43DBC();
            sub_1D9F2B7DC();
            v36 = v31;
            v37 = v47;
            v34 = sub_1D9F2B84C();
            v35 = v38;
            (*(v49 + 8))(v19, v37);
            (*(v30 + 8))(v32, v36);
            swift_unknownObjectRelease();
          }
        }
      }

      v39 = v51;
      *v51 = v34;
      v39[1] = v35;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_1D9E41644()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9E41678()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 16;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9E416AC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1D9E416E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1D9E4170C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 18;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9E41740()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9E41774()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 26;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9E417A8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9E417DC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9E41810()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9E41874()
{
  v1 = *(v0 + 8);
  sub_1D9F2BAFC();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x1DA7438F0](v2);
      return sub_1D9F2BB4C();
    }
  }

  MEMORY[0x1DA7438F0](4);
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E4192C(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      return MEMORY[0x1DA7438F0](v3);
    }

    if (v2 == 3)
    {
      v3 = 3;
      return MEMORY[0x1DA7438F0](v3);
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      return MEMORY[0x1DA7438F0](v3);
    }

    if (v2 == 1)
    {
      v3 = 1;
      return MEMORY[0x1DA7438F0](v3);
    }
  }

  MEMORY[0x1DA7438F0](4);

  return sub_1D9F2B18C();
}

uint64_t sub_1D9E419DC()
{
  v1 = *(v0 + 8);
  sub_1D9F2BAFC();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x1DA7438F0](v2);
      return sub_1D9F2BB4C();
    }
  }

  MEMORY[0x1DA7438F0](4);
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.Metadata.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1D9E43FAC(v2, v3);
}

__n128 AppRecord.Metadata.init(kind:isLaunchProhibited:appTags:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u8[0] = a2;
  a4[1].n128_u64[1] = a3;
  return result;
}

unint64_t sub_1D9E41AC8()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x73676154707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_1D9E41B20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E45DD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E41B48(uint64_t a1)
{
  v2 = sub_1D9E4408C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E41B84(uint64_t a1)
{
  v2 = sub_1D9E4408C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppRecord.Metadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D68, &qword_1D9F2CFF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v15 = *(v1 + 16);
  v12[0] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E43FAC(v7, v8);
  sub_1D9E4408C();
  sub_1D9F2BB8C();
  v13 = v7;
  v14 = v8;
  v16 = 0;
  sub_1D9E440E0();
  v9 = v12[1];
  sub_1D9F2B9AC();
  sub_1D9E44134(v13, v14);
  if (!v9)
  {
    v10 = v12[0];
    LOBYTE(v13) = 1;
    sub_1D9F2B96C();
    v13 = v10;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
    sub_1D9E441E4(&qword_1EE0F1120, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D9F2B9AC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AppRecord.Metadata.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v4 = 3;
      goto LABEL_11;
    }

LABEL_8:
    MEMORY[0x1DA7438F0](4);
    sub_1D9F2B18C();
    goto LABEL_12;
  }

  if (!v2)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v4 = 1;
LABEL_11:
  MEMORY[0x1DA7438F0](v4);
LABEL_12:
  sub_1D9F2BB1C();
  result = MEMORY[0x1DA7438F0](*(v3 + 16));
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = v3 + 40;
    do
    {

      sub_1D9F2B18C();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t AppRecord.Metadata.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1D9F2BAFC();
  AppRecord.Metadata.hash(into:)(v4);
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D80, &qword_1D9F2D008);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E4408C();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_1D9E44190();
  sub_1D9F2B89C();
  v10 = v13[0];
  v9 = v13[1];
  LOBYTE(v13[0]) = 1;
  v14 = sub_1D9F2B85C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
  v15 = 2;
  sub_1D9E441E4(&qword_1EE0F1118, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1D9F2B89C();
  v14 &= 1u;
  (*(v6 + 8))(v8, v5);
  v11 = v13[0];
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v14;
  *(a2 + 24) = v11;
  sub_1D9E43FAC(v10, v9);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1D9E44134(v10, v9);
}

uint64_t sub_1D9E42210()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1D9F2BAFC();
  AppRecord.Metadata.hash(into:)(v4);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E42270()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1D9F2BAFC();
  AppRecord.Metadata.hash(into:)(v4);
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_1D9E43FAC(v2, v3);
}

uint64_t sub_1D9E424D0()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E42518()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.localizedName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

__n128 AppRecord.init(bundleIdentifier:metadata:state:protectionState:localizedName:genre:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t *a4@<X3>, unint64_t *a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unsigned __int8 *a8@<X7>, __n128 *a9@<X8>)
{
  v9 = a3[1].n128_u8[0];
  v10 = a3[1].n128_u64[1];
  v11 = *a4;
  v12 = *a5;
  v13 = *a8;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  result = *a3;
  a9[1] = *a3;
  a9[2].n128_u8[0] = v9;
  a9[2].n128_u64[1] = v10;
  a9[3].n128_u64[0] = v11;
  a9[3].n128_u64[1] = v12;
  a9[4].n128_u64[0] = a6;
  a9[4].n128_u64[1] = a7;
  a9[5].n128_u8[0] = v13;
  return result;
}

uint64_t _s29VisualActionPredictionSupport16DateTimeScheduleV10RecurrenceV9DayOfWeekO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E42628()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9E4266C()
{
  v1 = *v0;
  v2 = 0x617461646174656DLL;
  v3 = 0x69746365746F7270;
  v4 = 0x657A696C61636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x65726E6567;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6574617473;
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

uint64_t sub_1D9E42738@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E45EF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E4276C(uint64_t a1)
{
  v2 = sub_1D9E44448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E427A8(uint64_t a1)
{
  v2 = sub_1D9E44448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppRecord.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D90, &qword_1D9F2D010);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v33 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v26 = v7;
  v27 = v9;
  v11 = *(v1 + 64);
  v24 = *(v1 + 56);
  v25 = v10;
  v22 = *(v1 + 72);
  v23 = v11;
  HIDWORD(v21) = *(v1 + 80);
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_1D9E44448();
  sub_1D9F2BB8C();
  LOBYTE(v29) = 0;
  v16 = v6;
  v17 = v28;
  sub_1D9F2B95C();
  if (!v17)
  {
    v18 = v24;
    v19 = v25;
    v29 = v26;
    v30 = v8;
    v31 = v33;
    v32 = v27;
    v34 = 1;
    sub_1D9E43FAC(v26, v8);
    sub_1D9E4449C();

    sub_1D9F2B9AC();
    sub_1D9E44134(v29, v30);

    v29 = v19;
    v34 = 2;
    sub_1D9E444F0();
    sub_1D9F2B9AC();
    v29 = v18;
    v34 = 3;
    sub_1D9E44544();
    sub_1D9F2B9AC();
    LOBYTE(v29) = 4;
    sub_1D9F2B95C();
    LOBYTE(v29) = BYTE4(v21);
    v34 = 5;
    sub_1D9E44598();
    sub_1D9F2B9AC();
  }

  return (*(v4 + 8))(v16, v15);
}

uint64_t AppRecord.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 80);
  sub_1D9F2B18C();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v7 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v7 = 3;
      goto LABEL_11;
    }

LABEL_8:
    MEMORY[0x1DA7438F0](4);
    sub_1D9F2B18C();
    goto LABEL_12;
  }

  if (!v2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v7 = 1;
LABEL_11:
  MEMORY[0x1DA7438F0](v7);
LABEL_12:
  sub_1D9F2BB1C();
  MEMORY[0x1DA7438F0](*(v4 + 16));
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = v4 + 40;
    do
    {

      sub_1D9F2B18C();

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  MEMORY[0x1DA7438F0](v3);
  MEMORY[0x1DA7438F0](v5);
  sub_1D9F2B18C();
  return MEMORY[0x1DA7438F0](qword_1D9F2E0B8[v6]);
}

uint64_t AppRecord.hashValue.getter()
{
  sub_1D9F2BAFC();
  AppRecord.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72DC0, &qword_1D9F2D018);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E44448();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32) = 0;
  v9 = sub_1D9F2B84C();
  v11 = v10;
  LOBYTE(v26) = 1;
  sub_1D9E445EC();
  sub_1D9F2B89C();
  v24 = v32;
  v42 = v33;
  v25 = v34;
  LOBYTE(v26) = 2;
  sub_1D9E44640();
  sub_1D9F2B89C();
  v22 = v32;
  LOBYTE(v26) = 3;
  sub_1D9E44694();
  sub_1D9F2B89C();
  v21 = v32;
  LOBYTE(v32) = 4;
  v20 = sub_1D9F2B84C();
  v23 = v12;
  v43 = 5;
  sub_1D9E446E8();
  sub_1D9F2B89C();
  (*(v6 + 8))(v8, v5);
  *&v26 = v9;
  v13 = v24;
  *(&v26 + 1) = v11;
  v14 = *(&v24 + 1);
  v27 = v24;
  LOBYTE(v28) = v42;
  v15 = v25;
  *(&v28 + 1) = v25;
  *&v29 = v22;
  *(&v29 + 1) = v21;
  *&v30 = v20;
  *(&v30 + 1) = v23;
  v16 = v44;
  v31 = v44;
  *(a2 + 80) = v44;
  v17 = v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = v17;
  *(a2 + 64) = v30;
  v18 = v27;
  *a2 = v26;
  *(a2 + 16) = v18;
  sub_1D9E4473C(&v26, &v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v32 = v9;
  *(&v32 + 1) = v11;
  v33 = v13;
  v34 = v14;
  v35 = v42;
  v36 = v15;
  v37 = v22;
  v38 = v21;
  v39 = v20;
  v40 = v23;
  v41 = v16;
  return sub_1D9E44774(&v32);
}

uint64_t sub_1D9E43104()
{
  sub_1D9F2BAFC();
  AppRecord.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E43148()
{
  sub_1D9F2BAFC();
  AppRecord.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.isSystem.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 > 3)
  {

    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 4u >> (v2 & 0xF);
  }

  sub_1D9E44134(v1, v2);
  sub_1D9E44134(0, 2uLL);
  return v3 & 1;
}

uint64_t AppRecord.isInternal.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  if (v2 < 3)
  {
    goto LABEL_5;
  }

  if (v2 != 3)
  {
    v5 = v0[2];
    v6 = v2;

    v2 = v6;
    v1 = v5;
LABEL_5:
    sub_1D9E44134(v1, v2);
    v7 = sub_1D9E44134(0, 3uLL);
    v10[0] = 0x6C616E7265746E69;
    v10[1] = 0xE800000000000000;
    MEMORY[0x1EEE9AC00](v7);
    v9[2] = v10;
    v4 = sub_1D9E43AC0(sub_1D9E447A4, v9, v3);
    return v4 & 1;
  }

  sub_1D9E44134(v1, 3uLL);
  sub_1D9E44134(0, 3uLL);
  v4 = 1;
  return v4 & 1;
}

uint64_t AppRecord.isHidden.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  v5[0] = 0x6E6564646968;
  v5[1] = 0xE600000000000000;
  v4[2] = v5;
  return (sub_1D9E43AC0(sub_1D9E461EC, v4, v1) | v2) & 1;
}

BOOL AppRecord.isLaunchable.getter(uint64_t a1)
{
  v2 = *(v1 + 48);
  result = 0;
  if ((v2 & 7) == 3 && (v2 & 8) == 0)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 56);
    v8[0] = 0x6E6564646968;
    v8[1] = 0xE600000000000000;
    MEMORY[0x1EEE9AC00](a1);
    v7[2] = v8;
    if (!((sub_1D9E43AC0(sub_1D9E461EC, v7, v5) | v3) & 1 | ((v4 & 3) != 0)))
    {
      return 1;
    }
  }

  return result;
}

unint64_t AppRecord.CategoryID.stringRepresentation.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x7373656E69737562;
      break;
    case 2:
      result = 0x72656874616577;
      break;
    case 3:
      result = 0x656974696C697475;
      break;
    case 4:
      result = 0x6C6576617274;
      break;
    case 5:
      result = 0x7374726F7073;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x636E657265666572;
      break;
    case 8:
      result = 0x69746375646F7270;
      break;
    case 9:
      result = 0x6469566F746F6870;
      break;
    case 0xA:
      result = 1937204590;
      break;
    case 0xB:
      result = 0x697461676976616ELL;
      break;
    case 0xC:
      result = 0x636973756DLL;
      break;
    case 0xD:
      result = 0x6C7974736566696CLL;
      break;
    case 0xE:
      result = 0x694668746C616568;
      break;
    case 0xF:
      result = 0x73656D6167;
      break;
    case 0x10:
      result = 0x65636E616E6966;
      break;
    case 0x11:
      result = 0x6961747265746E65;
      break;
    case 0x12:
      result = 0x6F69746163756465;
      break;
    case 0x13:
      result = 0x736B6F6F62;
      break;
    case 0x14:
      result = 0x6C61636964656DLL;
      break;
    case 0x15:
      result = 0x6E6174737377656ELL;
      break;
    case 0x16:
      result = 0x73676F6C61746163;
      break;
    case 0x17:
      result = 0x6E697244646F6F66;
      break;
    case 0x18:
      result = 0x676E6970706F6873;
      break;
    case 0x19:
      result = 0x7372656B63697473;
      break;
    case 0x1A:
      result = 0x65706F6C65766564;
      break;
    case 0x1B:
      result = 0x7363696870617267;
      break;
    default:
      return result;
  }

  return result;
}

VisualActionPredictionSupport::AppRecord::CategoryID_optional __swiftcall AppRecord.CategoryID.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  switch(rawValue)
  {
    case 6000:
      v2 = 1;
      goto LABEL_3;
    case 6001:
      *v1 = 2;
      return rawValue;
    case 6002:
      *v1 = 3;
      return rawValue;
    case 6003:
      *v1 = 4;
      return rawValue;
    case 6004:
      *v1 = 5;
      return rawValue;
    case 6005:
      *v1 = 6;
      return rawValue;
    case 6006:
      *v1 = 7;
      return rawValue;
    case 6007:
      *v1 = 8;
      return rawValue;
    case 6008:
      *v1 = 9;
      return rawValue;
    case 6009:
LABEL_3:
      *v1 = v2;
      return rawValue;
    case 6010:
      *v1 = 11;
      return rawValue;
    case 6011:
      *v1 = 12;
      return rawValue;
    case 6012:
      *v1 = 13;
      return rawValue;
    case 6013:
      *v1 = 14;
      return rawValue;
    case 6014:
      *v1 = 15;
      return rawValue;
    case 6015:
      *v1 = 16;
      return rawValue;
    case 6016:
      *v1 = 17;
      return rawValue;
    case 6017:
      *v1 = 18;
      return rawValue;
    case 6018:
      *v1 = 19;
      return rawValue;
    case 6019:
      goto LABEL_6;
    case 6020:
      *v1 = 20;
      return rawValue;
    case 6021:
      *v1 = 21;
      return rawValue;
    case 6022:
      *v1 = 22;
      return rawValue;
    case 6023:
      *v1 = 23;
      return rawValue;
    case 6024:
      *v1 = 24;
      return rawValue;
    case 6025:
      *v1 = 25;
      return rawValue;
    case 6026:
      *v1 = 26;
      return rawValue;
    case 6027:
      *v1 = 27;
      return rawValue;
    default:
      if (rawValue)
      {
LABEL_6:
        *v1 = 28;
      }

      else
      {
        *v1 = 0;
      }

      return rawValue;
  }
}

uint64_t sub_1D9E43918()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](qword_1D9F2E0B8[v1]);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E439A0()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](qword_1D9F2E0B8[v1]);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E43AC0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t _s29VisualActionPredictionSupport9AppRecordV8MetadataV4KindO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        goto LABEL_19;
      }

      sub_1D9E44134(*a1, 2uLL);
      v7 = v4;
      v8 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_10;
      }

      if (v5 != 3)
      {
        goto LABEL_19;
      }

      sub_1D9E44134(*a1, 3uLL);
      v7 = v4;
      v8 = 3;
    }

LABEL_18:
    sub_1D9E44134(v7, v8);
    return 1;
  }

  if (!v3)
  {
    if (v5)
    {
      goto LABEL_19;
    }

    sub_1D9E44134(*a1, 0);
    v7 = v4;
    v8 = 0;
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      v6 = 1;
      sub_1D9E44134(*a1, 1uLL);
      sub_1D9E44134(v4, 1uLL);
      return v6;
    }

LABEL_19:
    sub_1D9E43FAC(*a2, a2[1]);
    sub_1D9E43FAC(v2, v3);
    sub_1D9E44134(v2, v3);
    sub_1D9E44134(v4, v5);
    return 0;
  }

LABEL_10:
  if (v5 < 4)
  {
    goto LABEL_19;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_1D9E43FAC(*a1, v3);
    sub_1D9E43FAC(v2, v3);
    sub_1D9E44134(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_18;
  }

  v10 = sub_1D9F2BA1C();
  sub_1D9E43FAC(v4, v5);
  sub_1D9E43FAC(v2, v3);
  sub_1D9E44134(v2, v3);
  sub_1D9E44134(v4, v5);
  return v10 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D9E43D68()
{
  result = qword_1ECB72D00;
  if (!qword_1ECB72D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D00);
  }

  return result;
}

unint64_t sub_1D9E43DBC()
{
  result = qword_1ECB72D08;
  if (!qword_1ECB72D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D08);
  }

  return result;
}

unint64_t sub_1D9E43E10()
{
  result = qword_1ECB72D10;
  if (!qword_1ECB72D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D10);
  }

  return result;
}

unint64_t sub_1D9E43E64()
{
  result = qword_1ECB72D18;
  if (!qword_1ECB72D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D18);
  }

  return result;
}

unint64_t sub_1D9E43EB8()
{
  result = qword_1ECB72D20;
  if (!qword_1ECB72D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D20);
  }

  return result;
}

unint64_t sub_1D9E43F0C()
{
  result = qword_1ECB72D28;
  if (!qword_1ECB72D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D28);
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

uint64_t sub_1D9E43FAC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t _s29VisualActionPredictionSupport9AppRecordV8MetadataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v12 = *a1;
  v13 = v2;
  v10 = v5;
  v11 = v6;
  sub_1D9E43FAC(v12, v2);
  sub_1D9E43FAC(v5, v6);
  LOBYTE(v5) = _s29VisualActionPredictionSupport9AppRecordV8MetadataV4KindO2eeoiySbAG_AGtFZ_0(&v12, &v10);
  sub_1D9E44134(v10, v11);
  sub_1D9E44134(v12, v13);
  if (v5 & 1) == 0 || ((v3 ^ v7))
  {
    return 0;
  }

  return sub_1D9E49670(v4, v8);
}

unint64_t sub_1D9E4408C()
{
  result = qword_1ECB72D70;
  if (!qword_1ECB72D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D70);
  }

  return result;
}

unint64_t sub_1D9E440E0()
{
  result = qword_1ECB72D78;
  if (!qword_1ECB72D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D78);
  }

  return result;
}

uint64_t sub_1D9E44134(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
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

unint64_t sub_1D9E44190()
{
  result = qword_1ECB72D88;
  if (!qword_1ECB72D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D88);
  }

  return result;
}

uint64_t sub_1D9E441E4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75480, &qword_1D9F2D000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL _s29VisualActionPredictionSupport9AppRecordV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v22 = a1[7];
  v23 = a1[6];
  v19 = a1[9];
  v20 = a1[8];
  v6 = *(a1 + 80);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v21 = *(a2 + 56);
  v17 = *(a2 + 72);
  v18 = *(a2 + 64);
  v16 = *(a2 + 80);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  v15 = v6;
  v26 = v2;
  v27 = v3;
  v24 = v8;
  v25 = v7;
  sub_1D9E43FAC(v2, v3);

  sub_1D9E43FAC(v8, v7);

  sub_1D9E43FAC(v2, v3);
  sub_1D9E43FAC(v8, v7);
  v12 = _s29VisualActionPredictionSupport9AppRecordV8MetadataV4KindO2eeoiySbAG_AGtFZ_0(&v26, &v24);
  sub_1D9E44134(v24, v25);
  sub_1D9E44134(v26, v27);
  if ((v12 & 1) == 0 || v4 != v9)
  {
    sub_1D9E44134(v8, v7);

    sub_1D9E44134(v2, v3);

    return 0;
  }

  v14 = sub_1D9E49670(v5, v11);
  sub_1D9E44134(v8, v7);

  sub_1D9E44134(v2, v3);

  result = 0;
  if ((v14 & 1) != 0 && v23 == v10 && v22 == v21)
  {
    if (v20 == v18 && v19 == v17 || (sub_1D9F2BA1C() & 1) != 0)
    {
      return qword_1D9F2E0B8[v15] == qword_1D9F2E0B8[v16];
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D9E44448()
{
  result = qword_1ECB72D98;
  if (!qword_1ECB72D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D98);
  }

  return result;
}

unint64_t sub_1D9E4449C()
{
  result = qword_1ECB72DA0;
  if (!qword_1ECB72DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DA0);
  }

  return result;
}

unint64_t sub_1D9E444F0()
{
  result = qword_1ECB72DA8;
  if (!qword_1ECB72DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DA8);
  }

  return result;
}

unint64_t sub_1D9E44544()
{
  result = qword_1ECB72DB0;
  if (!qword_1ECB72DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DB0);
  }

  return result;
}

unint64_t sub_1D9E44598()
{
  result = qword_1ECB72DB8;
  if (!qword_1ECB72DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DB8);
  }

  return result;
}

unint64_t sub_1D9E445EC()
{
  result = qword_1ECB72DC8;
  if (!qword_1ECB72DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DC8);
  }

  return result;
}

unint64_t sub_1D9E44640()
{
  result = qword_1ECB72DD0;
  if (!qword_1ECB72DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DD0);
  }

  return result;
}

unint64_t sub_1D9E44694()
{
  result = qword_1ECB72DD8;
  if (!qword_1ECB72DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DD8);
  }

  return result;
}

unint64_t sub_1D9E446E8()
{
  result = qword_1ECB72DE0;
  if (!qword_1ECB72DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DE0);
  }

  return result;
}

uint64_t sub_1D9E447C0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C() & 1;
  }
}

unint64_t sub_1D9E4481C()
{
  result = qword_1ECB72DE8;
  if (!qword_1ECB72DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DE8);
  }

  return result;
}

unint64_t sub_1D9E44874()
{
  result = qword_1ECB72DF0;
  if (!qword_1ECB72DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DF0);
  }

  return result;
}

unint64_t sub_1D9E448CC()
{
  result = qword_1ECB72DF8;
  if (!qword_1ECB72DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DF8);
  }

  return result;
}

unint64_t sub_1D9E44924()
{
  result = qword_1ECB72E00;
  if (!qword_1ECB72E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E00);
  }

  return result;
}

unint64_t sub_1D9E44978()
{
  result = qword_1EE0F12F0;
  if (!qword_1EE0F12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F12F0);
  }

  return result;
}

unint64_t sub_1D9E449D0()
{
  result = qword_1EE0F12E8;
  if (!qword_1EE0F12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F12E8);
  }

  return result;
}

unint64_t sub_1D9E44A28()
{
  result = qword_1ECB72E08;
  if (!qword_1ECB72E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E08);
  }

  return result;
}

unint64_t sub_1D9E44A80()
{
  result = qword_1ECB72E10;
  if (!qword_1ECB72E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E10);
  }

  return result;
}

unint64_t sub_1D9E44AD4()
{
  result = qword_1EE0F1300;
  if (!qword_1EE0F1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1300);
  }

  return result;
}

unint64_t sub_1D9E44B2C()
{
  result = qword_1EE0F12F8;
  if (!qword_1EE0F12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F12F8);
  }

  return result;
}

unint64_t sub_1D9E44B84()
{
  result = qword_1ECB72E18;
  if (!qword_1ECB72E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E18);
  }

  return result;
}

unint64_t sub_1D9E44BDC()
{
  result = qword_1ECB72E20;
  if (!qword_1ECB72E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E20);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport9AppRecordV8MetadataV4KindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D9E44C6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1D9E44CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_1D9E44D28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D9E44D70(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D9E44DCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9E44E20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1D9E44E80(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppRecord.CategoryID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppRecord.CategoryID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AppRecord.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppRecord.Metadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppRecord.Metadata.Kind.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppRecord.Metadata.Kind.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppRecord.Metadata.Kind.OtherCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppRecord.Metadata.Kind.OtherCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1D9E45548()
{
  result = qword_1ECB72E28;
  if (!qword_1ECB72E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E28);
  }

  return result;
}

unint64_t sub_1D9E455A0()
{
  result = qword_1ECB72E30;
  if (!qword_1ECB72E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E30);
  }

  return result;
}

unint64_t sub_1D9E455F8()
{
  result = qword_1ECB72E38;
  if (!qword_1ECB72E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E38);
  }

  return result;
}

unint64_t sub_1D9E45650()
{
  result = qword_1ECB72E40;
  if (!qword_1ECB72E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E40);
  }

  return result;
}

unint64_t sub_1D9E456A8()
{
  result = qword_1ECB72E48;
  if (!qword_1ECB72E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E48);
  }

  return result;
}

unint64_t sub_1D9E45700()
{
  result = qword_1ECB72E50;
  if (!qword_1ECB72E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E50);
  }

  return result;
}

unint64_t sub_1D9E45758()
{
  result = qword_1ECB72E58;
  if (!qword_1ECB72E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E58);
  }

  return result;
}

unint64_t sub_1D9E457B0()
{
  result = qword_1ECB72E60;
  if (!qword_1ECB72E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E60);
  }

  return result;
}

unint64_t sub_1D9E45808()
{
  result = qword_1ECB72E68;
  if (!qword_1ECB72E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E68);
  }

  return result;
}

unint64_t sub_1D9E45860()
{
  result = qword_1ECB72E70;
  if (!qword_1ECB72E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E70);
  }

  return result;
}

unint64_t sub_1D9E458B8()
{
  result = qword_1ECB72E78;
  if (!qword_1ECB72E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E78);
  }

  return result;
}

unint64_t sub_1D9E45910()
{
  result = qword_1ECB72E80;
  if (!qword_1ECB72E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E80);
  }

  return result;
}

unint64_t sub_1D9E45968()
{
  result = qword_1ECB72E88;
  if (!qword_1ECB72E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E88);
  }

  return result;
}

unint64_t sub_1D9E459C0()
{
  result = qword_1ECB72E90;
  if (!qword_1ECB72E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E90);
  }

  return result;
}

unint64_t sub_1D9E45A18()
{
  result = qword_1ECB72E98;
  if (!qword_1ECB72E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E98);
  }

  return result;
}

unint64_t sub_1D9E45A70()
{
  result = qword_1ECB72EA0;
  if (!qword_1ECB72EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72EA0);
  }

  return result;
}

unint64_t sub_1D9E45AC8()
{
  result = qword_1ECB72EA8;
  if (!qword_1ECB72EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72EA8);
  }

  return result;
}

unint64_t sub_1D9E45B20()
{
  result = qword_1ECB72EB0;
  if (!qword_1ECB72EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72EB0);
  }

  return result;
}

unint64_t sub_1D9E45B78()
{
  result = qword_1ECB72EB8;
  if (!qword_1ECB72EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72EB8);
  }

  return result;
}

unint64_t sub_1D9E45BD0()
{
  result = qword_1ECB72EC0;
  if (!qword_1ECB72EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72EC0);
  }

  return result;
}

uint64_t sub_1D9E45C24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1919251317 && a2 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E45DD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9F47FE0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73676154707061 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E45EF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D9F48000 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746365746F7270 && a2 == 0xEF65746174536E6FLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

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

unint64_t sub_1D9E46100()
{
  result = qword_1ECB72EC8;
  if (!qword_1ECB72EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72EC8);
  }

  return result;
}

uint64_t sub_1D9E46224()
{
  v1 = *v0;
  v2 = 0x656C6C6174736E69;
  v3 = 0x6168436574617473;
  v4 = 0xD000000000000016;
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
    v2 = 0x6C6174736E696E75;
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

uint64_t sub_1D9E462E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E48648(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E4630C(uint64_t a1)
{
  v2 = sub_1D9E47CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E46348(uint64_t a1)
{
  v2 = sub_1D9E47CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E46384(uint64_t a1)
{
  v2 = sub_1D9E47D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E463C0(uint64_t a1)
{
  v2 = sub_1D9E47D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E463FC(uint64_t a1)
{
  v2 = sub_1D9E47E80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E46438(uint64_t a1)
{
  v2 = sub_1D9E47E80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E46474(uint64_t a1)
{
  v2 = sub_1D9E47D84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E464B0(uint64_t a1)
{
  v2 = sub_1D9E47D84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E464EC(uint64_t a1)
{
  v2 = sub_1D9E47DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E46528(uint64_t a1)
{
  v2 = sub_1D9E47DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E46564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D9F48040 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D9E465F8(uint64_t a1)
{
  v2 = sub_1D9E47E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E46634(uint64_t a1)
{
  v2 = sub_1D9E47E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppEvent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72ED0, &qword_1D9F2E1A0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72ED8, &qword_1D9F2E1A8);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72EE0, &qword_1D9F2E1B0);
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72EE8, &qword_1D9F2E1B8);
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72EF0, &qword_1D9F2E1C0);
  v39 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72EF8, &unk_1D9F2E1C8);
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v50 = *v2;
  v19 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E47CDC();
  v51 = v18;
  sub_1D9F2BB8C();
  if (v19 <= 1)
  {
    if (v19)
    {
      LOBYTE(v54) = 1;
      sub_1D9E47E2C();
      v37 = v53;
      v38 = v51;
      sub_1D9F2B8FC();
      v54 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
      sub_1D9E441E4(&qword_1EE0F1120, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      sub_1D9F2B9AC();
      (*(v40 + 8))(v12, v10);
      v24 = *(v52 + 8);
      v25 = v38;
      v28 = v37;
      return v24(v25, v28);
    }

    v26 = v13;
    LOBYTE(v54) = 0;
    sub_1D9E47E80();
    v21 = v53;
    v27 = v51;
    sub_1D9F2B8FC();
    v54 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
    sub_1D9E441E4(&qword_1EE0F1120, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D9F2B9AC();
    (*(v39 + 8))(v15, v26);
    v24 = *(v52 + 8);
    v25 = v27;
  }

  else
  {
    if (v19 == 2)
    {
      LOBYTE(v54) = 2;
      sub_1D9E47DD8();
      v29 = v41;
      v30 = v53;
      v31 = v51;
      sub_1D9F2B8FC();
      v54 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
      sub_1D9E441E4(&qword_1EE0F1120, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      v32 = v43;
      sub_1D9F2B9AC();
      (*(v42 + 8))(v29, v32);
      return (*(v52 + 8))(v31, v30);
    }

    if (v19 != 3)
    {
      LOBYTE(v54) = 4;
      sub_1D9E47D30();
      v34 = v44;
      v35 = v53;
      v36 = v51;
      sub_1D9F2B8FC();
      (*(v46 + 8))(v34, v47);
      return (*(v52 + 8))(v36, v35);
    }

    LOBYTE(v54) = 3;
    sub_1D9E47D84();
    v20 = v45;
    v21 = v53;
    v22 = v51;
    sub_1D9F2B8FC();
    v54 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
    sub_1D9E441E4(&qword_1EE0F1120, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    v23 = v49;
    sub_1D9F2B9AC();
    (*(v48 + 8))(v20, v23);
    v24 = *(v52 + 8);
    v25 = v22;
  }

  v28 = v21;
  return v24(v25, v28);
}

uint64_t AppEvent.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 <= 1)
  {
    if (*(v1 + 8))
    {
      MEMORY[0x1DA7438F0](1);
      result = MEMORY[0x1DA7438F0](*(v2 + 16));
      v11 = *(v2 + 16);
      if (v11)
      {
        v12 = v2 + 40;
        do
        {

          sub_1D9F2B18C();

          v12 += 16;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      MEMORY[0x1DA7438F0](0);
      result = MEMORY[0x1DA7438F0](*(v2 + 16));
      v7 = *(v2 + 16);
      if (v7)
      {
        v8 = v2 + 40;
        do
        {

          sub_1D9F2B18C();

          v8 += 16;
          --v7;
        }

        while (v7);
      }
    }
  }

  else if (v3 == 2)
  {
    MEMORY[0x1DA7438F0](2);
    result = MEMORY[0x1DA7438F0](*(v2 + 16));
    v9 = *(v2 + 16);
    if (v9)
    {
      v10 = v2 + 40;
      do
      {

        sub_1D9F2B18C();

        v10 += 16;
        --v9;
      }

      while (v9);
    }
  }

  else if (v3 == 3)
  {
    MEMORY[0x1DA7438F0](3);
    result = MEMORY[0x1DA7438F0](*(v2 + 16));
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = v2 + 40;
      do
      {

        sub_1D9F2B18C();

        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    return MEMORY[0x1DA7438F0](4);
  }

  return result;
}

uint64_t AppEvent.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D9F2BAFC();
  AppEvent.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t AppEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72F30, &qword_1D9F2E1D8);
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v44[-v3];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72F38, &qword_1D9F2E1E0);
  v55 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v59 = &v44[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72F40, &qword_1D9F2E1E8);
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v44[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72F48, &qword_1D9F2E1F0);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72F50, &qword_1D9F2E1F8);
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72F58, &unk_1D9F2E200);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44[-v15];
  v17 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D9E47CDC();
  v18 = v61;
  sub_1D9F2BB7C();
  if (!v18)
  {
    v19 = v12;
    v46 = v10;
    v21 = v58;
    v20 = v59;
    v61 = v14;
    v22 = v16;
    v23 = sub_1D9F2B8DC();
    v24 = (2 * *(v23 + 16)) | 1;
    v62 = v23;
    v63 = v23 + 32;
    v64 = 0;
    v65 = v24;
    v25 = sub_1D9E41644();
    if (v25 != 5 && v64 == v65 >> 1)
    {
      v45 = v25;
      if (v25 <= 1u)
      {
        if (!v25)
        {
          LOBYTE(v66) = 0;
          sub_1D9E47E80();
          v35 = v19;
          sub_1D9F2B7DC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
          sub_1D9E441E4(&qword_1EE0F1118, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
          v40 = v46;
          sub_1D9F2B89C();
          (*(v47 + 8))(v35, v40);
          (*(v61 + 8))(v16, v13);
          swift_unknownObjectRelease();
LABEL_17:
          v43 = v66;
          goto LABEL_18;
        }

        LOBYTE(v66) = 1;
        sub_1D9E47E2C();
        sub_1D9F2B7DC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
        sub_1D9E441E4(&qword_1EE0F1118, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
        v41 = v50;
        sub_1D9F2B89C();
        v42 = v61;
        (*(v49 + 8))(v9, v41);
        (*(v42 + 8))(v16, v13);
      }

      else
      {
        v26 = v57;
        if (v25 == 2)
        {
          LOBYTE(v66) = 2;
          sub_1D9E47DD8();
          v36 = v22;
          sub_1D9F2B7DC();
          v37 = v61;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
          sub_1D9E441E4(&qword_1EE0F1118, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
          v38 = v54;
          sub_1D9F2B89C();
          (*(v53 + 8))(v21, v38);
          (*(v37 + 8))(v36, v13);
          swift_unknownObjectRelease();
          v43 = v66;
          v33 = v60;
LABEL_19:
          *v26 = v43;
          *(v26 + 8) = v45;
          return __swift_destroy_boxed_opaque_existential_1(v33);
        }

        v27 = v61;
        if (v25 != 3)
        {
          LOBYTE(v66) = 4;
          sub_1D9E47D30();
          v39 = v56;
          sub_1D9F2B7DC();
          (*(v48 + 8))(v39, v52);
          (*(v27 + 8))(v22, v13);
          swift_unknownObjectRelease();
          v43 = 0;
LABEL_18:
          v33 = v60;
          v26 = v57;
          goto LABEL_19;
        }

        LOBYTE(v66) = 3;
        sub_1D9E47D84();
        sub_1D9F2B7DC();
        v58 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
        sub_1D9E441E4(&qword_1EE0F1118, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
        v28 = v51;
        sub_1D9F2B89C();
        (*(v55 + 8))(v20, v28);
        (*(v27 + 8))(v22, v58);
      }

      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    v29 = v13;
    v30 = sub_1D9F2B6BC();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
    *v32 = &type metadata for AppEvent;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v61 + 8))(v16, v29);
    swift_unknownObjectRelease();
  }

  v33 = v60;
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_1D9E47A5C()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D9F2BAFC();
  AppEvent.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E47AB4()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D9F2BAFC();
  AppEvent.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport8AppEventO2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (*(a1 + 8))
    {
      if (v5 == 1)
      {
        LOBYTE(v6) = sub_1D9E49670(*a1, *a2);
        sub_1D9E48818(v4, 1u);
        sub_1D9E48818(v2, 1u);
        sub_1D9E4882C(v2, 1u);
        v7 = v4;
        v8 = 1;
        goto LABEL_19;
      }
    }

    else if (!*(a2 + 8))
    {
      v6 = sub_1D9E49670(*a1, *a2);
      sub_1D9E48818(v4, 0);
      sub_1D9E48818(v2, 0);
      sub_1D9E4882C(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_19;
    }
  }

  else if (v3 == 2)
  {
    if (v5 == 2)
    {
      LOBYTE(v6) = sub_1D9E49670(*a1, *a2);
      sub_1D9E48818(v4, 2u);
      sub_1D9E48818(v2, 2u);
      sub_1D9E4882C(v2, 2u);
      v7 = v4;
      v8 = 2;
      goto LABEL_19;
    }
  }

  else if (v3 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v6) = sub_1D9E49670(*a1, *a2);
      sub_1D9E48818(v4, 3u);
      sub_1D9E48818(v2, 3u);
      sub_1D9E4882C(v2, 3u);
      v7 = v4;
      v8 = 3;
LABEL_19:
      sub_1D9E4882C(v7, v8);
      return v6 & 1;
    }
  }

  else if (v5 == 4 && v4 == 0)
  {
    sub_1D9E4882C(*a1, 4u);
    sub_1D9E4882C(0, 4u);
    return 1;
  }

  sub_1D9E48818(*a2, *(a2 + 8));
  sub_1D9E48818(v2, v3);
  sub_1D9E4882C(v2, v3);
  sub_1D9E4882C(v4, v5);
  return 0;
}

unint64_t sub_1D9E47CDC()
{
  result = qword_1ECB72F00;
  if (!qword_1ECB72F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F00);
  }

  return result;
}

unint64_t sub_1D9E47D30()
{
  result = qword_1ECB72F08;
  if (!qword_1ECB72F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F08);
  }

  return result;
}

unint64_t sub_1D9E47D84()
{
  result = qword_1ECB72F10;
  if (!qword_1ECB72F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F10);
  }

  return result;
}

unint64_t sub_1D9E47DD8()
{
  result = qword_1ECB72F18;
  if (!qword_1ECB72F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F18);
  }

  return result;
}

unint64_t sub_1D9E47E2C()
{
  result = qword_1ECB72F20;
  if (!qword_1ECB72F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F20);
  }

  return result;
}

unint64_t sub_1D9E47E80()
{
  result = qword_1ECB72F28;
  if (!qword_1ECB72F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F28);
  }

  return result;
}

unint64_t sub_1D9E47ED8()
{
  result = qword_1ECB72F60;
  if (!qword_1ECB72F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F60);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport8AppEventO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D9E47F5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9E47FA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1D9E47FE8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1D9E48074()
{
  result = qword_1ECB72F68;
  if (!qword_1ECB72F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F68);
  }

  return result;
}

unint64_t sub_1D9E480CC()
{
  result = qword_1ECB72F70;
  if (!qword_1ECB72F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F70);
  }

  return result;
}

unint64_t sub_1D9E48124()
{
  result = qword_1ECB72F78;
  if (!qword_1ECB72F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F78);
  }

  return result;
}

unint64_t sub_1D9E4817C()
{
  result = qword_1ECB72F80;
  if (!qword_1ECB72F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F80);
  }

  return result;
}

unint64_t sub_1D9E481D4()
{
  result = qword_1ECB72F88;
  if (!qword_1ECB72F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F88);
  }

  return result;
}

unint64_t sub_1D9E4822C()
{
  result = qword_1ECB72F90;
  if (!qword_1ECB72F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F90);
  }

  return result;
}

unint64_t sub_1D9E48284()
{
  result = qword_1ECB72F98;
  if (!qword_1ECB72F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F98);
  }

  return result;
}

unint64_t sub_1D9E482DC()
{
  result = qword_1ECB72FA0;
  if (!qword_1ECB72FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FA0);
  }

  return result;
}

unint64_t sub_1D9E48334()
{
  result = qword_1ECB72FA8;
  if (!qword_1ECB72FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FA8);
  }

  return result;
}

unint64_t sub_1D9E4838C()
{
  result = qword_1ECB72FB0;
  if (!qword_1ECB72FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FB0);
  }

  return result;
}

unint64_t sub_1D9E483E4()
{
  result = qword_1ECB72FB8;
  if (!qword_1ECB72FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FB8);
  }

  return result;
}

unint64_t sub_1D9E4843C()
{
  result = qword_1ECB72FC0;
  if (!qword_1ECB72FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FC0);
  }

  return result;
}

unint64_t sub_1D9E48494()
{
  result = qword_1ECB72FC8;
  if (!qword_1ECB72FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FC8);
  }

  return result;
}

unint64_t sub_1D9E484EC()
{
  result = qword_1ECB72FD0;
  if (!qword_1ECB72FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FD0);
  }

  return result;
}

unint64_t sub_1D9E48544()
{
  result = qword_1ECB72FD8;
  if (!qword_1ECB72FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FD8);
  }

  return result;
}

unint64_t sub_1D9E4859C()
{
  result = qword_1ECB72FE0;
  if (!qword_1ECB72FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FE0);
  }

  return result;
}

unint64_t sub_1D9E485F4()
{
  result = qword_1ECB72FE8;
  if (!qword_1ECB72FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FE8);
  }

  return result;
}

uint64_t sub_1D9E48648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C6C6174736E69 && a2 == 0xE900000000000064;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6174736E696E75 && a2 == 0xEB0000000064656CLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6168436574617473 && a2 == 0xEC0000006465676ELL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D9F48020 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573616261746164 && a2 == 0xED00007465736552)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E48818(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }

  return v2;
}

uint64_t sub_1D9E4882C(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }

  return v2;
}

uint64_t VerticalIntegrationContentClassification.caption.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

VisualActionPredictionSupport::VerticalIntegrationContentClassification __swiftcall VerticalIntegrationContentClassification.init(category:caption:)(VisualActionPredictionSupport::VisualContentCategory_optional category, Swift::String caption)
{
  *v2 = *category.value;
  *(v2 + 8) = caption;
  result.caption = caption;
  result.category = category;
  return result;
}

uint64_t sub_1D9E488AC()
{
  if (*v0)
  {
    return 0x6E6F6974706163;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_1D9E488E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E489C4(uint64_t a1)
{
  v2 = sub_1D9E491AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E48A00(uint64_t a1)
{
  v2 = sub_1D9E491AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VerticalIntegrationContentClassification.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72FF0, &qword_1D9F2EA30);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E491AC();
  sub_1D9F2BB8C();
  v14 = v8;
  v13 = 0;
  sub_1D9E49200();
  sub_1D9F2B94C();
  if (!v2)
  {
    v12 = 1;
    sub_1D9F2B95C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VerticalIntegrationContentClassification.hash(into:)(uint64_t a1)
{
  if (*v1 == 34)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9F2BB1C();
    VisualContentCategory.rawValue.getter();
    sub_1D9F2B18C();
  }

  return sub_1D9F2B18C();
}

uint64_t VerticalIntegrationContentClassification.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  if (v1 != 34)
  {
    VisualContentCategory.rawValue.getter();
    sub_1D9F2B18C();
  }

  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t VerticalIntegrationContentClassification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73008, &qword_1D9F2EA38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E491AC();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v16 = 0;
    sub_1D9E49254();
    sub_1D9F2B83C();
    v9 = v17;
    v15 = 1;
    v11 = sub_1D9F2B84C();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E48F24(uint64_t a1)
{
  if (*v1 == 34)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9F2BB1C();
    VisualContentCategory.rawValue.getter();
    sub_1D9F2B18C();
  }

  return sub_1D9F2B18C();
}

uint64_t sub_1D9E48FD0()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  if (v1 != 34)
  {
    VisualContentCategory.rawValue.getter();
    sub_1D9F2B18C();
  }

  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport40VerticalIntegrationContentClassificationV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  if (*a1 == 34)
  {
    if (v4 == 34)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 == 34)
  {
    return 0;
  }

  v8 = VisualContentCategory.rawValue.getter();
  v10 = v9;
  if (v8 == VisualContentCategory.rawValue.getter() && v10 == v11)
  {
  }

  else
  {
    v12 = sub_1D9F2BA1C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_10:
  if (v2 == v5 && v3 == v6)
  {
    return 1;
  }

  return sub_1D9F2BA1C();
}

unint64_t sub_1D9E491AC()
{
  result = qword_1ECB72FF8;
  if (!qword_1ECB72FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FF8);
  }

  return result;
}

unint64_t sub_1D9E49200()
{
  result = qword_1ECB73000;
  if (!qword_1ECB73000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73000);
  }

  return result;
}

unint64_t sub_1D9E49254()
{
  result = qword_1ECB73010;
  if (!qword_1ECB73010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73010);
  }

  return result;
}

unint64_t sub_1D9E492AC()
{
  result = qword_1ECB73018;
  if (!qword_1ECB73018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73018);
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

uint64_t sub_1D9E49314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D9E4935C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for VerticalIntegrationContentClassification.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VerticalIntegrationContentClassification.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D9E49500()
{
  result = qword_1ECB73020;
  if (!qword_1ECB73020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73020);
  }

  return result;
}

unint64_t sub_1D9E49558()
{
  result = qword_1ECB73028;
  if (!qword_1ECB73028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73028);
  }

  return result;
}

unint64_t sub_1D9E495B0()
{
  result = qword_1ECB73030;
  if (!qword_1ECB73030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73030);
  }

  return result;
}

uint64_t sub_1D9E49670(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D9F2BA1C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D9E49700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v66 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v65 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731D8, &unk_1D9F2F590);
  MEMORY[0x1EEE9AC00](v60);
  v13 = &v48 - v12;
  v59 = type metadata accessor for Feedback.Event(0);
  v14 = MEMORY[0x1EEE9AC00](v59);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v48 - v23;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (!v24 || a1 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v56 = a1 + v26;
  v53 = v22;
  v54 = a2 + v26;
  v51 = v13;
  v52 = (v66 + 32);
  v27 = (v66 + 8);
  v63 = v66 + 16;
  v55 = *(v21 + 72);
  v28 = v57;
  v49 = v11;
  v50 = v20;
  v48 = v17;
  v61 = v24;
  while (1)
  {
    v29 = v25;
    v30 = v55 * v25;
    result = sub_1D9E51E08(v56 + v30, v28, type metadata accessor for Feedback.Event);
    v58 = v29;
    if (v29 == v61)
    {
      goto LABEL_32;
    }

    sub_1D9E51E08(v54 + v30, v20, type metadata accessor for Feedback.Event);
    v32 = *(v60 + 48);
    sub_1D9E51E08(v28, v13, type metadata accessor for Feedback.Event);
    sub_1D9E51E08(v20, &v13[v32], type metadata accessor for Feedback.Event);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1D9E51E08(v13, v17, type metadata accessor for Feedback.Event);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v27)(v17, v4);
      goto LABEL_26;
    }

    (*v52)(v11, &v13[v32], v4);
    v46 = sub_1D9F2AD3C();
    v47 = *v27;
    (*v27)(v11, v4);
    v47(v17, v4);
    sub_1D9E51F3C(v13, type metadata accessor for Feedback.Event);
    if ((v46 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_6:
    v25 = v58 + 1;
    sub_1D9E51F3C(v20, type metadata accessor for Feedback.Event);
    sub_1D9E51F3C(v28, type metadata accessor for Feedback.Event);
    if (v25 == v61)
    {
      return 1;
    }
  }

  v33 = v53;
  sub_1D9E51E08(v13, v53, type metadata accessor for Feedback.Event);
  v34 = *v33;
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {

LABEL_26:
    sub_1D9E51FE8(v13, &qword_1ECB731D8, &unk_1D9F2F590);
LABEL_27:
    sub_1D9E51F3C(v20, type metadata accessor for Feedback.Event);
    sub_1D9E51F3C(v28, type metadata accessor for Feedback.Event);
    return 0;
  }

  v35 = *&v13[v32];
  v36 = *(v34 + 16);
  if (v36 != *(v35 + 16))
  {
LABEL_23:

    sub_1D9E51F3C(v51, type metadata accessor for Feedback.Event);
    v20 = v50;
    v28 = v57;
    goto LABEL_27;
  }

  if (!v36 || v34 == v35)
  {
LABEL_5:

    v13 = v51;
    sub_1D9E51F3C(v51, type metadata accessor for Feedback.Event);
    v11 = v49;
    v20 = v50;
    v28 = v57;
    v17 = v48;
    goto LABEL_6;
  }

  v37 = 0;
  v38 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v64 = v34 + v38;
  v62 = v35 + v38;
  while (v37 < *(v34 + 16))
  {
    v39 = *(v66 + 72) * v37;
    v40 = *(v66 + 16);
    result = v40(v9, v64 + v39, v4);
    if (v37 >= *(v35 + 16))
    {
      goto LABEL_31;
    }

    v41 = v9;
    v42 = v65;
    v40(v65, v62 + v39, v4);
    sub_1D9E51C60(&qword_1ECB731E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v43 = sub_1D9F2B10C();
    v44 = *v27;
    v45 = v42;
    v9 = v41;
    (*v27)(v45, v4);
    result = (v44)(v41, v4);
    if ((v43 & 1) == 0)
    {
      goto LABEL_23;
    }

    if (v36 == ++v37)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D9E49DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
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
    sub_1D9E51C60(&qword_1ECB731E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v21 = sub_1D9F2B10C();
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

uint64_t sub_1D9E49FC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (sub_1D9F2BA1C() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7 || (v5 != v8 || v6 != v7) && (sub_1D9F2BA1C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D9E4A0A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    while (1)
    {
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v9 = *(v4 - 1);
      v8 = *v4;
      v10 = v4[1];
      v11 = v4[3];
      v48 = v4[5];
      v46 = v4[7];
      v12 = *(v3 - 3);
      v13 = *(v3 - 2);
      v15 = *(v3 - 1);
      v14 = *v3;
      v16 = v3[1];
      v17 = v3[2];
      v18 = v3[3];
      v45 = v3[4];
      v47 = v3[5];
      v44 = v3[6];
      v49 = v3[7];
      v41 = v4[6];
      v42 = v4[4];
      v43 = v4[2];
      if (v6)
      {
        if (!v12)
        {
          return 0;
        }

        if (*(v4 - 4) != *(v3 - 4) || v6 != v12)
        {
          v19 = v4[3];
          v39 = v3[2];
          v40 = v4[1];
          v20 = v3[3];
          v21 = *v4;
          v37 = *v3;
          v38 = *(v4 - 2);
          v22 = v3[1];
          v23 = sub_1D9F2BA1C();
          v14 = v37;
          v7 = v38;
          v16 = v22;
          v8 = v21;
          v18 = v20;
          v17 = v39;
          v10 = v40;
          v11 = v19;
          if ((v23 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (v9)
      {
        if (!v15)
        {
          return 0;
        }

        if (v7 != v13 || v9 != v15)
        {
          v24 = v11;
          v25 = v18;
          v26 = v8;
          v27 = v14;
          v28 = v16;
          v29 = sub_1D9F2BA1C();
          v16 = v28;
          v14 = v27;
          v8 = v26;
          v18 = v25;
          v11 = v24;
          if ((v29 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v15)
      {
        return 0;
      }

      if (v10)
      {
        if (!v16)
        {
          return 0;
        }

        if (v8 != v14 || v10 != v16)
        {
          v30 = v11;
          v31 = v18;
          v32 = sub_1D9F2BA1C();
          v18 = v31;
          v11 = v30;
          if ((v32 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v16)
      {
        return 0;
      }

      if (v11)
      {
        v33 = v49;
        v35 = v47;
        v34 = v48;
        if (!v18 || (v43 != v17 || v11 != v18) && (sub_1D9F2BA1C() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v33 = v49;
        v35 = v47;
        v34 = v48;
        if (v18)
        {
          return 0;
        }
      }

      if (v34)
      {
        v36 = v46;
        if (!v35 || (v42 != v45 || v34 != v35) && (sub_1D9F2BA1C() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v36 = v46;
        if (v35)
        {
          return 0;
        }
      }

      if (v36)
      {
        if (!v33 || (v41 != v44 || v36 != v33) && (sub_1D9F2BA1C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v33)
      {
        return 0;
      }

      v4 += 12;
      v3 += 12;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_1D9E4A370(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 72);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = *v3;
      v13 = *(v3 - 1);
      v8 = i[1];
      v9 = i[2];
      v11 = i[3];
      v10 = i[4];
      if ((*(v3 - 5) != *(i - 1) || *(v3 - 4) != *i) && (sub_1D9F2BA1C() & 1) == 0)
      {
        break;
      }

      if ((v5 != v8 || v6 != v9) && (sub_1D9F2BA1C() & 1) == 0)
      {
        break;
      }

      if (v7)
      {
        if (!v10 || (v13 != v11 || v7 != v10) && (sub_1D9F2BA1C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D9E4A49C(uint64_t a1, uint64_t a2)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731B8, &unk_1D9F2F580);
  v4 = *(v24 - 8);
  v5 = MEMORY[0x1EEE9AC00](v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    return 0;
  }

  if (v10 && a1 != a2)
  {
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = a1 + v11;
    v13 = a2 + v11;
    sub_1D9F2AC4C();
    v14 = *(v4 + 72);
    while (1)
    {
      sub_1D9E51E70(v12, v9, &qword_1ECB731B8, &unk_1D9F2F580);
      sub_1D9E51E70(v13, v7, &qword_1ECB731B8, &unk_1D9F2F580);
      sub_1D9E51C60(&qword_1ECB731C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      if ((sub_1D9F2B10C() & 1) == 0)
      {
LABEL_17:
        sub_1D9E51FE8(v7, &qword_1ECB731B8, &unk_1D9F2F580);
        sub_1D9E51FE8(v9, &qword_1ECB731B8, &unk_1D9F2F580);
        return 0;
      }

      v15 = *(v24 + 28);
      v16 = &v9[v15];
      v17 = *&v9[v15 + 8];
      v18 = &v7[v15];
      v19 = *(v18 + 1);
      v20 = v19 == 0;
      if (!v17)
      {
        goto LABEL_5;
      }

      if (!v19)
      {
        goto LABEL_17;
      }

      if (*v16 != *v18 || v17 != v19)
      {
        break;
      }

      sub_1D9E51FE8(v7, &qword_1ECB731B8, &unk_1D9F2F580);
      sub_1D9E51FE8(v9, &qword_1ECB731B8, &unk_1D9F2F580);
LABEL_6:
      v13 += v14;
      v12 += v14;
      if (!--v10)
      {
        return 1;
      }
    }

    v20 = sub_1D9F2BA1C();
LABEL_5:
    sub_1D9E51FE8(v7, &qword_1ECB731B8, &unk_1D9F2F580);
    sub_1D9E51FE8(v9, &qword_1ECB731B8, &unk_1D9F2F580);
    if ((v20 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_1D9E4A738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedEntity(0);
  v41 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v38 = a2 + 32;
  v39 = a1 + 32;
  v13 = 0xEE00656C75646568;
  v14 = 0x637320746E657645;
  v35 = 0x80000001D9F47C20;
  v36 = 0x80000001D9F47C50;
  v33 = 0x80000001D9F47BC0;
  v34 = 0x80000001D9F47BF0;
  v32 = 0x80000001D9F47B90;
  v37 = v11;
  while (2)
  {
    if (v12 == v11)
    {
      goto LABEL_71;
    }

    v15 = v12 + 1;
    v16 = (v39 + 16 * v12);
    v17 = *(v16 + 1);
    v18 = *v16;
    v19 = v38 + 16 * v12;
    v20 = *(v19 + 8);
    v21 = 0xEE00656C75646568;
    v22 = 0x637320746E657645;
    switch(v18)
    {
      case 1:
        break;
      case 2:
        v22 = 0xD000000000000013;
        v21 = v33;
        break;
      case 3:
        v21 = 0xE900000000000074;
        v22 = 0x73696C206F646F54;
        break;
      case 4:
        v22 = 0x676E6970706F6853;
        v21 = 0xED00007473696C20;
        break;
      case 5:
        v22 = 0xD000000000000010;
        v21 = v34;
        break;
      case 6:
        v21 = 0xE400000000000000;
        v22 = 1970169165;
        break;
      case 7:
        v21 = 0xEA00000000007473;
        v22 = 0x696C20726568744FLL;
        break;
      case 8:
        v21 = 0xE400000000000000;
        v22 = 1768319319;
        break;
      case 9:
        v22 = 0xD000000000000013;
        v21 = v35;
        break;
      case 10:
        v22 = 0x6E2072656B636F4CLL;
        v21 = 0xED00007265626D75;
        break;
      case 11:
        v21 = 0xE700000000000000;
        v22 = 0x74706965636552;
        break;
      case 12:
        v22 = 0xD000000000000011;
        v21 = v36;
        break;
      case 13:
        v21 = 0xEA0000000000746ELL;
        v22 = 0x6F726665726F7453;
        break;
      case 14:
        v21 = 0xE700000000000000;
        v22 = 0x746375646F7250;
        break;
      case 15:
        v21 = 0xE500000000000000;
        v22 = 0x726568744FLL;
        break;
      default:
        v22 = 0xD000000000000011;
        v21 = v32;
        break;
    }

    switch(*v19)
    {
      case 1:
        goto LABEL_51;
      case 2:
        v13 = v33;
        if (v22 != 0xD000000000000013)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 3:
        v13 = 0xE900000000000074;
        if (v22 != 0x73696C206F646F54)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 4:
        v13 = 0xED00007473696C20;
        if (v22 != 0x676E6970706F6853)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 5:
        v13 = v34;
        if (v22 != 0xD000000000000010)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 6:
        v13 = 0xE400000000000000;
        if (v22 != 1970169165)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 7:
        v13 = 0xEA00000000007473;
        if (v22 != 0x696C20726568744FLL)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 8:
        v13 = 0xE400000000000000;
        if (v22 != 1768319319)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 9:
        v13 = v35;
        if (v22 != 0xD000000000000013)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 0xA:
        v14 = 0x6E2072656B636F4CLL;
        v13 = 0xED00007265626D75;
LABEL_51:
        if (v22 == v14)
        {
          goto LABEL_52;
        }

        goto LABEL_55;
      case 0xB:
        v13 = 0xE700000000000000;
        v23 = 0x706965636552;
        goto LABEL_28;
      case 0xC:
        v13 = v36;
        if (v22 != 0xD000000000000011)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 0xD:
        v13 = 0xEA0000000000746ELL;
        if (v22 != 0x6F726665726F7453)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 0xE:
        v13 = 0xE700000000000000;
        v23 = 0x6375646F7250;
LABEL_28:
        if (v22 != (v23 & 0xFFFFFFFFFFFFLL | 0x74000000000000))
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 0xF:
        v13 = 0xE500000000000000;
        if (v22 != 0x726568744FLL)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      default:
        v13 = v32;
        if (v22 != 0xD000000000000011)
        {
          goto LABEL_55;
        }

LABEL_52:
        if (v21 == v13)
        {
        }

        else
        {
LABEL_55:
          v24 = sub_1D9F2BA1C();

          if ((v24 & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        v25 = *(v17 + 16);
        if (v25 != *(v20 + 16))
        {
LABEL_66:

          return 0;
        }

        v40 = v15;
        if (!v25 || v17 == v20)
        {
LABEL_5:

          result = 1;
          v11 = v37;
          v12 = v40;
          v13 = 0xEE00656C75646568;
          v14 = 0x637320746E657645;
          if (v40 == v37)
          {
            return result;
          }

          continue;
        }

        v26 = 0;
        v27 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v28 = v17 + v27;
        v29 = v20 + v27;
        while (v26 < *(v17 + 16))
        {
          v30 = *(v41 + 72) * v26;
          result = sub_1D9E51E08(v28 + v30, v10, type metadata accessor for DetectedEntity);
          if (v26 >= *(v20 + 16))
          {
            goto LABEL_70;
          }

          sub_1D9E51E08(v29 + v30, v7, type metadata accessor for DetectedEntity);
          v31 = static DetectedEntity.== infix(_:_:)(v10, v7);
          sub_1D9E51F3C(v7, type metadata accessor for DetectedEntity);
          result = sub_1D9E51F3C(v10, type metadata accessor for DetectedEntity);
          if ((v31 & 1) == 0)
          {
            goto LABEL_66;
          }

          if (v25 == ++v26)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        return result;
    }
  }
}

uint64_t sub_1D9E4AE4C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9E4AEA8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9E4AF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QueryResult.DisplayItem(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_14:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    sub_1D9E51F9C();
    v15 = *(v5 + 72);
    while (1)
    {
      sub_1D9E51E08(v13, v10, type metadata accessor for QueryResult.DisplayItem);
      sub_1D9E51E08(v14, v8, type metadata accessor for QueryResult.DisplayItem);
      if ((sub_1D9F2B56C() & 1) == 0 || (*(v10 + 1) != *(v8 + 1) || *(v10 + 2) != *(v8 + 2)) && (sub_1D9F2BA1C() & 1) == 0)
      {
        break;
      }

      v16 = _s29VisualActionPredictionSupport17ExecutionFollowupV2eeoiySbAC_ACtFZ_0(&v10[*(v4 + 24)], &v8[*(v4 + 24)]);
      sub_1D9E51F3C(v8, type metadata accessor for QueryResult.DisplayItem);
      sub_1D9E51F3C(v10, type metadata accessor for QueryResult.DisplayItem);
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

    sub_1D9E51F3C(v8, type metadata accessor for QueryResult.DisplayItem);
    sub_1D9E51F3C(v10, type metadata accessor for QueryResult.DisplayItem);
    goto LABEL_14;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1D9E4B17C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_1D9E51E08(v18, v15, a4);
        sub_1D9E51E08(v19, v12, a4);
        v21 = a5(v15, v12);
        sub_1D9E51F3C(v12, a4);
        sub_1D9E51F3C(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1D9E4B318(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v3 - 1);
      v9 = *v3;
      if (*(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2))
      {
        if (v6 != v8 || *&v7 != *&v9)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_1D9F2BA1C();
        result = 0;
        if ((v11 & 1) == 0)
        {
          return result;
        }

        if (v6 != v8 || *&v7 != *&v9)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D9E4B3EC(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 72);
    for (i = (a2 + 72); ; i += 6)
    {
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(v3 - 5), *(i - 5)), vceqq_s64(*(v3 - 3), *(i - 3))))) & 1) == 0)
      {
        return 0;
      }

      v5 = *(v3 - 1);
      v6 = *v3;
      v8 = *(i - 1);
      v7 = *i;
      v9 = *v3 >> 62;
      v10 = *i >> 62;
      if (v9 == 3)
      {
        break;
      }

      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v17 = *(v5 + 16);
          v16 = *(v5 + 24);
          v14 = __OFSUB__(v16, v17);
          v11 = v16 - v17;
          if (v14)
          {
            goto LABEL_133;
          }

          goto LABEL_24;
        }

        v11 = 0;
        if (v10 <= 1)
        {
          goto LABEL_25;
        }
      }

      else if (v9)
      {
        LODWORD(v11) = HIDWORD(v5) - v5;
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          goto LABEL_132;
        }

        v11 = v11;
        if (v10 <= 1)
        {
LABEL_25:
          if (v10)
          {
            LODWORD(v15) = HIDWORD(v8) - v8;
            if (__OFSUB__(HIDWORD(v8), v8))
            {
              goto LABEL_131;
            }

            v15 = v15;
          }

          else
          {
            v15 = BYTE6(v7);
          }

          goto LABEL_29;
        }
      }

      else
      {
        v11 = BYTE6(v6);
        if (v10 <= 1)
        {
          goto LABEL_25;
        }
      }

LABEL_18:
      if (v10 != 2)
      {
        if (v11)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      v14 = __OFSUB__(v12, v13);
      v15 = v12 - v13;
      if (v14)
      {
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
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
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
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
      }

LABEL_29:
      if (v11 != v15)
      {
        return 0;
      }

      if (v11 < 1)
      {
        goto LABEL_6;
      }

      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v24 = *(v5 + 16);
          v62 = *(v3 - 1);
          sub_1D9E400F4(v5, v6);
          sub_1D9E400F4(v8, v7);
          v25 = sub_1D9F2AA7C();
          if (v25)
          {
            v26 = sub_1D9F2AA9C();
            if (__OFSUB__(v24, v26))
            {
              goto LABEL_135;
            }

            v25 += v24 - v26;
          }

          result = sub_1D9F2AA8C();
          if (v10 != 2)
          {
            if (v10 == 1)
            {
              if (v8 >> 32 < v8)
              {
                goto LABEL_139;
              }

              v27 = sub_1D9F2AA7C();
              if (v27)
              {
                v28 = sub_1D9F2AA9C();
                if (__OFSUB__(v8, v28))
                {
                  goto LABEL_151;
                }

                v27 += v8 - v28;
              }

              v29 = sub_1D9F2AA8C();
              if (v29 >= (v8 >> 32) - v8)
              {
                v30 = (v8 >> 32) - v8;
              }

              else
              {
                v30 = v29;
              }

              result = v25;
              if (!v25)
              {
                goto LABEL_163;
              }

              if (!v27)
              {
                goto LABEL_162;
              }

              goto LABEL_123;
            }

            __s1[0] = v8;
            LOWORD(__s1[1]) = v7;
            BYTE2(__s1[1]) = BYTE2(v7);
            BYTE3(__s1[1]) = BYTE3(v7);
            BYTE4(__s1[1]) = BYTE4(v7);
            BYTE5(__s1[1]) = BYTE5(v7);
            if (!v25)
            {
              goto LABEL_159;
            }

LABEL_127:
            v56 = BYTE6(v7);
            v57 = __s1;
            result = v25;
LABEL_128:
            v58 = memcmp(result, v57, v56);
            sub_1D9E4015C(v8, v7);
            sub_1D9E4015C(v62, v6);
            if (v58)
            {
              return 0;
            }

            goto LABEL_6;
          }

          v59 = v25;
          v47 = *(v8 + 16);
          v46 = *(v8 + 24);
          v27 = sub_1D9F2AA7C();
          if (v27)
          {
            v48 = sub_1D9F2AA9C();
            if (__OFSUB__(v47, v48))
            {
              goto LABEL_149;
            }

            v27 += v47 - v48;
          }

          v14 = __OFSUB__(v46, v47);
          v49 = v46 - v47;
          if (v14)
          {
            goto LABEL_144;
          }

          v50 = sub_1D9F2AA8C();
          if (v50 >= v49)
          {
            v30 = v49;
          }

          else
          {
            v30 = v50;
          }

          result = v59;
          if (!v59)
          {
            goto LABEL_165;
          }

          if (!v27)
          {
            goto LABEL_164;
          }

LABEL_123:
          if (result == v27)
          {
            sub_1D9E4015C(v8, v7);
            sub_1D9E4015C(v62, v6);
            goto LABEL_6;
          }

          v56 = v30;
          v57 = v27;
          goto LABEL_128;
        }

        memset(__s1, 0, 14);
        if (!v10)
        {
LABEL_85:
          __s2 = v8;
          v64 = v7;
          v65 = BYTE2(v7);
          v66 = BYTE3(v7);
          v67 = BYTE4(v7);
          v68 = BYTE5(v7);
          if (memcmp(__s1, &__s2, BYTE6(v7)))
          {
            return 0;
          }

          goto LABEL_6;
        }

        v61 = v5;
        if (v10 == 2)
        {
          v36 = *(v8 + 16);
          v35 = *(v8 + 24);
          sub_1D9E400F4(v5, v6);
          sub_1D9E400F4(v8, v7);
          v22 = sub_1D9F2AA7C();
          if (v22)
          {
            v37 = sub_1D9F2AA9C();
            if (__OFSUB__(v36, v37))
            {
              goto LABEL_147;
            }

            v22 += v36 - v37;
          }

          v14 = __OFSUB__(v35, v36);
          v18 = v35 - v36;
          if (v14)
          {
            goto LABEL_141;
          }

          result = sub_1D9F2AA8C();
          if (!v22)
          {
            __break(1u);
LABEL_153:
            sub_1D9F2AA8C();
LABEL_154:
            __break(1u);
LABEL_155:
            result = sub_1D9F2AA8C();
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
            return result;
          }
        }

        else
        {
          v18 = (v8 >> 32) - v8;
          if (v8 >> 32 < v8)
          {
            goto LABEL_137;
          }

          sub_1D9E400F4(v5, v6);
          sub_1D9E400F4(v8, v7);
          v41 = sub_1D9F2AA7C();
          if (!v41)
          {
            goto LABEL_153;
          }

          v42 = v41;
          v43 = sub_1D9F2AA9C();
          if (__OFSUB__(v8, v43))
          {
            goto LABEL_143;
          }

          v22 = (v8 - v43 + v42);
          result = sub_1D9F2AA8C();
          if (!v22)
          {
            goto LABEL_154;
          }
        }
      }

      else
      {
        if (v9)
        {
          v31 = v5;
          if (v5 > v5 >> 32)
          {
            goto LABEL_134;
          }

          v62 = *(v3 - 1);
          sub_1D9E400F4(v5, v6);
          sub_1D9E400F4(v8, v7);
          v25 = sub_1D9F2AA7C();
          if (v25)
          {
            v32 = sub_1D9F2AA9C();
            if (__OFSUB__(v31, v32))
            {
              goto LABEL_136;
            }

            v25 += v31 - v32;
          }

          result = sub_1D9F2AA8C();
          if (v10 == 2)
          {
            v60 = v25;
            v52 = *(v8 + 16);
            v51 = *(v8 + 24);
            v27 = sub_1D9F2AA7C();
            if (v27)
            {
              v53 = sub_1D9F2AA9C();
              if (__OFSUB__(v52, v53))
              {
                goto LABEL_150;
              }

              v27 += v52 - v53;
            }

            v14 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            if (v14)
            {
              goto LABEL_146;
            }

            v55 = sub_1D9F2AA8C();
            if (v55 >= v54)
            {
              v30 = v54;
            }

            else
            {
              v30 = v55;
            }

            result = v60;
            if (!v60)
            {
              goto LABEL_161;
            }

            if (!v27)
            {
              goto LABEL_160;
            }
          }

          else
          {
            if (v10 != 1)
            {
              __s1[0] = v8;
              LOWORD(__s1[1]) = v7;
              BYTE2(__s1[1]) = BYTE2(v7);
              BYTE3(__s1[1]) = BYTE3(v7);
              BYTE4(__s1[1]) = BYTE4(v7);
              BYTE5(__s1[1]) = BYTE5(v7);
              if (!v25)
              {
                goto LABEL_158;
              }

              goto LABEL_127;
            }

            if (v8 >> 32 < v8)
            {
              goto LABEL_145;
            }

            v27 = sub_1D9F2AA7C();
            if (v27)
            {
              v33 = sub_1D9F2AA9C();
              if (__OFSUB__(v8, v33))
              {
                goto LABEL_152;
              }

              v27 += v8 - v33;
            }

            v34 = sub_1D9F2AA8C();
            if (v34 >= (v8 >> 32) - v8)
            {
              v30 = (v8 >> 32) - v8;
            }

            else
            {
              v30 = v34;
            }

            result = v25;
            if (!v25)
            {
              goto LABEL_167;
            }

            if (!v27)
            {
              goto LABEL_166;
            }
          }

          goto LABEL_123;
        }

        __s1[0] = *(v3 - 1);
        LOWORD(__s1[1]) = v6;
        BYTE2(__s1[1]) = BYTE2(v6);
        BYTE3(__s1[1]) = BYTE3(v6);
        BYTE4(__s1[1]) = BYTE4(v6);
        BYTE5(__s1[1]) = BYTE5(v6);
        if (!v10)
        {
          goto LABEL_85;
        }

        v61 = v5;
        if (v10 == 1)
        {
          v18 = (v8 >> 32) - v8;
          if (v8 >> 32 < v8)
          {
            goto LABEL_138;
          }

          sub_1D9E400F4(v5, v6);
          sub_1D9E400F4(v8, v7);
          v19 = sub_1D9F2AA7C();
          if (!v19)
          {
            goto LABEL_155;
          }

          v20 = v19;
          v21 = sub_1D9F2AA9C();
          if (__OFSUB__(v8, v21))
          {
            goto LABEL_142;
          }

          v22 = (v8 - v21 + v20);
          result = sub_1D9F2AA8C();
          if (!v22)
          {
            goto LABEL_156;
          }
        }

        else
        {
          v39 = *(v8 + 16);
          v38 = *(v8 + 24);
          sub_1D9E400F4(v5, v6);
          sub_1D9E400F4(v8, v7);
          v22 = sub_1D9F2AA7C();
          if (v22)
          {
            v40 = sub_1D9F2AA9C();
            if (__OFSUB__(v39, v40))
            {
              goto LABEL_148;
            }

            v22 += v39 - v40;
          }

          v14 = __OFSUB__(v38, v39);
          v18 = v38 - v39;
          if (v14)
          {
            goto LABEL_140;
          }

          result = sub_1D9F2AA8C();
          if (!v22)
          {
            goto LABEL_157;
          }
        }
      }

      if (result >= v18)
      {
        v44 = v18;
      }

      else
      {
        v44 = result;
      }

      v45 = memcmp(__s1, v22, v44);
      sub_1D9E4015C(v8, v7);
      sub_1D9E4015C(v61, v6);
      if (v45)
      {
        return 0;
      }

LABEL_6:
      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    v11 = 0;
    if (!v5 && v6 == 0xC000000000000000 && *i >> 62 == 3)
    {
      v11 = 0;
      if (!v8 && v7 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_24:
    if (v10 <= 1)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  return 1;
}

uint64_t sub_1D9E4BC80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedAction(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v50 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v49 = 0;
    return v49 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v49 = 1;
    return v49 & 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v50 = *(v8 + 72);
  while (1)
  {
    result = sub_1D9E51E08(v13, v10, type metadata accessor for PredictedAction);
    if (!v11)
    {
      break;
    }

    v52 = v13;
    v53 = v11;
    v51 = v14;
    sub_1D9E51E08(v14, v7, type metadata accessor for PredictedAction);
    if (sub_1D9F2AD3C() & 1) == 0 || ((v16 = v4[5], v17 = *&v10[v16], v18 = *&v10[v16 + 8], v19 = &v7[v16], v17 == *v19) ? (v20 = v18 == *(v19 + 1)) : (v20 = 0), !v20 && (sub_1D9F2BA1C() & 1) == 0 || (v21 = &v10[v4[6]], v22 = *(v21 + 1), v23 = *(v21 + 2), v24 = *(v21 + 3), v25 = *(v21 + 4), v26 = *(v21 + 5), v27 = v21[48], v61 = *v21, v62 = v22, v63 = v23, v64 = v24, v65 = v25, v66 = v26, v67 = v27, v28 = &v7[v4[6]], v30 = *(v28 + 1), v31 = *(v28 + 2), v32 = *(v28 + 3), v34 = *(v28 + 4), v33 = *(v28 + 5), v35 = v28[48], v54 = *v28, v29 = v54, v55 = v30, v56 = v31, v57 = v32, v58 = v34, v59 = v33, v60 = v35, sub_1D9E51CA8(v61, v22, v23, v24, v25, v26, v27), sub_1D9E51CA8(v29, v30, v31, v32, v34, v33, v35), LOBYTE(v33) = _s29VisualActionPredictionSupport09PredictedB0V6SourceO2eeoiySbAE_AEtFZ_0(&v61, &v54), sub_1D9E51D58(v54, v55, v56, v57, v58, v59, v60), sub_1D9E51D58(v61, v62, v63, v64, v65, v66, v67), (v33 & 1) == 0) || ((v36 = v4[7], v37 = *&v10[v36], v38 = *&v10[v36 + 8], v39 = &v7[v36], v37 != *v39) || v38 != *(v39 + 1)) && (sub_1D9F2BA1C() & 1) == 0) || ((v40 = v4[8], v41 = *&v10[v40], v42 = *&v10[v40 + 8], v43 = &v7[v40], v41 != *v43) || v42 != *(v43 + 1)) && (sub_1D9F2BA1C() & 1) == 0 || v10[v4[9]] != v7[v4[9]] || (v44 = v4[10], v45 = &v10[v44], v46 = v10[v44], v47 = &v7[v44], v46 != *v47) || ((v45[1] ^ v47[1]))
    {
      sub_1D9E51F3C(v7, type metadata accessor for PredictedAction);
      sub_1D9E51F3C(v10, type metadata accessor for PredictedAction);
      v49 = 0;
      return v49 & 1;
    }

    v48 = v47[2] ^ v45[2];
    sub_1D9E51F3C(v7, type metadata accessor for PredictedAction);
    sub_1D9E51F3C(v10, type metadata accessor for PredictedAction);
    if ((v48 & 1) == 0)
    {
      v11 = v53 - 1;
      v14 = v51 + v50;
      v13 = v52 + v50;
      if (v53 != 1)
      {
        continue;
      }
    }

    v49 = v48 ^ 1;
    return v49 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9E4C020(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  if (v6 != *(a2 + 16))
  {
    return 0;
  }

  if (!v6 || a1 == a2)
  {
    return 1;
  }

  v64 = v5;
  v65 = v4;
  v66 = v2;
  v67 = v3;
  v7 = (a1 + 32);
  v8 = (a2 + 32);
  for (i = v6 - 1; ; --i)
  {
    v10 = v7[3];
    v11 = v7[5];
    v53 = v7[4];
    *v54 = v11;
    *&v54[9] = *(v7 + 89);
    v12 = v7[1];
    v49 = *v7;
    v50 = v12;
    v13 = v7[3];
    v15 = *v7;
    v14 = v7[1];
    v51 = v7[2];
    v52 = v13;
    v16 = v8[1];
    v55 = *v8;
    v56 = v16;
    *&v60[9] = *(v8 + 89);
    v17 = v8[3];
    v18 = v8[5];
    v59 = v8[4];
    *v60 = v18;
    v19 = v8[3];
    v20 = *v8;
    v21 = v8[1];
    v57 = v8[2];
    v58 = v19;
    v61[0] = v15;
    v61[1] = v14;
    *(v62 + 9) = *(v7 + 89);
    v22 = v7[5];
    v61[4] = v53;
    v62[0] = v22;
    v61[2] = v51;
    v61[3] = v10;
    v62[2] = v20;
    v62[3] = v21;
    *(v63 + 9) = *(v8 + 89);
    v23 = v8[5];
    v62[6] = v59;
    v63[0] = v23;
    v62[4] = v57;
    v62[5] = v17;
    v24 = v50;
    v25 = v51;
    if (v54[24])
    {
      if (v54[24] == 1)
      {
        if (v60[24] != 1)
        {
          goto LABEL_44;
        }

        v26 = v56;
        v27 = v57;
        if (v49 != v55 && (sub_1D9F2BA1C() & 1) == 0)
        {
          goto LABEL_44;
        }

        if (v24 != v26 && (sub_1D9F2BA1C() & 1) == 0)
        {
          goto LABEL_44;
        }

        if (v25 == v27)
        {
          sub_1D9E51B38(&v55, v48);
          sub_1D9E51B38(&v49, v48);
LABEL_33:
          sub_1D9E51FE8(v61, &qword_1ECB731F8, &qword_1D9F2F5A0);
          goto LABEL_40;
        }

        v33 = sub_1D9F2BA1C();
        sub_1D9E51B38(&v55, v48);
        sub_1D9E51B38(&v49, v48);
        sub_1D9E51FE8(v61, &qword_1ECB731F8, &qword_1D9F2F5A0);
        if ((v33 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v60[24] != 2)
        {
          goto LABEL_44;
        }

        if (v49 == v55)
        {
          sub_1D9E51B38(&v49, v48);
          sub_1D9E51B38(&v55, v48);
          goto LABEL_33;
        }

        v32 = sub_1D9F2BA1C();
        sub_1D9E51B38(&v49, v48);
        sub_1D9E51B38(&v55, v48);
        sub_1D9E51FE8(v61, &qword_1ECB731F8, &qword_1D9F2F5A0);
        if ((v32 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v60[24] || (v47 = v52, v42 = *(&v53 + 1), v43 = v53, v38 = *&v54[8], v39 = *v54, v28 = *&v54[16], v29 = v56, v30 = v57, v45 = v58, v46 = *(&v52 + 1), v44 = *(&v58 + 1), v40 = *(&v59 + 1), v41 = v59, v36 = *&v60[8], v37 = *v60, v31 = *&v60[16], v49 != v55) && (sub_1D9F2BA1C() & 1) == 0 || v24 != v29 && (sub_1D9F2BA1C() & 1) == 0 || v25 != v30 && (sub_1D9F2BA1C() & 1) == 0 || (v47 != v45 || v46 != v44) && (sub_1D9F2BA1C() & 1) == 0 || (v43 != v41 || v42 != v40) && (sub_1D9F2BA1C() & 1) == 0)
      {
LABEL_44:
        sub_1D9E51B38(&v55, v48);
        sub_1D9E51B38(&v49, v48);
        sub_1D9E51FE8(v61, &qword_1ECB731F8, &qword_1D9F2F5A0);
        return 0;
      }

      if (v39 == v37 && v38 == v36)
      {
        sub_1D9E51B38(&v55, v48);
        sub_1D9E51B38(&v49, v48);
        sub_1D9E51FE8(v61, &qword_1ECB731F8, &qword_1D9F2F5A0);
      }

      else
      {
        v34 = sub_1D9F2BA1C();
        sub_1D9E51B38(&v55, v48);
        sub_1D9E51B38(&v49, v48);
        sub_1D9E51FE8(v61, &qword_1ECB731F8, &qword_1D9F2F5A0);
        if ((v34 & 1) == 0)
        {
          return 0;
        }
      }

      if (v28 != v31)
      {
        return 0;
      }
    }

LABEL_40:
    if (!i)
    {
      break;
    }

    v8 += 7;
    v7 += 7;
  }

  return 1;
}

uint64_t sub_1D9E4C4CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 80);
    for (i = a2 + 40; ; i += 56)
    {
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v7 = *(v3 - 4);
      v8 = *v3;
      v16 = *(v3 - 1);
      v9 = *(i + 8);
      v10 = *(i + 16);
      v11 = *(i + 24);
      v13 = *(i + 32);
      v12 = *(i + 40);
      if ((*(v3 - 6) != *(i - 8) || *(v3 - 5) != *i) && (sub_1D9F2BA1C() & 1) == 0)
      {
        break;
      }

      if (v5 == v9 && v6 == v10)
      {
        if (v7 != v11)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_1D9F2BA1C();
        result = 0;
        if ((v14 & 1) == 0 || v7 != v11)
        {
          return result;
        }
      }

      if (v8)
      {
        if (!v12 || (v16 != v13 || v8 != v12) && (sub_1D9F2BA1C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v12)
      {
        return 0;
      }

      v3 += 14;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}