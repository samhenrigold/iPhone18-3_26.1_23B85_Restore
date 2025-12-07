BOOL sub_1D29A4AD4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1D29A4B00(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1D29A4B3C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_7(a1);
  result = sub_1D29A4B64(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D29A4B6C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_7(a1);
  result = sub_1D29A4B94(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D29A4B9C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_7(a1);
  result = sub_1D29A4BC4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D29A4C2C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1D29A4C80(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_7(a1);
  result = sub_1D29A4CA8(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D29A4D44@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D29AD4A0(a2);
  *a1 = result;
  return result;
}

void *sub_1D29A4D6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D29A4DBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1D29A4E44()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1D29A4ED4()
{
  MEMORY[0x1D38A49B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29A4F0C()
{

  OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D29A4F98()
{

  OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D29A5024()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29A5084()
{

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D29A50F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D29C3AD4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D29A513C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D29C3AD4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D29A518C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDAD8, &qword_1D29C5A10);
  sub_1D29ADC60();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D29A5204()
{
  v0 = OUTLINED_FUNCTION_11();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_1D29AEFD4(&qword_1EC6FDBE0, &qword_1EC6FDBD8, &qword_1D29C5AD8, MEMORY[0x1E697FDF8]);
  sub_1D29ADB4C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D29A5324()
{
  sub_1D29C3BD4();
  OUTLINED_FUNCTION_15_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D29A53A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D29A53E4()
{
  OUTLINED_FUNCTION_23_0();
  sub_1D29C2F5C();
  OUTLINED_FUNCTION_37_0();

  return MEMORY[0x1EEDDEA00](v0, v1, v2, v3, v4);
}

uint64_t sub_1D29A5438()
{
  sub_1D29C4314();
  v0 = OUTLINED_FUNCTION_109();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D29A5478()
{
  OUTLINED_FUNCTION_23_0();
  sub_1D29C308C();
  OUTLINED_FUNCTION_37_0();

  return MEMORY[0x1EEDDEA00](v0, v1, v2, v3, v4);
}

uint64_t sub_1D29A54D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29A5508()
{
  OUTLINED_FUNCTION_119();
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_112();
  type metadata accessor for PhotosPicker(v3, v4, v5, v6);
  OUTLINED_FUNCTION_83();
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  v9 = v0 + v8;

  sub_1D29A6C84(*(v9 + 40), *(v9 + 48));
  v10 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D29C3C34();
    OUTLINED_FUNCTION_15_0();
    (*(v11 + 8))(v9 + v10);
  }

  else
  {
  }

  v12 = *(v1 + 48);
  sub_1D29C42F4();
  OUTLINED_FUNCTION_15_0();
  (*(v13 + 8))(v9 + v12);
  OUTLINED_FUNCTION_93();
  (*(v14 + 8))(v9 + v15, v2);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_118();

  return MEMORY[0x1EEE6BDD0](v16, v17, v18);
}

uint64_t sub_1D29A568C()
{
  OUTLINED_FUNCTION_119();
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_112();
  type metadata accessor for PhotosPicker(v3, v4, v5, v6);
  OUTLINED_FUNCTION_83();
  v8 = v0 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_1D29A6C84(*(v8 + 40), *(v8 + 48));
  v9 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D29C3C34();
    OUTLINED_FUNCTION_15_0();
    (*(v10 + 8))(v8 + v9);
  }

  else
  {
  }

  v11 = *(v1 + 48);
  sub_1D29C42F4();
  OUTLINED_FUNCTION_15_0();
  (*(v12 + 8))(v8 + v11);
  OUTLINED_FUNCTION_93();
  (*(v13 + 8))(v8 + v14, v2);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_118();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1D29A5808()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA3C8();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D29A58C4()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA6B0();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5924()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA7A4();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5990()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA7D0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D29A59EC()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA7FC();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5A58()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA828();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5AC4()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA8B4();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5B30()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA9B0();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5C04()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BAA30();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D29A5D30()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BAD08();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D29A5D8C()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BADA0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D29A5DE8()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BAF3C();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5E54()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BAF5C();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5EC0()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BB000();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D29A5EEC()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BB10C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D29A5F18()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BB284();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D29A5F88()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BB3B4();
  *v0 = result;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3 & 1;
  return result;
}

uint64_t sub_1D29A5FBC()
{
  OUTLINED_FUNCTION_30_0();
  v2 = sub_1D29C42C4();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D29A5FFC()
{
  OUTLINED_FUNCTION_30_0();
  sub_1D29C42C4();
  v0 = OUTLINED_FUNCTION_57();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D29A6034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D29C3FF4();
  OUTLINED_FUNCTION_49();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1D29A60EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_30_0();
  sub_1D29C3FF4();
  OUTLINED_FUNCTION_49();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_57();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }
}

uint64_t sub_1D29A617C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_100(*(a1 + 8));
  }

  v7 = type metadata accessor for PhotosPickerItem.Content(0);
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D29A61F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PhotosPickerItem.Content(0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D29A6278()
{
  OUTLINED_FUNCTION_30_0();
  v2 = sub_1D29C4164();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D29A62B8()
{
  OUTLINED_FUNCTION_30_0();
  sub_1D29C4164();
  v0 = OUTLINED_FUNCTION_57();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D29A636C(void *a1)
{
  sub_1D29C3F34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE18, &qword_1D29C5F10);
  OUTLINED_FUNCTION_45();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE20, &qword_1D29C5F18);
  sub_1D29C3D14();
  sub_1D29C059C();
  OUTLINED_FUNCTION_18_0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PhotosPickerViewController(255);
  OUTLINED_FUNCTION_67();
  sub_1D29C3D04();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_10_0();
  sub_1D29B18D8(v1, v2, &unk_1D29C6848);
  OUTLINED_FUNCTION_36_0();
  return swift_getWitnessTable();
}

uint64_t sub_1D29A64C4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE18, &qword_1D29C5F10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE20, &qword_1D29C5F18);
  sub_1D29C3D14();
  sub_1D29C059C();
  OUTLINED_FUNCTION_18_0();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_11_0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D29A6574(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_82();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v2, v3);
  OUTLINED_FUNCTION_67();
  sub_1D29C3C64();
  v4 = OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
  OUTLINED_FUNCTION_67();
  sub_1D29C3C64();
  OUTLINED_FUNCTION_38();
  sub_1D29C1524(v6, &qword_1EC6FDE38, &qword_1D29C5F88, v7);
  OUTLINED_FUNCTION_35_0();
  swift_getWitnessTable();
  sub_1D29C1524(&qword_1EC6FDF50, &unk_1EC6FDF48, &unk_1D29C65D0, v1);
  return OUTLINED_FUNCTION_114();
}

uint64_t sub_1D29A6804(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_82();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v2, v3);
  OUTLINED_FUNCTION_67();
  sub_1D29C3C64();
  v4 = OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
  OUTLINED_FUNCTION_67();
  sub_1D29C3C64();
  OUTLINED_FUNCTION_38();
  sub_1D29C1524(v6, &qword_1EC6FDE48, &qword_1D29C61C0, v7);
  OUTLINED_FUNCTION_35_0();
  swift_getWitnessTable();
  sub_1D29C1524(&qword_1EC6FDFD0, &unk_1EC6FDFC8, &unk_1D29C6620, v1);
  return OUTLINED_FUNCTION_114();
}

uint64_t sub_1D29A69AC(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE078, &qword_1D29C66A8);
  OUTLINED_FUNCTION_49();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE080, &qword_1D29C66B0);
    OUTLINED_FUNCTION_49();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE088, &qword_1D29C66B8);
      OUTLINED_FUNCTION_49();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[12];
      }

      else
      {
        if (a2 == 0x7FFFFFFF)
        {
          return OUTLINED_FUNCTION_100(*(a1 + a3[24] + 8));
        }

        v8 = sub_1D29C42F4();
        v12 = a3[26];
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1D29A6B14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE078, &qword_1D29C66A8);
  OUTLINED_FUNCTION_49();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE080, &qword_1D29C66B0);
    OUTLINED_FUNCTION_49();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE088, &qword_1D29C66B8);
      OUTLINED_FUNCTION_49();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[12];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[24] + 8) = (a2 - 1);
          return;
        }

        v10 = sub_1D29C42F4();
        v14 = a4[26];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D29A6C84(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1D29A6C90()
{
  v1 = sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64) + v5;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 1, v4 | 7);
}

uint64_t sub_1D29A6D70()
{
  sub_1D29C4534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE140, &qword_1D29C6910);
  OUTLINED_FUNCTION_112();
  sub_1D29C4434();
  OUTLINED_FUNCTION_15_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t View._photosSharedAlbumsView(isPresented:posting:preselecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  return sub_1D29A6FB8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, sub_1D29A6E60);
}

{
  return sub_1D29A6FB8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, sub_1D29A70C8);
}

__n128 sub_1D29A6E60@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC20, &qword_1D29C5B00);
  sub_1D29C3EE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC28, &qword_1D29C5B08);
  sub_1D29C3F84();
  result = v20;
  a9->n128_u64[0] = a7;
  a9->n128_u64[1] = a8;
  a9[1].n128_u64[0] = a4;
  a9[1].n128_u64[1] = a5;
  a9[2].n128_u64[0] = a6;
  a9[2].n128_u64[1] = v19;
  a9[3] = v20;
  a9[4].n128_u64[0] = a1;
  a9[4].n128_u64[1] = a2;
  a9[5].n128_u8[0] = a3;
  a9[5].n128_u64[1] = v19;
  a9[6].n128_u64[0] = v20.n128_u64[0];
  return result;
}

uint64_t sub_1D29A6FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{

  a11(__src, a1, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x1D38A3C70](__src, a9, &type metadata for _PostToSharedAlbumModifer, a10);
  memcpy(__dst, __src, 0x68uLL);
  return sub_1D29A6F4C(__dst);
}

__n128 sub_1D29A70C8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC20, &qword_1D29C5B00);
  sub_1D29C3EE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB20, &qword_1D29C5A50);
  sub_1D29C3F84();
  result = v20;
  *a9 = a7;
  *(a9 + 8) = a8;
  *(a9 + 16) = v19;
  *(a9 + 24) = v20;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a1;
  *(a9 + 72) = a2;
  *(a9 + 80) = a3;
  *(a9 + 88) = v19;
  *(a9 + 96) = v20.n128_u64[0];
  return result;
}

uint64_t sub_1D29A71B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAD8, &qword_1D29C5A10);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = sub_1D29C3F94();
  v9 = v8;
  v19 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAE0, &qword_1D29C5A18);
  sub_1D29C3F14();
  v16 = v17;
  v10 = v18;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAE8, &qword_1D29C5A20);
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  v12 = &v6[*(v4 + 36)];
  *v12 = v16;
  *(v12 + 2) = v10;
  *(v12 + 3) = v7;
  *(v12 + 4) = v9;
  v17 = *(v2 + 64);
  LOBYTE(v18) = *(v2 + 80);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
  MEMORY[0x1D38A3CF0](&v19, v13);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v2, 0x68uLL);
  sub_1D29ADC28(v2, &v17);
  sub_1D29ADC60();
  sub_1D29C3ED4();

  return sub_1D29AEF28(v6, &qword_1EC6FDAD8, &qword_1D29C5A10);
}

uint64_t sub_1D29A73CC(uint64_t a1, _BYTE *a2, const void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB18, &qword_1D29C5A38);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14[-v7 - 8];
  if (*a2 == 1)
  {
    v9 = sub_1D29C4474();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    sub_1D29C4454();
    sub_1D29ADC28(a3, v14);
    v10 = sub_1D29C4444();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    memcpy(v11 + 4, a3, 0x68uLL);
    sub_1D29A8F5C(0, 0, v8, &unk_1D29C5A48, v11);
  }

  return result;
}

uint64_t sub_1D29A74F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[33] = a4;
  sub_1D29C4454();
  v4[34] = sub_1D29C4444();
  v6 = sub_1D29C4404();
  v4[35] = v6;
  v4[36] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D29A758C, v6, v5);
}

uint64_t sub_1D29A758C()
{
  v1 = *(v0 + 264);
  v2 = v1[2];
  *(v0 + 296) = v2;
  v3 = v1[3];
  *(v0 + 304) = v3;
  v4 = v1[4];
  *(v0 + 184) = v2;
  *(v0 + 192) = v4;
  *(v0 + 312) = v4;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  sub_1D29ADF6C(v0 + 184, v0 + 208);

  sub_1D29AE974();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB28, &qword_1D29C5A58);
  *(v0 + 320) = v5;
  MEMORY[0x1D38A3CF0]();
  v6 = *(*(v0 + 200) + 16);

  if (v6)
  {
    *(v0 + 64) = v2;
    *(v0 + 72) = v3;
    *(v0 + 80) = v4;
    MEMORY[0x1D38A3CF0](v5);
    *(v0 + 328) = *(v0 + 224);
    v7 = swift_task_alloc();
    *(v0 + 336) = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_32(v7);

    return sub_1D29A7C68(v8);
  }

  else
  {
    v10 = *(v0 + 264);
    v11 = *(v10 + 56);
    *(v0 + 16) = *(v10 + 40);
    *(v0 + 32) = v11;
    v12 = *(v10 + 56);
    *(v0 + 136) = *(v10 + 40);
    *(v0 + 152) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB30, &qword_1D29C5A68);
    MEMORY[0x1D38A3CF0]();
    v14 = sub_1D29AE04C(*(v0 + 248));

    if (v14)
    {
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = *(v0 + 32);
      MEMORY[0x1D38A3CF0](v13);
      *(v0 + 344) = *(v0 + 256);
      v15 = swift_task_alloc();
      *(v0 + 352) = v15;
      *v15 = v0;
      v16 = OUTLINED_FUNCTION_32(v15);

      return sub_1D29A8AA4(v16);
    }

    else
    {

      v18 = *(v0 + 312);
      v17 = *(v0 + 320);
      v20 = *(v0 + 296);
      v19 = *(v0 + 304);
      *(v0 + 88) = v20;
      *(v0 + 96) = v19;
      *(v0 + 104) = v18;
      MEMORY[0x1D38A3CF0](v17);

      *(v0 + 112) = v20;
      *(v0 + 120) = v19;
      *(v0 + 128) = v18;
      *(v0 + 240) = MEMORY[0x1E69E7CC0];
      sub_1D29C3F54();
      sub_1D29ADFC8(v0 + 184);

      sub_1D29AEF28(v0 + 192, &qword_1EC6FDB20, &qword_1D29C5A50);
      OUTLINED_FUNCTION_9();

      return v21();
    }
  }
}

uint64_t sub_1D29A789C()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  v4 = *(v1 + 288);
  v5 = *(v1 + 280);

  return MEMORY[0x1EEE6DFA0](sub_1D29A79D4, v5, v4);
}

uint64_t sub_1D29A79D4()
{
  OUTLINED_FUNCTION_28();

  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v0[11] = v4;
  v0[12] = v3;
  v0[13] = v2;
  MEMORY[0x1D38A3CF0](v1);

  v0[14] = v4;
  v0[15] = v3;
  v0[16] = v2;
  v0[30] = MEMORY[0x1E69E7CC0];
  sub_1D29C3F54();
  sub_1D29ADFC8((v0 + 23));

  sub_1D29AEF28((v0 + 24), &qword_1EC6FDB20, &qword_1D29C5A50);
  OUTLINED_FUNCTION_9();

  return v5();
}

uint64_t sub_1D29A7AB4()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v2[45] = v0;

  if (v0)
  {
    sub_1D29ADFC8((v2 + 23));

    sub_1D29AEF28((v2 + 24), &qword_1EC6FDB20, &qword_1D29C5A50);
    v4 = v2[35];
    v5 = v2[36];
    v6 = sub_1D29A7C0C;
  }

  else
  {
    v4 = v2[35];
    v5 = v2[36];
    v6 = sub_1D29AF0B8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D29A7C0C()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1D29A7C68(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB68, &qword_1D29C5A90);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for Photo(0);
  v2[8] = swift_task_alloc();
  v3 = sub_1D29C3BD4();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB70, &qword_1D29C5A98);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for Movie(0);
  v2[15] = swift_task_alloc();
  v2[16] = *(type metadata accessor for PhotosPickerItem(0) - 8);
  v2[17] = swift_task_alloc();
  sub_1D29C4454();
  v2[18] = sub_1D29C4444();
  v5 = sub_1D29C4404();
  v2[19] = v5;
  v2[20] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D29A7E8C, v5, v4);
}

uint64_t sub_1D29A7E8C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 24);
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  *(v0 + 168) = v3;
  if (v3)
  {
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v5 + 80);
    *(v0 + 248) = v6;
    v7 = *(v5 + 72);
    *(v0 + 184) = 0;
    *(v0 + 192) = v2;
    *(v0 + 176) = v7;
    sub_1D29AE64C(v1 + ((v6 + 32) & ~v6), v4);
    v8 = OUTLINED_FUNCTION_2();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    *(v0 + 232) = v2;
    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_33(v11);
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_0(v12);

    return sub_1D29A8AA4(v14);
  }
}

uint64_t sub_1D29A7F64()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[17];
  v2 = swift_task_alloc();
  v0[25] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_1D29A802C;
  OUTLINED_FUNCTION_16();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1D29A802C()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v6 = sub_1D29A836C;
  }

  else
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v6 = sub_1D29A8164;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D29A8164()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[13];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[14]) == 1)
  {
    sub_1D29AEF28(v1, &qword_1EC6FDB70, &qword_1D29C5A98);
    v2 = sub_1D29A83F0;
LABEL_10:

    return MEMORY[0x1EEE6DFA0](v2, 0, 0);
  }

  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  sub_1D29AE718();
  sub_1D29C3AA4();
  sub_1D29C3BC4();
  sub_1D29C3B74();
  v7 = v6;
  (*(v4 + 8))(v3, v5);
  v8 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
  v9 = OUTLINED_FUNCTION_11();
  sub_1D29AD4F8(v9, v10, v7);
  MEMORY[0x1D38A4160]();
  OUTLINED_FUNCTION_29();
  if (v11)
  {
    sub_1D29C43E4();
  }

  v12 = v0[17];
  v13 = v0[15];
  sub_1D29C43F4();
  sub_1D29AE6C0(v13, type metadata accessor for Movie);
  v14 = v0[2];
  OUTLINED_FUNCTION_1();
  sub_1D29AE6C0(v12, v15);
  OUTLINED_FUNCTION_12();
  if (!v17)
  {
    v0[23] = v16;
    v0[24] = v14;
    OUTLINED_FUNCTION_4(v16);
    v2 = sub_1D29A7F64;
    goto LABEL_10;
  }

  v0[29] = v14;
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_33(v18);
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_0(v19);

  return sub_1D29A8AA4(v21);
}

uint64_t sub_1D29A836C()
{
  OUTLINED_FUNCTION_14();
  __swift_storeEnumTagSinglePayload(*(v0 + 104), 1, 1, *(v0 + 112));
  sub_1D29AEF28(*(v0 + 104), &qword_1EC6FDB70, &qword_1D29C5A98);

  return MEMORY[0x1EEE6DFA0](sub_1D29A83F0, 0, 0);
}

uint64_t sub_1D29A83F0()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[17];
  v2 = swift_task_alloc();
  v0[27] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1D29A84B8;
  OUTLINED_FUNCTION_16();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1D29A84B8()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v6 = sub_1D29A87E4;
  }

  else
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v6 = sub_1D29A85F0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D29A85F0()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[6];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[7]) == 1)
  {
    OUTLINED_FUNCTION_1();
    sub_1D29AE6C0(v2, v3);
    sub_1D29AEF28(v1, &qword_1EC6FDB68, &qword_1D29C5A90);
    v4 = v0[24];
  }

  else
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    OUTLINED_FUNCTION_26();
    sub_1D29AE718();
    v8 = sub_1D29C3AA4();
    sub_1D29C3BB4();
    v9 = sub_1D29C3B74();
    v11 = v10;
    (*(v6 + 8))(v5, v7);
    v12 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
    sub_1D29AD4F8(v8, v9, v11);
    MEMORY[0x1D38A4160]();
    OUTLINED_FUNCTION_29();
    if (v13)
    {
      sub_1D29C43E4();
    }

    v14 = v0[17];
    v15 = v0[8];
    sub_1D29C43F4();
    sub_1D29AE6C0(v15, type metadata accessor for Photo);
    v4 = v0[2];
    OUTLINED_FUNCTION_1();
    sub_1D29AE6C0(v14, v16);
  }

  OUTLINED_FUNCTION_12();
  if (v18)
  {
    v0[29] = v4;
    v19 = swift_task_alloc();
    v20 = OUTLINED_FUNCTION_33(v19);
    *v20 = v21;
    v22 = OUTLINED_FUNCTION_0(v20);

    return sub_1D29A8AA4(v22);
  }

  else
  {
    v0[23] = v17;
    v0[24] = v4;
    OUTLINED_FUNCTION_4(v17);
    v24 = OUTLINED_FUNCTION_2();

    return MEMORY[0x1EEE6DFA0](v24, v25, v26);
  }
}

uint64_t sub_1D29A87E4()
{
  OUTLINED_FUNCTION_14();
  __swift_storeEnumTagSinglePayload(v0[6], 1, 1, v0[7]);
  v1 = v0[6];
  OUTLINED_FUNCTION_1();
  sub_1D29AE6C0(v2, v3);
  sub_1D29AEF28(v1, &qword_1EC6FDB68, &qword_1D29C5A90);
  OUTLINED_FUNCTION_12();
  if (v5)
  {
    v0[29] = v0[24];
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_33(v6);
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_0(v7);

    return sub_1D29A8AA4(v9);
  }

  else
  {
    v0[23] = v4;
    OUTLINED_FUNCTION_4(v4);
    v11 = OUTLINED_FUNCTION_2();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1D29A88C0()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v6 = sub_1D29AF03C;
  }

  else
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v6 = sub_1D29A89F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D29A89F8()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1D29A8AA4(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_1D29C4454();
  v2[23] = sub_1D29C4444();
  v4 = sub_1D29C4404();

  return MEMORY[0x1EEE6DFA0](sub_1D29A8B3C, v4, v3);
}

uint64_t sub_1D29A8B3C()
{
  v1 = *(v0 + 176);

  *(v0 + 16) = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAE0, &qword_1D29C5A18);
  sub_1D29C3EF4();
  v2 = *(v0 + 120);
  if (v2)
  {
    if (sub_1D29AE04C(*(v0 + 168)))
    {
      v4 = *(v0 + 168);
      v3 = *(v0 + 176);
      v5 = [objc_allocWithZone(MEMORY[0x1E696ABE0]) init];
      v6 = sub_1D29A91EC();
      v7 = sub_1D29A92D4(v6);

      sub_1D29AE470(v7, v5);
      sub_1D29AE4F0(v4, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB38, &qword_1D29C5A78);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D29C4E50;
      *(v8 + 56) = sub_1D29AEB78(0, &qword_1EC6FDB40, 0x1E696ABE0);
      *(v8 + 32) = v5;
      v9 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
      v10 = v5;
      v11 = sub_1D29AD574(v8, 0);
      v12 = v2;
      [v11 willMoveToParentViewController_];
      [v12 addChildViewController_];
      [v11 didMoveToParentViewController_];

      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_30();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      memcpy((v14 + 24), v3, 0x68uLL);
      *(v0 + 152) = sub_1D29AE56C;
      *(v0 + 160) = v14;
      v15 = MEMORY[0x1E69E9820];
      *(v0 + 120) = MEMORY[0x1E69E9820];
      *(v0 + 128) = 1107296256;
      *(v0 + 136) = sub_1D29A9630;
      *(v0 + 144) = &block_descriptor;
      v16 = _Block_copy((v0 + 120));
      sub_1D29ADC28(v3, v0 + 16);

      [v11 setCompletionWithItemsHandler_];
      _Block_release(v16);
      v17 = sub_1D29C4364();
      v18 = NSSelectorFromString(v17);

      if ([v11 respondsToSelector_])
      {
        v19 = *(v0 + 176);
        OUTLINED_FUNCTION_30();
        v20 = swift_allocObject();
        *(v20 + 16) = v11;
        memcpy((v20 + 24), v19, 0x68uLL);
        v21 = swift_allocObject();
        *(v21 + 16) = sub_1D29AE590;
        *(v21 + 24) = v20;
        *(v0 + 152) = sub_1D29AE59C;
        *(v0 + 160) = v21;
        *(v0 + 120) = v15;
        *(v0 + 128) = 1107296256;
        *(v0 + 136) = sub_1D29A9764;
        *(v0 + 144) = &block_descriptor_57;
        v22 = _Block_copy((v0 + 120));
        sub_1D29ADC28(v19, v0 + 16);
        v11 = v11;

        v23 = v11;
        _Block_copy(v22);
        [v11 performSelector:v18 withObject:v22];

        _Block_release(v22);

        _Block_release(v22);
      }

      else
      {
      }
    }

    else
    {
      v11 = v2;
    }
  }

  OUTLINED_FUNCTION_9();

  return v24();
}

uint64_t sub_1D29A8F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB18, &qword_1D29C5A38);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1D29AE974();
  v11 = sub_1D29C4474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D29AEF28(v10, &qword_1EC6FDB18, &qword_1D29C5A38);
  }

  else
  {
    sub_1D29C4464();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1D29C4404();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1D29C4384() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1D29AEF28(a3, &qword_1EC6FDB18, &qword_1D29C5A38);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D29AEF28(a3, &qword_1EC6FDB18, &qword_1D29C5A38);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1D29A91EC()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB60, &qword_1D29C5A88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D29C4E50;
    *(inited + 32) = 0xD000000000000028;
    *(inited + 40) = 0x80000001D29C7340;
    *(inited + 48) = v2;
    *(inited + 56) = v1;

    return sub_1D29C4334();
  }

  else
  {

    return sub_1D29C4334();
  }
}

uint64_t sub_1D29A92D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB58, &qword_1D29C5A80);
    v2 = sub_1D29C45D4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1D29AE5C4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1D29AE5C4(v29, v30);
    result = sub_1D29C4564();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_1D29AE5C4(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D29A9598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong removeFromParentViewController];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
  return sub_1D29C3F54();
}

uint64_t sub_1D29A9630(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_1D29C43D4();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

uint64_t sub_1D29A96EC(uint64_t result, int a2, id a3, uint64_t a4)
{
  if ((result & 1) == 0)
  {
    [a3 removeFromParentViewController];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
    return sub_1D29C3F54();
  }

  return result;
}

void sub_1D29A9764(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1D29A9830()
{
  v0 = sub_1D29C3BD4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D29C3BC4();
  type metadata accessor for Movie(0);
  sub_1D29AD6D8(&qword_1EC6FDBC0, type metadata accessor for Movie, &unk_1D29C5E14);
  return sub_1D29C3B44();
}

uint64_t sub_1D29A9930(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1D29C3AD4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D29A99F0, 0, 0);
}

uint64_t sub_1D29A99F0()
{
  OUTLINED_FUNCTION_14();
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_1D29C3B54();

  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_1D29A9A7C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC90, &qword_1D29C5E98);
  v2[6] = swift_task_alloc();
  v3 = sub_1D29C3BD4();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_1D29C3B14();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_1D29C3AD4();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D29A9C7C, 0, 0);
}

uint64_t sub_1D29A9C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_17(a1, a2, a3, a4, a5, a6, a7);
  sub_1D29C3B04();
  v62 = sub_1D29C3AF4();
  v63 = v11;
  v12 = v7 + 8;
  v13 = OUTLINED_FUNCTION_26();
  v15 = v14(v13);
  MEMORY[0x1D38A3910](v15);
  sub_1D29C3A84();
  v16 = OUTLINED_FUNCTION_23();
  (v12)(v16);
  v17 = v12;
  sub_1D29C3BC4();
  v18 = OUTLINED_FUNCTION_35();
  v26 = OUTLINED_FUNCTION_37(v18, v19, v20, v21, v22, v23, v24, v25, v58, v60);
  if (v27)
  {
    v29 = v8[6];
    v28 = v8[7];
    sub_1D29C3BC4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v28);
    if (EnumTagSinglePayload != 1)
    {
      EnumTagSinglePayload = sub_1D29AEF28(v8[6], &qword_1EC6FDC90, &qword_1D29C5E98);
    }
  }

  else
  {
    EnumTagSinglePayload = (*(v8[8] + 32))(v26, v8[6], v8[7]);
  }

  OUTLINED_FUNCTION_19(EnumTagSinglePayload, v31, v32, v33, v34, v35, v36, v37, v59, v61, v62, v63);

  (*(v12 + 8))(v9, v10);
  v38 = OUTLINED_FUNCTION_26();
  (v12)(v38);
  v39 = objc_opt_self();
  v40 = [v39 defaultManager];
  sub_1D29C3AC4();
  v41 = sub_1D29C4364();

  v42 = [v40 fileExistsAtPath_];

  if (v42)
  {
    v43 = [v39 defaultManager];
    v44 = sub_1D29C3AA4();
    v8[3] = 0;
    v40 = [v43 removeItemAtURL:v44 error:v8 + 3];

    v45 = v8[3];
    if (!v40)
    {
      goto LABEL_10;
    }

    v46 = v45;
  }

  v47 = OUTLINED_FUNCTION_25();
  MEMORY[0x1D38A3910]();
  v48 = sub_1D29C3AA4();
  v17(v40, v9);
  v49 = sub_1D29C3AA4();
  v8[2] = 0;
  v50 = OUTLINED_FUNCTION_34(v49, sel_copyItemAtURL_toURL_error_);

  v45 = v8[2];
  if (v50)
  {
    v51 = OUTLINED_FUNCTION_15();
    v52(v51);
    v53 = v45;

    OUTLINED_FUNCTION_9();
    goto LABEL_11;
  }

LABEL_10:
  v55 = v45;
  sub_1D29C3A74();

  swift_willThrow();
  v56 = OUTLINED_FUNCTION_18();
  (v17)(v56);

  OUTLINED_FUNCTION_9();
LABEL_11:

  return v54();
}

uint64_t sub_1D29AA01C()
{
  v0 = sub_1D29C3BD4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D29C3BB4();
  type metadata accessor for Photo(0);
  sub_1D29AD6D8(&qword_1EC6FDB80, type metadata accessor for Photo, &unk_1D29C5E4C);
  return sub_1D29C3B44();
}

uint64_t sub_1D29AA11C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1D29C3AD4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D29AF0C8, 0, 0);
}

uint64_t sub_1D29AA1DC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC90, &qword_1D29C5E98);
  v2[6] = swift_task_alloc();
  v3 = sub_1D29C3BD4();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_1D29C3B14();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_1D29C3AD4();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D29AA3DC, 0, 0);
}

uint64_t sub_1D29AA3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_17(a1, a2, a3, a4, a5, a6, a7);
  sub_1D29C3B04();
  v62 = sub_1D29C3AF4();
  v63 = v11;
  v12 = v7 + 8;
  v13 = OUTLINED_FUNCTION_26();
  v15 = v14(v13);
  MEMORY[0x1D38A3910](v15);
  sub_1D29C3A84();
  v16 = OUTLINED_FUNCTION_23();
  (v12)(v16);
  v17 = v12;
  sub_1D29C3BB4();
  v18 = OUTLINED_FUNCTION_35();
  v26 = OUTLINED_FUNCTION_37(v18, v19, v20, v21, v22, v23, v24, v25, v58, v60);
  if (v27)
  {
    v29 = v8[6];
    v28 = v8[7];
    sub_1D29C3BB4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v28);
    if (EnumTagSinglePayload != 1)
    {
      EnumTagSinglePayload = sub_1D29AEF28(v8[6], &qword_1EC6FDC90, &qword_1D29C5E98);
    }
  }

  else
  {
    EnumTagSinglePayload = (*(v8[8] + 32))(v26, v8[6], v8[7]);
  }

  OUTLINED_FUNCTION_19(EnumTagSinglePayload, v31, v32, v33, v34, v35, v36, v37, v59, v61, v62, v63);

  (*(v12 + 8))(v9, v10);
  v38 = OUTLINED_FUNCTION_26();
  (v12)(v38);
  v39 = objc_opt_self();
  v40 = [v39 defaultManager];
  sub_1D29C3AC4();
  v41 = sub_1D29C4364();

  v42 = [v40 fileExistsAtPath_];

  if (v42)
  {
    v43 = [v39 defaultManager];
    v44 = sub_1D29C3AA4();
    v8[3] = 0;
    v40 = [v43 removeItemAtURL:v44 error:v8 + 3];

    v45 = v8[3];
    if (!v40)
    {
      goto LABEL_10;
    }

    v46 = v45;
  }

  v47 = OUTLINED_FUNCTION_25();
  MEMORY[0x1D38A3910]();
  v48 = sub_1D29C3AA4();
  v17(v40, v9);
  v49 = sub_1D29C3AA4();
  v8[2] = 0;
  v50 = OUTLINED_FUNCTION_34(v49, sel_copyItemAtURL_toURL_error_);

  v45 = v8[2];
  if (v50)
  {
    v51 = OUTLINED_FUNCTION_15();
    v52(v51);
    v53 = v45;

    OUTLINED_FUNCTION_9();
    goto LABEL_11;
  }

LABEL_10:
  v55 = v45;
  sub_1D29C3A74();

  swift_willThrow();
  v56 = OUTLINED_FUNCTION_18();
  (v17)(v56);

  OUTLINED_FUNCTION_9();
LABEL_11:

  return v54();
}

id sub_1D29AA780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC18, &qword_1D29C5AF8);
  sub_1D29C3F64();
  v4 = objc_allocWithZone(type metadata accessor for _PresentationViewController());
  return sub_1D29AA9B4(v6, v7, v8);
}

uint64_t sub_1D29AA85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29AEF80();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D29AA8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29AEF80();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D29AA924(uint64_t a1)
{
  sub_1D29AEF80();
  sub_1D29C3D84();
  __break(1u);
}

id sub_1D29AA9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC17_PhotosUI_SwiftUIP33_3BA943E6D7A29AC315168BE52F028B9927_PresentationViewController__presentationViewController];
  *v4 = a1;
  *(v4 + 1) = a2;
  *(v4 + 2) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for _PresentationViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D29AAA9C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for _PresentationViewController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D29AAB5C(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _PresentationViewController();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1 & 1);
  v3 = v1;
  return sub_1D29AA94C(v1);
}

uint64_t sub_1D29AAC0C(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for _PresentationViewController();
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1 & 1);
  return sub_1D29AA94C(0);
}

uint64_t View.postToPhotosSharedAlbumSheet(isPresented:items:photoLibrary:defaultAlbumIdentifier:completion:)()
{
  OUTLINED_FUNCTION_10();
  __src[3] = v3;
  __src[4] = v4;
  __src[5] = v5;
  __src[6] = MEMORY[0x1E69E7CC0];
  __src[7] = v6;
  __src[8] = v7;
  __src[9] = v2;

  v8 = v1;

  sub_1D29AAE6C(v0, v2);
  OUTLINED_FUNCTION_36();
  memcpy(__dst, __src, 0x50uLL);
  return sub_1D29AAE7C(__dst);
}

{
  OUTLINED_FUNCTION_10();
  __src[3] = v3;
  __src[4] = v4;
  __src[5] = MEMORY[0x1E69E7CC0];
  __src[6] = v5;
  __src[7] = v6;
  __src[8] = v7;
  __src[9] = v2;

  v8 = v1;

  sub_1D29AAE6C(v0, v2);
  OUTLINED_FUNCTION_36();
  memcpy(__dst, __src, 0x50uLL);
  return sub_1D29AAE7C(__dst);
}

uint64_t sub_1D29AAE6C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D29AAF84()
{
  v3 = *v0;
  v4 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
  sub_1D29C3F64();
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x50uLL);
  sub_1D29AEA2C(v0, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBD8, &qword_1D29C5AD8);
  sub_1D29AEFD4(&qword_1EC6FDBE0, &qword_1EC6FDBD8, &qword_1D29C5AD8, MEMORY[0x1E697FDF8]);
  sub_1D29ADB4C();
  sub_1D29C3EB4();
}

uint64_t sub_1D29AB0F4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
  sub_1D29C3F64();
  v5 = *(a1 + 3);
  v4 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v9 = *(a1 + 7);
  v8 = *(a1 + 8);
  v10 = *(a1 + 9);
  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v9;
  *(a2 + 64) = v8;
  *(a2 + 72) = v10;

  v11 = v9;
  return sub_1D29AAE6C(v8, v10);
}

void *sub_1D29AB208()
{
  v1 = sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = *(v0 + 56);
  sub_1D29C40B4();
  sub_1D29AB398();
  sub_1D29C4064();
  sub_1D29AEB78(0, &qword_1EC6FDBF0, 0x1E69790F8);
  (*(v3 + 16))(v7, v9, v1);
  v11 = sub_1D29C44E4();
  [v11 setModalInPresentation_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBF8, &qword_1D29C5AE8);
  sub_1D29C3DB4();
  v12 = v15;
  [v11 setDelegate_];

  (*(v3 + 8))(v9, v1);
  return v11;
}

id sub_1D29AB398()
{
  v1 = sub_1D29C4054();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosPickerItem(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + 40);
  v10 = *(v9 + 16);
  v38[0] = v0;
  if (!v10)
  {
    v19 = *(v0 + 48);
    v20 = *(v19 + 16);
    if (!v20)
    {
      v13 = MEMORY[0x1E69E7CC0];
      goto LABEL_23;
    }

    v22 = *(v2 + 16);
    v21 = v2 + 16;
    v23 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v39 = *(v21 + 56);
    v40 = v22;
    v24 = (v21 - 8);
    v13 = MEMORY[0x1E69E7CC0];
    v38[1] = v21;
    while (1)
    {
      v40(v4, v23, v1);
      v25 = sub_1D29C4044();
      if (v25)
      {
        v26 = v25;
        v27 = [v26 itemIdentifier];
        if (v27)
        {
          v28 = v27;
          v29 = sub_1D29C4374();
          v31 = v30;

          (*v24)(v4, v1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1D29AE070(0, *(v13 + 2) + 1, 1, v13);
          }

          v33 = *(v13 + 2);
          v32 = *(v13 + 3);
          if (v33 >= v32 >> 1)
          {
            v13 = sub_1D29AE070((v32 > 1), v33 + 1, 1, v13);
          }

          *(v13 + 2) = v33 + 1;
          v34 = &v13[16 * v33];
          *(v34 + 4) = v29;
          *(v34 + 5) = v31;
          goto LABEL_20;
        }
      }

      (*v24)(v4, v1);
LABEL_20:
      v23 += v39;
      if (!--v20)
      {
        goto LABEL_23;
      }
    }
  }

  v11 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = *(v6 + 72);
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D29AE64C(v11, v8);
    v15 = *v8;
    v14 = v8[1];

    sub_1D29AE6C0(v8, type metadata accessor for PhotosPickerItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1D29AE070(0, *(v13 + 2) + 1, 1, v13);
    }

    v17 = *(v13 + 2);
    v16 = *(v13 + 3);
    if (v17 >= v16 >> 1)
    {
      v13 = sub_1D29AE070((v16 > 1), v17 + 1, 1, v13);
    }

    *(v13 + 2) = v17 + 1;
    v18 = &v13[16 * v17];
    *(v18 + 4) = v15;
    *(v18 + 5) = v14;
    v11 += v12;
    --v10;
  }

  while (v10);
LABEL_23:
  v35 = [objc_allocWithZone(MEMORY[0x1E6979170]) init];
  if (*(v38[0] + 32))
  {
    v36 = sub_1D29C4364();
  }

  else
  {
    v36 = 0;
  }

  [v35 setDefaultAlbumIdentifier_];

  sub_1D29AEA9C(v13, v35);
  return v35;
}

uint64_t sub_1D29AB764()
{
  v0 = sub_1D29C4284();
  OUTLINED_FUNCTION_31();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29C4274();
  sub_1D29AB398();
  sub_1D29C4204();
  sub_1D29C44C4();
  return (*(v2 + 8))(v5, v0);
}

id sub_1D29AB83C()
{
  v1 = type metadata accessor for _PHPickerViewControllerForSharedAlbums.Coordinator();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR____TtCV17_PhotosUI_SwiftUI38_PHPickerViewControllerForSharedAlbums11Coordinator_pickerViewControllerForSharedAlbums], v0, 0x50uLL);
  sub_1D29AEA64(v0, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

void *sub_1D29AB908()
{
  v1 = *(v0 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUI38_PHPickerViewControllerForSharedAlbums11Coordinator_pickerViewControllerForSharedAlbums);
  v2 = *(v0 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUI38_PHPickerViewControllerForSharedAlbums11Coordinator_pickerViewControllerForSharedAlbums + 8);
  v3 = *(v0 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUI38_PHPickerViewControllerForSharedAlbums11Coordinator_pickerViewControllerForSharedAlbums + 16);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
  result = MEMORY[0x1D38A3CF0](&v5);
  if (v5 == 1)
  {
    v6 = v1;
    v7 = v2;
    v8 = v3;
    v5 = 0;
    return sub_1D29C3F54();
  }

  return result;
}

void sub_1D29AB9A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUI38_PHPickerViewControllerForSharedAlbums11Coordinator_pickerViewControllerForSharedAlbums + 64);
  if (v4)
  {
    if (!a3 || a2)
    {
      v11 = OUTLINED_FUNCTION_11();
      sub_1D29AAE6C(v11, v12);
      v4(0, 0);
      v13 = OUTLINED_FUNCTION_11();

      sub_1D29AEB68(v13, v14);
    }

    else
    {
      v6 = OUTLINED_FUNCTION_11();
      sub_1D29AAE6C(v6, v7);
      v8 = a3;
      v4(a3, 1);
      v9 = OUTLINED_FUNCTION_11();
      sub_1D29AEB68(v9, v10);
    }
  }
}

id sub_1D29ABB78(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1D29ABC68()
{
  result = qword_1EC6FDA40;
  if (!qword_1EC6FDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDA40);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx07_Photosb1_aB025_PostToSharedAlbumModifer33_3BA943E6D7A29AC315168BE52F028B99LLVGAaBHPxAaBHD1__AhA0C8ModifierHPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_1D29C3C64();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1D29ABD2C()
{
  result = qword_1EC6FDA48;
  if (!qword_1EC6FDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDA48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s6ResultOyyts5Error_pGIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D29ABDC0(uint64_t a1, int a2)
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

uint64_t sub_1D29ABDE0(uint64_t result, int a2, int a3)
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

uint64_t sub_1D29ABEA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D29ABEE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D29ABF54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D29ABF94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D29AC084@<X0>(void *a1@<X8>)
{
  memcpy(v4, v1, sizeof(v4));
  result = sub_1D29AB83C();
  *a1 = result;
  return result;
}

uint64_t sub_1D29AC0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29AEB0C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D29AC12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29AEB0C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D29AC190(uint64_t a1)
{
  sub_1D29AEB0C();
  sub_1D29C3D84();
  __break(1u);
}

id sub_1D29AC1B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D29C3FA4();
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D29C3FC4();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Photo(0);
  sub_1D29AD6D8(&qword_1EC6FDB80, type metadata accessor for Photo, &unk_1D29C5E4C);
  v11 = sub_1D29C3B24();
  v26 = v2;
  v12 = sub_1D29B0E54(sub_1D29AE798, v25, v11);

  if (v12)
  {
    v13 = PhotosPickerItem.itemProvider.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;

    v15 = sub_1D29C4494();

    return v15;
  }

  else
  {
    sub_1D29AEB78(0, &qword_1EC6FDB88, 0x1E69E9610);
    v17 = sub_1D29C44A4();
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    aBlock[4] = sub_1D29AE7B8;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D29B144C;
    aBlock[3] = &block_descriptor_69;
    v19 = _Block_copy(aBlock);

    sub_1D29C3FB4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D29AD6D8(&qword_1EC6FDB90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB98, &qword_1D29C5AA8);
    sub_1D29AEFD4(&qword_1EC6FDBA0, &qword_1EC6FDB98, &qword_1D29C5AA8, MEMORY[0x1E69E6328]);
    sub_1D29C4554();
    MEMORY[0x1D38A4260](0, v10, v7, v19);
    _Block_release(v19);

    (*(v24 + 8))(v7, v5);
    (*(v22 + 8))(v10, v23);
    v20 = [objc_opt_self() discreteProgressWithTotalUnitCount_];

    return v20;
  }
}

id sub_1D29AC600(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D29C3FA4();
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D29C3FC4();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Movie(0);
  sub_1D29AD6D8(&qword_1EC6FDBC0, type metadata accessor for Movie, &unk_1D29C5E14);
  v11 = sub_1D29C3B24();
  v26 = v2;
  v12 = sub_1D29B0E54(sub_1D29AF044, v25, v11);

  if (v12)
  {
    v13 = PhotosPickerItem.itemProvider.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;

    v15 = sub_1D29C4494();

    return v15;
  }

  else
  {
    sub_1D29AEB78(0, &qword_1EC6FDB88, 0x1E69E9610);
    v17 = sub_1D29C44A4();
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    aBlock[4] = sub_1D29AE92C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D29B144C;
    aBlock[3] = &block_descriptor_82;
    v19 = _Block_copy(aBlock);

    sub_1D29C3FB4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D29AD6D8(&qword_1EC6FDB90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB98, &qword_1D29C5AA8);
    sub_1D29AEFD4(&qword_1EC6FDBA0, &qword_1EC6FDB98, &qword_1D29C5AA8, MEMORY[0x1E69E6328]);
    sub_1D29C4554();
    MEMORY[0x1D38A4260](0, v10, v7, v19);
    _Block_release(v19);

    (*(v24 + 8))(v7, v5);
    (*(v22 + 8))(v10, v23);
    v20 = [objc_opt_self() discreteProgressWithTotalUnitCount_];

    return v20;
  }
}

uint64_t sub_1D29ACA48(uint64_t a1, void (*a2)(void *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBA8, &qword_1D29C5AB0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v11 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBB0, &qword_1D29C5AB8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - v7);
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v8 = *v5;
  }

  else
  {
    sub_1D29AE718();
    v9 = type metadata accessor for Photo(0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  }

  swift_storeEnumTagMultiPayload();
  a2(v8);
  return sub_1D29AEF28(v8, &qword_1EC6FDBB0, &qword_1D29C5AB8);
}

uint64_t sub_1D29ACBEC(uint64_t a1, void (*a2)(void *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBC8, &qword_1D29C5AC8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v11 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBD0, &qword_1D29C5AD0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - v7);
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v8 = *v5;
  }

  else
  {
    sub_1D29AE718();
    v9 = type metadata accessor for Movie(0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  }

  swift_storeEnumTagMultiPayload();
  a2(v8);
  return sub_1D29AEF28(v8, &qword_1EC6FDBD0, &qword_1D29C5AD0);
}

uint64_t sub_1D29ACD90(void (*a1)(char *), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v12 = a5(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  swift_storeEnumTagMultiPayload();
  a1(v11);
  return sub_1D29AEF28(v11, a3, a4);
}

void sub_1D29ACE6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB78, &qword_1D29C5AA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  v8 = sub_1D29AC1B8(sub_1D29AE770, v7);
}

void sub_1D29ACFBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBB8, &qword_1D29C5AC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  v8 = sub_1D29AC600(sub_1D29AE87C, v7);
}

uint64_t sub_1D29AD10C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB68, &qword_1D29C5A90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBB0, &qword_1D29C5AB8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v6 - v3);
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6[1] = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB78, &qword_1D29C5AA0);
    return sub_1D29C4414();
  }

  else
  {
    sub_1D29AE9CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB78, &qword_1D29C5AA0);
    return sub_1D29C4424();
  }
}

uint64_t sub_1D29AD288(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB70, &qword_1D29C5A98);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBD0, &qword_1D29C5AD0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v6 - v3);
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6[1] = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBB8, &qword_1D29C5AC0);
    return sub_1D29C4414();
  }

  else
  {
    sub_1D29AE9CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBB8, &qword_1D29C5AC0);
    return sub_1D29C4424();
  }
}

uint64_t sub_1D29AD404(unsigned int a1)
{
  sub_1D29C3E14();
  v2 = sub_1D29C3E14();
  v3 = sub_1D29C3E14();
  v4 = 0;
  if (v2 != v3)
  {
    sub_1D29C3E14();
    sub_1D29C3E14();
    *v1 = sub_1D29C3E14();
    v4 = v2;
  }

  return v4 | ((v2 == v3) << 8);
}

uint64_t sub_1D29AD4A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1D29AD4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1D29C4364();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithItem:a1 typeIdentifier:v5];
  swift_unknownObjectRelease();

  return v6;
}

id sub_1D29AD574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D29C43C4();

  if (a2)
  {
    sub_1D29AEB78(0, &unk_1EC6FDB48, 0x1E69CD9E8);
    v5 = sub_1D29C43C4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 initWithActivityItems:v4 applicationActivities:v5];

  return v6;
}

uint64_t sub_1D29AD620@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_22();
  *a1 = result;
  return result;
}

uint64_t sub_1D29AD6D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D29ADB4C()
{
  result = qword_1EC6FDAD0;
  if (!qword_1EC6FDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDAD0);
  }

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

unint64_t sub_1D29ADC60()
{
  result = qword_1EC6FDAF8;
  if (!qword_1EC6FDAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDAD8, &qword_1D29C5A10);
    sub_1D29AEFD4(&qword_1EC6FDB00, &qword_1EC6FDAE8, &qword_1D29C5A20, MEMORY[0x1E697FDF8]);
    sub_1D29AEFD4(&qword_1EC6FDB08, &qword_1EC6FDB10, &qword_1D29C5A30, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDAF8);
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

uint64_t sub_1D29ADDB4()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D29ADE60;

  return sub_1D29A74F4(v3, v4, v5, v0 + 32);
}

uint64_t sub_1D29ADE60()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return v3();
}

uint64_t sub_1D29AE01C@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_22();
  *a1 = result;
  return result;
}

uint64_t sub_1D29AE04C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

char *sub_1D29AE070(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBE8, &qword_1D29C5AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D29AE190(char *result, uint64_t a2, void *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_8(result, a2, a3);
  }

  return result;
}

void sub_1D29AE1A8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_27();
  if (v7 < v6 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC08, &qword_1D29C5AF0), OUTLINED_FUNCTION_3(), v4 + *(v8 + 72) * v3 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC08, &qword_1D29C5AF0);
    v10 = OUTLINED_FUNCTION_6();

    MEMORY[0x1EEE6BD00](v10);
  }

  else if (a3 != v4)
  {
    v9 = OUTLINED_FUNCTION_6();

    MEMORY[0x1EEE6BCF8](v9);
  }
}

void sub_1D29AE288(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_27();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_3(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_6();

    MEMORY[0x1EEE6BD00](v12);
  }

  else if (a3 != v5)
  {
    v11 = OUTLINED_FUNCTION_6();

    MEMORY[0x1EEE6BCF8](v11);
  }
}

unint64_t sub_1D29AE344(uint64_t a1, uint64_t a2)
{
  sub_1D29C4614();
  sub_1D29C4394();
  v4 = sub_1D29C4644();

  return sub_1D29AE3BC(a1, a2, v4);
}

unint64_t sub_1D29AE3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1D29C45E4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_1D29AE470(uint64_t a1, void *a2)
{
  v3 = sub_1D29C4324();

  [a2 setUserInfo_];
}

void sub_1D29AE4F0(uint64_t a1, void *a2)
{
  sub_1D29AEB78(0, &qword_1EE087930, 0x1E696ACA0);
  v3 = sub_1D29C43C4();
  [a2 setAttachments_];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_1D29AE5C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D29AE614(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D29AE64C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPickerItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D29AE6C0(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D29AE718()
{
  OUTLINED_FUNCTION_27();
  v1(0);
  OUTLINED_FUNCTION_3();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t objectdestroy_62Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_3();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x1EEE6BDD0](v2, v5 + v6, v4 | 7);
}

uint64_t sub_1D29AE8A4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1D29AE974()
{
  OUTLINED_FUNCTION_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_11();
  v4(v3);
  return v0;
}

uint64_t sub_1D29AE9CC()
{
  OUTLINED_FUNCTION_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_11();
  v4(v3);
  return v0;
}

void sub_1D29AEA9C(uint64_t a1, void *a2)
{
  v3 = sub_1D29C43C4();

  [a2 setItemIdentifiers_];
}

unint64_t sub_1D29AEB0C()
{
  result = qword_1EC6FDC00;
  if (!qword_1EC6FDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDC00);
  }

  return result;
}

uint64_t sub_1D29AEB68(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D29AEB78(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1D29AEBCC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1D29AEC68(uint64_t a1)
{
  result = sub_1D29C3AD4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_1D29AECE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D29AED28(uint64_t result, int a2, int a3)
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

unint64_t sub_1D29AED7C()
{
  result = qword_1EC6FDC68;
  if (!qword_1EC6FDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDC68);
  }

  return result;
}

uint64_t sub_1D29AEF28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D29AEF80()
{
  result = qword_1EC6FDC98;
  if (!qword_1EC6FDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDC98);
  }

  return result;
}

uint64_t sub_1D29AEFD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 24) + ((*(v1 + 248) + 32) & ~*(v1 + 248)) + *(v1 + 176) * a1;

  return sub_1D29AE64C(v4, v3);
}

uint64_t OUTLINED_FUNCTION_13(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E6965BF8];

  return sub_1D29AEFD4(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x1EEDC4190](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 80);

  return MEMORY[0x1EEE6D278](a11, a12, v14);
}

uint64_t OUTLINED_FUNCTION_24(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

id OUTLINED_FUNCTION_25()
{

  return [v0 (v1 + 1595)];
}

id OUTLINED_FUNCTION_34(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_35()
{

  return MEMORY[0x1EEE6D338](v0, v1, v2);
}

void OUTLINED_FUNCTION_36()
{

  JUMPOUT(0x1D38A3C70);
}

uint64_t PhotosPickerItem.loadTransferable<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D29AF4B4, 0, 0);
}

uint64_t sub_1D29AF4B4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  sub_1D29C4534();
  *v4 = v0;
  v4[1] = sub_1D29AF5D0;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1D29AF5D0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D29AF708, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_9();

    return v2();
  }
}

uint64_t sub_1D29AF708()
{

  OUTLINED_FUNCTION_9();

  return v0();
}

void static PHLivePhoto.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_48();
  v22[1] = v2;
  v3 = sub_1D29C3BD4();
  OUTLINED_FUNCTION_31();
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_52();
  v13 = PFCurrentPlatformLivePhotoBundleType();
  if (v13)
  {
    v14 = v13;
    sub_1D29C3BA4();

    v15 = *(v5 + 32);
    v15(v0, v1, v3);
    v16 = *(v5 + 16);
    v17 = OUTLINED_FUNCTION_86();
    v16(v17);
    (v16)(v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v3);
    v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v19 = swift_allocObject();
    v15(v19 + v18, v10, v3);
    sub_1D29AEB78(0, &qword_1EC6FDDE0, 0x1E69788C8);
    sub_1D29B1818();
    sub_1D29C3B34();
    v20 = OUTLINED_FUNCTION_108();
    v21(v20);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D29AF968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D29AF9FC, 0, 0);
}

uint64_t sub_1D29AF9FC()
{
  v1 = objc_opt_self();
  v2 = sub_1D29C3AE4();
  sub_1D29C3B74();
  v3 = sub_1D29C4364();

  *(v0 + 16) = 0;
  v4 = [v1 objectWithItemProviderData:v2 typeIdentifier:v3 error:v0 + 16];

  v5 = *(v0 + 16);
  if (v4)
  {
    **(v0 + 24) = v4;
    OUTLINED_FUNCTION_9();
    v11 = v6;
    v7 = v5;
    v8 = v11;
  }

  else
  {
    v9 = v5;
    sub_1D29C3A74();

    swift_willThrow();
    OUTLINED_FUNCTION_9();
  }

  return v8();
}

uint64_t static PhotosPickerSelectionBehavior.default.getter()
{
  if (qword_1EE0877A0 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_1EE0877A0);
  }

  v1 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  __swift_project_value_buffer(v1, qword_1EE087670);
  OUTLINED_FUNCTION_1_0();
  return sub_1D29B1940();
}

uint64_t sub_1D29AFC54(uint64_t a1, void (*a2)(void), uint64_t *a3, unsigned int *a4, void (*a5)(void))
{
  v8 = (a2)(0);
  __swift_allocate_value_buffer(v8, a3);
  v9 = OUTLINED_FUNCTION_60();
  v11 = __swift_project_value_buffer(v9, v10);
  v12 = *a4;
  a5(0);
  OUTLINED_FUNCTION_3();
  v15 = *(v14 + 104);

  return v15(v11, v12, v13);
}

uint64_t static PhotosPickerSelectionBehavior.ordered.getter()
{
  if (qword_1EC6FD8B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  __swift_project_value_buffer(v1, qword_1EC6FDD20);
  OUTLINED_FUNCTION_1_0();
  return sub_1D29B1940();
}

uint64_t static PhotosPickerSelectionBehavior.continuous.getter()
{
  if (qword_1EC6FD8C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  __swift_project_value_buffer(v1, qword_1EC6FDD38);
  OUTLINED_FUNCTION_1_0();
  return sub_1D29B1940();
}

uint64_t static PhotosPickerSelectionBehavior.continuousAndOrdered.getter()
{
  if (qword_1EC6FD8C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  __swift_project_value_buffer(v1, qword_1EC6FDD50);
  OUTLINED_FUNCTION_1_0();
  return sub_1D29B1940();
}

uint64_t static PhotosPickerStyle.presentation.getter()
{
  if (qword_1EC6FD8D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PhotosPickerStyle(0);
  __swift_project_value_buffer(v0, &unk_1EC6FDD68);
  return OUTLINED_FUNCTION_22_0();
}

void sub_1D29B0050()
{
  OUTLINED_FUNCTION_119();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1D29C3FF4();
  OUTLINED_FUNCTION_31();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_0();
  v11 = type metadata accessor for PhotosPickerStyle(0);
  __swift_allocate_value_buffer(v11, v6);
  v12 = __swift_project_value_buffer(v11, v6);
  v4();
  (*(v9 + 32))(v12, v0, v7);
  *(v12 + *(v11 + 20)) = v2;
  OUTLINED_FUNCTION_118();
}

uint64_t static PhotosPickerStyle.inline.getter()
{
  if (qword_1EC6FD8D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PhotosPickerStyle(0);
  __swift_project_value_buffer(v0, &unk_1EC6FDD80);
  return OUTLINED_FUNCTION_22_0();
}

uint64_t static PhotosPickerStyle.compact.getter()
{
  if (qword_1EC6FD8E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PhotosPickerStyle(0);
  __swift_project_value_buffer(v0, &unk_1EC6FDD98);
  return OUTLINED_FUNCTION_22_0();
}

uint64_t static PhotosPickerStyle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_27();
  if (sub_1D29C3FD4())
  {
    OUTLINED_FUNCTION_117();
    v3 = *(v1 + v2) ^ *(v0 + v2) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t PhotosPickerStyle.hash(into:)(uint64_t a1)
{
  sub_1D29C3FF4();
  OUTLINED_FUNCTION_44();
  sub_1D29B18D8(v1, v2, MEMORY[0x1E6979008]);
  sub_1D29C4344();
  OUTLINED_FUNCTION_117();
  return sub_1D29C4634();
}

uint64_t PhotosPickerStyle.hashValue.getter()
{
  sub_1D29C4614();
  sub_1D29C3FF4();
  OUTLINED_FUNCTION_44();
  sub_1D29B18D8(v0, v1, MEMORY[0x1E6979008]);
  sub_1D29C4344();
  OUTLINED_FUNCTION_117();
  sub_1D29C4634();
  return sub_1D29C4644();
}

uint64_t sub_1D29B0384(uint64_t a1, uint64_t a2)
{
  sub_1D29C4614();
  sub_1D29C3FF4();
  sub_1D29B18D8(&qword_1EC6FDDF8, MEMORY[0x1E6979000], MEMORY[0x1E6979008]);
  sub_1D29C4344();
  sub_1D29C4634();
  return sub_1D29C4644();
}

uint64_t static PhotosPickerItem.EncodingDisambiguationPolicy.automatic.getter()
{
  if (qword_1EE087928 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy(0);
  __swift_project_value_buffer(v1, qword_1EE0875A8);
  OUTLINED_FUNCTION_0_0();
  return sub_1D29B1940();
}

uint64_t static PhotosPickerItem.EncodingDisambiguationPolicy.current.getter()
{
  if (qword_1EC6FD8F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy(0);
  __swift_project_value_buffer(v1, qword_1EC6FDDB0);
  OUTLINED_FUNCTION_0_0();
  return sub_1D29B1940();
}

uint64_t static PhotosPickerItem.EncodingDisambiguationPolicy.compatible.getter()
{
  if (qword_1EC6FD8F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy(0);
  __swift_project_value_buffer(v1, qword_1EC6FDDC8);
  OUTLINED_FUNCTION_0_0();
  return sub_1D29B1940();
}

uint64_t sub_1D29B0674(uint64_t a1, void (*a2)(void))
{
  a2(0);
  v2 = OUTLINED_FUNCTION_56();
  sub_1D29B18D8(v2, v3, v4);
  OUTLINED_FUNCTION_84();

  return sub_1D29C4344();
}

uint64_t sub_1D29B0728()
{
  OUTLINED_FUNCTION_23_0();
  sub_1D29C4614();
  v0(0);
  v1 = OUTLINED_FUNCTION_56();
  sub_1D29B18D8(v1, v2, v3);
  sub_1D29C4344();
  return sub_1D29C4644();
}

uint64_t sub_1D29B07F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1D29C4614();
  a4(0);
  v5 = OUTLINED_FUNCTION_56();
  sub_1D29B18D8(v5, v6, v7);
  sub_1D29C4344();
  return sub_1D29C4644();
}

uint64_t PhotosPickerItem.itemIdentifier.getter()
{
  if (*(v0 + 16) == 1)
  {
  }

  return OUTLINED_FUNCTION_11();
}

void PhotosPickerItem.loadTransferable<A>(type:completionHandler:)(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v29 = v10;
  v11 = sub_1D29C3FA4();
  OUTLINED_FUNCTION_31();
  v28 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_0();
  sub_1D29C3FC4();
  OUTLINED_FUNCTION_31();
  v26 = v15;
  v27 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_87();
  v16 = sub_1D29C3B24();
  v31 = v1;
  v17 = sub_1D29B0E54(sub_1D29AE798, &v30, v16);

  if (v17)
  {
    v18 = PhotosPickerItem.itemProvider.getter();
    v19 = swift_allocObject();
    v19[2] = v7;
    v19[3] = v5;
    v19[4] = v29;
    v19[5] = v9;

    sub_1D29C4494();

    OUTLINED_FUNCTION_46();
  }

  else
  {
    sub_1D29AEB78(0, &qword_1EC6FDB88, 0x1E69E9610);
    v20 = sub_1D29C44A4();
    v21 = swift_allocObject();
    v21[2] = v7;
    v21[3] = v5;
    v21[4] = v29;
    v21[5] = v9;
    v32[4] = sub_1D29B19B8;
    v32[5] = v21;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 1107296256;
    v32[2] = sub_1D29B144C;
    v32[3] = &block_descriptor_0;
    v22 = _Block_copy(v32);

    sub_1D29C3FB4();
    v32[0] = MEMORY[0x1E69E7CC0];
    sub_1D29B18D8(&qword_1EC6FDB90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB98, &qword_1D29C5AA8);
    sub_1D29C1524(&qword_1EC6FDBA0, &qword_1EC6FDB98, &qword_1D29C5AA8, MEMORY[0x1E69E6328]);
    sub_1D29C4554();
    OUTLINED_FUNCTION_98();
    MEMORY[0x1D38A4260]();
    _Block_release(v22);

    (*(v28 + 8))(v2, v11);
    (*(v26 + 8))(v3, v27);
    [objc_opt_self() discreteProgressWithTotalUnitCount_];
    OUTLINED_FUNCTION_46();

    v25 = v23;
  }
}

BOOL sub_1D29B0C84(uint64_t a1)
{
  v1 = PhotosPickerItem.itemProvider.getter();
  v2 = sub_1D29C3B94();
  v3 = [v1 registeredContentTypesConformingToContentType_];

  sub_1D29C3BD4();
  v4 = sub_1D29C43D4();

  v5 = *(v4 + 16);

  return v5 != 0;
}

uint64_t PhotosPickerItem.itemProvider.getter()
{
  sub_1D29C4054();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_9_0();
  v2 = OUTLINED_FUNCTION_50();
  type metadata accessor for PhotosPickerItem.Content(v2);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_81();
  v4 = type metadata accessor for PhotosPickerItem(0);
  OUTLINED_FUNCTION_32_0(v4);
  sub_1D29B1940();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v0;
  }

  v6 = OUTLINED_FUNCTION_56();
  v7(v6);
  v5 = sub_1D29C4004();
  v8 = OUTLINED_FUNCTION_108();
  v9(v8);
  return v5;
}

BOOL sub_1D29B0E54(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = sub_1D29C3BD4();
    OUTLINED_FUNCTION_75(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_1D29B0F20(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  sub_1D29C4534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE140, &qword_1D29C6910);
  v7 = sub_1D29C4654();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v15 = a4;
  v16 = a5;
  v11 = sub_1D29C4654();
  sub_1D29B110C(sub_1D29C2C04, v11, v10);
  v14(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D29B1094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, a2);
}

uint64_t sub_1D29B110C@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v13, a2[3]);
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
  }

  sub_1D29C4654();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D29B1320(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  sub_1D29C4534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE140, &qword_1D29C6910);
  v5 = sub_1D29C4654();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_storeEnumTagSinglePayload(&v10 - v7, 1, 1, a3);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D29B144C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D29B1490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D29C4534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE140, &qword_1D29C6910);
  v9 = sub_1D29C4434();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  (*(v10 + 16))(&v17 - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  (*(v10 + 32))(v14 + v13, v12, v9);
  PhotosPickerItem.loadTransferable<A>(type:completionHandler:)(a3);
  v16 = v15;
}

uint64_t sub_1D29B1638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1D29C3BD4();
  OUTLINED_FUNCTION_25_0(v8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D29B1728;

  return sub_1D29AF968(a1, a2, a3, v3 + v10);
}

uint64_t sub_1D29B1728()
{

  OUTLINED_FUNCTION_9();

  return v0();
}

unint64_t sub_1D29B1818()
{
  result = qword_1EC6FDDE8;
  if (!qword_1EC6FDDE8)
  {
    sub_1D29AEB78(255, &qword_1EC6FDDE0, 0x1E69788C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDDE8);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D29B18D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D29B1940()
{
  OUTLINED_FUNCTION_27();
  v1(0);
  OUTLINED_FUNCTION_3();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D29B1A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D29C4534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE140, &qword_1D29C6910);
  v4 = sub_1D29C4434();
  return sub_1D29B1A9C(a1, v4);
}

uint64_t sub_1D29B1A9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D29C4654();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_1D29C4414();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_1D29C4424();
  }
}

uint64_t PhotosPickerItem.init(itemIdentifier:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = *(type metadata accessor for PhotosPickerItem(0) + 28);
  *(v3 + v4) = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  type metadata accessor for PhotosPickerItem.Content(0);
  result = swift_storeEnumTagMultiPayload();
  *v3 = v1;
  *(v3 + 8) = v0;
  *(v3 + 16) = 1;
  *(v3 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

void PhotosPickerItem._filePromiseURL(contentType:)(uint64_t a1)
{
  OUTLINED_FUNCTION_119();
  sub_1D29C4054();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_0();
  v3 = OUTLINED_FUNCTION_50();
  type metadata accessor for PhotosPickerItem.Content(v3);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_0();
  v5 = type metadata accessor for PhotosPickerItem(0);
  OUTLINED_FUNCTION_32_0(v5);
  sub_1D29B1940();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D29C0528(v1, type metadata accessor for PhotosPickerItem.Content);
    sub_1D29C3AD4();
    v6 = OUTLINED_FUNCTION_109();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_71();
    v11(v10);
    sub_1D29C4024();
    v12 = OUTLINED_FUNCTION_60();
    v13(v12);
  }

  OUTLINED_FUNCTION_118();
}

uint64_t sub_1D29B1EC4()
{
  v21 = sub_1D29C4054();
  v0 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PhotosPickerItem.Content(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE0D0, &qword_1D29C68B0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = *(v10 + 56);
  sub_1D29B1940();
  sub_1D29B1940();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D29B1940();
    v14 = *v6;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = *&v12[v13];
      sub_1D29AEB78(0, &qword_1EC6FE0E0, 0x1E69E58C0);
      v16 = sub_1D29C4514();

LABEL_9:
      sub_1D29C0528(v12, type metadata accessor for PhotosPickerItem.Content);
      return v16 & 1;
    }
  }

  else
  {
    sub_1D29B1940();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v17 = v21;
      (*(v0 + 32))(v2, &v12[v13], v21);
      v16 = sub_1D29C4034();
      v18 = *(v0 + 8);
      v18(v2, v17);
      v18(v8, v17);
      goto LABEL_9;
    }

    (*(v0 + 8))(v8, v21);
  }

  sub_1D29C2974(v12, &qword_1EC6FE0D0);
  v16 = 0;
  return v16 & 1;
}

void sub_1D29B21F4(uint64_t a1)
{
  v1 = sub_1D29C4054();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosPickerItem.Content(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D29B1940();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    MEMORY[0x1D38A43D0](1);
    sub_1D29C4524();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    MEMORY[0x1D38A43D0](0);
    sub_1D29B18D8(&qword_1EC6FE1F0, MEMORY[0x1E6979020], MEMORY[0x1E6979028]);
    sub_1D29C4344();
    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1D29B23D4()
{
  sub_1D29C4614();
  sub_1D29B21F4(v1);
  return sub_1D29C4644();
}

uint64_t sub_1D29B2420(uint64_t a1)
{
  sub_1D29C4614();
  sub_1D29B21F4(v2);
  return sub_1D29C4644();
}

uint64_t static PhotosPickerItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_27();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (sub_1D29C45E4() & 1) == 0 || *(v1 + 16) != *(v0 + 16) || (sub_1D29B24F4(*(v1 + 24), *(v0 + 24)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PhotosPickerItem(0);

  return sub_1D29B1EC4();
}

uint64_t sub_1D29B24F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D29C3BD4();
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
    sub_1D29B18D8(&qword_1EC6FE0D8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
    v21 = sub_1D29C4354();
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

uint64_t sub_1D29B2708(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D29C4054();
  v72 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for PhotosPickerItem.Content(0);
  v7 = MEMORY[0x1EEE9AC00](v68);
  v9 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v54 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE0D0, &qword_1D29C68B0);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v54 - v12;
  v14 = sub_1D29C3BD4();
  v75 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v74 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v54 - v17;
  v18 = type metadata accessor for PhotosPickerItem(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v73 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v54 - v23);
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
    return 0;
  }

  if (!v25 || a1 == a2)
  {
    return 1;
  }

  v61 = v21;
  v62 = v13;
  v58 = v11;
  v59 = v9;
  v55 = v6;
  v57 = v4;
  v26 = 0;
  v27 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v65 = a1 + v27;
  v63 = a2 + v27;
  v70 = (v75 + 8);
  v71 = v75 + 16;
  v54 = (v72 + 32);
  v56 = (v72 + 8);
  v64 = *(v22 + 72);
  v28 = v76;
  v69 = &v54 - v23;
  v60 = v25;
  while (1)
  {
    result = sub_1D29B1940();
    if (v26 == v25)
    {
      goto LABEL_37;
    }

    v66 = v26;
    v30 = v73;
    sub_1D29B1940();
    result = *v24;
    if (*v24 != *v30 || v24[1] != v30[1])
    {
      result = sub_1D29C45E4();
      if ((result & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    if (*(v69 + 16) != *(v73 + 16))
    {
      goto LABEL_32;
    }

    v32 = *(v69 + 24);
    v33 = *(v73 + 24);
    v34 = *(v32 + 16);
    if (v34 != *(v33 + 16))
    {
      goto LABEL_32;
    }

    if (v34 && v32 != v33)
    {
      break;
    }

LABEL_20:
    v44 = v62;
    v45 = *(v67 + 48);
    sub_1D29B1940();
    sub_1D29B1940();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v46 = v59;
      sub_1D29B1940();
      v47 = *v46;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

LABEL_31:
        sub_1D29C2974(v44, &qword_1EC6FE0D0);
LABEL_32:
        sub_1D29C0528(v73, type metadata accessor for PhotosPickerItem);
        sub_1D29C0528(v69, type metadata accessor for PhotosPickerItem);
        return 0;
      }

      v48 = *(v44 + v45);
      sub_1D29AEB78(0, &qword_1EC6FE0E0, 0x1E69E58C0);
      v49 = sub_1D29C4514();
    }

    else
    {
      v50 = v58;
      sub_1D29B1940();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v56)(v50, v57);
        goto LABEL_31;
      }

      v51 = v55;
      v52 = v57;
      (*v54)(v55, v44 + v45, v57);
      v49 = sub_1D29C4034();
      v53 = *v56;
      (*v56)(v51, v52);
      v53(v50, v52);
    }

    sub_1D29C0528(v44, type metadata accessor for PhotosPickerItem.Content);
    if ((v49 & 1) == 0)
    {
      goto LABEL_32;
    }

    v26 = v66 + 1;
    sub_1D29C0528(v73, type metadata accessor for PhotosPickerItem);
    v24 = v69;
    sub_1D29C0528(v69, type metadata accessor for PhotosPickerItem);
    result = 1;
    v25 = v60;
    if (v26 == v60)
    {
      return result;
    }
  }

  v35 = 0;
  v36 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v72 = v32 + v36;
  v37 = v33 + v36;
  while (v35 < *(v32 + 16))
  {
    v38 = *(v75 + 72) * v35;
    v39 = *(v75 + 16);
    result = v39(v28, v72 + v38, v14);
    if (v35 >= *(v33 + 16))
    {
      goto LABEL_36;
    }

    v40 = v74;
    v39(v74, v37 + v38, v14);
    sub_1D29B18D8(&qword_1EC6FE0D8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
    v41 = sub_1D29C4354();
    v42 = *v70;
    v43 = v40;
    v28 = v76;
    (*v70)(v43, v14);
    result = (v42)(v28, v14);
    if ((v41 & 1) == 0)
    {
      goto LABEL_32;
    }

    if (v34 == ++v35)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1D29B2E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D29C45E4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void PhotosPickerItem.hash(into:)(uint64_t a1)
{
  sub_1D29C4394();
  sub_1D29C4634();
  sub_1D29C042C(a1, *(v1 + 24));
  type metadata accessor for PhotosPickerItem(0);
  sub_1D29B21F4(a1);
}

uint64_t PhotosPickerItem.hashValue.getter()
{
  sub_1D29C4614();
  sub_1D29C4394();
  sub_1D29C4634();
  sub_1D29C042C(v2, *(v0 + 24));
  type metadata accessor for PhotosPickerItem(0);
  sub_1D29B21F4(v2);
  return sub_1D29C4644();
}

uint64_t sub_1D29B300C(uint64_t a1)
{
  sub_1D29C4614();
  sub_1D29C4394();
  sub_1D29C4634();
  sub_1D29C042C(v3, *(v1 + 24));
  sub_1D29B21F4(v3);
  return sub_1D29C4644();
}

uint64_t sub_1D29B3084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v66 = a7;
  v67 = a5;
  v64 = a6;
  v63 = a4;
  v68 = a3;
  v69 = a2;
  v61 = a8;
  v9 = sub_1D29C4164();
  v58 = *(v9 - 1);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D29C42C4();
  v11 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D29C42F4();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v26 = sub_1D29B40C4();
  v55 = v27;
  v56 = v26;
  v54 = v28;
  v29 = objc_opt_self();
  v30 = [v29 isMultiLibraryModeEnabled];
  v31 = &selRef_imagePickerPhotoLibrary;
  if (!v30)
  {
    v31 = &selRef_sharedPhotoLibrary;
  }

  v32 = [v29 *v31];
  if (qword_1EE0877A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v21, qword_1EE087670);
  sub_1D29B1940();
  sub_1D29AE974();
  sub_1D29B1940();
  v33 = v32;
  sub_1D29C40B4();
  sub_1D29C40D4();
  (*(v11 + 16))(v13, v23, v57);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  (*(v58 + 16))(v53, v16, v59);
  sub_1D29C41D4();

  v59 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy;
  sub_1D29C0528(v16, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v20, &qword_1EC6FDE08);
  sub_1D29C0528(v23, type metadata accessor for PhotosPickerSelectionBehavior);
  v70 = 0;
  sub_1D29C3EE4();
  v34 = v72;
  v35 = v25;
  v52 = v25;
  v36 = v61;
  *v61 = v71;
  *(v36 + 1) = v34;
  *(v36 + 5) = swift_getKeyPath();
  v36[48] = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v38 = v37[11];
  *&v36[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  v39 = v55;
  *(v36 + 2) = v56;
  *(v36 + 3) = v39;
  *(v36 + 4) = v54;
  v40 = v60;
  v41 = v35;
  v42 = v62;
  (*(v60 + 16))(&v36[v37[12]], v41, v62);
  v36[v37[13]] = 1;

  v43 = sub_1D29C3E34();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_1D29C0528(v68, v59);
  sub_1D29C2974(v69, &qword_1EC6FDE08);
  sub_1D29C2974(v65, &qword_1EC6FDE10);
  (*(v40 + 8))(v52, v42);

  v51 = &v36[v37[14]];
  *v51 = v43;
  *(v51 + 1) = v45;
  v51[16] = v47 & 1;
  *(v51 + 3) = v49;
  return result;
}

double sub_1D29B36E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(__int128 *__return_ptr, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a5;
  v56 = a4;
  v58 = a3;
  v59 = a2;
  v8 = sub_1D29C4164();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D29C42C4();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D29C42F4();
  v53 = *(v22 - 8);
  v54 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v25 = sub_1D29B40C4();
  v48 = v26;
  v49 = v25;
  v47 = v27;
  v28 = objc_opt_self();
  v29 = [v28 isMultiLibraryModeEnabled];
  v30 = &selRef_imagePickerPhotoLibrary;
  if (!v29)
  {
    v30 = &selRef_sharedPhotoLibrary;
  }

  v31 = [v28 *v30];
  if (qword_1EE0877A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v19, qword_1EE087670);
  sub_1D29B1940();
  sub_1D29AE974();
  sub_1D29B1940();
  v32 = v31;
  sub_1D29C40B4();
  sub_1D29C40D4();
  (*(v45 + 16))(v44, v21, v46);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  (*(v51 + 16))(v50, v14, v52);
  sub_1D29C41D4();

  sub_1D29C0528(v14, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v18, &qword_1EC6FDE08);
  sub_1D29C0528(v21, type metadata accessor for PhotosPickerSelectionBehavior);
  v63[0] = 0;
  sub_1D29C3EE4();
  v33 = *(&v60 + 1);
  *a6 = v60;
  *(a6 + 8) = v33;
  *(a6 + 40) = swift_getKeyPath();
  *(a6 + 48) = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v35 = v34[11];
  *(a6 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  v36 = v48;
  *(a6 + 16) = v49;
  *(a6 + 24) = v36;
  *(a6 + 32) = v47;
  v38 = v53;
  v37 = v54;
  (*(v53 + 16))(a6 + v34[12], v24, v54);
  *(a6 + v34[13]) = 1;

  v56(&v60, v39);

  sub_1D29C0528(v58, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v59, &qword_1EC6FDE08);
  sub_1D29C2974(v57, &qword_1EC6FDE10);
  (*(v38 + 8))(v24, v37);
  v40 = a6 + v34[14];
  v41 = v61;
  v42 = v62;
  result = *&v60;
  *v40 = v60;
  *(v40 + 16) = v41;
  *(v40 + 24) = v42;
  return result;
}

void PhotosPicker.init(selection:matching:preferredItemEncoding:label:)(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v45 = v6;
  v46 = v5;
  v47 = v7;
  v48 = v8;
  v49 = v9;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_115(v14);
  OUTLINED_FUNCTION_31();
  v43 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_0();
  sub_1D29C42C4();
  OUTLINED_FUNCTION_31();
  v42 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v17 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v19 = OUTLINED_FUNCTION_25_0(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_88();
  v23 = sub_1D29C42F4();
  v24 = OUTLINED_FUNCTION_25_0(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_81();
  v50 = v13;
  v25 = sub_1D29B40C4();
  v40 = v26;
  v41 = v25;
  v39 = v27;
  v28 = objc_opt_self();
  [v28 isMultiLibraryModeEnabled];
  OUTLINED_FUNCTION_27_0();
  v30 = [v28 v29];
  if (qword_1EE0877A0 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_1EE0877A0);
  }

  __swift_project_value_buffer(v21, qword_1EE087670);
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  OUTLINED_FUNCTION_99();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v38 = v11;
  v31 = v30;
  sub_1D29C40B4();
  sub_1D29C40D4();
  v32 = OUTLINED_FUNCTION_62();
  v33(v32, v1, v42);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  v34 = OUTLINED_FUNCTION_62();
  v35(v34, v3, v43);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_42();
  sub_1D29C0528(v3, v36);
  sub_1D29C2974(v4, &qword_1EC6FDE08);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v1, v37);
  sub_1D29B4274(v41, v40, v39, v2, 1, v46, v47, v48, v44, v45);
  sub_1D29C0528(v49, v2);
  sub_1D29C2974(v38, &qword_1EC6FDE08);
  sub_1D29C2974(v50, &qword_1EC6FDE10);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D29B40C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE10, &qword_1D29C5F08);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D29AE974();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_1D29AE9CC();
  sub_1D29AE974();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_1D29AE9CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB20, &qword_1D29C5A50);
  sub_1D29C3F74();
  return v4;
}

uint64_t sub_1D29B4274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v30 = a7;
  v31 = a6;
  v29 = a5;
  v28 = a8;
  v32 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = sub_1D29B6738(0) & 1;
  *(a9 + 8) = v18;
  *(a9 + 40) = swift_getKeyPath();
  *(a9 + 48) = 0;
  v20 = type metadata accessor for PhotosPicker(0, a8, a10, v19);
  v21 = v20[11];
  *(a9 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  v22 = v20[12];
  v23 = sub_1D29C42F4();
  v24 = *(v23 - 8);
  (*(v24 + 16))(a9 + v22, a4, v23);
  *(a9 + v20[13]) = v29;

  v31(v25);

  (*(v24 + 8))(a4, v23);
  return (*(v32 + 32))(a9 + v20[14], v17, v28);
}

void PhotosPicker.init(selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t), uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48();
  v66 = v29;
  v67 = v28;
  v63 = v30;
  v64 = v31;
  v62 = v32;
  v65 = v33;
  sub_1D29C4164();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_0();
  sub_1D29C42C4();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_59();
  v36 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_8_0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v38 = OUTLINED_FUNCTION_25_0(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_51();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_28_0();
  v40 = OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63();
  sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v60 = v42;
  v61 = v41;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_69();
  v59 = v44;
  v45 = objc_opt_self();
  [v45 isMultiLibraryModeEnabled];
  OUTLINED_FUNCTION_27_0();
  v47 = [v45 v46];
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_71();
  sub_1D29B1940();
  v48 = v47;
  sub_1D29C40B4();
  sub_1D29C40D4();
  v49 = OUTLINED_FUNCTION_101();
  v50(v49, v27);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  v51 = OUTLINED_FUNCTION_110();
  v52(v51);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_41();
  sub_1D29C0528(v26, v53);
  v54 = OUTLINED_FUNCTION_85();
  sub_1D29C2974(v54, v55);
  OUTLINED_FUNCTION_40();
  sub_1D29C0528(v27, v56);
  (*(v60 + 32))(v59, v24, v61);
  sub_1D29B4274(v63, v64, v65, v59, 1, a21, a22, a23, v62, a24);
  v57 = OUTLINED_FUNCTION_108();
  sub_1D29C0528(v57, v58);
  sub_1D29C2974(v66, &qword_1EC6FDE08);
  sub_1D29C0528(v67, v25);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker.init(selection:matching:preferredItemEncoding:photoLibrary:label:)(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v45 = v5;
  v46 = v4;
  v47 = v6;
  v48 = v7;
  v9 = v8;
  v49 = v10;
  v51 = v11;
  v13 = v12;
  v44 = v14;
  sub_1D29C4164();
  OUTLINED_FUNCTION_31();
  v43 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_0();
  sub_1D29C42C4();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v39 = v17;
  v18 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v20 = OUTLINED_FUNCTION_25_0(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_88();
  v24 = sub_1D29C42F4();
  v25 = OUTLINED_FUNCTION_25_0(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_61();
  v50 = v13;
  v26 = sub_1D29B40C4();
  v41 = v27;
  v42 = v26;
  v40 = v28;
  v29 = qword_1EE0877A0;
  v30 = v9;
  if (v29 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_1EE0877A0);
  }

  __swift_project_value_buffer(v22, qword_1EE087670);
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v31 = v30;
  sub_1D29C40B4();
  sub_1D29C40D4();
  OUTLINED_FUNCTION_94();
  v32(v39, v1);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  v33 = OUTLINED_FUNCTION_62();
  v34(v33, v3, v43);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_42();
  sub_1D29C0528(v3, v35);
  v36 = OUTLINED_FUNCTION_87();
  sub_1D29C2974(v36, v37);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v1, v38);
  sub_1D29B4274(v42, v41, v40, v2, 0, v46, v47, v48, v44, v45);

  sub_1D29C0528(v49, v2);
  sub_1D29C2974(v51, &qword_1EC6FDE08);
  sub_1D29C2974(v50, &qword_1EC6FDE10);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker.init(selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void (*a22)(uint64_t), uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_48();
  v69 = v30;
  v59 = v31;
  v66 = v32;
  v67 = v33;
  v65 = v34;
  v68 = v35;
  sub_1D29C4164();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v64 = v37;
  OUTLINED_FUNCTION_26_0();
  sub_1D29C42C4();
  OUTLINED_FUNCTION_31();
  v61 = v39;
  v62 = v38;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v60 = v40;
  v41 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_8_0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v43 = OUTLINED_FUNCTION_25_0(v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_74();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_28_0();
  v45 = OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63();
  v58 = sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v63 = a21;
  sub_1D29C40B4();
  OUTLINED_FUNCTION_80();
  sub_1D29C40D4();
  (*(v61 + 16))(v60, v28, v62);
  sub_1D29C42E4();
  OUTLINED_FUNCTION_85();
  sub_1D29AE974();
  sub_1D29C4294();
  OUTLINED_FUNCTION_94();
  v50 = OUTLINED_FUNCTION_110();
  v51(v50);
  sub_1D29C41D4();
  OUTLINED_FUNCTION_41();
  sub_1D29C0528(v27, v52);
  OUTLINED_FUNCTION_99();
  sub_1D29C2974(v53, v54);
  OUTLINED_FUNCTION_40();
  sub_1D29C0528(v28, v55);
  (*(v47 + 32))(v29, v25, v58);
  sub_1D29B4274(v66, v67, v68, v29, 0, a22, a23, a24, v65, a25);

  sub_1D29C0528(v69, v64);
  OUTLINED_FUNCTION_99();
  sub_1D29C2974(v56, v57);
  sub_1D29C0528(v59, v26);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker.body.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v131 = v4;
  v118 = sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v116 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v8 = OUTLINED_FUNCTION_19_0(v7);
  v9 = type metadata accessor for PhotosPickerViewController(v8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  v13 = (v12 - v11);
  v14 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v119 = v16;
  v120 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + 16);
  v122 = *(v3 + 24);
  v123 = v17;
  v18 = sub_1D29C3F34();
  OUTLINED_FUNCTION_31();
  v115 = v19;
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v115 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE18, &qword_1D29C5F10);
  OUTLINED_FUNCTION_45();
  WitnessTable = swift_getWitnessTable();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE20, &qword_1D29C5F18);
  v25 = sub_1D29C3D14();
  v26 = sub_1D29C059C();
  v136 = v24;
  v137 = v25;
  v138 = v26;
  v139 = MEMORY[0x1E697C8E8];
  OUTLINED_FUNCTION_18_0();
  v128 = OUTLINED_FUNCTION_116(v27, v28);
  v129 = v18;
  v136 = v18;
  v137 = v22;
  v132 = WitnessTable;
  v133 = v22;
  v138 = WitnessTable;
  v139 = v128;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_31();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_53();
  v124 = v33;
  v130 = v9;
  v125 = sub_1D29C3D04();
  OUTLINED_FUNCTION_31();
  v127 = v34;
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v35);
  v126 = &v115 - v36;
  v37 = v1;
  if (sub_1D29B582C())
  {
    v38 = *(v14 + 16);
    v118 = WitnessTable;
    v39 = v120;
    v38(v120, v1, v3);
    v40 = *(v14 + 80);
    v117 = v30;
    v41 = (v40 + 32) & ~v40;
    v42 = swift_allocObject();
    v43 = v123;
    v119 = v18;
    v44 = v122;
    *(v42 + 16) = v123;
    *(v42 + 24) = v44;
    v45 = (*(v14 + 32))(v42 + v41, v39, v3);
    MEMORY[0x1EEE9AC00](v45);
    *(&v115 - 4) = v43;
    *(&v115 - 3) = v44;
    v114 = v1;
    sub_1D29C3F24();
    v46 = sub_1D29B5BC8();
    v48 = v47;
    v50 = v49;
    v51 = sub_1D29B5C24();
    v52 = *(v3 + 48);
    v53 = *(v1 + *(v3 + 52));
    v54 = v132;
    v55 = v129;
    v56 = v121;
    sub_1D29B5C80(v46, v48, v50 & 1, v51, v57, v58, v37 + v52, v53, v119, v129, v132);

    v59 = v55;

    (*(v115 + 8))(v56, v55);
    v136 = v55;
    v137 = v133;
    v60 = v128;
    v138 = v54;
    v139 = v128;
    OUTLINED_FUNCTION_11_0();
    v123 = OUTLINED_FUNCTION_116(v61, v62);
    v63 = v117;
    v64 = *(v117 + 16);
    v65 = v118;
    v66 = v119;
    v67 = v124;
    v64(v118, v119, v124);
    v68 = *(v63 + 8);
    v69 = OUTLINED_FUNCTION_105();
    v68(v69);
    v64(v66, v65, v67);
    OUTLINED_FUNCTION_10_0();
    sub_1D29B18D8(v70, v71, &unk_1D29C6848);
    v72 = v126;
    v73 = OUTLINED_FUNCTION_105();
    sub_1D29B5ED8(v73, v74, v130, v123, v75);
    v76 = v132;
    (v68)(v66, v67);
    (v68)(v65, v67);
    v77 = v133;
  }

  else
  {
    sub_1D29C4454();
    v78 = sub_1D29C4444();
    v79 = swift_allocObject();
    v80 = MEMORY[0x1E69E85E0];
    *(v79 + 16) = v78;
    *(v79 + 24) = v80;
    v81 = *(v14 + 16);
    v82 = v120;
    v121 = v13;
    v83 = v1;
    v81(v120, v1, v3);
    v84 = sub_1D29C4444();
    v85 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v86 = swift_allocObject();
    *(v86 + 2) = v84;
    *(v86 + 3) = v80;
    v87 = v122;
    *(v86 + 4) = v123;
    *(v86 + 5) = v87;
    (*(v14 + 32))(&v86[v85], v82, v3);
    sub_1D29C3F74();
    LOBYTE(v80) = v138;
    v88 = sub_1D29B5C24();
    v90 = v89;
    v92 = v91;
    v93 = v117;
    (*(v116 + 16))(v117, v83 + *(v3 + 48), v118);
    v94 = v121;
    v95 = OUTLINED_FUNCTION_86();
    sub_1D29B62D4(v95, v96, v80, v88, v90, v92, v93, v97, v98);
    v60 = v128;
    v59 = v129;
    v76 = v132;
    v77 = v133;
    v136 = v129;
    v137 = v133;
    v138 = v132;
    v139 = v128;
    OUTLINED_FUNCTION_11_0();
    v101 = OUTLINED_FUNCTION_116(v99, v100);
    OUTLINED_FUNCTION_10_0();
    v104 = sub_1D29B18D8(v102, v103, &unk_1D29C6848);
    v72 = v126;
    sub_1D29B6640(v94, v124, v130, v101, v104);
    sub_1D29C0528(v94, type metadata accessor for PhotosPickerViewController);
  }

  v136 = v59;
  v137 = v77;
  v138 = v76;
  v139 = v60;
  OUTLINED_FUNCTION_11_0();
  v107 = OUTLINED_FUNCTION_116(v105, v106);
  OUTLINED_FUNCTION_10_0();
  v110 = sub_1D29B18D8(v108, v109, &unk_1D29C6848);
  v134 = v107;
  v135 = v110;
  OUTLINED_FUNCTION_36_0();
  v111 = v125;
  swift_getWitnessTable();
  (*(v127 + 16))(v131, v72, v111);
  v112 = OUTLINED_FUNCTION_82();
  v113(v112);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D29B582C()
{
  v1 = sub_1D29C3CA4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {

    sub_1D29C4484();
    v6 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1D29B5A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for UncheckedSendable(0, a2, a4, a5);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhotosPicker(0, a2, a4, v17);
  (*(v10 + 16))(v13, a1 + *(v18 + 56), v9);
  v19 = *(v14 + 16);
  v19(v16, v13, a2);
  v20 = *(v14 + 8);
  v20(v13, a2);
  v19(a3, v16, a2);
  return (v20)(v16, a2);
}

uint64_t sub_1D29B5BC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE1E8, &unk_1D29C6920);
  sub_1D29C3F14();
  return v1;
}

uint64_t sub_1D29B5C24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB28, &qword_1D29C5A58);
  sub_1D29C3F64();
  return v1;
}

uint64_t sub_1D29B5C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v29 = a8;
  v30 = a3;
  v28 = a6;
  v14 = a3;
  v32 = a9;
  v33 = a10;
  v31 = a11;
  v27 = sub_1D29C42F4();
  v17 = *(v27 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v27);
  (*(v17 + 16))(&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a7);
  v19 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v14;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  v21 = v27;
  *(v20 + 56) = v28;
  (*(v17 + 32))(v20 + v19, &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  *(v20 + v19 + v18) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE18, &qword_1D29C5F10);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE20, &qword_1D29C5F18);
  v23 = sub_1D29C3D14();
  v24 = sub_1D29C059C();
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = MEMORY[0x1E697C8E8];
  swift_getOpaqueTypeConformance2();
  sub_1D29C3EB4();
}

uint64_t sub_1D29B5ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D29C3CE4();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1D29C3CF4();
}

uint64_t sub_1D29B5FD0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1D29C3C34();
  v10 = *(v9 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*a1 & 1) == 0)
  {
    type metadata accessor for PhotosPicker(0, a5, a6, v12);
    sub_1D29B60D0(v14);
    sub_1D29C3C24();
    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

uint64_t sub_1D29B60D0@<X0>(void *a1@<X8>)
{
  v2 = sub_1D29C3CA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D29C3C34();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_1D29C4484();
    v11 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1D29B62D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE110, &unk_1D29C68D0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for PhotosPickerViewController(0);
  v17 = &a9[v16[5]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &a9[v16[6]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = &a9[v16[7]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &a9[v16[8]];
  *v20 = swift_getKeyPath();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = &a9[v16[9]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v16[10];
  *&a9[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE108, &qword_1D29C68C8);
  swift_storeEnumTagMultiPayload();
  v23 = v16[11];
  *&a9[v23] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v24 = v16[12];
  *&a9[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE100, &qword_1D29C68C0);
  swift_storeEnumTagMultiPayload();
  v25 = &a9[v16[13]];
  *v25 = swift_getKeyPath();
  *(v25 + 1) = 0;
  v25[16] = 0;
  v26 = &a9[v16[14]];
  *v26 = swift_getKeyPath();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v27 = &a9[v16[15]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = &a9[v16[16]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = &a9[v16[17]];
  *v29 = swift_getKeyPath();
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = &a9[v16[18]];
  *v30 = swift_getKeyPath();
  *(v30 + 1) = 0;
  v30[16] = 0;
  v31 = &a9[v16[19]];
  *v31 = swift_getKeyPath();
  *(v31 + 1) = 0;
  v31[16] = 0;
  v32 = &a9[v16[20]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = &a9[v16[21]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = &a9[v16[22]];
  *v34 = swift_getKeyPath();
  *(v34 + 1) = 0;
  *(v34 + 8) = 0;
  v35 = &a9[v16[23]];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = &a9[v16[24]];
  *v36 = a1;
  *(v36 + 1) = a2;
  v36[16] = a3;
  v37 = &a9[v16[25]];
  *v37 = a4;
  *(v37 + 1) = a5;
  *(v37 + 2) = a6;
  v38 = v16[26];
  v39 = sub_1D29C42F4();
  result = (*(*(v39 - 8) + 32))(&a9[v38], a7, v39);
  a9[v16[27]] = a8;
  return result;
}

uint64_t sub_1D29B6640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D29C3CE4();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1D29C3CF4();
}

uint64_t sub_1D29B6774@<X0>(void *a1@<X8>)
{
  v2 = sub_1D29C3CA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE110, &unk_1D29C68D0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D29C3FF4();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_1D29C4484();
    v11 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_1D29B6974(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v5 = v4;
  v6 = sub_1D29C3CA4();
  OUTLINED_FUNCTION_31();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_81();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_63();
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_98();
    sub_1D29AE9CC();
  }

  else
  {
    sub_1D29C4484();
    v11 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    OUTLINED_FUNCTION_86();
    swift_getAtKeyPath();

    (*(v8 + 8))(v1, v6);
  }

  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init(_:selection:matching:preferredItemEncoding:)(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v29 = v5;
  v28 = v6;
  v26 = v7;
  v27 = v8;
  v25 = v9;
  v10 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_61();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  OUTLINED_FUNCTION_25_0(v11);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59();
  v13 = OUTLINED_FUNCTION_84();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_25_0(v15);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  sub_1D29AE974();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_86();
  sub_1D29B1940();
  sub_1D29B3084(v18, v2, v1, v26, v27, v28, v29, v25);
  OUTLINED_FUNCTION_3_0();
  sub_1D29C0528(v4, v19);
  OUTLINED_FUNCTION_99();
  sub_1D29C2974(v20, v21);
  v22 = OUTLINED_FUNCTION_110();
  sub_1D29C2974(v22, v23);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init<A>(_:selection:matching:preferredItemEncoding:)(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  OUTLINED_FUNCTION_25_0(v13);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_85();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_25_0(v17);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1D29AE974();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v19 = OUTLINED_FUNCTION_87();
  sub_1D29B36E0(v19, v20, v12, v21, v22, v23);
  OUTLINED_FUNCTION_3_0();
  sub_1D29C0528(v4, v24);
  sub_1D29C2974(v6, &qword_1EC6FDE08);
  v25 = OUTLINED_FUNCTION_82();
  sub_1D29C2974(v25, v26);
  (*(*(v2 - 8) + 8))(v8, v2);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init(_:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48();
  v104 = v27;
  v110 = v28;
  v111 = v29;
  v108 = v31;
  v109 = v30;
  v115 = v32;
  LODWORD(v114) = v33;
  v112 = v34;
  v113 = v35;
  v101 = a21;
  v117 = a23;
  v118 = a24;
  v102 = a22;
  sub_1D29C4164();
  OUTLINED_FUNCTION_31();
  v106 = v37;
  v107 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v103 = v38;
  OUTLINED_FUNCTION_26_0();
  v39 = sub_1D29C42C4();
  OUTLINED_FUNCTION_102(v39);
  OUTLINED_FUNCTION_31();
  v97 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19_0(v42);
  v105 = sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v116 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_69();
  v100 = v46;
  v47 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_52();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v50 = OUTLINED_FUNCTION_25_0(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_51();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v92 - v53;
  v55 = OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_0();
  v58 = v56 - v57;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_33_0();
  v98 = v60;
  sub_1D29B1940();
  v96 = v54;
  sub_1D29AE974();
  v94 = v25;
  sub_1D29B1940();
  v61 = objc_opt_self();
  [v61 isMultiLibraryModeEnabled];
  OUTLINED_FUNCTION_27_0();
  v63 = [v61 v62];
  sub_1D29B1940();
  sub_1D29AE974();
  v64 = v93;
  sub_1D29B1940();
  v65 = v63;
  sub_1D29C40B4();
  sub_1D29C40D4();
  OUTLINED_FUNCTION_104();
  v66(v95, v58, v99);
  sub_1D29C42E4();
  OUTLINED_FUNCTION_106();
  sub_1D29AE974();
  sub_1D29C4294();
  (*(v106 + 16))(v103, v64, v107);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_3_0();
  v67 = v64;
  v69 = v68;
  sub_1D29C0528(v67, v70);
  sub_1D29C2974(v26, &qword_1EC6FDE08);
  OUTLINED_FUNCTION_2_0();
  v107 = v71;
  sub_1D29C0528(v58, v72);
  v73 = v116;
  v74 = v100;
  v75 = v105;
  (*(v116 + 32))(v100, v24, v105);
  v119 = 0;
  sub_1D29C3EE4();
  v76 = v121;
  v77 = v108;
  *v108 = v120;
  *(v77 + 1) = v76;
  *(v77 + 5) = swift_getKeyPath();
  v77[48] = 0;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v79 = v78[11];
  *&v77[v79] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_91();
  (*(v73 + 16))(&v77[v80], v74, v75);
  v77[v78[13]] = 1;
  OUTLINED_FUNCTION_55();
  v114 = OUTLINED_FUNCTION_66(v112, v113, v114, v115, v81, v82, v83, v84, v92, v93);
  v115 = v85;
  v87 = v86;
  sub_1D29C0528(v118, v69);
  sub_1D29C2974(v117, &qword_1EC6FDE08);
  v88 = v107;
  sub_1D29C0528(v102, v107);
  v89 = OUTLINED_FUNCTION_105();
  v90(v89);
  sub_1D29C0528(v94, v69);
  sub_1D29C2974(v96, &qword_1EC6FDE08);
  sub_1D29C0528(v98, v88);
  v91 = &v77[v78[14]];
  *v91 = v114;
  v91[1] = v87;
  OUTLINED_FUNCTION_54(v91);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init<A>(_:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_48();
  v89 = v24;
  v90 = v25;
  v79 = v26;
  v87 = v27;
  v88 = v28;
  v86 = v29;
  v31 = v30;
  OUTLINED_FUNCTION_115(a21);
  OUTLINED_FUNCTION_31();
  v83 = v33;
  v84 = v32;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v80 = v34;
  OUTLINED_FUNCTION_26_0();
  v35 = sub_1D29C42C4();
  OUTLINED_FUNCTION_102(v35);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19_0(v37);
  sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v81 = v39;
  v82 = v38;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_69();
  v78 = v41;
  v42 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_69();
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v47 = OUTLINED_FUNCTION_25_0(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_53();
  v50 = OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_0();
  v53 = v51 - v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_33_0();
  v77 = v55;
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_43();
  sub_1D29B1940();
  v56 = objc_opt_self();
  [v56 isMultiLibraryModeEnabled];
  OUTLINED_FUNCTION_27_0();
  v58 = [v56 v57];
  sub_1D29B1940();
  sub_1D29AE974();
  sub_1D29B1940();
  v59 = v58;
  sub_1D29C40B4();
  sub_1D29C40D4();
  OUTLINED_FUNCTION_104();
  v60(v76, v53);
  sub_1D29C42E4();
  OUTLINED_FUNCTION_106();
  sub_1D29AE974();
  sub_1D29C4294();
  (*(v83 + 16))(v80, v75, v84);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_3_0();
  v62 = v61;
  sub_1D29C0528(v75, v63);
  sub_1D29C2974(v74, &qword_1EC6FDE08);
  OUTLINED_FUNCTION_2_0();
  v85 = v64;
  sub_1D29C0528(v53, v65);
  (*(v81 + 32))(v78, v23, v82);
  v94 = 0;
  sub_1D29C3EE4();
  v66 = v93;
  *v31 = v92;
  *(v31 + 8) = v66;
  *(v31 + 40) = swift_getKeyPath();
  *(v31 + 48) = 0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v68 = v67[11];
  *(v31 + v68) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  *(v31 + 16) = v86;
  *(v31 + 24) = v87;
  *(v31 + 32) = v88;
  (*(v81 + 16))(v31 + v67[12], v78, v82);
  *(v31 + v67[13]) = 1;
  sub_1D29B9290(v89, &v92);
  sub_1D29C0528(v91, v62);
  sub_1D29C2974(v90, &qword_1EC6FDE08);
  sub_1D29C0528(v79, v85);
  v69 = OUTLINED_FUNCTION_97();
  v70(v69);
  sub_1D29C0528(v45, v62);
  v71 = OUTLINED_FUNCTION_103();
  sub_1D29C2974(v71, &qword_1EC6FDE08);
  sub_1D29C0528(v77, v85);
  OUTLINED_FUNCTION_20_0((v31 + v67[14]));
  v72 = OUTLINED_FUNCTION_84();
  v73(v72);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init(_:selection:matching:preferredItemEncoding:photoLibrary:)(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v74 = v4;
  v90 = v5;
  v91 = v6;
  v92 = v7;
  v88 = v8;
  v89 = v9;
  LODWORD(v87) = v10;
  v86 = v11;
  v84 = v12;
  v82 = sub_1D29C4164();
  OUTLINED_FUNCTION_31();
  v80 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v79 = v15;
  OUTLINED_FUNCTION_26_0();
  sub_1D29C42C4();
  OUTLINED_FUNCTION_31();
  v76 = v17;
  v77 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v75 = v18;
  v19 = OUTLINED_FUNCTION_26_0();
  v71 = type metadata accessor for PhotosPickerSelectionBehavior(v19);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8_0();
  v85 = sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v83 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  v81 = v23;
  v24 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_51();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_31_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v27 = OUTLINED_FUNCTION_25_0(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_74();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v71 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE10, &qword_1D29C5F08);
  OUTLINED_FUNCTION_25_0(v32);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v71 - v34;
  sub_1D29AE974();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v78 = v35;
  v36 = sub_1D29B40C4();
  OUTLINED_FUNCTION_70(v36, v37, v38);
  v39 = qword_1EE0877A0;
  v40 = v74;
  if (v39 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_1EE0877A0);
  }

  v41 = OUTLINED_FUNCTION_103();
  __swift_project_value_buffer(v41, v42);
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  v73 = v31;
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_97();
  sub_1D29B1940();
  v43 = v40;
  v74 = v3;
  v44 = v43;
  v45 = v81;
  sub_1D29C40B4();
  sub_1D29C40D4();
  v46 = OUTLINED_FUNCTION_62();
  v47(v46, v1, v77);
  OUTLINED_FUNCTION_96();
  sub_1D29C42E4();
  OUTLINED_FUNCTION_85();
  sub_1D29AE974();
  sub_1D29C4294();
  v48 = OUTLINED_FUNCTION_62();
  v49(v48, v2, v82);
  OUTLINED_FUNCTION_96();
  sub_1D29C41D4();

  sub_1D29C0528(v2, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  v50 = OUTLINED_FUNCTION_86();
  sub_1D29C2974(v50, v51);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v1, v52);
  v93 = 0;
  sub_1D29C3EE4();
  v53 = v95;
  v54 = v84;
  *v84 = v94;
  *(v54 + 1) = v53;
  *(v54 + 5) = swift_getKeyPath();
  v54[48] = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v56 = v55[11];
  *&v54[v56] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_107();
  *(v54 + 2) = v58;
  *(v54 + 3) = v57;
  *(v54 + 4) = v72;
  v59 = v83;
  v60 = v85;
  (*(v83 + 16))(&v54[v55[12]], v45, v85);
  v54[v55[13]] = 0;
  OUTLINED_FUNCTION_55();
  v65 = OUTLINED_FUNCTION_66(v86, v88, v87 & 1, v89, v61, v62, v63, v64, v71, v72);
  v87 = v66;
  v88 = v65;
  LODWORD(v86) = v67;
  v89 = v68;

  sub_1D29C0528(v91, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v90, &qword_1EC6FDE08);
  sub_1D29C2974(v92, &qword_1EC6FDE10);
  (*(v59 + 8))(v45, v60);
  sub_1D29C0528(v74, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v73, &qword_1EC6FDE08);
  sub_1D29C2974(v78, &qword_1EC6FDE10);
  v69 = &v54[v55[14]];
  v70 = v87;
  *v69 = v88;
  v69[1] = v70;
  OUTLINED_FUNCTION_54(v69);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init<A>(_:selection:matching:preferredItemEncoding:photoLibrary:)(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v83 = v5;
  v85 = v6;
  v72 = v7;
  v86 = v9;
  v87 = v8;
  v88 = v10;
  v84 = v11;
  v80 = v12;
  v79 = sub_1D29C4164();
  OUTLINED_FUNCTION_31();
  v77 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v76 = v15;
  OUTLINED_FUNCTION_26_0();
  sub_1D29C42C4();
  OUTLINED_FUNCTION_31();
  v73 = v17;
  v74 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v19 = OUTLINED_FUNCTION_19_0(v18);
  v70 = type metadata accessor for PhotosPickerSelectionBehavior(v19);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_88();
  sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v81 = v22;
  v82 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  v78 = v23;
  v24 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_53();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v27 = OUTLINED_FUNCTION_25_0(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_51();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_31_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE10, &qword_1D29C5F08);
  OUTLINED_FUNCTION_25_0(v30);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v68 - v32;
  sub_1D29AE974();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v75 = v33;
  v34 = sub_1D29B40C4();
  OUTLINED_FUNCTION_70(v34, v35, v36);
  v37 = qword_1EE0877A0;
  OUTLINED_FUNCTION_68();
  v39 = v38;
  if (v37 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_1EE0877A0);
  }

  v40 = OUTLINED_FUNCTION_103();
  __swift_project_value_buffer(v40, v41);
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  v69 = v4;
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v42 = v39;
  v43 = v78;
  v44 = v42;
  v72 = v42;
  sub_1D29C40B4();
  sub_1D29C40D4();
  v45 = OUTLINED_FUNCTION_108();
  v46(v45);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  v47 = OUTLINED_FUNCTION_60();
  v48(v47);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_3_0();
  v79 = v49;
  sub_1D29C0528(v2, v50);
  v51 = OUTLINED_FUNCTION_84();
  sub_1D29C2974(v51, v52);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v1, v53);
  v91 = 0;
  sub_1D29C3EE4();
  v54 = v90;
  v55 = v80;
  *v80 = v89;
  *(v55 + 1) = v54;
  *(v55 + 5) = swift_getKeyPath();
  v55[48] = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v57 = v56[11];
  *&v55[v57] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_107();
  *(v55 + 2) = v59;
  *(v55 + 3) = v58;
  *(v55 + 4) = v71;
  v61 = v81;
  v60 = v82;
  (*(v81 + 16))(&v55[v56[12]], v43, v82);
  v55[v56[13]] = 0;
  v63 = v84;
  v62 = v85;
  sub_1D29B9290(v84, &v89);
  OUTLINED_FUNCTION_68();

  v65 = v79;
  sub_1D29C0528(v86, v79);
  sub_1D29C2974(v87, &qword_1EC6FDE08);
  sub_1D29C2974(v88, &qword_1EC6FDE10);
  (*(v61 + 8))(v43, v60);
  sub_1D29C0528(v3, v65);
  sub_1D29C2974(v69, &qword_1EC6FDE08);
  sub_1D29C2974(v75, &qword_1EC6FDE10);
  v66 = OUTLINED_FUNCTION_20_0(&v55[v56[14]]);
  (*(v67 + 8))(v63, v62, v66);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init(_:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_48();
  v96 = v29;
  v101 = v30;
  v102 = v31;
  v100 = v32;
  v106 = v33;
  LODWORD(v105) = v34;
  v103 = v35;
  v104 = v36;
  v84 = v37;
  v92 = a21;
  v90 = a25;
  v108 = a24;
  v109 = a23;
  OUTLINED_FUNCTION_115(a22);
  OUTLINED_FUNCTION_31();
  v98 = v39;
  v99 = v38;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v95 = v40;
  OUTLINED_FUNCTION_26_0();
  v87 = sub_1D29C42C4();
  OUTLINED_FUNCTION_31();
  v86 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19_0(v43);
  v97 = sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v93 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_69();
  v89 = v47;
  v48 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_52();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v51 = OUTLINED_FUNCTION_25_0(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  v53 = MEMORY[0x1EEE9AC00](v52);
  v55 = &v84 - v54;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_28_0();
  v56 = OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_74();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_31_0();
  v94 = v28;
  sub_1D29B1940();
  v91 = v25;
  sub_1D29AE974();
  OUTLINED_FUNCTION_43();
  v88 = v26;
  sub_1D29B1940();
  sub_1D29B1940();
  sub_1D29AE974();
  v58 = v85;
  sub_1D29B1940();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_102(v59);
  sub_1D29C40B4();
  sub_1D29C40D4();
  OUTLINED_FUNCTION_104();
  v60 = OUTLINED_FUNCTION_85();
  v61(v60);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  (*(v98 + 16))(v95, v58, v99);
  sub_1D29C41D4();
  sub_1D29C0528(v58, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v55, &qword_1EC6FDE08);
  OUTLINED_FUNCTION_2_0();
  v99 = v62;
  sub_1D29C0528(v27, v63);
  v64 = v93;
  v65 = OUTLINED_FUNCTION_72();
  v66 = v97;
  v67(v65);
  v110 = 0;
  sub_1D29C3EE4();
  v68 = v112;
  v69 = v84;
  *v84 = v111;
  *(v69 + 1) = v68;
  *(v69 + 5) = swift_getKeyPath();
  v69[48] = 0;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v71 = v70[11];
  *&v69[v71] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_91();
  (*(v64 + 16))(&v69[v72], v55, v66);
  v69[v70[13]] = 0;
  OUTLINED_FUNCTION_55();
  v105 = OUTLINED_FUNCTION_66(v103, v104, v105, v106, v73, v74, v75, v76, v84, v85);
  v106 = v77;
  v79 = v78;
  LODWORD(v104) = v80;
  OUTLINED_FUNCTION_68();

  sub_1D29C0528(v108, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v109, &qword_1EC6FDE08);
  v82 = v99;
  sub_1D29C0528(v107, v99);
  (*(v64 + 8))(v55, v66);
  sub_1D29C0528(v88, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v91, &qword_1EC6FDE08);
  sub_1D29C0528(v94, v82);
  v83 = &v69[v70[14]];
  *v83 = v105;
  v83[1] = v79;
  OUTLINED_FUNCTION_54(v83);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init<A>(_:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48();
  v105 = v27;
  v102 = v28;
  v103 = v29;
  v92 = v30;
  v93 = v31;
  v98 = v32;
  v99 = v33;
  v97 = v34;
  v81 = v35;
  v100 = a23;
  v101 = a24;
  v88 = a22;
  v104 = a21;
  sub_1D29C4164();
  OUTLINED_FUNCTION_31();
  v95 = v37;
  v96 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v91 = v38;
  OUTLINED_FUNCTION_26_0();
  v85 = sub_1D29C42C4();
  OUTLINED_FUNCTION_31();
  v83 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19_0(v41);
  v94 = sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v90 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_69();
  v87 = v45;
  v46 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_28_0();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v49 = OUTLINED_FUNCTION_25_0(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = &v80 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v80 - v54;
  v56 = OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_77();
  v89 = v26;
  sub_1D29B1940();
  v86 = v55;
  sub_1D29AE974();
  v84 = v24;
  sub_1D29B1940();
  sub_1D29B1940();
  sub_1D29AE974();
  v58 = v82;
  sub_1D29B1940();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_102(v59);
  sub_1D29C40B4();
  sub_1D29C40D4();
  OUTLINED_FUNCTION_104();
  v60 = OUTLINED_FUNCTION_110();
  v61(v60);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  (*(v95 + 16))(v91, v58, v96);
  sub_1D29C41D4();
  sub_1D29C0528(v58, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v53, &qword_1EC6FDE08);
  OUTLINED_FUNCTION_2_0();
  v96 = v62;
  sub_1D29C0528(v25, v63);
  v64 = v90;
  v65 = OUTLINED_FUNCTION_72();
  v66 = v94;
  v67(v65);
  v108 = 0;
  sub_1D29C3EE4();
  v68 = v107;
  v69 = v81;
  *v81 = v106;
  *(v69 + 1) = v68;
  *(v69 + 5) = swift_getKeyPath();
  v69[48] = 0;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v71 = v70[11];
  *&v69[v71] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  v72 = v98;
  *(v69 + 2) = v97;
  *(v69 + 3) = v72;
  *(v69 + 4) = v99;
  (*(v64 + 16))(&v69[v70[12]], type metadata accessor for PhotosPickerSelectionBehavior, v66);
  v69[v70[13]] = 0;
  sub_1D29B9290(v102, &v106);
  OUTLINED_FUNCTION_68();

  sub_1D29C0528(v104, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v105, &qword_1EC6FDE08);
  v74 = v96;
  sub_1D29C0528(v103, v96);
  v75 = OUTLINED_FUNCTION_87();
  v76(v75);
  v77 = OUTLINED_FUNCTION_103();
  sub_1D29C0528(v77, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v86, &qword_1EC6FDE08);
  sub_1D29C0528(v89, v74);
  OUTLINED_FUNCTION_20_0(&v69[v70[14]]);
  v78 = OUTLINED_FUNCTION_84();
  v79(v78);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D29B9290@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_61();
  (*(v6 + 16))(v4);
  result = sub_1D29C3E44();
  *a4 = result;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9 & 1;
  *(a4 + 24) = v10;
  return result;
}

void View.photosPicker(isPresented:selection:matching:preferredItemEncoding:)(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v47 = v4;
  v43 = v6;
  v44 = v5;
  v45 = v7;
  v46 = v8;
  OUTLINED_FUNCTION_115(v9);
  OUTLINED_FUNCTION_31();
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_0();
  v40 = sub_1D29C42C4();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_59();
  v12 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_81();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v14 = OUTLINED_FUNCTION_25_0(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_77();
  v16 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_50();
  v39 = sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v38 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_88();
  v20 = sub_1D29B40C4();
  v36 = v21;
  v37 = v20;
  v35 = v22;
  v23 = objc_opt_self();
  [v23 isMultiLibraryModeEnabled];
  OUTLINED_FUNCTION_27_0();
  v25 = [v23 v24];
  if (qword_1EE0877A0 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_1EE0877A0);
  }

  __swift_project_value_buffer(v16, qword_1EE087670);
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  OUTLINED_FUNCTION_97();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v26 = v25;
  sub_1D29C40B4();
  sub_1D29C40D4();
  v27 = OUTLINED_FUNCTION_101();
  v28(v27, v3, v40);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  v29 = OUTLINED_FUNCTION_62();
  v30(v29, v2, v41);
  OUTLINED_FUNCTION_96();
  sub_1D29C41D4();

  OUTLINED_FUNCTION_3_0();
  sub_1D29C0528(v2, v31);
  v32 = OUTLINED_FUNCTION_105();
  sub_1D29C2974(v32, v33);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v3, v34);
  sub_1D29B5C80(v46, v47, v45 & 1, v37, v36, v35, v1, 1, v42, v44, v43);

  (*(v38 + 8))(v1, v39);
  OUTLINED_FUNCTION_46();
}

void View.photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:)(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_64(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  sub_1D29C4164();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v50 = v16;
  OUTLINED_FUNCTION_26_0();
  sub_1D29C42C4();
  OUTLINED_FUNCTION_31();
  v49 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v18 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_59();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v20 = OUTLINED_FUNCTION_25_0(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_0();
  v47 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_28_0();
  v24 = OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8_0();
  v48 = sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_52();
  v29 = objc_opt_self();
  [v29 isMultiLibraryModeEnabled];
  OUTLINED_FUNCTION_27_0();
  v31 = [v29 v30];
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v32 = v31;
  sub_1D29C40B4();
  OUTLINED_FUNCTION_80();
  sub_1D29C40D4();
  v33 = OUTLINED_FUNCTION_101();
  v34(v33, v4, v49);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  OUTLINED_FUNCTION_94();
  v35(v50, v5);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_3_0();
  sub_1D29C0528(v5, v36);
  sub_1D29C2974(v2, &qword_1EC6FDE08);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v4, v37);
  (*(v26 + 32))(v3, v1, v48);
  v38 = OUTLINED_FUNCTION_47();
  sub_1D29B5C80(v38, v39, v40, v41, v42, v43, v3, 1, v44, v47, v48);
  v45 = OUTLINED_FUNCTION_60();
  v46(v45);
  OUTLINED_FUNCTION_46();
}

void View.photosPicker(isPresented:selection:matching:preferredItemEncoding:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_48();
  v63 = v24;
  v59 = v26;
  v60 = v25;
  v57 = v27;
  v61 = v28;
  v62 = v29;
  sub_1D29C4164();
  OUTLINED_FUNCTION_31();
  v58 = v30;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_0();
  sub_1D29C42C4();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_59();
  v32 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v34 = OUTLINED_FUNCTION_25_0(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_31_0();
  v36 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_81();
  v56 = sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_88();
  v41 = sub_1D29B40C4();
  v54 = v42;
  v55 = v41;
  v53 = v43;
  if (qword_1EE0877A0 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_1EE0877A0);
  }

  __swift_project_value_buffer(v36, qword_1EE087670);
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v44 = v57;
  sub_1D29C40B4();
  sub_1D29C40D4();
  v45 = OUTLINED_FUNCTION_101();
  v46(v45, v22);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  v47 = OUTLINED_FUNCTION_62();
  v48(v47, v23, v58);
  OUTLINED_FUNCTION_96();
  sub_1D29C41D4();
  OUTLINED_FUNCTION_3_0();
  sub_1D29C0528(v23, v49);
  v50 = OUTLINED_FUNCTION_97();
  sub_1D29C2974(v50, v51);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v22, v52);
  sub_1D29B5C80(v62, v63, v61 & 1, v55, v54, v53, v21, 0, v59, v60, a21);

  (*(v39 + 8))(v21, v56);
  OUTLINED_FUNCTION_46();
}

void View.photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_64(v28, v29, v30, v31, v32, v33, v34, v35, v36);
  sub_1D29C4164();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  v67 = v38;
  OUTLINED_FUNCTION_26_0();
  sub_1D29C42C4();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_61();
  v40 = OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_59();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v42 = OUTLINED_FUNCTION_25_0(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_8_0();
  v66 = sub_1D29C42F4();
  OUTLINED_FUNCTION_31();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v49 = a24;
  sub_1D29C40B4();
  OUTLINED_FUNCTION_80();
  sub_1D29C40D4();
  v50 = OUTLINED_FUNCTION_71();
  v51(v50);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  OUTLINED_FUNCTION_94();
  v52(v67, v26);
  sub_1D29C41D4();
  OUTLINED_FUNCTION_3_0();
  sub_1D29C0528(v26, v53);
  v54 = OUTLINED_FUNCTION_87();
  sub_1D29C2974(v54, v55);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v25, v56);
  v57 = v66;
  (*(v46 + 32))(v27, v24, v66);
  v58 = OUTLINED_FUNCTION_47();
  sub_1D29B5C80(v58, v59, v60, v61, v62, v63, v27, 0, v64, v65, v66);
  (*(v46 + 8))(v27, v57);
  OUTLINED_FUNCTION_46();
}

void View.photosPickerStyle(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE38, &qword_1D29C5F88);
  v2 = sub_1D29C3C64();
  OUTLINED_FUNCTION_31();
  v4 = v3;
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_63();
  swift_getKeyPath();
  OUTLINED_FUNCTION_117();
  sub_1D29C3E74();

  swift_getKeyPath();
  OUTLINED_FUNCTION_39();
  sub_1D29C1524(v6, &qword_1EC6FDE38, &qword_1D29C5F88, v7);
  OUTLINED_FUNCTION_17_0();
  swift_getWitnessTable();
  sub_1D29C3E74();

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D29BA3E8()
{
  sub_1D29C2834();

  return sub_1D29C3CB4();
}

uint64_t sub_1D29BA430(uint64_t a1)
{
  v2 = sub_1D29C3FF4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1D29BA4F8(v4);
}

uint64_t sub_1D29BA4F8(uint64_t a1)
{
  v2 = sub_1D29C3FF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_1D29C2834();
  sub_1D29C3CC4();
  return (*(v3 + 8))(a1, v2);
}

uint64_t View.photosPickerAccessoryVisibility(_:edges:)(uint64_t a1)
{
  OUTLINED_FUNCTION_119();
  v2 = v1;
  v4 = v3;
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 17) = v2;
  sub_1D29C3EA4();

  OUTLINED_FUNCTION_118();
}

uint64_t sub_1D29BA6B0()
{
  sub_1D29C27E0();
  sub_1D29C3CB4();
  return v1;
}

uint64_t sub_1D29BA728(_BYTE *a1, char a2, unsigned __int8 a3)
{
  if (a2 != 2)
  {
    return sub_1D29AD404(a3);
  }

  sub_1D29C3E14();
  result = sub_1D29C3E14();
  if (result != a3)
  {
    result = sub_1D29C3E14();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D29BA854()
{
  OUTLINED_FUNCTION_58();
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

uint64_t sub_1D29BA8D4(uint64_t (*a1)(void))
{
  v1 = a1();
  OUTLINED_FUNCTION_113(v1);
  return v3;
}

uint64_t sub_1D29BA90C(uint64_t a1, uint64_t (*a2)(void))
{
  v6 = a1;
  v2 = a2();
  return OUTLINED_FUNCTION_92(&v6, v3, v4, v2);
}

uint64_t View._photosPickerSourceType(_:)()
{
  OUTLINED_FUNCTION_58();
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

uint64_t sub_1D29BA9DC()
{
  sub_1D29C2594();

  return sub_1D29C3CB4();
}

uint64_t sub_1D29BAA50(uint64_t a1)
{

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37_0();
  return sub_1D29BB1D4(v1, v2, v3);
}

uint64_t sub_1D29BAAAC()
{
  sub_1D29C24EC();

  return sub_1D29C3CB4();
}

void sub_1D29BAAF4(uint64_t a1)
{
  OUTLINED_FUNCTION_119();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_95(v6, v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_25_0(v10);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_98();
  v12 = sub_1D29AE974();
  v13 = v3(v12);
  OUTLINED_FUNCTION_92(v1, v14, v15, v13);
  sub_1D29C2974(v7, v5);
  OUTLINED_FUNCTION_118();
}

uint64_t sub_1D29BABAC()
{
  OUTLINED_FUNCTION_58();
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

uint64_t sub_1D29BAC0C()
{
  sub_1D29C2498();

  return sub_1D29C3CB4();
}

void sub_1D29BAC54(uint64_t a1)
{
  OUTLINED_FUNCTION_119();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25_0(v4);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_98();
  sub_1D29AE974();
  sub_1D29BAAF4(v1);
  OUTLINED_FUNCTION_118();
}

uint64_t sub_1D29BAD34()
{
  OUTLINED_FUNCTION_23_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

void View._photosPickerButtonType(primary:secondary:)(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE48, &qword_1D29C61C0);
  v7 = sub_1D29C3C64();
  OUTLINED_FUNCTION_31();
  v9 = v8;
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  swift_getKeyPath();
  v17 = v6;
  sub_1D29C3E74();

  swift_getKeyPath();
  v17 = v4;
  OUTLINED_FUNCTION_39();
  v15 = sub_1D29C1524(v13, &qword_1EC6FDE48, &qword_1D29C61C0, v14);
  v16[1] = v2;
  v16[2] = v15;
  OUTLINED_FUNCTION_17_0();
  swift_getWitnessTable();
  sub_1D29C3E74();

  (*(v9 + 8))(v12, v7);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D29BAF7C(uint64_t (*a1)(void))
{
  v1 = a1();
  OUTLINED_FUNCTION_113(v1);
  return v3;
}

uint64_t sub_1D29BAFB4(uint64_t a1, uint64_t (*a2)(void))
{
  v6 = a1;
  v2 = a2();
  return OUTLINED_FUNCTION_92(&v6, v3, v4, v2);
}

uint64_t sub_1D29BB020(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D29AAE6C(*a1, v2);
  return sub_1D29BB1D4(v1, v2, sub_1D29C22F4);
}

uint64_t sub_1D29BB08C()
{
  OUTLINED_FUNCTION_23_0();
  swift_getKeyPath();

  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

uint64_t sub_1D29BB12C(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1D29C3CB4();
  return v3;
}

uint64_t sub_1D29BB174(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D29AAE6C(*a1, v2);
  return sub_1D29BB1D4(v1, v2, sub_1D29C22A0);
}

uint64_t sub_1D29BB1D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7[0] = a1;
  v7[1] = a2;
  v3 = a3(a1, a2);
  return OUTLINED_FUNCTION_92(v7, v4, v5, v3);
}

uint64_t View._photosPickerAutomaticDismissDisabled(_:)(char a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

uint64_t sub_1D29BB2A4(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1D29C3CB4();
  return v3;
}

uint64_t sub_1D29BB2EC(char a1, uint64_t (*a2)(void))
{
  v6 = a1;
  v2 = a2();
  return OUTLINED_FUNCTION_92(&v6, v3, v4, v2);
}

uint64_t View._photosPickerSheetSizeOverride(_:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

uint64_t sub_1D29BB3B4()
{
  sub_1D29C21F8();
  sub_1D29C3CB4();
  return v1;
}

uint64_t sub_1D29BB468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v32 = a8;
  v31 = a6;
  v30 = a3;
  v28 = a1;
  v29 = a2;
  v34 = a9;
  v33 = sub_1D29C3D14();
  v12 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D29C42F4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE20, &qword_1D29C5F18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  (*(v16 + 16))(v18, a7, v15);
  sub_1D29B62D4(v28, v29, v30, a4, a5, v31, v18, v32, v21);

  v22 = sub_1D29C3C74();
  v23 = sub_1D29C3DD4();
  v24 = &v21[*(v19 + 36)];
  *v24 = v22;
  v24[8] = v23;
  sub_1D29C3CD4();
  sub_1D29C059C();
  v25 = v33;
  sub_1D29C3E94();
  (*(v12 + 8))(v14, v25);
  return sub_1D29C2974(v21, &qword_1EC6FDE20);
}

uint64_t sub_1D29BB704@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D29BB6FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D29BB738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&unk_1EC6FE230, MEMORY[0x1E6979000], MEMORY[0x1E6979010]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BB7D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D29BB7CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D29BB7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29C3140();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BB860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EC6FDA50, type metadata accessor for PHPickerCapabilities, &unk_1D29C5168);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BB900@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D29BB8F4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D29BB928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EE087600, type metadata accessor for _PHPickerCollectionType, &unk_1D29C5308);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BB9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EC6FDA90, type metadata accessor for _PHPickerCollectionSuggestionType, &unk_1D29C5498);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EC6FDAB0, type metadata accessor for _PHPickerPrivateCapabilities, &unk_1D29C5628);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EE087580, type metadata accessor for _PHPickerSourceType, &unk_1D29C5788);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBB78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D29C4304();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_1D29BBBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29C2FD8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EC6FE218, type metadata accessor for _PHPickerPrimaryButtonType, &unk_1D29C57E8);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EC6FE210, type metadata accessor for _PHPickerSecondaryButtonType, &unk_1D29C5848);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBD58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D29BBD50();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D29BBD94@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D29BBD84();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_1D29BBDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29C2EA8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBE28(unsigned int a1)
{
  v1 = sub_1D29C3DE4();
  v2 = sub_1D29C3DF4();
  v3 = sub_1D29C3E04();
  v4 = sub_1D29C3E24();
  sub_1D29C3E14();
  v5 = sub_1D29C3E14();
  v6 = MEMORY[0x1E69E7CC0];
  if (v5 == v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D29BF5A8(0, 1, 1);
    v6 = v24;
    v8 = *(v24 + 16);
    v7 = *(v24 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1D29BF5A8(v7 > 1, v8 + 1, 1);
      v6 = v24;
    }

    *(v6 + 16) = v8 + 1;
    v9 = v6 + 16 * v8;
    *(v9 + 32) = v1;
    *(v9 + 40) = 1;
  }

  sub_1D29C3E14();
  if (sub_1D29C3E14() == v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D29BF5A8(0, *(v6 + 16) + 1, 1);
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1D29BF5A8(v10 > 1, v11 + 1, 1);
    }

    *(v6 + 16) = v11 + 1;
    v12 = v6 + 16 * v11;
    *(v12 + 32) = v2;
    *(v12 + 40) = 4;
  }

  sub_1D29C3E14();
  if (sub_1D29C3E14() == v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D29BF5A8(0, *(v6 + 16) + 1, 1);
    }

    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D29BF5A8(v13 > 1, v14 + 1, 1);
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 16 * v14;
    *(v15 + 32) = v3;
    *(v15 + 40) = 2;
  }

  sub_1D29C3E14();
  if (sub_1D29C3E14() == v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D29BF5A8(0, *(v6 + 16) + 1, 1);
    }

    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      sub_1D29BF5A8(v16 > 1, v17 + 1, 1);
    }

    *(v6 + 16) = v18;
    v19 = v6 + 16 * v17;
    *(v19 + 32) = v4;
    *(v19 + 40) = 8;
  }

  else
  {
    v18 = *(v6 + 16);
    if (!v18)
    {
      v20 = 0;
      goto LABEL_28;
    }
  }

  v20 = 0;
  v21 = 40;
  do
  {
    v22 = *(v6 + v21);
    if ((v22 & ~v20) == 0)
    {
      v22 = 0;
    }

    v20 |= v22;
    v21 += 16;
    --v18;
  }

  while (v18);
LABEL_28:

  return v20;
}

uint64_t sub_1D29BC0F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PhotosPickerItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE118, &qword_1D29C68E0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE10, &qword_1D29C5F08);
  MEMORY[0x1D38A3CF0](v12);
  sub_1D29AE974();
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) == 1)
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1D29C2194(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE128, &unk_1D29C68F0);
    v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D29C4E50;
    sub_1D29C2194(v5, v13 + v14);
  }

  result = sub_1D29C2974(v11, &qword_1EC6FE118);
  *a1 = v13;
  return result;
}

uint64_t sub_1D29BC2F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE118, &qword_1D29C68E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = *(*a1 + 16);
  v6 = type metadata accessor for PhotosPickerItem(0);
  if (v5)
  {
    sub_1D29B1940();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE10, &qword_1D29C5F08);
  return sub_1D29C3F54();
}

uint64_t sub_1D29BC41C()
{
  v0 = type metadata accessor for PhotosPickerViewController(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29B1940();
  type metadata accessor for PhotosPickerViewController.Coordinator(0);
  swift_allocObject();
  return sub_1D29BDD20(v2);
}

void *sub_1D29BC4C4(uint64_t a1)
{
  v2 = v1;
  v108 = a1;
  v3 = type metadata accessor for PhotosPickerItem(0);
  v102[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE0A0, &qword_1D29C66F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v102[1] = v102 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE098, &qword_1D29C66E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1D29C3CA4();
  v113 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D29C3FF4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1D29C42F4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v105 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v102 - v19;
  v21 = type metadata accessor for PhotosPickerViewController(0);
  v22 = *(v21 + 104);
  v106 = v16;
  v107 = v15;
  v103 = *(v16 + 16);
  v104 = v16 + 16;
  v103(v20, v2 + v22, v15);
  sub_1D29B6774(v14);
  sub_1D29C41E4();
  v110 = v21;
  v23 = v2 + *(v21 + 20);
  v24 = *v23;
  LODWORD(v23) = *(v23 + 8);
  v112 = v11;
  if (v23 != 1)
  {

    sub_1D29C4484();
    v25 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v24, 0);
    (*(v113 + 8))(v11, v9);
    LODWORD(v24) = LOBYTE(v116);
  }

  sub_1D29BBE28(v24);
  sub_1D29C4184();
  v26 = v110;
  v27 = v2 + v110[6];
  v28 = *v27;
  if ((*(v27 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v29 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v30 = v112;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v28, 0);
    (*(v113 + 8))(v30, v9);
    v28 = *&v116;
  }

  MEMORY[0x1D38A3EF0](v28);
  v31 = v2 + v26[13];
  v32 = *v31;
  v33 = *(v31 + 8);
  LODWORD(v31) = *(v31 + 16);
  v111 = v20;
  v114 = v2;
  if (v31 == 1)
  {
  }

  else
  {

    sub_1D29C4484();
    v34 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v2 = v114;
    v35 = v112;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2168(v32, v33, 0);
    v26 = v110;
    (*(v113 + 8))(v35, v9);
  }

  sub_1D29C42A4();
  v36 = v2 + v26[14];
  v37 = *v36;
  v38 = *(v36 + 8);
  if (*(v36 + 16) == 1)
  {
  }

  else
  {

    sub_1D29C4484();
    v39 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v2 = v114;
    v40 = v112;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2168(v37, v38, 0);
    v26 = v110;
    (*(v113 + 8))(v40, v9);
  }

  sub_1D29C41F4();
  v41 = v2 + v26[15];
  v42 = *v41;
  if ((*(v41 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v43 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v44 = v112;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v42, 0);
    (*(v113 + 8))(v44, v9);
  }

  sub_1D29C40F4();
  v45 = v2 + v26[16];
  v46 = *v45;
  if ((*(v45 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v47 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v48 = v112;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v46, 0);
    (*(v113 + 8))(v48, v9);
  }

  sub_1D29C4124();
  v49 = v2 + v26[7];
  v50 = *v49;
  if ((*(v49 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v51 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v52 = v112;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v50, 0);
    (*(v113 + 8))(v52, v9);
  }

  sub_1D29C41B4();
  v53 = v2 + v26[8];
  v54 = *v53;
  v55 = *(v53 + 8);
  if (*(v53 + 16) == 1)
  {
  }

  else
  {

    sub_1D29C4484();
    v56 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v2 = v114;
    v57 = v112;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2168(v54, v55, 0);
    v26 = v110;
    (*(v113 + 8))(v57, v9);
  }

  v109 = v9;
  sub_1D29C4104();
  v58 = v2 + v26[9];
  v59 = *v58;
  if ((*(v58 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v60 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v61 = v112;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v59, 0);
    (*(v113 + 8))(v61, v109);
  }

  sub_1D29C40A4();
  v62 = v114;
  sub_1D29B6974(&qword_1EC6FE108);
  sub_1D29C4084();
  v63 = v111;
  sub_1D29B6974(&qword_1EC6FE108);
  sub_1D29C4074();
  sub_1D29B6974(&qword_1EC6FE100);
  sub_1D29C40E4();
  v64 = v62 + v26[19];
  v65 = *v64;
  v66 = *(v64 + 8);
  if (*(v64 + 16) == 1)
  {

    v68 = v112;
    v67 = v113;
  }

  else
  {

    sub_1D29C4484();
    v69 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v68 = v112;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2168(v65, v66, 0);
    v67 = v113;
    (*(v113 + 8))(v68, v109);
  }

  sub_1D29C4094();
  v70 = v110;
  v71 = v114 + v110[20];
  v72 = *v71;
  if (*(v71 + 8))
  {
    v73 = v109;
  }

  else
  {

    sub_1D29C4484();
    v74 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v72, 0);
    v73 = v109;
    (*(v67 + 8))(v68, v109);
  }

  sub_1D29C4114();
  v75 = v114 + v70[21];
  v76 = *v75;
  if ((*(v75 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v77 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v76, 0);
    (*(v67 + 8))(v68, v73);
  }

  sub_1D29C41C4();
  v78 = v114 + v70[25];
  v116 = *v78;
  v117 = *(v78 + 8);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB28, &qword_1D29C5A58);
  MEMORY[0x1D38A3CF0](&v115, v79);
  v80 = v115;
  v81 = *(v115 + 16);
  if (v81)
  {
    v116 = MEMORY[0x1E69E7CC0];
    sub_1D29BF5C8(0, v81, 0);
    v82 = v116;
    v83 = v80 + ((*(v102[0] + 80) + 32) & ~*(v102[0] + 80));
    v84 = *(v102[0] + 72);
    do
    {
      sub_1D29B1940();
      v85 = *v5;
      v86 = v5[1];

      sub_1D29C0528(v5, type metadata accessor for PhotosPickerItem);
      v116 = v82;
      v88 = *(*&v82 + 16);
      v87 = *(*&v82 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_1D29BF5C8(v87 > 1, v88 + 1, 1);
        v82 = v116;
      }

      *(*&v82 + 16) = v88 + 1;
      v89 = *&v82 + 16 * v88;
      *(v89 + 32) = v85;
      *(v89 + 40) = v86;
      v83 += v84;
      --v81;
    }

    while (v81);

    v90 = v107;
    v70 = v110;
    v63 = v111;
    v73 = v109;
  }

  else
  {

    v90 = v107;
  }

  sub_1D29C41A4();
  sub_1D29AEB78(0, &qword_1EC6FDBF0, 0x1E69790F8);
  v103(v105, v63, v90);
  v91 = sub_1D29C44E4();
  v92 = v114 + v70[22];
  v94 = *v92;
  v93 = *(v92 + 8);
  v95 = *(v92 + 16);
  v96 = v112;
  if (*(v92 + 17) == 1)
  {
    if ((v95 & 1) == 0)
    {
      v97 = *v92;
      v98 = *(v92 + 8);
LABEL_42:
      [v91 setPreferredContentSize_];
    }
  }

  else
  {

    sub_1D29C4484();
    v99 = v90;
    v100 = sub_1D29C3DC4();
    v63 = v111;
    sub_1D29C3BE4();

    v90 = v99;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2188(v94, v93, v95, 0);
    (*(v113 + 8))(v96, v73);
    if ((BYTE8(v117) & 1) == 0)
    {
      v97 = v116;
      v98 = *&v117;
      goto LABEL_42;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE0C8, &unk_1D29C68A0);
  sub_1D29C3DB4();
  sub_1D29B18D8(&qword_1EC6FE0F0, type metadata accessor for PhotosPickerViewController.Coordinator, &unk_1D29C6820);
  sub_1D29C4504();
  sub_1D29C3DB4();
  sub_1D29B18D8(&qword_1EC6FE0F8, type metadata accessor for PhotosPickerViewController.Coordinator, &unk_1D29C67F0);
  sub_1D29C44F4();
  (*(v106 + 8))(v63, v90);
  return v91;
}

uint64_t sub_1D29BD4E8(void *a1, uint64_t a2)
{
  v3 = v2;
  v66 = a1;
  v67 = a2;
  v4 = type metadata accessor for PhotosPickerItem(0);
  v62 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D29C3CA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D29C4284();
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29C4274();
  v14 = type metadata accessor for PhotosPickerViewController(0);
  sub_1D29C40C4();
  v68 = v13;
  sub_1D29C4214();
  v15 = v2 + v14[5];
  v16 = *v15;
  if (*(v15 + 8) != 1)
  {

    sub_1D29C4484();
    v17 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v16, 0);
    (*(v8 + 8))(v10, v7);
    LODWORD(v16) = v70;
  }

  sub_1D29BBE28(v16);
  sub_1D29C4244();
  v18 = v2 + v14[13];
  v19 = *v18;
  v20 = *(v18 + 8);
  LODWORD(v18) = *(v18 + 16);
  v63 = v10;
  if (v18 == 1)
  {
  }

  else
  {

    sub_1D29C4484();
    v21 = v8;
    v22 = v7;
    v23 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v7 = v22;
    v8 = v21;
    v10 = v63;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2168(v19, v20, 0);
    (*(v21 + 8))(v10, v7);
  }

  sub_1D29C4264();
  v24 = v3 + v14[14];
  v25 = *v24;
  v26 = *(v24 + 8);
  if (*(v24 + 16) == 1)
  {
  }

  else
  {

    sub_1D29C4484();
    v27 = v8;
    v28 = v7;
    v29 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v7 = v28;
    v8 = v27;
    v10 = v63;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2168(v25, v26, 0);
    (*(v27 + 8))(v10, v7);
  }

  sub_1D29C4254();
  v30 = v3 + v14[15];
  v31 = *v30;
  if ((*(v30 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v32 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v31, 0);
    (*(v8 + 8))(v10, v7);
  }

  sub_1D29C4224();
  v33 = v3 + v14[16];
  v34 = *v33;
  if ((*(v33 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v35 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v34, 0);
    (*(v8 + 8))(v10, v7);
  }

  sub_1D29C4234();
  sub_1D29C44C4();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE0C8, &unk_1D29C68A0);
  sub_1D29C3DB4();
  v37 = 0x1EC6FD000uLL;
  v38 = *(v73 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUIP33_017389DAE44781501AADB4871649B48726PhotosPickerViewController11Coordinator_selection);

  v39 = (v3 + v14[25]);
  v40 = *v39;
  v41 = v39[1];
  v42 = v39[2];
  v70 = *v39;
  v71 = v41;
  v72 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB28, &qword_1D29C5A58);
  MEMORY[0x1D38A3CF0](&v69);
  v44 = sub_1D29B2708(v38, v69);

  if (v44)
  {
    return (*(v64 + 8))(v68, v65);
  }

  v70 = v40;
  v71 = v41;
  v63 = v42;
  v72 = v42;
  MEMORY[0x1D38A3CF0](&v73, v43);
  v46 = v73;
  v47 = *(v73 + 16);
  if (v47)
  {
    v58 = v43;
    v59 = v41;
    v60 = v40;
    v61 = v36;
    v70 = MEMORY[0x1E69E7CC0];
    sub_1D29BF5C8(0, v47, 0);
    v48 = v70;
    v49 = v46 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v50 = *(v62 + 72);
    do
    {
      sub_1D29B1940();
      v52 = *v6;
      v51 = v6[1];

      sub_1D29C0528(v6, type metadata accessor for PhotosPickerItem);
      v70 = v48;
      v54 = *(v48 + 16);
      v53 = *(v48 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1D29BF5C8(v53 > 1, v54 + 1, 1);
        v48 = v70;
      }

      *(v48 + 16) = v54 + 1;
      v55 = v48 + 16 * v54;
      *(v55 + 32) = v52;
      *(v55 + 40) = v51;
      v49 += v50;
      --v47;
    }

    while (v47);

    v37 = 0x1EC6FD000;
    v40 = v60;
    v43 = v58;
    v41 = v59;
  }

  else
  {
  }

  v56 = sub_1D29C43C4();

  [v66 _overrideSelectedItemsWithIdentifiers_];

  sub_1D29C3DB4();
  v57 = v73;
  v70 = v40;
  v71 = v41;
  v72 = v63;
  MEMORY[0x1D38A3CF0](&v69, v43);
  (*(v64 + 8))(v68, v65);
  *(v57 + *(v37 + 3872)) = v69;
}

uint64_t sub_1D29BDD20(uint64_t a1)
{
  v2 = v1;
  sub_1D29B1940();
  v4 = a1 + *(type metadata accessor for PhotosPickerViewController(0) + 100);
  v8[1] = *v4;
  v9 = *(v4 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB28, &qword_1D29C5A58);
  MEMORY[0x1D38A3CF0](v8, v5);
  v6 = v8[0];
  sub_1D29C0528(a1, type metadata accessor for PhotosPickerViewController);
  *(v2 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUIP33_017389DAE44781501AADB4871649B48726PhotosPickerViewController11Coordinator_selection) = v6;
  return v2;
}

uint64_t sub_1D29BDDE8(uint64_t a1, uint64_t a2)
{
  v97 = sub_1D29C3CA4();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosPickerItem(0);
  v101 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v116 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v95 - v8;
  v117 = sub_1D29C42C4();
  v109 = *(v117 - 1);
  v9 = MEMORY[0x1EEE9AC00](v117);
  v108 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v95 - v11;
  v121 = sub_1D29C4054();
  v12 = *(v121 - 8);
  v13 = MEMORY[0x1EEE9AC00](v121);
  v118 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v95 - v15;
  v17 = sub_1D29C42F4();
  v110 = *(v17 - 8);
  v111 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUIP33_017389DAE44781501AADB4871649B48726PhotosPickerViewController11Coordinator_parent;
  v113 = type metadata accessor for PhotosPickerViewController(0);
  v114 = v20;
  v21 = (v20 + v113[25]);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v105 = v22;
  v123 = v22;
  v124 = v23;
  v104 = v23;
  v103 = v24;
  v125 = v24;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB28, &qword_1D29C5A58);
  MEMORY[0x1D38A3CF0](&v122);
  v112 = v122;
  sub_1D29C44D4();
  v115 = v19;
  v106 = sub_1D29C4194();
  v25 = *(a2 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  v99 = a2;
  v98 = v12;
  if (v25)
  {
    v27 = *(v12 + 16);
    v28 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v119 = *(v12 + 72);
    v120 = v27;
    v29 = (v12 + 8);
    v30 = v25;
    do
    {
      v31 = v121;
      v120(v16, v28, v121);
      v32 = sub_1D29C4014();
      v34 = v33;
      (*v29)(v16, v31);
      if (v34)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1D29AE070(0, *(v26 + 2) + 1, 1, v26);
        }

        v36 = *(v26 + 2);
        v35 = *(v26 + 3);
        v37 = v26;
        if (v36 >= v35 >> 1)
        {
          v37 = sub_1D29AE070((v35 > 1), v36 + 1, 1, v26);
        }

        *(v37 + 2) = v36 + 1;
        v26 = v37;
        v38 = &v37[16 * v36];
        *(v38 + 4) = v32;
        *(v38 + 5) = v34;
      }

      v28 += v119;
      --v30;
    }

    while (v30);
  }

  v39 = v107;
  sub_1D29C42D4();
  v41 = v108;
  v40 = v109;
  v42 = *(v109 + 13);
  v43 = v117;
  v42(v108, *MEMORY[0x1E6979058], v117);
  v44 = _s015_PhotosUI_SwiftB00A23PickerSelectionBehaviorV2eeoiySbAC_ACtFZ_0();
  v45 = *(v40 + 1);
  v45(v41, v43);
  v45(v39, v43);
  if (v44 & 1) != 0 || (sub_1D29C42D4(), v42(v41, *MEMORY[0x1E6979060], v43), v46 = _s015_PhotosUI_SwiftB00A23PickerSelectionBehaviorV2eeoiySbAC_ACtFZ_0(), v45(v41, v43), v45(v39, v43), (v46))
  {

    v47 = 1;
    v48 = v112;
    v49 = v115;
  }

  else
  {
    if (!(*(v106 + 16) | v25))
    {

      v78 = 0;
      v49 = v115;
      goto LABEL_32;
    }

    v77 = sub_1D29B2E98(v26, v106);

    v48 = v112;
    v49 = v115;
    if (v77)
    {
LABEL_29:

      v78 = 0;
      goto LABEL_32;
    }

    v47 = 0;
  }

  v50 = *(v114 + v113[27]);

  v52 = sub_1D29BE898(v51, (v50 & 1) == 0);
  LODWORD(v119) = v53;
  if (v25)
  {
    v120 = v52;
    LODWORD(v108) = v47;
    v109 = v26;
    v123 = MEMORY[0x1E69E7CC0];
    sub_1D29BF608(0, v25, 0);
    v54 = v123;
    v55 = v98 + 16;
    v117 = *(v98 + 16);
    v56 = v99 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v57 = *(v98 + 72);
    v58 = (v98 + 8);
    v59 = v101;
    v60 = v100;
    do
    {
      v61 = v118;
      v62 = v121;
      v63 = v55;
      (v117)(v118, v56, v121);
      sub_1D29BEAC8(v61, v120, v119 & 1, v60);
      (*v58)(v61, v62);
      v123 = v54;
      v65 = *(v54 + 16);
      v64 = *(v54 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_1D29BF608(v64 > 1, v65 + 1, 1);
        v59 = v101;
        v54 = v123;
      }

      *(v54 + 16) = v65 + 1;
      sub_1D29C2194(v60, v54 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v65);
      v56 += v57;
      --v25;
      v55 = v63;
    }

    while (v25);

    v49 = v115;
    v48 = v112;
    v26 = v109;
    LOBYTE(v47) = v108;
  }

  else
  {

    v54 = MEMORY[0x1E69E7CC0];
  }

  v123 = v105;
  v124 = v104;
  v125 = v103;
  v122 = v54;
  sub_1D29C3F54();
  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

  v66 = *(v48 + 16);
  if (v66)
  {
    v67 = v26;
    v123 = MEMORY[0x1E69E7CC0];
    sub_1D29BF5C8(0, v66, 0);
    v68 = v123;
    v69 = v48 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
    v70 = *(v101 + 72);
    do
    {
      v71 = v116;
      sub_1D29B1940();
      v73 = *v71;
      v72 = v71[1];

      sub_1D29C0528(v71, type metadata accessor for PhotosPickerItem);
      v123 = v68;
      v75 = *(v68 + 16);
      v74 = *(v68 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_1D29BF5C8(v74 > 1, v75 + 1, 1);
        v68 = v123;
      }

      *(v68 + 16) = v75 + 1;
      v76 = v68 + 16 * v75;
      *(v76 + 32) = v73;
      *(v76 + 40) = v72;
      v69 += v70;
      --v66;
    }

    while (v66);

    v26 = v67;
  }

  else
  {

    v68 = MEMORY[0x1E69E7CC0];
  }

  v79 = sub_1D29B2E98(v68, v26);

  v78 = v79 ^ 1;
LABEL_32:
  v80 = sub_1D29C4134();
  v81 = sub_1D29C4174();
  v82 = [objc_opt_self() currentDevice];
  v83 = [v82 userInterfaceIdiom];

  if (v83 == 5)
  {
    v84 = -5;
  }

  else
  {
    v84 = -2;
  }

  v85 = v114 + v113[23];
  v86 = *v85;
  if (*(v85 + 8) != 1)
  {

    sub_1D29C4484();
    v87 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v88 = v95;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v86, 0);
    (*(v96 + 8))(v88, v97);
    LOBYTE(v86) = v123;
  }

  v90 = v110;
  v89 = v111;
  if (!(v86 & 1 | (v80 >> 3) & 1 | v78 & 1) && (v84 | v81) != 0xFFFFFFFFFFFFFFFFLL)
  {
    v91 = v114 + v113[24];
    v92 = *v91;
    v93 = *(v91 + 8);
    LOBYTE(v91) = *(v91 + 16);
    v123 = v92;
    v124 = v93;
    LOBYTE(v125) = v91;
    LOBYTE(v122) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
    sub_1D29C3F54();
  }

  return (*(v90 + 8))(v49, v89);
}

uint64_t sub_1D29BE898(uint64_t a1, int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC08, &qword_1D29C5AF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v18 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    v19 = a2;
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D29BF5E8(0, v7, 0);
    v8 = v20;
    v9 = *(type metadata accessor for PhotosPickerItem(0) - 8);
    v10 = *(v9 + 80);
    v18[1] = a1;
    v11 = a1 + ((v10 + 32) & ~v10);
    v12 = *(v9 + 72);
    do
    {
      v13 = (v6 + *(v4 + 48));
      sub_1D29B1940();
      v14 = v13[1];
      *v6 = *v13;
      v6[1] = v14;
      v20 = v8;
      v15 = *(v8 + 16);
      v16 = *(v8 + 24);

      if (v15 >= v16 >> 1)
      {
        sub_1D29BF5E8((v16 > 1), v15 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v15 + 1;
      sub_1D29AE9CC();
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  return sub_1D29BEEC4(v8);
}

void sub_1D29BEAC8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v39 = a2;
  v43 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE118, &qword_1D29C68E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v39 - v6;
  v7 = sub_1D29C3BD4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - v11;
  v44 = a1;
  v13 = sub_1D29C4004();
  v14 = [v13 registeredContentTypes];

  v15 = sub_1D29C43D4();
  v16 = 0;
  v17 = *(v15 + 16);
  v48 = v8 + 16;
  v49 = v17;
  v45 = (v8 + 32);
  v47 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v49 == v16)
    {

      v28 = v44;
      v29 = sub_1D29C4014();
      if (!v30)
      {
        goto LABEL_18;
      }

      v31 = v29;
      v32 = v30;
      v33 = v47;
      v34 = v42;
      if (!*(v47 + 16))
      {
        sub_1D29BEF78(v29, v30, v39, v42);
        v35 = type metadata accessor for PhotosPickerItem(0);
        if (__swift_getEnumTagSinglePayload(v34, 1, v35) != 1)
        {

          sub_1D29C2194(v34, v43);
          return;
        }

        sub_1D29C2974(v34, &qword_1EC6FE118);
      }

      v36 = *(type metadata accessor for PhotosPickerItem(0) + 28);
      v37 = sub_1D29C4054();
      v38 = v43;
      (*(*(v37 - 8) + 16))(v43 + v36, v28, v37);
      type metadata accessor for PhotosPickerItem.Content(0);
      swift_storeEnumTagMultiPayload();
      *v38 = v31;
      *(v38 + 8) = v32;
      *(v38 + 16) = v40 & 1;
      *(v38 + 24) = v33;
      return;
    }

    if (v16 >= *(v15 + 16))
    {
      break;
    }

    v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v19 = *(v8 + 72);
    (*(v8 + 16))(v12, v15 + v18 + v19 * v16, v7);
    v20 = sub_1D29C3B94();
    v21 = PFIsLivePhotoBundleType();

    if (v21)
    {
      (*(v8 + 8))(v12, v7);
      ++v16;
    }

    else
    {
      v22 = *v45;
      (*v45)(v46, v12, v7);
      v23 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v23;
      v41 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D29BF660(0, *(v23 + 16) + 1, 1);
        v23 = v50;
      }

      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v47 = v26 + 1;
        sub_1D29BF660(v25 > 1, v26 + 1, 1);
        v27 = v47;
        v23 = v50;
      }

      ++v16;
      *(v23 + 16) = v27;
      v47 = v23;
      v41((v23 + v18 + v26 * v19), v46, v7);
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1D29BEEC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE130, &qword_1D29C6900);
    v1 = sub_1D29C45D4();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1D29BFC24(v2, 1, &v4);

  return v4;
}

uint64_t sub_1D29BEF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_1D29AE344(a1, a2), (v5 & 1) != 0))
  {
    v6 = type metadata accessor for PhotosPickerItem(0);
    sub_1D29B1940();
    v7 = a4;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for PhotosPickerItem(0);
    v7 = a4;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_1D29BF03C()
{
  sub_1D29C0528(v0 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUIP33_017389DAE44781501AADB4871649B48726PhotosPickerViewController11Coordinator_parent, type metadata accessor for PhotosPickerViewController);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D29BF0D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D29BC41C();
  *a1 = result;
  return result;
}

uint64_t sub_1D29BF0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29B18D8(&qword_1EC6FE0C0, type metadata accessor for PhotosPickerViewController, &unk_1D29C6778);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D29BF18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29B18D8(&qword_1EC6FE0C0, type metadata accessor for PhotosPickerViewController, &unk_1D29C6778);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D29BF220(uint64_t a1)
{
  sub_1D29B18D8(&qword_1EC6FE0C0, type metadata accessor for PhotosPickerViewController, &unk_1D29C6778);
  sub_1D29C3D84();
  __break(1u);
}

uint64_t sub_1D29BF278()
{
  v1 = sub_1D29C3CA4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUIP33_017389DAE44781501AADB4871649B48726PhotosPickerViewController11Coordinator_parent;
  v6 = v5 + *(type metadata accessor for PhotosPickerViewController(0) + 68);
  v8 = *v6;
  v7 = *(v6 + 8);
  if (*(v6 + 16) != 1)
  {

    sub_1D29C4484();
    v10 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C215C(v8, v7, 0);
    result = (*(v2 + 8))(v4, v1);
    v8 = v11[0];
    v7 = v11[1];
    if (!v11[0])
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_1D29AAE6C(*v6, v7);
  if (v8)
  {
LABEL_5:
    v8(result);
    return sub_1D29AEB68(v8, v7);
  }

  return result;
}

uint64_t sub_1D29BF40C()
{
  v1 = sub_1D29C3CA4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUIP33_017389DAE44781501AADB4871649B48726PhotosPickerViewController11Coordinator_parent;
  v6 = v5 + *(type metadata accessor for PhotosPickerViewController(0) + 72);
  v8 = *v6;
  v7 = *(v6 + 8);
  if (*(v6 + 16) != 1)
  {

    sub_1D29C4484();
    v10 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C215C(v8, v7, 0);
    result = (*(v2 + 8))(v4, v1);
    v8 = v11[0];
    v7 = v11[1];
    if (!v11[0])
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_1D29AAE6C(*v6, v7);
  if (v8)
  {
LABEL_5:
    v8(result);
    return sub_1D29AEB68(v8, v7);
  }

  return result;
}

uint64_t sub_1D29BF5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D29BF6B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D29BF5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D29BF7B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D29BF5E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D29BF8B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D29BF6B8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE0E8, &qword_1D29C68B8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1D29AE190((a4 + 32), v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 4, (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D29BF7B0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBE8, &qword_1D29C5AE0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1D29AE190((a4 + 32), v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1D29BF8B0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE148, &qword_1D29C6918);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC08, &qword_1D29C5AF0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC08, &qword_1D29C5AF0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1D29AE1A8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1D29BFA7C(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v11 = v10;
  if (v12)
  {
    v13 = *(v2 + 24);
    v14 = v13 >> 1;
    if ((v13 >> 1) < v1)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= v1)
      {
        v14 = v1;
      }
    }
  }

  else
  {
    v14 = v1;
  }

  v15 = *(v2 + 16);
  if (v14 <= v15)
  {
    v16 = *(v2 + 16);
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v17 = v8(0);
  OUTLINED_FUNCTION_75(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_24;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_19:
  v8(0);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_90();
  if (v11)
  {
    v6(v9 + v25, v15, v22 + v25);
    *(v9 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D29BFC24(uint64_t a1, char a2, void *a3)
{
  v44 = a3;
  v6 = type metadata accessor for PhotosPickerItem(0);
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC08, &qword_1D29C5AF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v43 = (&v37 - v12);
  v41 = *(a1 + 16);
  if (!v41)
  {
LABEL_13:

    return;
  }

  v37 = v3;
  v38 = a1;
  v13 = 0;
  v14 = *(v10 + 48);
  v39 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v40 = v14;
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1D29C4604();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v11;
    v16 = v43;
    sub_1D29AE974();
    v18 = v16[1];
    v47 = *v16;
    v17 = v47;
    v48 = v18;
    v19 = v8;
    sub_1D29C2194(v16 + v40, v8);
    v20 = *v44;
    v22 = sub_1D29AE344(v17, v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE138, &qword_1D29C6908);
      sub_1D29C4594();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v44;
    *(*v44 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v30 = (v29[6] + 16 * v22);
    *v30 = v17;
    v30[1] = v18;
    v31 = v29[7] + *(v42 + 72) * v22;
    v8 = v19;
    sub_1D29C2194(v19, v31);
    v32 = v29[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_20;
    }

    ++v13;
    v29[2] = v34;
    a2 = 1;
    a1 = v38;
    v11 = v15;
    if (v41 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_1D29C007C(v25, a2 & 1);
  v27 = sub_1D29AE344(v17, v18);
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v35 = swift_allocError();
  swift_willThrow();
  v49 = v35;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE140, &qword_1D29C6910);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1D29C0528(v19, type metadata accessor for PhotosPickerItem);

    return;
  }

LABEL_22:
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1D29C4574();
  MEMORY[0x1D38A4150](0xD00000000000001BLL, 0x80000001D29C75D0);
  sub_1D29C4584();
  MEMORY[0x1D38A4150](39, 0xE100000000000000);
  sub_1D29C45A4();
  __break(1u);
}

uint64_t sub_1D29C007C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PhotosPickerItem(0);
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE130, &qword_1D29C6900);
  v39 = v4;
  result = sub_1D29C45C4();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v36 = v2;
  v37 = v7;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_1D29C03C8(0, (v35 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(v7 + 56);
    v22 = (*(v7 + 48) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v38 + 72);
    if (v39)
    {
      sub_1D29C2194(v21 + v25 * v20, v40);
    }

    else
    {
      sub_1D29B1940();
    }

    sub_1D29C4614();
    sub_1D29C4394();
    result = sub_1D29C4644();
    v26 = -1 << *(v9 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v9 + 48) + 16 * v29);
    *v34 = v23;
    v34[1] = v24;
    result = sub_1D29C2194(v40, *(v9 + 56) + v25 * v29);
    ++*(v9 + 16);
    v7 = v37;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v16 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1D29C03C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1D29C5ED0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D29C042C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D38A43D0](v3);
  if (v3)
  {
    v5 = *(sub_1D29C3BD4() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_1D29B18D8(&qword_1EC6FE1F8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
    do
    {
      result = sub_1D29C4344();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D29C0528(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_15_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D29C059C()
{
  result = qword_1EE0876C0;
  if (!qword_1EE0876C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE20, &qword_1D29C5F18);
    sub_1D29B18D8(qword_1EE087890, type metadata accessor for PhotosPickerViewController, &unk_1D29C6848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0876C0);
  }

  return result;
}

uint64_t sub_1D29C067C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = type metadata accessor for PhotosPicker(0, v6, v7, a4);
  OUTLINED_FUNCTION_25_0(v8);
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1D29B5FD0(a1, v10, v11, v12, v6, v7);
}

uint64_t sub_1D29C0708()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_112();
  v6 = type metadata accessor for PhotosPicker(v3, v4, v2, v5);
  OUTLINED_FUNCTION_25_0(v6);
  OUTLINED_FUNCTION_90();

  return sub_1D29B5974(v0 + v8, v1, v2, v7);
}