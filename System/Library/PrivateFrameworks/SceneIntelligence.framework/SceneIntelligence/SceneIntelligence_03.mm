unint64_t sub_21DE685B0()
{
  result = qword_27CE95820;
  if (!qword_27CE95820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95820);
  }

  return result;
}

unint64_t sub_21DE68604()
{
  result = qword_27CE95828;
  if (!qword_27CE95828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95828);
  }

  return result;
}

unint64_t sub_21DE68658()
{
  result = qword_27CE95830;
  if (!qword_27CE95830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95830);
  }

  return result;
}

unint64_t sub_21DE686AC()
{
  result = qword_27CE95838;
  if (!qword_27CE95838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95838);
  }

  return result;
}

unint64_t sub_21DE68700()
{
  result = qword_27CE95840[0];
  if (!qword_27CE95840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE95840);
  }

  return result;
}

unint64_t sub_21DE68758()
{
  result = qword_280F7A6F0;
  if (!qword_280F7A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7A6F0);
  }

  return result;
}

unint64_t sub_21DE687B0()
{
  result = qword_27CE94208;
  if (!qword_27CE94208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94208);
  }

  return result;
}

uint64_t sub_21DE6884C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_21DE68898()
{
  result = qword_27CE94220;
  if (!qword_27CE94220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94220);
  }

  return result;
}

unint64_t sub_21DE688F4()
{
  result = qword_27CE94228;
  if (!qword_27CE94228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94228);
  }

  return result;
}

unint64_t sub_21DE6894C()
{
  result = qword_27CE94230;
  if (!qword_27CE94230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94230);
  }

  return result;
}

unint64_t sub_21DE689A4()
{
  result = qword_27CE94238;
  if (!qword_27CE94238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94238);
  }

  return result;
}

unint64_t sub_21DE689FC()
{
  result = qword_27CE94240;
  if (!qword_27CE94240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94240);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_21DE68A70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 18))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 7) & 0x7C | (*(a1 + 16) >> 14)) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21DE68AC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 0x1F) - 32 * a2) << 9;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21DE68B6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 34))
  {
    return (*a1 + 121);
  }

  v3 = ((*(a1 + 32) >> 6) & 0x78 | (*(a1 + 32) >> 13)) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21DE68BC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 121;
    *(result + 8) = 0;
    if (a3 >= 0x79)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (((-a2 >> 3) & 0xF) - 16 * a2) << 9;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21DE68C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21DE68CC8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_21DE68D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21DE68DC8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_21DE68E48(uint64_t a1)
{
  sub_21DE69558(319, &qword_280F7AB48, MEMORY[0x277D0E588]);
  if (v1 <= 0x3F)
  {
    sub_21DE69558(319, &qword_280F7AB50, MEMORY[0x277D0E560]);
    if (v2 <= 0x3F)
    {
      sub_21DEC6C30();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t dispatch thunk of PromptFormatting.formatPrompt(input:sanitizerResource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21DE69070;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21DE69070(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
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

uint64_t sub_21DE69210(uint64_t a1, unsigned int a2)
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
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DE6924C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
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

uint64_t sub_21DE69298(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_21DE692E4(uint64_t a1, int a2)
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

uint64_t sub_21DE6932C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21DE6939C(uint64_t *a1, int a2)
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

uint64_t sub_21DE693E4(uint64_t result, int a2, int a3)
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

void sub_21DE6945C(uint64_t a1)
{
  sub_21DEC6B90();
  if (v1 <= 0x3F)
  {
    sub_21DEC6B70();
    if (v2 <= 0x3F)
    {
      sub_21DE69558(319, &qword_280F7A6E8, MEMORY[0x277D0E698]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21DE69558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DEC71C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21DE695AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21DE695FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21DE69650(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_21DE69668(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for ImageFormat(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageFormat(uint64_t result, int a2, int a3)
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

uint64_t sub_21DE696E8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DE69704(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageMargin(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ImageMargin(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_21DE69800(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_21DE69848(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for BoundingBox.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BoundingBox.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AFMChunk.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AFMChunk.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for StructuredText.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StructuredText.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SceneObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SceneObject.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Event.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Event.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_21DE6A0A0()
{
  result = qword_27CE96660[0];
  if (!qword_27CE96660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96660);
  }

  return result;
}

unint64_t sub_21DE6A0F8()
{
  result = qword_27CE96770[0];
  if (!qword_27CE96770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96770);
  }

  return result;
}

unint64_t sub_21DE6A150()
{
  result = qword_27CE96880[0];
  if (!qword_27CE96880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96880);
  }

  return result;
}

unint64_t sub_21DE6A1A8()
{
  result = qword_27CE96990[0];
  if (!qword_27CE96990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96990);
  }

  return result;
}

unint64_t sub_21DE6A200()
{
  result = qword_27CE96BA0[0];
  if (!qword_27CE96BA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96BA0);
  }

  return result;
}

unint64_t sub_21DE6A258()
{
  result = qword_27CE96DB0[0];
  if (!qword_27CE96DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96DB0);
  }

  return result;
}

unint64_t sub_21DE6A2B0()
{
  result = qword_27CE96FC0[0];
  if (!qword_27CE96FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96FC0);
  }

  return result;
}

unint64_t sub_21DE6A308()
{
  result = qword_27CE971D0[0];
  if (!qword_27CE971D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE971D0);
  }

  return result;
}

unint64_t sub_21DE6A360()
{
  result = qword_27CE973E0[0];
  if (!qword_27CE973E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE973E0);
  }

  return result;
}

unint64_t sub_21DE6A3B8()
{
  result = qword_27CE975F0;
  if (!qword_27CE975F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE975F0);
  }

  return result;
}

unint64_t sub_21DE6A410()
{
  result = qword_27CE97800[0];
  if (!qword_27CE97800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE97800);
  }

  return result;
}

unint64_t sub_21DE6A468()
{
  result = qword_27CE97A10[0];
  if (!qword_27CE97A10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE97A10);
  }

  return result;
}

unint64_t sub_21DE6A4C0()
{
  result = qword_27CE97C20[0];
  if (!qword_27CE97C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE97C20);
  }

  return result;
}

unint64_t sub_21DE6A518()
{
  result = qword_27CE98230[0];
  if (!qword_27CE98230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE98230);
  }

  return result;
}

unint64_t sub_21DE6A570()
{
  result = qword_27CE98640[0];
  if (!qword_27CE98640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE98640);
  }

  return result;
}

unint64_t sub_21DE6A5C8()
{
  result = qword_27CE98850[0];
  if (!qword_27CE98850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE98850);
  }

  return result;
}

unint64_t sub_21DE6A620()
{
  result = qword_27CE98A60[0];
  if (!qword_27CE98A60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE98A60);
  }

  return result;
}

unint64_t sub_21DE6A678()
{
  result = qword_27CE98C70[0];
  if (!qword_27CE98C70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE98C70);
  }

  return result;
}

unint64_t sub_21DE6A6D0()
{
  result = qword_27CE98E80[0];
  if (!qword_27CE98E80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE98E80);
  }

  return result;
}

unint64_t sub_21DE6A728()
{
  result = qword_27CE99090[0];
  if (!qword_27CE99090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99090);
  }

  return result;
}

unint64_t sub_21DE6A780()
{
  result = qword_27CE994A0[0];
  if (!qword_27CE994A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE994A0);
  }

  return result;
}

unint64_t sub_21DE6A7D8()
{
  result = qword_27CE995B0;
  if (!qword_27CE995B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE995B0);
  }

  return result;
}

unint64_t sub_21DE6A830()
{
  result = qword_27CE995B8[0];
  if (!qword_27CE995B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE995B8);
  }

  return result;
}

unint64_t sub_21DE6A888()
{
  result = qword_27CE99640;
  if (!qword_27CE99640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99640);
  }

  return result;
}

unint64_t sub_21DE6A8E0()
{
  result = qword_27CE99648[0];
  if (!qword_27CE99648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99648);
  }

  return result;
}

unint64_t sub_21DE6A938()
{
  result = qword_27CE996D0;
  if (!qword_27CE996D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE996D0);
  }

  return result;
}

unint64_t sub_21DE6A990()
{
  result = qword_27CE996D8[0];
  if (!qword_27CE996D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE996D8);
  }

  return result;
}

unint64_t sub_21DE6A9E8()
{
  result = qword_27CE99760;
  if (!qword_27CE99760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99760);
  }

  return result;
}

unint64_t sub_21DE6AA40()
{
  result = qword_27CE99768[0];
  if (!qword_27CE99768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99768);
  }

  return result;
}

unint64_t sub_21DE6AA98()
{
  result = qword_27CE997F0;
  if (!qword_27CE997F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE997F0);
  }

  return result;
}

unint64_t sub_21DE6AAF0()
{
  result = qword_27CE997F8[0];
  if (!qword_27CE997F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE997F8);
  }

  return result;
}

unint64_t sub_21DE6AB48()
{
  result = qword_27CE99880;
  if (!qword_27CE99880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99880);
  }

  return result;
}

unint64_t sub_21DE6ABA0()
{
  result = qword_27CE99888[0];
  if (!qword_27CE99888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99888);
  }

  return result;
}

unint64_t sub_21DE6ABF8()
{
  result = qword_27CE99910;
  if (!qword_27CE99910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99910);
  }

  return result;
}

unint64_t sub_21DE6AC50()
{
  result = qword_27CE99918[0];
  if (!qword_27CE99918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99918);
  }

  return result;
}

unint64_t sub_21DE6ACA8()
{
  result = qword_27CE999A0;
  if (!qword_27CE999A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE999A0);
  }

  return result;
}

unint64_t sub_21DE6AD00()
{
  result = qword_27CE999A8[0];
  if (!qword_27CE999A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE999A8);
  }

  return result;
}

unint64_t sub_21DE6AD58()
{
  result = qword_27CE99A30;
  if (!qword_27CE99A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99A30);
  }

  return result;
}

unint64_t sub_21DE6ADB0()
{
  result = qword_27CE99A38[0];
  if (!qword_27CE99A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99A38);
  }

  return result;
}

unint64_t sub_21DE6AE08()
{
  result = qword_27CE99AC0;
  if (!qword_27CE99AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99AC0);
  }

  return result;
}

unint64_t sub_21DE6AE60()
{
  result = qword_27CE99AC8[0];
  if (!qword_27CE99AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99AC8);
  }

  return result;
}

unint64_t sub_21DE6AEB8()
{
  result = qword_27CE99B50;
  if (!qword_27CE99B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99B50);
  }

  return result;
}

unint64_t sub_21DE6AF10()
{
  result = qword_27CE99B58[0];
  if (!qword_27CE99B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99B58);
  }

  return result;
}

unint64_t sub_21DE6AF68()
{
  result = qword_27CE99BE0;
  if (!qword_27CE99BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99BE0);
  }

  return result;
}

unint64_t sub_21DE6AFC0()
{
  result = qword_27CE99BE8[0];
  if (!qword_27CE99BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99BE8);
  }

  return result;
}

unint64_t sub_21DE6B018()
{
  result = qword_27CE99C70;
  if (!qword_27CE99C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99C70);
  }

  return result;
}

unint64_t sub_21DE6B070()
{
  result = qword_27CE99C78;
  if (!qword_27CE99C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99C78);
  }

  return result;
}

unint64_t sub_21DE6B0C8()
{
  result = qword_27CE99D00;
  if (!qword_27CE99D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99D00);
  }

  return result;
}

unint64_t sub_21DE6B120()
{
  result = qword_27CE99D08[0];
  if (!qword_27CE99D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99D08);
  }

  return result;
}

unint64_t sub_21DE6B178()
{
  result = qword_27CE99D90;
  if (!qword_27CE99D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99D90);
  }

  return result;
}

unint64_t sub_21DE6B1D0()
{
  result = qword_27CE99D98[0];
  if (!qword_27CE99D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99D98);
  }

  return result;
}

unint64_t sub_21DE6B228()
{
  result = qword_27CE99E20;
  if (!qword_27CE99E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99E20);
  }

  return result;
}

unint64_t sub_21DE6B280()
{
  result = qword_27CE99E28[0];
  if (!qword_27CE99E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99E28);
  }

  return result;
}

unint64_t sub_21DE6B2D8()
{
  result = qword_27CE99EB0;
  if (!qword_27CE99EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99EB0);
  }

  return result;
}

unint64_t sub_21DE6B330()
{
  result = qword_27CE99EB8[0];
  if (!qword_27CE99EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99EB8);
  }

  return result;
}

unint64_t sub_21DE6B388()
{
  result = qword_27CE99F40;
  if (!qword_27CE99F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99F40);
  }

  return result;
}

unint64_t sub_21DE6B3E0()
{
  result = qword_27CE99F48[0];
  if (!qword_27CE99F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99F48);
  }

  return result;
}

unint64_t sub_21DE6B438()
{
  result = qword_27CE99FD0;
  if (!qword_27CE99FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99FD0);
  }

  return result;
}

unint64_t sub_21DE6B490()
{
  result = qword_27CE99FD8[0];
  if (!qword_27CE99FD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99FD8);
  }

  return result;
}

unint64_t sub_21DE6B4E8()
{
  result = qword_27CE9A060;
  if (!qword_27CE9A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9A060);
  }

  return result;
}

unint64_t sub_21DE6B540()
{
  result = qword_27CE9A068[0];
  if (!qword_27CE9A068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A068);
  }

  return result;
}

unint64_t sub_21DE6B598()
{
  result = qword_27CE9A0F0;
  if (!qword_27CE9A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9A0F0);
  }

  return result;
}

unint64_t sub_21DE6B5F0()
{
  result = qword_27CE9A0F8[0];
  if (!qword_27CE9A0F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A0F8);
  }

  return result;
}

unint64_t sub_21DE6B648()
{
  result = qword_27CE9A180;
  if (!qword_27CE9A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9A180);
  }

  return result;
}

unint64_t sub_21DE6B6A0()
{
  result = qword_27CE9A188[0];
  if (!qword_27CE9A188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A188);
  }

  return result;
}

unint64_t sub_21DE6B6F8()
{
  result = qword_27CE9A210;
  if (!qword_27CE9A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9A210);
  }

  return result;
}

unint64_t sub_21DE6B750()
{
  result = qword_27CE9A218[0];
  if (!qword_27CE9A218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A218);
  }

  return result;
}

unint64_t sub_21DE6B7A8()
{
  result = qword_27CE9A2A0;
  if (!qword_27CE9A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9A2A0);
  }

  return result;
}

unint64_t sub_21DE6B800()
{
  result = qword_27CE9A2A8[0];
  if (!qword_27CE9A2A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A2A8);
  }

  return result;
}

unint64_t sub_21DE6B858()
{
  result = qword_27CE9A330;
  if (!qword_27CE9A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9A330);
  }

  return result;
}

unint64_t sub_21DE6B8B0()
{
  result = qword_27CE9A338[0];
  if (!qword_27CE9A338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A338);
  }

  return result;
}

unint64_t sub_21DE6B908()
{
  result = qword_280F7B1C0;
  if (!qword_280F7B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B1C0);
  }

  return result;
}

unint64_t sub_21DE6B960()
{
  result = qword_280F7B1C8[0];
  if (!qword_280F7B1C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F7B1C8);
  }

  return result;
}

unint64_t sub_21DE6B9B8()
{
  result = qword_280F7B020;
  if (!qword_280F7B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B020);
  }

  return result;
}

unint64_t sub_21DE6BA10()
{
  result = qword_280F7B028;
  if (!qword_280F7B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B028);
  }

  return result;
}

unint64_t sub_21DE6BA68()
{
  result = qword_280F7B370[0];
  if (!qword_280F7B370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F7B370);
  }

  return result;
}

unint64_t sub_21DE6BAC0()
{
  result = qword_280F7B368;
  if (!qword_280F7B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B368);
  }

  return result;
}

unint64_t sub_21DE6BB18()
{
  result = qword_280F7B500;
  if (!qword_280F7B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B500);
  }

  return result;
}

unint64_t sub_21DE6BB70()
{
  result = qword_280F7B508;
  if (!qword_280F7B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B508);
  }

  return result;
}

uint64_t sub_21DE6BBC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7275746375727473 && a2 == 0xEE00747865546465;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6F4374786574 && a2 == 0xEF6D657449746E65 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x800000021DED97F0 == a2 || (sub_21DEC7610() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021DED9820 == a2 || (sub_21DEC7610() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021DED9840 == a2 || (sub_21DEC7610() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x747845746E657665 && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000027 && 0x800000021DED9860 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_21DE6BE68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7275746375727473 && a2 == 0xEE00747865546465;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6F4374786574 && a2 == 0xEF6D657449746E65 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x800000021DED97F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21DEC7610();

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

uint64_t sub_21DE6BFE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 6778986 && a2 == 0xE300000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6778480 && a2 == 0xE300000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7275536567616D69 && a2 == 0xEC00000065636166)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

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

uint64_t sub_21DE6C0F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x65766974616C6572 && a2 == 0xEE00706F72436F54;
  if (v3 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766974616C6572 && a2 == 0xEF6567616D496F54 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

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

void ModelInformation.log(logger:)()
{
  v0 = sub_21DEC6B10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94248, &qword_21DED0148);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = sub_21DEC6AE0();
  v12 = 0xE000000000000000;
  if (v11)
  {
    v13 = v10;
    v31 = 0;
    v32 = 0xE000000000000000;
    v14 = v11;

    sub_21DEC72F0();

    v31 = 0xD000000000000011;
    v32 = 0x800000021DED98B0;
    MEMORY[0x223D4B2A0](v13, v14);
    swift_bridgeObjectRelease_n();
    v15 = v31;
    v12 = v32;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_21DEC6B20();
  if (*(v16 + 16))
  {
    (*(v1 + 16))(v9, v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 56))(v9, 0, 1, v0);
  }

  else
  {

    (*(v1 + 56))(v9, 1, 1, v0);
  }

  sub_21DE6C6F0(v9, v7);
  if ((*(v1 + 48))(v7, 1, v0) == 1)
  {
    sub_21DE6C760(v9);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    (*(v1 + 32))(v3, v7, v0);
    v31 = sub_21DEC6AF0();
    v32 = v19;
    v20 = 0xE300000000000000;
    MEMORY[0x223D4B2A0](3044896, 0xE300000000000000);
    v21 = sub_21DEC6B00();
    if (v22)
    {
      v20 = v22;
    }

    else
    {
      v21 = 4144959;
    }

    MEMORY[0x223D4B2A0](v21, v20);

    v17 = v31;
    v18 = v32;
    (*(v1 + 8))(v3, v0);
    sub_21DE6C760(v9);
  }

  v23 = sub_21DEC6D00();
  v24 = sub_21DEC7190();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v25 = 136315394;
    if (v18)
    {
      v27 = v17;
    }

    else
    {
      v27 = 0x206E776F6E6B6E55;
    }

    if (v18)
    {
      v28 = v18;
    }

    else
    {
      v28 = 0xED00007465737361;
    }

    v29 = sub_21DE56544(v27, v28, &v31);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v30 = sub_21DE56544(v15, v12, &v31);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_21DE0D000, v23, v24, "making a request to %s%s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D4D340](v26, -1, -1);
    MEMORY[0x223D4D340](v25, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21DE6C6F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94248, &qword_21DED0148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DE6C760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94248, &qword_21DED0148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DE6C7C8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_21DEC7590();
  }

  return result;
}

uint64_t sub_21DE6C7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21DEC70B0();
  swift_getWitnessTable();
  result = sub_21DEC7170();
  if ((result & 1) == 0)
  {
    swift_getWitnessTable();
    return sub_21DEC75D0();
  }

  return result;
}

uint64_t sub_21DE6C8D8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94250, &qword_21DED0EB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;

  EventDateTimeComponents.init(string:)(a1, a2, v10);
  if (v4)
  {

    v11 = type metadata accessor for EventDateTimeComponents(0);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    sub_21DE6CA98(v10);
    a1 = 0;
    a2 = 0xE000000000000000;
    if (a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = type metadata accessor for EventDateTimeComponents(0);
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
    sub_21DE6CA98(v10);

    if (a4)
    {
LABEL_8:
      sub_21DEC7590();
    }
  }

  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    goto LABEL_8;
  }
}

uint64_t sub_21DE6CA98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94250, &qword_21DED0EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL BoundingBox.isValid.getter()
{
  if (*v0)
  {
    v1 = 0;
  }

  else
  {
    v1 = v0[1] == 0;
  }

  return !v1 || v0[2] != 0 || v0[3] != 0;
}

uint64_t BoundingBox.description.getter()
{
  sub_21DEC72F0();

  v0 = sub_21DEC7600();
  MEMORY[0x223D4B2A0](v0);

  MEMORY[0x223D4B2A0](0x203A78616D78202CLL, 0xE800000000000000);
  v1 = sub_21DEC7600();
  MEMORY[0x223D4B2A0](v1);

  MEMORY[0x223D4B2A0](0x203A6E696D79202CLL, 0xE800000000000000);
  v2 = sub_21DEC7600();
  MEMORY[0x223D4B2A0](v2);

  MEMORY[0x223D4B2A0](0x203A78616D79202CLL, 0xE800000000000000);
  v3 = sub_21DEC7600();
  MEMORY[0x223D4B2A0](v3);

  return 0x203A6E696D78;
}

SceneIntelligence::BoundingBox __swiftcall BoundingBox.init(xmin:ymin:xmax:ymax:)(Swift::Int xmin, Swift::Int ymin, Swift::Int xmax, Swift::Int ymax)
{
  *v4 = xmin;
  v4[1] = ymin;
  v4[2] = xmax;
  v4[3] = ymax;
  result.ymax = ymax;
  result.xmax = xmax;
  result.ymin = ymin;
  result.xmin = xmin;
  return result;
}

uint64_t sub_21DE6CD90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE6FCC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE6CDB8(uint64_t a1)
{
  v2 = sub_21DE6D008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE6CDF4(uint64_t a1)
{
  v2 = sub_21DE6D008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BoundingBox.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94258, &qword_21DED0160);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE6D008();
  sub_21DEC7810();
  v15 = 0;
  sub_21DEC75C0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = 1;
  sub_21DEC75C0();
  v13 = 2;
  sub_21DEC75C0();
  v12 = 3;
  sub_21DEC75C0();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_21DE6D008()
{
  result = qword_27CE9A3C0[0];
  if (!qword_27CE9A3C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A3C0);
  }

  return result;
}

uint64_t BoundingBox.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94260, &qword_21DED0168);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE6D008();
  sub_21DEC77E0();
  if (!v2)
  {
    v18 = 0;
    v9 = sub_21DEC7500();
    v17 = 1;
    v10 = sub_21DEC7500();
    v16 = 2;
    v14 = sub_21DEC7500();
    v15 = 3;
    v13 = sub_21DEC7500();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    v12 = v13;
    a2[2] = v14;
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21DE6D27C()
{
  v1 = 0x6E69646E756F7267;
  if (*v0 != 1)
  {
    v1 = 0x746E6F4374786574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_21DE6D2E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE6FE1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE6D30C(uint64_t a1)
{
  v2 = sub_21DE6FF40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE6D348(uint64_t a1)
{
  v2 = sub_21DE6FF40();

  return MEMORY[0x2821FE720](a1, v2);
}

SceneIntelligence::SceneObject::Category_optional __swiftcall SceneObject.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SceneObject.Category.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0x74706965636552;
    v7 = 0xD000000000000011;
    if (v1 != 10)
    {
      v7 = 0x726568744FLL;
    }

    if (v1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x696C20726568744FLL;
    v9 = 1766222167;
    if (v1 != 7)
    {
      v9 = 0xD000000000000010;
    }

    if (v1 != 6)
    {
      v8 = v9;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x637320746E657645;
    v3 = 0x73696C206F646F54;
    v4 = 0x676E6970706F6853;
    if (v1 != 4)
    {
      v4 = 0xD000000000000010;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    if (v1 != 1)
    {
      v2 = 0xD000000000000013;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000011;
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
}

uint64_t sub_21DE6D58C()
{
  v0 = SceneObject.Category.rawValue.getter();
  v2 = v1;
  if (v0 == SceneObject.Category.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21DEC7610();
  }

  return v5 & 1;
}

uint64_t sub_21DE6D628()
{
  sub_21DEC7770();
  SceneObject.Category.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE6D690(uint64_t a1)
{
  SceneObject.Category.rawValue.getter();
  sub_21DEC6E90();
}

uint64_t sub_21DE6D6F4(uint64_t a1)
{
  sub_21DEC7770();
  SceneObject.Category.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

unint64_t sub_21DE6D764@<X0>(unint64_t *a1@<X8>)
{
  result = SceneObject.Category.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_21DE6D84C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21DE6D8A8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 112))(&v4);
}

uint64_t sub_21DE6D900@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_21DE6D944(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

double sub_21DE6D9D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 128))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE6DA30(_OWORD *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return (*(*v2 + 136))(v5);
}

__n128 sub_21DE6DA88@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_21DE6DAD0(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  return result;
}

uint64_t sub_21DE6DB18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE6DB64(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 160);

  return v2(v3);
}

uint64_t sub_21DE6DBF0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

BOOL sub_21DE6DC88()
{
  v1 = (*(*v0 + 152))();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_15:
    v4 = sub_21DEC7400();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D4B690](v5, v2);
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v7 = *(v2 + 8 * v5 + 32);

      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    v8 = (*(*v7 + 120))();

    v5 = v6 + 1;
  }

  while ((v8 & 1) == 0);

  return v4 != v6;
}

unint64_t sub_21DE6DDB4()
{
  (*(*v0 + 104))(&v23);
  v1 = SceneObject.Category.rawValue.getter();
  v27 = sub_21DEBCAD8(0x79726F6765746163, 0xE800000000000000, v1, v2);
  v28 = v3;
  v4 = *(*v0 + 128);
  v5 = v4(&v23);
  if (v23)
  {
    v6 = 0;
  }

  else
  {
    v6 = v24 == 0;
  }

  v7 = v6 && v25 == 0;
  if (!v7 || v26)
  {
    (v4)(&v23, v5);
    v8 = BoundingBox.description.getter();
    v10 = sub_21DEBCAD8(0x6E69646E756F7267, 0xE900000000000067, v8, v9);
    MEMORY[0x223D4B2A0](v10);
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  result = (*(*v0 + 152))(v5);
  v12 = result;
  if (!(result >> 62))
  {
    v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_21:

    v17 = 0;
    v16 = 0xE000000000000000;
LABEL_22:
    v18 = sub_21DEBCBBC();
    v19 = sub_21DEBCBC4(v18, v17, v16);
    v21 = v20;

    v22 = sub_21DEBCAD8(0x746E6F4374786574, 0xEB00000000746E65, v19, v21);
    MEMORY[0x223D4B2A0](v22);

    return v27;
  }

  result = sub_21DEC7400();
  v13 = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_13:
  if (v13 >= 1)
  {
    v14 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D4B690](v14, v12);
      }

      else
      {
      }

      ++v14;
      type metadata accessor for TextContentItem();
      sub_21DE70268(&qword_27CE94268, 255, type metadata accessor for TextContentItem, &protocol conformance descriptor for TextContentItem);
      v15 = sub_21DEC7600();
      MEMORY[0x223D4B2A0](v15);

      MEMORY[0x223D4B2A0](10, 0xE100000000000000);
    }

    while (v13 != v14);

    v16 = v24;
    v17 = v23;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t SceneObject.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SceneObject.init(from:)(a1);
  return v2;
}

uint64_t SceneObject.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94270, &qword_21DED0170);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24.i8[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE6FF40();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for SceneObject();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27.i8[0] = 0;
    v9 = sub_21DEC74A0();
    if (!v10)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    SceneObject.Category.init(rawValue:)(*&v9);
    v11 = v27.u8[0];
    if (v27.u8[0] == 12)
    {
      v12 = 11;
    }

    else
    {
      v12 = v27.i8[0];
    }

    *(v1 + 16) = v12;
    v26 = 1;
    sub_21DE6FFB8();
    sub_21DEC74E0();
    v24.i64[0] = v1 + 16;
    v13 = v28;
    v25.i32[0] = v29;
    if (v29)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    v15 = vdupq_n_s64(v14);
    *(v1 + 24) = vbicq_s8(v27, v15);
    *(v1 + 40) = vbicq_s8(v13, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94288, &qword_21DED0178);
    v26 = 2;
    sub_21DE700B4(&qword_27CE94290, &qword_27CE94298, &protocol conformance descriptor for TextContentItem, MEMORY[0x277D83978]);
    sub_21DEC74E0();
    v17 = v27.i64[0];
    if (!v27.i64[0])
    {
      v17 = MEMORY[0x277D84F90];
    }

    *(v1 + 56) = v17;
    if (v11 == 12)
    {
      sub_21DEA3C6C(a1, v27.i8);
      if (v27.u8[0] == 12)
      {
        v18 = 11;
      }

      else
      {
        v18 = v27.i8[0];
      }

      v19 = v24.i64[0];
      swift_beginAccess();
      *v19 = v18;
    }

    if (v25.i32[0])
    {
      v20 = sub_21DEA3EBC(a1, &v27);
      (*(v6 + 8))(v8, v5, v20);
      if (v29)
      {
        v21 = -1;
      }

      else
      {
        v21 = 0;
      }

      v22 = vdupq_n_s64(v21);
      v24 = vbicq_s8(v28, v22);
      v25 = vbicq_s8(v27, v22);
      swift_beginAccess();
      v23 = v24;
      *(v3 + 24) = v25;
      *(v3 + 40) = v23;
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

__n128 SceneObject.__allocating_init(category:grounding:textContent:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = *a1;
  result = *a2;
  v8 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v8;
  *(v6 + 56) = a3;
  return result;
}

uint64_t SceneObject.init(category:grounding:textContent:)(_BYTE *a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 16) = *a1;
  v4 = a2[1];
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t sub_21DE6E528(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE942A0, &unk_21DED0180);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE6FF40();
  v10 = sub_21DEC7810();
  (*(*v4 + 104))(&v30, v10);
  LOBYTE(v28) = 0;
  sub_21DE7000C();
  v11 = sub_21DEC75D0();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v26 = v7;
  v27 = v6;
  v13 = *(*v4 + 128);
  v14 = v13(&v30, v11);
  if (v30 == 0 && __PAIR128__(v31, 0) == *(&v31 + 1))
  {
    v15 = v27;
  }

  else
  {
    v13(&v30, v14);
    v28 = v30;
    v29 = v31;
    v32 = 1;
    sub_21DE70060();
    v15 = v27;
    v14 = sub_21DEC75D0();
  }

  v16 = (*(*v4 + 152))(v14);
  v17 = v16;
  *&v30 = MEMORY[0x277D84F90];
  if (v16 >> 62)
  {
LABEL_22:
    v18 = sub_21DEC7400();
    if (v18)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_9:
      v24 = v3;
      v25 = v9;
      v19 = 0;
      v15 = v17 & 0xC000000000000001;
      v3 = v17 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v9 = MEMORY[0x223D4B690](v19, v17);
          v20 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v21 = v30;
            v15 = v27;
            v9 = v25;
            goto LABEL_24;
          }
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_22;
          }

          v9 = *(v17 + 8 * v19 + 32);

          v20 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v9 + 120))())
        {
          sub_21DEC7380();
          sub_21DEC73A0();
          sub_21DEC73B0();
          sub_21DEC7390();
        }

        else
        {
        }

        ++v19;
        if (v20 == v18)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_24:

  if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
  {
    v23 = sub_21DEC7400();
    v22 = v26;
    if (!v23)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v22 = v26;
  if (*(v21 + 16))
  {
LABEL_27:
    *&v30 = v21;
    LOBYTE(v28) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94288, &qword_21DED0178);
    sub_21DE700B4(&qword_27CE942B8, &qword_27CE942C0, &protocol conformance descriptor for TextContentItem, MEMORY[0x277D83948]);
    sub_21DEC75D0();
  }

LABEL_28:
  (*(v22 + 8))(v9, v15);
}

uint64_t SceneObject.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_21DE6E9EC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 192))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE6EAB0()
{
  if (*v0)
  {
    return 0x737463656A626FLL;
  }

  else
  {
    return 0x6E6F6974706163;
  }
}

uint64_t sub_21DE6EAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737463656A626FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DE6EBC0(uint64_t a1)
{
  v2 = sub_21DE70178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE6EBFC(uint64_t a1)
{
  v2 = sub_21DE70178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE6EC38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE6EC84(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_21DE6ECEC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21DE6ED38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_21DE6ED8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE6EDD8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

unint64_t sub_21DE6EE2C()
{
  v1 = (*(*v0 + 96))();
  v14 = sub_21DEBCAD8(0x6E6F6974706163, 0xE700000000000000, v1, v2);
  result = (*(*v0 + 120))();
  v4 = result;
  if (!(result >> 62))
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:

    v9 = sub_21DEBCBBC();
    v10 = sub_21DEBCBC4(v9, 0, 0xE000000000000000);
    v12 = v11;

    v13 = sub_21DEBCAD8(0x6A624F656E656373, 0xEC00000073746365, v10, v12);
    MEMORY[0x223D4B2A0](v13);

    return v14;
  }

  result = sub_21DEC7400();
  v5 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D4B690](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      ++v6;
      v8 = (*(*v7 + 184))();
      MEMORY[0x223D4B2A0](v8);

      MEMORY[0x223D4B2A0](10, 0xE100000000000000);
    }

    while (v5 != v6);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

BOOL sub_21DE6F048()
{
  v1 = (*(*v0 + 120))();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_15:
    v4 = sub_21DEC7400();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D4B690](v5, v2);
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v7 = *(v2 + 8 * v5 + 32);

      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    v8 = (*(*v7 + 176))();

    v5 = v6 + 1;
  }

  while ((v8 & 1) == 0);

  return v4 != v6;
}

uint64_t sub_21DE6F174()
{
  v0 = sub_21DEC66F0();
  MEMORY[0x28223BE20](v0);
  sub_21DEC6730();
  swift_allocObject();
  sub_21DEC6720();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FE8, &unk_21DECD590);
  *(swift_allocObject() + 16) = xmmword_21DED0150;
  sub_21DEC66E0();
  sub_21DEC66D0();
  sub_21DE70268(&unk_280F7AB60, 255, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FF0, &qword_21DED0190);
  sub_21DE6884C(&qword_280F7A6E0, &qword_27CE93FF0, &qword_21DED0190, MEMORY[0x277D83970]);
  sub_21DEC7280();
  sub_21DEC6700();
  type metadata accessor for StructuredText();
  sub_21DE70268(&qword_27CE93FE0, v1, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
  v2 = sub_21DEC6710();

  return v2;
}

void *StructuredText.__allocating_init(caption:sceneObjects:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *StructuredText.init(caption:sceneObjects:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t StructuredText.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  StructuredText.init(from:)(a1);
  return v2;
}

void *StructuredText.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE942C8, &qword_21DED0198);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE70178();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for StructuredText();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25) = 0;
    v9 = sub_21DEC74A0();
    v11 = v10;
    if (v10)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = 0xE000000000000000;
    if (v10)
    {
      v13 = v10;
    }

    v1[2] = v12;
    v1[3] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE942D8, &qword_21DED01A0);
    v24 = 1;
    sub_21DE701CC(&qword_27CE942E0, &qword_27CE942E8, &protocol conformance descriptor for SceneObject, MEMORY[0x277D83978]);

    sub_21DEC74E0();
    if (v25)
    {
      v1[4] = v25;
      if (v11)
      {
LABEL_12:

        (*(v6 + 8))(v8, v5);
        goto LABEL_9;
      }
    }

    else
    {
      v1[4] = MEMORY[0x277D84F90];
      v26 = v1 + 4;
      v15 = sub_21DEA4260(a1);
      v16 = MEMORY[0x277D84F90];
      if (v15)
      {
        v16 = v15;
      }

      v23 = v16;
      v17 = v26;
      swift_beginAccess();
      *v17 = v23;

      if (v11)
      {
        goto LABEL_12;
      }
    }

    v18 = sub_21DEA43DC(a1);
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    (*(v6 + 8))(v8, v5);
    swift_beginAccess();
    v3[2] = v20;
    v3[3] = v21;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_21DE6F7F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE942F0, &qword_21DED01A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE70178();
  v9 = sub_21DEC7810();
  (*(*v3 + 96))(v9);
  LOBYTE(v25) = 0;
  sub_21DEC7590();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  v23 = v6;

  v12 = (*(*v3 + 120))(v11);
  v13 = v12;
  v25 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_18;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
LABEL_5:
    v20[1] = 0;
    v21 = v8;
    v22 = v5;
    v15 = 0;
    v5 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D4B690](v15, v13);
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v17 = v25;
          v8 = v21;
          v5 = v22;
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_18:
          v14 = sub_21DEC7400();
          if (!v14)
          {
            break;
          }

          goto LABEL_5;
        }

        v8 = *(v13 + 8 * v15 + 32);

        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_15;
        }
      }

      if ((*(*v8 + 176))())
      {
        sub_21DEC7380();
        sub_21DEC73A0();
        sub_21DEC73B0();
        sub_21DEC7390();
      }

      else
      {
      }

      ++v15;
      if (v16 == v14)
      {
        goto LABEL_16;
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_20:

  v24 = 1;
  if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
  {
    v19 = sub_21DEC7400();
    v18 = v23;
    if (!v19)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v18 = v23;
  if (*(v17 + 16))
  {
LABEL_23:
    v25 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE942D8, &qword_21DED01A0);
    sub_21DE701CC(&qword_27CE942F8, &qword_27CE94300, &protocol conformance descriptor for SceneObject, MEMORY[0x277D83948]);
    sub_21DEC75D0();
  }

LABEL_24:
  (*(v18 + 8))(v8, v5);
}

uint64_t StructuredText.deinit()
{

  return v0;
}

uint64_t StructuredText.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21DE6FC04@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE6FCC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852403064 && a2 == 0xE400000000000000;
  if (v3 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852403065 && a2 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2019650936 && a2 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2019650937 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21DEC7610();

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

uint64_t sub_21DE6FE1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646E756F7267 && a2 == 0xE900000000000067 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6F4374786574 && a2 == 0xEB00000000746E65)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DE6FF40()
{
  result = qword_27CE94278;
  if (!qword_27CE94278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94278);
  }

  return result;
}

unint64_t sub_21DE6FFB8()
{
  result = qword_27CE94280;
  if (!qword_27CE94280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94280);
  }

  return result;
}

unint64_t sub_21DE7000C()
{
  result = qword_27CE942A8;
  if (!qword_27CE942A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE942A8);
  }

  return result;
}

unint64_t sub_21DE70060()
{
  result = qword_27CE942B0;
  if (!qword_27CE942B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE942B0);
  }

  return result;
}

uint64_t sub_21DE700B4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94288, &qword_21DED0178);
    sub_21DE70268(a2, 255, type metadata accessor for TextContentItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DE70178()
{
  result = qword_27CE942D0;
  if (!qword_27CE942D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE942D0);
  }

  return result;
}

uint64_t sub_21DE701CC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE942D8, &qword_21DED01A0);
    sub_21DE70268(a2, v8, type metadata accessor for SceneObject, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21DE70268(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_21DE702B4()
{
  result = qword_27CE94308;
  if (!qword_27CE94308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94308);
  }

  return result;
}

unint64_t sub_21DE7030C()
{
  result = qword_27CE94310;
  if (!qword_27CE94310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94310);
  }

  return result;
}

unint64_t sub_21DE70364()
{
  result = qword_27CE94318;
  if (!qword_27CE94318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94318);
  }

  return result;
}

unint64_t sub_21DE703BC()
{
  result = qword_27CE94320;
  if (!qword_27CE94320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94320);
  }

  return result;
}

unint64_t sub_21DE70458()
{
  result = qword_27CE94338;
  if (!qword_27CE94338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94338);
  }

  return result;
}

unint64_t sub_21DE704B0()
{
  result = qword_27CE94340;
  if (!qword_27CE94340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94340);
  }

  return result;
}

unint64_t sub_21DE70508()
{
  result = qword_27CE94348;
  if (!qword_27CE94348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94348);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneObject.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneObject.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21DE70AEC()
{
  result = qword_27CE9B150[0];
  if (!qword_27CE9B150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9B150);
  }

  return result;
}

unint64_t sub_21DE70B44()
{
  result = qword_27CE9B260;
  if (!qword_27CE9B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9B260);
  }

  return result;
}

unint64_t sub_21DE70B9C()
{
  result = qword_27CE9B268[0];
  if (!qword_27CE9B268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9B268);
  }

  return result;
}

unint64_t sub_21DE70BF0()
{
  result = qword_27CE94350;
  if (!qword_27CE94350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94350);
  }

  return result;
}

uint64_t sub_21DE70C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_21DEC69D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v25 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = sub_21DEC6910();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x277CC9968];
  v23 = *(v4 + 104);
  v23(v6, v16, v3);
  sub_21DEC69A0();
  v22 = *(v4 + 8);
  v22(v6, v3);
  v24 = *(v13 + 48);
  if (v24(v11, 1, v12) == 1)
  {
    sub_21DE5CD00(v11, &qword_27CE94358, &qword_21DED08A0);
    return (*(v13 + 16))(v26, a1, v12);
  }

  else
  {
    v21 = a1;
    v20 = *(v13 + 32);
    v20(v15, v11, v12);
    v23(v6, *MEMORY[0x277CC99A8], v3);
    v18 = v25;
    sub_21DEC69A0();
    v22(v6, v3);
    (*(v13 + 8))(v15, v12);
    v19 = v24;
    if (v24(v18, 1, v12) == 1)
    {
      (*(v13 + 16))(v26, v21, v12);
      result = v19(v18, 1, v12);
      if (result != 1)
      {
        return sub_21DE5CD00(v18, &qword_27CE94358, &qword_21DED08A0);
      }
    }

    else
    {
      return (v20)(v26, v18, v12);
    }
  }

  return result;
}

void (*sub_21DE71044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>))(uint64_t *, void)
{
  v186 = a4;
  v187 = a1;
  v185 = a5;
  v182 = sub_21DEC69D0();
  v184 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v181 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v180 = (&v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v179 = (&v161 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v177 = &v161 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v171 = &v161 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v178 = (&v161 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v175 = &v161 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v176 = &v161 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v170 = &v161 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v161 - v25;
  v27 = sub_21DEC6910();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v174 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v173 = &v161 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v169 = &v161 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v165 = &v161 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v172 = &v161 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v167 = &v161 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v168 = &v161 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v164 = &v161 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v161 - v45;
  v47 = sub_21DEC69F0();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v161 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = a2;
  v199 = a3;
  v51 = a3;
  v52 = v186;
  v200 = v186;
  sub_21DEC69B0();
  sub_21DE75554(a2, v51, v52, &v195);
  v53 = v196;
  v54 = v197;
  __swift_project_boxed_opaque_existential_1(&v195, v196);
  (*(v54 + 80))(v53, v54);
  v55 = v27;
  v56 = *(v28 + 6);
  if (v56(v26, 1, v55) == 1)
  {
    v48[1](v50, v47);
    sub_21DE5CD00(v26, &qword_27CE94358, &qword_21DED08A0);
    (*(v28 + 7))(v185, 1, 1, v55);
    return __swift_destroy_boxed_opaque_existential_0(&v195);
  }

  v162 = v56;
  v163 = v47;
  v57 = v28;
  v58 = *(v28 + 4);
  v186 = v46;
  v59 = v46;
  v183 = v55;
  v60 = v58;
  v166 = v28 + 32;
  (v58)(v59, v26, v55);
  v61 = EventDateComponents.year.getter();
  v62 = EventDateComponents.month.getter();
  v63 = EventDateComponents.day.getter();
  v64 = v63;
  if (v61 && v62 && v63)
  {
    v48[1](v50, v163);
    v65 = v185;
    v66 = v185;
    v67 = v186;
LABEL_13:
    v70 = v183;
    (v60)(v66, v67, v183);
    goto LABEL_63;
  }

  v68 = v186;
  sub_21DEC68E0();
  if (v69 >= 0.0)
  {
    v48[1](v50, v163);
    v65 = v185;
    v66 = v185;
    v67 = v68;
    goto LABEL_13;
  }

  v70 = v183;
  if (v61)
  {
    if (v62)
    {
      v71 = v48;
      if (v64)
      {
        (v48[1])(v50, v163, v182);
        v65 = v185;
        (v60)(v185, v186, v70);
LABEL_63:
        (v57[7])(v65, 0, 1, v70);
        return __swift_destroy_boxed_opaque_existential_0(&v195);
      }

      v161 = v50;
      sub_21DE5CC9C(&v195, &v192);
      v95 = v193;
      v96 = v194;
      __swift_mutable_project_boxed_opaque_existential_1(&v192, v193);
      result = (*(v96 + 72))(&v189, v95, v96);
      if (!__OFADD__(*v97, 1))
      {
        v76 = v60;
        ++*v97;
        result(&v189, 0);
        v98 = v193;
        v99 = v194;
        __swift_project_boxed_opaque_existential_1(&v192, v193);
        v89 = v180;
        (*(v99 + 80))(v98, v99);
        v70 = v183;
        v100 = v162(v89, 1, v183);
        v81 = v186;
        if (v100 == 1)
        {
          goto LABEL_26;
        }

        v90 = v174;
        (v60)(v174, v89, v70);
        v91 = v70;
        sub_21DEC68E0();
        v125 = v126;
        v71[1](v161, v163);
LABEL_40:
        v94 = v57[1];
        v65 = v185;
        if (v125 >= 0.0)
        {
LABEL_41:
          v94(v81, v91);
          v127 = v65;
          v128 = v90;
LABEL_42:
          v76(v127, v128, v91);
          (v57[7])(v65, 0, 1, v91);
LABEL_43:
          __swift_destroy_boxed_opaque_existential_0(&v192);
          return __swift_destroy_boxed_opaque_existential_0(&v195);
        }

LABEL_23:
        v94(v90, v91);
        v70 = v91;
LABEL_28:
        __swift_destroy_boxed_opaque_existential_0(&v192);
LABEL_62:
        v76(v65, v81, v70);
        goto LABEL_63;
      }

      goto LABEL_71;
    }

    v71 = v48;
    v161 = v50;
    if (v64)
    {
      sub_21DE5CC9C(&v195, &v192);
      v84 = v193;
      v85 = v194;
      __swift_mutable_project_boxed_opaque_existential_1(&v192, v193);
      result = (*(v85 + 48))(&v189, v84, v85);
      v81 = v186;
      if (!__OFADD__(*v86, 1))
      {
        v76 = v60;
        ++*v86;
        result(&v189, 0);
        v87 = v193;
        v88 = v194;
        __swift_project_boxed_opaque_existential_1(&v192, v193);
        v89 = v179;
        (*(v88 + 80))(v87, v88);
        v70 = v183;
        if (v162(v89, 1, v183) == 1)
        {
LABEL_26:
          v71[1](v161, v163);
          v83 = v89;
          goto LABEL_27;
        }

        v90 = v173;
        (v60)(v173, v89, v70);
        v91 = v70;
        sub_21DEC68E0();
        v93 = v92;
        v71[1](v161, v163);
        v94 = v57[1];
        v65 = v185;
        if (v93 > 0.0)
        {
          goto LABEL_41;
        }

        goto LABEL_23;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v179 = v48;
    v180 = v28;
    v119 = v182;
    v120 = v181;
    v121 = v184;
    v178 = *(v184 + 13);
    v178();
    v122 = v177;
    sub_21DEC69A0();
    v123 = *(v121 + 1);
    v123(v120, v119);
    v70 = v183;
    if (v162(v122, 1, v183) == 1)
    {
      v179[1](v161, v163);
      sub_21DE5CD00(v122, &qword_27CE94358, &qword_21DED08A0);
      v65 = v185;
      v57 = v180;
      (v60)(v185, v186, v70);
      goto LABEL_63;
    }

    v131 = v169;
    v184 = v60;
    (v60)(v169, v122, v70);
    v132 = v181;
    v133 = v182;
    (v178)(v181, *MEMORY[0x277CC9988], v182);
    v134 = v161;
    v135 = sub_21DEC69E0();
    v123(v132, v133);
    v136 = v196;
    v137 = v197;
    __swift_project_boxed_opaque_existential_1(&v195, v196);
    if (v135 == (*(v137 + 8))(v136, v137))
    {
      sub_21DEC68E0();
      v139 = v138;
      v48[1](v134, v163);
      v57 = v180;
      v140 = v180[1];
      v65 = v185;
      v141 = v186;
      v70 = v183;
      if (v139 >= 0.0)
      {
        v140(v186, v183);
        (v184)(v65, v131, v70);
      }

      else
      {
        v140(v131, v183);
        (v184)(v65, v141, v70);
      }

      goto LABEL_63;
    }

    v57 = v180;
    v180[1](v131, v70);
    v48[1](v134, v163);
    v65 = v185;
    v76 = v184;
    goto LABEL_61;
  }

  if (!v62)
  {
    v101 = v50;
    v102 = *(v184 + 13);
    v103 = (v184 + 8);
    if (v64)
    {
      v104 = v181;
      v105 = v182;
      v102(v181, *MEMORY[0x277CC9998], v182);
      v106 = v176;
      v107 = v101;
      sub_21DEC69A0();
      (*v103)(v104, v105);
      v70 = v183;
      v76 = v60;
      if (v162(v106, 1, v183) != 1)
      {
        v108 = v168;
        (v60)(v168, v106, v70);
        sub_21DEC68E0();
        v110 = v109;
        v48[1](v107, v163);
        v111 = *(v28 + 1);
        v65 = v185;
        if (v110 >= 0.0)
        {
          v111(v186, v70);
          (v60)(v65, v108, v70);
          (*(v28 + 7))(v65, 0, 1, v70);
          return __swift_destroy_boxed_opaque_existential_0(&v195);
        }

        v111(v108, v70);
        goto LABEL_61;
      }
    }

    else
    {
      v129 = v181;
      v130 = v182;
      v102(v181, *MEMORY[0x277CC9968], v182);
      v106 = v170;
      v107 = v101;
      sub_21DEC69A0();
      (*v103)(v129, v130);
      v70 = v183;
      v76 = v60;
      if (v162(v106, 1, v183) != 1)
      {
        v157 = v164;
        (v60)(v164, v106, v70);
        sub_21DEC68E0();
        v159 = v158;
        v48[1](v107, v163);
        v160 = v57[1];
        v65 = v185;
        if (v159 >= 0.0)
        {
          v160(v186, v70);
          (v60)(v65, v157, v70);
          (v57[7])(v65, 0, 1, v70);
          return __swift_destroy_boxed_opaque_existential_0(&v195);
        }

        v160(v157, v70);
        goto LABEL_61;
      }
    }

    v48[1](v107, v163);
    sub_21DE5CD00(v106, &qword_27CE94358, &qword_21DED08A0);
    v65 = v185;
LABEL_61:
    v81 = v186;
    goto LABEL_62;
  }

  v161 = v50;
  if (v64)
  {
    sub_21DE5CC9C(&v195, &v192);
    v72 = v193;
    v73 = v194;
    __swift_mutable_project_boxed_opaque_existential_1(&v192, v193);
    result = (*(v73 + 24))(&v189, v72, v73);
    if (!__OFADD__(*v75, 1))
    {
      v76 = v60;
      ++*v75;
      result(&v189, 0);
      v77 = v193;
      v78 = v194;
      __swift_project_boxed_opaque_existential_1(&v192, v193);
      v79 = v178;
      (*(v78 + 80))(v77, v78);
      v70 = v183;
      v80 = v162(v79, 1, v183);
      v81 = v186;
      v82 = v163;
      if (v80 == 1)
      {
        v48[1](v161, v163);
        v83 = v79;
LABEL_27:
        sub_21DE5CD00(v83, &qword_27CE94358, &qword_21DED08A0);
        v65 = v185;
        goto LABEL_28;
      }

      v90 = v172;
      (v60)(v172, v79, v70);
      v91 = v70;
      sub_21DEC68E0();
      v125 = v124;
      v48[1](v161, v82);
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_70;
  }

  sub_21DE5CC9C(&v195, &v192);
  v112 = v193;
  v113 = v194;
  __swift_mutable_project_boxed_opaque_existential_1(&v192, v193);
  result = (*(v113 + 72))(&v189, v112, v113);
  if (__OFADD__(*v114, 1))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v76 = v60;
  v115 = v48;
  ++*v114;
  result(&v189, 0);
  v116 = v193;
  v117 = v194;
  __swift_project_boxed_opaque_existential_1(&v192, v193);
  v118 = v175;
  (*(v117 + 80))(v116, v117);
  v91 = v183;
  if (v162(v118, 1, v183) == 1)
  {
    sub_21DE5CD00(v118, &qword_27CE94358, &qword_21DED08A0);
    v81 = v186;
  }

  else
  {
    v142 = v167;
    (v60)(v167, v118, v91);
    sub_21DEC68E0();
    v143 = *(v28 + 1);
    v81 = v186;
    if (v144 >= 0.0)
    {
      v143(v186, v91);
      v115[1](v161, v163);
      v128 = v142;
      v65 = v185;
      v127 = v185;
      goto LABEL_42;
    }

    v143(v142, v91);
  }

  sub_21DE5CC9C(&v195, &v189);
  v145 = v190;
  v146 = v191;
  __swift_mutable_project_boxed_opaque_existential_1(&v189, v190);
  result = (*(v146 + 24))(v188, v145, v146);
  if (!__OFADD__(*v147, 1))
  {
    ++*v147;
    result(v188, 0);
    v148 = v190;
    v149 = v191;
    __swift_mutable_project_boxed_opaque_existential_1(&v189, v190);
    (*(v149 + 64))(1, v148, v149);
    v150 = v190;
    v151 = v191;
    __swift_project_boxed_opaque_existential_1(&v189, v190);
    v152 = v171;
    (*(v151 + 80))(v150, v151);
    v70 = v183;
    if (v162(v152, 1, v183) == 1)
    {
      v115[1](v161, v163);
      sub_21DE5CD00(v152, &qword_27CE94358, &qword_21DED08A0);
      v65 = v185;
    }

    else
    {
      v153 = v165;
      (v60)(v165, v152, v70);
      sub_21DEC68E0();
      v155 = v154;
      v115[1](v161, v163);
      v156 = v57[1];
      v65 = v185;
      if (v155 >= 0.0)
      {
        v156(v81, v70);
        (v60)(v65, v153, v70);
        (v57[7])(v65, 0, 1, v70);
        __swift_destroy_boxed_opaque_existential_0(&v189);
        goto LABEL_43;
      }

      v156(v153, v70);
    }

    __swift_destroy_boxed_opaque_existential_0(&v189);
    goto LABEL_28;
  }

LABEL_73:
  __break(1u);
  return result;
}

void (*sub_21DE72744@<X0>(uint64_t a1@<X0>, char *a2@<X8>))(uint64_t *, void)
{
  v186 = a2;
  v181 = sub_21DEC69D0();
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v182 = v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v179 = (v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v178 = (v160 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v176 = v160 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v169 = v160 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v177 = v160 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v173 = v160 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v174 = v160 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v168 = v160 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v160 - v22;
  v24 = sub_21DEC6910();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v172 = v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v171 = v160 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v175 = v160 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v165 = v160 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v170 = v160 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v166 = v160 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v167 = v160 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v164 = v160 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = v160 - v42;
  v44 = sub_21DEC69F0();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = v160 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DEC69B0();
  v184 = a1;
  v185 = v2;
  sub_21DE75AB0(&v194);
  v48 = v195;
  v49 = v196;
  __swift_project_boxed_opaque_existential_1(&v194, v195);
  v50 = v48;
  v51 = v25;
  (*(v49 + 80))(v50, v49);
  v52 = v25 + 48;
  v53 = *(v25 + 48);
  if (v53(v23, 1, v24) == 1)
  {
    (*(v45 + 8))(v47, v44);
    sub_21DE5CD00(v23, &qword_27CE94358, &qword_21DED08A0);
    (*(v51 + 56))(v186, 1, 1, v24);
    return __swift_destroy_boxed_opaque_existential_0(&v194);
  }

  v160[0] = v53;
  v160[1] = v52;
  v161 = v44;
  v162 = v45;
  v54 = v51;
  v55 = *(v51 + 32);
  v183 = v43;
  v56 = v43;
  v57 = v24;
  v58 = v24;
  v59 = v55;
  v163 = v51 + 32;
  v55(v56, v23, v58);
  v60 = EventDateTimeComponents.year.getter();
  v61 = EventDateTimeComponents.month.getter();
  v62 = EventDateTimeComponents.day.getter();
  v63 = v62;
  if (v60 && v61 && v62)
  {
    (*(v162 + 8))(v47, v161);
    v64 = v186;
    v65 = v186;
    v66 = v183;
LABEL_13:
    v59(v65, v66, v57);
    (*(v54 + 56))(v64, 0, 1, v57);
    return __swift_destroy_boxed_opaque_existential_0(&v194);
  }

  v67 = v183;
  sub_21DEC68E0();
  v68 = v47;
  if (v69 >= 0.0)
  {
    (*(v162 + 8))(v47, v161);
    v64 = v186;
    v65 = v186;
    v66 = v67;
    goto LABEL_13;
  }

  if (v60)
  {
    v70 = v54;
    v71 = v57;
    v72 = v59;
    if (v61)
    {
      if (v63)
      {
        (*(v162 + 8))(v68, v161);
        v73 = v186;
        v74 = v183;
        goto LABEL_45;
      }

      sub_21DE5CC9C(&v194, &v191);
      v97 = v192;
      v98 = v193;
      __swift_mutable_project_boxed_opaque_existential_1(&v191, v192);
      result = (*(v98 + 72))(&v188, v97, v98);
      v89 = v162;
      if (!__OFADD__(*v99, 1))
      {
        ++*v99;
        result(&v188, 0);
        v100 = v192;
        v101 = v193;
        __swift_project_boxed_opaque_existential_1(&v191, v192);
        v92 = v179;
        (*(v101 + 80))(v100, v101);
        if ((v160[0])(v92, 1, v71) == 1)
        {
          goto LABEL_26;
        }

        v93 = v172;
        (v59)();
        sub_21DEC68E0();
        v124 = v125;
        (*(v89 + 8))(v68, v161);
LABEL_39:
        v96 = *(v70 + 8);
        v73 = v186;
        v74 = v183;
        if (v124 >= 0.0)
        {
LABEL_40:
          v96(v74, v71);
LABEL_41:
          v72(v73, v93, v71);
          (*(v70 + 56))(v73, 0, 1, v71);
LABEL_42:
          __swift_destroy_boxed_opaque_existential_0(&v191);
          return __swift_destroy_boxed_opaque_existential_0(&v194);
        }

LABEL_23:
        v96(v93, v71);
LABEL_28:
        __swift_destroy_boxed_opaque_existential_0(&v191);
        goto LABEL_45;
      }

      goto LABEL_74;
    }

    if (v63)
    {
      sub_21DE5CC9C(&v194, &v191);
      v86 = v192;
      v87 = v193;
      __swift_mutable_project_boxed_opaque_existential_1(&v191, v192);
      result = (*(v87 + 48))(&v188, v86, v87);
      v89 = v162;
      if (!__OFADD__(*v88, 1))
      {
        ++*v88;
        result(&v188, 0);
        v90 = v192;
        v91 = v193;
        __swift_project_boxed_opaque_existential_1(&v191, v192);
        v92 = v178;
        (*(v91 + 80))(v90, v91);
        if ((v160[0])(v92, 1, v71) == 1)
        {
LABEL_26:
          (*(v89 + 8))(v68, v161);
          v85 = v92;
          goto LABEL_27;
        }

        v93 = v171;
        (v59)();
        sub_21DEC68E0();
        v95 = v94;
        (*(v89 + 8))(v68, v161);
        v96 = *(v70 + 8);
        v73 = v186;
        v74 = v183;
        if (v95 > 0.0)
        {
          goto LABEL_40;
        }

        goto LABEL_23;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v185 = v59;
    v117 = v180;
    v118 = v181;
    v119 = v182;
    v179 = *(v180 + 13);
    v179();
    v120 = v176;
    sub_21DEC69A0();
    v121 = v120;
    v122 = *(v117 + 1);
    v122(v119, v118);
    if ((v160[0])(v121, 1, v57) == 1)
    {
      (*(v162 + 8))(v68, v161);
      sub_21DE5CD00(v121, &qword_27CE94358, &qword_21DED08A0);
    }

    else
    {
      v180 = v122;
      v185(v175, v121, v57);
      (v179)(v119, *MEMORY[0x277CC9988], v118);
      v135 = sub_21DEC69E0();
      v180(v119, v118);
      v136 = v195;
      v137 = v196;
      __swift_project_boxed_opaque_existential_1(&v194, v195);
      if (v135 == (*(v137 + 8))(v136, v137))
      {
        v138 = v175;
        sub_21DEC68E0();
        v140 = v139;
        (*(v162 + 8))(v68, v161);
        v141 = *(v70 + 8);
        v73 = v186;
        v74 = v183;
        if (v140 >= 0.0)
        {
          v141(v183, v71);
          v185(v73, v138, v71);
          goto LABEL_47;
        }

        v141(v138, v71);
        goto LABEL_67;
      }

      (*(v70 + 8))(v175, v71);
      (*(v162 + 8))(v68, v161);
    }

    v73 = v186;
    v74 = v183;
LABEL_67:
    v72 = v185;
    goto LABEL_45;
  }

  if (!v61)
  {
    v102 = *(v180 + 13);
    v103 = (v180 + 8);
    v70 = v54;
    v71 = v57;
    if (v63)
    {
      v104 = v182;
      v105 = v181;
      v102(v182, *MEMORY[0x277CC9998], v181);
      v106 = v174;
      v74 = v183;
      sub_21DEC69A0();
      (*v103)(v104, v105);
      v107 = (v160[0])(v106, 1, v71);
      v108 = v162;
      v109 = v161;
      if (v107 != 1)
      {
        v130 = v167;
        v131 = v106;
        v72 = v59;
        v59(v167, v131, v71);
        sub_21DEC68E0();
        v133 = v132;
        (*(v108 + 8))(v68, v109);
        v134 = *(v70 + 8);
        v73 = v186;
        if (v133 >= 0.0)
        {
          v134(v74, v71);
          v128 = v73;
          v129 = v130;
          goto LABEL_46;
        }

        v134(v130, v71);
LABEL_45:
        v128 = v73;
        v129 = v74;
LABEL_46:
        v72(v128, v129, v71);
LABEL_47:
        (*(v70 + 56))(v73, 0, 1, v71);
        return __swift_destroy_boxed_opaque_existential_0(&v194);
      }
    }

    else
    {
      v126 = v182;
      v127 = v181;
      v102(v182, *MEMORY[0x277CC9968], v181);
      v106 = v168;
      v74 = v183;
      sub_21DEC69A0();
      (*v103)(v126, v127);
      if ((v160[0])(v106, 1, v71) != 1)
      {
        v156 = v164;
        v59(v164, v106, v71);
        sub_21DEC68E0();
        v158 = v157;
        (*(v162 + 8))(v68, v161);
        v159 = *(v70 + 8);
        v73 = v186;
        if (v158 >= 0.0)
        {
          v159(v74, v71);
          v59(v73, v156, v71);
          goto LABEL_47;
        }

        v159(v156, v71);
        v72 = v59;
        goto LABEL_45;
      }
    }

    (*(v162 + 8))(v68, v161);
    sub_21DE5CD00(v106, &qword_27CE94358, &qword_21DED08A0);
    v73 = v186;
    v72 = v59;
    goto LABEL_45;
  }

  v70 = v54;
  v71 = v57;
  if (v63)
  {
    sub_21DE5CC9C(&v194, &v191);
    v75 = v192;
    v76 = v193;
    __swift_mutable_project_boxed_opaque_existential_1(&v191, v192);
    result = (*(v76 + 24))(&v188, v75, v76);
    if (!__OFADD__(*v78, 1))
    {
      v72 = v59;
      ++*v78;
      result(&v188, 0);
      v79 = v192;
      v80 = v193;
      __swift_project_boxed_opaque_existential_1(&v191, v192);
      v81 = v177;
      (*(v80 + 80))(v79, v80);
      v82 = (v160[0])(v81, 1, v71);
      v83 = v162;
      v84 = v161;
      if (v82 == 1)
      {
        (*(v162 + 8))(v68, v161);
        v85 = v81;
LABEL_27:
        sub_21DE5CD00(v85, &qword_27CE94358, &qword_21DED08A0);
        v73 = v186;
        v74 = v183;
        goto LABEL_28;
      }

      v93 = v170;
      v59(v170, v81, v71);
      sub_21DEC68E0();
      v124 = v123;
      (*(v83 + 8))(v68, v84);
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_73;
  }

  sub_21DE5CC9C(&v194, &v191);
  v110 = v192;
  v111 = v193;
  __swift_mutable_project_boxed_opaque_existential_1(&v191, v192);
  result = (*(v111 + 72))(&v188, v110, v111);
  if (__OFADD__(*v112, 1))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v72 = v59;
  ++*v112;
  result(&v188, 0);
  v113 = v192;
  v114 = v193;
  __swift_project_boxed_opaque_existential_1(&v191, v192);
  v115 = v173;
  (*(v114 + 80))(v113, v114);
  if ((v160[0])(v115, 1, v57) == 1)
  {
    sub_21DE5CD00(v115, &qword_27CE94358, &qword_21DED08A0);
    v116 = v162;
  }

  else
  {
    v93 = v166;
    v59(v166, v115, v57);
    sub_21DEC68E0();
    v142 = *(v70 + 8);
    v116 = v162;
    if (v143 >= 0.0)
    {
      v142(v183, v57);
      (*(v116 + 8))(v68, v161);
      v73 = v186;
      goto LABEL_41;
    }

    v142(v93, v57);
  }

  sub_21DE5CC9C(&v194, &v188);
  v144 = v189;
  v145 = v190;
  __swift_mutable_project_boxed_opaque_existential_1(&v188, v189);
  result = (*(v145 + 24))(v187, v144, v145);
  if (!__OFADD__(*v146, 1))
  {
    ++*v146;
    result(v187, 0);
    v147 = v189;
    v148 = v190;
    __swift_mutable_project_boxed_opaque_existential_1(&v188, v189);
    (*(v148 + 64))(1, v147, v148);
    v149 = v189;
    v150 = v190;
    __swift_project_boxed_opaque_existential_1(&v188, v189);
    v151 = v169;
    (*(v150 + 80))(v149, v150);
    if ((v160[0])(v151, 1, v71) == 1)
    {
      (*(v116 + 8))(v68, v161);
      sub_21DE5CD00(v151, &qword_27CE94358, &qword_21DED08A0);
      v73 = v186;
      v74 = v183;
    }

    else
    {
      v152 = v165;
      (v59)();
      sub_21DEC68E0();
      v154 = v153;
      (*(v116 + 8))(v68, v161);
      v155 = *(v70 + 8);
      v73 = v186;
      v74 = v183;
      if (v154 >= 0.0)
      {
        v155(v183, v71);
        v59(v73, v152, v71);
        (*(v70 + 56))(v73, 0, 1, v71);
        __swift_destroy_boxed_opaque_existential_0(&v188);
        goto LABEL_42;
      }

      v155(v152, v71);
    }

    __swift_destroy_boxed_opaque_existential_0(&v188);
    goto LABEL_28;
  }

LABEL_76:
  __break(1u);
  return result;
}

void (*sub_21DE73DA4@<X0>(NSObject *a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t (**a3)(void, void)@<X2>, uint64_t a4@<X8>))(uint64_t *, void)
{
  v204 = a4;
  v197 = sub_21DEC69D0();
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v199 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v195 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v194 = &v176 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v192 = &v176 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v193 = &v176 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v185 = &v176 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v189 = &v176 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v190 = &v176 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v184 = &v176 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v176 - v26;
  v28 = sub_21DEC6910();
  v205 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v188 = &v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v187 = &v176 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v191 = &v176 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v186 = &v176 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v181 = &v176 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v182 = &v176 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v183 = &v176 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v180 = &v176 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v176 - v45;
  v47 = sub_21DEC69F0();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v176 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DEC69B0();
  v201 = a1;
  v202 = a2;
  v51 = a2;
  v52 = a3;
  v203 = v4;
  sub_21DE76128(a1, v50, v51, a3, &v213);
  v53 = v214;
  v54 = v215;
  __swift_project_boxed_opaque_existential_1(&v213, v214);
  v55 = v53;
  v56 = v205;
  (*(v54 + 80))(v55, v54);
  v57 = *(v56 + 48);
  if (v57(v27, 1, v28) == 1)
  {
    (*(v48 + 8))(v50, v47);
    sub_21DE5CD00(v27, &qword_27CE94358, &qword_21DED08A0);
    (*(v56 + 56))(v204, 1, 1, v28);
    return __swift_destroy_boxed_opaque_existential_0(&v213);
  }

  v177 = v57;
  v178 = v56 + 48;
  v179 = v50;
  v58 = *(v56 + 32);
  v59 = v46;
  v200 = v28;
  v60 = v28;
  v61 = v58;
  v198 = v56 + 32;
  (v58)(v46, v27, v60);
  v62 = v202;
  v63 = v52[1](v202, v52);
  v64 = v52[4](v62, v52);
  v65 = v52[7](v62, v52);
  v66 = v65;
  if (v63 && v64 && v65 || (v67 = v46, sub_21DEC68E0(), v68 >= 0.0))
  {
    (*(v48 + 8))(v179, v47);
    v74 = v204;
    v77 = v200;
    (v61)(v204, v59, v200);
    v75 = v205;
    goto LABEL_14;
  }

  v69 = v200;
  v70 = v61;
  v71 = v48;
  if (v63)
  {
    v203 = v70;
    v72 = v47;
    v73 = v179;
    if (v64)
    {
      if (v66)
      {
        (*(v71 + 8))(v179, v47);
LABEL_11:
        v74 = v204;
        v75 = v205;
LABEL_12:
        v76 = v203;
        goto LABEL_60;
      }

      sub_21DE5CC9C(&v213, &v210);
      v100 = v211;
      v101 = v212;
      __swift_mutable_project_boxed_opaque_existential_1(&v210, v211);
      result = (*(v101 + 72))(&v207, v100, v101);
      if (!__OFADD__(*v102, 1))
      {
        ++*v102;
        result(&v207, 0);
        v103 = v211;
        v104 = v212;
        __swift_project_boxed_opaque_existential_1(&v210, v211);
        v93 = v195;
        (*(v104 + 80))(v103, v104);
        v69 = v200;
        if (v177(v93, 1, v200) == 1)
        {
          goto LABEL_27;
        }

        v94 = v188;
        v131 = v93;
        v96 = v203;
        (v203)(v188, v131, v69);
        sub_21DEC68E0();
        v133 = v132;
        (*(v71 + 8))(v73, v47);
        v75 = v205;
        v99 = *(v205 + 8);
        v74 = v204;
        if (v133 < 0.0)
        {
          goto LABEL_39;
        }

LABEL_24:
        v99(v67, v69);
        (v96)(v74, v94, v69);
LABEL_54:
        (*(v75 + 56))(v74, 0, 1, v69);
LABEL_55:
        __swift_destroy_boxed_opaque_existential_0(&v210);
        return __swift_destroy_boxed_opaque_existential_0(&v213);
      }

      goto LABEL_74;
    }

    if (v66)
    {
      sub_21DE5CC9C(&v213, &v210);
      v88 = v211;
      v89 = v212;
      __swift_mutable_project_boxed_opaque_existential_1(&v210, v211);
      result = (*(v89 + 48))(&v207, v88, v89);
      if (!__OFADD__(*v90, 1))
      {
        ++*v90;
        result(&v207, 0);
        v91 = v211;
        v92 = v212;
        __swift_project_boxed_opaque_existential_1(&v210, v211);
        v93 = v194;
        (*(v92 + 80))(v91, v92);
        v69 = v200;
        if (v177(v93, 1, v200) == 1)
        {
LABEL_27:
          (*(v71 + 8))(v73, v47);
          sub_21DE5CD00(v93, &qword_27CE94358, &qword_21DED08A0);
          v74 = v204;
          v75 = v205;
          v76 = v203;
          goto LABEL_59;
        }

        v94 = v187;
        v95 = v93;
        v96 = v203;
        (v203)(v187, v95, v69);
        sub_21DEC68E0();
        v98 = v97;
        (*(v71 + 8))(v73, v47);
        v75 = v205;
        v99 = *(v205 + 8);
        v74 = v204;
        if (v98 <= 0.0)
        {
LABEL_39:
          v99(v94, v69);
          v76 = v96;
          goto LABEL_59;
        }

        goto LABEL_24;
      }

      goto LABEL_73;
    }

    v120 = *MEMORY[0x277CC9968];
    v121 = v196;
    v122 = v199;
    v123 = v197;
    v202 = *(v196 + 104);
    v202(v199, v120, v197);
    v124 = v192;
    sub_21DEC69A0();
    v125 = v124;
    v196 = *(v121 + 8);
    (v196)(v122, v123);
    v126 = v124;
    v69 = v200;
    if (v177(v126, 1, v200) == 1)
    {
      (*(v71 + 8))(v73, v72);
      sub_21DE5CD00(v125, &qword_27CE94358, &qword_21DED08A0);
      goto LABEL_11;
    }

    v195 = v72;
    (v203)(v191, v125, v69);
    v202(v122, *MEMORY[0x277CC9988], v123);
    v143 = sub_21DEC69E0();
    (v196)(v122, v123);
    v144 = v214;
    v145 = v215;
    __swift_project_boxed_opaque_existential_1(&v213, v214);
    if (v143 != (*(v145 + 8))(v144, v145))
    {
      v172 = v73;
      v75 = v205;
      (*(v205 + 8))(v191, v69);
      (*(v71 + 8))(v172, v195);
      v74 = v204;
      goto LABEL_12;
    }

    v146 = v191;
    sub_21DEC68E0();
    v148 = v147;
    (*(v71 + 8))(v73, v195);
    v75 = v205;
    v149 = *(v205 + 8);
    v74 = v204;
    if (v148 < 0.0)
    {
      v69 = v200;
      v149(v146, v200);
      goto LABEL_12;
    }

    v77 = v200;
    v149(v67, v200);
    (v203)(v74, v146, v77);
LABEL_14:
    (*(v75 + 56))(v74, 0, 1, v77);
    return __swift_destroy_boxed_opaque_existential_0(&v213);
  }

  v76 = v70;
  v78 = v47;
  v79 = v179;
  v80 = v199;
  if (!v64)
  {
    v105 = *(v196 + 104);
    v106 = (v196 + 8);
    if (v66)
    {
      v107 = v197;
      v105(v199, *MEMORY[0x277CC9998], v197);
      v108 = v190;
      v109 = v80;
      sub_21DEC69A0();
      v110 = v108;
      (*v106)(v109, v107);
      v111 = v108;
      v69 = v200;
      v112 = v177(v111, 1, v200);
      v74 = v204;
      if (v112 != 1)
      {
        v139 = v183;
        (v76)(v183, v110, v69);
        sub_21DEC68E0();
        v141 = v140;
        (*(v71 + 8))(v79, v78);
        v75 = v205;
        v142 = *(v205 + 8);
        if (v141 >= 0.0)
        {
          v142(v67, v69);
          v166 = v74;
          v167 = v139;
LABEL_61:
          (v76)(v166, v167, v69);
          (*(v75 + 56))(v74, 0, 1, v69);
          return __swift_destroy_boxed_opaque_existential_0(&v213);
        }

        v142(v139, v69);
LABEL_60:
        v166 = v74;
        v167 = v67;
        goto LABEL_61;
      }

      (*(v71 + 8))(v79, v78);
      sub_21DE5CD00(v110, &qword_27CE94358, &qword_21DED08A0);
    }

    else
    {
      v134 = v197;
      v105(v199, *MEMORY[0x277CC9968], v197);
      v135 = v184;
      sub_21DEC69A0();
      v136 = v134;
      v137 = v135;
      (*v106)(v80, v136);
      v138 = v135;
      v69 = v200;
      if (v177(v138, 1, v200) != 1)
      {
        v168 = v180;
        (v76)(v180, v137, v69);
        sub_21DEC68E0();
        v170 = v169;
        (*(v71 + 8))(v79, v78);
        v75 = v205;
        v171 = *(v205 + 8);
        if (v170 >= 0.0)
        {
          v171(v67, v69);
          v175 = v204;
          (v76)(v204, v168, v69);
          (*(v75 + 56))(v175, 0, 1, v69);
          return __swift_destroy_boxed_opaque_existential_0(&v213);
        }

        v171(v168, v69);
        v74 = v204;
        goto LABEL_60;
      }

      (*(v71 + 8))(v79, v78);
      sub_21DE5CD00(v137, &qword_27CE94358, &qword_21DED08A0);
      v74 = v204;
    }

    v75 = v205;
    goto LABEL_60;
  }

  if (v66)
  {
    sub_21DE5CC9C(&v213, &v210);
    v81 = v211;
    v82 = v212;
    __swift_mutable_project_boxed_opaque_existential_1(&v210, v211);
    result = (*(v82 + 24))(&v207, v81, v82);
    if (!__OFADD__(*v84, 1))
    {
      ++*v84;
      result(&v207, 0);
      v85 = v211;
      v86 = v212;
      __swift_project_boxed_opaque_existential_1(&v210, v211);
      v87 = v193;
      (*(v86 + 80))(v85, v86);
      v69 = v200;
      if (v177(v87, 1, v200) == 1)
      {
        (*(v71 + 8))(v79, v78);
        sub_21DE5CD00(v87, &qword_27CE94358, &qword_21DED08A0);
        v74 = v204;
        v75 = v205;
LABEL_59:
        __swift_destroy_boxed_opaque_existential_0(&v210);
        goto LABEL_60;
      }

      v127 = v186;
      v76();
      sub_21DEC68E0();
      v129 = v128;
      (*(v71 + 8))(v79, v78);
      v75 = v205;
      v130 = *(v205 + 8);
      v74 = v204;
      if (v129 < 0.0)
      {
        v130(v127, v69);
        goto LABEL_59;
      }

      v130(v67, v69);
      (v76)(v74, v127, v69);
      goto LABEL_54;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  sub_21DE5CC9C(&v213, &v210);
  v113 = v211;
  v114 = v212;
  __swift_mutable_project_boxed_opaque_existential_1(&v210, v211);
  result = (*(v114 + 72))(&v207, v113, v114);
  if (__OFADD__(*v115, 1))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  ++*v115;
  result(&v207, 0);
  v116 = v211;
  v117 = v212;
  __swift_project_boxed_opaque_existential_1(&v210, v211);
  v118 = v189;
  (*(v117 + 80))(v116, v117);
  v119 = v200;
  if (v177(v118, 1, v200) == 1)
  {
    sub_21DE5CD00(v118, &qword_27CE94358, &qword_21DED08A0);
  }

  else
  {
    v150 = v182;
    (v76)(v182, v118, v119);
    sub_21DEC68E0();
    v151 = v205;
    v152 = *(v205 + 8);
    if (v153 >= 0.0)
    {
      v152(v67, v119);
      (*(v71 + 8))(v79, v78);
      v173 = v150;
      v174 = v204;
      (v76)(v204, v173, v119);
      (*(v151 + 56))(v174, 0, 1, v119);
      goto LABEL_55;
    }

    v152(v150, v119);
  }

  sub_21DE5CC9C(&v213, &v207);
  v154 = v208;
  v155 = v209;
  __swift_mutable_project_boxed_opaque_existential_1(&v207, v208);
  result = (*(v155 + 24))(v206, v154, v155);
  if (!__OFADD__(*v156, 1))
  {
    ++*v156;
    result(v206, 0);
    v157 = v208;
    v158 = v209;
    __swift_mutable_project_boxed_opaque_existential_1(&v207, v208);
    (*(v158 + 64))(1, v157, v158);
    v159 = v208;
    v160 = v209;
    __swift_project_boxed_opaque_existential_1(&v207, v208);
    v161 = v185;
    (*(v160 + 80))(v159, v160);
    v69 = v200;
    if (v177(v161, 1, v200) == 1)
    {
      (*(v71 + 8))(v79, v78);
      sub_21DE5CD00(v161, &qword_27CE94358, &qword_21DED08A0);
      v74 = v204;
      v75 = v205;
    }

    else
    {
      v162 = v181;
      v76();
      sub_21DEC68E0();
      v164 = v163;
      (*(v71 + 8))(v79, v78);
      v75 = v205;
      v165 = *(v205 + 8);
      v74 = v204;
      if (v164 >= 0.0)
      {
        v165(v67, v69);
        (v76)(v74, v162, v69);
        (*(v75 + 56))(v74, 0, 1, v69);
        __swift_destroy_boxed_opaque_existential_0(&v207);
        goto LABEL_55;
      }

      v165(v162, v69);
    }

    __swift_destroy_boxed_opaque_existential_0(&v207);
    goto LABEL_59;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t (*sub_21DE75554@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>))(uint64_t *, void)
{
  v42 = a5;
  v8 = sub_21DEC6D20();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v39 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = sub_21DEC69D0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v46[0] = a2;
  v46[1] = a3;
  v46[2] = a4;
  if (!EventDateComponents.year.getter())
  {
    (*(v17 + 104))(v19, *MEMORY[0x277CC9988], v16);
    v20 = sub_21DEC69E0();
    (*(v17 + 8))(v19, v16);
    EventDateComponents.year.setter(v20);
  }

  if (!EventDateComponents.month.getter())
  {
    (*(v17 + 104))(v19, *MEMORY[0x277CC9998], v16);
    v21 = sub_21DEC69E0();
    (*(v17 + 8))(v19, v16);
    EventDateComponents.month.setter(v21);
  }

  if (!EventDateComponents.day.getter())
  {
    (*(v17 + 104))(v19, *MEMORY[0x277CC9968], v16);
    v22 = sub_21DEC69E0();
    (*(v17 + 8))(v19, v16);
    EventDateComponents.day.setter(v22);
  }

  v23 = v46;
  sub_21DE76A88(v15);
  v24 = sub_21DEC6910();
  v25 = *(*(v24 - 8) + 48);
  v26 = v25(v15, 1, v24);
  result = sub_21DE5CD00(v15, &qword_27CE94358, &qword_21DED08A0);
  if (v26 != 1)
  {
    goto LABEL_17;
  }

  if (!EventDateComponents.day.getter())
  {
    EventDateComponents.day.setter(1);
  }

  if (EventDateComponents.month.getter())
  {
LABEL_13:
    v23 = v46;
    sub_21DE76A88(v13);
    v29 = v25(v13, 1, v24);
    result = sub_21DE5CD00(v13, &qword_27CE94358, &qword_21DED08A0);
    if (v29 == 1)
    {
      v30 = sub_21DEBD114();
      (*(v40 + 16))(v39, v30, v41);
      v31 = v47;
      v32 = v48;
      v33 = v49;
      v34 = sub_21DEC6D00();
      v35 = sub_21DEC71B0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134218496;
        v43 = v31;
        v44 = v32;
        v45 = v33;
        *(v36 + 4) = EventDateComponents.month.getter();
        *(v36 + 12) = 2048;
        v43 = v31;
        v44 = v32;
        v45 = v33;
        *(v36 + 14) = EventDateComponents.day.getter();
        *(v36 + 22) = 2048;
        v43 = v31;
        v44 = v32;
        v45 = v33;
        *(v36 + 24) = EventDateComponents.year.getter();
        _os_log_impl(&dword_21DE0D000, v34, v35, "Cannot get valid date components from %ld/%ld/%ld", v36, 0x20u);
        MEMORY[0x223D4D340](v36, -1, -1);
      }

      result = (*(v40 + 8))(v39, v41);
      v23 = &v47;
    }

LABEL_17:
    v37 = v42;
    *(v42 + 24) = &type metadata for EventDateComponents;
    *(v37 + 32) = &off_282F27888;
    v38 = v23[2];
    *v37 = *v23;
    *(v37 + 16) = v38;
    return result;
  }

  result = EventDateComponents.month.modify();
  if (!__OFADD__(*v28, 1))
  {
    ++*v28;
    result(&v43, 0);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void (*sub_21DE75AB0@<X0>(uint64_t a2@<X8>))()
{
  v3 = v2;
  v55 = a2;
  v4 = sub_21DEC6D20();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = sub_21DEC69D0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for EventDateTimeComponents(0);
  v16 = MEMORY[0x28223BE20](v54);
  v49 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v48 = &v48 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v53 = &v48 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  sub_21DE77950(v2, &v48 - v22);
  if (!EventDateTimeComponents.year.getter())
  {
    (*(v13 + 104))(v15, *MEMORY[0x277CC9988], v12);
    v24 = sub_21DEC69E0();
    (*(v13 + 8))(v15, v12);
    EventDateTimeComponents.year.setter(v24);
  }

  if (!EventDateTimeComponents.month.getter())
  {
    (*(v13 + 104))(v15, *MEMORY[0x277CC9998], v12);
    v25 = sub_21DEC69E0();
    (*(v13 + 8))(v15, v12);
    EventDateTimeComponents.month.setter(v25);
  }

  if (!EventDateTimeComponents.day.getter())
  {
    (*(v13 + 104))(v15, *MEMORY[0x277CC9968], v12);
    v26 = sub_21DEC69E0();
    (*(v13 + 8))(v15, v12);
    EventDateTimeComponents.day.setter(v26);
  }

  sub_21DE77280(v11);
  v27 = sub_21DEC6910();
  v28 = *(*(v27 - 8) + 48);
  v29 = v28(v11, 1, v27);
  sub_21DE5CD00(v11, &qword_27CE94358, &qword_21DED08A0);
  if (v29 != 1)
  {
    goto LABEL_16;
  }

  if (!EventDateTimeComponents.day.getter())
  {
    EventDateTimeComponents.day.setter(1);
  }

  v30 = EventDateTimeComponents.month.getter();
  v31 = v53;
  if (!v30)
  {
    result = EventDateTimeComponents.month.modify();
    if (__OFADD__(*v33, 1))
    {
      __break(1u);
      return result;
    }

    ++*v33;
    (result)(v56, 0);
  }

  sub_21DE77280(v9);
  v34 = v28(v9, 1, v27);
  sub_21DE5CD00(v9, &qword_27CE94358, &qword_21DED08A0);
  if (v34 != 1)
  {
LABEL_16:
    v44 = v55;
    *(v55 + 24) = v54;
    v44[4] = &off_282F278E8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
    return sub_21DE77A74(v23, boxed_opaque_existential_1);
  }

  v35 = sub_21DEBD114();
  (*(v51 + 16))(v50, v35, v52);
  sub_21DE77950(v3, v31);
  v36 = v48;
  sub_21DE77950(v3, v48);
  v37 = v49;
  sub_21DE77950(v3, v49);
  v38 = sub_21DEC6D00();
  v39 = sub_21DEC71B0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134218496;
    v41 = EventDateTimeComponents.month.getter();
    sub_21DE779B4(v31);
    *(v40 + 4) = v41;
    *(v40 + 12) = 2048;
    v42 = EventDateTimeComponents.day.getter();
    sub_21DE779B4(v36);
    *(v40 + 14) = v42;
    *(v40 + 22) = 2048;
    v43 = EventDateTimeComponents.year.getter();
    sub_21DE779B4(v37);
    *(v40 + 24) = v43;
    _os_log_impl(&dword_21DE0D000, v38, v39, "Cannot get valid date components from %ld/%ld/%ld", v40, 0x20u);
    MEMORY[0x223D4D340](v40, -1, -1);
  }

  else
  {
    sub_21DE779B4(v37);
    sub_21DE779B4(v36);
    sub_21DE779B4(v31);
  }

  (*(v51 + 8))(v50, v52);
  v46 = v55;
  *(v55 + 24) = v54;
  v46[4] = &off_282F278E8;
  v47 = __swift_allocate_boxed_opaque_existential_1(v46);
  sub_21DE77950(v3, v47);
  return sub_21DE779B4(v23);
}

void (*sub_21DE76128@<X0>(NSObject *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>))(_BYTE *, void)
{
  v6 = v5;
  v85 = a1;
  v86 = a2;
  v83 = a5;
  v9 = sub_21DEC6D20();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x28223BE20](v9);
  v75 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v72 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  v16 = sub_21DEC69D0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v70 = &v66 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v69 = &v66 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v66 - v28;
  v84 = v30;
  v73 = *(v30 + 16);
  v74 = v30 + 16;
  v73(&v66 - v28, v5, a3);
  v31 = *(a4 + 8);
  v68 = a4 + 8;
  v67 = v31;
  if (!v31(a3, a4))
  {
    (*(v17 + 104))(v20, *MEMORY[0x277CC9988], v16);
    v32 = sub_21DEC69E0();
    (*(v17 + 8))(v20, v16);
    (*(a4 + 16))(v32, a3, a4);
  }

  v80 = *(a4 + 32);
  v81 = a4 + 32;
  if (!v80(a3, a4))
  {
    (*(v17 + 104))(v20, *MEMORY[0x277CC9998], v16);
    v33 = sub_21DEC69E0();
    (*(v17 + 8))(v20, v16);
    (*(a4 + 40))(v33, a3, a4);
  }

  v71 = v23;
  v34 = *(a4 + 56);
  v82 = v6;
  v78 = v34;
  v79 = a4 + 56;
  if (!v34(a3, a4))
  {
    (*(v17 + 104))(v20, *MEMORY[0x277CC9968], v16);
    v35 = sub_21DEC69E0();
    (*(v17 + 8))(v20, v16);
    (*(a4 + 64))(v35, a3, a4);
  }

  v36 = *(a4 + 80);
  v36(a3, a4);
  v37 = sub_21DEC6910();
  v38 = *(*(v37 - 8) + 48);
  v39 = v38(v15, 1, v37);
  sub_21DE5CD00(v15, &qword_27CE94358, &qword_21DED08A0);
  if (v39 != 1)
  {
    v60 = v83;
    *(v83 + 24) = a3;
    v60[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
    return (*(v84 + 32))(boxed_opaque_existential_1, v29, a3);
  }

  v86 = v29;
  if (!v78(a3, a4))
  {
    (*(a4 + 64))(1, a3, a4);
  }

  if (!v80(a3, a4))
  {
    result = (*(a4 + 48))(v87, a3, a4);
    if (__OFADD__(*v41, 1))
    {
      __break(1u);
      return result;
    }

    ++*v41;
    result(v87, 0);
  }

  v42 = v72;
  v43 = v86;
  v36(a3, a4);
  v44 = v38(v42, 1, v37);
  sub_21DE5CD00(v42, &qword_27CE94358, &qword_21DED08A0);
  if (v44 == 1)
  {
    v45 = sub_21DEBD114();
    (*(v76 + 16))(v75, v45, v77);
    v46 = v69;
    v47 = v82;
    v48 = v73;
    v73(v69, v82, a3);
    v49 = v70;
    v48(v70, v47, a3);
    v50 = v71;
    v48(v71, v47, a3);
    v51 = sub_21DEC6D00();
    v52 = sub_21DEC71B0();
    v85 = v51;
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v49;
      v54 = swift_slowAlloc();
      *v54 = 134218496;
      v55 = v80(a3, a4);
      v56 = *(v84 + 8);
      v56(v46, a3);
      *(v54 + 4) = v55;
      *(v54 + 12) = 2048;
      v57 = v78(a3, a4);
      v56(v53, a3);
      *(v54 + 14) = v57;
      *(v54 + 22) = 2048;
      v47 = v82;
      v58 = v67(a3, a4);
      v56(v50, a3);
      *(v54 + 24) = v58;
      v59 = v85;
      _os_log_impl(&dword_21DE0D000, v85, v52, "Cannot get valid date components from %ld/%ld/%ld", v54, 0x20u);
      MEMORY[0x223D4D340](v54, -1, -1);
    }

    else
    {
      v56 = *(v84 + 8);
      v56(v50, a3);
      v56(v49, a3);
      v56(v46, a3);
      v59 = v85;
    }

    (*(v76 + 8))(v75, v77);
    v64 = v83;
    *(v83 + 24) = a3;
    v64[4] = a4;
    v65 = __swift_allocate_boxed_opaque_existential_1(v64);
    v73(v65, v47, a3);
    return (v56)(v86, a3);
  }

  else
  {
    v62 = v83;
    *(v83 + 24) = a3;
    v62[4] = a4;
    v63 = __swift_allocate_boxed_opaque_existential_1(v62);
    return (*(v84 + 32))(v63, v43, a3);
  }
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

uint64_t sub_21DE76A88@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  MEMORY[0x28223BE20](v1 - 8);
  v27 = &v26 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94360, &qword_21DED08A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94368, &qword_21DED08B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_21DEC67D0();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DEC69F0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DEC69B0();
  v16 = *(v13 + 56);
  v30 = v12;
  v16(v8, 1, 1, v12);
  v17 = sub_21DEC6A20();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v25 = 1;
  v24 = 0;
  v23 = 1;
  v22 = 0;
  sub_21DEC67C0();
  if (sub_21DEC67B0())
  {
    v18 = v27;
    v19 = sub_21DEC6990();
    MEMORY[0x28223BE20](v19);
    v24 = v15;
    sub_21DE76EF0(sub_21DE76EC4, &v22, v31);
    sub_21DE5CD00(v18, &qword_27CE94358, &qword_21DED08A0);
    (*(v28 + 8))(v11, v29);
  }

  else
  {
    (*(v28 + 8))(v11, v29);
    v20 = sub_21DEC6910();
    (*(*(v20 - 8) + 56))(v31, 1, 1, v20);
  }

  return (*(v13 + 8))(v15, v30);
}

uint64_t sub_21DE76EF0@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v17[1] = a2;
  v18 = a1;
  v7 = sub_21DEC6910();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v17 - v12;
  sub_21DE5C6E4(v5, v17 - v12, &qword_27CE94358, &qword_21DED08A0);
  v14 = 1;
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    v15 = a3;
    return (*(v8 + 56))(v15, v14, 1, v7);
  }

  (*(v8 + 32))(v10, v13, v7);
  v15 = a3;
  v18(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v14 = 0;
    return (*(v8 + 56))(v15, v14, 1, v7);
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t (*sub_21DE7710C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = EventDateComponents.year.modify();
  return sub_21DE77AD8;
}

uint64_t (*sub_21DE77184(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = EventDateComponents.month.modify();
  return sub_21DE77AD8;
}

uint64_t (*sub_21DE771FC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = EventDateComponents.day.modify();
  return sub_21DE7726C;
}

uint64_t sub_21DE77280@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94368, &qword_21DED08B0);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v27 - v4;
  v5 = sub_21DEC67D0();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94360, &qword_21DED08A8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = sub_21DEC6A20();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  v28 = sub_21DEC69F0();
  v20 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DEC69B0();
  v23 = *(type metadata accessor for EventDateTimeComponents(0) + 36);
  sub_21DE5C6E4(v2 + v23, v12, &qword_27CE94360, &qword_21DED08A8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21DE5CD00(v12, &qword_27CE94360, &qword_21DED08A8);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    sub_21DEC69C0();
    (*(v14 + 8))(v19, v13);
  }

  v24 = v28;
  (*(v20 + 56))(v29, 1, 1, v28);
  sub_21DE5C6E4(v2 + v23, v27, &qword_27CE94360, &qword_21DED08A8);
  sub_21DEC67C0();
  if (sub_21DEC67B0())
  {
    sub_21DEC6990();
    (*(v30 + 8))(v7, v31);
    return (*(v20 + 8))(v22, v24);
  }

  else
  {
    (*(v30 + 8))(v7, v31);
    (*(v20 + 8))(v22, v24);
    v26 = sub_21DEC6910();
    return (*(*(v26 - 8) + 56))(v32, 1, 1, v26);
  }
}

uint64_t (*sub_21DE777A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = EventDateTimeComponents.year.modify();
  return sub_21DE77AD8;
}

uint64_t (*sub_21DE77818(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = EventDateTimeComponents.month.modify();
  return sub_21DE77AD8;
}

uint64_t (*sub_21DE77890(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = EventDateTimeComponents.day.modify();
  return sub_21DE77AD8;
}

void sub_21DE77900(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_21DE77950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDateTimeComponents(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DE779B4(uint64_t a1)
{
  v2 = type metadata accessor for EventDateTimeComponents(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21DE77A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDateTimeComponents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DE77ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_21DEC6E00();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DE77BD8, 0, 0);
}

uint64_t sub_21DE77BD8()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v0[12] = sub_21DE661F8();
  v0[13] = v5;
  v0[2] = v3;
  v0[3] = v2;

  sub_21DE9F0D0();
  sub_21DE5C6E4(v4, v1, &qword_27CE93F90, &qword_21DECD500);
  v6 = type metadata accessor for SanitizerResource(0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_21DE5CD00(v0[11], &qword_27CE93F90, &qword_21DECD500);
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];

    sub_21DEC6DF0();
    v10 = sub_21DEC6DC0();
    v12 = v11;

    (*(v8 + 8))(v7, v9);
    v13 = v0[13];
    if (v12 >> 60 == 15)
    {
      v14 = v0[12];
      sub_21DE689A4();
      swift_allocError();
      *v15 = v14;
      *(v15 + 8) = v13;
      *(v15 + 16) = 0xD000000000000023;
      *(v15 + 24) = 0x800000021DED9A40;
      *(v15 + 32) = 0;
      *(v15 + 40) = 1;
      swift_willThrow();
    }

    else
    {

      sub_21DEC66C0();
      swift_allocObject();
      sub_21DEC66B0();
      sub_21DE67A08();
      sub_21DEC6690();

      sub_21DE56358(v10, v12);
    }

    v20 = v0[1];

    return v20();
  }

  else
  {
    v17 = v0[2];
    v16 = v0[3];
    v0[14] = v16;
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_21DE77EF4;

    return sub_21DE61EF8(v17, v16);
  }
}

uint64_t sub_21DE77EF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {

    v7 = sub_21DE78234;
  }

  else
  {
    v8 = v6[11];
    v6[17] = a2;
    v6[18] = a1;
    sub_21DE5CDA8(v8);
    v7 = sub_21DE78038;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21DE78038()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  sub_21DEC6DF0();
  v4 = sub_21DEC6DC0();
  v6 = v5;

  (*(v2 + 8))(v1, v3);
  v7 = v0[13];
  if (v6 >> 60 == 15)
  {
    v8 = v0[12];
    sub_21DE689A4();
    swift_allocError();
    *v9 = v8;
    *(v9 + 8) = v7;
    *(v9 + 16) = 0xD000000000000023;
    *(v9 + 24) = 0x800000021DED9A40;
    *(v9 + 32) = 0;
    *(v9 + 40) = 1;
    swift_willThrow();
  }

  else
  {

    sub_21DEC66C0();
    swift_allocObject();
    sub_21DEC66B0();
    sub_21DE67A08();
    sub_21DEC6690();

    sub_21DE56358(v4, v6);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_21DE78234()
{
  sub_21DE5CDA8(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DE782B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F88, &qword_21DECD4B0);
  MEMORY[0x28223BE20](v11);
  v16 = a2;
  v17 = v5;
  v18 = a3;
  v19 = a4 & 1;
  v20 = a1;
  v21 = a5;
  (*(v13 + 104))(&v15[-v12], *MEMORY[0x277D858A0]);
  return sub_21DEC7130();
}

uint64_t sub_21DE783EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v41 = a7;
  v40 = a6;
  v43 = a5;
  v42 = a4;
  v38 = a3;
  v45 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v44 = &v34 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510);
  v15 = *(v37 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v37);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA8, &qword_21DECD518);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v34 - v20;
  if (a2[2])
  {
  }

  else
  {
    a2 = static AFMChunkType.allCases.getter();
  }

  v22 = sub_21DE5C898(3, a2);

  if (v22)
  {
    v23 = sub_21DEC70F0();
    v24 = *(*(v23 - 8) + 56);
    v36 = v21;
    v24(v21, 1, 1, v23);
    v25 = v37;
    (*(v15 + 16))(v18, v38, v37);
    v26 = *(v12 + 16);
    v35 = v11;
    v26(v44, v45, v11);
    sub_21DE5C6E4(v40, v46, &qword_27CE93F90, &qword_21DECD500);
    v27 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v28 = (v16 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (*(v12 + 80) + v28 + 9) & ~*(v12 + 80);
    v30 = (v13 + *(v39 + 80) + v29) & ~*(v39 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    (*(v15 + 32))(v31 + v27, v18, v25);
    v32 = v31 + v28;
    *v32 = v42;
    *(v32 + 8) = v43 & 1;
    (*(v12 + 32))(v31 + v29, v44, v35);
    sub_21DE5754C(v46, v31 + v30);
    *(v31 + v30 + v9) = v41 & 1;
    sub_21DE5C3E4(0, 0, v36, &unk_21DED0900, v31);
  }

  else
  {
    v47 = 0;
    return sub_21DEC7120();
  }
}

uint64_t sub_21DE78828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 211) = v19;
  *(v8 + 344) = a7;
  *(v8 + 352) = a8;
  *(v8 + 210) = a6;
  *(v8 + 328) = a4;
  *(v8 + 336) = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FB0, &qword_21DECD550);
  *(v8 + 360) = v9;
  *(v8 + 368) = *(v9 - 8);
  *(v8 + 376) = swift_task_alloc();
  v10 = sub_21DEC6D20();
  *(v8 + 384) = v10;
  *(v8 + 392) = *(v10 - 8);
  *(v8 + 400) = swift_task_alloc();
  v11 = sub_21DEC6B30();
  *(v8 + 408) = v11;
  *(v8 + 416) = *(v11 - 8);
  *(v8 + 424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FB8, &qword_21DECD558);
  *(v8 + 432) = swift_task_alloc();
  v12 = sub_21DEC6C00();
  *(v8 + 440) = v12;
  *(v8 + 448) = *(v12 - 8);
  *(v8 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FC0, &qword_21DECD560);
  *(v8 + 464) = swift_task_alloc();
  v13 = sub_21DEC6BE0();
  *(v8 + 472) = v13;
  *(v8 + 480) = *(v13 - 8);
  *(v8 + 488) = swift_task_alloc();
  v14 = sub_21DEC6BC0();
  *(v8 + 496) = v14;
  *(v8 + 504) = *(v14 - 8);
  *(v8 + 512) = swift_task_alloc();
  v15 = sub_21DEC6BA0();
  *(v8 + 520) = v15;
  *(v8 + 528) = *(v15 - 8);
  *(v8 + 536) = swift_task_alloc();
  v16 = sub_21DEC6910();
  *(v8 + 544) = v16;
  *(v8 + 552) = *(v16 - 8);
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DE78C08, 0, 0);
}

uint64_t sub_21DE78C08(uint64_t a1)
{
  v3 = v1[63];
  v2 = v1[64];
  v4 = v1[62];
  sub_21DEC68F0();
  v1[35] = 0;
  v1[36] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510);
  sub_21DEC6A80();
  sub_21DEC6BB0();
  (*(v3 + 8))(v2, v4);
  v5 = sub_21DE79B30();
  v6 = swift_task_alloc();
  v1[72] = v6;
  *v6 = v1;
  v6[1] = sub_21DE78D24;
  v7 = v1[65];

  return MEMORY[0x282200308](v1 + 2, v7, v5);
}

uint64_t sub_21DE78D24()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_21DE792CC;
  }

  else
  {
    v2 = sub_21DE78E38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DE78E38()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 480);
    sub_21DE5CC84((v0 + 16), v0 + 56);
    sub_21DE5CC9C(v0 + 56, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FD8, &qword_21DECD570);
    v2 = swift_dynamicCast();
    v3 = *(v1 + 56);
    if (v2)
    {
      v5 = *(v0 + 480);
      v4 = *(v0 + 488);
      v6 = *(v0 + 464);
      v7 = *(v0 + 472);
      v9 = *(v0 + 416);
      v8 = *(v0 + 424);
      v10 = *(v0 + 400);
      v11 = *(v0 + 392);
      v40 = *(v0 + 384);
      v41 = *(v0 + 408);
      v3(v6, 0, 1, v7);
      (*(v5 + 32))(v4, v6, v7);
      sub_21DEC6BD0();
      v12 = sub_21DEBD150();
      (*(v11 + 16))(v10, v12, v40);
      ModelInformation.log(logger:)();
      (*(v11 + 8))(v10, v40);
      (*(v9 + 8))(v8, v41);
      (*(v5 + 8))(v4, v7);
    }

    else
    {
      v18 = *(v0 + 464);
      v3(v18, 1, 1, *(v0 + 472));
      sub_21DE5CD00(v18, &qword_27CE93FC0, &qword_21DECD560);
      sub_21DE5CC9C(v0 + 56, v0 + 136);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v25 = *(v0 + 440);
        v26 = *(v0 + 448);
        v27 = *(v0 + 432);
        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        (*(v26 + 56))(v27, 1, 1, v25);
        sub_21DE5CD00(v27, &qword_27CE93FB8, &qword_21DECD558);
        goto LABEL_12;
      }

      v20 = *(v0 + 448);
      v19 = *(v0 + 456);
      v22 = *(v0 + 432);
      v21 = *(v0 + 440);
      v23 = *(v0 + 210);
      (*(v20 + 56))(v22, 0, 1, v21);
      (*(v20 + 32))(v19, v22, v21);
      v24 = sub_21DEC6BF0();
      MEMORY[0x223D4B2A0](v24);

      if (v23)
      {
        (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
      }

      else
      {
        v31 = *(v0 + 560);
        v32 = *(v0 + 552);
        v33 = *(v0 + 544);
        v34 = *(v0 + 336);
        sub_21DEC68F0();
        sub_21DEC68E0();
        v36 = v35;
        (*(v32 + 8))(v31, v33);
        v38 = *(v0 + 448);
        v37 = *(v0 + 456);
        v39 = *(v0 + 440);
        if (v36 > v34)
        {
          *(v0 + 320) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
          sub_21DEC7120();
        }

        (*(v38 + 8))(v37, v39);
      }
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
LABEL_12:
    v28 = sub_21DE79B30();
    v29 = swift_task_alloc();
    *(v0 + 576) = v29;
    *v29 = v0;
    v29[1] = sub_21DE78D24;
    v30 = *(v0 + 520);

    return MEMORY[0x282200308](v0 + 16, v30, v28);
  }

  (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
  v14 = *(v0 + 280);
  v13 = *(v0 + 288);
  *(v0 + 592) = v14;
  *(v0 + 600) = v13;
  v15 = swift_task_alloc();
  *(v0 + 608) = v15;
  *v15 = v0;
  v15[1] = sub_21DE794C4;
  v16 = *(v0 + 352);

  return sub_21DE77ADC(v0 + 256, v16, v14, v13);
}

uint64_t sub_21DE792CC()
{
  *(v0 + 296) = *(v0 + 584);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FC8, &qword_21DECD568);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_21DE7935C, 0, 0);
}

uint64_t sub_21DE7935C()
{
  (*(v0[66] + 8))(v0[67], v0[65]);

  v1 = v0[71];
  v2 = v0[69];
  v3 = v0[68];
  v0[38] = v0[73];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  sub_21DEC7120();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21DE794C4()
{
  *(*v1 + 616) = v0;

  if (v0)
  {

    v2 = sub_21DE797E4;
  }

  else
  {
    v2 = sub_21DE795E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DE795E0()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 273);
  v5 = *(v0 + 600);
  if (*(v0 + 211) == 1)
  {
    *(v0 + 216) = *(v0 + 592);
    v6 = v0 + 216;
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 360);
    if (v4)
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10 | v3 | 0xE000;
    *(v0 + 224) = v5;
    *(v0 + 232) = v2;
    *(v0 + 240) = v1;
  }

  else
  {
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 360);

    *(v0 + 176) = v2;
    *(v0 + 184) = v1;
    v6 = v0 + 176;
    v12 = 256;
    if (!v4)
    {
      v12 = 0;
    }

    *(v0 + 192) = v12 | v3;
    *(v0 + 200) = 0;
    v11 = 24576;
  }

  *(v6 + 32) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  sub_21DEC7110();
  (*(v8 + 8))(v7, v9);
  v13 = *(v0 + 568);
  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  *(v0 + 312) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  sub_21DEC7120();
  (*(v14 + 8))(v13, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_21DE797E4()
{
  v1 = v0[71];
  v2 = v0[69];
  v3 = v0[68];
  v0[38] = v0[77];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  sub_21DEC7120();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21DE79928()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508) - 8);
  v6 = (v4 + *(v5 + 80) + 9) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v0 + v4;
  v11 = *(v0 + v4);
  v12 = *(v10 + 8);
  v13 = v0 + v9;
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_21DE577D0;

  return sub_21DE78828(v14, v15, v16, v0 + v3, v11, v12, v0 + v6, v13);
}

unint64_t sub_21DE79B30()
{
  result = qword_280F7AB58;
  if (!qword_280F7AB58)
  {
    sub_21DEC6BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7AB58);
  }

  return result;
}

uint64_t sub_21DE79BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v93 = a2;
  v92 = a1;
  v87 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94140, &qword_21DECD700);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v86 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v98 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94370, &qword_21DED0910);
  MEMORY[0x28223BE20](v12 - 8);
  v94 = &v79 - v13;
  v96 = sub_21DEC6B70();
  v89 = *(v96 - 8);
  v14 = MEMORY[0x28223BE20](v96);
  v85 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v100 = &v79 - v16;
  v17 = sub_21DEC6AB0();
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21DEC6B90();
  v88 = *(v95 - 8);
  v19 = MEMORY[0x28223BE20](v95);
  v83 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = &v79 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94378, &qword_21DED0918);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v79 - v23;
  v25 = sub_21DEC6AD0();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a4 + 8);
  v90 = v5;
  v29(a3, a4);
  sub_21DEC6AC0();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_21DE5CD00(v24, &qword_27CE94378, &qword_21DED0918);
    sub_21DE689A4();
    swift_allocError();
    v30 = v93;
    *v31 = v92;
    *(v31 + 8) = v30;
    *(v31 + 16) = 0xD000000000000014;
    *(v31 + 24) = 0x800000021DED9A70;
    *(v31 + 32) = 0;
    *(v31 + 40) = 0;
    swift_willThrow();
  }

  v33 = *(v26 + 32);
  v84 = v28;
  v33(v28, v24, v25);
  v34 = v25;
  v35 = v90;
  v36 = a4;
  v93 = (v29)(a3, a4);
  v92 = v37;
  (*(a4 + 16))(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94380, &qword_21DED0920);
  v38 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_21DECCA20;
  v81 = v26;
  v40 = *(v26 + 16);
  v41 = v84;
  v82 = v34;
  v40(v39 + v38, v84, v34);
  sub_21DEC6AA0();
  v42 = v97;
  sub_21DEC6B80();
  v43 = v94;
  sub_21DEC6B40();
  v44 = sub_21DEC6B50();
  (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  (*(v36 + 48))(a3, v36);
  sub_21DEC6B60();
  v45 = (*(v36 + 24))(a3, v36);
  v47 = a3;
  v48 = v42;
  if (v46)
  {
    v101 = v45;
    *&v102 = v46;
    v49 = v98;
    v50 = v99;
    sub_21DE7A924(&v101, v35, a3, v36, &v105);
    if (v50)
    {

      (*(v89 + 8))(v100, v96);
      (*(v88 + 8))(v42, v95);
      return (*(v81 + 8))(v41, v82);
    }

    v52 = 0;
    v53 = v36;
    v54 = sub_21DEC6CA0();
    (*(*(v54 - 8) + 56))(v49, 0, 1, v54);
  }

  else
  {
    v51 = sub_21DEC6CA0();
    (*(*(v51 - 8) + 56))(v98, 1, 1, v51);
    v52 = v99;
    v53 = v36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94388, qword_21DED0928);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_21DED0150;
  *(v55 + 32) = (*(v53 + 40))(v47, v53);
  *(v55 + 40) = v56;
  *(v55 + 72) = 0;
  *(v55 + 104) = &type metadata for OCRPromptFormatting;
  *(v55 + 112) = &protocol witness table for OCRPromptFormatting;
  nullsub_1();
  *(v55 + 120) = 2;
  if (((*(v53 + 56))(v47, v53) & 1) == 0)
  {
    goto LABEL_12;
  }

  type metadata accessor for STXOutputFiltering();
  v57 = STXOutputFiltering.__allocating_init()();
  v58 = *(v55 + 16);
  if (!v58)
  {
    __break(1u);
    goto LABEL_23;
  }

  v101 = v57;
  v102 = v105;
  v103 = v106;
  v104 = 1;
  v113 = v55;
  if (v58 >= *(v55 + 24) >> 1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_21DE7AAC8(1uLL, 1, 1, &v101);
LABEL_12:
    sub_21DE6396C(v55, 0, 0xE000000000000000, &v101);
    v55 = v101;
    v92 = *(&v102 + 1);
    v59 = v102;
    v60 = (*(v53 + 32))(v47, v53);
    v99 = v52;
    v94 = v55;
    v58 = &v114;
    v93 = v59;
    if (v61)
    {
      break;
    }

    if (v60)
    {
      v55 = v48;
      v41 = v47;
      v91 = sub_21DEC6E60();
      v80 = v62;
      goto LABEL_21;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v55 = sub_21DE7ABCC(1, v58 + 1, 1, v55);
    v113 = v55;
  }

  v58 = HIDWORD(v60);
  if (HIDWORD(v60))
  {
    goto LABEL_24;
  }

  v63 = v60 & 0xFFFFF800;
  v64 = 55296;
  if (v63 == 55296)
  {
    __break(1u);
    goto LABEL_30;
  }

  v63 = v60 >> 16;
  if (v60 >> 16 > 0x10)
  {
    __break(1u);
LABEL_27:
    v64 = (v60 & 0x3F) << 8;
    if (v60 < 0x800)
    {
      v65 = (v60 >> 6) + v64 + 33217;
      goto LABEL_20;
    }

LABEL_30:
    v78 = (v64 | (v60 >> 6) & 0x3F) << 8;
    if (v63)
    {
      v65 = (v60 >> 18) + ((v78 | (v60 >> 12) & 0x3F) << 8) - 2122219023;
    }

    else
    {
      v65 = (v60 >> 12) + v78 + 8487393;
    }

    goto LABEL_20;
  }

  v55 = v48;
  v41 = v47;
  if (v60 > 0x7F)
  {
    goto LABEL_27;
  }

  v65 = v60 + 1;
LABEL_20:
  v101 = ((v65 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v65) >> 3)))));
  v91 = sub_21DEC6E60();
  v80 = v66;
LABEL_21:
  v67 = v100;
  v68 = v88;
  v69 = v83;
  (*(v88 + 16))(v83, v55, v95);
  v70 = v89;
  v71 = v85;
  (*(v89 + 16))(v85, v67, v96);
  v72 = v98;
  v73 = v86;
  sub_21DE7A8B4(v98, v86);
  v90 = (*(v53 + 64))(v41, v53);
  v79 = v74;
  v101 = v94;
  *&v102 = v93;
  *(&v102 + 1) = v92;
  (*(v53 + 72))(&v111, v41, v53);
  v109 = v111;
  v110 = v112;
  v75 = (*(v53 + 80))(v41, v53);
  v77 = v76;
  (*(v53 + 88))(&v105, v41, v53);
  v107 = v105;
  v108 = v106;
  sub_21DE63DA0(v69, v71, v73, v91, v80, v90, v79, &v101, v87, v75, v77, &v109, &v107);
  sub_21DE5CD00(v72, &qword_27CE94140, &qword_21DECD700);
  (*(v70 + 8))(v100, v96);
  (*(v68 + 8))(v97, v95);
  return (*(v81 + 8))(v84, v82);
}

uint64_t sub_21DE7A8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94140, &qword_21DECD700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DE7A924(uint64_t *a1, void x1_0, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_21DEC6A40();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = *a1;
  v10 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94390, &qword_21DED0A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DECCA20;
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  v12 = *(a3 + 32);

  *(inited + 48) = v12(a2, a3);
  *(inited + 56) = v13;
  *(inited + 64) = v14;
  sub_21DE7AEDC(inited);
  swift_setDeallocating();
  sub_21DE5CD00(inited + 32, &qword_27CE94398, &qword_21DED0A28);
  (*(a3 + 8))(a2, a3);
  sub_21DEC6A30();
  if (v17)
  {

    *a4 = v17;
  }

  else
  {

    return sub_21DEC6C90();
  }

  return result;
}

unint64_t sub_21DE7AAC8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 48 * a3;
      v15 = (v9 + 32 + 48 * a2);
      v16 = 48 * v14;
      v17 = v15 + 48 * v14;
      if (result != v15 || result >= v17)
      {
        result = memmove(result, v15, v16);
      }

      v19 = *(v9 + 16);
      v11 = __OFADD__(v19, v12);
      v20 = v19 + v12;
      if (!v11)
      {
        *(v9 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_21DE5CD00(a4, &qword_27CE943A8, &qword_21DED0A38);
  }

  result = sub_21DE7AFF0(a4, v10);
  if (a3 == 1)
  {
    return sub_21DE5CD00(a4, &qword_27CE943A8, &qword_21DED0A38);
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_21DE7ABCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94388, qword_21DED0928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21DE7ACF4(uint64_t a1, unsigned int a2)
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

uint64_t sub_21DE7AD3C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21DE7ADAC(uint64_t a1, uint64_t a2)
{
  sub_21DEC7770();
  sub_21DEC6E90();
  v4 = sub_21DEC77B0();

  return sub_21DE7AE24(a1, a2, v4);
}

unint64_t sub_21DE7AE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21DEC7610())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21DE7AEDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943A0, &qword_21DED0A30);
    v3 = sub_21DEC7430();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21DE7ADAC(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t Array<A>.items<A>(ofType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94288, &qword_21DED0178);
  sub_21DE7B250();
  return sub_21DEC7020();
}

uint64_t sub_21DE7B0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  (*(**a1 + 88))(&v8);
  v5 = v8 >> 61;
  if ((v8 >> 61) <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        type metadata accessor for Contact();
      }

      else
      {
        type metadata accessor for Wifi();
      }
    }

    else
    {
      type metadata accessor for Event();
    }

    goto LABEL_13;
  }

  if (v5 <= 4)
  {
    if (v5 == 3)
    {
      type metadata accessor for ParkingLocation();
    }

    else
    {
      type metadata accessor for ItemList();
    }

    goto LABEL_13;
  }

  if (v5 == 5)
  {
    type metadata accessor for FinancialTransaction();
LABEL_13:
    v6 = swift_dynamicCast();
    return (*(*(v4 - 8) + 56))(a2, v6 ^ 1u, 1, v4);
  }

  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

unint64_t sub_21DE7B250()
{
  result = qword_27CE943B0;
  if (!qword_27CE943B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94288, &qword_21DED0178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE943B0);
  }

  return result;
}

uint64_t sub_21DE7B2B4()
{
  type metadata accessor for DateValidity();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DED0A40;
  *(v0 + 32) = sub_21DE812FC(&unk_282F27A20);
  result = sub_21DE812FC(&unk_282F27A80);
  *(v0 + 40) = result;
  qword_27CE9B2F8 = v0;
  return result;
}

uint64_t sub_21DE7B318(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1;
  }

  v4 = *(v1 + 32);
  if (*(v4 + 16) && (v5 = sub_21DEC7760(), v6 = -1 << *(v4 + 32), v7 = v5 & ~v6, ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    result = 1;
    while (*(*(v4 + 48) + 8 * v7) != a1)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v9 = *(v1 + 40);
    if (*(v9 + 16) && (v10 = sub_21DEC7760(), v11 = -1 << *(v9 + 32), v12 = v10 & ~v11, ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
    {
      v13 = ~v11;
      result = 1;
      while (*(*(v9 + 48) + 8 * v12) != a1)
      {
        v12 = (v12 + 1) & v13;
        if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21DE7B46C()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t EventDateComponents.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  if (*v0 >= 1)
  {
    v3 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v3);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](0x203A72616579, 0xE600000000000000);
  }

  if (v1 >= 1)
  {
    v4 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v4);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](0x203A68746E6F6DLL, 0xE700000000000000);
  }

  if (v2 >= 1)
  {
    v5 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v5);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](0x203A796164, 0xE500000000000000);
  }

  return 0;
}

uint64_t EventDateComponents.dateString.getter()
{
  v1 = sub_21DEC6D20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = v0[1];
  v7 = v0[2];
  if (*v0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 == 0;
  }

  if (v8 && v7 == 0)
  {
    return 0;
  }

  if (qword_27CE9B2F0 == -1)
  {
    if (v5 > 0xC)
    {
      goto LABEL_10;
    }
  }

  else
  {
    swift_once();
    if (v5 > 0xC)
    {
      goto LABEL_10;
    }
  }

  if ((v7 | 0x20) == 0x20 || (v24 = sub_21DE7B318(v5), (v26 & 1) == 0) && v7 >= v24 && v25 >= v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94430, &qword_21DED0E58);
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D83B88];
    *(v21 + 16) = xmmword_21DED0A50;
    v23 = MEMORY[0x277D83C10];
    *(v21 + 56) = v22;
    *(v21 + 64) = v23;
    *(v21 + 32) = v6;
    *(v21 + 96) = v22;
    *(v21 + 104) = v23;
    *(v21 + 72) = v5;
    *(v21 + 136) = v22;
    *(v21 + 144) = v23;
    *(v21 + 112) = v7;
    return sub_21DEC6DE0();
  }

LABEL_10:
  sub_21DE81464();
  v10 = swift_allocError();
  result = swift_willThrow();
  if (v10)
  {
    v12 = sub_21DEBD114();
    (*(v2 + 16))(v4, v12, v1);
    v13 = v10;
    v14 = sub_21DEC6D00();
    v15 = sub_21DEC71B0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_21DEC7710();
      v20 = sub_21DE56544(v18, v19, &v28);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_21DE0D000, v14, v15, "Cannot compute date: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223D4D340](v17, -1, -1);
      MEMORY[0x223D4D340](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return result;
}

SceneIntelligence::EventDateComponents __swiftcall EventDateComponents.init(year:month:day:)(Swift::Int_optional year, Swift::Int_optional month, Swift::Int_optional day)
{
  if (year.is_nil)
  {
    value = 0;
  }

  else
  {
    value = year.value;
  }

  if (month.is_nil)
  {
    v5 = 0;
  }

  else
  {
    v5 = month.value;
  }

  if (day.is_nil)
  {
    v6 = 0;
  }

  else
  {
    v6 = day.value;
  }

  *v3 = value;
  v3[1] = v5;
  v3[2] = v6;
  result.day = month.value;
  result.year = year.value;
  LOBYTE(result.month) = year.is_nil;
  return result;
}

SceneIntelligence::EventDateComponents __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EventDateComponents.init(string:)(Swift::String string)
{
  v2 = v1;
  v3 = HIBYTE(string._object) & 0xF;
  if ((string._object & 0x2000000000000000) == 0)
  {
    v3 = string._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_16;
  }

  v47[0] = 45;
  v47[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](string._countAndFlagsBits);
  v44[2] = v47;
  v6 = sub_21DE7E79C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE81448, v44, v4, v5, &v45);
  v7 = v6;
  if (v6[2] != 3)
  {
    goto LABEL_17;
  }

  v8 = v6[4];
  v9 = v6[5];
  if ((v9 ^ v8) < 0x4000)
  {
    goto LABEL_40;
  }

  v10 = v6[6];
  v11 = v6[7];
  v12 = sub_21DE81044(v6[4], v6[5], v10, v11, 10);
  if ((v13 & 0x100) != 0)
  {

    v14 = sub_21DE7F174(v8, v9, v10, v11, 10);
    v16 = v15;

    v13 = v16;
    v12 = v14;
  }

  v48 = v13;
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = v12;
  }

  v18 = v7[2];
  if (v18 < 2)
  {
    __break(1u);
LABEL_40:
    v17 = 0;
    v48 = 1;
    v18 = 3;
  }

  v19 = v7[8];
  v20 = v7[9];
  if ((v20 ^ v19) < 0x4000)
  {
    v34 = 0;
    v25 = 1;
    if (v18 >= 3)
    {
      goto LABEL_24;
    }

LABEL_42:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v7[10];
  v22 = v7[11];
  v23 = sub_21DE81044(v7[8], v7[9], v21, v22, 10);
  if ((v24 & 0x100) != 0)
  {

    v32 = sub_21DE7F174(v19, v20, v21, v22, 10);
    v25 = v33;

    v23 = v32;
  }

  else
  {
    v25 = v24;
  }

  if (v25)
  {
    v34 = 0;
  }

  else
  {
    v34 = v23;
  }

  if (v7[2] < 3uLL)
  {
    goto LABEL_42;
  }

LABEL_24:
  v45 = v34;
  v46 = v17;
  v35 = v2;
  v36 = v7[12];
  v37 = v7[13];
  v39 = v7[14];
  v38 = v7[15];

  if ((v37 ^ v36) < 0x4000)
  {
LABEL_17:

    goto LABEL_18;
  }

  v40 = sub_21DE81044(v36, v37, v39, v38, 10);
  if ((v41 & 0x100) != 0)
  {
    v40 = sub_21DE7F174(v36, v37, v39, v38, 10);
  }

  v42 = v40;
  v43 = v41;

  v2 = v35;
  v30 = v45;
  v29 = v46;
  if (v43)
  {
    v31 = 0;
  }

  else
  {
    v31 = v42;
  }

  if ((v48 | v25) & 1) != 0 || (v43)
  {
    goto LABEL_18;
  }

  if (qword_27CE9B2F0 != -1)
  {
    v26 = swift_once();
    if (v30 <= 0xC)
    {
      goto LABEL_34;
    }

LABEL_18:
    sub_21DE81464();
    swift_allocError();
    v26 = swift_willThrow();
    goto LABEL_46;
  }

  if (v45 > 0xC)
  {
    goto LABEL_18;
  }

LABEL_34:
  if ((v31 | 0x20) != 0x20)
  {
    v26 = sub_21DE7B318(v30);
    if ((v28 & 1) != 0 || v31 < v26 || v27 < v31)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  *v2 = v29;
  v2[1] = v30;
  v2[2] = v31;
LABEL_46:
  result.day = v28;
  result.month = v27;
  result.year = v26;
  return result;
}

__n128 sub_21DE7BDD4@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v5 = *a1;
  v3 = a1[1].n128_u64[0];
  sub_21DE779B4(a1);
  result = v5;
  *a2 = v5;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t EventDateComponents.computeDate()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DEC6910();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = *(v1 + 2);
  v13 = *v1;
  v14 = v10;
  sub_21DEC68F0();
  sub_21DE73DA4(v6, &type metadata for EventDateComponents, &off_282F27888, v9);
  (*(v4 + 8))(v6, v3);
  v11 = *(v4 + 48);
  if (v11(v9, 1, v3) != 1)
  {
    return (*(v4 + 32))(a1, v9, v3);
  }

  sub_21DEC68F0();
  result = (v11)(v9, 1, v3);
  if (result != 1)
  {
    return sub_21DE5CD00(v9, &qword_27CE94358, &qword_21DED08A0);
  }

  return result;
}

uint64_t EventDateComponents.computeDate(currentDate:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = *(v2 + 2);
  v12 = *v2;
  v13 = v8;
  sub_21DE73DA4(a1, &type metadata for EventDateComponents, &off_282F27888, v7);
  v9 = sub_21DEC6910();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_21DE5CD00(v7, &qword_27CE94358, &qword_21DED08A0);
  sub_21DE81464();
  swift_allocError();
  return swift_willThrow();
}

BOOL sub_21DE7C1A4(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

uint64_t sub_21DE7C1E0(void *a1, void *a2)
{
  v2 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v3 = a2[1];
    v4 = a1[1];
    v2 = v3 < v4;
    if (v3 == v4)
    {
      v5 = a2[2];
      v6 = a1[2];
      v2 = v5 < v6;
      if (v5 == v6)
      {
        v7 = a2[3];
        v8 = a1[3];
        v2 = v7 < v8;
        if (v7 == v8)
        {
          v2 = a2[4] < a1[4];
        }
      }
    }
  }

  v9 = v2;
  return v9 ^ 1u;
}

BOOL sub_21DE7C238(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

uint64_t sub_21DE7C274(void *a1, void *a2)
{
  v2 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v3 = a1[1];
    v4 = a2[1];
    v2 = v3 < v4;
    if (v3 == v4)
    {
      v5 = a1[2];
      v6 = a2[2];
      v2 = v5 < v6;
      if (v5 == v6)
      {
        v7 = a1[3];
        v8 = a2[3];
        v2 = v7 < v8;
        if (v7 == v8)
        {
          v2 = a1[4] < a2[4];
        }
      }
    }
  }

  v9 = v2;
  return v9 ^ 1u;
}

BOOL sub_21DE7C2CC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    return v5;
  }

  else
  {
    return *a2 < *a1;
  }
}

BOOL sub_21DE7C304(void *a1, void *a2)
{
  v2 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v3 = a2[1];
    v4 = a1[1];
    v2 = v3 < v4;
    if (v3 == v4)
    {
      v5 = a2[2];
      v6 = a1[2];
      v2 = v5 < v6;
      if (v5 == v6)
      {
        v7 = a2[3];
        v8 = a1[3];
        v2 = v7 < v8;
        if (v7 == v8)
        {
          return a2[4] < a1[4];
        }
      }
    }
  }

  return v2;
}

uint64_t (*EventDateTimeComponents.minuts.modify(void *a1))()
{
  *a1 = *(v1 + 32);
  a1[1] = v1;
  return sub_21DE7C49C;
}

uint64_t EventDateTimeComponents.timeZone.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EventDateTimeComponents(0) + 36);

  return sub_21DE818E0(a1, v3);
}

uint64_t EventDateTimeComponents.description.getter()
{
  v1 = sub_21DEC6910();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94360, &qword_21DED08A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_21DEC6A20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = 0xE000000000000000;
  v12 = *v0;
  if (*v0 >= 1)
  {
    v31 = 0x203A72616579;
    v32 = 0xE600000000000000;
    v30 = v12;
    v13 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v13);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](v31, v32);
  }

  v14 = v0[1];
  if (v14 >= 1)
  {
    v31 = 0x203A68746E6F6DLL;
    v32 = 0xE700000000000000;
    v30 = v14;
    v15 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v15);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](v31, v32);
  }

  v16 = v0[2];
  if (v16 >= 1)
  {
    v31 = 0x203A796164;
    v32 = 0xE500000000000000;
    v30 = v16;
    v17 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v17);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](v31, v32);
  }

  v18 = v0[3];
  if ((v18 & 0x8000000000000000) == 0)
  {
    v31 = 0x203A7372756F68;
    v32 = 0xE700000000000000;
    v30 = v18;
    v19 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v19);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](v31, v32);
  }

  v20 = v0[4];
  if ((v20 & 0x8000000000000000) == 0)
  {
    v31 = 0x3A736574756E696DLL;
    v32 = 0xE900000000000020;
    v30 = v20;
    v21 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v21);

    MEMORY[0x223D4B2A0](32, 0xE100000000000000);
    MEMORY[0x223D4B2A0](v31, v32);
  }

  v22 = type metadata accessor for EventDateTimeComponents(0);
  sub_21DE5C6E4(v0 + *(v22 + 36), v7, &qword_27CE94360, &qword_21DED08A8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21DE5CD00(v7, &qword_27CE94360, &qword_21DED08A8);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v31 = 0x6E6F7A20656D6974;
    v32 = 0xEB00000000203A65;
    sub_21DEC6900();
    v23 = sub_21DEC6A10();
    v25 = v24;
    (*(v2 + 8))(v4, v1);
    if (v25)
    {
      v26 = v23;
    }

    else
    {
      v26 = sub_21DEC6A00();
      v25 = v27;
    }

    MEMORY[0x223D4B2A0](v26, v25);

    MEMORY[0x223D4B2A0](v31, v32);

    (*(v9 + 8))(v11, v8);
  }

  return v33;
}

BOOL EventDateTimeComponents.isValid.getter()
{
  if (*v0)
  {
    return 1;
  }

  if (v0[1])
  {
    return 1;
  }

  if (v0[2])
  {
    return 1;
  }

  if (v0[3] == -1)
  {
    return v0[4] != -1;
  }

  return 1;
}

uint64_t EventDateTimeComponents.dateString.getter()
{
  v1 = sub_21DEC6D20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v5 = *v0;
  if (!*v0 && !v0[1] && !v0[2] && v0[3] == -1 && v0[4] == -1)
  {
    return 0;
  }

  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  if (qword_27CE9B2F0 != -1)
  {
    swift_once();
  }

  v6 = v0[1];
  if (v6 <= 0xC)
  {
    v9 = v0[2];
    if ((v9 | 0x20) == 0x20 || (v28 = sub_21DE7B318(v0[1]), (v30 & 1) == 0) && v9 >= v28 && v29 >= v9)
    {
      v31 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94430, &qword_21DED0E58);
      v10 = swift_allocObject();
      v11 = MEMORY[0x277D83B88];
      *(v10 + 16) = xmmword_21DED0A50;
      v12 = MEMORY[0x277D83C10];
      *(v10 + 56) = v11;
      *(v10 + 64) = v12;
      *(v10 + 32) = v5;
      *(v10 + 96) = v11;
      *(v10 + 104) = v12;
      *(v10 + 72) = v6;
      *(v10 + 136) = v11;
      *(v10 + 144) = v12;
      *(v10 + 112) = v9;
      v13 = sub_21DEC6DE0();
      MEMORY[0x223D4B2A0](v13);

      v14 = v0[3];
      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = v0[4];
        if ((v15 & 0x8000000000000000) == 0)
        {
          if (v14 > 0x17 || v15 > 0x3B)
          {

            v1 = v31;
            goto LABEL_9;
          }

          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_21DED0150;
          *(v16 + 56) = v11;
          *(v16 + 64) = v12;
          *(v16 + 32) = v14;
          *(v16 + 96) = v11;
          *(v16 + 104) = v12;
          *(v16 + 72) = v15;
          v17 = sub_21DEC6DE0();
          MEMORY[0x223D4B2A0](v17);
        }
      }

      return v32[0];
    }
  }

LABEL_9:
  sub_21DE81950();
  v7 = swift_allocError();
  result = swift_willThrow();
  if (v7)
  {
    v18 = sub_21DEBD114();
    (*(v2 + 16))(v4, v18, v1);
    v19 = v7;
    v20 = sub_21DEC6D00();
    v21 = sub_21DEC71B0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = v1;
      v24 = swift_slowAlloc();
      v32[0] = v24;
      *v22 = 136315138;
      swift_getErrorValue();
      v25 = sub_21DEC7710();
      v27 = sub_21DE56544(v25, v26, v32);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_21DE0D000, v20, v21, "Cannot compute date: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223D4D340](v24, -1, -1);
      MEMORY[0x223D4D340](v22, -1, -1);

      (*(v2 + 8))(v4, v23);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_21DE7CF60@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, char a11)
{
  v18 = *(type metadata accessor for EventDateTimeComponents(0) + 36);
  v19 = sub_21DEC6A20();
  result = (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  if (a2)
  {
    v21 = 0;
  }

  else
  {
    v21 = a1;
  }

  if (a4)
  {
    v22 = 0;
  }

  else
  {
    v22 = a3;
  }

  *a9 = v21;
  *(a9 + 1) = v22;
  if (a6)
  {
    v23 = 0;
  }

  else
  {
    v23 = a5;
  }

  v24 = a7;
  if (a8)
  {
    v24 = -1;
  }

  *(a9 + 2) = v23;
  *(a9 + 3) = v24;
  if (a11)
  {
    a10 = -1;
  }

  *(a9 + 4) = a10;
  return result;
}

uint64_t EventDateTimeComponents.init(string:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  v6 = type metadata accessor for EventDateTimeComponents(0);
  *(a3 + 3) = -1;
  *(a3 + 4) = -1;
  v7 = *(v6 + 36);
  v8 = sub_21DEC6A20();
  v9 = (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
  }

  v86 = 84;
  v87 = 0xE100000000000000;
  MEMORY[0x28223BE20](v9);
  v81 = &v86;
  v11 = sub_21DE7E79C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE821E8, v80, a1, a2, &v82);
  v12 = v11[2];
  if ((v12 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_18;
  }

  v13 = v11[4];
  v14 = v11[5];
  v15 = v11[6];
  v88 = v11;
  v86 = 45;
  v87 = 0xE100000000000000;
  MEMORY[0x28223BE20](v11);
  v81 = &v86;

  v17 = sub_21DE7EB5C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE821E8, v80, v13, v14, v15, v16);
  v18 = v17;
  if (*(v17 + 2) != 3)
  {

    goto LABEL_18;
  }

  v19 = *(v17 + 4);
  v20 = *(v17 + 5);
  if ((v20 ^ v19) < 0x4000)
  {
    v28 = 0;
    v24 = 1;
    v29 = 3;
  }

  else
  {
    v21 = *(v17 + 6);
    v22 = *(v17 + 7);
    v23 = sub_21DE81044(*(v17 + 4), *(v17 + 5), v21, v22, 10);
    if ((v24 & 0x100) != 0)
    {

      v25 = sub_21DE7F174(v19, v20, v21, v22, 10);
      v27 = v26;

      v24 = v27;
      v23 = v25;
    }

    if (v24)
    {
      v28 = 0;
    }

    else
    {
      v28 = v23;
    }

    v29 = *(v18 + 2);
    if (v29 < 2)
    {
      __break(1u);
      goto LABEL_67;
    }
  }

  v84 = v24;
  v82 = v28;
  v30 = *(v18 + 8);
  v31 = *(v18 + 9);
  if ((v31 ^ v30) < 0x4000)
  {
LABEL_67:
    v83 = 0;
    v36 = 1;
    goto LABEL_25;
  }

  v32 = *(v18 + 10);
  v33 = *(v18 + 11);
  v34 = sub_21DE81044(*(v18 + 8), *(v18 + 9), v32, v33, 10);
  if ((v35 & 0x100) != 0)
  {

    v38 = sub_21DE7F174(v30, v31, v32, v33, 10);
    v36 = v39;

    v34 = v38;
  }

  else
  {
    v36 = v35;
  }

  if (v36)
  {
    v40 = 0;
  }

  else
  {
    v40 = v34;
  }

  v83 = v40;
  v29 = *(v18 + 2);
LABEL_25:
  v85 = v12;
  if (v29 < 3)
  {
    __break(1u);
  }

  else
  {
    v41 = *(v18 + 12);
    v42 = *(v18 + 13);
    v43 = *(v18 + 14);
    v44 = *(v18 + 15);

    if ((v42 ^ v41) >= 0x4000)
    {
      v45 = sub_21DE81044(v41, v42, v43, v44, 10);
      if ((v46 & 0x100) != 0)
      {
        v45 = sub_21DE7F174(v41, v42, v43, v44, 10);
      }

      v47 = v45;
      v48 = v46;

      v49 = v85;
      if (v48)
      {
        v50 = 0;
      }

      else
      {
        v50 = v47;
      }

      v51 = v88;
      if ((v84 | v36))
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  v50 = 0;
  v48 = 1;
  v51 = v88;
  v49 = v85;
  if ((v84 | v36))
  {
    goto LABEL_18;
  }

LABEL_33:
  if (v48)
  {
    goto LABEL_18;
  }

  if (qword_27CE9B2F0 != -1)
  {
    swift_once();
    v51 = v88;
  }

  v52 = v83;
  if (v83 > 0xC)
  {
    goto LABEL_18;
  }

  if ((v50 | 0x20) != 0x20)
  {
    v64 = sub_21DE7B318(v83);
    if (v66)
    {
      goto LABEL_18;
    }

    v67 = v50 < v64;
    v51 = v88;
    if (v67 || v65 < v50)
    {
      goto LABEL_18;
    }
  }

  *a3 = v82;
  *(a3 + 1) = v52;
  *(a3 + 2) = v50;
  if (v49 != 2)
  {
  }

  if (v51[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_72;
  }

  v53 = v51[8];
  v54 = v51[9];
  v55 = v51[10];

  v86 = 58;
  v87 = 0xE100000000000000;
  MEMORY[0x28223BE20](v56);
  v81 = &v86;
  v51 = sub_21DE7EB5C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE821E8, v80, v53, v54, v55, &v82);
  if (v51[2] < 2uLL)
  {
LABEL_18:

LABEL_19:
    sub_21DE81950();
    swift_allocError();
    swift_willThrow();
    return sub_21DE779B4(a3);
  }

  v57 = v51[4];
  v58 = v51[5];
  if ((v58 ^ v57) < 0x4000)
  {
LABEL_73:
    v88 = 0;
    v63 = 1;
    goto LABEL_55;
  }

  v60 = v51[6];
  v59 = v51[7];
  v61 = v51;
  v51 = sub_21DE81044(v51[4], v58, v60, v59, 10);
  if ((v62 & 0x100) != 0)
  {

    v68 = sub_21DE7F174(v57, v58, v60, v59, 10);
    v63 = v69;

    v51 = v68;
  }

  else
  {
    v63 = v62;
  }

  if (v63)
  {
    v70 = 0;
  }

  else
  {
    v70 = v51;
  }

  v88 = v70;
  if (v61[2] < 2uLL)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v51 = v61;
LABEL_55:
  v71 = v51[8];
  v72 = v51[9];
  v74 = v51[10];
  v73 = v51[11];

  if ((v72 ^ v71) < 0x4000)
  {

    if (v63)
    {
      goto LABEL_19;
    }

    v79 = 0;
    v78 = 1;
  }

  else
  {
    v75 = sub_21DE81044(v71, v72, v74, v73, 10);
    if ((v76 & 0x100) != 0)
    {
      v75 = sub_21DE7F174(v71, v72, v74, v73, 10);
    }

    v77 = v75;
    v78 = v76;

    if (v78)
    {
      v79 = 0;
    }

    else
    {
      v79 = v77;
    }

    if (v63)
    {
      goto LABEL_19;
    }
  }

  if (((v88 - 3) < 0xFFFFFFFFFFFFFFE7) | v78 & 1 || (v79 - 60) < 0xFFFFFFFFFFFFFFC3)
  {
    goto LABEL_19;
  }

  *(a3 + 3) = v88;
  *(a3 + 4) = v79;
  return result;
}