uint64_t sub_19373EE5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373EED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_205_2(result);
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

      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_19373EF38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373EF74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_370_0(result);
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

      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_19373EFC8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373F010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    result = OUTLINED_FUNCTION_266_2(result, a2 - 0x7FFFFFFF, 0);
    if (v3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373F088(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 136))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 112);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373F0C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    result = OUTLINED_FUNCTION_111_13(result, 0);
    *(result + 120) = v3;
    *result = v4;
    if (v5 < 0)
    {
      return OUTLINED_FUNCTION_372_1(result);
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19373F154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 128))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 80);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373F194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    result = OUTLINED_FUNCTION_111_13(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19373F214(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3F && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 62);
    }

    v3 = ((*a1 >> 57) & 0x78 | *a1 & 7) ^ 0x7F;
    if (v3 >= 0x3E)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373F25C(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_21_40(result, -a2 | (-a2 << 57));
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolKitToolSystemToolProtocol.ConditionallyEnabled(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_117_1(result, a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_19373F404(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 80))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
  }

  OUTLINED_FUNCTION_52_15();
  v4 = v3 - 1;
  v5 = v4 < 0 ? -1 : v4;
  v6 = v5 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_46_4(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_19373F464(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitdD10DefinitionV8Version1V0D4IconOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_19373F540(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 632))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 48);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void sub_19373F57C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    OUTLINED_FUNCTION_23_38(a1, 0);
    OUTLINED_FUNCTION_350(v3);
    *(v4 + 504) = v5;
    *(v4 + 488) = v5;
    *(v4 + 472) = v5;
    *(v4 + 456) = v5;
    *(v4 + 440) = v5;
    *(v4 + 424) = v5;
    *(v4 + 408) = v5;
    *(v4 + 392) = v5;
    *(v4 + 376) = v5;
    OUTLINED_FUNCTION_350(v5);
    *v6 = v7;
    if (v8 < 0)
    {
      *(v6 + 632) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      OUTLINED_FUNCTION_360_1(a1, a2);
      return;
    }

    *(a1 + 632) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitdD10DefinitionV8Version1V9ParameterV0D8MetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19373F68C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 136))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 56);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373F6C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    result = OUTLINED_FUNCTION_111_13(result, 0);
    *(result + 120) = v3;
    *result = v4;
    if (v5 < 0)
    {
      return OUTLINED_FUNCTION_372_1(result);
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19373F73C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373F784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373F7E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 120);
    }

    OUTLINED_FUNCTION_176_3();
    v4 = v3 ^ 0x7F;
    if (v4 >= 0x78)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373F874(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 9))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_19373F8B0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }

    *(result + 9) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_19373F91C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 24))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 16);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373F958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_205_2(result);
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

      return OUTLINED_FUNCTION_246_2(result, (a2 - 1));
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_246_2(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_19373F9DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373FA24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    result = OUTLINED_FUNCTION_326_0(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373FAE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 112))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 104);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373FB20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    result = OUTLINED_FUNCTION_111_13(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 112) = 1;
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

      return OUTLINED_FUNCTION_353_1(result, (a2 - 1));
    }

    *(result + 112) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_353_1(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_19373FBC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_116_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373FC20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 80))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373FC5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    result = OUTLINED_FUNCTION_266_2(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_371_0(result);
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

      return OUTLINED_FUNCTION_359_1(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_359_1(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373FCB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    return OUTLINED_FUNCTION_46_4(14 - ((4 * v3) & 0xC | (v3 >> 2)));
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_19373FD08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD3AnyVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19373FD7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373FDC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    result = OUTLINED_FUNCTION_326_0(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_19373FE48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373FED0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373FF4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373FF94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373FFFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 24))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 120);
    }

    v3 = ((*(a1 + 16) >> 57) >> 4) | (8 * ((*(a1 + 16) >> 57) & 8 | *(a1 + 16) & 7));
    v4 = v3 ^ 0x7F;
    v5 = 126 - v3;
    if (v4 >= 0x79)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v5);
}

uint64_t sub_193740054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_246_2(result, ((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

_BYTE *_s27IntelligencePlatformLibrary23ToolKitToolAllPredicateVwst_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_193740170(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 80))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 48);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1937401AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    result = OUTLINED_FUNCTION_266_2(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_371_0(result);
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

      return OUTLINED_FUNCTION_360_1(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_360_1(result, a2);
    }
  }

  return result;
}

uint64_t sub_193740228(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 107))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193740264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    result = OUTLINED_FUNCTION_191_3(result, 0);
    *(result + 106) = 0;
    *(result + 104) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 107) = 1;
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

      return OUTLINED_FUNCTION_359_1(result, a2);
    }

    *(result + 107) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_359_1(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1937402F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 59))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193740344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 59) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 59) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_116_13(result, a2);
    }
  }

  return result;
}

void sub_1937403FC()
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_19349D198(319);
    if (v1 <= 0x3F)
    {
      sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
      if (v2 <= 0x3F)
      {
        sub_193740510();
        if (v3 <= 0x3F)
        {
          sub_193740560();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_193740510()
{
  if (!qword_1ED503138)
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED503138);
    }
  }
}

void sub_193740560()
{
  if (!qword_1ED5030D8)
  {
    v0 = sub_19393C520();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED5030D8);
    }
  }
}

uint64_t sub_1937405C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 126);
    }

    v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x7E)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_193740610(unint64_t *result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_193740664(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 24))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15();
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1937406A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_205_2(result);
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_54_18(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*v1);
  *v1 = v2;
  return result;
}

void OUTLINED_FUNCTION_57_13()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 16);
  *(v1 - 40) = *v0;
  *(v1 - 32) = v2;
  *(v1 - 31) = v3;
  *(v1 - 24) = v4;
}

__n128 OUTLINED_FUNCTION_62_20()
{
  v2 = v0[1].n128_u64[0];
  result = *v0;
  *(v1 - 48) = *v0;
  *(v1 - 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_20(uint64_t a1, uint64_t a2)
{
  result = sub_19345012C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_17@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(result + 88) = a3;
  *(result + 72) = a3;
  *(result + 56) = a3;
  *(result + 40) = a3;
  *(result + 24) = a3;
  *(result + 8) = a3;
  *result = a2;
  return result;
}

__n128 OUTLINED_FUNCTION_103_12@<Q0>(uint64_t a1@<X8>)
{
  result = *v2;
  *(v3 - 64) = *v2;
  *(v3 - 48) = a1;
  *(v3 - 40) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_120_8()
{
  sub_193437C90(v0);

  return sub_193437C90(v1);
}

void OUTLINED_FUNCTION_139_10(__n128 a1)
{
  v1[2] = a1;
  v1[3] = a1;
  v1[4] = a1;
  v1[5] = a1;
  v1[6] = a1;
}

__n128 OUTLINED_FUNCTION_141_8()
{
  result = *(v0 + 16);
  v2 = *(v0 + 32);
  *&STACK[0x590] = result;
  *&STACK[0x5A0] = v2;
  STACK[0x5B0] = *(v0 + 48);
  return result;
}

void OUTLINED_FUNCTION_151_9()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 - 48) = *v0;
  *(v1 - 40) = v2;
  *(v1 - 39) = v3;
  *(v1 - 38) = v4;
  *(v1 - 32) = v5;
  *(v1 - 24) = v6;
}

uint64_t OUTLINED_FUNCTION_158_4()
{
  sub_193450268(v0, v2);
  sub_193450268(v1, v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_159_8()
{
  sub_193450268(v1, v2);
  sub_193450268(v0, v3);
  return v1;
}

uint64_t OUTLINED_FUNCTION_161_7(uint64_t a1)
{
  sub_193437C90(a1);
  sub_193437C90(v1);
}

uint64_t OUTLINED_FUNCTION_170_6(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 28) = v3;
  return result;
}

void OUTLINED_FUNCTION_181_7()
{
  *(v0 - 208) = v4;
  *(v0 - 192) = v5;
  *(v0 - 256) = v3;
  *(v0 - 240) = v2;
  *(v0 - 224) = v1;
}

uint64_t OUTLINED_FUNCTION_182_6()
{

  return sub_19393CAD0();
}

void *OUTLINED_FUNCTION_183_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char __dst, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char __src, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, __int128 a57, __int128 a58)
{
  a57 = a9;
  a58 = a10;

  return memcpy(&__dst, &__src, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_191_3(uint64_t result, __n128 a2)
{
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

__n128 OUTLINED_FUNCTION_192_2()
{
  *&STACK[0x300] = *v0;
  STACK[0x310] = *(v0 + 16);
  STACK[0x318] = v2;
  v3 = *(v0 + 48);
  *&STACK[0x320] = *(v0 + 32);
  *&STACK[0x330] = v3;
  result = *(v0 + 57);
  *(v1 + 217) = result;
  return result;
}

void OUTLINED_FUNCTION_200_4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  sub_1936D1084(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_202_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_193448804(a1, va, v11, v12);
}

uint64_t OUTLINED_FUNCTION_203_3()
{

  return sub_19393CAD0();
}

double OUTLINED_FUNCTION_208_1(double a1, __n128 a2)
{
  result = 0.0;
  *v2 = a2;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

double OUTLINED_FUNCTION_209_1@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *OUTLINED_FUNCTION_224_1@<X0>(char *a1@<X8>, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 1;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 57) = 0u;

  return memcpy(&a2, a1, 0x49uLL);
}

__n128 OUTLINED_FUNCTION_230_3@<Q0>(uint64_t a1@<X8>)
{
  *(v1 + 152) = *(a1 + 8);
  *(v1 + 168) = *(a1 + 24);
  *(v1 + 184) = *(a1 + 40);
  result = *(a1 + 56);
  *(v1 + 200) = result;
  return result;
}

void *OUTLINED_FUNCTION_236_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __dst)
{

  return memcpy(&__dst, &a9, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_238_3(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a27, __n128 a28, char a29)
{
  a27 = a1;
  a28 = a2;

  return sub_1936D0D2C(&a21, &a29);
}

uint64_t OUTLINED_FUNCTION_247_2(uint64_t a1)
{

  return sub_19344E6DC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_258_2()
{
  sub_193437C90(v0);

  return sub_193437C90(v1);
}

uint64_t OUTLINED_FUNCTION_266_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(result + 56) = a3;
  *(result + 40) = a3;
  *(result + 24) = a3;
  *(result + 8) = a3;
  *result = a2;
  return result;
}

void *OUTLINED_FUNCTION_268_1(void *a1)
{

  return memcpy(a1, v1, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_270_2()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_278_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{

  return sub_193448804(&a19, &a9, a3, a4);
}

void *OUTLINED_FUNCTION_285_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __dst, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char __src)
{

  return memcpy(&__dst, &__src, 0x50uLL);
}

void *OUTLINED_FUNCTION_297_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __src)
{

  return memcpy(&a9, &__src, 0x50uLL);
}

void *OUTLINED_FUNCTION_299_1()
{

  return memcpy(v0, (v1 + 16), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_300_1()
{

  return sub_19345012C(0, 0xF000000000000000);
}

void *OUTLINED_FUNCTION_304_1(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_306_0()
{

  return type metadata accessor for ToolKitTranscript();
}

__n128 OUTLINED_FUNCTION_308_1()
{
  result = *(v0 + 64);
  v2 = *(v0 + 80);
  *&STACK[0x5C0] = result;
  *&STACK[0x5D0] = v2;
  return result;
}

void OUTLINED_FUNCTION_314_1(__n128 a1)
{
  v1[7] = a1;
  v1[8] = a1;
  v1[9] = a1;
  v1[10] = a1;
  v1[11] = a1;
}

void OUTLINED_FUNCTION_315_0(__n128 a1)
{
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = a1;
}

void *OUTLINED_FUNCTION_316_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(a1, &a9, 0x50uLL);
}

double OUTLINED_FUNCTION_319_1()
{
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_320_0()
{

  return sub_19393CAB0();
}

void *OUTLINED_FUNCTION_321_1(void *a1)
{

  return memcpy(a1, v1, 0xD8uLL);
}

uint64_t OUTLINED_FUNCTION_323_1()
{
}

void *OUTLINED_FUNCTION_324_0(void *a1)
{

  return memcpy(a1, v1, 0xD8uLL);
}

uint64_t OUTLINED_FUNCTION_326_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(result + 40) = a3;
  *(result + 24) = a3;
  *(result + 8) = a3;
  *result = a2;
  return result;
}

void *OUTLINED_FUNCTION_330_0(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x50uLL);
}

__n128 OUTLINED_FUNCTION_337_0()
{
  result = *v0;
  v3 = v0[1].n128_u64[0];
  *(v1 - 40) = *v0;
  *(v1 - 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_348(uint64_t a1)
{
  sub_193437C90(a1);

  return sub_193437C90(v1);
}

void OUTLINED_FUNCTION_350(__n128 a1)
{
  *(v1 + 104) = a1;
  *(v1 + 88) = a1;
  *(v1 + 72) = a1;
  *(v1 + 56) = a1;
  *(v1 + 40) = a1;
  *(v1 + 24) = a1;
  *(v1 + 8) = a1;
}

void OUTLINED_FUNCTION_354_0(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[2] = a2;
  a1[3] = a2;
  *a1 = a2;
  a1[1] = a2;
}

void *OUTLINED_FUNCTION_355_1()
{

  return memcpy(&STACK[0x288], &STACK[0x368], 0x70uLL);
}

void *OUTLINED_FUNCTION_356_1()
{

  return memcpy(&STACK[0x218], &STACK[0x2F8], 0x70uLL);
}

void *OUTLINED_FUNCTION_357_0()
{

  return memcpy(&STACK[0x2F8], &STACK[0x520], 0x68uLL);
}

void *OUTLINED_FUNCTION_358_1(void *a1)
{

  return memcpy(a1, &STACK[0x3D8], 0x70uLL);
}

void *OUTLINED_FUNCTION_361_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char __dst, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char __src)
{

  return memcpy(&__dst, &__src, 0x50uLL);
}

void OUTLINED_FUNCTION_362_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  sub_1937377A0(a1, a2, v14, a14, v15);
}

void *OUTLINED_FUNCTION_363_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char __dst, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char __src)
{

  return memcpy(&__dst, &__src, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_367_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{

  return sub_193448804(a1, &a30, v31, v30);
}

void *OUTLINED_FUNCTION_368_1(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x50uLL);
}

void *OUTLINED_FUNCTION_369_0()
{

  return memcpy(&STACK[0x290], v0, 0x68uLL);
}

void *OUTLINED_FUNCTION_373_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t __src)
{

  return memcpy(&STACK[0x208], &__src, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_374_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  *(a2 + 8) = a3;
  *(a2 + 24) = a4;
  *(a2 + 40) = a1;
}

uint64_t OUTLINED_FUNCTION_390(uint64_t a1)
{
  sub_193438D88(a1);

  return sub_193438D88(v1);
}

uint64_t OUTLINED_FUNCTION_391()
{
}

void *OUTLINED_FUNCTION_392(void *a1)
{

  return memcpy(a1, &STACK[0x590], 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_393(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_394(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  return sub_193448804(va1, va, a3, a4);
}

void *OUTLINED_FUNCTION_395(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_396()
{
}

uint64_t OUTLINED_FUNCTION_397()
{
}

__n128 OUTLINED_FUNCTION_415()
{
  result = *v0;
  *(v1 + 40) = *(v0 + 16);
  *(v1 + 24) = result;
  *(v1 + 56) = v2;
  return result;
}

double OUTLINED_FUNCTION_424(double a1, __n128 a2)
{
  result = 0.0;
  *v2 = a2;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_435@<Q0>(uint64_t a1@<X8>)
{
  *(v1 + 40) = *(a1 + 40);
  result = *(a1 + 56);
  *(v1 + 56) = result;
  return result;
}

void *OUTLINED_FUNCTION_440(void *__src)
{

  return memcpy((v1 - 248), __src, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_443(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32)
{

  return sub_193450268(a30, a32);
}

uint64_t OUTLINED_FUNCTION_444()
{

  return sub_19393CA30();
}

void *OUTLINED_FUNCTION_445()
{

  return memcpy(&STACK[0x218], (v0 + 112), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_446(uint64_t a1)
{
  sub_193437C90(a1);

  return sub_193437C90(v1);
}

uint64_t OUTLINED_FUNCTION_447()
{
}

void *OUTLINED_FUNCTION_448(void *a1)
{

  return memcpy(a1, (v1 - 192), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_449(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v2, v3);
}

void *OUTLINED_FUNCTION_450(void *a1)
{

  return memcpy(a1, &STACK[0x290], 0x70uLL);
}

void *OUTLINED_FUNCTION_451(void *a1)
{

  return memcpy(a1, (v1 + 112), 0x50uLL);
}

void *OUTLINED_FUNCTION_452(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char __src)
{

  return memcpy(a1, &__src, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_453()
{
}

void *OUTLINED_FUNCTION_455(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_456()
{

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_457()
{
}

uint64_t OUTLINED_FUNCTION_458()
{
}

double OUTLINED_FUNCTION_461(uint64_t a1, int a2)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *a1 = (a2 - 0x7FFFFFFF);
  return result;
}

uint64_t sub_1937422C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511A78);
  v4 = __swift_project_value_buffer(v3, qword_1ED511A78);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.GuardrailResult.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:1 segmentSize:0x40000 protectionClass:0 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_57 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511A78);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42380, &qword_193991430);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.GenerativeExperiences.GuardrailResult.attribute(_:)(void (*a1)(void))
{
  result = sub_1937426D0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193742718(void (*a1)(void))
{
  result = sub_1937426D0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193742748(uint64_t a1)
{
  result = sub_193742770();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193742770()
{
  result = qword_1EAE42388;
  if (!qword_1EAE42388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42388);
  }

  return result;
}

_BYTE *_s15GuardrailResultOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenerativeExperiencesGuardrailResult.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42390, &qword_1939914A8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_193742A68(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE42390, &qword_1939914A8, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE42390, &qword_1939914A8);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_193742A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static GenerativeExperiencesGuardrailResult.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42390, &qword_1939914A8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v29, &qword_1EAE42390, &qword_1939914A8, v30);
  sub_19393C260();
  if (!v20)
  {
    sub_193742BFC(v28, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193742BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static GenerativeExperiencesGuardrailResult.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v36 = v2;
  v37 = v1;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42390, &qword_1939914A8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  if (*sub_193745004() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v15 + 16))(v19, v22, v13);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v23, v24, v25, v26);
    sub_19393C280();
    (*(v15 + 8))(v22, v13);
    if (!v0)
    {
      v28 = v36;
      sub_193742BFC(v12, v36);
      v29 = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = v5;
    *(v27 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t GenerativeExperiencesGuardrailResult.serialize()()
{
  v1 = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42390, &qword_1939914A8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_193742A68(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE42390, &qword_1939914A8, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE42390, &qword_1939914A8);
  return v11;
}

id static GenerativeExperiencesGuardrailResult.columns.getter()
{
  v104 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x696669746E656469, 0xEA00000000007265, 6, 0, v0, 14, 3);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_2_4(inited, v13, v14, v15, v16, v17, v18, v19, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v20[2].n128_u64[0] = sub_19393C850();
  v30 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_13_48();
  OUTLINED_FUNCTION_9_65();
  result = sub_19343D150(v31, v32, v33, v34, v35, 12, 0);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v36 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  v46[2].n128_u64[0] = sub_19393C850();
  v56 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000011, 0x8000000193A14520, 2, 0, v46, 13, 0);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v57 = swift_initStackObject();
  v65 = OUTLINED_FUNCTION_2_4(v57, v58, v59, v60, v61, v62, v63, v64, v102);
  OUTLINED_FUNCTION_2_13(v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  v65[2].n128_u64[0] = sub_19393C850();
  v75 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_9_65();
  result = sub_19343D150(v76, v77, v78, v79, v80, 4, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v81 = swift_initStackObject();
  v89 = OUTLINED_FUNCTION_2_4(v81, v82, v83, v84, v85, v86, v87, v88, v103);
  OUTLINED_FUNCTION_2_13(v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
  v89[2].n128_u64[0] = sub_19393C850();
  v99 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_12_40();
  OUTLINED_FUNCTION_10_55();
  result = sub_19343D150(v100, v101, 6, 0, v89, 14, 3);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v104;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_19374339C()
{
  OUTLINED_FUNCTION_26();
  v49 = v2;
  v50 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_6();
  v48 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  v23 = v6 == 0x696669746E656469 && v4 == 0xEA00000000007265;
  if (v23 || (OUTLINED_FUNCTION_24_5(0x696669746E656469, 0xEA00000000007265) & 1) != 0)
  {
    v24 = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
    sub_193458F7C(v0 + *(v24 + 28), v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      (*(v15 + 32))(v22, v12, v13);
      sub_1934948FC();
      (*(v15 + 8))(v22, v13);
      goto LABEL_26;
    }

    v25 = v12;
    goto LABEL_8;
  }

  v27 = OUTLINED_FUNCTION_13_48();
  v29 = v6 == v27 && v4 == v28;
  if (v29 || (OUTLINED_FUNCTION_24_5(v27, v28) & 1) != 0)
  {
    v30 = *(v0 + *(type metadata accessor for GenerativeExperiencesGuardrailResult(0) + 32));
    if (v30 == 2)
    {
      goto LABEL_9;
    }

    LOBYTE(v51) = v30 & 1;
LABEL_25:
    sub_1934948FC();
    goto LABEL_26;
  }

  v31 = v6 == 0xD000000000000011 && 0x8000000193A14520 == v4;
  if (v31 || (OUTLINED_FUNCTION_24_5(0xD000000000000011, 0x8000000193A14520) & 1) != 0)
  {
    v32 = (v0 + *(type metadata accessor for GenerativeExperiencesGuardrailResult(0) + 36));
    v33 = v32[1];
    if (!v33)
    {
      goto LABEL_9;
    }

    v51 = *v32;
    v52 = v33;
    goto LABEL_25;
  }

  v34 = OUTLINED_FUNCTION_14_2();
  v36 = v6 == v34 && v4 == v35;
  if (v36 || (OUTLINED_FUNCTION_24_5(v34, v35) & 1) != 0)
  {
    v37 = v0 + *(type metadata accessor for GenerativeExperiencesGuardrailResult(0) + 40);
    if (*(v37 + 9))
    {
      goto LABEL_9;
    }

    v38 = *(v37 + 8);
    v51 = *v37;
    LOBYTE(v52) = v38 & 1;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_55();
  v39 = OUTLINED_FUNCTION_12_40();
  v41 = v6 == v39 && v4 == v40;
  if (!v41 && (OUTLINED_FUNCTION_24_5(v39, v40) & 1) == 0)
  {
    sub_19349AB64();
    swift_allocError();
    v45 = v44;
    *v44 = v6;
    v44[1] = v4;
    v44[5] = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v45 + 2);
    sub_193742A68(v0, boxed_opaque_existential_1Tm);
    *(v45 + 48) = 1;
    swift_willThrow();

    goto LABEL_26;
  }

  v42 = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
  v43 = v48;
  sub_193458F7C(v0 + *(v42 + 44), v48);
  if (__swift_getEnumTagSinglePayload(v43, 1, v13) != 1)
  {
    (*(v15 + 32))(v19, v43, v13);
    sub_1934948FC();
    (*(v15 + 8))(v19, v13);
    goto LABEL_26;
  }

  v25 = v43;
LABEL_8:
  sub_19344E6DC(v25, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_9:
  v26 = v49;
  *v49 = 0u;
  v26[1] = 0u;
LABEL_26:
  OUTLINED_FUNCTION_27();
}

uint64_t GenerativeExperiencesGuardrailResult.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B7DC();
  v6 = v2[8];
  OUTLINED_FUNCTION_7_9();
  v7 = (a1 + v2[9]);
  OUTLINED_FUNCTION_10_1();
  v8 = a1 + v2[10];
  OUTLINED_FUNCTION_131(v8);
  v9 = v2[11];
  sub_19344B818();
  *a1 = *sub_193745004();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_193442B60(a1 + v5, &qword_1EAE3AA88, &qword_19394F9C0);
  v11 = sub_19393BE60();
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v11);

  *(a1 + v6) = 2;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  *(v8 + 8) = 256;
  sub_193442B60(a1 + v9, &qword_1EAE3AA88, &qword_19394F9C0);

  return __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v11);
}

BOOL static GenerativeExperiencesGuardrailResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_6();
  v62 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v63 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  v21 = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
  v22 = v21[7];
  v23 = *(v15 + 48);
  v65 = a1;
  sub_193458F7C(a1 + v22, v20);
  v66 = a2;
  sub_193458F7C(a2 + v22, &v20[v23]);
  OUTLINED_FUNCTION_14_1(v20);
  if (v24)
  {
    OUTLINED_FUNCTION_14_1(&v20[v23]);
    if (v24)
    {
      v61 = v6;
      sub_193442B60(v20, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_13;
    }

LABEL_9:
    v25 = v20;
LABEL_10:
    sub_193442B60(v25, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  sub_193458F7C(v20, v14);
  OUTLINED_FUNCTION_14_1(&v20[v23]);
  if (v24)
  {
    (*(v6 + 8))(v14, v4);
    goto LABEL_9;
  }

  v27 = v64;
  (*(v6 + 32))(v64, &v20[v23], v4);
  OUTLINED_FUNCTION_2_65(&qword_1ED5029B8);
  v28 = sub_19393C550();
  v61 = v6;
  v29 = *(v6 + 8);
  v29(v27, v4);
  v29(v14, v4);
  sub_193442B60(v20, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v30 = v21[8];
  v32 = v65;
  v31 = v66;
  v33 = *(v65 + v30);
  v34 = *(v66 + v30);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      return 0;
    }
  }

  else if (v34 == 2 || ((v33 ^ v34) & 1) != 0)
  {
    return 0;
  }

  v35 = v21[9];
  v36 = (v65 + v35);
  v37 = *(v65 + v35 + 8);
  v38 = (v66 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }

    v40 = *v36 == *v38 && v37 == v39;
    if (!v40 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v41 = v21[10];
  v42 = (v32 + v41);
  v43 = *(v32 + v41 + 9);
  v44 = (v31 + v41);
  v45 = *(v31 + v41 + 9);
  if (v43)
  {
    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v46 = *v44;
    v47 = *(v44 + 8);
    v48 = *(v42 + 8);
    v69 = *v42;
    v70 = v48;
    if (v45)
    {
      return 0;
    }

    v67 = v46;
    v68 = v47 & 1;
    sub_193743EB8();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  v49 = v21[11];
  v50 = *(v15 + 48);
  v51 = v32 + v49;
  v52 = v63;
  sub_193458F7C(v51, v63);
  sub_193458F7C(v31 + v49, v52 + v50);
  OUTLINED_FUNCTION_14_1(v52);
  if (!v24)
  {
    v53 = v63;
    sub_193458F7C(v63, v62);
    OUTLINED_FUNCTION_14_1(v53 + v50);
    if (!v54)
    {
      v55 = v61;
      v57 = v63;
      v56 = v64;
      (*(v61 + 32))(v64, v63 + v50, v4);
      OUTLINED_FUNCTION_2_65(&qword_1ED5029B8);
      v58 = v62;
      v59 = sub_19393C550();
      v60 = *(v55 + 8);
      v60(v56, v4);
      v60(v58, v4);
      sub_193442B60(v57, &qword_1EAE3AA88, &qword_19394F9C0);
      return (v59 & 1) != 0;
    }

    (*(v61 + 8))(v62, v4);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_14_1(v63 + v50);
  if (!v24)
  {
LABEL_40:
    v25 = v63;
    goto LABEL_10;
  }

  sub_193442B60(v63, &qword_1EAE3AA88, &qword_19394F9C0);
  return 1;
}

unint64_t sub_193743EB8()
{
  result = qword_1EAE423A0;
  if (!qword_1EAE423A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE423A0);
  }

  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.hash(into:)()
{
  v1 = v0;
  v2 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
  sub_193458F7C(v1 + v15[7], v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v4 + 32))(v7, v14, v2);
    OUTLINED_FUNCTION_103_0();
    v16 = OUTLINED_FUNCTION_1_67(&qword_1EAE3AD68);
    OUTLINED_FUNCTION_33(v16);
    (*(v4 + 8))(v7, v2);
  }

  if (*(v1 + v15[8]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (*(v1 + v15[9] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v17 = (v1 + v15[10]);
  if (*(v17 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v18 = *(v17 + 8);
    v21 = *v17;
    v22 = v18 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_1937441DC();
    sub_19393C540();
  }

  sub_193458F7C(v1 + v15[11], v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  (*(v4 + 32))(v7, v11, v2);
  OUTLINED_FUNCTION_103_0();
  v20 = OUTLINED_FUNCTION_1_67(&qword_1EAE3AD68);
  OUTLINED_FUNCTION_33(v20);
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1937441DC()
{
  result = qword_1EAE423A8;
  if (!qword_1EAE423A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE423A8);
  }

  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.InstanceType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v3 = result == 1 || result == 2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.InstanceType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *static GenerativeExperiencesGuardrailResult.InstanceType.allCases.getter()
{
  v0 = sub_1937444D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = OUTLINED_FUNCTION_7_44(v1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_1937444D0((v1 > 1), v2 + 2, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  if (v3 < (v2 + 3))
  {
    v0 = OUTLINED_FUNCTION_7_44(v1, v0);
  }

  *(v0 + 2) = v2 + 3;
  v8 = &v0[16 * v6];
  *(v8 + 4) = 1;
  v8[40] = 1;
  return v0;
}

uint64_t GenerativeExperiencesGuardrailResult.InstanceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    return 0x65736E6F70736552;
  }

  return 0x74706D6F7250;
}

uint64_t GenerativeExperiencesGuardrailResult.InstanceType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9(0x6E776F6E6B6E55, 0xE700000000000000) & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = a1 == 0x74706D6F7250 && a2 == 0xE600000000000000;
    if (v10 || (OUTLINED_FUNCTION_0_9(0x74706D6F7250, 0xE600000000000000) & 1) != 0)
    {

      v8 = 0;
    }

    else
    {
      if (a1 != 0x65736E6F70736552 || a2 != 0xE800000000000000)
      {
        v9 = OUTLINED_FUNCTION_0_9(0x65736E6F70736552, 0xE800000000000000);

        v8 = v9 & 1;
        goto LABEL_14;
      }

      v8 = 1;
    }

    v9 = 1;
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1937444D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE423B8, &qword_193991558);
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
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1937445D0()
{
  result = qword_1EAE423B0;
  if (!qword_1EAE423B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE423B0);
  }

  return result;
}

uint64_t sub_193744624()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD538);
  __swift_project_value_buffer(v0, qword_1EAEAD538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBD0;
  v6 = v5 + v4;
  v7 = v5 + v4 + dword_1EAEAD570;
  *(v5 + v4) = 1;
  *v7 = "identifier";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  v10 = *(*(v9 - 8) + 104);
  v10(v7, v8, v9);
  v11 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v12 = 2;
  *v11 = "markedUnsafe";
  v11[1] = 12;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v6 + 2 * v2);
  *v15 = 3;
  *v14 = "useCaseIdentifier";
  v14[1] = 17;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v6 + 3 * v2);
  *v18 = 4;
  *v17 = "instanceType";
  v17[1] = 12;
  v19 = OUTLINED_FUNCTION_1_3(v17);
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v6 + 4 * v2);
  *v21 = 5;
  *v20 = "userRequestID";
  *(v20 + 8) = 13;
  *(v20 + 16) = 2;
  (v10)();
  return sub_19393C410();
}

void sub_193744870()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = *(type metadata accessor for GenerativeExperiencesGuardrailResult(0) + 28);
        goto LABEL_7;
      case 2:
        v7 = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
        OUTLINED_FUNCTION_8_2(*(v7 + 32));
        sub_19393C0F0();
        goto LABEL_11;
      case 3:
        v6 = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
        OUTLINED_FUNCTION_8_2(*(v6 + 36));
        sub_19393C200();
        goto LABEL_11;
      case 4:
        type metadata accessor for GenerativeExperiencesGuardrailResult(0);
        sub_1934982A8();
        goto LABEL_11;
      case 5:
        v5 = *(type metadata accessor for GenerativeExperiencesGuardrailResult(0) + 44);
LABEL_7:
        sub_193497890(v0 + v5);
LABEL_11:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1937449A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_1();
  result = sub_193744AD4();
  if (!v4)
  {
    v8 = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
    if (*(v3 + v8[8]) != 2)
    {
      sub_19393C2E0();
    }

    if (*(v3 + v8[9] + 8))
    {
      sub_19393C3C0();
    }

    v9 = (v3 + v8[10]);
    if ((*(v9 + 9) & 1) == 0)
    {
      v10 = *(v9 + 8);
      v11 = *v9;
      v12 = v10 & 1;
      sub_193447324(&v11, 4, a2, &type metadata for GenerativeExperiencesGuardrailResult.InstanceType, a3, &off_1F07ECC78);
    }

    OUTLINED_FUNCTION_11_1();
    return sub_193744C10();
  }

  return result;
}

uint64_t sub_193744AD4()
{
  OUTLINED_FUNCTION_9_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_2_66();
  sub_193458F7C(v2 + *(v5 + 28), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    return sub_193458FEC(v1);
  }

  v7 = OUTLINED_FUNCTION_3_68();
  v8(v7);
  OUTLINED_FUNCTION_15_49();
  v9 = OUTLINED_FUNCTION_10_56();
  return v10(v9);
}

uint64_t sub_193744C10()
{
  OUTLINED_FUNCTION_9_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_2_66();
  sub_193458F7C(v2 + *(v5 + 44), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    return sub_193458FEC(v1);
  }

  v7 = OUTLINED_FUNCTION_3_68();
  v8(v7);
  OUTLINED_FUNCTION_15_49();
  v9 = OUTLINED_FUNCTION_10_56();
  return v10(v9);
}

uint64_t sub_193744D4C(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE423C0;

  return v1;
}

uint64_t sub_193744DE8()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD550);
  __swift_project_value_buffer(v0, qword_1EAEAD550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBB0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + dword_1EAEAD588;
  *v6 = 0;
  *v7 = "InstanceTypeUnknown";
  *(v7 + 8) = 19;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v12 = 1;
  *v11 = "InstanceTypePrompt";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v6 + 2 * v2);
  *v14 = 2;
  *v13 = "InstanceTypeResponse";
  *(v13 + 8) = 20;
  *(v13 + 16) = 2;
  v10();
  return sub_19393C410();
}

uint64_t GenerativeExperiencesGuardrailResult.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeExperiencesGuardrailResult(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t GenerativeExperiencesGuardrailResult.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeExperiencesGuardrailResult(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t GenerativeExperiencesGuardrailResult.identifier.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeExperiencesGuardrailResult(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v1 + 28));
}

uint64_t GenerativeExperiencesGuardrailResult.markedUnsafe.setter(char a1)
{
  result = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.useCaseIdentifier.getter()
{
  type metadata accessor for GenerativeExperiencesGuardrailResult(0);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesGuardrailResult.useCaseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativeExperiencesGuardrailResult(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.instanceType.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for GenerativeExperiencesGuardrailResult(v2);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.instanceType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for GenerativeExperiencesGuardrailResult(0);
  v6 = v1 + *(result + 40);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.userRequestID.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeExperiencesGuardrailResult(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v1 + 44));
}

uint64_t sub_1937454F4@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeExperiencesGuardrailResult.InstanceType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19374551C@<X0>(char **a1@<X8>)
{
  result = static GenerativeExperiencesGuardrailResult.InstanceType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193745550()
{
  sub_19393CAB0();
  v0 = GenerativeExperiencesGuardrailResult.InstanceType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_193745608()
{
  sub_19393CAB0();
  v0 = GenerativeExperiencesGuardrailResult.InstanceType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t GenerativeExperiencesGuardrailResult.hashValue.getter()
{
  sub_19393CAB0();
  GenerativeExperiencesGuardrailResult.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19374571C()
{
  sub_19393CAB0();
  GenerativeExperiencesGuardrailResult.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19374575C()
{
  result = qword_1EAE423D0;
  if (!qword_1EAE423D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE423D8, &qword_1939915C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE423D0);
  }

  return result;
}

unint64_t sub_1937457C8()
{
  result = qword_1EAE423E0;
  if (!qword_1EAE423E0)
  {
    type metadata accessor for GenerativeExperiencesGuardrailResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE423E0);
  }

  return result;
}

uint64_t sub_19374584C()
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198(319);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED506698, MEMORY[0x1E69E6370]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_19349D1FC(319, &qword_1EAE3A858, &type metadata for GenerativeExperiencesGuardrailResult.InstanceType);
        if (v10 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *_s20WritingToolsFeaturesOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_193745A9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511AD8);
  v4 = __swift_project_value_buffer(v3, qword_1ED511AD8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.WritingToolsFeatures.ComposeAndAdjust.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_58 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511AD8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE423E8, &qword_1939917A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.GenerativeExperiences.WritingToolsFeatures.ComposeAndAdjust.attribute(_:)(void (*a1)(void))
{
  result = sub_193745EAC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193745EF4(void (*a1)(void))
{
  result = sub_193745EAC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193745F24(uint64_t a1)
{
  result = sub_193745F4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193745F4C()
{
  result = qword_1EAE423F0;
  if (!qword_1EAE423F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE423F0);
  }

  return result;
}

_BYTE *_s16ComposeAndAdjustOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WritingToolsComposeAndAdjust.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE423F8, &qword_193991828);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_193746248(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE423F8, &qword_193991828, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE423F8, &qword_193991828);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_193746248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WritingToolsComposeAndAdjust();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static WritingToolsComposeAndAdjust.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE423F8, &qword_193991828);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v29, &qword_1EAE423F8, &qword_193991828, v30);
  sub_19393C260();
  if (!v20)
  {
    sub_1937463DC(v28, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1937463DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WritingToolsComposeAndAdjust();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static WritingToolsComposeAndAdjust.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v35 = v2;
  v36 = v1;
  v34 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE423F8, &qword_193991828);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = sub_19393C0C0();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  if (*sub_1937494CC() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    (*(v15 + 16))(v19, v21, v13);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v22, v23, v24, v25);
    sub_19393C280();
    (*(v15 + 8))(v21, v13);
    if (!v0)
    {
      v27 = v35;
      sub_1937463DC(v12, v35);
      v28 = type metadata accessor for WritingToolsComposeAndAdjust();
      v29 = *(v28 + 20);
      sub_19344E6DC(v27 + v29, &qword_1EAE3A9E8, &qword_19394F800);
      v30 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v31 + 16))(v27 + v29, v34, v30);
      __swift_storeEnumTagSinglePayload(v27 + v29, 0, 1, v30);
      v32 = *(v28 + 24);
      sub_19344E6DC(v27 + v32, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v36, v27 + v32);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v26 = v5;
    *(v26 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t WritingToolsComposeAndAdjust.serialize()()
{
  v1 = type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE423F8, &qword_193991828);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_193746248(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE423F8, &qword_193991828, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE423F8, &qword_193991828);
  return v11;
}

id static WritingToolsComposeAndAdjust.columns.getter()
{
  v135 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x6D617473656D6974, 0xE900000000000070, 3, 0, v0, 0, 2);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_2_4(inited, v14, v15, v16, v17, v18, v19, v20, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v31);
  result = OUTLINED_FUNCTION_3_5(0x74706D6F7270, 0xE600000000000000);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  v32 = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_2_4(v32, v33, v34, v35, v36, v37, v38, v39, v130);
  OUTLINED_FUNCTION_5_10(v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v50 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v50);
  v51 = OUTLINED_FUNCTION_105();
  result = sub_19343D150(v51, 0xEA00000000007265, 6, 0, v0, 14, 3);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  v52 = swift_initStackObject();
  v60 = OUTLINED_FUNCTION_2_4(v52, v53, v54, v55, v56, v57, v58, v59, v131);
  OUTLINED_FUNCTION_5_10(v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v70 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v70);
  result = OUTLINED_FUNCTION_3_5(0x6369706F74, 0xE500000000000000);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v132;
  v71 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
  v81 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v81);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000015, 0x8000000193A2B230);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v132;
  v82 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
  v92 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v92);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000013, 0x8000000193A2B250);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v93 = swift_initStackObject();
  v101 = OUTLINED_FUNCTION_2_4(v93, v94, v95, v96, v97, v98, v99, v100, v132);
  OUTLINED_FUNCTION_5_10(v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
  v111 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v111);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v112, v113, v114, v115, v0, 4, 0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v116 = swift_initStackObject();
  v124 = OUTLINED_FUNCTION_2_4(v116, v117, v118, v119, v120, v121, v122, v123, v133);
  *(v124 + 16) = v134;
  *(v124 + 32) = sub_19393C850();
  v125 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v126, v127, v128, v129, v124, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v135;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_193746C3C()
{
  OUTLINED_FUNCTION_26();
  v68 = v2;
  v69 = v1;
  v72 = v0;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  v10 = sub_19393BE60();
  OUTLINED_FUNCTION_1_0();
  v65 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - v17;
  v19 = sub_19393BE00();
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v26 = v25 - v24;
  v66 = v6;
  v67 = v4;
  v27 = v6 == v23 && v4 == 0xE900000000000070;
  if (v27 || (OUTLINED_FUNCTION_10_28(v23, 0xE900000000000070) & 1) != 0)
  {
    v28 = type metadata accessor for WritingToolsComposeAndAdjust();
    sub_1934486F8(v72 + *(v28 + 28), v18, &qword_1EAE3A9E8, &qword_19394F800);
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
    {
      (*(v21 + 32))(v26, v18, v19);
      sub_1934948FC();
      (*(v21 + 8))(v26, v19);
      goto LABEL_20;
    }

    v29 = &qword_1EAE3A9E8;
    v30 = &qword_19394F800;
    v31 = v18;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_14_49();
  v35 = v27 && v34 == 0xE600000000000000;
  if (v35 || (OUTLINED_FUNCTION_10_28(v33, 0xE600000000000000) & 1) != 0)
  {
    v36 = *(type metadata accessor for WritingToolsComposeAndAdjust() + 32);
LABEL_17:
    v37 = (v72 + v36);
    v38 = *(v72 + v36 + 8);
    if (!v38)
    {
      goto LABEL_9;
    }

    v70 = *v37;
    v71 = v38;
LABEL_19:
    sub_1934948FC();
    goto LABEL_20;
  }

  v39 = OUTLINED_FUNCTION_105();
  v41 = v66 == v39 && v67 == v40;
  if (v41 || (OUTLINED_FUNCTION_10_28(v39, 0xEA00000000007265) & 1) != 0)
  {
    v42 = type metadata accessor for WritingToolsComposeAndAdjust();
    sub_1934486F8(v72 + *(v42 + 36), v9, &qword_1EAE3AA88, &qword_19394F9C0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      v43 = v65;
      (*(v65 + 32))(v15, v9, v10);
      sub_1934948FC();
      (*(v43 + 8))(v15, v10);
      goto LABEL_20;
    }

    v29 = &qword_1EAE3AA88;
    v30 = &qword_19394F9C0;
    v31 = v9;
LABEL_8:
    sub_19344E6DC(v31, v29, v30);
LABEL_9:
    v32 = v68;
    *v68 = 0u;
    v32[1] = 0u;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_14_49();
  v46 = v27 && v45 == 0xE500000000000000;
  if (v46 || (OUTLINED_FUNCTION_10_28(v44, 0xE500000000000000) & 1) != 0)
  {
    v36 = *(type metadata accessor for WritingToolsComposeAndAdjust() + 40);
    goto LABEL_17;
  }

  v47 = v66 == 0xD000000000000015 && 0x8000000193A2B230 == v67;
  if (v47 || (OUTLINED_FUNCTION_10_28(0xD000000000000015, 0x8000000193A2B230) & 1) != 0)
  {
    v36 = *(type metadata accessor for WritingToolsComposeAndAdjust() + 44);
    goto LABEL_17;
  }

  v48 = v66 == 0xD000000000000013 && 0x8000000193A2B250 == v67;
  if (!v48 && (OUTLINED_FUNCTION_10_28(0xD000000000000013, 0x8000000193A2B250) & 1) == 0)
  {
    OUTLINED_FUNCTION_14_49();
    v54 = v27 && v53 == 0xE600000000000000;
    if (v54 || (OUTLINED_FUNCTION_10_28(v52, 0xE600000000000000) & 1) != 0)
    {
      v55 = type metadata accessor for WritingToolsComposeAndAdjust();
      OUTLINED_FUNCTION_10_57(*(v55 + 52));
    }

    else
    {
      OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_14_49();
      v58 = v27 && v57 == 0xE700000000000000;
      if (!v58 && (OUTLINED_FUNCTION_10_28(v56, 0xE700000000000000) & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_11();
        swift_allocError();
        v61 = v60;
        v62 = v67;
        *v60 = v66;
        v60[1] = v62;
        v60[5] = type metadata accessor for WritingToolsComposeAndAdjust();
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v61 + 2);
        sub_193746248(v72, boxed_opaque_existential_1Tm);
        *(v61 + 48) = 1;
        swift_willThrow();

        goto LABEL_20;
      }

      v59 = type metadata accessor for WritingToolsComposeAndAdjust();
      OUTLINED_FUNCTION_10_57(*(v59 + 56));
    }

    goto LABEL_19;
  }

  v49 = (v72 + *(type metadata accessor for WritingToolsComposeAndAdjust() + 48));
  v50 = v49[1];
  if (v50)
  {
    v70 = *v49;
    v71 = v50;
    sub_1934948FC();
  }

  else
  {
    v51 = v68;
    *v68 = 0u;
    v51[1] = 0u;
  }

LABEL_20:
  OUTLINED_FUNCTION_27();
}

uint64_t WritingToolsComposeAndAdjust.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for WritingToolsComposeAndAdjust();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B814();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = v2[9];
  sub_19344B7DC();
  v15 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v13 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1937494CC();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);

  *v6 = 0;
  v6[1] = 0;
  sub_19344E6DC(a1 + v7, &qword_1EAE3AA88, &qword_19394F9C0);
  v9 = sub_19393BE60();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v9);

  *v15 = 0;
  v15[1] = 0;
  *v14 = 0;
  v14[1] = 0;
  *v13 = 0;
  v13[1] = 0;
  v11 = a1 + v2[13];
  *v11 = 0;
  v11[8] = 0;
  v12 = a1 + v2[14];
  *v12 = 0;
  v12[8] = 0;
  return result;
}

uint64_t static WritingToolsComposeAndAdjust.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v85 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v82 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v80 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v79 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v79 - v12;
  v13 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v88 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v19);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v79 - v25;
  v86 = type metadata accessor for WritingToolsComposeAndAdjust();
  v87 = a1;
  v27 = *(v86 + 28);
  v28 = *(v23 + 56);
  sub_1934486F8(a1 + v27, v26, &qword_1EAE3A9E8, &qword_19394F800);
  sub_1934486F8(a2 + v27, &v26[v28], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v26, 1, v13);
  if (v29)
  {
    OUTLINED_FUNCTION_6_3(&v26[v28], 1, v13);
    if (v29)
    {
      sub_19344E6DC(v26, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_14;
    }

LABEL_9:
    v30 = &qword_1EAE3B968;
    v31 = &qword_193972430;
    v32 = v26;
LABEL_10:
    sub_19344E6DC(v32, v30, v31);
    goto LABEL_11;
  }

  sub_1934486F8(v26, v22, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(&v26[v28], 1, v13);
  if (v29)
  {
    (*(v88 + 8))(v22, v13);
    goto LABEL_9;
  }

  v35 = v88;
  (*(v88 + 32))(v18, &v26[v28], v13);
  OUTLINED_FUNCTION_19_9();
  sub_193652BF4(v36, v37, MEMORY[0x1E6969550]);
  v38 = sub_19393C550();
  v39 = *(v35 + 8);
  v39(v18, v13);
  v39(v22, v13);
  sub_19344E6DC(v26, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v38 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v41 = v86;
  v40 = v87;
  OUTLINED_FUNCTION_3_49();
  if (v44)
  {
    if (!v42)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_5(v43);
    v47 = v29 && v45 == v46;
    if (!v47 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v42)
  {
    goto LABEL_11;
  }

  v48 = v41[9];
  v49 = v84;
  v50 = *(v83 + 48);
  sub_1934486F8(v40 + v48, v84, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(a2 + v48, v49 + v50, &qword_1EAE3AA88, &qword_19394F9C0);
  v51 = v85;
  OUTLINED_FUNCTION_6_3(v49, 1, v85);
  if (!v29)
  {
    v52 = v81;
    sub_1934486F8(v49, v81, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_6_3(v49 + v50, 1, v51);
    if (!v53)
    {
      v54 = v82;
      v55 = v49 + v50;
      v56 = v80;
      (*(v82 + 32))(v80, v55, v51);
      OUTLINED_FUNCTION_20_34();
      sub_193652BF4(v57, v58, MEMORY[0x1E69695C8]);
      v59 = sub_19393C550();
      v60 = *(v54 + 8);
      v60(v56, v51);
      v60(v52, v51);
      sub_19344E6DC(v49, &qword_1EAE3AA88, &qword_19394F9C0);
      if ((v59 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_33;
    }

    (*(v82 + 8))(v52, v51);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_6_3(v49 + v50, 1, v51);
  if (!v29)
  {
LABEL_31:
    v30 = &qword_1EAE3B4E8;
    v31 = &unk_193952CF0;
    v32 = v49;
    goto LABEL_10;
  }

  sub_19344E6DC(v49, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_33:
  OUTLINED_FUNCTION_3_49();
  if (v63)
  {
    if (!v61)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_5(v62);
    v66 = v29 && v64 == v65;
    if (!v66 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v61)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_49();
  if (v69)
  {
    if (!v67)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_5(v68);
    v72 = v29 && v70 == v71;
    if (!v72 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v67)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_49();
  if (v75)
  {
    if (!v73)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_5(v74);
    v78 = v29 && v76 == v77;
    if (!v78 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v73)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_0_61(v41[13]);
  sub_193747A98();
  if (sub_19393C550())
  {
    OUTLINED_FUNCTION_0_61(v41[14]);
    sub_193747AEC();
    v33 = sub_19393C550();
    return v33 & 1;
  }

LABEL_11:
  v33 = 0;
  return v33 & 1;
}

unint64_t sub_193747A98()
{
  result = qword_1EAE42408;
  if (!qword_1EAE42408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42408);
  }

  return result;
}

unint64_t sub_193747AEC()
{
  result = qword_1EAE42410;
  if (!qword_1EAE42410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42410);
  }

  return result;
}

uint64_t WritingToolsComposeAndAdjust.hash(into:)()
{
  v1 = v0;
  sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v33 = v3;
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v32 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v17);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v21 = type metadata accessor for WritingToolsComposeAndAdjust();
  sub_1934486F8(v1 + v21[7], v20, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v20, 1, v10);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v12 + 32))(v16, v20, v10);
    sub_19393CAD0();
    OUTLINED_FUNCTION_19_9();
    sub_193652BF4(v23, v24, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v12 + 8))(v16, v10);
  }

  v25 = v34;
  if (*(v1 + v21[8] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934486F8(v1 + v21[9], v9, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v9, 1, v25);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v27 = v32;
    v26 = v33;
    (*(v33 + 32))(v32, v9, v25);
    sub_19393CAD0();
    OUTLINED_FUNCTION_20_34();
    sub_193652BF4(v28, v29, MEMORY[0x1E69695B8]);
    sub_19393C540();
    (*(v26 + 8))(v27, v25);
  }

  if (*(v1 + v21[10] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v21[11] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v21[12] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_17_29(v21[13]);
  sub_193747F30();
  sub_19393C540();
  OUTLINED_FUNCTION_17_29(v21[14]);
  sub_193747F84();
  return sub_19393C540();
}

unint64_t sub_193747F30()
{
  result = qword_1EAE42418;
  if (!qword_1EAE42418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42418);
  }

  return result;
}

unint64_t sub_193747F84()
{
  result = qword_1EAE42420;
  if (!qword_1EAE42420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42420);
  }

  return result;
}

void WritingToolsComposeAndAdjust.Result.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

char *static WritingToolsComposeAndAdjust.Result.allCases.getter()
{
  sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42440, &qword_193991938);
  OUTLINED_FUNCTION_17_27();
  if (!(!v9 & v8))
  {
    v26 = OUTLINED_FUNCTION_39(v7);
    OUTLINED_FUNCTION_84_2(v26, v27, v28, v29, &qword_1EAE42440, &qword_193991938);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_15_5(v3, v4, v5, v6);
  if (v15 != v16)
  {
    v30 = OUTLINED_FUNCTION_39(v14);
    sub_1934B0FCC(v30, v1, 1, v31, &qword_1EAE42440, &qword_193991938);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_10_36(v10, v11, v12, v13);
  if (v15 != v16)
  {
    v32 = OUTLINED_FUNCTION_39(v21);
    v17 = OUTLINED_FUNCTION_84_2(v32, v33, v34, v35, &qword_1EAE42440, &qword_193991938);
    v20 = v17;
  }

  OUTLINED_FUNCTION_20_27(v17, v18, v19, v20);
  v23 = *(v22 + 3);
  if (v2 + 4 > (v23 >> 1))
  {
    v36 = OUTLINED_FUNCTION_39(v23);
    v22 = sub_1934B0FCC(v36, v2 + 4, 1, v37, &qword_1EAE42440, &qword_193991938);
  }

  *(v22 + 2) = v2 + 4;
  v24 = &v22[16 * v0];
  *(v24 + 4) = 2;
  v24[40] = 1;
  return v22;
}

uint64_t WritingToolsComposeAndAdjust.Result.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  v1 = 0x65746172656E6547;
  if (*v0 != 1)
  {
    v1 = 0x64656761676E45;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656E6547746F4ELL;
  }
}

uint64_t WritingToolsComposeAndAdjust.Result.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v9 = v2 == 0x72656E6547746F4ELL && v1 == 0xEC00000064657461;
  if (v9 || (OUTLINED_FUNCTION_0_9(0x72656E6547746F4ELL, 0xEC00000064657461) & 1) != 0)
  {

    v7 = 0;
LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  v10 = v2 == 0x65746172656E6547 && v1 == 0xE900000000000064;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x65746172656E6547, 0xE900000000000064) & 1) != 0)
  {

    v7 = 1;
    goto LABEL_13;
  }

  if (v2 == 0x64656761676E45 && v1 == 0xE700000000000000)
  {

    v8 = 1;
    v7 = 2;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x64656761676E45, 0xE700000000000000);

    v7 = 2;
    if ((v8 & 1) == 0)
    {
      v7 = 0;
    }
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

void WritingToolsComposeAndAdjust.Feature.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t WritingToolsComposeAndAdjust.Feature.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static WritingToolsComposeAndAdjust.Feature.allCases.getter()
{
  sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42438, &qword_193991930);
  OUTLINED_FUNCTION_17_27();
  if (!(!v7 & v6))
  {
    v22 = OUTLINED_FUNCTION_39(v5);
    OUTLINED_FUNCTION_84_2(v22, v23, v24, v25, &qword_1EAE42438, &qword_193991930);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_15_5(v1, v2, v3, v4);
  if (v13 != v14)
  {
    v26 = OUTLINED_FUNCTION_39(v12);
    sub_1934B0FCC(v26, v0, 1, v27, &qword_1EAE42438, &qword_193991930);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_10_36(v8, v9, v10, v11);
  if (v13 != v14)
  {
    v28 = OUTLINED_FUNCTION_39(v19);
    v15 = OUTLINED_FUNCTION_84_2(v28, v29, v30, v31, &qword_1EAE42438, &qword_193991930);
    v18 = v15;
  }

  OUTLINED_FUNCTION_20_27(v15, v16, v17, v18);
  return v20;
}

uint64_t WritingToolsComposeAndAdjust.Feature.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    return 0x65646E456E65704FLL;
  }

  return 0x65736F706D6F43;
}

uint64_t WritingToolsComposeAndAdjust.Feature.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = v2 == 0x65736F706D6F43 && v1 == 0xE700000000000000;
    if (v9 || (OUTLINED_FUNCTION_0_9(0x65736F706D6F43, 0xE700000000000000) & 1) != 0)
    {

      v7 = 0;
    }

    else
    {
      if (v2 != 0x65646E456E65704FLL || v1 != 0xEF7473756A644164)
      {
        v8 = OUTLINED_FUNCTION_0_9(0x65646E456E65704FLL, 0xEF7473756A644164);

        v7 = v8 & 1;
        goto LABEL_14;
      }

      v7 = 1;
    }

    v8 = 1;
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

unint64_t sub_193748580()
{
  result = qword_1EAE42428;
  if (!qword_1EAE42428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42428);
  }

  return result;
}

unint64_t sub_1937485D8()
{
  result = qword_1EAE42430;
  if (!qword_1EAE42430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42430);
  }

  return result;
}

void sub_19374862C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAD568);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v7, xmmword_1939526B0);
  *v1 = 1;
  *v0 = "timestamp";
  *(v0 + 8) = 9;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v6);
  *v11 = 2;
  *v10 = "prompt";
  v10[1] = 6;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v6);
  *v14 = 3;
  *v13 = "identifier";
  v13[1] = 10;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 3 * v6);
  *v17 = 4;
  *v16 = "topic";
  v16[1] = 5;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v6);
  *v20 = 5;
  *v19 = "userInterfaceLanguage";
  v19[1] = 21;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 5 * v6);
  *v23 = 6;
  *v22 = "userSetRegionFormat";
  v22[1] = 19;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 6 * v6);
  *v26 = 7;
  *v25 = "result";
  v25[1] = v27;
  v28 = OUTLINED_FUNCTION_41(v25);
  (v9)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v1 + 7 * v6);
  *v30 = 8;
  *v29 = "feature";
  *(v29 + 8) = 7;
  *(v29 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937488DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  while (1)
  {
    v10 = sub_19393C0E0();
    if (v7 || (v11 & 1) != 0)
    {
      break;
    }

    switch(v10)
    {
      case 1:
        v12 = type metadata accessor for WritingToolsComposeAndAdjust();
        sub_1934976E4(v3 + *(v12 + 28), 2020175477, 0xE400000000000000, a2, a3);
        goto LABEL_9;
      case 2:
      case 4:
      case 5:
      case 6:
        type metadata accessor for WritingToolsComposeAndAdjust();
        sub_19393C200();
        goto LABEL_9;
      case 3:
        v13 = type metadata accessor for WritingToolsComposeAndAdjust();
        sub_193497890(v3 + *(v13 + 36));
LABEL_9:
        v7 = 0;
        continue;
      case 7:
        OUTLINED_FUNCTION_12_41();
        sub_1934982A8();
        v14 = *(OUTLINED_FUNCTION_6_55() + 52);
        goto LABEL_11;
      case 8:
        OUTLINED_FUNCTION_12_41();
        sub_1934982A8();
        v14 = *(OUTLINED_FUNCTION_6_55() + 56);
LABEL_11:
        v15 = v3 + v14;
        *v15 = v5;
        *(v15 + 8) = v6 & 1;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_193748AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_193748CB0(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = type metadata accessor for WritingToolsComposeAndAdjust();
    OUTLINED_FUNCTION_5_20();
    if (v10)
    {
      OUTLINED_FUNCTION_2_10(*v11, v10, 2);
    }

    sub_193748E70(v3, a1, a2, a3);
    OUTLINED_FUNCTION_5_20();
    if (v12)
    {
      OUTLINED_FUNCTION_2_10(*v13, v12, 4);
    }

    OUTLINED_FUNCTION_5_20();
    if (v14)
    {
      OUTLINED_FUNCTION_2_10(*v15, v14, 5);
    }

    OUTLINED_FUNCTION_5_20();
    if (v16)
    {
      OUTLINED_FUNCTION_2_10(*v17, v16, 6);
    }

    v18 = v3 + *(v9 + 52);
    v19 = *v18;
    v20 = *(v18 + 8);
    v28 = *v18;
    v29 = v20;
    sub_193747A98();
    if ((sub_19393C550() & 1) == 0)
    {
      v28 = v19;
      v29 = v20;
      OUTLINED_FUNCTION_20_40(&v28, 7, v21, &type metadata for WritingToolsComposeAndAdjust.Result, v22, &off_1F07ECF20);
    }

    v23 = v3 + *(v9 + 56);
    v24 = *v23;
    v25 = *(v23 + 8);
    v28 = *v23;
    v29 = v25;
    sub_193747AEC();
    result = sub_19393C550();
    if ((result & 1) == 0)
    {
      v28 = v24;
      v29 = v25;
      return OUTLINED_FUNCTION_20_40(&v28, 8, v26, &type metadata for WritingToolsComposeAndAdjust.Feature, v27, &off_1F07ECF48);
    }
  }

  return result;
}

uint64_t sub_193748CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_77(a1, a2, a3, a4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WritingToolsComposeAndAdjust();
  sub_193448758(v6 + *(v15 + 28), v9, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v9, 1, v5) == 1)
  {
    return sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
  }

  (*(v11 + 32))(v14, v9, v5);
  sub_193451F04(v14, 1, 2020175477, 0xE400000000000000, v4, v17[3]);
  return (*(v11 + 8))(v14, v5);
}

uint64_t sub_193748E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_77(a1, a2, a3, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WritingToolsComposeAndAdjust();
  sub_193448758(v5 + *(v14 + 36), v8, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
  {
    return sub_19344E6DC(v8, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  (*(v10 + 32))(v13, v8, v4);
  sub_19344652C();
  return (*(v10 + 8))(v13, v4);
}

uint64_t sub_193749024(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE42448;

  return v1;
}

void sub_1937490C0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAD580);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v7, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "ResultUnknown";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v6);
  *v11 = 1;
  *v10 = "NotGenerated";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v6);
  *v13 = 2;
  *v12 = "Generated";
  *(v12 + 8) = 9;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v6);
  *v15 = 3;
  *v14 = "Engaged";
  *(v14 + 8) = 7;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937492D4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD598);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_19394FBB0;
  v8 = (v7 + v6);
  v9 = v7 + v6 + dword_1EAEAD5D0;
  *v8 = 0;
  *v9 = "FeatureUnknown";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = OUTLINED_FUNCTION_3_1(v8 + v4);
  *v15 = 1;
  *v14 = "Compose";
  *(v14 + 8) = 7;
  *(v14 + 16) = 2;
  v13();
  v16 = OUTLINED_FUNCTION_3_1(v8 + 2 * v4);
  *v17 = 2;
  *v16 = "OpenEndedAdjust";
  *(v16 + 8) = 15;
  *(v16 + 16) = 2;
  v13();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t WritingToolsComposeAndAdjust.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 20));
}

uint64_t type metadata accessor for WritingToolsComposeAndAdjust()
{
  result = qword_1EAE90D70;
  if (!qword_1EAE90D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WritingToolsComposeAndAdjust.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v0 + 24));
}

uint64_t WritingToolsComposeAndAdjust.timestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 28));
}

uint64_t WritingToolsComposeAndAdjust.prompt.getter()
{
  type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WritingToolsComposeAndAdjust.prompt.setter()
{
  OUTLINED_FUNCTION_8_49();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WritingToolsComposeAndAdjust.identifier.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 36));
}

uint64_t WritingToolsComposeAndAdjust.topic.getter()
{
  type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WritingToolsComposeAndAdjust.topic.setter()
{
  OUTLINED_FUNCTION_8_49();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WritingToolsComposeAndAdjust.userInterfaceLanguage.getter()
{
  type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WritingToolsComposeAndAdjust.userInterfaceLanguage.setter()
{
  OUTLINED_FUNCTION_8_49();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WritingToolsComposeAndAdjust.userSetRegionFormat.getter()
{
  type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WritingToolsComposeAndAdjust.userSetRegionFormat.setter()
{
  OUTLINED_FUNCTION_8_49();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void WritingToolsComposeAndAdjust.result.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_2_52(*(v0 + 52));
}

uint64_t WritingToolsComposeAndAdjust.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for WritingToolsComposeAndAdjust();
  v5 = v1 + *(result + 52);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

void WritingToolsComposeAndAdjust.feature.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_2_52(*(v0 + 56));
}

uint64_t WritingToolsComposeAndAdjust.feature.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for WritingToolsComposeAndAdjust();
  v5 = v1 + *(result + 56);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_193749BC4@<X0>(uint64_t *a1@<X8>)
{
  result = WritingToolsComposeAndAdjust.Result.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193749BEC@<X0>(char **a1@<X8>)
{
  result = static WritingToolsComposeAndAdjust.Result.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193749C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193749D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193749E5C@<X0>(uint64_t *a1@<X8>)
{
  result = WritingToolsComposeAndAdjust.Feature.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193749E84@<X0>(uint64_t *a1@<X8>)
{
  result = static WritingToolsComposeAndAdjust.Feature.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t WritingToolsComposeAndAdjust.hashValue.getter()
{
  sub_19393CAB0();
  WritingToolsComposeAndAdjust.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193749FC4()
{
  sub_19393CAB0();
  WritingToolsComposeAndAdjust.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19374A06C()
{
  result = qword_1EAE42478;
  if (!qword_1EAE42478)
  {
    type metadata accessor for WritingToolsComposeAndAdjust();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42478);
  }

  return result;
}

uint64_t sub_19374A0F0()
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_193658134();
    v1 = v5;
    if (v6 > 0x3F)
    {
      return v1;
    }

    sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

_BYTE *_s11DecisioningOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s8TrustKitOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19374A3B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511B38);
  v4 = __swift_project_value_buffer(v3, qword_1ED511B38);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TrustKit.Decisioning.TKModelMessages.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_59 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511B38);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42480, &qword_193991C80);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TrustKit.Decisioning.TKModelMessages.attribute(_:)(void (*a1)(void))
{
  result = sub_19374A7C4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19374A80C(void (*a1)(void))
{
  result = sub_19374A7C4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19374A83C(uint64_t a1)
{
  result = sub_19374A864();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19374A864()
{
  result = qword_1ED502FB0;
  if (!qword_1ED502FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502FB0);
  }

  return result;
}

_BYTE *_s15TKModelMessagesOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TrustKitTKModelMessages.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for TrustKitTKModelMessages();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42488, &qword_193991CF8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_19374AB6C(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE42488, &qword_193991CF8, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE42488, &qword_193991CF8);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_19374AB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrustKitTKModelMessages();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TrustKitTKModelMessages.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42488, &qword_193991CF8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v7, &qword_1EAE42488, &qword_193991CF8, v8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_19374AD10(v6, a1);
  }

  return result;
}

uint64_t sub_19374AD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrustKitTKModelMessages();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TrustKitTKModelMessages.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42488, &qword_193991CF8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_19374C12C() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_19374AD10(v11, v36);
      v29 = type metadata accessor for TrustKitTKModelMessages();
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t TrustKitTKModelMessages.serialize()()
{
  v1 = type metadata accessor for TrustKitTKModelMessages();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42488, &qword_193991CF8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_19374AB6C(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE42488, &qword_193991CF8, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE42488, &qword_193991CF8);
  return v11;
}

id static TrustKitTKModelMessages.columns.getter()
{
  v75 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v11 = OUTLINED_FUNCTION_11_43();
  result = OUTLINED_FUNCTION_3_5(v11, 0xEB00000000644965);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_2_4(inited, v14, v15, v16, v17, v18, v19, v20, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v21[2].n128_u64[0] = sub_19393C850();
  v31 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v32 = OUTLINED_FUNCTION_8_50();
  result = OUTLINED_FUNCTION_3_5(v32, v33);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  v34 = swift_initStackObject();
  v42 = OUTLINED_FUNCTION_2_4(v34, v35, v36, v37, v38, v39, v40, v41, v73);
  OUTLINED_FUNCTION_2_13(v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  v42[2].n128_u64[0] = sub_19393C850();
  v52 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v53 = OUTLINED_FUNCTION_12_42();
  result = OUTLINED_FUNCTION_3_5(v53, 0xEA0000000000656ELL);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v54 = swift_initStackObject();
  v62 = OUTLINED_FUNCTION_2_4(v54, v55, v56, v57, v58, v59, v60, v61, v74);
  OUTLINED_FUNCTION_2_13(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  v62[2].n128_u64[0] = sub_19393C850();
  v72 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x656C61636F6CLL, 0xE600000000000000, 2, 0, v62, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v75;
  }

LABEL_9:
  __break(1u);
  return result;
}

int *sub_19374B418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_11_43();
  v9 = a1 == v7 && a2 == v8;
  if (v9 || (OUTLINED_FUNCTION_59_0(v7, v8) & 1) != 0)
  {
    result = type metadata accessor for TrustKitTKModelMessages();
    v11 = result[7];
  }

  else
  {
    v12 = OUTLINED_FUNCTION_8_50();
    v14 = a1 == v12 && a2 == v13;
    if (v14 || (OUTLINED_FUNCTION_59_0(v12, v13) & 1) != 0)
    {
      result = type metadata accessor for TrustKitTKModelMessages();
      v11 = result[8];
    }

    else
    {
      v15 = OUTLINED_FUNCTION_12_42();
      v16 = a1 == v15 && a2 == 0xEA0000000000656ELL;
      if (v16 || (OUTLINED_FUNCTION_59_0(v15, 0xEA0000000000656ELL) & 1) != 0)
      {
        result = type metadata accessor for TrustKitTKModelMessages();
        v11 = result[9];
      }

      else
      {
        v17 = a1 == 0x6572656767697274 && a2 == 0xEE0073656C755264;
        if (v17 || (OUTLINED_FUNCTION_59_0(0x6572656767697274, 0xEE0073656C755264) & 1) != 0 || (a1 == 0x45736973656D656ELL ? (v18 = a2 == 0xED000073726F7272) : (v18 = 0), v18 || (OUTLINED_FUNCTION_59_0(0x45736973656D656ELL, 0xED000073726F7272) & 1) != 0 || (a1 == 0xD000000000000017 ? (v19 = 0x8000000193A33480 == a2) : (v19 = 0), v19 || (OUTLINED_FUNCTION_59_0(0xD000000000000017, 0x8000000193A33480) & 1) != 0 || (a1 == 0xD000000000000016 ? (v20 = 0x8000000193A334A0 == a2) : (v20 = 0), v20 || (OUTLINED_FUNCTION_59_0(0xD000000000000016, 0x8000000193A334A0) & 1) != 0))))
        {
          type metadata accessor for TrustKitTKModelMessages();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
          return sub_1934948FC();
        }

        v21 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
        if (!v21 && (OUTLINED_FUNCTION_59_0(0x656C61636F6CLL, 0xE600000000000000) & 1) == 0)
        {
          sub_19349AB64();
          swift_allocError();
          v23 = v22;
          *v22 = a1;
          v22[1] = a2;
          v22[5] = type metadata accessor for TrustKitTKModelMessages();
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v23 + 2);
          sub_19374AB6C(v3, boxed_opaque_existential_1Tm);
          *(v23 + 48) = 1;
          swift_willThrow();
        }

        result = type metadata accessor for TrustKitTKModelMessages();
        v11 = result[14];
      }
    }
  }

  if (*(v3 + v11 + 8))
  {
    return sub_1934948FC();
  }

  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t TrustKitTKModelMessages.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TrustKitTKModelMessages();
  v3 = v2[5];
  sub_193657C90(a1 + v3);
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_19374C12C();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;

  v11 = MEMORY[0x1E69E7CC0];
  *(a1 + v2[10]) = MEMORY[0x1E69E7CC0];
  *(a1 + v2[11]) = v11;
  *(a1 + v2[12]) = v11;
  *(a1 + v2[13]) = v11;
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t static TrustKitTKModelMessages.== infix(_:_:)()
{
  v0 = type metadata accessor for TrustKitTKModelMessages();
  OUTLINED_FUNCTION_2_5();
  if (v3)
  {
    if (!v1)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v2);
    v6 = v6 && v4 == v5;
    if (!v6 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_5();
  if (v9)
  {
    if (!v7)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v8);
    v12 = v6 && v10 == v11;
    if (!v12 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_5();
  if (v15)
  {
    if (!v13)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v14);
    v18 = v6 && v16 == v17;
    if (!v18 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (OUTLINED_FUNCTION_4_64(v0[10]) & 1) != 0 && (OUTLINED_FUNCTION_4_64(v0[11]) & 1) != 0 && (OUTLINED_FUNCTION_4_64(v0[12]) & 1) != 0 && (OUTLINED_FUNCTION_4_64(v0[13]))
  {
    OUTLINED_FUNCTION_2_5();
    if (v21)
    {
      if (v19)
      {
        OUTLINED_FUNCTION_5(v20);
        v24 = v6 && v22 == v23;
        if (v24 || (sub_19393CA30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v19)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t TrustKitTKModelMessages.hash(into:)()
{
  v1 = type metadata accessor for TrustKitTKModelMessages();
  if (*(v0 + v1[7] + 8))
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_67();
  }

  else
  {
    sub_19393CAD0();
  }

  if (*(v0 + v1[8] + 8))
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_67();
  }

  else
  {
    sub_19393CAD0();
  }

  if (*(v0 + v1[9] + 8))
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_67();
  }

  else
  {
    sub_19393CAD0();
  }

  OUTLINED_FUNCTION_3_69(v1[10]);
  OUTLINED_FUNCTION_3_69(v1[11]);
  OUTLINED_FUNCTION_3_69(v1[12]);
  OUTLINED_FUNCTION_3_69(v1[13]);
  if (!*(v0 + v1[14] + 8))
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t sub_19374BAD4()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD5B0);
  __swift_project_value_buffer(v0, qword_1EAEAD5B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1939526B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "signatureId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_3_1(v5 + v2);
  *v11 = 2;
  *v10 = "uafVersion";
  v10[1] = 10;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v5 + 2 * v2);
  *v14 = 3;
  *v13 = "recordZone";
  v13[1] = 10;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v5 + 3 * v2);
  *v17 = 4;
  *v16 = "triggeredRules";
  v16[1] = 14;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v5 + 4 * v2);
  *v20 = 5;
  *v19 = "nemesisErrors";
  v19[1] = 13;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v5 + 5 * v2);
  *v23 = 6;
  *v22 = "filteringTriggeredRules";
  v22[1] = 23;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v5 + 6 * v2);
  *v26 = 7;
  *v25 = "filteringNemesisErrors";
  v25[1] = 22;
  v27 = OUTLINED_FUNCTION_41(v25);
  (v9)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v5 + 7 * v2);
  *v29 = 8;
  *v28 = "locale";
  *(v28 + 8) = 6;
  *(v28 + 16) = 2;
  (v9)();
  return sub_19393C410();
}

uint64_t sub_19374BDC8()
{
  v1 = v0;
  while (1)
  {
    result = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v4 = *(type metadata accessor for TrustKitTKModelMessages() + 28);
        goto LABEL_11;
      case 2:
        v4 = *(type metadata accessor for TrustKitTKModelMessages() + 32);
        goto LABEL_11;
      case 3:
        v4 = *(type metadata accessor for TrustKitTKModelMessages() + 36);
        goto LABEL_11;
      case 4:
        v5 = *(type metadata accessor for TrustKitTKModelMessages() + 40);
        goto LABEL_14;
      case 5:
        v5 = *(type metadata accessor for TrustKitTKModelMessages() + 44);
        goto LABEL_14;
      case 6:
        v5 = *(type metadata accessor for TrustKitTKModelMessages() + 48);
        goto LABEL_14;
      case 7:
        v5 = *(type metadata accessor for TrustKitTKModelMessages() + 52);
LABEL_14:
        OUTLINED_FUNCTION_8_2(v5);
        sub_19393C1B0();
        goto LABEL_15;
      case 8:
        v4 = *(type metadata accessor for TrustKitTKModelMessages() + 56);
LABEL_11:
        OUTLINED_FUNCTION_8_2(v4);
        sub_19393C200();
LABEL_15:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_19374BEE8()
{
  v1 = v0;
  v2 = type metadata accessor for TrustKitTKModelMessages();
  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    OUTLINED_FUNCTION_2_7(*v4, v3, 1);
    v1 = v0;
  }

  if (!v1)
  {
    OUTLINED_FUNCTION_16_4();
    if (!v5 || (OUTLINED_FUNCTION_2_7(*v6, v5, 2), !v0))
    {
      OUTLINED_FUNCTION_16_4();
      if (!v7 || (OUTLINED_FUNCTION_2_7(*v8, v7, 3), !v0))
      {
        v9 = OUTLINED_FUNCTION_8_51(v2[10]);
        if (!v10 || (OUTLINED_FUNCTION_4_65(v9, 4), !v0))
        {
          v11 = OUTLINED_FUNCTION_8_51(v2[11]);
          if (!v12 || (OUTLINED_FUNCTION_4_65(v11, 5), !v0))
          {
            v13 = OUTLINED_FUNCTION_8_51(v2[12]);
            if (!v14 || (OUTLINED_FUNCTION_4_65(v13, 6), !v0))
            {
              v15 = OUTLINED_FUNCTION_8_51(v2[13]);
              if (!v16 || (OUTLINED_FUNCTION_4_65(v15, 7), !v0))
              {
                OUTLINED_FUNCTION_16_4();
                if (v17)
                {
                  OUTLINED_FUNCTION_2_7(*v18, v17, 8);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_19374C028(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE42490;

  return v1;
}

uint64_t sub_19374C06C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE90D80 != -1)
  {
    OUTLINED_FUNCTION_0_93(&qword_1EAE90D80);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEAD5B0);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t type metadata accessor for TrustKitTKModelMessages()
{
  result = qword_1ED50BEE0;
  if (!qword_1ED50BEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TrustKitTKModelMessages.signatureId.getter()
{
  type metadata accessor for TrustKitTKModelMessages();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TrustKitTKModelMessages.signatureId.setter()
{
  OUTLINED_FUNCTION_4_66();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.uafVersion.getter()
{
  type metadata accessor for TrustKitTKModelMessages();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TrustKitTKModelMessages.uafVersion.setter()
{
  OUTLINED_FUNCTION_4_66();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.recordZone.getter()
{
  type metadata accessor for TrustKitTKModelMessages();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TrustKitTKModelMessages.recordZone.setter()
{
  OUTLINED_FUNCTION_4_66();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.triggeredRules.getter()
{
  type metadata accessor for TrustKitTKModelMessages();
}

uint64_t TrustKitTKModelMessages.triggeredRules.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_68() + 40);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.nemesisErrors.getter()
{
  type metadata accessor for TrustKitTKModelMessages();
}

uint64_t TrustKitTKModelMessages.nemesisErrors.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_68() + 44);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.filteringTriggeredRules.getter()
{
  type metadata accessor for TrustKitTKModelMessages();
}

uint64_t TrustKitTKModelMessages.filteringTriggeredRules.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_68() + 48);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.filteringNemesisErrors.getter()
{
  type metadata accessor for TrustKitTKModelMessages();
}

uint64_t TrustKitTKModelMessages.filteringNemesisErrors.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_68() + 52);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.locale.getter()
{
  type metadata accessor for TrustKitTKModelMessages();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TrustKitTKModelMessages.locale.setter()
{
  OUTLINED_FUNCTION_4_66();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.hashValue.getter()
{
  sub_19393CAB0();
  TrustKitTKModelMessages.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19374C874()
{
  sub_19393CAB0();
  TrustKitTKModelMessages.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19374C8B4()
{
  result = qword_1EAE424A0;
  if (!qword_1EAE424A0)
  {
    type metadata accessor for TrustKitTKModelMessages();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE424A0);
  }

  return result;
}

uint64_t sub_19374C938()
{
  sub_19349D140(319);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198(319);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_19374CA64(319, &qword_1ED508290, MEMORY[0x1E69E6720]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_19374CA64(319, qword_1ED507ED8, MEMORY[0x1E69E62F8]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_19374CA64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *_s22WalletPaymentsCommerceOwst_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_19374CB7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511D88);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t sub_19374CD3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511DD0);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_19374CE2C()
{
  result = sub_1934359AC();
  qword_1ED511CE8 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511CF0 = result;
  return result;
}

uint64_t sub_19374CE80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511DE8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t sub_19374D038()
{
  OUTLINED_FUNCTION_62_2();
  sub_1937554C8();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374D0A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511E00);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_19374D194()
{
  result = sub_1934359AC();
  qword_1ED511CF8 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D00 = result;
  return result;
}

uint64_t sub_19374D1F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511E18);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrder.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_75_18();
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v0 | 2, v1, v2);
  sub_19393BFC0();
  v3 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_19374D40C()
{
  OUTLINED_FUNCTION_62_2();
  sub_193755474();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374D488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511E30);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_19374D578()
{
  result = sub_1934359AC();
  qword_1ED511D08 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D10 = result;
  return result;
}

uint64_t sub_19374D5CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511E48);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderEmail.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_75_18();
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v0 | 7, v1, v2);
  sub_19393BFC0();
  v3 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_19374D7F0()
{
  OUTLINED_FUNCTION_62_2();
  sub_193755420();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374D86C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511E60);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_19374D95C()
{
  result = sub_1934359AC();
  qword_1ED511D18 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D20 = result;
  return result;
}

uint64_t sub_19374D9B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511E78);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t sub_19374DB68()
{
  OUTLINED_FUNCTION_62_2();
  sub_1937553CC();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374DBE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511E90);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_19374DCD4()
{
  result = sub_1934359AC();
  qword_1ED511D28 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D30 = result;
  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderFields.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_75_18();
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v0 | 7, v1, v2);
  sub_19393BFC0();
  v3 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_19374DE98()
{
  OUTLINED_FUNCTION_62_2();
  sub_193755378();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374DF14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511EC0);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_19374E004()
{
  result = sub_1934359AC();
  qword_1ED511D38 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D40 = result;
  return result;
}

uint64_t sub_19374E058()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511ED8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderPayment.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v1 | v0, v2, v3);
  sub_19393BFC0();
  v4 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_19374E288()
{
  OUTLINED_FUNCTION_62_2();
  sub_193755324();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374E304()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511EF0);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_19374E3F4()
{
  result = sub_1934359AC();
  qword_1ED511D48 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D50 = result;
  return result;
}

uint64_t sub_19374E448()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511F08);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderPerson.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_75_18();
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v0 | 8, v1, v2);
  sub_19393BFC0();
  v3 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_19374E668()
{
  OUTLINED_FUNCTION_62_2();
  sub_1937552D0();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374E6E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511F20);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_19374E7D4()
{
  result = sub_1934359AC();
  qword_1ED511D58 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D60 = result;
  return result;
}

uint64_t sub_19374E828()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511F38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderShipmentFullFillmentInfo.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v1 | v0, v2, v3);
  sub_19393BFC0();
  v4 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_19374EA58()
{
  OUTLINED_FUNCTION_62_2();
  sub_19375527C();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374EAD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511F50);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_19374EBC4()
{
  result = sub_1934359AC();
  qword_1ED511D68 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D70 = result;
  return result;
}

uint64_t sub_19374EC18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511F68);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderTransaction.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v1 | v0, v2, v3);
  sub_19393BFC0();
  v4 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_19374EE48()
{
  OUTLINED_FUNCTION_62_2();
  sub_193755228();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374EEC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_14();
  v2 = sub_19393BE60();
  __swift_allocate_value_buffer(v2, qword_1ED511F80);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_19374EFB4()
{
  result = sub_1934359AC();
  qword_1ED511D78 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D80 = result;
  return result;
}

uint64_t sub_19374F014(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_14();
  v5 = sub_19393BE60();
  __swift_allocate_value_buffer(v5, a2);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v7)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = OUTLINED_FUNCTION_22_9();
    return v9(v8);
  }

  return result;
}

uint64_t sub_19374F100@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_98_1();
  if (!v4)
  {
    swift_once();
  }

  a1(0);
  OUTLINED_FUNCTION_104_2();
  __swift_project_value_buffer(v5, v6);
  OUTLINED_FUNCTION_80_3();
  v8 = *(v7 + 16);

  return v8(a2);
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletTrackedOrderFields.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_75_18();
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v0 | 0xE, v1, v2);
  sub_19393BFC0();
  v3 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_19374F2C4()
{
  OUTLINED_FUNCTION_62_2();
  sub_1937551D4();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_19374F328()
{
  v0 = sub_193490E70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = OUTLINED_FUNCTION_36_2(v1);
  }

  v3 = sub_1937554C8();
  *(v0 + 2) = v2 + 1;
  v4 = &v0[16 * v2];
  *(v4 + 4) = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletCascadeInsert;
  *(v4 + 5) = v3;
  v5 = *(v0 + 3);
  if ((v2 + 2) > (v5 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v5);
  }

  v6 = sub_193755474();
  *(v0 + 2) = v2 + 2;
  OUTLINED_FUNCTION_50_4(v6, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrder);
  if ((v2 + 3) > (v7 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v7);
  }

  v8 = sub_193755420();
  *(v0 + 2) = v2 + 3;
  OUTLINED_FUNCTION_56_1(v8, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderEmail);
  if ((v2 + 4) > (v9 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v9);
  }

  v10 = sub_1937553CC();
  *(v0 + 2) = v2 + 4;
  OUTLINED_FUNCTION_50_4(v10, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderExtractedView);
  if ((v2 + 5) > (v11 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v11);
  }

  v12 = sub_193755378();
  *(v0 + 2) = v2 + 5;
  OUTLINED_FUNCTION_56_1(v12, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderFields);
  if ((v2 + 6) > (v13 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v13);
  }

  v14 = sub_193755324();
  *(v0 + 2) = v2 + 6;
  OUTLINED_FUNCTION_50_4(v14, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderPayment);
  if ((v2 + 7) > (v15 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v15);
  }

  v16 = sub_1937552D0();
  *(v0 + 2) = v2 + 7;
  OUTLINED_FUNCTION_56_1(v16, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderPerson);
  if ((v2 + 8) > (v17 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v17);
  }

  v18 = sub_19375527C();
  *(v0 + 2) = v2 + 8;
  OUTLINED_FUNCTION_50_4(v18, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderShipmentFullFillmentInfo);
  v20 = v2 + 9;
  if ((v2 + 9) > (v19 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v19);
  }

  v21 = sub_193755228();
  *(v0 + 2) = v20;
  OUTLINED_FUNCTION_56_1(v21, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderTransaction);
  if ((v2 + 10) > (v22 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v22);
  }

  result = sub_1937551D4();
  *(v0 + 2) = v2 + 10;
  v24 = &v0[16 * v20];
  *(v24 + 4) = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletTrackedOrderFields;
  *(v24 + 5) = result;
  qword_1ED511C90 = v0;
  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.views.getter()
{
  if (qword_1ED511C88 != -1)
  {
    OUTLINED_FUNCTION_84_14(&qword_1ED511C88);
  }
}

unint64_t sub_19374F59C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = a1 == 0xD000000000000013 && 0x8000000193991E70 == a2;
  if (v6 || (OUTLINED_FUNCTION_59_0(0xD000000000000013, 0x8000000193991E70) & 1) != 0)
  {
    v8 = OUTLINED_FUNCTION_26_3();
    result = sub_19375551C(v8);
  }

  else
  {
    v10 = a1 == 0x724F74656C6C6157 && a2 == 0xEB00000000726564;
    if (v10 || (OUTLINED_FUNCTION_59_0(0x724F74656C6C6157, 0xEB00000000726564) & 1) != 0)
    {
      v11 = OUTLINED_FUNCTION_26_3();
      result = sub_193755550(v11);
    }

    else
    {
      v12 = a1 == 0xD000000000000010 && 0x8000000193991E90 == a2;
      if (v12 || (OUTLINED_FUNCTION_59_0(0xD000000000000010, 0x8000000193991E90) & 1) != 0)
      {
        v13 = OUTLINED_FUNCTION_26_3();
        result = sub_193755584(v13);
      }

      else
      {
        v14 = a1 == 0xD000000000000018 && 0x8000000193991EB0 == a2;
        if (v14 || (OUTLINED_FUNCTION_59_0(0xD000000000000018, 0x8000000193991EB0) & 1) != 0)
        {
          v15 = OUTLINED_FUNCTION_26_3();
          result = sub_1937555B8(v15);
        }

        else
        {
          v16 = a1 == 0xD000000000000011 && 0x8000000193991ED0 == a2;
          if (v16 || (v17 = OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_59_0(v17, v18) & 1) != 0))
          {
            v19 = OUTLINED_FUNCTION_26_3();
            result = sub_1937555EC(v19);
          }

          else
          {
            v20 = a1 == 0xD000000000000012 && 0x8000000193991EF0 == a2;
            if (v20 || (OUTLINED_FUNCTION_59_0(0xD000000000000012, 0x8000000193991EF0) & 1) != 0)
            {
              v21 = OUTLINED_FUNCTION_26_3();
              result = sub_193755620(v21);
            }

            else
            {
              v22 = a1 == 0xD000000000000011 && 0x8000000193991F10 == a2;
              if (v22 || (v23 = OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_59_0(v23, v24) & 1) != 0))
              {
                v25 = OUTLINED_FUNCTION_26_3();
                result = sub_193755654(v25);
              }

              else
              {
                v26 = a1 == 0xD000000000000023 && 0x8000000193991F30 == a2;
                if (v26 || (OUTLINED_FUNCTION_59_0(0xD000000000000023, 0x8000000193991F30) & 1) != 0)
                {
                  v27 = OUTLINED_FUNCTION_26_3();
                  result = sub_193755688(v27);
                }

                else
                {
                  v28 = a1 == 0xD000000000000016 && 0x8000000193991F60 == a2;
                  if (v28 || (OUTLINED_FUNCTION_59_0(0xD000000000000016, 0x8000000193991F60) & 1) != 0)
                  {
                    v29 = OUTLINED_FUNCTION_26_3();
                    result = sub_1937556BC(v29);
                  }

                  else
                  {
                    v30 = a1 == 0xD000000000000018 && 0x8000000193991F80 == a2;
                    if (!v30 && (OUTLINED_FUNCTION_59_0(0xD000000000000018, 0x8000000193991F80) & 1) == 0)
                    {
                      return a3();
                    }

                    v31 = OUTLINED_FUNCTION_26_3();
                    result = sub_1937556F0(v31);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (!v3)
  {
  }

  return result;
}

void sub_19374F86C()
{
  OUTLINED_FUNCTION_117();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_42_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_43_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_14();
  sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_31();
  v11 = sub_19393BF10();
  __swift_allocate_value_buffer(v11, qword_1ED511FB0);
  __swift_project_value_buffer(v11, qword_1ED511FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v12 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v12);
  OUTLINED_FUNCTION_54();
  v13 = OUTLINED_FUNCTION_108_14();
  OUTLINED_FUNCTION_126_10(v13, xmmword_19394FBC0);
  v14 = OUTLINED_FUNCTION_125_7();
  (qword_1ED511FB0[0])(v14);
  v77 = sub_19393BF40();
  v15 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_63_0(v15, v16, v17, v18);
  v76 = sub_19393BEF0();
  v19 = OUTLINED_FUNCTION_20_1();
  v23 = OUTLINED_FUNCTION_8_52(v19, v20, v21, v22);
  OUTLINED_FUNCTION_63_0(v23, v24, v25, v11);
  v75 = sub_19393BEB0();
  v26 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_116_14();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  v30 = OUTLINED_FUNCTION_103_13();
  v31 = OUTLINED_FUNCTION_119_11(v30, *MEMORY[0x1E698F198]);
  (qword_1ED511FB0[0])(v31);
  v32 = OUTLINED_FUNCTION_19_6();
  v35 = OUTLINED_FUNCTION_7_45(v32, v33, v34, v77);
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v76);
  v38 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v11);
  v41 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v75);
  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_23_39();
  OUTLINED_FUNCTION_106_15(v44, v45, v46, v47);
  v48 = OUTLINED_FUNCTION_91_14();
  v9(v48);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v77);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v76);
  v55 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v11);
  v58 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v75);
  OUTLINED_FUNCTION_105_16();
  v61 = OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_56_19(v61);
  OUTLINED_FUNCTION_39_27();
  OUTLINED_FUNCTION_82_14();
  v62 = OUTLINED_FUNCTION_129_11();
  v9(v62);
  v63 = OUTLINED_FUNCTION_15_7();
  v66 = OUTLINED_FUNCTION_7_45(v63, v64, v65, v77);
  v69 = OUTLINED_FUNCTION_8_52(v66, v67, v68, v76);
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v11);
  v72 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_39_27();
  OUTLINED_FUNCTION_113_11();
  OUTLINED_FUNCTION_76_15(24);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletCascadeInsert.metadata.modify()
{
  if (qword_1ED511C98 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED511FB0);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19374FD2C()
{
  OUTLINED_FUNCTION_117();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v121 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_53_1();
  v138 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_70_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_74();
  v14 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_35_31();
  v18 = sub_19393BF10();
  v135 = v18;
  __swift_allocate_value_buffer(v18, qword_1ED511FC8);
  v129 = __swift_project_value_buffer(v18, qword_1ED511FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v19 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v19);
  v137 = *(v20 + 72);
  OUTLINED_FUNCTION_54();
  v21 = OUTLINED_FUNCTION_108_14();
  v128 = v21;
  *(v21 + 16) = xmmword_19394FBD0;
  v22 = v21 + v2;
  v127 = *MEMORY[0x1E698F1A0];
  v23 = *(v16 + 104);
  v133 = v16 + 104;
  v123 = v14;
  v23(v1);
  v136 = sub_19393BF40();
  v24 = OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_63_0(v24, v25, v26, v27);
  v132 = sub_19393BEF0();
  v28 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_63_0(v32, v33, v34, v135);
  v35 = sub_19393BEB0();
  v130 = v6;
  v131 = v35;
  v36 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  v134 = v1;
  v121[0] = v0;
  OUTLINED_FUNCTION_92_0(v40, v41, v42, v43, v1, v0);
  v125 = *MEMORY[0x1E698F198];
  v44 = v125;
  (v23)(v1, v125, v14);
  v45 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v136);
  OUTLINED_FUNCTION_45();
  v48 = v132;
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v132);
  OUTLINED_FUNCTION_31_34();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  v56 = v131;
  v57 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v56);
  OUTLINED_FUNCTION_1_68();
  v60 = v137;
  v126 = v22;
  OUTLINED_FUNCTION_23_39();
  v61 = v134;
  v62 = v121[0];
  OUTLINED_FUNCTION_107_10(v63, v64, v65, v66, v134, v121[0]);
  v122 = v22 + 2 * v60;
  v67 = v44;
  v68 = v123;
  (v23)(v61, v67, v123);
  v124 = v23;
  OUTLINED_FUNCTION_45();
  v69 = v136;
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v136);
  v73 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v48);
  v76 = OUTLINED_FUNCTION_19_6();
  v77 = v135;
  __swift_storeEnumTagSinglePayload(v76, v78, v79, v135);
  v80 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v56);
  v83 = OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_56_19(v83);
  OUTLINED_FUNCTION_52_7();
  v84 = v134;
  sub_19393BF20();
  v121[1] = "b3-b497-95e2c8154e9a";
  v122 = 3 * v137;
  v85 = v68;
  (v23)(v84, v125, v68);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v69);
  v89 = OUTLINED_FUNCTION_38_4();
  v90 = v132;
  v93 = OUTLINED_FUNCTION_8_52(v89, v91, v92, v132);
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v77);
  v96 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v131);
  OUTLINED_FUNCTION_124_9();
  OUTLINED_FUNCTION_68_20();
  v99 = OUTLINED_FUNCTION_51_2(21);
  v100 = v134;
  OUTLINED_FUNCTION_92_0(v99, v101, v102, v103, v134, v62);
  (v124)(v100, v127, v85);
  v104 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v136);
  v107 = OUTLINED_FUNCTION_38_4();
  v110 = OUTLINED_FUNCTION_8_52(v107, v108, v109, v90);
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v135);
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
  OUTLINED_FUNCTION_124_9();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_92_0(v117, v118, v119, v120, v100, v62);
  OUTLINED_FUNCTION_134_12();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrder.metadata.modify()
{
  if (qword_1ED511CA0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED511FC8);
  return OUTLINED_FUNCTION_64_0();
}

void sub_193750364()
{
  OUTLINED_FUNCTION_117();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_53_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_43_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_43_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_74();
  v343 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_35_31();
  v12 = sub_19393BF10();
  __swift_allocate_value_buffer(v12, qword_1ED511FE0);
  __swift_project_value_buffer(v12, qword_1ED511FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v13 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v13);
  v347 = *(v14 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v342 = OUTLINED_FUNCTION_108_14();
  *(v342 + 16) = xmmword_193991E80;
  v346 = v342 + v16;
  v17 = *(v10 + 104);
  (v17)(v0, *MEMORY[0x1E698F1A0], v343);
  v345 = sub_19393BF40();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_63_0(v18, v19, v20, v21);
  v22 = sub_19393BEF0();
  v23 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v26 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_63_0(v26, v27, v28, v12);
  v29 = sub_19393BEB0();
  v30 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_52_18();
  v344 = *MEMORY[0x1E698F198];
  v17(v0);
  v33 = OUTLINED_FUNCTION_39_4();
  v36 = OUTLINED_FUNCTION_7_45(v33, v34, v35, v345);
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v22);
  v39 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v12);
  v42 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v29);
  OUTLINED_FUNCTION_116_14();
  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1(v45, v46, v47, v48, v49, v50);
  (v17)(v0, v344, v343);
  v51 = OUTLINED_FUNCTION_39_4();
  v54 = OUTLINED_FUNCTION_7_45(v51, v52, v53, v345);
  OUTLINED_FUNCTION_140_10(v54, v55, v56);
  v57 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v12);
  v60 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v29);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1(v63, v64, v65, v66, v67, v68);
  v69 = OUTLINED_FUNCTION_95_15(3 * v347);
  (v17)(v69, v344, v343);
  v70 = OUTLINED_FUNCTION_39_4();
  v73 = OUTLINED_FUNCTION_7_45(v70, v71, v72, v345);
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v345);
  v76 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v12);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1(v83, v84, v85, v86, v87, v88);
  OUTLINED_FUNCTION_82_14();
  v90 = OUTLINED_FUNCTION_95_15(v346 + 4 * v89);
  (v17)(v90, v344, v343);
  v91 = OUTLINED_FUNCTION_39_4();
  v94 = OUTLINED_FUNCTION_7_45(v91, v92, v93, v345);
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v22);
  v97 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v12);
  v100 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v29);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1(v103, v104, v105, v106, v107, v108);
  OUTLINED_FUNCTION_82_14();
  v110 = OUTLINED_FUNCTION_95_15(5 * v109);
  (v17)(v110, v344, v343);
  v111 = OUTLINED_FUNCTION_39_4();
  v114 = OUTLINED_FUNCTION_7_45(v111, v112, v113, v345);
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v22);
  OUTLINED_FUNCTION_24_40();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
  OUTLINED_FUNCTION_31_34();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v124);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1(v125, v126, v127, v128, v129, v130);
  OUTLINED_FUNCTION_159_0();
  v131 = OUTLINED_FUNCTION_114_13("emailFromDisplay");
  (v17)(v131, v344, v343);
  v132 = OUTLINED_FUNCTION_39_4();
  v135 = OUTLINED_FUNCTION_7_45(v132, v133, v134, v345);
  OUTLINED_FUNCTION_140_10(v135, v136, v137);
  v138 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v138, v139, v140, v12);
  v141 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v29);
  OUTLINED_FUNCTION_116_14();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1(v144, v145, v146, v147, v148, v149);
  v150 = OUTLINED_FUNCTION_95_15(7 * v347);
  (v17)(v150, v344, v343);
  v151 = OUTLINED_FUNCTION_39_4();
  v154 = OUTLINED_FUNCTION_7_45(v151, v152, v153, v345);
  v157 = OUTLINED_FUNCTION_8_52(v154, v155, v156, v343);
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v12);
  v160 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v160, v161, v162, v29);
  OUTLINED_FUNCTION_116_14();
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1(v163, v164, v165, v166, v167, v168);
  OUTLINED_FUNCTION_82_14();
  v170 = OUTLINED_FUNCTION_95_15(v346 + 8 * v169);
  (v17)(v170, v344, v343);
  v171 = OUTLINED_FUNCTION_39_4();
  v174 = OUTLINED_FUNCTION_7_45(v171, v172, v173, v345);
  __swift_storeEnumTagSinglePayload(v174, v175, v176, v22);
  v177 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v177, v178, v179, v12);
  v180 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v29);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1(v183, v184, v185, v186, v187, v188);
  OUTLINED_FUNCTION_82_14();
  v190 = OUTLINED_FUNCTION_95_15(9 * v189);
  (v17)(v190, v344, v343);
  v191 = OUTLINED_FUNCTION_39_4();
  v194 = OUTLINED_FUNCTION_7_45(v191, v192, v193, v345);
  __swift_storeEnumTagSinglePayload(v194, v195, v196, v22);
  OUTLINED_FUNCTION_24_40();
  v201 = OUTLINED_FUNCTION_8_52(v197, v198, v199, v200);
  __swift_storeEnumTagSinglePayload(v201, v202, v203, v29);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1(v204, v205, v206, v207, v208, v209);
  OUTLINED_FUNCTION_133_11();
  (v17)(v0, v344, v343);
  v210 = OUTLINED_FUNCTION_39_4();
  v213 = OUTLINED_FUNCTION_7_45(v210, v211, v212, v345);
  OUTLINED_FUNCTION_140_10(v213, v214, v215);
  v216 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v216, v217, v218, v12);
  v219 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v219, v220, v221, v29);
  OUTLINED_FUNCTION_123_14();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1(v222, v223, v224, v225, v226, v227);
  v228 = OUTLINED_FUNCTION_95_15(v346 + 11 * v347);
  (v17)(v228, v344, v343);
  v229 = OUTLINED_FUNCTION_39_4();
  v232 = OUTLINED_FUNCTION_7_45(v229, v230, v231, v345);
  __swift_storeEnumTagSinglePayload(v232, v233, v234, v17);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v235, v236, v237, v238);
  v239 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v239, v240, v241, v29);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1(v242, v243, v244, v245, v246, v247);
  v248 = OUTLINED_FUNCTION_95_15(v346 + 12 * v347);
  (v17)(v248, v344, v343);
  v249 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v249, v250, v251, v345);
  v252 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v252, v253, v254, v22);
  v255 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v255, v256, v257, v12);
  v258 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v258, v259, v260, v29);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_12_43();
  sub_19393BF20();
  v261 = OUTLINED_FUNCTION_114_13("spotlightUniqueIdentifier");
  (v17)(v261, v344, v343);
  v262 = OUTLINED_FUNCTION_20_1();
  v265 = OUTLINED_FUNCTION_8_52(v262, v263, v264, v345);
  __swift_storeEnumTagSinglePayload(v265, v266, v267, v22);
  v268 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v268, v269, v270, v12);
  v271 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v271, v272, v273, v29);
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_77_16(v274, v275, v276, v277, v278);
  (v17)(v0, v344, v343);
  v279 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v279, v280, v281, v345);
  v282 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v282, v283, v284, v22);
  v285 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v285, v286, v287, v12);
  v288 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v288, v289, v290, v29);
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_67_13();
  (v17)(v0, v344, v343);
  v291 = OUTLINED_FUNCTION_39_4();
  v294 = OUTLINED_FUNCTION_7_45(v291, v292, v293, v345);
  v297 = OUTLINED_FUNCTION_8_52(v294, v295, v296, v22);
  __swift_storeEnumTagSinglePayload(v297, v298, v299, v12);
  v300 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v300, v301, v302, v29);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_52_18();
  v303 = OUTLINED_FUNCTION_114_13("origTrackingNumber");
  (v17)(v303, v344, v343);
  v304 = OUTLINED_FUNCTION_39_4();
  v307 = OUTLINED_FUNCTION_7_45(v304, v305, v306, v345);
  __swift_storeEnumTagSinglePayload(v307, v308, v309, v22);
  v310 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v310, v311, v312, v12);
  v313 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v313, v314, v315, v29);
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_67_13();
  (v17)(v0, v344, v343);
  v316 = OUTLINED_FUNCTION_39_4();
  v319 = OUTLINED_FUNCTION_7_45(v316, v317, v318, v345);
  __swift_storeEnumTagSinglePayload(v319, v320, v321, v22);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v322, v323, v324, v325);
  OUTLINED_FUNCTION_32_29();
  __swift_storeEnumTagSinglePayload(v326, v327, v328, v329);
  OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_51_2(16);
  OUTLINED_FUNCTION_67_13();
  (v17)(v0, v344, v343);
  v330 = OUTLINED_FUNCTION_39_4();
  v333 = OUTLINED_FUNCTION_7_45(v330, v331, v332, v345);
  __swift_storeEnumTagSinglePayload(v333, v334, v335, v22);
  v336 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v336, v337, v338, v12);
  v339 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v339, v340, v341, v29);
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_51_2(16);
  OUTLINED_FUNCTION_67_13();
  OUTLINED_FUNCTION_134_12();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderEmail.metadata.modify()
{
  if (qword_1ED511CA8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED511FE0);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19375120C()
{
  OUTLINED_FUNCTION_117();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_42_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_43_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_14();
  sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_31();
  v11 = sub_19393BF10();
  __swift_allocate_value_buffer(v11, qword_1ED511FF8);
  __swift_project_value_buffer(v11, qword_1ED511FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v12 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v12);
  OUTLINED_FUNCTION_54();
  v13 = OUTLINED_FUNCTION_108_14();
  OUTLINED_FUNCTION_126_10(v13, xmmword_19394FBC0);
  v14 = OUTLINED_FUNCTION_125_7();
  (qword_1ED511FF8[0])(v14);
  v77 = sub_19393BF40();
  v15 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_63_0(v15, v16, v17, v18);
  v76 = sub_19393BEF0();
  v19 = OUTLINED_FUNCTION_20_1();
  v23 = OUTLINED_FUNCTION_8_52(v19, v20, v21, v22);
  OUTLINED_FUNCTION_63_0(v23, v24, v25, v11);
  v75 = sub_19393BEB0();
  v26 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_116_14();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  v30 = OUTLINED_FUNCTION_103_13();
  v31 = OUTLINED_FUNCTION_119_11(v30, *MEMORY[0x1E698F198]);
  (qword_1ED511FF8[0])(v31);
  v32 = OUTLINED_FUNCTION_19_6();
  v35 = OUTLINED_FUNCTION_7_45(v32, v33, v34, v77);
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v76);
  v38 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v11);
  v41 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v75);
  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_23_39();
  OUTLINED_FUNCTION_106_15(v44, v45, v46, v47);
  v48 = OUTLINED_FUNCTION_91_14();
  v9(v48);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v77);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v76);
  v55 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v11);
  v58 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v75);
  OUTLINED_FUNCTION_105_16();
  v61 = OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_56_19(v61);
  OUTLINED_FUNCTION_39_27();
  OUTLINED_FUNCTION_82_14();
  v62 = OUTLINED_FUNCTION_129_11();
  v9(v62);
  v63 = OUTLINED_FUNCTION_15_7();
  v66 = OUTLINED_FUNCTION_7_45(v63, v64, v65, v77);
  v69 = OUTLINED_FUNCTION_8_52(v66, v67, v68, v76);
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v11);
  v72 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_39_27();
  OUTLINED_FUNCTION_113_11();
  OUTLINED_FUNCTION_76_15(20);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderExtractedView.metadata.modify()
{
  if (qword_1ED511CB0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED511FF8);
  return OUTLINED_FUNCTION_64_0();
}

void sub_1937516CC()
{
  OUTLINED_FUNCTION_117();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_70_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_42_0();
  v153 = v0;
  v10 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = sub_19393BF10();
  __swift_allocate_value_buffer(v17, qword_1ED512010);
  v18 = __swift_project_value_buffer(v17, qword_1ED512010);
  OUTLINED_FUNCTION_138_9(v18, "walletOrderFields");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v19 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v19);
  v157 = *(v20 + 72);
  OUTLINED_FUNCTION_54();
  v21 = OUTLINED_FUNCTION_108_14();
  v154 = OUTLINED_FUNCTION_135_10(v21, xmmword_1939526B0) + v1;
  v156 = *(v12 + 104);
  (v156)(v16, *MEMORY[0x1E698F1A0], v10);
  v22 = sub_19393BF40();
  v23 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_63_0(v23, v24, v25, v22);
  v26 = sub_19393BEF0();
  v27 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  v30 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_63_0(v30, v31, v32, v17);
  v33 = sub_19393BEB0();
  v34 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_114_9(v37, v38, v39, v40, v16, v153);
  v155 = *MEMORY[0x1E698F198];
  v156(v16);
  v41 = OUTLINED_FUNCTION_39_4();
  v44 = OUTLINED_FUNCTION_7_45(v41, v42, v43, v22);
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v26);
  v47 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v17);
  v50 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v33);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_23_39();
  sub_19393BF20();
  v53 = OUTLINED_FUNCTION_118_13(&v154[2 * v157]);
  (v156)(v53, v155, v10);
  v54 = OUTLINED_FUNCTION_39_4();
  v57 = OUTLINED_FUNCTION_8_52(v54, v55, v56, v22);
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v26);
  OUTLINED_FUNCTION_24_40();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  v64 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v33);
  v67 = OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_56_19(v67);
  OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_97_0(v68, v69, v70, v71, v72, v153);
  OUTLINED_FUNCTION_82_14();
  v74 = OUTLINED_FUNCTION_118_13(3 * v73);
  (v156)(v74, v155, v10);
  v75 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v22);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v26);
  OUTLINED_FUNCTION_24_40();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  v85 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v33);
  OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_30_24();
  sub_19393BF20();
  OUTLINED_FUNCTION_100_16("orderTypeIdentifier");
  (v156)(v16, v155, v10);
  v88 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v22);
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
  v95 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
  v99 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v33);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_30_24();
  sub_19393BF20();
  v102 = OUTLINED_FUNCTION_118_13(5 * v157);
  (v156)(v102, v155, v10);
  v103 = OUTLINED_FUNCTION_19_6();
  v106 = OUTLINED_FUNCTION_7_45(v103, v104, v105, v22);
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v26);
  v109 = OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_140_10(v109, v110, v111);
  v112 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v33);
  OUTLINED_FUNCTION_163_5();
  v115 = OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_117_15(v115 & 0xFFFF0000FFFFFFFFLL | 0x497200000000);
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_91_1(v116, v117, v118, v119, v16, v153);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_100_16("trackedOrderIdentifier");
  (v156)(v16, v155, v10);
  v120 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v22);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v26);
  v126 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v10);
  v129 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v33);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_114_9(v132, v133, v134, v135, v16, v153);
  (v156)(v16, v155, v10);
  v136 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v136, v137, v138, v22);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
  v143 = OUTLINED_FUNCTION_28_0();
  v146 = OUTLINED_FUNCTION_8_52(v143, v144, v145, v10);
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v33);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_114_9(v149, v150, v151, v152, v16, v153);
  OUTLINED_FUNCTION_127_9();
  OUTLINED_FUNCTION_76_15(17);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderFields.metadata.modify()
{
  if (qword_1ED511CB8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED512010);
  return OUTLINED_FUNCTION_64_0();
}

void sub_193751ED4()
{
  OUTLINED_FUNCTION_117();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_53_1();
  v112 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v96 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_74();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_14();
  v14 = sub_19393BEC0();
  v108 = v14;
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_35_31();
  v18 = sub_19393BF10();
  v110 = v18;
  __swift_allocate_value_buffer(v18, qword_1ED512028);
  v19 = __swift_project_value_buffer(v18, qword_1ED512028);
  v104 = "63-874d-1009814b2acc";
  v105 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v20 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v20);
  v111 = *(v21 + 72);
  OUTLINED_FUNCTION_54();
  v22 = OUTLINED_FUNCTION_108_14();
  v103 = v22;
  *(v22 + 16) = xmmword_19394FBC0;
  v23 = v22 + v2;
  v24 = *MEMORY[0x1E698F1A0];
  v25 = *(v16 + 104);
  v109 = v16 + 104;
  v101 = v25;
  v25(v1, v24, v14);
  v26 = sub_19393BF40();
  v27 = OUTLINED_FUNCTION_28_0();
  v100 = v26;
  OUTLINED_FUNCTION_63_0(v27, v28, v29, v26);
  v107 = sub_19393BEF0();
  v30 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  v34 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_63_0(v34, v35, v36, v110);
  v106 = sub_19393BEB0();
  v37 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  OUTLINED_FUNCTION_3_41();
  v102 = v23;
  OUTLINED_FUNCTION_42_8();
  v97 = v0;
  v98 = v1;
  OUTLINED_FUNCTION_91_1(v41, v42, v43, v44, v1, v0);
  v45 = v1;
  v46 = v108;
  v47 = v101;
  v101(v45, v24, v108);
  v48 = OUTLINED_FUNCTION_28_0();
  v51 = OUTLINED_FUNCTION_7_45(v48, v49, v50, v26);
  v52 = v107;
  __swift_storeEnumTagSinglePayload(v51, v53, v54, v107);
  v96[1] = v9;
  OUTLINED_FUNCTION_24_40();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  v59 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v106);
  OUTLINED_FUNCTION_1_68();
  v62 = v111;
  OUTLINED_FUNCTION_23_39();
  v63 = v98;
  OUTLINED_FUNCTION_91_1(v64, v65, v66, v67, v98, v97);
  v99 = v23 + 2 * v62;
  v68 = *MEMORY[0x1E698F198];
  v47(v63, v68, v46);
  OUTLINED_FUNCTION_45();
  v69 = v100;
  v73 = OUTLINED_FUNCTION_7_45(v70, v71, v72, v100);
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v52);
  v76 = OUTLINED_FUNCTION_28_0();
  v77 = v110;
  __swift_storeEnumTagSinglePayload(v76, v78, v79, v110);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_99_14();
  OUTLINED_FUNCTION_39_27();
  OUTLINED_FUNCTION_82_14();
  v47(v63, v68, v108);
  v84 = OUTLINED_FUNCTION_15_7();
  v87 = OUTLINED_FUNCTION_7_45(v84, v85, v86, v69);
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v107);
  v90 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v77);
  v93 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v106);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_98_16();
  OUTLINED_FUNCTION_39_27();
  OUTLINED_FUNCTION_113_11();
  OUTLINED_FUNCTION_76_15(18);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderPayment.metadata.modify()
{
  if (qword_1ED511CC0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED512028);
  return OUTLINED_FUNCTION_64_0();
}

void sub_1937523F8()
{
  OUTLINED_FUNCTION_117();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_70_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_42_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_112_14();
  v209 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = sub_19393BF10();
  __swift_allocate_value_buffer(v16, qword_1ED512040);
  __swift_project_value_buffer(v16, qword_1ED512040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v17 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v17);
  OUTLINED_FUNCTION_54();
  *(OUTLINED_FUNCTION_108_14() + 16) = xmmword_1939526F0;
  v18 = *(v11 + 104);
  (v18)(v15, *MEMORY[0x1E698F1A0], v209);
  v207 = sub_19393BF40();
  v19 = OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_63_0(v19, v20, v21, v22);
  sub_19393BEF0();
  v23 = OUTLINED_FUNCTION_15_7();
  v25 = v24;
  v208 = v24;
  __swift_storeEnumTagSinglePayload(v23, v26, v27, v24);
  v28 = OUTLINED_FUNCTION_28_0();
  v29 = v16;
  v205 = v16;
  OUTLINED_FUNCTION_63_0(v28, v30, v31, v16);
  v32 = sub_19393BEB0();
  v33 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_97_0(v36, v37, v38, v39, v15, v1);
  v206 = *MEMORY[0x1E698F198];
  v18(v15);
  v40 = OUTLINED_FUNCTION_39_4();
  v43 = OUTLINED_FUNCTION_8_52(v40, v41, v42, v207);
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v25);
  v46 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v29);
  v49 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v32);
  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_97_0(v52, v53, v54, v55, v56, v57);
  (v18)(v15, v206, v209);
  OUTLINED_FUNCTION_32_29();
  v62 = OUTLINED_FUNCTION_8_52(v58, v59, v60, v61);
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v208);
  v65 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v205);
  v68 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v32);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_77_16(v71, v72, v73, v74, v75);
  (v18)(v15, v206, v209);
  v76 = OUTLINED_FUNCTION_20_1();
  v79 = OUTLINED_FUNCTION_8_52(v76, v77, v78, v207);
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v208);
  v82 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v205);
  v85 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v32);
  OUTLINED_FUNCTION_94_15();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_77_16(v88, v89, v90, v91, v92);
  (v18)(v15, v206, v209);
  v93 = OUTLINED_FUNCTION_20_1();
  v96 = OUTLINED_FUNCTION_8_52(v93, v94, v95, v207);
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v208);
  v99 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v205);
  v102 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v32);
  OUTLINED_FUNCTION_94_15();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_77_16(v105, v106, v107, v108, v15);
  (v18)(v15, v206, v209);
  v109 = OUTLINED_FUNCTION_20_1();
  v112 = OUTLINED_FUNCTION_8_52(v109, v110, v111, v207);
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v208);
  v115 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v205);
  v118 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v32);
  OUTLINED_FUNCTION_163_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_77_16(v121, v122, v123, v124, v15);
  OUTLINED_FUNCTION_159_0();
  (v18)(v15, v206, v209);
  v125 = OUTLINED_FUNCTION_20_1();
  v128 = OUTLINED_FUNCTION_8_52(v125, v126, v127, v207);
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v208);
  v131 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v205);
  v134 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v32);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_77_16(v137, v138, v139, v140, v15);
  (v18)(v15, v206, v209);
  v141 = OUTLINED_FUNCTION_20_1();
  v144 = OUTLINED_FUNCTION_8_52(v141, v142, v143, v207);
  __swift_storeEnumTagSinglePayload(v144, v145, v146, v208);
  v147 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v205);
  v150 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v32);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_77_16(v153, v154, v155, v156, v15);
  (v18)(v15, HIDWORD(v0), v209);
  v157 = OUTLINED_FUNCTION_20_1();
  v160 = OUTLINED_FUNCTION_8_52(v157, v158, v159, v207);
  __swift_storeEnumTagSinglePayload(v160, v161, v162, v208);
  v163 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v163, v164, v165, v205);
  v166 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v166, v167, v168, v32);
  OUTLINED_FUNCTION_94_15();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_97_0(v169, v170, v171, v172, v15, v1);
  (v18)(v15, HIDWORD(v0), v209);
  v173 = OUTLINED_FUNCTION_16();
  v176 = OUTLINED_FUNCTION_8_52(v173, v174, v175, v207);
  __swift_storeEnumTagSinglePayload(v176, v177, v178, v208);
  v179 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v179, v180, v181, v205);
  v182 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v182, v183, v184, v32);
  OUTLINED_FUNCTION_94_15();
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_97_0(v185, v186, v187, v188, v15, v1);
  OUTLINED_FUNCTION_133_11();
  (v18)(v15, HIDWORD(v0), v209);
  v189 = OUTLINED_FUNCTION_16();
  v192 = OUTLINED_FUNCTION_8_52(v189, v190, v191, v207);
  __swift_storeEnumTagSinglePayload(v192, v193, v194, v208);
  v195 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v195, v196, v197, v205);
  v198 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v198, v199, v200, v32);
  OUTLINED_FUNCTION_94_15();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_97_0(v201, v202, v203, v204, v15, v1);
  OUTLINED_FUNCTION_76_15(17);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderPerson.metadata.modify()
{
  if (qword_1ED511CC8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED512040);
  return OUTLINED_FUNCTION_64_0();
}

void sub_193752D8C()
{
  OUTLINED_FUNCTION_117();
  v366 = v2;
  v367 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  v361 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_43_0();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_74();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v344 - v15;
  v17 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_35_31();
  v21 = sub_19393BF10();
  __swift_allocate_value_buffer(v21, qword_1ED512058);
  v352 = v21;
  v22 = __swift_project_value_buffer(v21, qword_1ED512058);
  OUTLINED_FUNCTION_138_9(v22, "walletOrderShipmentFullFillmentInfo");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v23 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v23);
  v360 = *(v24 + 72);
  OUTLINED_FUNCTION_54();
  v347 = 16 * v25;
  v26 = OUTLINED_FUNCTION_108_14();
  v27 = OUTLINED_FUNCTION_135_10(v26, xmmword_193952750) + v1;
  v28 = *MEMORY[0x1E698F1A0];
  v29 = *(v19 + 104);
  v356 = v19 + 104;
  v357 = v29;
  v30 = v0;
  v351 = v17;
  (v29)(v0, v28, v17);
  v31 = sub_19393BF40();
  v32 = v16;
  OUTLINED_FUNCTION_5_28();
  v350 = v31;
  OUTLINED_FUNCTION_63_0(v33, v34, v35, v36);
  v37 = sub_19393BEF0();
  v38 = OUTLINED_FUNCTION_20_1();
  v353 = v37;
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  v349 = v10;
  v41 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_63_0(v41, v42, v43, v21);
  v44 = sub_19393BEB0();
  v45 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_67_13();
  v358 = *MEMORY[0x1E698F198];
  v48 = v357;
  v357(v30);
  v49 = v32;
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  OUTLINED_FUNCTION_24_40();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  v58 = v349;
  v59 = OUTLINED_FUNCTION_20_1();
  v60 = v352;
  __swift_storeEnumTagSinglePayload(v59, v61, v62, v352);
  v63 = v361;
  v64 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v44);
  v345 = v58;
  v346 = v63;
  v67 = v58;
  OUTLINED_FUNCTION_1_68();
  v359 = v27;
  OUTLINED_FUNCTION_23_39();
  v355 = v30;
  v348 = v49;
  OUTLINED_FUNCTION_117_11(v68, v69, v70, v71, v30, v49);
  v72 = v351;
  v48(v30, v358, v351);
  v73 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v350);
  v76 = OUTLINED_FUNCTION_15_7();
  v77 = v353;
  __swift_storeEnumTagSinglePayload(v76, v78, v79, v353);
  v80 = v67;
  v81 = OUTLINED_FUNCTION_39_4();
  v82 = v60;
  __swift_storeEnumTagSinglePayload(v81, v83, v84, v60);
  v85 = v361;
  v86 = OUTLINED_FUNCTION_39_4();
  v354 = v44;
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v44);
  v345 = v80;
  v346 = v85;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_130_11();
  OUTLINED_FUNCTION_52_7();
  v89 = v355;
  v90 = v348;
  OUTLINED_FUNCTION_117_11(v91, v92, v93, v94, v355, v348);
  v95 = v360;
  v96 = v89;
  v97 = v357;
  (v357)(v96, v358, v72);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v77);
  v105 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v82);
  v108 = OUTLINED_FUNCTION_19_46();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v44);
  OUTLINED_FUNCTION_163_5();
  OUTLINED_FUNCTION_14_3();
  v111 = v359;
  OUTLINED_FUNCTION_52_7();
  sub_19393BF20();
  v112 = OUTLINED_FUNCTION_118_13(&v111[4 * v95]);
  v113 = v358;
  v114 = v351;
  v97(v112, v358, v351);
  OUTLINED_FUNCTION_45();
  v115 = v350;
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v350);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v353);
  v122 = OUTLINED_FUNCTION_39_4();
  v123 = v352;
  __swift_storeEnumTagSinglePayload(v122, v124, v125, v352);
  v126 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v354);
  OUTLINED_FUNCTION_105_16();
  v129 = OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_117_15(v129 & 0xFFFF0000FFFFFFFFLL | 0x496C00000000);
  OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_92_0(v130, v131, v132, v133, v134, v90);
  v135 = OUTLINED_FUNCTION_118_13(5 * v360);
  v97(v135, v113, v114);
  v136 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v136, v137, v138, v115);
  OUTLINED_FUNCTION_45();
  v139 = v353;
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v353);
  v143 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v143, v144, v145, v123);
  v146 = OUTLINED_FUNCTION_19_46();
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v354);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52_7();
  v149 = v355;
  OUTLINED_FUNCTION_71_20(v150, v151, v152, v153, v355);
  OUTLINED_FUNCTION_159_0();
  v154 = v358;
  v155 = v114;
  v156 = v114;
  v157 = v357;
  (v357)(v149, v358, v155);
  v158 = OUTLINED_FUNCTION_15_7();
  v159 = v350;
  v162 = OUTLINED_FUNCTION_7_45(v158, v160, v161, v350);
  v163 = v139;
  __swift_storeEnumTagSinglePayload(v162, v164, v165, v139);
  v166 = v349;
  v167 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v167, v168, v169, v123);
  v170 = v361;
  OUTLINED_FUNCTION_31_34();
  __swift_storeEnumTagSinglePayload(v171, v172, v173, v174);
  v350 = v166;
  v351 = v170;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52_7();
  v175 = v355;
  sub_19393BF20();
  v157(v175, v154, v156);
  v176 = OUTLINED_FUNCTION_15_7();
  v177 = v159;
  __swift_storeEnumTagSinglePayload(v176, v178, v179, v159);
  v180 = OUTLINED_FUNCTION_25_9();
  v183 = OUTLINED_FUNCTION_8_52(v180, v181, v182, v163);
  v184 = v352;
  __swift_storeEnumTagSinglePayload(v183, v185, v186, v352);
  v187 = OUTLINED_FUNCTION_19_46();
  __swift_storeEnumTagSinglePayload(v187, v188, v189, v354);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_110_8();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52_7();
  v190 = v355;
  sub_19393BF20();
  OUTLINED_FUNCTION_100_16("estimatedDeliveryStartDate");
  v191 = v351;
  v192 = v357;
  (v357)(v190, v154, v351);
  v193 = OUTLINED_FUNCTION_19_6();
  v196 = OUTLINED_FUNCTION_7_45(v193, v194, v195, v177);
  v197 = v353;
  __swift_storeEnumTagSinglePayload(v196, v198, v199, v353);
  v200 = v349;
  v201 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v201, v202, v203, v184);
  v204 = OUTLINED_FUNCTION_39_4();
  v205 = v354;
  __swift_storeEnumTagSinglePayload(v204, v206, v207, v354);
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  v208 = v348;
  OUTLINED_FUNCTION_67_13();
  OUTLINED_FUNCTION_100_16("estimatedDeliveryStartTime");
  v209 = v358;
  v192(v190, v358, v191);
  v210 = OUTLINED_FUNCTION_39_4();
  v213 = OUTLINED_FUNCTION_7_45(v210, v211, v212, v350);
  v216 = OUTLINED_FUNCTION_8_52(v213, v214, v215, v197);
  v217 = v352;
  __swift_storeEnumTagSinglePayload(v216, v218, v219, v352);
  v220 = OUTLINED_FUNCTION_19_46();
  __swift_storeEnumTagSinglePayload(v220, v221, v222, v205);
  OUTLINED_FUNCTION_106_1();
  v223 = v200;
  OUTLINED_FUNCTION_68_20();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_67_13();
  OUTLINED_FUNCTION_133_11();
  OUTLINED_FUNCTION_100_16("estimatedDeliveryEndDate");
  v224 = v209;
  v225 = v351;
  (v357)(v190, v224, v351);
  v226 = v208;
  OUTLINED_FUNCTION_31_34();
  v231 = OUTLINED_FUNCTION_7_45(v227, v228, v229, v230);
  __swift_storeEnumTagSinglePayload(v231, v232, v233, v353);
  v234 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v234, v235, v236, v217);
  v237 = OUTLINED_FUNCTION_19_46();
  v238 = v354;
  __swift_storeEnumTagSinglePayload(v237, v239, v240, v354);
  OUTLINED_FUNCTION_163_5();
  OUTLINED_FUNCTION_14_3();
  v241 = OUTLINED_FUNCTION_51_2(24);
  v242 = v355;
  OUTLINED_FUNCTION_91_1(v241, v243, v244, v245, v355, v226);
  v246 = v358;
  v247 = v357;
  (v357)(v242, v358, v225);
  v248 = v226;
  OUTLINED_FUNCTION_45();
  v249 = v350;
  __swift_storeEnumTagSinglePayload(v250, v251, v252, v350);
  OUTLINED_FUNCTION_31_34();
  __swift_storeEnumTagSinglePayload(v253, v254, v255, v256);
  v257 = v223;
  v258 = OUTLINED_FUNCTION_28_0();
  v259 = v352;
  __swift_storeEnumTagSinglePayload(v258, v260, v261, v352);
  v262 = v361;
  v263 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v263, v264, v265, v238);
  v362 = v257;
  v363 = v262;
  OUTLINED_FUNCTION_14_3();
  v266 = OUTLINED_FUNCTION_51_2(24);
  v267 = v355;
  OUTLINED_FUNCTION_92_0(v266, v268, v269, v270, v355, v248);
  v247(v267, v246, v351);
  v271 = OUTLINED_FUNCTION_39_4();
  v272 = v249;
  __swift_storeEnumTagSinglePayload(v271, v273, v274, v249);
  v275 = OUTLINED_FUNCTION_25_9();
  v276 = v353;
  v279 = OUTLINED_FUNCTION_8_52(v275, v277, v278, v353);
  __swift_storeEnumTagSinglePayload(v279, v280, v281, v259);
  v282 = OUTLINED_FUNCTION_19_46();
  v283 = v354;
  __swift_storeEnumTagSinglePayload(v282, v284, v285, v354);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_110_8();
  OUTLINED_FUNCTION_52_7();
  sub_19393BF20();
  v286 = v267;
  v287 = v358;
  v288 = v351;
  v289 = v357;
  (v357)(v286, v358, v351);
  v290 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v290, v291, v292, v272);
  v293 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v293, v294, v295, v276);
  v296 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v296, v297, v298, v352);
  v299 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v299, v300, v301, v283);
  OUTLINED_FUNCTION_123_14();
  v365 = 1;
  v364 = 0;
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_52_7();
  v302 = v355;
  v303 = v348;
  OUTLINED_FUNCTION_107_10(v304, v305, v306, v307, v355, v348);
  v289(v302, v287, v288);
  v308 = OUTLINED_FUNCTION_28_0();
  v309 = v350;
  __swift_storeEnumTagSinglePayload(v308, v310, v311, v350);
  v312 = OUTLINED_FUNCTION_39_4();
  v313 = v353;
  __swift_storeEnumTagSinglePayload(v312, v314, v315, v353);
  OUTLINED_FUNCTION_27_6();
  v320 = OUTLINED_FUNCTION_8_52(v316, v317, v318, v319);
  v321 = v354;
  __swift_storeEnumTagSinglePayload(v320, v322, v323, v354);
  OUTLINED_FUNCTION_123_14();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_107_10(v324, v325, v326, v327, v302, v303);
  (v357)(v302, v358, v351);
  v328 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v328, v329, v330, v309);
  v331 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v331, v332, v333, v313);
  v334 = OUTLINED_FUNCTION_35_0();
  v337 = OUTLINED_FUNCTION_8_52(v334, v335, v336, v352);
  __swift_storeEnumTagSinglePayload(v337, v338, v339, v321);
  OUTLINED_FUNCTION_123_14();
  OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_107_10(v340, v341, v342, v343, v302, v303);
  OUTLINED_FUNCTION_127_9();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderShipmentFullFillmentInfo.metadata.modify()
{
  if (qword_1ED511CD0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED512058);
  return OUTLINED_FUNCTION_64_0();
}

void sub_193753B00()
{
  OUTLINED_FUNCTION_117();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_53_1();
  v154 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_112_14();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_74();
  v10 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = sub_19393BF10();
  __swift_allocate_value_buffer(v17, qword_1ED512070);
  v18 = __swift_project_value_buffer(v17, qword_1ED512070);
  OUTLINED_FUNCTION_138_9(v18, "walletOrderTransaction");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v19 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v19);
  OUTLINED_FUNCTION_54();
  v20 = OUTLINED_FUNCTION_108_14();
  OUTLINED_FUNCTION_135_10(v20, xmmword_1939526B0);
  v21 = *(v12 + 104);
  (v21)(v16, *MEMORY[0x1E698F1A0], v10);
  v153 = sub_19393BF40();
  v22 = OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_63_0(v22, v23, v24, v25);
  v26 = sub_19393BEF0();
  v27 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  v30 = OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_63_0(v30, v31, v32, v17);
  v33 = sub_19393BEB0();
  v34 = OUTLINED_FUNCTION_19_46();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_107_10(v37, v38, v39, v40, v16, v0);
  v152 = *MEMORY[0x1E698F198];
  v21(v16);
  v41 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v153);
  OUTLINED_FUNCTION_27_6();
  v48 = OUTLINED_FUNCTION_8_52(v44, v45, v46, v47);
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v17);
  v51 = OUTLINED_FUNCTION_19_46();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v33);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_23_39();
  OUTLINED_FUNCTION_117_11(v54, v55, v56, v57, v16, v0);
  (v21)(v16, v152, v10);
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  v62 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v26);
  v65 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v17);
  v68 = OUTLINED_FUNCTION_19_46();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v33);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_99_14();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_92_0(v71, v72, v73, v74, v16, v0);
  (v21)(v16, v152, v10);
  v75 = OUTLINED_FUNCTION_39_4();
  v78 = OUTLINED_FUNCTION_8_52(v75, v76, v77, v153);
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v26);
  v81 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v17);
  v84 = OUTLINED_FUNCTION_19_46();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v33);
  OUTLINED_FUNCTION_163_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_98_16();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_97_0(v87, v88, v89, v90, v16, v0);
  OUTLINED_FUNCTION_100_16("accountInstitution");
  (v21)(v16, v152, v10);
  v91 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v153);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v26);
  v97 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v17);
  v100 = OUTLINED_FUNCTION_19_46();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v33);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_14_3();
  v103 = OUTLINED_FUNCTION_51_2(18);
  OUTLINED_FUNCTION_107_10(v103, v104, v105, v106, v16, v0);
  OUTLINED_FUNCTION_100_16("accountLastFourDigits");
  (v21)(v16, v152, v10);
  v107 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v153);
  v110 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v26);
  v113 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v17);
  v116 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v33);
  OUTLINED_FUNCTION_68_20();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_71_20(v119, v120, v121, v122, v16);
  OUTLINED_FUNCTION_159_0();
  (v21)(v16, v152, v10);
  v123 = OUTLINED_FUNCTION_15_7();
  v126 = OUTLINED_FUNCTION_7_45(v123, v124, v125, v153);
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v26);
  v129 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v17);
  OUTLINED_FUNCTION_32_29();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
  OUTLINED_FUNCTION_124_9();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_71_20(v136, v137, v138, v139, v16);
  (v21)(v16, v152, v10);
  v140 = OUTLINED_FUNCTION_15_7();
  v143 = OUTLINED_FUNCTION_7_45(v140, v141, v142, v153);
  v146 = OUTLINED_FUNCTION_8_52(v143, v144, v145, v26);
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v17);
  v149 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v149, v150, v151, v154);
  OUTLINED_FUNCTION_124_9();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_39_27();
  OUTLINED_FUNCTION_127_9();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}