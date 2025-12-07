uint64_t sub_220C0BEE8()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C0BF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_6_0();

    return __swift_getEnumTagSinglePayload(v7, a2, v8);
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

void sub_220C0C03C()
{
  OUTLINED_FUNCTION_15();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }
}

uint64_t sub_220C0C100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C588, &qword_220CA9390);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_220C0C154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C588, &qword_220CA9390);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_220C0C1E4(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C630, &unk_220CA95E0);
      OUTLINED_FUNCTION_4();
      if (*(v14 + 84) == v3)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
        v12 = a3[7];
      }
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_220C0C328(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C630, &unk_220CA95E0);
      OUTLINED_FUNCTION_4();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
        v14 = a4[7];
      }
    }

    v11 = v5 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_220C0C474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  sub_220CA04D4();
  OUTLINED_FUNCTION_4();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v9 = v4 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v4 + *(a3 + 28) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_220C0C560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_220CA04D4();
    OUTLINED_FUNCTION_4();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 28) + 8) = (v4 - 1);
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_220C0C708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220C9F7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 32));
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

uint64_t sub_220C0C7C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220C9F7D4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t sub_220C0C8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C0C9BC()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
    OUTLINED_FUNCTION_4();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = *(v2 + 20);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
      v10 = *(v2 + 24);
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C0CAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_6_0();

    return __swift_getEnumTagSinglePayload(v7, a2, v8);
  }

  else
  {
    v10 = *(v3 + *(a3 + 24));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(v3 + *(a3 + 24));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

void sub_220C0CB5C()
{
  OUTLINED_FUNCTION_15();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0 + 4;
  }
}

uint64_t sub_220C0CCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220C9F7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220C0CD58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220C9F7D4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220C0CE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220C9F7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_220C0CF00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220C9F7D4();
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

uint64_t sub_220C0CFE8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      OUTLINED_FUNCTION_4();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C898, &qword_220CAFF70);
        OUTLINED_FUNCTION_4();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C8A0, &qword_220CAAE20);
          OUTLINED_FUNCTION_4();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C8A8, &qword_220CAAE28);
            v12 = a3[9];
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C0D1C8()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
    OUTLINED_FUNCTION_4();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      OUTLINED_FUNCTION_4();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C898, &qword_220CAFF70);
        OUTLINED_FUNCTION_4();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C8A0, &qword_220CAAE20);
          OUTLINED_FUNCTION_4();
          if (*(v16 + 84) == v3)
          {
            v6 = v15;
            v10 = v2[8];
          }

          else
          {
            v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C8A8, &qword_220CAAE28);
            v10 = v2[9];
          }
        }
      }
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C0D3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_220C0D44C()
{
  OUTLINED_FUNCTION_15();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }
}

uint64_t sub_220C0D510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C958, &qword_220CAB080);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C0D60C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C958, &qword_220CAB080);
  OUTLINED_FUNCTION_4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220C0D710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  sub_220CA04D4();
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(v3 + *(a3 + 24) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

void sub_220C0D7BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220CA04D4();
  OUTLINED_FUNCTION_4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1 + *(a4 + 20);

    __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_220C0D9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CA88, &qword_220CABA70);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C0DAC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CA88, &qword_220CABA70);
  OUTLINED_FUNCTION_4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220C0DBC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_220CA04D4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220C0DC50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220CA04D4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220C0DDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CBD0, &qword_220CAC480);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C0DEE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CBD0, &qword_220CAC480);
  OUTLINED_FUNCTION_4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220C0DFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  sub_220CA04D4();
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(v3 + *(a3 + 24) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

void sub_220C0E094(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220CA04D4();
  OUTLINED_FUNCTION_4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1 + *(a4 + 20);

    __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_220C0E1B8()
{
  OUTLINED_FUNCTION_13_4();
  type metadata accessor for GeocodeTaskFailedEvent(0);
  OUTLINED_FUNCTION_3_15();

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_19_1();
  v1(v2);
  v3 = OUTLINED_FUNCTION_7_9();
  v1(v3);
  OUTLINED_FUNCTION_21_0();

  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_220C0E29C()
{
  OUTLINED_FUNCTION_13_4();
  type metadata accessor for GeocodeTaskFailedEvent(0);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_19_1();
  v1(v2);
  v3 = OUTLINED_FUNCTION_7_9();
  v1(v3);
  OUTLINED_FUNCTION_21_0();

  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_220C0E378()
{
  OUTLINED_FUNCTION_13_4();
  type metadata accessor for GeocodeTaskCompletedEvent(0);
  OUTLINED_FUNCTION_3_15();

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_19_1();
  v1(v2);
  v3 = OUTLINED_FUNCTION_7_9();
  v1(v3);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_220C0E44C()
{
  OUTLINED_FUNCTION_13_4();
  type metadata accessor for GeocodeTaskCompletedEvent(0);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_19_1();
  v1(v2);
  v3 = OUTLINED_FUNCTION_7_9();
  v1(v3);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_220C0E6B8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      OUTLINED_FUNCTION_4();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
        OUTLINED_FUNCTION_4();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
          OUTLINED_FUNCTION_4();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
            v12 = a3[9];
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C0E898()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      OUTLINED_FUNCTION_4();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
        OUTLINED_FUNCTION_4();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
          OUTLINED_FUNCTION_4();
          if (*(v16 + 84) == v3)
          {
            v6 = v15;
            v10 = v2[8];
          }

          else
          {
            v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
            v10 = v2[9];
          }
        }
      }
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C0EA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_220CA04D4();
  OUTLINED_FUNCTION_4();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_220C0EB64()
{
  OUTLINED_FUNCTION_15();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_220CA04D4();
    OUTLINED_FUNCTION_4();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C0ED04(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      OUTLINED_FUNCTION_4();
      if (*(v14 + 84) == v3)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF08, &qword_220CADE48);
        OUTLINED_FUNCTION_4();
        if (*(v16 + 84) == v3)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
          OUTLINED_FUNCTION_4();
          if (*(v18 + 84) == v3)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
            OUTLINED_FUNCTION_4();
            if (*(v20 + 84) == v3)
            {
              v8 = v19;
              v12 = a3[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF10, &unk_220CADE50);
              OUTLINED_FUNCTION_4();
              if (*(v22 + 84) == v3)
              {
                v8 = v21;
                v12 = a3[10];
              }

              else
              {
                v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
                v12 = a3[11];
              }
            }
          }
        }
      }
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_220C0EF78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      OUTLINED_FUNCTION_4();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF08, &qword_220CADE48);
        OUTLINED_FUNCTION_4();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
          OUTLINED_FUNCTION_4();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
            OUTLINED_FUNCTION_4();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF10, &unk_220CADE50);
              OUTLINED_FUNCTION_4();
              if (*(v24 + 84) == a3)
              {
                v10 = v23;
                v14 = a4[10];
              }

              else
              {
                v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
                v14 = a4[11];
              }
            }
          }
        }
      }
    }

    v11 = v5 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_220C0F1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  sub_220CA04D4();
  OUTLINED_FUNCTION_4();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v9 = v4 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v4 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_220C0F2E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_220CA04D4();
    OUTLINED_FUNCTION_4();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = (v4 - 1);
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_220C0F47C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      OUTLINED_FUNCTION_4();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
        OUTLINED_FUNCTION_4();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
          OUTLINED_FUNCTION_4();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
            OUTLINED_FUNCTION_4();
            if (*(v20 + 84) == a2)
            {
              v8 = v19;
              v12 = a3[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
              OUTLINED_FUNCTION_4();
              if (*(v22 + 84) == a2)
              {
                v8 = v21;
                v12 = a3[10];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
                OUTLINED_FUNCTION_4();
                if (*(v24 + 84) == a2)
                {
                  v8 = v23;
                  v12 = a3[11];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFE8, &qword_220CAE150);
                  OUTLINED_FUNCTION_4();
                  if (*(v26 + 84) == a2)
                  {
                    v8 = v25;
                    v12 = a3[12];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF0, &unk_220CAE158);
                    OUTLINED_FUNCTION_4();
                    if (*(v28 + 84) == a2)
                    {
                      v8 = v27;
                      v12 = a3[13];
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
                      OUTLINED_FUNCTION_4();
                      if (*(v30 + 84) == a2)
                      {
                        v8 = v29;
                        v12 = a3[14];
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF8, &qword_220CAE168);
                        OUTLINED_FUNCTION_4();
                        if (*(v32 + 84) == a2)
                        {
                          v8 = v31;
                          v12 = a3[15];
                        }

                        else
                        {
                          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D000, &qword_220CAE170);
                          v12 = a3[16];
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C0F870()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      OUTLINED_FUNCTION_4();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
        OUTLINED_FUNCTION_4();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
          OUTLINED_FUNCTION_4();
          if (*(v16 + 84) == v3)
          {
            v6 = v15;
            v10 = v2[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
            OUTLINED_FUNCTION_4();
            if (*(v18 + 84) == v3)
            {
              v6 = v17;
              v10 = v2[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
              OUTLINED_FUNCTION_4();
              if (*(v20 + 84) == v3)
              {
                v6 = v19;
                v10 = v2[10];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
                OUTLINED_FUNCTION_4();
                if (*(v22 + 84) == v3)
                {
                  v6 = v21;
                  v10 = v2[11];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFE8, &qword_220CAE150);
                  OUTLINED_FUNCTION_4();
                  if (*(v24 + 84) == v3)
                  {
                    v6 = v23;
                    v10 = v2[12];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF0, &unk_220CAE158);
                    OUTLINED_FUNCTION_4();
                    if (*(v26 + 84) == v3)
                    {
                      v6 = v25;
                      v10 = v2[13];
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
                      OUTLINED_FUNCTION_4();
                      if (*(v28 + 84) == v3)
                      {
                        v6 = v27;
                        v10 = v2[14];
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF8, &qword_220CAE168);
                        OUTLINED_FUNCTION_4();
                        if (*(v30 + 84) == v3)
                        {
                          v6 = v29;
                          v10 = v2[15];
                        }

                        else
                        {
                          v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D000, &qword_220CAE170);
                          v10 = v2[16];
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C0FC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_220CA04D4();
  OUTLINED_FUNCTION_4();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_220C0FD50()
{
  OUTLINED_FUNCTION_15();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_220CA04D4();
    OUTLINED_FUNCTION_4();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 28) + 8) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C10044()
{
  OUTLINED_FUNCTION_13_4();
  type metadata accessor for VisibleLocationFailedLoadingEvent(0);
  OUTLINED_FUNCTION_3_15();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = *(v0 + 28);
  v5 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v7 = *(v6 + 8);
  v7(v1 + v3 + v4, v5);
  v7(v1 + v3 + *(v0 + 32), v5);

  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

uint64_t sub_220C10140()
{
  OUTLINED_FUNCTION_13_4();
  type metadata accessor for VisibleLocationFailedLoadingEvent(0);
  OUTLINED_FUNCTION_3_15();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v0 + 28);
  v5 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + *(v0 + 32), v5);

  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

uint64_t sub_220C10234()
{
  OUTLINED_FUNCTION_13_4();
  type metadata accessor for VisibleLocationFinishedLoadingEvent(0);
  OUTLINED_FUNCTION_3_15();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v0 + 28);
  v5 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + *(v0 + 32), v5);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

uint64_t sub_220C104D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C10584()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C10630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_6_0();

    return __swift_getEnumTagSinglePayload(v7, a2, v8);
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

void sub_220C106D8()
{
  OUTLINED_FUNCTION_15();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }
}

uint64_t sub_220C107C4@<X0>(uint64_t *a1@<X8>)
{
  result = SessionData.userSegmentationTreatmentIDs.getter();
  *a1 = result;
  return result;
}

uint64_t sub_220C107F4@<X0>(uint64_t *a1@<X8>)
{
  result = SessionData.userSegmentationSegmentSetIDs.getter();
  *a1 = result;
  return result;
}

uint64_t sub_220C10824(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE28, &qword_220CA5D30);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 44);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE30, &qword_220CA5D38);
      v10 = *(a3 + 48);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_220C10908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE28, &qword_220CA5D30);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 44);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE30, &qword_220CA5D38);
      v10 = *(a4 + 48);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_220C10A58(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      OUTLINED_FUNCTION_4();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
        OUTLINED_FUNCTION_4();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D320, &qword_220CAFF60);
          OUTLINED_FUNCTION_4();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D328, &qword_220CAFF68);
            OUTLINED_FUNCTION_4();
            if (*(v20 + 84) == a2)
            {
              v8 = v19;
              v12 = a3[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C898, &qword_220CAFF70);
              OUTLINED_FUNCTION_4();
              if (*(v22 + 84) == a2)
              {
                v8 = v21;
                v12 = a3[10];
              }

              else
              {
                v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D330, &qword_220CAFF78);
                v12 = a3[11];
              }
            }
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C10CD0()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      OUTLINED_FUNCTION_4();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
        OUTLINED_FUNCTION_4();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D320, &qword_220CAFF60);
          OUTLINED_FUNCTION_4();
          if (*(v16 + 84) == v3)
          {
            v6 = v15;
            v10 = v2[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D328, &qword_220CAFF68);
            OUTLINED_FUNCTION_4();
            if (*(v18 + 84) == v3)
            {
              v6 = v17;
              v10 = v2[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C898, &qword_220CAFF70);
              OUTLINED_FUNCTION_4();
              if (*(v20 + 84) == v3)
              {
                v6 = v19;
                v10 = v2[10];
              }

              else
              {
                v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D330, &qword_220CAFF78);
                v10 = v2[11];
              }
            }
          }
        }
      }
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C10F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_220CA04D4();
  OUTLINED_FUNCTION_4();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_220C11034()
{
  OUTLINED_FUNCTION_15();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_220CA04D4();
    OUTLINED_FUNCTION_4();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C11164()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220C11214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4B0, &qword_220CB0810);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C11310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4B0, &qword_220CB0810);
  OUTLINED_FUNCTION_4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220C11414(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_220CA04D4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220C1149C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220CA04D4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220C115BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5D0, &unk_220CB0E50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220C11670(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5D0, &unk_220CB0E50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_220C117B0()
{
  OUTLINED_FUNCTION_0_25();
  sub_220C9FD54();
  *v0 = v1;
}

void sub_220C117D8()
{
  OUTLINED_FUNCTION_0_25();
  sub_220C9FD84();
  *v0 = v1;
}

void sub_220C11800()
{
  OUTLINED_FUNCTION_0_25();
  sub_220C9FD64();
  *v0 = v1;
}

void sub_220C11828()
{
  OUTLINED_FUNCTION_0_25();
  sub_220C9FD74();
  *v0 = v1;
}

void sub_220C11850()
{
  OUTLINED_FUNCTION_0_25();
  sub_220C9FD44();
  *v0 = v1;
}

uint64_t sub_220C118C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D688, &unk_220CB1780);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220C1197C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D688, &unk_220CB1780);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220C11A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C11B5C()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = *(v2 + 20);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v10 = *(v2 + 24);
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C11C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_220CA04D4();
  OUTLINED_FUNCTION_4();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_220C11D44()
{
  OUTLINED_FUNCTION_15();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_220CA04D4();
    OUTLINED_FUNCTION_4();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C11EAC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220C11EEC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220C11F3C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220C11F7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220C12010(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      OUTLINED_FUNCTION_4();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D828, &qword_220CB2598);
        OUTLINED_FUNCTION_4();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D830, &unk_220CB25A0);
          OUTLINED_FUNCTION_4();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
            OUTLINED_FUNCTION_4();
            if (*(v20 + 84) == a2)
            {
              v8 = v19;
              v12 = a3[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D838, &qword_220CB25B0);
              OUTLINED_FUNCTION_4();
              if (*(v22 + 84) == a2)
              {
                v8 = v21;
                v12 = a3[10];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D840, &qword_220CB25B8);
                OUTLINED_FUNCTION_4();
                if (*(v24 + 84) == a2)
                {
                  v8 = v23;
                  v12 = a3[11];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D848, &qword_220CB25C0);
                  OUTLINED_FUNCTION_4();
                  if (*(v26 + 84) == a2)
                  {
                    v8 = v25;
                    v12 = a3[12];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D850, &qword_220CB25C8);
                    OUTLINED_FUNCTION_4();
                    if (*(v28 + 84) == a2)
                    {
                      v8 = v27;
                      v12 = a3[13];
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D858, &qword_220CB25D0);
                      OUTLINED_FUNCTION_4();
                      if (*(v30 + 84) == a2)
                      {
                        v8 = v29;
                        v12 = a3[14];
                      }

                      else
                      {
                        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D860, &qword_220CB25D8);
                        v12 = a3[15];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C123B8()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
    OUTLINED_FUNCTION_4();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      OUTLINED_FUNCTION_4();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D828, &qword_220CB2598);
        OUTLINED_FUNCTION_4();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D830, &unk_220CB25A0);
          OUTLINED_FUNCTION_4();
          if (*(v16 + 84) == v3)
          {
            v6 = v15;
            v10 = v2[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
            OUTLINED_FUNCTION_4();
            if (*(v18 + 84) == v3)
            {
              v6 = v17;
              v10 = v2[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D838, &qword_220CB25B0);
              OUTLINED_FUNCTION_4();
              if (*(v20 + 84) == v3)
              {
                v6 = v19;
                v10 = v2[10];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D840, &qword_220CB25B8);
                OUTLINED_FUNCTION_4();
                if (*(v22 + 84) == v3)
                {
                  v6 = v21;
                  v10 = v2[11];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D848, &qword_220CB25C0);
                  OUTLINED_FUNCTION_4();
                  if (*(v24 + 84) == v3)
                  {
                    v6 = v23;
                    v10 = v2[12];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D850, &qword_220CB25C8);
                    OUTLINED_FUNCTION_4();
                    if (*(v26 + 84) == v3)
                    {
                      v6 = v25;
                      v10 = v2[13];
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D858, &qword_220CB25D0);
                      OUTLINED_FUNCTION_4();
                      if (*(v28 + 84) == v3)
                      {
                        v6 = v27;
                        v10 = v2[14];
                      }

                      else
                      {
                        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D860, &qword_220CB25D8);
                        v10 = v2[15];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C1275C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 24) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_220C12804()
{
  OUTLINED_FUNCTION_15();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 - 1);
  }
}

uint64_t sub_220C12940()
{
  v1 = (sub_220CA0A24() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  (*(v6 + 8))(v5);
  sub_220C04814(*(v5 + v1[8]), *(v5 + v1[8] + 8), *(v5 + v1[8] + 9));

  return MEMORY[0x2821FE8E8](v0, v4 + 29, v2 | 7);
}

uint64_t sub_220C12A40()
{
  v1 = *(sub_220CA09D4() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D970, &qword_220CB2D58);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 80);
  v8 = (v4 + v3 + v7 + 2) & ~v7;
  v10 = *(v9 + 64);
  v11 = v0 + v3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
      sub_220CA0684();
      OUTLINED_FUNCTION_1();
      (*(v12 + 8))(v11);
      break;
    case 0x12u:
      sub_220CA0684();
      OUTLINED_FUNCTION_1();
      (*(v14 + 8))(v11);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF20, &unk_220CA6BA0);

      v16 = *(v15 + 64);
      v17 = sub_220CA07F4();
      if (!__swift_getEnumTagSinglePayload(v11 + v16, 1, v17))
      {
        (*(*(v17 - 8) + 8))(v11 + v16);
      }

      break;
    default:
      break;
  }

  v13 = sub_220CA0994();
  if (!__swift_getEnumTagSinglePayload(v0 + v8, 1, v13))
  {
    (*(*(v13 - 8) + 8))(v0 + v8, v13);
  }

  return MEMORY[0x2821FE8E8](v0, ((v10 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 21, v2 | v7 | 7);
}

uint64_t sub_220C12D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9C0, &qword_220CB2EB0);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C12E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9C0, &qword_220CB2EB0);
  OUTLINED_FUNCTION_4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220C12F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  sub_220CA04D4();
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(v3 + *(a3 + 24) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

void sub_220C12FFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220CA04D4();
  OUTLINED_FUNCTION_4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1 + *(a4 + 20);

    __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_220C130D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220C13184(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220C132B0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      OUTLINED_FUNCTION_4();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
        OUTLINED_FUNCTION_4();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
          OUTLINED_FUNCTION_4();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
            OUTLINED_FUNCTION_4();
            if (*(v20 + 84) == a2)
            {
              v8 = v19;
              v12 = a3[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
              OUTLINED_FUNCTION_4();
              if (*(v22 + 84) == a2)
              {
                v8 = v21;
                v12 = a3[10];
              }

              else
              {
                v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
                v12 = a3[11];
              }
            }
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220C13528()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    OUTLINED_FUNCTION_4();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      OUTLINED_FUNCTION_4();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
        OUTLINED_FUNCTION_4();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
          OUTLINED_FUNCTION_4();
          if (*(v16 + 84) == v3)
          {
            v6 = v15;
            v10 = v2[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
            OUTLINED_FUNCTION_4();
            if (*(v18 + 84) == v3)
            {
              v6 = v17;
              v10 = v2[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
              OUTLINED_FUNCTION_4();
              if (*(v20 + 84) == v3)
              {
                v6 = v19;
                v10 = v2[10];
              }

              else
              {
                v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
                v10 = v2[11];
              }
            }
          }
        }
      }
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_220C1379C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_220CA04D4();
  OUTLINED_FUNCTION_4();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 32) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_220C1388C()
{
  OUTLINED_FUNCTION_15();
  sub_220CA0494();
  OUTLINED_FUNCTION_4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_220CA04D4();
    OUTLINED_FUNCTION_4();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 32) + 8) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t WeatherJSONData.json.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WeatherJSONData.json.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220C13D88(uint64_t a1, uint64_t a2)
{
  if (a1 == 1852797802 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C13E28()
{
  sub_220CA11F4();
  MEMORY[0x223D95580](0);
  return sub_220CA1214();
}

uint64_t sub_220C13E94(uint64_t a1)
{
  sub_220CA11F4();
  MEMORY[0x223D95580](0);
  return sub_220CA1214();
}

uint64_t sub_220C13ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C13D88(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C13F20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220BFE610();
  *a1 = result & 1;
  return result;
}

uint64_t sub_220C13F4C(uint64_t a1)
{
  v2 = sub_220C14138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C13F88(uint64_t a1)
{
  v2 = sub_220C14138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WeatherJSONData.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5A0, &qword_220CA1980);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C14138();
  sub_220CA1254();
  sub_220CA10C4();
  return (*(v4 + 8))(v7, v1);
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

unint64_t sub_220C14138()
{
  result = qword_27CF7B5A8;
  if (!qword_27CF7B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5A8);
  }

  return result;
}

uint64_t WeatherJSONData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5B0, &qword_220CA1988);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C14138();
  sub_220CA1234();
  if (!v2)
  {
    v11 = sub_220CA0FF4();
    v13 = v12;
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C142F4()
{
  result = qword_27CF7B5B8;
  if (!qword_27CF7B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5B8);
  }

  return result;
}

unint64_t sub_220C1434C()
{
  result = qword_27CF7B5C0;
  if (!qword_27CF7B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5C0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_220C14410(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_220C14450(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for LocationData(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LocationData(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherJSONData.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_220C14594()
{
  result = qword_27CF7B5C8;
  if (!qword_27CF7B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5C8);
  }

  return result;
}

unint64_t sub_220C145EC()
{
  result = qword_27CF7B5D0;
  if (!qword_27CF7B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5D0);
  }

  return result;
}

unint64_t sub_220C14644()
{
  result = qword_27CF7B5D8;
  if (!qword_27CF7B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationListPositionData(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LocationListPositionData(uint64_t result, int a2, int a3)
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

WeatherAnalytics::LocationCondition_optional __swiftcall LocationCondition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA1194();

  v5 = 0;
  v6 = 30;
  switch(v3)
  {
    case 0:
      goto LABEL_47;
    case 1:
      v5 = 1;
      goto LABEL_47;
    case 2:
      v5 = 2;
      goto LABEL_47;
    case 3:
      v5 = 3;
      goto LABEL_47;
    case 4:
      v5 = 4;
      goto LABEL_47;
    case 5:
      v5 = 5;
      goto LABEL_47;
    case 6:
      v5 = 6;
      goto LABEL_47;
    case 7:
      v5 = 7;
      goto LABEL_47;
    case 8:
      v5 = 8;
      goto LABEL_47;
    case 9:
      v5 = 9;
      goto LABEL_47;
    case 10:
      v5 = 10;
      goto LABEL_47;
    case 11:
      v5 = 11;
      goto LABEL_47;
    case 12:
      v5 = 12;
      goto LABEL_47;
    case 13:
      v5 = 13;
      goto LABEL_47;
    case 14:
      v5 = 14;
      goto LABEL_47;
    case 15:
      v5 = 15;
      goto LABEL_47;
    case 16:
      v5 = 16;
      goto LABEL_47;
    case 17:
      v5 = 17;
      goto LABEL_47;
    case 18:
      v5 = 18;
      goto LABEL_47;
    case 19:
      v5 = 19;
      goto LABEL_47;
    case 20:
      v5 = 20;
      goto LABEL_47;
    case 21:
      v5 = 21;
      goto LABEL_47;
    case 22:
      v5 = 22;
      goto LABEL_47;
    case 23:
      v5 = 23;
      goto LABEL_47;
    case 24:
      v5 = 24;
      goto LABEL_47;
    case 25:
      v5 = 25;
      goto LABEL_47;
    case 26:
      v5 = 26;
      goto LABEL_47;
    case 27:
      v5 = 27;
      goto LABEL_47;
    case 28:
      v5 = 28;
      goto LABEL_47;
    case 29:
      v5 = 29;
LABEL_47:
      v6 = v5;
      break;
    case 30:
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    default:
      v6 = 48;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t LocationCondition.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      return 0x6F64616E726F74;
    case 2:
      return 0x6C616369706F7274;
    case 3:
      return 0x6E61636972727568;
    case 4:
    case 0x29:
      OUTLINED_FUNCTION_0_4();
      return v5 + 1;
    case 5:
      return 0x737265646E756874;
    case 6:
    case 0x24:
    case 0x2D:
      OUTLINED_FUNCTION_0_4();
      return v6 - 1;
    case 7:
      return 0xD000000000000011;
    case 8:
      return 0xD000000000000011;
    case 9:
    case 0xB:
      return 0x676E697A65657266;
    case 0xA:
      return 0x656C7A7A697264;
    case 0xC:
      return 0x737265776F6873;
    case 0xD:
      return 1852399986;
    case 0xE:
      return 0x72756C46776F6E73;
    case 0xF:
      return 0x776F6853776F6E73;
    case 0x10:
      return 0x53676E69776F6C62;
    case 0x11:
      return 2003791475;
    case 0x12:
      return 1818845544;
    case 0x13:
      return 0x7465656C73;
    case 0x14:
      return 0x657A614874737564;
    case 0x15:
      v2 = 1734831974;
      goto LABEL_39;
    case 0x16:
      return 1702519144;
    case 0x17:
      v2 = 1802464627;
      goto LABEL_39;
    case 0x18:
      return 0x7972657473756C62;
    case 0x19:
      v2 = 1684957559;
      goto LABEL_39;
    case 0x1A:
      return 1684828003;
    case 0x1B:
      return 0x7364756F6C63;
    case 0x1C:
      return 0xD000000000000011;
    case 0x1D:
      v4 = 1953722221;
      goto LABEL_43;
    case 0x1E:
      return 0xD000000000000011;
    case 0x1F:
      v4 = 1953653104;
LABEL_43:
      result = v4 | 0x6C43796C00000000;
      break;
    case 0x20:
      result = 0x67694E7261656C63;
      break;
    case 0x21:
      v2 = 1852732787;
LABEL_39:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
      break;
    case 0x22:
      result = 0x6867694E72696166;
      break;
    case 0x23:
      result = 0x79614472696166;
      break;
    case 0x25:
      result = 7630696;
      break;
    case 0x26:
    case 0x2E:
      OUTLINED_FUNCTION_0_4();
      result = v9 | 4;
      break;
    case 0x27:
    case 0x2F:
      OUTLINED_FUNCTION_0_4();
      result = v7 + 5;
      break;
    case 0x28:
      OUTLINED_FUNCTION_0_4();
      result = v3 + 9;
      break;
    case 0x2A:
      OUTLINED_FUNCTION_0_4();
      result = v8 + 3;
      break;
    case 0x2B:
      result = 0x6F6E537976616568;
      break;
    case 0x2C:
      result = 0x6472617A7A696C62;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C14DA0()
{
  result = qword_27CF7B5E0;
  if (!qword_27CF7B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5E0);
  }

  return result;
}

uint64_t sub_220C14E18@<X0>(uint64_t *a1@<X8>)
{
  result = LocationCondition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LocationCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD1)
  {
    if (a2 + 47 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 47) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 48;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v5 = v6 - 48;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocationCondition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD0)
  {
    v6 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
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
          *result = a2 + 47;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C1505C()
{
  result = qword_27CF7B5E8;
  if (!qword_27CF7B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5E8);
  }

  return result;
}

uint64_t LocationAccessDataProvider.__allocating_init(locationManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_220BF9210(a1, v2 + 16);
  return v2;
}

uint64_t LocationAccessDataProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_220C15240()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_2812D0018);
  __swift_project_value_buffer(v0, qword_2812D0018);
  return sub_220CA0244();
}

uint64_t AppSessionEndEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t AppSessionEndEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t AppSessionEndEvent.orientationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for AppSessionEndEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t AppSessionEndEvent.orientationData.setter()
{
  OUTLINED_FUNCTION_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t AppSessionEndEvent.temperatureScaleData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for AppSessionEndEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t AppSessionEndEvent.temperatureScaleData.setter()
{
  OUTLINED_FUNCTION_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t AppSessionEndEvent.sessionEndData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for AppSessionEndEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B608, &qword_220CA1EA8);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t AppSessionEndEvent.sessionEndData.setter()
{
  OUTLINED_FUNCTION_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B608, &qword_220CA1EA8);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t AppSessionEndEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for AppSessionEndEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t AppSessionEndEvent.timedData.setter()
{
  OUTLINED_FUNCTION_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t AppSessionEndEvent.notificationSettingsData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for AppSessionEndEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B618, &qword_220CA1EB8);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t AppSessionEndEvent.notificationSettingsData.setter()
{
  OUTLINED_FUNCTION_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B618, &qword_220CA1EB8);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t AppSessionEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for AppSessionEndEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  (*(v7 + 104))(a1 + v5, v6);
  v8 = v4[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_0_0();
  (*(v9 + 104))(a1 + v8, v6);
  v10 = v4[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B608, &qword_220CA1EA8);
  OUTLINED_FUNCTION_0_0();
  (*(v11 + 104))(a1 + v10, v2);
  v12 = v4[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  (*(v13 + 104))(a1 + v12, v2);
  v14 = v4[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B618, &qword_220CA1EB8);
  OUTLINED_FUNCTION_0_0();
  v16 = *(v15 + 104);

  return v16(a1 + v14, v6);
}

uint64_t AppSessionEndEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t AppSessionEndEvent.Model.orientationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for AppSessionEndEvent.Model(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t AppSessionEndEvent.Model.temperatureScaleData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for AppSessionEndEvent.Model(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t AppSessionEndEvent.Model.sessionEndData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for AppSessionEndEvent.Model(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t AppSessionEndEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for AppSessionEndEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t AppSessionEndEvent.Model.notificationSettingsData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for AppSessionEndEvent.Model(v2);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  *(v0 + 4) = *(v4 + 4);
  *v0 = v5;
  return result;
}

uint64_t AppSessionEndEvent.Model.init(eventData:orientationData:temperatureScaleData:sessionEndData:timedData:notificationSettingsData:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = *a6;
  v14 = *(a6 + 4);
  sub_220CA0494();
  OUTLINED_FUNCTION_0_0();
  (*(v15 + 32))(a7, a1);
  v16 = type metadata accessor for AppSessionEndEvent.Model(0);
  *(a7 + v16[5]) = v10;
  *(a7 + v16[6]) = v11;
  *(a7 + v16[7]) = v12;
  v17 = v16[8];
  sub_220CA04D4();
  OUTLINED_FUNCTION_0_0();
  result = (*(v18 + 32))(a7 + v17, a5);
  v20 = a7 + v16[9];
  *(v20 + 4) = v14;
  *v20 = v13;
  return result;
}

uint64_t sub_220C15DD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000220CB4B90 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x456E6F6973736573 && a2 == 0xEE0061746144646ELL;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000018 && 0x8000000220CB4BB0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_220CA1154();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220C16020(unsigned __int8 a1)
{
  sub_220CA11F4();
  MEMORY[0x223D95580](a1);
  return sub_220CA1214();
}

uint64_t sub_220C16068(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x746E6569726FLL;
      goto LABEL_4;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x456E6F6973736573;
      break;
    case 4:
      v3 = 0x4464656D6974;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C16158(uint64_t a1)
{
  v2 = *v1;
  sub_220CA11F4();
  MEMORY[0x223D95580](v2);
  return sub_220CA1214();
}

uint64_t sub_220C161A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C15DD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C161EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C15FE0();
  *a1 = result;
  return result;
}

uint64_t sub_220C16214(uint64_t a1)
{
  v2 = sub_220C16540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C16250(uint64_t a1)
{
  v2 = sub_220C16540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B620, &qword_220CA1EC0);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v26[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C16540();
  sub_220CA1254();
  v31 = 0;
  sub_220CA0494();
  OUTLINED_FUNCTION_7();
  v13 = sub_220C04F84(v11, v12, MEMORY[0x277CEAEB8]);
  OUTLINED_FUNCTION_16(v3, &v31, v14, v15, v13);
  if (!v2)
  {
    v16 = type metadata accessor for AppSessionEndEvent.Model(0);
    v30 = *(v3 + v16[5]);
    v29[5] = 1;
    sub_220BFE5BC();
    OUTLINED_FUNCTION_9();
    sub_220CA1094();
    v29[4] = *(v3 + v16[6]);
    v29[3] = 2;
    sub_220BFF604();
    OUTLINED_FUNCTION_9();
    sub_220CA1094();
    v29[2] = *(v3 + v16[7]);
    v29[1] = 3;
    sub_220C06B24();
    OUTLINED_FUNCTION_9();
    sub_220CA1104();
    v17 = v16[8];
    v29[0] = 4;
    sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    v20 = sub_220C04F84(v18, v19, MEMORY[0x277CEAED8]);
    OUTLINED_FUNCTION_16(v3 + v17, v29, v21, v22, v20);
    v23 = v3 + v16[9];
    v24 = *v23;
    v28 = *(v23 + 4);
    v27 = v24;
    v26[15] = 5;
    sub_220C04388();
    OUTLINED_FUNCTION_9();
    sub_220CA1094();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C16540()
{
  result = qword_2812D0008;
  if (!qword_2812D0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0008);
  }

  return result;
}

uint64_t AppSessionEndEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v28 = v5;
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v8 = v7 - v6;
  v9 = sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v32 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B628, &qword_220CA1EC8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  v30 = type metadata accessor for AppSessionEndEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v31 = v18 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C16540();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_7();
  sub_220C04F84(v19, v20, MEMORY[0x277CEAEC0]);
  sub_220CA1034();
  (*(v32 + 32))(v31, v14, v9);
  sub_220BFE564();
  OUTLINED_FUNCTION_8_0();
  sub_220CA0FC4();
  *(v31 + v30[5]) = v37;
  sub_220BFF5AC();
  OUTLINED_FUNCTION_8_0();
  sub_220CA0FC4();
  *(v31 + v30[6]) = v36;
  sub_220C06AD0();
  OUTLINED_FUNCTION_8_0();
  sub_220CA1034();
  *(v31 + v30[7]) = v35;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v21, v22, MEMORY[0x277CEAEE0]);
  sub_220CA1034();
  (*(v28 + 32))(v31 + v30[8], v8, v29);
  sub_220C04330();
  OUTLINED_FUNCTION_8_0();
  sub_220CA0FC4();
  v23 = OUTLINED_FUNCTION_12();
  v24(v23);
  v25 = v31 + v30[9];
  *(v25 + 4) = v34;
  *v25 = v33;
  sub_220C16AE4(v31, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C16B48(v31);
}

uint64_t sub_220C16AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C16B48(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C16C60(uint64_t a1)
{
  sub_220CA0494();
  if (v1 <= 0x3F)
  {
    sub_220BFE7B0(319, &qword_2812D03E8, &type metadata for OrientationData);
    if (v2 <= 0x3F)
    {
      sub_220BFE7B0(319, &qword_2812CFC28, &type metadata for TemperatureScaleData);
      if (v3 <= 0x3F)
      {
        sub_220CA04D4();
        if (v4 <= 0x3F)
        {
          sub_220BFE7B0(319, &qword_2812CF648, &type metadata for NotificationSettingsData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AppSessionEndEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C16E44()
{
  result = qword_27CF7B630;
  if (!qword_27CF7B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B630);
  }

  return result;
}

unint64_t sub_220C16E9C()
{
  result = qword_2812CFFF8;
  if (!qword_2812CFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFFF8);
  }

  return result;
}

unint64_t sub_220C16EF4()
{
  result = qword_2812D0000;
  if (!qword_2812D0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0000);
  }

  return result;
}

WeatherAnalytics::CellularRadioAccessTechnology_optional __swiftcall CellularRadioAccessTechnology.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_220C16FB4()
{
  result = qword_27CF7B638;
  if (!qword_27CF7B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B638);
  }

  return result;
}

uint64_t sub_220C170CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C17158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C170CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C17184(uint64_t a1)
{
  v2 = sub_220C1733C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C171C0(uint64_t a1)
{
  v2 = sub_220C1733C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoarseLocationData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B640, &qword_220CA2240);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1733C();
  sub_220CA1254();
  v12 = v9;
  sub_220C17390();
  sub_220CA1104();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C1733C()
{
  result = qword_2812CFEA0[0];
  if (!qword_2812CFEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CFEA0);
  }

  return result;
}

unint64_t sub_220C17390()
{
  result = qword_2812CFCA0[0];
  if (!qword_2812CFCA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CFCA0);
  }

  return result;
}

uint64_t CoarseLocationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B648, &qword_220CA2248);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1733C();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C17544();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C17544()
{
  result = qword_27CF7B650;
  if (!qword_27CF7B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B650);
  }

  return result;
}

unint64_t sub_220C1759C()
{
  result = qword_2812CFE80;
  if (!qword_2812CFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFE80);
  }

  return result;
}

unint64_t sub_220C175F4()
{
  result = qword_2812CFE88;
  if (!qword_2812CFE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFE88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoarseLocationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CoarseLocationData(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CoarseLocationData.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_220C1787C()
{
  result = qword_27CF7B658;
  if (!qword_27CF7B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B658);
  }

  return result;
}

unint64_t sub_220C178D4()
{
  result = qword_2812CFE90;
  if (!qword_2812CFE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFE90);
  }

  return result;
}

unint64_t sub_220C1792C()
{
  result = qword_2812CFE98;
  if (!qword_2812CFE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFE98);
  }

  return result;
}

WeatherAnalytics::WindFeedback_optional __swiftcall WindFeedback.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WindFeedback.rawValue.getter()
{
  v1 = 0x74726F7065527361;
  if (*v0 != 1)
  {
    v1 = 1936942444;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701998445;
  }
}

unint64_t sub_220C17A3C()
{
  result = qword_27CF7B660;
  if (!qword_27CF7B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B660);
  }

  return result;
}

uint64_t sub_220C17AB4@<X0>(uint64_t *a1@<X8>)
{
  result = WindFeedback.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WindFeedback(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C17C68()
{
  result = qword_27CF7B668;
  if (!qword_27CF7B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B668);
  }

  return result;
}

uint64_t AppData.appVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppData.appVersion.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppData.appBuildNumber.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppData.appBuildNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_220C17DD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646C697542707061 && a2 == 0xEE007265626D754ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_220C17EEC(char a1)
{
  sub_220CA11F4();
  MEMORY[0x223D95580](a1 & 1);
  return sub_220CA1214();
}

uint64_t sub_220C17F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C17DD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C17F78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C17EAC();
  *a1 = result;
  return result;
}

uint64_t sub_220C17FA0(uint64_t a1)
{
  v2 = sub_220BFFBE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C17FDC(uint64_t a1)
{
  v2 = sub_220BFFBE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B678, &qword_220CA2578);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220BFFBE4();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v11 = sub_220CA0FF4();
  v13 = v12;
  v21 = 1;
  v14 = sub_220CA0FF4();
  v16 = v15;
  v17 = *(v7 + 8);
  v20 = v14;
  v17(v10, v5);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v20;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_220C18224(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_220C18264(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for AppData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C18380()
{
  result = qword_27CF7B680;
  if (!qword_27CF7B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B680);
  }

  return result;
}

WeatherAnalytics::ConditionsFeedbackData __swiftcall ConditionsFeedbackData.init(sunnyReport:cloudCoverReport:rainReport:sleetReport:snowReport:)(Swift::Bool sunnyReport, WeatherAnalytics::CloudCover_optional cloudCoverReport, WeatherAnalytics::PrecipitationIntensity_optional rainReport, WeatherAnalytics::PrecipitationIntensity_optional sleetReport, WeatherAnalytics::PrecipitationIntensity_optional snowReport)
{
  v6 = *cloudCoverReport.value;
  v7 = *rainReport.value;
  v8 = *sleetReport.value;
  v9 = *snowReport.value;
  *v5 = sunnyReport;
  v5[1] = v6;
  v5[2] = v7;
  v5[3] = v8;
  v5[4] = v9;
  result.sunnyReport = sunnyReport;
  return result;
}

uint64_t sub_220C18504(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706552796E6E7573 && a2 == 0xEB0000000074726FLL;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000220CB4BD0 == a2;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F7065526E696172 && a2 == 0xEA00000000007472;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7065527465656C73 && a2 == 0xEB0000000074726FLL;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6F706552776F6E73 && a2 == 0xEA00000000007472)
        {

          return 4;
        }

        else
        {
          v10 = sub_220CA1154();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_220C186C8(char a1)
{
  result = 0x706552796E6E7573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      v3 = 1852399986;
      goto LABEL_5;
    case 3:
      result = 0x7065527465656C73;
      break;
    case 4:
      v3 = 2003791475;
LABEL_5:
      result = v3 | 0x6F70655200000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C1876C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C18504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C18794@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C186C0();
  *a1 = result;
  return result;
}

uint64_t sub_220C187BC(uint64_t a1)
{
  v2 = sub_220C18A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C187F8(uint64_t a1)
{
  v2 = sub_220C18A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConditionsFeedbackData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B688, &qword_220CA2780);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = v1[1];
  v22 = v1[2];
  v23 = v10;
  v11 = v1[3];
  v20 = v1[4];
  v21 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C18A4C();
  sub_220CA1254();
  v29[3] = 0;
  sub_220CA10D4();
  if (!v2)
  {
    v13 = v21;
    v12 = v22;
    v14 = v20;
    v29[2] = v23;
    v29[1] = 1;
    sub_220C18AA0();
    sub_220CA1094();
    v29[0] = v12;
    v28 = 2;
    sub_220C18AF4();
    OUTLINED_FUNCTION_1_0(v29, &v28, v15, &type metadata for PrecipitationIntensity);
    v27 = v13;
    v26 = 3;
    OUTLINED_FUNCTION_1_0(&v27, &v26, v16, &type metadata for PrecipitationIntensity);
    v25 = v14;
    v24 = 4;
    OUTLINED_FUNCTION_1_0(&v25, &v24, v17, &type metadata for PrecipitationIntensity);
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C18A4C()
{
  result = qword_27CF7B690;
  if (!qword_27CF7B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B690);
  }

  return result;
}

unint64_t sub_220C18AA0()
{
  result = qword_27CF7B698;
  if (!qword_27CF7B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B698);
  }

  return result;
}

unint64_t sub_220C18AF4()
{
  result = qword_27CF7B6A0;
  if (!qword_27CF7B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6A0);
  }

  return result;
}

uint64_t ConditionsFeedbackData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B6A8, &qword_220CA2788);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C18A4C();
  sub_220CA1234();
  if (!v2)
  {
    v20[4] = 0;
    v11 = sub_220CA1004();
    v20[2] = 1;
    sub_220C18DA0();
    sub_220CA0FC4();
    v17 = v20[3];
    v20[0] = 2;
    sub_220C18DF4();
    OUTLINED_FUNCTION_0_5(&type metadata for PrecipitationIntensity, v20);
    v16 = v20[1];
    v19[0] = 3;
    OUTLINED_FUNCTION_0_5(&type metadata for PrecipitationIntensity, v19);
    v15 = v19[1];
    v18[0] = 4;
    OUTLINED_FUNCTION_0_5(&type metadata for PrecipitationIntensity, v18);
    (*(v7 + 8))(v10, v5);
    v13 = v18[9];
    *a2 = v11 & 1;
    v14 = v16;
    a2[1] = v17;
    a2[2] = v14;
    a2[3] = v15;
    a2[4] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C18DA0()
{
  result = qword_27CF7B6B0;
  if (!qword_27CF7B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6B0);
  }

  return result;
}

unint64_t sub_220C18DF4()
{
  result = qword_27CF7B6B8;
  if (!qword_27CF7B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6B8);
  }

  return result;
}

unint64_t sub_220C18E4C()
{
  result = qword_27CF7B6C0;
  if (!qword_27CF7B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6C0);
  }

  return result;
}

unint64_t sub_220C18EA4()
{
  result = qword_27CF7B6C8;
  if (!qword_27CF7B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationSettingsData(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[5])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationSettingsData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConditionsFeedbackData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C190A8()
{
  result = qword_27CF7B6D0;
  if (!qword_27CF7B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6D0);
  }

  return result;
}

unint64_t sub_220C19100()
{
  result = qword_27CF7B6D8;
  if (!qword_27CF7B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6D8);
  }

  return result;
}

unint64_t sub_220C19158()
{
  result = qword_27CF7B6E0;
  if (!qword_27CF7B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6E0);
  }

  return result;
}

uint64_t sub_220C19274()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_2812D0378);
  __swift_project_value_buffer(v0, qword_2812D0378);
  return sub_220CA0244();
}

uint64_t FirstLaunchEvent.data.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B6E8, &qword_220CA29A0);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t FirstLaunchEvent.data.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B6E8, &qword_220CA29A0);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t FirstLaunchEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B6E8, &qword_220CA29A0);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t FirstLaunchEvent.Model.data.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(a1, v1, 0x60uLL);
  return sub_220C194BC(__dst, &v4);
}

uint64_t sub_220C19528(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C195B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C19528(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C195E0(uint64_t a1)
{
  v2 = sub_220C197E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C1961C(uint64_t a1)
{
  v2 = sub_220C197E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FirstLaunchEvent.Model.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B6F0, &qword_220CA29A8);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-v7 - 8];
  memcpy(__dst, v1, 0x60uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C194BC(__dst, v12);
  sub_220C197E0();
  sub_220CA1254();
  memcpy(v12, __dst, sizeof(v12));
  sub_220C19834();
  sub_220CA1104();
  memcpy(v11, v12, sizeof(v11));
  sub_220C19888(v11);
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C197E0()
{
  result = qword_27CF7B6F8;
  if (!qword_27CF7B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6F8);
  }

  return result;
}

unint64_t sub_220C19834()
{
  result = qword_2812CFC78;
  if (!qword_2812CFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC78);
  }

  return result;
}

uint64_t FirstLaunchEvent.Model.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B700, &qword_220CA29B0);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &__src[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C197E0();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C19A48();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    memcpy(a2, __src, 0x60uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C19A48()
{
  result = qword_2812CFC70;
  if (!qword_2812CFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC70);
  }

  return result;
}

uint64_t type metadata accessor for FirstLaunchEvent(uint64_t a1)
{
  result = qword_2812D0338;
  if (!qword_2812D0338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220C19B50(uint64_t a1)
{
  sub_220C19BBC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_220C19BBC(uint64_t a1)
{
  if (!qword_2812D0E78)
  {
    sub_220C19A48();
    sub_220C19834();
    v1 = sub_220CA0044();
    if (!v2)
    {
      atomic_store(v1, &qword_2812D0E78);
    }
  }
}

uint64_t sub_220C19C2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_220C19C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FirstLaunchEvent.Model.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_220C19D84()
{
  result = qword_27CF7B708;
  if (!qword_27CF7B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B708);
  }

  return result;
}

unint64_t sub_220C19DDC()
{
  result = qword_27CF7B710;
  if (!qword_27CF7B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B710);
  }

  return result;
}

unint64_t sub_220C19E34()
{
  result = qword_27CF7B718;
  if (!qword_27CF7B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B718);
  }

  return result;
}

WeatherAnalytics::InterfaceOrientation_optional __swiftcall InterfaceOrientation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_220C19EF4()
{
  result = qword_27CF7B720;
  if (!qword_27CF7B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B720);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InterfaceOrientation(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t LocationViewLoadPerfLogData.dataFirstAppearedDate.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t LocationViewLoadPerfLogData.firstWeatherDataAge.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t LocationViewLoadPerfLogData.init(offlineDuration:emptyDuration:populatedDuration:dataFirstAppearedDate:firstWeatherDataAge:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  return result;
}

uint64_t sub_220C1A1C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44656E696C66666FLL && a2 == 0xEF6E6F6974617275;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7275447974706D65 && a2 == 0xED00006E6F697461;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000220CB4BF0 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000220CB4C10 == a2;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000013 && 0x8000000220CB4C30 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_220CA1154();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_220C1A380(char a1)
{
  result = 0x44656E696C66666FLL;
  switch(a1)
  {
    case 1:
      result = 0x7275447974706D65;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C1A450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C1A1C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C1A478(uint64_t a1)
{
  v2 = sub_220C1A6EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C1A4B4(uint64_t a1)
{
  v2 = sub_220C1A6EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationViewLoadPerfLogData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B728, &qword_220CA2D20);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v10 = *(v1 + 8);
  v11 = *(v1 + 24);
  v17 = *(v1 + 16);
  v18 = v10;
  v16 = v11;
  v15 = *(v1 + 32);
  v14 = *(v1 + 40);
  v13[1] = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1A6EC();
  sub_220CA1254();
  v23 = 0;
  OUTLINED_FUNCTION_1_1();
  sub_220CA1124();
  if (!v2)
  {
    v22 = 1;
    OUTLINED_FUNCTION_1_1();
    sub_220CA1124();
    v21 = 2;
    OUTLINED_FUNCTION_1_1();
    sub_220CA1124();
    v20 = 3;
    OUTLINED_FUNCTION_1_1();
    sub_220CA10B4();
    v19 = 4;
    OUTLINED_FUNCTION_1_1();
    sub_220CA10B4();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C1A6EC()
{
  result = qword_27CF7B730;
  if (!qword_27CF7B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B730);
  }

  return result;
}

uint64_t LocationViewLoadPerfLogData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B738, &qword_220CA2D28);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1A6EC();
  sub_220CA1234();
  if (!v2)
  {
    v29 = 0;
    OUTLINED_FUNCTION_0_6();
    v11 = sub_220CA1054();
    v28 = 1;
    OUTLINED_FUNCTION_0_6();
    v12 = sub_220CA1054();
    v27 = 2;
    OUTLINED_FUNCTION_0_6();
    v24 = sub_220CA1054();
    v26 = 3;
    OUTLINED_FUNCTION_0_6();
    v13 = sub_220CA0FE4();
    v22 = v14;
    v23 = v13;
    v25 = 4;
    OUTLINED_FUNCTION_0_6();
    v16 = sub_220CA0FE4();
    v17 = v10;
    v19 = v18;
    (*(v7 + 8))(v17, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    v20 = v23;
    *(a2 + 16) = v24;
    *(a2 + 24) = v20;
    *(a2 + 32) = v22 & 1;
    *(a2 + 40) = v16;
    *(a2 + 48) = v19 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t sub_220C1A9A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220C1A9C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewLoadPerfLogData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C1AAF0()
{
  result = qword_27CF7B740;
  if (!qword_27CF7B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B740);
  }

  return result;
}

unint64_t sub_220C1AB48()
{
  result = qword_27CF7B748;
  if (!qword_27CF7B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B748);
  }

  return result;
}

unint64_t sub_220C1ABA0()
{
  result = qword_27CF7B750;
  if (!qword_27CF7B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B750);
  }

  return result;
}

uint64_t sub_220C1AC40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C1ACCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C1AC40(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C1ACF8(uint64_t a1)
{
  v2 = sub_220C1AEB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C1AD34(uint64_t a1)
{
  v2 = sub_220C1AEB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapOriginationData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B758, &qword_220CA2F40);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1AEB0();
  sub_220CA1254();
  v12 = v9;
  sub_220C1AF04();
  sub_220CA1104();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C1AEB0()
{
  result = qword_27CF7B760;
  if (!qword_27CF7B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B760);
  }

  return result;
}

unint64_t sub_220C1AF04()
{
  result = qword_27CF7B768;
  if (!qword_27CF7B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B768);
  }

  return result;
}

uint64_t MapOriginationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B770, &qword_220CA2F48);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1AEB0();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C1B0B8();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C1B0B8()
{
  result = qword_27CF7B778;
  if (!qword_27CF7B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B778);
  }

  return result;
}

unint64_t sub_220C1B110()
{
  result = qword_27CF7B780;
  if (!qword_27CF7B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B780);
  }

  return result;
}

unint64_t sub_220C1B168()
{
  result = qword_27CF7B788;
  if (!qword_27CF7B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B788);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapOriginationData(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapOriginationData.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_220C1B378()
{
  result = qword_27CF7B790;
  if (!qword_27CF7B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B790);
  }

  return result;
}

unint64_t sub_220C1B3D0()
{
  result = qword_27CF7B798;
  if (!qword_27CF7B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B798);
  }

  return result;
}

unint64_t sub_220C1B428()
{
  result = qword_27CF7B7A0;
  if (!qword_27CF7B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B7A0);
  }

  return result;
}

uint64_t sub_220C1B544()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7B7D8);
  __swift_project_value_buffer(v0, qword_27CF7B7D8);
  return sub_220CA0244();
}

uint64_t TemperatureScaleChangeEvent.eventData.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1, v0);
}

uint64_t TemperatureScaleChangeEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t TemperatureScaleChangeEvent.temperatureScaleData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for TemperatureScaleChangeEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1);
}

uint64_t TemperatureScaleChangeEvent.temperatureScaleData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for TemperatureScaleChangeEvent(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*TemperatureScaleChangeEvent.temperatureScaleData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for TemperatureScaleChangeEvent(v0);
  return nullsub_1;
}

uint64_t TemperatureScaleChangeEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for TemperatureScaleChangeEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1);
}

uint64_t TemperatureScaleChangeEvent.privateUserData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for TemperatureScaleChangeEvent(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*TemperatureScaleChangeEvent.privateUserData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for TemperatureScaleChangeEvent(v0);
  return nullsub_1;
}

uint64_t TemperatureScaleChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for TemperatureScaleChangeEvent(0);
  v5 = *(v4 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1();
  (*(v6 + 104))(a1 + v5, v2);
  v7 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v9 = *(v8 + 104);

  return v9(a1 + v7, v2);
}

uint64_t TemperatureScaleChangeEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1, v0);
}

uint64_t TemperatureScaleChangeEvent.Model.temperatureScaleData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for TemperatureScaleChangeEvent.Model(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t TemperatureScaleChangeEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for TemperatureScaleChangeEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t TemperatureScaleChangeEvent.Model.init(eventData:temperatureScaleData:privateUserData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 4);
  v10 = *(a3 + 20);
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  (*(v11 + 32))(a4, a1);
  result = type metadata accessor for TemperatureScaleChangeEvent.Model(0);
  *(a4 + *(result + 20)) = v6;
  v13 = a4 + *(result + 24);
  *v13 = v7;
  *(v13 + 8) = v8;
  *(v13 + 16) = v9;
  *(v13 + 20) = v10;
  return result;
}

uint64_t sub_220C1BC00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000220CB4B90 == a2;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_220C1BD30(char a1)
{
  if (!a1)
  {
    return 0x746144746E657665;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x5565746176697270;
}

uint64_t sub_220C1BDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C1BC00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C1BDCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C1BD28();
  *a1 = result;
  return result;
}

uint64_t sub_220C1BDF4(uint64_t a1)
{
  v2 = sub_220C1C08C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C1BE30(uint64_t a1)
{
  v2 = sub_220C1C08C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureScaleChangeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F8, &qword_220CA3158);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1C08C();
  sub_220CA1254();
  LOBYTE(v18) = 0;
  sub_220CA0494();
  sub_220C04FCC(&qword_2812D0D90, MEMORY[0x277CEAEB8]);
  sub_220CA1104();
  if (!v2)
  {
    v11 = type metadata accessor for TemperatureScaleChangeEvent.Model(0);
    LOBYTE(v18) = *(v3 + *(v11 + 20));
    v22 = 1;
    sub_220BFF604();
    sub_220CA1104();
    v12 = (v3 + *(v11 + 24));
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v12 + 4);
    LOBYTE(v12) = *(v12 + 20);
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v21 = v12;
    v22 = 2;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C1C08C()
{
  result = qword_27CF7B800;
  if (!qword_27CF7B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B800);
  }

  return result;
}

uint64_t TemperatureScaleChangeEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v26 = v5;
  MEMORY[0x28223BE20](v6);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B808, &qword_220CA3160);
  OUTLINED_FUNCTION_3();
  v28 = v9;
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for TemperatureScaleChangeEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1C08C();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = a1;
  v14 = v26;
  LOBYTE(v30) = 0;
  sub_220C04FCC(&qword_2812D0D88, MEMORY[0x277CEAEC0]);
  v15 = v27;
  sub_220CA1034();
  (*(v14 + 32))(v13, v15, v4);
  v34 = 1;
  sub_220BFF5AC();
  OUTLINED_FUNCTION_4_2(&type metadata for TemperatureScaleData);
  v13[*(v10 + 20)] = v30;
  v34 = 2;
  sub_220BFF730();
  OUTLINED_FUNCTION_4_2(&type metadata for PrivateUserData);
  v16 = OUTLINED_FUNCTION_3_1();
  v17(v16);
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v21 = &v13[*(v10 + 24)];
  *v21 = v30;
  *(v21 + 1) = v18;
  *(v21 + 4) = v19;
  v21[20] = v20;
  sub_220C1C424(v13, v25);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_220C1C488(v13);
}

uint64_t sub_220C1C424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemperatureScaleChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C1C488(uint64_t a1)
{
  v2 = type metadata accessor for TemperatureScaleChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C1C54C(uint64_t a1)
{
  sub_220C04EB8(319);
  if (v1 <= 0x3F)
  {
    sub_220C1C658(319, &qword_2812D0E00, sub_220BFF5AC, sub_220BFF604, &type metadata for TemperatureScaleData);
    if (v2 <= 0x3F)
    {
      sub_220C1C658(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C1C658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220C1C6FC(uint64_t a1)
{
  result = sub_220CA0494();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureScaleChangeEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C1C860()
{
  result = qword_27CF7B830;
  if (!qword_27CF7B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B830);
  }

  return result;
}

unint64_t sub_220C1C8B8()
{
  result = qword_27CF7B838;
  if (!qword_27CF7B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B838);
  }

  return result;
}

unint64_t sub_220C1C910()
{
  result = qword_27CF7B840;
  if (!qword_27CF7B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B840);
  }

  return result;
}

uint64_t sub_220C1CA2C()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_2812CF3E8);
  __swift_project_value_buffer(v0, qword_2812CF3E8);
  return sub_220CA0244();
}

uint64_t FollowingLocationListEvent.eventData.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1, v0);
}

uint64_t FollowingLocationListEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t FollowingLocationListEvent.followingLocationListData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for FollowingLocationListEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B848, &unk_220CA3388);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1);
}

uint64_t FollowingLocationListEvent.followingLocationListData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for FollowingLocationListEvent(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B848, &unk_220CA3388);
  OUTLINED_FUNCTION_0_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*FollowingLocationListEvent.followingLocationListData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for FollowingLocationListEvent(v0);
  return nullsub_1;
}

uint64_t FollowingLocationListEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for FollowingLocationListEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1);
}

uint64_t FollowingLocationListEvent.privateUserData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for FollowingLocationListEvent(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*FollowingLocationListEvent.privateUserData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for FollowingLocationListEvent(v0);
  return nullsub_1;
}

uint64_t FollowingLocationListEvent.coarseLocationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for FollowingLocationListEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B850, &qword_220CA3398);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1);
}

uint64_t FollowingLocationListEvent.coarseLocationData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for FollowingLocationListEvent(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B850, &qword_220CA3398);
  OUTLINED_FUNCTION_0_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*FollowingLocationListEvent.coarseLocationData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for FollowingLocationListEvent(v0);
  return nullsub_1;
}

uint64_t FollowingLocationListEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for FollowingLocationListEvent(0);
  v5 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B848, &unk_220CA3388);
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 104))(a1 + v5, v2);
  v7 = v4[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  (*(v8 + 104))(a1 + v7, v2);
  v9 = v4[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B850, &qword_220CA3398);
  OUTLINED_FUNCTION_0_0();
  v11 = *(v10 + 104);

  return v11(a1 + v9, v2);
}

uint64_t FollowingLocationListEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1, v0);
}

uint64_t FollowingLocationListEvent.Model.followingLocationListData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for FollowingLocationListEvent.Model(v2) + 20));
  v4 = *v3;
  LODWORD(v3) = *(v3 + 2);
  *v0 = v4;
  *(v0 + 8) = v3;
}

uint64_t FollowingLocationListEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for FollowingLocationListEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t FollowingLocationListEvent.Model.coarseLocationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for FollowingLocationListEvent.Model(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

int *FollowingLocationListEvent.Model.init(eventData:followingLocationListData:privateUserData:coarseLocationData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 4);
  v12 = *(a3 + 20);
  v13 = *a4;
  sub_220CA0494();
  OUTLINED_FUNCTION_0_0();
  (*(v14 + 32))(a5, a1);
  result = type metadata accessor for FollowingLocationListEvent.Model(0);
  v16 = a5 + result[5];
  *v16 = v7;
  *(v16 + 8) = v8;
  v17 = a5 + result[6];
  *v17 = v9;
  *(v17 + 8) = v10;
  *(v17 + 16) = v11;
  *(v17 + 20) = v12;
  *(a5 + result[7]) = v13;
  return result;
}

uint64_t sub_220C1D2B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x8000000220CB4C50 == a2;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5565746176697270 && a2 == 0xEF61746144726573;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x8000000220CB4C70 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_220CA1154();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_220C1D42C(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0x5565746176697270;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C1D4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C1D2B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C1D4FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C1D424();
  *a1 = result;
  return result;
}

uint64_t sub_220C1D524(uint64_t a1)
{
  v2 = sub_220C1D7E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C1D560(uint64_t a1)
{
  v2 = sub_220C1D7E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FollowingLocationListEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B858, &qword_220CA33A0);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1D7E8();
  sub_220CA1254();
  LOBYTE(v37) = 0;
  v11 = sub_220CA0494();
  v12 = sub_220C04FCC(&qword_2812D0D90, MEMORY[0x277CEAEB8]);
  OUTLINED_FUNCTION_11_1(v3, &v37, v5, v11, v12);
  if (!v2)
  {
    v13 = type metadata accessor for FollowingLocationListEvent.Model(0);
    v14 = v3 + v13[5];
    v15 = *v14;
    LODWORD(v14) = *(v14 + 8);
    v37 = v15;
    LODWORD(v38) = v14;
    v41 = 1;
    v16 = sub_220C1D83C();

    v17 = OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_11_1(v17, v18, v19, v20, v16);

    if (!v16)
    {
      v21 = v3 + v13[6];
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      LOBYTE(v21) = *(v21 + 20);
      v37 = v22;
      v38 = v23;
      v39 = v24;
      v40 = v21;
      v41 = 2;
      v25 = sub_220BFF788();

      v26 = OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_11_1(v26, v27, v28, v29, v25);

      if (!v25)
      {
        LOBYTE(v37) = *(v3 + v13[7]);
        v41 = 3;
        sub_220C175F4();
        v30 = OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_11_1(v30, v31, v32, v33, v34);
      }
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C1D7E8()
{
  result = qword_27CF7B860;
  if (!qword_27CF7B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B860);
  }

  return result;
}

unint64_t sub_220C1D83C()
{
  result = qword_2812CF4E8;
  if (!qword_2812CF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF4E8);
  }

  return result;
}

uint64_t FollowingLocationListEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v29 = v5;
  MEMORY[0x28223BE20](v6);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B868, &qword_220CA33A8);
  OUTLINED_FUNCTION_3();
  v31 = v9;
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for FollowingLocationListEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1D7E8();
  v33 = v11;
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v29;
  LOBYTE(v34) = 0;
  sub_220C04FCC(&qword_2812D0D88, MEMORY[0x277CEAEC0]);
  v17 = v30;
  sub_220CA1034();
  (*(v16 + 32))(v15, v17, v4);
  v38 = 1;
  sub_220C1DCA4();
  sub_220CA1034();
  v18 = v35;
  v19 = &v15[v12[5]];
  *v19 = v34;
  *(v19 + 2) = v18;
  v38 = 2;
  sub_220BFF730();
  sub_220CA1034();
  v20 = v35;
  v21 = v36;
  v22 = v37;
  v23 = &v15[v12[6]];
  *v23 = v34;
  *(v23 + 1) = v20;
  *(v23 + 4) = v21;
  v23[20] = v22;
  v38 = 3;
  sub_220C1759C();
  sub_220CA1034();
  v24 = OUTLINED_FUNCTION_7_1();
  v25(v24);
  v15[v12[7]] = v34;
  sub_220C1DCF8(v15, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C1DD5C(v15);
}

unint64_t sub_220C1DCA4()
{
  result = qword_2812CF4E0;
  if (!qword_2812CF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF4E0);
  }

  return result;
}

uint64_t sub_220C1DCF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingLocationListEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C1DD5C(uint64_t a1)
{
  v2 = type metadata accessor for FollowingLocationListEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C1DE20(uint64_t a1)
{
  sub_220C04EB8(319);
  if (v1 <= 0x3F)
  {
    sub_220C1DF7C(319, &qword_2812D0DD8, sub_220C1DCA4, sub_220C1D83C, &type metadata for FollowingLocationListData);
    if (v2 <= 0x3F)
    {
      sub_220C1DF7C(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
      if (v3 <= 0x3F)
      {
        sub_220C1DF7C(319, &qword_2812D0E10, sub_220C1759C, sub_220C175F4, &type metadata for CoarseLocationData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220C1DF7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220C1E020(uint64_t a1)
{
  result = sub_220CA0494();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FollowingLocationListEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C1E188()
{
  result = qword_27CF7B880;
  if (!qword_27CF7B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B880);
  }

  return result;
}

unint64_t sub_220C1E1E0()
{
  result = qword_27CF7B888;
  if (!qword_27CF7B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B888);
  }

  return result;
}

unint64_t sub_220C1E238()
{
  result = qword_27CF7B890;
  if (!qword_27CF7B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B890);
  }

  return result;
}

WeatherAnalytics::ViewAction_optional __swiftcall ViewAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ViewAction.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x636E75614C707061;
      break;
    case 2:
      result = 0x6570697773;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 0x6976614E72657375;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C1E3A4()
{
  result = qword_27CF7B898;
  if (!qword_27CF7B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B898);
  }

  return result;
}

uint64_t sub_220C1E41C@<X0>(uint64_t *a1@<X8>)
{
  result = ViewAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C1E5D0()
{
  result = qword_2812D0838;
  if (!qword_2812D0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0838);
  }

  return result;
}

uint64_t sub_220C1E6EC()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7B8D0);
  __swift_project_value_buffer(v0, qword_27CF7B8D0);
  return sub_220CA0244();
}

uint64_t WidgetExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t WidgetExposureEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t WidgetExposureEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WidgetExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WidgetExposureEvent.privateUserData.setter()
{
  OUTLINED_FUNCTION_11_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t WidgetExposureEvent.viewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WidgetExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WidgetExposureEvent.viewData.setter()
{
  OUTLINED_FUNCTION_11_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t WidgetExposureEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WidgetExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WidgetExposureEvent.timedData.setter()
{
  OUTLINED_FUNCTION_11_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t WidgetExposureEvent.typeData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WidgetExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F0, &qword_220CA3710);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WidgetExposureEvent.typeData.setter()
{
  OUTLINED_FUNCTION_11_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F0, &qword_220CA3710);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t WidgetExposureEvent.displayModeData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WidgetExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F8, &qword_220CA3718);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WidgetExposureEvent.displayModeData.setter()
{
  OUTLINED_FUNCTION_11_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F8, &qword_220CA3718);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t WidgetExposureEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WidgetExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B900, &qword_220CA3720);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WidgetExposureEvent.locationData.setter()
{
  OUTLINED_FUNCTION_11_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B900, &qword_220CA3720);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t WidgetExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for WidgetExposureEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v5 = OUTLINED_FUNCTION_16_0();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v9 = OUTLINED_FUNCTION_16_0();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F0, &qword_220CA3710);
  OUTLINED_FUNCTION_0_0();
  v11 = OUTLINED_FUNCTION_16_0();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F8, &qword_220CA3718);
  OUTLINED_FUNCTION_0_0();
  v13 = OUTLINED_FUNCTION_16_0();
  v14(v13);
  v15 = *(v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B900, &qword_220CA3720);
  OUTLINED_FUNCTION_0_0();
  v17 = *(v16 + 104);

  return v17(a1 + v15, v2);
}

uint64_t WidgetExposureEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t WidgetExposureEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for WidgetExposureEvent.Model(v2) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t WidgetExposureEvent.Model.viewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for WidgetExposureEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t WidgetExposureEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WidgetExposureEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WidgetExposureEvent.Model.typeData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for WidgetExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t WidgetExposureEvent.Model.displayModeData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for WidgetExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t WidgetExposureEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for WidgetExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

uint64_t WidgetExposureEvent.Model.init(eventData:privateUserData:viewData:timedData:typeData:displayModeData:locationData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 4);
  v13 = *(a2 + 20);
  v14 = *a3;
  v15 = a3[1];
  v16 = *(a3 + 8);
  v17 = *a5;
  v25 = *a6;
  v26 = *a7;
  sub_220CA0494();
  OUTLINED_FUNCTION_0_0();
  (*(v18 + 32))(a8, a1);
  v19 = type metadata accessor for WidgetExposureEvent.Model(0);
  v20 = a8 + v19[5];
  *v20 = v10;
  *(v20 + 8) = v11;
  *(v20 + 16) = v12;
  *(v20 + 20) = v13;
  v21 = a8 + v19[6];
  *v21 = v14;
  *(v21 + 8) = v15;
  *(v21 + 16) = v16;
  v22 = v19[7];
  sub_220CA04D4();
  OUTLINED_FUNCTION_0_0();
  result = (*(v23 + 32))(a8 + v22, a4);
  *(a8 + v19[8]) = v17;
  *(a8 + v19[9]) = v25;
  *(a8 + v19[10]) = v26;
  return result;
}

uint64_t sub_220C1F474(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5565746176697270 && a2 == 0xEF61746144726573;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6174614465707974 && a2 == 0xE800000000000000;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4D79616C70736964 && a2 == 0xEF6174614465646FLL;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144)
            {

              return 6;
            }

            else
            {
              v12 = sub_220CA1154();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220C1F6D0(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x5565746176697270;
      break;
    case 2:
      v3 = 2003134838;
      goto LABEL_5;
    case 3:
      result = 0x74614464656D6974;
      break;
    case 4:
      v3 = 1701869940;
LABEL_5:
      result = v3 | 0x6174614400000000;
      break;
    case 5:
      result = 0x4D79616C70736964;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C1F7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C1F474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C1F7E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C1F6C8();
  *a1 = result;
  return result;
}

uint64_t sub_220C1F80C(uint64_t a1)
{
  v2 = sub_220C1FBA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C1F848(uint64_t a1)
{
  v2 = sub_220C1FBA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B908, &qword_220CA3728);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1FBA4();
  sub_220CA1254();
  LOBYTE(v55) = 0;
  v11 = sub_220CA0494();
  OUTLINED_FUNCTION_7();
  v14 = sub_220C04F84(v12, v13, MEMORY[0x277CEAEB8]);
  OUTLINED_FUNCTION_17(v3, &v55, v5, v11, v14);
  if (!v2)
  {
    v15 = type metadata accessor for WidgetExposureEvent.Model(0);
    v16 = v3 + v15[5];
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    LOBYTE(v16) = *(v16 + 20);
    v55 = v17;
    v56 = v18;
    v57 = v19;
    v58 = v16;
    HIBYTE(v54) = 1;
    v20 = sub_220BFF788();

    v21 = OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_17(v21, v22, v23, v24, v20);
    if (v20 || (, v25 = v3 + v15[6], v26 = *v25, v27 = *(v25 + 8), LOWORD(v25) = *(v25 + 16), v55 = v26, v56 = v27, LOWORD(v57) = v25, HIBYTE(v54) = 2, v28 = sub_220C04820(), , v29 = OUTLINED_FUNCTION_4_3(), OUTLINED_FUNCTION_17(v29, v30, v31, v32, v28), v28))
    {
    }

    else
    {

      v34 = v15[7];
      LOBYTE(v55) = 3;
      v35 = sub_220CA04D4();
      OUTLINED_FUNCTION_5_0();
      v38 = sub_220C04F84(v36, v37, MEMORY[0x277CEAED8]);
      OUTLINED_FUNCTION_17(v3 + v34, &v55, v5, v35, v38);
      LOBYTE(v55) = *(v3 + v15[8]);
      HIBYTE(v54) = 4;
      sub_220C1FBF8();
      v39 = OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_17(v39, v40, v41, v42, v43);
      LOBYTE(v55) = *(v3 + v15[9]);
      HIBYTE(v54) = 5;
      sub_220C1FC4C();
      v44 = OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_17(v44, v45, v46, v47, v48);
      LOBYTE(v55) = *(v3 + v15[10]);
      HIBYTE(v54) = 6;
      sub_220C1FCA0();
      v49 = OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_17(v49, v50, v51, v52, v53);
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C1FBA4()
{
  result = qword_27CF7B910;
  if (!qword_27CF7B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B910);
  }

  return result;
}

unint64_t sub_220C1FBF8()
{
  result = qword_27CF7B918;
  if (!qword_27CF7B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B918);
  }

  return result;
}

unint64_t sub_220C1FC4C()
{
  result = qword_27CF7B920;
  if (!qword_27CF7B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B920);
  }

  return result;
}

unint64_t sub_220C1FCA0()
{
  result = qword_27CF7B928;
  if (!qword_27CF7B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B928);
  }

  return result;
}

uint64_t WidgetExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v29 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v8 = v7 - v6;
  v9 = sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v31 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v14 = v13 - v12;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B930, &qword_220CA3730);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  v34 = type metadata accessor for WidgetExposureEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v33 = v18 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1FBA4();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35) = 0;
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v19, v20, MEMORY[0x277CEAEC0]);
  sub_220CA1034();
  (*(v31 + 32))(v33, v14, v9);
  sub_220BFF730();
  OUTLINED_FUNCTION_15_1(&type metadata for PrivateUserData);
  v21 = v33 + v34[5];
  *v21 = v35;
  *(v21 + 8) = v36;
  *(v21 + 16) = v37;
  *(v21 + 20) = v38;
  sub_220C0449C();
  OUTLINED_FUNCTION_15_1(&type metadata for ViewData);
  v22 = v33 + v34[6];
  *v22 = v35;
  *(v22 + 8) = v36;
  *(v22 + 16) = v37;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v23, v24, MEMORY[0x277CEAEE0]);
  sub_220CA1034();
  (*(v29 + 32))(v33 + v34[7], v8, v32);
  sub_220C20298();
  OUTLINED_FUNCTION_7_0(&type metadata for WidgetTypeData);
  *(v33 + v34[8]) = 3;
  sub_220C202EC();
  OUTLINED_FUNCTION_7_0(&type metadata for WidgetDisplayModeData);
  *(v33 + v34[9]) = 3;
  sub_220C20340();
  OUTLINED_FUNCTION_7_0(&type metadata for WidgetLocationData);
  v25 = OUTLINED_FUNCTION_13_0();
  v26(v25, v30);
  *(v33 + v34[10]) = 3;
  sub_220C20394(v33, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C203F8(v33);
}

unint64_t sub_220C20298()
{
  result = qword_27CF7B938;
  if (!qword_27CF7B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B938);
  }

  return result;
}

unint64_t sub_220C202EC()
{
  result = qword_27CF7B940;
  if (!qword_27CF7B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B940);
  }

  return result;
}

unint64_t sub_220C20340()
{
  result = qword_27CF7B948;
  if (!qword_27CF7B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B948);
  }

  return result;
}

uint64_t sub_220C20394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C203F8(uint64_t a1)
{
  v2 = type metadata accessor for WidgetExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C204BC(uint64_t a1)
{
  sub_220C04EB8(319);
  if (v1 <= 0x3F)
  {
    sub_220C206D0(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
    if (v2 <= 0x3F)
    {
      sub_220C206D0(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_220C05010(319);
        if (v4 <= 0x3F)
        {
          sub_220C206D0(319, &qword_27CF7B960, sub_220C20298, sub_220C1FBF8, &type metadata for WidgetTypeData);
          if (v5 <= 0x3F)
          {
            sub_220C206D0(319, &qword_27CF7B968, sub_220C202EC, sub_220C1FC4C, &type metadata for WidgetDisplayModeData);
            if (v6 <= 0x3F)
            {
              sub_220C206D0(319, &qword_27CF7B970, sub_220C20340, sub_220C1FCA0, &type metadata for WidgetLocationData);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_220C206D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220C20774(uint64_t a1)
{
  result = sub_220CA0494();
  if (v2 <= 0x3F)
  {
    result = sub_220CA04D4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceOrientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}