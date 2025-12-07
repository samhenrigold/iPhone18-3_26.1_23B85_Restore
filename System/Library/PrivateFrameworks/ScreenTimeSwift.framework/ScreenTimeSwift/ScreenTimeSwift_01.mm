unint64_t sub_264D4B924()
{
  result = qword_27FFAC9B8;
  if (!qword_27FFAC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC9B8);
  }

  return result;
}

unint64_t sub_264D4B978()
{
  result = qword_27FFAC9C0;
  if (!qword_27FFAC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC9C0);
  }

  return result;
}

unint64_t sub_264D4B9CC()
{
  result = qword_27FFAC9D0;
  if (!qword_27FFAC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC9D0);
  }

  return result;
}

unint64_t sub_264D4BA20()
{
  result = qword_27FFAC9E0;
  if (!qword_27FFAC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC9E0);
  }

  return result;
}

uint64_t sub_264D4BA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264D4BADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264D4BB3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_264D4BBA4()
{
  result = qword_27FFACA08;
  if (!qword_27FFACA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACA08);
  }

  return result;
}

unint64_t sub_264D4BBF8()
{
  result = qword_27FFACA30;
  if (!qword_27FFACA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACA30);
  }

  return result;
}

unint64_t sub_264D4BC50()
{
  result = qword_27FFACA40;
  if (!qword_27FFACA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACA40);
  }

  return result;
}

unint64_t sub_264D4BCB4()
{
  result = qword_27FFACA48;
  if (!qword_27FFACA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACA48);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for STExpressIntroduction.User(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for STExpressIntroduction.User(uint64_t result, int a2, int a3)
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

uint64_t sub_264D4BD7C(uint64_t a1)
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

uint64_t sub_264D4BD98(uint64_t result, int a2)
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

void sub_264D4BDF0(uint64_t a1)
{
  sub_264D4BF18(319, &qword_27FFACA60, &type metadata for STExpressIntroduction.ContentRestrictionsSettings);
  if (v1 <= 0x3F)
  {
    sub_264D4BF18(319, &qword_27FFACA68, &type metadata for STExpressIntroduction.CommunicationSafetySettings);
    if (v2 <= 0x3F)
    {
      sub_264D4BF18(319, &qword_27FFACA70, &type metadata for STExpressIntroduction.CommunicationLimitsSettings);
      if (v3 <= 0x3F)
      {
        sub_264D4C218(319, &qword_27FFACA78, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings);
        if (v4 <= 0x3F)
        {
          sub_264D4BF18(319, &qword_27FFACA80, &type metadata for STExpressIntroduction.ScreenDistanceSettings);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_264D4BF18(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_264D6EC08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264D4BF64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_264D4BFAC(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for STExpressIntroduction.CommunicationLimitsSettings(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for STExpressIntroduction.CommunicationLimitsSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
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
      *result = a2 + 1;
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

void sub_264D4C180(uint64_t a1)
{
  sub_264D4C218(319, &qword_27FFACA98, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_264D4C218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264D6EC08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264D4C294(uint64_t a1)
{
  result = sub_264D6E778();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264D4C300(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *sub_264D4C3A4(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for STExpressIntroduction.SettingsDefaults.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for STExpressIntroduction.SettingsDefaults.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_264D4C648()
{
  result = qword_27FFACAB0;
  if (!qword_27FFACAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACAB0);
  }

  return result;
}

unint64_t sub_264D4C6A0()
{
  result = qword_27FFACAB8;
  if (!qword_27FFACAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACAB8);
  }

  return result;
}

unint64_t sub_264D4C6F8()
{
  result = qword_27FFACAC0;
  if (!qword_27FFACAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACAC0);
  }

  return result;
}

unint64_t sub_264D4C750()
{
  result = qword_27FFACAC8;
  if (!qword_27FFACAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACAC8);
  }

  return result;
}

unint64_t sub_264D4C7A8()
{
  result = qword_27FFACAD0;
  if (!qword_27FFACAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACAD0);
  }

  return result;
}

unint64_t sub_264D4C800()
{
  result = qword_27FFACAD8;
  if (!qword_27FFACAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACAD8);
  }

  return result;
}

unint64_t sub_264D4C858()
{
  result = qword_27FFACAE0;
  if (!qword_27FFACAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACAE0);
  }

  return result;
}

unint64_t sub_264D4C8B0()
{
  result = qword_27FFACAE8;
  if (!qword_27FFACAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACAE8);
  }

  return result;
}

unint64_t sub_264D4C908()
{
  result = qword_27FFACAF0;
  if (!qword_27FFACAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACAF0);
  }

  return result;
}

unint64_t sub_264D4C960()
{
  result = qword_27FFACAF8;
  if (!qword_27FFACAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACAF8);
  }

  return result;
}

unint64_t sub_264D4C9B8()
{
  result = qword_27FFACB00;
  if (!qword_27FFACB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB00);
  }

  return result;
}

unint64_t sub_264D4CA10()
{
  result = qword_27FFACB08;
  if (!qword_27FFACB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB08);
  }

  return result;
}

unint64_t sub_264D4CA68()
{
  result = qword_27FFACB10;
  if (!qword_27FFACB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB10);
  }

  return result;
}

unint64_t sub_264D4CAC0()
{
  result = qword_27FFACB18;
  if (!qword_27FFACB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB18);
  }

  return result;
}

unint64_t sub_264D4CB18()
{
  result = qword_27FFACB20;
  if (!qword_27FFACB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB20);
  }

  return result;
}

unint64_t sub_264D4CB70()
{
  result = qword_27FFACB28;
  if (!qword_27FFACB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB28);
  }

  return result;
}

unint64_t sub_264D4CBC8()
{
  result = qword_27FFACB30;
  if (!qword_27FFACB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB30);
  }

  return result;
}

unint64_t sub_264D4CC20()
{
  result = qword_27FFACB38;
  if (!qword_27FFACB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB38);
  }

  return result;
}

unint64_t sub_264D4CC78()
{
  result = qword_27FFACB40;
  if (!qword_27FFACB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB40);
  }

  return result;
}

unint64_t sub_264D4CCD0()
{
  result = qword_27FFACB48;
  if (!qword_27FFACB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB48);
  }

  return result;
}

unint64_t sub_264D4CD28()
{
  result = qword_27FFACB50;
  if (!qword_27FFACB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB50);
  }

  return result;
}

unint64_t sub_264D4CD80()
{
  result = qword_27FFACB58;
  if (!qword_27FFACB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB58);
  }

  return result;
}

unint64_t sub_264D4CDD8()
{
  result = qword_27FFACB60;
  if (!qword_27FFACB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB60);
  }

  return result;
}

unint64_t sub_264D4CE30()
{
  result = qword_27FFACB68;
  if (!qword_27FFACB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB68);
  }

  return result;
}

unint64_t sub_264D4CE88()
{
  result = qword_27FFACB70;
  if (!qword_27FFACB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB70);
  }

  return result;
}

unint64_t sub_264D4CEE0()
{
  result = qword_27FFACB78;
  if (!qword_27FFACB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB78);
  }

  return result;
}

unint64_t sub_264D4CF38()
{
  result = qword_27FFACB80;
  if (!qword_27FFACB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB80);
  }

  return result;
}

unint64_t sub_264D4CF90()
{
  result = qword_27FFACB88;
  if (!qword_27FFACB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB88);
  }

  return result;
}

unint64_t sub_264D4CFE8()
{
  result = qword_27FFACB90;
  if (!qword_27FFACB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB90);
  }

  return result;
}

uint64_t sub_264D4D03C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000264D72970 == a2 || (sub_264D6EF28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000264D72990 == a2 || (sub_264D6EF28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000264D729B0 == a2 || (sub_264D6EF28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000264D729D0 == a2 || (sub_264D6EF28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69446E6565726373 && a2 == 0xEE0065636E617473)
  {

    return 4;
  }

  else
  {
    v5 = sub_264D6EF28();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_264D4D204(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C62616E457369 && a2 == 0xE900000000000064;
  if (v4 || (sub_264D6EF28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F50746369727473 && a2 == 0xEC0000007963696CLL || (sub_264D6EF28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70795474696D696CLL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_264D6EF28();

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

uint64_t sub_264D4D32C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C62616E457369 && a2 == 0xE900000000000064;
  if (v4 || (sub_264D6EF28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F50746369727473 && a2 == 0xEC0000007963696CLL || (sub_264D6EF28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D69746E776F64 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_264D6EF28();

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

unint64_t sub_264D4D450()
{
  result = qword_27FFACB98;
  if (!qword_27FFACB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACB98);
  }

  return result;
}

uint64_t sub_264D4D4A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static STExpressIntroduction.coreSettingsStore()@<X0>(uint64_t *a1@<X8>)
{
  static STExpressIntroduction.stSettingsStore()(v5);
  v2 = _s27InternalToCoreSettingsStoreVMa(0);
  a1[3] = v2;
  a1[4] = &off_28769F918;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_264D41D08(v5, boxed_opaque_existential_1 + *(v2 + 20));
  sub_264D6E838();
  return __swift_destroy_boxed_opaque_existential_0(v5);
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

id STExpressIntroduction.CoreSettings.contentRestrictions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

void STExpressIntroduction.CoreSettings.communicationSafety.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 10);
  *a1 = *(v1 + 9);
  a1[1] = v2;
}

void STExpressIntroduction.CoreSettings.communicationLimits.getter(_BYTE *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[13];
  *a1 = v1[11];
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t STExpressIntroduction.CoreSettings.screenDistance.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for STExpressIntroduction.STSettings(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t sub_264D4D764(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  *(v4 + 88) = type metadata accessor for STExpressIntroduction.CoreSettings(0);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  type metadata accessor for STExpressIntroduction.STSettings(0);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  *(v4 + 128) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v4 + 136) = v6;
  *(v4 + 144) = v7;
  *(v4 + 25) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_264D4D880, 0, 0);
}

uint64_t sub_264D4D880()
{
  v29 = v0;
  sub_264D4F658(*(v0 + 72), *(v0 + 136), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136380931;
    *(v0 + 48) = v5;
    *(v0 + 56) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v28);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    sub_264D4F658(v4, v6, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D4F6C0(v4, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v15 = sub_264D3FD80(v12, v14, &v28);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Loading for user %{private}s with defaults %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 136);

    sub_264D4F6C0(v16, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v17 = *(v0 + 25);
  v18 = *(v0 + 144);
  v19 = *(v0 + 80);
  v20 = (v19 + *(_s27InternalToCoreSettingsStoreVMa(0) + 20));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1Tm(v20, v21);
  *(v0 + 16) = v18;
  *(v0 + 24) = v17;
  v27 = (*(v22 + 8) + **(v22 + 8));
  v23 = swift_task_alloc();
  *(v0 + 152) = v23;
  *v23 = v0;
  v23[1] = sub_264D4DBA0;
  v24 = *(v0 + 112);
  v25 = *(v0 + 72);

  return v27(v24, v0 + 16, v25, v21, v22);
}

uint64_t sub_264D4DBA0()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_264D4DF74;
  }

  else
  {
    v2 = sub_264D4DCB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264D4DCB4()
{
  v25 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  sub_264D4F658(*(v0 + 112), v2, type metadata accessor for STExpressIntroduction.STSettings);
  sub_264D4F658(v2, v1, type metadata accessor for STExpressIntroduction.CoreSettings);
  v3 = sub_264D6E828();
  v4 = sub_264D6EB38();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 25);
    v6 = *(v0 + 144);
    v7 = *(v0 + 104);
    v23 = *(v0 + 112);
    v8 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136380931;
    *(v0 + 32) = v6;
    *(v0 + 40) = v5;
    v11 = sub_264D6E998();
    v13 = sub_264D3FD80(v11, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2081;
    sub_264D4F658(v7, v8, type metadata accessor for STExpressIntroduction.CoreSettings);
    v14 = sub_264D6E998();
    v16 = v15;
    sub_264D4F6C0(v7, type metadata accessor for STExpressIntroduction.CoreSettings);
    v17 = sub_264D3FD80(v14, v16, &v24);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_264D33000, v3, v4, "Loaded for user %{private}s settings: %{private}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v10, -1, -1);
    MEMORY[0x26674D8B0](v9, -1, -1);

    v18 = v23;
  }

  else
  {
    v20 = *(v0 + 104);
    v19 = *(v0 + 112);

    sub_264D4F6C0(v20, type metadata accessor for STExpressIntroduction.CoreSettings);
    v18 = v19;
  }

  sub_264D4F6C0(v18, type metadata accessor for STExpressIntroduction.STSettings);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_264D4DF74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264D4E008(uint64_t a1, uint64_t *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = type metadata accessor for STExpressIntroduction.CoreSettings(0);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 104) = v5;
  *(v3 + 112) = v6;
  *(v3 + 25) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_264D4E0C4, 0, 0);
}

uint64_t sub_264D4E0C4()
{
  v28 = v0;
  sub_264D4F658(*(v0 + 64), *(v0 + 104), type metadata accessor for STExpressIntroduction.CoreSettings);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136380931;
    *(v0 + 48) = v5;
    *(v0 + 56) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v27);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2081;
    sub_264D4F658(v4, v6, type metadata accessor for STExpressIntroduction.CoreSettings);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D4F6C0(v4, type metadata accessor for STExpressIntroduction.CoreSettings);
    v15 = sub_264D3FD80(v12, v14, &v27);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Saving for user %{private}s settings %{private}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 104);

    sub_264D4F6C0(v16, type metadata accessor for STExpressIntroduction.CoreSettings);
  }

  v17 = *(v0 + 25);
  v18 = *(v0 + 112);
  v19 = *(v0 + 72);
  v20 = (v19 + *(_s27InternalToCoreSettingsStoreVMa(0) + 20));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1Tm(v20, v21);
  *(v0 + 16) = v18;
  *(v0 + 24) = v17;
  v26 = (*(v22 + 16) + **(v22 + 16));
  v23 = swift_task_alloc();
  *(v0 + 120) = v23;
  *v23 = v0;
  v23[1] = sub_264D4E3E4;
  v24 = *(v0 + 64);

  return v26(v24, v0 + 16, v21, v22);
}

uint64_t sub_264D4E3E4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_264D4F720;
  }

  else
  {
    v2 = sub_264D4E4F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264D4E4F8()
{
  v20 = v0;
  sub_264D4F658(*(v0 + 64), *(v0 + 88), type metadata accessor for STExpressIntroduction.CoreSettings);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136380931;
    *(v0 + 32) = v4;
    *(v0 + 40) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2081;
    sub_264D4F658(v5, v6, type metadata accessor for STExpressIntroduction.CoreSettings);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D4F6C0(v5, type metadata accessor for STExpressIntroduction.CoreSettings);
    v15 = sub_264D3FD80(v12, v14, &v19);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Saved for user %{private}s settings %{private}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 88);

    sub_264D4F6C0(v16, type metadata accessor for STExpressIntroduction.CoreSettings);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_264D4E744(uint64_t a1, uint64_t *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 104) = v5;
  *(v3 + 112) = v6;
  *(v3 + 25) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_264D4E800, 0, 0);
}

uint64_t sub_264D4E800()
{
  v28 = v0;
  sub_264D4F658(*(v0 + 64), *(v0 + 104), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136380931;
    *(v0 + 48) = v5;
    *(v0 + 56) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v27);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    sub_264D4F658(v4, v6, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D4F6C0(v4, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v15 = sub_264D3FD80(v12, v14, &v27);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Saving for user %{private}s defaults %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 104);

    sub_264D4F6C0(v16, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v17 = *(v0 + 25);
  v18 = *(v0 + 112);
  v19 = *(v0 + 72);
  v20 = (v19 + *(_s27InternalToCoreSettingsStoreVMa(0) + 20));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1Tm(v20, v21);
  *(v0 + 16) = v18;
  *(v0 + 24) = v17;
  v26 = (*(v22 + 24) + **(v22 + 24));
  v23 = swift_task_alloc();
  *(v0 + 120) = v23;
  *v23 = v0;
  v23[1] = sub_264D4EB20;
  v24 = *(v0 + 64);

  return v26(v24, v0 + 16, v21, v22);
}

uint64_t sub_264D4EB20()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_264D4EE80;
  }

  else
  {
    v2 = sub_264D4EC34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264D4EC34()
{
  v20 = v0;
  sub_264D4F658(*(v0 + 64), *(v0 + 88), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136380931;
    *(v0 + 32) = v4;
    *(v0 + 40) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    sub_264D4F658(v5, v6, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D4F6C0(v5, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v15 = sub_264D3FD80(v12, v14, &v19);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Saved for user %{private}s defaults %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 88);

    sub_264D4F6C0(v16, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_264D4EE80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264D4EEF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_264D3D1A4;

  return sub_264D4D764(a1, a2, a3);
}

uint64_t sub_264D4EFA8(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D41720;

  return sub_264D4E008(a1, a2);
}

uint64_t sub_264D4F04C(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D41720;

  return sub_264D4E744(a1, a2);
}

uint64_t dispatch thunk of STExpressIntroduction.CoreSettingsStore.load(forUser:withDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_264D3D1A4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of STExpressIntroduction.CoreSettingsStore.save(settings:forUser:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_264D41720;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of STExpressIntroduction.CoreSettingsStore.save(defaults:forUser:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_264D41720;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_264D4F4DC(uint64_t a1)
{
  result = type metadata accessor for STExpressIntroduction.STSettings(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264D4F570(uint64_t a1)
{
  result = sub_264D6E848();
  if (v2 <= 0x3F)
  {
    result = sub_264D4F5F4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_264D4F5F4()
{
  result = qword_281222788[0];
  if (!qword_281222788[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281222788);
  }

  return result;
}

uint64_t sub_264D4F658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264D4F6C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*sub_264D4F774(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264D6E8A8();
  return sub_264D56BF0;
}

uint64_t (*sub_264D4F840(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBE0, &qword_264D71CC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__checkForUnsafePhotos;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  sub_264D6E888();
  swift_endAccess();
  return sub_264D56BF4;
}

uint64_t (*sub_264D4FA00(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264D6E8A8();
  return sub_264D56BF0;
}

uint64_t (*sub_264D4FACC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBE0, &qword_264D71CC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__communicationSafetyNotificationEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  sub_264D6E888();
  swift_endAccess();
  return sub_264D56BF4;
}

uint64_t (*sub_264D4FC8C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264D6E8A8();
  return sub_264D56BF0;
}

uint64_t (*sub_264D4FD58(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBE0, &qword_264D71CC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__communicationSafetyAnalyticsEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  sub_264D6E888();
  swift_endAccess();
  return sub_264D56BF4;
}

uint64_t sub_264D4FEC8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D6E8B8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_264D4FF48(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264D6E8C8();
}

uint64_t sub_264D4FFCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D6E8B8();

  return v1;
}

uint64_t sub_264D50040(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264D6E8C8();
}

uint64_t (*sub_264D500BC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264D6E8A8();
  return sub_264D56BF0;
}

uint64_t sub_264D50160(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC08, &qword_264D71DA8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC00, &qword_264D71DA0);
  sub_264D6E898();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_264D50300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC08, &qword_264D71DA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC00, &qword_264D71DA0);
  sub_264D6E898();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264D50438(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC08, &qword_264D71DA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__givenName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC00, &qword_264D71DA0);
  sub_264D6E888();
  swift_endAccess();
  return sub_264D56BF4;
}

uint64_t (*sub_264D505F8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264D6E8A8();
  return sub_264D56BF0;
}

uint64_t (*sub_264D506C4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBE0, &qword_264D71CC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__hasPasscode;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  sub_264D6E888();
  swift_endAccess();
  return sub_264D56BF4;
}

uint64_t (*sub_264D50884(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264D6E8A8();
  return sub_264D56BF0;
}

uint64_t (*sub_264D50950(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBE0, &qword_264D71CC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__isParent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  sub_264D6E888();
  swift_endAccess();
  return sub_264D56BF4;
}

uint64_t (*sub_264D50B10(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264D6E8A8();
  return sub_264D56BF0;
}

uint64_t (*sub_264D50BDC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBE0, &qword_264D71CC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__isRemoteUser;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  sub_264D6E888();
  swift_endAccess();
  return sub_264D56BF4;
}

uint64_t (*sub_264D50D9C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264D6E8A8();
  return sub_264D50E40;
}

uint64_t (*sub_264D50E6C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBE0, &qword_264D71CC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__screenTimeEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  sub_264D6E888();
  swift_endAccess();
  return sub_264D50FDC;
}

uint64_t sub_264D50FF4@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D6E8B8();

  *a4 = v6;
  return result;
}

uint64_t sub_264D51084(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264D6E8C8();
}

uint64_t sub_264D51108(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D6E8B8();

  return v3;
}

uint64_t sub_264D51188(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264D6E8C8();
}

uint64_t (*sub_264D511F4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264D6E8A8();
  return sub_264D56BF0;
}

uint64_t sub_264D51298(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBE0, &qword_264D71CC0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = *(v7 + 16);
  v13(&v15 - v11, a1, v6);
  v13(v10, v12, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  sub_264D6E898();
  swift_endAccess();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_264D5144C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBE0, &qword_264D71CC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  sub_264D6E898();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_264D51584(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBE0, &qword_264D71CC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__syncingEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  sub_264D6E888();
  swift_endAccess();
  return sub_264D56BF4;
}

uint64_t sub_264D516F4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D6E8B8();

  *a2 = v4;
  return result;
}

uint64_t sub_264D51774(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_264D6E8C8();
}

uint64_t sub_264D517EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D6E8B8();

  return v1;
}

uint64_t sub_264D51860(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264D6E8C8();
}

uint64_t (*sub_264D518D0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264D6E8A8();
  return sub_264D56BF0;
}

void sub_264D51974(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_264D519DC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_264D6E888();
  return swift_endAccess();
}

uint64_t sub_264D51A58(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC48, &qword_264D71F68);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC40, &qword_264D71F60);
  sub_264D6E898();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_264D51BF8(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_264D6E888();
  return swift_endAccess();
}

uint64_t sub_264D51C70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC48, &qword_264D71F68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC40, &qword_264D71F60);
  sub_264D6E898();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264D51DA8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC48, &qword_264D71F68);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__familyMemberType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC40, &qword_264D71F60);
  sub_264D6E888();
  swift_endAccess();
  return sub_264D56BF4;
}

void sub_264D51F18(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_264D6E898();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_264D6E898();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t STSwiftUser.__allocating_init(identifier:givenName:hasPasscode:isParent:isRemoteUser:checkForUnsafePhotos:communicationSafetyNotificationEnabled:communicationSafetyAnalyticsEnabled:screenTimeEnabled:syncingEnabled:familyMemberType:persistenceSource:authenticationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, void *a13, uint64_t a14, uint64_t a15)
{
  v63 = a8;
  v59 = a7;
  v55 = a5;
  v56 = a6;
  v52 = a3;
  v53 = a4;
  v49 = a2;
  v48 = a1;
  v64 = a9;
  v65 = a10;
  v66 = a14;
  v67 = a15;
  v62 = a13;
  v60 = a11;
  v61 = a12;
  v44 = sub_264D6EB68();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_264D6EB58();
  MEMORY[0x28223BE20](v16);
  v40[1] = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_264D6E918();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__givenName;
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_264D6E878();
  v41 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__hasPasscode;
  LOBYTE(v70) = 0;
  sub_264D6E878();
  v45 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__isParent;
  LOBYTE(v70) = 0;
  sub_264D6E878();
  v46 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__isRemoteUser;
  LOBYTE(v70) = 0;
  sub_264D6E878();
  v47 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__screenTimeEnabled;
  LOBYTE(v70) = 0;
  sub_264D6E878();
  v50 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__syncingEnabled;
  LOBYTE(v70) = 0;
  sub_264D6E878();
  v51 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__familyMemberType;
  v70 = *MEMORY[0x277D4BC00];
  v21 = v70;
  type metadata accessor for STFamilyMemberType(0);
  v54 = v22;
  v23 = v21;
  sub_264D6E878();
  v58 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_persistenceSource;
  *(v19 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_persistenceSource) = 0;
  v57 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_authenticationSource;
  *(v19 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_authenticationSource) = 0;
  v40[0] = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_backgroundPersistenceQueue;
  sub_264D414E0(0, &qword_27FFACC68, 0x277D85C78);
  sub_264D6E908();
  v70 = MEMORY[0x277D84F90];
  sub_264D55D08(&qword_27FFACC70, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC78, &qword_264D71F70);
  sub_264D55D50(&qword_27FFACC80, &qword_27FFACC78, &qword_264D71F70);
  sub_264D6EC38();
  (*(v43 + 104))(v42, *MEMORY[0x277D85260], v44);
  *(v19 + v40[0]) = sub_264D6EB98();
  v24 = (v19 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_identifier);
  v25 = v49;
  *v24 = v48;
  v24[1] = v25;
  swift_beginAccess();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC00, &qword_264D71DA0);
  (*(*(v26 - 8) + 8))(v19 + v20, v26);
  v68 = v52;
  v69 = v53;
  sub_264D6E878();
  swift_endAccess();
  v27 = v41;
  swift_beginAccess();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  v29 = *(*(v28 - 8) + 8);
  v29(v19 + v27, v28);
  LOBYTE(v68) = v55;
  sub_264D6E878();
  swift_endAccess();
  v30 = v45;
  swift_beginAccess();
  v29(v19 + v30, v28);
  LOBYTE(v68) = v56;
  sub_264D6E878();
  swift_endAccess();
  v31 = v46;
  swift_beginAccess();
  v29(v19 + v31, v28);
  LOBYTE(v68) = v59;
  sub_264D6E878();
  swift_endAccess();
  v32 = v47;
  swift_beginAccess();
  v29(v19 + v32, v28);
  LOBYTE(v68) = v60;
  sub_264D6E878();
  swift_endAccess();
  v33 = v50;
  swift_beginAccess();
  v29(v19 + v33, v28);
  LOBYTE(v68) = v61;
  sub_264D6E878();
  swift_endAccess();
  v34 = v51;
  swift_beginAccess();
  v35 = v62;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC40, &qword_264D71F60);
  (*(*(v36 - 8) + 8))(v19 + v34, v36);
  v68 = v35;
  sub_264D6E878();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v68) = v63;
  sub_264D6E878();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v68) = v64;
  sub_264D6E878();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v68) = v65;
  sub_264D6E878();
  swift_endAccess();

  v37 = v67;
  v38 = v57;
  *(v19 + v58) = v66;
  *(v19 + v38) = v37;
  return v19;
}

uint64_t STSwiftUser.init(identifier:givenName:hasPasscode:isParent:isRemoteUser:checkForUnsafePhotos:communicationSafetyNotificationEnabled:communicationSafetyAnalyticsEnabled:screenTimeEnabled:syncingEnabled:familyMemberType:persistenceSource:authenticationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, void *a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v81 = a6;
  v82 = a7;
  v80 = a5;
  v78 = a3;
  v79 = a4;
  v76 = a1;
  v77 = a2;
  v88 = a10;
  v86 = a8;
  v87 = a9;
  v89 = a14;
  v90 = a15;
  v85 = a13;
  v83 = a11;
  v84 = a12;
  v73 = sub_264D6EB68();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_264D6EB58();
  MEMORY[0x28223BE20](v70);
  v69 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_264D6E918();
  MEMORY[0x28223BE20](v19 - 8);
  v63 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC40, &qword_264D71F60);
  v91 = *(v21 - 8);
  v92 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC00, &qword_264D71DA0);
  v60 = v28;
  v61 = *(v28 - 8);
  v29 = v61;
  MEMORY[0x28223BE20](v28);
  v31 = &v56 - v30;
  v32 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__givenName;
  v58 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__givenName;
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_264D6E878();
  (*(v29 + 32))(v16 + v32, v31, v28);
  v33 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__hasPasscode;
  v59 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__hasPasscode;
  LOBYTE(v95) = 0;
  sub_264D6E878();
  v34 = *(v25 + 32);
  v34(v16 + v33, v27, v24);
  v35 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__isParent;
  v62 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__isParent;
  LOBYTE(v95) = 0;
  sub_264D6E878();
  v34(v16 + v35, v27, v24);
  v36 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__isRemoteUser;
  v64 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__isRemoteUser;
  LOBYTE(v95) = 0;
  sub_264D6E878();
  v34(v16 + v36, v27, v24);
  v37 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__screenTimeEnabled;
  v65 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__screenTimeEnabled;
  LOBYTE(v95) = 0;
  sub_264D6E878();
  v34(v16 + v37, v27, v24);
  v38 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__syncingEnabled;
  v67 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__syncingEnabled;
  LOBYTE(v95) = 0;
  sub_264D6E878();
  v34(v16 + v38, v27, v24);
  v39 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__familyMemberType;
  v66 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__familyMemberType;
  v95 = *MEMORY[0x277D4BC00];
  v40 = v95;
  type metadata accessor for STFamilyMemberType(0);
  v68 = v41;
  v42 = v40;
  sub_264D6E878();
  (*(v91 + 32))(v16 + v39, v23, v92);
  v74 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_persistenceSource;
  *(v16 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_persistenceSource) = 0;
  v75 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_authenticationSource;
  *(v16 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_authenticationSource) = 0;
  v57 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_backgroundPersistenceQueue;
  sub_264D414E0(0, &qword_27FFACC68, 0x277D85C78);
  sub_264D6E908();
  v95 = MEMORY[0x277D84F90];
  sub_264D55D08(&qword_27FFACC70, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC78, &qword_264D71F70);
  sub_264D55D50(&qword_27FFACC80, &qword_27FFACC78, &qword_264D71F70);
  sub_264D6EC38();
  (*(v72 + 104))(v71, *MEMORY[0x277D85260], v73);
  *(v16 + v57) = sub_264D6EB98();
  v43 = (v16 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_identifier);
  v44 = v77;
  *v43 = v76;
  v43[1] = v44;
  v45 = v58;
  swift_beginAccess();
  (*(v61 + 8))(v16 + v45, v60);
  v93 = v78;
  v94 = v79;
  sub_264D6E878();
  swift_endAccess();
  v46 = v59;
  swift_beginAccess();
  v47 = *(v25 + 8);
  v47(v16 + v46, v24);
  LOBYTE(v93) = v80;
  sub_264D6E878();
  swift_endAccess();
  v48 = v62;
  swift_beginAccess();
  v47(v16 + v48, v24);
  LOBYTE(v93) = v81;
  sub_264D6E878();
  swift_endAccess();
  v49 = v64;
  swift_beginAccess();
  v47(v16 + v49, v24);
  LOBYTE(v93) = v82;
  sub_264D6E878();
  swift_endAccess();
  v50 = v65;
  swift_beginAccess();
  v47(v16 + v50, v24);
  LOBYTE(v93) = v83;
  sub_264D6E878();
  swift_endAccess();
  v51 = v67;
  swift_beginAccess();
  v47(v16 + v51, v24);
  LOBYTE(v93) = v84;
  sub_264D6E878();
  swift_endAccess();
  v52 = v66;
  swift_beginAccess();
  v53 = *(v91 + 8);
  v54 = v85;
  v53(v16 + v52, v92);
  v93 = v54;
  sub_264D6E878();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v93) = v86;
  sub_264D6E878();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v93) = v87;
  sub_264D6E878();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v93) = v88;
  sub_264D6E878();
  swift_endAccess();

  *(v16 + v74) = v89;
  swift_unknownObjectRelease();
  *(v16 + v75) = v90;
  swift_unknownObjectRelease();
  return v16;
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

uint64_t STSwiftUser.__allocating_init(dsid:persistenceSource:authenticationSource:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v67 = a4;
  v7 = sub_264D6EB68();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264D6EB58();
  MEMORY[0x28223BE20](v9);
  v57 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264D6E918();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = *MEMORY[0x277D4BC00];
  v64 = a1;
  v65 = a2;
  v60 = a3;
  if (a3)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    v14 = sub_264D6E958();
    v15 = [a3 userDataWithIdentifier_];

    if (v15)
    {
      v16 = [v15 givenName];
      if (v16)
      {
        v17 = v16;
        v18 = sub_264D6E988();
        v20 = v19;
      }

      else
      {
        v20 = 0xEA0000000000646CLL;
        v18 = 0x6968632072756F79;
      }

      v46 = v20;
      v48 = v18;
      v53 = [v15 hasPasscode];
      v55 = [v15 isParent];
      LODWORD(v56) = [v15 isRemote];
      HIDWORD(v56) = [v15 screenTimeEnabled];
      v58 = [v15 syncingEnabled];
      v21 = [v15 familyMemberType];

      v63 = [v15 checkForUnsafePhotos];
      LODWORD(v66) = [v15 isCommunicationSafetyNotificationEnabled];
      HIDWORD(v66) = [v15 isCommunicationSafetyAnalyticsEnabled];
      swift_unknownObjectRelease();

      v54 = v21;
    }

    else
    {
      swift_unknownObjectRelease();
      v58 = 0;
      v56 = 0;
      v66 = 0;
      v63 = 0;
      v55 = 0;
      v53 = 0;
      v48 = 0;
      v46 = 0xE000000000000000;
      v54 = v13;
    }
  }

  else
  {
    v54 = v12;
    v58 = 0;
    v56 = 0;
    v66 = 0;
    v63 = 0;
    v55 = 0;
    v53 = 0;
    v48 = 0;
    v46 = 0xE000000000000000;
  }

  type metadata accessor for STSwiftUser(0);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__givenName;
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_264D6E878();
  v42 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__hasPasscode;
  LOBYTE(v70) = 0;
  sub_264D6E878();
  v43 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__isParent;
  LOBYTE(v70) = 0;
  sub_264D6E878();
  v44 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__isRemoteUser;
  LOBYTE(v70) = 0;
  sub_264D6E878();
  v45 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__screenTimeEnabled;
  LOBYTE(v70) = 0;
  sub_264D6E878();
  v47 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__syncingEnabled;
  LOBYTE(v70) = 0;
  sub_264D6E878();
  v49 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__familyMemberType;
  v70 = v12;
  type metadata accessor for STFamilyMemberType(0);
  v50 = v24;
  v25 = v12;
  sub_264D6E878();
  v52 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_persistenceSource;
  *(v22 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_persistenceSource) = 0;
  v51 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_authenticationSource;
  *(v22 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_authenticationSource) = 0;
  v41 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_backgroundPersistenceQueue;
  sub_264D414E0(0, &qword_27FFACC68, 0x277D85C78);
  sub_264D6E908();
  v70 = MEMORY[0x277D84F90];
  sub_264D55D08(&qword_27FFACC70, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC78, &qword_264D71F70);
  sub_264D55D50(&qword_27FFACC80, &qword_27FFACC78, &qword_264D71F70);
  sub_264D6EC38();
  (*(v61 + 104))(v59, *MEMORY[0x277D85260], v62);
  *(v22 + v41) = sub_264D6EB98();
  v26 = (v22 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_identifier);
  v27 = v65;
  *v26 = v64;
  v26[1] = v27;
  swift_beginAccess();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC00, &qword_264D71DA0);
  (*(*(v28 - 8) + 8))(v22 + v23, v28);
  v68 = v48;
  v69 = v46;
  sub_264D6E878();
  swift_endAccess();
  v29 = v42;
  swift_beginAccess();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  v31 = *(*(v30 - 8) + 8);
  v31(v22 + v29, v30);
  LOBYTE(v68) = v53;
  sub_264D6E878();
  swift_endAccess();
  v32 = v43;
  swift_beginAccess();
  v31(v22 + v32, v30);
  LOBYTE(v68) = v55;
  sub_264D6E878();
  swift_endAccess();
  v33 = v44;
  swift_beginAccess();
  v31(v22 + v33, v30);
  LOBYTE(v68) = v56;
  sub_264D6E878();
  swift_endAccess();
  v34 = v45;
  swift_beginAccess();
  v31(v22 + v34, v30);
  LOBYTE(v68) = BYTE4(v56);
  sub_264D6E878();
  swift_endAccess();
  v35 = v47;
  swift_beginAccess();
  v31(v22 + v35, v30);
  LOBYTE(v68) = v58;
  sub_264D6E878();
  swift_endAccess();
  v36 = v49;
  swift_beginAccess();
  v37 = v54;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC40, &qword_264D71F60);
  (*(*(v38 - 8) + 8))(v22 + v36, v38);
  v68 = v37;
  sub_264D6E878();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v68) = v63;
  sub_264D6E878();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v68) = v66;
  sub_264D6E878();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v68) = BYTE4(v66);
  sub_264D6E878();
  swift_endAccess();

  *(v22 + v52) = v60;
  *(v22 + v51) = v67;
  return v22;
}

uint64_t type metadata accessor for STSwiftUser(uint64_t a1)
{
  result = qword_27FFACCB8;
  if (!qword_27FFACCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264D53CB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_identifier);

  return v1;
}

void sub_264D53CF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    v7 = (v4 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_identifier);
    *v7 = a1;
    v7[1] = a2;
    swift_unknownObjectRetain();

    *(v4 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_persistenceSource) = a3;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    *(v4 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_authenticationSource) = a4;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    v8 = sub_264D6E958();
    v9 = [a3 userDataWithIdentifier_];

    if (v9)
    {
      v10 = [v9 givenName];
      if (v10)
      {
        v11 = v10;
        sub_264D6E988();
      }

      swift_getKeyPath();
      swift_getKeyPath();

      sub_264D6E8C8();
      [v9 hasPasscode];
      swift_getKeyPath();
      swift_getKeyPath();

      sub_264D6E8C8();
      [v9 isParent];
      swift_getKeyPath();
      swift_getKeyPath();

      sub_264D6E8C8();
      [v9 isRemote];
      swift_getKeyPath();
      swift_getKeyPath();

      sub_264D6E8C8();
      [v9 screenTimeEnabled];
      swift_getKeyPath();
      swift_getKeyPath();

      sub_264D6E8C8();
      [v9 syncingEnabled];
      swift_getKeyPath();
      swift_getKeyPath();

      sub_264D6E8C8();
      [v9 familyMemberType];
      swift_getKeyPath();
      swift_getKeyPath();

      sub_264D6E8C8();
      [v9 checkForUnsafePhotos];
      swift_getKeyPath();
      swift_getKeyPath();

      sub_264D6E8C8();
      [v9 isCommunicationSafetyNotificationEnabled];
      swift_getKeyPath();
      swift_getKeyPath();

      sub_264D6E8C8();
      [v9 isCommunicationSafetyAnalyticsEnabled];
      swift_getKeyPath();
      swift_getKeyPath();

      sub_264D6E8C8();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_27FFAC300 != -1)
    {
      swift_once();
    }

    v12 = sub_264D6E848();
    __swift_project_value_buffer(v12, qword_27FFB1620);
    oslog = sub_264D6E828();
    v13 = sub_264D6EB28();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_264D33000, oslog, v13, "Persistence source not found for user update.", v14, 2u);
      MEMORY[0x26674D8B0](v14, -1, -1);
    }
  }
}

uint64_t sub_264D54284()
{
  v1 = sub_264D6E8E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264D6E918();
  v6 = MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_persistenceSource);
  if (v10)
  {
    v19 = v1;
    v20 = v7;
    v11 = *(v0 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_backgroundPersistenceQueue);
    v21 = v6;
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v10;
    v18[1] = v12;
    aBlock[4] = sub_264D55CE8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264D54E08;
    aBlock[3] = &block_descriptor_0;
    v14 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    v15 = v11;

    sub_264D6E8F8();
    v22 = MEMORY[0x277D84F90];
    sub_264D55D08(&qword_27FFACC98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACCA0, &unk_264D72560);
    sub_264D55D50(&qword_27FFACCA8, &qword_27FFACCA0, &unk_264D72560);
    v16 = v19;
    sub_264D6EC38();
    MEMORY[0x26674CD80](0, v9, v4, v14);
    _Block_release(v14);
    swift_unknownObjectRelease();

    (*(v2 + 8))(v4, v16);
    (*(v20 + 8))(v9, v21);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC90, &unk_264D71F78);
    swift_allocObject();

    sub_264D6E868();
  }
}

void sub_264D5462C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    v5 = sub_264D6E958();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264D6E8B8();

    v6 = LOBYTE(aBlock[0]);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264D6E8B8();

    v7 = LOBYTE(aBlock[0]);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264D6E8B8();

    v8 = LOBYTE(aBlock[0]);
    aBlock[4] = sub_264D56AF4;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264D54D9C;
    aBlock[3] = &block_descriptor_113;
    v9 = _Block_copy(aBlock);

    [a2 saveCommunicationSafetySettingsForDSID:v5 checkForUnsafePhotos:v6 communicationSafetyNotificationEnabled:v7 communicationSafetyAnalyticsEnabled:v8 completionHandler:v9];
    _Block_release(v9);
  }

  else
  {
    if (qword_27FFAC300 != -1)
    {
      swift_once();
    }

    v10 = sub_264D6E848();
    __swift_project_value_buffer(v10, qword_27FFB1620);
    v5 = sub_264D6E828();
    v11 = sub_264D6EB28();
    if (os_log_type_enabled(v5, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_264D33000, v5, v11, "STFoundation user is deallocated before saving communication safety changes.", v12, 2u);
      MEMORY[0x26674D8B0](v12, -1, -1);
    }
  }
}

void sub_264D54900(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_27FFAC300 != -1)
    {
      swift_once();
    }

    v4 = sub_264D6E848();
    __swift_project_value_buffer(v4, qword_27FFB1620);
    v5 = a1;
    v6 = sub_264D6E828();
    v7 = sub_264D6EB28();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136315138;
      v10 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC778, &qword_264D722D0);
      v11 = sub_264D6E998();
      v13 = sub_264D3FD80(v11, v12, &v30);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_264D33000, v6, v7, "Error saving Comm Safety settings: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x26674D8B0](v9, -1, -1);
      MEMORY[0x26674D8B0](v8, -1, -1);

      return;
    }

    v27 = a1;

    goto LABEL_30;
  }

  if (qword_27FFAC300 != -1)
  {
    swift_once();
  }

  v14 = sub_264D6E848();
  __swift_project_value_buffer(v14, qword_27FFB1620);

  oslog = sub_264D6E828();
  v15 = sub_264D6EB18();

  if (!os_log_type_enabled(oslog, v15))
  {
    v27 = oslog;

LABEL_30:

    return;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v30 = v17;
  *v16 = 136315650;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D6E8B8();

  if (v29)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v29)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v20 = sub_264D3FD80(v18, v19, &v30);

  *(v16 + 4) = v20;
  *(v16 + 12) = 2080;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D6E8B8();

  if (v29)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v29)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v23 = sub_264D3FD80(v21, v22, &v30);

  *(v16 + 14) = v23;
  *(v16 + 22) = 2080;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D6E8B8();

  if (v29)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v29)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  v26 = sub_264D3FD80(v24, v25, &v30);

  *(v16 + 24) = v26;
  _os_log_impl(&dword_264D33000, oslog, v15, "User saved successfully checkForUnsafePhotos: %s, communicationSafetyNotificationEnabled: %s, communicationSafetyAnalyticsEnabled: %s", v16, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x26674D8B0](v17, -1, -1);
  MEMORY[0x26674D8B0](v16, -1, -1);
}

void sub_264D54D9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_264D54E08(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_264D54E4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC90, &unk_264D71F78);
  swift_allocObject();

  return sub_264D6E868();
}

void sub_264D54EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_opt_self();

  v8 = [v7 sharedController];
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = sub_264D56AFC;
  v9[4] = v6;
  v11[4] = sub_264D56B3C;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_264D55414;
  v11[3] = &block_descriptor_122;
  v10 = _Block_copy(v11);

  [v8 performBackgroundTask_];
  _Block_release(v10);
}

void sub_264D55000(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_identifier);
  v6 = *(a2 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_identifier + 8);

  v7 = sub_264D552A0(v5, v6, a1);

  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264D6E8B8();

    [v7 setIsCommunicationSafetySendingRestricted_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264D6E8B8();

    [v7 setIsCommunicationSafetyReceivingRestricted_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264D6E8B8();

    [v7 setIsCommunicationSafetyNotificationEnabled_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264D6E8B8();

    [v7 setIsCommunicationSafetyAnalyticsEnabled_];
    v12[0] = 0;
    if ([a1 save_])
    {
      v8 = v12[0];
      a3(0, 0);
    }

    else
    {
      v9 = v12[0];
      v10 = sub_264D6E788();

      swift_willThrow();
      v11 = v10;
      a3(v10, 1);
    }
  }
}

uint64_t sub_264D552A0(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = 0;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = &v12;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_264D56B48;
  *(v7 + 24) = v6;
  aBlock[4] = sub_264D56B54;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264D55CB8;
  aBlock[3] = &block_descriptor_131;
  v8 = _Block_copy(aBlock);

  [a3 performBlockAndWait_];
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

void sub_264D55414(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_264D5547C(char a1, void (*a2)(void), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser_authenticationSource);
  if (v6)
  {
    v8 = qword_27FFAC300;
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_264D6E848();
    __swift_project_value_buffer(v9, qword_27FFB1620);
    v10 = sub_264D6E828();
    v11 = sub_264D6EB18();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_264D33000, v10, v11, "Authenticating...", v12, 2u);
      MEMORY[0x26674D8B0](v12, -1, -1);
    }

    v13 = sub_264D6E958();

    v19[4] = a2;
    v19[5] = a3;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_264D55724;
    v19[3] = &block_descriptor_77;
    v14 = _Block_copy(v19);

    [v6 authenticateWithIdentifier:v13 forced:a1 & 1 completionHandler:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27FFAC300 != -1)
    {
      swift_once();
    }

    v15 = sub_264D6E848();
    __swift_project_value_buffer(v15, qword_27FFB1620);
    v16 = sub_264D6E828();
    v17 = sub_264D6EB28();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_264D33000, v16, v17, "No authentication source found", v18, 2u);
      MEMORY[0x26674D8B0](v18, -1, -1);
    }

    a2(0);
  }
}

uint64_t sub_264D55724(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t STSwiftUser.deinit()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__checkForUnsafePhotos;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBD8, &qword_264D71CB8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__communicationSafetyNotificationEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__communicationSafetyAnalyticsEnabled, v2);

  v4 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__givenName;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC00, &qword_264D71DA0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__hasPasscode, v2);
  v3(v0 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__isParent, v2);
  v3(v0 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__isRemoteUser, v2);
  v3(v0 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__screenTimeEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__syncingEnabled, v2);
  v6 = OBJC_IVAR____TtC15ScreenTimeSwift11STSwiftUser__familyMemberType;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACC40, &qword_264D71F60);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t STSwiftUser.__deallocating_deinit()
{
  STSwiftUser.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_264D559F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for STSwiftUser(0);
  result = sub_264D6E858();
  *a2 = result;
  return result;
}

void sub_264D55A30(uint64_t a1, uint64_t a2, id *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_self() fetchRequest];
  sub_264D414E0(0, &qword_27FFACCE0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACCE8, &qword_264D72028);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_264D71C60;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_264D56B7C();
  *(v7 + 32) = 1684632420;
  *(v7 + 40) = 0xE400000000000000;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 64) = v9;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;

  v10 = sub_264D6EB08();
  [v6 setPredicate_];

  v20[0] = 0;
  v11 = [v6 execute_];
  v12 = v20[0];
  if (!v11)
  {
    v18 = v20[0];
    v19 = sub_264D6E788();

    swift_willThrow();
LABEL_13:
    v6 = *a3;
    *a3 = 0;
    goto LABEL_14;
  }

  v13 = v11;
  sub_264D414E0(0, &qword_27FFAC7A8, 0x277D4B988);
  v14 = sub_264D6EAA8();
  v15 = v12;

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!sub_264D6EC88())
  {
LABEL_12:

    goto LABEL_13;
  }

  if (!sub_264D6EC88())
  {

    goto LABEL_14;
  }

LABEL_4:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x26674CF10](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v16 = *(v14 + 32);
  }

  v17 = v16;

  v6 = *a3;
  *a3 = v17;
LABEL_14:
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264D55D08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264D55D50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_264D55DB8(uint64_t a1)
{
  sub_264D56A50(319, &qword_27FFACCC8, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_264D56A50(319, &qword_27FFACCD0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_264D56A9C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_264D56A50(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_264D6E8D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_264D56A9C(uint64_t a1)
{
  if (!qword_27FFACCD8)
  {
    type metadata accessor for STFamilyMemberType(255);
    v1 = sub_264D6E8D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFACCD8);
    }
  }
}

uint64_t sub_264D56AFC(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

unint64_t sub_264D56B7C()
{
  result = qword_27FFACCF0;
  if (!qword_27FFACCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACCF0);
  }

  return result;
}

uint64_t STExpressIntroduction.Internal.ReconcilingSettingsStore.init(dataSource:userContextStore:fetchSignedInAppleAccountDSID:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_264D6E838();
  v10 = type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore(0);
  sub_264D34A30(a1, a5 + v10[5]);
  result = sub_264D34A30(a2, a5 + v10[6]);
  v12 = (a5 + v10[7]);
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t STExpressIntroduction.Internal.ReconcilingSettingsStore.load(forUser:withDefaults:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 96) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC680, &qword_264D6FEE8);
  *(v4 + 120) = swift_task_alloc();
  v6 = type metadata accessor for STExpressIntroduction.STSettings(0);
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  *(v4 + 208) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v4 + 216) = v7;
  *(v4 + 224) = v8;
  *(v4 + 25) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_264D56E60, 0, 0);
}

uint64_t sub_264D56E60()
{
  v22 = v0;
  sub_264D5B1F4(*(v0 + 104), *(v0 + 216), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB18();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 216);
    v5 = *(v0 + 224);
    v6 = *(v0 + 208);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136380931;
    *(v0 + 80) = v5;
    *(v0 + 88) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    sub_264D5B1F4(v4, v6, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D5D2BC(v4, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v15 = sub_264D3FD80(v12, v14, &v21);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Loading for user %{private}s with defaults %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 216);

    sub_264D5D2BC(v16, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v17 = *(v0 + 25);
  *(v0 + 16) = *(v0 + 224);
  *(v0 + 24) = v17;
  v18 = swift_task_alloc();
  *(v0 + 232) = v18;
  *v18 = v0;
  v18[1] = sub_264D570DC;
  v19 = *(v0 + 120);

  return sub_264D579E4(v19, v0 + 16);
}

uint64_t sub_264D570DC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_264D57904;
  }

  else
  {
    v2 = sub_264D571F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264D571F0()
{
  v68 = v0;
  v1 = *(v0 + 120);
  if ((*(*(v0 + 136) + 48))(v1, 1, *(v0 + 128)) == 1)
  {
    v3 = (v0 + 152);
    v2 = *(v0 + 152);
    v4 = *(v0 + 25);
    v5 = *(v0 + 224);
    v6 = *(v0 + 144);
    v7 = *(v0 + 104);
    sub_264D37A94(v1, &qword_27FFAC680, &qword_264D6FEE8);
    v66 = v5;
    v67 = v4;
    sub_264D583C4(&v66, v7, v2);
    sub_264D5B1F4(v2, v6, type metadata accessor for STExpressIntroduction.STSettings);
    v8 = sub_264D6E828();
    v9 = sub_264D6EB38();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 25);
      v11 = *(v0 + 224);
      v12 = *(v0 + 176);
      v13 = *(v0 + 144);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v66 = v15;
      *v14 = 136380931;
      *(v0 + 32) = v11;
      *(v0 + 40) = v10;
      v16 = sub_264D6E998();
      v18 = sub_264D3FD80(v16, v17, &v66);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2081;
      sub_264D5B1F4(v13, v12, type metadata accessor for STExpressIntroduction.STSettings);
      v19 = sub_264D6E998();
      v21 = v20;
      sub_264D5D2BC(v13, type metadata accessor for STExpressIntroduction.STSettings);
      v22 = sub_264D3FD80(v19, v21, &v66);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_264D33000, v8, v9, "For user %{private}s with no settings, merged default settings: %{private}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26674D8B0](v15, -1, -1);
      MEMORY[0x26674D8B0](v14, -1, -1);

      goto LABEL_12;
    }

    v40 = *(v0 + 144);

    v41 = v40;
  }

  else
  {
    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    sub_264D5D380(v1, v23, type metadata accessor for STExpressIntroduction.STSettings);
    sub_264D5B1F4(v23, v24, type metadata accessor for STExpressIntroduction.STSettings);
    v25 = sub_264D6E828();
    v26 = sub_264D6EB38();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 25);
      v28 = *(v0 + 224);
      v30 = *(v0 + 176);
      v29 = *(v0 + 184);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v66 = v32;
      *v31 = 136380931;
      *(v0 + 64) = v28;
      *(v0 + 72) = v27;
      v33 = sub_264D6E998();
      v35 = sub_264D3FD80(v33, v34, &v66);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2081;
      sub_264D5B1F4(v29, v30, type metadata accessor for STExpressIntroduction.STSettings);
      v36 = sub_264D6E998();
      v38 = v37;
      sub_264D5D2BC(v29, type metadata accessor for STExpressIntroduction.STSettings);
      v39 = sub_264D3FD80(v36, v38, &v66);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_264D33000, v25, v26, "Loaded for user %{private}s settings: %{private}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26674D8B0](v32, -1, -1);
      MEMORY[0x26674D8B0](v31, -1, -1);
    }

    else
    {
      v42 = *(v0 + 184);

      sub_264D5D2BC(v42, type metadata accessor for STExpressIntroduction.STSettings);
    }

    v3 = (v0 + 168);
    v43 = *(v0 + 168);
    v44 = *(v0 + 160);
    sub_264D57E74(*(v0 + 192), *(v0 + 104), v43);
    sub_264D5B1F4(v43, v44, type metadata accessor for STExpressIntroduction.STSettings);
    v45 = sub_264D6E828();
    v46 = sub_264D6EB38();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 25);
      v48 = *(v0 + 224);
      v49 = *(v0 + 176);
      v50 = *(v0 + 160);
      v65 = *(v0 + 192);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v66 = v52;
      *v51 = 136380931;
      *(v0 + 48) = v48;
      *(v0 + 56) = v47;
      v53 = sub_264D6E998();
      v55 = sub_264D3FD80(v53, v54, &v66);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2081;
      v56 = v50;
      sub_264D5B1F4(v50, v49, type metadata accessor for STExpressIntroduction.STSettings);
      v57 = sub_264D6E998();
      v59 = v58;
      sub_264D5D2BC(v56, type metadata accessor for STExpressIntroduction.STSettings);
      v60 = sub_264D3FD80(v57, v59, &v66);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_264D33000, v45, v46, "For user %{private}s merged settings: %{private}s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26674D8B0](v52, -1, -1);
      MEMORY[0x26674D8B0](v51, -1, -1);

      v41 = v65;
    }

    else
    {
      v61 = *(v0 + 192);
      v62 = *(v0 + 160);

      sub_264D5D2BC(v62, type metadata accessor for STExpressIntroduction.STSettings);
      v41 = v61;
    }
  }

  sub_264D5D2BC(v41, type metadata accessor for STExpressIntroduction.STSettings);
LABEL_12:
  sub_264D5D380(*v3, *(v0 + 96), type metadata accessor for STExpressIntroduction.STSettings);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_264D57904()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264D579E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  *(v3 + 64) = *a2;
  *(v3 + 25) = *(a2 + 8);
  return MEMORY[0x2822009F8](sub_264D57A14, 0, 0);
}

uint64_t sub_264D57A14()
{
  v31 = v0;
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore(0);
  v5 = (v2 + *(v4 + 24));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v29 = v3;
  v30 = v1;
  if ((*(v7 + 8))(&v29, v6, v7))
  {
    v8 = sub_264D6E828();
    v9 = sub_264D6EB38();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 25);
      v11 = *(v0 + 64);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136380675;
      *(v0 + 32) = v11;
      *(v0 + 40) = v10;
      v14 = sub_264D6E998();
      v16 = sub_264D3FD80(v14, v15, &v29);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_264D33000, v8, v9, "User %{private}s was created on this device, so loading nil existing settings", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x26674D8B0](v13, -1, -1);
      MEMORY[0x26674D8B0](v12, -1, -1);
    }

    v17 = *(v0 + 48);
    v18 = type metadata accessor for STExpressIntroduction.STSettings(0);
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 25);
    v22 = *(v0 + 64);
    v23 = (*(v0 + 56) + *(v4 + 20));
    v24 = v23[3];
    v25 = v23[4];
    __swift_project_boxed_opaque_existential_1Tm(v23, v24);
    *(v0 + 16) = v22;
    *(v0 + 24) = v21;
    v28 = (*(v25 + 8) + **(v25 + 8));
    v26 = swift_task_alloc();
    *(v0 + 72) = v26;
    *v26 = v0;
    v26[1] = sub_264D57D28;
    v27 = *(v0 + 48);

    return v28(v27, v0 + 16, v24, v25);
  }
}

uint64_t sub_264D57D28()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264D57E5C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_264D57E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC688, &qword_264D70960);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC950, &qword_264D709A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - v13;
  v53 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
  v15 = *(v53 - 8);
  v16 = MEMORY[0x28223BE20](v53);
  v51 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  sub_264D5B1F4(a1, a3, type metadata accessor for STExpressIntroduction.STSettings);
  v20 = *a2;
  if (*a2 && (*(a2 + 8) & 1) != 0)
  {
    v49 = v8;
    v21 = *a1;
    v22 = v20;
    v23 = v21;
    v50 = a3;
    v24 = v10;
    v25 = a1;
    v26 = v9;
    v27 = v23;
    v28 = sub_264D5CAF8(v23, v22);

    v9 = v26;
    a1 = v25;
    v10 = v24;
    a3 = v50;

    *a3 = v28;
    v8 = v49;
    *(a3 + 8) = 1;
  }

  v29 = *(a2 + 9);
  if (v29 != 2 && (*(a2 + 9) & 0x100) != 0 && (v29 & 1) != 0)
  {
    *(a3 + 9) = v29 & 1;
    *(a3 + 10) = 1;
  }

  v30 = *(a2 + 11) | (*(a2 + 13) << 16);
  if (*(a2 + 11) != 2 && (*(a2 + 11) & 0x100) != 0)
  {
    v31 = *(a1 + 12);
    v32 = *(a1 + 13);
    v55[0] = *(a1 + 11);
    v55[1] = v31;
    v55[2] = v32;
    v54[0] = v30 & 1;
    v54[1] = 1;
    v54[2] = BYTE2(v30);
    sub_264D58620(v55, v54, v56);
    v33 = v56[1];
    v34 = v56[2];
    *(a3 + 11) = v56[0];
    *(a3 + 12) = v33;
    *(a3 + 13) = v34;
  }

  v35 = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  sub_264D5D24C(a2 + *(v35 + 28), v14);
  if ((*(v15 + 48))(v14, 1, v53) == 1)
  {
    result = sub_264D37A94(v14, &qword_27FFAC950, &qword_264D709A0);
  }

  else
  {
    sub_264D5D380(v14, v19, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings);
    if (v19[1] == 1 && *v19 == 1)
    {
      v37 = type metadata accessor for STExpressIntroduction.STSettings(0);
      v50 = (a3 + *(v37 + 28));
      sub_264D5D31C(v19, v50);
      v38 = v53;
      sub_264D4032C(&v19[*(v53 + 24)], v8);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_264D37A94(v8, &qword_27FFAC688, &qword_264D70960);
        v39 = a1 + *(v37 + 28);
        v40 = v51;
        sub_264D5B1F4(v39, v51, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings);
        result = sub_264D41370(v40 + *(v38 + 24), v50 + *(v38 + 24));
      }

      else
      {
        v43 = v8;
        v44 = v38;
        v45 = v52;
        sub_264D5D380(v43, v52, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
        v46 = *(v44 + 24);
        v47 = v50;
        sub_264D37A94(v50 + v46, &qword_27FFAC688, &qword_264D70960);
        sub_264D5D380(v45, v47 + v46, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
        result = (*(v10 + 56))(v47 + v46, 0, 1, v9);
      }
    }

    else
    {
      result = sub_264D5D2BC(v19, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings);
    }
  }

  v41 = *(a2 + *(v35 + 32));
  if (v41 != 2 && (v41 & 0x100) != 0 && (v41 & 1) != 0)
  {
    result = type metadata accessor for STExpressIntroduction.STSettings(0);
    v42 = a3 + *(result + 32);
    *v42 = v41 & 1;
    v42[1] = 1;
  }

  return result;
}

uint64_t sub_264D583C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC950, &qword_264D709A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  v22 = *a1;
  v23 = v13;
  sub_264D58740(&v22, a3);
  if (*a2)
  {
    v14 = *(a2 + 8);
    objc_storeStrong(a3, *a2);
    *(a3 + 8) = v14 & 1;
  }

  v15 = *(a2 + 9);
  if (v15 != 2)
  {
    *(a3 + 9) = v15 & 1;
    *(a3 + 10) = HIBYTE(v15) & 1;
  }

  v16 = *(a2 + 11) | (*(a2 + 13) << 16);
  if (*(a2 + 11) != 2)
  {
    *(a3 + 11) = *(a2 + 11) & 1;
    *(a3 + 12) = BYTE1(v16) & 1;
    *(a3 + 13) = BYTE2(v16);
  }

  v17 = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  sub_264D5D24C(a2 + *(v17 + 28), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_264D37A94(v8, &qword_27FFAC950, &qword_264D709A0);
  }

  else
  {
    sub_264D5D380(v8, v12, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings);
    v19 = type metadata accessor for STExpressIntroduction.STSettings(0);
    result = sub_264D41F0C(v12, a3 + *(v19 + 28));
  }

  v20 = *(a2 + *(v17 + 32));
  if (v20 != 2)
  {
    result = type metadata accessor for STExpressIntroduction.STSettings(0);
    v21 = (a3 + *(result + 32));
    *v21 = v20 & 1;
    v21[1] = HIBYTE(v20) & 1;
  }

  return result;
}

char *sub_264D58620@<X0>(char *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *result;
  v4 = result[2];
  if (a2[1] == 1)
  {
    v5 = v3 | *a2;
    if (result[2])
    {
      if (v4 == 1)
      {
        if (a2[2])
        {
          v6 = a3;
          v7 = sub_264D6EF28();

          LOBYTE(v4) = (v7 & 1) == 0;
          a3 = v6;
        }

        else
        {
          v9 = a3;

          a3 = v9;
          LOBYTE(v4) = 0;
        }
      }

      else
      {
        LOBYTE(v4) = a2[2];
      }
    }

    *a3 = v5 & 1;
    a3[1] = 1;
    a3[2] = v4;
  }

  else
  {
    v8 = result[1];
    *a3 = v3;
    a3[1] = v8;
    a3[2] = v4;
  }

  return result;
}

double sub_264D58740@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC688, &qword_264D70960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = *a1;
  v24 = *(a1 + 8);
  if (v24 == 1)
  {
    v9 = type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore(0);
    (*(v2 + *(v9 + 28)))();
  }

  v10 = sub_264D6EAF8();
  v23 = [v10 integerValue];

  v11 = sub_264D382F4(MEMORY[0x277D84F90]);
  v12 = objc_opt_self();
  sub_264D3C5A8(v11);

  v13 = sub_264D6E928();

  v14 = [v12 restrictionsWithIsEnabled:0 valueByAgePresetKey:v13];

  v15 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v7, 1, 1, v15);
  v17 = type metadata accessor for STExpressIntroduction.STSettings(0);
  v18 = (a2 + v17[7]);
  v19 = *(type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0) + 24);
  v16(&v18[v19], 1, 1, v15);
  *v18 = 0;
  sub_264D41370(v7, &v18[v19]);
  v20 = (a2 + v17[9]);
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *a2 = v14;
  *(a2 + 8) = 0;
  *(a2 + 12) = 256;
  *(a2 + v17[8]) = 0;
  sub_264D4143C(*v20, v20[1], v20[2], v20[3]);
  result = 0.0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v22 = a2 + v17[10];
  *v22 = v8;
  *(v22 + 8) = v24;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v23;
  return result;
}

uint64_t STExpressIntroduction.Internal.ReconcilingSettingsStore.save(settings:forUser:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  *(v3 + 64) = type metadata accessor for STExpressIntroduction.STSettings(0);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 88) = v5;
  *(v3 + 96) = v6;
  *(v3 + 25) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_264D58A64, 0, 0);
}

uint64_t sub_264D58A64()
{
  v27 = v0;
  sub_264D5B1F4(*(v0 + 48), *(v0 + 88), type metadata accessor for STExpressIntroduction.STSettings);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136380931;
    *(v0 + 32) = v5;
    *(v0 + 40) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v26);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2081;
    sub_264D5B1F4(v4, v6, type metadata accessor for STExpressIntroduction.STSettings);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D5D2BC(v4, type metadata accessor for STExpressIntroduction.STSettings);
    v15 = sub_264D3FD80(v12, v14, &v26);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Saving for user %{private}s settings %{private}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 88);

    sub_264D5D2BC(v16, type metadata accessor for STExpressIntroduction.STSettings);
  }

  v17 = *(v0 + 56);
  v18 = type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore(0);
  *(v0 + 104) = v18;
  v19 = (v17 + *(v18 + 20));
  v20 = v19[3];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  v25 = (*(v21 + 16) + **(v21 + 16));
  v22 = swift_task_alloc();
  *(v0 + 112) = v22;
  *v22 = v0;
  v22[1] = sub_264D58D70;
  v23 = *(v0 + 48);

  return v25(v23, v20, v21);
}

uint64_t sub_264D58D70()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264D58EC8, 0, 0);
  }
}

uint64_t sub_264D58EC8()
{
  v28 = v0;
  v1 = *(v0 + 25);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = (*(v0 + 56) + *(*(v0 + 104) + 24));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v26 = v2;
  v27 = v1;
  (*(v7 + 16))(&v26, v6, v7);
  sub_264D5B1F4(v4, v3, type metadata accessor for STExpressIntroduction.STSettings);
  v8 = sub_264D6E828();
  v9 = sub_264D6EB38();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 25);
    v11 = *(v0 + 96);
    v12 = *(v0 + 72);
    v13 = *(v0 + 80);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136380931;
    *(v0 + 16) = v11;
    *(v0 + 24) = v10;
    v16 = sub_264D6E998();
    v18 = sub_264D3FD80(v16, v17, &v26);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2081;
    sub_264D5B1F4(v12, v13, type metadata accessor for STExpressIntroduction.STSettings);
    v19 = sub_264D6E998();
    v21 = v20;
    sub_264D5D2BC(v12, type metadata accessor for STExpressIntroduction.STSettings);
    v22 = sub_264D3FD80(v19, v21, &v26);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_264D33000, v8, v9, "Saved for user %{private}s settings %{private}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v15, -1, -1);
    MEMORY[0x26674D8B0](v14, -1, -1);
  }

  else
  {
    v23 = *(v0 + 72);

    sub_264D5D2BC(v23, type metadata accessor for STExpressIntroduction.STSettings);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t STExpressIntroduction.Internal.ReconcilingSettingsStore.save(defaults:forUser:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  *(v3 + 112) = type metadata accessor for STExpressIntroduction.STSettings(0);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  *(v3 + 160) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 168) = v5;
  *(v3 + 176) = v6;
  *(v3 + 25) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_264D5926C, 0, 0);
}

uint64_t sub_264D5926C()
{
  v23 = v0;
  sub_264D5B1F4(*(v0 + 96), *(v0 + 168), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136380931;
    *(v0 + 80) = v5;
    *(v0 + 88) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    sub_264D5B1F4(v4, v6, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D5D2BC(v4, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v15 = sub_264D3FD80(v12, v14, &v22);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Saving for user %{private}s defaults %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 168);

    sub_264D5D2BC(v16, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v17 = *(v0 + 25);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 24) = v17;
  v18 = swift_task_alloc();
  *(v0 + 184) = v18;
  *v18 = v0;
  v18[1] = sub_264D594EC;
  v19 = *(v0 + 144);
  v20 = *(v0 + 96);

  return STExpressIntroduction.Internal.ReconcilingSettingsStore.load(forUser:withDefaults:)(v19, (v0 + 16), v20);
}

uint64_t sub_264D594EC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_264D59C2C;
  }

  else
  {
    v2 = sub_264D59600;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264D59600()
{
  v22 = v0;
  sub_264D5B1F4(*(v0 + 144), *(v0 + 136), type metadata accessor for STExpressIntroduction.STSettings);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 176);
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136380931;
    *(v0 + 64) = v4;
    *(v0 + 72) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2081;
    sub_264D5B1F4(v5, v6, type metadata accessor for STExpressIntroduction.STSettings);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D5D2BC(v5, type metadata accessor for STExpressIntroduction.STSettings);
    v15 = sub_264D3FD80(v12, v14, &v21);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Before save, loaded for user %{private}s merged settings %{private}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 136);

    sub_264D5D2BC(v16, type metadata accessor for STExpressIntroduction.STSettings);
  }

  v17 = *(v0 + 25);
  *(v0 + 32) = *(v0 + 176);
  *(v0 + 40) = v17;
  v18 = swift_task_alloc();
  *(v0 + 200) = v18;
  *v18 = v0;
  v18[1] = sub_264D59884;
  v19 = *(v0 + 144);

  return STExpressIntroduction.Internal.ReconcilingSettingsStore.save(settings:forUser:)(v19, (v0 + 32));
}

uint64_t sub_264D59884()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_264D59CD0;
  }

  else
  {
    v2 = sub_264D59998;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264D59998()
{
  v23 = v0;
  sub_264D5B1F4(*(v0 + 144), *(v0 + 120), type metadata accessor for STExpressIntroduction.STSettings);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 176);
    v21 = *(v0 + 144);
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136380931;
    *(v0 + 48) = v4;
    *(v0 + 56) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2081;
    sub_264D5B1F4(v5, v6, type metadata accessor for STExpressIntroduction.STSettings);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D5D2BC(v5, type metadata accessor for STExpressIntroduction.STSettings);
    v15 = sub_264D3FD80(v12, v14, &v22);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Saved for user %{private}s merged settings %{private}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);

    v16 = v21;
  }

  else
  {
    v17 = *(v0 + 144);
    v18 = *(v0 + 120);

    sub_264D5D2BC(v18, type metadata accessor for STExpressIntroduction.STSettings);
    v16 = v17;
  }

  sub_264D5D2BC(v16, type metadata accessor for STExpressIntroduction.STSettings);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_264D59C2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264D59CD0()
{
  sub_264D5D2BC(*(v0 + 144), type metadata accessor for STExpressIntroduction.STSettings);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264D59D90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_264D3D1A4;

  return STExpressIntroduction.Internal.ReconcilingSettingsStore.load(forUser:withDefaults:)(a1, a2, a3);
}

uint64_t sub_264D59E40(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D41720;

  return STExpressIntroduction.Internal.ReconcilingSettingsStore.save(settings:forUser:)(a1, a2);
}

uint64_t sub_264D59EE4(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D41720;

  return STExpressIntroduction.Internal.ReconcilingSettingsStore.save(defaults:forUser:)(a1, a2);
}

void *sub_264D59F98()
{
  v0 = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore(0);
  __swift_allocate_value_buffer(v0, qword_281222770);
  v1 = __swift_project_value_buffer(v0, qword_281222770);
  v2 = [objc_opt_self() standardUserDefaults];
  result = sub_264D6E838();
  *(v1 + *(v0 + 20)) = v2;
  v4 = (v1 + *(v0 + 24));
  *v4 = sub_264D5A06C;
  v4[1] = 0;
  return result;
}

uint64_t STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore.init(userDefaults:getCurrentMonotonicClockNanosecs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_264D6E838();
  result = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore(0);
  *(a4 + *(result + 20)) = a1;
  v9 = (a4 + *(result + 24));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t static STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281222768 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore(0);
  v3 = __swift_project_value_buffer(v2, qword_281222770);
  return sub_264D5B1F4(v3, a1, type metadata accessor for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore);
}

BOOL STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore.wasUserRecentlyCreated(_:)(uint64_t *a1)
{
  if (a1[1])
  {
    return 0;
  }

  v1 = *a1;
  v2 = sub_264D5A304();
  if (!*(v2 + 16) || (v3 = sub_264D5B5FC(v1), (v4 & 1) == 0))
  {

    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);

  v6 = sub_264D5A460(v5);
  v7 = sub_264D6E828();
  v8 = sub_264D6EB18();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446466;
    v11 = sub_264D6E998();
    v13 = sub_264D3FD80(v11, v12, &v16);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1026;
    *(v9 + 14) = v6;
    _os_log_impl(&dword_264D33000, v7, v8, "User %{public}s was created on this device with isExpired: %{BOOL,public}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26674D8B0](v10, -1, -1);
    MEMORY[0x26674D8B0](v9, -1, -1);
  }

  return !v6;
}

uint64_t sub_264D5A304()
{
  v1 = *(v0 + *(type metadata accessor for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore(0) + 20));
  v2 = sub_264D6E958();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_264D6EC28();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_264D37A94(v10, &qword_27FFAC5A0, &qword_264D6FD40);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD20, &qword_264D72148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = sub_264D381F8(MEMORY[0x277D84F90]);
    goto LABEL_9;
  }

  v4 = v7;
LABEL_9:
  v5 = sub_264D5AB5C(sub_264D5A844, 0, sub_264D349D0, 0, v4);

  return v5;
}

BOOL sub_264D5A460(unint64_t a1)
{
  v3 = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore(0);
  v4 = (*(v1 + *(v3 + 24)))();
  if (v4 > a1)
  {
    return v4 - a1 > 0x34630B89FFFLL;
  }

  v6 = v4;
  v7 = sub_264D6E828();
  v8 = sub_264D6EB28();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349312;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2050;
    *(v9 + 14) = a1;
    _os_log_impl(&dword_264D33000, v7, v8, "Current clock value %{public}llu is behind saved clock value %{public}llu; treating as expired", v9, 0x16u);
    MEMORY[0x26674D8B0](v9, -1, -1);
  }

  return 1;
}

Swift::Void __swiftcall STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore.markUserAsRecentlyCreated(withDSID:)(Swift::Int withDSID)
{
  v2 = v1;
  v4 = sub_264D6E828();
  v5 = sub_264D6EB38();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = withDSID;
    _os_log_impl(&dword_264D33000, v4, v5, "Marking user with DSID %ld as recently created", v6, 0xCu);
    MEMORY[0x26674D8B0](v6, -1, -1);
  }

  v7 = sub_264D5A304();
  v8 = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore(0);
  v9 = (*(v2 + *(v8 + 24)))();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_264D373BC(v9, withDSID, isUniquelyReferenced_nonNull_native);
  sub_264D5ADEC(sub_264D5ADA0, 0, sub_264D368E0, 0, v7);

  v11 = *(v2 + *(v8 + 20));
  v12 = sub_264D6E928();

  v13 = sub_264D6E958();
  [v11 setObject:v12 forKey:v13];
}

void STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore.removeRecentCreationMark(forUser:)(uint64_t *a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v6 = sub_264D5A304();
    sub_264D5B7D4(v2);
    sub_264D5ADEC(sub_264D5ADA0, 0, sub_264D368E0, 0, v6);

    v3 = *(v1 + *(type metadata accessor for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore(0) + 20));
    v4 = sub_264D6E928();

    v5 = sub_264D6E958();
    [v3 setObject:v4 forKey:v5];
  }
}

uint64_t *sub_264D5A844@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = HIBYTE(v3) & 0xF;
  v5 = *result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v27 = 0;
    v26 = 1;
LABEL_66:
    *a2 = v27;
    *(a2 + 8) = v26 & 1;
    return result;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v28 = a2;

    v8 = sub_264D5BD80(v2, v3, 10);
    v26 = v29;

    a2 = v28;
LABEL_63:
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v8;
    }

    goto LABEL_66;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      result = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v30 = a2;
      result = sub_264D6ED48();
      a2 = v30;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v15 = result + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            result = (result + 1);
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = result + 1;
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v32 = v4;
        v26 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v31[0] = *result;
  v31[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v31;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v31 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v18 = v31 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_264D5AB5C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t a5)
{
  v7 = a5 + 64;
  v8 = 1 << *(a5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a5 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v25 = MEMORY[0x277D84F90];
  while (v10)
  {
LABEL_10:
    v14 = __clz(__rbit64(v10)) | (v12 << 6);
    v15 = (*(a5 + 48) + 16 * v14);
    v16 = *(*(a5 + 56) + 8 * v14);
    v17 = v15[1];
    v10 &= v10 - 1;
    v30[0] = *v15;
    v30[1] = v17;
    v29 = v16;

    a1(&v27, v30);
    if (v28)
    {
    }

    else
    {
      v18 = v27;
      a3(&v27, &v29);

      if ((v28 & 1) == 0)
      {
        v24 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_264D5B0F0(0, *(v25 + 2) + 1, 1, v25);
        }

        v20 = *(v25 + 2);
        v19 = *(v25 + 3);
        if (v20 >= v19 >> 1)
        {
          v25 = sub_264D5B0F0((v19 > 1), v20 + 1, 1, v25);
        }

        *(v25 + 2) = v20 + 1;
        v21 = &v25[16 * v20];
        *(v21 + 4) = v18;
        *(v21 + 5) = v24;
      }
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  if (*(v25 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD28, &qword_264D72150);
    v22 = sub_264D6EDE8();
  }

  else
  {
    v22 = MEMORY[0x277D84F98];
  }

  v30[0] = v22;
  sub_264D5C8E8(v25, 1, v30);

  return v30[0];
}

uint64_t sub_264D5ADA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264D6EF18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_264D5ADEC(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v41 = MEMORY[0x277D84F90];
    sub_264D5C780(0, v5, 0);
    v8 = v41;
    v9 = a5 + 64;
    v10 = sub_264D6EC48();
    v11 = 0;
    v12 = *(a5 + 36);
    v32 = v5;
    v33 = v12;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a5 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_26;
      }

      if (v12 != *(a5 + 36))
      {
        goto LABEL_27;
      }

      v36 = v11;
      v15 = *(*(a5 + 48) + 8 * v10);
      v37 = *(*(a5 + 56) + 8 * v10);
      v38 = v15;
      a1(v39, &v38);
      a3(&v40, &v37);
      v16 = v39[0];
      v17 = v39[1];
      v18 = v40;
      v19 = v8;
      v41 = v8;
      v8 = *(v8 + 16);
      v20 = v19[3];
      if (v8 >= v20 >> 1)
      {
        sub_264D5C780((v20 > 1), v8 + 1, 1);
        v19 = v41;
      }

      v19[2] = v8 + 1;
      v21 = &v19[3 * v8];
      v21[4] = v16;
      v21[5] = v17;
      v21[6] = v18;
      v13 = 1 << *(a5 + 32);
      if (v10 >= v13)
      {
        goto LABEL_28;
      }

      v9 = a5 + 64;
      v22 = *(a5 + 64 + 8 * v14);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_29;
      }

      v8 = v19;
      v12 = v33;
      if (v33 != *(a5 + 36))
      {
        goto LABEL_30;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v13 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v14 << 6;
        v25 = v14 + 1;
        v26 = (a5 + 72 + 8 * v14);
        while (v25 < (v13 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_264D5D240(v10, v33, 0);
            v13 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_264D5D240(v10, v33, 0);
      }

LABEL_4:
      v11 = v36 + 1;
      v10 = v13;
      if (v36 + 1 == v32)
      {
        v6 = v8;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v6 + 16))
    {
      v29 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC640, &qword_264D72310);
      v30 = sub_264D6EDE8();
      v6 = v29;
    }

    else
    {
      v30 = MEMORY[0x277D84F98];
    }

    v39[0] = v30;
    sub_264D5CFE8(v6, 1, v39);

    return v39[0];
  }

  return result;
}

char *sub_264D5B0F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD30, &qword_264D72158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_264D5B1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_264D5B25C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC7A0, &unk_264D70160);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_264D5B2F0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_264D5B364@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_264D5B394(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_264D6EF28())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_264D5B44C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_264D5B4B8(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_264D414E0(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_264D6EBE8();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_264D5B584(uint64_t a1, uint64_t a2)
{
  sub_264D6EFC8();
  sub_264D6E9B8();
  v4 = sub_264D6F008();

  return sub_264D5B394(a1, a2, v4);
}

unint64_t sub_264D5B5FC(uint64_t a1)
{
  v2 = sub_264D6EFB8();

  return sub_264D5B44C(a1, v2);
}

double sub_264D5B730@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_264D5B584(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_264D62328();
      v10 = v12;
    }

    sub_264D37670((*(v10 + 56) + 32 * v8), a3);
    sub_264D5B868(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_264D5B7D4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_264D5B5FC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_264D624CC();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_264D5BA18(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_264D5B868(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264D6EC58() + 1) & ~v5;
    do
    {
      sub_264D6EFC8();

      sub_264D6E9B8();
      v10 = sub_264D6F008();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_264D5BA18(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264D6EC58() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_264D6EFB8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_264D5BBB0(uint64_t a1)
{
  result = sub_264D6E848();
  if (v2 <= 0x3F)
  {
    result = sub_264D40E70(319, qword_281222578, &protocol descriptor for STExpressIntroduction.Internal.STDataSource);
    if (v3 <= 0x3F)
    {
      result = sub_264D40E70(319, &qword_281222570, &protocol descriptor for STExpressIntroduction.Internal.UserContextStore);
      if (v4 <= 0x3F)
      {
        result = sub_264D40ECC();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_264D5BCD4(uint64_t a1)
{
  result = sub_264D6E848();
  if (v2 <= 0x3F)
  {
    result = sub_264D414E0(319, &qword_281222418, 0x277CBEBD0);
    if (v3 <= 0x3F)
    {
      result = sub_264D40ECC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unsigned __int8 *sub_264D5BD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_264D6EA48();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_264D5C30C(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_264D6ED48();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_264D5C30C(uint64_t a1, unint64_t a2)
{
  v2 = sub_264D6EA58();
  v6 = sub_264D5C38C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_264D5C38C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_264D6EC18();
    if (!v9 || (v10 = v9, v11 = sub_264D5B25C(v9, 0), v12 = sub_264D5C4E4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_264D6E9A8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_264D6E9A8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_264D6ED48();
LABEL_4:

  return sub_264D6E9A8();
}

unint64_t sub_264D5C4E4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_264D5C704(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_264D6EA08();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_264D6ED48();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_264D5C704(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_264D6E9E8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_264D5C704(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_264D6EA18();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26674CBF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_264D5C780(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D5C7A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_264D5C7A0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD10, &qword_264D72130);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD18, &unk_264D72138);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_264D5C8E8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v7 = *(result + 32);
  v8 = *(result + 40);
  v9 = *a3;
  result = sub_264D5B5FC(v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v15) = v10;
  if (v9[3] < v14)
  {
    sub_264D61B34(v14, v5 & 1);
    result = sub_264D5B5FC(v7);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_264D6EF68();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v17 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17[(result >> 6) + 8] |= 1 << result;
    *(v17[6] + 8 * result) = v7;
    *(v17[7] + 8 * result) = v8;
    v19 = v17[2];
    v13 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v17[2] = v20;
    v15 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v18 = result;
  sub_264D624CC();
  result = v18;
  v17 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  *(v17[7] + 8 * result) = v8;
  v15 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 56);
    v3 = 1;
    while (1)
    {
      v6 = *(v5 - 1);
      v8 = *v5;
      v21 = *a3;
      result = sub_264D5B5FC(v6);
      v23 = v21[2];
      v24 = (v22 & 1) == 0;
      v13 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (v13)
      {
        goto LABEL_23;
      }

      v7 = v22;
      if (v21[3] < v25)
      {
        sub_264D61B34(v25, 1);
        result = sub_264D5B5FC(v6);
        if ((v7 & 1) != (v26 & 1))
        {
          goto LABEL_5;
        }
      }

      v27 = *a3;
      if (v7)
      {
        *(v27[7] + 8 * result) = v8;
      }

      else
      {
        v27[(result >> 6) + 8] |= 1 << result;
        *(v27[6] + 8 * result) = v6;
        *(v27[7] + 8 * result) = v8;
        v28 = v27[2];
        v13 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v27[2] = v29;
      }

      v5 += 2;
      if (!--v15)
      {
        return result;
      }
    }
  }

  return result;
}

id sub_264D5CAF8(void *a1, void *a2)
{
  v4 = [a1 restrictionsMutableCopy];
  if ([a2 isEnabled])
  {
    [v4 setIsEnabled_];
  }

  v5 = [a2 tvShowsRating];
  if (v5)
  {
    v6 = [a1 tvShowsRating];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 compare_];
      if (v8 == -1)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      if (v8 == -1)
      {
        v5 = v7;
      }
    }
  }

  [v4 setTvShowsRating_];

  v10 = [a2 appsRating];
  if (v10)
  {
    v11 = [a1 appsRating];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 compare_];
      if (v13 == -1)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      if (v13 == -1)
      {
        v10 = v12;
      }
    }
  }

  [v4 setAppsRating_];

  v15 = [a2 moviesRating];
  if (v15)
  {
    v16 = [a1 moviesRating];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 compare_];
      if (v18 == -1)
      {
        v19 = v15;
      }

      else
      {
        v19 = v17;
      }

      if (v18 == -1)
      {
        v15 = v17;
      }
    }
  }

  [v4 setMoviesRating_];

  v20 = [a2 allowExplicitBooks];
  v21 = [a1 allowExplicitBooks];
  if (v20 >= 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = v21;
  }

  [v4 setAllowExplicitBooks_];
  v23 = [a2 allowExplicitMediaContent];
  v24 = [a1 allowExplicitMediaContent];
  if (v23 >= 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = v24;
  }

  [v4 setAllowExplicitMediaContent_];
  v26 = [a2 allowMusicVideos];
  v27 = [a1 allowMusicVideos];
  if (v26 >= 2)
  {
    v28 = 2;
  }

  else
  {
    v28 = v27;
  }

  [v4 setAllowMusicVideos_];
  v29 = [a2 allowMusicProfiles];
  v30 = [a1 allowMusicProfiles];
  if (v29 >= 2)
  {
    v31 = 2;
  }

  else
  {
    v31 = v30;
  }

  [v4 setAllowMusicProfiles_];
  v32 = [a2 allowWebContentSearchInSiri];
  v33 = [a1 allowWebContentSearchInSiri];
  if (v32 >= 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = v33;
  }

  [v4 setAllowWebContentSearchInSiri_];
  v35 = [a2 allowDeletingApps];
  v36 = [a1 allowDeletingApps];
  if (v35 >= 2)
  {
    v37 = 2;
  }

  else
  {
    v37 = v36;
  }

  [v4 setAllowDeletingApps_];
  v38 = [a2 allowExternalIntelligenceIntegrations];
  v39 = [a1 allowExternalIntelligenceIntegrations];
  if (v38 >= 2)
  {
    v40 = 2;
  }

  else
  {
    v40 = v39;
  }

  [v4 setAllowExternalIntelligenceIntegrations_];
  v41 = [a2 allowWritingTools];
  v42 = [a1 allowWritingTools];
  if (v41 >= 2)
  {
    v43 = 2;
  }

  else
  {
    v43 = v42;
  }

  [v4 setAllowWritingTools_];
  v44 = [a2 allowImageCreation];
  v45 = [a1 allowImageCreation];
  if (v44 >= 2)
  {
    v46 = 2;
  }

  else
  {
    v46 = v45;
  }

  [v4 setAllowImageCreation_];
  v47 = [a2 allowExplicitLanguageInSiri];
  v48 = [a1 allowExplicitLanguageInSiri];
  if (v47 >= 2)
  {
    v49 = 2;
  }

  else
  {
    v49 = v48;
  }

  [v4 setAllowExplicitLanguageInSiri_];
  v50 = [a2 webFilterState];
  if (!v50)
  {
    v50 = [a1 webFilterState];
  }

  [v4 setWebFilterState_];
  v51 = [v4 restrictionsImmutableCopy];

  return v51;
}

unint64_t sub_264D5CFE8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_264D5B584(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_264D61D98(v15, v5 & 1);
    result = sub_264D5B584(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_264D6EF68();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v21 = (v18[6] + 16 * result);
    *v21 = v8;
    v21[1] = v7;
    *(v18[7] + 8 * result) = v9;
    v22 = v18[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v23;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_264D62618();
  result = v20;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  *(v18[7] + 8 * v19) = v9;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v25 = *a3;

      result = sub_264D5B584(v7, v6);
      v27 = v25[2];
      v28 = (v26 & 1) == 0;
      v14 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v26;
      if (v25[3] < v29)
      {
        sub_264D61D98(v29, 1);
        result = sub_264D5B584(v7, v6);
        if ((v8 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      v31 = *a3;
      if (v8)
      {
        v24 = result;

        *(v31[7] + 8 * v24) = v9;
      }

      else
      {
        v31[(result >> 6) + 8] |= 1 << result;
        v32 = (v31[6] + 16 * result);
        *v32 = v7;
        v32[1] = v6;
        *(v31[7] + 8 * result) = v9;
        v33 = v31[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v31[2] = v34;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_264D5D240(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_264D5D24C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC950, &qword_264D709A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D5D2BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264D5D31C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D5D380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_264D5D3E8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = *MEMORY[0x277D4BC10];
    v4 = objc_allocWithZone(MEMORY[0x277D26578]);
    v5 = v3;
    v6 = sub_264D6E958();
    v7 = [v4 initWithName:v6 sharedContainer:v5];

    v8 = *(v0 + 16);
    *(v0 + 16) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

id sub_264D5D4A8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = *MEMORY[0x277D4BC10];
    v4 = objc_allocWithZone(MEMORY[0x277D26578]);
    v5 = v3;
    v6 = sub_264D6E958();
    v7 = [v4 initWithName:v6 sharedContainer:v5];

    v8 = *(v0 + 24);
    *(v0 + 24) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

id sub_264D5D568()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_264D5D5C0();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_264D5D5C0()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D4BC10];
  v2 = [v0 storesForSharedContainer_];
  v3 = sub_264D6EAD8();

  v4 = objc_allocWithZone(MEMORY[0x277D26578]);
  v5 = v1;
  v6 = sub_264D6E958();
  v7 = [v4 initWithName:v6 sharedContainer:v5];

  LOBYTE(v4) = sub_264D5D6CC(0x656D69746E776F64, 0xE800000000000000, v3);

  if ((v4 & 1) == 0)
  {
    [v7 setActive_];
  }

  return v7;
}

uint64_t sub_264D5D6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_264D6EFC8();
  sub_264D6E9B8();
  v6 = sub_264D6F008();
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
    if (v11 || (sub_264D6EF28() & 1) != 0)
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

id sub_264D5D7C4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = *MEMORY[0x277D4BC10];
    v4 = objc_allocWithZone(MEMORY[0x277D26578]);
    v5 = v3;
    v6 = sub_264D6E958();
    v7 = [v4 initWithName:v6 sharedContainer:v5];

    v8 = *(v0 + 40);
    *(v0 + 40) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

id sub_264D5D880()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = *MEMORY[0x277D4BC10];
    v4 = objc_allocWithZone(MEMORY[0x277D26578]);
    v5 = v3;
    v6 = sub_264D6E958();
    v7 = [v4 initWithName:v6 sharedContainer:v5];

    v8 = *(v0 + 48);
    *(v0 + 48) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

id sub_264D5D93C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = *MEMORY[0x277D4BC10];
    v4 = objc_allocWithZone(MEMORY[0x277D26578]);
    v5 = v3;
    v6 = sub_264D6E958();
    v7 = [v4 initWithName:v6 sharedContainer:v5];

    v8 = *(v0 + 56);
    *(v0 + 56) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t LocalRestrictions.LocalRestrictionsError.hashValue.getter()
{
  sub_264D6EFC8();
  MEMORY[0x26674D1D0](0);
  return sub_264D6F008();
}

char *LocalRestrictions.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  v1 = OBJC_IVAR____TtC15ScreenTimeSwift17LocalRestrictions_logger;
  if (qword_27FFAC308 != -1)
  {
    swift_once();
  }

  v2 = sub_264D6E848();
  v3 = __swift_project_value_buffer(v2, qword_27FFB1638);
  (*(*(v2 - 8) + 16))(&v0[v1], v3, v2);
  return v0;
}

char *LocalRestrictions.init()()
{
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  *(v0 + 1) = 0u;
  v1 = OBJC_IVAR____TtC15ScreenTimeSwift17LocalRestrictions_logger;
  if (qword_27FFAC308 != -1)
  {
    swift_once();
  }

  v2 = sub_264D6E848();
  v3 = __swift_project_value_buffer(v2, qword_27FFB1638);
  (*(*(v2 - 8) + 16))(&v0[v1], v3, v2);
  return v0;
}

void sub_264D5DBF0()
{
  v0 = sub_264D5D3E8();
  [v0 clearAllSettings];
}

void sub_264D5DC34(void *a1@<X8>)
{
  v2 = sub_264D5D3E8();
  v3 = [v2 userSafety];

  v4 = [v3 scanningPolicy];
  if (!v4)
  {
    v4 = [objc_opt_self() nonePolicy];
  }

  *a1 = v4;
}

void sub_264D5DCD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_264D5D3E8();
  v3 = [v2 userSafety];

  [v3 setScanningPolicy_];
}

id sub_264D5DD48()
{
  v0 = sub_264D5D3E8();
  v1 = [v0 userSafety];

  v2 = [v1 scanningPolicy];
  if (v2)
  {
    return v2;
  }

  v4 = [objc_opt_self() nonePolicy];

  return v4;
}

void sub_264D5DDE8(void *a1)
{
  v2 = sub_264D5D3E8();
  v3 = [v2 userSafety];

  [v3 setScanningPolicy_];
}

void (*sub_264D5DE60(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = sub_264D5D3E8();
  v4 = [v3 userSafety];

  v5 = [v4 scanningPolicy];
  if (!v5)
  {
    v5 = [objc_opt_self() nonePolicy];
  }

  *a1 = v5;
  return sub_264D5DF18;
}

void sub_264D5DF18(uint64_t a1, char a2)
{
  v5 = *a1;
  v2 = *(*(a1 + 8) + 16);
  if (a2)
  {
    v3 = v5;
    v4 = [v2 userSafety];
    [v4 setScanningPolicy_];
  }

  else
  {
    v3 = [v2 userSafety];
    [v3 setScanningPolicy_];
  }
}

void sub_264D5DFD0(char a1)
{
  v3 = sub_264D5D7C4();
  v4 = [v3 account];

  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v4 setDenyiCloudLogout_];

  v6 = [*(v1 + 40) dateAndTime];
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v6 setRequireAutomaticDateAndTime_];
}

void sub_264D5E0C8(void *a1)
{
  v2 = sub_264D5D880();
  v3 = [v2 webContent];
  v4 = sub_264D64174(a1);
  [v3 setBlockedByFilter_];
}

void sub_264D5E154(char a1)
{
  v2 = sub_264D5D93C();
  v3 = [v2 eyeRelief];

  if (a1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setForceScreenDistanceOn_];
}

void sub_264D5E200(void *a1)
{
  if (a1 && (v1 = [a1 payloadApps]) != 0)
  {
    v2 = v1;
    v3 = sub_264D6EAA8();

    v4 = sub_264D5D4A8();
    v5 = [v4 shield];

    v6 = *(v3 + 16);
    if (v6)
    {
      v19 = MEMORY[0x277D84F90];
      sub_264D6ED78();
      v7 = v3 + 40;
      do
      {
        v8 = objc_allocWithZone(MEMORY[0x277D26550]);

        v9 = sub_264D6E958();
        [v8 initWithBundleIdentifier_];

        sub_264D6ED58();
        sub_264D6ED88();
        sub_264D6ED98();
        sub_264D6ED68();
        v7 += 16;
        --v6;
      }

      while (v6);
LABEL_10:

      v17 = v19;
      goto LABEL_12;
    }
  }

  else
  {
    v10 = sub_264D5D4A8();
    v5 = [v10 shield];

    v11 = [objc_opt_self() defaultAlwaysAllowBundleIDs];
    v12 = sub_264D6EAA8();

    v13 = *(v12 + 16);
    if (v13)
    {
      v19 = MEMORY[0x277D84F90];
      sub_264D6ED78();
      v14 = v12 + 40;
      do
      {
        v15 = objc_allocWithZone(MEMORY[0x277D26550]);

        v16 = sub_264D6E958();
        [v15 initWithBundleIdentifier_];

        sub_264D6ED58();
        sub_264D6ED88();
        sub_264D6ED98();
        sub_264D6ED68();
        v14 += 16;
        --v13;
      }

      while (v13);
      goto LABEL_10;
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_12:
  sub_264D6456C(v17);

  sub_264D414E0(0, &qword_27FFACCF8, 0x277D26550);
  sub_264D64760(&qword_27FFACD40, &qword_27FFACCF8, 0x277D26550);
  v18 = sub_264D6EAC8();

  [v5 setUnshieldableApplications_];
}

void sub_264D5E518(char a1, char a2)
{
  v2 = MEMORY[0x277D264F0];
  if ((a2 & 1) == 0)
  {
    v2 = MEMORY[0x277D26500];
  }

  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D26510];
  }

  v3 = *v2;
  v4 = sub_264D5D568();
  v5 = [v4 screenTime];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD48, &qword_264D72170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264D72160;
  *(inited + 32) = [objc_opt_self() all];
  *(inited + 40) = v3;
  v7 = v3;
  sub_264D38308(inited);
  swift_setDeallocating();
  sub_264D646F8(inited + 32);
  sub_264D414E0(0, &qword_27FFACD00, 0x277D26560);
  type metadata accessor for MOScreenTimeShieldPolicy(0);
  sub_264D64760(&qword_27FFACD58, &qword_27FFACD00, 0x277D26560);
  v8 = sub_264D6E928();

  [v5 setCategoryShieldPolicies_];
}

uint64_t sub_264D5E6A8(uint64_t a1)
{
  v2 = [objc_opt_self() storesForSharedContainer_];
  v3 = sub_264D6EAD8();

  LOBYTE(v2) = sub_264D5D6CC(0x656D69746E776F64, 0xE800000000000000, v3);

  if (v2)
  {
    v5 = sub_264D5D568();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_264D647B0;
    *(v7 + 24) = v6;
    v9[4] = sub_264D647B8;
    v9[5] = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_264D5EA38;
    v9[3] = &block_descriptor_1;
    v8 = _Block_copy(v9);

    [v5 batchUpdate_];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_264D5E87C(void *a1, unint64_t a2)
{
  if (a2 <= 4)
  {
    [a1 setActive_];
    v4 = [a1 shield];
    sub_264D414E0(0, &qword_27FFACD90, 0x277D26558);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_264D414E0(0, &qword_27FFACCF8, 0x277D26550);
    v6 = sub_264D6EA98();
    v7 = [ObjCClassFromMetadata allPolicyWithExcludedContent_];

    [v4 setApplicationCategories_];
    v8 = [a1 shield];
    sub_264D414E0(0, &qword_27FFACDA0, 0x277D265A8);
    v9 = swift_getObjCClassFromMetadata();
    sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
    v10 = sub_264D6EA98();
    v11 = [v9 allPolicyWithExcludedContent_];

    [v8 setWebDomainCategories_];
  }
}

void sub_264D5EA38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_264D5EA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = *MEMORY[0x277D4BC10];
  v10 = [v8 storesForSharedContainer_];
  v11 = sub_264D6EAD8();

  v12 = objc_allocWithZone(MEMORY[0x277D26578]);
  v13 = v9;
  v14 = sub_264D6E958();
  v15 = [v12 initWithName:v14 sharedContainer:v13];

  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_264D647F8;
  *(v17 + 24) = v16;
  v20[4] = sub_264D6671C;
  v20[5] = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_264D5EA38;
  v20[3] = &block_descriptor_13;
  v18 = _Block_copy(v20);

  [v15 batchUpdate_];

  _Block_release(v18);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

void sub_264D5ECAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_264D5D6CC(a3, a4, a2) & 1) == 0)
  {
    [a1 setActive_];
  }

  v9 = &selRef_newConnection;
  v10 = [a1 shield];
  if (a5)
  {
    v11 = *(a5 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v24 = MEMORY[0x277D84F90];
      sub_264D6ED78();
      v13 = a5 + 40;
      do
      {
        v14 = objc_allocWithZone(MEMORY[0x277D26550]);

        v15 = sub_264D6E958();
        [v14 initWithBundleIdentifier_];

        sub_264D6ED58();
        sub_264D6ED88();
        sub_264D6ED98();
        sub_264D6ED68();
        v13 += 16;
        --v11;
      }

      while (v11);
      v12 = v24;
      v9 = &selRef_newConnection;
    }
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  sub_264D6456C(v12);

  sub_264D414E0(0, &qword_27FFACCF8, 0x277D26550);
  sub_264D64760(&qword_27FFACD40, &qword_27FFACCF8, 0x277D26550);
  v16 = sub_264D6EAC8();

  [v10 setUnshieldableApplications_];

  v17 = [a1 v9[75]];
  if (a6)
  {
    v18 = *(a6 + 16);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v25 = MEMORY[0x277D84F90];
      sub_264D6ED78();
      v20 = a6 + 40;
      do
      {
        v21 = objc_allocWithZone(MEMORY[0x277D265A0]);

        v22 = sub_264D6E958();
        [v21 initWithDomain_];

        sub_264D6ED58();
        sub_264D6ED88();
        sub_264D6ED98();
        sub_264D6ED68();
        v20 += 16;
        --v18;
      }

      while (v18);
      v19 = v25;
    }
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  sub_264D64D60(v19);

  sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
  sub_264D64760(&qword_27FFACD98, &qword_27FFACD08, 0x277D265A0);
  v23 = sub_264D6EAC8();

  [v17 setUnshieldableWebDomains_];
}

uint64_t sub_264D5F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v12 = objc_opt_self();
  v13 = *MEMORY[0x277D4BC10];
  v14 = [v12 storesForSharedContainer_];
  v15 = sub_264D6EAD8();

  v16 = objc_allocWithZone(MEMORY[0x277D26578]);
  v17 = v13;
  v18 = sub_264D6E958();
  v19 = [v16 initWithName:v18 sharedContainer:v17];

  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 40) = v24;
  *(v20 + 48) = a6;
  *(v20 + 49) = a7;
  *(v20 + 56) = a3;
  *(v20 + 64) = a4;
  *(v20 + 72) = a5;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_264D64808;
  *(v21 + 24) = v20;
  aBlock[4] = sub_264D6671C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264D5EA38;
  aBlock[3] = &block_descriptor_23;
  v22 = _Block_copy(aBlock);

  [v19 batchUpdate_];

  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  return result;
}

void sub_264D5F26C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = a9;
  if ((sub_264D5D6CC(a3, a4, a2) & 1) == 0)
  {
    [a1 setActive_];
  }

  v15 = MEMORY[0x277D264F0];
  if ((a7 & 1) == 0)
  {
    v15 = MEMORY[0x277D26500];
  }

  if ((a6 & 1) == 0)
  {
    v15 = MEMORY[0x277D26510];
  }

  v123 = *v15;
  v16 = [a1 screenTime];
  v17 = v16;
  v121 = a1;
  v120 = a8;
  if (!a8)
  {
    v39 = 0;
    goto LABEL_25;
  }

  v117 = v16;
  v18 = *(a8 + 16);
  if (!v18)
  {
LABEL_24:
    sub_264D414E0(0, &qword_27FFACCF8, 0x277D26550);
    type metadata accessor for MOScreenTimeShieldPolicy(0);
    sub_264D64760(&qword_27FFACD40, &qword_27FFACCF8, 0x277D26550);
    v39 = sub_264D6E928();

    v14 = a9;
    a1 = v121;
    v17 = v117;
LABEL_25:
    [v17 setApplicationShieldPolicies_];

    v40 = [a1 screenTime];
    v41 = v40;
    if (v14)
    {
      v42 = *(v14 + 16);
      v118 = v40;
      if (v42)
      {
        v43 = v14 + 40;
        v44 = MEMORY[0x277D84F98];
        while (1)
        {

          v47 = sub_264D6E958();
          v48 = [objc_allocWithZone(MEMORY[0x277D26560]) initWithIdentifier_];

          v49 = v123;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = sub_264D5B640(v48);
          v53 = v44[2];
          v54 = (v52 & 1) == 0;
          v37 = __OFADD__(v53, v54);
          v55 = v53 + v54;
          if (v37)
          {
            goto LABEL_83;
          }

          v56 = v52;
          if (v44[3] < v55)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_35;
          }

          v60 = v51;
          sub_264D62780(&qword_27FFAC638, &qword_264D6FE70);
          v51 = v60;
          if (v56)
          {
LABEL_28:
            v45 = v44[7];
            v46 = *(v45 + 8 * v51);
            *(v45 + 8 * v51) = v49;

            goto LABEL_29;
          }

LABEL_36:
          v44[(v51 >> 6) + 8] |= 1 << v51;
          *(v44[6] + 8 * v51) = v48;
          *(v44[7] + 8 * v51) = v49;

          v58 = v44[2];
          v37 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v37)
          {
            goto LABEL_86;
          }

          v44[2] = v59;
LABEL_29:
          v43 += 16;
          if (!--v42)
          {
            goto LABEL_41;
          }
        }

        sub_264D62038(v55, isUniquelyReferenced_nonNull_native, &qword_27FFAC638, &qword_264D6FE70);
        v51 = sub_264D5B640(v48);
        if ((v56 & 1) != (v57 & 1))
        {
          v115 = &qword_27FFACD00;
          v116 = 0x277D26560;
          goto LABEL_89;
        }

LABEL_35:
        if (v56)
        {
          goto LABEL_28;
        }

        goto LABEL_36;
      }

LABEL_41:
      sub_264D414E0(0, &qword_27FFACD00, 0x277D26560);
      type metadata accessor for MOScreenTimeShieldPolicy(0);
      sub_264D64760(&qword_27FFACD58, &qword_27FFACD00, 0x277D26560);
      v61 = sub_264D6E928();

      v14 = a9;
      a1 = v121;
      v41 = v118;
      v62 = v120;
    }

    else
    {
      v61 = 0;
      v62 = v120;
    }

    [v41 setCategoryShieldPolicies_];

    v63 = [a1 screenTime];
    v64 = v63;
    if (a10)
    {
      v119 = v63;
      v65 = *(a10 + 16);
      if (v65)
      {
        v66 = a10 + 40;
        v67 = MEMORY[0x277D84F98];
        while (1)
        {
          v70 = objc_allocWithZone(MEMORY[0x277D265A0]);

          v71 = sub_264D6E958();
          v72 = [v70 initWithDomain_];

          v73 = v123;
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v75 = sub_264D5B690(v72);
          v77 = v67[2];
          v78 = (v76 & 1) == 0;
          v37 = __OFADD__(v77, v78);
          v79 = v77 + v78;
          if (v37)
          {
            goto LABEL_84;
          }

          v80 = v76;
          if (v67[3] < v79)
          {
            break;
          }

          if (v74)
          {
            goto LABEL_52;
          }

          v84 = v75;
          sub_264D62780(&qword_27FFACDB0, &qword_264D722F0);
          v75 = v84;
          if (v80)
          {
LABEL_45:
            v68 = v67[7];
            v69 = *(v68 + 8 * v75);
            *(v68 + 8 * v75) = v73;

            goto LABEL_46;
          }

LABEL_53:
          v67[(v75 >> 6) + 8] |= 1 << v75;
          *(v67[6] + 8 * v75) = v72;
          *(v67[7] + 8 * v75) = v73;

          v82 = v67[2];
          v37 = __OFADD__(v82, 1);
          v83 = v82 + 1;
          if (v37)
          {
            goto LABEL_87;
          }

          v67[2] = v83;
LABEL_46:
          v66 += 16;
          if (!--v65)
          {
            goto LABEL_58;
          }
        }

        sub_264D62038(v79, v74, &qword_27FFACDB0, &qword_264D722F0);
        v75 = sub_264D5B690(v72);
        if ((v80 & 1) != (v81 & 1))
        {
          v115 = &qword_27FFACD08;
          v116 = 0x277D265A0;
          goto LABEL_89;
        }

LABEL_52:
        if (v80)
        {
          goto LABEL_45;
        }

        goto LABEL_53;
      }

LABEL_58:
      sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
      type metadata accessor for MOScreenTimeShieldPolicy(0);
      sub_264D64760(&qword_27FFACD98, &qword_27FFACD08, 0x277D265A0);
      v85 = sub_264D6E928();

      v14 = a9;
      a1 = v121;
      v64 = v119;
      v62 = v120;
    }

    else
    {
      v85 = 0;
    }

    [v64 setWebDomainShieldPolicies_];

    v86 = [a1 shield];
    if (v62)
    {
      v87 = *(v62 + 16);
      v88 = MEMORY[0x277D84F90];
      if (v87)
      {
        v124 = MEMORY[0x277D84F90];
        sub_264D6ED78();
        v89 = v62 + 40;
        do
        {
          v90 = objc_allocWithZone(MEMORY[0x277D26550]);

          v91 = sub_264D6E958();
          [v90 initWithBundleIdentifier_];

          sub_264D6ED58();
          sub_264D6ED88();
          sub_264D6ED98();
          sub_264D6ED68();
          v89 += 16;
          --v87;
        }

        while (v87);
        v88 = v124;
        a1 = v121;
      }
    }

    else
    {
      v88 = MEMORY[0x277D84F90];
    }

    sub_264D6456C(v88);

    sub_264D414E0(0, &qword_27FFACCF8, 0x277D26550);
    sub_264D64760(&qword_27FFACD40, &qword_27FFACCF8, 0x277D26550);
    v92 = sub_264D6EAC8();

    [v86 setApplications_];

    v93 = [a1 shield];
    if (v14)
    {
      v94 = *(v14 + 16);
      if (v94)
      {
        sub_264D6ED78();
        v95 = v14 + 40;
        do
        {

          v96 = sub_264D6E958();
          [objc_allocWithZone(MEMORY[0x277D26560]) initWithIdentifier_];

          sub_264D6ED58();
          sub_264D6ED88();
          sub_264D6ED98();
          sub_264D6ED68();
          v95 += 16;
          --v94;
        }

        while (v94);
        v14 = a9;
        a1 = v121;
      }
    }

    sub_264D414E0(0, &qword_27FFACD90, 0x277D26558);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_264D414E0(0, &qword_27FFACD00, 0x277D26560);
    v98 = sub_264D6EA98();

    v99 = MEMORY[0x277D84F90];
    v100 = sub_264D6EA98();
    v101 = [ObjCClassFromMetadata specificPolicyWithCategories:v98 excludedContent:v100];

    [v93 setApplicationCategories_];
    v102 = [a1 shield];
    if (a10)
    {
      v103 = *(a10 + 16);
      if (v103)
      {
        v125 = v99;
        sub_264D6ED78();
        v104 = a10 + 40;
        do
        {
          v105 = objc_allocWithZone(MEMORY[0x277D265A0]);

          v106 = sub_264D6E958();
          [v105 initWithDomain_];

          sub_264D6ED58();
          sub_264D6ED88();
          sub_264D6ED98();
          sub_264D6ED68();
          v104 += 16;
          --v103;
        }

        while (v103);
        v99 = v125;
        v14 = a9;
        a1 = v121;
      }
    }

    sub_264D64D60(v99);

    sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
    sub_264D64760(&qword_27FFACD98, &qword_27FFACD08, 0x277D265A0);
    v107 = sub_264D6EAC8();

    [v102 setWebDomains_];

    v108 = [a1 shield];
    if (v14)
    {
      v109 = *(v14 + 16);
      if (v109)
      {
        sub_264D6ED78();
        v110 = v14 + 40;
        do
        {

          v111 = sub_264D6E958();
          [objc_allocWithZone(MEMORY[0x277D26560]) initWithIdentifier_];

          sub_264D6ED58();
          sub_264D6ED88();
          sub_264D6ED98();
          sub_264D6ED68();
          v110 += 16;
          --v109;
        }

        while (v109);
      }
    }

    sub_264D414E0(0, &qword_27FFACDA0, 0x277D265A8);
    v112 = swift_getObjCClassFromMetadata();
    v113 = sub_264D6EA98();

    v114 = sub_264D6EA98();
    v122 = [v112 specificPolicyWithCategories:v113 excludedContent:v114];

    [v108 setWebDomainCategories_];

    return;
  }

  v19 = a8 + 40;
  v20 = MEMORY[0x277D84F98];
  while (1)
  {
    v23 = objc_allocWithZone(MEMORY[0x277D26550]);

    v24 = sub_264D6E958();
    v25 = [v23 initWithBundleIdentifier_];

    v26 = v123;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v29 = sub_264D5B6E0(v25);
    v30 = v20[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v20[3] >= v32)
    {
      if (v27)
      {
        if (v28)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_264D62780(&qword_27FFACDA8, &unk_264D722E0);
        if (v33)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_264D62038(v32, v27, &qword_27FFACDA8, &unk_264D722E0);
      v34 = sub_264D5B6E0(v25);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_88;
      }

      v29 = v34;
      if (v33)
      {
LABEL_10:
        v21 = v20[7];
        v22 = *(v21 + 8 * v29);
        *(v21 + 8 * v29) = v26;

        goto LABEL_11;
      }
    }

    v20[(v29 >> 6) + 8] |= 1 << v29;
    *(v20[6] + 8 * v29) = v25;
    *(v20[7] + 8 * v29) = v26;

    v36 = v20[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_85;
    }

    v20[2] = v38;
LABEL_11:
    v19 += 16;
    if (!--v18)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  v115 = &qword_27FFACCF8;
  v116 = 0x277D26550;
LABEL_89:
  sub_264D414E0(0, v115, v116);
  sub_264D6EF68();
  __break(1u);
}

void sub_264D6004C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D4BC10];
  v8 = [v6 storesForSharedContainer_];
  v9 = sub_264D6EAD8();

  LOBYTE(v8) = sub_264D5D6CC(a1, a2, v9);

  if (v8)
  {
    v10 = objc_allocWithZone(MEMORY[0x277D26578]);
    v11 = v7;
    v12 = sub_264D6E958();
    v13 = [v10 initWithName:v12 sharedContainer:v11];

    [v13 setActive_];
  }
}

void sub_264D60190()
{
  v0 = objc_opt_self();
  v13 = *MEMORY[0x277D4BC10];
  v1 = [v0 storesForSharedContainer_];
  v2 = sub_264D6EAD8();

  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v2 + 56 + 8 * v8);
    ++v3;
    if (v6)
    {
      while (1)
      {
        v6 &= v6 - 1;

        if (sub_264D6EA28())
        {
          v9 = objc_allocWithZone(MEMORY[0x277D26578]);
          v10 = v13;
          v11 = sub_264D6E958();

          v12 = [v9 initWithName:v11 sharedContainer:v10];

          [v12 setActive_];
          v3 = v8;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v3 = v8;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v8 = v3;
      }
    }
  }
}

void sub_264D6037C()
{
  v34 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D4BC10];
  v2 = [v0 storesForSharedContainer_];
  v3 = sub_264D6EAD8();

  v5 = *(v3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v29 = v6;
    v30 = v0;
    v31 = v1;
    v28 = &v26;
    v0 = 0x7463697274736572;
    MEMORY[0x28223BE20](v4);
    v8 = &v26 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = 0;
    v1 = v3 + 56;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    v6 = (v10 + 63) >> 6;
    v32 = 0;
    v33 = 0x8000000264D72D60;
    v27 = 0x8000000264D72D80;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v16 = v13 | (v9 << 6);
      v17 = (*(v3 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *v17 == 0x7463697274736572 && v18 == 0xEC000000736E6F69;
      if (!v20 && (sub_264D6EF28() & 1) == 0)
      {
        v21 = v19 == 0xD00000000000001FLL && v33 == v18;
        if (!v21 && (sub_264D6EF28() & 1) == 0 && (v19 != 0xD000000000000020 || v27 != v18) && (sub_264D6EF28() & 1) == 0)
        {
          *&v8[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
          if (__OFADD__(v32++, 1))
          {
            __break(1u);
LABEL_30:
            sub_264D63638(v8, v29, v32, v3);
            v0 = v30;
            v1 = v31;
            goto LABEL_31;
          }
        }
      }
    }

    v14 = v9;
    while (1)
    {
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        goto LABEL_30;
      }

      v15 = *(v1 + 8 * v9);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v12 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_33:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  sub_264D62298(v25, v6, v3, sub_264D60734);

  MEMORY[0x26674D8B0](v25, -1, -1);
LABEL_31:
  v24 = sub_264D6EAC8();

  [v0 deleteStoresWithStoreNames:v24 sharedContainer:v1];
}

uint64_t sub_264D60734(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == 0x7463697274736572 && v2 == 0xEC000000736E6F69)
  {
    v5 = 0;
  }

  else if ((sub_264D6EF28() & 1) != 0 || (v1 == 0xD00000000000001FLL ? (v4 = 0x8000000264D72D60 == v2) : (v4 = 0), v4 || (sub_264D6EF28() & 1) != 0 || v1 == 0xD000000000000020 && 0x8000000264D72D80 == v2))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_264D6EF28() ^ 1;
  }

  return v5 & 1;
}

void sub_264D6082C(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_264D6EAC8();
  [v1 deleteStoresWithStoreNames:v2 sharedContainer:*MEMORY[0x277D4BC10]];
}

uint64_t sub_264D608B4(uint64_t a1, char a2)
{
  v5 = sub_264D5D3E8();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  *(v6 + 32) = v2;
  *(v6 + 40) = &v12;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_264D64844;
  *(v7 + 24) = v6;
  v11[4] = sub_264D6671C;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_264D5EA38;
  v11[3] = &block_descriptor_33;
  v8 = _Block_copy(v11);

  [v5 batchUpdate_];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if (v12)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

void sub_264D60A60(id a1, char a2, unint64_t a3)
{
  if (a2)
  {
    [a1 clearAllSettings];
  }

  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_264D6EC88())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26674CF10](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_264D60BE0(v7, a1);

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_264D60BE0(void *a1, void *a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 media];
    v6 = [v4 payloadAllowTVProviderModification];
    [v6 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setLockTVProvider_];
LABEL_7:

    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 account];
    v9 = [v8 payloadAllowAccountModification];
    [v9 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setLockAccounts_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 application];
    v11 = [v10 payloadAllowAutomaticAppUpdates];
    [v11 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setDenyBackgroundAppRefresh_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    sub_264D64EEC(v12, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClassUnconditional();
    sub_264D6529C(v13, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    sub_264D657AC(v14, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClassUnconditional();
    sub_264D658F8(v15, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 passcode];
    v17 = [v16 payloadAllowPasscodeModification];
    [v17 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setLockPasscode_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 airDrop];
    v19 = [v18 payloadAllowAirDrop];
    [v19 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setDenyAirDrop_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 webContent];
    v7 = sub_264D64174(v20);
    [v5 setBlockedByFilter_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClassUnconditional();
    sub_264D65A44(v21, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 carPlay];
    v23 = [v22 payloadAllowVehicleUI];
    [v23 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setDenyCarPlay_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 notification];
    v25 = [v24 payloadAllowDriverDoNotDisturbModifications];
    [v25 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setLockDriverDoNotDisturb_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClassUnconditional();
    sub_264D65B90(v26, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClassUnconditional();
    sub_264D65FB8(v27, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClassUnconditional();
    sub_264D662C0(v28, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v29 = swift_dynamicCastObjCClassUnconditional();
    sub_264D664A0(v29, a2);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v30 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 findMy];
    v31 = [v30 payloadAllowFindMyFriendsModification];
    [v31 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v7 = sub_264D6EBC8();

    [v5 setLockFindMyFriends_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClassUnconditional();
    v5 = [a2 privacy];
    v7 = [v32 payloadForceLimitAdTracking];
    [v5 setForceLimitAdTracking_];
    goto LABEL_7;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v33 = a1;
    v34 = sub_264D6E828();
    v35 = sub_264D6EB28();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v36 = 136315138;
      v38 = [v33 debugDescription];
      v39 = sub_264D6E988();
      v41 = v40;

      v42 = sub_264D3FD80(v39, v41, &v43);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_264D33000, v34, v35, "Unsupported Declaration Type: %s. Failed to update ManagedSettings store.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x26674D8B0](v37, -1, -1);
      MEMORY[0x26674D8B0](v36, -1, -1);
    }

    sub_264D64D0C();
    swift_allocError();
    swift_willThrow();
  }
}

id *LocalRestrictions.deinit()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeSwift17LocalRestrictions_logger;
  v2 = sub_264D6E848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LocalRestrictions.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeSwift17LocalRestrictions_logger;
  v2 = sub_264D6E848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_264D6187C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC5B0, &unk_264D6FD50);
  v33 = v4;
  result = sub_264D6EDD8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_264D37670(v24, v34);
      }

      else
      {
        sub_264D37A38(v24, v34);
      }

      sub_264D6EFC8();
      sub_264D6E9B8();
      result = sub_264D6F008();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_264D37670(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}