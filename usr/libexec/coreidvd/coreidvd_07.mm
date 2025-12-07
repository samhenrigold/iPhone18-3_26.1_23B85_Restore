uint64_t getEnumTagSinglePayload for CameraImage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraImage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActiveLivenessConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActiveLivenessConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RegionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RegionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000B435C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1000B43B8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

__n128 sub_1000B4428(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000B4454(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 105))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B4474(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
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

  *(result + 105) = v3;
  return result;
}

uint64_t sub_1000B44CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000B4514(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B456C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000B45C8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000B464C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000B46A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1000B4700(uint64_t a1, int a2)
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

uint64_t sub_1000B4748(uint64_t result, int a2, int a3)
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

uint64_t sub_1000B47A8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1000B4804(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FeatureConfig(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureConfig(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000B4A14(uint64_t a1, int a2)
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

uint64_t sub_1000B4A5C(uint64_t result, int a2, int a3)
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

unint64_t sub_1000B4AD0()
{
  result = qword_100837AE0;
  if (!qword_100837AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837AE0);
  }

  return result;
}

unint64_t sub_1000B4B28()
{
  result = qword_100837AE8;
  if (!qword_100837AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837AE8);
  }

  return result;
}

unint64_t sub_1000B4B80()
{
  result = qword_100837AF0;
  if (!qword_100837AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837AF0);
  }

  return result;
}

unint64_t sub_1000B4BD8()
{
  result = qword_100837AF8;
  if (!qword_100837AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837AF8);
  }

  return result;
}

unint64_t sub_1000B4C30()
{
  result = qword_100837B00;
  if (!qword_100837B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B00);
  }

  return result;
}

unint64_t sub_1000B4C88()
{
  result = qword_100837B08;
  if (!qword_100837B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B08);
  }

  return result;
}

unint64_t sub_1000B4CE0()
{
  result = qword_100837B10;
  if (!qword_100837B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B10);
  }

  return result;
}

unint64_t sub_1000B4D38()
{
  result = qword_100837B18;
  if (!qword_100837B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B18);
  }

  return result;
}

unint64_t sub_1000B4D90()
{
  result = qword_100837B20;
  if (!qword_100837B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B20);
  }

  return result;
}

unint64_t sub_1000B4DE8()
{
  result = qword_100837B28;
  if (!qword_100837B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B28);
  }

  return result;
}

unint64_t sub_1000B4E40()
{
  result = qword_100837B30;
  if (!qword_100837B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B30);
  }

  return result;
}

unint64_t sub_1000B4E98()
{
  result = qword_100837B38;
  if (!qword_100837B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B38);
  }

  return result;
}

unint64_t sub_1000B4EF0()
{
  result = qword_100837B40;
  if (!qword_100837B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B40);
  }

  return result;
}

unint64_t sub_1000B4F48()
{
  result = qword_100837B48;
  if (!qword_100837B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B48);
  }

  return result;
}

unint64_t sub_1000B4FA0()
{
  result = qword_100837B50;
  if (!qword_100837B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B50);
  }

  return result;
}

unint64_t sub_1000B4FF8()
{
  result = qword_100837B58;
  if (!qword_100837B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B58);
  }

  return result;
}

unint64_t sub_1000B5050()
{
  result = qword_100837B60;
  if (!qword_100837B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B60);
  }

  return result;
}

unint64_t sub_1000B50A8()
{
  result = qword_100837B68;
  if (!qword_100837B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B68);
  }

  return result;
}

unint64_t sub_1000B5100()
{
  result = qword_100837B70;
  if (!qword_100837B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B70);
  }

  return result;
}

unint64_t sub_1000B5158()
{
  result = qword_100837B78;
  if (!qword_100837B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B78);
  }

  return result;
}

unint64_t sub_1000B51B0()
{
  result = qword_100837B80;
  if (!qword_100837B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B80);
  }

  return result;
}

unint64_t sub_1000B5208()
{
  result = qword_100837B88;
  if (!qword_100837B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B88);
  }

  return result;
}

unint64_t sub_1000B5260()
{
  result = qword_100837B90;
  if (!qword_100837B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B90);
  }

  return result;
}

unint64_t sub_1000B52B8()
{
  result = qword_100837B98;
  if (!qword_100837B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837B98);
  }

  return result;
}

unint64_t sub_1000B5310()
{
  result = qword_100837BA0;
  if (!qword_100837BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837BA0);
  }

  return result;
}

unint64_t sub_1000B5368()
{
  result = qword_100837BA8;
  if (!qword_100837BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837BA8);
  }

  return result;
}

unint64_t sub_1000B53C0()
{
  result = qword_100837BB0;
  if (!qword_100837BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837BB0);
  }

  return result;
}

unint64_t sub_1000B5418()
{
  result = qword_100837BB8;
  if (!qword_100837BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837BB8);
  }

  return result;
}

unint64_t sub_1000B5470()
{
  result = qword_100837BC0;
  if (!qword_100837BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837BC0);
  }

  return result;
}

unint64_t sub_1000B54C8()
{
  result = qword_100837BC8;
  if (!qword_100837BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837BC8);
  }

  return result;
}

unint64_t sub_1000B5520()
{
  result = qword_100837BD0;
  if (!qword_100837BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837BD0);
  }

  return result;
}

unint64_t sub_1000B5578()
{
  result = qword_100837BD8;
  if (!qword_100837BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837BD8);
  }

  return result;
}

unint64_t sub_1000B55D0()
{
  result = qword_100837BE0;
  if (!qword_100837BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837BE0);
  }

  return result;
}

unint64_t sub_1000B5628()
{
  result = qword_100837BE8;
  if (!qword_100837BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837BE8);
  }

  return result;
}

unint64_t sub_1000B5680()
{
  result = qword_100837BF0;
  if (!qword_100837BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837BF0);
  }

  return result;
}

unint64_t sub_1000B56D8()
{
  result = qword_100837BF8;
  if (!qword_100837BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837BF8);
  }

  return result;
}

unint64_t sub_1000B5730()
{
  result = qword_100837C00;
  if (!qword_100837C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C00);
  }

  return result;
}

unint64_t sub_1000B5788()
{
  result = qword_100837C08;
  if (!qword_100837C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C08);
  }

  return result;
}

unint64_t sub_1000B57E0()
{
  result = qword_100837C10;
  if (!qword_100837C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C10);
  }

  return result;
}

unint64_t sub_1000B5838()
{
  result = qword_100837C18;
  if (!qword_100837C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C18);
  }

  return result;
}

unint64_t sub_1000B5890()
{
  result = qword_100837C20;
  if (!qword_100837C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C20);
  }

  return result;
}

unint64_t sub_1000B58E8()
{
  result = qword_100837C28;
  if (!qword_100837C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C28);
  }

  return result;
}

unint64_t sub_1000B5940()
{
  result = qword_100837C30;
  if (!qword_100837C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C30);
  }

  return result;
}

unint64_t sub_1000B5998()
{
  result = qword_100837C38;
  if (!qword_100837C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C38);
  }

  return result;
}

unint64_t sub_1000B59F0()
{
  result = qword_100837C40;
  if (!qword_100837C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C40);
  }

  return result;
}

unint64_t sub_1000B5A48()
{
  result = qword_100837C48;
  if (!qword_100837C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C48);
  }

  return result;
}

unint64_t sub_1000B5AA0()
{
  result = qword_100837C50;
  if (!qword_100837C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C50);
  }

  return result;
}

unint64_t sub_1000B5AF8()
{
  result = qword_100837C58;
  if (!qword_100837C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C58);
  }

  return result;
}

unint64_t sub_1000B5B50()
{
  result = qword_100837C60;
  if (!qword_100837C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C60);
  }

  return result;
}

unint64_t sub_1000B5BA8()
{
  result = qword_100837C68;
  if (!qword_100837C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C68);
  }

  return result;
}

unint64_t sub_1000B5C00()
{
  result = qword_100837C70;
  if (!qword_100837C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C70);
  }

  return result;
}

unint64_t sub_1000B5C58()
{
  result = qword_100837C78;
  if (!qword_100837C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C78);
  }

  return result;
}

unint64_t sub_1000B5CB0()
{
  result = qword_100837C80;
  if (!qword_100837C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C80);
  }

  return result;
}

unint64_t sub_1000B5D08()
{
  result = qword_100837C88;
  if (!qword_100837C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C88);
  }

  return result;
}

unint64_t sub_1000B5D60()
{
  result = qword_100837C90;
  if (!qword_100837C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C90);
  }

  return result;
}

unint64_t sub_1000B5DB8()
{
  result = qword_100837C98;
  if (!qword_100837C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837C98);
  }

  return result;
}

unint64_t sub_1000B5E10()
{
  result = qword_100837CA0;
  if (!qword_100837CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837CA0);
  }

  return result;
}

unint64_t sub_1000B5E68()
{
  result = qword_100837CA8;
  if (!qword_100837CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837CA8);
  }

  return result;
}

unint64_t sub_1000B5EC0()
{
  result = qword_100837CB0;
  if (!qword_100837CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837CB0);
  }

  return result;
}

unint64_t sub_1000B5F18()
{
  result = qword_100837CB8;
  if (!qword_100837CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837CB8);
  }

  return result;
}

unint64_t sub_1000B5F70()
{
  result = qword_100837CC0;
  if (!qword_100837CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837CC0);
  }

  return result;
}

unint64_t sub_1000B5FC8()
{
  result = qword_100837CC8;
  if (!qword_100837CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837CC8);
  }

  return result;
}

unint64_t sub_1000B6020()
{
  result = qword_100837CD0;
  if (!qword_100837CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837CD0);
  }

  return result;
}

unint64_t sub_1000B6078()
{
  result = qword_100837CD8;
  if (!qword_100837CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837CD8);
  }

  return result;
}

unint64_t sub_1000B60D0()
{
  result = qword_100837CE0;
  if (!qword_100837CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837CE0);
  }

  return result;
}

unint64_t sub_1000B6128()
{
  result = qword_100837CE8;
  if (!qword_100837CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837CE8);
  }

  return result;
}

unint64_t sub_1000B6180()
{
  result = qword_100837CF0;
  if (!qword_100837CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837CF0);
  }

  return result;
}

unint64_t sub_1000B61D8()
{
  result = qword_100837CF8;
  if (!qword_100837CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837CF8);
  }

  return result;
}

unint64_t sub_1000B6230()
{
  result = qword_100837D00;
  if (!qword_100837D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D00);
  }

  return result;
}

unint64_t sub_1000B6288()
{
  result = qword_100837D08;
  if (!qword_100837D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D08);
  }

  return result;
}

unint64_t sub_1000B62E0()
{
  result = qword_100837D10;
  if (!qword_100837D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D10);
  }

  return result;
}

unint64_t sub_1000B6338()
{
  result = qword_100837D18;
  if (!qword_100837D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D18);
  }

  return result;
}

unint64_t sub_1000B6390()
{
  result = qword_100837D20;
  if (!qword_100837D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D20);
  }

  return result;
}

unint64_t sub_1000B63E8()
{
  result = qword_100837D28;
  if (!qword_100837D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D28);
  }

  return result;
}

unint64_t sub_1000B6440()
{
  result = qword_100837D30;
  if (!qword_100837D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D30);
  }

  return result;
}

unint64_t sub_1000B6498()
{
  result = qword_100837D38;
  if (!qword_100837D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D38);
  }

  return result;
}

unint64_t sub_1000B64F0()
{
  result = qword_100837D40;
  if (!qword_100837D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D40);
  }

  return result;
}

unint64_t sub_1000B6548()
{
  result = qword_100837D48;
  if (!qword_100837D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D48);
  }

  return result;
}

unint64_t sub_1000B65A0()
{
  result = qword_100837D50;
  if (!qword_100837D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D50);
  }

  return result;
}

unint64_t sub_1000B65F8()
{
  result = qword_100837D58;
  if (!qword_100837D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D58);
  }

  return result;
}

unint64_t sub_1000B6650()
{
  result = qword_100837D60;
  if (!qword_100837D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D60);
  }

  return result;
}

unint64_t sub_1000B66A8()
{
  result = qword_100837D68;
  if (!qword_100837D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D68);
  }

  return result;
}

unint64_t sub_1000B6700()
{
  result = qword_100837D70;
  if (!qword_100837D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D70);
  }

  return result;
}

unint64_t sub_1000B6758()
{
  result = qword_100837D78;
  if (!qword_100837D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D78);
  }

  return result;
}

unint64_t sub_1000B67B0()
{
  result = qword_100837D80;
  if (!qword_100837D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D80);
  }

  return result;
}

unint64_t sub_1000B6808()
{
  result = qword_100837D88;
  if (!qword_100837D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D88);
  }

  return result;
}

unint64_t sub_1000B6860()
{
  result = qword_100837D90;
  if (!qword_100837D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D90);
  }

  return result;
}

unint64_t sub_1000B68B8()
{
  result = qword_100837D98;
  if (!qword_100837D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837D98);
  }

  return result;
}

unint64_t sub_1000B6910()
{
  result = qword_100837DA0;
  if (!qword_100837DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837DA0);
  }

  return result;
}

unint64_t sub_1000B6968()
{
  result = qword_100837DA8;
  if (!qword_100837DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837DA8);
  }

  return result;
}

unint64_t sub_1000B69C0()
{
  result = qword_100837DB0;
  if (!qword_100837DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837DB0);
  }

  return result;
}

unint64_t sub_1000B6A18()
{
  result = qword_100837DB8;
  if (!qword_100837DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837DB8);
  }

  return result;
}

unint64_t sub_1000B6A70()
{
  result = qword_100837DC0;
  if (!qword_100837DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837DC0);
  }

  return result;
}

unint64_t sub_1000B6AC8()
{
  result = qword_100837DC8;
  if (!qword_100837DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837DC8);
  }

  return result;
}

unint64_t sub_1000B6B20()
{
  result = qword_100837DD0;
  if (!qword_100837DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837DD0);
  }

  return result;
}

unint64_t sub_1000B6B78()
{
  result = qword_100837DD8;
  if (!qword_100837DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837DD8);
  }

  return result;
}

unint64_t sub_1000B6BD0()
{
  result = qword_100837DE0;
  if (!qword_100837DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837DE0);
  }

  return result;
}

unint64_t sub_1000B6C28()
{
  result = qword_100837DE8;
  if (!qword_100837DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837DE8);
  }

  return result;
}

unint64_t sub_1000B6C80()
{
  result = qword_100837DF0;
  if (!qword_100837DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837DF0);
  }

  return result;
}

unint64_t sub_1000B6CD8()
{
  result = qword_100837DF8;
  if (!qword_100837DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837DF8);
  }

  return result;
}

unint64_t sub_1000B6D30()
{
  result = qword_100837E00;
  if (!qword_100837E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E00);
  }

  return result;
}

unint64_t sub_1000B6D88()
{
  result = qword_100837E08;
  if (!qword_100837E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E08);
  }

  return result;
}

unint64_t sub_1000B6DE0()
{
  result = qword_100837E10;
  if (!qword_100837E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E10);
  }

  return result;
}

unint64_t sub_1000B6E38()
{
  result = qword_100837E18;
  if (!qword_100837E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E18);
  }

  return result;
}

unint64_t sub_1000B6E90()
{
  result = qword_100837E20;
  if (!qword_100837E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E20);
  }

  return result;
}

unint64_t sub_1000B6EE8()
{
  result = qword_100837E28;
  if (!qword_100837E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E28);
  }

  return result;
}

unint64_t sub_1000B6F40()
{
  result = qword_100837E30;
  if (!qword_100837E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E30);
  }

  return result;
}

unint64_t sub_1000B6F98()
{
  result = qword_100837E38;
  if (!qword_100837E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E38);
  }

  return result;
}

unint64_t sub_1000B6FF0()
{
  result = qword_100837E40;
  if (!qword_100837E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E40);
  }

  return result;
}

unint64_t sub_1000B7048()
{
  result = qword_100837E48;
  if (!qword_100837E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E48);
  }

  return result;
}

unint64_t sub_1000B70A0()
{
  result = qword_100837E50;
  if (!qword_100837E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E50);
  }

  return result;
}

unint64_t sub_1000B70F8()
{
  result = qword_100837E58;
  if (!qword_100837E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E58);
  }

  return result;
}

unint64_t sub_1000B7150()
{
  result = qword_100837E60;
  if (!qword_100837E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E60);
  }

  return result;
}

unint64_t sub_1000B71A8()
{
  result = qword_100837E68;
  if (!qword_100837E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E68);
  }

  return result;
}

unint64_t sub_1000B7200()
{
  result = qword_100837E70;
  if (!qword_100837E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E70);
  }

  return result;
}

unint64_t sub_1000B7258()
{
  result = qword_100837E78;
  if (!qword_100837E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E78);
  }

  return result;
}

unint64_t sub_1000B72B0()
{
  result = qword_100837E80;
  if (!qword_100837E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E80);
  }

  return result;
}

unint64_t sub_1000B7308()
{
  result = qword_100837E88;
  if (!qword_100837E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E88);
  }

  return result;
}

unint64_t sub_1000B7360()
{
  result = qword_100837E90;
  if (!qword_100837E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E90);
  }

  return result;
}

unint64_t sub_1000B73B8()
{
  result = qword_100837E98;
  if (!qword_100837E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837E98);
  }

  return result;
}

unint64_t sub_1000B7410()
{
  result = qword_100837EA0;
  if (!qword_100837EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837EA0);
  }

  return result;
}

unint64_t sub_1000B7468()
{
  result = qword_100837EA8;
  if (!qword_100837EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837EA8);
  }

  return result;
}

unint64_t sub_1000B74C0()
{
  result = qword_100837EB0;
  if (!qword_100837EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837EB0);
  }

  return result;
}

unint64_t sub_1000B7518()
{
  result = qword_100837EB8;
  if (!qword_100837EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837EB8);
  }

  return result;
}

unint64_t sub_1000B7570()
{
  result = qword_100837EC0;
  if (!qword_100837EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837EC0);
  }

  return result;
}

unint64_t sub_1000B75C8()
{
  result = qword_100837EC8;
  if (!qword_100837EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837EC8);
  }

  return result;
}

unint64_t sub_1000B7620()
{
  result = qword_100837ED0;
  if (!qword_100837ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837ED0);
  }

  return result;
}

unint64_t sub_1000B7678()
{
  result = qword_100837ED8;
  if (!qword_100837ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837ED8);
  }

  return result;
}

unint64_t sub_1000B76D0()
{
  result = qword_100837EE0;
  if (!qword_100837EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837EE0);
  }

  return result;
}

unint64_t sub_1000B7728()
{
  result = qword_100837EE8;
  if (!qword_100837EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837EE8);
  }

  return result;
}

unint64_t sub_1000B7780()
{
  result = qword_100837EF0;
  if (!qword_100837EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837EF0);
  }

  return result;
}

unint64_t sub_1000B77D8()
{
  result = qword_100837EF8;
  if (!qword_100837EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837EF8);
  }

  return result;
}

unint64_t sub_1000B7830()
{
  result = qword_100837F00;
  if (!qword_100837F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F00);
  }

  return result;
}

unint64_t sub_1000B7888()
{
  result = qword_100837F08;
  if (!qword_100837F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F08);
  }

  return result;
}

unint64_t sub_1000B78E0()
{
  result = qword_100837F10;
  if (!qword_100837F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F10);
  }

  return result;
}

unint64_t sub_1000B7938()
{
  result = qword_100837F18;
  if (!qword_100837F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F18);
  }

  return result;
}

unint64_t sub_1000B7990()
{
  result = qword_100837F20;
  if (!qword_100837F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F20);
  }

  return result;
}

unint64_t sub_1000B79E8()
{
  result = qword_100837F28;
  if (!qword_100837F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F28);
  }

  return result;
}

unint64_t sub_1000B7A40()
{
  result = qword_100837F30;
  if (!qword_100837F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F30);
  }

  return result;
}

unint64_t sub_1000B7A98()
{
  result = qword_100837F38;
  if (!qword_100837F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F38);
  }

  return result;
}

unint64_t sub_1000B7AF0()
{
  result = qword_100837F40;
  if (!qword_100837F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F40);
  }

  return result;
}

unint64_t sub_1000B7B48()
{
  result = qword_100837F48;
  if (!qword_100837F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F48);
  }

  return result;
}

unint64_t sub_1000B7BA0()
{
  result = qword_100837F50;
  if (!qword_100837F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F50);
  }

  return result;
}

unint64_t sub_1000B7BF8()
{
  result = qword_100837F58;
  if (!qword_100837F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F58);
  }

  return result;
}

unint64_t sub_1000B7C50()
{
  result = qword_100837F60;
  if (!qword_100837F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F60);
  }

  return result;
}

unint64_t sub_1000B7CA8()
{
  result = qword_100837F68;
  if (!qword_100837F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F68);
  }

  return result;
}

unint64_t sub_1000B7D00()
{
  result = qword_100837F70;
  if (!qword_100837F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F70);
  }

  return result;
}

unint64_t sub_1000B7D58()
{
  result = qword_100837F78;
  if (!qword_100837F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F78);
  }

  return result;
}

unint64_t sub_1000B7DB0()
{
  result = qword_100837F80;
  if (!qword_100837F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F80);
  }

  return result;
}

unint64_t sub_1000B7E08()
{
  result = qword_100837F88;
  if (!qword_100837F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F88);
  }

  return result;
}

unint64_t sub_1000B7E60()
{
  result = qword_100837F90;
  if (!qword_100837F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F90);
  }

  return result;
}

unint64_t sub_1000B7EB8()
{
  result = qword_100837F98;
  if (!qword_100837F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837F98);
  }

  return result;
}

unint64_t sub_1000B7F10()
{
  result = qword_100837FA0;
  if (!qword_100837FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837FA0);
  }

  return result;
}

unint64_t sub_1000B7F68()
{
  result = qword_100837FA8;
  if (!qword_100837FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837FA8);
  }

  return result;
}

unint64_t sub_1000B7FC0()
{
  result = qword_100837FB0;
  if (!qword_100837FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837FB0);
  }

  return result;
}

unint64_t sub_1000B8018()
{
  result = qword_100837FB8;
  if (!qword_100837FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837FB8);
  }

  return result;
}

unint64_t sub_1000B8070()
{
  result = qword_100837FC0;
  if (!qword_100837FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837FC0);
  }

  return result;
}

unint64_t sub_1000B80C8()
{
  result = qword_100837FC8;
  if (!qword_100837FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837FC8);
  }

  return result;
}

unint64_t sub_1000B8120()
{
  result = qword_100837FD0;
  if (!qword_100837FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837FD0);
  }

  return result;
}

unint64_t sub_1000B8178()
{
  result = qword_100837FD8;
  if (!qword_100837FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837FD8);
  }

  return result;
}

unint64_t sub_1000B81D0()
{
  result = qword_100837FE0;
  if (!qword_100837FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837FE0);
  }

  return result;
}

unint64_t sub_1000B8228()
{
  result = qword_100837FE8;
  if (!qword_100837FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837FE8);
  }

  return result;
}

unint64_t sub_1000B8280()
{
  result = qword_100837FF0;
  if (!qword_100837FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837FF0);
  }

  return result;
}

unint64_t sub_1000B82D8()
{
  result = qword_100837FF8;
  if (!qword_100837FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837FF8);
  }

  return result;
}

unint64_t sub_1000B8330()
{
  result = qword_100838000;
  if (!qword_100838000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838000);
  }

  return result;
}

unint64_t sub_1000B8388()
{
  result = qword_100838008;
  if (!qword_100838008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838008);
  }

  return result;
}

unint64_t sub_1000B83E0()
{
  result = qword_100838010;
  if (!qword_100838010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838010);
  }

  return result;
}

unint64_t sub_1000B8438()
{
  result = qword_100838018;
  if (!qword_100838018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838018);
  }

  return result;
}

unint64_t sub_1000B8490()
{
  result = qword_100838020;
  if (!qword_100838020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838020);
  }

  return result;
}

unint64_t sub_1000B84E8()
{
  result = qword_100838028;
  if (!qword_100838028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838028);
  }

  return result;
}

unint64_t sub_1000B8540()
{
  result = qword_100838030;
  if (!qword_100838030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838030);
  }

  return result;
}

unint64_t sub_1000B8598()
{
  result = qword_100838038;
  if (!qword_100838038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838038);
  }

  return result;
}

unint64_t sub_1000B85F0()
{
  result = qword_100838040;
  if (!qword_100838040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838040);
  }

  return result;
}

unint64_t sub_1000B8648()
{
  result = qword_100838048;
  if (!qword_100838048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838048);
  }

  return result;
}

unint64_t sub_1000B86A0()
{
  result = qword_100838050;
  if (!qword_100838050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838050);
  }

  return result;
}

unint64_t sub_1000B86F8()
{
  result = qword_100838058;
  if (!qword_100838058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838058);
  }

  return result;
}

unint64_t sub_1000B8750()
{
  result = qword_100838060;
  if (!qword_100838060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838060);
  }

  return result;
}

unint64_t sub_1000B87A8()
{
  result = qword_100838068;
  if (!qword_100838068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838068);
  }

  return result;
}

unint64_t sub_1000B8800()
{
  result = qword_100838070;
  if (!qword_100838070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838070);
  }

  return result;
}

unint64_t sub_1000B8858()
{
  result = qword_100838078;
  if (!qword_100838078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838078);
  }

  return result;
}

unint64_t sub_1000B88B0()
{
  result = qword_100838080;
  if (!qword_100838080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838080);
  }

  return result;
}

unint64_t sub_1000B8908()
{
  result = qword_100838088;
  if (!qword_100838088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838088);
  }

  return result;
}

unint64_t sub_1000B8960()
{
  result = qword_100838090;
  if (!qword_100838090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838090);
  }

  return result;
}

unint64_t sub_1000B89B8()
{
  result = qword_100838098;
  if (!qword_100838098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838098);
  }

  return result;
}

unint64_t sub_1000B8A10()
{
  result = qword_1008380A0;
  if (!qword_1008380A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008380A0);
  }

  return result;
}

unint64_t sub_1000B8A68()
{
  result = qword_1008380A8;
  if (!qword_1008380A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008380A8);
  }

  return result;
}

unint64_t sub_1000B8AC0()
{
  result = qword_1008380B0;
  if (!qword_1008380B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008380B0);
  }

  return result;
}

unint64_t sub_1000B8B18()
{
  result = qword_1008380B8;
  if (!qword_1008380B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008380B8);
  }

  return result;
}

unint64_t sub_1000B8B70()
{
  result = qword_1008380C0;
  if (!qword_1008380C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008380C0);
  }

  return result;
}

unint64_t sub_1000B8BC8()
{
  result = qword_1008380C8;
  if (!qword_1008380C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008380C8);
  }

  return result;
}

unint64_t sub_1000B8C20()
{
  result = qword_1008380D0;
  if (!qword_1008380D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008380D0);
  }

  return result;
}

unint64_t sub_1000B8C78()
{
  result = qword_1008380D8;
  if (!qword_1008380D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008380D8);
  }

  return result;
}

unint64_t sub_1000B8CD0()
{
  result = qword_1008380E0;
  if (!qword_1008380E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008380E0);
  }

  return result;
}

unint64_t sub_1000B8D28()
{
  result = qword_1008380E8;
  if (!qword_1008380E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008380E8);
  }

  return result;
}

unint64_t sub_1000B8D80()
{
  result = qword_1008380F0;
  if (!qword_1008380F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008380F0);
  }

  return result;
}

unint64_t sub_1000B8DD8()
{
  result = qword_1008380F8;
  if (!qword_1008380F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008380F8);
  }

  return result;
}

unint64_t sub_1000B8E30()
{
  result = qword_100838100;
  if (!qword_100838100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838100);
  }

  return result;
}

unint64_t sub_1000B8E88()
{
  result = qword_100838108;
  if (!qword_100838108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838108);
  }

  return result;
}

unint64_t sub_1000B8EE0()
{
  result = qword_100838110;
  if (!qword_100838110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838110);
  }

  return result;
}

unint64_t sub_1000B8F38()
{
  result = qword_100838118;
  if (!qword_100838118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838118);
  }

  return result;
}

unint64_t sub_1000B8F90()
{
  result = qword_100838120;
  if (!qword_100838120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838120);
  }

  return result;
}

unint64_t sub_1000B8FE8()
{
  result = qword_100838128;
  if (!qword_100838128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838128);
  }

  return result;
}

unint64_t sub_1000B9040()
{
  result = qword_100838130;
  if (!qword_100838130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838130);
  }

  return result;
}

unint64_t sub_1000B9098()
{
  result = qword_100838138;
  if (!qword_100838138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838138);
  }

  return result;
}

unint64_t sub_1000B90F0()
{
  result = qword_100838140;
  if (!qword_100838140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838140);
  }

  return result;
}

unint64_t sub_1000B9148()
{
  result = qword_100838148;
  if (!qword_100838148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838148);
  }

  return result;
}

unint64_t sub_1000B91A0()
{
  result = qword_100838150;
  if (!qword_100838150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838150);
  }

  return result;
}

unint64_t sub_1000B91F8()
{
  result = qword_100838158;
  if (!qword_100838158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838158);
  }

  return result;
}

unint64_t sub_1000B9250()
{
  result = qword_100838160;
  if (!qword_100838160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838160);
  }

  return result;
}

unint64_t sub_1000B92A8()
{
  result = qword_100838168;
  if (!qword_100838168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838168);
  }

  return result;
}

unint64_t sub_1000B9300()
{
  result = qword_100838170;
  if (!qword_100838170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838170);
  }

  return result;
}

unint64_t sub_1000B9358()
{
  result = qword_100838178;
  if (!qword_100838178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838178);
  }

  return result;
}

unint64_t sub_1000B93B0()
{
  result = qword_100838180;
  if (!qword_100838180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838180);
  }

  return result;
}

unint64_t sub_1000B9408()
{
  result = qword_100838188;
  if (!qword_100838188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838188);
  }

  return result;
}

unint64_t sub_1000B9460()
{
  result = qword_100838190;
  if (!qword_100838190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838190);
  }

  return result;
}

unint64_t sub_1000B94B8()
{
  result = qword_100838198;
  if (!qword_100838198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838198);
  }

  return result;
}

unint64_t sub_1000B9510()
{
  result = qword_1008381A0;
  if (!qword_1008381A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008381A0);
  }

  return result;
}

unint64_t sub_1000B9568()
{
  result = qword_1008381A8;
  if (!qword_1008381A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008381A8);
  }

  return result;
}

unint64_t sub_1000B95C0()
{
  result = qword_1008381B0;
  if (!qword_1008381B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008381B0);
  }

  return result;
}

unint64_t sub_1000B9618()
{
  result = qword_1008381B8;
  if (!qword_1008381B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008381B8);
  }

  return result;
}

unint64_t sub_1000B9670()
{
  result = qword_1008381C0;
  if (!qword_1008381C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008381C0);
  }

  return result;
}

unint64_t sub_1000B96C8()
{
  result = qword_1008381C8;
  if (!qword_1008381C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008381C8);
  }

  return result;
}

unint64_t sub_1000B9720()
{
  result = qword_1008381D0;
  if (!qword_1008381D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008381D0);
  }

  return result;
}

unint64_t sub_1000B9778()
{
  result = qword_1008381D8;
  if (!qword_1008381D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008381D8);
  }

  return result;
}

unint64_t sub_1000B97D0()
{
  result = qword_1008381E0;
  if (!qword_1008381E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008381E0);
  }

  return result;
}

unint64_t sub_1000B9828()
{
  result = qword_1008381E8;
  if (!qword_1008381E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008381E8);
  }

  return result;
}

unint64_t sub_1000B9880()
{
  result = qword_1008381F0;
  if (!qword_1008381F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008381F0);
  }

  return result;
}

unint64_t sub_1000B98D8()
{
  result = qword_1008381F8;
  if (!qword_1008381F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008381F8);
  }

  return result;
}

unint64_t sub_1000B9930()
{
  result = qword_100838200;
  if (!qword_100838200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838200);
  }

  return result;
}

unint64_t sub_1000B9988()
{
  result = qword_100838208;
  if (!qword_100838208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838208);
  }

  return result;
}

unint64_t sub_1000B99E0()
{
  result = qword_100838210;
  if (!qword_100838210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838210);
  }

  return result;
}

unint64_t sub_1000B9A38()
{
  result = qword_100838218;
  if (!qword_100838218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838218);
  }

  return result;
}

unint64_t sub_1000B9A90()
{
  result = qword_100838220;
  if (!qword_100838220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838220);
  }

  return result;
}

unint64_t sub_1000B9AE8()
{
  result = qword_100838228;
  if (!qword_100838228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838228);
  }

  return result;
}

unint64_t sub_1000B9B40()
{
  result = qword_100838230;
  if (!qword_100838230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838230);
  }

  return result;
}

unint64_t sub_1000B9B98()
{
  result = qword_100838238;
  if (!qword_100838238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838238);
  }

  return result;
}

unint64_t sub_1000B9BF0()
{
  result = qword_100838240;
  if (!qword_100838240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838240);
  }

  return result;
}

unint64_t sub_1000B9C48()
{
  result = qword_100838248;
  if (!qword_100838248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838248);
  }

  return result;
}

unint64_t sub_1000B9CA0()
{
  result = qword_100838250;
  if (!qword_100838250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838250);
  }

  return result;
}

unint64_t sub_1000B9CF8()
{
  result = qword_100838258;
  if (!qword_100838258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838258);
  }

  return result;
}

unint64_t sub_1000B9D50()
{
  result = qword_100838260;
  if (!qword_100838260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838260);
  }

  return result;
}

unint64_t sub_1000B9DA8()
{
  result = qword_100838268;
  if (!qword_100838268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838268);
  }

  return result;
}

unint64_t sub_1000B9E00()
{
  result = qword_100838270;
  if (!qword_100838270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838270);
  }

  return result;
}

unint64_t sub_1000B9E58()
{
  result = qword_100838278;
  if (!qword_100838278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838278);
  }

  return result;
}

unint64_t sub_1000B9EB0()
{
  result = qword_100838280;
  if (!qword_100838280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838280);
  }

  return result;
}

unint64_t sub_1000B9F08()
{
  result = qword_100838288;
  if (!qword_100838288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838288);
  }

  return result;
}

unint64_t sub_1000B9F60()
{
  result = qword_100838290;
  if (!qword_100838290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838290);
  }

  return result;
}

unint64_t sub_1000B9FB8()
{
  result = qword_100838298;
  if (!qword_100838298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838298);
  }

  return result;
}

unint64_t sub_1000BA010()
{
  result = qword_1008382A0;
  if (!qword_1008382A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008382A0);
  }

  return result;
}

unint64_t sub_1000BA068()
{
  result = qword_1008382A8;
  if (!qword_1008382A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008382A8);
  }

  return result;
}

unint64_t sub_1000BA0C0()
{
  result = qword_1008382B0;
  if (!qword_1008382B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008382B0);
  }

  return result;
}

unint64_t sub_1000BA114()
{
  result = qword_1008382C0;
  if (!qword_1008382C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008382C0);
  }

  return result;
}

unint64_t sub_1000BA168()
{
  result = qword_1008382D8;
  if (!qword_1008382D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008382D8);
  }

  return result;
}

unint64_t sub_1000BA1BC()
{
  result = qword_1008382F0;
  if (!qword_1008382F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008382F0);
  }

  return result;
}

unint64_t sub_1000BA210()
{
  result = qword_100838308;
  if (!qword_100838308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838308);
  }

  return result;
}

unint64_t sub_1000BA264()
{
  result = qword_100838318;
  if (!qword_100838318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838318);
  }

  return result;
}

unint64_t sub_1000BA2B8()
{
  result = qword_100838328;
  if (!qword_100838328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838328);
  }

  return result;
}

uint64_t sub_1000BA30C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000BA354()
{
  result = qword_100838340;
  if (!qword_100838340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838340);
  }

  return result;
}

unint64_t sub_1000BA3A8()
{
  result = qword_100838350;
  if (!qword_100838350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838350);
  }

  return result;
}

unint64_t sub_1000BA3FC()
{
  result = qword_100838368;
  if (!qword_100838368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838368);
  }

  return result;
}

unint64_t sub_1000BA450()
{
  result = qword_100838380;
  if (!qword_100838380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838380);
  }

  return result;
}

unint64_t sub_1000BA4A4()
{
  result = qword_100838390;
  if (!qword_100838390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838390);
  }

  return result;
}

unint64_t sub_1000BA4F8()
{
  result = qword_1008383A0;
  if (!qword_1008383A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008383A0);
  }

  return result;
}

unint64_t sub_1000BA54C()
{
  result = qword_1008383B8;
  if (!qword_1008383B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008383B8);
  }

  return result;
}

unint64_t sub_1000BA5A0()
{
  result = qword_1008383D0;
  if (!qword_1008383D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008383D0);
  }

  return result;
}

unint64_t sub_1000BA5F4()
{
  result = qword_1008383E8;
  if (!qword_1008383E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008383E8);
  }

  return result;
}

unint64_t sub_1000BA648()
{
  result = qword_1008383F0;
  if (!qword_1008383F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008383F0);
  }

  return result;
}

unint64_t sub_1000BA69C()
{
  result = qword_100838400;
  if (!qword_100838400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838400);
  }

  return result;
}

unint64_t sub_1000BA6F0()
{
  result = qword_100838408;
  if (!qword_100838408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838408);
  }

  return result;
}

unint64_t sub_1000BA744()
{
  result = qword_100838418;
  if (!qword_100838418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838418);
  }

  return result;
}

uint64_t sub_1000BA808(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000BA898(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerifiedClaimPresentmentWithDSDAuthorization.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1000BAA4C()
{
  result = qword_100838428;
  if (!qword_100838428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838428);
  }

  return result;
}

unint64_t sub_1000BAAA4()
{
  result = qword_100838430;
  if (!qword_100838430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838430);
  }

  return result;
}

unint64_t sub_1000BAAFC()
{
  result = qword_100838438;
  if (!qword_100838438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838438);
  }

  return result;
}

unint64_t sub_1000BAB54()
{
  result = qword_100838440;
  if (!qword_100838440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838440);
  }

  return result;
}

unint64_t sub_1000BABAC()
{
  result = qword_100838448;
  if (!qword_100838448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838448);
  }

  return result;
}

unint64_t sub_1000BAC04()
{
  result = qword_100838450;
  if (!qword_100838450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838450);
  }

  return result;
}

unint64_t sub_1000BAC5C()
{
  result = qword_100838458;
  if (!qword_100838458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838458);
  }

  return result;
}

unint64_t sub_1000BACB4()
{
  result = qword_100838460;
  if (!qword_100838460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838460);
  }

  return result;
}

unint64_t sub_1000BAD0C()
{
  result = qword_100838468;
  if (!qword_100838468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838468);
  }

  return result;
}

unint64_t sub_1000BAD64()
{
  result = qword_100838470;
  if (!qword_100838470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838470);
  }

  return result;
}

unint64_t sub_1000BADBC()
{
  result = qword_100838478;
  if (!qword_100838478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838478);
  }

  return result;
}

unint64_t sub_1000BAE14()
{
  result = qword_100838480;
  if (!qword_100838480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838480);
  }

  return result;
}

unint64_t sub_1000BAE6C()
{
  result = qword_100838488;
  if (!qword_100838488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838488);
  }

  return result;
}

unint64_t sub_1000BAEC4()
{
  result = qword_100838490;
  if (!qword_100838490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838490);
  }

  return result;
}

unint64_t sub_1000BAF1C()
{
  result = qword_100838498;
  if (!qword_100838498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838498);
  }

  return result;
}

unint64_t sub_1000BAF74()
{
  result = qword_1008384A0;
  if (!qword_1008384A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008384A0);
  }

  return result;
}

unint64_t sub_1000BAFCC()
{
  result = qword_1008384A8;
  if (!qword_1008384A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008384A8);
  }

  return result;
}

unint64_t sub_1000BB024()
{
  result = qword_1008384B0;
  if (!qword_1008384B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008384B0);
  }

  return result;
}

unint64_t sub_1000BB07C()
{
  result = qword_1008384B8;
  if (!qword_1008384B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008384B8);
  }

  return result;
}

unint64_t sub_1000BB0D4()
{
  result = qword_1008384C0;
  if (!qword_1008384C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008384C0);
  }

  return result;
}

unint64_t sub_1000BB12C()
{
  result = qword_1008384C8;
  if (!qword_1008384C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008384C8);
  }

  return result;
}

unint64_t sub_1000BB184()
{
  result = qword_1008384D0;
  if (!qword_1008384D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008384D0);
  }

  return result;
}

unint64_t sub_1000BB1DC()
{
  result = qword_1008384D8;
  if (!qword_1008384D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008384D8);
  }

  return result;
}

unint64_t sub_1000BB234()
{
  result = qword_1008384E0;
  if (!qword_1008384E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008384E0);
  }

  return result;
}

unint64_t sub_1000BB28C()
{
  result = qword_1008384E8;
  if (!qword_1008384E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008384E8);
  }

  return result;
}

unint64_t sub_1000BB2E4()
{
  result = qword_1008384F0;
  if (!qword_1008384F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008384F0);
  }

  return result;
}

unint64_t sub_1000BB33C()
{
  result = qword_1008384F8;
  if (!qword_1008384F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008384F8);
  }

  return result;
}

unint64_t sub_1000BB394()
{
  result = qword_100838500;
  if (!qword_100838500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838500);
  }

  return result;
}

unint64_t sub_1000BB3EC()
{
  result = qword_100838508;
  if (!qword_100838508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838508);
  }

  return result;
}

unint64_t sub_1000BB444()
{
  result = qword_100838510;
  if (!qword_100838510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838510);
  }

  return result;
}

unint64_t sub_1000BB49C()
{
  result = qword_100838518;
  if (!qword_100838518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838518);
  }

  return result;
}

unint64_t sub_1000BB4F4()
{
  result = qword_100838520;
  if (!qword_100838520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838520);
  }

  return result;
}

unint64_t sub_1000BB54C()
{
  result = qword_100838528;
  if (!qword_100838528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838528);
  }

  return result;
}

unint64_t sub_1000BB5A4()
{
  result = qword_100838530;
  if (!qword_100838530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838530);
  }

  return result;
}

unint64_t sub_1000BB5FC()
{
  result = qword_100838538;
  if (!qword_100838538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838538);
  }

  return result;
}

unint64_t sub_1000BB654()
{
  result = qword_100838540;
  if (!qword_100838540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838540);
  }

  return result;
}

unint64_t sub_1000BB6AC()
{
  result = qword_100838548;
  if (!qword_100838548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838548);
  }

  return result;
}

unint64_t sub_1000BB704()
{
  result = qword_100838550;
  if (!qword_100838550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838550);
  }

  return result;
}

unint64_t sub_1000BB75C()
{
  result = qword_100838558;
  if (!qword_100838558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838558);
  }

  return result;
}

unint64_t sub_1000BB7B4()
{
  result = qword_100838560;
  if (!qword_100838560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838560);
  }

  return result;
}

unint64_t sub_1000BB808()
{
  result = qword_100838568;
  if (!qword_100838568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838568);
  }

  return result;
}

uint64_t sub_1000BB9AC(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1000BBA84@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C33B8(*a1);
  *a2 = result;
  return result;
}

void sub_1000BBAB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1752392040;
  v5 = 0xE400000000000000;
  v6 = 1952867692;
  v7 = 0xE500000000000000;
  v8 = 0x7468676972;
  if (v2 != 4)
  {
    v8 = 0x6465686361746564;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x70756F7267;
  if (v2 != 1)
  {
    v10 = 1635017060;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1000BBB54()
{
  v1 = *v0;
  v2 = 1752392040;
  v3 = 1952867692;
  v4 = 0x7468676972;
  if (v1 != 4)
  {
    v4 = 0x6465686361746564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x70756F7267;
  if (v1 != 1)
  {
    v5 = 1635017060;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_1000BBBF0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C33B8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BBC18(uint64_t a1)
{
  v2 = sub_1000C1F94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BBC54(uint64_t a1)
{
  v2 = sub_1000C1F94();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000BBC90(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v107 = v3;
  v98 = v2;
  v99 = v5;
  v6 = type metadata accessor for String.Encoding();
  v95 = *(v6 - 8);
  v96 = v6;
  __chkstk_darwin(v6);
  v8 = &v84[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DIPError.Code();
  v97 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v84[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_100007224(&qword_100838780, &qword_1006D0F48);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v84[-v14];
  v16 = a1[3];
  v100 = a1;
  sub_10000BA08(a1, v16);
  sub_1000C1F94();
  v17 = v98;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v17)
  {
    v93 = v9;
    v94 = v11;
    v98 = v13;
    LOBYTE(v103) = 0;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v107;
    v107[2] = v18;
    v20[3] = v21;
    LOBYTE(v103) = 1;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = v98;
    v20[4] = v22;
    v20[5] = v24;
    LOBYTE(v101) = 2;
    sub_1000C1EEC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v106;
    v26 = v104;
    *(v20 + 3) = v103;
    *(v20 + 4) = v26;
    *(v20 + 5) = v105;
    v20[12] = v25;
    LOBYTE(v101) = 3;
    sub_1000C3358(&qword_100838790, v27, type metadata accessor for MerkleTreeDetached, &unk_1006D0F20);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20[13] = v103;
    LOBYTE(v101) = 4;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20[14] = v103;
    LOBYTE(v103) = 5;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v99 = v15;
    if (v28 == 2)
    {
      *(v20 + 120) = 0;
      v29 = v97;
    }

    else
    {
      *(v20 + 120) = v28 & 1;
      v29 = v97;
      if ((v28 & 1) != 0 && v20[7])
      {
        (*(v97 + 104))(v94, enum case for DIPError.Code.invalidClaim(_:), v93);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000C3358(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        (*(v23 + 8))(v99, v12);
LABEL_18:

        goto LABEL_4;
      }
    }

    v30 = v20[13];
    if (v30)
    {
      v31 = v20[14];
      if (v31)
      {
        v92 = v12;

        v90 = Data.init(base16Encoded:)();
        v91 = v32;
        v33 = v93;
        v34 = v94;
        if (v32 >> 60 == 15)
        {
LABEL_15:
          *&v103 = 0;
          *(&v103 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(48);

          *&v103 = 0x5B65646F6ELL;
          *(&v103 + 1) = 0xE500000000000000;
          v37 = v20[2];
          v38 = v20[3];

          v39._countAndFlagsBits = v37;
          v39._object = v38;
          String.append(_:)(v39);

          v40._countAndFlagsBits = 0xD000000000000029;
          v40._object = 0x80000001006FE760;
          String.append(_:)(v40);
          (*(v29 + 104))(v34, enum case for DIPError.Code.invalidClaim(_:), v33);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_1000C3358(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          (*(v98 + 8))(v99, v92);
          goto LABEL_18;
        }

        v35 = Data.init(base16Encoded:)();
        if (v36 >> 60 == 15)
        {
          sub_10000BD94(v90, v91);
          goto LABEL_15;
        }

        v86 = v30;
        v89 = v31;
        v47 = v90;
        v46 = v91;
        v101 = v90;
        v102 = v91;
        *(&v104 + 1) = &type metadata for Data;
        *&v105 = &protocol witness table for Data;
        *&v103 = v35;
        *(&v103 + 1) = v36;
        v48 = v35;
        v49 = v36;
        v50 = sub_10000BA08(&v103, &type metadata for Data);
        v51 = *v50;
        v52 = v50[1];
        sub_1000363B4(v47, v46);
        v87 = v48;
        v88 = v49;
        sub_1000363B4(v48, v49);
        sub_1000C2F1C(v51, v52, &v101);
        sub_10000BB78(&v103);
        if (v20[5])
        {

          static String.Encoding.utf8.getter();
          v53 = String.data(using:allowLossyConversion:)();
          v55 = v54;

          (*(v95 + 8))(v8, v96);
          if (v55 >> 60 != 15)
          {
            *(&v104 + 1) = &type metadata for Data;
            *&v105 = &protocol witness table for Data;
            *&v103 = v53;
            *(&v103 + 1) = v55;
            v56 = sub_10000BA08(&v103, &type metadata for Data);
            sub_1000C2F1C(*v56, v56[1], &v101);
            sub_10000BB78(&v103);
          }
        }

        v57 = v102;
        v58 = v101;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v60 = DigestSha256();

        if (v60)
        {
          v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;

          v64 = Data._bridgeToObjectiveC()().super.isa;
          v65 = DigestSha256();

          if (v65)
          {
            v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v68 = v67;

            v95 = v66;
            sub_10000B8B8(v66, v68);
            v70 = Data.init(base16Encoded:)();
            v71 = v69;
            v96 = v68;
            if (v68 >> 60 == 15)
            {
              if (v69 >> 60 == 15)
              {
                sub_10000BD94(v90, v91);
                sub_10000BD94(v87, v88);
                sub_10000B90C(v61, v63);
                v73 = v95;
                v72 = v96;
                sub_10000B90C(v95, v96);

                sub_10000BD94(v73, v72);
LABEL_36:
                (*(v98 + 8))(v99, v92);
                sub_10000B90C(v58, v57);
                v20 = v107;
                goto LABEL_4;
              }
            }

            else if (v69 >> 60 != 15)
            {
              v83 = v95;
              v82 = v96;
              sub_10000B8B8(v95, v96);
              sub_1000363B4(v70, v71);
              v85 = sub_1000C31A0(v83, v82, v70, v71);
              sub_10000BD94(v70, v71);
              sub_10000BD94(v70, v71);
              sub_10000B90C(v83, v82);
              sub_10000BD94(v83, v82);
              if (v85)
              {
                sub_10000BD94(v90, v91);
                sub_10000BD94(v87, v88);
                sub_10000B90C(v61, v63);
                sub_10000B90C(v95, v96);

                goto LABEL_36;
              }

              goto LABEL_32;
            }

            sub_10000BD94(v95, v96);
            sub_10000BD94(v70, v71);
LABEL_32:
            *&v103 = 0;
            *(&v103 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(40);

            *&v103 = 0x5B65646F6ELL;
            *(&v103 + 1) = 0xE500000000000000;
            v20 = v107;
            v78 = v107[2];
            v79 = v107[3];

            v80._countAndFlagsBits = v78;
            v80._object = v79;
            String.append(_:)(v80);

            v81._countAndFlagsBits = 0xD000000000000021;
            v81._object = 0x80000001006FE7B0;
            String.append(_:)(v81);
            (*(v97 + 104))(v94, enum case for DIPError.Code.invalidClaim(_:), v93);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_1000C3358(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_10000B90C(v61, v63);

            sub_10000B90C(v95, v96);
            goto LABEL_33;
          }

          sub_10000B90C(v61, v63);
        }

        *&v103 = 0;
        *(&v103 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(37);

        *&v103 = 0x5B65646F6ELL;
        *(&v103 + 1) = 0xE500000000000000;
        v20 = v107;
        v74 = v107[2];
        v75 = v107[3];

        v76._countAndFlagsBits = v74;
        v76._object = v75;
        String.append(_:)(v76);

        v77._countAndFlagsBits = 0xD00000000000001ELL;
        v77._object = 0x80000001006FE790;
        String.append(_:)(v77);
        (*(v97 + 104))(v94, enum case for DIPError.Code.invalidClaim(_:), v93);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000C3358(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

LABEL_33:
        sub_10000BD94(v87, v88);
        sub_10000BD94(v90, v91);
        (*(v98 + 8))(v99, v92);
        sub_10000B90C(v101, v102);
        goto LABEL_18;
      }
    }

    else if (!v20[14])
    {
      (*(v23 + 8))(v99, v12);
      goto LABEL_4;
    }

    *&v103 = 0;
    *(&v103 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v41._countAndFlagsBits = 0x5B65646F6ELL;
    v41._object = 0xE500000000000000;
    String.append(_:)(v41);
    v42 = v20[2];
    v43 = v20[3];

    v44._countAndFlagsBits = v42;
    v44._object = v43;
    String.append(_:)(v44);

    v45._countAndFlagsBits = 0xD00000000000002FLL;
    v45._object = 0x80000001006FE710;
    String.append(_:)(v45);
    (*(v29 + 104))(v94, enum case for DIPError.Code.invalidClaim(_:), v93);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000C3358(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v23 + 8))(v99, v12);
    goto LABEL_18;
  }

  v20 = v107;
  swift_deallocPartialClassInstance();
LABEL_4:
  sub_10000BB78(v100);
  return v20;
}

uint64_t sub_1000BCDBC()
{

  sub_1000C1FE8(v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12]);

  return swift_deallocClassInstance();
}

void sub_1000BCE4C(uint64_t a1)
{
  sub_1000BD2F0();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000BCEEC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1000BD07C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_1000BD2F0()
{
  if (!qword_100835140)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100835140);
    }
  }
}

void sub_1000BD3B0(uint64_t a1)
{
  sub_1000C4980(319, &qword_100838730, sub_1000BD460, sub_1000BD4B4, &type metadata for VerifiedClaimHeader);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MerkleTreeDetached();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1000BD460()
{
  result = qword_100838738;
  if (!qword_100838738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838738);
  }

  return result;
}

unint64_t sub_1000BD4B4()
{
  result = qword_100838740;
  if (!qword_100838740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838740);
  }

  return result;
}

uint64_t sub_1000BD528(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100838798, &qword_1006D0F50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000C1F94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = v3[7];
    v10 = v3[8];
    v11 = v3[9];
    v12 = v3[10];
    v13 = v3[11];
    v14 = v3[12];
    v18 = v3[6];
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = 2;
    sub_1000C3308(v18, v9, v10, v11, v12, v13, v14);
    sub_1000C1F40();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000C1FE8(v18, v19, v20, v21, v22, v23, v24);
    v18 = v3[13];
    v25 = 3;
    sub_1000C3358(&qword_1008387A0, v15, type metadata accessor for MerkleTreeDetached, &unk_1006D0EF8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v3[14];
    v25 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000BD7FC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9E38, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000BD84C(unsigned __int8 a1)
{
  v1 = 1752392040;
  v2 = 1635017060;
  if (a1 != 2)
  {
    v2 = 0x6465686361746564;
  }

  if (a1)
  {
    v1 = 0x70756F7267;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void *sub_1000BD8B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1000BBC90(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1000BD930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1000BD9A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1000BDA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1000BDA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_1000BDAF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v5._countAndFlagsBits = *a1;
  v5._object = v3;
  result = sub_1000BD7FC(v5);
  *a2 = result;
  return result;
}

uint64_t sub_1000BDB28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BD84C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000BDB64@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BD848(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BDB94@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1000C3404();
  *a2 = result;
  return result;
}

uint64_t sub_1000BDBC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000BDC14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1000BDC68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = type metadata accessor for DIPError.Code();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = __chkstk_darwin(v7);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a2 - 8);
  __chkstk_darwin(v8);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MerkleTreeLeafNode.CodingKeys(255, a2, a3, v11);
  swift_getWitnessTable();
  v12 = type metadata accessor for KeyedDecodingContainer();
  v13 = *(v12 - 8);
  v46 = v12;
  v47 = v13;
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v45 = a3;
  v17 = type metadata accessor for MerkleTreeLeafNode(0, a2, a3, v16);
  v38 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = (&v35 - v18);
  sub_10000BA08(a1, a1[3]);
  v20 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_10000BB78(a1);
  }

  v37 = v17;
  v50 = a1;
  LOBYTE(v48) = 0;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  *v19 = v22;
  v19[1] = v23;
  v36._object = v23;
  LOBYTE(v48) = 1;
  v24 = v22;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36._countAndFlagsBits = v24;
  v19[2] = v25;
  v19[3] = v26;
  LOBYTE(v48) = 2;
  v27 = v43;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = 0;
  v28 = v37;
  v29 = v19;
  (*(v44 + 32))(v19 + *(v37 + 40), v27, a2);
  LOBYTE(v48) = 3;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v43 = v15;
  *(v19 + *(v28 + 44)) = v30 & 1;
  if (v30)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v48 = 0x5B65646F6ELL;
    v49 = 0xE500000000000000;
    String.append(_:)(v36);
    v31._countAndFlagsBits = 0xD00000000000002ALL;
    v31._object = 0x80000001006FE810;
    String.append(_:)(v31);
    (*(v40 + 104))(v42, enum case for DIPError.Code.invalidClaim(_:), v41);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000C3358(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v32 = v44;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v47 + 8))(v43, v46);
    v33 = v45;
    sub_10000BB78(v50);

    if (!v33)
    {
    }

    return (*(v32 + 8))(v29 + *(v37 + 40), a2);
  }

  else
  {
    (*(v47 + 8))(v43, v46);
    v34 = v38;
    (*(v38 + 16))(v39, v19, v28);
    sub_10000BB78(v50);
    return (*(v34 + 8))(v19, v28);
  }
}

uint64_t sub_1000BE2E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v13[0] = *(a2 + 24);
  v13[1] = v6;
  type metadata accessor for MerkleTreeLeafNode.CodingKeys(255, v6, v13[0], a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - v9;
  sub_10000BA08(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  v11 = v13[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v11)
  {
    v16 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000BE508(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7961506D69616C63;
  }

  else
  {
    v3 = 0x6165486D69616C63;
  }

  if (v2)
  {
    v4 = 0xEB00000000726564;
  }

  else
  {
    v4 = 0xEC00000064616F6CLL;
  }

  if (*a2)
  {
    v5 = 0x7961506D69616C63;
  }

  else
  {
    v5 = 0x6165486D69616C63;
  }

  if (*a2)
  {
    v6 = 0xEC00000064616F6CLL;
  }

  else
  {
    v6 = 0xEB00000000726564;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000BE5C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000BE654(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000BE6D4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000BE764@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9EB8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000BE7C4(uint64_t *a1@<X8>)
{
  v2 = 0x6165486D69616C63;
  if (*v1)
  {
    v2 = 0x7961506D69616C63;
  }

  v3 = 0xEB00000000726564;
  if (*v1)
  {
    v3 = 0xEC00000064616F6CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000BE814()
{
  if (*v0)
  {
    return 0x7961506D69616C63;
  }

  else
  {
    return 0x6165486D69616C63;
  }
}

uint64_t sub_1000BE860@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1007F9EB8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1000BE8C4(uint64_t a1)
{
  v2 = sub_1000C3D00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BE900(uint64_t a1)
{
  v2 = sub_1000C3D00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BE93C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_100007224(&unk_100849FD0, &qword_1006E8380);
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v24 = &v22 - v3;
  v27 = sub_100007224(&qword_1008387E0, &qword_1006D0F70);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v22 - v4;
  v6 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v6 - 8);
  v30 = type metadata accessor for DIPSignpost();
  v7 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VerifiedClaim(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DaemonSignposts.decodeVerifiedClaim.getter();
  DIPSignpost.init(_:)();
  v13 = a1[3];
  v29 = a1;
  sub_10000BA08(a1, v13);
  sub_1000C3D00();
  v14 = v28;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v7 + 8))(v9, v30);
    return sub_10000BB78(v29);
  }

  else
  {
    v28 = v12;
    v15 = v23;
    v33 = 0;
    sub_1000BA30C(&unk_10084A180, &unk_100849FD0, &qword_1006E8380, &protocol conformance descriptor for JWSSignedJSON<A>);
    v16 = v24;
    v17 = v26;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v15 + 32))(v28, v16, v17);
    type metadata accessor for MerkleTreeDetached();
    v32 = 1;
    sub_1000C3358(&qword_100838790, v18, type metadata accessor for MerkleTreeDetached, &unk_1006D0F20);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v25 + 8))(v5, v27);
    v19 = *(v10 + 20);
    v20 = v28;
    *&v28[v19] = v31;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v7 + 8))(v9, v30);
    sub_1000C50D4(v20, v22, type metadata accessor for VerifiedClaim);
    sub_10000BB78(v29);
    return sub_1000C513C(v20, type metadata accessor for VerifiedClaim);
  }
}

uint64_t sub_1000BEE44(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008387F0, &qword_1006D0F78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000C3D00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  sub_100007224(&unk_100849FD0, &qword_1006E8380);
  sub_1000BA30C(&qword_1008387F8, &unk_100849FD0, &qword_1006E8380, &protocol conformance descriptor for JWSSignedJSON<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for VerifiedClaim(0) + 20));
    v11[15] = 1;
    type metadata accessor for MerkleTreeDetached();
    sub_1000C3358(&qword_1008387A0, v9, type metadata accessor for MerkleTreeDetached, &unk_1006D0EF8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_1000BF080()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000BF0FC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000BF154@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9F08, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1000BF27C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0x6C4368636E75616CLL;
    if (a1 != 2)
    {
      v6 = 0x726575737369;
    }

    if (a1)
    {
      v5 = 25705;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x776F6C666B726F77;
    v2 = 1919248756;
    if (a1 != 7)
    {
      v2 = 0x6D69616C63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x646575737369;
    if (a1 != 4)
    {
      v3 = 0x6974617269707865;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_1000BF398()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10050D9A0(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000BF3E8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10050D9A0(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_1000BF42C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C340C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BF45C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BF27C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000BF4A4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C340C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BF4CC(uint64_t a1)
{
  v2 = sub_1000C3A88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BF508(uint64_t a1)
{
  v2 = sub_1000C3A88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BF544(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008387C8, &qword_1006D0F68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000C3A88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11[0]) = 0;
  sub_1000C3BEC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v11[0] = *(v3 + 16);
    v12 = 2;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_1000C3C40(&qword_100835690, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11[0]) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = *(v3 + 120);
    v11[0] = *(v3 + 104);
    v11[1] = v10;
    v12 = 8;
    sub_1000C3CAC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000BF84C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_100838A70, &qword_1006D18A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000C502C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

__n128 sub_1000BF9E0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000C3458(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9;
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000BFA64()
{
  if (*v0)
  {
    return 0x68736148746F6F72;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1000BFAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001006FE930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x68736148746F6F72 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1000BFB8C(uint64_t a1)
{
  v2 = sub_1000C502C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BFBC8(uint64_t a1)
{
  v2 = sub_1000C502C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BFC04@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000C3D54(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

Swift::Int sub_1000BFC60()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000BFD20(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000BFDCC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000BFE88@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C3F38(*a1);
  *a2 = result;
  return result;
}

void sub_1000BFEB8(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000644965;
  v3 = 0x7475626972747461;
  v4 = 0xE400000000000000;
  v5 = 1953259891;
  if (*v1 != 2)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x64657669726564;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1000BFF34()
{
  v1 = 0x7475626972747461;
  v2 = 1953259891;
  if (*v0 != 2)
  {
    v2 = 0x65756C6176;
  }

  if (*v0)
  {
    v1 = 0x64657669726564;
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

unint64_t sub_1000BFFAC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C3F38(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BFFD4(uint64_t a1)
{
  v2 = sub_1000C4234();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C0010(uint64_t a1)
{
  v2 = sub_1000C4234();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C004C()
{
  v2 = v0;
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v2[6])
  {
    return 0;
  }

  v140 = v9;
  static String.Encoding.utf8.getter();
  v12 = v8;
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;
  v17 = *(v12 + 8);
  v16 = v12 + 8;
  v131 = v17;
  v17(v11, v140);
  if (v15 >> 60 == 15)
  {
    v132 = 0;
    v133 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v18._countAndFlagsBits = 0xD00000000000001BLL;
    v18._object = 0x80000001006FE840;
    String.append(_:)(v18);
    v19 = *v2;
    v20 = v2[1];

    v21._countAndFlagsBits = v19;
    v21._object = v20;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 0xD000000000000020;
    v22._object = 0x80000001006FE860;
    String.append(_:)(v22);
    v140 = v132;
    v131 = v133;
    (*(v4 + 104))(v6, enum case for DIPError.Code.verifiedClaimDataElementEncodingFailed(_:), v3);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v23 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v24 = (*(*v23 + 80) + 32) & ~*(*v23 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1006BF520;
    v26 = v25 + v24;
    v27 = (v26 + v23[14]);
    v28 = enum case for DIPError.PropertyKey.attributeID(_:);
    v29 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v29 - 8) + 104))(v26, v28, v29);
    v27[3] = &type metadata for String;
    v27[4] = &protocol witness table for String;
    *v27 = v19;
    v27[1] = v20;
    sub_10003C9C0(v25);
    swift_setDeallocating();
    sub_10000BE18(v26, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_1000C3358(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v121 = v4;
  v122 = v3;
  v130 = v13;
  v31 = sub_100343B88(58, 0xE100000000000000);
  v33 = v32;
  v123 = v6;
  v125 = v1;
  v126 = v16;
  v127 = v2;

  v34 = Data.init(base16Encoded:)();
  if (v35 >> 60 == 15)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  if (v35 >> 60 == 15)
  {
    v37 = 0xC000000000000000;
  }

  else
  {
    v37 = v35;
  }

  v136 = v36;
  v137 = v37;
  v134 = &type metadata for Data;
  v135 = &protocol witness table for Data;
  v132 = v31;
  v133 = v33;
  v38 = sub_10000BA08(&v132, &type metadata for Data);
  v39 = *v38;
  v40 = v38[1];
  sub_10000B8B8(v36, v37);
  v128 = v31;
  v129 = v33;
  sub_10000B8B8(v31, v33);
  v41 = v125;
  sub_1000C2F1C(v39, v40, &v136);
  sub_10000B90C(v36, v37);
  sub_10000BB78(&v132);
  v42 = v136;
  v43 = v137;
  v138 = v136;
  v139 = v137;
  v134 = &type metadata for Data;
  v135 = &protocol witness table for Data;
  v44 = v130;
  v132 = v130;
  v133 = v15;
  v45 = sub_10000BA08(&v132, &type metadata for Data);
  v46 = *v45;
  v47 = v45[1];
  sub_10000B8B8(v42, v43);
  sub_1000363B4(v44, v15);
  sub_1000C2F1C(v46, v47, &v138);
  sub_10000B90C(v42, v43);
  sub_10000BB78(&v132);
  v48 = v138;
  v49 = v139;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v51 = DigestSha256();

  v52 = v15;
  v124 = v48;
  v125 = v49;
  if (v51)
  {
    v120 = v15;
    v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v136 = v53;
    v137 = v55;
    v134 = &type metadata for Data;
    v135 = &protocol witness table for Data;
    v56 = v128;
    v57 = v129;
    v132 = v128;
    v133 = v129;
    v58 = sub_10000BA08(&v132, &type metadata for Data);
    v59 = *v58;
    v60 = v58[1];
    sub_10000B8B8(v56, v57);
    v118 = v53;
    v119 = v55;
    sub_10000B8B8(v53, v55);
    sub_1000C2F1C(v59, v60, &v136);
    v117[1] = v41;
    sub_10000BB78(&v132);
    v61 = v136;
    v62 = v137;
    static String.Encoding.utf8.getter();
    v63 = String.data(using:allowLossyConversion:)();
    v65 = v64;

    v131(v11, v140);
    if (v65 >> 60 == 15)
    {
      v63 = 0;
    }

    v138 = v61;
    v139 = v62;
    if (v65 >> 60 == 15)
    {
      v65 = 0xC000000000000000;
    }

    v134 = &type metadata for Data;
    v135 = &protocol witness table for Data;
    v132 = v63;
    v133 = v65;
    v66 = sub_10000BA08(&v132, &type metadata for Data);
    v68 = *v66;
    v67 = v66[1];
    sub_10000B8B8(v61, v62);
    sub_10000B8B8(v63, v65);
    sub_1000C2F1C(v68, v67, &v138);
    sub_10000B90C(v63, v65);
    sub_10000B90C(v61, v62);
    sub_10000BB78(&v132);
    v69 = v138;
    v70 = v139;
    v136 = v138;
    v137 = v139;
    v134 = &type metadata for Data;
    v135 = &protocol witness table for Data;
    v71 = v129;
    v132 = v56;
    v133 = v129;
    v72 = sub_10000BA08(&v132, &type metadata for Data);
    v73 = *v72;
    v74 = v72[1];
    sub_10000B8B8(v56, v71);
    sub_10000B8B8(v69, v70);
    sub_1000C2F1C(v73, v74, &v136);
    sub_10000B90C(v69, v70);
    sub_10000BB78(&v132);
    v76 = v136;
    v75 = v137;
    v77 = *v127;
    v78 = v127[1];

    static String.Encoding.utf8.getter();
    v127 = v77;
    v79 = String.data(using:allowLossyConversion:)();
    v81 = v80;
    v131(v11, v140);
    if (v81 >> 60 == 15)
    {
      v82 = 0;
    }

    else
    {
      v82 = v79;
    }

    v138 = v76;
    v139 = v75;
    if (v81 >> 60 == 15)
    {
      v83 = 0xC000000000000000;
    }

    else
    {
      v83 = v81;
    }

    v134 = &type metadata for Data;
    v135 = &protocol witness table for Data;
    v132 = v82;
    v133 = v83;
    v84 = sub_10000BA08(&v132, &type metadata for Data);
    v85 = *v84;
    v86 = v84[1];
    sub_10000B8B8(v76, v75);
    sub_10000B8B8(v82, v83);
    sub_1000C2F1C(v85, v86, &v138);
    sub_10000B90C(v82, v83);
    sub_10000B90C(v76, v75);
    sub_10000BB78(&v132);
    v87 = v138;
    v88 = v139;
    v89 = Data._bridgeToObjectiveC()().super.isa;
    v90 = DigestSha256();

    if (v90)
    {

      v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000B90C(v87, v88);
      sub_10000B90C(v118, v119);
      sub_10000B90C(v124, v125);
      sub_10000B90C(v128, v71);
      sub_10000BD94(v130, v120);

      return v91;
    }

    v132 = 0;
    v133 = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v106._countAndFlagsBits = 0xD000000000000022;
    v106._object = 0x80000001006FE8C0;
    String.append(_:)(v106);
    v107 = v127;
    v108._countAndFlagsBits = v127;
    v108._object = v78;
    String.append(_:)(v108);
    v109._countAndFlagsBits = 0xD000000000000020;
    v109._object = 0x80000001006FE860;
    String.append(_:)(v109);
    v140 = v132;
    v131 = v133;
    (*(v121 + 104))(v123, enum case for DIPError.Code.verifiedClaimHashComputeFailed(_:), v122);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v110 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v111 = (*(*v110 + 80) + 32) & ~*(*v110 + 80);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_1006BF520;
    v113 = v112 + v111;
    v114 = (v113 + v110[14]);
    v115 = enum case for DIPError.PropertyKey.attributeID(_:);
    v116 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v116 - 8) + 104))(v113, v115, v116);
    v114[3] = &type metadata for String;
    v114[4] = &protocol witness table for String;
    *v114 = v107;
    v114[1] = v78;
    sub_10003C9C0(v112);
    swift_setDeallocating();
    sub_10000BE18(v113, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_1000C3358(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v87, v88);
    sub_10000B90C(v118, v119);
    sub_10000B90C(v124, v125);
    sub_10000B90C(v128, v129);
    v104 = v130;
    v105 = v120;
  }

  else
  {
    v132 = 0;
    v133 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v92._countAndFlagsBits = 0xD000000000000021;
    v92._object = 0x80000001006FE890;
    String.append(_:)(v92);
    v93 = *v127;
    v94 = v127[1];

    v95._countAndFlagsBits = v93;
    v95._object = v94;
    String.append(_:)(v95);
    v96._countAndFlagsBits = 0xD000000000000020;
    v96._object = 0x80000001006FE860;
    String.append(_:)(v96);
    v140 = v132;
    v131 = v133;
    (*(v121 + 104))(v123, enum case for DIPError.Code.verifiedClaimHashComputeFailed(_:), v122);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v97 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v98 = (*(*v97 + 80) + 32) & ~*(*v97 + 80);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_1006BF520;
    v100 = v99 + v98;
    v101 = (v100 + v97[14]);
    v102 = enum case for DIPError.PropertyKey.attributeID(_:);
    v103 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v103 - 8) + 104))(v100, v102, v103);
    v101[3] = &type metadata for String;
    v101[4] = &protocol witness table for String;
    *v101 = v93;
    v101[1] = v94;
    sub_10003C9C0(v99);
    swift_setDeallocating();
    sub_10000BE18(v100, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_1000C3358(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v124, v125);
    sub_10000B90C(v128, v129);
    v104 = v130;
    v105 = v52;
  }

  return sub_10000BD94(v104, v105);
}

uint64_t sub_1000C0F6C(void *a1)
{
  v3 = sub_100007224(&qword_100838810, &qword_1006D0F88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000C4234();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000C112C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100838A90, &qword_1006D18B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000C5080();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  sub_100007224(&unk_10084A010, &unk_1006D0FA0);
  sub_1000BA30C(&qword_100838A98, &unk_10084A010, &unk_1006D0FA0, &protocol conformance descriptor for JWSSignedJSON<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for VerifiedClaimPresentment(0) + 20));
    v11[15] = 1;
    type metadata accessor for MerkleTreeDetached();
    sub_1000C3358(&qword_1008387A0, v9, type metadata accessor for MerkleTreeDetached, &unk_1006D0EF8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000C1338@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_100007224(&unk_10084A010, &unk_1006D0FA0);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v21 - v4;
  v6 = sub_100007224(&qword_100838A78, &qword_1006D18A8);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for VerifiedClaimPresentment(0);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08(a1, a1[3]);
  sub_1000C5080();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_1000BA30C(&qword_100838A88, &unk_10084A010, &unk_1006D0FA0, &protocol conformance descriptor for JWSSignedJSON<A>);
  v15 = v27;
  v16 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  type metadata accessor for MerkleTreeDetached();
  v29 = 1;
  sub_1000C3358(&qword_100838790, v18, type metadata accessor for MerkleTreeDetached, &unk_1006D0F20);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v9, v16);
  v19 = v21;
  *(v21 + *(v22 + 20)) = v28;
  sub_1000C50D4(v19, v23, type metadata accessor for VerifiedClaimPresentment);
  sub_10000BB78(a1);
  return sub_1000C513C(v19, type metadata accessor for VerifiedClaimPresentment);
}

uint64_t sub_1000C16D0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100838AB8, &qword_1006D18C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000C519C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  sub_100007224(&unk_10084A010, &unk_1006D0FA0);
  sub_1000BA30C(&qword_100838A98, &unk_10084A010, &unk_1006D0FA0, &protocol conformance descriptor for JWSSignedJSON<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11[1] = *(v3 + *(type metadata accessor for VerifiedClaimPresentmentWithDSDAuthorization(0) + 20));
    v13 = 1;
    type metadata accessor for MerkleTreeDetached();
    sub_1000C3358(&qword_1008387A0, v9, type metadata accessor for MerkleTreeDetached, &unk_1006D0EF8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 2;
    sub_100007224(&qword_1008388C0, &unk_1006D0FD0);
    sub_1000BA30C(&qword_100838AC0, &qword_1008388C0, &unk_1006D0FD0, &protocol conformance descriptor for JWSSignedJSON<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000C1964@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_100007224(&qword_1008388C0, &unk_1006D0FD0);
  v26 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v23 - v4;
  v6 = sub_100007224(&unk_10084A010, &unk_1006D0FA0);
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v23 - v7;
  v32 = sub_100007224(&qword_100838AA0, &qword_1006D18B8);
  v28 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v23 - v8;
  v10 = type metadata accessor for VerifiedClaimPresentmentWithDSDAuthorization(0);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v33 = a1;
  sub_10000BA08(a1, v13);
  sub_1000C519C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v33);
  }

  v24 = v5;
  v25 = v10;
  v15 = v28;
  v14 = v29;
  v16 = v12;
  v17 = v30;
  v37 = 0;
  sub_1000BA30C(&qword_100838A88, &unk_10084A010, &unk_1006D0FA0, &protocol conformance descriptor for JWSSignedJSON<A>);
  v18 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *(v14 + 32);
  v31 = v6;
  v19(v16, v18, v6);
  type metadata accessor for MerkleTreeDetached();
  v36 = 1;
  sub_1000C3358(&qword_100838790, v20, type metadata accessor for MerkleTreeDetached, &unk_1006D0F20);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v16 + *(v25 + 20)) = v34;
  v35 = 2;
  sub_1000BA30C(&qword_100838AB0, &qword_1008388C0, &unk_1006D0FD0, &protocol conformance descriptor for JWSSignedJSON<A>);
  v21 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 8))(v9, v32);
  (*(v26 + 32))(v16 + *(v25 + 24), v21, v17);
  sub_1000C50D4(v16, v27, type metadata accessor for VerifiedClaimPresentmentWithDSDAuthorization);
  sub_10000BB78(v33);
  return sub_1000C513C(v16, type metadata accessor for VerifiedClaimPresentmentWithDSDAuthorization);
}

double sub_1000C1E54@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000C3F84(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

unint64_t sub_1000C1EBC(uint64_t a1)
{
  *(a1 + 8) = sub_1000C1EEC();
  result = sub_1000C1F40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000C1EEC()
{
  result = qword_100838770;
  if (!qword_100838770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838770);
  }

  return result;
}

unint64_t sub_1000C1F40()
{
  result = qword_100838778;
  if (!qword_100838778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838778);
  }

  return result;
}

unint64_t sub_1000C1F94()
{
  result = qword_100838788;
  if (!qword_100838788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838788);
  }

  return result;
}

void sub_1000C1FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t sub_1000C2038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6165486D69616C63 && a2 == 0xEB00000000726564;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7961506D69616C63 && a2 == 0xEC00000064616F6CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000C211C(uint64_t a1)
{
  v2 = sub_1000C5080();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C2158(uint64_t a1)
{
  v2 = sub_1000C5080();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000C21C4()
{
  v1 = 0x7961506D69616C63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6165486D69616C63;
  }
}

uint64_t sub_1000C2234@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000C5538(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000C225C(uint64_t a1)
{
  v2 = sub_1000C519C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C2298(uint64_t a1)
{
  v2 = sub_1000C519C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000C2304(void *a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a2;
  v92 = a3;
  v12 = a1[13];
  if (*(a1 + 13) == 0)
  {
    v27 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v27 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v28 = a1[5];
    if (v27)
    {
      if (v28)
      {
        v29 = a1[4];
        v89 = 46;
        v90 = 0xE100000000000000;

        v30._countAndFlagsBits = v29;
        v30._object = v28;
        String.append(_:)(v30);
        v31 = v89;
        v32 = v90;
      }

      else
      {

        v31 = 0;
        v32 = 0xE000000000000000;
      }

      v75 = v32;
      String.append(_:)(*&v31);

      v73 = v91;
      v74 = v92;
    }

    else
    {
      if (v28)
      {
        v73 = a1[4];
        v74 = a1[5];
      }

      else
      {
        v74 = 0xE900000000000064;
        v73 = 0x6570756F72676E75;
      }
    }

    sub_100007224(&qword_100838818, &unk_1006D0F90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006BF520;
    v77 = a1[3];
    *(inited + 32) = a1[2];
    *(inited + 40) = v77;
    *(inited + 48) = v73;
    *(inited + 56) = v74;

    v23 = sub_10003D21C(inited);
    swift_setDeallocating();
    sub_10000BE18(inited + 32, &qword_100838820, &unk_1006DB6B0);
    return v23;
  }

  v13 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v13 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a1[5];
  if (v13)
  {
    if (v14)
    {
      v15 = a1[4];
      v89 = 46;
      v90 = 0xE100000000000000;

      v16._countAndFlagsBits = v15;
      v16._object = v14;
      String.append(_:)(v16);
      v17 = v89;
      v18 = v90;
    }

    else
    {

      v17 = 0;
      v18 = 0xE000000000000000;
    }

    v21 = v18;
    String.append(_:)(*&v17);

    if (v12)
    {
      goto LABEL_11;
    }

LABEL_23:
    v26 = a1[14];
    if (!v26)
    {
      goto LABEL_65;
    }

    v25 = 0;
    v23 = v91;
    v22 = v92;
    goto LABEL_25;
  }

  if (v14)
  {
    v19 = a1[4];
    v20 = a1[5];
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  v91 = v19;
  v92 = v20;

  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_11:
  v23 = v91;
  v22 = v92;

  v24 = sub_1000C2304(v12, v23, v22);
  if (v4)
  {

    swift_bridgeObjectRelease_n();
    return v23;
  }

  v25 = v24;

  v26 = a1[14];
  if (v26)
  {
LABEL_25:

    v23 = sub_1000C2304(v33, v23, v22);

    if (v4)
    {

LABEL_27:

      return v23;
    }

    if (!v25)
    {

      return v23;
    }

    v83 = 0;
    v84 = v26;
    v81 = v8;
    v82 = v11;
    v34 = v25 + 64;
    v35 = 1 << *(v25 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v25 + 64);
    v38 = (v35 + 63) >> 6;

    v39 = 0;
    v86 = v9;
    v87 = v25;
    v85 = v25 + 64;
    while (v37)
    {
      v41 = v39;
LABEL_39:
      v42 = (v41 << 10) | (16 * __clz(__rbit64(v37)));
      v43 = *(v25 + 56);
      v44 = (*(v25 + 48) + v42);
      v46 = *v44;
      v45 = v44[1];
      v47 = (v43 + v42);
      v48 = v47[1];
      v88 = *v47;
      v49 = v23[2];

      v93 = v48;

      if (v49)
      {
        sub_10003ADCC(v46, v45);
        if (v50)
        {
          v89 = 0;
          v90 = 0xE000000000000000;
          _StringGuts.grow(_:)(31);

          v89 = 0xD00000000000001DLL;
          v90 = 0x80000001006FE8F0;
          v79._countAndFlagsBits = v46;
          v79._object = v45;
          String.append(_:)(v79);
          v88 = v89;
          (*(v9 + 104))(v82, enum case for DIPError.Code.invalidClaim(_:), v81);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_1000C3358(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          goto LABEL_27;
        }
      }

      v51 = v23;
      v52 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v46;
      v55 = isUniquelyReferenced_nonNull_native;
      v89 = v51;
      v56 = v54;
      v57 = v45;
      v59 = sub_10003ADCC(v54, v45);
      v60 = v51[2];
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_63;
      }

      v63 = v58;
      if (v51[3] >= v62)
      {
        if ((v55 & 1) == 0)
        {
          sub_10016F53C();
        }

        v67 = v93;
        v64 = v56;
      }

      else
      {
        sub_100165FC0(v62, v55);
        v64 = v56;
        v65 = sub_10003ADCC(v56, v57);
        if ((v63 & 1) != (v66 & 1))
        {
          goto LABEL_66;
        }

        v59 = v65;
        v67 = v93;
      }

      v38 = v52;
      v37 &= v37 - 1;
      v23 = v89;
      if (v63)
      {
        v40 = (*(v89 + 56) + 16 * v59);
        *v40 = v88;
        v40[1] = v67;
      }

      else
      {
        *(v89 + 8 * (v59 >> 6) + 64) |= 1 << v59;
        v68 = (v23[6] + 16 * v59);
        *v68 = v64;
        v68[1] = v57;
        v69 = (v23[7] + 16 * v59);
        *v69 = v88;
        v69[1] = v67;
        v70 = v23[2];
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          goto LABEL_64;
        }

        v23[2] = v72;
      }

      v39 = v41;
      v9 = v86;
      v25 = v87;
      v34 = v85;
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v38)
      {

        return v23;
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v25)
  {

    return v25;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

BOOL sub_1000C2A44(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 40);
    if (v2)
    {
      if (*(result + 32) == 0x6966697265766E75 && v2 == 0xEA00000000006465)
      {
        return *(v1 + 104) != 0;
      }

      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return *(v1 + 104) != 0;
      }
    }

    v4 = *(v1 + 104);

    v5 = sub_1000C2A44(v4);

    if (v5)
    {

      return 1;
    }

    else
    {

      v7 = sub_1000C2A44(v6);

      return v7 & 1;
    }
  }

  return result;
}

uint64_t sub_1000C2B5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000C2D8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000C30E8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10000B90C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1000C2B5C(v13, a3, a4, &v12);
  v10 = v4;
  sub_10000B90C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1000C2F1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000C3054(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1000C3054(v4, v5);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_1000C3054(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C30E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1000C2B5C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1000C31A0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10000B8B8(a3, a4);
          return sub_1000C2D8C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1000C3308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t sub_1000C3358(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C33B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9D88, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C340C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9F40, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000C3458@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = sub_100007224(&qword_1008387A8, &unk_1006D0F58);
  v4 = *(v46 - 8);
  __chkstk_darwin(v46);
  v6 = &v31 - v5;
  sub_10000BA08(a1, a1[3]);
  sub_1000C3A88();
  v7 = v6;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v8 = v4;
    v9 = v45;
    LOBYTE(v56[0]) = 0;
    sub_1000C3ADC();
    v10 = v46;
    v11 = v7;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v56[0]) = 1;
    *&v44 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v44 + 1) = v12;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    LOBYTE(v47) = 2;
    sub_1000C3C40(&qword_100839860, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = v56[0];
    LOBYTE(v56[0]) = 3;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v15;
    LOBYTE(v56[0]) = 4;
    v39 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = v16;
    LOBYTE(v56[0]) = 5;
    v37 = KeyedDecodingContainer.decode(_:forKey:)();
    v38 = v13;
    v41 = v17;
    LOBYTE(v56[0]) = 6;
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v18;
    LOBYTE(v56[0]) = 7;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v20;
    v35 = v19;
    v60 = 8;
    sub_1000C3B30();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v11, v10);
    v33 = v58;
    v34 = v57;
    v31 = v59;
    v32 = *(&v58 + 1);
    v22 = *(&v44 + 1);
    v47 = v44;
    v23 = v38;
    *&v48 = v38;
    *(&v48 + 1) = v14;
    v46 = v14;
    v24 = v42;
    v25 = v43;
    *&v49 = v43;
    *(&v49 + 1) = v39;
    *&v50 = v42;
    *(&v50 + 1) = v37;
    *&v51 = v41;
    *(&v51 + 1) = v36;
    *&v52 = v40;
    *(&v52 + 1) = v35;
    *&v53 = v21;
    *(&v53 + 1) = v57;
    v54 = v58;
    v55 = v59;
    sub_1000C3B84(&v47, v56);
    sub_10000BB78(a1);
    v56[0] = v44;
    v56[1] = v22;
    v56[2] = v23;
    v56[3] = v46;
    v56[4] = v25;
    v56[5] = v39;
    v56[6] = v24;
    v56[7] = v37;
    v56[8] = v41;
    v56[9] = v36;
    v56[10] = v40;
    v56[11] = v35;
    v56[12] = v21;
    v56[13] = v34;
    v56[14] = v33;
    v56[15] = v32;
    v56[16] = v31;
    result = sub_1000C3BBC(v56);
    v27 = v54;
    *(v9 + 96) = v53;
    *(v9 + 112) = v27;
    *(v9 + 128) = v55;
    v28 = v50;
    *(v9 + 32) = v49;
    *(v9 + 48) = v28;
    v29 = v52;
    *(v9 + 64) = v51;
    *(v9 + 80) = v29;
    v30 = v48;
    *v9 = v47;
    *(v9 + 16) = v30;
  }

  return result;
}

unint64_t sub_1000C3A88()
{
  result = qword_1008387B0;
  if (!qword_1008387B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008387B0);
  }

  return result;
}

unint64_t sub_1000C3ADC()
{
  result = qword_1008387B8;
  if (!qword_1008387B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008387B8);
  }

  return result;
}

unint64_t sub_1000C3B30()
{
  result = qword_1008387C0;
  if (!qword_1008387C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008387C0);
  }

  return result;
}

unint64_t sub_1000C3BEC()
{
  result = qword_1008387D0;
  if (!qword_1008387D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008387D0);
  }

  return result;
}

uint64_t sub_1000C3C40(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_100834EA0, &qword_1006C06B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C3CAC()
{
  result = qword_1008387D8;
  if (!qword_1008387D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008387D8);
  }

  return result;
}

unint64_t sub_1000C3D00()
{
  result = qword_1008387E8;
  if (!qword_1008387E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008387E8);
  }

  return result;
}

uint64_t sub_1000C3D54(void *a1)
{
  v3 = sub_100007224(&qword_100838A60, &qword_1006D1898);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000C502C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BB78(a1);
  return v7;
}

unint64_t sub_1000C3F38(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FA038, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000C3F84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_100838800, &qword_1006D0F80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000C4234();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v29 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v24 = v9;
  v28 = 1;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = 2;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v23 = v12;
  v26 = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  v25 &= 1u;
  v18 = *(v6 + 8);
  v22 = v15;
  v18(v8, v5);

  sub_10000BB78(a1);

  *a2 = v24;
  *(a2 + 8) = v11;
  *(a2 + 16) = v25;
  v20 = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v14;
  *(a2 + 40) = v20;
  *(a2 + 48) = v17;
  return result;
}

unint64_t sub_1000C4234()
{
  result = qword_100838808;
  if (!qword_100838808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838808);
  }

  return result;
}

uint64_t sub_1000C42E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = sub_100007224(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000C43C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = sub_100007224(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1000C44A4(uint64_t a1)
{
  sub_1000C451C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MerkleTreeDetached();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000C451C(uint64_t a1)
{
  if (!qword_100838890)
  {
    sub_10000B870(&unk_100849FD0, &qword_1006E8380);
    sub_1000BA30C(&unk_10084A180, &unk_100849FD0, &qword_1006E8380, &protocol conformance descriptor for JWSSignedJSON<A>);
    sub_1000BA30C(&qword_1008387F8, &unk_100849FD0, &qword_1006E8380, &protocol conformance descriptor for JWSSignedJSON<A>);
    v1 = type metadata accessor for JWSSignedJSON();
    if (!v2)
    {
      atomic_store(v1, &qword_100838890);
    }
  }
}

uint64_t sub_1000C460C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007224(&unk_10084A010, &unk_1006D0FA0);
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
    v11 = sub_100007224(&qword_1008388C0, &unk_1006D0FD0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000C475C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100007224(&unk_10084A010, &unk_1006D0FA0);
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
    v11 = sub_100007224(&qword_1008388C0, &unk_1006D0FD0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000C48B8(uint64_t a1)
{
  sub_1000C451C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MerkleTreeDetached();
    sub_1000C4980(319, &qword_100838930, sub_1000C49FC, sub_1000C4A50, &type metadata for DataSharingAuthorization);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000C4980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = type metadata accessor for JWSSignedJSON();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1000C49FC()
{
  result = qword_10084A000;
  if (!qword_10084A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10084A000);
  }

  return result;
}

unint64_t sub_1000C4A50()
{
  result = qword_100838938;
  if (!qword_100838938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838938);
  }

  return result;
}

unint64_t sub_1000C4B10()
{
  result = qword_1008389F0;
  if (!qword_1008389F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008389F0);
  }

  return result;
}

unint64_t sub_1000C4B68()
{
  result = qword_1008389F8;
  if (!qword_1008389F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008389F8);
  }

  return result;
}

unint64_t sub_1000C4BDC()
{
  result = qword_100838A00;
  if (!qword_100838A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A00);
  }

  return result;
}

unint64_t sub_1000C4C34()
{
  result = qword_100838A08;
  if (!qword_100838A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A08);
  }

  return result;
}

unint64_t sub_1000C4C8C()
{
  result = qword_100838A10;
  if (!qword_100838A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A10);
  }

  return result;
}

unint64_t sub_1000C4CE4()
{
  result = qword_100838A18;
  if (!qword_100838A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A18);
  }

  return result;
}

unint64_t sub_1000C4D3C()
{
  result = qword_100838A20;
  if (!qword_100838A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A20);
  }

  return result;
}

unint64_t sub_1000C4D94()
{
  result = qword_100838A28;
  if (!qword_100838A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A28);
  }

  return result;
}

unint64_t sub_1000C4DEC()
{
  result = qword_100838A30;
  if (!qword_100838A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A30);
  }

  return result;
}

unint64_t sub_1000C4E44()
{
  result = qword_100838A38;
  if (!qword_100838A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A38);
  }

  return result;
}

unint64_t sub_1000C4E9C()
{
  result = qword_100838A40;
  if (!qword_100838A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A40);
  }

  return result;
}

unint64_t sub_1000C4F2C()
{
  result = qword_100838A48;
  if (!qword_100838A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A48);
  }

  return result;
}

unint64_t sub_1000C4F84()
{
  result = qword_100838A50;
  if (!qword_100838A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A50);
  }

  return result;
}

unint64_t sub_1000C4FD8()
{
  result = qword_100838A58;
  if (!qword_100838A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A58);
  }

  return result;
}

unint64_t sub_1000C502C()
{
  result = qword_100838A68;
  if (!qword_100838A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A68);
  }

  return result;
}

unint64_t sub_1000C5080()
{
  result = qword_100838A80;
  if (!qword_100838A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838A80);
  }

  return result;
}

uint64_t sub_1000C50D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C513C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000C519C()
{
  result = qword_100838AA8;
  if (!qword_100838AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838AA8);
  }

  return result;
}

unint64_t sub_1000C5224()
{
  result = qword_100838AC8;
  if (!qword_100838AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838AC8);
  }

  return result;
}

unint64_t sub_1000C527C()
{
  result = qword_100838AD0;
  if (!qword_100838AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838AD0);
  }

  return result;
}

unint64_t sub_1000C52D4()
{
  result = qword_100838AD8;
  if (!qword_100838AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838AD8);
  }

  return result;
}

unint64_t sub_1000C532C()
{
  result = qword_100838AE0;
  if (!qword_100838AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838AE0);
  }

  return result;
}

unint64_t sub_1000C5384()
{
  result = qword_100838AE8;
  if (!qword_100838AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838AE8);
  }

  return result;
}

unint64_t sub_1000C53DC()
{
  result = qword_100838AF0;
  if (!qword_100838AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838AF0);
  }

  return result;
}

unint64_t sub_1000C5434()
{
  result = qword_100838AF8;
  if (!qword_100838AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838AF8);
  }

  return result;
}

unint64_t sub_1000C548C()
{
  result = qword_100838B00;
  if (!qword_100838B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838B00);
  }

  return result;
}

unint64_t sub_1000C54E4()
{
  result = qword_100838B08;
  if (!qword_100838B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100838B08);
  }

  return result;
}

uint64_t sub_1000C5538(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6165486D69616C63 && a2 == 0xEB00000000726564;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7961506D69616C63 && a2 == 0xEC00000064616F6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001006FE950 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t (*sub_1000C5670(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1000E4510(v6, a2, a3);
  return sub_1000C56F8;
}

void sub_1000C56F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1000C5744(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v29 = a2;
  while (v6)
  {
LABEL_11:
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v12 = *v10;
    v11 = v10[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a2;
    v31 = *a2;
    *a2 = 0x8000000000000000;
    v15 = sub_10003ADCC(v12, v11);
    v17 = *(v14 + 16);
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_23;
    }

    v21 = v16;
    if (*(v14 + 24) < v20)
    {
      sub_100167CCC(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_10003ADCC(v12, v11);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v23 = v31;
      if (v21)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v27 = v15;
    sub_10017057C();
    v15 = v27;
    v23 = v31;
    if (v21)
    {
LABEL_4:
      *(v23[7] + 8 * v15) = &_swiftEmptySetSingleton;

      goto LABEL_5;
    }

LABEL_17:
    v23[(v15 >> 6) + 8] |= 1 << v15;
    v24 = (v23[6] + 16 * v15);
    *v24 = v12;
    v24[1] = v11;
    *(v23[7] + 8 * v15) = &_swiftEmptySetSingleton;
    v25 = v23[2];
    v19 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v19)
    {
      goto LABEL_24;
    }

    v23[2] = v26;

LABEL_5:
    v6 &= v6 - 1;
    a2 = v29;
    *v29 = v23;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C5978(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      v3 = *(v2 + 112);
      v12[6] = *(v2 + 96);
      v12[7] = v3;
      v12[8] = *(v2 + 128);
      v13 = *(v2 + 144);
      v4 = *(v2 + 48);
      v12[2] = *(v2 + 32);
      v12[3] = v4;
      v5 = *(v2 + 80);
      v12[4] = *(v2 + 64);
      v12[5] = v5;
      v6 = *(v2 + 16);
      v12[0] = *v2;
      v12[1] = v6;
      sub_1000F059C(v12, v10);
      v7 = sub_1000C5670(v10, 0x746C7561666564, 0xE700000000000000);
      if (*v8)
      {
        v9 = v12[0];

        sub_100151120(&v11, v9, *(&v9 + 1));
      }

      (v7)(v10, 0);
      result = sub_1000F05D4(v12);
      v2 += 152;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1000C5AA0(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  v5 = type metadata accessor for DIPError.Code();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPCertUsage();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DIPOIDVerifier();
  v12 = *(v33 - 8);
  __chkstk_darwin(v33);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = result; result; i = result)
  {
    v21 = v5;
    v22 = v7;
    v5 = 0;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = a1 & 0xC000000000000001;
    v25 = enum case for DIPCertUsage.spInputValidationEncryption(_:);
    v24 = (v9 + 104);
    v26 = (v12 + 16);
    v27 = (v9 + 8);
    v28 = (v12 + 8);
    v12 = i;
    while (1)
    {
      if (v32)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v31 + 16))
        {
          goto LABEL_16;
        }
      }

      v7 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *(v16 + OBJC_IVAR____TtC8coreidvd22UserInputValidationURL_encryptionCertificate + 8);
      if (v9)
      {
        v35 = v16;
        v17 = v11;
        v34 = v3;
        v18 = v33;
        (*v26)(v14, v29);
        (*v24)(v17, v25, v8);
        v19 = v34;
        v20 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
        v3 = v19;
        if (v19)
        {
          (*v27)(v17, v8);
          (*v28)(v14, v18);
          (*(v23 + 104))(v22, enum case for DIPError.Code.internalError(_:), v21);
          swift_errorRetain();
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
        }

        (*v27)(v17, v8);
        (*v28)(v14, v18);
        v11 = v17;
        v12 = i;
      }

      ++v5;
      if (v7 == v12)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  return result;
}

uint64_t sub_1000C5F68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void *, uint64_t))
{
  v28 = a3;
  v29 = a4;
  v5 = v4;
  v27 = sub_100007224(&unk_100839AC0, &unk_1006D4948);
  __chkstk_darwin(v27);
  v9 = (&v26 - v8);
  v32 = a1;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v30 = a2;

  v16 = 0;
  while (v13)
  {
    v31 = v5;
    v17 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v17 << 6);
    v20 = *(v30 + 56);
    v21 = (*(v30 + 48) + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = type metadata accessor for EncryptionCertificateInStringFormat(0);
    sub_1000F1F64(v20 + *(*(v24 - 8) + 72) * v19, v9 + *(v27 + 48));
    *v9 = v22;
    v9[1] = v23;

    v25 = v31;
    v29(&v32, v9, v28);
    v5 = v25;
    result = sub_10000BE18(v9, &unk_100839AC0, &unk_1006D4948);
    if (v25)
    {
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return v32;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v31 = v5;
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000C6148()
{
  if (*(v0 + 8680))
  {
    v1 = *(v0 + 8680);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
    *(v0 + 8680) = _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t sub_1000C6188(uint64_t a1, uint64_t a2)
{
  v3[5579] = v2;
  v3[5578] = a2;
  v3[5577] = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v3[5580] = v4;
  v3[5581] = *(v4 - 8);
  v3[5582] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS();
  v3[5583] = v5;
  v3[5584] = *(v5 - 8);
  v3[5585] = swift_task_alloc();
  v6 = type metadata accessor for DispatchTimeInterval();
  v3[5586] = v6;
  v3[5587] = *(v6 - 8);
  v3[5588] = swift_task_alloc();
  v3[5589] = swift_task_alloc();
  v7 = type metadata accessor for DispatchTime();
  v3[5590] = v7;
  v3[5591] = *(v7 - 8);
  v3[5592] = swift_task_alloc();
  v3[5593] = swift_task_alloc();
  v8 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v3[5594] = v8;
  v3[5595] = *(v8 - 8);
  v3[5596] = swift_task_alloc();
  sub_100007224(&unk_100839970, &qword_1006C19C0);
  v3[5597] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[5598] = v9;
  v3[5599] = *(v9 - 8);
  v3[5600] = swift_task_alloc();
  v3[5601] = swift_task_alloc();
  sub_100007224(&qword_100835538, &qword_1006C19C8);
  v3[5602] = swift_task_alloc();
  v10 = sub_100007224(&unk_1008399E0, &qword_1006C0A10);
  v3[5603] = v10;
  v3[5604] = *(v10 - 8);
  v3[5605] = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  v3[5606] = v11;
  v3[5607] = *(v11 - 8);
  v3[5608] = swift_task_alloc();
  sub_100007224(&qword_100835540, &qword_1006C19D0);
  v3[5609] = swift_task_alloc();
  v3[5610] = swift_task_alloc();
  v12 = sub_100007224(&unk_100839980, &qword_1006C0A08);
  v3[5611] = v12;
  v3[5612] = *(v12 - 8);
  v3[5613] = swift_task_alloc();

  return _swift_task_switch(sub_1000C6624, 0, 0);
}

uint64_t sub_1000C6624()
{
  v79 = v0;
  v1 = (v0 + 44544);
  v2 = *(v0 + 44888);
  v3 = *(v0 + 44896);
  v4 = *(v0 + 44880);
  v5 = *(v0 + 44632);
  v6 = *(v0 + 44616);
  sub_1000F09E4((v0 + 16));
  memcpy((v5 + 32), (v0 + 16), 0x2181uLL);
  *(v5 + 8680) = 0u;
  *(v5 + 8696) = 0u;
  *(v5 + 8705) = 0u;
  *(v5 + 8728) = sub_10003E3EC(_swiftEmptyArrayStorage);
  *(v5 + 8736) = _swiftEmptyArrayStorage;
  *(v5 + 8744) = sub_10003E400(_swiftEmptyArrayStorage);
  *(v5 + 8752) = sub_10003E400(_swiftEmptyArrayStorage);
  v7 = OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow;
  sub_10000BBC4(v6 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow, v4, &qword_100835540, &qword_1006C19D0);
  v8 = *(v3 + 48);
  if (v8(v4, 1, v2) == 1)
  {
    v9 = *(v0 + 44880);
    v11 = *(v0 + 44856);
    v10 = *(v0 + 44864);
    v12 = *(v0 + 44848);

    sub_10000BE18(v9, &qword_100835540, &qword_1006C19D0);
    (*(v11 + 104))(v10, enum case for DIPError.Code.serverResponseInconsistent(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    memcpy((v0 + 8600), (v5 + 32), 0x2181uLL);
    sub_10000BE18(v0 + 8600, &qword_100839990, &unk_1006C19E0);

    swift_unknownObjectRelease();

    type metadata accessor for LegacySynthesizedWorkflows();
    swift_deallocPartialClassInstance();

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v74 = v8;
    v75 = v7;
    v76 = v6;
    v77 = v0;
    v16 = *(v0 + 44896);
    v15 = *(v0 + 44904);
    v17 = *(v0 + 44880);
    v18 = *(v0 + 44888);
    v19 = *(v0 + 44824);
    v20 = *(v0 + 44832);
    v21 = *(v0 + 44816);
    v22 = *(v0 + 44632);
    v23 = v1[9];
    (*(v1[44] + 32))(v1[45], v17, v1[43]);
    JWSSignedJSON.payload.getter();
    v73 = *(v16 + 8);
    v73(v15, v18);
    *(v22 + 16) = v1[4];
    sub_10000BBC4(v23 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_spWorkflow, v21, &qword_100835538, &qword_1006C19C8);
    if ((*(v20 + 48))(v21, 1, v19) == 1)
    {
      v24 = v1[11];
      sub_10000BE18(v1[34], &qword_100835538, &qword_1006C19C8);
      *(v24 + 24) = 0;
      defaultLogger()();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v1[33];
      v29 = v1[30];
      v30 = v1[31];
      if (v27)
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "missing SP Workflow in WorkflowRecommendationResponse", v31, 2u);
      }

      (*(v30 + 8))(v28, v29);
      v32 = v77;
    }

    else
    {
      v34 = v1[36];
      v33 = v1[37];
      v35 = v1[35];
      v36 = v1[11];
      (*(v34 + 32))(v33, v1[34], v35);
      v32 = v77;
      JWSSignedJSON.payload.getter();
      (*(v34 + 8))(v33, v35);
      *(v36 + 24) = v1[8];
    }

    v37 = v1[11];
    v38 = v1[9];
    v39 = OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_imageQualityCriteria;
    memcpy(v32 + 25768, (v38 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_imageQualityCriteria), 0x2181uLL);
    memcpy(v32 + 17184, (v5 + 32), 0x2181uLL);
    memmove((v5 + 32), (v38 + v39), 0x2181uLL);
    sub_10000BBC4((v32 + 25768), (v32 + 34352), &qword_100839990, &unk_1006C19E0);
    sub_10000BE18((v32 + 17184), &qword_100839990, &unk_1006C19E0);
    v40 = *(v38 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentProfile + 8);
    *(v37 + 8616) = *(v38 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentProfile);
    *(v37 + 8624) = v40;
    *(v37 + 8632) = *(v38 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentGUIDs);
    v41 = *(v38 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentBaseURL + 8);
    *(v37 + 8656) = *(v38 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentBaseURL);
    *(v37 + 8664) = v41;
    *(v37 + 8672) = 0;
    v42 = *(v38 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_nonces);
    v43 = _swiftEmptyArrayStorage;
    if (v42)
    {
      v43 = v42;
    }

    *(v37 + 8640) = v43;

    defaultLogger()();

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    v46 = os_log_type_enabled(v44, v45);
    v48 = v1[31];
    v47 = v1[32];
    v49 = v1[30];
    if (v46)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v78 = v51;
      *v50 = 136315138;

      v52 = Array.description.getter();
      v72 = v49;
      v54 = v53;

      v55 = v52;
      v32 = v77;
      v56 = sub_100141FE4(v55, v54, &v78);

      *(v50 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v44, v45, "received nonces: %s", v50, 0xCu);
      sub_10000BB78(v51);

      (*(v48 + 8))(v47, v72);
    }

    else
    {

      (*(v48 + 8))(v47, v49);
    }

    v57 = v1[43];
    v58 = v1[41];
    sub_10000BBC4(v76 + v75, v58, &qword_100835540, &qword_1006C19D0);
    if (v74(v58, 1, v57) == 1)
    {
      sub_10000BE18(v1[41], &qword_100835540, &qword_1006C19D0);
      v59 = 0;
    }

    else
    {
      v60 = v1[43];
      v61 = v1[41];
      JWSSignedJSON.payload.getter();
      v62 = v1[7];
      v73(v61, v60);
      v63 = *(v62 + 64);
      v64 = *(v62 + 72);

      *v1 = v63;
      v1[1] = v64;
      v1[2] = 0x61746E6567616DLL;
      v1[3] = 0xE700000000000000;
      sub_10001F298();
      v59 = StringProtocol.contains<A>(_:)();
    }

    v32[8593] = v59 & 1;
    v65 = v1[10];

    v67 = sub_1000C8244(v66, v65);
    v1[46] = v67;

    if (qword_100832CF8 != -1)
    {
      swift_once();
    }

    v68 = (v59 & 1) == 0;
    if (v59)
    {
      v69 = 0x80000001006FEDC0;
    }

    else
    {
      v69 = 0;
    }

    if (v68)
    {
      v70 = 0;
    }

    else
    {
      v70 = 0xD000000000000025;
    }

    v71 = swift_task_alloc();
    v1[47] = v71;
    *v71 = v32;
    v71[1] = sub_1000C703C;

    return sub_1005B0A4C((v32 + 43912), v70, v69, v67, 1, 0);
  }
}