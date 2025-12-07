uint64_t sub_23B3D7B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_40();
  swift_getWitnessTable();

  return sub_23B50D374();
}

uint64_t sub_23B3D7BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_40();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3D7C20(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23B50AD24();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = type metadata accessor for WeatherMetadata(0);
      v10 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_23B3D7CEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_23B50AD24();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = type metadata accessor for WeatherMetadata(0);
      v10 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_23B3D7DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_8_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 36) + 8);
  if (v13 <= 3)
  {
    v14 = 3;
  }

  else
  {
    v14 = *(a1 + *(a3 + 36) + 8);
  }

  v15 = v14 - 3;
  if (v13 >= 3)
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

void sub_23B3D7EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = a2 + 3;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_23B3D8078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_26();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3D80EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();

  return sub_23B50D374();
}

uint64_t sub_23B3D8160(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x7473616365726F66;
  }
}

uint64_t sub_23B3D8190@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B3D8160(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23B3D81C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_23B50D664();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23B3D8210(char a1)
{
  if (!a1)
  {
    return 0x7473616365726F66;
  }

  if (a1 == 1)
  {
    return 0x617461646174656DLL;
  }

  return 0x6F4C656E6972616DLL;
}

uint64_t sub_23B3D83B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 3)
    {
      return v8 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B3D845C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AD24();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

BOOL sub_23B3D8584(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t _s10WeatherKit23WeatherDataAgePredicateOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_5_24(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10WeatherKit23WeatherDataAgePredicateOwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_23B3D864C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_5_24(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B3D8660(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_23B3D86CC()
{
  OUTLINED_FUNCTION_32_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_46_4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0();
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_45_5();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0();
      if (*(v8 + 84) == v0)
      {
        OUTLINED_FUNCTION_42_7();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F60, &qword_23B50F298);
        OUTLINED_FUNCTION_8_0();
        if (*(v9 + 84) == v0)
        {
          OUTLINED_FUNCTION_44_4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
          OUTLINED_FUNCTION_8_0();
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_47_4();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
            OUTLINED_FUNCTION_8_0();
            if (*(v11 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_8();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
              OUTLINED_FUNCTION_8_0();
              if (*(v12 + 84) == v0)
              {
                OUTLINED_FUNCTION_56_3();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
                OUTLINED_FUNCTION_8_0();
                if (*(v14 + 84) == v0)
                {
                  v5 = v13;
                  v7 = v2[11];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE0, &unk_23B51CB40);
                  OUTLINED_FUNCTION_8_0();
                  if (*(v16 + 84) == v0)
                  {
                    v5 = v15;
                    v7 = v2[12];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F00, &qword_23B515830);
                    OUTLINED_FUNCTION_8_0();
                    if (*(v18 + 84) == v0)
                    {
                      v5 = v17;
                      v7 = v2[13];
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F10, &unk_23B51CB50);
                      OUTLINED_FUNCTION_8_0();
                      if (*(v20 + 84) == v0)
                      {
                        v5 = v19;
                        v7 = v2[14];
                      }

                      else
                      {
                        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF0, &qword_23B515828);
                        v7 = v2[15];
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

    v4 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_23B3D8A50()
{
  OUTLINED_FUNCTION_23_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_52_3();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_51_1();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_48_3();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F60, &qword_23B50F298);
        OUTLINED_FUNCTION_8_0();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_50_2();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
          OUTLINED_FUNCTION_8_0();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
            OUTLINED_FUNCTION_8_0();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_49_3();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
              OUTLINED_FUNCTION_8_0();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_57_3();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
                OUTLINED_FUNCTION_8_0();
                if (*(v8 + 84) != v0)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE0, &unk_23B51CB40);
                  OUTLINED_FUNCTION_8_0();
                  if (*(v9 + 84) != v0)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F00, &qword_23B515830);
                    OUTLINED_FUNCTION_8_0();
                    if (*(v10 + 84) != v0)
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F10, &unk_23B51CB50);
                      OUTLINED_FUNCTION_8_0();
                      if (*(v11 + 84) != v0)
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF0, &qword_23B515828);
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

  OUTLINED_FUNCTION_54_2();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_23B3D8DD4()
{
  OUTLINED_FUNCTION_32_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_46_4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0();
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_45_5();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0();
      if (*(v8 + 84) == v0)
      {
        OUTLINED_FUNCTION_42_7();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0();
        if (*(v9 + 84) == v0)
        {
          OUTLINED_FUNCTION_44_4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0();
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_47_4();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
            OUTLINED_FUNCTION_8_0();
            if (*(v11 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_8();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
              OUTLINED_FUNCTION_8_0();
              if (*(v12 + 84) == v0)
              {
                OUTLINED_FUNCTION_56_3();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE0, &unk_23B51CB40);
                OUTLINED_FUNCTION_8_0();
                if (*(v14 + 84) == v0)
                {
                  v5 = v13;
                  v7 = v2[11];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F00, &qword_23B515830);
                  OUTLINED_FUNCTION_8_0();
                  if (*(v16 + 84) == v0)
                  {
                    v5 = v15;
                    v7 = v2[12];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F10, &unk_23B51CB50);
                    OUTLINED_FUNCTION_8_0();
                    if (*(v18 + 84) == v0)
                    {
                      v5 = v17;
                      v7 = v2[13];
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF0, &qword_23B515828);
                      OUTLINED_FUNCTION_8_0();
                      if (*(v20 + 84) == v0)
                      {
                        v5 = v19;
                        v7 = v2[14];
                      }

                      else
                      {
                        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF8, &unk_23B51CB60);
                        v7 = v2[15];
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

    v4 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_23B3D9158()
{
  OUTLINED_FUNCTION_23_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_52_3();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_51_1();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_48_3();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_50_2();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
            OUTLINED_FUNCTION_8_0();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_49_3();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
              OUTLINED_FUNCTION_8_0();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_57_3();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE0, &unk_23B51CB40);
                OUTLINED_FUNCTION_8_0();
                if (*(v8 + 84) != v0)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F00, &qword_23B515830);
                  OUTLINED_FUNCTION_8_0();
                  if (*(v9 + 84) != v0)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F10, &unk_23B51CB50);
                    OUTLINED_FUNCTION_8_0();
                    if (*(v10 + 84) != v0)
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF0, &qword_23B515828);
                      OUTLINED_FUNCTION_8_0();
                      if (*(v11 + 84) != v0)
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF8, &unk_23B51CB60);
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

  OUTLINED_FUNCTION_54_2();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_23B3D94DC()
{
  OUTLINED_FUNCTION_32_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_46_4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_45_5();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_42_7();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_44_4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_47_4();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
            OUTLINED_FUNCTION_8_0();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_8();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
              OUTLINED_FUNCTION_56_3();
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_23B3D96E4()
{
  OUTLINED_FUNCTION_23_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_52_3();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_51_1();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_48_3();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_50_2();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
            OUTLINED_FUNCTION_8_0();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_49_3();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
              OUTLINED_FUNCTION_57_3();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_54_2();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_23B3D98EC()
{
  OUTLINED_FUNCTION_32_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_46_4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0();
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_45_5();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0();
      if (*(v8 + 84) == v0)
      {
        OUTLINED_FUNCTION_42_7();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0();
        if (*(v9 + 84) == v0)
        {
          OUTLINED_FUNCTION_44_4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0();
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_47_4();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
            OUTLINED_FUNCTION_8_0();
            if (*(v11 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_8();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
              OUTLINED_FUNCTION_8_0();
              if (*(v12 + 84) == v0)
              {
                OUTLINED_FUNCTION_56_3();
              }

              else
              {
                v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF8, &unk_23B51CB60);
                v7 = *(v2 + 44);
              }
            }
          }
        }
      }
    }

    v4 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_23B3D9B40()
{
  OUTLINED_FUNCTION_23_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_52_3();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_51_1();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_48_3();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_50_2();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
            OUTLINED_FUNCTION_8_0();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_49_3();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
              OUTLINED_FUNCTION_8_0();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_57_3();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF8, &unk_23B51CB60);
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_54_2();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_23B3D9D94()
{
  OUTLINED_FUNCTION_32_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_46_4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_45_5();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_42_7();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_44_4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_47_4();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
            OUTLINED_FUNCTION_43_8();
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_23B3D9F54()
{
  OUTLINED_FUNCTION_23_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_52_3();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_51_1();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_48_3();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_50_2();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
            OUTLINED_FUNCTION_49_3();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_54_2();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_23B3DA224(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 240)
  {
    v4 = *a1;
    if (v4 >= 0x10)
    {
      return v4 - 15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
    OUTLINED_FUNCTION_8_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      OUTLINED_FUNCTION_8_0();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
        v11 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(&a1[v11], a2, v10);
  }
}

_BYTE *sub_23B3DA348(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 240)
  {
    *result = a2 + 15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
    OUTLINED_FUNCTION_8_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      OUTLINED_FUNCTION_8_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(&v5[v11], a2, a2, v10);
  }

  return result;
}

uint64_t sub_23B3DA544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_23B3DA5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_23B3DAB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0x65)
    {
      return v8 - 100;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B3DAC20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 100;
  }

  return result;
}

uint64_t sub_23B3DADC0()
{
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  sub_23B50D364();
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 96) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B3DAE78()
{
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  sub_23B50D364();
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B3DAF78()
{
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  sub_23B50D364();
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B3DB028()
{
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  sub_23B50D364();
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B3DB0D8()
{
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  sub_23B50D364();
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B3DB180()
{
  OUTLINED_FUNCTION_226_1();
  swift_getTupleTypeMetadata3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  sub_23B50D364();
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_40_7();

  return swift_deallocObject();
}

uint64_t sub_23B3DB22C()
{
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  sub_23B50D364();
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_40_7();

  return swift_deallocObject();
}

uint64_t sub_23B3DB2D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  sub_23B50D364();
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_40_7();

  return swift_deallocObject();
}

uint64_t sub_23B3DB380()
{
  v1 = sub_23B50B7B4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_23B3DB438()
{
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353A8, &qword_23B523820);
  v87 = *(*(v7 - 1) + 80);
  v8 = (v6 + v87 + 8) & ~v87;
  v88 = *(v3 + 8);
  v88(v0 + v5, v1);

  v9 = v0 + v8;
  v10 = sub_23B50AA24();
  if (!OUTLINED_FUNCTION_143_1(v0 + v8))
  {
    OUTLINED_FUNCTION_26_16();
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  v13 = v12[7];
  if (!OUTLINED_FUNCTION_143_1(&v13[v9]))
  {
    OUTLINED_FUNCTION_26_16();
    (*(v14 + 8))(&v13[v9], v10);
  }

  v15 = v12[11];
  Options = type metadata accessor for InstantWeatherQueryOptions(0);
  if (!__swift_getEnumTagSinglePayload(v9 + v15, 1, Options))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      (*(v17 + 8))(v9 + v15, v10);
    }

    else
    {
      v88(v9 + v15, v1);
    }
  }

  v18 = v9 + v12[12];
  PeriodicRelativeRange = type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  if (!__swift_getEnumTagSinglePayload(v18, 1, PeriodicRelativeRange))
  {
    v20 = OUTLINED_FUNCTION_67_2();
    (v13)(v20);
    v21 = OUTLINED_FUNCTION_65_3();
    (v13)(v21);
    OUTLINED_FUNCTION_196_1();
  }

  if (!OUTLINED_FUNCTION_81_2(v7[12]))
  {
    OUTLINED_FUNCTION_26_16();
    v22 = OUTLINED_FUNCTION_163_1();
    v23(v22);
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
  if (!OUTLINED_FUNCTION_52_4(v24))
  {
    OUTLINED_FUNCTION_26_16();
    v25 = OUTLINED_FUNCTION_94_1();
    v26(v25);
  }

  if (!OUTLINED_FUNCTION_80_2())
  {
    if (OUTLINED_FUNCTION_199_1() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      v27 = OUTLINED_FUNCTION_94_1();
    }

    else
    {
      v27 = OUTLINED_FUNCTION_72_1();
    }

    v28(v27);
  }

  if (!OUTLINED_FUNCTION_57_4())
  {
    v29 = OUTLINED_FUNCTION_67_2();
    (v13)(v29);
    v30 = OUTLINED_FUNCTION_65_3();
    (v13)(v30);
    OUTLINED_FUNCTION_196_1();
  }

  if (!OUTLINED_FUNCTION_81_2(v7[16]))
  {
    OUTLINED_FUNCTION_26_16();
    v31 = OUTLINED_FUNCTION_163_1();
    v32(v31);
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
  if (!OUTLINED_FUNCTION_52_4(v33))
  {
    OUTLINED_FUNCTION_26_16();
    v34 = OUTLINED_FUNCTION_94_1();
    v35(v34);
  }

  if (!OUTLINED_FUNCTION_80_2())
  {
    if (OUTLINED_FUNCTION_199_1() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      v36 = OUTLINED_FUNCTION_94_1();
    }

    else
    {
      v36 = OUTLINED_FUNCTION_72_1();
    }

    v37(v36);
  }

  if (!OUTLINED_FUNCTION_57_4())
  {
    v38 = OUTLINED_FUNCTION_67_2();
    (v13)(v38);
    v39 = OUTLINED_FUNCTION_65_3();
    (v13)(v39);
    OUTLINED_FUNCTION_196_1();
  }

  if (!OUTLINED_FUNCTION_81_2(v7[20]))
  {
    OUTLINED_FUNCTION_26_16();
    v40 = OUTLINED_FUNCTION_163_1();
    v41(v40);
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  if (!OUTLINED_FUNCTION_52_4(v42))
  {
    OUTLINED_FUNCTION_26_16();
    v43 = OUTLINED_FUNCTION_94_1();
    v44(v43);
  }

  if (!OUTLINED_FUNCTION_80_2())
  {
    if (OUTLINED_FUNCTION_199_1() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      v45 = OUTLINED_FUNCTION_94_1();
    }

    else
    {
      v45 = OUTLINED_FUNCTION_72_1();
    }

    v46(v45);
  }

  if (!OUTLINED_FUNCTION_57_4())
  {
    v47 = OUTLINED_FUNCTION_67_2();
    (v13)(v47);
    v48 = OUTLINED_FUNCTION_65_3();
    (v13)(v48);
    OUTLINED_FUNCTION_196_1();
  }

  if (!OUTLINED_FUNCTION_81_2(v7[24]))
  {
    OUTLINED_FUNCTION_26_16();
    v49 = OUTLINED_FUNCTION_163_1();
    v50(v49);
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
  if (!OUTLINED_FUNCTION_52_4(v51))
  {
    OUTLINED_FUNCTION_26_16();
    v52 = OUTLINED_FUNCTION_94_1();
    v53(v52);
  }

  if (!OUTLINED_FUNCTION_80_2())
  {
    if (OUTLINED_FUNCTION_199_1() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      v54 = OUTLINED_FUNCTION_94_1();
    }

    else
    {
      v54 = OUTLINED_FUNCTION_72_1();
    }

    v55(v54);
  }

  if (!OUTLINED_FUNCTION_57_4())
  {
    v56 = OUTLINED_FUNCTION_67_2();
    (v13)(v56);
    v57 = OUTLINED_FUNCTION_65_3();
    (v13)(v57);
    OUTLINED_FUNCTION_196_1();
  }

  if (!OUTLINED_FUNCTION_81_2(v7[28]))
  {
    OUTLINED_FUNCTION_26_16();
    v58 = OUTLINED_FUNCTION_163_1();
    v59(v58);
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE0, &unk_23B51CB40);
  if (!OUTLINED_FUNCTION_52_4(v60))
  {
    OUTLINED_FUNCTION_26_16();
    v61 = OUTLINED_FUNCTION_94_1();
    v62(v61);
  }

  if (!OUTLINED_FUNCTION_80_2())
  {
    if (OUTLINED_FUNCTION_199_1() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      v63 = OUTLINED_FUNCTION_94_1();
    }

    else
    {
      v63 = OUTLINED_FUNCTION_72_1();
    }

    v64(v63);
  }

  if (!OUTLINED_FUNCTION_57_4())
  {
    v65 = OUTLINED_FUNCTION_67_2();
    (v13)(v65);
    v66 = OUTLINED_FUNCTION_65_3();
    (v13)(v66);
    OUTLINED_FUNCTION_196_1();
  }

  if (!OUTLINED_FUNCTION_81_2(v7[32]))
  {
    OUTLINED_FUNCTION_26_16();
    v67 = OUTLINED_FUNCTION_163_1();
    v68(v67);
  }

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
  if (!OUTLINED_FUNCTION_52_4(v69))
  {
    OUTLINED_FUNCTION_26_16();
    v70 = OUTLINED_FUNCTION_94_1();
    v71(v70);
  }

  if (!OUTLINED_FUNCTION_80_2())
  {
    if (OUTLINED_FUNCTION_199_1() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      v72 = OUTLINED_FUNCTION_94_1();
    }

    else
    {
      v72 = OUTLINED_FUNCTION_72_1();
    }

    v73(v72);
  }

  if (!OUTLINED_FUNCTION_57_4())
  {
    v74 = OUTLINED_FUNCTION_67_2();
    (v13)(v74);
    v75 = OUTLINED_FUNCTION_65_3();
    (v13)(v75);
    OUTLINED_FUNCTION_196_1();
  }

  v76 = v9 + v7[36];
  if (!OUTLINED_FUNCTION_143_1(v76))
  {
    OUTLINED_FUNCTION_26_16();
    v77 = OUTLINED_FUNCTION_36();
    v78(v77);
  }

  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
  v80 = v79[7];
  if (!OUTLINED_FUNCTION_143_1(v76 + v80))
  {
    OUTLINED_FUNCTION_26_16();
    (*(v81 + 8))(v76 + v80, v10);
  }

  v82 = v79[11];
  if (!__swift_getEnumTagSinglePayload(v76 + v82, 1, Options))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      (*(v83 + 8))(v76 + v82, v10);
    }

    else
    {
      v88(v76 + v82, v1);
    }
  }

  v84 = v76 + v79[12];
  if (!__swift_getEnumTagSinglePayload(v84, 1, PeriodicRelativeRange))
  {
    v85 = OUTLINED_FUNCTION_226();
    (v88)(v85);
    v88(v84 + *(PeriodicRelativeRange + 20), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_23B3DBDD8()
{

  return swift_deallocObject();
}

uint64_t sub_23B3DBFD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WeatherMetadata(0);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23B3DC058(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherMetadata(0);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3DC1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_8_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 32) + 8);
  if (v13 <= 3)
  {
    v14 = 3;
  }

  else
  {
    v14 = *(a1 + *(a3 + 32) + 8);
  }

  v15 = v14 - 3;
  if (v13 >= 3)
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

void sub_23B3DC2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2 + 3;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_23B3DC3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_56();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3DC45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_56();
  swift_getWitnessTable();

  return sub_23B50D374();
}

uint64_t sub_23B3DC4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_56();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3DC534(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WeatherMetadata(0);
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23B3DC5BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherMetadata(0);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3DC664(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_34_0();
  v4 = sub_23B50AEF4();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_23B3DC6A8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_34_0();
  v4 = sub_23B50AEF4();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_23B3DC6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v7 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_23B3DC754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v8 = a1 + *(a4 + 20);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_23B3DC860(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_16:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 253)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F58, &qword_23B50F290);
    OUTLINED_FUNCTION_8_0();
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v16 = a3[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F70, &unk_23B5192B0);
      OUTLINED_FUNCTION_8_0();
      if (*(v18 + 84) == a2)
      {
        v8 = v17;
        v16 = a3[10];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
        v16 = a3[11];
      }
    }

    v9 = a1 + v16;
    goto LABEL_16;
  }

  v10 = *(a1 + a3[7] + 16);
  if (v10 <= 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = *(a1 + a3[7] + 16);
  }

  v12 = v11 - 2;
  if (v10 >= 2)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

void sub_23B3DC9E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 253)
    {
      *(a1 + a4[7] + 16) = a2 + 2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F58, &qword_23B50F290);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F70, &unk_23B5192B0);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[10];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
        v14 = a4[11];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_23B3DCB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B3DCC04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B50AD24();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23B3DCD2C@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherSeverityKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B3DCE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50C7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 52));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_23B3DCF40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50C7D4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B3DD074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQuality(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B3DD0BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for AirQuality(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_23B3DD16C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

char *sub_23B3DD1F4(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

uint64_t sub_23B3DD21C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[9];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
      v9 = a3[12];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[8]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_23B3DD34C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[9];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
      v11 = a4[12];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_23B3DD51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 2)
      {
        return v9 - 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B3DD5F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AD24();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23B3DD718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Swell(0);
    OUTLINED_FUNCTION_8_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_23B3DD7FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Swell(0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_23B3DD930(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_6_21(a1);
}

uint64_t sub_23B3DDA38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23B50AEF4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23B3DDAC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23B50AEF4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3DDC24(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_34_0();
  sub_23B50AB34();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_17:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_23B50AD24();
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[13];
        }

        else
        {
          type metadata accessor for WeatherMetadata(0);
          OUTLINED_FUNCTION_8_0();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v14 = a3[17];
          }

          else
          {
            v8 = sub_23B50AD64();
            v14 = a3[18];
          }
        }
      }
    }

    v9 = v3 + v14;
    goto LABEL_17;
  }

  v10 = *(v3 + a3[5] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_23B3DDE08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_34_0();
  sub_23B50AB34();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[5] + 8) = (a2 - 1);
      return;
    }

    sub_23B50AD24();
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[13];
        }

        else
        {
          type metadata accessor for WeatherMetadata(0);
          OUTLINED_FUNCTION_8_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[17];
          }

          else
          {
            v10 = sub_23B50AD64();
            v14 = a4[18];
          }
        }
      }
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t static WatchWeather.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherAlert(0);
  v66 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v67 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v4);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v62 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = (&v62 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v15 = (&v62 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v16);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  OUTLINED_FUNCTION_3(v20);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - v22;
  static CurrentWeather.mock()(&v62 - v22);
  v62 = type metadata accessor for CurrentWeather(0);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v62);
  static Forecast<>.mock()(v19);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v24);
  v65 = v15;
  static Forecast<>.mock()(v15);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  v26 = OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  v64 = v11;
  static Forecast<>.mock()(v11);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  v30 = OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  v63 = v7;
  static AirQuality.mock()(v7);
  v33 = type metadata accessor for AirQuality(0);
  v34 = OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E131CB8, &qword_23B50ED80);
  v37 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_23B50ED30;
  v39 = v67;
  sub_23B4DAB18(v67);
  sub_23B3DE638(v39, v38 + v37);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v62);
  v43 = type metadata accessor for WatchWeather(0);
  v44 = v43[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v24);
  v48 = v43[6];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v25);
  v52 = v43[7];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v29);
  v56 = v43[8];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v33);
  v60 = v43[9];
  sub_23B3C24A8(v23, a1, &qword_27E131C98, &unk_23B50ED60);
  sub_23B3C24A8(v19, a1 + v44, &qword_27E131C90, &unk_23B514EC0);
  sub_23B3C24A8(v65, a1 + v48, &qword_27E131C88, &unk_23B50ED50);
  sub_23B3C24A8(v64, a1 + v52, &qword_27E131C80, &qword_23B50ED48);
  result = sub_23B3C24A8(v63, a1 + v56, &qword_27E131C78, &qword_23B50ED40);
  *(a1 + v60) = v38;
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

uint64_t sub_23B3DE638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherAlert(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WeatherServiceDailyRelativeRange(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WeatherServiceDailyRelativeRange(uint64_t result, int a2, int a3)
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

uint64_t Article.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Article.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Article.supportedStorefronts.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Article.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Article(0) + 24);
  sub_23B50ADC4();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Article(uint64_t a1)
{
  result = qword_280B41BE0;
  if (!qword_280B41BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Article.locale.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for Article(v2) + 24);
  sub_23B50ADC4();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Article.locale.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for Article(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t Article.headlineOverride.getter()
{
  v1 = *(v0 + *(type metadata accessor for Article(0) + 28));

  return v1;
}

uint64_t Article.headlineOverride.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Article(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Article.headlineOverride.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for Article(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t Article.phenomena.getter()
{
  type metadata accessor for Article(0);
}

uint64_t Article.phenomena.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for Article(v2) + 32);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Article.phenomena.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for Article(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t Article.alertIds.getter()
{
  type metadata accessor for Article(0);
}

uint64_t Article.alertIds.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for Article(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Article.alertIds.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for Article(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v17 = type metadata accessor for Article(0);
  v18 = &a9[v17[7]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v19 = v17[6];
  sub_23B50ADC4();
  OUTLINED_FUNCTION_6();
  result = (*(v20 + 32))(&a9[v19], a4);
  *v18 = a5;
  *(v18 + 1) = a6;
  *&a9[v17[8]] = a7;
  *&a9[v17[9]] = a8;
  return result;
}

uint64_t sub_23B3DEC38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000023B5287E0 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x800000023B528800 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E656D6F6E656870 && a2 == 0xE900000000000061;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7364497472656C61 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_23B50D834();

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

uint64_t _s10WeatherKit0A6ChangeV9DirectionO9hashValueSivg_0(unsigned __int8 a1)
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](a1);
  return sub_23B50D914();
}

unint64_t sub_23B3DEE88(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x656C61636F6CLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6E656D6F6E656870;
      break;
    case 5:
      result = 0x7364497472656C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B3DEF44(uint64_t a1)
{
  v2 = *v1;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v2);
  return sub_23B50D914();
}

uint64_t sub_23B3DEF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3DEC38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B3DEFD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3DEE2C();
  *a1 = result;
  return result;
}

uint64_t sub_23B3DF000(uint64_t a1)
{
  v2 = sub_23B3E1FAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B3DF03C(uint64_t a1)
{
  v2 = sub_23B3E1FAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static Article.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  if ((sub_23B3DF180(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Article(0);
  if ((MEMORY[0x23EE9B020](a1 + v5[6], a2 + v5[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = v5[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_23B50D834() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if ((sub_23B3DF180(*(a1 + v5[8]), *(a2 + v5[8])) & 1) == 0)
  {
    return 0;
  }

  v12 = v5[9];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);

  return sub_23B3DF20C(v13, v14);
}

uint64_t sub_23B3DF180(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_23B50D834() & 1) == 0)
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

uint64_t sub_23B3DF20C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50AD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_23B3E2AC4(&unk_27E131E40);
    v22 = sub_23B50D134();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_23B3DF420(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    OUTLINED_FUNCTION_42();
    v40 = v3;
    v41 = v4;
    OUTLINED_FUNCTION_42();
    v38 = v5;
    v39 = v6;
    OUTLINED_FUNCTION_42();
    v36 = v7;
    v37 = v8;
    OUTLINED_FUNCTION_42();
    v35 = v9;
    v11 = (v10 + 40);
    for (i = (v12 + 40); ; i += 16)
    {
      v14 = *v11;
      v15 = *i;

      sub_23B3DF86C();
      if ((v16 & 1) == 0)
      {
        break;
      }

      v11 += 16;
      v17 = 0xEF6C696174654465;
      v18 = 0x6B694C736C656566;
      switch(v14)
      {
        case 1:
          break;
        case 2:
          v18 = 0x79746964696D7568;
          goto LABEL_20;
        case 3:
          v19 = 1852796781;
          goto LABEL_15;
        case 4:
          OUTLINED_FUNCTION_16_0();
          v18 = v21 + 3;
          v17 = v36;
          break;
        case 5:
          OUTLINED_FUNCTION_16_0();
          v18 = v23 + 11;
          v17 = v37;
          break;
        case 6:
          v18 = 0x6572757373657270;
LABEL_20:
          v17 = 0xEE006C6961746544;
          break;
        case 7:
          v17 = 0xE600000000000000;
          v18 = 0x657265766573;
          break;
        case 8:
          OUTLINED_FUNCTION_16_0();
          v18 = v24 + 3;
          v17 = v38;
          break;
        case 9:
          OUTLINED_FUNCTION_16_0();
          v18 = v22 + 1;
          v17 = v39;
          break;
        case 10:
          v17 = 0xE500000000000000;
          v18 = 0x646E657274;
          break;
        case 11:
          OUTLINED_FUNCTION_16_0();
          v18 = v20 + 9;
          v17 = v40;
          break;
        case 12:
          v18 = 0x447865646E497675;
          v17 = 0xED00006C69617465;
          break;
        case 13:
          v18 = 0xD000000000000010;
          v17 = v41;
          break;
        case 14:
          v19 = 1684957559;
LABEL_15:
          v18 = v19 | 0x6174654400000000;
          v17 = 0xEA00000000006C69;
          break;
        default:
          v18 = 0xD000000000000010;
          v17 = v35;
          break;
      }

      v25 = 0x6B694C736C656566;
      v26 = 0xEF6C696174654465;
      switch(v15)
      {
        case 1:
          break;
        case 2:
          v25 = 0x79746964696D7568;
          goto LABEL_37;
        case 3:
          v27 = 1852796781;
          goto LABEL_32;
        case 4:
          OUTLINED_FUNCTION_16_0();
          v25 = v29 + 3;
          v26 = v36;
          break;
        case 5:
          OUTLINED_FUNCTION_16_0();
          v25 = v31 + 11;
          v26 = v37;
          break;
        case 6:
          v25 = 0x6572757373657270;
LABEL_37:
          v26 = 0xEE006C6961746544;
          break;
        case 7:
          v26 = 0xE600000000000000;
          v25 = 0x657265766573;
          break;
        case 8:
          OUTLINED_FUNCTION_16_0();
          v25 = v32 + 3;
          v26 = v38;
          break;
        case 9:
          OUTLINED_FUNCTION_16_0();
          v25 = v30 + 1;
          v26 = v39;
          break;
        case 10:
          v26 = 0xE500000000000000;
          v25 = 0x646E657274;
          break;
        case 11:
          OUTLINED_FUNCTION_16_0();
          v25 = v28 + 9;
          v26 = v40;
          break;
        case 12:
          v25 = 0x447865646E497675;
          v26 = 0xED00006C69617465;
          break;
        case 13:
          v25 = 0xD000000000000010;
          v26 = v41;
          break;
        case 14:
          v27 = 1684957559;
LABEL_32:
          v25 = v27 | 0x6174654400000000;
          v26 = 0xEA00000000006C69;
          break;
        default:
          v25 = 0xD000000000000010;
          v26 = v35;
          break;
      }

      if (v18 == v25 && v17 == v26)
      {
      }

      else
      {
        v34 = sub_23B50D834();

        if ((v34 & 1) == 0)
        {
          return;
        }
      }

      if (!--v2)
      {
        return;
      }
    }
  }
}

void sub_23B3DF86C()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v4 = sub_23B50AD64();
  OUTLINED_FUNCTION_5();
  v76 = v5;
  MEMORY[0x28223BE20](v6);
  v75 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  v74 = type metadata accessor for Article(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_5();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (&v63 - v16);
  v18 = *(v3 + 16);
  if (v18 == *(v1 + 16) && v18 && v3 != v1)
  {
    v19 = 0;
    OUTLINED_FUNCTION_3_0();
    v21 = v3 + v20;
    v22 = v1 + v20;
    v70 = v76 + 8;
    v71 = v76 + 16;
    v24 = *(v23 + 72);
    v65 = v21;
    v66 = v18;
    v63 = v24;
    v64 = v22;
    v25 = (v76 + 8);
    while (1)
    {
      v26 = v24 * v19;
      OUTLINED_FUNCTION_13_1();
      sub_23B3E2B08(v21 + v26, v17, v27);
      if (v19 == v18)
      {
        break;
      }

      v67 = v19;
      OUTLINED_FUNCTION_13_1();
      sub_23B3E2B08(v22 + v26, v14, v28);
      v29 = *v17 == *v14 && v17[1] == v14[1];
      if (!v29 && (sub_23B50D834() & 1) == 0 || (OUTLINED_FUNCTION_29_1(), !v29))
      {
LABEL_60:
        OUTLINED_FUNCTION_14_2();
        sub_23B3E2B68();
        sub_23B3E2B68();
        goto LABEL_61;
      }

      if (v26)
      {
        v32 = v31 == v30;
      }

      else
      {
        v32 = 1;
      }

      if (!v32)
      {
        v33 = (v31 + 40);
        v34 = (v30 + 40);
        while (v26)
        {
          v35 = *(v33 - 1) == *(v34 - 1) && *v33 == *v34;
          if (!v35 && (sub_23B50D834() & 1) == 0)
          {
            goto LABEL_60;
          }

          v33 += 2;
          v34 += 2;
          if (!--v26)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        break;
      }

LABEL_25:
      if ((MEMORY[0x23EE9B020](v17 + v74[6], v14 + v74[6]) & 1) == 0)
      {
        goto LABEL_60;
      }

      v36 = v74[7];
      v37 = (v17 + v36);
      v38 = *(v17 + v36 + 8);
      v39 = (v14 + v36);
      v40 = v39[1];
      if (v38)
      {
        if (!v40)
        {
          goto LABEL_60;
        }

        v41 = *v37 == *v39 && v38 == v40;
        if (!v41 && (sub_23B50D834() & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else if (v40)
      {
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_29_1();
      if (!v29)
      {
        goto LABEL_60;
      }

      if (v26)
      {
        v44 = v43 == v42;
      }

      else
      {
        v44 = 1;
      }

      if (!v44)
      {
        v45 = (v43 + 40);
        v46 = (v42 + 40);
        while (v26)
        {
          v47 = *(v45 - 1) == *(v46 - 1) && *v45 == *v46;
          if (!v47 && (sub_23B50D834() & 1) == 0)
          {
            goto LABEL_60;
          }

          v45 += 2;
          v46 += 2;
          if (!--v26)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_63;
      }

LABEL_49:
      v48 = v74[9];
      v49 = *(v14 + v48);
      v73 = *(v17 + v48);
      v50 = *(v49 + 16);
      v72 = *(v73 + 16);
      if (v72 != v50)
      {
        goto LABEL_60;
      }

      if (v72 && v73 != v49)
      {
        v51 = 0;
        OUTLINED_FUNCTION_41_0();
        v68 = v49 + v52;
        v69 = v73 + v52;
        while (v51 < *(v73 + 16))
        {
          v53 = v17;
          v54 = *(v76 + 72) * v51;
          v55 = *(v76 + 16);
          v55(v10, v69 + v54, v4);
          if (v51 >= *(v49 + 16))
          {
            goto LABEL_65;
          }

          v56 = v14;
          v57 = v10;
          v58 = v75;
          v55(v75, v68 + v54, v4);
          OUTLINED_FUNCTION_11_0();
          sub_23B3E2AC4(&unk_27E131E40);
          v59 = sub_23B50D134();
          v60 = *v25;
          v61 = v58;
          v10 = v57;
          v14 = v56;
          (*v25)(v61, v4);
          v62 = OUTLINED_FUNCTION_37();
          v60(v62);
          v17 = v53;
          if ((v59 & 1) == 0)
          {
            goto LABEL_60;
          }

          if (v72 == ++v51)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_64;
      }

LABEL_57:
      v19 = v67 + 1;
      sub_23B3E2B68();
      sub_23B3E2B68();
      v21 = v65;
      v18 = v66;
      v24 = v63;
      v22 = v64;
      if (v19 == v66)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_61:
    OUTLINED_FUNCTION_20();
  }
}

uint64_t sub_23B3DFD4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); *(v3 - 4) == *(i - 4); i += 6)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23B50D834() & 1) == 0)
      {
        break;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_23B3DFE28()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DayPartForecast(0);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = *(v4 + 16);
  if (v9 == *(v2 + 16) && v9 && v4 != v2)
  {
    v10 = 0;
    v11 = v4 + 32;
    v12 = v2 + 32;
    v28 = v4 + 32;
    v29 = v9;
    v27 = v2 + 32;
    while (v10 != v9)
    {
      v13 = (v11 + 16 * v10);
      v14 = (v12 + 16 * v10);
      if (*v13 != *v14)
      {
        goto LABEL_20;
      }

      v15 = v13[1];
      v16 = v14[1];
      v17 = *(v15 + 16);
      if (v17 != *(v16 + 16))
      {
        goto LABEL_20;
      }

      if (v17 && v15 != v16)
      {
        v30 = v10;
        OUTLINED_FUNCTION_41_0();
        v19 = v15 + v18;
        v20 = v16 + v18;

        v21 = 0;
        while (v21 < *(v15 + 16))
        {
          v22 = *(v31 + 72) * v21;
          sub_23B3E2B08(v19 + v22, v8, type metadata accessor for DayPartForecast);
          if (v21 >= *(v16 + 16))
          {
            goto LABEL_22;
          }

          sub_23B3E2B08(v20 + v22, v0, type metadata accessor for DayPartForecast);
          v23 = OUTLINED_FUNCTION_40_0();
          v25 = static DayPartForecast.== infix(_:_:)(v23, v24);
          sub_23B3E2B68();
          sub_23B3E2B68();
          if (!v25)
          {

            goto LABEL_20;
          }

          if (v17 == ++v21)
          {

            v9 = v29;
            v10 = v30;
            v12 = v27;
            v11 = v28;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        break;
      }

LABEL_16:
      if (++v10 == v9)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    OUTLINED_FUNCTION_20();
  }
}

void sub_23B3E00A8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0) - 8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_1();
  v11 = *(v7 + 16);
  if (v11 == *(v5 + 16) && v11 && v7 != v5)
  {
    OUTLINED_FUNCTION_3_0();
    v13 = v7 + v12;
    v14 = v5 + v12;
    v16 = *(v15 + 72);
    do
    {
      v17 = OUTLINED_FUNCTION_31();
      sub_23B3E2B08(v17, v18, v3);
      v19 = OUTLINED_FUNCTION_32();
      sub_23B3E2B08(v19, v20, v3);
      v21 = OUTLINED_FUNCTION_36();
      v22 = v1(v21);
      OUTLINED_FUNCTION_40_0();
      sub_23B3E2B68();
      OUTLINED_FUNCTION_37();
      sub_23B3E2B68();
      if ((v22 & 1) == 0)
      {
        break;
      }

      v14 += v16;
      v13 += v16;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_20();
}

void sub_23B3E01FC()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for HistoricalFact.Argument(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - v8;
  v10 = type metadata accessor for HistoricalFact(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_5();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = *(v4 + 16);
  if (v18 != *(v2 + 16) || !v18 || v4 == v2)
  {
LABEL_72:
    OUTLINED_FUNCTION_20();
    return;
  }

  v53 = v6;
  v54 = v18;
  v19 = 0;
  OUTLINED_FUNCTION_3_0();
  v55 = v10;
  v56 = v2 + v20;
  v57 = *(v21 + 72);
  v58 = v4 + v20;
  while (1)
  {
    v22 = v57 * v19;
    OUTLINED_FUNCTION_10_0();
    sub_23B3E2B08(v23 + v22, v17, v24);
    if (v19 == v18)
    {
      break;
    }

    v59 = v19;
    OUTLINED_FUNCTION_10_0();
    sub_23B3E2B08(v56 + v22, v14, v25);
    if (*v17)
    {
      v26 = 0x7469706963657270;
    }

    else
    {
      v26 = 0x74617265706D6574;
    }

    if (*v17)
    {
      v27 = 0xED00006E6F697461;
    }

    else
    {
      v27 = 0xEB00000000657275;
    }

    if (*v14)
    {
      v28 = 0x7469706963657270;
    }

    else
    {
      v28 = 0x74617265706D6574;
    }

    if (*v14)
    {
      v29 = 0xED00006E6F697461;
    }

    else
    {
      v29 = 0xEB00000000657275;
    }

    v30 = v26 == v28 && v27 == v29;
    if (v30)
    {
    }

    else
    {
      v31 = sub_23B50D834();

      if ((v31 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v32 = v17[1];
    if (v17[1])
    {
      if (v32 == 1)
      {
        v33 = 0x68746E6F6DLL;
      }

      else
      {
        v33 = 0x6B6165727473;
      }

      if (v32 == 1)
      {
        v34 = 0xE500000000000000;
      }

      else
      {
        v34 = 0xE600000000000000;
      }

      if (*(v14 + 1))
      {
LABEL_33:
        if (*(v14 + 1) == 1)
        {
          v35 = 0xE500000000000000;
          v36 = 0x68746E6F6DLL;
        }

        else
        {
          v35 = 0xE600000000000000;
          v36 = 0x6B6165727473;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v34 = 0xE500000000000000;
      v33 = 0x7961646F74;
      if (*(v14 + 1))
      {
        goto LABEL_33;
      }
    }

    v35 = 0xE500000000000000;
    v36 = 0x7961646F74;
LABEL_38:
    if (v33 == v36 && v34 == v35)
    {
    }

    else
    {
      v38 = sub_23B50D834();

      if ((v38 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v39 = *(v17 + 1) == *(v14 + 8) && *(v17 + 2) == *(v14 + 16);
    if (!v39 && (sub_23B50D834() & 1) == 0)
    {
      goto LABEL_71;
    }

    v40 = *(v17 + 3) == *(v14 + 24) && *(v17 + 4) == *(v14 + 32);
    if (!v40 && (sub_23B50D834() & 1) == 0)
    {
      goto LABEL_71;
    }

    v41 = *(v17 + 5) == *(v14 + 40) && *(v17 + 6) == *(v14 + 48);
    if (!v41 && (sub_23B50D834() & 1) == 0)
    {
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_29_1();
    if (!v30)
    {
      goto LABEL_71;
    }

    if (v22 && v43 != v42)
    {
      v44 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v45 = v43 + v44;
      v46 = v42 + v44;
      v47 = *(v53 + 72);
      while (1)
      {
        sub_23B3E2B08(v45, v9, type metadata accessor for HistoricalFact.Argument);
        sub_23B3E2B08(v46, v0, type metadata accessor for HistoricalFact.Argument);
        v48 = OUTLINED_FUNCTION_40_0();
        v50 = static HistoricalFact.Argument.== infix(_:_:)(v48, v49);
        sub_23B3E2B68();
        sub_23B3E2B68();
        if ((v50 & 1) == 0)
        {
          break;
        }

        v46 += v47;
        v45 += v47;
        if (!--v22)
        {
          goto LABEL_67;
        }
      }

LABEL_71:
      sub_23B3E2B68();
      sub_23B3E2B68();
      goto LABEL_72;
    }

LABEL_67:
    v51 = static WeatherMetadata.== infix(_:_:)(&v17[*(v55 + 40)], v14 + *(v55 + 40));
    sub_23B3E2B68();
    sub_23B3E2B68();
    if (v51)
    {
      v19 = v59 + 1;
      v18 = v54;
      if (v59 + 1 != v54)
      {
        continue;
      }
    }

    goto LABEL_72;
  }

  __break(1u);
}

void sub_23B3E0724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for WeatherChange(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_5();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = *(v25 + 16);
  if (v34 == *(v23 + 16) && v34 && v25 != v23)
  {
    OUTLINED_FUNCTION_3_0();
    v36 = v25 + v35;
    v37 = v23 + v35;
    v39 = *(v38 + 72);
    while (1)
    {
      v40 = OUTLINED_FUNCTION_36();
      sub_23B3E2B08(v40, v41, v42);
      if (!v34)
      {
        break;
      }

      sub_23B3E2B08(v37, v30, type metadata accessor for WeatherChange);
      OUTLINED_FUNCTION_40_0();
      if ((sub_23B50ACD4() & 1) == 0 || (OUTLINED_FUNCTION_28_1(), !v45) || (OUTLINED_FUNCTION_28_1(), !v45) || (OUTLINED_FUNCTION_28_1(), !v45))
      {
        sub_23B3E2B68();
        sub_23B3E2B68();
        goto LABEL_21;
      }

      v43 = v33[*(v26 + 32)];
      sub_23B3E2B68();
      v44 = *(v30 + *(v26 + 32));
      sub_23B3E2B68();
      v45 = v43 != v44 || v34-- == 1;
      v37 += v39;
      v36 += v39;
      if (v45)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    OUTLINED_FUNCTION_20();
  }
}

void sub_23B3E0914()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for DayPrecipitationSummary(v4);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_1();
  v8 = *(v3 + 16);
  if (v8 == *(v0 + 16) && v8 && v3 != v0)
  {
    OUTLINED_FUNCTION_2_5();
    while (1)
    {
      v9 = OUTLINED_FUNCTION_31();
      sub_23B3E2B08(v9, v10, v11);
      v12 = OUTLINED_FUNCTION_32();
      sub_23B3E2B08(v12, v13, v14);
      OUTLINED_FUNCTION_36();
      if ((sub_23B50ACD4() & 1) == 0)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
      v15 = sub_23B3E2A74(&qword_280B42BC0);
      if ((OUTLINED_FUNCTION_33_0(v15) & 1) == 0)
      {
        break;
      }

      v16 = OUTLINED_FUNCTION_34_1(v2 + *(v5 + 24), v1 + *(v5 + 24));
      sub_23B3E2B68();
      sub_23B3E2B68();
      if (v16)
      {
        OUTLINED_FUNCTION_25_0();
        if (!v17)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    sub_23B3E2B68();
    OUTLINED_FUNCTION_18_0();
    sub_23B3E2B68();
  }

LABEL_13:
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B3E0B18()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for MonthTemperatureStatistics(v4);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_1();
  v8 = *(v3 + 16);
  if (v8 == *(v0 + 16) && v8 && v3 != v0)
  {
    OUTLINED_FUNCTION_2_5();
    while (1)
    {
      v9 = OUTLINED_FUNCTION_31();
      sub_23B3E2B08(v9, v10, v11);
      v12 = OUTLINED_FUNCTION_32();
      sub_23B3E2B08(v12, v13, v14);
      if (*v2 != *v1)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      v15 = sub_23B3E2A74(&qword_280B42B78);
      if ((OUTLINED_FUNCTION_33_0(v15) & 1) == 0)
      {
        break;
      }

      v16 = OUTLINED_FUNCTION_34_1(v2 + *(v5 + 24), v1 + *(v5 + 24));
      sub_23B3E2B68();
      sub_23B3E2B68();
      if (v16)
      {
        OUTLINED_FUNCTION_25_0();
        if (!v17)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    sub_23B3E2B68();
    OUTLINED_FUNCTION_18_0();
    sub_23B3E2B68();
  }

LABEL_13:
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B3E0D20()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_5();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = (&v26 - v13);
  v15 = *(v5 + 16);
  if (v15 == *(v3 + 16) && v15 && v5 != v3)
  {
    OUTLINED_FUNCTION_3_0();
    v17 = v5 + v16;
    v18 = v3 + v16;
    v27 = *(v19 + 72);
    while (1)
    {
      sub_23B3E2B08(v17, v14, v1);
      sub_23B3E2B08(v18, v11, v1);
      if (*v14 != *v11)
      {
        break;
      }

      if (v14[1] != *(v11 + 8))
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
      v20 = v1;
      v21 = v7;
      v22 = *(v7 + 24);
      sub_23B3E2A74(&qword_280B42BC0);
      v23 = v14 + v22;
      v24 = v11 + v22;
      v7 = v21;
      v1 = v20;
      if ((OUTLINED_FUNCTION_34_1(v23, v24) & 1) == 0)
      {
        break;
      }

      v25 = OUTLINED_FUNCTION_34_1(v14 + *(v7 + 28), v11 + *(v7 + 28));
      OUTLINED_FUNCTION_18_0();
      sub_23B3E2B68();
      sub_23B3E2B68();
      if (v25)
      {
        v18 += v27;
        v17 += v27;
        if (--v15)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_18_0();
    sub_23B3E2B68();
    sub_23B3E2B68();
  }

LABEL_13:
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B3E0F28()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_17();
  type metadata accessor for HourTemperatureStatistics(v5);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_1();
  v8 = *(v3 + 16);
  if (v8 == *(v0 + 16) && v8 && v3 != v0)
  {
    OUTLINED_FUNCTION_2_5();
    v17 = v9;
    while (1)
    {
      v10 = OUTLINED_FUNCTION_31();
      sub_23B3E2B08(v10, v11, v12);
      v13 = OUTLINED_FUNCTION_32();
      sub_23B3E2B08(v13, v14, v15);
      if (*v2 != *v1)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      sub_23B3E2A74(&qword_280B42B78);
      if ((sub_23B50D134() & 1) == 0)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
      if ((OUTLINED_FUNCTION_45_1() & 1) == 0)
      {
        break;
      }

      v16 = OUTLINED_FUNCTION_45_1();
      sub_23B3E2B68();
      sub_23B3E2B68();
      if (v16)
      {
        v4 += v17;
        v3 += v17;
        if (--v8)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    sub_23B3E2B68();
    OUTLINED_FUNCTION_18_0();
    sub_23B3E2B68();
  }

LABEL_13:
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B3E1154(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 11)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = i[1];
      v30 = i[5];
      v31 = i[3];
      v26 = i[7];
      v9 = *(v3 - 1);
      v8 = *v3;
      v10 = v3[1];
      v23 = v3[2];
      v24 = i[2];
      v11 = v3[3];
      v27 = v3[4];
      v28 = v3[5];
      v29 = i[4];
      v21 = v3[6];
      v22 = i[6];
      v12 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      v25 = v3[7];
      if (v12)
      {
        if (v5 != v9)
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_23B50D834();
        result = 0;
        if ((v13 & 1) == 0 || v5 != v9)
        {
          return result;
        }
      }

      v15 = v6 == v8 && v7 == v10;
      if (!v15 && (sub_23B50D834() & 1) == 0)
      {
        return 0;
      }

      if (!v31)
      {
        break;
      }

      if (!v11)
      {
        return 0;
      }

      if (v24 != v23 || v31 != v11)
      {
        v17 = sub_23B50D834();
        result = 0;
        if ((v17 & 1) == 0)
        {
          return result;
        }

        goto LABEL_27;
      }

      if (v29 != v27 || v30 != v28)
      {
        return 0;
      }

LABEL_37:
      if (v26)
      {
        if (!v25)
        {
          return 0;
        }

        v20 = v22 == v21 && v26 == v25;
        if (!v20 && (sub_23B50D834() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v25)
      {
        return 0;
      }

      v3 += 11;
      if (!--v2)
      {
        return 1;
      }
    }

    result = 0;
    if (v11)
    {
      return result;
    }

LABEL_27:
    if (v29 != v27 || v30 != v28)
    {
      return result;
    }

    goto LABEL_37;
  }

  return 1;
}

void sub_23B3E132C()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v4 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  v50 = (v9 - v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for MinuteCondition(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  v24 = *(v3 + 16);
  if (v24 == *(v1 + 16) && v24 && v3 != v1)
  {
    OUTLINED_FUNCTION_3_0();
    v26 = v3 + v25;
    v27 = v1 + v25;
    v45 = (v6 + 32);
    v46 = v15;
    v47 = (v6 + 8);
    v49 = *(v28 + 72);
    v52 = v16;
    while (1)
    {
      sub_23B3E2B08(v26, v23, type metadata accessor for MinuteCondition);
      if (!v24)
      {
        break;
      }

      sub_23B3E2B08(v27, v20, type metadata accessor for MinuteCondition);
      if ((sub_23B50ACD4() & 1) == 0)
      {
        goto LABEL_31;
      }

      v29 = *(v16 + 20);
      v30 = *(v51 + 48);
      sub_23B3C7DF4(&v23[v29], v15);
      sub_23B3C7DF4(v20 + v29, &v15[v30]);
      OUTLINED_FUNCTION_46(v15);
      if (v32)
      {
        OUTLINED_FUNCTION_46(&v15[v30]);
        if (!v32)
        {
          goto LABEL_30;
        }

        sub_23B398890(v15, &qword_27E131E18, &unk_23B50F710);
        v31 = v52;
      }

      else
      {
        sub_23B3C7DF4(v15, v12);
        OUTLINED_FUNCTION_46(&v15[v30]);
        if (v32)
        {
          (*v47)(v12, v4);
LABEL_30:
          sub_23B398890(v15, &qword_27E131E20, &qword_23B51E340);
LABEL_31:
          OUTLINED_FUNCTION_15_1();
          sub_23B3E2B68();
          sub_23B3E2B68();
          goto LABEL_32;
        }

        v33 = &v15[v30];
        v34 = v12;
        v35 = v50;
        (*v45)(v50, v33, v4);
        sub_23B3E2AC4(&qword_280B42F08);
        v48 = sub_23B50D134();
        v36 = *v47;
        v37 = v35;
        v12 = v34;
        v15 = v46;
        (*v47)(v37, v4);
        v36(v12, v4);
        sub_23B398890(v15, &qword_27E131E18, &unk_23B50F710);
        v31 = v52;
        if ((v48 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      OUTLINED_FUNCTION_30_0(v31[6]);
      v40 = v32 && v38 == v39;
      if (!v40 && (sub_23B50D834() & 1) == 0)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_30_0(v31[7]);
      v43 = v32 && v41 == v42;
      if (!v43 && (sub_23B50D834() & 1) == 0)
      {
        goto LABEL_31;
      }

      v44 = static PrecipitationShift.== infix(_:_:)(&v23[v31[8]], v20 + v31[8]);
      OUTLINED_FUNCTION_15_1();
      sub_23B3E2B68();
      sub_23B3E2B68();
      if (v44)
      {
        v27 += v49;
        v26 += v49;
        v32 = v24-- == 1;
        v16 = v52;
        if (!v32)
        {
          continue;
        }
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    OUTLINED_FUNCTION_20();
  }
}

void sub_23B3E18B4()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_17();
  v6 = type metadata accessor for MinuteWeather(v5);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_1();
  v9 = *(v3 + 16);
  if (v9 == *(v0 + 16) && v9 && v3 != v0)
  {
    OUTLINED_FUNCTION_2_5();
    v40 = v10;
    while (1)
    {
      v11 = OUTLINED_FUNCTION_31();
      sub_23B3E2B08(v11, v12, v13);
      v14 = OUTLINED_FUNCTION_32();
      sub_23B3E2B08(v14, v15, v16);
      OUTLINED_FUNCTION_36();
      if ((sub_23B50ACD4() & 1) == 0)
      {
        break;
      }

      v17 = v6[5];
      v18 = *(v2 + v17);
      v19 = *(v1 + v17);
      v20 = 0xE400000000000000;
      v21 = 1701736302;
      switch(v18)
      {
        case 1:
          v21 = 1818845544;
          break;
        case 2:
          v20 = 0xE500000000000000;
          v21 = 0x646578696DLL;
          break;
        case 3:
          v21 = 1852399986;
          break;
        case 4:
          v20 = 0xE500000000000000;
          v21 = 0x7465656C73;
          break;
        case 5:
          v21 = 2003791475;
          break;
        default:
          break;
      }

      v22 = 0xE400000000000000;
      v23 = 1701736302;
      switch(v19)
      {
        case 1:
          v23 = 1818845544;
          break;
        case 2:
          v22 = 0xE500000000000000;
          v23 = 0x646578696DLL;
          break;
        case 3:
          v23 = 1852399986;
          break;
        case 4:
          v22 = 0xE500000000000000;
          v23 = 0x7465656C73;
          break;
        case 5:
          v23 = 2003791475;
          break;
        default:
          break;
      }

      if (v21 == v23 && v20 == v22)
      {
      }

      else
      {
        v25 = sub_23B50D834();

        if ((v25 & 1) == 0)
        {
          break;
        }
      }

      if (*(v2 + v6[6]) != *(v1 + v6[6]))
      {
        break;
      }

      v26 = OUTLINED_FUNCTION_39();
      __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
      sub_23B3E2A74(&qword_280B42F10);
      if ((sub_23B50D134() & 1) == 0)
      {
        break;
      }

      v28 = v6[8];
      v29 = v2 + v28;
      v30 = *(v2 + v28);
      v31 = v1 + v28;
      if (v30 != *v31)
      {
        break;
      }

      v32 = *(v29 + 8);
      if (v32)
      {
        if (v32 == 1)
        {
          v33 = 0xE600000000000000;
          v34 = 0x6D756964656DLL;
        }

        else
        {
          v33 = 0xE500000000000000;
          v34 = 0x7976616568;
        }
      }

      else
      {
        v33 = 0xE500000000000000;
        v34 = 0x746867696CLL;
      }

      v35 = *(v31 + 8);
      if (v35)
      {
        if (v35 == 1)
        {
          v36 = 0xE600000000000000;
          v37 = 0x6D756964656DLL;
        }

        else
        {
          v36 = 0xE500000000000000;
          v37 = 0x7976616568;
        }
      }

      else
      {
        v36 = 0xE500000000000000;
        v37 = 0x746867696CLL;
      }

      if (v34 == v37 && v33 == v36)
      {

        OUTLINED_FUNCTION_12_2();
        sub_23B3E2B68();
        OUTLINED_FUNCTION_37();
        sub_23B3E2B68();
      }

      else
      {
        v39 = sub_23B50D834();

        OUTLINED_FUNCTION_12_2();
        sub_23B3E2B68();
        OUTLINED_FUNCTION_37();
        sub_23B3E2B68();
        if ((v39 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v4 += v40;
      v3 += v40;
      if (!--v9)
      {
        goto LABEL_48;
      }
    }

    sub_23B3E2B68();
    OUTLINED_FUNCTION_18_0();
    sub_23B3E2B68();
  }

LABEL_48:
  OUTLINED_FUNCTION_20();
}

uint64_t Article.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131D90, &qword_23B50EDC8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E1FAC();
  sub_23B50D974();
  OUTLINED_FUNCTION_23_0();
  sub_23B50D7A4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131DA0, &qword_23B50EDD0);
    sub_23B3E2588(&unk_27E131DA8);
    OUTLINED_FUNCTION_22();
    type metadata accessor for Article(0);
    sub_23B50ADC4();
    OUTLINED_FUNCTION_9_0();
    sub_23B3E2AC4(v4);
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D774();
    OUTLINED_FUNCTION_22();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131DB8, &qword_23B50EDD8);
    sub_23B3E25F0(&unk_27E131DC0);
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
  }

  v5 = OUTLINED_FUNCTION_18_0();
  return v6(v5);
}

unint64_t sub_23B3E1FAC()
{
  result = qword_27E131D98;
  if (!qword_27E131D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131D98);
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

uint64_t Article.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B50ADC4();
  OUTLINED_FUNCTION_5();
  v24 = v6;
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131DD0, &qword_23B50EDE0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v26 = type metadata accessor for Article(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  v14 = (v13 - v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E1FAC();
  sub_23B50D964();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v27) = 0;
    OUTLINED_FUNCTION_26_0();
    *v14 = sub_23B50D6E4();
    v14[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131DA0, &qword_23B50EDD0);
    sub_23B3E2588(&unk_27E131DD8);
    OUTLINED_FUNCTION_26_0();
    sub_23B50D734();
    v14[2] = v27;
    OUTLINED_FUNCTION_9_0();
    sub_23B3E2AC4(v16);
    OUTLINED_FUNCTION_26_0();
    sub_23B50D734();
    (*(v24 + 32))(v14 + v26[6], v9, v25);
    LOBYTE(v27) = 3;
    OUTLINED_FUNCTION_26_0();
    v17 = sub_23B50D6B4();
    v18 = (v14 + v26[7]);
    *v18 = v17;
    v18[1] = v19;
    OUTLINED_FUNCTION_26_0();
    sub_23B50D734();
    *(v14 + v26[8]) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131DB8, &qword_23B50EDD8);
    sub_23B3E25F0(&unk_27E131DE8);
    OUTLINED_FUNCTION_26_0();
    sub_23B50D734();
    v20 = OUTLINED_FUNCTION_7_3();
    v21(v20);
    *(v14 + v26[9]) = v27;
    OUTLINED_FUNCTION_14_2();
    sub_23B3E2B08(v14, a2, v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_18_0();
    return sub_23B3E2B68();
  }
}

unint64_t sub_23B3E2588(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131DA0, &qword_23B50EDD0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_23B3E25F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131DB8, &qword_23B50EDD8);
    OUTLINED_FUNCTION_11_0();
    sub_23B3E2AC4(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_23B3E26D0(uint64_t a1)
{
  sub_23B3E27E4(319, &qword_280B433D0, MEMORY[0x277D83940]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = sub_23B50ADC4();
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_23B3E27E4(319, &qword_280B43430, MEMORY[0x277D83D88]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_23B3E2838(319);
      v2 = v7;
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_23B3E27E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B3E2838(uint64_t a1)
{
  if (!qword_280B41A40)
  {
    sub_23B50AD64();
    v1 = sub_23B50D304();
    if (!v2)
    {
      atomic_store(v1, &qword_280B41A40);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Article.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B3E2970()
{
  result = qword_27E131DF8;
  if (!qword_27E131DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131DF8);
  }

  return result;
}

unint64_t sub_23B3E29C8()
{
  result = qword_27E131E00;
  if (!qword_27E131E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131E00);
  }

  return result;
}

unint64_t sub_23B3E2A20()
{
  result = qword_27E131E08;
  if (!qword_27E131E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131E08);
  }

  return result;
}

unint64_t sub_23B3E2A74(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_23B3E2AC4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_23B3E2B08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B3E2B68()
{
  v1 = OUTLINED_FUNCTION_19();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t MonthPrecipitationStatistics.averagePrecipitationAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MonthPrecipitationStatistics(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MonthPrecipitationStatistics.averagePrecipitationAmount.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_6() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t MonthPrecipitationStatistics.averageSnowfallAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MonthPrecipitationStatistics(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MonthPrecipitationStatistics.averageSnowfallAmount.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_6() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t MonthPrecipitationStatistics.init(month:averagePrecipitationProbability:averagePrecipitationAmount:averageSnowfallAmount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = a1;
  *(a4 + 8) = a5;
  v8 = type metadata accessor for MonthPrecipitationStatistics(0);
  v9 = *(v8 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v14 = *(v11 + 32);
  v14(a4 + v9, a2, v10);
  v12 = a4 + *(v8 + 28);

  return (v14)(v12, a3, v10);
}

uint64_t static MonthPrecipitationStatistics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0), type metadata accessor for MonthPrecipitationStatistics(0), sub_23B3E38E8(&qword_280B42BC0, MEMORY[0x277CC87F0]), (sub_23B50D134() & 1) != 0))
  {
    return sub_23B50D134() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B3E3038(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001FLL && 0x800000023B528820 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x800000023B528840 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x800000023B528860 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_23B50D834();

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

unint64_t sub_23B3E31A4(char a1)
{
  result = 0x68746E6F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B3E3244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3E3038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B3E326C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3E319C();
  *a1 = result;
  return result;
}

uint64_t sub_23B3E3294(uint64_t a1)
{
  v2 = sub_23B3E34F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B3E32D0(uint64_t a1)
{
  v2 = sub_23B3E34F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MonthPrecipitationStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E48, &qword_23B50EFB8);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E34F0();
  sub_23B50D974();
  v17[2] = 0;
  sub_23B50D7E4();
  if (!v2)
  {
    v17[1] = 1;
    sub_23B50D7C4();
    v11 = type metadata accessor for MonthPrecipitationStatistics(0);
    v12 = *(v11 + 24);
    v17[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    sub_23B3E38E8(&qword_280B42BD0, MEMORY[0x277CC87D8]);
    OUTLINED_FUNCTION_2_6(v3 + v12, v17);
    v13 = *(v11 + 28);
    v16 = 3;
    OUTLINED_FUNCTION_2_6(v3 + v13, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B3E34F0()
{
  result = qword_27E131E50;
  if (!qword_27E131E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131E50);
  }

  return result;
}

uint64_t MonthPrecipitationStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v39 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E58, &qword_23B50EFC0);
  OUTLINED_FUNCTION_5();
  v36 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for MonthPrecipitationStatistics(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_23B3E34F0();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v33 = v7;
  v34 = v15;
  v21 = v36;
  v20 = v37;
  v22 = v38;
  v23 = v39;
  v44 = 0;
  OUTLINED_FUNCTION_3_1();
  *v18 = sub_23B50D724();
  v43 = 1;
  OUTLINED_FUNCTION_3_1();
  sub_23B50D704();
  v32 = v18;
  v18[1] = v24;
  v42 = 2;
  sub_23B3E38E8(&qword_27E131E60, MEMORY[0x277CC87F8]);
  OUTLINED_FUNCTION_3_1();
  sub_23B50D734();
  v25 = *(v34 + 24);
  v30 = *(v23 + 32);
  v31 = v25;
  v30(v32 + v25, v10, v20);
  v41 = 3;
  v26 = v33;
  OUTLINED_FUNCTION_3_1();
  sub_23B50D734();
  (*(v21 + 8))(v14, v22);
  v27 = v32;
  v30(v32 + *(v34 + 28), v26, v20);
  sub_23B3E3938(v27, v35);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_23B3E399C(v27);
}

uint64_t sub_23B3E38E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131E28, &qword_23B50EFB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B3E3938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonthPrecipitationStatistics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3E399C(uint64_t a1)
{
  v2 = type metadata accessor for MonthPrecipitationStatistics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B3E3A54()
{
  result = qword_280B433A0;
  if (!qword_280B433A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B433A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MonthPrecipitationStatistics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MonthPrecipitationStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B3E3C00()
{
  result = qword_27E131E68;
  if (!qword_27E131E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131E68);
  }

  return result;
}

unint64_t sub_23B3E3C58()
{
  result = qword_27E131E70;
  if (!qword_27E131E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131E70);
  }

  return result;
}

unint64_t sub_23B3E3CB0()
{
  result = qword_27E131E78;
  if (!qword_27E131E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131E78);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x23EE9E260);
  }

  return result;
}

unint64_t sub_23B3E3D54()
{
  result = qword_27E131EB0;
  if (!qword_27E131EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131EB0);
  }

  return result;
}

uint64_t sub_23B3E3DA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return sub_23B50D184();
}

id OUTLINED_FUNCTION_61()
{

  return v0;
}

uint64_t *OUTLINED_FUNCTION_62(uint64_t a1)
{
  v3 = *(v1 + 392);
  v3[3] = a1;

  return __swift_allocate_boxed_opaque_existential_0(v3);
}

uint64_t sub_23B3E3E88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v6 = type metadata accessor for WeatherQuery(0, a3, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F28, &qword_23B50F260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for WeatherServiceOptions(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(_s21WeatherServiceRequestVMa(0) + 20);
  sub_23B3AEEF0(a1 + v17, v15);
  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED0, &qword_23B50F200) != a3)
  {
    return sub_23B3AF34C(v15, type metadata accessor for WeatherServiceOptions);
  }

  v33 = v9;
  v34 = v17;
  v35 = v7;

  if (sub_23B3AF288(8, v16))
  {
    sub_23B3AF34C(v15, type metadata accessor for WeatherServiceOptions);
  }

  else
  {
    sub_23B3AF34C(a1, _s21WeatherServiceRequestVMa);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B3AE984(0, *(v16 + 16) + 1, 1, v16);
      v16 = v31;
    }

    v19 = v12;
    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    v22 = v35;
    v23 = v33;
    if (v21 >= v20 >> 1)
    {
      sub_23B3AE984(v20 > 1, v21 + 1, 1, v16);
      v22 = v35;
      v16 = v32;
    }

    *(v16 + 16) = v21 + 1;
    *(v16 + v21 + 32) = 8;
    v24 = &v15[*(v13 + 36)];
    v25 = v34;
    if (v24[16] == 2)
    {
      (*(v22 + 16))(v23, v36, v6);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F30, &qword_23B50F268);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v19, 0, 1, v26);
        v27 = v19 + *(v26 + 40);
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = *(v27 + 16);
        sub_23B398890(v19, &qword_27E131F30, &qword_23B50F268);
        if (v30 != 2)
        {
          *v24 = v28;
          *(v24 + 1) = v29;
          v24[16] = v30 & 1;
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v19, 1, 1, v26);
        sub_23B398890(v19, &qword_27E131F28, &qword_23B50F260);
      }
    }

    result = sub_23B3CE728(v15, a1 + v25, type metadata accessor for WeatherServiceOptions);
    *a1 = v16;
  }

  return result;
}

uint64_t sub_23B3E422C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v6 = type metadata accessor for WeatherQuery(0, a3, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F38, &qword_23B50F270);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for WeatherServiceOptions(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(_s21WeatherServiceRequestVMa(0) + 20);
  sub_23B3AEEF0(a1 + v17, v15);
  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EE0, &qword_23B50F210) != a3)
  {
    return sub_23B3AF34C(v15, type metadata accessor for WeatherServiceOptions);
  }

  v33 = v9;
  v34 = v17;
  v35 = v7;

  if (sub_23B3AF288(12, v16))
  {
    sub_23B3AF34C(v15, type metadata accessor for WeatherServiceOptions);
  }

  else
  {
    sub_23B3AF34C(a1, _s21WeatherServiceRequestVMa);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B3AE984(0, *(v16 + 16) + 1, 1, v16);
      v16 = v31;
    }

    v19 = v12;
    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    v22 = v35;
    v23 = v33;
    if (v21 >= v20 >> 1)
    {
      sub_23B3AE984(v20 > 1, v21 + 1, 1, v16);
      v22 = v35;
      v16 = v32;
    }

    *(v16 + 16) = v21 + 1;
    *(v16 + v21 + 32) = 12;
    v24 = &v15[*(v13 + 36)];
    v25 = v34;
    if (v24[16] == 2)
    {
      (*(v22 + 16))(v23, v36, v6);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F40, &qword_23B50F278);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v19, 0, 1, v26);
        v27 = v19 + *(v26 + 40);
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = *(v27 + 16);
        sub_23B398890(v19, &qword_27E131F40, &qword_23B50F278);
        if (v30 != 2)
        {
          *v24 = v28;
          *(v24 + 1) = v29;
          v24[16] = v30 & 1;
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v19, 1, 1, v26);
        sub_23B398890(v19, &qword_27E131F38, &qword_23B50F270);
      }
    }

    result = sub_23B3CE728(v15, a1 + v25, type metadata accessor for WeatherServiceOptions);
    *a1 = v16;
  }

  return result;
}

uint64_t sub_23B3E45D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (type metadata accessor for InstantWeather(0) == a2 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F78, &unk_23B50F2B0) == a2)
  {
    v13 = type metadata accessor for WeatherQuery(0, a2, v6, v7);
    return sub_23B39A44C(a1 + *(v13 + 44), a3, &qword_27E131F70, &unk_23B5192B0);
  }

  else
  {
    type metadata accessor for InstantWeatherQueryOptions(0);
    OUTLINED_FUNCTION_1();

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_23B3E468C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_23B50D834() & 1;
  }
}

WeatherKit::WeatherAvailability __swiftcall WeatherAvailability.init(minuteAvailability:alertAvailability:airQualityAvailability:)(WeatherKit::WeatherAvailability::AvailabilityKind minuteAvailability, WeatherKit::WeatherAvailability::AvailabilityKind alertAvailability, WeatherKit::WeatherAvailability::AvailabilityKind airQualityAvailability)
{
  v4 = *alertAvailability;
  v5 = *airQualityAvailability;
  *v3 = *minuteAvailability;
  v3[1] = v4;
  v3[2] = v5;
  result.minuteAvailability = minuteAvailability;
  return result;
}

WeatherKit::WeatherAvailability::AvailabilityKind_optional __swiftcall WeatherAvailability.AvailabilityKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WeatherAvailability.AvailabilityKind.rawValue.getter()
{
  result = 0x6C62616C69617661;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x726F707075736E75;
      break;
    case 3:
      result = OUTLINED_FUNCTION_13_3();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B3E48D0@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherAvailability.AvailabilityKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B3E49B8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 7:
      OUTLINED_FUNCTION_18_2();
      break;
    case 3:
    case 5:
      OUTLINED_FUNCTION_16_2();
      break;
    default:
      break;
  }

  sub_23B50D1C4();
}

uint64_t sub_23B3E4AD0(uint64_t a1, unsigned __int8 a2)
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E4B68(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_10_2();
      break;
    case 4:
      OUTLINED_FUNCTION_8_2();
      break;
    default:
      break;
  }

  sub_23B50D1C4();
}

uint64_t sub_23B3E4C08(uint64_t a1, uint64_t a2)
{
  v2 = Wind.CompassDirection.rawValue.getter(a2);
  OUTLINED_FUNCTION_14_0(v2, v3);
}

uint64_t sub_23B3E4C48(uint64_t a1, unsigned __int8 a2)
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E4CE0(uint64_t a1, char a2)
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E4D64(uint64_t a1, char a2)
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E4DA4(uint64_t a1, unsigned __int8 a2)
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E4E24(uint64_t a1, char a2)
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E4EBC(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v3 = a3();
  OUTLINED_FUNCTION_14_0(v3, v4);
}

uint64_t sub_23B3E4F0C(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_20_2();
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
  }

  sub_23B50D1C4();
}

uint64_t sub_23B3E4F88(uint64_t a1, unsigned __int8 a2)
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E500C()
{
  OUTLINED_FUNCTION_3_3();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_9_2();
      break;
    default:
      break;
  }

  sub_23B50D1C4();
}

uint64_t sub_23B3E50B0(uint64_t a1, unsigned __int8 a2)
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E513C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_21_4();
      break;
    default:
      break;
  }

  sub_23B50D1C4();
}

uint64_t sub_23B3E5238(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 999;
  }

  else
  {
    v2 = 43;
  }

  return MEMORY[0x23EE9DB40](v2);
}

uint64_t sub_23B3E526C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_10_2();
      break;
    case 3:
      OUTLINED_FUNCTION_8_2();
      break;
    case 4:
      OUTLINED_FUNCTION_9_2();
      break;
    default:
      break;
  }

  sub_23B50D1C4();
}

uint64_t sub_23B3E5318(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7824750;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 0x6947676E696E6177;
  v6 = 0x7243676E696E6177;
  v7 = 7824750;
  switch(v4)
  {
    case 1:
    case 7:
      OUTLINED_FUNCTION_18_2();
      break;
    case 2:
      v7 = 0x6175517473726966;
      v3 = 0xEC00000072657472;
      break;
    case 3:
    case 5:
      OUTLINED_FUNCTION_16_2();
      break;
    case 4:
      v3 = 0xE400000000000000;
      v7 = 1819047270;
      break;
    case 6:
      v7 = 0x726175517473616CLL;
      v3 = 0xEB00000000726574;
      break;
    default:
      break;
  }

  v8 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = v6 + 655360;
      goto LABEL_13;
    case 2:
      v2 = 0x6175517473726966;
      v8 = 0xEC00000072657472;
      break;
    case 3:
      v2 = v5 + 655360;
      goto LABEL_15;
    case 4:
      v8 = 0xE400000000000000;
      v2 = 1819047270;
      break;
    case 5:
      v2 = 0x6947676E696E6177;
LABEL_15:
      v8 = 0xED000073756F6262;
      break;
    case 6:
      v2 = 0x726175517473616CLL;
      v8 = 0xEB00000000726574;
      break;
    case 7:
      v2 = 0x7243676E696E6177;
LABEL_13:
      v8 = 0xEE00746E65637365;
      break;
    default:
      break;
  }

  if (v7 == v2 && v3 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_3(v7, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_23B3E551C(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x617461646174656DLL;
  }

  else
  {
    v2 = 0x7473616365726F66;
  }

  if (a2)
  {
    v3 = 0x617461646174656DLL;
  }

  else
  {
    v3 = 0x7473616365726F66;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_23B50D834();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_23B3E559C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7473616365726F66;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x617461646174656DLL;
    }

    else
    {
      v4 = 0x6F4C656E6972616DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEE006E6F69746163;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x7473616365726F66;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x617461646174656DLL;
    }

    else
    {
      v2 = 0x6F4C656E6972616DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEE006E6F69746163;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_23B3E56A4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7827308;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7827308;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_11_2();
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1751607656;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x6867694879726576;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_7_5();
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_6_1();
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1751607656;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x6867694879726576;
      break;
    case 4:
      OUTLINED_FUNCTION_12_4();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_23B3E57C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = Wind.CompassDirection.rawValue.getter(a1);
  v5 = v4;
  v6 = Wind.CompassDirection.rawValue.getter(v2);
  if (v3 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_3(v3, v7, v6);
  }

  return v9 & 1;
}

uint64_t sub_23B3E5850(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x746867696CLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6D756964656DLL;
    }

    else
    {
      v4 = 0x7976616568;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x746867696CLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6D756964656DLL;
    }

    else
    {
      v2 = 0x7976616568;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_23B3E592C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x72746E65636E6F63;
  }

  else
  {
    v3 = 0x7073694474696E75;
  }

  if (v2)
  {
    v4 = 0xEE006E6F69737265;
  }

  else
  {
    v4 = 0xED00006E6F697461;
  }

  if (a2)
  {
    v5 = 0x72746E65636E6F63;
  }

  else
  {
    v5 = 0x7073694474696E75;
  }

  if (a2)
  {
    v6 = 0xED00006E6F697461;
  }

  else
  {
    v6 = 0xEE006E6F69737265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_23B3E59D8(char a1, char a2)
{
  if (*&aModeled_2[8 * a1] == *&aModeled_2[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_23B50D834();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_23B3E5A40(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x7469706963657270;
  }

  else
  {
    v3 = 0x74617265706D6574;
  }

  if (v2)
  {
    v4 = 0xEB00000000657275;
  }

  else
  {
    v4 = 0xED00006E6F697461;
  }

  if (a2)
  {
    v5 = 0x7469706963657270;
  }

  else
  {
    v5 = 0x74617265706D6574;
  }

  if (a2)
  {
    v6 = 0xED00006E6F697461;
  }

  else
  {
    v6 = 0xEB00000000657275;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_23B3E5AE8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7961646F74;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x68746E6F6DLL;
    }

    else
    {
      v4 = 0x6B6165727473;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x7961646F74;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x68746E6F6DLL;
    }

    else
    {
      v2 = 0x6B6165727473;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_23B3E5BC4()
{
  OUTLINED_FUNCTION_4_8();
  v3 = "temporarilyUnavailable";
  if (v4)
  {
    OUTLINED_FUNCTION_20_2();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xEB00000000646574;
    }
  }

  else
  {
    v9 = v2;
    v10 = 0xE900000000000065;
  }

  if (v1)
  {
    v11 = (v3 - 32) | 0x8000000000000000;
    if (v1 == 1)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0x726F707075736E75;
    }

    if (v1 == 1)
    {
      v0 = v11;
    }

    else
    {
      v0 = 0xEB00000000646574;
    }
  }

  if (v9 == v2 && v10 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_5_3(v9, v1, v2);
  }

  return v13 & 1;
}

uint64_t sub_23B3E5CA8(char a1, char a2)
{
  if (a1)
  {
    v2 = 1635017060;
  }

  else
  {
    v2 = 1701869940;
  }

  if (a2)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_23B50D834();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_23B3E5D18(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x676E69736972;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x676E696C6C6166;
    }

    else
    {
      v4 = 0x796461657473;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x676E69736972;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x676E696C6C6166;
    }

    else
    {
      v2 = 0x796461657473;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_23B3E5DFC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1751607656;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 7827308;
    }

    else
    {
      v4 = 0x6C616D726F6ELL;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1751607656;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 7827308;
    }

    else
    {
      v2 = 0x6C616D726F6ELL;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_23B3E5ED0(char a1, char a2)
{
  if (a1)
  {
    v2 = 7827310;
  }

  else
  {
    v2 = 7954788;
  }

  if (a2)
  {
    v3 = 7827310;
  }

  else
  {
    v3 = 7954788;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_23B50D834();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_23B3E5F48(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000783340;
  v3 = 0x6B7261446F676F6CLL;
  v4 = a1;
  v5 = 0x6B7261446F676F6CLL;
  v6 = 0xEB00000000783340;
  switch(v4)
  {
    case 1:
      v5 = 0x6867694C6F676F6CLL;
      v6 = 0xEC00000078334074;
      break;
    case 2:
      v5 = 0x617571536F676F6CLL;
      v6 = 0xED00007833406572;
      break;
    case 3:
      v5 = 0x4E65636976726573;
      v6 = 0xEB00000000656D61;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6867694C6F676F6CLL;
      v2 = 0xEC00000078334074;
      break;
    case 2:
      OUTLINED_FUNCTION_21_4();
      break;
    case 3:
      v3 = 0x4E65636976726573;
      v2 = 0xEB00000000656D61;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_3(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_23B3E60CC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x726F6E696DLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x726F6E696DLL;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_11_2();
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x657265766573;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_7_5();
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_13_3();
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_6_1();
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x657265766573;
      break;
    case 3:
      OUTLINED_FUNCTION_12_4();
      break;
    case 4:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_19_2();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_23B3E61D8()
{
  OUTLINED_FUNCTION_4_8();
  v4 = v3;
  v5 = v2;
  v6 = 0xE900000000000065;
  v7 = "temporarilyUnavailable";
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000016;
      v6 = 0x800000023B528300;
      break;
    case 2:
      v5 = 0x726F707075736E75;
      v6 = 0xEB00000000646574;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_13_3();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0xD000000000000016;
      v0 = (v7 - 32) | 0x8000000000000000;
      break;
    case 2:
      v2 = 0x726F707075736E75;
      v0 = 0xEB00000000646574;
      break;
    case 3:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_19_2();
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_3(v5, v1, v2);
  }

  return v9 & 1;
}

uint64_t sub_23B3E6304()
{
  sub_23B50C104();
  sub_23B3E712C();
  sub_23B50D264();
  sub_23B50D264();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_5_3(v6, v0, v4);
  }

  return v2 & 1;
}

uint64_t sub_23B3E63A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x800000023B528880 == a2;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000023B5288A0 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x800000023B5288C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

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

unint64_t sub_23B3E64C8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0xD000000000000016;
}

uint64_t sub_23B3E6524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3E63A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B3E654C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3E64C0();
  *a1 = result;
  return result;
}

uint64_t sub_23B3E6574(uint64_t a1)
{
  v2 = sub_23B3E6810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B3E65B0(uint64_t a1)
{
  v2 = sub_23B3E6810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static WeatherAvailability.== infix(_:_:)()
{
  if ((sub_23B3E61D8() & 1) == 0 || (sub_23B3E61D8() & 1) == 0)
  {
    return 0;
  }

  return sub_23B3E61D8();
}

uint64_t WeatherAvailability.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F80, &qword_23B50F2C0);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = *v1;
  v11 = v1[1];
  v18 = v1[2];
  v19 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E6810();
  sub_23B50D974();
  v25 = v10;
  v24 = 0;
  sub_23B3E6864();
  OUTLINED_FUNCTION_2_8(&v25, &v24, v12, &type metadata for WeatherAvailability.AvailabilityKind);
  if (!v2)
  {
    v14 = v18;
    v23 = v19;
    v22 = 1;
    OUTLINED_FUNCTION_2_8(&v23, &v22, v13, &type metadata for WeatherAvailability.AvailabilityKind);
    v21 = v14;
    v20 = 2;
    OUTLINED_FUNCTION_2_8(&v21, &v20, v15, &type metadata for WeatherAvailability.AvailabilityKind);
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_23B3E6810()
{
  result = qword_280B42888;
  if (!qword_280B42888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42888);
  }

  return result;
}

unint64_t sub_23B3E6864()
{
  result = qword_280B42898;
  if (!qword_280B42898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42898);
  }

  return result;
}

uint64_t WeatherAvailability.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F88, &qword_23B50F2C8);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E6810();
  sub_23B50D964();
  if (!v2)
  {
    v18[0] = 0;
    sub_23B3E6A90();
    OUTLINED_FUNCTION_1_3(&type metadata for WeatherAvailability.AvailabilityKind, v18);
    v11 = v18[1];
    v17[0] = 1;
    OUTLINED_FUNCTION_1_3(&type metadata for WeatherAvailability.AvailabilityKind, v17);
    v15 = v17[1];
    v16[0] = 2;
    OUTLINED_FUNCTION_1_3(&type metadata for WeatherAvailability.AvailabilityKind, v16);
    (*(v7 + 8))(v10, v5);
    v13 = v16[1];
    *a2 = v11;
    a2[1] = v15;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23B3E6A90()
{
  result = qword_27E131F90;
  if (!qword_27E131F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131F90);
  }

  return result;
}

uint64_t WeatherAvailability.hash(into:)()
{
  sub_23B3E500C();
  sub_23B3E500C();

  return sub_23B3E500C();
}

uint64_t WeatherAvailability.hashValue.getter()
{
  sub_23B50D8C4();
  sub_23B3E500C();
  sub_23B3E500C();
  sub_23B3E500C();
  return sub_23B50D914();
}

uint64_t sub_23B3E6BE8(uint64_t a1)
{
  sub_23B50D8C4();
  sub_23B3E500C();
  sub_23B3E500C();
  sub_23B3E500C();
  return sub_23B50D914();
}

unint64_t sub_23B3E6C58()
{
  result = qword_27E131F98;
  if (!qword_27E131F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131F98);
  }

  return result;
}

unint64_t sub_23B3E6CB0()
{
  result = qword_27E131FA0;
  if (!qword_27E131FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131FA0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for WeatherAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554179) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v3)
    {
      v4 = ((a2 - 253) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherAvailability.AvailabilityKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WeatherAvailability.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for WeatherAvailability.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B3E6FD4()
{
  result = qword_27E131FA8;
  if (!qword_27E131FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131FA8);
  }

  return result;
}

unint64_t sub_23B3E702C()
{
  result = qword_280B42878;
  if (!qword_280B42878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42878);
  }

  return result;
}

unint64_t sub_23B3E7084()
{
  result = qword_280B42880;
  if (!qword_280B42880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42880);
  }

  return result;
}

unint64_t sub_23B3E70D8()
{
  result = qword_280B42890;
  if (!qword_280B42890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42890);
  }

  return result;
}

unint64_t sub_23B3E712C()
{
  result = qword_27E131FB0;
  if (!qword_27E131FB0)
  {
    sub_23B50C104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131FB0);
  }

  return result;
}

void static AirQuality.mock()(uint64_t a1@<X8>)
{
  v51 = type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_23B50AAE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v50 - v14;
  sub_23B3E7748();
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FD0, &qword_23B50F6D8);
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_0_4(v18, xmmword_23B50F620);
  OUTLINED_FUNCTION_3_4();
  v53[0] = v19;
  v53[1] = 0xED0000312E747361;
  v53[2] = v19;
  v53[3] = 0xED0000312E747361;
  memset(&v53[4], 0, 40);
  v53[9] = 0xE000000000000000;
  LOBYTE(v53[10]) = 1;
  *&v53[11] = xmmword_23B50F630;
  v53[13] = v17;
  v53[14] = v20;
  if (*(v17 + 16))
  {
    memcpy(__dst, (v17 + 32), 0x58uLL);
    v21 = type metadata accessor for ProviderAttribution(0);
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
    sub_23B50AB34();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    (*(v9 + 104))(v11, *MEMORY[0x277CC91D8], v8);
    v29 = type metadata accessor for AirQuality(0);
    sub_23B3C8520(v53, v52);
    sub_23B3C8AD4(__dst, v52);
    sub_23B50AB14();
    v30 = type metadata accessor for AirPollutant(0);
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
    static WeatherMetadata.mock()(v4);
    sub_23B3C8B4C(v53);
    v34 = v29[11];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v21);
    v38 = v29[14];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v30);
    OUTLINED_FUNCTION_3_4();
    *v42 = v43;
    OUTLINED_FUNCTION_5_4();
    *(v44 + 8) = v45;
    memcpy((a1 + v29[7]), v53, 0x78uLL);
    *(a1 + v29[8]) = 42;
    memcpy((a1 + v29[9]), __dst, 0x58uLL);
    *(a1 + v29[10]) = 0;
    sub_23B3E7994(v15, a1 + v34, &qword_27E131FC8, &qword_23B510180);
    *(a1 + v29[13]) = MEMORY[0x277D84F98];
    sub_23B3E7994(v7, a1 + v38, &qword_27E131FB8, &qword_23B50F6D0);
    *(a1 + v29[15]) = 3;
    v46 = a1 + v29[16];
    *v46 = 1;
    *(v46 + 8) = 0xD000000000000010;
    *(v46 + 16) = 0x800000023B5288E0;
    sub_23B3CA078(v4, a1 + v29[17]);
    v47 = sub_23B50AD24();
    OUTLINED_FUNCTION_6();
    v49 = *(v48 + 16);
    v49(a1, v4, v47);
    v49(a1 + v29[5], &v4[*(v51 + 20)], v47);
    sub_23B3E79F4(v4);
  }

  else
  {
    __break(1u);
  }
}

double static AirQualityScale.mock()@<D0>(uint64_t a1@<X8>)
{
  sub_23B3E7748();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FD0, &qword_23B50F6D8);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_0_4(v5, xmmword_23B50F620);
  OUTLINED_FUNCTION_5_4();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 1;
  result = 0.0;
  *(a1 + 88) = xmmword_23B50F630;
  *(a1 + 104) = v4;
  *(a1 + 112) = v9;
  return result;
}

void static AirQualitySource.mock()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0xD000000000000010;
  *(a1 + 16) = 0x800000023B5288E0;
}

void sub_23B3E7748()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FD8, &qword_23B50F6E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23B50F640;
  strcpy((v0 + 32), "AQI_SCALE_GOOD");
  *(v0 + 47) = -18;
  *(v0 + 48) = xmmword_23B50F650;
  *(v0 + 64) = 0xE700000000000000;
  *(v0 + 72) = 0xD00000000000001ALL;
  *(v0 + 80) = 0x800000023B528900;
  *(v0 + 88) = xmmword_23B50F660;
  OUTLINED_FUNCTION_4_9();
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0x6574617265646F4DLL;
  *(v1 + 128) = 0xE800000000000000;
  *(v1 + 136) = xmmword_23B50F670;
  *(v1 + 152) = v3;
  *(v1 + 160) = v2 + 211;
  *(v1 + 168) = v4;
  OUTLINED_FUNCTION_4_9();
  *(v5 + 176) = v7;
  *(v5 + 192) = v6;
  *(v5 + 208) = v8 | 4;
  *(v5 + 216) = v9;
  *(v5 + 224) = xmmword_23B50F690;
  *(v5 + 240) = v10;
  *(v5 + 248) = v8 + 83;
  *(v5 + 256) = 0x800000023B528A30;
  *(v5 + 264) = 101;
  *(v5 + 272) = 151;
  OUTLINED_FUNCTION_4_9();
  *v11 = v12;
  *(v13 + 296) = 0x68746C6165686E55;
  *(v13 + 304) = 0xE900000000000079;
  *(v13 + 312) = 4;
  *(v13 + 320) = 0x35354432464623;
  *(v13 + 328) = v15;
  *(v13 + 336) = v14 + 94;
  *(v13 + 344) = v16;
  *(v13 + 352) = xmmword_23B50F6A0;
  *(v13 + 368) = v12;
  strcpy((v13 + 384), "Very Unhealthy");
  *(v13 + 399) = -18;
  *(v13 + 400) = xmmword_23B50F6B0;
  *(v13 + 416) = v15;
  *(v13 + 424) = v14 + 55;
  *(v13 + 432) = 0x800000023B528B20;
  *(v13 + 440) = 201;
  *(v13 + 448) = 301;
  OUTLINED_FUNCTION_4_9();
  *v17 = v18;
  *(v19 + 472) = 0x756F6472617A6148;
  *(v19 + 480) = v20;
  *(v19 + 488) = 6;
  *(v19 + 496) = 0x44323132353723;
  *(v19 + 504) = v22;
  *(v19 + 512) = v21 + 95;
  *(v19 + 520) = v23;
  *(v19 + 528) = xmmword_23B50F6C0;
  *(v19 + 544) = v18;
}

uint64_t sub_23B3E7994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 40))(a2, a1);
  return a2;
}

uint64_t sub_23B3E79F4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Forecast<>.isRelevant.getter()
{
  v1[0] = 0;
  v1[1] = 0;
  v2 = 1;
  return Forecast<>.isRelevant(in:)(v1);
}

BOOL Forecast<>.isRelevant(in:)(uint64_t a1)
{
  v3 = type metadata accessor for MinuteSummary(0);
  OUTLINED_FUNCTION_5();
  v126 = v4;
  MEMORY[0x28223BE20](v5);
  v123 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v104 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v104 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_1();
  v124 = v14;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_1();
  v116 = v16;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v104 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v20);
  v22 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_1();
  v122 = v24;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_1();
  v121 = v26;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v27);
  v128 = &v104 - v28;
  v29 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v110 = v30;
  MEMORY[0x28223BE20](v31);
  v109 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  v33 = *(a1 + 8);
  v111 = *(a1 + 16);
  if (qword_280B43440 != -1)
  {
LABEL_58:
    swift_once();
  }

  v35 = sub_23B50CDF4();
  v130 = __swift_project_value_buffer(v35, qword_280B4E9D8);
  v36 = sub_23B50CDD4();
  v37 = sub_23B50D4A4();
  v38 = OUTLINED_FUNCTION_4_10(v37);
  v127 = v29;
  if (v38)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_23B38D000, v36, v1, "Determining if NextHour data is relevant by examining the conditions.", v29, 2u);
    OUTLINED_FUNCTION_0_5();
  }

  sub_23B50B9D4();
  v39 = v109;
  sub_23B50B994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  v1 = v129;
  sub_23B50ABD4();
  v41 = v40;
  v42 = *(v110 + 8);
  v113 = v110 + 8;
  v112 = v42;
  v42(v39, v29);
  if (v111)
  {
    if (v41 <= 900.0)
    {
      goto LABEL_6;
    }

LABEL_41:
    v74 = sub_23B50CDD4();
    v75 = sub_23B50D4A4();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 134217984;
      *(v76 + 4) = v41;
      _os_log_impl(&dword_23B38D000, v74, v75, "Next Hour data is stale, age=%f. Returning isRelevant=false", v76, 0xCu);
      OUTLINED_FUNCTION_38();
    }

    return 0;
  }

  if (v34 < v41)
  {
    goto LABEL_41;
  }

LABEL_6:
  v108 = v12;
  v105 = v22;
  v107 = v9;
  v106 = v20;
  __swift_storeEnumTagSinglePayload(v128, 1, 1, v29);
  Forecast<>.summaries.getter();
  v125 = v44;
  v12 = v116;
  v120 = *(v44 + 16);
  if (!v120)
  {
LABEL_37:

    v71 = sub_23B50CDD4();
    v72 = sub_23B50D4A4();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_23B38D000, v71, v72, "Next Hour data has no relevant condition. Returning isRelevant=false", v73, 2u);
      OUTLINED_FUNCTION_38();
    }

    sub_23B3CF54C(v128);
    return 0;
  }

  v22 = 0;
  v118 = v125 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
  *&v43 = 136446210;
  v115 = v43;
  *&v43 = 136446722;
  v114 = v43;
  v117 = v19;
  v119 = v3;
  while (1)
  {
    if (v22 >= *(v125 + 16))
    {
      __break(1u);
      goto LABEL_58;
    }

    sub_23B3E889C(v118 + *(v126 + 72) * v22, v19);
    sub_23B3E889C(v19, v12);
    v45 = sub_23B50CDD4();
    v46 = sub_23B50D4A4();
    if (OUTLINED_FUNCTION_4_10(v46))
    {
      v29 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v131[0] = v47;
      *v29 = v115;
      sub_23B3E889C(v12, v124);
      v48 = sub_23B50D184();
      v19 = v49;
      sub_23B3E8900(v12);
      sub_23B391F1C(v48, v19, v131);
      OUTLINED_FUNCTION_7_6();
      *(v29 + 4) = v48;
      v3 = v119;
      _os_log_impl(&dword_23B38D000, v45, v1, "Checking Next Hour data condition=%{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_0_5();
    }

    else
    {

      sub_23B3E8900(v12);
    }

    v50 = v122;
    v51 = v19[v3[6]];
    v129 = v22 + 1;
    switch(v51)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        v52 = sub_23B50D834();

        v53 = 0;
        if (v52)
        {
          goto LABEL_15;
        }

        break;
      default:

LABEL_15:
        v54 = &v19[v3[9]];
        v55 = *v54;
        v56 = v54[8];
        v53 = v55 == 0.0 || v56 == 3;
        break;
    }

    v58 = v3[5];
    v59 = v121;
    sub_23B3C7DF4(&v19[v58], v121);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v29);
    sub_23B3CF54C(v59);
    if (EnumTagSinglePayload != 1)
    {
      break;
    }

    v20 = v123;
    if (!v53)
    {
      goto LABEL_46;
    }

    v9 = 1;
LABEL_33:
    sub_23B3E889C(v19, v20);
    v66 = sub_23B50CDD4();
    v67 = sub_23B50D4A4();
    if (OUTLINED_FUNCTION_4_10(v67))
    {
      v29 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v131[0] = v68;
      *v29 = v114;
      sub_23B3E889C(v20, v124);
      v69 = sub_23B50D184();
      v19 = v70;
      sub_23B3E8900(v20);
      sub_23B391F1C(v69, v19, v131);
      OUTLINED_FUNCTION_7_6();
      *(v29 + 4) = v69;
      v3 = v119;
      *(v29 + 12) = 1026;
      *(v29 + 14) = !v53;
      *(v29 + 18) = 1026;
      *(v29 + 20) = v9;
      _os_log_impl(&dword_23B38D000, v66, v1, "%{public}s does not have a valid condition precipitation, skipping...isConditionPrecipitation=%{BOOL,public}d, isConditionUnexpired=%{BOOL,public}d", v29, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v68);
      v12 = v116;
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_0_5();
    }

    else
    {

      sub_23B3E8900(v20);
    }

    sub_23B3E895C(&v19[v58], v128);
    sub_23B3E8900(v19);
    v22 = v129;
    if (v120 == v129)
    {
      goto LABEL_37;
    }
  }

  sub_23B3C7DF4(&v19[v58], v50);
  v61 = __swift_getEnumTagSinglePayload(v50, 1, v29);
  v20 = v123;
  if (v61 == 1)
  {
    sub_23B3CF54C(v50);
    v9 = 0;
    goto LABEL_33;
  }

  sub_23B50ACC4();
  v63 = v62;
  OUTLINED_FUNCTION_3_5();
  v64();
  v65 = v63 <= 0.0 || v53;
  v9 = v63 > 0.0 && v53;
  if (v65)
  {
    goto LABEL_33;
  }

LABEL_46:

  v79 = v108;
  sub_23B3E889C(v19, v108);
  v80 = sub_23B50CDD4();
  v81 = sub_23B50D4A4();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v131[0] = v83;
    *v82 = v115;
    sub_23B3E889C(v79, v124);
    v84 = sub_23B50D184();
    v86 = v85;
    sub_23B3E8900(v79);
    v87 = sub_23B391F1C(v84, v86, v131);
    v29 = v127;

    *(v82 + 4) = v87;
    _os_log_impl(&dword_23B38D000, v80, v81, "%{public}s is valid (it's a precipitation and it's not expired). Now checking if it's relevant", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v83);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    sub_23B3E8900(v79);
  }

  v88 = v107;
  v89 = 0.0;
  if (!__swift_getEnumTagSinglePayload(v128, 1, v29))
  {
    (*(v110 + 16))(v109, v128, v29);
    sub_23B50ACC4();
    v89 = v90;
    OUTLINED_FUNCTION_3_5();
    v91();
  }

  if (v111)
  {
    v33 = 3000.0;
  }

  v77 = v89 <= v33;
  sub_23B3E889C(v19, v88);
  v92 = sub_23B50CDD4();
  v93 = sub_23B50D4A4();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *v94 = 136446978;
    sub_23B3E889C(v88, v124);
    v95 = sub_23B50D184();
    v97 = v96;
    sub_23B3E8900(v88);
    v98 = sub_23B391F1C(v95, v97, &v132);

    *(v94 + 4) = v98;
    *(v94 + 12) = 2050;
    *(v94 + 14) = v33 / 60.0;
    *(v94 + 22) = 1026;
    *(v94 + 24) = v89 <= v33;
    *(v94 + 28) = 2082;
    v99 = v128;
    swift_beginAccess();
    sub_23B3C7DF4(v99, v105);
    v100 = sub_23B50D184();
    v102 = sub_23B391F1C(v100, v101, &v132);

    *(v94 + 30) = v102;
    _os_log_impl(&dword_23B38D000, v92, v93, "%{public}s is relevant only if its preceding condition expires within the next %{public}f minutes. isRelevant=%{BOOL,public}d, previousConditionValidUntil=%{public}s", v94, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

    sub_23B3E8900(v19);
    v103 = v99;
  }

  else
  {

    sub_23B3E8900(v88);
    sub_23B3E8900(v19);
    v103 = v128;
  }

  sub_23B3CF54C(v103);
  return v77;
}

uint64_t sub_23B3E873C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_23B391F1C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_23B3E8798(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FE0, &qword_23B50F758);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_23B3E888C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_23B3E889C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MinuteSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3E8900(uint64_t a1)
{
  v2 = type metadata accessor for MinuteSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B3E895C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PrecipitationRelevancyWindow(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrecipitationRelevancyWindow(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_23B3E8A30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B3E8A4C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t MinuteWeather.date.getter()
{
  OUTLINED_FUNCTION_7_0();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t MinuteWeather.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t MinuteWeather.precipitation.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for MinuteWeather(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t MinuteWeather.precipitation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MinuteWeather(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t MinuteWeather.precipitation.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MinuteWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteWeather.precipitationChance.setter(double a1)
{
  result = type metadata accessor for MinuteWeather(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t MinuteWeather.precipitationChance.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MinuteWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteWeather.precipitationIntensity.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = *(type metadata accessor for MinuteWeather(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t MinuteWeather.precipitationIntensity.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for MinuteWeather(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t MinuteWeather.precipitationIntensity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MinuteWeather(v0);
  return OUTLINED_FUNCTION_44();
}

double MinuteWeather.apparentPrecipitationIntensity.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = v1 + *(type metadata accessor for MinuteWeather(v2) + 32);
  result = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = result;
  *(v0 + 8) = v3;
  return result;
}

uint64_t MinuteWeather.apparentPrecipitationIntensity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for MinuteWeather(0);
  v5 = v1 + *(result + 32);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t MinuteWeather.apparentPrecipitationIntensity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MinuteWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteWeather.init(date:precipitation:precipitationChance:precipitationIntensity:apparentPrecipitationIntensity:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v10 = *a2;
  v11 = *a4;
  v12 = *(a4 + 8);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  (*(v13 + 32))(a5, a1);
  v14 = type metadata accessor for MinuteWeather(0);
  *(a5 + v14[5]) = v10;
  *(a5 + v14[6]) = a6;
  v15 = v14[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6();
  result = (*(v16 + 32))(a5 + v15, a3);
  v18 = a5 + v14[8];
  *v18 = v11;
  *(v18 + 8) = v12;
  return result;
}

uint64_t sub_23B3E8F74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000023B528C00 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000023B528C20 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001ELL && 0x800000023B528C40 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_23B50D834();

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

unint64_t sub_23B3E912C(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x7469706963657270;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B3E91E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3E8F74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B3E9210@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3E9124();
  *a1 = result;
  return result;
}

uint64_t sub_23B3E9238(uint64_t a1)
{
  v2 = sub_23B3E9D7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B3E9274(uint64_t a1)
{
  v2 = sub_23B3E9D7C();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static MinuteWeather.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_23B50ACD4())
  {
    v4 = type metadata accessor for MinuteWeather(0);
    if ((sub_23B3CFF58(*(a1 + v4[5]), *(a2 + v4[5])) & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      sub_23B3E9FE0(&qword_280B42F10, MEMORY[0x277CC87F0]);
      if (sub_23B50D134() & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]) && (sub_23B3E71A0())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t MinuteWeather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FE8, &qword_23B50F760);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E9D7C();
  sub_23B50D974();
  v24 = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_6();
  sub_23B3EA078(v11, v12, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_5_2();
  sub_23B50D7F4();
  if (!v2)
  {
    v13 = type metadata accessor for MinuteWeather(0);
    v23 = *(v3 + *(v13 + 20));
    v22 = 1;
    sub_23B3E9DD0();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
    v21 = 2;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7C4();
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    sub_23B3E9FE0(&qword_280B42BE8, MEMORY[0x277CC87D8]);
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
    v14 = (v3 + *(v13 + 32));
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 8);
    v18 = v15;
    v19 = v14;
    v17[15] = 4;
    sub_23B3E9E24();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t MinuteWeather.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5();
  v34 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v35 = v8;
  MEMORY[0x28223BE20](v9);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132000, &qword_23B50F768);
  OUTLINED_FUNCTION_5();
  v37 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for MinuteWeather(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E9D7C();
  v39 = v14;
  v19 = v41;
  sub_23B50D964();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v6;
  v21 = v35;
  v22 = v36;
  v49 = 0;
  OUTLINED_FUNCTION_0_6();
  sub_23B3EA078(v23, v24, MEMORY[0x277CC95A0]);
  sub_23B50D734();
  v25 = *(v21 + 32);
  v41 = v7;
  v25(v18, v38, v7);
  v47 = 1;
  sub_23B3E9E78();
  sub_23B50D734();
  v18[v15[5]] = v48;
  v46 = 2;
  sub_23B50D704();
  *&v18[v15[6]] = v26;
  v45 = 3;
  sub_23B3E9FE0(&qword_27E132018, MEMORY[0x277CC87F8]);
  sub_23B50D734();
  (*(v34 + 32))(&v18[v15[7]], v20, v22);
  v44 = 4;
  sub_23B3E9ECC();
  sub_23B50D734();
  v27 = OUTLINED_FUNCTION_3_6();
  v28(v27);
  v29 = v43;
  v30 = &v18[v15[8]];
  *v30 = v42;
  v30[8] = v29;
  sub_23B3E9F20(v18, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23B3E9F84(v18);
}

uint64_t MinuteWeather.hash(into:)()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_6();
  sub_23B3EA078(v2, v3, MEMORY[0x277CC9588]);
  sub_23B50D0E4();
  v4 = type metadata accessor for MinuteWeather(0);
  sub_23B3CFAAC(v0, *(v1 + v4[5]));
  v5 = *(v1 + v4[6]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  sub_23B3E9FE0(&qword_280B42BE0, MEMORY[0x277CC87E0]);
  sub_23B50D0E4();
  v6 = *(v1 + v4[8]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v6);
  sub_23B50D1C4();
}

uint64_t MinuteWeather.hashValue.getter()
{
  sub_23B50D8C4();
  MinuteWeather.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B3E9D40(uint64_t a1)
{
  sub_23B50D8C4();
  MinuteWeather.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B3E9D7C()
{
  result = qword_27E131FF0;
  if (!qword_27E131FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131FF0);
  }

  return result;
}

unint64_t sub_23B3E9DD0()
{
  result = qword_280B42580;
  if (!qword_280B42580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42580);
  }

  return result;
}

unint64_t sub_23B3E9E24()
{
  result = qword_27E131FF8;
  if (!qword_27E131FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131FF8);
  }

  return result;
}

unint64_t sub_23B3E9E78()
{
  result = qword_27E132010;
  if (!qword_27E132010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132010);
  }

  return result;
}

unint64_t sub_23B3E9ECC()
{
  result = qword_27E132020;
  if (!qword_27E132020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132020);
  }

  return result;
}

uint64_t sub_23B3E9F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MinuteWeather(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3E9F84(uint64_t a1)
{
  v2 = type metadata accessor for MinuteWeather(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B3E9FE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131E10, &unk_23B5100F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B3EA078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B3EA0E8()
{
  result = qword_280B433A8;
  if (!qword_280B433A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B433A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MinuteWeather.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MinuteWeather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B3EA294()
{
  result = qword_27E132030;
  if (!qword_27E132030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132030);
  }

  return result;
}

unint64_t sub_23B3EA2EC()
{
  result = qword_27E132038;
  if (!qword_27E132038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132038);
  }

  return result;
}

unint64_t sub_23B3EA344()
{
  result = qword_27E132040;
  if (!qword_27E132040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132040);
  }

  return result;
}

uint64_t DayWeather.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t DayWeather.condition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayWeather(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t DayWeather.condition.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.symbolName.getter()
{
  type metadata accessor for DayWeather(0);

  return OUTLINED_FUNCTION_65();
}

uint64_t DayWeather.symbolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DayWeather(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DayWeather.symbolName.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.highTemperature.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t DayWeather.highTemperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.highTemperatureTime.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  v1 = type metadata accessor for DayWeather(v0);
  v2 = OUTLINED_FUNCTION_54_0(*(v1 + 32));
  return sub_23B3EB900(v2, v3, v4, v5);
}

uint64_t DayWeather.highTemperatureTime.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3EB988(v1, v2, v3, v4);
}

uint64_t DayWeather.highTemperatureTime.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.lowTemperature.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t DayWeather.lowTemperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.lowTemperatureTime.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  v1 = type metadata accessor for DayWeather(v0);
  v2 = OUTLINED_FUNCTION_54_0(*(v1 + 40));
  return sub_23B3EB900(v2, v3, v4, v5);
}

uint64_t DayWeather.lowTemperatureTime.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3EB988(v1, v2, v3, v4);
}

uint64_t DayWeather.lowTemperatureTime.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.humidity.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 44)) = v1;
  return result;
}

uint64_t DayWeather.humidity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.humidityMax.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 48)) = v1;
  return result;
}

uint64_t DayWeather.humidityMax.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.humidityMin.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 52)) = v1;
  return result;
}

uint64_t DayWeather.humidityMin.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.maximumHumidity.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 56)) = v1;
  return result;
}

uint64_t DayWeather.maximumHumidity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.minimumHumidity.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 60)) = v1;
  return result;
}

uint64_t DayWeather.minimumHumidity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.precipitation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayWeather(0);
  *(v1 + *(result + 64)) = v2;
  return result;
}

uint64_t DayWeather.precipitation.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.precipitationChance.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 68)) = v1;
  return result;
}

uint64_t DayWeather.precipitationChance.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.rainfallAmount.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t DayWeather.rainfallAmount.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayWeather(v0);
  return OUTLINED_FUNCTION_44();
}