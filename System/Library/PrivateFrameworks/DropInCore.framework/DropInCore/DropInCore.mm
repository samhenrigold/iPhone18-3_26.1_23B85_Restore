void sub_249DEFE70(uint64_t a1@<X8>)
{
  sub_249DEFE68();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_249DEFEDC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DEFF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A628();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_249E7A5B8();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 24) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_249DEFFE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A628();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_249E7A5B8();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_249DF00F0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_249DF0124()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_249DF0180()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_249DF01E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249DF0228()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_249DF0284()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF0314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A628();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_249DF03BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A628();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_249DF04A0()
{
  MEMORY[0x24C205940](v0 + 16);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF04D4()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_249DF0514()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_249DF054C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249DF0594()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10);
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_249DF069C()
{
  MEMORY[0x24C205940](v0 + 16);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF06D8()
{
  sub_249E7A628();
  OUTLINED_FUNCTION_3();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_68();
  v1(v0);
  v2 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_249DF0790(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_249DF07B0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_34_0(v2);
  v4 = *(v3 + 80);
  swift_unknownObjectRelease();

  v5 = sub_249E7A628();
  if (!OUTLINED_FUNCTION_320(v5))
  {
    (*(*(v0 - 8) + 8))(v1 + ((v4 + 40) & ~v4), v0);
  }

  v6 = OUTLINED_FUNCTION_309();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_249DF08A4()
{
  sub_249E7A5B8();
  OUTLINED_FUNCTION_3();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_68();
  v1(v0);
  v2 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_249DF095C()
{
  sub_249E7A628();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_160();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_68();
  v1(v0);
  v2 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_249DF0A1C()
{
  sub_249E7A628();
  OUTLINED_FUNCTION_3();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_68();
  v1(v0);
  v2 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_249DF0ADC()
{
  type metadata accessor for DropInStateManager.Context(0);
  OUTLINED_FUNCTION_281();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = *(v0 + 32);
  sub_249E7A5B8();
  OUTLINED_FUNCTION_28_0();
  (*(v5 + 8))(v1 + v3 + v4);
  v6 = OUTLINED_FUNCTION_309();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_249DF0BC0()
{
  type metadata accessor for DropInStateManager.Context(0);
  OUTLINED_FUNCTION_281();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = *(v0 + 32);
  sub_249E7A5B8();
  OUTLINED_FUNCTION_28_0();
  (*(v5 + 8))(v1 + v3 + v4);
  v6 = OUTLINED_FUNCTION_309();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_249DF0D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A628();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_249E7A5B8();
    v8 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 28) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_249DF0DF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A628();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_249E7A5B8();
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_249DF0EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_249E7A5B8();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_249DF0F4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_249E7A5B8();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_249DF0FCC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249DF100C(uint64_t a1, uint64_t a2)
{
  v4 = sub_249E7A628();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_249DF1054(uint64_t a1, uint64_t a2)
{
  v4 = sub_249E7A628();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_249DF10A0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_249E7A5B8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_249DF1128(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_249E7A5B8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_249DF11E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_249DF11A8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_249DF1294()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249DF12D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249DF1328(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

double sub_249DF1390@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_249E3B9A4(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

char *sub_249DF13E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

uint64_t sub_249DF140C()
{
  v1 = sub_249E7A5B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_249DF1550()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DF1588()
{
  MEMORY[0x24C205940](v0 + 16);
  v1 = OUTLINED_FUNCTION_2_12();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF15B8()
{

  OUTLINED_FUNCTION_8_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_249DF1610()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249DF1650()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249DF1698()
{
  v1 = OUTLINED_FUNCTION_2_12();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF16C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249DF1724(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_249DF17C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_249DF1858()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_249DF188C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_249DF18EC()
{

  OUTLINED_FUNCTION_8_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_249DF1920()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_249DF1974()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF19A8()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_249DF1A08(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_249DF1AD8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_249DF1B2C()
{
  MEMORY[0x24C205940](v0 + 16);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF1B60()
{

  v0 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_249DF1B98()
{

  swift_unknownObjectRelease();
  v1 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF1BE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_249E521BC(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_249DF1C38()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF1C6C()
{

  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_249DF1CA4()
{
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF1CD8()
{
  OUTLINED_FUNCTION_8_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF1D14()
{

  OUTLINED_FUNCTION_8_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_249DF1D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A628();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_249DF1E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A628();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_249DF1F2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249DF1F64()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_249DF1FB8()
{
  v1 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 113) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_39_1();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t sub_249DF20A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF240A0, &qword_249E80258);
  OUTLINED_FUNCTION_28_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_249DF2130()
{
  MEMORY[0x24C205940](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DF2168()
{
  v1 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (((((*(v6 + 64) + v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_249DF2290()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249DF22D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249DF233C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A628();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_249DF23E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A628();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_249DF2490()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24168, &unk_249E806B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249DF254C()
{
  MEMORY[0x24C205940](v0 + 16);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF2580()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_249DF25B8()
{
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF25FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249DF2634()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249DF267C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249DF26C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A6B8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_249DF2770(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A6B8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_249DF2874()
{
  MEMORY[0x24C205940](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DF28AC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249DF28EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DF294C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A628();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_249E7A5B8();
    v8 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 28) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_249DF2A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A628();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_249E7A5B8();
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_249DF2BD4()
{
  MEMORY[0x24C205940](v0 + 16);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF2C10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249DF2C5C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

id sub_249DF2C94(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

void sub_249DF2CB0(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_249DF2D58(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_249DF2F84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 65))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249DF2FC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

void sub_249DF3064(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_249DF30B0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  if (a1[8])
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      return 0;
    }

    v9 = a1[4];
    v8 = a1[5];
    v10 = a1[7];
    v12 = *(a2 + 16);
    v11 = *(a2 + 24);
    v14 = *(a2 + 32);
    v13 = *(a2 + 40);
    v15 = *(a2 + 56);
    v25 = *(a2 + 48);
    v26 = a1[6];
    v16 = v4 == *a2 && v5 == *(a2 + 8);
    if (!v16 && (sub_249E7B318() & 1) == 0)
    {
      return 0;
    }

    if (v7)
    {
      if (!v11)
      {
        return 0;
      }

      v17 = v6 == v12 && v7 == v11;
      if (!v17 && (sub_249E7B318() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (v8)
    {
      if (!v13)
      {
        return 0;
      }

      v23 = v9 == v14 && v8 == v13;
      if (!v23 && (sub_249E7B318() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v13)
    {
      return 0;
    }

    if (v10)
    {
      if (v15)
      {
        v24 = v26 == v25 && v10 == v15;
        if (v24 || (sub_249E7B318() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v15)
    {
      return 1;
    }

    return 0;
  }

  if (*(a2 + 64))
  {
    return 0;
  }

  v19 = *(a2 + 16);
  v20 = *(a2 + 24);
  v21 = v4 == *a2 && v5 == *(a2 + 8);
  if (!v21 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  if (v6 == v19 && v7 == v20)
  {
    return 1;
  }

  return sub_249E7B318();
}

uint64_t sub_249DF3274(uint64_t a1)
{
  if (*(v1 + 64))
  {
    MEMORY[0x24C205020](1);
    return sub_249E30EBC(a1);
  }

  else
  {
    MEMORY[0x24C205020](0);
    sub_249E7AB18();

    return sub_249E7AB18();
  }
}

uint64_t sub_249DF3334()
{
  sub_249E7B408();
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (v0[8])
  {
    v5 = *(v0 + 3);
    v12 = *(v0 + 2);
    v13 = v5;
    v8 = v2;
    v9 = v1;
    v10 = v4;
    v11 = v3;
    MEMORY[0x24C205020](1);
    sub_249E30EBC(v7);
  }

  else
  {
    MEMORY[0x24C205020](0);
    sub_249E7AB18();
    sub_249E7AB18();
  }

  return sub_249E7B438();
}

uint64_t sub_249DF33F0(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(v1 + 64);
  sub_249E7B408();
  if (v6)
  {
    v10 = v3;
    v11 = v2;
    v12 = v5;
    v13 = v4;
    v7 = *(v1 + 3);
    v14 = *(v1 + 2);
    v15 = v7;
    MEMORY[0x24C205020](1);
    sub_249E30EBC(v9);
  }

  else
  {
    MEMORY[0x24C205020](0);
    sub_249E7AB18();
    sub_249E7AB18();
  }

  return sub_249E7B438();
}

uint64_t sub_249DF349C()
{
  if (*(v0 + 64))
  {
    return 0;
  }

  else
  {
    return sub_249E7AA88();
  }
}

uint64_t sub_249DF34CC()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (v0[8])
  {
    v8 = *(v0 + 2);
    v9 = *(v0 + 3);
    v7[0] = v2;
    v7[1] = v1;
    v7[2] = v4;
    v7[3] = v3;
    v5 = sub_249E30C28();
    MEMORY[0x24C204750](v5);

    MEMORY[0x24C204750](93, 0xE100000000000000);
    return 0x726F70706152285BLL;
  }

  else
  {
    sub_249E7B128();

    strcpy(v7, "[(IDS) SCI = ");
    MEMORY[0x24C204750](v2, v1);
    MEMORY[0x24C204750](0x44496D6F7266202CLL, 0xEB00000000203D20);
    MEMORY[0x24C204750](v4, v3);
    MEMORY[0x24C204750](93, 0xE100000000000000);
    return v7[0];
  }
}

void sub_249DF3610()
{
  OUTLINED_FUNCTION_0();
  nullsub_1();
  *v0 = v1;
}

unint64_t sub_249DF3648()
{
  result = qword_27EF231A0;
  if (!qword_27EF231A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF231A0);
  }

  return result;
}

uint64_t sub_249DF3718()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249DF3748()
{
  sub_249DF3718();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_249DF3794(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_249E7A5B8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_249DF381C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_249E7A5B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = v8;
  v14 = *(v6 + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v22 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v22 = ((a1 + v14) & ~v12);
    }

    return __swift_getEnumTagSinglePayload(v22, v10, v13);
  }

  v15 = (v14 & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 2:
        v21 = *a1;
        break;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v21 = *a1;
        break;
      default:
        v21 = *a1;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_249DF3A64(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_249E7A5B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = (v15 & ~v14) + *(*(v10 - 8) + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v12 = v9;
            v10 = v7;
          }

          else
          {
            v24 = (&a1[v15] & ~v14);
            v25 = a2;
          }

          __swift_storeEnumTagSinglePayload(v24, v25, v12, v10);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_249DF3DA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_249E7B2F8();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_249E7A4C8();

  v11 = [v10 description];
  v12 = sub_249E7AAA8();

  return v12;
}

uint64_t sub_249DF3F70()
{
  v1 = [v0 category];
  v2 = [v1 categoryType];

  v3 = sub_249E7AAA8();
  v5 = v4;

  if (v3 == sub_249E7AAA8() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_249E7B318();
  }

  return v8 & 1;
}

id sub_249DF4038()
{
  v2 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  if (![v0 supportsDropIn])
  {
    if (qword_28130D340 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_28130D340);
    }

    v32 = sub_249E7A6B8();
    __swift_project_value_buffer(v32, qword_28130E708);
    v33 = v0;
    v34 = sub_249E7A698();
    v35 = sub_249E7AE28();

    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_4();
    v36 = OUTLINED_FUNCTION_2();
    *v1 = 138412290;
    *(v1 + 4) = v33;
    *v36 = v33;
    v37 = v33;
    v38 = "Accessory does not support Drop In. Not creating Drop In Device from Accessory %@";
    goto LABEL_22;
  }

  if ((sub_249DF3F70() & 1) == 0)
  {
    if (qword_28130D340 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_28130D340);
    }

    v39 = sub_249E7A6B8();
    __swift_project_value_buffer(v39, qword_28130E708);
    v40 = v0;
    v34 = sub_249E7A698();
    v35 = sub_249E7AE28();

    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_4();
    v36 = OUTLINED_FUNCTION_2();
    *v1 = 138412290;
    *(v1 + 4) = v40;
    *v36 = v40;
    v41 = v40;
    v38 = "Unsupported Accessory. Not creating Drop In Device from Accessory %@";
LABEL_22:
    _os_log_impl(&dword_249DEE000, v34, v35, v38, v1, 0xCu);
    sub_249DF4A68(v36);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
LABEL_23:

    return 0;
  }

  if (qword_28130D340 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_28130D340);
  }

  v11 = sub_249E7A6B8();
  v12 = __swift_project_value_buffer(v11, qword_28130E708);
  v13 = v0;
  v14 = sub_249E7A698();
  v15 = sub_249E7AE28();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_4();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_249DEE000, v14, v15, "Creating Drop In Device from Accessory %@", v16, 0xCu);
    sub_249DF4A68(v17);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  v19 = [objc_allocWithZone(MEMORY[0x277D069A8]) init];
  v20 = [v13 name];
  if (!v20)
  {
    sub_249E7AAA8();
    v20 = sub_249E7AA88();
  }

  [v19 setName_];

  v21 = [v13 uniqueIdentifier];
  sub_249E7A608();

  v22 = sub_249E7A5E8();
  v23 = *(v4 + 8);
  v23(v10, v2);
  [v19 setHomeKitIdentifier_];

  v24 = [v13 home];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 uniqueIdentifier];

    sub_249E7A608();
    v25 = sub_249E7A5E8();
    v23(v8, v2);
  }

  [v19 setHomeKitHomeIdentifier_];

  [v19 setIsCurrentDevice_];
  v27 = v19;
  v28 = sub_249E7A698();
  v29 = sub_249E7AE28();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_4();
    v30 = OUTLINED_FUNCTION_2();
    *v12 = 138412290;
    *(v12 + 4) = v27;
    *v30 = v27;
    v31 = v27;
    _os_log_impl(&dword_249DEE000, v28, v29, "Successfully created Drop In Device %@", v12, 0xCu);
    sub_249DF4A68(v30);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  return v27;
}

id sub_249DF4570(void *a1)
{
  v1 = a1;
  HMAccessory.description.getter();

  v2 = sub_249E7AA88();

  return v2;
}

uint64_t HMAccessory.description.getter()
{
  v1 = v0;
  v2 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 room];
  v9 = &off_278FBA000;
  if (v8)
  {
    v10 = v8;
    v11 = [v8 uniqueIdentifier];
    sub_249E7A608();

    v12 = sub_249E7A5D8();
    v14 = v13;
    (*(v4 + 8))(v7, v2);
    v41 = v12;
    v42 = v14;

    MEMORY[0x24C204750](47, 0xE100000000000000);

    v16 = v41;
    v15 = v42;
    v17 = [v10 name];
    v18 = sub_249E7AAA8();
    v20 = v19;

    v41 = v16;
    v42 = v15;

    MEMORY[0x24C204750](v18, v20);

    v9 = &off_278FBA000;

    v22 = v41;
    v21 = v42;
  }

  else
  {
    v22 = 0;
    v21 = 0xE000000000000000;
  }

  v23 = [v1 supportsDropIn];
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_249E7B128();
  MEMORY[0x24C204750](0x203D20656D614E5BLL, 0xE800000000000000);
  v24 = [v1 v9[220]];
  v25 = sub_249E7AAA8();
  v27 = v26;

  MEMORY[0x24C204750](v25, v27);

  MEMORY[0x24C204750](0x69746E656449202CLL, 0xEF203D2072656966);
  v28 = [v1 uniqueIdentifier];
  sub_249E7A608();

  sub_249DF49D8();
  v29 = sub_249E7B2D8();
  MEMORY[0x24C204750](v29);

  (*(v4 + 8))(v7, v2);
  MEMORY[0x24C204750](0x3D206D6F6F52202CLL, 0xE900000000000020);
  MEMORY[0x24C204750](v22, v21);

  MEMORY[0x24C204750](0xD000000000000015, 0x8000000249E82170);
  if (v23)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (v23)
  {
    v31 = 0xE400000000000000;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  MEMORY[0x24C204750](v30, v31);

  MEMORY[0x24C204750](0xD000000000000016, 0x8000000249E82190);
  v32 = [v1 supportsAnnounce];
  v33 = v32 == 0;
  if (v32)
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (v33)
  {
    v35 = 0xE500000000000000;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x24C204750](v34, v35);

  MEMORY[0x24C204750](0x6D6F48207349202CLL, 0xEF203D20646F5065);
  v36 = sub_249DF3F70();
  v37 = (v36 & 1) == 0;
  if (v36)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if (v37)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  MEMORY[0x24C204750](v38, v39);

  MEMORY[0x24C204750](93, 0xE100000000000000);
  return v41;
}

unint64_t sub_249DF49D8()
{
  result = qword_28130D350;
  if (!qword_28130D350)
  {
    sub_249E7A628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D350);
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

uint64_t sub_249DF4A68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_1()
{

  JUMPOUT(0x24C205870);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return swift_slowAlloc();
}

uint64_t sub_249DF4C00()
{
  v0 = sub_249E7A6B8();
  __swift_allocate_value_buffer(v0, qword_27EF23410);
  __swift_project_value_buffer(v0, qword_27EF23410);
  return sub_249E7A6A8();
}

uint64_t *sub_249DF4C80()
{
  sub_249DF2D58(*(v0 + 112), *(v0 + 120));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249DF4CB0()
{
  v0 = sub_249DF4C80();

  return MEMORY[0x282200960](v0);
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

uint64_t sub_249DF4D64(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249DF4DB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_249DF4E08(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_249DF4E20(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id sub_249DF4E60(uint64_t a1, char **a2)
{
  result = sub_249E51FB4();
  v18 = result;
  for (i = 0; v18 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x24C204D50](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      result = *(a1 + 8 * i + 32);
    }

    v6 = result;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v7 = [result description];
    v8 = sub_249E7AAA8();
    v10 = v9;

    MEMORY[0x24C204750](v8, v10);

    sub_249E3A128();
    v11 = *(*a2 + 2);
    sub_249E3A220(v11);
    v12 = *a2;
    *(v12 + 2) = v11 + 1;
    v13 = &v12[16 * v11];
    *(v13 + 4) = 0x205D656D6F485BLL;
    *(v13 + 5) = 0xE700000000000000;
    v14 = [v6 accessories];
    sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v15 = sub_249E7ABE8();

    sub_249DF5054(v15, a2);

    v16 = sub_249DF8ABC();
    v17 = v6;
    sub_249DF5224(v16, v17, a2);
  }

  return result;
}

void sub_249DF5054(uint64_t a1, char **a2)
{
  v19 = sub_249E51FB4();
  for (i = 0; v19 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C204D50](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    sub_249E7B128();

    strcpy(v18, "- [Accessory] ");
    HIBYTE(v18[1]) = -18;
    v7 = [v6 description];
    v8 = sub_249E7AAA8();
    v10 = v9;

    MEMORY[0x24C204750](v8, v10);

    v12 = v18[0];
    v11 = v18[1];
    v13 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_249E3A324(0, *(v13 + 2) + 1, 1, v13);
      *a2 = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_249E3A324((v15 > 1), v16 + 1, 1, v13);
      *a2 = v13;
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[16 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v11;
  }
}

void sub_249DF5224(uint64_t a1, void *a2, uint64_t *a3)
{
  v7 = sub_249E51FB4();
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C204D50](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = v9;
    sub_249DF5734(&v11, a2, a3);
    if (v3)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_249DF530C(uint64_t a1)
{
  v3 = [v1 allHomes];
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v4 = sub_249E7ABE8();

  v8[2] = a1;
  sub_249E51F9C(sub_249DF53BC, v8, v4);
  v6 = v5;

  return v6;
}

id sub_249DF53DC(uint64_t a1)
{
  v3 = [v1 allHomes];
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v4 = sub_249E7ABE8();

  v5 = sub_249E51FB4();
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v13 = 0;
LABEL_10:

      return v13;
    }

    sub_249E51FD8();
    result = (v4 & 0xC000000000000001) != 0 ? MEMORY[0x24C204D50](v6, v4) : *(v4 + 8 * v6 + 32);
    v8 = result;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v9 = [result accessories];
    sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v10 = sub_249E7ABE8();

    MEMORY[0x28223BE20](v11);
    v14[2] = a1;
    sub_249E51F9C(sub_249DF6B74, v14, v10);
    v13 = v12;

    ++v6;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249DF558C(id *a1, uint64_t a2)
{
  v3 = sub_249E7A628();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_249E7A608();

  v8 = sub_249E7A5F8();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

char *sub_249DF5698()
{
  v4 = MEMORY[0x277D84F90];
  v1 = [v0 allHomes];
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v2 = sub_249E7ABE8();

  sub_249DF4E60(v2, &v4);

  return v4;
}

uint64_t sub_249DF5734(void *a1, id a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = [a2 homeAccessControlForUser_];
  v6 = [v5 isRemoteAccessAllowed];

  v7 = sub_249DF8B94(v4);
  sub_249E7B128();
  MEMORY[0x24C204750](0x5D726573555B202DLL, 0xE900000000000020);
  v8 = [v4 description];
  v9 = sub_249E7AAA8();
  v11 = v10;

  MEMORY[0x24C204750](v9, v11);

  MEMORY[0x24C204750](0xD000000000000012, 0x8000000249E82250);
  if (v6)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v6)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x24C204750](v12, v13);

  MEMORY[0x24C204750](0xD000000000000013, 0x8000000249E82270);
  if (v7)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v7)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x24C204750](v14, v15);

  MEMORY[0x24C204750](41, 0xE100000000000000);
  sub_249E3A128();
  v16 = *(*a3 + 16);
  result = sub_249E3A220(v16);
  v18 = *a3;
  *(v18 + 16) = v16 + 1;
  v19 = v18 + 16 * v16;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0xE000000000000000;
  return result;
}

void sub_249DF5924()
{
  v1 = [v0 allHomes];
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v2 = sub_249E7ABE8();

  v3 = 0;
  v43 = v2 & 0xC000000000000001;
  v44 = sub_249E51FB4();
  v42 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = MEMORY[0x277D84F90];
  v38 = v2;
  v41 = v2 + 32;
  while (v3 != v44)
  {
    if (v43)
    {
      v5 = MEMORY[0x24C204D50](v3, v38);
    }

    else
    {
      if (v3 >= *(v42 + 16))
      {
        goto LABEL_51;
      }

      v5 = *(v41 + 8 * v3);
    }

    v6 = v5;
    v7 = __OFADD__(v3++, 1);
    if (v7)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return;
    }

    v8 = [v5 accessories];
    sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v9 = sub_249E7ABE8();

    if (v9 >> 62)
    {
      v10 = sub_249E7B068();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v4 >> 62;
    if (v4 >> 62)
    {
      v12 = sub_249E7B068();
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v12 + v10;
    if (__OFADD__(v12, v10))
    {
      goto LABEL_52;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v11)
      {
LABEL_17:
        sub_249E7B068();
      }

LABEL_18:
      v4 = sub_249E7B158();
      v14 = v4 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_19;
    }

    if (v11)
    {
      goto LABEL_17;
    }

    v14 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v13 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_19:
    v15 = *(v14 + 16);
    v16 = (*(v14 + 24) >> 1) - v15;
    v17 = v14 + 8 * v15;
    if (v9 >> 62)
    {
      v19 = sub_249E7B068();
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = v19;
      v21 = sub_249E7B068();
      if (v16 < v21)
      {
        goto LABEL_58;
      }

      if (v20 < 1)
      {
        goto LABEL_59;
      }

      v39 = v21;
      v40 = v4;
      v22 = v17 + 32;
      sub_249DF695C();
      for (i = 0; i != v20; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234C8, &unk_249E7D650);
        v24 = sub_249E51E9C(v45, i, v9);
        v26 = *v25;
        (v24)(v45, 0);
        *(v22 + 8 * i) = v26;
      }

      v4 = v40;
      v18 = v39;
LABEL_29:

      if (v18 < v10)
      {
        goto LABEL_53;
      }

      if (v18 > 0)
      {
        v27 = *(v14 + 16);
        v7 = __OFADD__(v27, v18);
        v28 = v27 + v18;
        if (v7)
        {
          goto LABEL_56;
        }

        *(v14 + 16) = v28;
      }
    }

    else
    {
      v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        if (v16 < v18)
        {
          goto LABEL_57;
        }

        swift_arrayInitWithCopy();
        goto LABEL_29;
      }

LABEL_33:

      if (v10 > 0)
      {
        goto LABEL_53;
      }
    }
  }

  v45[0] = MEMORY[0x277D84F90];
  v29 = sub_249E51FB4();
  v30 = 0;
  v31 = v4 & 0xC000000000000001;
  v32 = v4;
  v33 = v4 & 0xFFFFFFFFFFFFFF8;
  while (v29 != v30)
  {
    if (v31)
    {
      v34 = MEMORY[0x24C204D50](v30, v32);
    }

    else
    {
      if (v30 >= *(v33 + 16))
      {
        goto LABEL_55;
      }

      v34 = *(v32 + 8 * v30 + 32);
    }

    v35 = v34;
    v36 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_54;
    }

    v37 = sub_249DF4038();

    ++v30;
    if (v37)
    {
      MEMORY[0x24C2047D0]();
      if (*((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_249E7AC08();
      }

      sub_249E7AC18();
      v30 = v36;
    }
  }
}

uint64_t sub_249DF5D84(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v3 = sub_249E7ABE8();
  return sub_249DF5DE8(v2, v3);
}

uint64_t sub_249DF5E08(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_249E7A628();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23750, &qword_249E7E130);
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249DF5F54, 0, 0);
}

uint64_t sub_249DF5F54()
{
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_249DF6070;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF234B8, &qword_249E7D648);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_249DF5D84;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 loadHomes_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_249DF6070()
{

  return MEMORY[0x2822009F8](sub_249DF6150, 0, 0);
}

void sub_249DF6150()
{
  v1 = *(v0 + 176);
  v2 = v0 + 144;
  v3 = 0;
  v69 = v1 & 0xC000000000000001;
  v71 = sub_249E51FB4();
  v61 = v1;
  v65 = v1 + 32;
  v67 = v1 & 0xFFFFFFFFFFFFFF8;
  v4 = MEMORY[0x277D84F90];
  while (v3 != v71)
  {
    if (v69)
    {
      v5 = MEMORY[0x24C204D50](v3, v61);
    }

    else
    {
      if (v3 >= *(v67 + 16))
      {
        goto LABEL_61;
      }

      v5 = *(v65 + 8 * v3);
    }

    v6 = v5;
    v7 = __OFADD__(v3, 1);
    v8 = v3 + 1;
    if (v7)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      return;
    }

    v9 = [v5 accessories];
    sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v10 = sub_249E7ABE8();

    if (v10 >> 62)
    {
      v11 = sub_249E7B068();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v4 >> 62;
    if (v4 >> 62)
    {
      v13 = sub_249E7B068();
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v13 + v11;
    if (__OFADD__(v13, v11))
    {
      goto LABEL_62;
    }

    v75 = v11;
    v77 = v8;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v12)
      {
LABEL_17:
        sub_249E7B068();
      }

LABEL_18:
      v4 = sub_249E7B158();
      v15 = v4 & 0xFFFFFFFFFFFFFF8;
      v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_19;
    }

    if (v12)
    {
      goto LABEL_17;
    }

    v15 = v4 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v16 < v14)
    {
      goto LABEL_18;
    }

LABEL_19:
    v17 = *(v15 + 16);
    v18 = v16 - v17;
    v19 = v15 + 8 * v17;
    if (v10 >> 62)
    {
      v21 = sub_249E7B068();
      if (!v21)
      {
        goto LABEL_33;
      }

      v22 = v21;
      v23 = sub_249E7B068();
      if (v18 < v23)
      {
        goto LABEL_68;
      }

      if (v22 < 1)
      {
        goto LABEL_69;
      }

      v62 = v23;
      v73 = v4;
      v24 = v19 + 32;
      sub_249DF695C();
      for (i = 0; i != v22; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234C8, &unk_249E7D650);
        v26 = sub_249E51E9C(v2, i, v10);
        v28 = *v27;
        (v26)(v2, 0);
        *(v24 + 8 * i) = v28;
      }

      v4 = v73;
      v20 = v62;
LABEL_29:

      v3 = v77;
      if (v20 < v75)
      {
        goto LABEL_63;
      }

      if (v20 > 0)
      {
        v29 = *(v15 + 16);
        v7 = __OFADD__(v29, v20);
        v30 = v29 + v20;
        if (v7)
        {
          goto LABEL_66;
        }

        *(v15 + 16) = v30;
      }
    }

    else
    {
      v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        if (v18 < v20)
        {
          goto LABEL_67;
        }

        swift_arrayInitWithCopy();
        goto LABEL_29;
      }

LABEL_33:

      v3 = v77;
      if (v75 > 0)
      {
        goto LABEL_63;
      }
    }
  }

  v31 = v60[28];
  v32 = v60[26];

  v33 = 0;
  v76 = v4 & 0xC000000000000001;
  v78 = sub_249E51FB4();
  v72 = v4 & 0xFFFFFFFFFFFFFF8;
  v74 = v4;
  v63 = (v32 + 32);
  v68 = (v32 + 8);
  v70 = v31;
  while (1)
  {
    if (v78 == v33)
    {

      v35 = 0;
      goto LABEL_57;
    }

    if (v76)
    {
      v34 = MEMORY[0x24C204D50](v33, v4);
    }

    else
    {
      if (v33 >= *(v72 + 16))
      {
        goto LABEL_65;
      }

      v34 = *(v4 + 8 * v33 + 32);
    }

    v35 = v34;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_64;
    }

    v36 = v60[32];
    v37 = v60[25];
    v38 = v60[23];
    v39 = [v34 uniqueIdentifier];
    sub_249E7A608();

    v40 = 1;
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v37);
    v41 = [v38 homeKitIdentifier];
    if (v41)
    {
      v42 = v41;
      sub_249E7A608();

      v40 = 0;
    }

    v44 = v60[31];
    v43 = v60[32];
    v45 = v60[29];
    v46 = v60[25];
    __swift_storeEnumTagSinglePayload(v44, v40, 1, v46);
    v47 = *(v31 + 48);
    sub_249DF6A08(v43, v45);
    sub_249DF6A08(v44, v45 + v47);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v46);
    v49 = v60[25];
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    sub_249DF6A08(v60[29], v60[30]);
    v51 = __swift_getEnumTagSinglePayload(v45 + v47, 1, v49);
    v52 = v60[31];
    v53 = v60[32];
    v54 = v60[30];
    if (v51 == 1)
    {
      v55 = v60[25];
      sub_249DF6A78(v60[31], &qword_27EF234B0, &qword_249E7D910);
      sub_249DF6A78(v53, &qword_27EF234B0, &qword_249E7D910);
      (*v68)(v54, v55);
      v31 = v70;
      goto LABEL_51;
    }

    v66 = v60[29];
    v56 = v60[27];
    v57 = v60[25];
    (*v63)(v56, v45 + v47, v57);
    sub_249DF6AD8();
    v64 = sub_249E7AA78();
    v58 = *v68;
    (*v68)(v56, v57);
    sub_249DF6A78(v52, &qword_27EF234B0, &qword_249E7D910);
    sub_249DF6A78(v53, &qword_27EF234B0, &qword_249E7D910);
    v58(v54, v57);
    sub_249DF6A78(v66, &qword_27EF234B0, &qword_249E7D910);
    v4 = v74;
    v31 = v70;
    if (v64)
    {
      goto LABEL_56;
    }

LABEL_53:

    ++v33;
  }

  v50 = v60[32];
  sub_249DF6A78(v60[31], &qword_27EF234B0, &qword_249E7D910);
  sub_249DF6A78(v50, &qword_27EF234B0, &qword_249E7D910);
  if (__swift_getEnumTagSinglePayload(v45 + v47, 1, v49) != 1)
  {
LABEL_51:
    sub_249DF6A78(v60[29], &qword_27EF23750, &qword_249E7E130);
    v4 = v74;
    goto LABEL_53;
  }

  sub_249DF6A78(v60[29], &qword_27EF234B0, &qword_249E7D910);
LABEL_56:

LABEL_57:

  v59 = v60[1];

  v59(v35);
}

uint64_t sub_249DF686C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_249DF691C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_249DF695C()
{
  result = qword_28130D290;
  if (!qword_28130D290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF234C8, &unk_249E7D650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D290);
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

uint64_t sub_249DF6A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249DF6A78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_249DF6AD8()
{
  result = qword_27EF23760;
  if (!qword_27EF23760)
  {
    sub_249E7A628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23760);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_249DF6C2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_249E7A6B8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_249E7A6A8();
}

uint64_t sub_249DF6CAC()
{
  sub_249DF758C();

  v1 = OBJC_IVAR____TtC10DropInCore18AudioSystemManager_logger;
  v2 = sub_249E7A6B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_249DF77C0(v0 + OBJC_IVAR____TtC10DropInCore18AudioSystemManager_xpcClientDataSource);
  return v0;
}

uint64_t sub_249DF6D28()
{
  sub_249DF6CAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AudioSystemManager(uint64_t a1)
{
  result = qword_28130DA38;
  if (!qword_28130DA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249DF6DD4(uint64_t a1)
{
  result = sub_249E7A6B8();
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

uint64_t sub_249DF6E7C()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = swift_allocObject();
  swift_weakInit();
  v16 = sub_249DF7628;
  v17 = v1;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_249DF7064;
  v15 = &block_descriptor_0;
  v2 = _Block_copy(&v12);

  v3 = OUTLINED_FUNCTION_2_0();
  v5 = [v3 v4];
  _Block_release(v2);
  swift_unknownObjectRelease();
  v6 = swift_allocObject();
  swift_weakInit();
  v16 = sub_249DF7674;
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_249DF7064;
  v15 = &block_descriptor_15;
  v7 = _Block_copy(&v12);

  v8 = OUTLINED_FUNCTION_2_0();
  v10 = [v8 v9];
  _Block_release(v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_249DF7064(uint64_t a1, uint64_t a2)
{
  v3 = sub_249E7A468();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = *(a1 + 32);
  sub_249E7A448();

  v10(v9);

  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_249DF7144(uint64_t a1, uint64_t a2, const char *a3, SEL *a4, SEL *a5)
{
  type metadata accessor for XPCClient(0);
  OUTLINED_FUNCTION_3();
  v52 = v8;
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_249E7A468();
  OUTLINED_FUNCTION_3();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    (*(v14 + 16))(v18, a1, v12);
    v21 = sub_249E7A698();
    v22 = sub_249E7AE28();
    v51 = v20;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v47 = a3;
      v24 = swift_slowAlloc();
      v55[0] = v24;
      *v23 = 136315138;
      sub_249DF7768();
      v25 = sub_249E7B2D8();
      v27 = v26;
      (*(v14 + 8))(v18, v12);
      v28 = sub_249E3A958(v25, v27, v55);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_249DEE000, v21, v22, v47, v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x24C205870](v24, -1, -1);
      MEMORY[0x24C205870](v23, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v18, v12);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = sub_249E3F064();
      swift_unknownObjectRelease();
      v30 = v29 + 56;
      v31 = 1 << *(v29 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & *(v29 + 56);
      v34 = (v31 + 63) >> 6;

      v35 = 0;
      v36 = &off_278FBA000;
      v37 = &qword_27EF234D0;
      v38 = MEMORY[0x277D84F70];
      v48 = v29;
      if (v33)
      {
        goto LABEL_13;
      }

      while (1)
      {
        v39 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v39 >= v34)
        {
        }

        v33 = *(v30 + 8 * v39);
        ++v35;
        if (v33)
        {
          v35 = v39;
          do
          {
LABEL_13:
            sub_249DF76A8(*(v29 + 48) + *(v52 + 72) * (__clz(__rbit64(v33)) | (v35 << 6)), v11);
            v40 = [*(v11 + *(v53 + 20)) v36[241]];
            sub_249E7AFF8();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(v37, &qword_249E7D6C8);
            if (swift_dynamicCast())
            {
              v41 = v11;
              v42 = v38;
              v43 = v37;
              v44 = v36;
              v45 = *(v51 + 16);
              swift_unknownObjectRetain();
              v46 = v45;
              v36 = v44;
              v37 = v43;
              v38 = v42;
              v11 = v41;
              v29 = v48;
              [v54 *a5];
              swift_unknownObjectRelease_n();
            }

            v33 &= v33 - 1;
            result = sub_249DF770C(v11);
          }

          while (v33);
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

void sub_249DF758C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277D6EF70] object:0];
  [v1 removeObserver:v0 name:*MEMORY[0x277D6EF68] object:0];
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249DF76A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCClient(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249DF770C(uint64_t a1)
{
  v2 = type metadata accessor for XPCClient(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_249DF7768()
{
  result = qword_28130D370[0];
  if (!qword_28130D370[0])
  {
    sub_249E7A468();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28130D370);
  }

  return result;
}

id sub_249DF7818()
{
  v1 = [v0 userIDSURI];
  if (qword_27EF22FA8 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_27EF22FA8);
  }

  v2 = sub_249E7A6B8();
  __swift_project_value_buffer(v2, qword_27EF291A0);
  v3 = v1;
  v4 = v0;
  v5 = sub_249E7A698();
  v6 = sub_249E7AE28();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_6();
    v9 = OUTLINED_FUNCTION_4_0();
    v16 = v9;
    *v7 = 136315394;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234F0, &qword_249E7D770);
    v11 = sub_249E7AAC8();
    v13 = sub_249E3A958(v11, v12, &v16);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = v4;
    v14 = v4;
    _os_log_impl(&dword_249DEE000, v5, v6, "UserIDSURI = %s for User %@", v7, 0x16u);
    sub_249DF6A78(v8, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  return v1;
}

id sub_249DF79F8(uint64_t a1)
{
  v3 = [v1 device];
  v4 = [v3 IDSDestinationForIDSService_];
  if (qword_27EF22FA8 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_27EF22FA8);
  }

  v5 = sub_249E7A6B8();
  __swift_project_value_buffer(v5, qword_27EF291A0);
  v6 = v4;
  v7 = v3;
  v8 = v1;
  v9 = sub_249E7A698();
  v10 = sub_249E7AE28();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_4_0();
    v12 = OUTLINED_FUNCTION_6();
    v23 = swift_slowAlloc();
    *v11 = 136315650;
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234E0, &qword_249E7D760);
    v14 = sub_249E7AAC8();
    v16 = sub_249E3A958(v14, v15, &v23);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234E8, &qword_249E7D768);
    v18 = sub_249E7AAC8();
    v20 = sub_249E3A958(v18, v19, &v23);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2112;
    *(v11 + 24) = v8;
    *v12 = v8;
    v21 = v8;
    _os_log_impl(&dword_249DEE000, v9, v10, "IDSDestination = %s, Home Device = %s, for Accessory %@", v11, 0x20u);
    sub_249DF6A78(v12, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {
  }

  return v4;
}

void *sub_249DF7C78(void *a1)
{
  sub_249E7A628();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = [a1 activeDevices];
  v40 = sub_249DF89D8();
  v12 = sub_249E7ABE8();

  sub_249DF80E4(v12);
  v14 = v13;

  v50 = MEMORY[0x277D84F90];
  v15 = sub_249E51FB4();
  v16 = 0;
  v44 = v14 & 0xC000000000000001;
  v45 = v15;
  v41 = v14;
  v42 = v14 + 32;
  v43 = v14 & 0xFFFFFFFFFFFFFF8;
  v48 = v4 + 16;
LABEL_2:
  while (v16 != v45)
  {
    if (v44)
    {
      v17 = MEMORY[0x24C204D50](v16, v41);
    }

    else
    {
      if (v16 >= *(v43 + 16))
      {
        goto LABEL_23;
      }

      v17 = *(v42 + 8 * v16);
    }

    v18 = v17;
    if (__OFADD__(v16++, 1))
    {
      goto LABEL_22;
    }

    v20 = sub_249DF8978(v17);
    if (v20)
    {
      v21 = v20;
      v46 = v18;
      v47 = v16;
      v22 = 0;
      v23 = *(v20 + 16);
      while (1)
      {
        if (v23 == v22)
        {

          v16 = v47;
          goto LABEL_2;
        }

        if (v22 >= *(v21 + 16))
        {
          break;
        }

        (*(v4 + 16))(v10, v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22++, v1);
        v24 = [v49 uniqueIdentifier];
        sub_249E7A608();

        LOBYTE(v24) = sub_249E7A5F8();
        v25 = *(v4 + 8);
        v25(v8, v1);
        v25(v10, v1);
        if (v24)
        {

          sub_249E7B1A8();
          sub_249E7B1D8();
          sub_249E7B1E8();
          sub_249E7B1B8();
          v16 = v47;
          goto LABEL_2;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v1 = v50;
  if (qword_27EF22FA8 == -1)
  {
    goto LABEL_17;
  }

LABEL_24:
  OUTLINED_FUNCTION_0_2(&qword_27EF22FA8);
LABEL_17:
  v26 = sub_249E7A6B8();
  __swift_project_value_buffer(v26, qword_27EF291A0);

  v27 = v49;
  v28 = sub_249E7A698();
  v29 = sub_249E7AE28();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_4_0();
    v31 = OUTLINED_FUNCTION_6();
    v32 = OUTLINED_FUNCTION_4_0();
    v50 = v32;
    *v30 = 134218498;
    v33 = sub_249E51FB4();

    *(v30 + 4) = v33;

    *(v30 + 12) = 2080;
    v34 = MEMORY[0x24C204800](v1, v40);
    v36 = sub_249E3A958(v34, v35, &v50);

    *(v30 + 14) = v36;
    *(v30 + 22) = 2112;
    *(v30 + 24) = v27;
    *v31 = v27;
    v37 = v27;
    _os_log_impl(&dword_249DEE000, v28, v29, "All User Rapport Devices Count = %ld, User Devices = %s for User %@", v30, 0x20u);
    sub_249DF6A78(v31, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v32);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v1;
}

void sub_249DF80E4(uint64_t a1)
{
  v2 = sub_249E51FB4();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C204D50](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    if (sub_249E616D8() && !sub_249E61798())
    {
      sub_249E7B1A8();
      sub_249E7B1D8();
      sub_249E7B1E8();
      sub_249E7B1B8();
    }

    else
    {
    }
  }
}

char *sub_249DF8210(void *a1)
{
  sub_249E7A628();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23750, &qword_249E7E130);
  MEMORY[0x28223BE20](v59);
  v8 = &v49 - v7;
  v9 = &qword_27EF234B0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v57 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = [a1 activeDevices];
  v50 = sub_249DF89D8();
  v19 = sub_249E7ABE8();

  sub_249DF884C(v19);
  v21 = v20;

  v64 = MEMORY[0x277D84F90];
  v22 = sub_249E51FB4();
  v23 = 0;
  v60 = v21 & 0xFFFFFFFFFFFFFF8;
  v61 = v21 & 0xC000000000000001;
  v51 = (v4 + 32);
  v52 = v17;
  v55 = (v4 + 8);
  v56 = v22;
  v58 = v21;
  while (v22 != v23)
  {
    if (v61)
    {
      v24 = MEMORY[0x24C204D50](v23, v21);
    }

    else
    {
      if (v23 >= *(v60 + 16))
      {
        goto LABEL_30;
      }

      v24 = *(v21 + 8 * v23 + 32);
    }

    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v63 = v24;
    v25 = [v24 homeKitIdentifier];
    if (v25)
    {
      v26 = v25;
      sub_249E7A608();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    __swift_storeEnumTagSinglePayload(v17, v27, 1, v1);
    v28 = [v62 uniqueIdentifier];
    sub_249E7A608();

    __swift_storeEnumTagSinglePayload(v15, 0, 1, v1);
    v29 = *(v59 + 48);
    sub_249DF6A08(v17, v8);
    sub_249DF6A08(v15, &v8[v29]);
    OUTLINED_FUNCTION_5(v8);
    if (v31)
    {
      OUTLINED_FUNCTION_2_1(v15);
      OUTLINED_FUNCTION_2_1(v17);
      OUTLINED_FUNCTION_5(&v8[v29]);
      if (!v31)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_2_1(v8);
    }

    else
    {
      v30 = v57;
      sub_249DF6A08(v8, v57);
      OUTLINED_FUNCTION_5(&v8[v29]);
      if (v31)
      {
        OUTLINED_FUNCTION_2_1(v15);
        OUTLINED_FUNCTION_2_1(v17);
        (*v55)(v30, v1);
        v22 = v56;
LABEL_18:
        sub_249DF6A78(v8, &qword_27EF23750, &qword_249E7E130);
LABEL_19:

        goto LABEL_22;
      }

      v32 = v9;
      v33 = v53;
      (*v51)(v53, &v8[v29], v1);
      sub_249DF6AD8();
      v54 = sub_249E7AA78();
      v34 = *v55;
      v35 = v33;
      v17 = v52;
      v9 = v32;
      (*v55)(v35, v1);
      OUTLINED_FUNCTION_2_1(v15);
      OUTLINED_FUNCTION_2_1(v17);
      v34(v30, v1);
      v21 = v58;
      OUTLINED_FUNCTION_2_1(v8);
      v22 = v56;
      if ((v54 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_249E7B1A8();
    sub_249E7B1D8();
    v21 = v58;
    sub_249E7B1E8();
    sub_249E7B1B8();
LABEL_22:
    ++v23;
  }

  v17 = v64;
  if (qword_27EF22FA8 == -1)
  {
    goto LABEL_25;
  }

LABEL_31:
  OUTLINED_FUNCTION_0_2(&qword_27EF22FA8);
LABEL_25:
  v36 = sub_249E7A6B8();
  __swift_project_value_buffer(v36, qword_27EF291A0);

  v37 = v62;
  v38 = sub_249E7A698();
  v39 = sub_249E7AE28();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_4_0();
    v41 = OUTLINED_FUNCTION_6();
    v42 = OUTLINED_FUNCTION_4_0();
    v64 = v42;
    *v40 = 134218498;
    v43 = sub_249E51FB4();

    *(v40 + 4) = v43;

    *(v40 + 12) = 2080;
    v44 = MEMORY[0x24C204800](v17, v50);
    v46 = sub_249E3A958(v44, v45, &v64);

    *(v40 + 14) = v46;
    *(v40 + 22) = 2112;
    *(v40 + 24) = v37;
    *v41 = v37;
    v47 = v37;
    _os_log_impl(&dword_249DEE000, v38, v39, "All Accessory Rapport Devices Count = %ld, Accessory Devices = %s for Accessory %@", v40, 0x20u);
    sub_249DF6A78(v41, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v17;
}

void sub_249DF884C(uint64_t a1)
{
  v2 = sub_249E51FB4();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C204D50](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    if (sub_249E616D8() && sub_249E61798())
    {
      sub_249E7B1A8();
      sub_249E7B1D8();
      sub_249E7B1E8();
      sub_249E7B1B8();
    }

    else
    {
    }
  }
}

uint64_t sub_249DF8978(void *a1)
{
  v1 = [a1 homeKitUserIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_249E7A628();
  v3 = sub_249E7ABE8();

  return v3;
}

unint64_t sub_249DF89D8()
{
  result = qword_27EF234D8;
  if (!qword_27EF234D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF234D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{

  return sub_249DF6A78(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6()
{

  return swift_slowAlloc();
}

uint64_t sub_249DF8ABC()
{
  v1 = [v0 dic_users];
  v2 = sub_249DF691C(0, &unk_28130D190, 0x277CD1EE0);
  v3 = OUTLINED_FUNCTION_14(v2);

  v4 = [v0 currentUser];
  MEMORY[0x24C2047D0]();
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_249E7AC08();
  }

  sub_249E7AC18();
  return v3;
}

BOOL sub_249DF8B94(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24200, &qword_249E80860);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v27[-v8];
  v10 = [v2 homeAccessControlForUser_];
  v11 = [v10 audioAnalysisUserDropInAccessLevel];

  v12 = v11 == 2;
  sub_249E7A788();
  sub_249DFC174(&qword_28130D338, MEMORY[0x277D06990]);
  sub_249DFC174(&qword_28130D330, MEMORY[0x277D06998]);
  sub_249DFC174(&qword_28130D328, MEMORY[0x277D069A0]);
  sub_249E7A6E8();
  (*(v6 + 8))(v9, v4);
  if (v27[15] == 1)
  {
    if (qword_27EF22FA0 != -1)
    {
      swift_once();
    }

    v13 = sub_249E7A6B8();
    __swift_project_value_buffer(v13, qword_27EF29188);
    v14 = a1;
    v15 = sub_249E7A698();
    v16 = sub_249E7AE28();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v11 == 2;
      v18 = swift_slowAlloc();
      v19 = OUTLINED_FUNCTION_6();
      *v18 = 138412546;
      *(v18 + 4) = v14;
      *v19 = v14;
      *(v18 + 12) = 1024;
      *(v18 + 14) = v17;
      v20 = v14;
      OUTLINED_FUNCTION_1_1();
      _os_log_impl(v21, v22, v23, v24, v25, 0x12u);
      sub_249DF6A78(v19, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_3_1();
    }

    return 1;
  }

  return v12;
}

void sub_249DF8E38()
{
  v1 = [v0 accessories];
  sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
  v2 = sub_249E7ABE8();

  v9 = MEMORY[0x277D84F90];
  v3 = sub_249E51FB4();
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C204D50](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v8 = sub_249DF4038();

    ++v4;
    if (v8)
    {
      MEMORY[0x24C2047D0]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_249E7AC08();
      }

      sub_249E7AC18();
      v4 = v7;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

id sub_249DF8FA4(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (qword_27EF22FB8 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_3(&qword_27EF22FB8);
  }

  v13 = sub_249E7A6B8();
  __swift_project_value_buffer(v13, qword_27EF291B8);

  v14 = a7;

  v15 = sub_249E7A698();
  v16 = sub_249E7ADE8();

  v44 = a4;
  v43 = a3;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = OUTLINED_FUNCTION_6();
    v49[0] = swift_slowAlloc();
    *v17 = 136315906;
    *(v17 + 4) = sub_249E3A958(a1, a2, v49);
    *(v17 + 12) = 2080;
    v47 = a3;
    v48 = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
    v18 = sub_249E7AAC8();
    v20 = sub_249E3A958(v18, v19, v49);

    *(v17 + 14) = v20;
    *(v17 + 22) = 2080;
    v47 = a5;
    v48 = a6;

    v21 = sub_249E7AAC8();
    v23 = sub_249E3A958(v21, v22, v49);

    *(v17 + 24) = v23;
    *(v17 + 32) = 2112;
    *(v17 + 34) = v14;
    *v42 = v14;
    v24 = v14;
    _os_log_impl(&dword_249DEE000, v15, v16, "Searching for User with senderCorrelationIdentifier: %s, fromID: %s, pairingIdentityIdentifier: %s, IDSService: %@", v17, 0x2Au);
    sub_249DF6A78(v42, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_3_1();
  }

  a7 = sub_249DF8ABC();
  v25 = sub_249E51FB4();
  a4 = 0;
  a3 = (a7 & 0xC000000000000001);
  while (v25 != a4)
  {
    if (a3)
    {
      v28 = OUTLINED_FUNCTION_13();
      v26 = MEMORY[0x24C204D50](v28);
    }

    else
    {
      if (a4 >= *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v26 = *(a7 + 8 * a4 + 32);
    }

    v27 = v26;
    if (__OFADD__(a4, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v47 = v26;
    if (sub_249DF9388(&v47, a5, a6, a1, a2))
    {

      return v27;
    }

    ++a4;
  }

  if (!v44)
  {
    goto LABEL_18;
  }

  v29 = sub_249E7A698();
  v30 = sub_249E7ADE8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v31);
    _os_log_impl(&dword_249DEE000, v29, v30, "Failed to find a user. Searching for IDS for owner device with fromID", 0, 2u);
    OUTLINED_FUNCTION_3_1();
  }

  v32 = sub_249DFC1C4(v43, v44, v14);
  if (!v32 || (v32, (v27 = [v45 currentUser]) == 0))
  {
LABEL_18:
    v33 = sub_249E7A698();
    v34 = sub_249E7AE08();
    if (OUTLINED_FUNCTION_4_1(v34))
    {
      v35 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_6_0(v35);
      OUTLINED_FUNCTION_1_1();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_3_1();
    }

    return 0;
  }

  return v27;
}

uint64_t sub_249DF9388(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = *a1;
  if (a3)
  {
    v10 = [*a1 pairingIdentity];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 identifier];

      v13 = sub_249E7AAA8();
      v15 = v14;

      if (v13 == a2 && v15 == v7)
      {
        LODWORD(v7) = 1;
      }

      else
      {
        LODWORD(v7) = sub_249E7B318();
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  v17 = sub_249DFC27C(v8, &selRef_senderCorrelationIdentifier);
  if (v18)
  {
    if (v17 == a4 && v18 == a5)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_249E7B318();
    }
  }

  else
  {
    v20 = 0;
  }

  if (qword_27EF22FB8 != -1)
  {
    swift_once();
  }

  v21 = sub_249E7A6B8();
  __swift_project_value_buffer(v21, qword_27EF291B8);
  v22 = v8;
  v23 = sub_249E7A698();
  v24 = sub_249E7ADE8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412802;
    *(v25 + 4) = v22;
    *v26 = v22;
    *(v25 + 12) = 1026;
    *(v25 + 14) = v20 & 1;
    *(v25 + 18) = 1026;
    *(v25 + 20) = v7 & 1;
    v27 = v22;
    _os_log_impl(&dword_249DEE000, v23, v24, "User: %@, SenderCorrelationIdentifierMatches = %{BOOL,public}d, PairingIdentityIdentifierMatches = %{BOOL,public}d", v25, 0x18u);
    sub_249DF6A78(v26, &unk_27EF23C30, &qword_249E7DA20);
    MEMORY[0x24C205870](v26, -1, -1);
    MEMORY[0x24C205870](v25, -1, -1);
  }

  return (v7 | v20) & 1;
}

id sub_249DF95FC(id a1, void *a2)
{
  v3 = v2;
  if (qword_27EF22FB8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v6 = sub_249E7A6B8();
    __swift_project_value_buffer(v6, qword_27EF291B8);
    v7 = a1;
    a1 = a2;
    v8 = sub_249E7A698();
    v9 = sub_249E7ADE8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *(v10 + 12) = 2112;
      *(v10 + 14) = a1;
      *v11 = v7;
      v11[1] = a1;
      v12 = v7;
      v13 = a1;
      _os_log_impl(&dword_249DEE000, v8, v9, "Searching for Accessory with IDS device: %@, IDSService: %@", v10, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    result = [v7 destination];
    if (!result)
    {
      break;
    }

    v15 = result;
    a2 = sub_249DF98D8();

    v16 = [v3 accessories];
    sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v17 = sub_249E7ABE8();

    v18 = sub_249E51FB4();
    v19 = 0;
    v3 = 0;
    while (1)
    {
      if (v18 == v19)
      {

        v22 = sub_249E7A698();
        v23 = sub_249E7ADE8();
        if (OUTLINED_FUNCTION_4_1(v23))
        {
          v24 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_6_0(v24);
          OUTLINED_FUNCTION_1_1();
          _os_log_impl(v25, v26, v27, v28, v29, 2u);
          OUTLINED_FUNCTION_3_1();
        }

        return 0;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C204D50](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v30 = v20;
      if (sub_249DF9978(&v30, a1, a2))
      {

        return v21;
      }

      ++v19;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    OUTLINED_FUNCTION_0_3(&qword_27EF22FB8);
  }

  __break(1u);
  return result;
}

uint64_t sub_249DF98D8()
{
  v1 = [v0 destinationURIs];
  v2 = sub_249E7AD58();

  v3 = sub_249DFBCD8(v2, 0x2D666C6573, 0xE500000000000000);

  return sub_249DFBFBC(v3);
}

uint64_t sub_249DF9978(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 device];
  if (!v6 || (v7 = v6, v8 = [v6 IDSDestinationForIDSService_], v7, !v8))
  {
    if (qword_27EF22FB8 != -1)
    {
      swift_once();
    }

    v17 = sub_249E7A6B8();
    __swift_project_value_buffer(v17, qword_27EF291B8);
    v18 = v5;
    v14 = sub_249E7A698();
    v19 = sub_249E7ADE8();

    if (!os_log_type_enabled(v14, v19))
    {
      v12 = 0;
      goto LABEL_13;
    }

    v16 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v18;
    *v20 = v18;
    v21 = v18;
    _os_log_impl(&dword_249DEE000, v14, v19, "Failed to find destination URIs for accessory: %@", v16, 0xCu);
    sub_249DF6A78(v20, &unk_27EF23C30, &qword_249E7DA20);
    MEMORY[0x24C205870](v20, -1, -1);
    v12 = 0;
    goto LABEL_11;
  }

  v9 = [v8 destinationURIs];

  v10 = sub_249E7AD58();
  v11 = sub_249DF9C28(a3, v10);

  v12 = v11 ^ 1;
  if (qword_27EF22FB8 != -1)
  {
    swift_once();
  }

  v13 = sub_249E7A6B8();
  __swift_project_value_buffer(v13, qword_27EF291B8);
  v14 = sub_249E7A698();
  v15 = sub_249E7ADE8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v12 & 1;
    _os_log_impl(&dword_249DEE000, v14, v15, "Found Match: %{BOOL}d", v16, 8u);
LABEL_11:
    MEMORY[0x24C205870](v16, -1, -1);
  }

LABEL_13:

  return v12 & 1;
}

uint64_t sub_249DF9C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v24 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      sub_249E7B408();

      sub_249E7AB18();
      v18 = sub_249E7B438();
      v19 = ~(-1 << *(v6 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v6 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v4 = v24;
          goto LABEL_13;
        }

        v21 = (*(v6 + 48) + 16 * v20);
        if (*v21 == v17 && v21[1] == v16)
        {
          break;
        }

        v23 = sub_249E7B318();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_249DF9E00(void *a1, unint64_t a2, void *a3, unint64_t a4, void *a5, void *a6, void *a7, unint64_t a8, uint64_t a9)
{
  if (qword_27EF22FB8 != -1)
  {
LABEL_67:
    OUTLINED_FUNCTION_0_3(&qword_27EF22FB8);
  }

  v16 = sub_249E7A6B8();
  __swift_project_value_buffer(v16, qword_27EF291B8);

  v17 = a9;

  v18 = sub_249E7A698();
  v19 = sub_249E7ADE8();

  v109 = a4;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v103 = OUTLINED_FUNCTION_6();
    v111 = swift_slowAlloc();
    *v20 = 136316162;
    *(v20 + 4) = sub_249E3A958(a1, a2, &v111);
    *(v20 + 12) = 2080;
    v112 = a3;
    v113 = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
    v104 = a1;
    v21 = a7;
    v22 = sub_249E7AAC8();
    v24 = sub_249E3A958(v22, v23, &v111);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    v112 = a5;
    v113 = a6;

    v25 = sub_249E7AAC8();
    v27 = sub_249E3A958(v25, v26, &v111);

    *(v20 + 24) = v27;
    a4 = v109;
    *(v20 + 32) = 2080;
    v112 = a7;
    v113 = a8;

    v28 = sub_249E7AAC8();
    v30 = sub_249E3A958(v28, v29, &v111);

    *(v20 + 34) = v30;
    a7 = v21;
    a1 = v104;
    *(v20 + 42) = 2112;
    *(v20 + 44) = v17;
    *v103 = v17;
    v31 = v17;
    _os_log_impl(&dword_249DEE000, v18, v19, "Searching for Accessory in IDS with senderCorrelationIdentifier: %s, fromID: %s, idsDeviceID: %s, pairingIdentityIdentifier: %s, idsService: %@", v20, 0x34u);
    sub_249DF6A78(v103, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_7();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_1();
  }

  v32 = v106;
  v33 = sub_249DF8FA4(a1, a2, a3, a4, a7, a8, v17);
  if (v33)
  {
    a1 = v33;
    v34 = v33;
    v35 = sub_249E7A698();
    v36 = sub_249E7ADE8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_4();
      a7 = v34;
      v38 = OUTLINED_FUNCTION_6();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = a1;
      v39 = v34;
      _os_log_impl(&dword_249DEE000, v35, v36, "Found user as potential accessory owner: %@", v37, 0xCu);
      sub_249DF6A78(v38, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_1();
      v32 = v106;
      OUTLINED_FUNCTION_1();
    }

    a9 = [v32 homeAccessControlForUser_];
    v40 = [a9 isOwner];

    if (v40)
    {
      v105 = v34;
      v102 = v17;
      if (a6)
      {
        v41 = sub_249E69574(v17);
        if (v41)
        {
          v42 = v41;
          a2 = sub_249E51FB4();
          v43 = 0;
          a8 = v42 & 0xC000000000000001;
          a4 = v42 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (a2 == v43)
            {

              a4 = v109;
              v34 = v105;
              goto LABEL_30;
            }

            if (a8)
            {
              v44 = MEMORY[0x24C204D50](v43, v42);
            }

            else
            {
              if (v43 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_66;
              }

              v44 = *(v42 + 8 * v43 + 32);
            }

            a1 = v44;
            if (__OFADD__(v43, 1))
            {
              __break(1u);
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            v45 = sub_249DFC27C(v44, &selRef_uniqueID);
            if (v46)
            {
              a7 = v46;
              if (v45 == a5 && v46 == a6)
              {

LABEL_55:

                v87 = sub_249DF95FC(a1, v17);
                a4 = v109;
                v34 = v105;
                if (v87)
                {
                  v88 = v87;
                  v89 = v87;
                  v90 = sub_249E7A698();
                  v91 = sub_249E7ADE8();

                  if (os_log_type_enabled(v90, v91))
                  {
                    v92 = OUTLINED_FUNCTION_4();
                    v93 = OUTLINED_FUNCTION_6();
                    *v92 = 138412290;
                    *(v92 + 4) = v89;
                    *v93 = v88;
                    v94 = v89;
                    _os_log_impl(&dword_249DEE000, v90, v91, "Found accessory: %@", v92, 0xCu);
                    sub_249DF6A78(v93, &unk_27EF23C30, &qword_249E7DA20);
                    OUTLINED_FUNCTION_1();
                    OUTLINED_FUNCTION_1();
                  }

                  return;
                }

                if (v109)
                {
                  goto LABEL_31;
                }

LABEL_62:
                v56 = sub_249E7A698();
                v95 = sub_249E7ADE8();
                if (OUTLINED_FUNCTION_4_1(v95))
                {
LABEL_63:
                  v96 = OUTLINED_FUNCTION_9();
                  OUTLINED_FUNCTION_6_0(v96);
                  OUTLINED_FUNCTION_1_1();
                  _os_log_impl(v97, v98, v99, v100, v101, 2u);
                  OUTLINED_FUNCTION_3_1();
                }

LABEL_64:

                return;
              }

              a9 = sub_249E7B318();

              if (a9)
              {
                goto LABEL_55;
              }
            }

            ++v43;
          }
        }
      }

      else
      {
LABEL_30:
        if (!a4)
        {
          goto LABEL_62;
        }

LABEL_31:

        v58 = sub_249E7A698();
        v59 = sub_249E7ADE8();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = OUTLINED_FUNCTION_4();
          v61 = OUTLINED_FUNCTION_4_0();
          v112 = v61;
          *v60 = 136315138;
          *(v60 + 4) = sub_249E3A958(a3, a4, &v112);
          _os_log_impl(&dword_249DEE000, v58, v59, "Searching for accessory with matching fromID: %s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v61);
          OUTLINED_FUNCTION_1();
          OUTLINED_FUNCTION_7();
        }

        v62 = [v106 accessories];
        v63 = sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
        v64 = OUTLINED_FUNCTION_14(v63);

        v65 = sub_249E51FB4();
        v66 = 0;
        v67 = v64 & 0xC000000000000001;
        v68 = v64 & 0xFFFFFFFFFFFFFF8;
        v108 = v64;
        v69 = v64 + 32;
        v70 = &off_278FBA000;
        while (1)
        {
          if (v66 == v65)
          {

            v34 = v105;
            goto LABEL_62;
          }

          if (v67)
          {
            v71 = MEMORY[0x24C204D50](v66, v108);
          }

          else
          {
            if (v66 >= *(v68 + 16))
            {
              goto LABEL_69;
            }

            v71 = *(v69 + 8 * v66);
          }

          v72 = v71;
          if (__OFADD__(v66++, 1))
          {
            break;
          }

          v74 = [v71 v70[248]];
          if (v74)
          {
            v75 = v74;
            v76 = [v74 IDSDestinationForIDSService_];

            if (v76)
            {
              v77 = [v76 destinationURIs];

              v78 = sub_249E7AD58();
              if (*(v78 + 16))
              {
                sub_249E7B408();
                sub_249E7AB18();
                v79 = sub_249E7B438();
                v80 = a3;
                v81 = ~(-1 << *(v78 + 32));
                while (1)
                {
                  v82 = v79 & v81;
                  if (((*(v78 + 56 + (((v79 & v81) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v79 & v81)) & 1) == 0)
                  {
                    break;
                  }

                  v83 = (*(v78 + 48) + 16 * v82);
                  if (*v83 != v80 || v83[1] != v109)
                  {
                    v85 = sub_249E7B318();
                    v80 = a3;
                    v86 = v85;
                    v79 = v82 + 1;
                    if ((v86 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  return;
                }
              }

              v17 = v102;
              v70 = &off_278FBA000;
            }
          }
        }

        __break(1u);
LABEL_69:
        __break(1u);
      }

      __break(1u);
      return;
    }

    v56 = sub_249E7A698();
    v57 = sub_249E7AE08();
    if (OUTLINED_FUNCTION_4_1(v57))
    {
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  v48 = sub_249E7A698();
  v49 = sub_249E7AE08();
  if (OUTLINED_FUNCTION_4_1(v49))
  {
    v50 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v50);
    OUTLINED_FUNCTION_1_1();
    _os_log_impl(v51, v52, v53, v54, v55, 2u);
    OUTLINED_FUNCTION_3_1();
  }
}

void sub_249DFA758(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  if (qword_27EF22FB8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_27EF22FB8);
  }

  v8 = sub_249E7A6B8();
  __swift_project_value_buffer(v8, qword_27EF291B8);
  sub_249DFC328(a1, v86);
  v9 = a3;
  v10 = a2;
  v11 = v9;
  v12 = v10;
  v13 = sub_249E7A698();
  v14 = sub_249E7ADE8();
  sub_249DFC384(a1);

  if (os_log_type_enabled(v13, v14))
  {
    v76 = v13;
    v15 = OUTLINED_FUNCTION_4_0();
    v83 = a1;
    v16 = swift_slowAlloc();
    v79 = OUTLINED_FUNCTION_4_0();
    v86[0] = v79;
    *v15 = 136315650;
    v17 = sub_249E30C28();
    v19 = v12;
    v20 = sub_249E3A958(v17, v18, v86);

    *(v15 + 4) = v20;
    v12 = v19;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v19;
    *(v15 + 22) = 2112;
    *(v15 + 24) = v11;
    *v16 = v19;
    v16[1] = a3;
    v21 = v19;
    v22 = v11;
    _os_log_impl(&dword_249DEE000, v76, v14, "Searching for user with senderContext: %s, companionLinkClient: %@, idsService: %@", v15, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    swift_arrayDestroy();
    a1 = v83;
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v79);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();

    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (!a3)
    {
      goto LABEL_11;
    }
  }

  *v86 = *(a1 + 16);
  v23 = v86[1];
  if (!v86[1])
  {
    goto LABEL_11;
  }

  v77 = a3;
  v80 = v12;
  v24 = v86[0];
  v25 = v11;
  sub_249DFC41C(v86, v85);
  v26 = sub_249E7A698();
  v27 = sub_249E7ADE8();
  sub_249DF6A78(v86, &unk_27EF23FA0, &unk_249E7DF00);
  if (os_log_type_enabled(v26, v27))
  {
    v84 = a1;
    v28 = swift_slowAlloc();
    v74 = v24;
    v29 = OUTLINED_FUNCTION_6();
    v30 = OUTLINED_FUNCTION_4_0();
    v85[0] = v30;
    *v28 = 136315394;
    *(v28 + 4) = sub_249E3A958(v74, v23, v85);
    *(v28 + 12) = 2112;
    *(v28 + 14) = v25;
    *v29 = v77;
    v31 = v25;
    _os_log_impl(&dword_249DEE000, v26, v27, "Searching for user with senderCorrelationIdentifier: %s, idsService: %@", v28, 0x16u);
    sub_249DF6A78(v29, &unk_27EF23C30, &qword_249E7DA20);
    v24 = v74;
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_1();
    a1 = v84;
    OUTLINED_FUNCTION_1();
  }

  v32 = sub_249DF8FA4(v24, v23, 0, 0, *(a1 + 48), *(a1 + 56), v25);
  v12 = v80;
  if (!v32)
  {
LABEL_11:
    v33 = [v12 activeDevices];
    sub_249DF691C(0, &qword_27EF234D8, 0x277D44170);
    v34 = sub_249E7ABE8();

    sub_249DFAE4C(*a1, *(a1 + 8), v34);
    v36 = v35;

    if (v36 && (v37 = sub_249DFC214(v36)) != 0)
    {
      v38 = v37;
      v39 = sub_249E7A698();
      v40 = sub_249E7ADE8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = OUTLINED_FUNCTION_4();
        v42 = OUTLINED_FUNCTION_4_0();
        v85[0] = v42;
        *v41 = 136315138;
        v43 = MEMORY[0x24C204800](v38, v6);
        v45 = sub_249E3A958(v43, v44, v85);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_249DEE000, v39, v40, "Searching home for user with in home from rapport userIdentifiers: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_1();
      }

      v46 = sub_249DF8ABC();
      v47 = sub_249E51FB4();
      v48 = 0;
      v49 = v46 & 0xC000000000000001;
      v50 = v46 & 0xFFFFFFFFFFFFFF8;
      v81 = v47;
      v82 = v46;
      v51 = v46 + 32;
      v75 = v50;
      v78 = v49;
      v73 = v51;
      while (v48 != v47)
      {
        if (v49)
        {
          v52 = MEMORY[0x24C204D50](v48, v82);
        }

        else
        {
          if (v48 >= *(v50 + 16))
          {
            __break(1u);
LABEL_34:
            __break(1u);
            return;
          }

          v52 = *(v51 + 8 * v48);
        }

        v53 = v52;
        if (__OFADD__(v48++, 1))
        {
          goto LABEL_34;
        }

        v55 = [v52 uniqueIdentifier];
        sub_249E7A608();

        v56 = 0;
        v57 = *(v38 + 16);
        while (v57 != v56)
        {
          v58 = v56 + 1;
          sub_249DFC3D8(&qword_27EF23760, MEMORY[0x277CC9610]);
          v59 = sub_249E7AA78();
          v56 = v58;
          if (v59)
          {
            v70 = OUTLINED_FUNCTION_13();
            v71(v70);

            return;
          }
        }

        v60 = OUTLINED_FUNCTION_13();
        v61(v60);

        v49 = v78;
        v47 = v81;
        v51 = v73;
        v50 = v75;
      }

      v62 = sub_249E7A698();
      v72 = sub_249E7AE08();
      if (!OUTLINED_FUNCTION_4_1(v72))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v62 = sub_249E7A698();
      v63 = sub_249E7AE08();
      if (!OUTLINED_FUNCTION_4_1(v63))
      {
LABEL_29:

        return;
      }
    }

    v64 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v64);
    OUTLINED_FUNCTION_1_1();
    _os_log_impl(v65, v66, v67, v68, v69, 2u);
    OUTLINED_FUNCTION_3_1();
    goto LABEL_29;
  }
}

void sub_249DFAE4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = sub_249E51FB4();
    v14 = 0;
    v35 = a3 & 0xC000000000000001;
    v36 = v13;
    v34 = a3 & 0xFFFFFFFFFFFFFF8;
    while (v36 != v14)
    {
      if (v35)
      {
        v15 = MEMORY[0x24C204D50](v14, a3);
      }

      else
      {
        if (v14 >= *(v34 + 16))
        {
          goto LABEL_33;
        }

        v15 = *(a3 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      v17 = [v15 effectiveIdentifier];
      v18 = sub_249E7AAA8();
      v20 = v19;

      if (v18 == a1 && v20 == a2)
      {
LABEL_30:

        return;
      }

      v22 = sub_249E7B318();

      if (v22)
      {
        return;
      }

      v23 = sub_249DFC27C(v16, &selRef_idsDeviceIdentifier);
      if (v24)
      {
        if (v23 == a1 && v24 == a2)
        {
          goto LABEL_30;
        }

        v26 = sub_249E7B318();

        if (v26)
        {
          return;
        }
      }

      v27 = [v16 homeKitIdentifier];
      if (v27)
      {
        v28 = v27;
        sub_249E7A608();

        v29 = 0;
      }

      else
      {
        v29 = 1;
      }

      v30 = sub_249E7A628();
      __swift_storeEnumTagSinglePayload(v9, v29, 1, v30);
      sub_249DFC48C(v9, v11);
      if (__swift_getEnumTagSinglePayload(v11, 1, v30) == 1)
      {
        sub_249DF6A78(v11, &qword_27EF234B0, &qword_249E7D910);
      }

      else
      {
        v39 = a1;
        v40 = a2;
        v37 = sub_249E7A5D8();
        v38 = v31;
        sub_249DFC4FC();
        v32 = sub_249E7AFE8();

        (*(*(v30 - 8) + 8))(v11, v30);
        if (!v32)
        {
          return;
        }
      }

      ++v14;
    }
  }
}

uint64_t sub_249DFB168(uint64_t *a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v98 - v10;
  v106 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v104 = &v98 - v18;
  if (qword_27EF22FB8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_27EF22FB8);
  }

  v19 = sub_249E7A6B8();
  v20 = __swift_project_value_buffer(v19, qword_27EF291B8);
  sub_249DFC328(a1, v107);
  v21 = a3;
  v22 = a2;
  v105 = v20;
  v23 = sub_249E7A698();
  v24 = sub_249E7ADE8();
  sub_249DFC384(a1);

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_4_0();
    v101 = v17;
    v26 = v25;
    v27 = swift_slowAlloc();
    v102 = v13;
    v28 = v27;
    v100 = OUTLINED_FUNCTION_4_0();
    v107[0] = v100;
    *v26 = 136315650;
    v99 = v24;
    v29 = sub_249E30C28();
    v31 = sub_249E3A958(v29, v30, v107);
    v98 = v23;
    v32 = v21;
    v33 = a1;
    v34 = v22;
    v35 = a3;
    v36 = v9;
    v37 = v11;
    v38 = v31;

    *(v26 + 4) = v38;
    v11 = v37;
    v9 = v36;
    v39 = v35;
    v22 = v34;
    a1 = v33;
    v21 = v32;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v22;
    *(v26 + 22) = 2112;
    *(v26 + 24) = v32;
    *v28 = v22;
    v28[1] = v39;
    v40 = v22;
    v41 = v32;
    v42 = v98;
    _os_log_impl(&dword_249DEE000, v98, v99, "Searching for accessory with senderContext: %s, companionLinkClient: %@, idsService: %@", v26, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    swift_arrayDestroy();
    v13 = v102;
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v100);
    OUTLINED_FUNCTION_7();
    v17 = v101;
    OUTLINED_FUNCTION_1();

    if (!v39)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!a3)
    {
      goto LABEL_10;
    }
  }

  v43 = a1[3];
  if (v43)
  {
    v44 = a1[5];
    if (v44)
    {
      v45 = v22;
      v46 = v11;
      v47 = a1[2];
      v48 = v21;
      v49 = a1[4];
      v101 = v17;
      v102 = v13;
      v50 = a1[6];
      v51 = a1[7];
      v52 = v48;
      v100 = v9;
      v53 = v52;
      v97 = v52;
      v54 = v47;
      v11 = v46;
      v22 = v45;
      v55 = v50;
      v56 = v51;
      v17 = v101;
      v13 = v102;
      sub_249DF9E00(v54, v43, 0, 0, v49, v44, v55, v56, v97);
      v58 = v57;

      v9 = v100;
      if (v58)
      {
        return v58;
      }
    }
  }

LABEL_10:
  v59 = [v22 activeDevices];
  v60 = sub_249DF691C(0, &qword_27EF234D8, 0x277D44170);
  v61 = OUTLINED_FUNCTION_14(v60);

  sub_249DFAE4C(*a1, a1[1], v61);
  v63 = v62;

  if (!v63)
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v106);
    goto LABEL_16;
  }

  v64 = [v63 homeKitIdentifier];

  if (v64)
  {
    sub_249E7A608();

    v65 = 0;
  }

  else
  {
    v65 = 1;
  }

  v66 = v104;
  v67 = v106;
  __swift_storeEnumTagSinglePayload(v9, v65, 1, v106);
  sub_249DFC48C(v9, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v67) == 1)
  {
LABEL_16:
    sub_249DF6A78(v11, &qword_27EF234B0, &qword_249E7D910);
    v68 = sub_249E7A698();
    v69 = sub_249E7ADE8();
    if (OUTLINED_FUNCTION_4_1(v69))
    {
      v70 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_6_0(v70);
      OUTLINED_FUNCTION_1_1();
      _os_log_impl(v71, v72, v73, v74, v75, 2u);
      OUTLINED_FUNCTION_3_1();
    }

    return 0;
  }

  v76 = v106;
  (*(v13 + 32))(v66, v11, v106);
  (*(v13 + 16))(v17, v66, v76);
  v77 = sub_249E7A698();
  v78 = sub_249E7ADE8();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = OUTLINED_FUNCTION_4();
    v80 = OUTLINED_FUNCTION_4_0();
    v107[0] = v80;
    *v79 = 136315138;
    OUTLINED_FUNCTION_5_0(&qword_28130D350);
    v81 = v106;
    v82 = sub_249E7B2D8();
    v84 = v83;
    v85 = v81;
    v86 = *(v13 + 8);
    v86(v17, v85);
    v87 = sub_249E3A958(v82, v84, v107);

    *(v79 + 4) = v87;
    _os_log_impl(&dword_249DEE000, v77, v78, "Searching Rapport Device for accessory with matching identifier: %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7();
  }

  else
  {

    v86 = *(v13 + 8);
    v86(v17, v106);
  }

  v88 = [v103 accessories];
  v89 = sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
  v90 = OUTLINED_FUNCTION_14(v89);

  MEMORY[0x28223BE20](v91);
  v97 = v66;
  sub_249E51F9C(sub_249DFC550, &(&v98)[-4], v90);
  v58 = v92;

  if (!v58)
  {
    v93 = sub_249E7A698();
    v94 = sub_249E7ADE8();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = OUTLINED_FUNCTION_9();
      *v95 = 0;
      _os_log_impl(&dword_249DEE000, v93, v94, "Failed to find accessory in Rapport", v95, 2u);
      OUTLINED_FUNCTION_1();
    }
  }

  v86(v66, v106);
  return v58;
}

uint64_t sub_249DFB8C8(id *a1, uint64_t a2)
{
  v3 = sub_249E7A628();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_249E7A608();

  v8 = sub_249E7A5F8();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

id sub_249DFB9D4(void *a1)
{
  v1 = a1;
  HMHome.description.getter();

  v2 = sub_249E7AA88();

  return v2;
}

uint64_t HMHome.description.getter()
{
  v1 = v0;
  v2 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_249E7B128();

  v15 = 0x203D20656D614E5BLL;
  v16 = 0xE800000000000000;
  v8 = [v0 name];
  v9 = sub_249E7AAA8();
  v11 = v10;

  MEMORY[0x24C204750](v9, v11);

  MEMORY[0x24C204750](0x69746E656449202CLL, 0xEF203D2072656966);
  v12 = [v1 uniqueIdentifier];
  sub_249E7A608();

  OUTLINED_FUNCTION_5_0(&qword_28130D350);
  v13 = sub_249E7B2D8();
  MEMORY[0x24C204750](v13);

  (*(v4 + 8))(v7, v2);
  MEMORY[0x24C204750](93, 0xE100000000000000);
  return v15;
}

unint64_t sub_249DFBC04(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_249E7AB38();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_249E7AB78();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249DFBCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v39 = MEMORY[0x277D84F90];
    sub_249E5DA8C(0, v3, 0);
    v5 = v39;
    result = sub_249DFC2DC(v4);
    v9 = result;
    v10 = 0;
    v38 = v4 + 56;
    v33 = v4 + 64;
    v34 = v3;
    v35 = v4;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v4 + 32))
      {
        v11 = v9 >> 6;
        if ((*(v38 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v4 + 36) != v7)
        {
          goto LABEL_29;
        }

        v36 = v8;
        v37 = v7;
        v12 = (*(v4 + 48) + 16 * v9);
        v14 = *v12;
        v13 = v12[1];

        result = sub_249E7AB68();
        if (result)
        {

          v15 = sub_249E7AB28();
          v16 = sub_249DFBC04(v15, v14, v13);
          v14 = MEMORY[0x24C204710](v16);
          v18 = v17;

          v13 = v18;
        }

        v19 = v36;
        v21 = *(v39 + 16);
        v20 = *(v39 + 24);
        v22 = v37;
        if (v21 >= v20 >> 1)
        {
          result = sub_249E5DA8C((v20 > 1), v21 + 1, 1);
          v19 = v36;
          v22 = v37;
        }

        *(v39 + 16) = v21 + 1;
        v23 = v39 + 16 * v21;
        *(v23 + 32) = v14;
        *(v23 + 40) = v13;
        if (v19)
        {
          goto LABEL_33;
        }

        v4 = v35;
        v24 = 1 << *(v35 + 32);
        if (v9 >= v24)
        {
          goto LABEL_30;
        }

        v25 = *(v38 + 8 * v11);
        if ((v25 & (1 << v9)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v35 + 36) != v22)
        {
          goto LABEL_32;
        }

        v26 = v25 & (-2 << (v9 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v27 = v34;
        }

        else
        {
          v28 = v11 << 6;
          v29 = v11 + 1;
          v27 = v34;
          v30 = (v33 + 8 * v11);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_249DFC31C(v9, v22, 0);
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_21;
            }
          }

          result = sub_249DFC31C(v9, v22, 0);
        }

LABEL_21:
        if (++v10 == v27)
        {

          return v5;
        }

        v8 = 0;
        v7 = *(v35 + 36);
        v9 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_249DFBFBC(uint64_t a1)
{
  result = MEMORY[0x24C204980](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_249E63E28(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_249DFC07C(uint64_t a1)
{
  v2 = sub_249E51FB4();
  v3 = sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
  v4 = sub_249DFC570();
  v9[1] = MEMORY[0x24C204980](v2, v3, v4);
  v5 = sub_249E51FB4();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_13();
      v7 = MEMORY[0x24C204D50](v8);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_249E63F70(v9, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_249DFC174(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF24200, &qword_249E80860);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_249DFC1C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_249E7AA88();
  v5 = [a3 deviceForFromID_];

  return v5;
}

uint64_t sub_249DFC214(void *a1)
{
  v2 = [a1 homeKitUserIdentifiers];

  if (!v2)
  {
    return 0;
  }

  sub_249E7A628();
  v3 = sub_249E7ABE8();

  return v3;
}

uint64_t sub_249DFC27C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_249E7AAA8();

  return v4;
}

uint64_t sub_249DFC31C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_249DFC3D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_249E7A628();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249DFC41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249DFC48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_249DFC4FC()
{
  result = qword_27EF234F8;
  if (!qword_27EF234F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF234F8);
  }

  return result;
}

unint64_t sub_249DFC570()
{
  result = qword_28130D158;
  if (!qword_28130D158)
  {
    sub_249DF691C(255, &qword_28130D160, 0x277D069A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D158);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_1()
{

  JUMPOUT(0x24C205870);
}

BOOL OUTLINED_FUNCTION_4_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_5_0(unint64_t *a1)
{
  v2 = MEMORY[0x277CC9628];

  return sub_249DFC3D8(a1, v2);
}

void OUTLINED_FUNCTION_7()
{

  JUMPOUT(0x24C205870);
}

uint64_t OUTLINED_FUNCTION_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1)
{

  return sub_249E7ABE8();
}

void *sub_249DFC6C8()
{
  v1 = v0;
  v31 = *MEMORY[0x277D85DE8];
  started = type metadata accessor for StartDropInResponse(0);
  v3 = *(v0 + started[8]);
  if (v3)
  {
    v4 = objc_opt_self();
    *&v29 = 0;
    v5 = v3;
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v29];
    v7 = v29;
    if (!v6)
    {
      v26 = v7;
      sub_249E7A4D8();

      swift_willThrow();
      return v5;
    }

    v8 = sub_249E7A4F8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7C0;
  *(inited + 32) = 0x696E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_249E7A5D8();
  v13 = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  OUTLINED_FUNCTION_3_2();
  *(inited + 72) = v13;
  *(inited + 80) = v15;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = sub_249E7A5D8();
  *(inited + 104) = v16;
  *(inited + 120) = v13;
  *(inited + 128) = 0x7350656369766564;
  *(inited + 136) = 0xEF6D796E6F647565;
  v17 = (v1 + started[6]);
  v18 = v17[1];
  *(inited + 144) = *v17;
  *(inited + 152) = v18;
  *(inited + 168) = v13;
  *(inited + 176) = 0xD000000000000019;
  *(inited + 184) = 0x8000000249E82340;
  v19 = started[7];
  v20 = sub_249E7A5B8();
  *(inited + 216) = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 192));
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v1 + v19, v20);

  v5 = sub_249E7AA08();
  if (v10 >> 60 == 15)
  {
    v22 = sub_249DFDA24(0x726F727265, 0xE500000000000000);
    if (v23)
    {
      v24 = v22;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23510, &qword_249E7D8E8);
      sub_249E7B208();

      sub_249DFDB78((v5[7] + 32 * v24), v28);
      sub_249E7B218();
    }

    else
    {
      memset(v28, 0, sizeof(v28));
    }

    sub_249DF6A78(v28, &unk_27EF23C40, &qword_249E7D8E0);
  }

  else
  {
    v30 = MEMORY[0x277CC9318];
    *&v29 = v8;
    *(&v29 + 1) = v10;
    sub_249DFDB78(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_249DFDB88(v28, 0x726F727265, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v5;
}

uint64_t sub_249DFCA5C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v65 - v6;
  v8 = sub_249E7A5B8();
  OUTLINED_FUNCTION_3();
  v72 = v9;
  MEMORY[0x28223BE20](v10);
  v73 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  v79 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v74 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v65 - v23;
  sub_249E55870(0x696E6F6973736573, 0xE900000000000064, a1, v77);
  if (!v78)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_1();
  if ((OUTLINED_FUNCTION_7_0() & 1) == 0)
  {
    goto LABEL_14;
  }

  v70 = a2;
  v71 = v8;
  sub_249E55870(0x6469656D6F68, 0xE600000000000000, a1, v77);
  if (!v78)
  {

LABEL_10:

LABEL_11:
    v26 = &unk_27EF23C40;
    v27 = &qword_249E7D8E0;
    v28 = v77;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_1();
  if ((OUTLINED_FUNCTION_7_0() & 1) == 0)
  {

LABEL_14:

    goto LABEL_15;
  }

  v68 = v75;
  v69 = v76;
  sub_249E7A5C8();

  v25 = v79;
  if (__swift_getEnumTagSinglePayload(v17, 1, v79) == 1)
  {

    v26 = &qword_27EF234B0;
    v27 = &qword_249E7D910;
    v28 = v17;
LABEL_12:
    sub_249DF6A78(v28, v26, v27);
LABEL_15:
    sub_249DFE8A4();
    swift_allocError();
    return swift_willThrow();
  }

  v30 = v74 + 32;
  v31 = OUTLINED_FUNCTION_2_2();
  v67 = v32;
  (v32)(v31);
  sub_249E7A5C8();

  v33 = v25;
  if (__swift_getEnumTagSinglePayload(v15, 1, v25) == 1)
  {
    v34 = OUTLINED_FUNCTION_2_2();
    v35(v34);

    v26 = &qword_27EF234B0;
    v27 = &qword_249E7D910;
    v28 = v15;
    goto LABEL_12;
  }

  v67(v22, v15, v25);
  sub_249E55870(0x7350656369766564, 0xEF6D796E6F647565, a1, v77);
  if (!v78)
  {

    v44 = *(v74 + 8);
    v44(v22, v25);
    v45 = OUTLINED_FUNCTION_2_2();
    (v44)(v45);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_1();
  v36 = OUTLINED_FUNCTION_7_0();
  v37 = v74;
  if ((v36 & 1) == 0)
  {

    v46 = *(v37 + 8);
    v46(v22, v25);
    v47 = OUTLINED_FUNCTION_2_2();
    (v46)(v47);
    goto LABEL_15;
  }

  v69 = v30;
  v38 = v22;
  v39 = v76;
  v68 = v75;
  sub_249E55870(0xD000000000000019, 0x8000000249E82340, a1, v77);
  if (!v78)
  {

    v48 = *(v37 + 8);
    v48(v22, v33);
    v49 = OUTLINED_FUNCTION_2_2();
    (v48)(v49);
    sub_249DF6A78(v77, &unk_27EF23C40, &qword_249E7D8E0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v71);
    goto LABEL_26;
  }

  v66 = v39;
  v40 = v71;
  v41 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v7, v41 ^ 1u, 1, v40);
  if (__swift_getEnumTagSinglePayload(v7, 1, v40) == 1)
  {

    v42 = *(v37 + 8);
    v42(v22, v79);
    v43 = OUTLINED_FUNCTION_2_2();
    (v42)(v43);
LABEL_26:
    v26 = &qword_27EF236C0;
    v27 = &unk_249E7F8F0;
    v28 = v7;
    goto LABEL_12;
  }

  v50 = v72;
  v65 = *(v72 + 32);
  v65(v73, v7, v40);
  sub_249E55870(0x726F727265, 0xE500000000000000, a1, v77);

  if (v78)
  {
    OUTLINED_FUNCTION_5_1();
    if (OUTLINED_FUNCTION_7_0())
    {
      v51 = v75;
      v52 = v76;
      sub_249DF691C(0, &qword_27EF23528, 0x277CCAAC8);
      sub_249DF691C(0, &qword_28130D168, 0x277CCA9B8);
      v53 = sub_249E7AE38();
      if (v2)
      {

        sub_249DFE8F8(v51, v52);
        (*(v50 + 8))(v73, v71);
        v54 = *(v74 + 8);
        v55 = v79;
        v54(v38, v79);
        return (v54)(v24, v55);
      }

      v56 = v53;
      sub_249DFE8F8(v51, v52);
    }

    else
    {
      v56 = 0;
    }

    v57 = v79;
  }

  else
  {
    sub_249DF6A78(v77, &unk_27EF23C40, &qword_249E7D8E0);
    v56 = 0;
    v57 = v79;
  }

  v58 = v70;
  v59 = v67;
  v67(v70, v24, v57);
  started = type metadata accessor for StartDropInResponse(0);
  v61 = v57;
  v62 = started;
  v59(&v58[*(started + 20)], v38, v61);
  result = (v65)(&v58[v62[7]], v73, v71);
  v63 = &v58[v62[6]];
  v64 = v66;
  *v63 = v68;
  *(v63 + 1) = v64;
  *&v58[v62[8]] = v56;
  return result;
}

uint64_t sub_249DFD280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_249E7A628();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_249DFD320()
{
  sub_249E05058();
  sub_249E7A9E8();
  OUTLINED_FUNCTION_4_2();
  return v0;
}

uint64_t sub_249DFD390(uint64_t (*a1)(void))
{
  sub_249DFD870(a1);
  sub_249E7A9E8();
  OUTLINED_FUNCTION_4_2();
  return v1;
}

uint64_t sub_249DFD3E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  OUTLINED_FUNCTION_3_2();
  *(v1 + 32) = v2;
  *(v1 + 40) = 0xE600000000000000;
  v3 = sub_249E7A5D8();
  v4 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  sub_249E7AA08();
  sub_249E7A9E8();
  OUTLINED_FUNCTION_4_2();
  return v4;
}

uint64_t sub_249DFD4D4(uint64_t (*a1)(void))
{
  a1();
  v1 = sub_249E7A9E8();

  return v1;
}

BOOL sub_249DFD588(uint64_t a1, uint64_t a2)
{
  if ((sub_249E7A5F8() & 1) == 0)
  {
    return 0;
  }

  started = type metadata accessor for StartDropInResponse(0);
  if ((sub_249E7A5F8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(started + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_249E7B318() & 1) == 0 || (sub_249E7A578() & 1) == 0)
  {
    return 0;
  }

  v10 = *(started + 32);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  result = (v11 | v12) == 0;
  if (v11)
  {
    if (v12)
    {
      sub_249DF691C(0, &qword_28130D168, 0x277CCA9B8);
      v14 = v12;
      v15 = v11;
      v16 = sub_249E7AF78();

      return v16 & 1;
    }
  }

  return result;
}

uint64_t sub_249DFD68C(uint64_t a1)
{
  result = sub_249DFE7AC(&qword_27EF23500, type metadata accessor for StartDropInResponse, &unk_249E7D848);
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for StartDropInResponse(uint64_t a1)
{
  result = qword_27EF23538;
  if (!qword_27EF23538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249DFD730(uint64_t a1)
{
  result = sub_249DFE7AC(&qword_27EF23508, type metadata accessor for StartDropInResponse, &unk_249E7D880);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249DFD788(uint64_t a1)
{
  result = sub_249DFE7AC(&qword_27EF23508, type metadata accessor for StartDropInResponse, &unk_249E7D880);
  *(a1 + 16) = result;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_249DFD870(uint64_t (*a1)(void))
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7E0;
  OUTLINED_FUNCTION_3_2();
  *(v5 + 32) = v6;
  *(v5 + 40) = 0xE600000000000000;
  v7 = sub_249E7A5D8();
  v8 = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 72) = v8;
  *(inited + 80) = 0x726F737365636361;
  *(inited + 88) = 0xEB00000000646979;
  v10 = a1(0);
  *(inited + 96) = sub_249E7A5D8();
  *(inited + 104) = v11;
  *(inited + 120) = v8;
  *(inited + 128) = 0x6574617473;
  *(inited + 136) = 0xE500000000000000;
  v12 = MEMORY[0x277D83B88];
  *(inited + 144) = *(v1 + v10[6]);
  *(inited + 168) = v12;
  *(inited + 176) = 0x6E6F73616572;
  *(inited + 184) = 0xE600000000000000;
  v13 = (v1 + v10[7]);
  v14 = v13[1];
  *(inited + 192) = *v13;
  *(inited + 200) = v14;
  *(inited + 216) = v8;
  *(inited + 224) = 0x6974617269707865;
  *(inited + 232) = 0xEA00000000006E6FLL;
  v15 = sub_249E7A5B8();
  *(inited + 264) = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 240));
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v3 + v10[8], v15);

  return sub_249E7AA08();
}

unint64_t sub_249DFDA24(uint64_t a1, uint64_t a2)
{
  sub_249E7B408();
  sub_249E7AB18();
  v4 = sub_249E7B438();

  return sub_249DFE478(a1, a2, v4);
}

unint64_t sub_249DFDA9C(uint64_t a1)
{
  v2 = sub_249E7B0A8();

  return sub_249DFE52C(a1, v2);
}

unint64_t sub_249DFDAE0(uint64_t a1)
{
  sub_249E7A628();
  sub_249DFE7AC(&qword_28130D360, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_249E7AA48();

  return sub_249DFE5F0(a1, v2);
}

_OWORD *sub_249DFDB78(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_249DFDB88(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_249DFDA24(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23510, &qword_249E7D8E8);
  if ((sub_249E7B208() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_249DFDA24(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_249E7B378();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0(v17);

    return sub_249DFDB78(a1, v17);
  }

  else
  {
    sub_249DFE228(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_249DFDCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_249DFDA24(a3, a4);
  OUTLINED_FUNCTION_0_4();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23530, &qword_249E7D918);
  if ((sub_249E7B208() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_249DFDA24(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_249E7B378();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = a1;
    v18[1] = a2;
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_249DFE294(v13, a3, a4, a1, a2, v17);
    OUTLINED_FUNCTION_6_1();
  }
}

void sub_249DFDE08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_249DFDA24(a2, a3);
  OUTLINED_FUNCTION_0_4();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23518, &unk_249E7D8F0);
  if ((sub_249E7B208() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_249DFDA24(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_249E7B378();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = a1;
  }

  else
  {
    sub_249DFE2E0(v11, a2, a3, a1, v15);
  }
}

_OWORD *sub_249DFDF38(_OWORD *a1, uint64_t a2, char a3)
{
  sub_249DFDA9C(a2);
  OUTLINED_FUNCTION_0_4();
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23520, &qword_249E80210);
  if ((sub_249E7B208() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_249DFDA9C(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_249E7B378();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    v14 = (v13[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v14);

    return sub_249DFDB78(a1, v14);
  }

  else
  {
    sub_249DFE7F4(a2, v16);
    return sub_249DFE328(v9, v16, a1, v13);
  }
}

void sub_249DFE06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v27 = a2;
  v28 = a3;
  v8 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249DFDAE0(a4);
  OUTLINED_FUNCTION_0_4();
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23F80, &unk_249E7D900);
  if ((sub_249E7B208() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = sub_249DFDAE0(a4);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_11:
    sub_249E7B378();
    __break(1u);
    return;
  }

  v17 = v19;
LABEL_5:
  v21 = *v5;
  if (v18)
  {
    v22 = (v21[7] + 24 * v17);
    v23 = v22[2];
    v25 = v27;
    v24 = v28;
    *v22 = a1;
    v22[1] = v25;
    v22[2] = v24;

    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    (*(v10 + 16))(v13, a4, v8);
    sub_249DFE3A4(v17, v13, a1, v27, v28, v21);
    OUTLINED_FUNCTION_6_1();
  }
}

_OWORD *sub_249DFE228(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_249DFDB78(a4, (a5[7] + 32 * a1));
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

unint64_t sub_249DFE294(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_249DFE2E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_249DFE328(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_249DFDB78(a3, (a4[7] + 32 * a1));
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

uint64_t sub_249DFE3A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_249E7A628();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

unint64_t sub_249DFE478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_249E7B318() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_249DFE52C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_249DFE7F4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x24C204CC0](v8, a1);
    sub_249DFE850(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_249DFE5F0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_249E7A628();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_249DFE7AC(&qword_27EF23760, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v9 = sub_249E7AA78();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_249DFE7AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_249DFE8A4()
{
  result = qword_27EF237F0;
  if (!qword_27EF237F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF237F0);
  }

  return result;
}

uint64_t sub_249DFE8F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void sub_249DFE978(uint64_t a1)
{
  sub_249E7A628();
  if (v1 <= 0x3F)
  {
    sub_249E7A5B8();
    if (v2 <= 0x3F)
    {
      sub_249DFEA24(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_249DFEA24(uint64_t a1)
{
  if (!qword_27EF23548[0])
  {
    sub_249DF691C(255, &qword_28130D168, 0x277CCA9B8);
    v1 = sub_249E7AFC8();
    if (!v2)
    {
      atomic_store(v1, qword_27EF23548);
    }
  }
}

uint64_t OUTLINED_FUNCTION_4_2()
{
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return swift_dynamicCast();
}

uint64_t sub_249DFEB14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_249DFEBA0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_249DFED68(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_249DFF00C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v5);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_22();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = v11;

  v13 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v13, v14, v2, v15, v12);
}

uint64_t sub_249DFF104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_249DFF128, 0, 0);
}

uint64_t sub_249DFF128()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = *(Strong + 16);
    *(v0 + 104) = v2;
    v3 = v2;
    v4 = OUTLINED_FUNCTION_29();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_249DFF210;

    return sub_249E0B10C();
  }

  else
  {
    (*(v0 + 72))();
    OUTLINED_FUNCTION_9_0();

    return v6();
  }
}

uint64_t sub_249DFF210()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249DFF310()
{
  OUTLINED_FUNCTION_11();

  v0 = OUTLINED_FUNCTION_46();
  v1(v0);

  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249DFF4C0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v10);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  sub_249E7AC78();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_22();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = v18;
  v19[7] = a1;
  v19[8] = a2;
  v19[9] = a3;

  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v23, v24, v13, v25, v19);
}

uint64_t sub_249DFF5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  return MEMORY[0x2822009F8](sub_249DFF620, 0, 0);
}

uint64_t sub_249DFF620()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = *(Strong + 16);
    *(v0 + 96) = v2;
    v3 = v2;
    v4 = OUTLINED_FUNCTION_29();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_249DFF70C;
    v5 = OUTLINED_FUNCTION_8(*(v0 + 64));

    return sub_249E0B1D0(v5, v6, v7);
  }

  else
  {
    (*(v0 + 40))();
    OUTLINED_FUNCTION_9_0();

    return v9();
  }
}

uint64_t sub_249DFF70C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_249DFF80C()
{
  OUTLINED_FUNCTION_11();

  (*(v0 + 40))(0);
  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249DFF968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  return MEMORY[0x2822009F8](sub_249DFF990, 0, 0);
}

uint64_t sub_249DFF990()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_49(Strong);
    v3 = v2;
    v4 = OUTLINED_FUNCTION_29();
    v5 = OUTLINED_FUNCTION_47(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_7_1(v5);

    return sub_249E0B3F0();
  }

  else
  {
    (*(v0 + 72))(0, 0);
    OUTLINED_FUNCTION_9_0();

    return v8();
  }
}

uint64_t sub_249DFFA6C()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v5 + 136) = v0;

  if (!v0)
  {

    *(v5 + 144) = v3;
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249DFFB80()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 144);

  v2 = OUTLINED_FUNCTION_27();
  v3(v2, 0);

  OUTLINED_FUNCTION_9_0();

  return v4();
}

void sub_249DFFD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_249E7A4C8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_249DFFDC0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v9);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_22();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v15;
  v16[7] = a1;
  v16[8] = a2;

  v17 = a1;
  v18 = a2;
  v19 = OUTLINED_FUNCTION_51();
  sub_249E5ED90(v19, v20, v21, v22, v16);
}

uint64_t sub_249DFFECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  return MEMORY[0x2822009F8](sub_249DFFEF4, 0, 0);
}

uint64_t sub_249DFFEF4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_49(Strong);
    v3 = v2;
    v4 = OUTLINED_FUNCTION_29();
    v5 = OUTLINED_FUNCTION_47(v4);
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_7_1(v5);

    return sub_249E0B79C(v7, v8);
  }

  else
  {
    (*(v0 + 72))();
    OUTLINED_FUNCTION_9_0();

    return v10();
  }
}

uint64_t sub_249DFFFCC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E000CC()
{
  OUTLINED_FUNCTION_11();

  v0 = OUTLINED_FUNCTION_46();
  v1(v0);

  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249E0026C(uint64_t a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, id, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_22();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a3;
  v15 = a4;

  a8(v14, v15, a7, v13);
}

uint64_t sub_249E00350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_249E00374, 0, 0);
}

uint64_t sub_249E00374()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_249E00444;

    return sub_249E0BA70();
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v4();
  }
}

uint64_t sub_249E00444()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 80) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E00538()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 80);
  (*(v0 + 48))(v1);

  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249E005E8(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_22();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  a6(a5, v9);
}

void sub_249E0067C(char a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = objc_opt_self();
  _Block_copy(a3);
  v10 = [v9 currentConnection];
  if (v10)
  {
    v11 = v10;
    if (qword_27EF22FD0 != -1)
    {
      swift_once();
    }

    v12 = sub_249E3CED8(qword_27EF291E0, *algn_27EF291E8);
    if (v12 != 2 && (v12 & 1) != 0)
    {
      v13 = sub_249E7AC78();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
      v14 = swift_allocObject();
      swift_weakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = v14;
      *(v15 + 40) = sub_249E04BAC;
      *(v15 + 48) = v8;
      *(v15 + 56) = a1 & 1;

      sub_249E5ED90(0, 0, v7, &unk_249E7DAD0, v15);

      _Block_release(a3);
      return;
    }

    v16 = sub_249E7A698();
    v17 = sub_249E7AE08();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      v20 = sub_249E7A898();
      v22 = sub_249E3A958(v20, v21, &v30);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_249DEE000, v16, v17, "Missing Entitlement: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C205870](v19, -1, -1);
      MEMORY[0x24C205870](v18, -1, -1);
    }

    sub_249E03D30();
    v23 = swift_allocError();
    *v24 = 2;
    v25 = sub_249E7A4C8();
    (a3)[2](a3, v25);
  }

  else
  {
    sub_249E03D30();
    v26 = swift_allocError();
    *v27 = 1;
    v28 = sub_249E7A4C8();
    (a3)[2](a3, v28);
  }

  _Block_release(a3);
}

uint64_t sub_249E00A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 128) = a7;
  *(v7 + 80) = a5;
  *(v7 + 88) = a6;
  *(v7 + 72) = a4;
  return MEMORY[0x2822009F8](sub_249E00A6C, 0, 0);
}

uint64_t sub_249E00A6C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = *(Strong + 16);
    *(v0 + 104) = v2;
    v3 = v2;
    v4 = OUTLINED_FUNCTION_29();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_249E00B50;
    v5 = *(v0 + 128);

    return sub_249E0BB20(v5);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v7();
  }
}

uint64_t sub_249E00B50()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E00C50()
{
  OUTLINED_FUNCTION_11();
  (*(v0 + 80))(0);

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E00CC4()
{
  OUTLINED_FUNCTION_17();
  v16 = v0;
  v1 = *(v0 + 120);

  v2 = v1;
  v3 = sub_249E7A698();
  v4 = sub_249E7AE08();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_4();
    v6 = OUTLINED_FUNCTION_4_0();
    v15 = v6;
    *v5 = 136315138;
    OUTLINED_FUNCTION_16();
    v7 = OUTLINED_FUNCTION_39();
    v9 = sub_249E3A958(v7, v8, &v15);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v10, v11, "Failed to set uplink muted status for current session %s");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_1();
  }

  v12 = *(v0 + 120);
  (*(v0 + 80))(v12);

  OUTLINED_FUNCTION_9_0();

  return v13();
}

void sub_249E00E80(uint64_t a1)
{
  if (a1)
  {
    sub_249E7A4C8();
  }

  v1 = OUTLINED_FUNCTION_20();
  v4 = v2;
  v3(v1);
}

uint64_t sub_249E00EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v5);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_22();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = a1;
  v12[6] = a2;

  v13 = OUTLINED_FUNCTION_51();
  sub_249E5ED90(v13, v14, v15, v16, v12);
}

uint64_t sub_249E00FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_249E01010, 0, 0);
}

uint64_t sub_249E01010()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 16);
    v0[13] = v2;
    v3 = v2;
    v4 = OUTLINED_FUNCTION_29();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_249E010EC;

    return sub_249E0BD68();
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v6();
  }
}

uint64_t sub_249E010EC()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (!v0)
  {

    *(v5 + 128) = v3 & 1;
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E01204()
{
  OUTLINED_FUNCTION_11();
  (*(v0 + 80))(*(v0 + 128), 0);

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E0127C()
{
  OUTLINED_FUNCTION_17();
  v16 = v0;
  v1 = *(v0 + 120);

  v2 = v1;
  v3 = sub_249E7A698();
  v4 = sub_249E7AE08();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_4();
    v6 = OUTLINED_FUNCTION_4_0();
    v15 = v6;
    *v5 = 136315138;
    OUTLINED_FUNCTION_16();
    v7 = OUTLINED_FUNCTION_39();
    v9 = sub_249E3A958(v7, v8, &v15);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v10, v11, "Failed to get uplink muted status for current session %s");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_1();
  }

  v12 = *(v0 + 120);
  (*(v0 + 80))(0, v12);

  OUTLINED_FUNCTION_9_0();

  return v13();
}

void sub_249E01400(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_249E7A4C8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_249E01470(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF235D8, &qword_249E7DAA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for XPCClient(0);
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  sub_249DF691C(0, &qword_27EF235E0, 0x277CCAE80);
  Strong = swift_unknownObjectWeakLoadStrong();
  _Block_copy(a3);
  sub_249E0181C(Strong, v9);
  swift_unknownObjectRelease();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_249E044D0(v9, &qword_27EF235D8, &qword_249E7DAA0);
    sub_249E03D30();
    v18 = swift_allocError();
    *v19 = 3;
    sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
    v20 = sub_249E7ABD8();
    v21 = sub_249E7A4C8();
    (a3)[2](a3, v20, v21);
  }

  else
  {
    sub_249E04524(v9, v15);
    v22 = sub_249E7AC78();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v22);
    v23 = swift_allocObject();
    swift_weakInit();
    sub_249DF76A8(v15, v13);
    v24 = (*(v28 + 80) + 56) & ~*(v28 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = sub_249E04698;
    v25[5] = v16;
    v25[6] = v23;
    sub_249E04524(v13, v25 + v24);
    v26 = v29;
    *(v25 + ((v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;

    v27 = v26;
    sub_249E5ED90(0, 0, v6, &unk_249E7DAC0, v25);

    sub_249DF770C(v15);
  }

  _Block_release(a3);
}

uint64_t sub_249E0181C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XPCClient(0);
  v29 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = [objc_opt_self() currentConnection];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  if (!a1)
  {

LABEL_16:
    OUTLINED_FUNCTION_28();

    return __swift_storeEnumTagSinglePayload(v24, v25, v26, v4);
  }

  v28 = a2;
  v12 = sub_249E3F064();
  v13 = v12;
  v14 = v12 + 56;
  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v12 + 56);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_10:
      sub_249DF76A8(*(v13 + 48) + *(v29 + 72) * (__clz(__rbit64(v17)) | (v21 << 6)), v9);
      sub_249E04524(v9, v7);
      sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
      if (sub_249E7AF78())
      {
        break;
      }

      v17 &= v17 - 1;
      result = sub_249DF770C(v7);
      v20 = v21;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    v27 = v28;
    sub_249E04524(v7, v28);
    v22 = v27;
    v23 = 0;
LABEL_14:
    __swift_storeEnumTagSinglePayload(v22, v23, 1, v4);
  }

  else
  {
LABEL_7:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        v22 = v28;
        v23 = 1;
        goto LABEL_14;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_249E01AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  return MEMORY[0x2822009F8](sub_249E01AD0, 0, 0);
}

uint64_t sub_249E01AD0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  *(v1 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_49(Strong);
    v4 = v3;
    v5 = OUTLINED_FUNCTION_29();
    v6 = OUTLINED_FUNCTION_47(v5);
    *v6 = v7;
    OUTLINED_FUNCTION_7_1(v6);

    return sub_249E0BFC4();
  }

  else
  {
    v9 = *(v1 + 72);
    v10 = sub_249E03D30();
    v11 = OUTLINED_FUNCTION_40(&type metadata for XPCDispatcher.XPCDispatcherError, v10);
    OUTLINED_FUNCTION_48(v11, v12);
    v9(MEMORY[0x277D84F90], v0);

    OUTLINED_FUNCTION_9_0();

    return v13();
  }
}

uint64_t sub_249E01BE0()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v5 + 136) = v0;

  if (!v0)
  {

    *(v5 + 144) = v3;
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E01CF4()
{
  OUTLINED_FUNCTION_11();

  v0 = OUTLINED_FUNCTION_27();
  v1(v0, 0);

  OUTLINED_FUNCTION_9_0();

  return v2();
}

void sub_249E01EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
  v5 = sub_249E7ABD8();
  if (a2)
  {
    v6 = sub_249E7A4C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_249E01F48(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v28 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF235D8, &qword_249E7DAA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for XPCClient(0);
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  sub_249DF691C(0, &qword_27EF235E0, 0x277CCAE80);
  Strong = swift_unknownObjectWeakLoadStrong();
  _Block_copy(a3);
  sub_249E0181C(Strong, v9);
  swift_unknownObjectRelease();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_249E044D0(v9, &qword_27EF235D8, &qword_249E7DAA0);
    sub_249E03D30();
    v18 = swift_allocError();
    *v19 = 3;
    v20 = sub_249E7A4C8();
    (a3)[2](a3, v20);
  }

  else
  {
    sub_249E04524(v9, v15);
    v21 = sub_249E7AC78();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v21);
    v22 = swift_allocObject();
    swift_weakInit();
    sub_249DF76A8(v15, v13);
    v23 = (*(v27 + 80) + 56) & ~*(v27 + 80);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = sub_249E04BAC;
    v24[5] = v16;
    v24[6] = v22;
    sub_249E04524(v13, v24 + v23);
    v25 = v28;
    *(v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;

    v26 = v25;
    sub_249E5ED90(0, 0, v6, &unk_249E7DAB0, v24);

    sub_249DF770C(v15);
  }

  _Block_release(a3);
}

uint64_t sub_249E022BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  return MEMORY[0x2822009F8](sub_249E022E4, 0, 0);
}

uint64_t sub_249E022E4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  *(v1 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_49(Strong);
    v4 = v3;
    v5 = OUTLINED_FUNCTION_29();
    v6 = OUTLINED_FUNCTION_47(v5);
    *v6 = v7;
    OUTLINED_FUNCTION_7_1(v6);

    return sub_249E0C690();
  }

  else
  {
    v9 = *(v1 + 72);
    v10 = sub_249E03D30();
    v11 = OUTLINED_FUNCTION_40(&type metadata for XPCDispatcher.XPCDispatcherError, v10);
    OUTLINED_FUNCTION_48(v11, v12);
    v9();

    OUTLINED_FUNCTION_9_0();

    return v13();
  }
}

uint64_t sub_249E023E8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E02600(uint64_t a1, int a2, void *a3, void *aBlock, void (*a5)(id, uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;

  a5(v9, a1, v8);
  _Block_release(v8);
}

void sub_249E02684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v68 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v63 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  v12 = objc_opt_self();
  _Block_copy(a5);
  v13 = [v12 currentConnection];
  if (v13)
  {
    v14 = v13;
    if (qword_27EF22FC8 != -1)
    {
      swift_once();
    }

    v15 = sub_249E3CED8(qword_27EF291D0, *algn_27EF291D8);
    if (v15 != 2 && (v15 & 1) != 0)
    {
      v16 = OBJC_IVAR____TtC10DropInCore13XPCDispatcher_logger;
      v17 = v14;
      v63[1] = v16;
      v18 = sub_249E7A698();
      v19 = sub_249E7AE28();
      v67 = v17;

      v66 = v19;
      v20 = os_log_type_enabled(v18, v19);
      v64 = a1;
      v65 = a2;
      if (v20)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v70 = v23;
        *v21 = 138412546;
        v24 = v67;
        *(v21 + 4) = v67;
        *v22 = v14;
        *(v21 + 12) = 2080;
        v69[0] = sub_249E043B8(v24);
        v69[1] = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
        v26 = sub_249E7AAC8();
        v28 = sub_249E3A958(v26, v27, &v70);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_249DEE000, v18, v66, "Connection = %@, BundleID = %s", v21, 0x16u);
        sub_249E044D0(v22, &unk_27EF23C30, &qword_249E7DA20);
        MEMORY[0x24C205870](v22, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x24C205870](v23, -1, -1);
        MEMORY[0x24C205870](v21, -1, -1);
      }

      v29 = sub_249E043B8(v67);
      if (!v30)
      {
        goto LABEL_19;
      }

      v31 = sub_249E5613C(v29, v30);
      if (v31 - 1 < 3)
      {
        v32 = sub_249E7AC78();
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v32);
        v33 = swift_allocObject();
        swift_weakInit();
        v34 = swift_allocObject();
        v34[2] = 0;
        v34[3] = 0;
        v34[4] = sub_249E04BAC;
        v34[5] = v11;
        v36 = v64;
        v35 = v65;
        v34[6] = v33;
        v34[7] = v36;
        v37 = v68;
        v34[8] = v35;
        v34[9] = v37;

        sub_249E5ED90(0, 0, v10, &unk_249E7DA90, v34);

LABEL_21:

        _Block_release(a5);
        return;
      }

      if (v31 != 7)
      {
        v55 = v31;
        v56 = sub_249E7A698();
        v57 = sub_249E7AE18();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v69[0] = v59;
          *v58 = 136315138;
          v60 = sub_249E56188(v55);
          v62 = sub_249E3A958(v60, v61, v69);

          *(v58 + 4) = v62;
          _os_log_impl(&dword_249DEE000, v56, v57, "Client not allowed to set Drop In State. Client Bundle ID = %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v59);
          MEMORY[0x24C205870](v59, -1, -1);
          MEMORY[0x24C205870](v58, -1, -1);
        }

        sub_249E03D30();
        v52 = swift_allocError();
        v53 = 5;
      }

      else
      {
LABEL_19:
        sub_249E03D30();
        v52 = swift_allocError();
        v53 = 4;
      }

      *v51 = v53;
      v54 = sub_249E7A4C8();
      (a5)[2](a5, v54);

      goto LABEL_21;
    }

    v38 = sub_249E7A698();
    v39 = sub_249E7AE08();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v69[0] = v41;
      *v40 = 136315138;
      v42 = sub_249E7A878();
      v44 = sub_249E3A958(v42, v43, v69);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_249DEE000, v38, v39, "Missing Entitlement: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C205870](v41, -1, -1);
      MEMORY[0x24C205870](v40, -1, -1);
    }

    sub_249E03D30();
    v45 = swift_allocError();
    *v46 = 2;
    v47 = sub_249E7A4C8();
    (a5)[2](a5, v47);
  }

  else
  {
    sub_249E03D30();
    v48 = swift_allocError();
    *v49 = 1;
    v50 = sub_249E7A4C8();
    (a5)[2](a5, v50);
  }

  _Block_release(a5);
}

uint64_t sub_249E02D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  return MEMORY[0x2822009F8](sub_249E02D6C, 0, 0);
}

uint64_t sub_249E02D6C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  v1[11] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 16);
    v1[12] = v3;
    v4 = v3;
    v5 = OUTLINED_FUNCTION_29();
    v1[13] = v5;
    *v5 = v1;
    v5[1] = sub_249E02E84;
    OUTLINED_FUNCTION_8(v1[8]);

    return sub_249E0C90C();
  }

  else
  {
    v7 = v1[5];
    v8 = sub_249E03D30();
    v9 = OUTLINED_FUNCTION_40(&type metadata for XPCDispatcher.XPCDispatcherError, v8);
    OUTLINED_FUNCTION_48(v9, v10);
    v7();

    OUTLINED_FUNCTION_9_0();

    return v11();
  }
}

uint64_t sub_249E02E84()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = *(v2 + 96);
  v4 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E02F9C()
{
  OUTLINED_FUNCTION_11();

  (*(v0 + 40))(0);

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E0300C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 112);

  (*(v0 + 40))(v1);

  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249E03120(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v7);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_22();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = v13;
  v14[7] = a1;

  v15 = a1;
  v16 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v16, v17, v3, v18, v14);
}

uint64_t sub_249E03220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  return MEMORY[0x2822009F8](sub_249E03244, 0, 0);
}

uint64_t sub_249E03244()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  v1[13] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 16);
    v1[14] = v3;
    v4 = v3;
    v5 = OUTLINED_FUNCTION_29();
    v1[15] = v5;
    *v5 = v1;
    v5[1] = sub_249E03358;
    OUTLINED_FUNCTION_8(v1[12]);

    return sub_249E0D014();
  }

  else
  {
    v7 = v1[9];
    v8 = sub_249E03D30();
    v9 = OUTLINED_FUNCTION_40(&type metadata for XPCDispatcher.XPCDispatcherError, v8);
    OUTLINED_FUNCTION_48(v9, v10);
    v7();

    OUTLINED_FUNCTION_9_0();

    return v11();
  }
}

uint64_t sub_249E03358()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E03458()
{
  OUTLINED_FUNCTION_11();

  v0 = OUTLINED_FUNCTION_46();
  v1(v0);

  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249E034C4()
{
  v20 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);

  v3 = v2;
  v4 = v1;
  v5 = sub_249E7A698();
  v6 = sub_249E7AE08();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = OUTLINED_FUNCTION_4_0();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;
    OUTLINED_FUNCTION_16();
    v10 = v7;
    v11 = sub_249E7B3A8();
    v13 = sub_249E3A958(v11, v12, &v19);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_249DEE000, v5, v6, "Failed to request state for device %@ %s", v8, 0x16u);
    sub_249E044D0(v9, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_1();
  }

  else
  {
  }

  v14 = *(v0 + 128);
  v15 = OUTLINED_FUNCTION_27();
  v16(v15);

  OUTLINED_FUNCTION_9_0();

  return v17();
}

uint64_t sub_249E03750(uint64_t a1, int a2, uint64_t a3, void *aBlock, SEL *a5)
{
  v6 = a3;
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);

  sub_249E037C8(v6, a1, v8, a5);
  _Block_release(v8);
}

void sub_249E037C8(char a1, uint64_t a2, const void *a3, SEL *a4)
{
  v8 = [objc_opt_self() currentConnection];
  if (v8)
  {
    v9 = v8;
    if (qword_27EF22FD0 != -1)
    {
      swift_once();
    }

    v10 = sub_249E3CED8(qword_27EF291E0, *algn_27EF291E8);
    if (v10 != 2 && (v10 & 1) != 0)
    {
      [*(*(a2 + 24) + 16) *a4];

      v11 = OUTLINED_FUNCTION_20();
      v12(v11, 0);
      goto LABEL_12;
    }

    v13 = sub_249E7A698();
    v14 = sub_249E7AE08();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_4();
      v16 = OUTLINED_FUNCTION_4_0();
      v28 = v16;
      *v15 = 136315138;
      v17 = sub_249E7A898();
      v19 = sub_249E3A958(v17, v18, &v28);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_249DEE000, v13, v14, "Missing Entitlement: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_1();
    }

    v20 = sub_249E03D30();
    v21 = OUTLINED_FUNCTION_40(&type metadata for XPCDispatcher.XPCDispatcherError, v20);
    *v22 = 2;
  }

  else
  {
    v23 = sub_249E03D30();
    v21 = OUTLINED_FUNCTION_40(&type metadata for XPCDispatcher.XPCDispatcherError, v23);
    *v24 = 1;
  }

  v25 = sub_249E7A4C8();
  v26 = OUTLINED_FUNCTION_20();
  v27(v26, v25);

LABEL_12:

  _Block_release(a3);
}

void sub_249E039F8(uint64_t a1, const void *a2, SEL *a3)
{
  [*(*(a1 + 24) + 16) *a3];
  v4 = OUTLINED_FUNCTION_20();
  v5(v4);

  _Block_release(a2);
}

uint64_t sub_249E03A54(uint64_t a1, int a2, void *aBlock, SEL *a4)
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  sub_249E039F8(v6, v5, a4);
  _Block_release(v5);
}

uint64_t sub_249E03AC0()
{

  v1 = OBJC_IVAR____TtC10DropInCore13XPCDispatcher_logger;
  sub_249E7A6B8();
  OUTLINED_FUNCTION_21();
  (*(v2 + 8))(v0 + v1);
  sub_249DF77C0(v0 + OBJC_IVAR____TtC10DropInCore13XPCDispatcher_xpcClientDataSource);
  return v0;
}

uint64_t sub_249E03B34()
{
  sub_249E03AC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for XPCDispatcher(uint64_t a1)
{
  result = qword_28130DE10;
  if (!qword_28130DE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E03BE0(uint64_t a1)
{
  result = sub_249E7A6B8();
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

uint64_t sub_249E03C94(uint64_t a1)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_4_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  v2[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_31();

  return sub_249E03220(v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_249E03D30()
{
  result = qword_27EF235D0;
  if (!qword_27EF235D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF235D0);
  }

  return result;
}

uint64_t sub_249E03DBC(unsigned __int8 a1)
{
  sub_249E7B408();
  MEMORY[0x24C205020](a1);
  return sub_249E7B438();
}

uint64_t sub_249E03E20(uint64_t a1)
{
  v2 = *v1;
  sub_249E7B408();
  MEMORY[0x24C205020](v2);
  return sub_249E7B438();
}

uint64_t sub_249E03E64(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3();
  v2 = *(v1 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E04BA4;
  v6 = OUTLINED_FUNCTION_0_5();

  return sub_249E00FEC(v6, v7, v8, v9, v10, v2);
}

uint64_t sub_249E03F08(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3();
  v2 = *(v1 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E04BA4;
  v6 = OUTLINED_FUNCTION_0_5();

  return sub_249E00350(v6, v7, v8, v9, v10, v2);
}

uint64_t sub_249E03FAC(uint64_t a1)
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_4_3();
  v2 = *(v1 + 64);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_45();

  return sub_249DFFECC(v6, v7, v8, v9, v10, v11, v12, v2);
}

uint64_t objectdestroy_34Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_249E040B4(uint64_t a1)
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_4_3();
  v2 = *(v1 + 64);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_45();

  return sub_249DFF968(v6, v7, v8, v9, v10, v11, v12, v2);
}

uint64_t sub_249E04164()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_4_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v1[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_34();

  return sub_249DFF5F0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_249E04218(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3();
  v2 = *(v1 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E042BC;
  v6 = OUTLINED_FUNCTION_0_5();

  return sub_249DFF104(v6, v7, v8, v9, v10, v2);
}

uint64_t sub_249E042BC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  OUTLINED_FUNCTION_9_0();

  return v3();
}

uint64_t sub_249E043B8(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249E7AAA8();

  return v3;
}

uint64_t sub_249E0441C()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_4_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v1[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_34();

  return sub_249E02D3C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_249E044D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_21();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_249E04524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCClient(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E04588()
{
  OUTLINED_FUNCTION_50();
  type metadata accessor for XPCClient(0);
  OUTLINED_FUNCTION_25();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_34();

  return sub_249E022BC(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_75Tm()
{
  v1 = (type metadata accessor for XPCClient(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  sub_249E7A6B8();
  OUTLINED_FUNCTION_21();
  (*(v6 + 8))(v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_249E047A8()
{
  OUTLINED_FUNCTION_50();
  type metadata accessor for XPCClient(0);
  OUTLINED_FUNCTION_25();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_34();

  return sub_249E01AA8(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_22Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_249E04914(uint64_t a1)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_4_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  v2[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_31();

  return sub_249E00A44(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t getEnumTagSinglePayload for XPCDispatcher.XPCDispatcherError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XPCDispatcher.XPCDispatcherError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}