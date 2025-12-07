uint64_t sub_2434C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_243CC(void *result, int a2)
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

uint64_t _s26RecommendationBlockRequestV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s26RecommendationBlockRequestV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_24594(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_245A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_245F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2465C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_246A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_24710(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24724(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24744(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

__n128 sub_24794(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.DeclinedConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.DeclinedConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_249A0(uint64_t a1, int a2)
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

uint64_t sub_249E8(uint64_t result, int a2, int a3)
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

__n128 sub_24A44(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24A50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_24AAC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 sub_24B20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24C0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24C68(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24CDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_24D48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483645;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Methodology(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Methodology(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24F2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_24F88(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24FF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_250C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_2511C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2519C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

__n128 sub_251C0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_251E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
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

uint64_t sub_2522C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_252C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25308(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PositiveAffinitySource.PositiveStarRating(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PositiveAffinitySource.PositiveStarRating(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_254A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_254F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s24RecommendationResponseV2V10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s24RecommendationResponseV2V10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_256A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_256E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25744(uint64_t *a1, unsigned int a2)
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

uint64_t sub_257A0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RecommendationSource(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RecommendationSource(_WORD *result, int a2, int a3)
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

uint64_t sub_258DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_259D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25A38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25A8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25AF8(uint64_t a1, unsigned int a2)
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

uint64_t sub_25B4C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AccessRequirementUnsatisfiedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessRequirementUnsatisfiedReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25D08()
{
  result = qword_228F00;
  if (!qword_228F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F00);
  }

  return result;
}

unint64_t sub_25D5C()
{
  result = qword_228F08;
  if (!qword_228F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F08);
  }

  return result;
}

unint64_t sub_25DB0()
{
  result = qword_228F10;
  if (!qword_228F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F10);
  }

  return result;
}

unint64_t sub_25E04()
{
  result = qword_228F18;
  if (!qword_228F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F18);
  }

  return result;
}

unint64_t sub_25E58()
{
  result = qword_228F20;
  if (!qword_228F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F20);
  }

  return result;
}

unint64_t sub_25EAC()
{
  result = qword_228F28;
  if (!qword_228F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F28);
  }

  return result;
}

unint64_t sub_25F00()
{
  result = qword_228F30;
  if (!qword_228F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F30);
  }

  return result;
}

uint64_t sub_25F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25FBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_26224@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FE8, &qword_1CEBF0);
  result = sub_1B4264();
  if (v10)
  {
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_228FF0, qword_1BB3D0);
    result = sub_1B4264();
    if (v8)
    {
      v5 = type metadata accessor for SeedBookAuthorRecommendationService();
      v6 = swift_allocObject();
      sub_264B8(&v9, v6 + 16);
      result = sub_264B8(&v7, v6 + 56);
      a2[3] = v5;
      a2[4] = &off_21F1D0;
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26364()
{
  v0 = sub_1B4344();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4284();
  sub_2B0C(&qword_228FE0, &unk_1BB3C0);
  sub_1B4304();

  (*(v1 + 104))(v3, enum case for Scope.singleton(_:), v0);
  sub_1B4214();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_264B8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t dispatch thunk of ExperimentIDsHeaderValueProviderType.provideExperimentIDs()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265E8;

  return v7(a1, a2);
}

uint64_t sub_265E8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_266F4(uint64_t a1, int64_t a2, uint64_t a3, int64_t a4)
{
  v6 = 0xEF54534555514552;
  v7 = 0x5F44494C41564E49;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v8 = 0x4E554F465F544F4ELL;
        v9 = 0xE900000000000044;
        if (a4 <= 1)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

LABEL_10:
      v8 = a1;
      v9 = a2;
      if (a4 <= 1)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    v8 = 0x455F524556524553;
    v9 = 0xEC000000524F5252;
    if (a4 > 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0x485455415F544F4ELL;
        v9 = 0xEE0044455A49524FLL;
        if (a4 <= 1)
        {
          goto LABEL_18;
        }

LABEL_13:
        if (a4 == 2)
        {
          v6 = 0xEC000000524F5252;
          if (v8 != 0x455F524556524553)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        if (a4 == 3)
        {
          v6 = 0xE900000000000044;
          if (v8 != 0x4E554F465F544F4ELL)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        goto LABEL_22;
      }

      goto LABEL_10;
    }

    v8 = 0x5F44494C41564E49;
    v9 = 0xEF54534555514552;
    if (a4 > 1)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  if (!a4)
  {
    goto LABEL_23;
  }

  if (a4 == 1)
  {
    v6 = 0xEE0044455A49524FLL;
    if (v8 != 0x485455415F544F4ELL)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_22:
  v7 = a3;
  v6 = a4;
LABEL_23:
  if (v8 != v7)
  {
LABEL_27:
    v11 = a1;
    v12 = a2;
    v13 = sub_1B5604();
    a2 = v12;
    v10 = v13;
    a1 = v11;
    goto LABEL_28;
  }

LABEL_24:
  if (v9 != v6)
  {
    goto LABEL_27;
  }

  v10 = 1;
LABEL_28:
  sub_21360(a1, a2);
  sub_21360(a3, a4);

  return v10 & 1;
}

uint64_t sub_26900(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701869940;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000064;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x4974736575716572;
    }

    else
    {
      v6 = 0x6567617373656DLL;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE400000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 1701080931;
    }

    else
    {
      v6 = 1701869940;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x4974736575716572;
  v9 = 0xE900000000000064;
  if (a2 != 2)
  {
    v8 = 0x6567617373656DLL;
    v9 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 1701080931;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B5604();
  }

  return v12 & 1;
}

uint64_t sub_26A30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656C69;
  v3 = 0x666F725072657375;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6C6F646F6874656DLL;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0xED0000736569676FLL;
    }

    else
    {
      v6 = 0x80000000001D42D0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x716552736B6F6F62;
    }

    else
    {
      v5 = 0x666F725072657375;
    }

    if (v4)
    {
      v6 = 0xEC00000074736575;
    }

    else
    {
      v6 = 0xEB00000000656C69;
    }
  }

  v7 = 0x6C6F646F6874656DLL;
  v8 = 0x80000000001D42D0;
  if (a2 == 2)
  {
    v8 = 0xED0000736569676FLL;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 0x716552736B6F6F62;
    v2 = 0xEC00000074736575;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

uint64_t sub_26BA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = 1145651536;
  v7 = 0xE300000000000000;
  v8 = 5852737;
  if (a2 != 2)
  {
    v8 = a1;
    v7 = a2;
  }

  if (a2 == 1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v6 = v8;
  }

  if (a2)
  {
    v9 = v6;
  }

  else
  {
    v9 = 1162170950;
  }

  if (a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  v11 = 0xE400000000000000;
  v12 = 1145651536;
  v13 = 0xE300000000000000;
  v14 = 5852737;
  if (a4 != 2)
  {
    v14 = a3;
    v13 = a4;
  }

  if (a4 != 1)
  {
    v12 = v14;
    v11 = v13;
  }

  if (a4)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1162170950;
  }

  if (a4)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (v9 == v15 && v10 == v16)
  {
    v17 = 1;
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v20 = sub_1B5604();
    a2 = v19;
    v17 = v20;
    a1 = v18;
  }

  sub_26114(a1, a2);
  sub_26114(a3, a4);

  return v17 & 1;
}

uint64_t sub_26CBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x707954616964656DLL;
    }

    if (v2)
    {
      v4 = 0x80000000001D42B0;
    }

    else
    {
      v4 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x65707954656C6173;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000013;
    v4 = 0x80000000001D42D0;
  }

  else
  {
    v3 = 0x6F42746567726174;
    v4 = 0xED00007364496B6FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x707954616964656DLL;
    }

    if (a2)
    {
      v5 = 0x80000000001D42B0;
    }

    else
    {
      v5 = 0xE900000000000065;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x65707954656C6173)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000000001D42D0;
    if (v3 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED00007364496B6FLL;
    if (v3 != 0x6F42746567726174)
    {
LABEL_31:
      v7 = sub_1B5604();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_26E80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000073726FLL;
  v3 = 0x687475416B6F6F62;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x626D45736B6F6F62;
    v12 = 0xEF73676E69646465;
    if (a1 != 6)
    {
      v11 = 0x726E65476B6F6F62;
      v12 = 0xEA00000000007365;
    }

    v13 = 0x80000000001D4570;
    if (a1 == 4)
    {
      v14 = 0xD000000000000018;
    }

    else
    {
      v14 = 0x687475416B6F6F62;
    }

    if (a1 != 4)
    {
      v13 = 0xEB0000000073726FLL;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x80000000001D4390;
    v6 = 0xD00000000000001ELL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000017;
      v5 = 0x80000000001D43B0;
    }

    v7 = 0x80000000001D4370;
    v8 = 0xD00000000000001CLL;
    if (a1)
    {
      v8 = 0xD000000000000019;
      v7 = 0x80000000001D4550;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEF73676E69646465;
        if (v9 != 0x626D45736B6F6F62)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0xEA00000000007365;
        if (v9 != 0x726E65476B6F6F62)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_44;
    }

    if (a2 == 4)
    {
      v2 = 0x80000000001D4570;
      if (v9 != 0xD000000000000018)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000000001D4550;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0x80000000001D4370;
        if (v9 != 0xD00000000000001CLL)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_44;
    }

    if (a2 == 2)
    {
      v2 = 0x80000000001D4390;
      if (v9 != 0xD00000000000001ELL)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    v2 = 0x80000000001D43B0;
    v3 = 0xD000000000000017;
  }

  if (v9 != v3)
  {
LABEL_47:
    v15 = sub_1B5604();
    goto LABEL_48;
  }

LABEL_44:
  if (v10 != v2)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

uint64_t sub_27110(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0x687475416B6F6F62;
      v6 = 0xEB0000000073726FLL;
    }

    else if (a1 == 4)
    {
      v5 = 0x626D45736B6F6F62;
      v6 = 0xEF73676E69646465;
    }

    else
    {
      v5 = 0x726E65476B6F6F62;
      v6 = 0xEA00000000007365;
    }
  }

  else
  {
    v3 = 0x80000000001D4390;
    v4 = 0xD00000000000001ELL;
    if (a1 != 1)
    {
      v4 = 0xD000000000000017;
      v3 = 0x80000000001D43B0;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0x80000000001D4370;
    }
  }

  if (a2 > 2u)
  {
    v11 = 0x626D45736B6F6F62;
    v12 = 0xEF73676E69646465;
    if (a2 != 4)
    {
      v11 = 0x726E65476B6F6F62;
      v12 = 0xEA00000000007365;
    }

    if (a2 == 3)
    {
      v13 = 0x687475416B6F6F62;
    }

    else
    {
      v13 = v11;
    }

    if (a2 == 3)
    {
      v10 = 0xEB0000000073726FLL;
    }

    else
    {
      v10 = v12;
    }

    if (v5 != v13)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v7 = 0xD00000000000001ELL;
    v8 = 0x80000000001D43B0;
    if (a2 == 1)
    {
      v8 = 0x80000000001D4390;
    }

    else
    {
      v7 = 0xD000000000000017;
    }

    if (a2)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xD00000000000001CLL;
    }

    if (a2)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0x80000000001D4370;
    }

    if (v5 != v9)
    {
      goto LABEL_38;
    }
  }

  if (v6 != v10)
  {
LABEL_38:
    v14 = sub_1B5604();
    goto LABEL_39;
  }

  v14 = 1;
LABEL_39:

  return v14 & 1;
}

uint64_t sub_27308(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006449746ELL;
  v3 = 0x6F724665726F7473;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v5 = 0x6E656D7461657274;
    }

    if (v4 == 2)
    {
      v6 = 0x80000000001D4340;
    }

    else
    {
      v6 = 0xEC00000073644974;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x666F725072657375;
    }

    else
    {
      v5 = 0x6F724665726F7473;
    }

    if (v4)
    {
      v6 = 0xEB00000000656C69;
    }

    else
    {
      v6 = 0xEC0000006449746ELL;
    }
  }

  v7 = 0xD00000000000001BLL;
  v8 = 0x80000000001D4340;
  if (a2 != 2)
  {
    v7 = 0x6E656D7461657274;
    v8 = 0xEC00000073644974;
  }

  if (a2)
  {
    v3 = 0x666F725072657375;
    v2 = 0xEB00000000656C69;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

uint64_t sub_27470(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xEA00000000007365;
  v5 = 0x63696C7075646564;
  if (a1 == 2)
  {
    v5 = 0x646F436361736962;
  }

  else
  {
    v4 = 0xEF64496E6F697461;
  }

  v6 = 0xD000000000000010;
  if (a1)
  {
    v3 = 0x80000000001D45C0;
  }

  else
  {
    v6 = 0x64496B6F6F62;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x646F436361736962;
    }

    else
    {
      v11 = 0x63696C7075646564;
    }

    if (a2 == 2)
    {
      v10 = 0xEA00000000007365;
    }

    else
    {
      v10 = 0xEF64496E6F697461;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x64496B6F6F62;
    }

    if (a2)
    {
      v10 = 0x80000000001D45C0;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_1B5604();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_275D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x80000000001D4420;
  v6 = 0x80000000001D4440;
  v7 = 0xD000000000000019;
  if (a1 != 4)
  {
    v7 = 0xD00000000000001ELL;
    v6 = 0x80000000001D4260;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x64496B6F6F62;
  if (a1 != 1)
  {
    v9 = 0x6449736569726573;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6449726F68747561;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x80000000001D4420;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x80000000001D4440;
      if (v10 != 0xD000000000000019)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x80000000001D4260;
      if (v10 != 0xD00000000000001ELL)
      {
LABEL_34:
        v13 = sub_1B5604();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x64496B6F6F62)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6449736569726573)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6449726F68747561)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_277A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64496B6F6F62;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7349736569726573;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xEF6465726564724FLL;
    }

    else
    {
      v5 = 0x80000000001D44B0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6449736569726573;
    }

    else
    {
      v4 = 0x64496B6F6F62;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x7349736569726573;
  v8 = 0x80000000001D44B0;
  if (a2 == 2)
  {
    v8 = 0xEF6465726564724FLL;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x6449736569726573;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

uint64_t sub_27900(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x747369486B6F6F62;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v2)
    {
      v3 = 0xEB0000000079726FLL;
    }

    else
    {
      v3 = 0x80000000001D45F0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x80000000001D4640;
    v4 = 0xD000000000000017;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000000001D4610;
    v4 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1768055156;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x747369486B6F6F62;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v5 = 0xEB0000000079726FLL;
    }

    else
    {
      v5 = 0x80000000001D45F0;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000000001D4640;
    if (v4 != 0xD000000000000017)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000000001D4610;
    if (v4 != 0xD000000000000021)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v4 != 1768055156)
    {
LABEL_31:
      v7 = sub_1B5604();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_27A90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v5 = 0xE700000000000000;
    v6 = 0x416567616B636170;
    v7 = 0xEF73444974657373;
    if (a1 != 2)
    {
      v6 = 0x7475706D6F436C6DLL;
      v7 = 0xEE007374696E5565;
    }

    if (a1)
    {
      v8 = 0xD000000000000014;
    }

    else
    {
      v8 = 0x6E6F6973726576;
    }

    if (a1)
    {
      v5 = 0x80000000001D5130;
    }

    if (a1 <= 1u)
    {
      v4 = v8;
    }

    else
    {
      v4 = v6;
    }

    if (v2 <= 1)
    {
      v3 = v5;
    }

    else
    {
      v3 = v7;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v3 = 0x80000000001D5170;
      v4 = 0xD00000000000001DLL;
    }

    else
    {
      v3 = 0x80000000001D5190;
      v4 = 0xD000000000000020;
    }
  }

  else if (a1 == 6)
  {
    v3 = 0x80000000001D51C0;
    v4 = 0xD00000000000001CLL;
  }

  else if (a1 == 7)
  {
    v3 = 0x80000000001D51E0;
    v4 = 0xD000000000000018;
  }

  else
  {
    v3 = 0x80000000001D5200;
    v4 = 0xD000000000000023;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v9 = 0xEF73444974657373;
        if (v4 != 0x416567616B636170)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v9 = 0xEE007374696E5565;
        if (v4 != 0x7475706D6F436C6DLL)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      if (a2)
      {
        v10 = 0xD000000000000014;
      }

      else
      {
        v10 = 0x6E6F6973726576;
      }

      if (a2)
      {
        v9 = 0x80000000001D5130;
      }

      else
      {
        v9 = 0xE700000000000000;
      }

      if (v4 != v10)
      {
        goto LABEL_54;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v9 = 0x80000000001D5170;
      if (v4 != 0xD00000000000001DLL)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v9 = 0x80000000001D5190;
      if (v4 != 0xD000000000000020)
      {
LABEL_54:
        v11 = sub_1B5604();
        goto LABEL_55;
      }
    }
  }

  else if (a2 == 6)
  {
    v9 = 0x80000000001D51C0;
    if (v4 != 0xD00000000000001CLL)
    {
      goto LABEL_54;
    }
  }

  else if (a2 == 7)
  {
    v9 = 0x80000000001D51E0;
    if (v4 != 0xD000000000000018)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v9 = 0x80000000001D5200;
    if (v4 != 0xD000000000000023)
    {
      goto LABEL_54;
    }
  }

  if (v3 != v9)
  {
    goto LABEL_54;
  }

  v11 = 1;
LABEL_55:

  return v11 & 1;
}

uint64_t sub_27D7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064657361;
  v3 = 0xD000000000000014;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000000001D50F0;
    if (a1 != 6)
    {
      v11 = 0x80000000001D5110;
    }

    v12 = 0x80000000001D50C0;
    v13 = 0xD00000000000001DLL;
    if (a1 != 4)
    {
      v13 = 0x6C706D6153736177;
      v12 = 0xEA00000000006465;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = 0xD000000000000014;
    }

    if (v4 <= 5)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x80000000001D5090;
    if (a1 == 2)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x6863727550736177;
    }

    if (a1 != 2)
    {
      v5 = 0xEC00000064657361;
    }

    v7 = 0x80000000001D5050;
    v8 = 0xD000000000000019;
    if (a1)
    {
      v8 = 0xD00000000000001FLL;
      v7 = 0x80000000001D5070;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v14 = "wasAddedToWantToRead";
      }

      else
      {
        v14 = "wasProductPageViewed";
      }

      v2 = (v14 - 32) | 0x8000000000000000;
    }

    else if (a2 == 4)
    {
      v2 = 0x80000000001D50C0;
      v3 = 0xD00000000000001DLL;
    }

    else
    {
      v3 = 0x6C706D6153736177;
      v2 = 0xEA00000000006465;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x80000000001D5090;
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x6863727550736177;
    }
  }

  else if (a2)
  {
    v2 = 0x80000000001D5070;
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    v2 = 0x80000000001D5050;
    v3 = 0xD000000000000019;
  }

  if (v9 == v3 && v10 == v2)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B5604();
  }

  return v15 & 1;
}

uint64_t sub_27FB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x495041616964656DLL;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0x80000000001D45F0;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x747369486B6F6F62;
    v3 = 0xEB0000000079726FLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000000001D4700;
    v4 = 0xD000000000000022;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1768055156;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x495041616964656DLL;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0x80000000001D45F0;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEB0000000079726FLL;
    if (v4 != 0x747369486B6F6F62)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000000001D4700;
    if (v4 != 0xD000000000000022)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v4 != 1768055156)
    {
LABEL_31:
      v7 = sub_1B5604();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_28168(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xD000000000000013;
  if (a1 == 5)
  {
    v5 = 0x80000000001D47A0;
  }

  else
  {
    v4 = 0x6974736567677573;
    v5 = 0xEB00000000736E6FLL;
  }

  v6 = 0xE600000000000000;
  v7 = 0x756F59726F66;
  if (a1 != 3)
  {
    v7 = 0xD000000000000011;
    v6 = 0x80000000001D4780;
  }

  if (a1 > 4u)
  {
    v7 = v4;
    v6 = v5;
  }

  v8 = 0x80000000001D4740;
  v9 = 0xD000000000000017;
  if (v2 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x80000000001D4760;
  }

  if (v2)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x736B6F6F62;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v9 = v7;
    v10 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x736B6F6F62)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    if (a2 == 1)
    {
      v11 = 0x80000000001D4740;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v11 = 0x80000000001D4760;
    goto LABEL_32;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x756F59726F66)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v11 = 0x80000000001D4780;
LABEL_32:
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (a2 == 5)
  {
    v11 = 0x80000000001D47A0;
    if (v9 != 0xD000000000000013)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v11 = 0xEB00000000736E6FLL;
    if (v9 != 0x6974736567677573)
    {
LABEL_37:
      v12 = sub_1B5604();
      goto LABEL_38;
    }
  }

LABEL_35:
  if (v10 != v11)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_28368(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746E69;
  v3 = 0x6F4A656C676E6973;
  v4 = a1;
  v5 = 0x6F6A7369446C6C61;
  if (a1 == 2)
  {
    v6 = 0xEB00000000746E69;
  }

  else
  {
    v5 = 0x7473657265746E69;
    v6 = 0xED00006465736142;
  }

  v7 = 0xE800000000000000;
  v8 = 0x746E696F4A6C6C61;
  if (!a1)
  {
    v8 = 0x6F4A656C676E6973;
    v7 = 0xEB00000000746E69;
  }

  if (a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x6F6A7369446C6C61;
  if (a2 == 2)
  {
    v12 = 0xEB00000000746E69;
  }

  else
  {
    v11 = 0x7473657265746E69;
    v12 = 0xED00006465736142;
  }

  if (a2)
  {
    v3 = 0x746E696F4A6C6C61;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B5604();
  }

  return v15 & 1;
}

uint64_t sub_284C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x747369486B6F6F62;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v2)
    {
      v3 = 0xEB0000000079726FLL;
    }

    else
    {
      v3 = 0x80000000001D45F0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x80000000001D4610;
    v4 = 0xD000000000000021;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000000001D4640;
    v4 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1768055156;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x747369486B6F6F62;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v5 = 0xEB0000000079726FLL;
    }

    else
    {
      v5 = 0x80000000001D45F0;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000000001D4610;
    if (v4 != 0xD000000000000021)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000000001D4640;
    if (v4 != 0xD000000000000017)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v4 != 1768055156)
    {
LABEL_31:
      v7 = sub_1B5604();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_28650(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0x80000000001D46A0;
    }

    else
    {
      v4 = 0x80000000001D4680;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE700000000000000;
    v3 = 0x32656372756F73;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD00000000000001FLL;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    if (v2 == 3)
    {
      v4 = 0x80000000001D46C0;
    }

    else
    {
      v4 = 0x80000000001D46E0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2)
    {
      v6 = 0x80000000001D46A0;
    }

    else
    {
      v6 = 0x80000000001D4680;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xE700000000000000;
    if (v3 != 0x32656372756F73)
    {
LABEL_37:
      v8 = sub_1B5604();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD00000000000001FLL;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (a2 == 3)
    {
      v6 = 0x80000000001D46C0;
    }

    else
    {
      v6 = 0x80000000001D46E0;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_287E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x747369486B6F6F62;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v2)
    {
      v3 = 0xEB0000000079726FLL;
    }

    else
    {
      v3 = 0x80000000001D45F0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x80000000001D4700;
    v4 = 0xD000000000000022;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x495041616964656DLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1768055156;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x747369486B6F6F62;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v5 = 0xEB0000000079726FLL;
    }

    else
    {
      v5 = 0x80000000001D45F0;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000000001D4700;
    if (v4 != 0xD000000000000022)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE800000000000000;
    if (v4 != 0x495041616964656DLL)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v4 != 1768055156)
    {
LABEL_31:
      v7 = sub_1B5604();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_28990(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x6974736567677573;
    v10 = 0xEB00000000736E6FLL;
    if (a1 != 6)
    {
      v9 = 0xD000000000000016;
      v10 = 0x80000000001D47C0;
    }

    v11 = 0x80000000001D4780;
    v12 = 0xD000000000000013;
    if (a1 == 4)
    {
      v12 = 0xD000000000000011;
    }

    else
    {
      v11 = 0x80000000001D47A0;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x80000000001D4760;
    v5 = 0x756F59726F66;
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xE600000000000000;
    }

    v6 = 0xD000000000000017;
    if (a1)
    {
      v3 = 0x80000000001D4740;
    }

    else
    {
      v6 = 0x736B6F6F62;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0x80000000001D4740;
        if (v7 != 0xD000000000000017)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x736B6F6F62)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_47;
    }

    if (a2 != 2)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x756F59726F66)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    v14 = "booksYouMightLike";
LABEL_35:
    v13 = (v14 - 32) | 0x8000000000000000;
    if (v7 != 0xD000000000000011)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v13 = 0x80000000001D47A0;
      if (v7 != 0xD000000000000013)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    v14 = "mangaYouMightLike";
    goto LABEL_35;
  }

  if (a2 == 6)
  {
    v13 = 0xEB00000000736E6FLL;
    if (v7 != 0x6974736567677573)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v13 = 0x80000000001D47C0;
    if (v7 != 0xD000000000000016)
    {
LABEL_49:
      v15 = sub_1B5604();
      goto LABEL_50;
    }
  }

LABEL_47:
  if (v8 != v13)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

uint64_t sub_28BF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C65766564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E6967617473;
    }

    else
    {
      v4 = 0x69746375646F7270;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 24945;
    }

    else
    {
      v4 = 0x6C65766564;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E6967617473;
  if (a2 != 2)
  {
    v8 = 0x69746375646F7270;
    v7 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v2 = 24945;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

Swift::Int sub_28D28(uint64_t a1, unsigned __int8 a2)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_28E94(uint64_t a1, unsigned __int8 a2)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_28FBC(uint64_t a1, unsigned __int8 a2)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_290C0(uint64_t a1, unsigned __int8 a2)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_29228(uint64_t a1, unsigned __int8 a2)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_2935C(uint64_t a1, unsigned __int8 a2)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t static CommonCurrency.Header.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B5604(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B5604();
    }
  }

  return result;
}

uint64_t CommonCurrency.Header.hash(into:)(uint64_t a1)
{
  sub_1B4884();

  return sub_1B4884();
}

Swift::Int CommonCurrency.Header.hashValue.getter()
{
  sub_1B57F4();
  sub_1B4884();
  sub_1B4884();
  return sub_1B5844();
}

Swift::Int sub_2960C(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();
  sub_1B4884();
  return sub_1B5844();
}

void CommonCurrency.Headers.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = v2 + 56;
    do
    {

      sub_1B4884();
      sub_1B4884();

      v4 += 32;
      --v3;
    }

    while (v3);
  }
}

Swift::Int CommonCurrency.Headers.hashValue.getter()
{
  v1 = *v0;
  sub_1B57F4();
  v2 = *(v1 + 16);
  sub_1B5804(v2);
  if (v2)
  {
    v3 = v1 + 56;
    do
    {

      sub_1B4884();
      sub_1B4884();

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return sub_1B5844();
}

Swift::Int sub_297DC()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1BA44(v3, v1);
  return sub_1B5844();
}

Swift::Int sub_2982C(uint64_t a1)
{
  v2 = *v1;
  sub_1B57F4();
  sub_1BA44(v4, v2);
  return sub_1B5844();
}

uint64_t static CommonCurrency.redactedHeaderNames.getter()
{
  if (qword_228288 != -1)
  {
    swift_once();
  }
}

uint64_t sub_298CC@<X0>(int **a1@<X8>)
{
  if (qword_228288 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = off_228FF8[0];
}

uint64_t sub_2993C(uint64_t *a1)
{
  v1 = *a1;
  if (qword_228288 != -1)
  {
    v5 = v1;
    swift_once();
    v1 = v5;
  }

  v2 = sub_29A88(v1);
  v3 = sub_4025C(v2);

  off_228FF8[0] = v3;
}

uint64_t static CommonCurrency.redactedHeaderNames.setter(uint64_t a1)
{
  if (qword_228288 != -1)
  {
    swift_once();
  }

  v2 = sub_29A88(a1);

  v3 = sub_4025C(v2);

  off_228FF8[0] = v3;
}

void *sub_29A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_3747C(0, v1, 0);
  v24 = a1 + 56;
  result = sub_1B4F84();
  v4 = result;
  v5 = 0;
  v23 = v1;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v8 = v4 >> 6;
    if ((*(v24 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 36);
    result = sub_1B4844();
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      v21 = v10;
      v22 = result;
      sub_3747C((v11 > 1), v12 + 1, 1);
      v10 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = result;
    v13[5] = v10;
    v6 = 1 << *(a1 + 32);
    if (v4 >= v6)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v8);
    if ((v14 & (1 << v4)) == 0)
    {
      goto LABEL_23;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v4 & 0x3F));
    if (v15)
    {
      v6 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
      v7 = v23;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v7 = v23;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v6 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_42FF0(v4, v9, 0);
          v6 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_42FF0(v4, v9, 0);
    }

LABEL_4:
    ++v5;
    v4 = v6;
    if (v5 == v7)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_29CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_37534(0, v1, 0);
  v3 = a1 + 56;
  result = sub_1B4F84();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(a1 + 36);
    v9 = (*(a1 + 48) + 16 * v5);
    v10 = v9[1];
    v23 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_37534((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v23;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_42FF0(v5, v22, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_42FF0(v5, v22, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_29ED8(void (*a1)(_OWORD *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = a3;
    v39 = _swiftEmptyArrayStorage;
    sub_37554(0, v4, 0);
    v34 = _swiftEmptyArrayStorage;
    v7 = v6 + 56;
    result = sub_1B4F84();
    v8 = result;
    v9 = 0;
    v30 = v6 + 64;
    v31 = v4;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v33 = v9;
      v12 = *(v6 + 36);
      v13 = v6;
      v14 = (*(v6 + 48) + 16 * v8);
      v15 = v14[1];
      v36[0] = *v14;
      v36[1] = v15;

      a1(v37, v36, &v35);
      if (v3)
      {
      }

      v16 = v34;
      v39 = v34;
      v18 = v34[2];
      v17 = v34[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_37554((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v34 = v16;
      v19 = &v16[7 * v18];
      v20 = v37[0];
      v21 = v37[1];
      v22 = v37[2];
      v19[10] = v38;
      *(v19 + 3) = v21;
      *(v19 + 4) = v22;
      *(v19 + 2) = v20;
      v10 = 1 << *(v13 + 32);
      if (v8 >= v10)
      {
        goto LABEL_25;
      }

      v23 = *(v7 + 8 * v11);
      if ((v23 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      v6 = v13;
      if (v12 != *(v13 + 36))
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v8 & 0x3F));
      if (v24)
      {
        v10 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v11 << 6;
        v26 = v11 + 1;
        v27 = (v30 + 8 * v11);
        while (v26 < (v10 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_42FF0(v8, v12, 0);
            v10 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_42FF0(v8, v12, 0);
      }

LABEL_4:
      v3 = 0;
      v9 = v33 + 1;
      v8 = v10;
      if (v33 + 1 == v31)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void *sub_2A16C(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v16 = _swiftEmptyArrayStorage;
  sub_37ABC(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  v9 = (a3 + 32);
  while (1)
  {
    v10 = *v9++;
    v14 = v10;
    a1(v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v16 = v6;
    v12 = v6[2];
    v11 = v6[3];
    if (v12 >= v11 >> 1)
    {
      sub_37ABC((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    v6[2] = v12 + 1;
    sub_264B8(v15, &v6[5 * v12 + 4]);
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2A284(uint64_t a1)
{
  result = sub_1B4CC4();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_111A38(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2A3A0(uint64_t a1)
{
  sub_42B50();
  result = sub_1B4CC4();
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_111FB0(&v10, *(*(a1 + 48) + (v9 | (v8 << 6)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2A49C(uint64_t a1)
{
  result = sub_1B4CC4();
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_111CE0(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2A594(uint64_t a1)
{
  sub_42AA8();
  result = sub_1B4CC4();
  v3 = 0;
  v4 = *(a1 + 64);
  v13 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  if ((v6 & v4) != 0)
  {
    do
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      memcpy(__dst, (*(a1 + 56) + 568 * (v10 | (v9 << 6))), 0x231uLL);
      sub_4299C(__dst, v12);
      sub_111DC0(v11, __dst);
      memcpy(v12, v11, 0x231uLL);
      result = sub_2601C(v12);
    }

    while (v7);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return v13;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*static CommonCurrency.redactedHeaderNames.modify(int **a1))(uint64_t *a1, char a2)
{
  if (qword_228288 != -1)
  {
    swift_once();
  }

  *a1 = off_228FF8[0];

  return sub_2A74C;
}

uint64_t sub_2A74C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    v4 = sub_29A88(v3);

    v5 = sub_4025C(v4);

    off_228FF8[0] = v5;
  }

  else
  {
    v6 = sub_29A88(v2);

    v7 = sub_4025C(v6);

    off_228FF8[0] = v7;
  }
}

uint64_t sub_2A810()
{
  v0 = sub_9ECC4(&off_20FF68);
  result = swift_arrayDestroy();
  off_228FF8[0] = v0;
  return result;
}

uint64_t CommonCurrency.Header.description.getter()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  if (qword_228288 != -1)
  {
    swift_once();
  }

  v4 = off_228FF8[0];
  v5 = sub_1B4844();
  v7 = v6;

  LOBYTE(v5) = sub_2AAEC(v5, v7, v4);

  if (v5)
  {
    v2 = 0xEA00000000003E64;
    v3 = 0x657463616465723CLL;
  }

  else
  {
  }

  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  sub_1B48D4(v9);
  v10._countAndFlagsBits = v3;
  v10._object = v2;
  sub_1B48D4(v10);

  return v1;
}

BOOL sub_2A978(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1B57F4();
  sub_1B5804(v3);
  v4 = sub_1B5844();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_2AA44(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1B57E4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_2AAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B57F4();
  sub_1B4884();
  v6 = sub_1B5844();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B5604() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2ABE4(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1B57F4();
    sub_1B4884();

    v4 = sub_1B5844();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        if (*(*(a2 + 48) + v6))
        {
          if (*(*(a2 + 48) + v6) == 1)
          {
            v8 = 0x6F6F626F69647561;
            v9 = 0xE90000000000006BLL;
            v10 = a1;
            if (!a1)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v9 = 0xE500000000000000;
            v8 = 0x646578696DLL;
            v10 = a1;
            if (!a1)
            {
LABEL_18:
              v12 = 0xE500000000000000;
              if (v8 != 0x6B6F6F6265)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {
          v9 = 0xE500000000000000;
          v8 = 0x6B6F6F6265;
          v10 = a1;
          if (!a1)
          {
            goto LABEL_18;
          }
        }

        if (v10 == 1)
        {
          v11 = 0x6F6F626F69647561;
        }

        else
        {
          v11 = 0x646578696DLL;
        }

        if (v10 == 1)
        {
          v12 = 0xE90000000000006BLL;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 != v11)
        {
          goto LABEL_20;
        }

LABEL_19:
        if (v9 == v12)
        {

          v13 = 1;
          return v13 & 1;
        }

LABEL_20:
        v13 = sub_1B5604();

        if ((v13 & 1) == 0)
        {
          v6 = (v6 + 1) & v7;
          if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
          {
            continue;
          }
        }

        return v13 & 1;
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_2ADF8(char a1, uint64_t a2)
{
  if (*(a2 + 16) && ((sub_1B57F4(), (a1 & 1) == 0) ? (v4 = 1701147238) : (v4 = 1684627824), sub_1B4884(), , v5 = sub_1B5844(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(a2 + 48) + v7) ? 1684627824 : 1701147238;
      if (v9 == v4)
      {
        break;
      }

      v10 = sub_1B5604();
      swift_bridgeObjectRelease_n();
      if ((v10 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v10 & 1;
    }

    swift_bridgeObjectRelease_n();
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_2AF30(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1B57F4();
    CollectionRecommendationType.rawValue.getter();
    sub_1B4884();

    v4 = sub_1B5844();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xE400000000000000;
        v9 = 1802465122;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v8 = 0xE500000000000000;
            v9 = 0x736B6F6F62;
            break;
          case 2:
            v9 = 0xD000000000000010;
            v8 = 0x80000000001D4FE0;
            break;
          case 3:
            v9 = 0x417942736B6F6F62;
            v8 = 0xED0000726F687475;
            break;
          case 4:
            v9 = 0xD000000000000017;
            v8 = 0x80000000001D4740;
            break;
          case 5:
            v9 = 0x476E49736B6F6F62;
            v8 = 0xEC00000065726E65;
            break;
          case 6:
            v9 = 0xD000000000000011;
            v8 = 0x80000000001D4760;
            break;
          case 7:
            v9 = 0xD000000000000011;
            v8 = 0x80000000001D4780;
            break;
          case 8:
            v9 = 0xD000000000000013;
            v8 = 0x80000000001D47A0;
            break;
          case 9:
            v8 = 0xE600000000000000;
            v9 = 0x736569726573;
            break;
          case 0xA:
            v10 = 1954047342;
            goto LABEL_16;
          case 0xB:
            v10 = 1701998445;
LABEL_16:
            v9 = v10 | 0x65536E4900000000;
            v8 = 0xEC00000073656972;
            break;
          case 0xC:
            v9 = 0x6867696C68676968;
            v8 = 0xEA00000000007374;
            break;
          default:
            break;
        }

        v11 = 0xE400000000000000;
        v12 = 1802465122;
        switch(a1)
        {
          case 1:
            v11 = 0xE500000000000000;
            if (v9 == 0x736B6F6F62)
            {
              goto LABEL_41;
            }

            goto LABEL_42;
          case 2:
            v11 = 0x80000000001D4FE0;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 3:
            v11 = 0xED0000726F687475;
            if (v9 != 0x417942736B6F6F62)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 4:
            v11 = 0x80000000001D4740;
            if (v9 != 0xD000000000000017)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 5:
            v13 = 0x476E49736B6F6F62;
            v14 = 1701998181;
            goto LABEL_35;
          case 6:
            v11 = 0x80000000001D4760;
            if (v9 != 0xD000000000000011)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 7:
            v11 = 0x80000000001D4780;
            if (v9 != 0xD000000000000011)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 8:
            v11 = 0x80000000001D47A0;
            if (v9 != 0xD000000000000013)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 9:
            v11 = 0xE600000000000000;
            if (v9 != 0x736569726573)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 10:
            v12 = 0x65536E497478656ELL;
            v11 = 0xEC00000073656972;
            goto LABEL_40;
          case 11:
            v13 = 0x65536E4965726F6DLL;
            v14 = 1936025970;
LABEL_35:
            v11 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v9 != v13)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 12:
            v11 = 0xEA00000000007374;
            if (v9 != 0x6867696C68676968)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          default:
LABEL_40:
            if (v9 != v12)
            {
              goto LABEL_42;
            }

LABEL_41:
            if (v8 == v11)
            {

              v15 = 1;
              return v15 & 1;
            }

LABEL_42:
            v15 = sub_1B5604();

            if (v15)
            {
              return v15 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v15 & 1;
            }

            break;
        }
      }
    }
  }

  v15 = 0;
  return v15 & 1;
}

uint64_t sub_2B404(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_19;
  }

  v4 = 0xE90000000000006BLL;
  v5 = 0x6F6F626F69647561;
  sub_1B57F4();
  if ((a1 & 1) == 0)
  {
    v5 = 0x6B6F6F6265;
    v4 = 0xE500000000000000;
  }

  sub_1B4884();

  v6 = sub_1B5844();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8) ? 0x6F6F626F69647561 : 0x6B6F6F6265;
      v11 = *(*(a2 + 48) + v8) ? 0xE90000000000006BLL : 0xE500000000000000;
      if (v10 == v5 && v11 == v4)
      {
        break;
      }

      v13 = sub_1B5604();

      if ((v13 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
LABEL_19:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t CommonCurrency.Headers.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    sub_3747C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    if (qword_228288 != -1)
    {
      swift_once();
    }

    v4 = 0;
    v28 = v1 + 32;
    v29 = v2;
    do
    {
      v5 = (v28 + 32 * v4);
      v7 = *v5;
      v6 = v5[1];
      v8 = v5[2];
      v9 = v5[3];
      v10 = off_228FF8[0];
      v11 = sub_1B4844();
      v13 = v12;
      if (*(&dword_10 + v10))
      {
        v14 = v11;
        v27 = v8;
        v30 = v3;
        sub_1B57F4();

        sub_1B4884();
        v15 = sub_1B5844();
        v16 = -1 << *(&stru_20.cmd + v10);
        v17 = v15 & ~v16;
        if ((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = (*&stru_20.segname[v10 + 8] + 16 * v17);
            v20 = *v19 == v14 && v19[1] == v13;
            if (v20 || (sub_1B5604() & 1) != 0)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v8 = 0x657463616465723CLL;
          v9 = 0xEA00000000003E64;
          v21 = v29;
          v3 = v30;
          goto LABEL_18;
        }

LABEL_14:

        v21 = v29;
        v3 = v30;
        v8 = v27;
      }

      else
      {

        v21 = v29;
      }

LABEL_18:

      v31._countAndFlagsBits = 8250;
      v31._object = 0xE200000000000000;
      sub_1B48D4(v31);
      v32._countAndFlagsBits = v8;
      v32._object = v9;
      sub_1B48D4(v32);

      v23 = v3[2];
      v22 = v3[3];
      if (v23 >= v22 >> 1)
      {
        sub_3747C((v22 > 1), v23 + 1, 1);
      }

      ++v4;
      v3[2] = v23 + 1;
      v24 = &v3[2 * v23];
      v24[4] = v7;
      v24[5] = v6;
    }

    while (v4 != v21);
  }

  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_42094(&qword_229000, &qword_228590, &qword_1B6590, &protocol conformance descriptor for [A]);
  v25 = sub_1B4764();

  return v25;
}

Swift::String_optional __swiftcall CommonCurrency.Headers.firstValue(name:)(Swift::String_optional name)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 56);
    while (v4 < *(v2 + 16))
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_402F4();

      if (!sub_1B4F14())
      {

        goto LABEL_8;
      }

      ++v4;
      v5 += 4;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v7 = 0;
    v6 = 0;
LABEL_8:
    name.value._countAndFlagsBits = v7;
    name.value._object = v6;
  }

  return name;
}

uint64_t CommonCurrency.Headers.values(name:)(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = 0;
    v7 = v3 + 56;
    v28 = *(*v2 + 16);
    v26 = v4 - 1;
    do
    {
      v27 = v5;
      v8 = (v7 + 32 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);
          return isUniquelyReferenced_nonNull_native;
        }

        v10 = *(v8 - 3);
        v11 = *(v8 - 2);
        v12 = *(v8 - 1);
        v13 = *v8;
        v6 = v9 + 1;
        sub_402F4();

        if (!sub_1B4F14())
        {
          break;
        }

        v8 += 4;
        ++v9;
        if (v28 == v6)
        {
          v5 = v27;
          goto LABEL_13;
        }
      }

      v15 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_374D4(0, v27[2] + 1, 1);
        v15 = v27;
      }

      v17 = v15[2];
      v16 = v15[3];
      if (v17 >= v16 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_374D4((v16 > 1), v17 + 1, 1);
        v15 = v27;
      }

      v15[2] = v17 + 1;
      v18 = &v15[4 * v17];
      v18[4] = v10;
      v18[5] = v11;
      v18[6] = v12;
      v18[7] = v13;
      v7 = v3 + 56;
      v5 = v15;
    }

    while (v26 != v9);
  }

LABEL_13:
  v19 = v5[2];
  if (v19)
  {
    sub_3747C(0, v19, 0);
    v20 = v5 + 7;
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      v23 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];

      if (v23 >= v24 >> 1)
      {
        sub_3747C((v24 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v25 = &_swiftEmptyArrayStorage[2 * v23];
      v25[4] = v22;
      v25[5] = v21;
      v20 += 4;
      --v19;
    }

    while (v19);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t CommonCurrency.Headers.getPrimitiveOptional<A>(_:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (CommonCurrency.Headers.firstValue(name:)(*&a1).value._object)
  {
    return sub_1B55D4();
  }

  else
  {
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }
}

Swift::Void __swiftcall CommonCurrency.Headers.add(name:value:)(Swift::String name, Swift::String_optional value)
{
  if (value.value._object)
  {
    object = value.value._object;
    countAndFlagsBits = value.value._countAndFlagsBits;
    v5 = name._object;
    v6 = name._countAndFlagsBits;
    v7 = *v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_3324C(0, *(v7 + 2) + 1, 1, v7);
      *v2 = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_3324C((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[32 * v10];
    *(v11 + 4) = v6;
    *(v11 + 5) = v5;
    *(v11 + 6) = countAndFlagsBits;
    *(v11 + 7) = object;
    *v2 = v7;
  }
}

uint64_t CommonCurrency.Headers.addPrimitive<A>(name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24 = a1;
  v10 = sub_1B4EA4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  (*(v11 + 16))(&v23 - v12, a3, v10);
  v14 = *(a4 - 8);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v16 = sub_1B5594();
  v18 = v17;
  (*(v14 + 8))(v13, a4);
  v19 = *v6;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v19;
  if ((result & 1) == 0)
  {
    result = sub_3324C(0, *(v19 + 16) + 1, 1, v19);
    v19 = result;
    *v6 = result;
  }

  v21 = *(v19 + 16);
  v20 = *(v19 + 24);
  if (v21 >= v20 >> 1)
  {
    result = sub_3324C((v20 > 1), v21 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 16) = v21 + 1;
  v22 = (v19 + 32 * v21);
  v22[4] = v24;
  v22[5] = a2;
  v22[6] = v16;
  v22[7] = v18;
  *v6 = v19;
  return result;
}

uint64_t AnyCodableContainer.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return sub_40348(a1, a2);
}

uint64_t AnyCodableContainer.init(untypedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2C010(a1, v6);
  result = sub_42F48(a1, &qword_229018, &qword_1BB420);
  if (!v2)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return sub_40348(v6, a2);
  }

  return result;
}

void *sub_2C010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_43050(a1, &v53, &qword_229018, &qword_1BB420);
  if (!*(&v54 + 1))
  {
    result = sub_42F48(&v53, &qword_229018, &qword_1BB420);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  sub_430B8(&v53, v56);
  sub_430C8(v56, &v53);
  sub_2B0C(&qword_229578, &qword_1BC5E0);
  if (swift_dynamicCast())
  {
    v5 = *&v50[0];
    v6 = *(*&v50[0] + 16);
    if (v6)
    {
      v47 = a2;
      v52 = _swiftEmptyArrayStorage;
      result = sub_374F4(0, v6, 0);
      v8 = 0;
      v9 = _swiftEmptyArrayStorage;
      v10 = *&v50[0] + 32;
      v11 = &qword_1BB420;
      while (v8 < *(v5 + 16))
      {
        sub_43050(v10, v50, &qword_229018, v11);
        sub_2C010(v50, &v53);
        if (v3)
        {

          sub_42F48(v50, &qword_229018, &qword_1BB420);
          sub_2BF8(v56);
        }

        v58 = 0;
        v12 = v11;
        v13 = v6;
        v14 = v12;
        result = sub_42F48(v50, &qword_229018, v12);
        v52 = v9;
        v16 = v9[2];
        v15 = v9[3];
        if (v16 >= v15 >> 1)
        {
          result = sub_374F4((v15 > 1), v16 + 1, 1);
          v9 = v52;
        }

        ++v8;
        v9[2] = v16 + 1;
        v17 = &v9[5 * v16];
        v18 = v53;
        v19 = v54;
        v17[8] = v55;
        *(v17 + 2) = v18;
        *(v17 + 3) = v19;
        v10 += 32;
        v6 = v13;
        v20 = v13 == v8;
        v11 = v14;
        v3 = v58;
        if (v20)
        {

          a2 = v47;
          goto LABEL_32;
        }
      }

      goto LABEL_38;
    }

    v9 = _swiftEmptyArrayStorage;
LABEL_32:
    v38 = &qword_229058;
    v39 = &qword_1BB440;
    *(a2 + 24) = sub_2B0C(&qword_229058, &qword_1BB440);
    v40 = &unk_229060;
    v41 = &protocol conformance descriptor for <A> [A];
LABEL_33:
    *(a2 + 32) = sub_42094(v40, v38, v39, v41);
    *a2 = v9;
    return sub_2BF8(v56);
  }

  sub_430C8(v56, &v53);
  sub_2B0C(&qword_229580, &qword_1BC5E8);
  if (!swift_dynamicCast())
  {
    sub_430C8(v56, &v52);
    sub_2B0C(&qword_229068, &qword_1BB448);
    if (swift_dynamicCast())
    {
      sub_2BF8(v56);
      sub_264B8(v50, &v53);
      return sub_264B8(&v53, a2);
    }

    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_42F48(v50, &qword_229010, &unk_1D15F0);
    v42 = sub_1B5144();
    swift_allocError();
    v44 = v43;
    sub_2B0C(&qword_229070, &qword_1BB450);
    sub_430C8(v56, v44);
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_1B5084(47);

    *&v53 = 0x272065707954;
    *(&v53 + 1) = 0xE600000000000000;
    sub_2698(v56, v57);
    swift_getDynamicType();
    v59._countAndFlagsBits = sub_1B58B4();
    sub_1B48D4(v59);

    v60._object = 0x80000000001D57F0;
    v60._countAndFlagsBits = 0xD000000000000027;
    sub_1B48D4(v60);
    sub_1B5124();
    (*(*(v42 - 8) + 104))(v44, enum case for EncodingError.invalidValue(_:), v42);
    swift_willThrow();
    return sub_2BF8(v56);
  }

  sub_2B0C(&qword_2290B8, &qword_1BB480);
  result = sub_1B5294();
  v21 = 0;
  v22 = *(*&v50[0] + 64);
  v46 = *&v50[0] + 64;
  v58 = *&v50[0];
  v23 = 1 << *(*&v50[0] + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v45 = (v23 + 63) >> 6;
  v48 = result + 8;
  v49 = result;
  if ((v24 & v22) != 0)
  {
    while (1)
    {
      v26 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_23:
      v29 = v26 | (v21 << 6);
      v30 = (*(v58 + 48) + 16 * v29);
      v31 = *v30;
      v32 = v30[1];
      sub_43050(*(v58 + 56) + 32 * v29, v50, &qword_229018, &qword_1BB420);

      sub_2C010(v50, &v53);
      if (v2)
      {
        break;
      }

      sub_42F48(v50, &qword_229018, &qword_1BB420);
      result = v49;
      *(v48 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v33 = (v49[6] + 16 * v29);
      *v33 = v31;
      v33[1] = v32;
      v34 = v49[7] + 40 * v29;
      *v34 = v53;
      *(v34 + 16) = v54;
      *(v34 + 32) = v55;
      v35 = v49[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_39;
      }

      v49[2] = v37;
      if (!v25)
      {
        goto LABEL_18;
      }
    }

    sub_42F48(v50, &qword_229018, &qword_1BB420);

    return sub_2BF8(v56);
  }

LABEL_18:
  v27 = v21;
  while (1)
  {
    v21 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v21 >= v45)
    {
      v9 = result;

      v38 = &qword_229048;
      v39 = &qword_1BB438;
      *(a2 + 24) = sub_2B0C(&qword_229048, &qword_1BB438);
      v40 = &unk_229050;
      v41 = &protocol conformance descriptor for <> [A : B];
      goto LABEL_33;
    }

    v28 = *(v46 + 8 * v21);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v25 = (v28 - 1) & v28;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t AnyCodableContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_1B5854();
  if (!v2)
  {
    sub_2698(v11, v12);
    if (sub_1B5694())
    {
      v10 = 0;
      v5 = 0uLL;
      v8 = 0u;
      v9 = 0u;
    }

    else
    {
      sub_2698(v11, v12);
      *(&v9 + 1) = &type metadata for Bool;
      v10 = &protocol witness table for Bool;
      LOBYTE(v8) = sub_1B5624() & 1;
      v5 = 0uLL;
    }

    v13 = v5;
    v14 = v5;
    v15 = 0;
    sub_40348(&v8, &v13);
    sub_2BF8(v11);
    v6 = v14;
    *a2 = v13;
    *(a2 + 16) = v6;
    *(a2 + 32) = v15;
  }

  return sub_2BF8(a1);
}

void *AnyCodableContainer.encode(to:)(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_1B5874();
  sub_43050(v1, &v51, &qword_229010, &unk_1D15F0);
  if (!v52)
  {
    sub_42F48(&v51, &qword_229010, &unk_1D15F0);
    sub_40474(v55, v56);
    sub_1B5734();
    return sub_2BF8(v55);
  }

  sub_264B8(&v51, v53);
  sub_404C4(v53, &v51);
  sub_2B0C(&qword_229068, &qword_1BB448);
  if (swift_dynamicCast())
  {
    sub_40474(v55, v56);
    sub_1B56C4();
LABEL_42:
    sub_2BF8(&v51);
    sub_2BF8(v53);
    return sub_2BF8(v55);
  }

  if (swift_dynamicCast())
  {
    sub_40474(v55, v56);
    sub_1B56F4();
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    sub_40474(v55, v56);
    sub_1B5724();
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    sub_40474(v55, v56);
    sub_1B5714();
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    sub_40474(v55, v56);
    sub_1B56E4();
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    sub_40474(v55, v56);
    sub_1B56D4();
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    sub_40474(v55, v56);
    sub_1B56B4();
LABEL_41:

    goto LABEL_42;
  }

  sub_2B0C(&qword_229058, &qword_1BB440);
  if (swift_dynamicCast())
  {
    v2 = *(v50 + 16);
    if (v2)
    {
      sub_37514(0, v2, 0);
      v3 = v50 + 32;
      do
      {
        sub_43050(v3, &v44, &qword_229010, &unk_1D15F0);
        v47 = 0u;
        v48 = 0u;
        v49 = 0;
        sub_40348(&v44, &v47);
        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        v6 = v5 + 1;
        if (v5 >= v4 >> 1)
        {
          sub_37514((v4 > 1), v5 + 1, 1);
          v6 = v5 + 1;
        }

        _swiftEmptyArrayStorage[2] = v6;
        v7 = &_swiftEmptyArrayStorage[5 * v5];
        v8 = v47;
        v9 = v48;
        v7[8] = v49;
        *(v7 + 2) = v8;
        *(v7 + 3) = v9;
        v3 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
    }

    *&v47 = _swiftEmptyArrayStorage;
    sub_40474(v55, v56);
    sub_2B0C(&qword_229020, &qword_1BB428);
    sub_40664(&qword_229090, sub_40610, &protocol conformance descriptor for <A> [A]);
    sub_1B5704();
    goto LABEL_41;
  }

  sub_2B0C(&qword_229048, &qword_1BB438);
  if (!swift_dynamicCast())
  {
    v34 = sub_1B5144();
    swift_allocError();
    v36 = v35;
    sub_2B0C(&qword_229070, &qword_1BB450);
    v37 = v54;
    v38 = sub_2698(v53, v54);
    v36[3] = v37;
    v39 = sub_40528(v36);
    (*(*(v37 - 8) + 16))(v39, v38, v37);
    sub_2698(v55, v56);
    sub_1B56A4();
    sub_1B5124();
    (*(*(v34 - 8) + 104))(v36, enum case for EncodingError.invalidValue(_:), v34);
    swift_willThrow();
    goto LABEL_42;
  }

  sub_2B0C(&qword_229078, &qword_1BB458);
  result = sub_1B5294();
  v11 = result;
  v12 = 0;
  v14 = v50 + 64;
  v13 = *(v50 + 64);
  v41 = result;
  v42 = v50;
  v15 = 1 << *(v50 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v40 = result + 8;
  if ((v16 & v13) != 0)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_34:
      v22 = v19 | (v12 << 6);
      v23 = 16 * v22;
      v24 = (*(v42 + 48) + 16 * v22);
      v25 = v24[1];
      v43 = *v24;
      v26 = 40 * v22;
      sub_43050(*(v42 + 56) + 40 * v22, &v47, &qword_229010, &unk_1D15F0);
      v46 = 0;
      v44 = 0u;
      v45 = 0u;

      result = sub_40348(&v47, &v44);
      *(v40 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v11 = v41;
      v27 = (v41[6] + v23);
      *v27 = v43;
      v27[1] = v25;
      v28 = v41[7] + v26;
      v29 = v46;
      v30 = v45;
      *v28 = v44;
      *(v28 + 16) = v30;
      *(v28 + 32) = v29;
      v31 = v41[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v41[2] = v33;
      if (!v17)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        *&v47 = v11;
        sub_40474(v55, v56);
        sub_2B0C(&qword_229038, &qword_1BB430);
        sub_4058C(&qword_229080, sub_40610, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
        sub_1B5704();

        goto LABEL_42;
      }

      v21 = *(v14 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static AnyCodableContainer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_43050(a1, v52, &qword_229010, &unk_1D15F0);
  sub_43050(a2, v54, &qword_229010, &unk_1D15F0);
  if (!(v53 | v55))
  {
    v3 = &qword_229010;
    v4 = &unk_1D15F0;
LABEL_5:
    sub_42F48(v52, v3, v4);
    v5 = 1;
    return v5 & 1;
  }

  sub_2B0C(&qword_229098, &qword_1BB460);
  sub_2B0C(&qword_2290A0, &qword_1BB468);
  if (swift_dynamicCast())
  {
    v3 = &qword_229098;
    v4 = &qword_1BB460;
    goto LABEL_5;
  }

  if (!v53)
  {
    goto LABEL_68;
  }

  sub_43050(v52, v51, &qword_229010, &unk_1D15F0);
  if (!v55)
  {
LABEL_67:
    sub_2BF8(v51);
LABEL_68:
    v36 = &qword_229098;
    v37 = &qword_1BB460;
LABEL_69:
    sub_42F48(v52, v36, v37);
    v5 = 0;
    return v5 & 1;
  }

  sub_43050(v54, v50, &qword_229010, &unk_1D15F0);
  sub_2B0C(&qword_229068, &qword_1BB448);
  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v5 = v39 ^ v46 ^ 1;
LABEL_29:
    sub_2BF8(v50);
    sub_2BF8(v51);
LABEL_30:
    sub_42F48(v54, &qword_229010, &unk_1D15F0);
    sub_42F48(v52, &qword_229010, &unk_1D15F0);
    return v5 & 1;
  }

  if (swift_dynamicCast() && (v7 = v39, swift_dynamicCast()) || swift_dynamicCast() && (v7 = v39, swift_dynamicCast()))
  {
    v8 = v7 == v46;
    goto LABEL_26;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v8 = v39 == v46;
    goto LABEL_26;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v8 = *&v39 == *&v46;
    goto LABEL_26;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v8 = *&v39 == *&v46;
LABEL_26:
    v5 = v8;
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      if (v39 == v46)
      {
        v5 = 1;
      }

      else
      {
        v5 = sub_1B5604();
      }

LABEL_72:
      sub_2BF8(v50);
      sub_2BF8(v51);
      goto LABEL_30;
    }
  }

  sub_2B0C(&qword_229058, &qword_1BB440);
  if (!swift_dynamicCast())
  {
LABEL_47:
    sub_2B0C(&qword_229048, &qword_1BB438);
    if (swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        v16 = v49;
        if (*(v38[0] + 16) == *(v49 + 16))
        {

          v18 = sub_2A284(v17);

          v20 = sub_2A284(v19);
          v21 = sub_2DF24(v18, v20);

          if (v21)
          {
            v22 = 1 << *(v38[0] + 32);
            v23 = -1;
            if (v22 < 64)
            {
              v23 = ~(-1 << v22);
            }

            v24 = v23 & *(v38[0] + 64);
            v25 = (v22 + 63) >> 6;

            v26 = 0;
            while (v24)
            {
LABEL_59:
              if (!*(v38[0] + 16))
              {
                goto LABEL_81;
              }

              v28 = (*(v38[0] + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v24)))));
              v30 = *v28;
              v29 = v28[1];

              result = sub_3A678(v30, v29);
              if ((v31 & 1) == 0)
              {
                goto LABEL_82;
              }

              sub_43050(*(v38[0] + 56) + 40 * result, &v46, &qword_229010, &unk_1D15F0);
              v39 = 0u;
              v40 = 0u;
              v41 = 0;
              result = sub_40348(&v46, &v39);
              if (!*(v16 + 16))
              {
                goto LABEL_83;
              }

              v32 = sub_3A678(v30, v29);
              v34 = v33;

              if ((v34 & 1) == 0)
              {
                goto LABEL_84;
              }

              v24 &= v24 - 1;
              sub_43050(*(v16 + 56) + 40 * v32, v44, &qword_229010, &unk_1D15F0);
              v46 = 0u;
              v47 = 0u;
              v48 = 0;
              sub_40348(v44, &v46);
              v35 = static AnyCodableContainer.== infix(_:_:)(&v39, &v46);
              sub_40444(&v46);
              result = sub_40444(&v39);
              if ((v35 & 1) == 0)
              {

                goto LABEL_74;
              }
            }

            while (1)
            {
              v27 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                goto LABEL_79;
              }

              if (v27 >= v25)
              {

                sub_2BF8(v50);
                sub_2BF8(v51);
                sub_42F48(v54, &qword_229010, &unk_1D15F0);
                v3 = &qword_229010;
                v4 = &unk_1D15F0;
                goto LABEL_5;
              }

              v24 = *(v38[0] + 64 + 8 * v27);
              ++v26;
              if (v24)
              {
                v26 = v27;
                goto LABEL_59;
              }
            }
          }
        }

        goto LABEL_73;
      }
    }

    sub_2BF8(v50);
    goto LABEL_67;
  }

  v9 = v49;
  result = swift_dynamicCast();
  if (!result)
  {

    goto LABEL_47;
  }

  v10 = v43;
  v11 = *(v49 + 16);
  if (v11 != *(v43 + 16))
  {
LABEL_73:

LABEL_74:

    sub_2BF8(v50);
    sub_2BF8(v51);
    sub_42F48(v54, &qword_229010, &unk_1D15F0);
    v36 = &qword_229010;
    v37 = &unk_1D15F0;
    goto LABEL_69;
  }

  v12 = 0;
  v13 = 32;
  while (1)
  {
    if (v11 == v12)
    {

      v5 = 1;
      goto LABEL_72;
    }

    if (v12 >= *(v9 + 16))
    {
      break;
    }

    result = sub_43050(v9 + v13, &v46, &qword_229010, &unk_1D15F0);
    v14 = *(v10 + 16);
    if (v12 == v14)
    {

      sub_42F48(&v46, &qword_229010, &unk_1D15F0);
      v5 = 1;
      goto LABEL_72;
    }

    if (v12++ >= v14)
    {
      goto LABEL_80;
    }

    v39 = v46;
    v40 = v47;
    v41 = v48;
    sub_43050(v10 + v13, v42, &qword_229010, &unk_1D15F0);
    sub_43050(&v39, v44, &qword_229010, &unk_1D15F0);
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
    sub_40348(v44, &v46);
    sub_43050(v42, v38, &qword_229010, &unk_1D15F0);
    memset(v44, 0, sizeof(v44));
    v45 = 0;
    sub_40348(v38, v44);
    v15 = static AnyCodableContainer.== infix(_:_:)(&v46, v44);
    sub_40444(v44);
    sub_40444(&v46);
    result = sub_42F48(&v39, &qword_229098, &qword_1BB460);
    v13 += 40;
    if ((v15 & 1) == 0)
    {

      v5 = 0;
      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_2DF24(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1B57F4();

    sub_1B4884();
    v16 = sub_1B5844();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1B5604() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2E0DC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_1B57E4();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnyCodableContainer.hash(into:)(uint64_t a1)
{
  sub_43050(v1, v39, &qword_229010, &unk_1D15F0);
  if (!v40)
  {
    return sub_42F48(v39, &qword_229010, &unk_1D15F0);
  }

  sub_43050(v39, v38, &qword_229010, &unk_1D15F0);
  sub_2B0C(&qword_229068, &qword_1BB448);
  if (swift_dynamicCast())
  {
    sub_1B5814(v33);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    sub_1B5804(v33);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v3 = v33;
LABEL_8:
    sub_1B5834(v3);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v4 = v33;
LABEL_15:
    sub_1B5824(v4);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v5 = *&v33;
    if (*&v33 == 0.0)
    {
      v5 = 0.0;
    }

    v4 = LODWORD(v5);
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v7 = *&v33;
    if (*&v33 == 0.0)
    {
      v7 = 0.0;
    }

    v3 = *&v7;
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    sub_1B4884();

    goto LABEL_16;
  }

  sub_2B0C(&qword_2290A8, &qword_1BB470);
  if (swift_dynamicCast())
  {
    v8 = *(*&v27[0] + 16);
    if (v8)
    {
      v9 = *&v27[0] + 32;
      do
      {
        sub_404C4(v9, &v29);
        v33 = 0u;
        v34 = 0u;
        *&v35 = 0;
        sub_40348(&v29, &v33);
        AnyCodableContainer.hash(into:)(a1);
        sub_40444(&v33);
        v9 += 40;
        --v8;
      }

      while (v8);
    }

    goto LABEL_16;
  }

  sub_2B0C(&qword_2290B0, &qword_1BB478);
  result = swift_dynamicCast();
  if (!result)
  {
LABEL_16:
    sub_2BF8(v38);
    return sub_42F48(v39, &qword_229010, &unk_1D15F0);
  }

  v10 = 0;
  v11 = v37;
  v13 = v37 + 64;
  v12 = *(v37 + 64);
  v14 = 1 << *(v37 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  if ((v15 & v12) != 0)
  {
    while (1)
    {
      v18 = v10;
LABEL_41:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v21 | (v18 << 6);
      v23 = (*(v11 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      sub_404C4(*(v11 + 56) + 40 * v22, v27);
      *&v29 = v25;
      *(&v29 + 1) = v24;
      sub_264B8(v27, &v30);

      v20 = v18;
LABEL_42:
      v33 = v29;
      v34 = v30;
      v35 = v31;
      v36 = v32;
      if (!*(&v29 + 1))
      {
        break;
      }

      sub_264B8(&v34, &v29);
      sub_1B4884();

      sub_404C4(&v29, v26);
      memset(v27, 0, sizeof(v27));
      v28 = 0;
      sub_40348(v26, v27);
      AnyCodableContainer.hash(into:)(a1);
      sub_2BF8(&v29);
      result = sub_40444(v27);
      v10 = v20;
      if (!v16)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_16;
  }

LABEL_34:
  if (v17 <= v10 + 1)
  {
    v19 = v10 + 1;
  }

  else
  {
    v19 = v17;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      v16 = 0;
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      goto LABEL_42;
    }

    v16 = *(v13 + 8 * v18);
    ++v10;
    if (v16)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

Swift::Int AnyCodableContainer.hashValue.getter()
{
  sub_1B57F4();
  AnyCodableContainer.hash(into:)(v1);
  return sub_1B5844();
}

Swift::Int sub_2E714(uint64_t a1)
{
  sub_1B57F4();
  AnyCodableContainer.hash(into:)(v2);
  return sub_1B5844();
}

uint64_t AnyCodableContainer.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[3] = &type metadata for String;
  v4[4] = &protocol witness table for String;
  v4[0] = a1;
  v4[1] = a2;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return sub_40348(v4, a3);
}

uint64_t sub_2E7A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6[3] = &type metadata for String;
  v6[4] = &protocol witness table for String;
  v6[0] = v3;
  v6[1] = v4;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return sub_40348(v6, a2);
}

uint64_t AnyCodableContainer.init(nilLiteral:)@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return sub_40348(v2, a1);
}

uint64_t AnyCodableContainer.init(integerLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[3] = &type metadata for Int;
  v3[4] = &protocol witness table for Int;
  v3[0] = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return sub_40348(v3, a2);
}

uint64_t sub_2E878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5[3] = &type metadata for Int;
  v5[4] = &protocol witness table for Int;
  v5[0] = v3;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return sub_40348(v5, a2);
}

uint64_t AnyCodableContainer.init(floatLiteral:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3[3] = &type metadata for Double;
  v3[4] = &protocol witness table for Double;
  *v3 = a2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return sub_40348(v3, a1);
}

uint64_t sub_2E914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  v4[0] = v2;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return sub_40348(v4, a2);
}

uint64_t AnyCodableContainer.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[3] = sub_2B0C(&qword_229058, &qword_1BB440);
  v5[4] = sub_42094(&qword_229060, &qword_229058, &qword_1BB440, &protocol conformance descriptor for <A> [A]);
  v5[0] = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return sub_40348(v5, a2);
}

uint64_t AnyCodableContainer.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    sub_2B0C(&qword_2290B8, &qword_1BB480);
    v4 = sub_1B52B4();
    a1 = v3;
  }

  else
  {
    v4 = _swiftEmptyDictionarySingleton;
  }

  v7[0] = v4;
  sub_3B324(a1, 1, v7);
  v5 = v7[0];
  v7[3] = sub_2B0C(&qword_229048, &qword_1BB438);
  v7[4] = sub_42094(&qword_229050, &qword_229048, &qword_1BB438, &protocol conformance descriptor for <> [A : B]);
  v7[0] = v5;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return sub_40348(v7, a2);
}

uint64_t AnyCodableObjectContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_1B5854();
  if (!v2)
  {
    sub_2698(v7, v7[3]);
    sub_2B0C(&qword_229038, &qword_1BB430);
    sub_4058C(&qword_229040, sub_403B8, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_1B5664();
    v5 = sub_35600(v7[6]);

    sub_2BF8(v7);
    *a2 = v5;
  }

  return sub_2BF8(a1);
}

uint64_t AnyCodableObjectContainer.encode(to:)(void *a1)
{
  v2 = *v1;
  sub_2698(a1, a1[3]);
  sub_1B5874();
  sub_2B0C(&qword_229078, &qword_1BB458);
  result = sub_1B5294();
  v4 = 0;
  v6 = v2 + 64;
  v5 = *(v2 + 64);
  v26 = v2;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  v25 = result + 64;
  v32 = result;
  if ((v8 & v5) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v4 << 6);
      v15 = (*(v26 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      sub_43050(*(v26 + 56) + 40 * v14, v30, &qword_229010, &unk_1D15F0);
      v29 = 0;
      v27 = 0u;
      v28 = 0u;

      sub_40348(v30, &v27);
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32;
      v18 = (*(v32 + 48) + 16 * v14);
      *v18 = v16;
      v18[1] = v17;
      v19 = *(result + 56) + 40 * v14;
      v20 = v29;
      v21 = v28;
      *v19 = v27;
      *(v19 + 16) = v21;
      *(v19 + 32) = v20;
      v22 = *(result + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      *(result + 16) = v24;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 >= v10)
      {
        v30[0] = result;
        sub_40474(v31, v31[3]);
        sub_2B0C(&qword_229038, &qword_1BB430);
        sub_4058C(&qword_229080, sub_40610, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
        sub_1B5704();

        return sub_2BF8(v31);
      }

      v13 = *(v6 + 8 * v4);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AnyCodableObjectContainer.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = *(*(v3 + 48) + 16 * v12 + 8);
      sub_43050(*(v3 + 56) + 40 * v12, &v20, &qword_229010, &unk_1D15F0);
      v15 = v20;
      v16 = v21;
      v14 = v22;

      if (!v13)
      {
      }

      v7 &= v7 - 1;
      v20 = v15;
      v21 = v16;
      v22 = v14;
      sub_1B4884();

      sub_43050(&v20, v17, &qword_229010, &unk_1D15F0);
      memset(v18, 0, sizeof(v18));
      v19 = 0;
      sub_40348(v17, v18);
      AnyCodableContainer.hash(into:)(a1);
      sub_42F48(&v20, &qword_229010, &unk_1D15F0);
      result = sub_40444(v18);
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
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

Swift::Int AnyCodableObjectContainer.hashValue.getter()
{
  v2[9] = *v0;
  sub_1B57F4();
  AnyCodableObjectContainer.hash(into:)(v2);
  return sub_1B5844();
}

uint64_t AnyCodableObjectContainer.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    sub_2B0C(&qword_2290B8, &qword_1BB480);
    v4 = sub_1B52B4();
    a1 = v3;
  }

  else
  {
    v4 = _swiftEmptyDictionarySingleton;
  }

  v6 = v4;
  result = sub_3B324(a1, 1, &v6);
  *a2 = v6;
  return result;
}

uint64_t sub_2F24C@<X0>(uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2();

  if (!v3)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t AnyCodableArrayContainer.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_1B5854();
  if (!v2)
  {
    sub_2698(v17, v17[3]);
    sub_2B0C(&qword_229020, &qword_1BB428);
    sub_40664(&qword_229028, sub_403B8, &protocol conformance descriptor for <A> [A]);
    sub_1B5664();
    v5 = *(*&v15[0] + 16);
    if (v5)
    {
      v18 = _swiftEmptyArrayStorage;
      sub_374F4(0, v5, 0);
      v6 = v18;
      v7 = *&v15[0] + 32;
      do
      {
        sub_4040C(v7, v14);
        sub_43050(v14, v15, &qword_229010, &unk_1D15F0);
        sub_40444(v14);
        v18 = v6;
        v9 = v6[2];
        v8 = v6[3];
        if (v9 >= v8 >> 1)
        {
          sub_374F4((v8 > 1), v9 + 1, 1);
          v6 = v18;
        }

        v6[2] = v9 + 1;
        v10 = &v6[5 * v9];
        v11 = v15[0];
        v12 = v15[1];
        v10[8] = v16;
        *(v10 + 2) = v11;
        *(v10 + 3) = v12;
        v7 += 40;
        --v5;
      }

      while (v5);
    }

    else
    {

      v6 = _swiftEmptyArrayStorage;
    }

    sub_2BF8(v17);
    *a2 = v6;
  }

  return sub_2BF8(a1);
}

uint64_t AnyCodableArrayContainer.encode(to:)(void *a1)
{
  v2 = *v1;
  sub_2698(a1, a1[3]);
  sub_1B5874();
  v3 = *(v2 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_37514(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v2 + 32;
    do
    {
      sub_43050(v5, v12, &qword_229010, &unk_1D15F0);
      v13 = 0u;
      v14 = 0u;
      v15 = 0;
      sub_40348(v12, &v13);
      v17 = v4;
      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        sub_37514((v6 > 1), v7 + 1, 1);
        v4 = v17;
      }

      v4[2] = v7 + 1;
      v8 = &v4[5 * v7];
      v9 = v13;
      v10 = v14;
      v8[8] = v15;
      *(v8 + 2) = v9;
      *(v8 + 3) = v10;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  *&v13 = v4;
  sub_40474(v16, v16[3]);
  sub_2B0C(&qword_229020, &qword_1BB428);
  sub_40664(&qword_229090, sub_40610, &protocol conformance descriptor for <A> [A]);
  sub_1B5704();

  return sub_2BF8(v16);
}

uint64_t AnyCodableArrayContainer.hash(into:)(uint64_t result)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *v1 + 32;
    do
    {
      sub_43050(v4, v5, &qword_229010, &unk_1D15F0);
      memset(v6, 0, sizeof(v6));
      v7 = 0;
      sub_40348(v5, v6);
      AnyCodableContainer.hash(into:)(v3);
      result = sub_40444(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

Swift::Int AnyCodableArrayContainer.hashValue.getter()
{
  v1 = *v0;
  sub_1B57F4();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_43050(v3, v5, &qword_229010, &unk_1D15F0);
      memset(v6, 0, sizeof(v6));
      v7 = 0;
      sub_40348(v5, v6);
      AnyCodableContainer.hash(into:)(v8);
      sub_40444(v6);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return sub_1B5844();
}

Swift::Int sub_2F830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v6[9] = *v3;
  sub_1B57F4();
  a3(v6);
  return sub_1B5844();
}

Swift::Int sub_2F8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v7[9] = *v4;
  sub_1B57F4();
  a4(v7);
  return sub_1B5844();
}

unint64_t CommonErrorPayload.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v12 = 0;
      v13 = 0xE000000000000000;
      sub_1B5084(52);
      v20._object = 0x80000000001D5640;
      v20._countAndFlagsBits = 0xD000000000000024;
      sub_1B48D4(v20);
      v21._countAndFlagsBits = v2;
      v21._object = v1;
      sub_1B48D4(v21);
      v6._countAndFlagsBits = 0x73206D6F72662027;
      v6._object = 0xEE002E676E697274;
    }

    else if (v3 == 4)
    {
      v12 = 0;
      v13 = 0xE000000000000000;
      sub_1B5084(54);
      v16._object = 0x80000000001D55F0;
      v16._countAndFlagsBits = 0xD000000000000024;
      sub_1B48D4(v16);
      v17._countAndFlagsBits = v2;
      v17._object = v1;
      sub_1B48D4(v17);
      v6._countAndFlagsBits = 0xD000000000000010;
      v6._object = 0x80000000001D5620;
    }

    else
    {
      sub_1B5084(27);

      v12 = 0xD000000000000019;
      v13 = 0x80000000001D55D0;
      v6._countAndFlagsBits = v2;
      v6._object = v1;
    }

    goto LABEL_13;
  }

  if (!*(v0 + 16))
  {
    v12 = 0;
    v13 = 0xE000000000000000;

    sub_1B5084(59);
    v18._countAndFlagsBits = 0xD000000000000039;
    v18._object = 0x80000000001D56D0;
    sub_1B48D4(v18);
    sub_4123C(128, v2, v1);
    sub_416C4(v2, v1, 0);
    v7 = sub_1B4864();
    v9 = v8;

    v19._countAndFlagsBits = v7;
    v19._object = v9;
    sub_1B48D4(v19);

    return v12;
  }

  if (v3 != 1)
  {
    sub_1B5084(42);

    v12 = 0xD00000000000001BLL;
    v13 = 0x80000000001D5670;
    v22._countAndFlagsBits = v2;
    v22._object = v1;
    sub_1B48D4(v22);
    v6._countAndFlagsBits = 0x73696D2073692027;
    v6._object = 0xED00002E676E6973;
LABEL_13:
    sub_1B48D4(v6);
    return v12;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1B5084(56);
  v14._countAndFlagsBits = 0xD000000000000036;
  v14._object = 0x80000000001D5690;
  sub_1B48D4(v14);
  sub_4161C(v2, v1);
  sub_2FC40(128, v2, v1, v11);
  v4 = v11[0];
  v5 = v11[1];
  v15._countAndFlagsBits = sub_1B3F54();
  sub_1B48D4(v15);

  sub_41670(v4, v5);
  return v12;
}

uint64_t sub_2FC40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_40174(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_40110(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1B3F74();
    v15 = v14;
    result = sub_41670(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2FD88(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for CollectionRecommendation(0);
    return a2;
  }

  return result;
}

uint64_t sub_2FE20(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t static APICommonHelpers.utf8Data(for:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4804();
  v8 = sub_1B47D4();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    sub_41710();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = 0;
    swift_willThrow();
  }

  return v8;
}

uint64_t static APICommonHelpers.string(from:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B4824();
  __chkstk_darwin(v4 - 8);
  sub_1B4804();
  result = sub_1B47E4();
  if (!v6)
  {
    sub_41710();
    swift_allocError();
    *v7 = a1;
    *(v7 + 8) = a2;
    *(v7 + 16) = 1;
    swift_willThrow();
    return sub_4161C(a1, a2);
  }

  return result;
}

uint64_t static APICommonHelpers.ensureNoAdditionalProperties(in:knownKeys:)(void *a1, uint64_t a2)
{
  v5 = sub_2B0C(&qword_2290C8, &qword_1BB488);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  sub_2698(a1, a1[3]);
  sub_41764();
  result = sub_1B5864();
  if (!v2)
  {
    v13 = sub_1B5444();
    v14 = sub_40DB0(v13);

    v15 = sub_29CB0(a2);
    v28 = 0;
    v16 = sub_3C66C(v15, v14);

    (*(v6 + 32))(v11, v9, v5);
    v17 = v16[2];
    if (v17)
    {
      v26 = v6;
      v27 = v11;
      v18 = sub_354DC(v17, 0, &qword_229548, &qword_1BC5B8);
      v19 = sub_3EB38(v31, v18 + 4, v17, v16);
      v20 = v31[0];

      sub_417B8(v20);
      if (v19 == v17)
      {
        v31[0] = v18;
        v21 = v28;
        sub_32E98(v31);
        if (v21)
        {
LABEL_11:

          __break(1u);
          return result;
        }

        v22 = v27;
        if (*(v31[0] + 2))
        {
          v23 = *(v31[0] + 4);
          v24 = *(v31[0] + 5);

          v31[0] = v23;
          v31[1] = v24;
          v29 = 0;
          v30 = 0xE000000000000000;
          sub_1B5084(77);
          v32._countAndFlagsBits = 0xD00000000000002ELL;
          v32._object = 0x80000000001D5710;
          sub_1B48D4(v32);
          v25 = v16[2];

          v31[6] = v25;
          v33._countAndFlagsBits = sub_1B5594();
          sub_1B48D4(v33);

          v34._object = 0x80000000001D5740;
          v34._countAndFlagsBits = 0xD00000000000001DLL;
          sub_1B48D4(v34);
          sub_1B5114();
          swift_allocError();
          sub_42094(&qword_2290D8, &qword_2290C8, &qword_1BB488, &protocol conformance descriptor for KeyedDecodingContainer<A>);
          sub_1B50D4();

          swift_willThrow();
          return (*(v26 + 8))(v22, v5);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_11;
    }

    (*(v6 + 8))(v11, v5);
  }

  return result;
}

uint64_t static APICommonHelpers.decodeAdditionalProperties(in:knownKeys:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_2B0C(&qword_2290C8, &qword_1BB488);
  v23 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  sub_2698(a1, a1[3]);
  sub_41764();
  result = sub_1B5864();
  if (!v3)
  {
    v14 = sub_1B5444();
    v15 = sub_40DB0(v14);

    v16 = sub_29CB0(a2);
    v17 = sub_3C66C(v16, v15);

    v18 = v23;
    v19 = (*(v23 + 32))(v12, v10, v7);
    if (v17[2])
    {
      __chkstk_darwin(v19);
      *(&v22 - 2) = v12;
      v20 = sub_29ED8(sub_417C0, (&v22 - 4), v17);

      if (v20[2])
      {
        sub_2B0C(&qword_2290B8, &qword_1BB480);
        v21 = sub_1B52B4();
      }

      else
      {
        v21 = _swiftEmptyDictionarySingleton;
      }

      v24 = v21;
      sub_3B324(v20, 1, &v24);
    }

    else
    {

      v24 = _swiftEmptyDictionarySingleton;
      sub_3B324(_swiftEmptyArrayStorage, 1, &v24);
    }

    *a3 = v24;
    return (*(v18 + 8))(v12, v7);
  }

  return result;
}

double sub_307C0@<D0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a1[1];
  *a3 = *a1;
  *(a3 + 8) = v6;

  sub_2B0C(&qword_2290C8, &qword_1BB488);
  sub_403B8();
  sub_1B5404();
  if (v3)
  {

    *a2 = v3;
  }

  else
  {
    result = *&v8;
    *(a3 + 16) = v8;
    *(a3 + 32) = v9;
    *(a3 + 48) = v10;
  }

  return result;
}

void *static APICommonHelpers.decodeAdditionalProperties<A>(in:knownKeys:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v8 = sub_2B0C(&qword_2290C8, &qword_1BB488);
  v29 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  v14 = sub_2698(a1, a1[3]);
  sub_41764();
  sub_1B5864();
  if (!v4)
  {
    v27 = a4;
    v15 = sub_1B5444();
    v16 = sub_40DB0(v15);

    v17 = sub_29CB0(v28);
    v28 = 0;
    v18 = sub_3C66C(v17, v16);

    v19 = v29;
    v20 = (*(v29 + 32))(v13, v11, v8);
    if (v18[2])
    {
      v25[1] = v25;
      v26 = v8;
      v30 = v18;
      __chkstk_darwin(v20);
      v21 = v27;
      v25[-4] = a3;
      v25[-3] = v21;
      v25[-2] = v13;
      sub_2B0C(&qword_2290E0, &qword_1BB490);
      swift_getTupleTypeMetadata2();
      sub_42094(&qword_2290E8, &qword_2290E0, &qword_1BB490, &protocol conformance descriptor for Set<A>);
      v22 = v28;
      v14 = sub_1B49C4();

      v28 = v22;
      if (v22)
      {
        (*(v19 + 8))(v13, v26);
        return v14;
      }

      v30 = v14;
      sub_1B4B94();
      swift_getWitnessTable();
      v14 = sub_1B46E4();
      v8 = v26;
    }

    else
    {

      swift_getTupleTypeMetadata2();
      v23 = sub_1B4B24();
      v14 = sub_41800(v23, &type metadata for String, a3, &protocol witness table for String);
    }

    (*(v19 + 8))(v13, v8);
  }

  return v14;
}

uint64_t sub_30C38@<X0>(uint64_t *a1@<X0>, void *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a4 = v7;
  a4[1] = v6;

  sub_2B0C(&qword_2290C8, &qword_1BB488);
  sub_1B5404();
  if (v4)
  {
  }

  else
  {
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a4, 0, 1, TupleTypeMetadata2);
  }
}

uint64_t static APICommonHelpers.encodeAdditionalProperties(_:into:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v31 = sub_2B0C(&qword_2290F0, &qword_1BB498);
  result = __chkstk_darwin(v31);
  v9 = &v22 - v8;
  v10 = *a1;
  if (*(*a1 + 16))
  {
    v23 = v7;
    sub_2698(a2, a2[3]);
    sub_41764();
    sub_1B5884();
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v10 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    if (v13)
    {
      while (1)
      {
        v16 = v15;
LABEL_9:
        v17 = __clz(__rbit64(v13)) | (v16 << 6);
        v18 = (*(v10 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        sub_43050(*(v10 + 56) + 40 * v17, &v28, &qword_229010, &unk_1D15F0);
        v24 = v29;
        v25 = v28;
        v21 = v30;

        if (!v20)
        {
          break;
        }

        v26[1] = v24;
        v26[0] = v25;
        v27 = v21;
        v28 = 0u;
        v29 = 0u;
        v30 = 0;
        sub_40348(v26, &v28);
        *&v26[0] = v19;
        *(&v26[0] + 1) = v20;
        sub_40610();
        sub_1B5544();
        if (v3)
        {

          (*(v23 + 8))(v9, v31);
          return sub_40444(&v28);
        }

        v13 &= v13 - 1;

        result = sub_40444(&v28);
        v15 = v16;
        if (!v13)
        {
          goto LABEL_6;
        }
      }

LABEL_13:

      return (*(v23 + 8))(v9, v31);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {
          goto LABEL_13;
        }

        v13 = *(v10 + 64 + 8 * v16);
        ++v15;
        if (v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t static APICommonHelpers.encodeAdditionalProperties<A>(_:into:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v54 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v69 = sub_1B4EA4();
  v64 = *(v69 - 8);
  v13 = __chkstk_darwin(v69);
  v68 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = &v54 - v15;
  v70 = sub_2B0C(&qword_2290F0, &qword_1BB498);
  v16 = *(v70 - 8);
  __chkstk_darwin(v70);
  v18 = &v54 - v17;
  result = sub_1B4704();
  if ((result & 1) == 0)
  {
    v54 = v16;
    sub_2698(a2, a2[3]);
    sub_41764();
    v66 = v18;
    sub_1B5884();
    v20 = a1;
    v21 = *(a1 + 64);
    v55 = a1 + 64;
    v22 = 1 << *(a1 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v21;
    v25 = (v22 + 63) >> 6;
    v56 = v7 + 16;
    v71 = (v7 + 32);
    v64 += 4;
    v65 = TupleTypeMetadata2 - 8;
    v58 = v7;
    v59 = v20;
    v62 = (v7 + 8);

    v26 = 0;
    v63 = v10;
    v57 = TupleTypeMetadata2;
    v27 = v61;
    v28 = TupleTypeMetadata2;
    v29 = v75;
    v72 = a3;
    if (v24)
    {
      while (1)
      {
        v75 = v29;
        v30 = v26;
LABEL_14:
        v33 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v34 = v33 | (v30 << 6);
        v35 = v58;
        v36 = (*(v59 + 48) + 16 * v34);
        v38 = *v36;
        v37 = v36[1];
        v39 = v60;
        v40 = v72;
        (*(v58 + 16))(v60, *(v59 + 56) + *(v58 + 72) * v34, v72);
        v41 = v57;
        v42 = *(v57 + 48);
        v43 = v68;
        *v68 = v38;
        *(v43 + 1) = v37;
        v28 = v41;
        (*(v35 + 32))(&v43[v42], v39, v40);
        v44 = *(v28 - 8);
        (*(v44 + 56))(v43, 0, 1, v28);

        v32 = v30;
        v45 = v43;
        v27 = v61;
LABEL_15:
        (*v64)(v27, v45, v69);
        if ((*(v44 + 48))(v27, 1, v28) == 1)
        {
          (*(v54 + 8))(v66, v70);
        }

        v46 = *v27;
        v47 = v27[1];
        v48 = v28;
        v49 = v72;
        v50 = v27 + *(v28 + 48);
        v51 = v63;
        (*v71)(v63, v50, v72);
        v73 = v46;
        v74 = v47;
        v52 = v75;
        sub_1B5544();
        v29 = v52;

        if (v52)
        {
          break;
        }

        result = (*v62)(v51, v49);
        v26 = v32;
        v28 = v48;
        if (!v24)
        {
          goto LABEL_6;
        }
      }

      (*v62)(v51, v49);
      return (*(v54 + 8))(v66, v70);
    }

    else
    {
LABEL_6:
      if (v25 <= v26 + 1)
      {
        v31 = v26 + 1;
      }

      else
      {
        v31 = v25;
      }

      v32 = v31 - 1;
      while (1)
      {
        v30 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v30 >= v25)
        {
          v75 = v29;
          v44 = *(v28 - 8);
          v53 = v68;
          (*(v44 + 56))(v68, 1, 1, v28);
          v45 = v53;
          v24 = 0;
          goto LABEL_15;
        }

        v24 = *(v55 + 8 * v30);
        ++v26;
        if (v24)
        {
          v75 = v29;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_3160C(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v28 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v28;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v28 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B5154();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v26 = result;

  v7 = sub_3E128(v26, a2, 10);
  v25 = v27;

LABEL_63:
  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}