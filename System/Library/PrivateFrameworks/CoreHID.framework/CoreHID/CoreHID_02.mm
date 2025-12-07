uint64_t sub_2455CBABC(uint64_t a1)
{
  sub_2455EA080();
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CBB54()
{
  sub_2455EA080();
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CBBDC(uint64_t a1)
{
  sub_2455EA080();
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CBC68()
{
  sub_2455EA080();
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CBCF0(uint64_t a1)
{
  sub_2455EA080();
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

unsigned __int16 *sub_2455CBD3C@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 33)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 32)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_2455CBD5C(__int16 *a1@<X8>)
{
  if (*v1)
  {
    v2 = 33;
  }

  else
  {
    v2 = 32;
  }

  *a1 = v2;
}

uint64_t sub_2455CBDA0()
{
  sub_2455EA080();
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CBE28(uint64_t a1)
{
  sub_2455EA080();
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CBED4()
{
  sub_2455EA080();
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CBF6C(uint64_t a1)
{
  sub_2455EA080();
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

BOOL _s7CoreHID8HIDUsageO2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned int *a2)
{
  v2 = 1;
  switch(*(a1 + 4) >> 2)
  {
    case 1:
      v2 = 2;
      break;
    case 2:
      v2 = 3;
      break;
    case 3:
      v2 = 4;
      break;
    case 4:
      v2 = 5;
      break;
    case 5:
      v2 = 6;
      break;
    case 6:
      v2 = 7;
      break;
    case 7:
      v2 = 8;
      break;
    case 8:
      v2 = 9;
      break;
    case 9:
      v2 = 10;
      break;
    case 0xA:
      v2 = 11;
      break;
    case 0xB:
      v2 = 12;
      break;
    case 0xC:
      v2 = 13;
      break;
    case 0xD:
      v2 = 14;
      break;
    case 0xE:
      v2 = 15;
      break;
    case 0xF:
      v2 = 17;
      break;
    case 0x10:
      v2 = 18;
      break;
    case 0x11:
      v2 = 20;
      break;
    case 0x12:
      v2 = 32;
      break;
    case 0x13:
      v2 = 64;
      break;
    case 0x14:
      v2 = 65;
      break;
    case 0x15:
      v2 = 89;
      break;
    case 0x16:
      v2 = 128;
      break;
    case 0x17:
      v2 = 129;
      break;
    case 0x18:
      v2 = 130;
      break;
    case 0x19:
      v2 = 132;
      break;
    case 0x1A:
      v2 = 133;
      break;
    case 0x1B:
      v2 = 140;
      break;
    case 0x1C:
      v2 = 141;
      break;
    case 0x1D:
      v2 = 142;
      break;
    case 0x1E:
      v2 = 144;
      break;
    case 0x1F:
      v2 = 145;
      break;
    case 0x20:
      v2 = 61904;
      break;
    case 0x21:
      v2 = *a1;
      break;
    default:
      break;
  }

  v3 = 1;
  switch(((*a2 | (*(a2 + 4) << 32)) >> 34) & 0x3F)
  {
    case 1uLL:
      if (v2 != 2)
      {
        return 0;
      }

      goto LABEL_60;
    case 2uLL:
      v3 = 3;
      goto LABEL_59;
    case 3uLL:
      if (v2 == 4)
      {
        goto LABEL_60;
      }

      return 0;
    case 4uLL:
      if (v2 != 5)
      {
        return 0;
      }

      goto LABEL_60;
    case 5uLL:
      if (v2 == 6)
      {
        goto LABEL_60;
      }

      return 0;
    case 6uLL:
      if (v2 == 7)
      {
        goto LABEL_60;
      }

      return 0;
    case 7uLL:
      if (v2 == 8)
      {
        goto LABEL_60;
      }

      return 0;
    case 8uLL:
      if (v2 == 9)
      {
        goto LABEL_60;
      }

      return 0;
    case 9uLL:
      if (v2 == 10)
      {
        goto LABEL_60;
      }

      return 0;
    case 0xAuLL:
      if (v2 == 11)
      {
        goto LABEL_60;
      }

      return 0;
    case 0xBuLL:
      if (v2 == 12)
      {
        goto LABEL_60;
      }

      return 0;
    case 0xCuLL:
      if (v2 == 13)
      {
        goto LABEL_60;
      }

      return 0;
    case 0xDuLL:
      if (v2 == 14)
      {
        goto LABEL_60;
      }

      return 0;
    case 0xEuLL:
      if (v2 == 15)
      {
        goto LABEL_60;
      }

      return 0;
    case 0xFuLL:
      if (v2 == 17)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x10uLL:
      if (v2 == 18)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x11uLL:
      if (v2 == 20)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x12uLL:
      if (v2 == 32)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x13uLL:
      if (v2 == 64)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x14uLL:
      if (v2 == 65)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x15uLL:
      if (v2 == 89)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x16uLL:
      if (v2 == 128)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x17uLL:
      if (v2 == 129)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x18uLL:
      if (v2 == 130)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x19uLL:
      if (v2 == 132)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x1AuLL:
      if (v2 == 133)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x1BuLL:
      if (v2 != 140)
      {
        return 0;
      }

      goto LABEL_60;
    case 0x1CuLL:
      if (v2 == 141)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x1DuLL:
      if (v2 == 142)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x1EuLL:
      if (v2 == 144)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x1FuLL:
      if (v2 == 145)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x20uLL:
      if (v2 == 61904)
      {
        goto LABEL_60;
      }

      return 0;
    case 0x21uLL:
      if (v2 == *a2)
      {
        goto LABEL_60;
      }

      return 0;
    default:
LABEL_59:
      if (v2 != v3)
      {
        return 0;
      }

LABEL_60:
      v5 = HIDUsage.usage.getter();
      v6 = HIDUsage.usage.getter();
      v8 = (v6 & 0x10000) == 0 && v5 == v6;
      if ((v5 & 0x10000) != 0)
      {
        return HIWORD(v6) & 1;
      }

      else
      {
        return v8;
      }
  }
}

unint64_t sub_2455CC480()
{
  result = qword_27EE14FF8;
  if (!qword_27EE14FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE14FF8);
  }

  return result;
}

unint64_t sub_2455CC4D8()
{
  result = qword_27EE15000;
  if (!qword_27EE15000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15000);
  }

  return result;
}

unint64_t sub_2455CC530()
{
  result = qword_27EE15008;
  if (!qword_27EE15008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15008);
  }

  return result;
}

unint64_t sub_2455CC588()
{
  result = qword_27EE15010;
  if (!qword_27EE15010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15010);
  }

  return result;
}

unint64_t sub_2455CC5E0()
{
  result = qword_27EE15018;
  if (!qword_27EE15018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15018);
  }

  return result;
}

unint64_t sub_2455CC638()
{
  result = qword_27EE15020;
  if (!qword_27EE15020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15020);
  }

  return result;
}

unint64_t sub_2455CC690()
{
  result = qword_27EE15028;
  if (!qword_27EE15028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15028);
  }

  return result;
}

unint64_t sub_2455CC6E8()
{
  result = qword_27EE15030;
  if (!qword_27EE15030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15030);
  }

  return result;
}

unint64_t sub_2455CC740()
{
  result = qword_27EE15038;
  if (!qword_27EE15038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15038);
  }

  return result;
}

unint64_t sub_2455CC798()
{
  result = qword_27EE15040;
  if (!qword_27EE15040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15040);
  }

  return result;
}

unint64_t sub_2455CC7F0()
{
  result = qword_27EE15048;
  if (!qword_27EE15048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15048);
  }

  return result;
}

unint64_t sub_2455CC848()
{
  result = qword_27EE15050;
  if (!qword_27EE15050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15050);
  }

  return result;
}

unint64_t sub_2455CC8A0()
{
  result = qword_27EE15058;
  if (!qword_27EE15058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15058);
  }

  return result;
}

unint64_t sub_2455CC8F8()
{
  result = qword_27EE15060;
  if (!qword_27EE15060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15060);
  }

  return result;
}

unint64_t sub_2455CC950()
{
  result = qword_27EE15068;
  if (!qword_27EE15068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15068);
  }

  return result;
}

unint64_t sub_2455CC9A8()
{
  result = qword_27EE15070;
  if (!qword_27EE15070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15070);
  }

  return result;
}

unint64_t sub_2455CCA00()
{
  result = qword_27EE15078;
  if (!qword_27EE15078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15078);
  }

  return result;
}

unint64_t sub_2455CCA58()
{
  result = qword_27EE15080;
  if (!qword_27EE15080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15080);
  }

  return result;
}

unint64_t sub_2455CCAB0()
{
  result = qword_27EE15088;
  if (!qword_27EE15088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15088);
  }

  return result;
}

unint64_t sub_2455CCB08()
{
  result = qword_27EE15090;
  if (!qword_27EE15090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15090);
  }

  return result;
}

unint64_t sub_2455CCB60()
{
  result = qword_27EE15098;
  if (!qword_27EE15098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15098);
  }

  return result;
}

unint64_t sub_2455CCBB8()
{
  result = qword_27EE150A0;
  if (!qword_27EE150A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE150A0);
  }

  return result;
}

unint64_t sub_2455CCC10()
{
  result = qword_27EE150A8;
  if (!qword_27EE150A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE150A8);
  }

  return result;
}

unint64_t sub_2455CCC68()
{
  result = qword_27EE150B0;
  if (!qword_27EE150B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE150B0);
  }

  return result;
}

unint64_t sub_2455CCCC0()
{
  result = qword_27EE150B8;
  if (!qword_27EE150B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE150B8);
  }

  return result;
}

unint64_t sub_2455CCD18()
{
  result = qword_27EE150C0;
  if (!qword_27EE150C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE150C0);
  }

  return result;
}

unint64_t sub_2455CCD70()
{
  result = qword_27EE150C8;
  if (!qword_27EE150C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE150C8);
  }

  return result;
}

unint64_t sub_2455CCDC8()
{
  result = qword_27EE150D0;
  if (!qword_27EE150D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE150D0);
  }

  return result;
}

unint64_t sub_2455CCE20()
{
  result = qword_27EE150D8;
  if (!qword_27EE150D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE150D8);
  }

  return result;
}

unint64_t sub_2455CCE78()
{
  result = qword_27EE150E0;
  if (!qword_27EE150E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE150E0);
  }

  return result;
}

unint64_t sub_2455CCED0()
{
  result = qword_27EE150E8;
  if (!qword_27EE150E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE150E8);
  }

  return result;
}

uint64_t __swift_memcpy5_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x5F && *(a1 + 5))
  {
    return (*a1 + 95);
  }

  v3 = ((*(a1 + 4) >> 2) & 0xFFFFFFBF | (((*(a1 + 4) >> 1) & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x5E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for HIDUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x5E)
  {
    *(result + 4) = 0;
    *result = a2 - 95;
    if (a3 >= 0x5F)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x5F)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 2 * (((-a2 & 0x40) != 0) - 2 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.GenericDesktopUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x8F)
  {
    goto LABEL_17;
  }

  if (a2 + 113 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 113) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 113;
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

      return (*a1 | (v4 << 8)) - 113;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 113;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x72;
  v8 = v6 - 114;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.GenericDesktopUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 113 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 113) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x8F)
  {
    v4 = 0;
  }

  if (a2 > 0x8E)
  {
    v5 = ((a2 - 143) >> 8) + 1;
    *result = a2 + 113;
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
    *result = a2 + 113;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.SimulationControlsUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCE)
  {
    goto LABEL_17;
  }

  if (a2 + 50 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 50) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 50;
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

      return (*a1 | (v4 << 8)) - 50;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 50;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x33;
  v8 = v6 - 51;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.SimulationControlsUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 50 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 50) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCE)
  {
    v4 = 0;
  }

  if (a2 > 0xCD)
  {
    v5 = ((a2 - 206) >> 8) + 1;
    *result = a2 + 50;
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
    *result = a2 + 50;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.VRControlsUsage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HIDUsage.VRControlsUsage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HIDUsage.GenericDeviceControlsUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.GenericDeviceControlsUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.KeyboardOrKeypadUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x27)
  {
    goto LABEL_17;
  }

  if (a2 + 217 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 217) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 217;
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

      return (*a1 | (v4 << 8)) - 217;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 217;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xDA;
  v8 = v6 - 218;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.KeyboardOrKeypadUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 217 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 217) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x27)
  {
    v4 = 0;
  }

  if (a2 > 0x26)
  {
    v5 = ((a2 - 39) >> 8) + 1;
    *result = a2 - 39;
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
    *result = a2 - 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.LEDUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA1)
  {
    goto LABEL_17;
  }

  if (a2 + 95 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 95) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 95;
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

      return (*a1 | (v4 << 8)) - 95;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 95;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x60;
  v8 = v6 - 96;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.LEDUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 95 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 95) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA1)
  {
    v4 = 0;
  }

  if (a2 > 0xA0)
  {
    v5 = ((a2 - 161) >> 8) + 1;
    *result = a2 + 95;
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
    *result = a2 + 95;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.TelephonyDeviceUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x9E)
  {
    goto LABEL_17;
  }

  if (a2 + 98 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 98) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 98;
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

      return (*a1 | (v4 << 8)) - 98;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 98;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x63;
  v8 = v6 - 99;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.TelephonyDeviceUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 98 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 98) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x9E)
  {
    v4 = 0;
  }

  if (a2 > 0x9D)
  {
    v5 = ((a2 - 158) >> 8) + 1;
    *result = a2 + 98;
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
    *result = a2 + 98;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.ConsumerUsage(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE3F)
  {
    goto LABEL_17;
  }

  if (a2 + 449 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 449 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 449;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 449;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 449;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C2;
  v8 = v6 - 450;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for HIDUsage.ConsumerUsage(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 449 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 449 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE3F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE3E)
  {
    v6 = ((a2 - 65087) >> 16) + 1;
    *result = a2 + 449;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 449;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.DigitizersUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x95)
  {
    goto LABEL_17;
  }

  if (a2 + 107 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 107) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 107;
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

      return (*a1 | (v4 << 8)) - 107;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 107;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x6C;
  v8 = v6 - 108;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.DigitizersUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 107 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 107) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x95)
  {
    v4 = 0;
  }

  if (a2 > 0x94)
  {
    v5 = ((a2 - 149) >> 8) + 1;
    *result = a2 + 107;
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
    *result = a2 + 107;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.PhysicalInputDeviceUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x98)
  {
    goto LABEL_17;
  }

  if (a2 + 104 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 104) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 104;
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

      return (*a1 | (v4 << 8)) - 104;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 104;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x69;
  v8 = v6 - 105;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.PhysicalInputDeviceUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 104 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 104) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x98)
  {
    v4 = 0;
  }

  if (a2 > 0x97)
  {
    v5 = ((a2 - 152) >> 8) + 1;
    *result = a2 + 104;
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
    *result = a2 + 104;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s7CoreHID8HIDUsageO18SportControlsUsageOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7CoreHID8HIDUsageO18SportControlsUsageOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.AuxiliaryDisplayUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB6)
  {
    goto LABEL_17;
  }

  if (a2 + 74 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 74) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 74;
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

      return (*a1 | (v4 << 8)) - 74;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 74;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4B;
  v8 = v6 - 75;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.AuxiliaryDisplayUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 74 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 74) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB6)
  {
    v4 = 0;
  }

  if (a2 > 0xB5)
  {
    v5 = ((a2 - 182) >> 8) + 1;
    *result = a2 + 74;
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
    *result = a2 + 74;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.SensorsUsage(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD68)
  {
    goto LABEL_17;
  }

  if (a2 + 664 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 664 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 664;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 664;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 664;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x299;
  v8 = v6 - 665;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for HIDUsage.SensorsUsage(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 664 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 664 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD68)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD67)
  {
    v6 = ((a2 - 64872) >> 16) + 1;
    *result = a2 + 664;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 664;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t _s7CoreHID8HIDUsageO12HapticsUsageOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7CoreHID8HIDUsageO12HapticsUsageOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.BrailleDisplayUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.BrailleDisplayUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.LightingAndIlluminationUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.LightingAndIlluminationUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.MonitorUsage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HIDUsage.MonitorUsage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s7CoreHID8HIDUsageO11ButtonUsageOwet_0(unsigned int *a1, int a2)
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

_WORD *_s7CoreHID8HIDUsageO11ButtonUsageOwst_0(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for HIDUsage.VESAVirtualControlsUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 44;
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

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.VESAVirtualControlsUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
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
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.PowerUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB4)
  {
    goto LABEL_17;
  }

  if (a2 + 76 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 76) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 76;
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

      return (*a1 | (v4 << 8)) - 76;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 76;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4D;
  v8 = v6 - 77;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.PowerUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 76 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 76) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB4)
  {
    v4 = 0;
  }

  if (a2 > 0xB3)
  {
    v5 = ((a2 - 180) >> 8) + 1;
    *result = a2 + 76;
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
    *result = a2 + 76;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.BatterySystemUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA6)
  {
    goto LABEL_17;
  }

  if (a2 + 90 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 90) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 90;
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

      return (*a1 | (v4 << 8)) - 90;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 90;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x5B;
  v8 = v6 - 91;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.BatterySystemUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 90 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 90) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA6)
  {
    v4 = 0;
  }

  if (a2 > 0xA5)
  {
    v5 = ((a2 - 166) >> 8) + 1;
    *result = a2 + 90;
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
    *result = a2 + 90;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.BarcodeScannerUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC2;
  v8 = v6 - 194;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.BarcodeScannerUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = a2 - 63;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.ScalesUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD3)
  {
    goto LABEL_17;
  }

  if (a2 + 45 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 45) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 45;
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

      return (*a1 | (v4 << 8)) - 45;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v8 = v6 - 46;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.ScalesUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD3)
  {
    v4 = 0;
  }

  if (a2 > 0xD2)
  {
    v5 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
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
    *result = a2 + 45;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2455CEE9C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2455CEF30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.CameraControlUsage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HIDUsage.CameraControlUsage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HIDUsage.ArcadeUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDUsage.ArcadeUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.FIDOAllianceUsage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HIDUsage.FIDOAllianceUsage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t HIDReportID.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[1] = result == 0;
  return result;
}

__int16 *sub_2455CF4A0()
{
  if (qword_27EE18D40 != -1)
  {
    swift_once();
  }

  return &word_27EE18D48;
}

uint64_t static HIDReportID.allReports.getter@<X0>(_WORD *a1@<X8>)
{
  if (qword_27EE18D40 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = word_27EE18D48;
  return result;
}

_BYTE *sub_2455CF558@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_2455CF5CC()
{
  sub_2455EA080();
  sub_2455EA0A0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CF640(uint64_t a1)
{
  sub_2455EA080();
  sub_2455EA0A0();
  return sub_2455EA0D0();
}

unint64_t HIDReportID.description.getter()
{
  sub_2455E9DF0();

  v0 = sub_2455E9FD0();
  MEMORY[0x245D6B9A0](v0);

  MEMORY[0x245D6B9A0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

unint64_t sub_2455CF728()
{
  sub_2455E9DF0();

  v0 = sub_2455E9FD0();
  MEMORY[0x245D6B9A0](v0);

  MEMORY[0x245D6B9A0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_2455CF818@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result == 1;
  if (result == 2)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2455CF838@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    v6 = xmmword_2455EB460;
LABEL_11:
    *a3 = v6;
    return result;
  }

  v5 = result;
  if (result == 4346709 && a2 == 0xE300000000000000 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    return result;
  }

  result = 0x746F6F7465756C42;
  if (v5 == 0x746F6F7465756C42 && a2 == 0xE900000000000068 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    v6 = xmmword_2455F1030;
    goto LABEL_11;
  }

  result = 0xD000000000000012;
  if (v5 == 0xD000000000000012 && 0x80000002455F2CF0 == a2 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    v6 = xmmword_2455F1020;
    goto LABEL_11;
  }

  result = 0x504341412D5442;
  if (v5 == 0x504341412D5442 && a2 == 0xE700000000000000 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    v6 = xmmword_2455F1010;
    goto LABEL_11;
  }

  if (v5 == 4475201 && a2 == 0xE300000000000000 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    v6 = xmmword_2455F1000;
    goto LABEL_11;
  }

  if (v5 == 4403785 && a2 == 0xE300000000000000 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    v6 = xmmword_2455F0FF0;
    goto LABEL_11;
  }

  if (v5 == 4804691 && a2 == 0xE300000000000000 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    v6 = xmmword_2455F0FE0;
    goto LABEL_11;
  }

  result = 0x6C6169726553;
  if (v5 == 0x6C6169726553 && a2 == 0xE600000000000000 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    v6 = xmmword_2455F0FD0;
    goto LABEL_11;
  }

  if (v5 == 5259625 && a2 == 0xE300000000000000 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    v6 = xmmword_2455F0FC0;
    goto LABEL_11;
  }

  result = 0x79616C50726941;
  if (v5 == 0x79616C50726941 && a2 == 0xE700000000000000 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    v6 = xmmword_2455F0FB0;
    goto LABEL_11;
  }

  if (v5 == 5591123 && a2 == 0xE300000000000000 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    v6 = xmmword_2455F0FA0;
    goto LABEL_11;
  }

  if (v5 == 1330006342 && a2 == 0xE400000000000000 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    v6 = xmmword_2455F0F90;
    goto LABEL_11;
  }

  if (v5 == 0xD000000000000011 && 0x80000002455F2D10 == a2 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    v6 = xmmword_2455F0F80;
    goto LABEL_11;
  }

  result = 0x6C617574726956;
  if (v5 == 0x6C617574726956 && a2 == 0xE700000000000000 || (result = sub_2455E9FF0(), (result & 1) != 0))
  {
    v6 = xmmword_2455F0F70;
    goto LABEL_11;
  }

  *a3 = v5;
  *(a3 + 8) = a2;
}

unint64_t sub_2455CFC94(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = 0;
  switch(v1)
  {
    case 0uLL:
      result = 4346709;
      break;
    case 1uLL:
      result = 0x746F6F7465756C42;
      break;
    case 2uLL:
      result = 0xD000000000000012;
      break;
    case 3uLL:
      result = 0x504341412D5442;
      break;
    case 4uLL:
      result = 4475201;
      break;
    case 5uLL:
      result = 4403785;
      break;
    case 6uLL:
      result = 4804691;
      break;
    case 7uLL:
      result = 0x6C6169726553;
      break;
    case 8uLL:
      result = 5259625;
      break;
    case 9uLL:
      result = 0x79616C50726941;
      break;
    case 0xAuLL:
      result = 5591123;
      break;
    case 0xBuLL:
      result = 1330006342;
      break;
    case 0xCuLL:
      result = 0xD000000000000011;
      break;
    case 0xDuLL:
      result = 0x6C617574726956;
      break;
    case 0xEuLL:
      return result;
    default:
      v3 = MEMORY[0];
      sub_2455A775C(MEMORY[0], v1);
      result = v3;
      break;
  }

  return result;
}

uint64_t sub_2455CFE64@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if ((result - 1) <= 0x22)
  {
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v3 = 0;
  }

  *a3 = v3;
  return result;
}

uint64_t sub_2455CFE80(unsigned __int8 *a1)
{
  if (*a1 == 36)
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

unint64_t HIDDeviceError.errorDescription.getter()
{
  result = 0xD000000000000047;
  if (*(v0 + 4) != 1)
  {
    return 0xD000000000000059;
  }

  switch(*v0)
  {
    case 1:
      result = 0xD000000000000046;
      break;
    case 2:
      result = 0xD000000000000030;
      break;
    case 3:
      result = 0xD000000000000038;
      break;
    case 4:
      result = 0xD000000000000039;
      break;
    case 5:
      result = 0xD000000000000035;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000029;
      break;
    case 0xA:
      result = 0xD00000000000004DLL;
      break;
    case 0xB:
      result = 0xD00000000000001ALL;
      break;
    case 0xC:
      result = 0xD000000000000048;
      break;
    case 0xD:
      result = 0xD000000000000018;
      break;
    case 0xE:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2455D016C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 0xE00002BE:
      v2 = 0;
      v3 = 0x100000000;
      break;
    case 0xE00002BF:
    case 0xE00002C0:
    case 0xE00002C3:
    case 0xE00002C4:
    case 0xE00002C6:
    case 0xE00002C8:
    case 0xE00002C9:
    case 0xE00002CB:
    case 0xE00002CC:
    case 0xE00002CD:
    case 0xE00002CE:
    case 0xE00002CF:
    case 0xE00002D0:
    case 0xE00002D1:
    case 0xE00002D2:
    case 0xE00002D3:
    case 0xE00002D4:
    case 0xE00002D7:
    case 0xE00002D9:
    case 0xE00002DA:
    case 0xE00002DB:
    case 0xE00002DC:
    case 0xE00002DD:
    case 0xE00002DE:
    case 0xE00002DF:
    case 0xE00002E0:
    case 0xE00002E4:
    case 0xE00002E5:
    case 0xE00002E6:
    case 0xE00002E7:
    case 0xE00002E8:
    case 0xE00002EA:
    case 0xE00002EC:
      goto LABEL_5;
    case 0xE00002C1:
      v2 = 0;
      v3 = 0x100000001;
      break;
    case 0xE00002C2:
      v2 = 0;
      v3 = 0x100000002;
      break;
    case 0xE00002C5:
      v2 = 0;
      v3 = 0x100000003;
      break;
    case 0xE00002C7:
      v2 = 0;
      v3 = 0x100000004;
      break;
    case 0xE00002CA:
      v2 = 0;
      v3 = 0x100000005;
      break;
    case 0xE00002D5:
      v2 = 0;
      v3 = 0x100000006;
      break;
    case 0xE00002D6:
      v2 = 0;
      v4 = 5;
      goto LABEL_18;
    case 0xE00002D8:
      v2 = 0;
      v3 = 0x100000008;
      break;
    case 0xE00002E1:
      v2 = 0;
      v3 = 0x100000009;
      break;
    case 0xE00002E2:
      v2 = 0;
      v3 = 0x10000000ALL;
      break;
    case 0xE00002E3:
      v2 = 0;
      v4 = 9;
LABEL_18:
      v3 = v4 | 0x100000002;
      break;
    case 0xE00002E9:
      v2 = 0;
      v3 = 0x10000000CLL;
      break;
    case 0xE00002EB:
      v2 = 0;
      v3 = 0x10000000DLL;
      break;
    case 0xE00002ED:
      v2 = 0;
      v3 = 0x10000000ELL;
      break;
    default:
      if (result)
      {
LABEL_5:
        v2 = 0;
        v3 = result;
      }

      else
      {
        v3 = 0;
        v2 = 1;
      }

      break;
  }

  *a2 = v3;
  *(a2 + 4) = BYTE4(v3);
  *(a2 + 5) = v2;
  return result;
}

uint64_t sub_2455D03A0(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14FD0, &qword_2455F1620);
  if (!swift_dynamicCast())
  {
    return 3758096385;
  }

  result = v3;
  if (v4)
  {
    return dword_2455F155C[v3];
  }

  return result;
}

uint64_t sub_2455D0418()
{
  result = swift_slowAlloc();
  qword_27EE19E20 = result;
  return result;
}

uint64_t *sub_2455D0440()
{
  if (qword_27EE18D50 != -1)
  {
    swift_once();
  }

  return &qword_27EE19E20;
}

uint64_t sub_2455D0490()
{
  if (qword_27EE18D50 != -1)
  {
    swift_once();
  }

  return qword_27EE19E20;
}

uint64_t sub_2455D04E0()
{
  if (qword_27EE18D50 != -1)
  {
    swift_once();
  }

  v0 = qword_27EE19E20;
  mach_timebase_info(qword_27EE19E20);
  v2 = *v0;
  v1 = v0[1];
  result = sub_2455EA100();
  if (!is_mul_ok(result, 0x3B9ACA00uLL))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (((result | v4) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = 1000000000 * result + v4 / 0x3B9ACA00;
  if (__CFADD__(1000000000 * result, v4 / 0x3B9ACA00))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!is_mul_ok(v5, v1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2)
  {
    return v5 * v1 / v2;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2455D05BC@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2455E9E70();
  sub_2455E9E90();
  if (qword_27EE18D50 != -1)
  {
    swift_once();
  }

  v4 = qword_27EE19E20;
  result = mach_timebase_info(qword_27EE19E20);
  if (!is_mul_ok(a1, *v4))
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v4[1];
  if (!v6)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = a1 * *v4 / v6;
  result = v7 / 0x3B9ACA00;
  v8 = v7 >= 1000000000 * (v7 / 0x3B9ACA00);
  v9 = v7 % 0x3B9ACA00;
  if (!v8)
  {
    goto LABEL_12;
  }

  if (!is_mul_ok(v9, 0x3B9ACA00uLL))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (((1000000000 * v9) & 0x8000000000000000) == 0)
  {
    result = sub_2455EA110();
    *a2 = result;
    a2[1] = v10;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_2455D0720(unint64_t result)
{
  if (HIDWORD(result))
  {
    __break(1u);
  }

  return result;
}

uint64_t _s7CoreHID18HIDDeviceTransportO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_31;
      }

      sub_2455AB91C(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_38;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_31;
      }

      v8 = 1;
      sub_2455AB91C(*a1, 1uLL);
      sub_2455AB91C(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_31;
      }

      sub_2455AB91C(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_38;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_31;
      }

      sub_2455AB91C(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_38;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_31;
      }

      sub_2455AB91C(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_38;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_31;
      }

      sub_2455AB91C(*a1, 5uLL);
      v6 = v4;
      v7 = 5;
      goto LABEL_38;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_31;
      }

      sub_2455AB91C(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
      goto LABEL_38;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_31;
      }

      sub_2455AB91C(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_38;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_31;
      }

      sub_2455AB91C(*a1, 8uLL);
      v6 = v4;
      v7 = 8;
      goto LABEL_38;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_31;
      }

      sub_2455AB91C(*a1, 9uLL);
      v6 = v4;
      v7 = 9;
      goto LABEL_38;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_31;
      }

      sub_2455AB91C(*a1, 0xAuLL);
      v6 = v4;
      v7 = 10;
      goto LABEL_38;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_31;
      }

      sub_2455AB91C(*a1, 0xBuLL);
      v6 = v4;
      v7 = 11;
      goto LABEL_38;
    case 0xCuLL:
      if (v5 != 12)
      {
        goto LABEL_31;
      }

      sub_2455AB91C(*a1, 0xCuLL);
      v6 = v4;
      v7 = 12;
      goto LABEL_38;
    case 0xDuLL:
      if (v5 != 13)
      {
        goto LABEL_31;
      }

      sub_2455AB91C(*a1, 0xDuLL);
      v6 = v4;
      v7 = 13;
      goto LABEL_38;
    default:
      if (v5 >= 0xE)
      {
        v9 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v11 = sub_2455E9FF0();
          sub_2455A775C(v4, v5);
          sub_2455A775C(v2, v3);
          sub_2455AB91C(v2, v3);
          sub_2455AB91C(v4, v5);
          return v11 & 1;
        }

        sub_2455A775C(v9, v3);
        sub_2455A775C(v2, v3);
        sub_2455AB91C(v2, v3);
        v6 = v2;
        v7 = v3;
LABEL_38:
        sub_2455AB91C(v6, v7);
        return 1;
      }

      else
      {
LABEL_31:
        sub_2455A775C(*a2, *(a2 + 8));
        sub_2455A775C(v2, v3);
        sub_2455AB91C(v2, v3);
        sub_2455AB91C(v4, v5);
        return 0;
      }
  }
}

BOOL _s7CoreHID14HIDDeviceErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  if (*(a1 + 4) == 1)
  {
    switch(*a1)
    {
      case 1:
        if (v2 != 1)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if (v2 != 2)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if (v2 != 3)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if (v2 != 4)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if (v2 != 5)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if (v2 != 6)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if (v2 != 7)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if (v2 != 8)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if (v2 != 9)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xA:
        if (v2 != 10)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xB:
        if (v2 != 11)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xC:
        if (v2 != 12)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xD:
        if (v2 != 13)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xE:
        if (v2 <= 0xD)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if (v2)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (*(a2 + 4) & 1) == 0 && *a1 == v2;
  }

  return result;
}

unint64_t sub_2455D0C14()
{
  result = qword_27EE150F0;
  if (!qword_27EE150F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE150F0);
  }

  return result;
}

unint64_t sub_2455D0C70()
{
  result = qword_27EE150F8;
  if (!qword_27EE150F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE150F8);
  }

  return result;
}

unint64_t sub_2455D0CC8()
{
  result = qword_27EE15100;
  if (!qword_27EE15100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15100);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDReportID(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for HIDReportID(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2455D0E50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF1 && *(a1 + 16))
  {
    return (*a1 + 2147483634);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 13;
  if (v4 >= 0xF)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2455D0EA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483634;
    if (a3 >= 0x7FFFFFF2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 13;
    }
  }

  return result;
}

void *sub_2455D0EF8(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for HIDDeviceLocalizationCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDDeviceLocalizationCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HIDDeviceError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HIDDeviceError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_2455D10D8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2455D10F4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_2455D112C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2455D119C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2455D12DC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2455D1550@<X0>(io_registry_entry_t a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  result = IORegistryEntryGetRegistryEntryID(a1, v5);
  if (result)
  {
    v4 = 0;
  }

  else
  {
    v4 = v5[0];
  }

  *a2 = v4;
  *(a2 + 8) = result != 0;
  return result;
}

uint64_t HIDDeviceClient.DeviceReference.hashValue.getter()
{
  v1 = *v0;
  sub_2455EA080();
  MEMORY[0x245D6BEB0](v1);
  return sub_2455EA0D0();
}

uint64_t sub_2455D1658()
{
  v1 = *v0;
  sub_2455EA080();
  MEMORY[0x245D6BEB0](v1);
  return sub_2455EA0D0();
}

uint64_t sub_2455D16CC(uint64_t a1)
{
  v2 = *v1;
  sub_2455EA080();
  MEMORY[0x245D6BEB0](v2);
  return sub_2455EA0D0();
}

uint64_t sub_2455D1730@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2455D1784(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 120);
  v6 = *(*a2 + 128);
  *(v4 + 120) = *a1;
  *(v4 + 128) = v3;
  sub_2455A5EE0(v2, v3);

  return sub_2455D18DC(v5, v6);
}

void *sub_2455D17D4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v1;
  if (v2 >> 60 != 15)
  {
    goto LABEL_4;
  }

  result = (*(*v0 + 872))(v9, 0xD000000000000010, 0x80000002455F2830);
  if (v9[0])
  {
    v9[1] = v9[0];
    swift_dynamicCast();
    v3 = v7;
    v5 = v0[15];
    v6 = v0[16];
    v0[15] = v7;
    v0[16] = v8;
    sub_2455A5EE0(v7, v8);
    sub_2455D18DC(v5, v6);
LABEL_4:
    sub_2455D18F0(v1, v2);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2455D18DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2455A5F34(result, a2);
  }

  return result;
}

uint64_t sub_2455D18F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2455A5EE0(result, a2);
  }

  return result;
}

uint64_t sub_2455D1904(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 120);
  v4 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return sub_2455D18DC(v3, v4);
}

void HIDDeviceClient.primaryUsage.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *(a1 + 4) = *(v1 + 140);
  *a1 = v2;
}

uint64_t sub_2455D1938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  return result;
}

uint64_t sub_2455D198C(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 144) = *a1;
}

unint64_t sub_2455D19D0()
{
  if (v0[18])
  {
    v1 = v0[18];
LABEL_21:

    return v1;
  }

  result = (*(*v0 + 872))(&v19, 0xD000000000000010, 0x80000002455F2B30);
  if (v19)
  {
    v17 = v0;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15280, &qword_2455F1DF8);
    result = swift_dynamicCast();
    v3 = *(v18 + 16);
    if (!v3)
    {
      v1 = MEMORY[0x277D84F90];
LABEL_20:

      v17[18] = v1;

      goto LABEL_21;
    }

    v4 = 0;
    v1 = MEMORY[0x277D84F90];
    while (v4 < *(v18 + 16))
    {
      v5 = *(v18 + 32 + 8 * v4);
      if (!*(v5 + 16))
      {
        goto LABEL_23;
      }

      result = sub_2455AB718(0x7355656369766544, 0xEF65676150656761);
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      v7 = *(*(v5 + 56) + 2 * result);
      if (*(v5 + 16) && (v8 = sub_2455AB718(0x7355656369766544, 0xEB00000000656761), (v9 & 1) != 0))
      {
        v10 = *(*(v5 + 56) + 2 * v8);

        v11 = 0;
      }

      else
      {

        v10 = 0;
        v11 = 1;
      }

      HIDUsage.init(page:usage:)(&v20, v10 | (v11 << 16), v7);
      v12 = BYTE4(v20);
      v13 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2455E35B4(0, *(v1 + 16) + 1, 1, v1);
        v1 = result;
      }

      v15 = *(v1 + 16);
      v14 = *(v1 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_2455E35B4((v14 > 1), v15 + 1, 1, v1);
        v1 = result;
      }

      ++v4;
      *(v1 + 16) = v15 + 1;
      v16 = v1 + 6 * v15;
      *(v16 + 36) = (v13 | (v12 << 32)) >> 32;
      *(v16 + 32) = v13;
      if (v3 == v4)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_2455D1C70@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 384))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_2455D1CD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 160);
  v6 = *(*a2 + 168);
  *(v4 + 160) = *a1;
  *(v4 + 168) = v3;
  sub_2455A774C(v2, v3);

  return sub_2455D1E54(v5, v6);
}

uint64_t sub_2455D1D24@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[20];
  v4 = v1[21];
  v5 = v3;
  v6 = v4;
  if (v4 == 15)
  {
    (*(*v1 + 872))(&v14, 0x726F70736E617254, 0xE900000000000074);
    if (v14)
    {
      v16 = v14;
      v7 = swift_dynamicCast();
      v8 = v7 == 0;
      if (v7)
      {
        v9 = v14;
      }

      else
      {
        v9 = 0;
      }

      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v15;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    sub_2455CF838(v9, v10, &v14);

    v5 = v14;
    v6 = v15;
    v11 = v1[20];
    v12 = v1[21];
    v1[20] = v14;
    v1[21] = v6;
    sub_2455A774C(v5, v6);
    sub_2455D1E54(v11, v12);
  }

  *a1 = v5;
  a1[1] = v6;
  return sub_2455D1E64(v3, v4);
}

uint64_t sub_2455D1E54(uint64_t a1, unint64_t a2)
{
  if (a2 != 15)
  {
    return sub_2455AB90C(a1, a2);
  }

  return a1;
}

uint64_t sub_2455D1E64(uint64_t a1, unint64_t a2)
{
  if (a2 != 15)
  {
    return sub_2455A774C(a1, a2);
  }

  return a1;
}

uint64_t sub_2455D1E74(_OWORD *a1)
{
  v3 = *(v1 + 160);
  v2 = *(v1 + 168);
  *(v1 + 160) = *a1;
  return sub_2455D1E54(v3, v2);
}

double sub_2455D1E88@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_2455F15A0;
  return result;
}

uint64_t sub_2455D1E98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2455D1EEC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 176);
  v6 = *(*a2 + 184);
  *(v4 + 176) = v3;
  *(v4 + 184) = v2;

  return sub_2455D2044(v5, v6);
}

uint64_t sub_2455D1F34()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v1;
  if (v2 == 1)
  {
    (*(*v0 + 872))(v9, 0x746375646F7250, 0xE700000000000000);
    if (v9[0])
    {
      v9[2] = v9[0];
      v4 = swift_dynamicCast();
      if (v4)
      {
        v3 = v9[0];
      }

      else
      {
        v3 = 0;
      }

      if (v4)
      {
        v5 = v9[1];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = v0[22];
    v7 = v0[23];
    v0[22] = v3;
    v0[23] = v5;

    sub_2455D2044(v6, v7);
  }

  sub_2455D2058(v1, v2);
  return v3;
}

uint64_t sub_2455D2044(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2455D2058(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2455D206C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 184);
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return sub_2455D2044(v3, v4);
}

uint64_t sub_2455D2080@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2455D20D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 192);
  v6 = *(*a2 + 200);
  *(v4 + 192) = v3;
  *(v4 + 200) = v2;

  return sub_2455D2044(v5, v6);
}

uint64_t sub_2455D211C()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v1;
  if (v2 == 1)
  {
    (*(*v0 + 872))(v9, 0x74636166756E614DLL, 0xEC00000072657275);
    if (v9[0])
    {
      v9[2] = v9[0];
      v4 = swift_dynamicCast();
      if (v4)
      {
        v3 = v9[0];
      }

      else
      {
        v3 = 0;
      }

      if (v4)
      {
        v5 = v9[1];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = v0[24];
    v7 = v0[25];
    v0[24] = v3;
    v0[25] = v5;

    sub_2455D2044(v6, v7);
  }

  sub_2455D2058(v1, v2);
  return v3;
}

uint64_t sub_2455D2234(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 192);
  v4 = *(v2 + 200);
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return sub_2455D2044(v3, v4);
}

uint64_t sub_2455D2248@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2455D229C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 208);
  v6 = *(*a2 + 216);
  *(v4 + 208) = v3;
  *(v4 + 216) = v2;

  return sub_2455D2044(v5, v6);
}

uint64_t sub_2455D22E4()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v1;
  if (v2 == 1)
  {
    (*(*v0 + 872))(v9, 0x6D754E6C65646F4DLL, 0xEB00000000726562);
    if (v9[0])
    {
      v9[2] = v9[0];
      v4 = swift_dynamicCast();
      if (v4)
      {
        v3 = v9[0];
      }

      else
      {
        v3 = 0;
      }

      if (v4)
      {
        v5 = v9[1];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = v0[26];
    v7 = v0[27];
    v0[26] = v3;
    v0[27] = v5;

    sub_2455D2044(v6, v7);
  }

  sub_2455D2058(v1, v2);
  return v3;
}

uint64_t sub_2455D23FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 208);
  v4 = *(v2 + 216);
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return sub_2455D2044(v3, v4);
}

uint64_t sub_2455D2410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 480))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2455D246C(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 224) = *result;
  *(v3 + 232) = v2;
  return result;
}

uint64_t sub_2455D2488()
{
  if ((*(v0 + 233) & 1) == 0)
  {
    return *(v0 + 224);
  }

  (*(*v0 + 872))(&v5, 0x4E6E6F6973726556, 0xED00007265626D75);
  if (v5)
  {
    v1 = swift_dynamicCast();
    if (v1)
    {
      result = v4;
    }

    else
    {
      result = 0;
    }

    v3 = v1 ^ 1;
  }

  else
  {
    result = 0;
    v3 = 1;
  }

  *(v0 + 224) = result;
  *(v0 + 232) = v3;
  *(v0 + 233) = 0;
  return result;
}

uint64_t sub_2455D2568(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  *(v2 + 233) = 0;
  return result;
}

uint64_t sub_2455D257C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2455D25D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 240);
  v6 = *(*a2 + 248);
  *(v4 + 240) = v3;
  *(v4 + 248) = v2;

  return sub_2455D2044(v5, v6);
}

uint64_t sub_2455D2618()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v1;
  if (v2 == 1)
  {
    (*(*v0 + 872))(v9, 0x754E6C6169726553, 0xEC0000007265626DLL);
    if (v9[0])
    {
      v9[2] = v9[0];
      v4 = swift_dynamicCast();
      if (v4)
      {
        v3 = v9[0];
      }

      else
      {
        v3 = 0;
      }

      if (v4)
      {
        v5 = v9[1];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = v0[30];
    v7 = v0[31];
    v0[30] = v3;
    v0[31] = v5;

    sub_2455D2044(v6, v7);
  }

  sub_2455D2058(v1, v2);
  return v3;
}

uint64_t sub_2455D2730(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 240);
  v4 = *(v2 + 248);
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return sub_2455D2044(v3, v4);
}

uint64_t sub_2455D2744@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 528))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2455D2798(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 256);
  v6 = *(*a2 + 264);
  *(v4 + 256) = v3;
  *(v4 + 264) = v2;

  return sub_2455D2044(v5, v6);
}

uint64_t sub_2455D27E0()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v1;
  if (v2 == 1)
  {
    (*(*v0 + 872))(v9, 0xD000000000000016, 0x80000002455F2850);
    if (v9[0])
    {
      v9[2] = v9[0];
      v4 = swift_dynamicCast();
      if (v4)
      {
        v3 = v9[0];
      }

      else
      {
        v3 = 0;
      }

      if (v4)
      {
        v5 = v9[1];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = v0[32];
    v7 = v0[33];
    v0[32] = v3;
    v0[33] = v5;

    sub_2455D2044(v6, v7);
  }

  sub_2455D2058(v1, v2);
  return v3;
}

uint64_t sub_2455D28F4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 256);
  v4 = *(v2 + 264);
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return sub_2455D2044(v3, v4);
}

uint64_t sub_2455D2908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 552))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2455D2964(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 272) = *result;
  *(v3 + 280) = v2;
  return result;
}

uint64_t sub_2455D2980()
{
  if ((*(v0 + 281) & 1) == 0)
  {
    return *(v0 + 272);
  }

  (*(*v0 + 872))(&v5, 0x6E6F697461636F4CLL, 0xEA00000000004449);
  if (v5)
  {
    v1 = swift_dynamicCast();
    if (v1)
    {
      result = v4;
    }

    else
    {
      result = 0;
    }

    v3 = v1 ^ 1;
  }

  else
  {
    result = 0;
    v3 = 1;
  }

  *(v0 + 272) = result;
  *(v0 + 280) = v3;
  *(v0 + 281) = 0;
  return result;
}

uint64_t sub_2455D2A58(uint64_t result, char a2)
{
  *(v2 + 272) = result;
  *(v2 + 280) = a2 & 1;
  *(v2 + 281) = 0;
  return result;
}

void *sub_2455D2A80@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 576))(&v4);
  *a2 = v4;
  return result;
}

void sub_2455D2AF4(_BYTE *a1@<X8>)
{
  v3 = v1[282];
  if (v3 == 36)
  {
    (*(*v1 + 872))(&v8, 0x437972746E756F43, 0xEB0000000065646FLL);
    if (v8)
    {
      v4 = swift_dynamicCast();
      if (v4)
      {
        v5 = v7;
      }

      else
      {
        v5 = 0;
      }

      v6 = v4 ^ 1;
    }

    else
    {
      v5 = 0;
      v6 = 1;
    }

    sub_2455CFE64(v5, v6, &v8);
    LOBYTE(v3) = v8;
    v1[282] = v8;
  }

  *a1 = v3;
}

uint64_t sub_2455D2BE4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 600))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2455D2C4C()
{
  v1 = v0[283];
  if (v1 == 2)
  {
    (*(*v0 + 872))(&v4, 0x6E492D746C697542, 0xE800000000000000);
    LOBYTE(v1) = v4;
    if (v4)
    {
      if (swift_dynamicCast())
      {
        LOBYTE(v1) = v3;
      }

      else
      {
        LOBYTE(v1) = 0;
      }
    }

    v0[283] = v1;
  }

  return v1 & 1;
}

uint64_t sub_2455D2D08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 624))();
  *a2 = result;
  return result;
}

uint64_t sub_2455D2D5C(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 288) = *a1;
}

void sub_2455D2DA0()
{
  if (*(v0 + 288))
  {
    goto LABEL_25;
  }

  v1 = IOHIDDeviceCopyMatchingElements(*(v0 + 296), 0, 0);
  if (!v1)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v2 = v1;
  Count = CFArrayGetCount(v2);
  if (Count < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v4 = Count;
  if (!Count)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if (v7 >= v4)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_27;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v2, v7);
      if (!ValueAtIndex)
      {
        goto LABEL_29;
      }

      v9 = ValueAtIndex;

      sub_2455A0954(v9, v0, &v19);
      v26[4] = v23;
      v26[5] = v24;
      v27[0] = v25[0];
      *(v27 + 9) = *(v25 + 9);
      v26[0] = v19;
      v26[1] = v20;
      v26[2] = v21;
      v26[3] = v22;
      v28 = v19;
      v29 = v20;
      v30 = v21;
      v31 = v22;
      v32 = v23;
      v33 = v24;
      v34[0] = v25[0];
      *(v34 + 9) = *(v25 + 9);
      if (sub_2455A5BFC(&v28) != 1)
      {
        break;
      }

LABEL_8:
      ++v7;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    if (BYTE8(v34[0]))
    {

      sub_2455A7680(v26, &qword_27EE14DF0, &qword_2455EAC30);
      goto LABEL_8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2455A5C14(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_2455A5C14((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[128 * v11];
    v13 = v28;
    v14 = v29;
    v15 = v31;
    *(v12 + 4) = v30;
    *(v12 + 5) = v15;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v16 = v32;
    v17 = v33;
    v18 = v34[0];
    *(v12 + 137) = *(v34 + 9);
    *(v12 + 7) = v17;
    *(v12 + 8) = v18;
    *(v12 + 6) = v16;
  }

  while (v5 != v4);
LABEL_23:

LABEL_24:
  *(v0 + 288) = v6;

LABEL_25:
}

uint64_t sub_2455D306C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 360) = a1;
  return result;
}

uint64_t sub_2455D3130(char a1)
{
  result = swift_beginAccess();
  *(v1 + 368) = a1;
  return result;
}

uint64_t sub_2455D31F4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 369) = a1;
  return result;
}

uint64_t sub_2455D32B8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 370) = a1;
  return result;
}

uint64_t sub_2455D337C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 371) = a1;
  return result;
}

uint64_t sub_2455D3450(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 376) = a1;
}

void HIDDeviceClient.init(deviceReference:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_2455E9CD0();
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2455E9D00();
  MEMORY[0x28223BE20](v7);
  v8 = sub_2455E9A90();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = *a1;
  swift_defaultActor_initialize();
  *(v1 + 120) = xmmword_2455F15B0;
  *(v1 + 144) = 0;
  *(v1 + 160) = xmmword_2455F15A0;
  *(v1 + 176) = xmmword_2455F1030;
  *(v1 + 192) = xmmword_2455F1030;
  *(v1 + 208) = xmmword_2455F1030;
  *(v1 + 224) = 0;
  *(v1 + 232) = 256;
  *(v1 + 240) = xmmword_2455F1030;
  *(v1 + 256) = xmmword_2455F1030;
  *(v1 + 272) = 0;
  *(v1 + 280) = 35913984;
  *(v1 + 288) = 0;
  *(v1 + 360) = 0;
  *(v1 + 368) = 0;
  *(v1 + 376) = MEMORY[0x277D84F90];
  v10 = *MEMORY[0x277CD2898];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15108, &qword_2455F15D0);
  inited = swift_initStackObject();
  v73 = xmmword_2455EAC10;
  *(inited + 16) = xmmword_2455EAC10;
  *(inited + 32) = 0xD000000000000011;
  v12 = inited + 32;
  *(inited + 40) = 0x80000002455F30F0;
  *(inited + 48) = v9;
  sub_2455E6344(inited);
  swift_setDeallocating();
  sub_2455A7680(v12, &qword_27EE15110, &qword_2455F15D8);
  v13 = sub_2455E9AD0();

  MatchingService = IOServiceGetMatchingService(v10, v13);
  if (!MatchingService || (v15 = IOHIDDeviceCreate(0, MatchingService)) == 0)
  {
    sub_2455D18DC(*(v1 + 120), *(v1 + 128));

    sub_2455D1E54(*(v1 + 160), *(v1 + 168));
    sub_2455D2044(*(v1 + 176), *(v1 + 184));
    sub_2455D2044(*(v1 + 192), *(v1 + 200));
    sub_2455D2044(*(v1 + 208), *(v1 + 216));
    sub_2455D2044(*(v1 + 240), *(v1 + 248));
    sub_2455D2044(*(v1 + 256), *(v1 + 264));

    type metadata accessor for HIDDeviceClient();
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
    return;
  }

  v77 = v15;
  v16 = v15;
  type metadata accessor for IOHIDDevice(0);
  v18 = v17;
  v19 = v16;
  sub_2455D06E8(&v77, v18, v75);
  *(v1 + 296) = v75[0];
  *(v1 + 112) = v9;
  v20 = IONotificationPortCreate(v10);
  if (!v20)
  {
    __break(1u);
    goto LABEL_37;
  }

  v70 = v19;
  *(v1 + 384) = v20;
  v21 = *(v1 + 296);
  v22 = sub_2455E9B60();
  v23 = IOHIDDeviceGetProperty(v21, v22);

  if (!v23)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v75[0] = v23;
  swift_dynamicCast();
  v24 = v76;
  v25 = *(v1 + 296);
  v26 = sub_2455E9B60();
  v27 = IOHIDDeviceGetProperty(v25, v26);

  if (v27)
  {
    v77 = v27;
    v28 = swift_dynamicCast();
    v29 = v74;
    v30 = v28 ^ 1;
    if (!v28)
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
    v30 = 1;
  }

  HIDUsage.init(page:usage:)(&v77, v29 | (v30 << 16), v24);
  v31 = v77;
  *(v1 + 140) = BYTE4(v77);
  *(v1 + 136) = v31;
  v32 = *(v1 + 296);
  v33 = sub_2455E9B60();
  v34 = IOHIDDeviceGetProperty(v32, v33);

  if (v34)
  {
    v75[0] = v34;
    v35 = swift_dynamicCast();
    v36 = MEMORY[0x277D84D38];
    if (v35)
    {
      v37 = v77;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
    v36 = MEMORY[0x277D84D38];
  }

  *(v1 + 152) = v37;
  sub_2455ABB78();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EB0, &unk_2455F15E0);
  v38 = swift_allocObject();
  *(v38 + 16) = v73;
  v39 = *(v1 + 112);
  v40 = MEMORY[0x277D84D90];
  *(v38 + 56) = v36;
  *(v38 + 64) = v40;
  *(v38 + 32) = v39;
  sub_2455E9B70();
  sub_2455E9A80();
  v75[0] = MEMORY[0x277D84F90];
  sub_2455E6848(&qword_27EE14F10, 255, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F18, &unk_2455EB000);
  sub_2455ABBC4();
  sub_2455E9DC0();
  (*(v71 + 104))(v6, *MEMORY[0x277D85268], v72);
  *(v1 + 304) = sub_2455E9D10();
  v41 = *(v1 + 296);
  v42 = sub_2455E9B60();
  v43 = IOHIDDeviceGetProperty(v41, v42);

  if (v43)
  {
    v75[0] = v43;
    v44 = swift_dynamicCast();
    v45 = v70;
    if (v44)
    {
      v46 = v77;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v45 = v70;
  }

  *(v2 + 328) = v46;
  v47 = *(v2 + 296);
  v48 = sub_2455E9B60();
  v49 = IOHIDDeviceGetProperty(v47, v48);

  if (v49 && (v75[0] = v49, swift_dynamicCast()))
  {
    v50 = v77;
  }

  else
  {
    v50 = 0;
  }

  *(v2 + 336) = v50;
  v51 = *(v2 + 296);
  v52 = sub_2455E9B60();
  v53 = IOHIDDeviceGetProperty(v51, v52);

  if (v53 && (v75[0] = v53, swift_dynamicCast()))
  {
    v54 = v77;
  }

  else
  {
    v54 = 0;
  }

  *(v2 + 344) = v54;
  if (*(v2 + 328) < 1)
  {
    v55 = 0;
  }

  else
  {
    v55 = swift_slowAlloc();
  }

  *(v2 + 352) = v55;
  v56 = *(v2 + 296);
  v57 = sub_2455E9B60();
  v58 = IOHIDDeviceGetProperty(v56, v57);

  if (v58 && (v75[0] = v58, (swift_dynamicCast() & 1) != 0))
  {
    v59 = v77;
  }

  else
  {
    v59 = 0;
  }

  *(v2 + 156) = v59;
  v75[0] = 0;
  v75[1] = 0xE000000000000000;
  sub_2455E9DF0();
  MEMORY[0x245D6B9A0](0xD000000000000039, 0x80000002455F3190);
  v60 = *(v2 + 136);
  BYTE4(v77) = *(v2 + 140);
  LODWORD(v77) = v60;
  sub_2455A5E40();
  v61 = sub_2455E9FD0();
  MEMORY[0x245D6B9A0](v61);

  MEMORY[0x245D6B9A0](0x726F646E6576202CLL, 0xEC000000203A4449);
  LODWORD(v77) = *(v2 + 152);
  v62 = sub_2455E9FD0();
  MEMORY[0x245D6B9A0](v62);

  MEMORY[0x245D6B9A0](0x6375646F7270202CLL, 0xED0000203A444974);
  LODWORD(v77) = *(v2 + 156);
  v63 = sub_2455E9FD0();
  MEMORY[0x245D6B9A0](v63);

  MEMORY[0x245D6B9A0](41, 0xE100000000000000);
  v64 = swift_allocObject();
  *(v64 + 16) = v73;
  v65 = *(v2 + 112);
  *(v64 + 56) = MEMORY[0x277D84D38];
  *(v64 + 64) = MEMORY[0x277D84D90];
  *(v64 + 32) = v65;
  v66 = sub_2455E9B70();
  v68 = v67;

  *(v2 + 312) = v66;
  *(v2 + 320) = v68;
}

uint64_t HIDDeviceClient.deinit()
{
  swift_beginAccess();
  *(v0 + 369) = 1;
  swift_beginAccess();
  if (*(v0 + 368) == 1 && (IONotificationPortDestroy(*(v0 + 384)), IOHIDDeviceCancel(*(v0 + 296)), v1 = *(v0 + 304), v6[4] = nullsub_1, v6[5] = 0, v6[0] = MEMORY[0x277D85DD0], v6[1] = 1107296256, v6[2] = sub_2455A8F04, v6[3] = &block_descriptor_0, v2 = _Block_copy(v6), v3 = v1, , dispatch_sync(v3, v2), v3, _Block_release(v2), result = swift_isEscapingClosureAtFileLocation(), (result & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 352);
    if (v5)
    {
      MEMORY[0x245D6C8C0](v5, -1, -1);
    }

    sub_2455D18DC(*(v0 + 120), *(v0 + 128));

    sub_2455D1E54(*(v0 + 160), *(v0 + 168));
    sub_2455D2044(*(v0 + 176), *(v0 + 184));
    sub_2455D2044(*(v0 + 192), *(v0 + 200));
    sub_2455D2044(*(v0 + 208), *(v0 + 216));
    sub_2455D2044(*(v0 + 240), *(v0 + 248));
    sub_2455D2044(*(v0 + 256), *(v0 + 264));

    swift_defaultActor_destroy();
    return v0;
  }

  return result;
}

uint64_t HIDDeviceClient.__deallocating_deinit()
{
  HIDDeviceClient.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2455D4160()
{
  v17 = *MEMORY[0x277D85DE8];
  result = (*(*v0 + 672))();
  if ((result & 1) == 0)
  {
    (*(*v0 + 656))(v0);
    v2 = v0[48];
    v3 = v0[38];
    IONotificationPortSetDispatchQueue(v2, v3);
    notification = 0;
    v4 = *MEMORY[0x277CD2898];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15108, &qword_2455F15D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2455EAC10;
    *(inited + 32) = 0xD000000000000011;
    v6 = inited + 32;
    *(inited + 40) = 0x80000002455F30F0;
    *(inited + 48) = v0[14];
    sub_2455E6344(inited);
    swift_setDeallocating();
    sub_2455A7680(v6, &qword_27EE15110, &qword_2455F15D8);
    v7 = sub_2455E9AD0();

    MatchingService = IOServiceGetMatchingService(v4, v7);
    v9 = *(*v0 + 648);
    result = v9();
    if (result)
    {
      v10 = IOServiceAddInterestNotification(v2, MatchingService, "IOGeneralInterest", sub_2455D46CC, result, &notification);
      v11 = v0[37];
      result = (v9)(v10);
      if (result)
      {
        IOHIDDeviceRegisterRemovalCallback(v11, sub_2455D4928, result);
        v12 = v0[44];
        if (v12)
        {
          v13 = v0[41];
          result = v9();
          if (!result)
          {
LABEL_13:
            __break(1u);
            return result;
          }

          IOHIDDeviceRegisterInputReportWithTimeStampCallback(v11, v12, v13, sub_2455D4BF8, result);
        }

        result = v9();
        if (result)
        {
          IOHIDDeviceRegisterInputValueCallback(v11, sub_2455D50FC, result);
          aBlock[4] = nullsub_1;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_2455AA3FC;
          aBlock[3] = &block_descriptor_6;
          v14 = _Block_copy(aBlock);
          IOHIDDeviceSetCancelHandler(v11, v14);
          _Block_release(v14);
          IOHIDDeviceSetDispatchQueue(v11, v3);
          IOHIDDeviceActivate(v11);
          return (*(*v0 + 680))(1);
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_2455D44E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  *(v7 + 72) = a5;
  *(v7 + 76) = a6;
  *(v7 + 16) = a4;
  *(v7 + 24) = a7;
  *(v7 + 32) = type metadata accessor for HIDDeviceClient.Notification(0);
  *(v7 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2455D457C, 0, 0);
}

uint64_t sub_2455D457C()
{
  v1 = *(v0[2] + 16);
  v0[6] = v1;

  swift_storeEnumTagMultiPayload();
  v2 = *v1 + 848;
  v0[7] = *v2;
  v0[8] = v2 & 0xFFFFFFFFFFFFLL | 0xF967000000000000;

  return MEMORY[0x2822009F8](sub_2455D4640, v1, 0);
}

uint64_t sub_2455D4640()
{
  v1 = *(v0 + 40);
  (*(v0 + 56))(v1);
  sub_2455E6788(v1, type metadata accessor for HIDDeviceClient.Notification);

  return MEMORY[0x2822009F8](sub_2455E98CC, 0, 0);
}

uint64_t sub_2455D46D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for HIDDeviceClient.Notification(0);
  v5[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2455D476C, 0, 0);
}

uint64_t sub_2455D476C()
{
  v1 = *(v0[2] + 16);
  v0[6] = v1;

  swift_storeEnumTagMultiPayload();
  v2 = *v1 + 848;
  v0[7] = *v2;
  v0[8] = v2 & 0xFFFFFFFFFFFFLL | 0xF967000000000000;

  return MEMORY[0x2822009F8](sub_2455D4820, v1, 0);
}

uint64_t sub_2455D4820()
{
  v1 = *(v0 + 40);
  (*(v0 + 56))(v1);
  sub_2455E6788(v1, type metadata accessor for HIDDeviceClient.Notification);

  return MEMORY[0x2822009F8](sub_2455D48AC, 0, 0);
}

uint64_t sub_2455D48AC(uint64_t a1)
{
  sub_2455E9CF0();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2455D492C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v11;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 96) = a5;
  *(v8 + 16) = a4;
  *(v8 + 56) = type metadata accessor for HIDDeviceClient.Notification(0);
  *(v8 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2455D49D4, 0, 0);
}

uint64_t sub_2455D49D4()
{
  v1 = *(v0 + 96);
  v2 = *(*(v0 + 16) + 16);
  *(v0 + 72) = v2;

  if (v1 > 0xFF)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 64);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 24);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15158, &qword_2455F1638) + 64);
    HIDReportID.init(rawValue:)(v1, v6);
    *(v6 + 8) = v9;
    *(v6 + 16) = v8;
    sub_2455A5EE0(v9, v8);
    sub_2455D05BC(v7, (v6 + v10));
    swift_storeEnumTagMultiPayload();
    v11 = *v2 + 848;
    *(v0 + 80) = *v11;
    *(v0 + 88) = v11 & 0xFFFFFFFFFFFFLL | 0xF967000000000000;
    v3 = sub_2455D4AF0;
    v4 = v2;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2455D4AF0()
{
  v1 = *(v0 + 64);
  (*(v0 + 80))(v1);
  sub_2455E6788(v1, type metadata accessor for HIDDeviceClient.Notification);

  return MEMORY[0x2822009F8](sub_2455D4B7C, 0, 0);
}

uint64_t sub_2455D4B7C(uint64_t a1)
{
  sub_2455E9CF0();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2455D4C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[68] = a6;
  v6[67] = a5;
  v6[66] = a4;
  sub_2455E9E90();
  v6[69] = swift_task_alloc();
  v6[70] = type metadata accessor for HIDDeviceClient.Notification(0);
  v6[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2455D4CD4, 0, 0);
}

uint64_t sub_2455D4CD4()
{
  v33 = v0;
  v1 = *(v0 + 536);
  v2 = *(*(v0 + 528) + 16);
  *(v0 + 576) = v2;

  v3 = IOHIDValueGetElement(v1);

  sub_2455A0954(v3, v2, (v0 + 144));
  v4 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v4;
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 121) = *(v0 + 249);
  v5 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v5;
  v6 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v6;
  if (sub_2455A5BFC(v0 + 16) == 1)
  {
    sub_2455E9CF0();

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v0 + 568);
  v9 = *(v0 + 552);
  v10 = *(v0 + 536);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15250, &qword_2455F1D48);
  v11 = *(type metadata accessor for HIDElement.Value(0) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2455EAC10;
  v14 = *(v0 + 96);
  v31[4] = *(v0 + 80);
  v31[5] = v14;
  *v32 = *(v0 + 112);
  *&v32[9] = *(v0 + 121);
  v15 = *(v0 + 32);
  v31[0] = *(v0 + 16);
  v31[1] = v15;
  v16 = *(v0 + 64);
  v31[2] = *(v0 + 48);
  v31[3] = v16;
  v17 = *(v0 + 144);
  v18 = *(v0 + 160);
  v19 = *(v0 + 192);
  *(v0 + 304) = *(v0 + 176);
  *(v0 + 320) = v19;
  *(v0 + 272) = v17;
  *(v0 + 288) = v18;
  v20 = *(v0 + 208);
  v21 = *(v0 + 224);
  v22 = *(v0 + 240);
  *(v0 + 377) = *(v0 + 249);
  *(v0 + 352) = v21;
  *(v0 + 368) = v22;
  *(v0 + 336) = v20;
  sub_2455A5D68(v0 + 272, v0 + 400);
  BytePtr = IOHIDValueGetBytePtr(v10);
  Length = IOHIDValueGetLength(v10);
  v25 = sub_2455E88F4(BytePtr, Length);
  v27 = v26;
  TimeStamp = IOHIDValueGetTimeStamp(v10);
  sub_2455D05BC(TimeStamp, v9);
  HIDElement.Value.init(element:fromBytes:timestamp:)(v31, v25, v27, v9, (v13 + v12));
  *v8 = v13;
  swift_storeEnumTagMultiPayload();
  v29 = *v2 + 848;
  *(v0 + 584) = *v29;
  *(v0 + 592) = v29 & 0xFFFFFFFFFFFFLL | 0xF967000000000000;

  return MEMORY[0x2822009F8](sub_2455D4FC4, v2, 0);
}

uint64_t sub_2455D4FC4()
{
  v1 = *(v0 + 568);
  (*(v0 + 584))(v1);
  sub_2455E6788(v1, type metadata accessor for HIDDeviceClient.Notification);

  return MEMORY[0x2822009F8](sub_2455D5058, 0, 0);
}

uint64_t sub_2455D5058()
{
  sub_2455A7680(v0 + 144, &qword_27EE14DF0, &qword_2455EAC30);
  sub_2455E9CF0();

  v1 = *(v0 + 8);

  return v1();
}

void sub_2455D50FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  sub_2455E8B50(a1, v5);
}

void sub_2455D514C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15118, &qword_2455F15F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2455EAC10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15120, &qword_2455F15F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2455EAC10;
  *(inited + 32) = 1701869908;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = sub_2455E9CC0();
  v3 = sub_2455E64A4(inited);
  swift_setDeallocating();
  v4 = sub_2455A7680(inited + 32, &qword_27EE15128, &unk_2455F1600);
  *(v1 + 32) = v3;
  v52 = v0;
  v5 = (*(*v0 + 768))(v4);
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2455E9F20())
  {
    v8 = 0;
    v55 = v6;
    v56 = v6 & 0xC000000000000001;
    v53 = v6 & 0xFFFFFFFFFFFFFF8;
    v54 = i;
    while (v56)
    {
      v9 = MEMORY[0x245D6BBF0](v8, v6);
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_31;
      }

LABEL_11:
      v11 = *(v9 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_elementsToMonitor);
      v12 = *(v11 + 16);
      if (v12)
      {
        v57 = v8;

        v58 = v12 - 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F78, &qword_2455EB418);
        for (j = 32; ; j += 128)
        {
          v14 = v11;
          v15 = *(v11 + j + 64);
          v16 = *(v11 + j + 80);
          v17 = *(v11 + j + 105);
          v69[0] = *(v11 + j + 96);
          v18 = *(v11 + j);
          v19 = *(v11 + j + 16);
          v20 = *(v11 + j + 48);
          v68[2] = *(v11 + j + 32);
          v68[3] = v20;
          v68[0] = v18;
          v68[1] = v19;
          *(v69 + 9) = v17;
          v68[4] = v15;
          v68[5] = v16;
          v21 = *&v69[0];
          v62 = 1701869908;
          v63 = 0xE400000000000000;
          sub_2455A5D68(v68, v61);
          v64 = sub_2455EA0F0();
          v65 = 0x444974726F706552;
          v66 = 0xE800000000000000;
          IOHIDElementGetReportID(v21);
          v67 = sub_2455EA0F0();
          v6 = sub_2455E9FC0();

          v23 = v62;
          v22 = v63;
          v24 = v64;

          swift_unknownObjectRetain();
          v25 = sub_2455AB718(v23, v22);
          if (v26)
          {
            goto LABEL_27;
          }

          *(v6 + 64 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
          v27 = (*(v6 + 48) + 16 * v25);
          *v27 = v23;
          v27[1] = v22;
          *(*(v6 + 56) + 8 * v25) = v24;
          v28 = *(v6 + 16);
          v10 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (v10)
          {
            goto LABEL_28;
          }

          *(v6 + 16) = v29;
          v30 = v65;
          v31 = v66;
          v32 = v67;

          swift_unknownObjectRetain();
          v33 = sub_2455AB718(v30, v31);
          if (v34)
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          *(v6 + 64 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
          v35 = (*(v6 + 48) + 16 * v33);
          *v35 = v30;
          v35[1] = v31;
          *(*(v6 + 56) + 8 * v33) = v32;
          v36 = *(v6 + 16);
          v10 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v10)
          {
            goto LABEL_28;
          }

          *(v6 + 16) = v37;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15128, &unk_2455F1600);
          swift_arrayDestroy();
          v39 = *(v1 + 16);
          v38 = *(v1 + 24);
          if (v39 >= v38 >> 1)
          {
            v1 = sub_2455E3898((v38 > 1), v39 + 1, 1, v1);
          }

          *(v1 + 16) = v39 + 1;
          *(v1 + 8 * v39 + 32) = v6;
          strcpy(v59, "ElementCookie");
          HIWORD(v59[1]) = -4864;
          IOHIDElementGetCookie(v21);
          nullsub_1();
          v60 = sub_2455EA0F0();
          v6 = sub_2455E9FC0();

          v40 = v59[0];
          v41 = v59[1];
          v42 = v60;

          swift_unknownObjectRetain();
          v43 = sub_2455AB718(v40, v41);
          if (v44)
          {
            goto LABEL_29;
          }

          *(v6 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v45 = (*(v6 + 48) + 16 * v43);
          *v45 = v40;
          v45[1] = v41;
          *(*(v6 + 56) + 8 * v43) = v42;
          v46 = *(v6 + 16);
          v10 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v10)
          {
            goto LABEL_30;
          }

          *(v6 + 16) = v47;

          sub_2455A7680(v59, &qword_27EE15128, &unk_2455F1600);
          v49 = *(v1 + 16);
          v48 = *(v1 + 24);
          if (v49 >= v48 >> 1)
          {
            v1 = sub_2455E3898((v48 > 1), v49 + 1, 1, v1);
          }

          v11 = v14;
          sub_2455A5DA0(v68);
          *(v1 + 16) = v49 + 1;
          *(v1 + 8 * v49 + 32) = v6;
          if (!v58)
          {
            break;
          }

          --v58;
        }

        i = v54;
        v6 = v55;
        v8 = v57;
        if (v57 == v54)
        {
          goto LABEL_26;
        }
      }

      else
      {

        if (v8 == i)
        {
          goto LABEL_26;
        }
      }
    }

    if (v8 >= *(v53 + 16))
    {
      goto LABEL_32;
    }

    v10 = __OFADD__(v8++, 1);
    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_26:

  v50 = *(v52 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15130, &qword_2455F1610);
  v51 = sub_2455E9BD0();

  IOHIDDeviceSetInputValueMatchingMultiple(v50, v51);
}

uint64_t sub_2455D5700(uint64_t a1, char a2)
{
  v3 = a1;
  if (a2)
  {
    a1 = (*(*v2 + 101))();
  }

  result = (*(*v2 + 90))(a1);
  if ((result & 1) == 0)
  {
    (*(*v2 + 100))();
    v5 = IOHIDDeviceOpen(v2[37], v3 & 1);
    sub_2455D016C(v5, &v8);
    if (v10 == 1)
    {
      (*(*v2 + 91))(1);
      return (*(*v2 + 94))(v3 & 1);
    }

    else
    {
      v6 = v8 | (v9 << 32);
      v10 = 0;
      sub_2455E65A8();
      if (sub_2455E9B50())
      {
        (*(*v2 + 91))(1);
      }

      sub_2455ACA40();
      swift_allocError();
      *v7 = v6;
      *(v7 + 4) = BYTE4(v6) & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2455D5908()
{
  result = (*(*v0 + 90))();
  if (result)
  {
    result = (*(*v0 + 93))();
    if ((result & 1) == 0)
    {
      v2 = (*(*v0 + 96))();
      if (v2 >> 62)
      {
        v4 = sub_2455E9F20();

        if (v4)
        {
          return result;
        }
      }

      else
      {
        v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v3)
        {
          return result;
        }
      }

      IOHIDDeviceClose(v0[37], 0);
      (*(*v0 + 91))(0);
      v5 = *(*v0 + 94);

      return v5(0);
    }
  }

  return result;
}

uint64_t sub_2455D5A8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15140, &qword_2455F1618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2455F15C0;
  v2 = v0[41];
  *(inited + 32) = v2;
  v3 = v0[42];
  *(inited + 40) = v3;
  v4 = v0[43];
  *(inited + 48) = v4;
  if (v2 <= v3)
  {
    v2 = v3;
  }

  if (v2 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  swift_setDeallocating();
  return v5;
}

void sub_2455D5B08()
{
  if ((*(*v0 + 720))())
  {
    sub_2455ACA40();
    swift_allocError();
    *v2 = 6;
    *(v2 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    if (((*(*v0 + 672))() & 1) == 0)
    {
      (*(*v0 + 800))();
    }

    (*(*v0 + 816))(1, 0);
    if (v1)
    {
      v3 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14FD0, &qword_2455F1620);
      if (swift_dynamicCast() && v6 == 1 && v5 == 3)
      {

        (*(*v0 + 824))();
        sub_2455ACA40();
        swift_allocError();
        *v4 = 3;
        *(v4 + 4) = 1;
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_2455D5D08@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15148, &qword_2455F1628);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2455D5DF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_batchedValues;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2455D5EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_batchedValues) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_continuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15148, &qword_2455F1628);
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  *(v6 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_reportIDsToMonitor) = a2;
  *(v6 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_elementsToMonitor) = a3;
  return v6;
}

uint64_t sub_2455D5F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_batchedValues) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_continuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15148, &qword_2455F1628);
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  *(v3 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_reportIDsToMonitor) = a2;
  *(v3 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_elementsToMonitor) = a3;
  return v3;
}

uint64_t sub_2455D6030()
{
  v1 = OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15148, &qword_2455F1628);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_2455D60CC()
{
  v1 = OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15148, &qword_2455F1628);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2455D61A4(uint64_t a1)
{
  v3 = type metadata accessor for HIDElement.Value(0);
  v56 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15150, &qword_2455F1630);
  v9 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v56 - v10;
  v71 = type metadata accessor for HIDDeviceClient.Notification(0);
  MEMORY[0x28223BE20](v71);
  v73 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v69 = (&v56 - v14);
  v15 = *(*v1 + 768);
  v57 = v1;
  v16 = v15(v13);
  if (v16 >> 62)
  {
    goto LABEL_48;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v17)
  {
    v18 = 0;
    v64 = v16 & 0xC000000000000001;
    v60 = v16 & 0xFFFFFFFFFFFFFF8;
    v61 = v16;
    v59 = v16 + 32;
    v72 = (v9 + 8);
    v62 = a1;
    v63 = v17;
    v9 = v5;
    v65 = v5;
    while (v64)
    {
      v16 = MEMORY[0x245D6BBF0](v18, v61);
      v20 = v16;
      v21 = __OFADD__(v18++, 1);
      if (v21)
      {
        goto LABEL_46;
      }

LABEL_13:
      sub_2455E661C(a1, v69, type metadata accessor for HIDDeviceClient.Notification);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        if (((*(*v57 + 744))() & 1) == 0)
        {
          v5 = v73;
          sub_2455E661C(a1, v73, type metadata accessor for HIDDeviceClient.Notification);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15148, &qword_2455F1628);
          v47 = v74;
          sub_2455E9C80();

          v16 = (*v72)(v47, v75);
LABEL_44:
          v19 = v63;
          goto LABEL_6;
        }

        v19 = v63;
      }

      else
      {
        v70 = v18;
        if (EnumCaseMultiPayload == 1)
        {
          v26 = *v69;
          v27 = *(*v69 + 16);
          if (v27)
          {
            v28 = OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_elementsToMonitor;
            v68 = OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_continuation;
            v29 = (*(v56 + 80) + 32) & ~*(v56 + 80);
            v58 = v26;
            v66 = v29;
            v67 = OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_elementsToMonitor;
            v30 = v26 + v29;
            v76 = *(v56 + 72);
            do
            {
              v31 = sub_2455E661C(v30, v8, type metadata accessor for HIDElement.Value);
              if (v8[104] == 1)
              {
                v32 = *(*v20 + 112);
                v5 = *v20 + 112;
                v33 = *(v32(v31) + 16);

                if (v33)
                {
                  v35 = v32(v34);
                  v5 = v73;
                  *v73 = v35;
                  swift_storeEnumTagMultiPayload();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15148, &qword_2455F1628);
                  v36 = v74;
                  sub_2455E9C80();
                  (*v72)(v36, v75);
                  v37 = (*(*v20 + 128))(v78);
                  *v38 = MEMORY[0x277D84F90];

                  v37(v78, 0);
                }
              }

              else
              {
                v5 = &v56;
                v39 = *(v20 + v28);
                MEMORY[0x28223BE20](v31);
                *(&v56 - 2) = v8;

                v40 = sub_2455D6C04(sub_2455E6684, (&v56 - 4), v39);

                if (v40)
                {
                  sub_2455E661C(v8, v9, type metadata accessor for HIDElement.Value);
                  v41 = (*(*v20 + 128))(v78);
                  v43 = v42;
                  v44 = *v42;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *v43 = v44;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v44 = sub_2455E36C0(0, v44[2] + 1, 1, v44);
                    *v43 = v44;
                  }

                  v5 = v44[2];
                  v46 = v44[3];
                  if (v5 >= v46 >> 1)
                  {
                    v44 = sub_2455E36C0((v46 > 1), v5 + 1, 1, v44);
                    *v43 = v44;
                  }

                  v44[2] = v5 + 1;
                  v9 = v65;
                  sub_2455E6F48(v65, v44 + v66 + v5 * v76, type metadata accessor for HIDElement.Value);
                  v41(v78, 0);
                  v28 = v67;
                }
              }

              sub_2455E6788(v8, type metadata accessor for HIDElement.Value);
              v30 += v76;
              --v27;
            }

            while (v27);

            a1 = v62;
          }

          else
          {
          }
        }

        else
        {
          if (!EnumCaseMultiPayload)
          {
            v23 = *v69;
            v24 = *(v69 + 1);
            sub_2455A5F34(v69[1], v69[2]);
            if (v24)
            {
              v5 = v73;
              sub_2455E661C(a1, v73, type metadata accessor for HIDDeviceClient.Notification);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15148, &qword_2455F1628);
              v25 = v74;
              sub_2455E9C80();

              (*v72)(v25, v75);
              v18 = v70;
            }

            else
            {
              v48 = *(v20 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_reportIDsToMonitor);
              v5 = *(v48 + 16);
              v18 = v70;
              if (v5)
              {
                v76 = OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_continuation;
                sub_2455E67E8();

                v68 = v48;
                v49 = v48 + 33;
                do
                {
                  v50 = *(v49 - 1);
                  v77 = v23;
                  v78[0] = v50;
                  if (sub_2455E9B30() & 1) != 0 && (sub_2455E9B40())
                  {
                    sub_2455E661C(v62, v73, type metadata accessor for HIDDeviceClient.Notification);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15148, &qword_2455F1628);
                    v51 = v74;
                    v18 = v70;
                    sub_2455E9C80();
                    (*v72)(v51, v75);
                  }

                  v49 += 2;
                  --v5;
                }

                while (v5);

                a1 = v62;
                v9 = v65;
              }

              else
              {
              }
            }

            v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15158, &qword_2455F1638) + 64);
            v53 = sub_2455E9E90();
            v16 = (*(*(v53 - 8) + 8))(v69 + v52, v53);
            goto LABEL_44;
          }

          sub_2455E661C(a1, v73, type metadata accessor for HIDDeviceClient.Notification);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15148, &qword_2455F1628);
          v5 = v74;
          sub_2455E9C80();

          (*v72)(v5, v75);
          v16 = sub_2455E6788(v69, type metadata accessor for HIDDeviceClient.Notification);
        }

        v19 = v63;
        v18 = v70;
      }

LABEL_6:
      if (v18 == v19)
      {
      }
    }

    if (v18 >= *(v60 + 16))
    {
      goto LABEL_47;
    }

    v20 = *(v59 + 8 * v18);

    v21 = __OFADD__(v18++, 1);
    if (!v21)
    {
      goto LABEL_13;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v54 = v16;
    v17 = sub_2455E9F20();
    v16 = v54;
  }
}

uint64_t sub_2455D6C04(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[5];
      v10 = v7[3];
      v36 = v7[4];
      v37 = v9;
      v11 = v7[5];
      v38[0] = v7[6];
      *(v38 + 9) = *(v7 + 105);
      v12 = v7[1];
      v33[0] = *v7;
      v33[1] = v12;
      v13 = v7[3];
      v15 = *v7;
      v14 = v7[1];
      v34 = v7[2];
      v35 = v13;
      v30 = v36;
      v31 = v11;
      v32[0] = v7[6];
      *(v32 + 9) = *(v7 + 105);
      v26 = v15;
      v27 = v14;
      v28 = v34;
      v29 = v10;
      sub_2455A5D68(v33, &v19);
      v16 = a1(&v26);
      if (v3)
      {
        break;
      }

      v4 = v16;
      v23 = v30;
      v24 = v31;
      v25[0] = v32[0];
      *(v25 + 9) = *(v32 + 9);
      v19 = v26;
      v20 = v27;
      v21 = v28;
      v22 = v29;
      sub_2455A5DA0(&v19);
      v17 = v8-- == 0;
      v7 += 8;
      if ((v4 | v17))
      {
        return v4 & 1;
      }
    }

    v23 = v30;
    v24 = v31;
    v25[0] = v32[0];
    *(v25 + 9) = *(v32 + 9);
    v19 = v26;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    sub_2455A5DA0(&v19);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_2455D6D64(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*v1 + 768))();
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_15:
    v15 = v4;
    v6 = sub_2455E9F20();
    v4 = v15;
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  while (v6 != v7)
  {
    if (v8)
    {
      v10 = v4;
      v11 = MEMORY[0x245D6BBF0](v7, v4);
      swift_unknownObjectRelease();
      v4 = v10;
      if (v11 == a1)
      {
LABEL_12:

        v12 = (*(*v2 + 784))(v16);
        sub_2455D6F18(v7);

        v13 = v12(v16, 0);
        return (*(*v2 + 824))(v13);
      }
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      if (*(v4 + 8 * v7 + 32) == a1)
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2455D6F18(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2455E41E8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2455D6FA8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15168, &qword_2455F1640);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  v11 = a1;
  v12 = a2;
  v13 = v2;
  type metadata accessor for HIDDeviceClient.Notification(0);
  (*(v6 + 104))(v8, *MEMORY[0x277D858A0], v5);
  return sub_2455E9CB0();
}

uint64_t sub_2455D70D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = type metadata accessor for HIDDeviceClient.Notification(0);
  MEMORY[0x28223BE20](v23);
  v21[1] = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15150, &qword_2455F1630);
  v21[0] = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15148, &qword_2455F1628);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v21 - v12;
  (*(v10 + 16))(v21 - v12, a1, v9, v11);
  type metadata accessor for HIDDeviceClient.StreamWrapper(0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_batchedValues) = MEMORY[0x277D84F90];
  (*(v10 + 32))(v14 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_continuation, v13, v9);
  *(v14 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_reportIDsToMonitor) = a2;
  *(v14 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_elementsToMonitor) = a3;
  v15 = *(*a4 + 784);

  v16 = v15(v24);
  v18 = v17;
  MEMORY[0x245D6B9B0]();
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2455E9BE0();
  }

  sub_2455E9BF0();
  v16(v24, 0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = v14;

  sub_2455E9C70();
  (*(*a4 + 816))(0, 1);
}

uint64_t sub_2455D7548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F70, &qword_2455F1D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_2455E9C60();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_2455A989C(0, 0, v6, &unk_2455F1D80, v8);
}

uint64_t sub_2455D7660(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *a4 + 856;
  v5[4] = *v6;
  v5[5] = v6 & 0xFFFFFFFFFFFFLL | 0xB1FC000000000000;
  return MEMORY[0x2822009F8](sub_2455D76A4, a4, 0);
}