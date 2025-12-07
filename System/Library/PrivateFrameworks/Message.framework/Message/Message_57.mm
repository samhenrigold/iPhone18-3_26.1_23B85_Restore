uint64_t sub_1B0BA1370(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
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

uint64_t sub_1B0BA13B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1B0BA14A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1B0BA14E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0BA155C()
{
  result = qword_1EB6DDDF8;
  if (!qword_1EB6DDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDF8);
  }

  return result;
}

unint64_t sub_1B0BA160C()
{
  result = qword_1EB6DCCD0;
  if (!qword_1EB6DCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCCD0);
  }

  return result;
}

unint64_t sub_1B0BA16B4()
{
  result = qword_1EB6DDDC8;
  if (!qword_1EB6DDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDC8);
  }

  return result;
}

unint64_t sub_1B0BA1708()
{
  result = qword_1EB6DDE80;
  if (!qword_1EB6DDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE80);
  }

  return result;
}

unint64_t sub_1B0BA175C()
{
  result = qword_1EB6DDD68;
  if (!qword_1EB6DDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD68);
  }

  return result;
}

unint64_t sub_1B0BA17B0()
{
  result = qword_1EB6DB718;
  if (!qword_1EB6DB718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E4FB8, &qword_1B0ECA2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB718);
  }

  return result;
}

unint64_t sub_1B0BA1834()
{
  result = qword_1EB6DD4C0;
  if (!qword_1EB6DD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4C0);
  }

  return result;
}

unint64_t sub_1B0BA1888()
{
  result = qword_1EB6DDCE0;
  if (!qword_1EB6DDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCE0);
  }

  return result;
}

unint64_t sub_1B0BA18DC()
{
  result = qword_1EB6DDD48;
  if (!qword_1EB6DDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD48);
  }

  return result;
}

unint64_t sub_1B0BA1930()
{
  result = qword_1EB6DDCE8;
  if (!qword_1EB6DDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCE8);
  }

  return result;
}

unint64_t sub_1B0BA1984()
{
  result = qword_1EB6DDCB0;
  if (!qword_1EB6DDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCB0);
  }

  return result;
}

unint64_t sub_1B0BA19D8()
{
  result = qword_1EB6DDE78;
  if (!qword_1EB6DDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE78);
  }

  return result;
}

unint64_t sub_1B0BA1A2C()
{
  result = qword_1EB6DDE48;
  if (!qword_1EB6DDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE48);
  }

  return result;
}

unint64_t sub_1B0BA1A80()
{
  result = qword_1EB6DDE28;
  if (!qword_1EB6DDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE28);
  }

  return result;
}

unint64_t sub_1B0BA1AD4()
{
  result = qword_1EB6DDE08;
  if (!qword_1EB6DDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE08);
  }

  return result;
}

double sub_1B0BA1B7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0BA1BC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_1B0BA1C6C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 286) = 0;
  return result;
}

unint64_t sub_1B0BA1E40()
{
  result = qword_1EB6DDDA8;
  if (!qword_1EB6DDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDA8);
  }

  return result;
}

unint64_t sub_1B0BA1E94()
{
  result = qword_1EB6DA368;
  if (!qword_1EB6DA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DA368);
  }

  return result;
}

uint64_t sub_1B0BA1F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0BA1FB8(uint64_t a1, int a2)
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

uint64_t sub_1B0BA2000(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B0BA2080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0BA20C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0BA2130(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1B0BA218C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B0BA2214(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_1B0BA2270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0BA22E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0BA233C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy70_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0BA23C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 70))
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

uint64_t sub_1B0BA241C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 70) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 70) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Flags.Label(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Flags.Label(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B0BA2618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B0BA2660(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t _s13CapturedStateV14CapturedRemoteV6ServerVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[4])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
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

uint64_t _s13CapturedStateV14CapturedRemoteV6ServerVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0BA2790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_1B0BA27D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0BA283C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 294))
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

uint64_t sub_1B0BA2884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 292) = 0;
    *(result + 288) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 294) = 1;
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

    *(result + 294) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0BA2928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_1B0BA2984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0BA2A0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0BA2A54(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t _s13CapturedStateV14PathAttributesVwet(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1B0BA2B64()
{
  result = qword_1EB6E5010;
  if (!qword_1EB6E5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5010);
  }

  return result;
}

unint64_t sub_1B0BA2BBC()
{
  result = qword_1EB6E5018;
  if (!qword_1EB6E5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5018);
  }

  return result;
}

unint64_t sub_1B0BA2C14()
{
  result = qword_1EB6E5020;
  if (!qword_1EB6E5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5020);
  }

  return result;
}

unint64_t sub_1B0BA2C6C()
{
  result = qword_1EB6DDE68;
  if (!qword_1EB6DDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE68);
  }

  return result;
}

unint64_t sub_1B0BA2CC4()
{
  result = qword_1EB6DDE70;
  if (!qword_1EB6DDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE70);
  }

  return result;
}

unint64_t sub_1B0BA2D1C()
{
  result = qword_1EB6DDCD0;
  if (!qword_1EB6DDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCD0);
  }

  return result;
}

unint64_t sub_1B0BA2D74()
{
  result = qword_1EB6DDCD8;
  if (!qword_1EB6DDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCD8);
  }

  return result;
}

unint64_t sub_1B0BA2DCC()
{
  result = qword_1EB6DDDE8;
  if (!qword_1EB6DDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDE8);
  }

  return result;
}

unint64_t sub_1B0BA2E24()
{
  result = qword_1EB6DDDF0;
  if (!qword_1EB6DDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDF0);
  }

  return result;
}

uint64_t sub_1B0BA2E78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E676F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656E69676E65 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B0F2B7B0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B0F2B7D0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B7F0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B0F2B810 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736B736174 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

unint64_t sub_1B0BA3114()
{
  result = qword_1EB6DDDE0;
  if (!qword_1EB6DDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDE0);
  }

  return result;
}

unint64_t sub_1B0BA3168()
{
  result = qword_1EB6DDE98;
  if (!qword_1EB6DDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE98);
  }

  return result;
}

unint64_t sub_1B0BA31BC()
{
  result = qword_1EB6DDDA0;
  if (!qword_1EB6DDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDA0);
  }

  return result;
}

uint64_t sub_1B0BA3210(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1B0BA3278()
{
  result = qword_1EB6DDD70;
  if (!qword_1EB6DDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD70);
  }

  return result;
}

unint64_t sub_1B0BA32CC()
{
  result = qword_1EB6DD4D8;
  if (!qword_1EB6DD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4D8);
  }

  return result;
}

unint64_t sub_1B0BA3320()
{
  result = qword_1EB6DD4E0;
  if (!qword_1EB6DD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4E0);
  }

  return result;
}

uint64_t sub_1B0BA3374(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656E6E6F63 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786F626C69616DLL && a2 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA3490(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7374726F70707573 && a2 == 0xEC00000065766F4DLL;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B0F2B950 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B970 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B0F2B990 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA3604(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6170655368746170 && a2 == 0xED0000726F746172 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x556C616963657073 && a2 == 0xEA00000000006573)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA377C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726576726573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B0F2B8B0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA38F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E69646E6570 && a2 == 0xEB00000000636E79;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552686372616573 && a2 == 0xEE00737473657571 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B0F2B9B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA3A1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C6156646975 && a2 == 0xEB00000000797469;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5764656863746566 && a2 == 0xED0000776F646E69 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D74736568676968 && a2 == 0xED0000716553646FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA3B48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7565169 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA3CA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6580597 && a2 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA3DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697373696DLL && a2 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B0F2BAB0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5564656972657571 && a2 == 0xEB00000000734449 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B0F2BAD0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA4018(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x436567617373656DLL && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449557478656ELL && a2 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64696C6156646975 && a2 == 0xEB00000000797469 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D74736568676968 && a2 == 0xED0000716553646FLL || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473656867694879 && a2 == 0xEE00716553646F4DLL || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x70657453636E7973 && a2 == 0xE900000000000073 || (sub_1B0E46A78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B8D0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B0F2B8F0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B0F2B910 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B0F2B930 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4D676E697373696DLL && a2 == 0xEF73656761737365)
  {

    return 10;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1B0BA43D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x80000001B0F2B9F0 == a2;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B0F2BA10 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B0F2BA30 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B0F2BA50 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B0F2BA70 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B0F2BA90 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA45CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B830 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B0F2B850 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617453636E7973 && a2 == 0xE900000000000065 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x75716552636E7973 && a2 == 0xEC00000073747365 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B0F2B870 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B0F2B890 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

unint64_t sub_1B0BA4824()
{
  result = qword_1EB6DDD60;
  if (!qword_1EB6DDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD60);
  }

  return result;
}

unint64_t sub_1B0BA4878()
{
  result = qword_1EB6DDD40;
  if (!qword_1EB6DDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD40);
  }

  return result;
}

unint64_t sub_1B0BA48CC()
{
  result = qword_1EB6DED18;
  if (!qword_1EB6DED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DED18);
  }

  return result;
}

unint64_t sub_1B0BA4920()
{
  result = qword_1EB6DD7D0;
  if (!qword_1EB6DD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7D0);
  }

  return result;
}

unint64_t sub_1B0BA4974()
{
  result = qword_1EB6DDC70;
  if (!qword_1EB6DDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC70);
  }

  return result;
}

uint64_t sub_1B0BA49C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B0BA4A44()
{
  result = qword_1EB6DDD10;
  if (!qword_1EB6DDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD10);
  }

  return result;
}

unint64_t sub_1B0BA4A98()
{
  result = qword_1EB6DDCF0;
  if (!qword_1EB6DDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCF0);
  }

  return result;
}

unint64_t sub_1B0BA4AEC()
{
  result = qword_1EB6DDCC8;
  if (!qword_1EB6DDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCC8);
  }

  return result;
}

unint64_t sub_1B0BA4B40()
{
  result = qword_1EB6DDE60;
  if (!qword_1EB6DDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE60);
  }

  return result;
}

unint64_t sub_1B0BA4B94()
{
  result = qword_1EB6DDE40;
  if (!qword_1EB6DDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE40);
  }

  return result;
}

unint64_t sub_1B0BA4BE8()
{
  result = qword_1EB6DDE20;
  if (!qword_1EB6DDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE20);
  }

  return result;
}

unint64_t sub_1B0BA4C3C()
{
  result = qword_1EB6DDDC0;
  if (!qword_1EB6DDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDC0);
  }

  return result;
}

unint64_t sub_1B0BA4C90()
{
  result = qword_1EB6DB720;
  if (!qword_1EB6DB720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E50B0, &qword_1B0ECAFA8);
    sub_1B0BA3210(&qword_1EB6DADE0, &qword_1EB6E4FD0, &qword_1B0ECA2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB720);
  }

  return result;
}

unint64_t sub_1B0BA4D3C()
{
  result = qword_1EB6DB728;
  if (!qword_1EB6DB728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E50B8, &qword_1B0ECAFB0);
    sub_1B0BA49C8(&qword_1EB6DB4B8, &qword_1EB6E4FD8, &qword_1B0ECA2E8, sub_1B0BA1984);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB728);
  }

  return result;
}

unint64_t sub_1B0BA4DF4()
{
  result = qword_1EB6DDD88;
  if (!qword_1EB6DDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD88);
  }

  return result;
}

unint64_t sub_1B0BA4E48()
{
  result = qword_1EB6DD518;
  if (!qword_1EB6DD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD518);
  }

  return result;
}

unint64_t sub_1B0BA4E9C()
{
  result = qword_1EB6DD4E8;
  if (!qword_1EB6DD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4E8);
  }

  return result;
}

unint64_t sub_1B0BA4EF0()
{
  result = qword_1EB6DD520;
  if (!qword_1EB6DD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD520);
  }

  return result;
}

unint64_t sub_1B0BA4F44()
{
  result = qword_1EB6DDC88;
  if (!qword_1EB6DDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC88);
  }

  return result;
}

unint64_t sub_1B0BA4F98()
{
  result = qword_1EB6DDC90;
  if (!qword_1EB6DDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC90);
  }

  return result;
}

unint64_t sub_1B0BA4FEC()
{
  result = qword_1EB6DDD28;
  if (!qword_1EB6DDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD28);
  }

  return result;
}

unint64_t sub_1B0BA5040()
{
  result = qword_1EB6DDD08;
  if (!qword_1EB6DDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchRequest.Predicate.Color(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchRequest.Predicate.Color(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ConnectionStatus.Error.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConnectionStatus.Error.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s13CapturedStateV7MailboxV16MailboxSyncStateV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s13CapturedStateV7MailboxV16MailboxSyncStateV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B0BA5564(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1B0BA55C0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B0BA5638()
{
  result = qword_1EB6E50E8;
  if (!qword_1EB6E50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E50E8);
  }

  return result;
}

unint64_t sub_1B0BA5690()
{
  result = qword_1EB6E50F0;
  if (!qword_1EB6E50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E50F0);
  }

  return result;
}

unint64_t sub_1B0BA56E8()
{
  result = qword_1EB6E50F8;
  if (!qword_1EB6E50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E50F8);
  }

  return result;
}

unint64_t sub_1B0BA5740()
{
  result = qword_1EB6E5100;
  if (!qword_1EB6E5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5100);
  }

  return result;
}

unint64_t sub_1B0BA5798()
{
  result = qword_1EB6E5108;
  if (!qword_1EB6E5108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5108);
  }

  return result;
}

unint64_t sub_1B0BA57F0()
{
  result = qword_1EB6E5110;
  if (!qword_1EB6E5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5110);
  }

  return result;
}

unint64_t sub_1B0BA5848()
{
  result = qword_1EB6E5118;
  if (!qword_1EB6E5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5118);
  }

  return result;
}

unint64_t sub_1B0BA58A0()
{
  result = qword_1EB6E5120;
  if (!qword_1EB6E5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5120);
  }

  return result;
}

unint64_t sub_1B0BA58F8()
{
  result = qword_1EB6E5128;
  if (!qword_1EB6E5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5128);
  }

  return result;
}

unint64_t sub_1B0BA5950()
{
  result = qword_1EB6E5130;
  if (!qword_1EB6E5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5130);
  }

  return result;
}

unint64_t sub_1B0BA59A8()
{
  result = qword_1EB6E5138;
  if (!qword_1EB6E5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5138);
  }

  return result;
}

unint64_t sub_1B0BA5A00()
{
  result = qword_1EB6E5140;
  if (!qword_1EB6E5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5140);
  }

  return result;
}

unint64_t sub_1B0BA5A58()
{
  result = qword_1EB6E5148;
  if (!qword_1EB6E5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5148);
  }

  return result;
}

unint64_t sub_1B0BA5AB0()
{
  result = qword_1EB6E5150;
  if (!qword_1EB6E5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5150);
  }

  return result;
}

unint64_t sub_1B0BA5B08()
{
  result = qword_1EB6E5158;
  if (!qword_1EB6E5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5158);
  }

  return result;
}

unint64_t sub_1B0BA5B60()
{
  result = qword_1EB6E5160;
  if (!qword_1EB6E5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5160);
  }

  return result;
}

unint64_t sub_1B0BA5BB8()
{
  result = qword_1EB6DDCF8;
  if (!qword_1EB6DDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCF8);
  }

  return result;
}

unint64_t sub_1B0BA5C10()
{
  result = qword_1EB6DDD00;
  if (!qword_1EB6DDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD00);
  }

  return result;
}

unint64_t sub_1B0BA5C68()
{
  result = qword_1EB6DDD18;
  if (!qword_1EB6DDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD18);
  }

  return result;
}

unint64_t sub_1B0BA5CC0()
{
  result = qword_1EB6DDD20;
  if (!qword_1EB6DDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD20);
  }

  return result;
}

unint64_t sub_1B0BA5D18()
{
  result = qword_1EB6DDC78;
  if (!qword_1EB6DDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC78);
  }

  return result;
}

unint64_t sub_1B0BA5D70()
{
  result = qword_1EB6DDC80;
  if (!qword_1EB6DDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC80);
  }

  return result;
}

unint64_t sub_1B0BA5DC8()
{
  result = qword_1EB6DD508;
  if (!qword_1EB6DD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD508);
  }

  return result;
}

unint64_t sub_1B0BA5E20()
{
  result = qword_1EB6DD510;
  if (!qword_1EB6DD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD510);
  }

  return result;
}

unint64_t sub_1B0BA5E78()
{
  result = qword_1EB6DDD78;
  if (!qword_1EB6DDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD78);
  }

  return result;
}

unint64_t sub_1B0BA5ED0()
{
  result = qword_1EB6DDD80;
  if (!qword_1EB6DDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD80);
  }

  return result;
}

unint64_t sub_1B0BA5F28()
{
  result = qword_1EB6DDDB0;
  if (!qword_1EB6DDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDB0);
  }

  return result;
}

unint64_t sub_1B0BA5F80()
{
  result = qword_1EB6DDDB8;
  if (!qword_1EB6DDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDB8);
  }

  return result;
}

unint64_t sub_1B0BA5FD8()
{
  result = qword_1EB6DDE10;
  if (!qword_1EB6DDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE10);
  }

  return result;
}

unint64_t sub_1B0BA6030()
{
  result = qword_1EB6DDE18;
  if (!qword_1EB6DDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE18);
  }

  return result;
}

unint64_t sub_1B0BA6088()
{
  result = qword_1EB6DDE30;
  if (!qword_1EB6DDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE30);
  }

  return result;
}

unint64_t sub_1B0BA60E0()
{
  result = qword_1EB6DDE38;
  if (!qword_1EB6DDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE38);
  }

  return result;
}

unint64_t sub_1B0BA6138()
{
  result = qword_1EB6DDE50;
  if (!qword_1EB6DDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE50);
  }

  return result;
}

unint64_t sub_1B0BA6190()
{
  result = qword_1EB6DDE58;
  if (!qword_1EB6DDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE58);
  }

  return result;
}

unint64_t sub_1B0BA61E8()
{
  result = qword_1EB6DDCB8;
  if (!qword_1EB6DDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCB8);
  }

  return result;
}

unint64_t sub_1B0BA6240()
{
  result = qword_1EB6DDCC0;
  if (!qword_1EB6DDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCC0);
  }

  return result;
}

unint64_t sub_1B0BA6298()
{
  result = qword_1EB6DDD30;
  if (!qword_1EB6DDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD30);
  }

  return result;
}

unint64_t sub_1B0BA62F0()
{
  result = qword_1EB6DDD38;
  if (!qword_1EB6DDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD38);
  }

  return result;
}

unint64_t sub_1B0BA6348()
{
  result = qword_1EB6DDD50;
  if (!qword_1EB6DDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD50);
  }

  return result;
}

unint64_t sub_1B0BA63A0()
{
  result = qword_1EB6DDD58;
  if (!qword_1EB6DDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD58);
  }

  return result;
}

unint64_t sub_1B0BA63F8()
{
  result = qword_1EB6DD4C8;
  if (!qword_1EB6DD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4C8);
  }

  return result;
}

unint64_t sub_1B0BA6450()
{
  result = qword_1EB6DD4D0;
  if (!qword_1EB6DD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4D0);
  }

  return result;
}

unint64_t sub_1B0BA64A8()
{
  result = qword_1EB6DDD90;
  if (!qword_1EB6DDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD90);
  }

  return result;
}

unint64_t sub_1B0BA6500()
{
  result = qword_1EB6DDD98;
  if (!qword_1EB6DDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDD98);
  }

  return result;
}

unint64_t sub_1B0BA6558()
{
  result = qword_1EB6DDE88;
  if (!qword_1EB6DDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE88);
  }

  return result;
}

unint64_t sub_1B0BA65B0()
{
  result = qword_1EB6DDE90;
  if (!qword_1EB6DDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDE90);
  }

  return result;
}

unint64_t sub_1B0BA6608()
{
  result = qword_1EB6DDDD0;
  if (!qword_1EB6DDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDD0);
  }

  return result;
}

unint64_t sub_1B0BA6660()
{
  result = qword_1EB6DDDD8;
  if (!qword_1EB6DDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDDD8);
  }

  return result;
}

uint64_t sub_1B0BA66B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43676E696E6E7572 && a2 == 0xEF73646E616D6D6FLL;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x41676E696E6E7572 && a2 == 0xEE00736E6F697463 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B0F2BAF0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B0F2BB10 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0BA6838(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F74736968 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B9D0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54786F626C69616DLL && a2 == 0xEB000000006B7361 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

unint64_t sub_1B0BA6A3C()
{
  result = qword_1EB6DD500;
  if (!qword_1EB6DD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD500);
  }

  return result;
}

unint64_t sub_1B0BA6A90()
{
  result = qword_1EB6DD538;
  if (!qword_1EB6DD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD538);
  }

  return result;
}

unint64_t sub_1B0BA6AE4()
{
  result = qword_1EB6DDCA8;
  if (!qword_1EB6DDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCA8);
  }

  return result;
}

unint64_t sub_1B0BA6B6C()
{
  result = qword_1EB6E5180;
  if (!qword_1EB6E5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5180);
  }

  return result;
}

unint64_t sub_1B0BA6BC4()
{
  result = qword_1EB6E5188;
  if (!qword_1EB6E5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5188);
  }

  return result;
}

unint64_t sub_1B0BA6C1C()
{
  result = qword_1EB6E5190;
  if (!qword_1EB6E5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5190);
  }

  return result;
}

unint64_t sub_1B0BA6C74()
{
  result = qword_1EB6DDC98;
  if (!qword_1EB6DDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC98);
  }

  return result;
}

unint64_t sub_1B0BA6CCC()
{
  result = qword_1EB6DDCA0;
  if (!qword_1EB6DDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDCA0);
  }

  return result;
}

unint64_t sub_1B0BA6D24()
{
  result = qword_1EB6DD528;
  if (!qword_1EB6DD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD528);
  }

  return result;
}

unint64_t sub_1B0BA6D7C()
{
  result = qword_1EB6DD530;
  if (!qword_1EB6DD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD530);
  }

  return result;
}

unint64_t sub_1B0BA6DD4()
{
  result = qword_1EB6DD4F0;
  if (!qword_1EB6DD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4F0);
  }

  return result;
}

unint64_t sub_1B0BA6E2C()
{
  result = qword_1EB6DD4F8;
  if (!qword_1EB6DD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4F8);
  }

  return result;
}

uint64_t sub_1B0BA6EBC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 32); ; i += 15)
  {
    v8 = i[11];
    v9 = i[13];
    v65 = i[12];
    v66[0] = v9;
    *(v66 + 9) = *(i + 217);
    v10 = i[7];
    v11 = i[9];
    v61 = i[8];
    v62 = v11;
    v12 = i[9];
    v13 = i[11];
    v63 = i[10];
    v64 = v13;
    v14 = i[3];
    v15 = i[5];
    v57 = i[4];
    v58 = v15;
    v16 = i[5];
    v17 = i[7];
    v59 = i[6];
    v60 = v17;
    v18 = i[1];
    v54[0] = *i;
    v54[1] = v18;
    v19 = i[3];
    v21 = *i;
    v20 = i[1];
    v55 = i[2];
    v56 = v19;
    v22 = i[13];
    v52 = v65;
    v53[0] = v22;
    *(v53 + 9) = *(i + 217);
    v48 = v61;
    v49 = v12;
    v50 = v63;
    v51 = v8;
    v44 = v57;
    v45 = v16;
    v46 = v59;
    v47 = v10;
    v40 = v21;
    v41 = v20;
    v42 = v55;
    v43 = v14;
    sub_1B0ACE448(v54, &v26);
    v23 = a1(&v40);
    if (v3)
    {
      break;
    }

    v24 = v23;
    v38 = v52;
    v39[0] = v53[0];
    *(v39 + 9) = *(v53 + 9);
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v30 = v44;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    sub_1B0ACE480(&v26);
    if (v24)
    {
      return v6;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  v38 = v52;
  v39[0] = v53[0];
  *(v39 + 9) = *(v53 + 9);
  v34 = v48;
  v35 = v49;
  v36 = v50;
  v37 = v51;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  sub_1B0ACE480(&v26);
  return v6;
}

uint64_t sub_1B0BA70C0(uint64_t (*a1)(int *, __n128), uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  for (i = (a3 + 48); ; i += 3)
  {
    v7 = *(i - 1);
    v8 = *i;
    v11 = *(i - 4);
    v12 = v7;
    v13 = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = (v14)(&v11);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_1B0BA7198(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v2, 0);
    v4 = v30;
    v5 = v1 + 56;
    result = sub_1B0E460B8();
    v6 = result;
    v7 = 0;
    v25 = v1 + 64;
    v26 = v2;
    v27 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      result = sub_1B0E469C8();
      v10 = result;
      v12 = v11;
      v13 = v4;
      v31 = v4;
      v14 = v1;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1B041D32C((v15 > 1), v16 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v16 + 1;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = v10;
      *(v17 + 40) = v12;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1B0425168(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_1B0425168(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BA73DC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + ((v9 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03AB2E0(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
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

uint64_t sub_1B0BA74E4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B019E4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
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

unint64_t sub_1B0BA75E8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4)
{
  v8 = sub_1B03A2BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v9 = sub_1B03CAD70(a1, a2, a3, a4);
  if (*(v8 + 16) <= *(v9 + 16) >> 3)
  {
    v13 = v9;
    sub_1B03CAC64(v8, sub_1B0B92B1C);

    v10 = v13;
    if (*(v13 + 16))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_1B0BA8BB0(v8, v9, &qword_1EB6E4350, &qword_1B0EC5098);

    if (*(v10 + 16))
    {
LABEL_3:
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      return v11 | 0xA000000000000004;
    }
  }

  return 0xF000000000000007;
}

uint64_t StateWithTasks.init(windowOfInterestSizes:environment:mailboxFilter:fetchedMessageMetadata:tracingID:logName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13)
{
  v33 = type metadata accessor for StateWithTasks(0);
  v17 = *(v33 + 32);
  _s30MailboxesToSelectLoggingHelperCMa();
  v18 = swift_allocObject();
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = 0;
  *(a9 + v17) = v18;
  v19 = a8 & 1;
  v34 = a3 & 1;
  v20 = MEMORY[0x1E69E7CC0];
  v21 = sub_1B0BACD54(MEMORY[0x1E69E7CC0]);
  v22 = sub_1B0BAC2B4(v20);
  v23 = sub_1B03B1738(v20);
  v24 = sub_1B0BAC3F0(v20);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v34;
  *(a9 + 17) = v19;
  *(a9 + 18) = a10 & 1;
  *(a9 + 24) = a4;
  *(a9 + 25) = BYTE1(a4) & 1;
  *(a9 + 26) = BYTE2(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v25 = MEMORY[0x1E69E7CD0];
  *(a9 + 48) = a7;
  *(a9 + 56) = v25;
  *(a9 + 64) = v21;
  *(a9 + 72) = 2;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 111) = 0;
  *(a9 + 120) = 0;
  *(a9 + 128) = 0;
  *(a9 + 136) = 1;
  *(a9 + 144) = 0;
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  *(a9 + 168) = v22;
  *(a9 + 176) = v20;
  *(a9 + 184) = v20;
  *(a9 + 192) = 0;
  *(a9 + 200) = v24;
  *(a9 + 208) = v23;
  *(a9 + 216) = v20;
  *(a9 + 224) = xmmword_1B0ECC550;
  *(a9 + 240) = 0;
  *(a9 + 248) = v20;
  *(a9 + 256) = v25;
  *(a9 + 288) = a12;
  *(a9 + 296) = a13;
  v26 = a9 + *(v33 + 28);
  sub_1B0E43998();
  result = type metadata accessor for State.Logger(0);
  *(v26 + *(result + 20)) = a11;
  *(a9 + 264) = a11;
  *(a9 + 272) = v20;
  *(a9 + 280) = 0;
  return result;
}

uint64_t sub_1B0BA790C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ClientCommand(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0A91328(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B0398EFC(v10, &qword_1EB6E4BC8, &qword_1B0EC92F8);
    return v20(a1, a5);
  }

  sub_1B0423C80(v10, v14, type metadata accessor for ClientCommand);
  v15 = *(a2 + 272);
  v16 = *(a2 + 280);
  v17 = *(a2 + 264);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v17) = sub_1B0B7D688(v14, v17, v15, v16);

  sub_1B0390574(v14, type metadata accessor for ClientCommand);
  if (v17)
  {
    return v20(a1, a5);
  }

  return 0;
}

void StateWithTasks.logLongRunningSyncRequests(now:)(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = type metadata accessor for StateWithTasks(0);
  sub_1B0B88194(a1, v1 + *(v3 + 28));
}

uint64_t StateWithTasks.logLongRunningTasks(now:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RunningTask(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 272);
  result = type metadata accessor for StateWithTasks(0);
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = *(result + 28);
    v12 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_1B0390720(v12, v7, type metadata accessor for RunningTask);
      sub_1B0B75C78(a1, v2 + v11);
      result = sub_1B0390574(v7, type metadata accessor for RunningTask);
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1B0BA7CA4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2 | (a2 << 32));
  result = sub_1B0E46CB8();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B0E434F8();
    result = sub_1B0E43528();
    if ((v11 & 1) == 0)
    {
      do
      {
        v13 = (a3 + 16 * result);
        if ((v13[2] | (v13[2] << 32)) == (a2 | (a2 << 32)))
        {
          v14 = *v13;
          v15 = *(*v13 + 16);
          if (v15 == *(a1 + 16))
          {
            if (!v15 || v14 == a1)
            {
              return result;
            }

            v16 = (v14 + 32);
            for (i = (a1 + 32); *v16 == *i; ++i)
            {
              ++v16;
              if (!--v15)
              {
                return result;
              }
            }
          }
        }

        sub_1B0E43548();
        result = sub_1B0E43528();
      }

      while ((v12 & 1) == 0);
    }
  }

  return result;
}

uint64_t sub_1B0BA7E10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a1;
  sub_1B0E46C28();
  sub_1B0E46C88();
  result = sub_1B0E46CB8();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B0E434F8();
    result = sub_1B0E43528();
    if ((v9 & 1) == 0 && *(a2 + 4 * result) != v7)
    {
      do
      {
        sub_1B0E43548();
        result = sub_1B0E43528();
      }

      while ((v10 & 1) == 0 && *(a2 + 4 * result) != v7);
    }
  }

  return result;
}

uint64_t sub_1B0BA7F24(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = _s19UserInitiatedSearchVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = *v2;
  result = sub_1B03CA1BC(a1, a2, *v2, _s19UserInitiatedSearchVMa);
  if (!v3)
  {
    if (v18)
    {
      return *(v16 + 16);
    }

    v36 = v15;
    v37 = a1;
    v33 = v12;
    v34 = v9;
    v38 = a2;
    v32 = v2;
    v40 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v40;
      }

      v35 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v39;
        v24 = *(v7 + 72);
        v25 = v36;
        sub_1B0390720(v23 + v24 * v19, v36, _s19UserInitiatedSearchVMa);
        v26 = v37(v25);
        result = sub_1B0390574(v25, _s19UserInitiatedSearchVMa);
        if (v26)
        {
          v7 = v35;
          v16 = v22;
        }

        else
        {
          v27 = v40;
          if (v19 == v40)
          {
            v7 = v35;
            v16 = v22;
          }

          else
          {
            if ((v40 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v28 = *v21;
            if (v40 >= *v21)
            {
              goto LABEL_25;
            }

            v29 = v24 * v40;
            result = sub_1B0390720(v23 + v24 * v40, v33, _s19UserInitiatedSearchVMa);
            if (v19 >= v28)
            {
              goto LABEL_26;
            }

            v30 = v24 * v19;
            sub_1B0390720(v23 + v24 * v19, v34, _s19UserInitiatedSearchVMa);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1B0B8C93C(v22);
            }

            v7 = v35;
            v31 = v16 + v39;
            result = sub_1B0450CE0(v34, v16 + v39 + v29, _s19UserInitiatedSearchVMa);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_27;
            }

            result = sub_1B0450CE0(v33, v31 + v30, _s19UserInitiatedSearchVMa);
            *v32 = v16;
            v27 = v40;
          }

          v40 = v27 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v40;
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

    __break(1u);
  }

  return result;
}

void sub_1B0BA8288(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 10) | (16 * v10)) + 8);
        v12 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B9397C(v12, v11);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1B0BA83B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1B0BA8944((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1B0AFF300((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_1B0BA8944((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1B0BA8944(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_1B0BA8B48(uint64_t a1, uint64_t a2)
{

  return sub_1B0BA8BB0(a1, a2, &qword_1EB6E4340, &qword_1B0EC5088);
}

uint64_t sub_1B0BA8BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a2;
  v58 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v48 = a3;
    v49 = a4;
    v51 = a1;
    v52 = 0;
    v10 = a1 + 56;
    v9 = *(a1 + 56);
    v11 = -1 << *(a1 + 32);
    v50 = ~v11;
    if (-v11 < 64)
    {
      v12 = ~(-1 << -v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v9;
    v14 = (63 - v11) >> 6;
    v15 = a2 + 56;
    v16 = 1;
    while (1)
    {
      do
      {
        if (!v13)
        {
          v17 = v51;
          v18 = v52;
          while (1)
          {
            v19 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v19 >= v14)
            {
              v40 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              goto LABEL_43;
            }

            v13 = *(v10 + 8 * v19);
            ++v18;
            if (v13)
            {
              v52 = v19;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v17 = v51;
LABEL_13:
        v20 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v7 = *(*(v17 + 48) + ((v52 << 8) | (4 * v20)));
        sub_1B0E46C28();
        sub_1B0E46C88();
        v21 = sub_1B0E46CB8();
        v22 = -1 << *(v8 + 32);
        v4 = v21 & ~v22;
        v5 = v4 >> 6;
        v6 = 1 << v4;
      }

      while (((1 << v4) & *(v15 + 8 * (v4 >> 6))) == 0);
      v23 = *(v8 + 48);
      if (*(v23 + 4 * v4) == v7)
      {
        break;
      }

      while (1)
      {
        v4 = (v4 + 1) & ~v22;
        v5 = v4 >> 6;
        v6 = 1 << v4;
        if (((1 << v4) & *(v15 + 8 * (v4 >> 6))) == 0)
        {
          break;
        }

        if (*(v23 + 4 * v4) == v7)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v55 = v50;
    v56 = v52;
    v57 = v13;
    v54[0] = v51;
    v54[1] = v10;
    v16 = (63 - v22) >> 6;
    v7 = 8 * v16;
    v24 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v16 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, (v8 + 56), v7);
      v43 = sub_1B0BAA0B8(v42, v16, v8, v4, v54, v48, v49);

      MEMORY[0x1B272C230](v42, -1, -1);
      v6 = v54[0];
      v50 = v55;
      v52 = v56;
      v8 = v43;
      goto LABEL_41;
    }

LABEL_18:
    v45 = v16;
    v46 = &v44;
    MEMORY[0x1EEE9AC00](v24);
    v16 = &v44 - v25;
    memcpy(&v44 - v25, (v8 + 56), v7);
    v26 = *(v8 + 16);
    *(v16 + 8 * v5) &= ~v6;
    v27 = v26 - 1;
    v5 = 1;
    v6 = v51;
LABEL_19:
    v47 = v27;
    while (v13)
    {
LABEL_27:
      v31 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v7 = *(*(v6 + 48) + ((v52 << 8) | (4 * v31)));
      sub_1B0E46C28();
      v4 = v53;
      sub_1B0E46C88();
      v32 = sub_1B0E46CB8();
      v33 = -1 << *(v8 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & *(v15 + 8 * (v34 >> 6))) != 0)
      {
        v37 = *(v8 + 48);
        if (*(v37 + 4 * v34) == v7)
        {
LABEL_20:
          v28 = *(v16 + 8 * v35);
          *(v16 + 8 * v35) = v28 & ~v36;
          if ((v28 & v36) != 0)
          {
            v27 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v8 = MEMORY[0x1E69E7CD0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & *(v15 + 8 * (v34 >> 6))) == 0)
            {
              break;
            }

            if (*(v37 + 4 * v34) == v7)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v29 = v52;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v30 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v30);
      ++v29;
      if (v13)
      {
        v52 = v30;
        goto LABEL_27;
      }
    }

    if (v14 <= v52 + 1)
    {
      v39 = v52 + 1;
    }

    else
    {
      v39 = v14;
    }

    v52 = v39 - 1;
    v8 = sub_1B0BAA92C(v16, v45, v47, v8, v48, v49);
LABEL_41:
    v40 = v6;
LABEL_43:
    sub_1B03D91F8(v40);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v8;
}

uint64_t sub_1B0BA9058(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v75 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1 << *(a1 + 32);
    v66 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v6;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 56;
    v69 = a1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = 0;
    do
    {
LABEL_6:
      if (!v10)
      {
        v16 = v14;
        v15 = v69;
        while (1)
        {
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_60;
          }

          if (v17 >= v11)
          {
            goto LABEL_55;
          }

          v10 = *(v7 + 8 * v17);
          ++v16;
          if (v10)
          {
            v14 = v17;
            goto LABEL_13;
          }
        }
      }

      v15 = v69;
LABEL_13:
      v68 = v14;
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v19 = (*(v15 + 48) + ((v14 << 10) | (16 * v18)));
      v21 = *v19;
      v20 = v19[1];
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v20);
      v22 = sub_1B0E46CB8();
      v14 = v68;
      v23 = *(v5 + 32);
      v24 = -1 << v23;
      v2 = v22 & ~(-1 << v23);
      v4 = v2 >> 6;
      v3 = 1 << v2;
    }

    while (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0);
    v25 = v23 & 0x3F;
    v26 = ~v24;
    while (1)
    {
      v27 = (*(v5 + 48) + 16 * v2);
      if (v27[1] == v20)
      {
        v28 = *v27;
        v29 = *(*v27 + 16);
        if (v29 == *(v21 + 16))
        {
          break;
        }
      }

LABEL_15:
      v2 = (v2 + 1) & v26;
      v4 = v2 >> 6;
      v3 = 1 << v2;
      if ((*(v12 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v29)
    {
      v30 = v28 == v21;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      v31 = (v28 + 32);
      v32 = (v21 + 32);
      while (v29)
      {
        if (*v31 != *v32)
        {
          goto LABEL_15;
        }

        ++v31;
        ++v32;
        if (!--v29)
        {
          goto LABEL_26;
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_26:
    v72 = v66;
    v73 = v68;
    v74 = v10;
    v71[0] = v69;
    v71[1] = v7;
    v64 = ((1 << v25) + 63) >> 6;
    v13 = 8 * v64;
    if (v25 <= 0xD)
    {
      goto LABEL_27;
    }

LABEL_61:
    v59 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v60 = swift_slowAlloc();
      memcpy(v60, (v5 + 56), v59);
      sub_1B0BAA2A8(v60, v64, v5, v2, v71);
      v62 = v61;

      MEMORY[0x1B272C230](v60, -1, -1);
      v15 = v71[0];
      v66 = v72;
      v5 = v62;
      goto LABEL_55;
    }

LABEL_27:
    v65 = &v63;
    MEMORY[0x1EEE9AC00](v22);
    v2 = &v63 - v33;
    memcpy(&v63 - v33, (v5 + 56), v34);
    v35 = *(v2 + 8 * v4) & ~v3;
    v36 = *(v5 + 16);
    v67 = v2;
    *(v2 + 8 * v4) = v35;
    v37 = v36 - 1;
    v38 = v68;
    do
    {
      v68 = v37;
      while (1)
      {
LABEL_29:
        if (!v10)
        {
          v39 = v38;
          while (1)
          {
            v40 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_58;
            }

            if (v40 >= v11)
            {
              sub_1B0BAB310(v67, v64, v68, v5);
              v5 = v57;
              goto LABEL_53;
            }

            v10 = *(v7 + 8 * v40);
            ++v39;
            if (v10)
            {
              v38 = v40;
              break;
            }
          }
        }

        v41 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v42 = (*(v69 + 48) + ((v38 << 10) | (16 * v41)));
        v3 = *v42;
        v4 = v42[1];
        v43 = v38;
        sub_1B0E46C28();
        v2 = v70;
        MEMORY[0x1B2728D70](v4);
        v44 = sub_1B0E46CB8();
        v38 = v43;
        v45 = -1 << *(v5 + 32);
        v46 = v44 & ~v45;
        v47 = v46 >> 6;
        v48 = 1 << v46;
        if (((1 << v46) & *(v12 + 8 * (v46 >> 6))) != 0)
        {
          v49 = ~v45;
          while (1)
          {
            v50 = (*(v5 + 48) + 16 * v46);
            if (v50[1] == v4)
            {
              v51 = *v50;
              v52 = *(*v50 + 16);
              if (v52 == *(v3 + 16))
              {
                break;
              }
            }

LABEL_37:
            v46 = (v46 + 1) & v49;
            v47 = v46 >> 6;
            v48 = 1 << v46;
            if ((*(v12 + 8 * (v46 >> 6)) & (1 << v46)) == 0)
            {
              goto LABEL_29;
            }
          }

          if (v52)
          {
            v53 = v51 == v3;
          }

          else
          {
            v53 = 1;
          }

          if (!v53)
          {
            v54 = (v51 + 32);
            v55 = (v3 + 32);
            while (v52)
            {
              if (*v54 != *v55)
              {
                goto LABEL_37;
              }

              ++v54;
              ++v55;
              if (!--v52)
              {
                goto LABEL_48;
              }
            }

            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

LABEL_48:
          v56 = v67[v47];
          v67[v47] = v56 & ~v48;
          if ((v56 & v48) != 0)
          {
            break;
          }
        }
      }

      v37 = v68 - 1;
      if (__OFSUB__(v68, 1))
      {
        __break(1u);
      }
    }

    while (v68 != 1);

    v5 = MEMORY[0x1E69E7CD0];
LABEL_53:
    v15 = v69;
LABEL_55:
    sub_1B03D91F8(v15);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

_BYTE *sub_1B0BA9598(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v127 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  v99 = a5;
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v111 = a3 + 56;
LABEL_2:
  v97 = v6;
  while (1)
  {
LABEL_4:
    v7 = a5[3];
    v8 = a5[4];
    if (!v8)
    {
      v10 = (a5[2] + 64) >> 6;
      v11 = a5[3];
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= v10)
        {
          if (v10 <= v7 + 1)
          {
            v89 = v7 + 1;
          }

          else
          {
            v89 = (a5[2] + 64) >> 6;
          }

          a5[3] = v89 - 1;
          a5[4] = 0;

          return sub_1B0BAA704(a1, a2, v97, a3);
        }

        v8 = *(a5[1] + 8 * v9);
        ++v11;
        if (v8)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
    }

    v9 = a5[3];
LABEL_10:
    v12 = (*(*a5 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v8)))));
    v14 = *v12;
    v13 = v12[1];
    a5[3] = v9;
    a5[4] = (v8 - 1) & v8;
    sub_1B0E46C28();
    sub_1B03B2000(v14, v13);
    sub_1B0E42F48();
    v15 = sub_1B0E46CB8();
    v16 = a3;
    v17 = -1 << *(a3 + 32);
    v18 = v15 & ~v17;
    v19 = v18 >> 6;
    v20 = v111;
    v21 = 1 << v18;
    v116 = v13;
    if (((1 << v18) & *(v111 + 8 * (v18 >> 6))) != 0)
    {
      break;
    }

LABEL_3:
    sub_1B0391D50(v14, v116);
    a5 = v99;
  }

  v22 = ~v17;
  v23 = v13 >> 62;
  if (v14)
  {
    v24 = 0;
  }

  else
  {
    v24 = v13 == 0xC000000000000000;
  }

  v25 = !v24;
  v114 = v25;
  v106 = HIDWORD(v14);
  v26 = __OFSUB__(HIDWORD(v14), v14);
  v109 = v26;
  __n = BYTE6(v13);
  v107 = v14;
  v108 = HIDWORD(v14) - v14;
  v104 = (v14 >> 32) - v14;
  v105 = v14 >> 32;
  v113 = v14;
  v110 = v22;
  while (1)
  {
    v27 = (*(v16 + 48) + 16 * v18);
    v29 = *v27;
    v28 = v27[1];
    v30 = v28 >> 62;
    if (v28 >> 62 == 3)
    {
      if (v29)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28 == 0xC000000000000000;
      }

      v33 = !v31 || v23 < 3;
      if (((v33 | v114) & 1) == 0)
      {
        v86 = 0;
        v87 = 0xC000000000000000;
LABEL_154:
        sub_1B0391D50(v86, v87);
        a5 = v99;
        v88 = a1[v19];
        a1[v19] = v88 & ~v21;
        if ((v88 & v21) == 0)
        {
          goto LABEL_4;
        }

        v6 = v97 - 1;
        if (__OFSUB__(v97, 1))
        {
          goto LABEL_188;
        }

        if (v97 == 1)
        {
          return MEMORY[0x1E69E7CD0];
        }

        goto LABEL_2;
      }

LABEL_45:
      v34 = 0;
      if (v23 <= 1)
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_45;
      }

      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      v37 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v37)
      {
        goto LABEL_168;
      }

      if (v23 <= 1)
      {
        goto LABEL_42;
      }
    }

    else if (v30)
    {
      LODWORD(v34) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_167;
      }

      v34 = v34;
      if (v23 <= 1)
      {
LABEL_42:
        v38 = __n;
        if (v23)
        {
          v38 = v108;
          if (v109)
          {
            goto LABEL_165;
          }
        }

        goto LABEL_48;
      }
    }

    else
    {
      v34 = BYTE6(v28);
      if (v23 <= 1)
      {
        goto LABEL_42;
      }
    }

LABEL_46:
    if (v23 != 2)
    {
      if (!v34)
      {
        goto LABEL_153;
      }

      goto LABEL_22;
    }

    v40 = *(v14 + 16);
    v39 = *(v14 + 24);
    v37 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (v37)
    {
      goto LABEL_166;
    }

LABEL_48:
    if (v34 != v38)
    {
      goto LABEL_22;
    }

    if (v34 < 1)
    {
      goto LABEL_153;
    }

    if (v30 > 1)
    {
      break;
    }

    if (v30)
    {
      if (v29 > v29 >> 32)
      {
        goto LABEL_169;
      }

      sub_1B03B2000(v29, v28);
      v50 = sub_1B0E42A98();
      if (v50)
      {
        v51 = v50;
        v52 = sub_1B0E42AC8();
        if (__OFSUB__(v29, v52))
        {
          goto LABEL_171;
        }

        v101 = (v29 - v52 + v51);
      }

      else
      {
        v101 = 0;
      }

      sub_1B0E42AB8();
      v14 = v113;
      if (v23 == 2)
      {
        v91 = *(v113 + 24);
        v95 = *(v113 + 16);
        v58 = sub_1B0E42A98();
        if (v58)
        {
          v74 = sub_1B0E42AC8();
          v75 = v95;
          if (__OFSUB__(v95, v74))
          {
            goto LABEL_185;
          }

          v58 += v95 - v74;
        }

        else
        {
          v75 = v95;
        }

        v84 = v91 - v75;
        if (__OFSUB__(v91, v75))
        {
          goto LABEL_181;
        }

        v85 = sub_1B0E42AB8();
        if (v85 >= v84)
        {
          v61 = v84;
        }

        else
        {
          v61 = v85;
        }

        result = v101;
        if (!v101)
        {
          goto LABEL_197;
        }

        v20 = v111;
        v14 = v113;
        if (!v58)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (v23 != 1)
        {
          v20 = v111;
          result = v101;
          *__s1 = v113;
          __s1[4] = v106;
          *&__s1[5] = *(&v113 + 5);
          __s1[7] = HIBYTE(v113);
          *&__s1[8] = v116;
          *&__s1[12] = WORD2(v116);
          if (!v101)
          {
            goto LABEL_191;
          }

          goto LABEL_121;
        }

        if (v105 < v107)
        {
          goto LABEL_180;
        }

        v58 = sub_1B0E42A98();
        if (v58)
        {
          v63 = sub_1B0E42AC8();
          if (__OFSUB__(v107, v63))
          {
            goto LABEL_187;
          }

          v58 += v107 - v63;
        }

        v64 = sub_1B0E42AB8();
        v61 = v104;
        if (v64 < v104)
        {
          v61 = v64;
        }

        v14 = v113;
        result = v101;
        if (!v101)
        {
          goto LABEL_198;
        }

        v20 = v111;
        if (!v58)
        {
          goto LABEL_199;
        }
      }

      goto LABEL_149;
    }

    *__s1 = v29;
    *&__s1[8] = v28;
    __s1[10] = BYTE2(v28);
    __s1[11] = BYTE3(v28);
    __s1[12] = BYTE4(v28);
    __s1[13] = BYTE5(v28);
    if (!v23)
    {
      goto LABEL_75;
    }

    if (v23 == 1)
    {
      if (v105 < v107)
      {
        goto LABEL_173;
      }

      sub_1B03B2000(v29, v28);
      v41 = sub_1B0E42A98();
      if (!v41)
      {
        goto LABEL_196;
      }

      v42 = v41;
      v43 = sub_1B0E42AC8();
      if (__OFSUB__(v107, v43))
      {
        goto LABEL_177;
      }

      v44 = (v107 - v43 + v42);
      v45 = sub_1B0E42AB8();
      if (!v44)
      {
        goto LABEL_195;
      }

LABEL_108:
      if (v45 >= v104)
      {
        v70 = v104;
      }

      else
      {
        v70 = v45;
      }

      v71 = memcmp(__s1, v44, v70);
      sub_1B0391D50(v29, v28);
      v20 = v111;
      v14 = v113;
LABEL_152:
      v22 = v110;
      v16 = a3;
      if (!v71)
      {
        goto LABEL_153;
      }

      goto LABEL_22;
    }

    v103 = *(v14 + 16);
    v93 = *(v14 + 24);
    sub_1B03B2000(v29, v28);
    v53 = sub_1B0E42A98();
    if (v53)
    {
      v65 = sub_1B0E42AC8();
      v66 = v103;
      if (__OFSUB__(v103, v65))
      {
        goto LABEL_182;
      }

      v53 = &v103[v53 - v65];
    }

    else
    {
      v66 = v103;
    }

    v78 = v93 - v66;
    if (__OFSUB__(v93, v66))
    {
      goto LABEL_174;
    }

    v79 = sub_1B0E42AB8();
    if (!v53)
    {
      goto LABEL_194;
    }

LABEL_129:
    if (v79 >= v78)
    {
      v80 = v78;
    }

    else
    {
      v80 = v79;
    }

    v81 = memcmp(__s1, v53, v80);
    sub_1B0391D50(v29, v28);
    v20 = v111;
    v16 = a3;
    v14 = v113;
    v22 = v110;
    if (!v81)
    {
LABEL_153:
      v86 = v14;
      v87 = v116;
      goto LABEL_154;
    }

LABEL_22:
    v18 = (v18 + 1) & v22;
    v19 = v18 >> 6;
    v21 = 1 << v18;
    if ((*(v20 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_3;
    }
  }

  if (v30 == 2)
  {
    v46 = *(v29 + 16);
    sub_1B03B2000(v29, v28);
    v47 = sub_1B0E42A98();
    if (v47)
    {
      v48 = v47;
      v49 = sub_1B0E42AC8();
      if (__OFSUB__(v46, v49))
      {
        goto LABEL_170;
      }

      v100 = (v46 - v49 + v48);
    }

    else
    {
      v100 = 0;
    }

    sub_1B0E42AB8();
    v14 = v113;
    if (v23 != 2)
    {
      if (v23 == 1)
      {
        if (v105 < v107)
        {
          goto LABEL_175;
        }

        v58 = sub_1B0E42A98();
        if (v58)
        {
          v59 = sub_1B0E42AC8();
          if (__OFSUB__(v107, v59))
          {
            goto LABEL_186;
          }

          v58 += v107 - v59;
        }

        v60 = sub_1B0E42AB8();
        v61 = v104;
        if (v60 < v104)
        {
          v61 = v60;
        }

        v14 = v113;
        result = v100;
        if (!v100)
        {
          goto LABEL_201;
        }

        v20 = v111;
        if (!v58)
        {
          goto LABEL_200;
        }

        goto LABEL_149;
      }

      v20 = v111;
      result = v100;
      *__s1 = v113;
      __s1[4] = v106;
      *&__s1[5] = *(&v113 + 5);
      __s1[7] = HIBYTE(v113);
      *&__s1[8] = v116;
      *&__s1[12] = WORD2(v116);
      if (!v100)
      {
        goto LABEL_192;
      }

LABEL_121:
      v76 = __s1;
      v77 = __n;
LABEL_151:
      v71 = memcmp(result, v76, v77);
      sub_1B0391D50(v29, v28);
      goto LABEL_152;
    }

    v90 = *(v113 + 24);
    v94 = *(v113 + 16);
    v58 = sub_1B0E42A98();
    if (v58)
    {
      v72 = sub_1B0E42AC8();
      v73 = v94;
      if (__OFSUB__(v94, v72))
      {
        goto LABEL_184;
      }

      v58 += v94 - v72;
    }

    else
    {
      v73 = v94;
    }

    v82 = v90 - v73;
    if (__OFSUB__(v90, v73))
    {
      goto LABEL_179;
    }

    v83 = sub_1B0E42AB8();
    if (v83 >= v82)
    {
      v61 = v82;
    }

    else
    {
      v61 = v83;
    }

    result = v100;
    if (!v100)
    {
      goto LABEL_203;
    }

    v20 = v111;
    v14 = v113;
    if (!v58)
    {
      goto LABEL_204;
    }

LABEL_149:
    if (result == v58)
    {
      sub_1B0391D50(v14, v116);
      v86 = v29;
      v87 = v28;
      goto LABEL_154;
    }

    v77 = v61;
    v76 = v58;
    goto LABEL_151;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v23)
  {
LABEL_75:
    __s2 = v14;
    v118 = BYTE2(v14);
    v119 = BYTE3(v14);
    v120 = v106;
    v121 = BYTE5(v14);
    v122 = BYTE6(v14);
    v123 = HIBYTE(v14);
    v124 = v116;
    v125 = WORD2(v116);
    v56 = v16;
    v57 = memcmp(__s1, &__s2, __n);
    v16 = v56;
    v22 = v110;
    if (!v57)
    {
      goto LABEL_153;
    }

    goto LABEL_22;
  }

  if (v23 == 2)
  {
    v102 = *(v14 + 16);
    v92 = *(v14 + 24);
    sub_1B03B2000(v29, v28);
    v53 = sub_1B0E42A98();
    if (v53)
    {
      v54 = sub_1B0E42AC8();
      v55 = v102;
      if (__OFSUB__(v102, v54))
      {
        goto LABEL_183;
      }

      v53 = &v102[v53 - v54];
    }

    else
    {
      v55 = v102;
    }

    v78 = v92 - v55;
    if (__OFSUB__(v92, v55))
    {
      goto LABEL_176;
    }

    v79 = sub_1B0E42AB8();
    if (!v53)
    {
      goto LABEL_193;
    }

    goto LABEL_129;
  }

  if (v105 < v107)
  {
    goto LABEL_172;
  }

  sub_1B03B2000(v29, v28);
  v67 = sub_1B0E42A98();
  if (v67)
  {
    v68 = v67;
    v69 = sub_1B0E42AC8();
    if (__OFSUB__(v107, v69))
    {
      goto LABEL_178;
    }

    v44 = (v107 - v69 + v68);
    v45 = sub_1B0E42AB8();
    if (!v44)
    {
      goto LABEL_190;
    }

    goto LABEL_108;
  }

  sub_1B0E42AB8();
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  result = sub_1B0E42AB8();
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
  return result;
}

uint64_t sub_1B0BAA0B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v9 = result;
  v10 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v11 = v10 - 1;
  v12 = a3 + 56;
  v13 = MEMORY[0x1E69E7CD0];
  while (2)
  {
    v31 = v11;
    do
    {
      while (1)
      {
        do
        {
          v15 = a5[3];
          v16 = a5[4];
          if (!v16)
          {
            v18 = (a5[2] + 64) >> 6;
            v19 = a5[3];
            while (1)
            {
              v17 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                __break(1u);
                goto LABEL_25;
              }

              if (v17 >= v18)
              {
                break;
              }

              v16 = *(a5[1] + 8 * v17);
              ++v19;
              if (v16)
              {
                goto LABEL_10;
              }
            }

            if (v18 <= v15 + 1)
            {
              v27 = v15 + 1;
            }

            else
            {
              v27 = (a5[2] + 64) >> 6;
            }

            a5[3] = v27 - 1;
            a5[4] = 0;

            return sub_1B0BAA92C(v9, a2, v31, a3, a6, a7);
          }

          v17 = a5[3];
LABEL_10:
          v20 = *(*(*a5 + 48) + ((v17 << 8) | (4 * __clz(__rbit64(v16)))));
          a5[3] = v17;
          a5[4] = (v16 - 1) & v16;
          sub_1B0E46C28();
          sub_1B0E46C88();
          result = sub_1B0E46CB8();
          v21 = -1 << *(a3 + 32);
          v22 = result & ~v21;
          v23 = v22 >> 6;
          v24 = 1 << v22;
        }

        while (((1 << v22) & *(v12 + 8 * (v22 >> 6))) == 0);
        v25 = *(a3 + 48);
        if (*(v25 + 4 * v22) == v20)
        {
          break;
        }

        v26 = ~v21;
        while (1)
        {
          v22 = (v22 + 1) & v26;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v12 + 8 * (v22 >> 6))) == 0)
          {
            break;
          }

          if (*(v25 + 4 * v22) == v20)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_3:
      v14 = v9[v23];
      v9[v23] = v14 & ~v24;
    }

    while ((v14 & v24) == 0);
    v11 = v31 - 1;
    if (!__OFSUB__(v31, 1))
    {
      if (v31 != 1)
      {
        continue;
      }

      return v13;
    }

    break;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1B0BAA2A8(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v34 = v9;
    while (1)
    {
LABEL_3:
      v11 = a5[3];
      v12 = a5[4];
      if (!v12)
      {
        v14 = (a5[2] + 64) >> 6;
        v15 = a5[3];
        while (1)
        {
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v13 >= v14)
          {
            if (v14 <= v11 + 1)
            {
              v32 = v11 + 1;
            }

            else
            {
              v32 = (a5[2] + 64) >> 6;
            }

            a5[3] = v32 - 1;
            a5[4] = 0;

            sub_1B0BAB310(result, a2, v34, a3);
            return;
          }

          v12 = *(a5[1] + 8 * v13);
          ++v15;
          if (v12)
          {
            goto LABEL_9;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v13 = a5[3];
LABEL_9:
      v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
      v17 = *v16;
      v18 = v16[1];
      a5[3] = v13;
      a5[4] = (v12 - 1) & v12;
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v18);
      v19 = sub_1B0E46CB8();
      v20 = -1 << *(a3 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) != 0)
      {
        v24 = ~v20;
        while (1)
        {
          v25 = (*(a3 + 48) + 16 * v21);
          if (v25[1] == v18)
          {
            v26 = *v25;
            v27 = *(*v25 + 16);
            if (v27 == *(v17 + 16))
            {
              break;
            }
          }

LABEL_11:
          v21 = (v21 + 1) & v24;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if ((*(v10 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            goto LABEL_3;
          }
        }

        if (v27)
        {
          v28 = v26 == v17;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v29 = (v26 + 32);
          v30 = (v17 + 32);
          while (v27)
          {
            if (*v29 != *v30)
            {
              goto LABEL_11;
            }

            ++v29;
            ++v30;
            if (!--v27)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
          goto LABEL_31;
        }

LABEL_22:
        v31 = result[v22];
        result[v22] = v31 & ~v23;
        if ((v31 & v23) != 0)
        {
          break;
        }
      }
    }

    v9 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
      goto LABEL_32;
    }

    if (v34 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1B0BAA4D0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v34 = v9;
    while (1)
    {
LABEL_3:
      v11 = a5[3];
      v12 = a5[4];
      if (!v12)
      {
        v14 = (a5[2] + 64) >> 6;
        v15 = a5[3];
        while (1)
        {
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v13 >= v14)
          {
            if (v14 <= v11 + 1)
            {
              v32 = v11 + 1;
            }

            else
            {
              v32 = (a5[2] + 64) >> 6;
            }

            a5[3] = v32 - 1;
            a5[4] = 0;

            sub_1B0455AB8(a1, a2, v34, a3);
            return;
          }

          v12 = *(a5[1] + 8 * v13);
          ++v15;
          if (v12)
          {
            goto LABEL_9;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v13 = a5[3];
LABEL_9:
      v16 = *(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12))));
      v17 = *v16;
      v18 = *(v16 + 8);
      a5[3] = v13;
      a5[4] = (v12 - 1) & v12;
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v18 | (v18 << 32));
      v19 = sub_1B0E46CB8();
      v20 = -1 << *(a3 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) != 0)
      {
        v24 = ~v20;
        while (1)
        {
          v25 = (*(a3 + 48) + 16 * v21);
          if ((v25[2] | (v25[2] << 32)) == (v18 | (v18 << 32)))
          {
            v26 = *v25;
            v27 = *(*v25 + 16);
            if (v27 == *(v17 + 16))
            {
              break;
            }
          }

LABEL_11:
          v21 = (v21 + 1) & v24;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if ((*(v10 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            goto LABEL_3;
          }
        }

        if (v27)
        {
          v28 = v26 == v17;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v29 = (v26 + 32);
          v30 = (v17 + 32);
          while (v27)
          {
            if (*v29 != *v30)
            {
              goto LABEL_11;
            }

            ++v29;
            ++v30;
            if (!--v27)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
          goto LABEL_31;
        }

LABEL_22:
        v31 = a1[v22];
        a1[v22] = v31 & ~v23;
        if ((v31 & v23) != 0)
        {
          break;
        }
      }
    }

    v9 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
      goto LABEL_32;
    }

    if (v34 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1B0BAA704(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B0, &qword_1B0EC50F8);
  result = sub_1B0E46228();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1B0E46C28();
    sub_1B03B2000(v17, v18);
    sub_1B0E42F48();
    result = sub_1B0E46CB8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B0BAA92C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1B0E46228();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 4 * (v15 | (v13 << 6)));
    sub_1B0E46C28();
    sub_1B0E46C88();
    result = sub_1B0E46CB8();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 4 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1B0BAAB2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v64 - v9;
  v11 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v78 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v64 - v14;
  if (!a3)
  {
LABEL_57:

    return;
  }

  if (*(a4 + 16) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4538, &qword_1B0EC52D0);
    v15 = sub_1B0E46228();
    v16 = v15;
    v65 = v10;
    if (a2 < 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = *a1;
    }

    v18 = 0;
    v73 = v15;
    v68 = a4;
    v67 = a2;
    v66 = a1;
    v70 = v11;
    v71 = v15 + 56;
    while (1)
    {
      if (v17)
      {
        v19 = __clz(__rbit64(v17));
        v75 = (v17 - 1) & v17;
      }

      else
      {
        v20 = v18;
        do
        {
          v18 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_59;
          }

          if (v18 >= a2)
          {
            goto LABEL_57;
          }

          v21 = a1[v18];
          ++v20;
        }

        while (!v21);
        v19 = __clz(__rbit64(v21));
        v75 = (v21 - 1) & v21;
      }

      v22 = *(a4 + 48);
      v76 = *(v74 + 72);
      v23 = v79;
      sub_1B0390720(v22 + v76 * (v19 | (v18 << 6)), v79, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0E46C28();
      sub_1B0390720(v23, v78, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v69 = a3;
          v72 = *v78;
          v26 = *(v78 + 2);
          v27 = v78[2];
          MEMORY[0x1B2728D70](3);
          MEMORY[0x1B2728D70](v26 | (v26 << 32));
          v28 = v27 + 64;
          v29 = 1 << *(v27 + 32);
          if (v29 < 64)
          {
            v30 = ~(-1 << v29);
          }

          else
          {
            v30 = -1;
          }

          v31 = v30 & *(v27 + 64);
          v32 = (v29 + 63) >> 6;
          v77 = v27;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v33 = 0;
          v34 = 0;
          if (v31)
          {
            while (1)
            {
              v35 = v34;
LABEL_28:
              v36 = (*(v77 + 56) + 16 * (__clz(__rbit64(v31)) | (v35 << 6)));
              v37 = *v36;
              v38 = v36[1];
              sub_1B03B2000(*v36, v38);
              if (v38 >> 60 == 15)
              {
                break;
              }

              v31 &= v31 - 1;
              v82 = v87;
              v83 = v88;
              v84 = v89;
              v80 = v85;
              v81 = v86;
              sub_1B0E46C88();
              sub_1B0E42F48();
              sub_1B0391D50(v37, v38);
              v33 ^= sub_1B0E46CB8();
              v34 = v35;
              if (!v31)
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            while (1)
            {
LABEL_25:
              v35 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                goto LABEL_60;
              }

              if (v35 >= v32)
              {
                break;
              }

              v31 = *(v28 + 8 * v35);
              ++v34;
              if (v31)
              {
                goto LABEL_28;
              }
            }
          }

          MEMORY[0x1B2728D70](v33);

          a4 = v68;
          a3 = v69;
          a2 = v67;
          a1 = v66;
          v16 = v73;
        }

        else
        {
          MEMORY[0x1B2728D70](1);
        }
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v69 = a3;
          v64 = *v78;
          v39 = *(v78 + 2);
          v40 = v78[2];
          MEMORY[0x1B2728D70](2);
          MEMORY[0x1B2728D70](v39 | (v39 << 32));
          v41 = v40 + 64;
          v42 = 1 << *(v40 + 32);
          if (v42 < 64)
          {
            v43 = ~(-1 << v42);
          }

          else
          {
            v43 = -1;
          }

          v44 = v43 & *(v40 + 64);
          v45 = (v42 + 63) >> 6;
          v72 = v40;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v46 = 0;
          for (i = 0; v44; v16 = v73)
          {
            v77 = v46;
            v48 = i;
LABEL_40:
            v49 = __clz(__rbit64(v44));
            v44 &= v44 - 1;
            v50 = (*(v72 + 56) + 24 * (v49 | (v48 << 6)));
            v51 = *v50;
            v53 = *(v50 + 1);
            v52 = *(v50 + 2);
            sub_1B03B2000(v53, v52);
            v82 = v87;
            v83 = v88;
            v84 = v89;
            v80 = v85;
            v81 = v86;
            sub_1B0E46C88();
            MEMORY[0x1B2728D70](v51);
            sub_1B03B2000(v53, v52);
            sub_1B0E42F48();
            sub_1B0391D50(v53, v52);
            sub_1B0391D50(v53, v52);
            v46 = sub_1B0E46CB8() ^ v77;
          }

          while (1)
          {
            v48 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v48 >= v45)
            {

              MEMORY[0x1B2728D70](v46);

              a4 = v68;
              a3 = v69;
              a2 = v67;
              a1 = v66;
              goto LABEL_45;
            }

            v44 = *(v41 + 8 * v48);
            ++i;
            if (v44)
            {
              v77 = v46;
              i = v48;
              goto LABEL_40;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v25 = v65;
        sub_1B03C60A4(v78, v65, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

LABEL_45:
      v54 = sub_1B0E46CB8();
      v55 = -1 << *(v16 + 32);
      v56 = v54 & ~v55;
      v57 = v56 >> 6;
      if (((-1 << v56) & ~*(v71 + 8 * (v56 >> 6))) == 0)
      {
        v59 = 0;
        v60 = (63 - v55) >> 6;
        while (++v57 != v60 || (v59 & 1) == 0)
        {
          v61 = v57 == v60;
          if (v57 == v60)
          {
            v57 = 0;
          }

          v59 |= v61;
          v62 = *(v71 + 8 * v57);
          if (v62 != -1)
          {
            v58 = __clz(__rbit64(~v62)) + (v57 << 6);
            goto LABEL_55;
          }
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return;
      }

      v58 = __clz(__rbit64((-1 << v56) & ~*(v71 + 8 * (v56 >> 6)))) | v56 & 0x7FFFFFFFFFFFFFC0;
LABEL_55:
      *(v71 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
      sub_1B0423C80(v79, *(v16 + 48) + v58 * v76, type metadata accessor for MoveAndCopyMessages.CommandID);
      ++*(v16 + 16);
      if (__OFSUB__(a3--, 1))
      {
        goto LABEL_62;
      }

      v17 = v75;
      if (!a3)
      {
        goto LABEL_57;
      }
    }
  }
}

void sub_1B0BAB310(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E8, &qword_1B0EC5150);
      v8 = sub_1B0E46228();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      v30 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
        v17 = *v16;
        v18 = v16[1];
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v18);
        v19 = sub_1B0E46CB8();
        v20 = -1 << *(v9 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          v24 = 0;
          v25 = (63 - v20) >> 6;
          while (++v22 != v25 || (v24 & 1) == 0)
          {
            v26 = v22 == v25;
            if (v22 == v25)
            {
              v22 = 0;
            }

            v24 |= v26;
            v27 = *(v12 + 8 * v22);
            if (v27 != -1)
            {
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v9 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v4 = v30;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          goto LABEL_5;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

unint64_t sub_1B0BAB530(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4730, qword_1B0EC5B90);
  v3 = sub_1B0E466A8();
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  v28 = *(a1 + 80);
  v29 = v5;
  v30 = *(a1 + 112);
  v6 = *(a1 + 48);
  v25 = *(a1 + 32);
  v26 = v6;
  v27 = v4;
  v7 = v25;
  v8 = DWORD2(v25);
  result = sub_1B03AB888(v25, DWORD2(v25));
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1B03B5C80(&v25, v24, &qword_1EB6E4B00, &qword_1B0EC85E8);
    return v3;
  }

  v11 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = v3[6] + 16 * result;
    *v12 = v7;
    *(v12 + 8) = v8;
    v13 = v3[7] + 72 * result;
    *v13 = v26;
    v14 = v27;
    v15 = v28;
    v16 = v29;
    *(v13 + 64) = v30;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1B03B5C80(&v25, v24, &qword_1EB6E4B00, &qword_1B0EC85E8);
    v20 = v11[2];
    v21 = v11[4];
    v28 = v11[3];
    v29 = v21;
    v30 = *(v11 + 40);
    v22 = v11[1];
    v25 = *v11;
    v26 = v22;
    v27 = v20;
    v7 = v25;
    v8 = DWORD2(v25);
    result = sub_1B03AB888(v25, DWORD2(v25));
    v11 = (v11 + 88);
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0BAB6F0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 176 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 176 * a3;
  v13 = (v7 + 32 + 176 * a2);
  if (result != v13 || result >= v13 + 176 * v12)
  {
    result = memmove(result, v13, 176 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_1B0BAB7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4478, &qword_1B0EC51F0);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

void sub_1B0BAB8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_1B041DEEC(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  sub_1B0BAB7C8(a1, a2, 1, a3, a4);
  *v4 = v6;
}

unint64_t sub_1B0BAB9B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4818, &qword_1B0EC5FB0);
    v3 = sub_1B0E466A8();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1B0ADFFE8(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = v3[7] + 12 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B0BABAA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45C0, &unk_1B0EC5930);
  v3 = sub_1B0E466A8();
  v4 = *(a1 + 176);
  *&v33[128] = *(a1 + 160);
  *&v33[144] = v4;
  *&v33[160] = *(a1 + 192);
  *&v33[169] = *(a1 + 201);
  v5 = *(a1 + 112);
  *&v33[64] = *(a1 + 96);
  *&v33[80] = v5;
  v6 = *(a1 + 144);
  *&v33[96] = *(a1 + 128);
  *&v33[112] = v6;
  v7 = *(a1 + 48);
  *v33 = *(a1 + 32);
  *&v33[16] = v7;
  v8 = *(a1 + 80);
  *&v33[32] = *(a1 + 64);
  *&v33[48] = v8;
  v9 = *v33;
  result = sub_1B03FE284(*v33);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1B03B5C80(v33, v32, &qword_1EB6E43A8, &qword_1B0EC50F0);
    return v3;
  }

  v12 = (a1 + 224);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v9;
    v13 = v3[7] + 184 * result;
    v14 = *&v33[8];
    v15 = *&v33[24];
    v16 = *&v33[56];
    *(v13 + 32) = *&v33[40];
    *(v13 + 48) = v16;
    *v13 = v14;
    *(v13 + 16) = v15;
    v17 = *&v33[72];
    v18 = *&v33[88];
    v19 = *&v33[120];
    *(v13 + 96) = *&v33[104];
    *(v13 + 112) = v19;
    *(v13 + 64) = v17;
    *(v13 + 80) = v18;
    v20 = *&v33[136];
    v21 = *&v33[152];
    v22 = *&v33[168];
    *(v13 + 176) = v33[184];
    *(v13 + 144) = v21;
    *(v13 + 160) = v22;
    *(v13 + 128) = v20;
    v23 = v3[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v3[2] = v25;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1B03B5C80(v33, v32, &qword_1EB6E43A8, &qword_1B0EC50F0);
    v26 = v12[9];
    *&v33[128] = v12[8];
    *&v33[144] = v26;
    *&v33[160] = v12[10];
    *&v33[169] = *(v12 + 169);
    v27 = v12[5];
    *&v33[64] = v12[4];
    *&v33[80] = v27;
    v28 = v12[7];
    *&v33[96] = v12[6];
    *&v33[112] = v28;
    v29 = v12[1];
    *v33 = *v12;
    *&v33[16] = v29;
    v30 = v12[3];
    *&v33[32] = v12[2];
    *&v33[48] = v30;
    v9 = *v33;
    result = sub_1B03FE284(*v33);
    v12 += 12;
    if (v31)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0BABCA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4208, &unk_1B0EC4458);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4778, &qword_1B0EC5E58);
    v7 = sub_1B0E466A8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;
    while (1)
    {
      sub_1B03B5C80(v9, v5, &qword_1EB6E4208, &unk_1B0EC4458);
      v10 = *v5;
      v11 = *(v5 + 2);
      result = sub_1B03AB888(*v5, v11);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v7[6] + 16 * result;
      *v15 = v10;
      *(v15 + 8) = v11;
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = sub_1B03C60A4(&v5[v22], v16 + *(*(v17 - 8) + 72) * v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1B0BABEA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4810, &qword_1B0EC5FA8);
  v3 = sub_1B0E466A8();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_1B03FE284(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 4 * v10) = v4;
    v13 = v3[7] + 24 * v10;
    *v13 = v5;
    *(v13 + 8) = v6;
    *(v13 + 16) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 6);
    v5 = *(v12 - 2);
    v6 = *(v12 - 8);
    v18 = *v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = sub_1B03FE284(v4);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0BABFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E51A8, &qword_1B0ECC590);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4838, &unk_1B0EC5FD0);
    v7 = sub_1B0E466A8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B03B5C80(v9, v5, &qword_1EB6E51A8, &qword_1B0ECC590);
      result = sub_1B0AE0058(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
      result = sub_1B0423C80(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B0BAC1BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4828, &qword_1B0EC5FC0);
    v3 = sub_1B0E466A8();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0AE00C4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1B0BAC2B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4710, &unk_1B0EC5A90);
  v3 = sub_1B0E466A8();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_1B03FE284(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v10 = v8;
  result = v6;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 4 * v10) = v4;
    v13 = v3[7] + 24 * v10;
    *v13 = v5;
    *(v13 + 8) = result;
    *(v13 + 16) = v7 & 1;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 32;
    v4 = *(v12 - 6);
    v5 = *(v12 - 16);
    v18 = *(v12 - 1);
    v7 = *v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = sub_1B03FE284(v4);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0BAC3F0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47F0, &qword_1B0EC5F88);
  v3 = sub_1B0E466A8();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = sub_1B03B8A9C(v5, v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = result;
    v12[1] = v4;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v17 = *(v11 - 2);
    v4 = *(v11 - 1);
    v18 = *v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = sub_1B03B8A9C(v17, v4);
    v11 = v16;
    v6 = v18;
    result = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0BAC528(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1B0E466A8();
  v6 = *(a1 + 32);
  LODWORD(v7) = *(a1 + 40);
  v8 = *(a1 + 44);
  v9 = sub_1B03AB888(v6, v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v5;
  }

  v11 = v9;
  result = v6;
  v13 = (a1 + 60);
  while (1)
  {
    *(v5 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = v5[6] + 16 * v11;
    *v14 = result;
    *(v14 + 8) = v7;
    *(v5[7] + v11) = v8;
    v15 = v5[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v5[2] = v17;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v18 = v13 + 16;
    v19 = *(v13 - 12);
    v7 = *(v13 - 1);
    v8 = *v13;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = sub_1B03AB888(v19, v7);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0BAC648(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4770, &qword_1B0EC5E50);
  v3 = sub_1B0E466A8();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_1B03B8A9C(v5, v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v10 = v8;
  result = v5;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = 16 * v10;
    v14 = (v3[6] + v13);
    *v14 = result;
    v14[1] = v4;
    v15 = v3[7] + v13;
    *v15 = v6;
    *(v15 + 8) = v7;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v12 + 8;
    v20 = *(v12 - 3);
    v4 = *(v12 - 2);
    v21 = *(v12 - 1);
    v7 = *v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = sub_1B03B8A9C(v20, v4);
    v12 = v19;
    v6 = v21;
    result = v20;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0BAC794(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4768, &qword_1B0EC5E48);
  v3 = sub_1B0E466A8();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = sub_1B03B8A9C(v5, v4);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v12 = v10;
  result = v5;
  v14 = (a1 + 120);
  while (1)
  {
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v15 = (v3[6] + 16 * v12);
    *v15 = result;
    v15[1] = v4;
    v16 = v3[7] + 32 * v12;
    *v16 = v6;
    *(v16 + 8) = v7;
    *(v16 + 16) = v8;
    *(v16 + 24) = v9;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = v14 + 12;
    v20 = *(v14 - 5);
    v4 = *(v14 - 4);
    v21 = *(v14 - 3);
    v7 = *(v14 - 4);
    v22 = *(v14 - 1);
    v9 = *v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12 = sub_1B03B8A9C(v20, v4);
    v14 = v24;
    v8 = v22;
    v6 = v21;
    result = v20;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0BAC91C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47C8, &qword_1B0EC5EA8);
  v3 = sub_1B0E466A8();
  v4 = *(a1 + 32);
  LODWORD(v5) = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_1B03AB888(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v9 = v7;
  result = v4;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = v3[6] + 16 * v9;
    *v12 = result;
    *(v12 + 8) = v5;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v17 = *(v11 - 2);
    v5 = *(v11 - 2);
    v6 = *v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = sub_1B03AB888(v17, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0BACA44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E51B8, qword_1B0ECC5C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v18 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4808, &qword_1B0EC5FA0);
    v7 = sub_1B0E466A8();
    v19 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1B03B5C80(v8, v5, &qword_1EB6E51B8, qword_1B0ECC5C8);
      v20 = *v5;
      result = sub_1B0AE01D0(v20, *(&v20 + 1));
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 16 * result) = v20;
      v13 = v7[7];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = sub_1B03C60A4(v5 + v19, v13 + *(*(v14 - 8) + 72) * v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1B0BACC44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4800, &qword_1B0EC5F98);
  v3 = sub_1B0E466A8();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1B03FE284(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = sub_1B03FE284(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0BACD54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47C0, &qword_1B0EC5EA0);
  v3 = sub_1B0E466A8();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = sub_1B03FE284(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v11 = v9;
  result = v6;
  v13 = (a1 + 104);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + 4 * v11) = v4;
    v14 = v3[7] + 32 * v11;
    *v14 = v5;
    *(v14 + 8) = result;
    *(v14 + 16) = v7 & 1;
    *(v14 + 24) = v8;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 5;
    v4 = *(v13 - 8);
    v5 = *(v13 - 24);
    v19 = *(v13 - 2);
    v7 = *(v13 - 8);
    v8 = *v13;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = sub_1B03FE284(v4);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0BACE98(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0BACF84(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BAD088(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_1B0BAD160(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  v14 = 40 * v12;
  v15 = v13 + 40 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_1B0BAD28C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1B0E42A98();
  v8 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1B0E42AB8();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

unint64_t sub_1B0BAD344(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0BAD430(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BAD55C(uint64_t a1)
{
  result = type metadata accessor for State.Logger(319);
  if (v2 <= 0x3F)
  {
    result = _s30MailboxesToSelectLoggingHelperCMa();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B0BAD608(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v101 = a5;
  v102 = a6;
  v99 = a3;
  v100 = a4;
  v98 = type metadata accessor for Command(0);
  MEMORY[0x1EEE9AC00](v98);
  v105 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v88 - v15;
  v17 = type metadata accessor for StateWithTasks(0);
  sub_1B0390720(a2 + *(v17 + 28), v16, type metadata accessor for State.Logger);
  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v97 = a7 & 1;
  v96 = a2 + 264;
  v103 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = 0;
  v108 = 0;
  v24.n128_u64[0] = 68158723;
  v88 = v24;
  v24.n128_u64[0] = 68158467;
  v90 = v24;
  v107 = v16;
  v94 = a1 + 56;
  v93 = v22;
  v95 = a2;
  while (v21)
  {
    v29 = v105;
LABEL_15:
    v31 = *(v103 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v21))));
    v32 = *v31;
    v33 = *(v31 + 8);
    *v29 = *v31;
    *(v29 + 8) = v33;
    swift_storeEnumTagMultiPayload();
    swift_bridgeObjectRetain_n();
    v34 = static ConnectionUsage.empty.getter();
    v36 = v35;
    v112[0] = v101;
    v112[1] = v102;
    v113 = v97;
    v114 = v34;
    v115 = v35;
    v37 = v108;
    v38 = v99(v29, v112);
    v108 = v37;
    if (v37)
    {
      sub_1B0390574(v29, type metadata accessor for Command);

      sub_1B03C81E4(v36);
      v40 = v107;
      v41 = v92;
      sub_1B0390720(v107, v92, type metadata accessor for State.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v42 = sub_1B0E43988();
      v43 = sub_1B0E458F8();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v111[0] = v106;
        *v44 = v90.n128_u32[0];
        *(v44 + 4) = 2;
        *(v44 + 8) = 256;
        v45 = *(v91 + 20);
        v104 = v42;
        v46 = *(v41 + v45);
        sub_1B0390574(v41, type metadata accessor for State.Logger);
        *(v44 + 10) = v46;
        *(v44 + 11) = 2160;
        *(v44 + 13) = 0x786F626C69616DLL;
        *(v44 + 21) = 2085;
        v109 = v32;
        v110 = v33;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v47 = sub_1B0E44BA8();
        v49 = sub_1B0399D64(v47, v48, v111);

        *(v44 + 23) = v49;
        v42 = v104;
        _os_log_impl(&dword_1B0389000, v104, v43, "[%.*hhx] Failed to de-select mailbox '%{sensitive,mask.mailbox}s'", v44, 0x1Fu);
        v50 = v106;
        __swift_destroy_boxed_opaque_existential_0Tm(v106);
        MEMORY[0x1B272C230](v50, -1, -1);
        v51 = v44;
        v40 = v107;
        MEMORY[0x1B272C230](v51, -1, -1);
      }

      else
      {
        sub_1B0390574(v41, type metadata accessor for State.Logger);
      }

      v54 = 0;
    }

    else
    {
      v52 = v39;
      v53 = v38;
      sub_1B0390574(v29, type metadata accessor for Command);

      sub_1B03C81E4(v36);
      if (v52)
      {
        v40 = v107;
      }

      else
      {
        v40 = v107;
        v55 = v89;
        sub_1B0390720(v107, v89, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v56 = sub_1B0E43988();
        v57 = sub_1B0E45908();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          LODWORD(v104) = v57;
          v59 = v58;
          v106 = swift_slowAlloc();
          v111[0] = v106;
          *v59 = v88.n128_u32[0];
          *(v59 + 4) = 2;
          *(v59 + 8) = 256;
          v60 = v55;
          v61 = *(v55 + *(v91 + 20));
          sub_1B0390574(v60, type metadata accessor for State.Logger);
          *(v59 + 10) = v61;
          *(v59 + 11) = 2160;
          *(v59 + 13) = 0x786F626C69616DLL;
          *(v59 + 21) = 2085;
          v109 = v32;
          v110 = v33;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v62 = sub_1B0E44BA8();
          v64 = v56;
          v65 = sub_1B0399D64(v62, v63, v111);

          *(v59 + 23) = v65;
          *(v59 + 31) = 2082;
          v66 = ConnectionID.debugDescription.getter(v53);
          v68 = sub_1B0399D64(v66, v67, v111);

          *(v59 + 33) = v68;
          v40 = v107;
          _os_log_impl(&dword_1B0389000, v64, v104, "[%.*hhx] De-selected '%{sensitive,mask.mailbox}s' on %{public}s", v59, 0x29u);
          v69 = v106;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v69, -1, -1);
          MEMORY[0x1B272C230](v59, -1, -1);
        }

        else
        {
          sub_1B0390574(v55, type metadata accessor for State.Logger);
        }
      }

      v54 = v108;
    }

    v70 = *(a2 + 272);
    v71 = v70[2];
    if (v71)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = v54;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = sub_1B0B8CA2C(v70);
      }

      v73 = 0;
      while (v73 < v70[2])
      {
        type metadata accessor for RunningTask(0);
        sub_1B0B77B7C(v32, v33, a2, v40);
        if (v71 == ++v73)
        {

          *(a2 + 272) = v70;
          v54 = v108;
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_50;
    }

LABEL_34:
    MEMORY[0x1EEE9AC00](v74);
    *(&v88 - 2) = v96;
    *(&v88 - 1) = v40;
    v75 = sub_1B03C9E58(sub_1B0BAE018, (&v88 - 2));
    v76 = *(a2 + 272);
    v77 = v76[2];
    v78 = v77 - v75;
    if (v77 < v75)
    {
      goto LABEL_51;
    }

    v79 = v75;
    if (v75 < 0)
    {
      goto LABEL_52;
    }

    v80 = v75;
    if (__OFADD__(v77, v75 - v77))
    {
      goto LABEL_53;
    }

    v81 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v54;
    v106 = &v88;
    v104 = -v78;
    if (!v81 || v80 > v76[3] >> 1)
    {
      if (v77 <= v80)
      {
        v82 = v77 - v78;
      }

      else
      {
        v82 = v77;
      }

      v76 = sub_1B043B274(v81, v82, 1, v76);
    }

    v83 = *(type metadata accessor for RunningTask(0) - 8);
    v84 = v76 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v85 = *(v83 + 72);
    v86 = v85 * v79;
    swift_arrayDestroy();
    if (v77 != v79)
    {
      if (v86 < v85 * v77 || &v84[v85 * v79] >= &v84[v85 * v77 + (v76[2] - v77) * v85])
      {
        swift_arrayInitWithTakeFrontToBack();
        v25 = v104;
      }

      else
      {
        v87 = v86 == v85 * v77;
        v25 = v104;
        if (!v87)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v26 = v76[2];
      v27 = __OFADD__(v26, v25);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_54;
      }

      v76[2] = v28;
    }

    v21 &= v21 - 1;
    v16 = v107;
    a2 = v95;
    *(v95 + 272) = v76;
    v18 = v94;
    v22 = v93;
  }

  v29 = v105;
  while (1)
  {
    v30 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v30 >= v22)
    {

      sub_1B0390574(v16, type metadata accessor for State.Logger);
      return;
    }

    v21 = *(v18 + 8 * v30);
    ++v23;
    if (v21)
    {
      v23 = v30;
      goto LABEL_15;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}