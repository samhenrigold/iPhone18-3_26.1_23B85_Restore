void *sub_1C7C0D870(void *result, int a2)
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

uint64_t get_enum_tag_for_layout_string_9SEService17JPKIInternalTypesO13InternalErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 0xFu) <= 0xD)
  {
    return *(a1 + 40) & 0xF;
  }

  else
  {
    return (*a1 + 14);
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C7C0D910(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && *(a1 + 41))
  {
    return (*a1 + 242);
  }

  v3 = *(a1 + 40);
  if (v3 <= 0xE)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C7C0D958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C7C0D9A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xE)
  {
    *result = a2 - 14;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 14;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9SEService14JPKIXPCRequestV13JPKIOperationO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C7C0DA20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1C7C0DA68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C7C0DAC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C7C0DB10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C7C0DB60(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1C7C0DB94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C7C0DBDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SEService15JPKIXPCResponseO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1C7C0DC58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 41))
  {
    return (*a1 + 11);
  }

  v3 = ((*(a1 + 40) >> 1) & 8 | (*(a1 + 40) >> 5)) ^ 0xF;
  if (v3 >= 0xA)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C7C0DCAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 16 * (((-a2 & 8) != 0) - 2 * a2);
    }
  }

  return result;
}

uint64_t sub_1C7C0DD24(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 40) = *(result + 40) & 0xF | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = -96;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SEType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SEType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for JPKIInternalTypes.InternalError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JPKIInternalTypes.InternalError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C7C0E2C0()
{
  result = qword_1EC263AD8;
  if (!qword_1EC263AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263AD8);
  }

  return result;
}

unint64_t sub_1C7C0E318()
{
  result = qword_1EC263AE0;
  if (!qword_1EC263AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263AE0);
  }

  return result;
}

unint64_t sub_1C7C0E370()
{
  result = qword_1EC263AE8;
  if (!qword_1EC263AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263AE8);
  }

  return result;
}

unint64_t sub_1C7C0E3C8()
{
  result = qword_1EC263AF0;
  if (!qword_1EC263AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263AF0);
  }

  return result;
}

unint64_t sub_1C7C0E420()
{
  result = qword_1EC263AF8;
  if (!qword_1EC263AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263AF8);
  }

  return result;
}

unint64_t sub_1C7C0E478()
{
  result = qword_1EC263B00;
  if (!qword_1EC263B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B00);
  }

  return result;
}

unint64_t sub_1C7C0E4D0()
{
  result = qword_1EC263B08;
  if (!qword_1EC263B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B08);
  }

  return result;
}

unint64_t sub_1C7C0E528()
{
  result = qword_1EC263B10;
  if (!qword_1EC263B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B10);
  }

  return result;
}

unint64_t sub_1C7C0E580()
{
  result = qword_1EC263B18;
  if (!qword_1EC263B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B18);
  }

  return result;
}

unint64_t sub_1C7C0E5D8()
{
  result = qword_1EC263B20;
  if (!qword_1EC263B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B20);
  }

  return result;
}

unint64_t sub_1C7C0E630()
{
  result = qword_1EC263B28;
  if (!qword_1EC263B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B28);
  }

  return result;
}

unint64_t sub_1C7C0E688()
{
  result = qword_1EC263B30;
  if (!qword_1EC263B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B30);
  }

  return result;
}

unint64_t sub_1C7C0E6E0()
{
  result = qword_1EC263B38;
  if (!qword_1EC263B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B38);
  }

  return result;
}

unint64_t sub_1C7C0E738()
{
  result = qword_1EC263B40;
  if (!qword_1EC263B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B40);
  }

  return result;
}

unint64_t sub_1C7C0E790()
{
  result = qword_1EC263B48;
  if (!qword_1EC263B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B48);
  }

  return result;
}

unint64_t sub_1C7C0E7E8()
{
  result = qword_1EC263B50;
  if (!qword_1EC263B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B50);
  }

  return result;
}

unint64_t sub_1C7C0E840()
{
  result = qword_1EC263B58;
  if (!qword_1EC263B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B58);
  }

  return result;
}

unint64_t sub_1C7C0E898()
{
  result = qword_1EC263B60;
  if (!qword_1EC263B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B60);
  }

  return result;
}

unint64_t sub_1C7C0E8F0()
{
  result = qword_1EC263B68;
  if (!qword_1EC263B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B68);
  }

  return result;
}

unint64_t sub_1C7C0E948()
{
  result = qword_1EC263B70;
  if (!qword_1EC263B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B70);
  }

  return result;
}

unint64_t sub_1C7C0E9A0()
{
  result = qword_1EC263B78;
  if (!qword_1EC263B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B78);
  }

  return result;
}

unint64_t sub_1C7C0E9F8()
{
  result = qword_1EC263B80;
  if (!qword_1EC263B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B80);
  }

  return result;
}

unint64_t sub_1C7C0EA50()
{
  result = qword_1EC263B88;
  if (!qword_1EC263B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B88);
  }

  return result;
}

unint64_t sub_1C7C0EAA8()
{
  result = qword_1EC263B90;
  if (!qword_1EC263B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B90);
  }

  return result;
}

unint64_t sub_1C7C0EB00()
{
  result = qword_1EC263B98;
  if (!qword_1EC263B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263B98);
  }

  return result;
}

unint64_t sub_1C7C0EB58()
{
  result = qword_1EC263BA0;
  if (!qword_1EC263BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263BA0);
  }

  return result;
}

unint64_t sub_1C7C0EBB0()
{
  result = qword_1EC263BA8;
  if (!qword_1EC263BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263BA8);
  }

  return result;
}

unint64_t sub_1C7C0EC08()
{
  result = qword_1EC263BB0;
  if (!qword_1EC263BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263BB0);
  }

  return result;
}

unint64_t sub_1C7C0EC60()
{
  result = qword_1EC263BB8;
  if (!qword_1EC263BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263BB8);
  }

  return result;
}

unint64_t sub_1C7C0ECB8()
{
  result = qword_1EC263BC0;
  if (!qword_1EC263BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263BC0);
  }

  return result;
}

unint64_t sub_1C7C0ED10()
{
  result = qword_1EC263BC8;
  if (!qword_1EC263BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263BC8);
  }

  return result;
}

unint64_t sub_1C7C0ED68()
{
  result = qword_1EC263BD0;
  if (!qword_1EC263BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263BD0);
  }

  return result;
}

unint64_t sub_1C7C0EDC0()
{
  result = qword_1EC263BD8;
  if (!qword_1EC263BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263BD8);
  }

  return result;
}

unint64_t sub_1C7C0EE18()
{
  result = qword_1EC263BE0;
  if (!qword_1EC263BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263BE0);
  }

  return result;
}

unint64_t sub_1C7C0EE70()
{
  result = qword_1EC263BE8;
  if (!qword_1EC263BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263BE8);
  }

  return result;
}

unint64_t sub_1C7C0EEC8()
{
  result = qword_1EC263BF0;
  if (!qword_1EC263BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263BF0);
  }

  return result;
}

unint64_t sub_1C7C0EF20()
{
  result = qword_1EC263BF8;
  if (!qword_1EC263BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263BF8);
  }

  return result;
}

unint64_t sub_1C7C0EF78()
{
  result = qword_1EC263C00;
  if (!qword_1EC263C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C00);
  }

  return result;
}

unint64_t sub_1C7C0EFD0()
{
  result = qword_1EC263C08;
  if (!qword_1EC263C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C08);
  }

  return result;
}

unint64_t sub_1C7C0F028()
{
  result = qword_1EC263C10;
  if (!qword_1EC263C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C10);
  }

  return result;
}

unint64_t sub_1C7C0F080()
{
  result = qword_1EC263C18;
  if (!qword_1EC263C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C18);
  }

  return result;
}

unint64_t sub_1C7C0F0D8()
{
  result = qword_1EC263C20;
  if (!qword_1EC263C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C20);
  }

  return result;
}

unint64_t sub_1C7C0F130()
{
  result = qword_1EC263C28;
  if (!qword_1EC263C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C28);
  }

  return result;
}

unint64_t sub_1C7C0F188()
{
  result = qword_1EC263C30;
  if (!qword_1EC263C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C30);
  }

  return result;
}

unint64_t sub_1C7C0F1E0()
{
  result = qword_1EC263C38;
  if (!qword_1EC263C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C38);
  }

  return result;
}

unint64_t sub_1C7C0F238()
{
  result = qword_1EC263C40;
  if (!qword_1EC263C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C40);
  }

  return result;
}

unint64_t sub_1C7C0F290()
{
  result = qword_1EC263C48;
  if (!qword_1EC263C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C48);
  }

  return result;
}

unint64_t sub_1C7C0F2E8()
{
  result = qword_1EC263C50;
  if (!qword_1EC263C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C50);
  }

  return result;
}

unint64_t sub_1C7C0F340()
{
  result = qword_1EC263C58;
  if (!qword_1EC263C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C58);
  }

  return result;
}

unint64_t sub_1C7C0F398()
{
  result = qword_1EC263C60;
  if (!qword_1EC263C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C60);
  }

  return result;
}

unint64_t sub_1C7C0F3F0()
{
  result = qword_1EC263C68;
  if (!qword_1EC263C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C68);
  }

  return result;
}

unint64_t sub_1C7C0F448()
{
  result = qword_1EC263C70;
  if (!qword_1EC263C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C70);
  }

  return result;
}

unint64_t sub_1C7C0F4A0()
{
  result = qword_1EC263C78;
  if (!qword_1EC263C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C78);
  }

  return result;
}

unint64_t sub_1C7C0F4F8()
{
  result = qword_1EC263C80;
  if (!qword_1EC263C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C80);
  }

  return result;
}

unint64_t sub_1C7C0F550()
{
  result = qword_1EC263C88;
  if (!qword_1EC263C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C88);
  }

  return result;
}

unint64_t sub_1C7C0F5A8()
{
  result = qword_1EC263C90;
  if (!qword_1EC263C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C90);
  }

  return result;
}

unint64_t sub_1C7C0F600()
{
  result = qword_1EC263C98;
  if (!qword_1EC263C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263C98);
  }

  return result;
}

unint64_t sub_1C7C0F658()
{
  result = qword_1EC263CA0;
  if (!qword_1EC263CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263CA0);
  }

  return result;
}

unint64_t sub_1C7C0F6B0()
{
  result = qword_1EC263CA8;
  if (!qword_1EC263CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263CA8);
  }

  return result;
}

unint64_t sub_1C7C0F708()
{
  result = qword_1EC263CB0;
  if (!qword_1EC263CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263CB0);
  }

  return result;
}

unint64_t sub_1C7C0F760()
{
  result = qword_1EC263CB8;
  if (!qword_1EC263CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263CB8);
  }

  return result;
}

unint64_t sub_1C7C0F7B8()
{
  result = qword_1EC263CC0;
  if (!qword_1EC263CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263CC0);
  }

  return result;
}

unint64_t sub_1C7C0F810()
{
  result = qword_1EC263CC8;
  if (!qword_1EC263CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263CC8);
  }

  return result;
}

unint64_t sub_1C7C0F868()
{
  result = qword_1EC263CD0;
  if (!qword_1EC263CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263CD0);
  }

  return result;
}

unint64_t sub_1C7C0F8C0()
{
  result = qword_1EC263CD8;
  if (!qword_1EC263CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263CD8);
  }

  return result;
}

unint64_t sub_1C7C0F918()
{
  result = qword_1EC263CE0;
  if (!qword_1EC263CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263CE0);
  }

  return result;
}

unint64_t sub_1C7C0F970()
{
  result = qword_1EC263CE8;
  if (!qword_1EC263CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263CE8);
  }

  return result;
}

unint64_t sub_1C7C0F9C8()
{
  result = qword_1EC263CF0;
  if (!qword_1EC263CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263CF0);
  }

  return result;
}

unint64_t sub_1C7C0FA20()
{
  result = qword_1EC263CF8;
  if (!qword_1EC263CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263CF8);
  }

  return result;
}

unint64_t sub_1C7C0FA78()
{
  result = qword_1EC263D00;
  if (!qword_1EC263D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D00);
  }

  return result;
}

unint64_t sub_1C7C0FAD0()
{
  result = qword_1EC263D08;
  if (!qword_1EC263D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D08);
  }

  return result;
}

unint64_t sub_1C7C0FB28()
{
  result = qword_1EC263D10;
  if (!qword_1EC263D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D10);
  }

  return result;
}

unint64_t sub_1C7C0FB80()
{
  result = qword_1EC263D18;
  if (!qword_1EC263D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D18);
  }

  return result;
}

unint64_t sub_1C7C0FBD8()
{
  result = qword_1EC263D20;
  if (!qword_1EC263D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D20);
  }

  return result;
}

unint64_t sub_1C7C0FC30()
{
  result = qword_1EC263D28;
  if (!qword_1EC263D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D28);
  }

  return result;
}

unint64_t sub_1C7C0FC88()
{
  result = qword_1EC263D30;
  if (!qword_1EC263D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D30);
  }

  return result;
}

unint64_t sub_1C7C0FCE0()
{
  result = qword_1EC263D38;
  if (!qword_1EC263D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D38);
  }

  return result;
}

unint64_t sub_1C7C0FD38()
{
  result = qword_1EC263D40;
  if (!qword_1EC263D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D40);
  }

  return result;
}

unint64_t sub_1C7C0FD90()
{
  result = qword_1EC263D48;
  if (!qword_1EC263D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D48);
  }

  return result;
}

unint64_t sub_1C7C0FDE8()
{
  result = qword_1EC263D50;
  if (!qword_1EC263D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D50);
  }

  return result;
}

unint64_t sub_1C7C0FE40()
{
  result = qword_1EC263D58;
  if (!qword_1EC263D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D58);
  }

  return result;
}

unint64_t sub_1C7C0FE98()
{
  result = qword_1EC263D60;
  if (!qword_1EC263D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D60);
  }

  return result;
}

unint64_t sub_1C7C0FEF0()
{
  result = qword_1EC263D68;
  if (!qword_1EC263D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D68);
  }

  return result;
}

unint64_t sub_1C7C0FF48()
{
  result = qword_1EC263D70;
  if (!qword_1EC263D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D70);
  }

  return result;
}

unint64_t sub_1C7C0FFA0()
{
  result = qword_1EC263D78;
  if (!qword_1EC263D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D78);
  }

  return result;
}

unint64_t sub_1C7C0FFF8()
{
  result = qword_1EC263D80;
  if (!qword_1EC263D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D80);
  }

  return result;
}

unint64_t sub_1C7C10050()
{
  result = qword_1EC263D88;
  if (!qword_1EC263D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D88);
  }

  return result;
}

unint64_t sub_1C7C100A8()
{
  result = qword_1EC263D90;
  if (!qword_1EC263D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D90);
  }

  return result;
}

unint64_t sub_1C7C10100()
{
  result = qword_1EC263D98;
  if (!qword_1EC263D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263D98);
  }

  return result;
}

unint64_t sub_1C7C10158()
{
  result = qword_1EC263DA0;
  if (!qword_1EC263DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263DA0);
  }

  return result;
}

unint64_t sub_1C7C101B0()
{
  result = qword_1EC263DA8;
  if (!qword_1EC263DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263DA8);
  }

  return result;
}

unint64_t sub_1C7C10208()
{
  result = qword_1EC263DB0;
  if (!qword_1EC263DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263DB0);
  }

  return result;
}

unint64_t sub_1C7C10260()
{
  result = qword_1EC263DB8;
  if (!qword_1EC263DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263DB8);
  }

  return result;
}

unint64_t sub_1C7C102B8()
{
  result = qword_1EC263DC0;
  if (!qword_1EC263DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263DC0);
  }

  return result;
}

unint64_t sub_1C7C10310()
{
  result = qword_1EC263DC8;
  if (!qword_1EC263DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263DC8);
  }

  return result;
}

unint64_t sub_1C7C10368()
{
  result = qword_1EC263DD0;
  if (!qword_1EC263DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263DD0);
  }

  return result;
}

unint64_t sub_1C7C103C0()
{
  result = qword_1EC263DD8;
  if (!qword_1EC263DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263DD8);
  }

  return result;
}

unint64_t sub_1C7C10418()
{
  result = qword_1EC263DE0;
  if (!qword_1EC263DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263DE0);
  }

  return result;
}

unint64_t sub_1C7C10470()
{
  result = qword_1EC263DE8;
  if (!qword_1EC263DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263DE8);
  }

  return result;
}

unint64_t sub_1C7C104C8()
{
  result = qword_1EC263DF0;
  if (!qword_1EC263DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263DF0);
  }

  return result;
}

unint64_t sub_1C7C10520()
{
  result = qword_1EC263DF8;
  if (!qword_1EC263DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263DF8);
  }

  return result;
}

unint64_t sub_1C7C10578()
{
  result = qword_1EC263E00;
  if (!qword_1EC263E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E00);
  }

  return result;
}

unint64_t sub_1C7C105D0()
{
  result = qword_1EC263E08;
  if (!qword_1EC263E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E08);
  }

  return result;
}

unint64_t sub_1C7C10628()
{
  result = qword_1EC263E10;
  if (!qword_1EC263E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E10);
  }

  return result;
}

unint64_t sub_1C7C10680()
{
  result = qword_1EC263E18;
  if (!qword_1EC263E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E18);
  }

  return result;
}

unint64_t sub_1C7C106D8()
{
  result = qword_1EC263E20;
  if (!qword_1EC263E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E20);
  }

  return result;
}

unint64_t sub_1C7C10730()
{
  result = qword_1EC263E28;
  if (!qword_1EC263E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E28);
  }

  return result;
}

unint64_t sub_1C7C10788()
{
  result = qword_1EC263E30;
  if (!qword_1EC263E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E30);
  }

  return result;
}

unint64_t sub_1C7C107E0()
{
  result = qword_1EC263E38;
  if (!qword_1EC263E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E38);
  }

  return result;
}

unint64_t sub_1C7C10838()
{
  result = qword_1EC263E40;
  if (!qword_1EC263E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E40);
  }

  return result;
}

unint64_t sub_1C7C10890()
{
  result = qword_1EC263E48;
  if (!qword_1EC263E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E48);
  }

  return result;
}

unint64_t sub_1C7C108E8()
{
  result = qword_1EC263E50;
  if (!qword_1EC263E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E50);
  }

  return result;
}

unint64_t sub_1C7C10940()
{
  result = qword_1EC263E58;
  if (!qword_1EC263E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E58);
  }

  return result;
}

unint64_t sub_1C7C10998()
{
  result = qword_1EC263E60;
  if (!qword_1EC263E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E60);
  }

  return result;
}

unint64_t sub_1C7C109F0()
{
  result = qword_1EC263E68;
  if (!qword_1EC263E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E68);
  }

  return result;
}

unint64_t sub_1C7C10A48()
{
  result = qword_1EC263E70;
  if (!qword_1EC263E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E70);
  }

  return result;
}

unint64_t sub_1C7C10AA0()
{
  result = qword_1EC263E78;
  if (!qword_1EC263E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E78);
  }

  return result;
}

unint64_t sub_1C7C10AF8()
{
  result = qword_1EC263E80;
  if (!qword_1EC263E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E80);
  }

  return result;
}

unint64_t sub_1C7C10B50()
{
  result = qword_1EC263E88;
  if (!qword_1EC263E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E88);
  }

  return result;
}

unint64_t sub_1C7C10BA8()
{
  result = qword_1EC263E90;
  if (!qword_1EC263E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E90);
  }

  return result;
}

unint64_t sub_1C7C10C00()
{
  result = qword_1EC263E98;
  if (!qword_1EC263E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263E98);
  }

  return result;
}

unint64_t sub_1C7C10C58()
{
  result = qword_1EC263EA0;
  if (!qword_1EC263EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263EA0);
  }

  return result;
}

unint64_t sub_1C7C10CB0()
{
  result = qword_1EC263EA8;
  if (!qword_1EC263EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263EA8);
  }

  return result;
}

unint64_t sub_1C7C10D08()
{
  result = qword_1EC263EB0;
  if (!qword_1EC263EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263EB0);
  }

  return result;
}

unint64_t sub_1C7C10D60()
{
  result = qword_1EC263EB8;
  if (!qword_1EC263EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263EB8);
  }

  return result;
}

uint64_t sub_1C7C10DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D73694D65707974 && a2 == 0xEC00000068637461;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727245637078 && a2 == 0xE800000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C7C9DA20 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C7C9DA40 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x797274656D6F6962 && a2 == 0xEE0064656C696146 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C7C9DA60 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C7C9DA80 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x61766E4973736170 && a2 == 0xEB0000000064696CLL || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x61467463656C6573 && a2 == 0xEC00000064656C69 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C7C9DAA0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C7C9DAC0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001C7C9DAE0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001C7C9DB00 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x46676E696E676973 && a2 == 0xED000064656C6961 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C7C9DB20 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C7C9DB40 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x456E776F6E6B6E75 && a2 == 0xEC000000726F7272)
  {

    return 17;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1C7C11360(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001C7C9DB60 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444973736170 && a2 == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496465776F6C6C61 && a2 == 0xEA00000000007344)
  {

    return 2;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1C7C11488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x80000001C7C9D930 == a2;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472654364616572 && a2 == 0xEF65746163696669 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C7C9D910 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1852270963 && a2 == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C4341746567 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C11648(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C11748(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001C7C9D930 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7472654364616572 && a2 == 0xEF65746163696669 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C7C9D910 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1852270963 && a2 == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C4341746567 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t SECHardwareInfoInternal.hardwareReleaseVersionString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService23SECHardwareInfoInternal_hardwareReleaseVersionString);

  return v1;
}

uint64_t SECHardwareInfoInternal.casdCertificate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService23SECHardwareInfoInternal_casdCertificate);
  sub_1C7BED654(v1, *(v0 + OBJC_IVAR____TtC9SEService23SECHardwareInfoInternal_casdCertificate + 8));
  return v1;
}

id SECHardwareInfoInternal.__allocating_init(hardwareReleaseVersionString:casdCertificate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC9SEService23SECHardwareInfoInternal_hardwareReleaseVersionString];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC9SEService23SECHardwareInfoInternal_casdCertificate];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id SECHardwareInfoInternal.init(hardwareReleaseVersionString:casdCertificate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC9SEService23SECHardwareInfoInternal_hardwareReleaseVersionString];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR____TtC9SEService23SECHardwareInfoInternal_casdCertificate];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

Swift::Void __swiftcall SECHardwareInfoInternal.encode(with:)(NSCoder with)
{
  v2 = sub_1C7C7D2E4();
  v3 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_1C7C7D024();
  v5 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

id SECHardwareInfoInternal.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_1C7BED6A8(0, &qword_1EC263470, 0x1E696AEC0);
  v2 = sub_1C7C7D5E4();
  if (v2)
  {
    v3 = v2;
    sub_1C7C7D2F4();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id SECHardwareInfoInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SECHardwareInfoInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static DeviceCapability.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC263ED0 = a1;
  return result;
}

id DeviceCapability.__allocating_init(supportsUWB:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC9SEService16DeviceCapability_supportsUWB] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id DeviceCapability.init(supportsUWB:)(char a1)
{
  v1[OBJC_IVAR____TtC9SEService16DeviceCapability_supportsUWB] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeviceCapability();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1C7C122C8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SEService16DeviceCapability_supportsUWB);
  v4 = sub_1C7C7D2E4();
  [a1 encodeBool:v3 forKey:v4];
}

id DeviceCapability.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C7C7D2E4();
  v5 = [a1 decodeBoolForKey_];

  v3[OBJC_IVAR____TtC9SEService16DeviceCapability_supportsUWB] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id DeviceCapability.init(coder:)(void *a1)
{
  v3 = sub_1C7C7D2E4();
  v4 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC9SEService16DeviceCapability_supportsUWB] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DeviceCapability();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id DeviceCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C7C12688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7374726F70707573 && a2 == 0xEB00000000425755)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C12714(uint64_t a1)
{
  v2 = sub_1C7C128F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C12750(uint64_t a1)
{
  v2 = sub_1C7C128F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id DeviceCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C7C127C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263EE0, &qword_1C7C8E5C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C128F8();
  sub_1C7C7DBA4();
  sub_1C7C7DA24();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1C7C128F8()
{
  result = qword_1EC263EE8;
  if (!qword_1EC263EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263EE8);
  }

  return result;
}

void *DeviceCapability.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC263EF0, &qword_1C7C8E5C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C128F8();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for DeviceCapability();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC9SEService16DeviceCapability_supportsUWB) = sub_1C7C7D994() & 1;
    v10 = type metadata accessor for DeviceCapability();
    v11.receiver = v1;
    v11.super_class = v10;
    v3 = objc_msgSendSuper2(&v11, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void *sub_1C7C12B4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for DeviceCapability());
  result = DeviceCapability.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C7C12CBC()
{
  result = qword_1EC263F00;
  if (!qword_1EC263F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263F00);
  }

  return result;
}

unint64_t sub_1C7C12D14()
{
  result = qword_1EC263F08;
  if (!qword_1EC263F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263F08);
  }

  return result;
}

unint64_t sub_1C7C12D6C()
{
  result = qword_1EC263F10;
  if (!qword_1EC263F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263F10);
  }

  return result;
}

unint64_t sub_1C7C12DC0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a3;
  switch(a1)
  {
    case 63:
      v10 = 1376;
      if (v3 != 1)
      {
        v10 = 0;
      }

      v11 = 91856;
      goto LABEL_429;
    case 206:
      v4 = 720;
      if (v3 != 1)
      {
        v4 = 0;
      }

      v5 = v3 == 0;
      v6 = 10300;
      goto LABEL_5;
    case 208:
      v35 = 1280;
      if (v3 != 1)
      {
        v35 = 0;
      }

      goto LABEL_179;
    case 216:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 54732;
      }

    case 218:
      v75 = 720;
      if (v3 != 1)
      {
        v75 = 0;
      }

      if (!*a3)
      {
        v75 = 30972;
      }

      v76 = 272;
      if (v3 != 1)
      {
        v76 = 0;
      }

      v5 = v3 == 0;
      v77 = 30536;
      if (!v5)
      {
        v77 = v76;
      }

      if (a2 == 5)
      {
        return v77;
      }

      else
      {
        return v75;
      }

    case 219:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 41492;
      }

    case 220:
      v63 = 656;
      if (v3 != 1)
      {
        v63 = 0;
      }

      if (!*a3)
      {
        v63 = 45284;
      }

      v64 = 32 * (v3 == 1);
      v65 = v3 == 0;
      v66 = 27292;
      goto LABEL_455;
    case 222:
      if (a2 != 8)
      {
        v67 = 848;
        if (v3 != 1)
        {
          v67 = 0;
        }

        if (!*a3)
        {
          v67 = 76864;
        }

        v68 = 1216;
        if (v3 != 1)
        {
          v68 = 0;
        }

        if (!*a3)
        {
          v68 = 129580;
        }

        v69 = 32 * (v3 == 1);
        v5 = v3 == 0;
        v70 = 45448;
        if (!v5)
        {
          v70 = v69;
        }

        if (a2 != 88)
        {
          v70 = v68;
        }

        if (a2 == 50)
        {
          return v67;
        }

        else
        {
          return v70;
        }
      }

      v4 = 1440;
      if (v3 != 1)
      {
        v4 = 0;
      }

      v5 = v3 == 0;
      v6 = -25032;
      goto LABEL_5;
    case 228:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 29580;
      }

    case 230:
      v10 = 1216;
      if (v3 != 1)
      {
        v10 = 0;
      }

      v11 = 69332;
      goto LABEL_429;
    case 231:
      v10 = 1152;
      if (v3 != 1)
      {
        v10 = 0;
      }

      v11 = 68144;
      goto LABEL_429;
    case 232:
      if (a2 == 10)
      {
        v116 = 576;
        if (v3 != 1)
        {
          v116 = 0;
        }

        if (*a3)
        {
          return v116;
        }

        else
        {
          return 43432;
        }
      }

      else
      {
        v54 = 576;
        if (v3 != 1)
        {
          v54 = 0;
        }

        if (!*a3)
        {
          v54 = 57060;
        }

        v55 = 1280;
        if (v3 != 1)
        {
          v55 = 0;
        }

        if (!*a3)
        {
          v55 = 91224;
        }

        v56 = 32 * (v3 == 1);
        v5 = v3 == 0;
        v57 = 41196;
        if (!v5)
        {
          v57 = v56;
        }

        if (a2 != 1)
        {
          v57 = v55;
        }

        if (a2 == 5)
        {
          return v54;
        }

        else
        {
          return v57;
        }
      }

    case 234:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 37284;
      }

    case 238:
      v35 = 16 * (v3 == 1);
LABEL_179:
      if (*a3)
      {
        return v35;
      }

      else
      {
        return 42100;
      }

    case 240:
      v15 = 656;
      if (v3 != 1)
      {
        v15 = 0;
      }

      if (!*a3)
      {
        v15 = 60828;
      }

      v16 = 320;
      if (v3 != 1)
      {
        v16 = 0;
      }

      v17 = v3 == 0;
      v18 = 41292;
      goto LABEL_263;
    case 244:
      v71 = 592;
      if (v3 != 1)
      {
        v71 = 0;
      }

      if (!*a3)
      {
        v71 = 63720;
      }

      v72 = 32 * (v3 == 1);
      v5 = v3 == 0;
      v73 = 30060;
      if (!v5)
      {
        v73 = v72;
      }

      if (a2 == 12)
      {
        return v73;
      }

      else
      {
        return v71;
      }

    case 246:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 52384;
      }

    case 248:
      v10 = 592;
      if (v3 != 1)
      {
        v10 = 0;
      }

      v11 = 66252;
      goto LABEL_429;
    case 250:
      v4 = 5488;
      if (v3 != 1)
      {
        v4 = 0;
      }

      v5 = v3 == 0;
      v6 = 20900;
      goto LABEL_5;
    case 255:
      v48 = 16 * (v3 == 1);
      v5 = v3 == 0;
      v49 = 44032;
      if (v5)
      {
        v48 = 10920;
      }

      else
      {
        v49 = v48;
      }

      if (a2 == 3)
      {
        return v48;
      }

      else
      {
        return v49;
      }

    case 257:
      v59 = 16 * (v3 == 1);
      v60 = v3 == 0;
      v61 = 29896;
      if (!v60)
      {
        v61 = v59;
      }

      v62 = 17300;
      goto LABEL_344;
    case 260:
      v31 = 192;
      if (v3 != 1)
      {
        v31 = 0;
      }

      if (!*a3)
      {
        v31 = 18240;
      }

      v32 = 400;
      if (v3 != 1)
      {
        v32 = 0;
      }

      if (!*a3)
      {
        v32 = 29916;
      }

      v33 = 16 * (v3 == 1);
      v5 = v3 == 0;
      v34 = 8232;
      if (!v5)
      {
        v34 = v33;
      }

      if (a2 != 1)
      {
        v34 = v32;
      }

      if (a2 == 3)
      {
        return v31;
      }

      else
      {
        return v34;
      }

    case 268:
      v36 = 1632;
      if (v3 != 1)
      {
        v36 = 0;
      }

      if (!*a3)
      {
        v36 = 135428;
      }

      v37 = (v3 == 1) << 7;
      v38 = v3 == 0;
      v39 = 52996;
      goto LABEL_163;
    case 270:
      v40 = 16 * (v3 == 1);
      v5 = v3 == 0;
      v41 = 40076;
      if (v5)
      {
        v40 = 24012;
      }

      else
      {
        v41 = v40;
      }

      if (a2 == 2)
      {
        return v40;
      }

      else
      {
        return v41;
      }

    case 274:
      v59 = 16 * (v3 == 1);
      v60 = v3 == 0;
      v61 = 38324;
      if (!v60)
      {
        v61 = v59;
      }

      v62 = 32728;
LABEL_344:
      if (v60)
      {
        v59 = v62;
      }

      if (a2 == 1)
      {
        return v59;
      }

      else
      {
        return v61;
      }

    case 278:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 41404;
      }

    case 282:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 45528;
      }

    case 284:
      v92 = 16 * (v3 == 1);
      if (!*a3)
      {
        v92 = 43844;
      }

      v93 = 720;
      if (v3 != 1)
      {
        v93 = 0;
      }

      if (!*a3)
      {
        v93 = 56972;
      }

      v94 = 16 * (v3 == 1);
      v5 = v3 == 0;
      v95 = 17100;
      if (!v5)
      {
        v95 = v94;
      }

      if (a2 != 3)
      {
        v95 = v93;
      }

      if (a2 == 1)
      {
        return v92;
      }

      else
      {
        return v95;
      }

    case 293:
      v43 = 16 * (v3 == 1);
      if (!*a3)
      {
        v43 = 44088;
      }

      v44 = 656;
      if (v3 != 1)
      {
        v44 = 0;
      }

      if (!*a3)
      {
        v44 = 45272;
      }

      v45 = 16 * (v3 == 1);
      v5 = v3 == 0;
      v46 = 20164;
      if (!v5)
      {
        v46 = v45;
      }

      if (a2 != 70)
      {
        v46 = v44;
      }

      if (a2 == 41)
      {
        return v43;
      }

      else
      {
        return v46;
      }

    case 297:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 21792;
      }

    case 302:
      v10 = (v3 == 1) << 10;
      v11 = 69676;
      goto LABEL_429;
    case 310:
      if (a2 > 259)
      {
        if (a2 > 379)
        {
          if (a2 == 380 || a2 == 560 || a2 == 950)
          {
            goto LABEL_523;
          }

          goto LABEL_2;
        }

        if (a2 == 260)
        {
          goto LABEL_526;
        }

        if (a2 == 280)
        {
LABEL_523:
          v4 = 2688;
          if (v3 != 1)
          {
            v4 = 0;
          }

          v5 = v3 == 0;
          v6 = 8074;
LABEL_5:
          v7 = v6 | 0x10000u;
          if (v5)
          {
            return v7;
          }

          else
          {
            return v4;
          }
        }

        goto LABEL_2;
      }

      if (a2 <= 169)
      {
        if (a2 == 30)
        {
          goto LABEL_523;
        }

        if (a2 == 150)
        {
          v4 = 2368;
          if (v3 != 1)
          {
            v4 = 0;
          }

          v5 = v3 == 0;
          v6 = 15800;
          goto LABEL_5;
        }

LABEL_2:
        v4 = 2400;
        if (v3 != 1)
        {
          v4 = 0;
        }

        v5 = v3 == 0;
        v6 = -9096;
        goto LABEL_5;
      }

      if (a2 == 170)
      {
        goto LABEL_523;
      }

      if (a2 != 240)
      {
        goto LABEL_2;
      }

LABEL_526:
      v118 = 2688;
      if (v3 != 1)
      {
        v118 = 0;
      }

      if (*a3)
      {
        return v118;
      }

      else
      {
        return 46630;
      }

    case 311:
      if (a2 > 659)
      {
        if (a2 == 882 || a2 == 660)
        {
          goto LABEL_526;
        }
      }

      else
      {
        if (a2 == 180)
        {
          goto LABEL_523;
        }

        if (a2 == 580)
        {
          if (*a3)
          {
            return 0;
          }

          else
          {
            return 65716;
          }
        }
      }

      v10 = 2688;
      if (v3 != 1)
      {
        v10 = 0;
      }

      v11 = 136742;
LABEL_429:
      if (*a3)
      {
        return v10;
      }

      else
      {
        return v11;
      }

    case 312:
    case 313:
    case 314:
    case 315:
    case 316:
      goto LABEL_2;
    case 338:
      v10 = 336;
      if (v3 != 1)
      {
        v10 = 0;
      }

      v11 = 97616;
      goto LABEL_429;
    case 364:
      v27 = 896;
      if (v3 != 1)
      {
        v27 = 0;
      }

      if (*a3)
      {
        return v27;
      }

      else
      {
        return 53948;
      }

    case 372:
      v47 = 672;
      if (v3 != 1)
      {
        v47 = 0;
      }

      if (*a3)
      {
        return v47;
      }

      else
      {
        return 57284;
      }

    case 374:
      v58 = 160;
      if (v3 != 1)
      {
        v58 = 0;
      }

      if (*a3)
      {
        return v58;
      }

      else
      {
        return 54824;
      }

    case 400:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 21308;
      }

    case 401:
      v19 = 800;
      if (v3 != 1)
      {
        v19 = 0;
      }

      if (!*a3)
      {
        v19 = 29464;
      }

      v20 = 16 * (v3 == 1);
      v5 = v3 == 0;
      v21 = 18144;
      if (!v5)
      {
        v21 = v20;
      }

      if (a2 == 77)
      {
        return v21;
      }

      else
      {
        return v19;
      }

    case 402:
      v28 = 272;
      if (v3 != 1)
      {
        v28 = 0;
      }

      if (!*a3)
      {
        v28 = 44888;
      }

      v29 = 176;
      if (v3 != 1)
      {
        v29 = 0;
      }

      v5 = v3 == 0;
      v30 = 31864;
      if (!v5)
      {
        v30 = v29;
      }

      if (a2 == 11)
      {
        return v30;
      }

      else
      {
        return v28;
      }

    case 410:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 14128;
      }

    case 413:
      if (*a3)
      {
        return 32 * (v3 == 1);
      }

      else
      {
        return 22776;
      }

    case 415:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 21768;
      }

    case 419:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 20416;
      }

    case 420:
      v25 = 16 * (v3 == 1);
      v5 = v3 == 0;
      v26 = 20332;
      if (v5)
      {
        v25 = 14176;
      }

      else
      {
        v26 = v25;
      }

      if (a2 == 4)
      {
        return v25;
      }

      else
      {
        return v26;
      }

    case 422:
      v22 = 48;
      if (v3 != 1)
      {
        v22 = 0;
      }

      if (!*a3)
      {
        v22 = 34722;
      }

      v23 = 16 * (v3 == 1);
      v5 = v3 == 0;
      v24 = 25524;
      if (!v5)
      {
        v24 = v23;
      }

      if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        return v24;
      }

      else
      {
        return v22;
      }

    case 425:
      v105 = 448;
      if (v3 != 1)
      {
        v105 = 0;
      }

      if (*a3)
      {
        return v105;
      }

      else
      {
        return 54892;
      }

    case 426:
      v96 = 16 * (v3 == 1);
      if (!*a3)
      {
        v96 = 21596;
      }

      v97 = 496;
      if (v3 != 1)
      {
        v97 = 0;
      }

      if (!*a3)
      {
        v97 = 44708;
      }

      v98 = 16 * (v3 == 1);
      v5 = v3 == 0;
      v99 = 14180;
      if (!v5)
      {
        v99 = v98;
      }

      if (a2 != 1)
      {
        v99 = v97;
      }

      if (a2 == 2)
      {
        return v96;
      }

      else
      {
        return v99;
      }

    case 427:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 18172;
      }

    case 428:
      v74 = 1184;
      if (v3 != 1)
      {
        v74 = 0;
      }

      if (*a3)
      {
        return v74;
      }

      else
      {
        return 56892;
      }

    case 429:
      v63 = 32 * (v3 == 1);
      if (!*a3)
      {
        v63 = 45276;
      }

      v64 = 272;
      if (v3 != 1)
      {
        v64 = 0;
      }

      v65 = v3 == 0;
      v66 = 32816;
      goto LABEL_455;
    case 436:
      v4 = 800;
      if (v3 != 1)
      {
        v4 = 0;
      }

      v5 = v3 == 0;
      v6 = 24;
      goto LABEL_5;
    case 440:
      if (a2 == 10)
      {
        v117 = 1648;
        if (v3 != 1)
        {
          v117 = 0;
        }

        if (*a3)
        {
          return v117;
        }

        else
        {
          return 34560;
        }
      }

      else
      {
        v88 = 16 * (v3 == 1);
        if (!*a3)
        {
          v88 = 27240;
        }

        v89 = 528;
        if (v3 != 1)
        {
          v89 = 0;
        }

        if (!*a3)
        {
          v89 = 52116;
        }

        v90 = 16 * (v3 == 1);
        v5 = v3 == 0;
        v91 = 18348;
        if (!v5)
        {
          v91 = v90;
        }

        if (a2 != 54)
        {
          v91 = v89;
        }

        if (a2 == 20)
        {
          return v88;
        }

        else
        {
          return v91;
        }
      }

    case 450:
      if (*a3)
      {
        return (v3 == 1) << 8;
      }

      else
      {
        return 49676;
      }

    case 454:
      v108 = 528;
      if (v3 != 1)
      {
        v108 = 0;
      }

      if (!*a3)
      {
        v108 = 42104;
      }

      v109 = 16 * (v3 == 1);
      if (!*a3)
      {
        v109 = 50820;
      }

      v110 = 16 * (v3 == 1);
      v5 = v3 == 0;
      v111 = 17244;
      if (!v5)
      {
        v111 = v110;
      }

      if (a2 != 3)
      {
        v111 = v109;
      }

      if (a2 == 12)
      {
        return v108;
      }

      else
      {
        return v111;
      }

    case 455:
      v10 = 16 * (v3 == 1);
      v11 = 68184;
      goto LABEL_429;
    case 456:
      v63 = 688;
      if (v3 != 1)
      {
        v63 = 0;
      }

      if (!*a3)
      {
        v63 = 65496;
      }

      v64 = 16 * (v3 == 1);
      v65 = v3 == 0;
      v66 = 38496;
      goto LABEL_455;
    case 457:
      v63 = 384;
      if (v3 != 1)
      {
        v63 = 0;
      }

      if (!*a3)
      {
        v63 = 68304;
      }

      v64 = 16 * (v3 == 1);
      v65 = v3 == 0;
      v66 = 31508;
      goto LABEL_455;
    case 466:
      v84 = 608;
      if (v3 != 1)
      {
        v84 = 0;
      }

      if (!*a3)
      {
        v84 = 27832;
      }

      v85 = 288;
      if (v3 != 1)
      {
        v85 = 0;
      }

      if (!*a3)
      {
        v85 = 36736;
      }

      v86 = 32 * (v3 == 1);
      v5 = v3 == 0;
      v87 = 20444;
      if (!v5)
      {
        v87 = v86;
      }

      if (a2 != 1)
      {
        v87 = v85;
      }

      if (a2 == 92)
      {
        return v84;
      }

      else
      {
        return v87;
      }

    case 470:
      v36 = 32 * (v3 == 1);
      if (!*a3)
      {
        v36 = 46532;
      }

      v37 = 16 * (v3 == 1);
      v38 = v3 == 0;
      v39 = 39256;
LABEL_163:
      if (!v38)
      {
        v39 = v37;
      }

      if (a2 == 3)
      {
        return v39;
      }

      else
      {
        return v36;
      }

    case 472:
      v63 = 272;
      if (v3 != 1)
      {
        v63 = 0;
      }

      if (!*a3)
      {
        v63 = 30456;
      }

      v64 = 32 * (v3 == 1);
      v65 = v3 == 0;
      v66 = 19464;
LABEL_455:
      if (!v65)
      {
        v66 = v64;
      }

      if (a2 == 1)
      {
        return v66;
      }

      else
      {
        return v63;
      }

    case 502:
      v12 = 16 * (v3 == 1);
      v5 = v3 == 0;
      v13 = 25644;
      if (v5)
      {
        v12 = 25076;
      }

      else
      {
        v13 = v12;
      }

      if (a2 == 12)
      {
        return v12;
      }

      else
      {
        return v13;
      }

    case 505:
      v100 = 544;
      if (v3 != 1)
      {
        v100 = 0;
      }

      if (*a3)
      {
        return v100;
      }

      else
      {
        return 35624;
      }

    case 510:
      v101 = 272;
      if (v3 != 1)
      {
        v101 = 0;
      }

      if (!*a3)
      {
        v101 = 27220;
      }

      v102 = 16 * (v3 == 1);
      if (!*a3)
      {
        v102 = 51806;
      }

      v103 = 32 * (v3 == 1);
      v5 = v3 == 0;
      v104 = 21900;
      if (!v5)
      {
        v104 = v103;
      }

      if (a2 != 1)
      {
        v104 = v102;
      }

      if (a2 == 10)
      {
        return v101;
      }

      else
      {
        return v104;
      }

    case 520:
      v50 = 16 * (v3 == 1);
      v51 = 32324;
      if (*a3)
      {
        v51 = 16 * (v3 == 1);
      }

      v52 = 60384;
      if (*a3)
      {
        v52 = 16 * (v3 == 1);
      }

      v5 = v3 == 0;
      v53 = 23032;
      if (!v5)
      {
        v53 = v50;
      }

      if (a2 != 4)
      {
        v53 = v52;
      }

      if (a2 == 3)
      {
        return v51;
      }

      else
      {
        return v53;
      }

    case 525:
      v106 = (v3 == 1) << 9;
      v5 = v3 == 0;
      v107 = 61672;
      if (v5)
      {
        v106 = 39664;
      }

      else
      {
        v107 = v106;
      }

      if (a2 == 10)
      {
        return v106;
      }

      else
      {
        return v107;
      }

    case 530:
      if (*a3)
      {
        return 32 * (v3 == 1);
      }

      else
      {
        return 33584;
      }

    case 604:
      v15 = 688;
      if (v3 != 1)
      {
        v15 = 0;
      }

      if (!*a3)
      {
        v15 = 167244;
      }

      v16 = 224;
      if (v3 != 1)
      {
        v16 = 0;
      }

      v17 = v3 == 0;
      v18 = 25208;
LABEL_263:
      if (!v17)
      {
        v18 = v16;
      }

      if (a2 == 2)
      {
        return v18;
      }

      else
      {
        return v15;
      }

    case 605:
      if (*a3)
      {
        return 16 * (v3 == 1);
      }

      else
      {
        return 25788;
      }

    case 621:
      v78 = 880;
      if (v3 != 1)
      {
        v78 = 0;
      }

      if (!*a3)
      {
        v78 = 128960;
      }

      v79 = 16 * (v3 == 1);
      v5 = v3 == 0;
      v80 = 33800;
      if (!v5)
      {
        v80 = v79;
      }

      if (a2 == 30)
      {
        return v80;
      }

      else
      {
        return v78;
      }

    case 650:
      if (*a3)
      {
        return 32 * (v3 == 1);
      }

      else
      {
        return 10996;
      }

    case 655:
      v112 = 560;
      if (v3 != 1)
      {
        v112 = 0;
      }

      if (!*a3)
      {
        v112 = 95908;
      }

      v113 = 16 * (v3 == 1);
      v5 = v3 == 0;
      v114 = 14672;
      if (!v5)
      {
        v114 = v113;
      }

      if (a2 == 7)
      {
        return v114;
      }

      else
      {
        return v112;
      }

    case 702:
      v10 = 2384;
      if (v3 != 1)
      {
        v10 = 0;
      }

      v11 = 88412;
      goto LABEL_429;
    case 722:
      v42 = 720;
      if (v3 != 1)
      {
        v42 = 0;
      }

      if (*a3)
      {
        return v42;
      }

      else
      {
        return 49512;
      }

    case 730:
      v9 = 720;
      if (v3 != 1)
      {
        v9 = 0;
      }

      if (*a3)
      {
        return v9;
      }

      else
      {
        return 56836;
      }

    case 732:
      v10 = 736;
      if (v3 != 1)
      {
        v10 = 0;
      }

      v11 = 129196;
      goto LABEL_429;
    case 744:
      if (*a3)
      {
        return 32 * (v3 == 1);
      }

      else
      {
        return 65184;
      }

    case 748:
      v81 = 1696;
      if (v3 != 1)
      {
        v81 = 0;
      }

      v82 = v3 == 0;
      v83 = 12760;
      goto LABEL_491;
    case 901:
      v14 = 368;
      if (v3 != 1)
      {
        v14 = 0;
      }

      if (*a3)
      {
        return v14;
      }

      else
      {
        return 21336;
      }

    default:
      v81 = 5488;
      if (v3 != 1)
      {
        v81 = 0;
      }

      v82 = v3 == 0;
      v83 = -29364;
LABEL_491:
      v115 = v83 | 0x20000u;
      if (v82)
      {
        return v115;
      }

      else
      {
        return v81;
      }
  }
}

uint64_t ApplicationInfoInternal.applicationId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService23ApplicationInfoInternal_applicationId);

  return v1;
}

id sub_1C7C13D48(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1C7C7D2E4();

  return v3;
}

uint64_t ApplicationInfoInternal.bundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService23ApplicationInfoInternal_bundleId);

  return v1;
}

id ApplicationInfoInternal.__allocating_init(applicationId:bundleId:gdprShownVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC9SEService23ApplicationInfoInternal_applicationId];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v11[OBJC_IVAR____TtC9SEService23ApplicationInfoInternal_bundleId];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v11[OBJC_IVAR____TtC9SEService23ApplicationInfoInternal_gdprShownVersion] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id ApplicationInfoInternal.init(applicationId:bundleId:gdprShownVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC9SEService23ApplicationInfoInternal_applicationId];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v5[OBJC_IVAR____TtC9SEService23ApplicationInfoInternal_bundleId];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v5[OBJC_IVAR____TtC9SEService23ApplicationInfoInternal_gdprShownVersion] = a5;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

Swift::Void __swiftcall ApplicationInfoInternal.encode(with:)(NSCoder with)
{
  v3 = sub_1C7C7D2E4();
  v4 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = sub_1C7C7D2E4();
  v6 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9SEService23ApplicationInfoInternal_gdprShownVersion);
  v8 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
}

id ApplicationInfoInternal.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_1C7C142A8();
  v2 = sub_1C7C7D5E4();
  if (v2)
  {
    v5 = 0;
    v3 = v2;
    sub_1C7C7D2F4();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_1C7C142A8()
{
  result = qword_1EC263470;
  if (!qword_1EC263470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC263470);
  }

  return result;
}

id ApplicationInfoInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C7C143B0()
{
  v1 = 0x6449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746163696C707061;
  }
}

uint64_t sub_1C7C1441C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C14C48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C14444(uint64_t a1)
{
  v2 = sub_1C7C14708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C14480(uint64_t a1)
{
  v2 = sub_1C7C14708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ApplicationInfoInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ApplicationInfoInternal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263F40, &qword_1C7C8E760);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C14708();
  sub_1C7C7DBA4();
  v8[15] = 0;
  sub_1C7C7DA14();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1C7C7DA14();
  v8[13] = 2;
  sub_1C7C7DA34();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C7C14708()
{
  result = qword_1EC263F48;
  if (!qword_1EC263F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263F48);
  }

  return result;
}

void *ApplicationInfoInternal.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC263F50, &qword_1C7C8E768);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C14708();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    v9 = sub_1C7C7D984();
    v11 = (v1 + OBJC_IVAR____TtC9SEService23ApplicationInfoInternal_applicationId);
    *v11 = v9;
    v11[1] = v12;
    v19 = 1;
    v13 = sub_1C7C7D984();
    v14 = (v1 + OBJC_IVAR____TtC9SEService23ApplicationInfoInternal_bundleId);
    *v14 = v13;
    v14[1] = v15;
    v19 = 2;
    *(v1 + OBJC_IVAR____TtC9SEService23ApplicationInfoInternal_gdprShownVersion) = sub_1C7C7D9A4();
    v18.receiver = v1;
    v18.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v18, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void *sub_1C7C14A30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ApplicationInfoInternal.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C7C14B44()
{
  result = qword_1EC263F60;
  if (!qword_1EC263F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263F60);
  }

  return result;
}

unint64_t sub_1C7C14B9C()
{
  result = qword_1EC263F68;
  if (!qword_1EC263F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263F68);
  }

  return result;
}

unint64_t sub_1C7C14BF4()
{
  result = qword_1EC263F70;
  if (!qword_1EC263F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263F70);
  }

  return result;
}

uint64_t sub_1C7C14C48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746163696C707061 && a2 == 0xED000064496E6F69;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C7C9DCA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

uint64_t SESnapshot.TargetDevice.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1C7C7D934();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t SESnapshot.TargetDevice.rawValue.getter()
{
  if (*v0)
  {
    return 0x6157646572696170;
  }

  else
  {
    return 0x44746E6572727563;
  }
}

uint64_t sub_1C7C14E24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6157646572696170;
  }

  else
  {
    v3 = 0x44746E6572727563;
  }

  if (v2)
  {
    v4 = 0xED00006563697665;
  }

  else
  {
    v4 = 0xEB00000000686374;
  }

  if (*a2)
  {
    v5 = 0x6157646572696170;
  }

  else
  {
    v5 = 0x44746E6572727563;
  }

  if (*a2)
  {
    v6 = 0xEB00000000686374;
  }

  else
  {
    v6 = 0xED00006563697665;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C7C7DAA4();
  }

  return v8 & 1;
}

uint64_t sub_1C7C14EE0()
{
  sub_1C7C7DB64();
  sub_1C7C7D364();

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C14F78(uint64_t a1)
{
  sub_1C7C7D364();
}

uint64_t sub_1C7C14FFC(uint64_t a1)
{
  sub_1C7C7DB64();
  sub_1C7C7D364();

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C15090@<X0>(char *a2@<X8>)
{
  v3 = sub_1C7C7D934();

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

void sub_1C7C150F0(uint64_t *a1@<X8>)
{
  v2 = 0x44746E6572727563;
  if (*v1)
  {
    v2 = 0x6157646572696170;
  }

  v3 = 0xED00006563697665;
  if (*v1)
  {
    v3 = 0xEB00000000686374;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static SESnapshot.getCurrentSnapshot(with:seid:targetDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v4 + 40) = a1;
  *(v4 + 34) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1C7C1521C, 0, 0);
}

uint64_t sub_1C7C1521C()
{
  v1 = sub_1C7C54984(v0 + 16);
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 33) = *(v0 + 34);
  v3 = v1;
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1C7C15364;

  return sub_1C7C15A44(v3, v4, (v0 + 33));
}

uint64_t sub_1C7C15364(uint64_t a1)
{
  v4 = *v2;
  v4[9] = v1;

  if (v1)
  {
    sub_1C7BDF778(v4[6], v4[7]);

    return MEMORY[0x1EEE6DFA0](sub_1C7C154BC, 0, 0);
  }

  else
  {
    sub_1C7BDF778(v4[6], v4[7]);
    v5 = v4[1];

    return v5(a1);
  }
}

uint64_t sub_1C7C154F8()
{
  if (qword_1EC2621D8 != -1)
  {
    swift_once();
  }

  *(v0 + 34) = *(v0 + 35);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1C7C155D8;

  return SERInternalClient.reclaimUnusedSEMemory(targetDevice:)(v0 + 16, (v0 + 34));
}

uint64_t sub_1C7C155D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1C7C156D4, 0, 0);
}

uint64_t sub_1C7C156D4()
{
  if (*(v0 + 33))
  {
    v1 = *(v0 + 32);
    *(v0 + 40) = *(v0 + 16);
    *(v0 + 56) = v1;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    swift_allocError();
    *v5 = v2;
    *(v5 + 8) = v3;
    *(v5 + 16) = v4;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t static SESnapshot.reclaimUnusedSpace(with:seid:targetDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v4 + 64) = a1;
  *(v4 + 35) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1C7C157DC, 0, 0);
}

uint64_t sub_1C7C157DC()
{
  if (*(v0 + 64))
  {
    sub_1C7BEADA0();
    swift_allocError();
    *v1 = 0xD0000000000000A0;
    *(v1 + 8) = 0x80000001C7C9DD80;
    *(v1 + 16) = 0;
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_1EC2621D8 != -1)
    {
      swift_once();
    }

    *(v0 + 34) = *(v0 + 35);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_1C7C15948;

    return SERInternalClient.reclaimUnusedSEMemory(targetDevice:)(v0 + 16, (v0 + 34));
  }
}

uint64_t sub_1C7C15948()
{

  return MEMORY[0x1EEE6DFA0](sub_1C7C15F90, 0, 0);
}

uint64_t sub_1C7C15A44(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  *(v3 + 35) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1C7C15A6C, 0, 0);
}

uint64_t sub_1C7C15A6C()
{
  if (qword_1EC2621D8 != -1)
  {
    swift_once();
  }

  *(v0 + 34) = *(v0 + 35);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1C7C15B50;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  return SERInternalClient.getSESnapshot(token:targetDevice:)(v0 + 16, v2, v3, (v0 + 34));
}

uint64_t sub_1C7C15B50()
{

  return MEMORY[0x1EEE6DFA0](sub_1C7C15C4C, 0, 0);
}

uint64_t sub_1C7C15C4C()
{
  v20 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (*(v0 + 33))
  {
    *(v0 + 40) = v2;
    *(v0 + 48) = v1;
    *(v0 + 56) = v3;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;
    v8 = *(v0 + 8);
  }

  else
  {
    if (qword_1EC2621E8 != -1)
    {
      swift_once();
    }

    v9 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v9, qword_1EC288338);
    v2;
    v10 = sub_1C7C7D194();
    v11 = sub_1C7C7D5A4();
    sub_1C7C15F6C(v2, v1, v3, 0);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v15 = SESnapshot.debugDescription.getter(v13, v14);
      v17 = sub_1C7BE42F8(v15, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1C7B9A000, v10, v11, "Get Snapshot %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x1CCA6C990](v13, -1, -1);
      MEMORY[0x1CCA6C990](v12, -1, -1);
    }

    v8 = *(v0 + 8);
  }

  return v8();
}

unint64_t sub_1C7C15E5C()
{
  result = qword_1EC264F60;
  if (!qword_1EC264F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264F60);
  }

  return result;
}

unint64_t sub_1C7C15EB4()
{
  result = qword_1EC263F80;
  if (!qword_1EC263F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263F80);
  }

  return result;
}

unint64_t sub_1C7C15F18()
{
  result = qword_1EC263F88;
  if (!qword_1EC263F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263F88);
  }

  return result;
}

void sub_1C7C15F6C(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    sub_1C7C15F78(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_1C7C15F78(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

id SEPackageDetails.__allocating_init(type:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = objc_allocWithZone(v1);
  v5[OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded] = 0;
  *&v5[OBJC_IVAR____TtC9SEService16SEPackageDetails_containers] = 0;
  *&v5[OBJC_IVAR____TtC9SEService16SEPackageDetails_instances] = MEMORY[0x1E69E7CC0];
  v6 = &v5[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
  *v6 = v2;
  *(v6 + 1) = v3;
  v6[16] = v4;
  v8.receiver = v5;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SEPackageDetails.__allocating_init(packageLoaded:containers:instances:moduleAID:type:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v11 = objc_allocWithZone(v6);
  v12 = *(a6 + 16);
  v11[OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded] = a1;
  *&v11[OBJC_IVAR____TtC9SEService16SEPackageDetails_containers] = a2;
  *&v11[OBJC_IVAR____TtC9SEService16SEPackageDetails_instances] = a3;
  v13 = &v11[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
  *v13 = *a6;
  v13[16] = v12;
  v15.receiver = v11;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, sel_init);
}

id SEPackageDetails.init(packageLoaded:containers:instances:moduleAID:type:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  v12 = *(a6 + 16);
  v6[OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded] = a1;
  *&v6[OBJC_IVAR____TtC9SEService16SEPackageDetails_containers] = a2;
  *&v6[OBJC_IVAR____TtC9SEService16SEPackageDetails_instances] = a3;
  v13 = &v6[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
  *v13 = *a6;
  v13[16] = v12;
  v15.receiver = v6;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t SEPackageDetails.packageLoaded.getter()
{
  v1 = OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SEPackageDetails.packageLoaded.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SEPackageDetails.containers.getter()
{
  v1 = OBJC_IVAR____TtC9SEService16SEPackageDetails_containers;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SEPackageDetails.containers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SEService16SEPackageDetails_containers;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SEPackageDetails.instances.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SEPackageDetails.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;
  return sub_1C7BDF708(v4, v5, v6);
}

uint64_t SEPackageDetails.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = v2;
  *(v5 + 8) = v3;
  v8 = *(v5 + 16);
  *(v5 + 16) = v4;
  return sub_1C7BEA9D8(v6, v7, v8);
}

uint64_t static SEPackageDetails.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC263F90 = a1;
  return result;
}

Swift::Void __swiftcall SEPackageDetails.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeBool:v4 forKey:v5];

  v6 = OBJC_IVAR____TtC9SEService16SEPackageDetails_containers;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  swift_beginAccess();
  type metadata accessor for SEApplet();

  v9 = sub_1C7C7D414();

  v10 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = v1 + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  sub_1C7C7CFB4();
  swift_allocObject();
  sub_1C7BDF708(v12, v13, v14);
  sub_1C7C7CFA4();
  sub_1C7BDF724();
  v15 = sub_1C7C7CF94();
  v17 = v16;

  sub_1C7BEA9D8(v12, v13, v14);
  v18 = sub_1C7C7D024();
  sub_1C7BDF778(v15, v17);
  v19 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];
}

id SEPackageDetails.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C7C17684(a1);

  return v4;
}

id SEPackageDetails.init(coder:)(void *a1)
{
  v2 = sub_1C7C17684(a1);

  return v2;
}

uint64_t SEPackageDetails.description.getter()
{
  v1 = v0;
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD000000000000011, 0x80000001C7C9DE30);
  v2 = OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v1 + v2))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1CCA6B380](v3, v4);

  MEMORY[0x1CCA6B380](0x6961746E6F63090ALL, 0xED00003A7372656ELL);
  swift_beginAccess();
  v5 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v5);

  MEMORY[0x1CCA6B380](0x6E6174736E69090ALL, 0xEC0000003A736563);
  swift_beginAccess();
  v6 = type metadata accessor for SEApplet();

  v8 = MEMORY[0x1CCA6B440](v7, v6);
  v10 = v9;

  MEMORY[0x1CCA6B380](v8, v10);

  MEMORY[0x1CCA6B380](0x3A65707974090ALL, 0xE700000000000000);
  v11 = v1 + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
  swift_beginAccess();
  v16 = *v11;
  v17 = *(v11 + 8);
  v18 = *(v11 + 16);
  sub_1C7BDF708(*v11, v17, v18);
  sub_1C7BDF708(v16, v17, v18);
  sub_1C7C7D324();
  v12 = sub_1C7C7D334();
  v14 = v13;

  sub_1C7BEA9D8(v16, v17, v18);
  MEMORY[0x1CCA6B380](v12, v14);

  MEMORY[0x1CCA6B380](8224010, 0xE300000000000000);
  return 0;
}

id SEPackageDetails.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C7C16E44()
{
  v1 = 0x4C6567616B636170;
  v2 = 0x65636E6174736E69;
  if (*v0 != 2)
  {
    v2 = 1701869940;
  }

  if (*v0)
  {
    v1 = 0x656E6961746E6F63;
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

uint64_t sub_1C7C16ECC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C17C00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C16EF4(uint64_t a1)
{
  v2 = sub_1C7C1793C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C16F30(uint64_t a1)
{
  v2 = sub_1C7C1793C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SEPackageDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SEPackageDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263FC0, &qword_1C7C8EA40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C1793C();
  sub_1C7C7DBA4();
  swift_beginAccess();
  v20[0] = 0;
  sub_1C7C7DA24();
  if (!v2)
  {
    swift_beginAccess();
    v19[0] = 1;
    sub_1C7C7DA34();
    v9 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
    swift_beginAccess();
    v18 = *(v3 + v9);
    LOBYTE(v15) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263FD0, &qword_1C7C8EA48);
    sub_1C7C17990(&qword_1EC263FD8, &qword_1EC263FE0, &protocol conformance descriptor for SEApplet, MEMORY[0x1E69E6300]);
    sub_1C7C7DA44();
    v10 = v3 + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
    swift_beginAccess();
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v15 = *v10;
    v16 = v11;
    v17 = v12;
    v14[7] = 3;
    sub_1C7BDF708(v15, v11, v12);
    sub_1C7BDF724();
    sub_1C7C7DA44();
    sub_1C7BEA9D8(v15, v16, v17);
  }

  return (*(v6 + 8))(v8, v5);
}

void *SEPackageDetails.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263FE8, &qword_1C7C8EA50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C1793C();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15) = 0;
    *(v1 + OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded) = sub_1C7C7D994() & 1;
    LOBYTE(v15) = 1;
    *(v1 + OBJC_IVAR____TtC9SEService16SEPackageDetails_containers) = sub_1C7C7D9A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263FD0, &qword_1C7C8EA48);
    v17 = 2;
    sub_1C7C17990(&qword_1EC263FF0, &qword_1EC263FF8, &protocol conformance descriptor for SEApplet, MEMORY[0x1E69E6330]);
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService16SEPackageDetails_instances) = v15;
    v17 = 3;
    sub_1C7BE4974();
    sub_1C7C7D9B4();
    v10 = v16;
    v11 = v1 + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
    *v11 = v15;
    v11[16] = v10;
    v14.receiver = v1;
    v14.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void *sub_1C7C17610@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SEPackageDetails.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_1C7C17684(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1C7C7D2E4();
  v6 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded] = v6;
  v7 = sub_1C7C7D2E4();
  v8 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC9SEService16SEPackageDetails_containers] = v8;
  type metadata accessor for SEApplet();
  v9 = sub_1C7C7D604();
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v10 = v9;
  }

  *&v2[OBJC_IVAR____TtC9SEService16SEPackageDetails_instances] = v10;
  sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
  v11 = sub_1C7C7D5E4();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C7C7D054();
    v15 = v14;
    sub_1C7C7CF84();
    swift_allocObject();
    sub_1C7C7CF74();
    sub_1C7BE4974();
    sub_1C7C7CF64();

    sub_1C7BDF778(v13, v15);
  }

  else
  {
    sub_1C7BED6A8(0, &qword_1EC263470, 0x1E696AEC0);
    v16 = sub_1C7C7D5E4();
    v17 = xmmword_1C7C84BB0;
    if (!v16)
    {
      v21 = 0;
      goto LABEL_11;
    }

    v18 = v16;
    v24 = xmmword_1C7C84BB0;
    v19 = sub_1C7C7D304();
    CredentialType.init(rawValue:)(v19, v20, &v27);
    if (v28 == 255)
    {

      v21 = 0;
      v17 = xmmword_1C7C84BB0;
      goto LABEL_11;
    }

    v25 = v27;
    v26 = v28;
    CredentialType.init(fromLegacy:)(&v25, &v27);
  }

  v17 = v27;
  v21 = v28;
LABEL_11:
  v22 = &v2[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
  *v22 = v17;
  v22[16] = v21;
  v29.receiver = v2;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, sel_init, v24);
}

unint64_t sub_1C7C1793C()
{
  result = qword_1EC263FC8;
  if (!qword_1EC263FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263FC8);
  }

  return result;
}

uint64_t sub_1C7C17990(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC263FD0, &qword_1C7C8EA48);
    sub_1C7C17A18(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7C17A18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SEApplet();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C17AFC()
{
  result = qword_1EC264010;
  if (!qword_1EC264010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264010);
  }

  return result;
}

unint64_t sub_1C7C17B54()
{
  result = qword_1EC264018;
  if (!qword_1EC264018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264018);
  }

  return result;
}

unint64_t sub_1C7C17BAC()
{
  result = qword_1EC264020;
  if (!qword_1EC264020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264020);
  }

  return result;
}

uint64_t sub_1C7C17C00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C6567616B636170 && a2 == 0xED0000646564616FLL;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xEA00000000007372 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6174736E69 && a2 == 0xE900000000000073 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1C7C17D7C@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v4 = sub_1C7C7D1E4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = a1[1];
  v45 = *a1;
  v46 = v5;
  *v47 = a1[2];
  *&v47[9] = *(a1 + 41);
  if (qword_1EC262178 != -1)
  {
    swift_once();
  }

  v6 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v6, qword_1EC264038);
  sub_1C7C0A98C(&v45, &v42);
  v7 = sub_1C7C7D194();
  v8 = sub_1C7C7D5A4();
  sub_1C7C0A9C4(&v45);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 136315138;
    v38 = v45;
    v39 = v46;
    v40[0] = *v47;
    *(v40 + 9) = *&v47[9];
    sub_1C7C0A98C(&v45, &v42);
    v11 = JPKIXPCRequest.description.getter();
    v13 = v12;
    v42 = v38;
    v43 = v39;
    v44[0] = v40[0];
    *(v44 + 9) = *(v40 + 9);
    sub_1C7C0A9C4(&v42);
    v14 = sub_1C7BE42F8(v11, v13, &v41);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v7, v8, "Sending request %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x1CCA6C990](v10, -1, -1);
    MEMORY[0x1CCA6C990](v9, -1, -1);
  }

  sub_1C7C7D224();

  sub_1C7C7D1D4();
  sub_1C7C7D1C4();
  if (v2)
  {
    v15 = v2;
    v16 = sub_1C7C7D194();
    v17 = sub_1C7C7D584();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v42 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = sub_1C7C7DB04();
      v22 = sub_1C7BE42F8(v20, v21, &v42);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1C7B9A000, v16, v17, "Error sending request %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1CCA6C990](v19, -1, -1);
      MEMORY[0x1CCA6C990](v18, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v42 = v45;
    v43 = v46;
    v44[0] = *v47;
    *(v44 + 9) = *&v47[9];
    sub_1C7C184A8();
    sub_1C7C184FC();
    sub_1C7C7D214();
    v24 = v39;
    v25 = *&v40[0];
    sub_1C7C7D204();
    sub_1C7C18550(v38, *(&v38 + 1), v39, *(&v39 + 1), *&v40[0], BYTE8(v40[0]));
    v26 = BYTE8(v40[0]);
    v27 = sub_1C7C7D194();
    v28 = sub_1C7C7D5A4();
    v29 = v38;
    v30 = BYTE8(v40[0]);
    sub_1C7C18678(v38, *(&v38 + 1), v39, *(&v39 + 1), *&v40[0], BYTE8(v40[0]));
    if (os_log_type_enabled(v27, v28))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v38 = v37;
      *v36 = 136315138;
      v42 = v29;
      v43 = v24;
      *&v44[0] = v25;
      BYTE8(v44[0]) = v26;
      sub_1C7C18550(v29, *(&v29 + 1), v24, *(&v24 + 1), v25, v26);
      v31 = JPKIXPCResponse.description.getter();
      v33 = v32;
      sub_1C7C18678(v42, *(&v42 + 1), v43, *(&v43 + 1), *&v44[0], BYTE8(v44[0]));
      v34 = sub_1C7BE42F8(v31, v33, &v38);

      *(v36 + 4) = v34;
      _os_log_impl(&dword_1C7B9A000, v27, v28, "Received response %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x1CCA6C990](v37, -1, -1);
      MEMORY[0x1CCA6C990](v36, -1, -1);
    }

    else
    {
    }

    v35 = v48;
    *v48 = v29;
    v35[1] = v24;
    *(v35 + 4) = v25;
    *(v35 + 40) = v30;
  }

  return result;
}

uint64_t sub_1C7C183C4()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C7C18424()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC264038);
  __swift_project_value_buffer(v0, qword_1EC264038);
  return sub_1C7C7D1A4();
}

unint64_t sub_1C7C184A8()
{
  result = qword_1EC264050;
  if (!qword_1EC264050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264050);
  }

  return result;
}

unint64_t sub_1C7C184FC()
{
  result = qword_1EC264058;
  if (!qword_1EC264058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264058);
  }

  return result;
}

void sub_1C7C18550(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  v6 = a6 >> 5;
  if (v6 <= 1)
  {
    if (!(a6 >> 5))
    {
      sub_1C7C18594(a1, a2, a3, a4, a5, a6);
      return;
    }

    if (v6 != 1)
    {
      return;
    }

LABEL_8:

    return;
  }

  switch(v6)
  {
    case 2u:

      return;
    case 3u:
      goto LABEL_8;
    case 4u:
      sub_1C7BED654(a1, a2);
      break;
  }
}

uint64_t sub_1C7C18594(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (a6 > 6u)
  {
    if (a6 > 0xAu)
    {
      if (a6 - 11 >= 3)
      {
        return result;
      }
    }

    else if (a6 == 7)
    {
      sub_1C7BED654(result, a2);
    }

    else
    {
      if (a6 != 8 && a6 != 9)
      {
        return result;
      }
    }
  }

  else if (a6 > 4u)
  {
    if (a6 == 5)
    {
    }

    else if (a6 != 6)
    {
      return result;
    }
  }

  else if (a6 >= 2u && a6 - 3 >= 2)
  {
    return result;
  }
}

uint64_t sub_1C7C18678(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  v6 = a6 >> 5;
  if (v6 <= 1)
  {
    if (!(a6 >> 5))
    {
      return sub_1C7C186BC(result, a2, a3, a4, a5, a6);
    }

    if (v6 != 1)
    {
      return result;
    }
  }

  switch(v6)
  {
    case 2u:

    case 3u:

    case 4u:
      return sub_1C7BDF778(result, a2);
  }

  return result;
}

uint64_t sub_1C7C186BC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (a6 > 6u)
  {
    if (a6 > 0xAu)
    {
      if (a6 - 11 >= 3)
      {
        return result;
      }
    }

    else if (a6 == 7)
    {
      sub_1C7BDF778(result, a2);
    }

    else
    {
      if (a6 != 8 && a6 != 9)
      {
        return result;
      }
    }
  }

  else if (a6 > 4u)
  {
    if (a6 == 5)
    {
    }

    else if (a6 != 6)
    {
      return result;
    }
  }

  else if (a6 >= 2u && a6 - 3 >= 2)
  {
    return result;
  }
}

uint64_t sub_1C7C187A0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_1C7C7D1E4();
  v3[8] = swift_task_alloc();
  type metadata accessor for SEStorageManagementInternal.XPCRequest(0);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C18860, v2, 0);
}

uint64_t sub_1C7C18860()
{
  v24 = v0;
  if (qword_1EC262228 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = sub_1C7C7D1B4();
  v0[10] = __swift_project_value_buffer(v3, qword_1EC288368);
  sub_1C7BF24A0(v2, v1);
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D5A4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = SEStorageManagementInternal.XPCRequest.description.getter();
    v12 = v11;
    sub_1C7BF2504(v7);
    v13 = sub_1C7BE42F8(v10, v12, &v23);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "Sending request %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x1CCA6C990](v9, -1, -1);
    MEMORY[0x1CCA6C990](v8, -1, -1);
  }

  else
  {

    sub_1C7BF2504(v7);
  }

  sub_1C7C7D224();
  sub_1C7C7D1D4();
  v14 = sub_1C7C7D1C4();
  v0[11] = v14;
  v15 = v14;
  v17 = v0[6];
  v16 = v0[7];
  v19 = sub_1C7C1947C(&qword_1EC264060, v18, type metadata accessor for SEStorageManagementXPCClient, &unk_1C7C8EC58);
  v20 = swift_task_alloc();
  v0[12] = v20;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  v21 = swift_task_alloc();
  v0[13] = v21;
  *v21 = v0;
  v21[1] = sub_1C7C18B9C;

  return MEMORY[0x1EEE6DE38](v0 + 2, v16, v19, 0x73656D28646E6573, 0xEE00293A65676173, sub_1C7C193A0, v20, &type metadata for SEStorageManagementInternal.XPCResponse);
}

uint64_t sub_1C7C18B9C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1C7C18EA8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1C7C18CC4;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1C7C18CC4()
{
  v19 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1C7C193A8(v1, v2, v3);
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D5A4();
  sub_1C7C193D4(v1, v2, v3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    v16 = v1;
    *v6 = 136315138;
    v17 = v2;
    v18 = v3;
    sub_1C7C193A8(v1, v2, v3);
    v8 = SEStorageManagementInternal.XPCResponse.description.getter();
    v10 = v9;
    sub_1C7C193D4(v16, v2, v3);
    v11 = sub_1C7BE42F8(v8, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "Received response %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1CCA6C990](v7, -1, -1);
    MEMORY[0x1CCA6C990](v6, -1, -1);
  }

  v12 = *(v0 + 40);
  sub_1C7C7D204();

  *v12 = v1;
  *(v12 + 8) = v2;
  *(v12 + 16) = v3;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1C7C18EA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C7C18F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SEStorageManagementInternal.XPCRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264068, &unk_1C7C8EC80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_1C7C1947C(&qword_1EC264070, 255, type metadata accessor for SEStorageManagementInternal.XPCRequest, &protocol conformance descriptor for SEStorageManagementInternal.XPCRequest);
  sub_1C7C194C4();
  sub_1C7C7D1F4();
}

uint64_t sub_1C7C192E0(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 17) == 1)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264068, &unk_1C7C8EC80);
    return sub_1C7C7D484();
  }

  else
  {
    sub_1C7C193A8(v2, *(a1 + 8), *(a1 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264068, &unk_1C7C8EC80);
    return sub_1C7C7D494();
  }
}

uint64_t sub_1C7C193A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x3Fu)
  {
    return sub_1C7C193BC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1C7C193BC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1C7C193D4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x3Fu)
  {
    return sub_1C7C193E8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1C7C193E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1C7C19400(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264068, &unk_1C7C8EC80);

  return sub_1C7C192E0(a1);
}

uint64_t sub_1C7C1947C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1C7C194C4()
{
  result = qword_1EC264078;
  if (!qword_1EC264078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264078);
  }

  return result;
}

uint64_t InstanceInfoInternal.instanceAID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_instanceAID);
  sub_1C7BED654(v1, *(v0 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_instanceAID + 8));
  return v1;
}

uint64_t InstanceInfoInternal.packageAID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_packageAID);
  sub_1C7BED654(v1, *(v0 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_packageAID + 8));
  return v1;
}

uint64_t InstanceInfoInternal.moduleAID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_moduleAID);
  sub_1C7BED654(v1, *(v0 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_moduleAID + 8));
  return v1;
}

uint64_t InstanceInfoInternal.securityDomainAID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainAID);
  sub_1C7BED654(v1, *(v0 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainAID + 8));
  return v1;
}

uint64_t InstanceInfoInternal.securityDomainKeyInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainKeyInfo);
  sub_1C7C19710(v1, *(v0 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainKeyInfo + 8));
  return v1;
}

void sub_1C7C19710(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_1C7BED654(a1, a2);
  }
}

id sub_1C7C19730(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];
  sub_1C7BED654(*v3, v5);
  v6 = sub_1C7C7D024();
  sub_1C7BDF778(v4, v5);

  return v6;
}

uint64_t InstanceInfoInternal.lifeCycleState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_lifeCycleState);
  sub_1C7BED654(v1, *(v0 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_lifeCycleState + 8));
  return v1;
}

id InstanceInfoInternal.__allocating_init(instanceAID:packageAID:moduleAID:securityDomainAID:securityDomainKeyInfo:lifeCycleState:instanceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v21 = objc_allocWithZone(v13);
  v22 = &v21[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_instanceAID];
  *v22 = a1;
  *(v22 + 1) = a2;
  v23 = &v21[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_packageAID];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = &v21[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_moduleAID];
  *v24 = a5;
  *(v24 + 1) = a6;
  v25 = &v21[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainAID];
  *v25 = a7;
  *(v25 + 1) = a8;
  v26 = &v21[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainKeyInfo];
  *v26 = a9;
  *(v26 + 1) = a10;
  v27 = &v21[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_lifeCycleState];
  *v27 = a11;
  *(v27 + 1) = a12;
  *&v21[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_type] = a13;
  v30.receiver = v21;
  v30.super_class = v13;
  return objc_msgSendSuper2(&v30, sel_init);
}

id InstanceInfoInternal.init(instanceAID:packageAID:moduleAID:securityDomainAID:securityDomainKeyInfo:lifeCycleState:instanceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  ObjectType = swift_getObjectType();
  v22 = &v13[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_instanceAID];
  *v22 = a1;
  *(v22 + 1) = a2;
  v23 = &v13[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_packageAID];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = &v13[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_moduleAID];
  *v24 = a5;
  *(v24 + 1) = a6;
  v25 = &v13[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainAID];
  *v25 = a7;
  *(v25 + 1) = a8;
  v26 = &v13[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainKeyInfo];
  *v26 = a9;
  *(v26 + 1) = a10;
  v27 = &v13[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_lifeCycleState];
  *v27 = a11;
  *(v27 + 1) = a12;
  *&v13[OBJC_IVAR____TtC9SEService20InstanceInfoInternal_type] = a13;
  v30.receiver = v13;
  v30.super_class = ObjectType;
  return objc_msgSendSuper2(&v30, sel_init);
}

Swift::Void __swiftcall InstanceInfoInternal.encode(with:)(NSCoder with)
{
  v3 = sub_1C7C7D024();
  v4 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = sub_1C7C7D024();
  v6 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = sub_1C7C7D024();
  v8 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = sub_1C7C7D024();
  v10 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  if (*(v1 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainKeyInfo + 8) >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1C7C7D024();
  }

  v12 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = sub_1C7C7D024();
  v14 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_type);
  v16 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeInteger:v15 forKey:v16];
}

id InstanceInfoInternal.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_1C7C1A2AC();
  v2 = sub_1C7C7D5E4();
  if (v2)
  {
    v3 = v2;
    sub_1C7C7D044();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t InstanceTypeInternal.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C7C1A2AC()
{
  result = qword_1EC262ED0;
  if (!qword_1EC262ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC262ED0);
  }

  return result;
}

uint64_t InstanceInfoInternal.LifeCycleState.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C7C7D004();
  result = sub_1C7BDF778(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t InstanceInfoInternal.LifeCycleState.description.getter()
{
  v1 = *v0;
  if ((~*v0 & 3) == 0)
  {
    MEMORY[0x1CCA6B380](0x6C6C6174736E4920, 0xEA00000000006465);
  }

  if ((~v1 & 7) == 0)
  {
    MEMORY[0x1CCA6B380](0x617463656C655320, 0xEB00000000656C62);
  }

  if ((~v1 & 0xFLL) == 0)
  {
    MEMORY[0x1CCA6B380](0x616E6F7372655020, 0xED000064657A696CLL);
  }

  if ((~v1 & 0x83) == 0)
  {
    MEMORY[0x1CCA6B380](0x64656B636F4C20, 0xE700000000000000);
  }

  return 0;
}

void *sub_1C7C1A4BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1C7C1A510(void *a1, uint64_t *a2)
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

void *sub_1C7C1A540@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1C7C1A56C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

id InstanceInfoInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C7C1A6DC()
{
  v1 = *v0;
  v2 = 0x65636E6174736E69;
  v3 = 0x6C6379436566696CLL;
  if (v1 != 5)
  {
    v3 = 1701869940;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x416567616B636170;
  if (v1 != 1)
  {
    v5 = 0x4941656C75646F6DLL;
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

uint64_t sub_1C7C1A7D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C1B948(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C1A804(uint64_t a1)
{
  v2 = sub_1C7C1B378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C1A840(uint64_t a1)
{
  v2 = sub_1C7C1B378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id InstanceInfoInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InstanceInfoInternal.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2640C0, &qword_1C7C8EC90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C1B378();
  sub_1C7C7DBA4();
  v9 = *(v3 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_instanceAID + 8);
  v18 = *(v3 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_instanceAID);
  v19 = v9;
  v17 = 0;
  sub_1C7BED654(v18, v9);
  sub_1C7BED7DC();
  sub_1C7C7DA44();
  if (v2)
  {
    sub_1C7BDF778(v18, v19);
  }

  else
  {
    sub_1C7BDF778(v18, v19);
    v10 = *(v3 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_packageAID + 8);
    v18 = *(v3 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_packageAID);
    v19 = v10;
    v17 = 1;
    sub_1C7BED654(v18, v10);
    sub_1C7C7DA44();
    sub_1C7BDF778(v18, v19);
    v11 = *(v3 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_moduleAID + 8);
    v18 = *(v3 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_moduleAID);
    v19 = v11;
    v17 = 2;
    sub_1C7BED654(v18, v11);
    sub_1C7C7DA44();
    sub_1C7BDF778(v18, v19);
    v12 = *(v3 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainAID + 8);
    v18 = *(v3 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainAID);
    v19 = v12;
    v17 = 3;
    sub_1C7BED654(v18, v12);
    sub_1C7C7DA44();
    sub_1C7BDF778(v18, v19);
    v14 = *(v3 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainKeyInfo + 8);
    v18 = *(v3 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainKeyInfo);
    v19 = v14;
    v17 = 4;
    sub_1C7C19710(v18, v14);
    sub_1C7C7DA04();
    sub_1C7BE49C8(v18, v19);
    v15 = *(v3 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_lifeCycleState + 8);
    v18 = *(v3 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_lifeCycleState);
    v19 = v15;
    v17 = 5;
    sub_1C7BED654(v18, v15);
    sub_1C7C7DA44();
    sub_1C7BDF778(v18, v19);
    v18 = *(v3 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_type);
    v17 = 6;
    sub_1C7C1B3CC();
    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v8, v5);
}

void *InstanceInfoInternal.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2640E0, &qword_1C7C8EC98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C1B378();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_1C7BED744();
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_instanceAID) = v13;
    v14 = 1;
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_packageAID) = v13;
    v14 = 2;
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_moduleAID) = v13;
    v14 = 3;
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainAID) = v13;
    v14 = 4;
    sub_1C7C7D974();
    *(v1 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainKeyInfo) = v13;
    v14 = 5;
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_lifeCycleState) = v13;
    v14 = 6;
    sub_1C7C1B420();
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_type) = v13;
    v12.receiver = v1;
    v12.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v12, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void *sub_1C7C1B254@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = InstanceInfoInternal.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C7C1B378()
{
  result = qword_1EC2640C8;
  if (!qword_1EC2640C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2640C8);
  }

  return result;
}

unint64_t sub_1C7C1B3CC()
{
  result = qword_1EC2640D8;
  if (!qword_1EC2640D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2640D8);
  }

  return result;
}

unint64_t sub_1C7C1B420()
{
  result = qword_1EC2640F0;
  if (!qword_1EC2640F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2640F0);
  }

  return result;
}

unint64_t sub_1C7C1B478()
{
  result = qword_1EC2640F8;
  if (!qword_1EC2640F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2640F8);
  }

  return result;
}

unint64_t sub_1C7C1B4D0()
{
  result = qword_1EC264100;
  if (!qword_1EC264100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264100);
  }

  return result;
}

unint64_t sub_1C7C1B528()
{
  result = qword_1EC264108;
  if (!qword_1EC264108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264108);
  }

  return result;
}

unint64_t sub_1C7C1B580()
{
  result = qword_1EC264110;
  if (!qword_1EC264110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264110);
  }

  return result;
}

unint64_t sub_1C7C1B5D8()
{
  result = qword_1EC264118;
  if (!qword_1EC264118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264118);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InstanceInfoInternal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InstanceInfoInternal.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7C1B844()
{
  result = qword_1EC264128;
  if (!qword_1EC264128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264128);
  }

  return result;
}

unint64_t sub_1C7C1B89C()
{
  result = qword_1EC264130;
  if (!qword_1EC264130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264130);
  }

  return result;
}

unint64_t sub_1C7C1B8F4()
{
  result = qword_1EC264138;
  if (!qword_1EC264138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264138);
  }

  return result;
}

uint64_t sub_1C7C1B948(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6174736E69 && a2 == 0xEB00000000444941;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416567616B636170 && a2 == 0xEA00000000004449 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4941656C75646F6DLL && a2 == 0xE900000000000044 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C7C9DFC0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C7C9DFE0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6379436566696CLL && a2 == 0xEE00657461745365 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1C7C1BBB8()
{
  result = qword_1EC264140;
  if (!qword_1EC264140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264140);
  }

  return result;
}

void StateInternal.discriminant.getter(_BYTE *a1@<X8>)
{
  if (v1[8])
  {
    if (v1[8] == 1)
    {
      *a1 = 3;
    }

    else
    {
      *a1 = 2 * *v1;
    }
  }

  else
  {
    *a1 = 1;
  }
}

uint64_t StateInternal.init(rawDiscriminant:instanceInfos:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result > 1)
  {
    if (result == 2)
    {

      v4 = 2;
      a2 = 1;
      goto LABEL_13;
    }

    if (result == 3)
    {
      v4 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    if (!result)
    {

      a2 = 0;
      v4 = 2;
      goto LABEL_13;
    }

    if (result == 1)
    {
      v4 = 0;
      goto LABEL_13;
    }
  }

  v5 = result;

  a2 = 2 * (v5 == 4);
  if (v5 == 4)
  {
    v4 = 2;
  }

  else
  {
    v4 = -1;
  }

LABEL_13:
  *a3 = a2;
  *(a3 + 8) = v4;
  return result;
}

SEService::StateInternal::Discriminant_optional __swiftcall StateInternal.Discriminant.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C7C1BD24()
{
  v1 = *v0;
  v2 = 0x656C6C6174736E69;
  v3 = 0x64656B636F6CLL;
  if (v1 != 3)
  {
    v3 = 0x74616E696D726574;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1C7C1BDC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C1DA70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C1BDF0(uint64_t a1)
{
  v2 = sub_1C7C1C7B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C1BE2C(uint64_t a1)
{
  v2 = sub_1C7C1C7B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C1BE68(uint64_t a1)
{
  v2 = sub_1C7C1C8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C1BEA4(uint64_t a1)
{
  v2 = sub_1C7C1C8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C1BEE0(uint64_t a1)
{
  v2 = sub_1C7C1C958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C1BF1C(uint64_t a1)
{
  v2 = sub_1C7C1C958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C1BF74(uint64_t a1)
{
  v2 = sub_1C7C1C904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C1BFB0(uint64_t a1)
{
  v2 = sub_1C7C1C904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C1BFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E6174736E69 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C1C07C(uint64_t a1)
{
  v2 = sub_1C7C1C85C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C1C0B8(uint64_t a1)
{
  v2 = sub_1C7C1C85C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C1C0F4(uint64_t a1)
{
  v2 = sub_1C7C1C808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C1C130(uint64_t a1)
{
  v2 = sub_1C7C1C808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StateInternal.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264150, &qword_1C7C8F100);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264158, &qword_1C7C8F108);
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264160, &qword_1C7C8F110);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264168, &qword_1C7C8F118);
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264170, &qword_1C7C8F120);
  v31 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264178, &qword_1C7C8F128);
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = *v2;
  v20 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C1C7B4();
  sub_1C7C7DBA4();
  if (!v20)
  {
    LOBYTE(v45) = 1;
    sub_1C7C1C904();
    v22 = v44;
    sub_1C7C7D9E4();
    v45 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264198, &qword_1C7C8F130);
    sub_1C7C1D2A0(&qword_1EC2641A0, &qword_1EC2641A8, &protocol conformance descriptor for InstanceInfoInternal, MEMORY[0x1E69E6300]);
    v24 = v39;
    sub_1C7C7DA44();
    (*(v38 + 8))(v12, v24);
    return (*(v43 + 8))(v18, v22);
  }

  if (v20 == 1)
  {
    LOBYTE(v45) = 3;
    sub_1C7C1C85C();
    v21 = v40;
    v22 = v44;
    sub_1C7C7D9E4();
    v45 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264198, &qword_1C7C8F130);
    sub_1C7C1D2A0(&qword_1EC2641A0, &qword_1EC2641A8, &protocol conformance descriptor for InstanceInfoInternal, MEMORY[0x1E69E6300]);
    v23 = v42;
    sub_1C7C7DA44();
    (*(v41 + 8))(v21, v23);
    return (*(v43 + 8))(v18, v22);
  }

  if (v19)
  {
    if (v19 == 1)
    {
      LOBYTE(v45) = 2;
      sub_1C7C1C8B0();
      v26 = v32;
      v27 = v44;
      sub_1C7C7D9E4();
      v29 = v33;
      v28 = v34;
    }

    else
    {
      LOBYTE(v45) = 4;
      sub_1C7C1C808();
      v26 = v35;
      v27 = v44;
      sub_1C7C7D9E4();
      v29 = v36;
      v28 = v37;
    }

    (*(v29 + 8))(v26, v28);
  }

  else
  {
    LOBYTE(v45) = 0;
    sub_1C7C1C958();
    v27 = v44;
    sub_1C7C7D9E4();
    (*(v31 + 8))(v15, v13);
  }

  return (*(v43 + 8))(v18, v27);
}

unint64_t sub_1C7C1C7B4()
{
  result = qword_1EC264180;
  if (!qword_1EC264180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264180);
  }

  return result;
}

unint64_t sub_1C7C1C808()
{
  result = qword_1EC264188;
  if (!qword_1EC264188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264188);
  }

  return result;
}

unint64_t sub_1C7C1C85C()
{
  result = qword_1EC264190;
  if (!qword_1EC264190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264190);
  }

  return result;
}

unint64_t sub_1C7C1C8B0()
{
  result = qword_1EC2641B0;
  if (!qword_1EC2641B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2641B0);
  }

  return result;
}

unint64_t sub_1C7C1C904()
{
  result = qword_1EC2641B8;
  if (!qword_1EC2641B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2641B8);
  }

  return result;
}

unint64_t sub_1C7C1C958()
{
  result = qword_1EC2641C0;
  if (!qword_1EC2641C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2641C0);
  }

  return result;
}

uint64_t StateInternal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2641C8, &qword_1C7C8F138);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v40 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2641D0, &qword_1C7C8F140);
  v49 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v53 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2641D8, &qword_1C7C8F148);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v40 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2641E0, &qword_1C7C8F150);
  v46 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2641E8, &qword_1C7C8F158);
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2641F0, &unk_1C7C8F160);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  v18 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1C7C1C7B4();
  v19 = v55;
  sub_1C7C7DB94();
  if (!v19)
  {
    v20 = v13;
    v55 = v11;
    v21 = v52;
    v22 = v53;
    v23 = sub_1C7C7D9D4();
    v24 = (2 * *(v23 + 16)) | 1;
    v56 = v23;
    v57 = v23 + 32;
    v58 = 0;
    v59 = v24;
    v25 = sub_1C7BEAAD0();
    if (v25 != 5 && v58 == v59 >> 1)
    {
      if (v25 <= 1u)
      {
        if (v25)
        {
          LOBYTE(v60) = 1;
          sub_1C7C1C904();
          sub_1C7C7D944();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264198, &qword_1C7C8F130);
          sub_1C7C1D2A0(&qword_1EC2641F8, &qword_1EC264200, &protocol conformance descriptor for InstanceInfoInternal, MEMORY[0x1E69E6330]);
          v36 = v42;
          sub_1C7C7D9B4();
          (*(v46 + 8))(v10, v36);
          (*(v15 + 8))(v17, v14);
          swift_unknownObjectRelease();
          v38 = 0;
          v37 = v60;
        }

        else
        {
          LOBYTE(v60) = 0;
          sub_1C7C1C958();
          sub_1C7C7D944();
          (*(v41 + 8))(v20, v55);
          (*(v15 + 8))(v17, v14);
          swift_unknownObjectRelease();
          v37 = 0;
          v38 = 2;
        }

        v39 = v54;
        v26 = v51;
        goto LABEL_18;
      }

      if (v25 == 2)
      {
        LOBYTE(v60) = 2;
        sub_1C7C1C8B0();
        v34 = v21;
        sub_1C7C7D944();
        v26 = v51;
        (*(v44 + 8))(v34, v43);
        (*(v15 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v38 = 2;
        v37 = 1;
      }

      else
      {
        v26 = v51;
        if (v25 == 3)
        {
          LOBYTE(v60) = 3;
          sub_1C7C1C85C();
          sub_1C7C7D944();
          v27 = v26;
          v55 = v14;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264198, &qword_1C7C8F130);
          sub_1C7C1D2A0(&qword_1EC2641F8, &qword_1EC264200, &protocol conformance descriptor for InstanceInfoInternal, MEMORY[0x1E69E6330]);
          v28 = v45;
          sub_1C7C7D9B4();
          (*(v49 + 8))(v22, v28);
          (*(v15 + 8))(v17, v55);
          swift_unknownObjectRelease();
          v37 = v60;
          v38 = 1;
          v39 = v54;
          v26 = v27;
LABEL_18:
          *v26 = v37;
          *(v26 + 8) = v38;
          return __swift_destroy_boxed_opaque_existential_0Tm(v39);
        }

        LOBYTE(v60) = 4;
        sub_1C7C1C808();
        v35 = v50;
        sub_1C7C7D944();
        (*(v47 + 8))(v35, v48);
        (*(v15 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v37 = 2;
        v38 = 2;
      }

      v39 = v54;
      goto LABEL_18;
    }

    v29 = v14;
    v30 = sub_1C7C7D7C4();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30);
    *v32 = &type metadata for StateInternal;
    sub_1C7C7D954();
    sub_1C7C7D7B4();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v15 + 8))(v17, v29);
    swift_unknownObjectRelease();
  }

  v39 = v54;
  return __swift_destroy_boxed_opaque_existential_0Tm(v39);
}

uint64_t sub_1C7C1D2A0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC264198, &qword_1C7C8F130);
    sub_1C7C1D328(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7C1D328(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InstanceInfoInternal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C1D370()
{
  result = qword_1EC264208;
  if (!qword_1EC264208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264208);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SEService13StateInternalO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1C7C1D424(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C7C1D46C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1C7C1D4B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1C7C1D54C()
{
  result = qword_1EC264210;
  if (!qword_1EC264210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264210);
  }

  return result;
}

unint64_t sub_1C7C1D5A4()
{
  result = qword_1EC264218;
  if (!qword_1EC264218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264218);
  }

  return result;
}

unint64_t sub_1C7C1D5FC()
{
  result = qword_1EC264220;
  if (!qword_1EC264220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264220);
  }

  return result;
}

unint64_t sub_1C7C1D654()
{
  result = qword_1EC264228;
  if (!qword_1EC264228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264228);
  }

  return result;
}

unint64_t sub_1C7C1D6AC()
{
  result = qword_1EC264230;
  if (!qword_1EC264230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264230);
  }

  return result;
}

unint64_t sub_1C7C1D704()
{
  result = qword_1EC264238;
  if (!qword_1EC264238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264238);
  }

  return result;
}

unint64_t sub_1C7C1D75C()
{
  result = qword_1EC264240;
  if (!qword_1EC264240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264240);
  }

  return result;
}

unint64_t sub_1C7C1D7B4()
{
  result = qword_1EC264248;
  if (!qword_1EC264248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264248);
  }

  return result;
}

unint64_t sub_1C7C1D80C()
{
  result = qword_1EC264250;
  if (!qword_1EC264250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264250);
  }

  return result;
}

unint64_t sub_1C7C1D864()
{
  result = qword_1EC264258;
  if (!qword_1EC264258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264258);
  }

  return result;
}

unint64_t sub_1C7C1D8BC()
{
  result = qword_1EC264260;
  if (!qword_1EC264260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264260);
  }

  return result;
}

unint64_t sub_1C7C1D914()
{
  result = qword_1EC264268;
  if (!qword_1EC264268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264268);
  }

  return result;
}

unint64_t sub_1C7C1D96C()
{
  result = qword_1EC264270;
  if (!qword_1EC264270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264270);
  }

  return result;
}

unint64_t sub_1C7C1D9C4()
{
  result = qword_1EC264278;
  if (!qword_1EC264278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264278);
  }

  return result;
}

unint64_t sub_1C7C1DA1C()
{
  result = qword_1EC264280;
  if (!qword_1EC264280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264280);
  }

  return result;
}

uint64_t sub_1C7C1DA70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001C7C9E090 == a2;
  if (v3 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C6C6174736E69 && a2 == 0xE900000000000064 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C7C9E0B0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656B636F6CLL && a2 == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74616E696D726574 && a2 == 0xEA00000000006465)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

id _s9SEService15SESOnceOnlyTaskCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C7C1DCE4()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EC288328 = result;
  return result;
}

void sub_1C7C1DD3C()
{
  if (qword_1EC262180 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC288328;
  v1 = sub_1C7C7D2E4();
  v2 = sub_1C7C7D2E4();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_1C7C7D304();
  v6 = v5;

  qword_1EC264288 = v4;
  unk_1EC264290 = v6;
}

void sub_1C7C1DE88()
{
  if (qword_1EC262180 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC288328;
  v1 = sub_1C7C7D2E4();
  v2 = sub_1C7C7D2E4();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_1C7C7D304();
  v6 = v5;

  qword_1EC264298 = v4;
  unk_1EC2642A0 = v6;
}

void sub_1C7C1DFD4()
{
  if (qword_1EC262180 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC288328;
  v1 = sub_1C7C7D2E4();
  v2 = sub_1C7C7D2E4();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_1C7C7D304();
  v6 = v5;

  qword_1EC2642A8 = v4;
  unk_1EC2642B0 = v6;
}

void sub_1C7C1E120()
{
  if (qword_1EC262180 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC288328;
  v1 = sub_1C7C7D2E4();
  v2 = sub_1C7C7D2E4();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_1C7C7D304();
  v6 = v5;

  qword_1EC2642B8 = v4;
  unk_1EC2642C0 = v6;
}

void sub_1C7C1E26C()
{
  if (qword_1EC262180 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC288328;
  v1 = sub_1C7C7D2E4();
  v2 = sub_1C7C7D2E4();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_1C7C7D304();
  v6 = v5;

  qword_1EC2642C8 = v4;
  unk_1EC2642D0 = v6;
}

void sub_1C7C1E3B8()
{
  if (qword_1EC262180 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC288328;
  v1 = sub_1C7C7D2E4();
  v2 = sub_1C7C7D2E4();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_1C7C7D304();
  v6 = v5;

  qword_1EC2642D8 = v4;
  unk_1EC2642E0 = v6;
}

void sub_1C7C1E500()
{
  if (qword_1EC262180 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC288328;
  v1 = sub_1C7C7D2E4();
  v2 = sub_1C7C7D2E4();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_1C7C7D304();
  v6 = v5;

  qword_1EC2642E8 = v4;
  unk_1EC2642F0 = v6;
}

uint64_t sub_1C7C1E624(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

id sub_1C7C1E6A8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v6 = sub_1C7C7D2E4();

  return v6;
}

id SESSettingsLocalizedStringFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SESSettingsLocalizedStringFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SESSettingsLocalizedStringFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SESnapshot.ProposedESimProfile.gid1.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SESnapshot.ProposedESimProfile.gid2.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SESnapshot.ProposedESimProfile.init(mcc:mnc:gid1:gid2:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t SESnapshot.ProposedESimProfile.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD000000000000019, 0x80000001C7C9E3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2642F8, &qword_1C7C8F950);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6530];
  *(v3 + 16) = xmmword_1C7C8F930;
  v5 = MEMORY[0x1E69E65A8];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  v6 = sub_1C7C7D314();
  MEMORY[0x1CCA6B380](v6);

  MEMORY[0x1CCA6B380](0x20636E6D202CLL, 0xE600000000000000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C7C8F930;
  *(v7 + 56) = v4;
  *(v7 + 64) = v5;
  *(v7 + 32) = v2;
  v8 = sub_1C7C7D314();
  MEMORY[0x1CCA6B380](v8);

  MEMORY[0x1CCA6B380](0x2031646967202CLL, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264300, &qword_1C7C8F958);
  v9 = sub_1C7C7D324();
  MEMORY[0x1CCA6B380](v9);

  MEMORY[0x1CCA6B380](0x2032646967202CLL, 0xE700000000000000);
  v10 = sub_1C7C7D324();
  MEMORY[0x1CCA6B380](v10);

  return 0;
}

uint64_t sub_1C7C1EAB0()
{
  v1 = 6513517;
  v2 = 828664167;
  if (*v0 != 2)
  {
    v2 = 845441383;
  }

  if (*v0)
  {
    v1 = 6516333;
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

uint64_t sub_1C7C1EB08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C20FA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C1EB30(uint64_t a1)
{
  v2 = sub_1C7C1ED90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C1EB6C(uint64_t a1)
{
  v2 = sub_1C7C1ED90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SESnapshot.ProposedESimProfile.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264308, &qword_1C7C8F960);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[1];
  v8 = v1[3];
  v11[3] = v1[2];
  v11[4] = v7;
  v11[1] = v1[4];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C1ED90();
  sub_1C7C7DBA4();
  v15 = 0;
  v9 = v11[5];
  sub_1C7C7DA34();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = 1;
  sub_1C7C7DA34();
  v13 = 2;
  sub_1C7C7D9F4();
  v12 = 3;
  sub_1C7C7D9F4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C7C1ED90()
{
  result = qword_1EC264310;
  if (!qword_1EC264310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264310);
  }

  return result;
}

uint64_t SESnapshot.ProposedESimProfile.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264318, &qword_1C7C8F968);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C1ED90();
  sub_1C7C7DB94();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26 = 0;
  v9 = sub_1C7C7D9A4();
  v25 = 1;
  v10 = sub_1C7C7D9A4();
  v24 = 2;
  v11 = sub_1C7C7D964();
  v13 = v12;
  v22 = v11;
  v23 = 3;
  v14 = sub_1C7C7D964();
  v15 = *(v6 + 8);
  v21 = v14;
  v16 = v8;
  v18 = v17;
  v15(v16, v5);
  *a2 = v9;
  a2[1] = v10;
  v19 = v21;
  a2[2] = v22;
  a2[3] = v13;
  a2[4] = v19;
  a2[5] = v18;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t static SESnapshot.canFit(proposedESimProfiles:targetDevice:reclaimUnusedSpace:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 81) = a3;
  *(v3 + 184) = a1;
  *(v3 + 192) = type metadata accessor for SERXPCRequest(0);
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C1F0F0, 0, 0);
}

uint64_t sub_1C7C1F0F0()
{
  if (qword_1EC2621D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = *(v0 + 81);
  v3 = off_1EC264760;
  v4 = sub_1C7C21108(*(v0 + 184));
  *(v0 + 208) = v4;
  *v1 = v4;
  *(v1 + 8) = v2;
  *(v1 + 16) = xmmword_1C7C880C0;
  *(v1 + 32) = 0;
  swift_storeEnumTagMultiPayload();
  v5 = v3[2];
  *(v0 + 216) = v5;
  v6 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C7C1F1E8, v5, 0);
}

uint64_t sub_1C7C1F1E8()
{
  sub_1C7C35A1C(v0[25], v0 + 8);
  v0[28] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C1F27C, 0, 0);
}

uint64_t sub_1C7C1F27C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 8)
    {
      v4 = *(v0 + 208);
      sub_1C7C21218(*(v0 + 200));

      v5 = *(v0 + 8);
      v6 = v1 & 1;
      goto LABEL_7;
    }

    v7 = *(v0 + 200);
    v8 = *(v0 + 208);
    sub_1C7C7D794();
    *(v0 + 136) = 0;
    *(v0 + 144) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1C7C21274;
    *(v9 + 24) = 0;
    *(v0 + 152) = sub_1C7C21278;
    *(v0 + 160) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264320, &qword_1C7C90C80);
    v10 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v10);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 112) = v1;
    *(v0 + 120) = v2;
    *(v0 + 128) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 136);
    v2 = *(v0 + 144);
  }

  else
  {
    v7 = *(v0 + 200);
    v8 = *(v0 + 208);
  }

  sub_1C7C21218(v7);

  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  sub_1C7C15E5C();
  swift_willThrowTypedImpl();
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 104);
  swift_allocError();
  *v14 = v11;
  *(v14 + 8) = v12;
  *(v14 + 16) = v13;

  v5 = *(v0 + 8);
  v6 = 0;
LABEL_7:

  return v5(v6);
}

uint64_t sub_1C7C1F4C8()
{
  v23 = v0;
  sub_1C7C21218(*(v0 + 200));
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1C7C7DB04();
    v10 = sub_1C7BE42F8(v8, v9, &v22);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1CCA6C990](v7, -1, -1);
    MEMORY[0x1CCA6C990](v6, -1, -1);
  }

  v11 = *(v0 + 224);
  v12 = *(v0 + 208);
  swift_getErrorValue();
  v13 = sub_1C7C7DB04();
  v15 = v14;

  *(v0 + 88) = v13;
  *(v0 + 96) = v15;
  *(v0 + 104) = 1;
  sub_1C7C15E5C();
  swift_willThrowTypedImpl();
  v16 = *(v0 + 88);
  v17 = *(v0 + 96);
  v18 = *(v0 + 104);
  swift_allocError();
  *v19 = v16;
  *(v19 + 8) = v17;
  *(v19 + 16) = v18;

  v20 = *(v0 + 8);

  return v20(0);
}

uint64_t SESnapshot.canFit(proposedESimProfilesUsage:)(char *a1)
{
  v2 = v1;
  if (qword_1EC2621E8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v4 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v4, qword_1EC288338);
  a1 = a1;
  v5 = sub_1C7C7D194();
  v6 = sub_1C7C7D5A4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v52[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1C7BE42F8(0xD000000000000022, 0x80000001C7C9E3D0, v52);
    *(v7 + 12) = 2080;
    v9 = [a1 description];
    v10 = sub_1C7C7D304();
    v12 = v11;

    v13 = sub_1C7BE42F8(v10, v12, v52);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_1C7B9A000, v5, v6, "%s proposedESimProfiles = %s ", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v14 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v15 = *(v2 + v14);
  v16 = *(v15 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
  v17 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  swift_beginAccess();
  v18 = *(v16 + v17);
  v19 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  result = swift_beginAccess();
  v21 = *&a1[v19];
  v22 = v18 - v21;
  if (__OFSUB__(v18, v21))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v2 = *(v15 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo);
  v23 = *(v2 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC);
  v24 = *(v2 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent);
  v25 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  result = swift_beginAccess();
  v26 = 0;
  v27 = 0;
  v28 = *(v15 + v25);
  v29 = *(v28 + 16);
  v30 = v28 + 40;
LABEL_6:
  v31 = (v30 + 16 * v26);
  while (v29 != v26)
  {
    if (v26 >= v29)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v32 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_28;
    }

    v33 = *v31;
    v31 += 2;
    ++v26;
    if (v33 >> 62 == 1)
    {
      v34 = *(*(v31 - 3) + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize);
      v26 = v32;
      v35 = __OFADD__(v27, v34);
      v27 += v34;
      if (!v35)
      {
        goto LABEL_6;
      }

      __break(1u);
      break;
    }
  }

  v35 = __OFSUB__(v23, v27);
  v36 = v23 - v27;
  if (v35)
  {
    goto LABEL_31;
  }

  v37 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
  result = swift_beginAccess();
  v38 = *&a1[v37];
  if (v38 < v36 && (v22 & 0x8000000000000000) == 0)
  {
    v39 = sub_1C7C7D194();
    v40 = sub_1C7C7D5A4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = v36;
      _os_log_impl(&dword_1C7B9A000, v39, v40, "eUICC reserve sufficient: %ld", v41, 0xCu);
      MEMORY[0x1CCA6C990](v41, -1, -1);
    }

    return 1;
  }

  v42 = *(v2 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex);
  v35 = __OFSUB__(v42, v24);
  v43 = v42 - v24;
  if (v35)
  {
    goto LABEL_32;
  }

  v44 = v36 & ~(v36 >> 63);
  v35 = __OFADD__(v24, v44);
  v45 = v24 + v44;
  if (v35)
  {
    goto LABEL_33;
  }

  v46 = (25600 - (v43 & ~(v43 >> 63))) & ~((25600 - (v43 & ~(v43 >> 63))) >> 63);
  v35 = __OFSUB__(v45, v46);
  v47 = v45 - v46;
  if (v35)
  {
    goto LABEL_34;
  }

  v48 = v47 - v38;
  if (__OFSUB__(v47, v38))
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v49 = sub_1C7C7D194();
  v50 = sub_1C7C7D5A4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134218240;
    *(v51 + 4) = v48;
    *(v51 + 12) = 2048;
    *(v51 + 14) = v22;
    _os_log_impl(&dword_1C7B9A000, v49, v50, "nvm status: %ld, vm status: %ld", v51, 0x16u);
    MEMORY[0x1CCA6C990](v51, -1, -1);
  }

  return (v48 | v22) >= 0;
}

uint64_t SESnapshot.ProposedKernelInfo.init(nvm:cod:cor:idx:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t SESnapshot.ProposedKernelInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C7C7D794();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2642F8, &qword_1C7C8F950);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6530];
  *(v4 + 16) = xmmword_1C7C8F930;
  v6 = MEMORY[0x1E69E65A8];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v1;
  v7 = sub_1C7C7D314();
  MEMORY[0x1CCA6B380](v7);

  MEMORY[0x1CCA6B380](0x20646F63202CLL, 0xE600000000000000);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C7C8F930;
  *(v8 + 56) = v5;
  *(v8 + 64) = v6;
  *(v8 + 32) = v2;
  v9 = sub_1C7C7D314();
  MEMORY[0x1CCA6B380](v9);

  MEMORY[0x1CCA6B380](0x20726F63202CLL, 0xE600000000000000);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C7C8F930;
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = v3;
  v11 = sub_1C7C7D314();
  MEMORY[0x1CCA6B380](v11);

  MEMORY[0x1CCA6B380](0x20786469202CLL, 0xE600000000000000);
  v12 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v12);

  return 0xD000000000000018;
}

uint64_t sub_1C7C1FE0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C2174C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C1FE34(uint64_t a1)
{
  v2 = sub_1C7C21318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C1FE70(uint64_t a1)
{
  v2 = sub_1C7C21318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SESnapshot.ProposedKernelInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264328, &qword_1C7C8F980);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C21318();
  sub_1C7C7DBA4();
  v15 = 0;
  sub_1C7C7DA34();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = 1;
  sub_1C7C7DA34();
  v13 = 2;
  sub_1C7C7DA34();
  v12 = 3;
  sub_1C7C7DA34();
  return (*(v5 + 8))(v7, v4);
}

uint64_t SESnapshot.ProposedKernelInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264338, &qword_1C7C8F988);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C21318();
  sub_1C7C7DB94();
  if (!v2)
  {
    v18 = 0;
    v9 = sub_1C7C7D9A4();
    v17 = 1;
    v10 = sub_1C7C7D9A4();
    v16 = 2;
    v14 = sub_1C7C7D9A4();
    v15 = 3;
    v13 = sub_1C7C7D9A4();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    v12 = v13;
    a2[2] = v14;
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t static SESnapshot.canFit(proposedKernelInfo:reclaimUnusedSpace:session:)(_OWORD *a1, char a2, uint64_t a3)
{
  *(v3 + 224) = a3;
  *(v3 + 81) = a2;
  *(v3 + 232) = type metadata accessor for SERXPCRequest(0);
  *(v3 + 240) = swift_task_alloc();
  v5 = a1[1];
  *(v3 + 248) = *a1;
  *(v3 + 264) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C7C20350, 0, 0);
}

uint64_t sub_1C7C20350()
{
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 81) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (qword_1EC2621D8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 264);
    v3 = *(v0 + 272);
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v7 = off_1EC264760;
    v8 = type metadata accessor for MemoryUsage();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap] = v6;
    *&v9[OBJC_IVAR____TtC9SEService11MemoryUsage_cor] = v4;
    *&v9[OBJC_IVAR____TtC9SEService11MemoryUsage_cod] = v5;
    *&v9[OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices] = v3;
    *(v0 + 160) = v9;
    *(v0 + 168) = v8;
    v10 = objc_msgSendSuper2((v0 + 160), sel_init);
    *(v0 + 280) = v10;
    if (v1)
    {
      v11 = sub_1C7C54984(v0 + 136);
    }

    else
    {
      v11 = 0;
      v12 = 0xF000000000000000;
    }

    *(v0 + 296) = v11;
    *(v0 + 304) = v12;
    *(v0 + 288) = 0;
    v16 = *(v0 + 240);
    v17 = *(v0 + 81);
    *v16 = v10;
    *(v16 + 8) = v17;
    *(v16 + 16) = v11;
    *(v16 + 24) = v12;
    *(v16 + 32) = 0;
    v18 = v11;
    v19 = v12;
    swift_storeEnumTagMultiPayload();
    v20 = v7[2];
    *(v0 + 312) = v20;
    v21 = v10;
    sub_1C7C19710(v18, v19);

    return MEMORY[0x1EEE6DFA0](sub_1C7C205C0, v20, 0);
  }

  else
  {
    sub_1C7BEADA0();
    swift_allocError();
    *v13 = 0xD00000000000005ALL;
    *(v13 + 8) = 0x80000001C7C9E420;
    *(v13 + 16) = 0;
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_1C7C205C0()
{
  v1 = v0[36];
  sub_1C7C35A1C(v0[30], v0 + 8);
  v0[40] = v1;
  if (v1)
  {
    v2 = sub_1C7C208E0;
  }

  else
  {
    v2 = sub_1C7C20654;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C7C20654()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 8)
    {
      v5 = *(v0 + 296);
      v4 = *(v0 + 304);
      v6 = *(v0 + 280);
      sub_1C7C21218(*(v0 + 240));
      sub_1C7BE49C8(v5, v4);

      v7 = *(v0 + 8);
      v8 = v1 & 1;
      goto LABEL_7;
    }

    v13 = *(v0 + 296);
    v12 = *(v0 + 304);
    v11 = *(v0 + 280);
    v14 = *(v0 + 240);
    sub_1C7C7D794();
    *(v0 + 176) = 0;
    *(v0 + 184) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C7C21274;
    *(v15 + 24) = 0;
    *(v0 + 192) = sub_1C7C218B4;
    *(v0 + 200) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264320, &qword_1C7C90C80);
    v16 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v16);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 112) = v1;
    *(v0 + 120) = v2;
    *(v0 + 128) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    v1 = *(v0 + 176);
    v2 = *(v0 + 184);
    sub_1C7C21218(v14);
    sub_1C7BE49C8(v13, v12);
    LOBYTE(v3) = 0;
  }

  else
  {
    v10 = *(v0 + 296);
    v9 = *(v0 + 304);
    v11 = *(v0 + 280);
    sub_1C7C21218(*(v0 + 240));
    sub_1C7BE49C8(v10, v9);
  }

  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  sub_1C7C15E5C();
  swift_willThrowTypedImpl();
  v17 = *(v0 + 88);
  v18 = *(v0 + 96);
  v19 = *(v0 + 104);
  swift_allocError();
  *v20 = v17;
  *(v20 + 8) = v18;
  *(v20 + 16) = v19;

  v7 = *(v0 + 8);
  v8 = 0;
LABEL_7:

  return v7(v8);
}

uint64_t sub_1C7C208E0()
{
  v24 = v0;
  sub_1C7C21218(*(v0 + 240));
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1C7C7DB04();
    v10 = sub_1C7BE42F8(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1CCA6C990](v7, -1, -1);
    MEMORY[0x1CCA6C990](v6, -1, -1);
  }

  v11 = *(v0 + 320);
  v13 = *(v0 + 296);
  v12 = *(v0 + 304);
  v14 = *(v0 + 280);
  swift_getErrorValue();
  v15 = sub_1C7C7DB04();
  v17 = v16;

  sub_1C7BE49C8(v13, v12);
  *(v0 + 88) = v15;
  *(v0 + 96) = v17;
  *(v0 + 104) = 1;
  sub_1C7C15E5C();
  swift_willThrowTypedImpl();
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  LOBYTE(v17) = *(v0 + 104);
  swift_allocError();
  *v20 = v18;
  *(v20 + 8) = v19;
  *(v20 + 16) = v17;

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t SESnapshot.canFit(proposedUsage:)(void *a1)
{
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v3 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v3, qword_1EC288338);
  v4 = a1;
  v5 = sub_1C7C7D194();
  v6 = sub_1C7C7D5A4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v47[0] = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1C7BE42F8(0xD000000000000016, 0x80000001C7C9E480, v47);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = v4;
    v10 = v4;
    _os_log_impl(&dword_1C7B9A000, v5, v6, "%s proposedKernelInfo = %@ ", v7, 0x16u);
    sub_1C7C2136C(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x1CCA6C990](v9, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v11 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
  result = swift_beginAccess();
  v13 = *&v4[v11];
  v14 = v13 + 31;
  if (v13 >= 0)
  {
    v14 = *&v4[v11];
  }

  v15 = v14 >> 5;
  if ((v15 - 0x40000000000000) >> 55 != 511)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v15 << 9;
  if ((v13 & 0x800000000000001FLL) >= 1)
  {
    v17 = __OFADD__(v16, 512);
    v16 += 512;
    if (v17)
    {
      goto LABEL_30;
    }
  }

  v18 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = *(v19 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
  v21 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
  result = swift_beginAccess();
  v24 = *&v4[v23];
  v17 = __OFSUB__(v22, v24);
  v25 = v22 - v24;
  if (v17)
  {
    goto LABEL_23;
  }

  v17 = __OFSUB__(v25, v16);
  v26 = v25 - v16;
  if (v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = v26 - 25600;
  if (__OFADD__(v26, -25600))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  swift_beginAccess();
  v29 = *(v20 + v28);
  v30 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  result = swift_beginAccess();
  v31 = *&v4[v30];
  v32 = v29 - v31;
  if (__OFSUB__(v29, v31))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  swift_beginAccess();
  v34 = *(v20 + v33);
  v35 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  result = swift_beginAccess();
  v36 = *&v4[v35];
  v37 = v34 - v36;
  if (__OFSUB__(v34, v36))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v38 = *(v19 + OBJC_IVAR____TtC9SEService7SEState_seType);
  v39 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
  result = swift_beginAccess();
  v40 = *(v20 + v39);
  v17 = __OFADD__(v40, v13);
  v41 = v40 + v13;
  if (v17)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  v42 = 14000;
  if (v38 < 3)
  {
    v42 = 24526;
  }

  v43 = v42 - v41;
  if (__OFSUB__(v42, v41))
  {
    goto LABEL_29;
  }

  v44 = sub_1C7C7D194();
  v45 = sub_1C7C7D5A4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134218752;
    *(v46 + 4) = v27;
    *(v46 + 12) = 2048;
    *(v46 + 14) = v32;
    *(v46 + 22) = 2048;
    *(v46 + 24) = v37;
    *(v46 + 32) = 2048;
    *(v46 + 34) = v43;
    _os_log_impl(&dword_1C7B9A000, v44, v45, "nvm status: %ld, cor status: %ld, cod status: %ld, idx status: %ld", v46, 0x2Au);
    MEMORY[0x1CCA6C990](v46, -1, -1);
  }

  return (v27 | v32 | v37 | v43) >= 0;
}

uint64_t sub_1C7C20FA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6513517 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6516333 && a2 == 0xE300000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 828664167 && a2 == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 845441383 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id sub_1C7C21108(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = (a1 + 40);
  v5 = v3 + 1;
  while (--v5)
  {
    v6 = v4 + 6;
    v7 = *(v4 - 1);
    v8 = *v4;
    v21 = 0;
    v9 = sub_1C7C12DC0(v7, v8, &v21);
    v4 = v6;
    v10 = __OFADD__(v2, v9);
    v2 += v9;
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  v11 = (a1 + 40);
  v12 = v3 + 1;
  while (--v12)
  {
    v13 = v11 + 6;
    v14 = *(v11 - 1);
    v15 = *v11;
    v21 = 1;
    v16 = sub_1C7C12DC0(v14, v15, &v21);
    v11 = v13;
    v10 = __OFADD__(v5, v16);
    v5 += v16;
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  v17 = type metadata accessor for MemoryUsage();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap] = v2;
  *&v18[OBJC_IVAR____TtC9SEService11MemoryUsage_cor] = v5;
  *&v18[OBJC_IVAR____TtC9SEService11MemoryUsage_cod] = 0;
  *&v18[OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices] = 0;
  v20.receiver = v18;
  v20.super_class = v17;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_1C7C21218(uint64_t a1)
{
  v2 = type metadata accessor for SERXPCRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C7C212A4(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 4;
  if (v3 > 3)
  {
    if ((a3 >> 4) > 5u)
    {
      if (v3 == 6)
      {
LABEL_15:

        return;
      }

      if (v3 == 7)
      {
      }
    }

    else if (v3 == 4 || v3 == 5)
    {
      goto LABEL_15;
    }
  }

  else if ((a3 >> 4) > 1u)
  {
    if (v3 == 2 || v3 == 3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (a3 >> 4)
    {
      goto LABEL_15;
    }

    sub_1C7C15F78(a1, a2, a3);
  }
}

unint64_t sub_1C7C21318()
{
  result = qword_1EC264330;
  if (!qword_1EC264330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264330);
  }

  return result;
}

uint64_t sub_1C7C2136C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264340, &qword_1C7C8F998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C7C213E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1C7C21444(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
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

uint64_t sub_1C7C214C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C7C214E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1C7C21540()
{
  result = qword_1EC264348;
  if (!qword_1EC264348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264348);
  }

  return result;
}