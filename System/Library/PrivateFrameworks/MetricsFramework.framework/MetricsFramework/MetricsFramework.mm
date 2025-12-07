uint64_t sub_258DDA4B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_DWORD *sub_258DDA518@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_258DDA544(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for EventMetadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_258DDA5F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EventMetadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_258DDA76C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_258DDA7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258F09B00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258F0A370();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_258DDA8C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_258F09B00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258F0A370();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_258DDA9C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDA9FC()
{
  v1 = sub_258F0A370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C68, &qword_258F0D398);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v12, v10 | 7);
}

uint64_t sub_258DDAB84()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDABBC()
{
  v1 = sub_258F0A370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C90, &qword_258F0D3D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v12, v10 | 7);
}

uint64_t sub_258DDAD4C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_258DDADD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_258F09A70();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 52);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_258DDAE88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_258F09A70();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GMAssetAvailability(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GMAssetAvailability(uint64_t result, int a2, int a3)
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

uint64_t sub_258DDAFF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_258DDB06C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDB0A8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for EventMetadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_258DDB154(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EventMetadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_258DDB1FC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_258DDB234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_258DDB2FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_258DDB40C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258DDB484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258DDB500(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 76);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_258DDB5C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_258DDB678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_258DDB7C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_258DDB904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258F09B00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258F0A370();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_258DDB9F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_258F09B00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258F0A370();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_258DDBAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
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

uint64_t sub_258DDBBC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
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

uint64_t sub_258DDBC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
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

uint64_t sub_258DDBD5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_258DDBE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_258DDBF54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_258DDC180()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDC1B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_258DDC260(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09B00();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258DDC2CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09B00();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258DDC33C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDC384()
{
  v7 = sub_258F09A20();
  v1 = *(v7 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64) + 7;
  v8 = (v2 + ((((((((((((v4 + v3) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;
  v9 = (v4 + v8) & 0xFFFFFFFFFFFFFFF8;

  v5 = *(v1 + 8);
  v5(v0 + v3, v7);

  v5(v0 + v8, v7);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_258DDC510(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_258F098D0();
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
      v13 = sub_258F0A370();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_258DDC634(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_258F098D0();
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
      v13 = sub_258F0A370();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_258DDC758()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDC7A0()
{
  v7 = sub_258F09A20();
  v1 = *(v7 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64) + 7;
  v8 = (v2 + ((((((((((((v4 + v3) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;
  v9 = (v4 + v8) & 0xFFFFFFFFFFFFFFF8;

  v5 = *(v1 + 8);
  v5(v0 + v3, v7);

  v5(v0 + v8, v7);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_258DDC928@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_258DDC988()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDCA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258DDCA8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258DDCAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F30, qword_258F132E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258F0A370();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_258DDCBF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F30, qword_258F132E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258F0A370();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_258DDCD00()
{
  v1 = type metadata accessor for PoirotODDIMetricsConcluder(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_258F09CD0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = *(v1 + 20);
  v8 = sub_258F0A370();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_258DDCE74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDCEB8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_258F098D0();
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
      v13 = sub_258F0A370();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_258DDCFDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_258F098D0();
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
      v13 = sub_258F0A370();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_258DDD150()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDD188(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for EventMetadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_258DDD234(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EventMetadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_258DDD2D8()
{

  return MEMORY[0x2821FE8E8](v0, 288, 7);
}

uint64_t sub_258DDD37C()
{
  v1 = sub_258F09A20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_258DDD414()
{
  v1 = sub_258F09A20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_258DDD514()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDD5E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDD664()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDD6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258F09B00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_258F0A370();
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

uint64_t sub_258DDD800(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_258F09B00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_258F0A370();
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

uint64_t sub_258DDD908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_258DDD970@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_258DDDAA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_258DDDB08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDDB50()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDDB88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDDBC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDDC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 104);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_258DDDCD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 104);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_258DDDDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258F09B00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258F0A370();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_258DDDEBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_258F09B00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258F0A370();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_258DDDFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
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

uint64_t sub_258DDE08C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
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

uint64_t sub_258DDE150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AA58, &unk_258F174B0);
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

uint64_t sub_258DDE228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AA58, &unk_258F174B0);
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

uint64_t CombinedAIRAssetStatusData.rows.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CombinedAIRAssetStatusData.eventMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CombinedAIRAssetStatusData(0) + 20);

  return sub_258DDE438(v3, a1);
}

uint64_t sub_258DDE438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CombinedAIRAssetStatusData.eventMetadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CombinedAIRAssetStatusData(0) + 20);

  return sub_258DDE4E0(a1, v3);
}

uint64_t sub_258DDE4E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AIRAssetStatusResults.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AIRAssetStatusResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t AIRAssetStatusResults.combined.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t AIRAssetStatusCalculator.__allocating_init(logger:sqlFileURL:bookmarkService:oddId:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v46 = a4;
  v44 = a3;
  v40 = a2;
  v42 = a1;
  v6 = sub_258F09A70();
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v36 - v13;
  v15 = sub_258F0A370();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v36 = *(v16 + 16);
  v37 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36();
  v19 = v14;
  sub_258DE20C0(a2, v14, &qword_27F988720, &qword_258F0B830);
  (*(v7 + 16))(v10, v46, v6);
  type metadata accessor for BiomeResultsWrapperFactory();
  v41 = swift_allocObject();
  v20 = type metadata accessor for CAAnalyticsEventSubmitter();
  v21 = swift_allocObject();
  v47[3] = v20;
  v47[4] = &off_286A2C648;
  v47[0] = v21;
  type metadata accessor for AIRAssetStatusCalculator(0);
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v47, v20);
  MEMORY[0x28223BE20](v23, v23);
  v25 = (&v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v28 = (v22 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_analyticsEventSubmitter);
  v28[3] = v20;
  v28[4] = &off_286A2C648;
  *v28 = v27;
  sub_258F09AC0();
  v29 = v37;
  (v36)(v22 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger, v37, v15);
  v30 = v19;
  sub_258DE20C0(v19, v22 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v31 = (v22 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService);
  v31[3] = sub_258F09C20();
  v31[4] = &off_286A2FA30;
  *v31 = v44;
  v32 = v38;
  v33 = v39;
  (*(v39 + 8))(v46, v38);
  sub_258DE2184(v40, &qword_27F988720, &qword_258F0B830);
  v34 = *(v16 + 8);
  v34(v42, v15);
  sub_258DE2184(v30, &qword_27F988720, &qword_258F0B830);
  v34(v29, v15);
  (*(v33 + 32))(v22 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_oddId, v43, v32);
  *(v22 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_biomeResultsFactory) = v41;
  *(v22 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_defaults) = v45;
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  return v22;
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

uint64_t sub_258DDEB4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
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

uint64_t sub_258DDEBD4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for EventMetadata(0);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v2[12] = swift_task_alloc();
  v3 = sub_258F09A20();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258DDEDA8, 0, 0);
}

void sub_258DDEDA8()
{
  v130 = v0;

  v1 = sub_258F0A350();
  v2 = sub_258F0A810();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v129[0] = v4;
    *v3 = 136315138;
    sub_258F09A70();
    sub_258DE35A8(&qword_27F988758, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v5 = sub_258F0AD60();
    v7 = sub_258DE3018(v5, v6, v129);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_258DD8000, v1, v2, "SQL calculator invoked: AIRAssetStatusCalculator %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x259C9EF40](v4, -1, -1);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v8 = v0[20];
  sub_258DE20C0(v0[7] + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_sqlFileURL, v8, &qword_27F988720, &qword_258F0B830);
  v9 = sub_258F098D0();
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  sub_258DE2184(v8, &qword_27F988720, &qword_258F0B830);
  if (v10 != 1)
  {
    sub_258DDFD68(&OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_sqlFileURL, &OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger);
    v12 = sub_258DE06EC(&OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService);
    __swift_project_boxed_opaque_existential_1((v0[7] + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService), *(v0[7] + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService + 24));
    sub_258F09BF0();
    sub_258F09910();
    sub_258F099E0();
    v14 = v13 * 1000.0;
    if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_54:
      __break(1u);
    }

    else if (v14 > -1.0)
    {
      if (v14 < 1.84467441e19)
      {
        v126 = v12;
        v15 = sub_258DE0804(v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
        sub_258F0A190();
        *(swift_allocObject() + 16) = xmmword_258F0B820;
        v16 = sub_258F0A1B0();
        v18 = v17;
        v19 = swift_allocObject();
        *(v19 + 16) = v16;
        *(v19 + 24) = v18;
        sub_258F0A160();
        v20 = v15;
        v21 = sub_258F0A350();
        v22 = sub_258F0A810();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v129[0] = v24;
          *v23 = 136315138;
          *(v23 + 4) = sub_258DE3018(0x7465737341524941, 0xEE00737574617453, v129);
          _os_log_impl(&dword_258DD8000, v21, v22, "%s: current date data NOT included for aggregation.", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          MEMORY[0x259C9EF40](v24, -1, -1);
          MEMORY[0x259C9EF40](v23, -1, -1);
        }

        v25 = v0[7];
        sub_258F0A050();
        v26 = v20;

        v27 = sub_258F0A010();
        v28 = sub_258F0A040();

        type metadata accessor for BiomeResultsWrapper();
        inited = swift_initStackObject();
        *(inited + 16) = v28;
        v30 = MEMORY[0x259C9E880]();
        sub_258DE0F50(inited, v25, v0 + 5, v129);
        v122 = v26;
        objc_autoreleasePoolPop(v30);
        v32 = sub_258DE1084(v129[0], v14);

        v33 = *(v32 + 16);
        v34 = v32 - 744;
        v35 = v33 + 1;
        while (--v35)
        {
          v36 = *(v34 + 800);
          v34 += 792;
          if (v36)
          {
            swift_bridgeObjectRetain_n();
            sub_258F09A30();
            swift_bridgeObjectRelease_n();
            goto LABEL_18;
          }
        }

        v37 = v0[12];
        v38 = sub_258F09A70();
        (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
LABEL_18:
        v39 = v0[11];
        v127 = v0[12];
        v40 = v0[10];
        v41 = v0[7];
        v42 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_oddId;
        v43 = sub_258F09A70();
        v44 = *(v43 - 8);
        (*(v44 + 16))(v39, v41 + v42, v43);
        v45 = *(v44 + 56);
        v45(v39, 0, 1, v43);
        sub_258DE20C0(v127, v39 + v40[5], &qword_27F988730, &unk_258F0F8E0);
        v45(v39 + v40[6], 1, 1, v43);
        v46 = v39 + v40[7];
        *v46 = 0;
        *(v46 + 8) = 1;
        *(v39 + v40[8]) = 0;
        v47 = v39 + v40[9];
        *v47 = 0;
        *(v47 + 8) = 1;
        v48 = v39 + v40[10];
        *v48 = 0;
        *(v48 + 8) = 1;
        v49 = v39 + v40[11];
        *v49 = 0;
        *(v49 + 4) = 1;
        *(v39 + v40[12]) = 2;
        if (v33)
        {
          v50 = v0[11];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988748, &qword_258F0B858);
          v51 = (type metadata accessor for CombinedAIRAssetStatusData(0) - 8);
          v52 = (*(*v51 + 80) + 32) & ~*(*v51 + 80);
          v53 = swift_allocObject();
          *(v53 + 16) = xmmword_258F0B820;
          v128 = v53;
          v54 = (v53 + v52);
          sub_258DDE438(v50, v54 + v51[7]);
          *v54 = v32;
        }

        else
        {
          v128 = MEMORY[0x277D84F90];
        }

        v55 = 0;
        v56 = MEMORY[0x277D84F90];
LABEL_22:
        v57 = (v32 + 40 + 792 * v55);
        while (v33 != v55)
        {
          if (v55 >= *(v32 + 16))
          {
            __break(1u);
            goto LABEL_54;
          }

          v58 = v57 + 792;
          ++v55;
          v59 = *v57;
          v57 += 792;
          if ((v59 & 1) == 0)
          {
            v60 = *(v58 - 100);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = sub_258DE1FBC(0, *(v56 + 2) + 1, 1, v56);
            }

            v62 = *(v56 + 2);
            v61 = *(v56 + 3);
            if (v62 >= v61 >> 1)
            {
              v56 = sub_258DE1FBC((v61 > 1), v62 + 1, 1, v56);
            }

            *(v56 + 2) = v62 + 1;
            *&v56[8 * v62 + 32] = v60;
            goto LABEL_22;
          }
        }

        v63 = *(v56 + 2);
        if (!v63)
        {

          v67 = 1;
LABEL_44:
          v78 = v0[13];
          v79 = v0[14];
          v81 = v0[8];
          v80 = v0[9];
          (*(v79 + 56))(v80, v67, 1, v78);
          sub_258DE20C0(v80, v81, &qword_27F988728, &unk_258F0B840);
          if ((*(v79 + 48))(v81, 1, v78) == 1)
          {
            sub_258DE2184(v0[8], &qword_27F988728, &unk_258F0B840);
            v82 = sub_258F0A350();
            v83 = sub_258F0A800();
            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              *v84 = 0;
              _os_log_impl(&dword_258DD8000, v82, v83, "No valid AIR event timestamps for bookmark update. Bookmark is not updated.", v84, 2u);
              MEMORY[0x259C9EF40](v84, -1, -1);
            }

            v124 = MEMORY[0x277D84F90];
            v85 = v82;
            v86 = v122;
          }

          else
          {
            v87 = v0[17];
            v88 = v0[18];
            v90 = v0[15];
            v89 = v0[16];
            v92 = v0[13];
            v91 = v0[14];
            (*(v91 + 32))(v88, v0[8], v92);
            sub_258F099E0();
            sub_258F099D0();
            v93 = *(v91 + 16);
            v93(v89, v87, v92);
            v93(v90, v88, v92);
            v94 = sub_258F0A350();
            v95 = sub_258F0A800();
            v96 = os_log_type_enabled(v94, v95);
            v98 = v0[15];
            v97 = v0[16];
            v100 = v0[13];
            v99 = v0[14];
            if (v96)
            {
              v123 = v0[15];
              v101 = swift_slowAlloc();
              v125 = swift_slowAlloc();
              v129[0] = v125;
              *v101 = 136315394;
              sub_258DE35A8(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
              v121 = v95;
              v102 = sub_258F0AD60();
              v104 = v103;
              v105 = *(v99 + 8);
              v105(v97, v100);
              v106 = sub_258DE3018(v102, v104, v129);

              *(v101 + 4) = v106;
              *(v101 + 12) = 2080;
              v107 = sub_258F0AD60();
              v109 = v108;
              v105(v123, v100);
              v110 = sub_258DE3018(v107, v109, v129);

              *(v101 + 14) = v110;
              _os_log_impl(&dword_258DD8000, v94, v121, "AIR staged bookmark endTime (exclusive): %s from lastEvent=%s", v101, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x259C9EF40](v125, -1, -1);
              MEMORY[0x259C9EF40](v101, -1, -1);
            }

            else
            {

              v105 = *(v99 + 8);
              v105(v98, v100);
              v105(v97, v100);
            }

            v112 = v0[17];
            v111 = v0[18];
            v113 = v0[13];
            v124 = sub_258F09B70();
            v105(v112, v113);
            v105(v111, v113);
            v85 = v126;
            v86 = v122;
          }

          v114 = v0[19];
          v115 = v0[13];
          v116 = v0[14];
          v117 = v0[11];
          v118 = v0[12];
          v119 = v0[9];
          v120 = v0[6];

          sub_258DE2184(v119, &qword_27F988728, &unk_258F0B840);
          sub_258DE2128(v117);
          sub_258DE2184(v118, &qword_27F988730, &unk_258F0F8E0);
          (*(v116 + 8))(v114, v115);
          *v120 = v124;
          v120[1] = MEMORY[0x277D84F90];
          v120[2] = v128;

          v31 = v0[1];
          goto LABEL_11;
        }

        v64 = *(v56 + 4);
        v65 = v63 - 1;
        if (v63 != 1)
        {
          if (v63 < 5)
          {
            v66 = 1;
            goto LABEL_39;
          }

          v66 = v65 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v68 = vdupq_n_s64(v64);
          v69 = (v56 + 56);
          v70 = v65 & 0xFFFFFFFFFFFFFFFCLL;
          v71 = v68;
          do
          {
            v68 = vbslq_s8(vcgtq_u64(v68, v69[-1]), v68, v69[-1]);
            v71 = vbslq_s8(vcgtq_u64(v71, *v69), v71, *v69);
            v69 += 2;
            v70 -= 4;
          }

          while (v70);
          v72 = vbslq_s8(vcgtq_u64(v68, v71), v68, v71);
          v73 = vextq_s8(v72, v72, 8uLL).u64[0];
          v64 = vbsl_s8(vcgtd_u64(v72.u64[0], v73), *v72.i8, v73);
          if (v65 != (v65 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_39:
            v74 = v63 - v66;
            v75 = &v56[8 * v66 + 32];
            do
            {
              v77 = *v75++;
              v76 = v77;
              if (v64 <= v77)
              {
                v64 = v76;
              }

              --v74;
            }

            while (v74);
          }
        }

        sub_258F099D0();
        v67 = 0;
        goto LABEL_44;
      }

LABEL_56:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_56;
  }

  sub_258DE1858();
  swift_allocError();
  *v11 = 9;
  swift_willThrow();

  v31 = v0[1];
LABEL_11:

  v31();
}

uint64_t sub_258DDFD68(uint64_t *a1, uint64_t a2)
{
  v44 = a2;
  v4 = sub_258F0A540();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v41 - v13;
  v15 = *a1;
  v45 = v2;
  sub_258DE20C0(v2 + v15, &v41 - v13, &qword_27F988720, &qword_258F0B830);
  v16 = sub_258F098D0();
  v17 = *(v16 - 8);
  v18 = v17 + 48;
  v19 = *(v17 + 48);
  LODWORD(a1) = v19(v14, 1, v16);
  sub_258DE2184(v14, &qword_27F988720, &qword_258F0B830);
  if (a1 == 1)
  {
    sub_258DE403C();
    swift_allocError();
    *v20 = 9;
    swift_willThrow();
    return v18;
  }

  sub_258DE20C0(v45 + v15, v11, &qword_27F988720, &qword_258F0B830);
  result = v19(v11, 1, v16);
  if (result != 1)
  {
    v18 = v42;
    sub_258F0A530();
    v22 = v43;
    v23 = sub_258F0A4C0();
    if (v22)
    {
      (*(v17 + 8))(v11, v16);

      v25 = sub_258F0A350();
      v26 = sub_258F0A820();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v47 = v28;
        *v27 = 136315138;
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888C0, &unk_258F0FA30);
        v29 = sub_258F0A550();
        v31 = sub_258DE3018(v29, v30, &v47);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_258DD8000, v25, v26, "#%s: SQL file could not be loaded", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x259C9EF40](v28, -1, -1);
        MEMORY[0x259C9EF40](v27, -1, -1);
      }

      sub_258DE403C();
      swift_allocError();
      *v32 = 10;
      swift_willThrow();
    }

    else
    {
      v18 = v23;
      v33 = v24;
      (*(v17 + 8))(v11, v16);

      v34 = sub_258F0A350();
      v35 = sub_258F0A810();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v47 = v37;
        *v36 = 136315394;
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888C0, &unk_258F0FA30);
        v38 = sub_258F0A550();
        v40 = sub_258DE3018(v38, v39, &v47);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_258DE3018(v18, v33, &v47);
        _os_log_impl(&dword_258DD8000, v34, v35, "#%s: SQL: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v37, -1, -1);
        MEMORY[0x259C9EF40](v36, -1, -1);
      }
    }

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_258DE04C8()
{
  __swift_project_boxed_opaque_existential_1((v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 24));
  result = sub_258F09BD0();
  if (v1)
  {
    v3 = result;
    v4 = sub_258F0A350();
    v5 = sub_258F0A800();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_258DD8000, v4, v5, "No bookmark found for the extension", v6, 2u);
      MEMORY[0x259C9EF40](v6, -1, -1);
    }

    sub_258DE403C();
    swift_allocError();
    *v7 = 8;
    swift_willThrow();

    return v3;
  }

  return result;
}

uint64_t sub_258DE06EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + *a1), *(v1 + *a1 + 24));
  result = sub_258F09BD0();
  if (v2)
  {
    v4 = result;
    v5 = sub_258F0A350();
    v6 = sub_258F0A800();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_258DD8000, v5, v6, "No bookmark found for the extension", v7, 2u);
      MEMORY[0x259C9EF40](v7, -1, -1);
    }

    sub_258DE403C();
    swift_allocError();
    *v8 = 8;
    swift_willThrow();

    return v4;
  }

  return result;
}

id sub_258DE0804(void *a1)
{
  v2 = v1;
  v75 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v63[-v5];
  v7 = sub_258F09A20();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v63[-v15];
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v63[-v19];
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v63[-v23];
  MEMORY[0x28223BE20](v22, v25);
  v74 = &v63[-v26];
  v27 = *(v1 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_defaults);
  v28 = sub_258F0A4E0();
  LODWORD(v27) = [v27 BOOLForKey_];

  if (v27)
  {
    v72 = v6;
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService), *(v2 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService + 24));
    sub_258F09BF0();
    v29 = v74;
    sub_258F09910();
    sub_258F09B50();
    sub_258F09930();
    v30 = *(v8 + 8);
    v73 = v8 + 8;
    v30(v20, v7);
    v31 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger;
    v71 = v8;
    v32 = *(v8 + 16);
    v32(v16, v29, v7);
    v32(v12, v24, v7);
    v69 = v31;
    v70 = v2;
    v33 = sub_258F0A350();
    v34 = sub_258F0A800();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v67 = v32;
      v36 = v35;
      v66 = swift_slowAlloc();
      v77[0] = v66;
      *v36 = 136315394;
      sub_258DE35A8(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v68 = v24;
      v65 = v33;
      v37 = sub_258F0AD60();
      v64 = v34;
      v39 = v38;
      v30(v16, v7);
      v40 = sub_258DE3018(v37, v39, v77);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v41 = sub_258F0AD60();
      v43 = v42;
      v30(v12, v7);
      v44 = sub_258DE3018(v41, v43, v77);
      v24 = v68;

      *(v36 + 14) = v44;
      v45 = v65;
      _os_log_impl(&dword_258DD8000, v65, v64, "AIR IncludeCurrentDate override ON. existing BookmarkStart=%s, overrideStart=%s", v36, 0x16u);
      v46 = v66;
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v46, -1, -1);
      v47 = v36;
      v32 = v67;
      MEMORY[0x259C9EF40](v47, -1, -1);
    }

    else
    {

      v30(v12, v7);
      v30(v16, v7);
    }

    [v75 copy];
    sub_258F0A9C0();
    swift_unknownObjectRelease();
    sub_258F0A140();
    v48 = swift_dynamicCast();
    v49 = v71;
    v50 = v72;
    if (v48)
    {
      v51 = v76;
      v32(v72, v24, v7);
      (*(v49 + 56))(v50, 0, 1, v7);
      v52 = sub_258F0A110();
      sub_258DE2184(v50, &qword_27F988728, &unk_258F0B840);
      if (v52)
      {
        v30(v24, v7);
        v30(v74, v7);
        return v51;
      }

      v58 = sub_258F0A350();
      v59 = sub_258F0A820();
      if (os_log_type_enabled(v58, v59))
      {
        v56 = v24;
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_258DD8000, v58, v59, "AIR IncludeCurrentDate override: failed to apply override start to existing bookmark", v60, 2u);
        MEMORY[0x259C9EF40](v60, -1, -1);

        goto LABEL_12;
      }
    }

    else
    {
      v54 = sub_258F0A350();
      v55 = sub_258F0A820();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = v24;
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_258DD8000, v54, v55, "AIR IncludeCurrentDate override: failed to copy bookmark for override", v57, 2u);
        MEMORY[0x259C9EF40](v57, -1, -1);

LABEL_12:
        v61 = v56;
LABEL_16:
        v30(v61, v7);
        v30(v74, v7);
        goto LABEL_17;
      }
    }

    v61 = v24;
    goto LABEL_16;
  }

LABEL_17:
  v62 = v75;

  return v62;
}

uint64_t sub_258DE0EF8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v3 = a1();
  v5 = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
  a2[3] = result;
  *a2 = v3;
  a2[1] = v5;
  return result;
}

void sub_258DE0F50(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v8 = sub_258DE41F4(*(a1 + 16), a2 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger);
  sub_258DFCCF8(a1, 0);
  if (v4)
  {

    *a3 = v4;
  }

  else
  {

    v9 = sub_258F0A350();
    v10 = sub_258F0A810();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(v8 + 2);

      _os_log_impl(&dword_258DD8000, v9, v10, "AIRAssetStatusCalculator query yielded %ld rows", v11, 0xCu);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    else
    {
    }

    *a4 = v8;
  }
}

uint64_t sub_258DE1084(_BYTE *a1, unint64_t a2)
{
  v88 = sub_258F09A20();
  v86 = *(v88 - 8);
  v5 = MEMORY[0x28223BE20](v88, v4);
  v7 = &v78[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v90 = &v78[-v9];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v11 = MEMORY[0x28223BE20](v84, v10);
  v83 = &v78[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v78[-v15];
  result = MEMORY[0x28223BE20](v14, v17);
  v89 = &v78[-v19];
  v20 = *(a1 + 2);
  v87 = a1;
  if (v20)
  {
    v21 = 0;
    v22 = a1 + 32;
    v23 = MEMORY[0x277D84F90];
    while (2)
    {
      v24 = v23;
      v25 = &v22[792 * v21];
      v26 = v21;
      while (1)
      {
        if (v26 >= v20)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          return result;
        }

        result = memcpy(v92, v25, 0x311uLL);
        v21 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_48;
        }

        if ((v92[1] & 1) == 0 && v92[0] > a2)
        {
          break;
        }

        ++v26;
        v25 += 792;
        if (v21 == v20)
        {
          v23 = v24;
          goto LABEL_17;
        }
      }

      sub_258DE40EC(v92, v91);
      v23 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_258E14B68(0, *(v24 + 16) + 1, 1);
        v23 = v93;
      }

      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_258E14B68((v28 > 1), v29 + 1, 1);
        v23 = v93;
      }

      *(v23 + 16) = v29 + 1;
      result = memcpy((v23 + 792 * v29 + 32), v92, 0x311uLL);
      if (v21 != v20)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

LABEL_17:
  if (v20 != *(v23 + 16))
  {
    v80 = v20 - *(v23 + 16);
    v82 = v23;
    v30 = 0;
    v31 = (v87 + 40);
    v32 = MEMORY[0x277D84F90];
LABEL_19:
    v33 = (v31 + 792 * v30);
    while (v20 != v30)
    {
      if (v30 >= v20)
      {
        goto LABEL_49;
      }

      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_50;
      }

      v35 = *v33;
      ++v30;
      v33 += 792;
      if ((v35 & 1) == 0)
      {
        v87 = v31;
        v36 = *(v33 - 100);
        result = swift_isUniquelyReferenced_nonNull_native();
        v37 = v7;
        if ((result & 1) == 0)
        {
          result = sub_258DE1FBC(0, *(v32 + 16) + 1, 1, v32);
          v32 = result;
        }

        v39 = *(v32 + 16);
        v38 = *(v32 + 24);
        if (v39 >= v38 >> 1)
        {
          result = sub_258DE1FBC((v38 > 1), v39 + 1, 1, v32);
          v32 = result;
        }

        *(v32 + 16) = v39 + 1;
        *(v32 + 8 * v39 + 32) = v36;
        v30 = v34;
        v7 = v37;
        v31 = v87;
        goto LABEL_19;
      }
    }

    v81 = v7;
    v87 = v16;
    v40 = *(v32 + 16);
    v42 = v89;
    v41 = v90;
    if (!v40)
    {

      v43 = 0;
      v48 = 1;
      v45 = v88;
      v46 = v86;
LABEL_42:
      (*(v46 + 56))(v42, v48, 1, v45);
      sub_258F099D0();
      v59 = v81;
      (*(v46 + 16))(v81, v41, v45);
      sub_258DE20C0(v42, v87, &qword_27F988728, &unk_258F0B840);
      v60 = sub_258F0A350();
      v61 = sub_258F0A800();
      if (os_log_type_enabled(v60, v61))
      {
        v79 = v40 == 0;
        v62 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v91[0] = v86;
        *v62 = 134219010;
        *(v62 + 4) = v80;
        *(v62 + 12) = 2048;
        *(v62 + 14) = a2;
        *(v62 + 22) = 2080;
        sub_258DE35A8(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        LODWORD(v85) = v61;
        v63 = sub_258F0AD60();
        v65 = v64;
        v66 = *(v46 + 8);
        v66(v59, v45);
        v67 = sub_258DE3018(v63, v65, v91);

        *(v62 + 24) = v67;
        *(v62 + 32) = 2080;
        v92[0] = v43;
        LOBYTE(v92[1]) = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988948, &unk_258F0C0F0);
        v68 = sub_258F0A550();
        v70 = sub_258DE3018(v68, v69, v91);

        *(v62 + 34) = v70;
        *(v62 + 42) = 2080;
        v71 = v87;
        sub_258DE20C0(v87, v83, &qword_27F988728, &unk_258F0B840);
        v72 = sub_258F0A550();
        v74 = v73;
        sub_258DE2184(v71, &qword_27F988728, &unk_258F0B840);
        v75 = sub_258DE3018(v72, v74, v91);

        *(v62 + 44) = v75;
        _os_log_impl(&dword_258DD8000, v60, v85, "AIR guard filtered=%ld behind bookmark; savedStart ms=%llu time=%s, minReturned ms=%s time=%s", v62, 0x34u);
        v76 = v86;
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v76, -1, -1);
        MEMORY[0x259C9EF40](v62, -1, -1);

        v66(v90, v88);
      }

      else
      {

        sub_258DE2184(v87, &qword_27F988728, &unk_258F0B840);
        v77 = *(v46 + 8);
        v77(v59, v45);
        v77(v90, v45);
      }

      sub_258DE2184(v89, &qword_27F988728, &unk_258F0B840);
      return v82;
    }

    v43 = *(v32 + 32);
    v44 = v40 - 1;
    v45 = v88;
    v46 = v86;
    if (v40 != 1)
    {
      if (v40 < 5)
      {
        v47 = 1;
        goto LABEL_37;
      }

      v47 = v44 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v49 = vdupq_n_s64(v43);
      v50 = (v32 + 56);
      v51 = v44 & 0xFFFFFFFFFFFFFFFCLL;
      v52 = v49;
      do
      {
        v49 = vbslq_s8(vcgtq_u64(v49, v50[-1]), v50[-1], v49);
        v52 = vbslq_s8(vcgtq_u64(v52, *v50), *v50, v52);
        v50 += 2;
        v51 -= 4;
      }

      while (v51);
      v53 = vbslq_s8(vcgtq_u64(v52, v49), v49, v52);
      v54 = vextq_s8(v53, v53, 8uLL).u64[0];
      v43 = vbsl_s8(vcgtd_u64(v54, v53.u64[0]), *v53.i8, v54);
      if (v44 != (v44 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_37:
        v55 = v40 - v47;
        v56 = (v32 + 8 * v47 + 32);
        do
        {
          v58 = *v56++;
          v57 = v58;
          if (v58 < v43)
          {
            v43 = v57;
          }

          --v55;
        }

        while (v55);
      }
    }

    sub_258F099D0();
    v48 = 0;
    goto LABEL_42;
  }

  return v23;
}

unint64_t sub_258DE1858()
{
  result = qword_27F988738;
  if (!qword_27F988738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988738);
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

uint64_t sub_258DE18F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(v1 + 16))();
  v5 = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
  a1[3] = result;
  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t AIRAssetStatusCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_analyticsEventSubmitter));
  v3 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_oddId;
  v6 = sub_258F09A70();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t AIRAssetStatusCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_analyticsEventSubmitter));
  v3 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_oddId;
  v6 = sub_258F09A70();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_258DE1CA0@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_258DE1D28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258DDEBD4(a1);
}

uint64_t sub_258DE1DC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_258DE1EB8()
{
  sub_258F0AE40();
  sub_258F0AE70();
  return sub_258F0AE90();
}

uint64_t sub_258DE1F2C(uint64_t a1)
{
  sub_258F0AE40();
  sub_258F0AE70();
  return sub_258F0AE90();
}

uint64_t sub_258DE1F70(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_258DE1FBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988940, &qword_258F0C0E8);
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

uint64_t sub_258DE20C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258DE2128(uint64_t a1)
{
  v2 = type metadata accessor for EventMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258DE2184(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_258DE21E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988950, &qword_258F0DC10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 792);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[792 * v8])
    {
      memmove(v12, v13, 792 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258DE2348(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988930, &unk_258F0DBF0);
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

char *sub_258DE2460(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
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

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_258DE255C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988880, &unk_258F0C030);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988888, &unk_258F0DC00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258DE26F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988918, &qword_258F0C0C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258DE2864(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988908, &qword_258F0C0B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_258DE2990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888D0, &qword_258F0DBA0);
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

char *sub_258DE2AC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888F8, &qword_258F0C0A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 272);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[272 * v8])
    {
      memmove(v12, v13, 272 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_258DE2C0C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988890, &unk_258F0C040);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988898, &qword_258F14EF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_258DE2DB8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_258DE2FBC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_258DE3018(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_258DE3018(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_258DE30E4(v11, 0, 0, 1, a1, a2);
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
    sub_258DE4090(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_258DE30E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_258DE31F0(a5, a6);
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
    result = sub_258F0AB10();
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

void *sub_258DE31F0(uint64_t a1, unint64_t a2)
{
  v3 = sub_258DE323C(a1, a2);
  sub_258DE336C(&unk_286A27CE8);
  return v3;
}

void *sub_258DE323C(uint64_t a1, unint64_t a2)
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

  v6 = sub_258EAEF54(v5, 0);
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

  result = sub_258F0AB10();
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
        v10 = sub_258F0A600();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_258EAEF54(v10, 0);
        result = sub_258F0AAC0();
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

uint64_t sub_258DE336C(uint64_t result)
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

  result = sub_258DE3458(result, v11, 1, v3);
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

char *sub_258DE3458(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988938, &qword_258F0C0E0);
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

_BYTE **sub_258DE354C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_258DE35A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258DE35F0()
{
  result = qword_27F988760;
  if (!qword_27F988760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988760);
  }

  return result;
}

uint64_t sub_258DE3644(uint64_t a1)
{
  result = sub_258DE35A8(&qword_27F988768, type metadata accessor for AIRAssetStatusCalculator, &unk_258F0B8D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258DE369C(uint64_t a1)
{
  result = sub_258DE35A8(&qword_27F988770, type metadata accessor for AIRAssetStatusCalculator, &protocol conformance descriptor for AIRAssetStatusCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258DE36F4()
{
  result = qword_27F988778;
  if (!qword_27F988778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988778);
  }

  return result;
}

void sub_258DE3770(uint64_t a1)
{
  sub_258DE4170(319, &qword_27F988790, &type metadata for AIRAssetStatusData, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EventMetadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_258DE382C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_258DE3874(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_258DE38CC(uint64_t a1)
{
  sub_258F0A370();
  if (v1 <= 0x3F)
  {
    sub_258DE3B74(319);
    if (v2 <= 0x3F)
    {
      sub_258F09B00();
      if (v3 <= 0x3F)
      {
        sub_258F09A70();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of AIRAssetStatusCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

void sub_258DE3B74(uint64_t a1)
{
  if (!qword_27F9887A8)
  {
    sub_258F098D0();
    v1 = sub_258F0A920();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9887A8);
    }
  }
}

uint64_t sub_258DE3FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_258DE403C()
{
  result = qword_27F9888B8;
  if (!qword_27F9888B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9888B8);
  }

  return result;
}

uint64_t sub_258DE4090(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_258DE4170(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

char *sub_258DE41F4(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v46 = sub_258F0A370();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v4);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_258F0A070() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v43 = (v3 + 16);
  v48 = MEMORY[0x277D84F90];
  v44 = a1;
  while (2)
  {
    v10 = sub_258F0A060();
    if (!v10)
    {
      goto LABEL_5;
    }

    v11 = v10;
    v49 = 0;
    v12 = sub_258DFBCE0(MEMORY[0x277D84F90]);
    v13 = 0;
    v14 = v11 + 64;
    v15 = 1 << *(v11 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v11 + 64);
    v18 = (v15 + 63) >> 6;
    v50 = v11;
    v51 = v11 + 64;
    if (!v17)
    {
LABEL_14:
      if (v18 <= v13 + 1)
      {
        v20 = v13 + 1;
      }

      else
      {
        v20 = v18;
      }

      v21 = v20 - 1;
      while (1)
      {
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v19 >= v18)
        {
          v17 = 0;
          v13 = v21;
          memset(v52, 0, 72);
          goto LABEL_23;
        }

        v17 = *(v14 + 8 * v19);
        ++v13;
        if (v17)
        {
          v13 = v19;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      result = sub_258F0ADC0();
      __break(1u);
      return result;
    }

    while (1)
    {
      v19 = v13;
LABEL_22:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = v22 | (v19 << 6);
      sub_258DEB85C(*(v11 + 48) + 40 * v23, v55);
      sub_258DE4090(*(v11 + 56) + 32 * v23, v54);
      v52[0] = v55[0];
      v52[1] = v55[1];
      *&v52[2] = v56;
      sub_258DEB8B8(v54, (&v52[2] + 8));
      v14 = v51;
LABEL_23:
      *&v53[32] = v52[2];
      *&v53[48] = v52[3];
      *&v53[64] = *&v52[4];
      *v53 = v52[0];
      *&v53[16] = v52[1];
      if (!*(&v52[1] + 1))
      {
        break;
      }

      sub_258DEB8B8(&v53[40], v55);
      v52[0] = *v53;
      v52[1] = *&v53[16];
      *&v52[2] = *&v53[32];
      if (swift_dynamicCast())
      {
        v24 = v54[0];
        sub_258DE4090(v55, v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v54[0] = v12;
        v27 = sub_258E2E9B4(v24, *(&v24 + 1));
        v28 = v12[2];
        v29 = (v26 & 1) == 0;
        v30 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          goto LABEL_47;
        }

        v31 = v26;
        if (v12[3] >= v30)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v11 = v50;
            if ((v26 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else
          {
            sub_258ED833C();
            v11 = v50;
            if ((v31 & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          sub_258ED4EAC(v30, isUniquelyReferenced_nonNull_native);
          v32 = sub_258E2E9B4(v24, *(&v24 + 1));
          if ((v31 & 1) != (v33 & 1))
          {
            goto LABEL_49;
          }

          v27 = v32;
          v11 = v50;
          if ((v31 & 1) == 0)
          {
LABEL_35:
            v12 = *&v54[0];
            *(*&v54[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
            *(v12[6] + 16 * v27) = v24;
            sub_258DEB8B8(v52, (v12[7] + 32 * v27));
            __swift_destroy_boxed_opaque_existential_1Tm(v55);
            v35 = v12[2];
            v36 = __OFADD__(v35, 1);
            v37 = v35 + 1;
            if (v36)
            {
              goto LABEL_48;
            }

            v12[2] = v37;
            goto LABEL_37;
          }
        }

        v12 = *&v54[0];
        v34 = (*(*&v54[0] + 56) + 32 * v27);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        sub_258DEB8B8(v52, v34);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
LABEL_37:
        v14 = v51;
        if (!v17)
        {
          goto LABEL_14;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        if (!v17)
        {
          goto LABEL_14;
        }
      }
    }

    v6 = v45;
    (*v43)(v45, v47, v46);
    v7 = v6;
    v8 = v49;
    sub_258DE7A54(v12, v7, v53);
    if (v8)
    {

      sub_258F0A820();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v9 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      memcpy(v52, v53, 0x311uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_258DE21E4(0, *(v48 + 2) + 1, 1, v48);
      }

      v39 = *(v48 + 2);
      v38 = *(v48 + 3);
      if (v39 >= v38 >> 1)
      {
        v48 = sub_258DE21E4((v38 > 1), v39 + 1, 1, v48);
      }

      v40 = v48;
      *(v48 + 2) = v39 + 1;
      memcpy(&v40[792 * v39 + 32], v52, 0x311uLL);
    }

LABEL_5:
    if (sub_258F0A070())
    {
      continue;
    }

    return v48;
  }
}

unint64_t sub_258DE4740(char a1)
{
  result = 0x757461745377656ELL;
  switch(a1)
  {
    case 1:
      result = 0x7461745376657270;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 3:
      result = 0xD000000000000028;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000029;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD00000000000002DLL;
      break;
    case 8:
    case 9:
      result = 0xD000000000000024;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000034;
      break;
    case 14:
      result = 0xD00000000000002CLL;
      break;
    case 15:
      result = 0x4965736143657375;
      break;
    case 16:
      result = 0x4D746E6572727563;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_258DE49B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258DE8634(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_258DE49E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_258DE4740(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_258DE4A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258DE8634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258DE4A64(uint64_t a1)
{
  v2 = sub_258DEB6E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258DE4AA0(uint64_t a1)
{
  v2 = sub_258DEB6E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258DE4ADC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9889D8, &qword_258F0C6A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258DEB6E4();
  sub_258F0AEE0();
  v16 = 0;
  sub_258F0ACF0();
  if (!v2)
  {
    v16 = 1;
    sub_258F0ACF0();
    v16 = 2;
    sub_258F0ACC0();
    v16 = 3;
    sub_258F0ACC0();
    v16 = 4;
    sub_258F0ACB0();
    v16 = 5;
    sub_258F0ACB0();
    v16 = 6;
    sub_258F0ACB0();
    v16 = 7;
    sub_258F0ACC0();
    v16 = 8;
    sub_258F0ACC0();
    v16 = 9;
    sub_258F0ACC0();
    v16 = 10;
    sub_258F0ACC0();
    v10 = v3[128];
    v16 = 11;
    v15 = v10;
    sub_258F0ACE0();
    v11 = v3[136];
    v16 = 12;
    v15 = v11;
    sub_258F0ACE0();
    v12 = v3[144];
    v16 = 13;
    v15 = v12;
    sub_258F0ACE0();
    v16 = 14;
    sub_258F0ACC0();
    v16 = 15;
    sub_258F0ACA0();
    v16 = 16;
    sub_258F0ACA0();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_258DE4EC8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_258DE8688(a2, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v11;
    v6 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v6;
    v7 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v7;
    v8 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v8;
    v9 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v9;
    result = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_258DE4F64(char a1)
{
  result = 0x737574617473;
  switch(a1)
  {
    case 1:
      result = 0x64616F6C6E776F64;
      break;
    case 2:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD000000000000030;
      break;
    case 4:
      result = 0xD00000000000002ELL;
      break;
    case 5:
      result = 0xD000000000000027;
      break;
    case 6:
      result = 0xD000000000000029;
      break;
    case 7:
      result = 0x756F43726F727265;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
    case 12:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0x656C61636F6CLL;
      break;
    case 16:
      result = 0xD00000000000002DLL;
      break;
    case 17:
      result = 0xD00000000000002CLL;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0x555350746E756F63;
      break;
    case 20:
      result = 0xD000000000000013;
      break;
    case 21:
      result = 0x4965736143657375;
      break;
    case 22:
      result = 0xD000000000000024;
      break;
    case 23:
      result = 0xD00000000000001ELL;
      break;
    case 24:
      result = 0x6174537964647562;
      break;
    case 25:
    case 26:
      result = 0xD000000000000021;
      break;
    case 27:
      result = 0xD000000000000031;
      break;
    case 28:
      result = 0xD000000000000033;
      break;
    case 29:
      result = 0x4D746E6572727563;
      break;
    case 30:
      result = 0xD000000000000011;
      break;
    case 31:
      result = 0xD00000000000001ALL;
      break;
    case 32:
      result = 0xD000000000000034;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258DE533C()
{
  v1 = *v0;
  sub_258F0AE40();
  MEMORY[0x259C9E710](v1);
  return sub_258F0AE90();
}

uint64_t sub_258DE5384(uint64_t a1)
{
  v2 = *v1;
  sub_258F0AE40();
  MEMORY[0x259C9E710](v2);
  return sub_258F0AE90();
}

uint64_t sub_258DE53C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9889E8, &qword_258F0C6B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258DEB738();
  sub_258F0AEE0();
  v21 = 0;
  sub_258F0ACF0();
  if (!v2)
  {
    v21 = 1;
    sub_258F0ACA0();
    v21 = 2;
    sub_258F0ACA0();
    v21 = 3;
    sub_258F0ACC0();
    v21 = 4;
    sub_258F0ACC0();
    v10 = v3[80];
    v21 = 5;
    v20 = v10;
    sub_258F0ACE0();
    v21 = 6;
    sub_258F0ACA0();
    v11 = v3[108];
    v21 = 7;
    v20 = v11;
    sub_258F0ACE0();
    v21 = 8;
    sub_258F0ACA0();
    v21 = 9;
    sub_258F0ACA0();
    v12 = v3[148];
    v21 = 10;
    v20 = v12;
    sub_258F0ACE0();
    v21 = 11;
    sub_258F0ACA0();
    v13 = v3[172];
    v21 = 12;
    v20 = v13;
    sub_258F0ACE0();
    v14 = v3[180];
    v21 = 13;
    v20 = v14;
    sub_258F0ACE0();
    v21 = 14;
    sub_258F0ACA0();
    v21 = 15;
    sub_258F0ACA0();
    v21 = 16;
    sub_258F0ACC0();
    v21 = 17;
    sub_258F0ACC0();
    v21 = 18;
    sub_258F0ACC0();
    v21 = 19;
    sub_258F0ACF0();
    v15 = v3[280];
    v21 = 20;
    v20 = v15;
    sub_258F0ACE0();
    v21 = 21;
    sub_258F0ACA0();
    v21 = 22;
    sub_258F0ACC0();
    v21 = 23;
    sub_258F0ACC0();
    v21 = 24;
    sub_258F0ACA0();
    v21 = 25;
    sub_258F0ACA0();
    v16 = v3[372];
    v21 = 26;
    v20 = v16;
    sub_258F0ACE0();
    v17 = v3[380];
    v21 = 27;
    v20 = v17;
    sub_258F0ACE0();
    v21 = 28;
    sub_258F0ACA0();
    v21 = 29;
    sub_258F0ACA0();
    v21 = 30;
    sub_258F0ACA0();
    v21 = 31;
    sub_258F0ACA0();
    v21 = 32;
    sub_258F0ACC0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258DE5A8C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000017;
    v6 = 0xD000000000000018;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000015;
    if (a1 == 5)
    {
      v7 = 0x75706E4969726973;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x75426D6574737973;
    v2 = 0x7954656369766564;
    if (a1 != 3)
    {
      v2 = 0x436D6172676F7270;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001BLL;
    if (a1)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_258DE5C04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258DE93D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258DE5C38(uint64_t a1)
{
  v2 = sub_258DEB738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258DE5C74(uint64_t a1)
{
  v2 = sub_258DEB738();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_258DE5CB0@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_258DE9DB8(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x1C9uLL);
  }

  return result;
}

uint64_t sub_258DE5D2C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_258F0AD80();
  }

  return v12 & 1;
}

uint64_t sub_258DE5DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_258F0AE40();
  a3(v5);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258DE5E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_258F0A5B0();
}

uint64_t sub_258DE5ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_258F0AE40();
  a4(v6);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258DE5F34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258DEB698(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_258DE5F64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258DE5A8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_258DE5FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258DEB698(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258DE5FF0(uint64_t a1)
{
  v2 = sub_258DE65A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258DE602C(uint64_t a1)
{
  v2 = sub_258DE65A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AIRAssetStatusData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988968, &unk_258F0C1B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v28 - v6;
  v8 = *v1;
  v9 = v1[3];
  v28[13] = v1[2];
  v28[14] = v8;
  v10 = v1[5];
  v28[11] = v1[4];
  v28[12] = v9;
  v11 = v1[7];
  v28[9] = v1[6];
  v28[10] = v10;
  v12 = v1[8];
  v28[7] = v1[9];
  v28[8] = v11;
  v13 = v1[10];
  v28[5] = v1[11];
  v28[6] = v12;
  v14 = v1[12];
  v28[3] = v1[13];
  v28[4] = v13;
  v15 = v1[15];
  v28[0] = v1[14];
  v28[1] = v15;
  v28[2] = v14;
  v16 = *(v1 + 8);
  v17 = *(v1 + 9);
  v18 = *(v1 + 10);
  v49 = *(v1 + 11);
  v48 = v18;
  v46 = v16;
  v47 = v17;
  v19 = *(v1 + 12);
  v20 = *(v1 + 13);
  v21 = *(v1 + 14);
  v53 = *(v1 + 15);
  v52 = v21;
  v50 = v19;
  v51 = v20;
  v22 = *(v1 + 16);
  v23 = *(v1 + 17);
  v24 = *(v1 + 18);
  v25 = *(v1 + 19);
  v58 = v1[40];
  v57 = v25;
  v56 = v24;
  v54 = v22;
  v55 = v23;
  memcpy(v59, v1 + 41, 0x1C9uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258DE65A0();
  sub_258F0AEE0();
  v30[0] = 0;
  v26 = v28[15];
  sub_258F0ACF0();
  if (!v26)
  {
    v30[0] = 1;
    sub_258F0ACA0();
    v30[0] = 2;
    sub_258F0ACA0();
    v30[0] = 3;
    sub_258F0ACA0();
    v30[0] = 4;
    sub_258F0ACA0();
    v30[0] = 5;
    sub_258F0ACA0();
    v30[0] = 6;
    sub_258F0ACA0();
    v30[0] = 7;
    sub_258F0ACA0();
    v43 = v56;
    v44 = v57;
    v45 = v58;
    v39 = v52;
    v40 = v53;
    v42 = v55;
    v41 = v54;
    v35 = v48;
    v36 = v49;
    v38 = v51;
    v37 = v50;
    v34 = v47;
    v33 = v46;
    v59[487] = 8;
    sub_258DE20C0(&v46, v30, &qword_27F988978, qword_258F0CD00);
    sub_258DE65F4();
    sub_258F0ACD0();
    v31[10] = v43;
    v31[11] = v44;
    v32 = v45;
    v31[6] = v39;
    v31[7] = v40;
    v31[9] = v42;
    v31[8] = v41;
    v31[2] = v35;
    v31[3] = v36;
    v31[5] = v38;
    v31[4] = v37;
    v31[1] = v34;
    v31[0] = v33;
    sub_258DE2184(v31, &qword_27F988978, qword_258F0CD00);
    memcpy(v30, v59, 0x1C9uLL);
    v59[486] = 9;
    sub_258DE20C0(v59, v29, &qword_27F988988, &qword_258F0C1C0);
    sub_258DE6648();
    sub_258F0ACD0();
    memcpy(v29, v30, 0x1C9uLL);
    sub_258DE2184(v29, &qword_27F988988, &qword_258F0C1C0);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_258DE65A0()
{
  result = qword_27F988970;
  if (!qword_27F988970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988970);
  }

  return result;
}

unint64_t sub_258DE65F4()
{
  result = qword_27F988980;
  if (!qword_27F988980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988980);
  }

  return result;
}

unint64_t sub_258DE6648()
{
  result = qword_27F988990;
  if (!qword_27F988990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988990);
  }

  return result;
}

uint64_t AIRAssetStatusData.init(from:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988998, &qword_258F0C1C8);
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v7);
  v9 = &v40 - v8;
  v139 = 1;
  sub_258DE7154(v140);
  v134 = v140[9];
  v135 = v140[10];
  v136 = v140[11];
  v130 = v140[5];
  v131 = v140[6];
  v132 = v140[7];
  v133 = v140[8];
  v126 = v140[1];
  v127 = v140[2];
  v128 = v140[3];
  v129 = v140[4];
  v137 = v141;
  v125 = v140[0];
  sub_258DE7180(v142);
  memcpy(v124, v142, 0x1C9uLL);
  v10 = v3[3];
  v52 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v10);
  sub_258DE65A0();
  sub_258F0AED0();
  if (v2)
  {
    v143 = v2;
    v55 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v57 = 0;
    v58 = 0;
    v51 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    LOBYTE(v93) = 0;
    v11 = v50;
    v49 = sub_258F0AC40();
    v139 = v22 & 1;
    LOBYTE(v93) = 1;
    v47 = sub_258F0ABF0();
    v48 = v23;
    LOBYTE(v93) = 2;
    v45 = sub_258F0ABF0();
    v46 = v24;
    LOBYTE(v93) = 3;
    v43 = sub_258F0ABF0();
    v44 = v25;
    LOBYTE(v93) = 4;
    v42 = sub_258F0ABF0();
    v51 = v26;
    LOBYTE(v93) = 5;
    v57 = sub_258F0ABF0();
    v58 = v27;
    LOBYTE(v93) = 6;
    v54 = sub_258F0ABF0();
    v56 = v28;
    LOBYTE(v93) = 7;
    v29 = sub_258F0ABF0();
    v143 = 0;
    v53 = v29;
    v55 = v30;
    v79 = 8;
    sub_258DE7200();
    v31 = v143;
    sub_258F0AC20();
    v143 = v31;
    if (v31)
    {
      (*(v6 + 8))(v9, v11);
    }

    else
    {
      v41 = v5;
      v74 = v90;
      v75 = v91;
      v76 = v92;
      v70 = v86;
      v71 = v87;
      v72 = v88;
      v73 = v89;
      v66 = v82;
      v67 = v83;
      v68 = v84;
      v69 = v85;
      v64 = v80;
      v65 = v81;
      v77[10] = v135;
      v77[11] = v136;
      v78 = v137;
      v77[6] = v131;
      v77[7] = v132;
      v77[8] = v133;
      v77[9] = v134;
      v77[2] = v127;
      v77[3] = v128;
      v77[4] = v129;
      v77[5] = v130;
      v77[0] = v125;
      v77[1] = v126;
      sub_258DE2184(v77, &qword_27F988978, qword_258F0CD00);
      v134 = v73;
      v135 = v74;
      v136 = v75;
      v130 = v69;
      v131 = v70;
      v132 = v71;
      v133 = v72;
      v126 = v65;
      v127 = v66;
      v128 = v67;
      v129 = v68;
      v137 = v76;
      v125 = v64;
      v62 = 9;
      sub_258DE7254();
      v32 = v143;
      sub_258F0AC20();
      v143 = v32;
      if (!v32)
      {
        (*(v6 + 8))(v9, v50);
        memcpy(v59, v63, 0x1C9uLL);
        memcpy(v60, v124, 0x1C9uLL);
        sub_258DE2184(v60, &qword_27F988988, &qword_258F0C1C0);
        v33 = v48;
        *v61 = v49;
        LODWORD(v50) = v139;
        v61[8] = v139;
        v35 = v46;
        v34 = v47;
        *&v61[16] = v47;
        *&v61[24] = v48;
        v36 = v44;
        v37 = v45;
        *&v61[32] = v45;
        *&v61[40] = v46;
        v38 = v43;
        *&v61[48] = v43;
        *&v61[56] = v44;
        *&v61[64] = v42;
        v39 = v51;
        *&v61[72] = v51;
        *&v61[80] = v57;
        *&v61[88] = v58;
        *&v61[96] = v54;
        *&v61[104] = v56;
        *&v61[112] = v53;
        *&v61[120] = v55;
        *&v61[288] = v74;
        *&v61[304] = v75;
        *&v61[320] = v76;
        *&v61[224] = v70;
        *&v61[240] = v71;
        *&v61[272] = v73;
        *&v61[256] = v72;
        *&v61[160] = v66;
        *&v61[176] = v67;
        *&v61[208] = v69;
        *&v61[192] = v68;
        *&v61[144] = v65;
        *&v61[128] = v64;
        memcpy(&v61[328], v59, 0x1C9uLL);
        memcpy(v41, v61, 0x311uLL);
        sub_258DE40EC(v61, &v93);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        v93 = v49;
        v94 = v50;
        v96 = v34;
        v97 = v33;
        v98 = v37;
        v99 = v35;
        v100 = v38;
        v101 = v36;
        v102 = v42;
        v103 = v39;
        v104 = v57;
        v105 = v58;
        v106 = v54;
        v107 = v56;
        v108 = v53;
        v109 = v55;
        v113 = v67;
        v112 = v66;
        v110 = v64;
        v111 = v65;
        v117 = v71;
        v116 = v70;
        v114 = v68;
        v115 = v69;
        v122 = v76;
        v121 = v75;
        v120 = v74;
        v118 = v72;
        v119 = v73;
        v20 = v59;
        goto LABEL_5;
      }

      (*(v6 + 8))(v9, v50);
    }

    v17 = v48;
    v19 = v49;
    v15 = v46;
    v18 = v47;
    v13 = v44;
    v16 = v45;
    v12 = v42;
    v14 = v43;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  v93 = v19;
  v94 = v139;
  *v95 = *v138;
  *&v95[3] = *&v138[3];
  v96 = v18;
  v97 = v17;
  v98 = v16;
  v99 = v15;
  v100 = v14;
  v101 = v13;
  v102 = v12;
  v103 = v51;
  v104 = v57;
  v105 = v58;
  v106 = v54;
  v107 = v56;
  v108 = v53;
  v109 = v55;
  v120 = v135;
  v121 = v136;
  v122 = v137;
  v116 = v131;
  v117 = v132;
  v119 = v134;
  v118 = v133;
  v112 = v127;
  v113 = v128;
  v115 = v130;
  v114 = v129;
  v111 = v126;
  v110 = v125;
  v20 = v124;
LABEL_5:
  memcpy(v123, v20, sizeof(v123));
  return sub_258DE71D0(&v93);
}

double sub_258DE7154(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 1;
  return result;
}

double sub_258DE7180(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 441) = 0u;
  return result;
}

unint64_t sub_258DE7200()
{
  result = qword_27F9889A0;
  if (!qword_27F9889A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889A0);
  }

  return result;
}

unint64_t sub_258DE7254()
{
  result = qword_27F9889A8;
  if (!qword_27F9889A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MetricsFramework27AIRAvailabilityChangeStatusVSg(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_16MetricsFramework29AIRAvailabilityDetailedStatusVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258DE7328(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 785))
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

uint64_t sub_258DE7384(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 776) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 784) = 0;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 785) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 785) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_258DE74C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 457))
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

uint64_t sub_258DE751C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 456) = 0;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 457) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 457) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_258DE763C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 200))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 176);
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

uint64_t sub_258DE7698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 176) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AIRAssetStatusData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AIRAssetStatusData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258DE7890()
{
  result = qword_27F9889B0;
  if (!qword_27F9889B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9889B8, qword_258F0C4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889B0);
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

unint64_t sub_258DE7940()
{
  result = qword_27F9889C0;
  if (!qword_27F9889C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889C0);
  }

  return result;
}

unint64_t sub_258DE7998()
{
  result = qword_27F9889C8;
  if (!qword_27F9889C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889C8);
  }

  return result;
}

unint64_t sub_258DE79F0()
{
  result = qword_27F9889D0;
  if (!qword_27F9889D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889D0);
  }

  return result;
}

void *sub_258DE7A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v99 = a2;
  if (*(a1 + 16) && (v7 = sub_258E2E9B4(0xD00000000000001BLL, 0x8000000258F18670), (v8 & 1) != 0) && (sub_258DE4090(*(a1 + 56) + 32 * v7, __src), sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    v64 = [v79[0] unsignedLongLongValue];

    v63 = 0;
    if (!*(a1 + 16))
    {
LABEL_5:
      v61 = 0;
      v62 = 0;
LABEL_25:
      v59 = 0;
      v60 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v64 = 0;
    v63 = 1;
    if (!*(a1 + 16))
    {
      goto LABEL_5;
    }
  }

  v9 = sub_258E2E9B4(0xD000000000000013, 0x8000000258F18690);
  if (v10)
  {
    sub_258DE4090(*(a1 + 56) + 32 * v9, __src);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v79[0];
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v79[1];
    }

    else
    {
      v13 = 0;
    }

    v61 = v13;
    v62 = v12;
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v61 = 0;
    v62 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }
  }

  v14 = sub_258E2E9B4(0x75426D6574737973, 0xEB00000000646C69);
  if (v15)
  {
    sub_258DE4090(*(a1 + 56) + 32 * v14, __src);
    v16 = swift_dynamicCast();
    if (v16)
    {
      v17 = v79[0];
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = v79[1];
    }

    else
    {
      v18 = 0;
    }

    v59 = v18;
    v60 = v17;
    if (!*(a1 + 16))
    {
LABEL_26:
      v57 = 0;
      v58 = 0;
      if (*(a1 + 16))
      {
        goto LABEL_27;
      }

LABEL_55:
      v55 = 0;
      v56 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v59 = 0;
    v60 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_26;
    }
  }

  v29 = sub_258E2E9B4(0x7954656369766564, 0xEA00000000006570);
  if ((v30 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v29, __src);
  v31 = swift_dynamicCast();
  if (v31)
  {
    v32 = v79[0];
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v33 = v79[1];
  }

  else
  {
    v33 = 0;
  }

  v57 = v33;
  v58 = v32;
  if (!*(a1 + 16))
  {
    goto LABEL_55;
  }

LABEL_27:
  v19 = sub_258E2E9B4(0x436D6172676F7270, 0xEB0000000065646FLL);
  if ((v20 & 1) == 0)
  {
    v55 = 0;
    v56 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_37;
    }

LABEL_56:
    v53 = 0;
    v54 = 0;
    goto LABEL_57;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v19, __src);
  v21 = swift_dynamicCast();
  if (v21)
  {
    v22 = v79[0];
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = v79[1];
  }

  else
  {
    v23 = 0;
  }

  v55 = v23;
  v56 = v22;
  if (!*(a1 + 16))
  {
    goto LABEL_56;
  }

LABEL_37:
  v24 = sub_258E2E9B4(0x75706E4969726973, 0xEF656C61636F4C74);
  if (v25)
  {
    sub_258DE4090(*(a1 + 56) + 32 * v24, __src);
    v26 = swift_dynamicCast();
    if (v26)
    {
      v27 = v79[0];
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v79[1];
    }

    else
    {
      v28 = 0;
    }

    v53 = v28;
    v54 = v27;
    if (!*(a1 + 16))
    {
LABEL_57:
      v34 = 0;
      v35 = 0;
      if (!*(a1 + 16))
      {
        goto LABEL_74;
      }

      goto LABEL_58;
    }
  }

  else
  {
    v53 = 0;
    v54 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_57;
    }
  }

  v41 = sub_258E2E9B4(0xD000000000000015, 0x8000000258F186C0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_57;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v41, __src);
  v43 = swift_dynamicCast();
  if (v43)
  {
    v34 = v79[0];
  }

  else
  {
    v34 = 0;
  }

  if (v43)
  {
    v35 = v79[1];
  }

  else
  {
    v35 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_74;
  }

LABEL_58:
  v36 = sub_258E2E9B4(0xD000000000000017, 0x8000000258F186E0);
  if (v37)
  {
    sub_258DE4090(*(a1 + 56) + 32 * v36, v98);
    v38 = swift_dynamicCast();
    if (v38)
    {
      v39 = *&__src[0];
    }

    else
    {
      v39 = 0;
    }

    if (v38)
    {
      v40 = *(&__src[0] + 1);
    }

    else
    {
      v40 = 0;
    }

    goto LABEL_75;
  }

LABEL_74:
  v39 = 0;
  v40 = 0;
LABEL_75:
  sub_258DE7154(&v85);
  if (*(a1 + 16) && (v44 = sub_258E2E9B4(0xD000000000000018, 0x8000000258F18700), (v45 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v44, v78);
    sub_258DEB8B8(v78, v84);
    sub_258DE823C(v84);
    if (v3)
    {

      v4 = 0;
      v77 = v97;
      v75 = v95;
      v76 = v96;
      v71 = v91;
      v72 = v92;
      v73 = v93;
      v74 = v94;
      v67 = v87;
      v68 = v88;
      v69 = v89;
      v70 = v90;
      v47 = v85;
      v46 = v86;
    }

    else
    {
      *&v79[20] = __src[10];
      *&v79[22] = __src[11];
      v79[24] = *&__src[12];
      *&v79[12] = __src[6];
      *&v79[14] = __src[7];
      *&v79[16] = __src[8];
      *&v79[18] = __src[9];
      *&v79[4] = __src[2];
      *&v79[6] = __src[3];
      *&v79[8] = __src[4];
      *&v79[10] = __src[5];
      *v79 = __src[0];
      *&v79[2] = __src[1];
      nullsub_1();
      v75 = *&v79[20];
      v76 = *&v79[22];
      v77 = v79[24];
      v71 = *&v79[12];
      v72 = *&v79[14];
      v73 = *&v79[16];
      v74 = *&v79[18];
      v67 = *&v79[4];
      v68 = *&v79[6];
      v69 = *&v79[8];
      v70 = *&v79[10];
      v47 = *v79;
      v46 = *&v79[2];
    }

    v65 = v47;
    v66 = v46;
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
  }

  else
  {
    v75 = v95;
    v76 = v96;
    v77 = v97;
    v71 = v91;
    v72 = v92;
    v73 = v93;
    v74 = v94;
    v67 = v87;
    v68 = v88;
    v69 = v89;
    v70 = v90;
    v65 = v85;
    v66 = v86;
  }

  sub_258DE7180(__src);
  if (*(a1 + 16) && (v48 = sub_258E2E9B4(0xD00000000000001ALL, 0x8000000258F18720), (v49 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v48, v81);

    sub_258DEB8B8(v81, v82);
    sub_258DE8438(v82);
    if (v4)
    {

      memcpy(__dst, __src, sizeof(__dst));
    }

    else
    {
      memcpy(v78, v79, 0x1C9uLL);
      nullsub_1();
      memcpy(__dst, v78, sizeof(__dst));
    }

    v51 = sub_258F0A370();
    (*(*(v51 - 8) + 8))(v99, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
  }

  else
  {

    v50 = sub_258F0A370();
    (*(*(v50 - 8) + 8))(v99, v50);
    memcpy(__dst, __src, sizeof(__dst));
  }

  *a3 = v64;
  *(a3 + 8) = v63;
  *(a3 + 16) = v62;
  *(a3 + 24) = v61;
  *(a3 + 32) = v60;
  *(a3 + 40) = v59;
  *(a3 + 48) = v58;
  *(a3 + 56) = v57;
  *(a3 + 64) = v56;
  *(a3 + 72) = v55;
  *(a3 + 80) = v54;
  *(a3 + 88) = v53;
  *(a3 + 96) = v34;
  *(a3 + 104) = v35;
  *(a3 + 112) = v39;
  *(a3 + 120) = v40;
  *(a3 + 160) = v67;
  *(a3 + 176) = v68;
  *(a3 + 128) = v65;
  *(a3 + 144) = v66;
  *(a3 + 224) = v71;
  *(a3 + 240) = v72;
  *(a3 + 192) = v69;
  *(a3 + 208) = v70;
  *(a3 + 320) = v77;
  *(a3 + 288) = v75;
  *(a3 + 304) = v76;
  *(a3 + 256) = v73;
  *(a3 + 272) = v74;
  return memcpy((a3 + 328), __dst, 0x1C9uLL);
}

uint64_t sub_258DE823C(uint64_t a1)
{
  v2 = sub_258F0A540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258DE4090(a1, v13);
  if (swift_dynamicCast() && (sub_258F0A530(), v7 = sub_258F0A500(), v9 = v8, , (*(v3 + 8))(v6, v2), v9 >> 60 != 15))
  {
    sub_258F09840();
    swift_allocObject();
    sub_258F09830();
    sub_258DE7200();
    sub_258F09820();

    return sub_258DEB964(v7, v9);
  }

  else
  {
    sub_258DEB910();
    swift_allocError();
    strcpy(v10, "object payload");
    v10[15] = -18;
    return swift_willThrow();
  }
}

uint64_t sub_258DE8438(uint64_t a1)
{
  v2 = sub_258F0A540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258DE4090(a1, v13);
  if (swift_dynamicCast() && (sub_258F0A530(), v7 = sub_258F0A500(), v9 = v8, , (*(v3 + 8))(v6, v2), v9 >> 60 != 15))
  {
    sub_258F09840();
    swift_allocObject();
    sub_258F09830();
    sub_258DE7254();
    sub_258F09820();

    return sub_258DEB964(v7, v9);
  }

  else
  {
    sub_258DEB910();
    swift_allocError();
    strcpy(v10, "object payload");
    v10[15] = -18;
    return swift_willThrow();
  }
}

unint64_t sub_258DE8634(uint64_t a1, uint64_t a2)
{
  v2 = sub_258F0AD90();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_258DE8688@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9889F8, &qword_258F0C6B8);
  v5 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v6);
  v8 = &v36 - v7;
  v149 = 1;
  v147 = 1;
  v145 = 1;
  v143 = 1;
  v142 = 1;
  v140 = 1;
  v138 = 1;
  v136 = 1;
  v133 = 1;
  v130 = 1;
  v127 = 1;
  v125 = 1;
  v9 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_258DEB6E4();
  sub_258F0AED0();
  if (v2)
  {
    v150 = v2;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v54 = 0;
    v55 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    v79 = 0;
    v80 = v149;
    *v81 = *v148;
    *&v81[3] = *&v148[3];
    v82 = 0;
    v83 = v147;
    *v84 = *v146;
    *&v84[3] = *&v146[3];
    v85 = 0;
    v86 = v145;
    *&v87[3] = *&v144[3];
    *v87 = *v144;
    v88 = 0;
    v89 = v143;
    v90 = 2;
    v91 = 2;
    v92 = 2;
    v93 = v58;
    v94 = v142;
    *v95 = *v141;
    *&v95[3] = *&v141[3];
    v96 = v57;
    v97 = v140;
    *&v98[3] = *&v139[3];
    *v98 = *v139;
    v99 = v64;
    v100 = v138;
    *&v101[3] = *&v137[3];
    *v101 = *v137;
    v102 = v63;
    v103 = v136;
    v104 = v134;
    v105 = v135;
    v106 = v62;
    v107 = v133;
    v109 = v132;
    v108 = v131;
    v110 = v61;
    v111 = v130;
    v113 = v129;
    v112 = v128;
    v114 = v60;
    v115 = v127;
    *&v116[3] = *&v126[3];
    *v116 = *v126;
    v117 = v59;
    v118 = v125;
    *&v119[3] = *&v124[3];
    *v119 = *v124;
    v120 = v55;
    v121 = v54;
    v123 = 0;
    v122 = 0;
    return sub_258DEB78C(&v79);
  }

  else
  {
    LOBYTE(v79) = 0;
    v52 = sub_258F0AC40();
    v149 = v11 & 1;
    LOBYTE(v79) = 1;
    v51 = sub_258F0AC40();
    v147 = v12 & 1;
    LOBYTE(v79) = 2;
    v50 = sub_258F0AC10();
    v145 = v13 & 1;
    LOBYTE(v79) = 3;
    v49 = sub_258F0AC10();
    v143 = v14 & 1;
    LOBYTE(v79) = 4;
    v48 = sub_258F0AC00();
    LOBYTE(v79) = 5;
    v47 = sub_258F0AC00();
    LOBYTE(v79) = 6;
    v46 = sub_258F0AC00();
    LOBYTE(v79) = 7;
    v58 = sub_258F0AC10();
    v142 = v15 & 1;
    LOBYTE(v79) = 8;
    v16 = sub_258F0AC10();
    v150 = 0;
    v57 = v16;
    v140 = v17 & 1;
    LOBYTE(v79) = 9;
    v64 = sub_258F0AC10();
    v150 = 0;
    v138 = v18 & 1;
    LOBYTE(v79) = 10;
    v63 = sub_258F0AC10();
    v150 = 0;
    v136 = v19 & 1;
    LOBYTE(v79) = 11;
    v62 = sub_258F0AC30();
    v150 = 0;
    v133 = BYTE4(v62) & 1;
    LOBYTE(v79) = 12;
    v61 = sub_258F0AC30();
    v150 = 0;
    v130 = BYTE4(v61) & 1;
    LOBYTE(v79) = 13;
    v60 = sub_258F0AC30();
    v150 = 0;
    v127 = BYTE4(v60) & 1;
    LOBYTE(v79) = 14;
    v59 = sub_258F0AC10();
    v150 = 0;
    v125 = v20 & 1;
    LOBYTE(v79) = 15;
    v21 = sub_258F0ABF0();
    v54 = v22;
    v55 = v21;
    v150 = 0;
    v78 = 16;
    v23 = sub_258F0ABF0();
    v150 = 0;
    v24 = v23;
    v26 = v25;
    (*(v5 + 8))(v8, v53);
    *&v65 = v52;
    LODWORD(v53) = v149;
    BYTE8(v65) = v149;
    *(&v65 + 9) = *v148;
    HIDWORD(v65) = *&v148[3];
    *&v66 = v51;
    v45 = v147;
    BYTE8(v66) = v147;
    *(&v66 + 9) = *v146;
    HIDWORD(v66) = *&v146[3];
    *&v67 = v50;
    v44 = v145;
    BYTE8(v67) = v145;
    HIDWORD(v67) = *&v144[3];
    *(&v67 + 9) = *v144;
    *&v68 = v49;
    v43 = v143;
    BYTE8(v68) = v143;
    BYTE9(v68) = v48;
    BYTE10(v68) = v47;
    BYTE11(v68) = v46;
    *&v69 = v58;
    v42 = v142;
    BYTE8(v69) = v142;
    *(&v69 + 9) = *v141;
    HIDWORD(v69) = *&v141[3];
    *&v70 = v57;
    v41 = v140;
    BYTE8(v70) = v140;
    HIDWORD(v70) = *&v139[3];
    *(&v70 + 9) = *v139;
    *&v71 = v64;
    v40 = v138;
    BYTE8(v71) = v138;
    HIDWORD(v71) = *&v137[3];
    *(&v71 + 9) = *v137;
    *&v72 = v63;
    v39 = v136;
    BYTE8(v72) = v136;
    *(&v72 + 9) = v134;
    BYTE11(v72) = v135;
    HIDWORD(v72) = v62;
    v38 = v133;
    LOBYTE(v73) = v133;
    BYTE3(v73) = v132;
    *(&v73 + 1) = v131;
    DWORD1(v73) = v61;
    v37 = v130;
    BYTE8(v73) = v130;
    BYTE11(v73) = v129;
    *(&v73 + 9) = v128;
    HIDWORD(v73) = v60;
    HIDWORD(v36) = v127;
    LOBYTE(v74) = v127;
    DWORD1(v74) = *&v126[3];
    *(&v74 + 1) = *v126;
    *(&v74 + 1) = v59;
    DWORD1(v75) = *&v124[3];
    *(&v75 + 1) = *v124;
    v27 = v125;
    LOBYTE(v75) = v125;
    v28 = v54;
    v29 = v55;
    *(&v75 + 1) = v55;
    *&v76 = v54;
    *(&v76 + 1) = v24;
    v77 = v26;
    sub_258DEB7BC(&v65, &v79);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    v79 = v52;
    v80 = v53;
    v82 = v51;
    *v81 = *v148;
    *&v81[3] = *&v148[3];
    v83 = v45;
    *v84 = *v146;
    *&v84[3] = *&v146[3];
    v85 = v50;
    v86 = v44;
    *v87 = *v144;
    *&v87[3] = *&v144[3];
    v88 = v49;
    v89 = v43;
    v90 = v48;
    v91 = v47;
    v92 = v46;
    v93 = v58;
    v94 = v42;
    *v95 = *v141;
    *&v95[3] = *&v141[3];
    v96 = v57;
    v97 = v41;
    *v98 = *v139;
    *&v98[3] = *&v139[3];
    v99 = v64;
    v100 = v40;
    *v101 = *v137;
    *&v101[3] = *&v137[3];
    v102 = v63;
    v103 = v39;
    v105 = v135;
    v104 = v134;
    v106 = v62;
    v107 = v38;
    v109 = v132;
    v108 = v131;
    v110 = v61;
    v111 = v37;
    v113 = v129;
    v112 = v128;
    v114 = v60;
    v115 = BYTE4(v36);
    *&v116[3] = *&v126[3];
    *v116 = *v126;
    v117 = v59;
    v118 = v27;
    *&v119[3] = *&v124[3];
    *v119 = *v124;
    v120 = v29;
    v121 = v28;
    v122 = v24;
    v123 = v26;
    result = sub_258DEB78C(&v79);
    v30 = v76;
    *(a2 + 160) = v75;
    *(a2 + 176) = v30;
    *(a2 + 192) = v77;
    v31 = v72;
    *(a2 + 96) = v71;
    *(a2 + 112) = v31;
    v32 = v74;
    *(a2 + 128) = v73;
    *(a2 + 144) = v32;
    v33 = v68;
    *(a2 + 32) = v67;
    *(a2 + 48) = v33;
    v34 = v70;
    *(a2 + 64) = v69;
    *(a2 + 80) = v34;
    v35 = v66;
    *a2 = v65;
    *(a2 + 16) = v35;
  }

  return result;
}

uint64_t sub_258DE93D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000028 && 0x8000000258F19040 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000030 && 0x8000000258F19070 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000002ELL && 0x8000000258F190B0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000027 && 0x8000000258F190E0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000029 && 0x8000000258F19110 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x756F43726F727265 && a2 == 0xEA0000000000746ELL || (sub_258F0AD80() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000258F19140 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000258F19160 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000258F19180 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000258F191A0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000258F191C0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000258F191E0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000258F19200 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_258F0AD80() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000002DLL && 0x8000000258F184F0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000002CLL && 0x8000000258F18620 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000258F18580 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x555350746E756F63 && a2 == 0xEF73746573734153 || (sub_258F0AD80() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000258F19220 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x4965736143657375 && a2 == 0xE900000000000044 || (sub_258F0AD80() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000258F19240 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000258F19270 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6174537964647562 && a2 == 0xEB00000000737574 || (sub_258F0AD80() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000258F19290 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000258F192C0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000031 && 0x8000000258F192F0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000033 && 0x8000000258F19330 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x4D746E6572727563 && a2 == 0xEB0000000065646FLL || (sub_258F0AD80() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000258F19370 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000258F19390 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000034 && 0x8000000258F193B0 == a2)
  {

    return 32;
  }

  else
  {
    v6 = sub_258F0AD80();

    if (v6)
    {
      return 32;
    }

    else
    {
      return 33;
    }
  }
}

void *sub_258DE9DB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A00, &qword_258F0C6C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v52 - v8;
  v253 = 1;
  v251 = 1;
  v249 = 1;
  v246 = 1;
  v244 = 1;
  v241 = 1;
  v238 = 1;
  v235 = 1;
  v232 = 1;
  v230 = 1;
  v228 = 1;
  v226 = 1;
  v223 = 1;
  v221 = 1;
  v219 = 1;
  v217 = 1;
  v214 = 1;
  v211 = 1;
  v10 = a1[3];
  v108 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_258DEB738();
  sub_258F0AED0();
  if (v2)
  {
    v254 = v2;
    v100 = 0;
    v101 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    v86 = 0;
    v87 = 0;
    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    v80 = 0;
    v81 = 0;
    v78 = 0;
    v79 = 0;
    v77 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    v120 = 0;
    v123 = 0;
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v130 = 0;
    v134 = v107;
    v137 = v105;
    v138 = v106;
    v139 = v104;
    v143 = v102;
    v144 = v103;
    v145 = v116;
    v146 = v117;
    v147 = v115;
    v151 = v113;
    v152 = v114;
    v121 = v253;
    *v122 = *v252;
    *&v122[3] = *&v252[3];
    v128 = v251;
    *v129 = *v250;
    *&v129[3] = *&v250[3];
    v131 = v249;
    v132 = v247;
    v133 = v248;
    v135 = v246;
    *v136 = *v245;
    *&v136[3] = *&v245[3];
    v140 = v244;
    v142 = v243;
    v141 = v242;
    v148 = v241;
    v150 = v240;
    v149 = v239;
    v153 = v112;
    v154 = v238;
    v156 = v237;
    v155 = v236;
    v157 = v111;
    v158 = v235;
    v160 = v234;
    v159 = v233;
    v161 = v109;
    v162 = v110;
    v163 = v95;
    v164 = v96;
    v165 = v94;
    v166 = v232;
    *&v167[3] = *&v231[3];
    *v167 = *v231;
    v168 = v93;
    v169 = v230;
    *&v170[3] = *&v229[3];
    *v170 = *v229;
    v171 = v92;
    v172 = v228;
    *v173 = *v227;
    *&v173[3] = *&v227[3];
    v174 = v99;
    v175 = v226;
    v176 = v224;
    v177 = v225;
    v178 = v98;
    v179 = v223;
    *v180 = *v222;
    *&v180[3] = *&v222[3];
    v181 = v97;
    v182 = v101;
    v183 = v100;
    v184 = v221;
    *v185 = *v220;
    *&v185[3] = *&v220[3];
    v186 = v91;
    v187 = v219;
    *v188 = *v218;
    *&v188[3] = *&v218[3];
    v189 = v90;
    v190 = v89;
    v191 = v88;
    v192 = v87;
    v193 = v86;
    v194 = v217;
    v195 = v215;
    v196 = v216;
    v197 = v85;
    v198 = v214;
    v199 = v212;
    v200 = v213;
    v201 = v84;
    v202 = v83;
    v203 = v82;
    v204 = v81;
    v205 = v80;
    v206 = v79;
    v207 = v78;
    v208 = v77;
    v209 = 0;
    v210 = v211;
    return sub_258DEB7F4(&v120);
  }

  else
  {
    LOBYTE(v120) = 0;
    v76 = sub_258F0AC40();
    v253 = v12 & 1;
    LOBYTE(v120) = 1;
    v74 = sub_258F0ABF0();
    v75 = v13;
    LOBYTE(v120) = 2;
    v72 = sub_258F0ABF0();
    v73 = v14;
    LOBYTE(v120) = 3;
    v71 = sub_258F0AC10();
    v251 = v15 & 1;
    LOBYTE(v120) = 4;
    v70 = sub_258F0AC10();
    v249 = v16 & 1;
    LOBYTE(v120) = 5;
    v107 = sub_258F0AC30();
    v246 = BYTE4(v107) & 1;
    LOBYTE(v120) = 6;
    v105 = sub_258F0ABF0();
    v106 = v17;
    LOBYTE(v120) = 7;
    v104 = sub_258F0AC30();
    v244 = BYTE4(v104) & 1;
    LOBYTE(v120) = 8;
    v18 = sub_258F0ABF0();
    v254 = 0;
    v19 = a2;
    v102 = v18;
    v103 = v20;
    LOBYTE(v120) = 9;
    v116 = sub_258F0ABF0();
    v117 = v21;
    v254 = 0;
    LOBYTE(v120) = 10;
    v115 = sub_258F0AC30();
    v254 = 0;
    v241 = BYTE4(v115) & 1;
    LOBYTE(v120) = 11;
    v113 = sub_258F0ABF0();
    v114 = v22;
    v254 = 0;
    LOBYTE(v120) = 12;
    v112 = sub_258F0AC30();
    v254 = 0;
    v238 = BYTE4(v112) & 1;
    LOBYTE(v120) = 13;
    v111 = sub_258F0AC30();
    v254 = 0;
    v235 = BYTE4(v111) & 1;
    LOBYTE(v120) = 14;
    v109 = sub_258F0ABF0();
    v110 = v23;
    v254 = 0;
    LOBYTE(v120) = 15;
    v95 = sub_258F0ABF0();
    v96 = v24;
    v254 = 0;
    LOBYTE(v120) = 16;
    v94 = sub_258F0AC10();
    v254 = 0;
    v232 = v25 & 1;
    LOBYTE(v120) = 17;
    v93 = sub_258F0AC10();
    v254 = 0;
    v230 = v26 & 1;
    LOBYTE(v120) = 18;
    v92 = sub_258F0AC10();
    v254 = 0;
    v228 = v27 & 1;
    LOBYTE(v120) = 19;
    v99 = sub_258F0AC40();
    v254 = 0;
    v226 = v28 & 1;
    LOBYTE(v120) = 20;
    v98 = sub_258F0AC30();
    v254 = 0;
    v223 = BYTE4(v98) & 1;
    LOBYTE(v120) = 21;
    v97 = sub_258F0ABF0();
    v101 = v29;
    v254 = 0;
    LOBYTE(v120) = 22;
    v100 = sub_258F0AC10();
    v254 = 0;
    v221 = v30 & 1;
    LOBYTE(v120) = 23;
    v91 = sub_258F0AC10();
    v254 = 0;
    v219 = v31 & 1;
    LOBYTE(v120) = 24;
    v32 = sub_258F0ABF0();
    v89 = v33;
    v90 = v32;
    v254 = 0;
    LOBYTE(v120) = 25;
    v34 = sub_258F0ABF0();
    v87 = v35;
    v88 = v34;
    v254 = 0;
    LOBYTE(v120) = 26;
    v86 = sub_258F0AC30();
    v254 = 0;
    v217 = BYTE4(v86) & 1;
    LOBYTE(v120) = 27;
    v85 = sub_258F0AC30();
    v254 = 0;
    v214 = BYTE4(v85) & 1;
    LOBYTE(v120) = 28;
    v36 = sub_258F0ABF0();
    v83 = v37;
    v84 = v36;
    v254 = 0;
    LOBYTE(v120) = 29;
    v38 = sub_258F0ABF0();
    v81 = v39;
    v82 = v38;
    v254 = 0;
    LOBYTE(v120) = 30;
    v40 = sub_258F0ABF0();
    v79 = v41;
    v80 = v40;
    v254 = 0;
    LOBYTE(v120) = 31;
    v42 = sub_258F0ABF0();
    v77 = v43;
    v78 = v42;
    v254 = 0;
    v119 = 32;
    v69 = sub_258F0AC10();
    v254 = 0;
    v45 = v44;
    (*(v6 + 8))(v9, v5);
    v211 = v45 & 1;
    *v118 = v76;
    v61 = v253;
    v118[8] = v253;
    *&v118[9] = *v252;
    *&v118[12] = *&v252[3];
    *&v118[16] = v74;
    *&v118[24] = v75;
    *&v118[32] = v72;
    *&v118[40] = v73;
    *&v118[48] = v71;
    v60 = v251;
    v118[56] = v251;
    *&v118[57] = *v250;
    *&v118[60] = *&v250[3];
    *&v118[64] = v70;
    v59 = v249;
    v118[72] = v249;
    *&v118[73] = v247;
    v118[75] = v248;
    *&v118[76] = v107;
    v58 = v246;
    v118[80] = v246;
    *&v118[81] = *v245;
    *&v118[84] = *&v245[3];
    *&v118[88] = v105;
    *&v118[96] = v106;
    *&v118[104] = v104;
    v57 = v244;
    v118[108] = v244;
    v118[111] = v243;
    *&v118[109] = v242;
    *&v118[112] = v102;
    *&v118[120] = v103;
    *&v118[128] = v116;
    *&v118[136] = v117;
    *&v118[144] = v115;
    v56 = v241;
    v118[148] = v241;
    v118[151] = v240;
    *&v118[149] = v239;
    *&v118[152] = v113;
    *&v118[160] = v114;
    *&v118[168] = v112;
    v55 = v238;
    v118[172] = v238;
    v118[175] = v237;
    *&v118[173] = v236;
    v46 = v110;
    *&v118[176] = v111;
    v54 = v235;
    v118[180] = v235;
    v118[183] = v234;
    *&v118[181] = v233;
    *&v118[184] = v109;
    *&v118[192] = v110;
    v47 = v95;
    *&v118[200] = v95;
    *&v118[208] = v96;
    v48 = v93;
    *&v118[216] = v94;
    v53 = v232;
    v118[224] = v232;
    *&v118[228] = *&v231[3];
    *&v118[225] = *v231;
    *&v118[232] = v93;
    v49 = v230;
    v118[240] = v230;
    *&v118[244] = *&v229[3];
    *&v118[241] = *v229;
    v50 = v92;
    *&v118[248] = v92;
    v51 = v228;
    v118[256] = v228;
    *&v118[257] = *v227;
    *&v118[260] = *&v227[3];
    *&v118[264] = v99;
    v68 = v226;
    v118[272] = v226;
    *&v118[273] = v224;
    v118[275] = v225;
    *&v118[276] = v98;
    v67 = v223;
    v118[280] = v223;
    *&v118[281] = *v222;
    *&v118[284] = *&v222[3];
    *&v118[288] = v97;
    *&v118[296] = v101;
    *&v118[304] = v100;
    v66 = v221;
    v118[312] = v221;
    *&v118[313] = *v220;
    *&v118[316] = *&v220[3];
    *&v118[320] = v91;
    v65 = v219;
    v118[328] = v219;
    *&v118[329] = *v218;
    *&v118[332] = *&v218[3];
    *&v118[336] = v90;
    *&v118[344] = v89;
    *&v118[352] = v88;
    *&v118[360] = v87;
    *&v118[368] = v86;
    *&v118[373] = v215;
    v64 = v217;
    v118[372] = v217;
    v118[375] = v216;
    *&v118[376] = v85;
    *&v118[381] = v212;
    v62 = v214;
    v118[380] = v214;
    v118[383] = v213;
    *&v118[384] = v84;
    *&v118[392] = v83;
    *&v118[400] = v82;
    *&v118[408] = v81;
    *&v118[416] = v80;
    *&v118[424] = v79;
    *&v118[432] = v78;
    *&v118[440] = v77;
    *&v118[448] = v69;
    v63 = v211;
    v118[456] = v211;
    sub_258DEB824(v118, &v120);
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    v120 = v76;
    v121 = v61;
    v123 = v74;
    v124 = v75;
    v125 = v72;
    v126 = v73;
    v127 = v71;
    v128 = v60;
    v130 = v70;
    v131 = v59;
    v134 = v107;
    v135 = v58;
    v137 = v105;
    v138 = v106;
    v139 = v104;
    v140 = v57;
    v143 = v102;
    v144 = v103;
    v145 = v116;
    v146 = v117;
    v147 = v115;
    v148 = v56;
    v151 = v113;
    v152 = v114;
    v153 = v112;
    v154 = v55;
    v157 = v111;
    v158 = v54;
    v161 = v109;
    v162 = v46;
    v163 = v47;
    v164 = v96;
    v165 = v94;
    v166 = v53;
    v168 = v48;
    v169 = v49;
    v171 = v50;
    v172 = v51;
    *v122 = *v252;
    *v129 = *v250;
    v132 = v247;
    *v136 = *v245;
    v141 = v242;
    v149 = v239;
    v155 = v236;
    v159 = v233;
    *&v167[3] = *&v231[3];
    *v167 = *v231;
    *&v170[3] = *&v229[3];
    *v170 = *v229;
    *v173 = *v227;
    *&v122[3] = *&v252[3];
    *&v129[3] = *&v250[3];
    v133 = v248;
    *&v136[3] = *&v245[3];
    v142 = v243;
    v150 = v240;
    v156 = v237;
    v160 = v234;
    *&v173[3] = *&v227[3];
    v174 = v99;
    v175 = v68;
    v176 = v224;
    v177 = v225;
    v178 = v98;
    v179 = v67;
    *v180 = *v222;
    *&v180[3] = *&v222[3];
    v181 = v97;
    v182 = v101;
    v183 = v100;
    v184 = v66;
    *v185 = *v220;
    *&v185[3] = *&v220[3];
    v186 = v91;
    v187 = v65;
    *v188 = *v218;
    *&v188[3] = *&v218[3];
    v189 = v90;
    v190 = v89;
    v191 = v88;
    v192 = v87;
    v193 = v86;
    v194 = v64;
    v195 = v215;
    v196 = v216;
    v197 = v85;
    v198 = v62;
    v199 = v212;
    v200 = v213;
    v201 = v84;
    v202 = v83;
    v203 = v82;
    v204 = v81;
    v205 = v80;
    v206 = v79;
    v207 = v78;
    v208 = v77;
    v209 = v69;
    v210 = v63;
    sub_258DEB7F4(&v120);
    return memcpy(v19, v118, 0x1C9uLL);
  }
}

unint64_t sub_258DEB698(uint64_t a1, uint64_t a2)
{
  v2 = sub_258F0ABE0();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_258DEB6E4()
{
  result = qword_27F9889E0;
  if (!qword_27F9889E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889E0);
  }

  return result;
}

unint64_t sub_258DEB738()
{
  result = qword_27F9889F0;
  if (!qword_27F9889F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889F0);
  }

  return result;
}

_OWORD *sub_258DEB8B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_258DEB8C8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_258DEB910()
{
  result = qword_27F988A18;
  if (!qword_27F988A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A18);
  }

  return result;
}

uint64_t sub_258DEB964(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_258DEB978(a1, a2);
  }

  return a1;
}

uint64_t sub_258DEB978(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_258DEB9D8(uint64_t a1, int a2)
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

uint64_t sub_258DEBA20(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AIRAvailabilityDetailedStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AIRAvailabilityDetailedStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AIRAvailabilityChangeStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AIRAvailabilityChangeStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258DEBD18()
{
  result = qword_27F988A20;
  if (!qword_27F988A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A20);
  }

  return result;
}

unint64_t sub_258DEBD70()
{
  result = qword_27F988A28;
  if (!qword_27F988A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A28);
  }

  return result;
}

unint64_t sub_258DEBDC8()
{
  result = qword_27F988A30;
  if (!qword_27F988A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A30);
  }

  return result;
}

unint64_t sub_258DEBE20()
{
  result = qword_27F988A38;
  if (!qword_27F988A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A38);
  }

  return result;
}

unint64_t sub_258DEBE78()
{
  result = qword_27F988A40;
  if (!qword_27F988A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A40);
  }

  return result;
}

unint64_t sub_258DEBED0()
{
  result = qword_27F988A48;
  if (!qword_27F988A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A48);
  }

  return result;
}

uint64_t sub_258DEBF54(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op provider invoked: AIRAssetStatusDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_258DEC034()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AIRAssetStatusDataProvider(uint64_t a1)
{
  result = qword_27F988A58;
  if (!qword_27F988A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258DEC124(uint64_t a1)
{
  result = sub_258F0A370();
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

uint64_t sub_258DEC1B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258DEBF34();
}

uint64_t sub_258DEC244@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AIRAssetStatusCalculator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t AIRAssetStatusMetrics.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, void *a2, void *a3, char *a4)
{
  v8 = swift_allocObject();
  AIRAssetStatusMetrics.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v8;
}

char *AIRAssetStatusMetrics.init(defaults:logger:fbfBundleId:)(void *a1, void *a2, void *a3, char *a4)
{
  v110 = a4;
  v107 = a3;
  v111 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v98 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v104 = &v85 - v11;
  v93 = sub_258F09B00();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v12);
  v90 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_258F09A20();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v14);
  v88 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_258F0A370();
  v120 = *(v16 - 8);
  v17 = v120;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v103 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v106 = &v85 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v85 - v25;
  v27 = sub_258F09A70();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v102 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v85 - v33;
  v35 = *(v17 + 2);
  v99 = OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_logger;
  v35(&v4[OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_logger], a2, v16);
  sub_258F09A60();
  v112 = v28;
  v36 = *(v28 + 32);
  v108 = OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_oddId;
  v101 = v34;
  v113 = v27;
  v95 = v28 + 32;
  v94 = v36;
  v36(&v4[OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_oddId], v34, v27);
  v37 = &v4[OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_fbfBundleId];
  v38 = v110;
  *v37 = v107;
  v37[1] = v38;
  v35(v26, a2, v16);
  type metadata accessor for AIRAssetStatusDataProvider(0);
  v39 = swift_allocObject();
  v40 = *(v120 + 4);
  v105 = v26;
  v97 = v120 + 32;
  v96 = v40;
  v40(v39 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusDataProvider_logger, v26, v16);
  v110 = v4;
  *(v4 + 3) = v39;
  v41 = sub_258F0A1F0();
  swift_allocObject();
  v42 = v111;
  v43 = sub_258F0A1E0();
  v118 = v41;
  v119 = MEMORY[0x277D04548];
  *&v117 = v43;
  v111 = a2;
  v44 = v16;
  v100 = v35;
  v107 = (v17 + 16);
  v35(v106, v111, v16);
  v45 = sub_258F09C20();
  swift_allocObject();
  v46 = v109;
  v47 = sub_258F09BE0();
  if (v46)
  {
    v48 = *(v120 + 1);
    v48(v111, v16);

    v49 = v110;

    v48(v99 + v49, v44);
    (*(v112 + 8))(&v108[v49], v113);

    type metadata accessor for AIRAssetStatusMetrics(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v50 = v47;
    v51 = v88;
    sub_258F0A090();
    v52 = v90;
    sub_258F09AC0();
    v109 = v50;
    v87 = v45;
    sub_258F09C10();
    (v92[1])(v52, v93);
    (*(v89 + 8))(v51, v91);
    v53 = v105;
    v86 = v44;
    v54 = v100;
    v100(v105, v111, v44);
    v99 = v37;
    v106 = 0;
    v55 = *(v112 + 16);
    v49 = v110;
    v56 = v101;
    v55(v101, &v108[v110], v113);
    v108 = v42;

    v57 = v104;
    sub_258DEC244(v104);
    v54(v103, v53, v44);
    v58 = v57;
    v59 = v98;
    sub_258DECF90(v58, v98);
    v60 = v56;
    v61 = v113;
    v55(v102, v60, v113);
    type metadata accessor for BiomeResultsWrapperFactory();
    v93 = swift_allocObject();
    v62 = type metadata accessor for CAAnalyticsEventSubmitter();
    v63 = swift_allocObject();
    v118 = v62;
    v119 = &off_286A2C648;
    *&v117 = v63;
    type metadata accessor for AIRAssetStatusCalculator(0);
    v64 = swift_allocObject();
    v65 = __swift_mutable_project_boxed_opaque_existential_1(&v117, v62);
    v92 = &v85;
    MEMORY[0x28223BE20](v65, v65);
    v67 = (&v85 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v68 + 16))(v67);
    v69 = *v67;
    v115 = v62;
    v116 = &off_286A2C648;
    *&v114 = v69;
    sub_258F09AC0();
    v70 = v103;
    v71 = v86;
    v54((v64 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger), v103, v86);
    sub_258DECF90(v59, v64 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_sqlFileURL);
    v72 = (v64 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService);
    v72[3] = v87;
    v72[4] = &off_286A2FA30;
    *v72 = v109;
    sub_258DED000(v59);
    v73 = *(v120 + 1);
    v74 = v71;
    v73(v70, v71);
    v120 = v73;
    sub_258DED000(v104);
    v75 = v61;
    (*(v112 + 8))(v101, v61);
    v76 = v105;
    v73(v105, v71);
    v94(v64 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_oddId, v102, v75);
    *(v64 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_biomeResultsFactory) = v93;
    sub_258DDA76C(&v114, v64 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_analyticsEventSubmitter);
    *(v64 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_defaults) = v108;
    __swift_destroy_boxed_opaque_existential_1Tm(&v117);
    *(v49 + 4) = v64;
    v77 = v111;
    v100(v76, v111, v71);
    v79 = *v99;
    v78 = v99[1];

    v80 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v79, v78);
    type metadata accessor for AIRAssetStatusSELFReporter(0);
    v81 = swift_allocObject();
    v118 = type metadata accessor for SELFReportingService();
    v119 = &protocol witness table for SELFReportingService;
    *&v117 = v80;
    v96(v81 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_logger, v76, v74);
    sub_258DDA76C(&v117, v81 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_reportingService);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_258F0CA20;
    *(v82 + 32) = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A88, &qword_258F0CA30);
    swift_allocObject();

    *&v117 = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A90, qword_258F0CA38);
    swift_allocObject();
    v83 = sub_258F09BC0();

    v120(v77, v74);
    *(v49 + 2) = v83;
  }

  return v49;
}

uint64_t type metadata accessor for AIRAssetStatusMetrics(uint64_t a1)
{
  result = qword_27F988AB0;
  if (!qword_27F988AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258DECF90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258DED000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258DED068(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258DED088, 0, 0);
}

uint64_t sub_258DED088()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258DEBF34();
}

uint64_t sub_258DED124(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258DED154, 0, 0);
}

uint64_t sub_258DED154()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DED218;

  return v4(v0 + 16);
}

uint64_t sub_258DED218()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258DEE378, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_258DED34C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258DED36C, 0, 0);
}

uint64_t sub_258DED36C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED408;
  v2 = *(v0 + 16);

  return sub_258DDEBD4(v2);
}

uint64_t sub_258DED408()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258DEE380, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

char *AIRAssetStatusMetrics.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t AIRAssetStatusMetrics.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_258DED710(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258DED734, 0, 0);
}

uint64_t sub_258DED734()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258DEBF34();
}

uint64_t sub_258DED7D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_258DED8C4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258DED8E8, 0, 0);
}

uint64_t sub_258DED8E8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED984;
  v2 = *(v0 + 16);

  return sub_258DDEBD4(v2);
}

uint64_t sub_258DED984()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258DEDAB8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_258DEDAD0(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258DEDB04, 0, 0);
}

uint64_t sub_258DEDB04()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DEDBC8;

  return v4(v0 + 16);
}

uint64_t sub_258DEDBC8()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258DEDCFC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_258DEDDB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AIRAssetStatusMetrics(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AIRAssetStatusDataRecord(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AIRAssetStatusDataRecord(_WORD *result, int a2, int a3)
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

uint64_t sub_258DEDEDC(uint64_t a1)
{
  result = sub_258F0A370();
  if (v2 <= 0x3F)
  {
    result = sub_258F09A70();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of AIRAssetStatusMetrics.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of AIRAssetStatusMetrics.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of AIRAssetStatusMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258DEE440(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t dispatch thunk of AIRAssetStatusReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

id sub_258DEE6C0(void *__src)
{
  memcpy(__dst, __src, 0x311uLL);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v2 = result;
    if (__dst[5])
    {
      v3 = result;

      v4 = sub_258F0A4E0();
      [v3 setSystemBuild_];

      if (!__dst[13])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = result;
      if (!__dst[13])
      {
LABEL_4:
        v5 = __dst[11];
        if (__dst[11])
        {
LABEL_5:
          v6 = __dst[10];

          v7 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v6, v5);
          [v2 setSiriInputLocale_];

          sub_258DE71D0(__dst);

          return v2;
        }

LABEL_17:

        sub_258DE71D0(__dst);
        return v2;
      }
    }

    v9 = sub_258F0A4E0();
    if ([v9 isEqualToString:@"UNKNOWN"])
    {
      v10 = 0;
    }

    else if ([v9 isEqualToString:@"OPTED_IN"])
    {
      v10 = 1;
    }

    else if ([v9 isEqualToString:@"OPTED_OUT"])
    {
      v10 = 2;
    }

    else if ([v9 isEqualToString:@"DISMISSED"])
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    [v2 setDataSharingOptInStatus_];

    v5 = __dst[11];
    if (__dst[11])
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_258DEE8A8(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    [a2 setCurrentStatus_];
    if (*(a1 + 24))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = a2;
  if ((*(a1 + 24) & 1) == 0)
  {
LABEL_7:
    [a2 setPreviousStatus_];
    [a2 setHasPreviousStatus_];
  }

LABEL_8:
  if (*(a1 + 40))
  {
    if (*(a1 + 56))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [a2 setTimeSinceLastStatusChangeInSeconds_];
  if ((*(a1 + 56) & 1) == 0)
  {
LABEL_10:
    [a2 setTimeSinceLastAvailabilityChangeInSeconds_];
  }

LABEL_11:
  v4 = *(a1 + 57);
  if (v4 != 2)
  {
    [a2 setIsAppleIntelligenceEligible_];
  }

  v5 = *(a1 + 58);
  if (v5 != 2)
  {
    [a2 setIsAppleIntelligenceAllowedThroughWaitlist_];
  }

  v6 = *(a1 + 59);
  if (v6 == 2)
  {
    if (*(a1 + 72))
    {
      goto LABEL_17;
    }
  }

  else
  {
    [a2 setIsAppleIntelligenceToggled_];
    if (*(a1 + 72))
    {
LABEL_17:
      if (*(a1 + 88))
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }
  }

  [a2 setTimeSinceLastAppleIntelligenceToggleInSeconds_];
  if (*(a1 + 88))
  {
LABEL_18:
    if (*(a1 + 104))
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  [a2 setTimeSinceLastEligibleChangeInSeconds_];
  if (*(a1 + 104))
  {
LABEL_19:
    if (*(a1 + 120))
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  [a2 setTimeSinceLastWaitlistChangeInSeconds_];
  if (*(a1 + 120))
  {
LABEL_20:
    if (*(a1 + 144))
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_30:
  [a2 setTimeSinceLastBootInSeconds_];
  if (*(a1 + 144))
  {
LABEL_21:
    if (*(a1 + 160))
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

LABEL_31:
  [a2 setHasModelCatalogSubscriptionHashChangedFromLastStatus_];
  if (*(a1 + 160))
  {
LABEL_22:
    v7 = *(a1 + 176);
    if (!v7)
    {
      goto LABEL_38;
    }

LABEL_33:
    v8 = *(a1 + 168);
    if (v8 == 0xD000000000000024 && 0x8000000258F194F0 == v7 || (sub_258F0AD80() & 1) != 0)
    {
      v9 = 1;
    }

    else if (v8 == 0xD00000000000002ELL && 0x8000000258F19520 == v7 || (sub_258F0AD80() & 1) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
      if (v8 != 0x6C7070612E6D6F63 || v7 != 0xEE00697269732E65)
      {
        if (sub_258F0AD80())
        {
          v9 = 3;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    [a2 setUseCase_];

    goto LABEL_38;
  }

LABEL_32:
  [a2 setTimeSinceLastModelCatalogSubscriptionHashChangeInSeconds_];
  v7 = *(a1 + 176);
  if (v7)
  {
    goto LABEL_33;
  }

LABEL_38:
}

void sub_258DEEC18(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    [a2 setCurrentStatus_];
    v4 = *(a1 + 208);
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = a2;
  v4 = *(a1 + 208);
  if (v4)
  {
LABEL_7:
    v5 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(*(a1 + 200), v4);
    [a2 setAppleIntelligenceLocale_];
  }

LABEL_8:
  if (*(a1 + 224))
  {
    if (*(a1 + 240))
    {
      goto LABEL_10;
    }
  }

  else
  {
    [a2 setTimeSinceLastAppleIntelligenceToggleInSeconds_];
    if (*(a1 + 240))
    {
LABEL_10:
      if (*(a1 + 256))
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  [a2 setTimeSinceLastModelCatalogSubscriptionHashChangeInSeconds_];
  if (*(a1 + 256))
  {
LABEL_11:
    v6 = *(a1 + 296);
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  [a2 setTimeSinceLastBootInSeconds_];
  v6 = *(a1 + 296);
  if (v6)
  {
LABEL_12:
    v7 = *(a1 + 288);
    if (v7 == 0xD000000000000024 && 0x8000000258F194F0 == v6 || (sub_258F0AD80() & 1) != 0)
    {
      v8 = 1;
    }

    else if (v7 == 0xD00000000000002ELL && 0x8000000258F19520 == v6 || (sub_258F0AD80() & 1) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
      if (v7 != 0x6C7070612E6D6F63 || v6 != 0xEE00697269732E65)
      {
        if (sub_258F0AD80())
        {
          v8 = 3;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    [a2 setUseCase_];
    v9 = *(a1 + 24);
    v10 = sub_258DEFAA8;
    if (v9)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_26:
  v9 = *(a1 + 24);
  v10 = sub_258DEF380;
  if (v9)
  {
LABEL_17:
    v11 = v10;
    v12 = *(a1 + 16);

    [a2 setDownloadState_];
  }

LABEL_18:
  if (*(a1 + 312))
  {
    if (*(a1 + 328))
    {
      goto LABEL_20;
    }
  }

  else
  {
    [a2 setTimeSinceLastSoftwareUpdateInSeconds_];
    if (*(a1 + 328))
    {
LABEL_20:
      if (*(a1 + 344))
      {
        goto LABEL_21;
      }

LABEL_30:
      if (!*(a1 + 360))
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  [a2 setTimeSinceSampledErrorInSeconds_];
  if (!*(a1 + 344))
  {
    goto LABEL_30;
  }

LABEL_21:

  v13 = sub_258F0A4E0();
  if ([v13 isEqualToString:@"SADBUDDYOPTINSTATE_UNKNOWN"])
  {
    v14 = 0;
  }

  else if ([v13 isEqualToString:@"SADBUDDYOPTINSTATE_OPTEDIN"])
  {
    v14 = 1;
  }

  else if ([v13 isEqualToString:@"SADBUDDYOPTINSTATE_OPTEDOUT"])
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  [a2 setBuddyStatus_];

  if (*(a1 + 360))
  {
LABEL_31:
    v15 = sub_258F0A4E0();
    [a2 setBuildVersionPriorToSoftwareUpdate_];
  }

LABEL_32:
  if (*(a1 + 372))
  {
    if (*(a1 + 380))
    {
      goto LABEL_34;
    }
  }

  else
  {
    [a2 setInvocationsCountWhileNotAvailable_];
    if (*(a1 + 380))
    {
LABEL_34:
      if (!*(a1 + 392))
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  [a2 setLastMobileAssetDownloadAttemptErrorUnderlyingCode_];
  if (*(a1 + 392))
  {
LABEL_35:
    v16 = sub_258F0A4E0();
    [a2 setLastMobileAssetDownloadAttemptErrorUnderlyingDomain_];
  }

LABEL_36:
  if (*(a1 + 424))
  {
    v17 = sub_258F0A4E0();
    [a2 setSampledErrorAsset_];
  }

  if (*(a1 + 440))
  {

    v18 = sub_258F0A4E0();
    if ([v18 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_UNKNOWN"])
    {
      v19 = 0;
    }

    else if ([v18 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_NOT_DOWNLOADING"])
    {
      v19 = 1;
    }

    else if ([v18 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_DOWNLOADING"])
    {
      v19 = 2;
    }

    else if ([v18 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_DOWNLOAD_STALLED"])
    {
      v19 = 3;
    }

    else if ([v18 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_COMPLETE"])
    {
      v19 = 4;
    }

    else if ([v18 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_OUT_OF_SPACE"])
    {
      v19 = 5;
    }

    else if ([v18 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_ERROR"])
    {
      v19 = 6;
    }

    else if ([v18 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_NETWORK_ERROR"])
    {
      v19 = 7;
    }

    else if ([v18 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_DOWNGRADE_ERROR"])
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    [a2 setSubscriptionDownloadStatus_];
  }

  if (*(a1 + 456))
  {
    if (*(a1 + 56))
    {
      goto LABEL_80;
    }

LABEL_86:
    [a2 setTimeSinceLastMobileAssetDownloadAttemptInSeconds_];
    if (*(a1 + 72))
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  [a2 setTimeSinceSubscriptionDownloadStatusCompleteInSeconds_];
  if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_86;
  }

LABEL_80:
  if ((*(a1 + 72) & 1) == 0)
  {
LABEL_81:
    [a2 setTimeSinceLastMobileAssetDownloadErrorInSeconds_];
  }

LABEL_82:
}

uint64_t sub_258DEF240(uint64_t a1, uint64_t a2)
{
  v7 = sub_258DEF388();
  v6 = MEMORY[0x277D837D0];
  sub_258F0A970();
  v2 = sub_258F0A4E0();

  v3 = v2;
  if ([v3 isEqualToString:{@"ODDMOBILEASSETDOWNLOADSTATE_UNKNOWN", v6, v7, v7, v7, 0xD00000000000001CLL, 0x8000000258F19570, 0xD00000000000001CLL, 0x8000000258F19550, a1, a2}])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ODDMOBILEASSETDOWNLOADSTATE_DOWNLOAD_NOT_STARTED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ODDMOBILEASSETDOWNLOADSTATE_DOWNLOAD_IN_PROGRESS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ODDMOBILEASSETDOWNLOADSTATE_DOWNLOAD_FAILED_AND_NOT_RESTARTED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ODDMOBILEASSETDOWNLOADSTATE_ASSETS_AVAILABLE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_258DEF388()
{
  result = qword_280CC49E8;
  if (!qword_280CC49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC49E8);
  }

  return result;
}

id sub_258DEF3DC(const void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988AC0, &qword_258F0CCE0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v31 - v6;
  memcpy(v36, a1, 0x311uLL);
  v8 = [objc_allocWithZone(MEMORY[0x277D59388]) init];
  if (v8)
  {
    sub_258DEFA5C();
    memcpy(v35, a1, 0x311uLL);
    v9 = v8;
    sub_258DE40EC(v36, v33);
    v10 = sub_258DEE6C0(v35);
    [v9 setAssistantDimensions_];
  }

  if (*(&v36[7] + 1))
  {
    v11 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(*&v36[7], *(&v36[7] + 1));
    [v8 setAppleIntelligenceLocale_];
  }

  v33[10] = v36[18];
  v33[11] = v36[19];
  v34 = *&v36[20];
  v33[6] = v36[14];
  v33[7] = v36[15];
  v33[8] = v36[16];
  v33[9] = v36[17];
  v33[2] = v36[10];
  v33[3] = v36[11];
  v33[4] = v36[12];
  v33[5] = v36[13];
  v33[0] = v36[8];
  v33[1] = v36[9];
  if (sub_258DEF888(v33) == 1 || !v34)
  {
    memcpy(v35, &v36[20] + 8, 0x1C9uLL);
    if (sub_258DEF8AC(v35) == 1)
    {

      return v8;
    }

    v12 = v35[51];

    if (!v12)
    {
      return v8;
    }
  }

  else
  {
  }

  v13 = sub_258F0A4E0();
  v14 = SADSchemaSADSiriModeFromString(v13);

  [v8 setCurrentMode_];
  if (v8)
  {
    [v8 setHasCurrentMode_];
  }

  sub_258DEF8D0(a2, v7);
  v15 = sub_258F0A370();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {

    sub_258DEF940(v7);
  }

  else
  {

    v17 = sub_258F0A350();
    v18 = sub_258F0A810();

    if (os_log_type_enabled(v17, v18))
    {
      v32 = v18;
      v19 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35[0] = v31;
      *v19 = 136315138;
      v20 = sub_258F0A4E0();

      v21 = v20;
      v22 = @"SADSIRIMODE_UNKNOWN";
      if (([v21 isEqualToString:@"SADSIRIMODE_UNKNOWN"] & 1) == 0)
      {
        v22 = @"SADSIRIMODE_CLASSIC";
        if (([v21 isEqualToString:@"SADSIRIMODE_CLASSIC"] & 1) == 0)
        {
          v22 = @"SADSIRIMODE_FULL_UOD";
          if (([v21 isEqualToString:@"SADSIRIMODE_FULL_UOD"] & 1) == 0)
          {
            v22 = @"SADSIRIMODE_HYBRID";
            if (([v21 isEqualToString:@"SADSIRIMODE_HYBRID"] & 1) == 0)
            {
              v22 = @"SADSIRIMODE_SYSTEM_ASSISTANT_EXPERIENCE";
              if (![v21 isEqualToString:@"SADSIRIMODE_SYSTEM_ASSISTANT_EXPERIENCE"])
              {
                v22 = @"SADSIRIMODE_UNKNOWN";
              }
            }
          }
        }
      }

      v23 = v22;
      v24 = v22;
      v25 = sub_258F0A4F0();
      v27 = v26;

      v28 = sub_258DE3018(v25, v27, v35);

      *(v19 + 4) = v28;
      _os_log_impl(&dword_258DD8000, v17, v32, "AIR mapped currentMode=%s", v19, 0xCu);
      v29 = v31;
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x259C9EF40](v29, -1, -1);
      MEMORY[0x259C9EF40](v19, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v7, v15);
  }

  return v8;
}

uint64_t sub_258DEF888(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258DEF8AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258DEF8D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988AC0, &qword_258F0CCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}