uint64_t sub_10006313C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000631A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1000631F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100063270(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1000632C4(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100063324()
{
  result = qword_1000DDDB0;
  if (!qword_1000DDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDDB0);
  }

  return result;
}

unint64_t sub_100063378()
{
  result = qword_1000DDDB8;
  if (!qword_1000DDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDDB8);
  }

  return result;
}

unint64_t sub_1000633CC()
{
  result = qword_1000DDDC8;
  if (!qword_1000DDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDDC8);
  }

  return result;
}

unint64_t sub_100063420()
{
  result = qword_1000DDDE0;
  if (!qword_1000DDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDDE0);
  }

  return result;
}

unint64_t sub_1000634DC()
{
  result = qword_1000DDDF0;
  if (!qword_1000DDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDDF0);
  }

  return result;
}

uint64_t sub_100063530(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_100063544()
{
  result = qword_1000DDDF8;
  if (!qword_1000DDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDDF8);
  }

  return result;
}

unint64_t sub_100063600()
{
  result = qword_1000DDE08;
  if (!qword_1000DDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE08);
  }

  return result;
}

uint64_t sub_100063654(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000089A8(&qword_1000DDDD0, &qword_1000ACB60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000636CC()
{
  result = qword_1000DDE20;
  if (!qword_1000DDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE20);
  }

  return result;
}

unint64_t sub_100063720()
{
  result = qword_1000DDE30;
  if (!qword_1000DDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiveActivityAutostartContent.Competitor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for LiveActivityAutostartContent.Competitor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000638C8);
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

_BYTE *storeEnumTagSinglePayload for LiveActivityAutostartContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1000639CCLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LiveActivityAutostartAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100063AD0);
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

uint64_t sub_100063B18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_100063B70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

unint64_t sub_100063BD0()
{
  result = qword_1000DDE38;
  if (!qword_1000DDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE38);
  }

  return result;
}

unint64_t sub_100063C28()
{
  result = qword_1000DDE40;
  if (!qword_1000DDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE40);
  }

  return result;
}

unint64_t sub_100063C80()
{
  result = qword_1000DDE48;
  if (!qword_1000DDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE48);
  }

  return result;
}

unint64_t sub_100063CD8()
{
  result = qword_1000DDE50;
  if (!qword_1000DDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE50);
  }

  return result;
}

unint64_t sub_100063D30()
{
  result = qword_1000DDE58;
  if (!qword_1000DDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE58);
  }

  return result;
}

unint64_t sub_100063D88()
{
  result = qword_1000DDE60;
  if (!qword_1000DDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE60);
  }

  return result;
}

unint64_t sub_100063DE0()
{
  result = qword_1000DDE68;
  if (!qword_1000DDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE68);
  }

  return result;
}

unint64_t sub_100063E38()
{
  result = qword_1000DDE70;
  if (!qword_1000DDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE70);
  }

  return result;
}

unint64_t sub_100063E90()
{
  result = qword_1000DDE78;
  if (!qword_1000DDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE78);
  }

  return result;
}

unint64_t sub_100063EE4()
{
  result = qword_1000DDE88;
  if (!qword_1000DDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE88);
  }

  return result;
}

unint64_t sub_100063F38()
{
  result = qword_1000DDE98;
  if (!qword_1000DDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE98);
  }

  return result;
}

_BYTE *sub_100063FA4(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x100064040);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100064078()
{
  result = qword_1000DDEB0;
  if (!qword_1000DDEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDEB0);
  }

  return result;
}

unint64_t sub_1000640D0()
{
  result = qword_1000DDEB8;
  if (!qword_1000DDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDEB8);
  }

  return result;
}

unint64_t sub_100064128()
{
  result = qword_1000DDEC0;
  if (!qword_1000DDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDEC0);
  }

  return result;
}

unint64_t sub_100064180()
{
  result = qword_1000DDEC8;
  if (!qword_1000DDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDEC8);
  }

  return result;
}

unint64_t sub_1000641D8()
{
  result = qword_1000DDED0;
  if (!qword_1000DDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDED0);
  }

  return result;
}

unint64_t sub_100064230()
{
  result = qword_1000DDED8;
  if (!qword_1000DDED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDED8);
  }

  return result;
}

uint64_t sub_1000643F8(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 1024;
  *(v1 + 14) = v2;
  return result;
}

void sub_10006440C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x12u);
}

void sub_10006442C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_10006444C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_1000170D4(v11, v10, &a10);
}

uint64_t sub_10006446C()
{

  return swift_slowAlloc();
}

uint64_t sub_10006448C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_1000644B8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x6172747369676572;
  v4 = a1;
  v5 = 0x6172747369676572;
  v6 = 0xEC0000006E6F6974;
  switch(v4)
  {
    case 1:
      v5 = 0x7473696765726E75;
      v7 = 0x6E6F69746172;
      goto LABEL_4;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x6C6C416863746566;
      break;
    case 3:
      v5 = 0x61684364756F6C63;
      v6 = 0xEC0000006C656E6ELL;
      break;
    case 4:
      v5 = 0x4D7370416C6C7566;
      v7 = 0x656761737365;
LABEL_4:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x7473696765726E75;
      v8 = 0x6E6F69746172;
      goto LABEL_10;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x6C6C416863746566;
      break;
    case 3:
      v3 = 0x61684364756F6C63;
      v2 = 0xEC0000006C656E6ELL;
      break;
    case 4:
      v3 = 0x4D7370416C6C7566;
      v8 = 0x656761737365;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000666B8(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_100064690(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xEA0000000000746ELL;
  }

  sub_10006679C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10006669C(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_100064724(char a1)
{
  if (a1)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  sub_10006679C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10006669C(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000647A4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC00000076742E65;
  v3 = 0x6C7070612E6D6F63;
  v4 = a1;
  v5 = 0x6C7070612E6D6F63;
  v6 = 0xEC00000076742E65;
  switch(v4)
  {
    case 1:
      v7 = "com.apple.sports";
      goto LABEL_4;
    case 2:
      v6 = 0x80000001000B0400;
      v5 = 0xD000000000000011;
      break;
    case 3:
      break;
    default:
      v7 = "sor";
LABEL_4:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000010;
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = "com.apple.sports";
      goto LABEL_9;
    case 2:
      v2 = 0x80000001000B0400;
      v3 = 0xD000000000000011;
      break;
    case 3:
      break;
    default:
      v8 = "sor";
LABEL_9:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD000000000000010;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000666B8(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_1000648F4(char a1)
{
  if (a1)
  {
    v1 = 0xE300000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_10006679C();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10006669C(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_10006498C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000504250;
  v3 = 0x5F4D554944415453;
  v4 = a1;
  v5 = 0x5F4D554944415453;
  v6 = 0xEB00000000504250;
  switch(v4)
  {
    case 1:
      v6 = 0x80000001000B0520;
      v5 = 0xD000000000000021;
      break;
    case 2:
      break;
    case 3:
      v6 = 0x80000001000B0550;
      v5 = 0xD000000000000019;
      break;
    case 4:
      v6 = 0x80000001000B0570;
      v5 = 0xD000000000000018;
      break;
    case 5:
      v5 = 0x4B434F4C435F5654;
      v6 = 0xEE0045524F43535FLL;
      break;
    default:
      v6 = 0x80000001000B0500;
      v5 = 0xD000000000000012;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000001000B0520;
      v3 = 0xD000000000000021;
      break;
    case 2:
      break;
    case 3:
      v2 = 0x80000001000B0550;
      v3 = 0xD000000000000019;
      break;
    case 4:
      v2 = 0x80000001000B0570;
      v3 = 0xD000000000000018;
      break;
    case 5:
      sub_100066788();
      break;
    default:
      v2 = 0x80000001000B0500;
      v3 = 0xD000000000000012;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000666B8(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_100064B60(unsigned __int8 a1, char a2)
{
  v2 = 0x6C616974696E69;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6E69747563657865;
    }

    else
    {
      v4 = 0x64656873696E6966;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000067;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6C616974696E69;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E69747563657865;
    }

    else
    {
      v2 = 0x64656873696E6966;
    }

    if (a2 == 1)
    {
      v6 = 0xE900000000000067;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100064C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10006669C(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_100064DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_100066604(a4, a5, a6);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000666B8(v15, v9, v13);
  }

  return v11 & 1;
}

Swift::Int sub_100064EE4(uint64_t a1)
{
  v1 = a1;
  sub_100066718(a1);
  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100064F30(uint64_t a1)
{
  v1 = a1;
  sub_100066718(a1);
  sub_100065350(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100064F7C(uint64_t a1)
{
  v1 = sub_100066718(a1);
  sub_1000666D4(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100064FC4(uint64_t a1)
{
  v1 = a1;
  sub_100066718(a1);
  if (v1)
  {
    v2 = 404;
  }

  else
  {
    v2 = 3328;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100065018(uint64_t a1)
{
  v1 = a1;
  sub_100066718(a1);
  Hasher._combine(_:)(qword_1000AD2B0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000650B4(Swift::UInt a1)
{
  sub_100066718(a1);
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10006510C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_100066718(a1);
  v4 = a2(a1);
  sub_100066730(v4, v5, v6);

  return Hasher._finalize()();
}

uint64_t sub_10006515C(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100065284(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1000652F4(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100065350(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100065428(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10006549C(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
    case 4:
      sub_100066688();
      break;
    case 5:
      sub_100066788();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_10006559C(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100065644(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  String.hash(into:)();
}

void sub_100065720(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 404;
  }

  else
  {
    v2 = 3328;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_100065754(uint64_t a1)
{
  sub_100066770(a1);
  if (v1)
  {
    v2 = 404;
  }

  else
  {
    v2 = 3328;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10006579C(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1000AD2B0[a2]);
  return Hasher._finalize()();
}

Swift::Int sub_100065814(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000658E8(uint64_t a1)
{
  sub_100066770(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100065958(uint64_t a1)
{
  sub_100066770(a1);
  sub_100065350(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100065994(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000659D8(uint64_t a1)
{
  sub_100066770(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100065A40(uint64_t a1)
{
  sub_100066770(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100065ABC()
{
  v0 = Hasher.init(_seed:)();
  sub_1000666D4(v0);
  return Hasher._finalize()();
}

Swift::Int sub_100065AF4(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100065B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(a2);
  sub_100066730(v5, v6, v7);

  return Hasher._finalize()();
}

uint64_t sub_100065BA4(uint64_t a1)
{
  v2 = sub_100065C3C(a1);
  if (!v2)
  {
    sub_100066700();
    goto LABEL_6;
  }

  if (v2 != 1)
  {
    v1 = 0xE800000000000000;
    sub_100066674();
LABEL_6:
    sub_100066660();
    v7 = sub_100066754(v5, v1, v6);

    if ((v7 & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_7:

  return sub_100065C9C(2, v3, v4);
}

uint64_t sub_100065C3C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7sportsd14AsyncOperation_lock;
  sub_1000667A8(a1);
  os_unfair_lock_lock((v1 + v2));
  v3 = *(v1 + OBJC_IVAR____TtC7sportsd14AsyncOperation__state);
  os_unfair_lock_unlock((v1 + v2));
  swift_endAccess();
  return v3;
}

uint64_t sub_100065C9C(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DBA08 != -1)
  {
LABEL_21:
    swift_once();
  }

  v5 = off_1000DDEE0 + 56;
  sub_10001F24C();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  if (!v8)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_8:
    v8 &= v8 - 1;

    v13 = String._bridgeToObjectiveC()();
    [v3 willChangeValueForKey:v13];
  }

  while (v8);
  while (1)
  {
LABEL_4:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v12 >= v10)
    {
      break;
    }

    v8 = *&v5[8 * v12];
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

  v15 = OBJC_IVAR____TtC7sportsd14AsyncOperation_lock;
  sub_1000667A8(v14);
  os_unfair_lock_lock(&v3[v15]);
  v3[OBJC_IVAR____TtC7sportsd14AsyncOperation__state] = a1;
  os_unfair_lock_unlock(&v3[v15]);
  swift_endAccess();
  a1 = off_1000DDEE0;
  v16 = off_1000DDEE0 + 56;
  sub_10001F24C();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v22 = 0;
  if (!v19)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_16:
    v19 &= v19 - 1;

    v24 = String._bridgeToObjectiveC()();
    [v3 didChangeValueForKey:v24];
  }

  while (v19);
  while (1)
  {
LABEL_12:
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_20;
    }

    if (v23 >= v21)
    {
      break;
    }

    v19 = *&v16[8 * v23];
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_16;
    }
  }
}

unint64_t sub_100065EF4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CF330, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100065F40(char a1)
{
  if (!a1)
  {
    return 0x6C616974696E69;
  }

  if (a1 == 1)
  {
    return 0x6E69747563657865;
  }

  return 0x64656873696E6966;
}

unint64_t sub_100065FC0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100065EF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100065FF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100065F40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_10006601C()
{
  *&v0[OBJC_IVAR____TtC7sportsd14AsyncOperation_lock] = 0;
  v0[OBJC_IVAR____TtC7sportsd14AsyncOperation__state] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsyncOperation();
  return objc_msgSendSuper2(&v2, "init");
}

void *sub_10006608C()
{
  result = sub_1000592AC(&off_1000CF230);
  off_1000DDEE0 = result;
  return result;
}

uint64_t sub_1000660F0(uint64_t a1)
{
  v2 = sub_100065C3C(a1);
  if (!v2)
  {
    sub_100066700();
LABEL_6:
    sub_100066660();
    v3 = sub_100066754(v4, v1, v5);
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v1 = 0xE800000000000000;
    sub_100066674();
    goto LABEL_6;
  }

  v3 = 1;
LABEL_7:

  return v3 & 1;
}

uint64_t sub_100066190()
{
  v1 = [v0 isCancelled];
  if (v1)
  {
    v2 = sub_100065C3C(v1);
    if (v2)
    {
      if (v2 == 1)
      {

        goto LABEL_8;
      }

      v3 = 0xE800000000000000;
      sub_100066674();
    }

    else
    {
      v3 = 0xE700000000000000;
    }

    sub_100066660();
    v6 = sub_100066754(v4, v3, v5);

    if ((v6 & 1) == 0)
    {
      v7 = 1;
      return v7 & 1;
    }
  }

LABEL_8:
  if (sub_100065C3C(v1) > 1u)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1000662A8()
{
  result = [v0 isCancelled];
  if ((result & 1) == 0)
  {
    sub_100065C9C(1, v2, v3);
    v4 = *((swift_isaMask & *v0) + 0xA8);

    return v4();
  }

  return result;
}

id sub_1000663C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsyncOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for AsyncOperation.ExecutionState(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AsyncOperation.ExecutionState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100066574);
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

unint64_t sub_1000665B0()
{
  result = qword_1000DDF20;
  if (!qword_1000DDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDF20);
  }

  return result;
}

uint64_t sub_100066604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006669C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000666B8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000666D4(uint64_t a1, ...)
{

  return String.hash(into:)();
}

void *sub_100066718(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_100066730(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_100066754(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *sub_100066770(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1000667A8(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void *sub_1000667C8()
{
  sub_100008A94((v0 + 16));
  sub_100008A94((v0 + 56));

  return v0;
}

uint64_t sub_100066808()
{
  sub_1000667C8();

  return _swift_deallocClassInstance(v0, 120, 7);
}

uint64_t sub_100066868(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1000668A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100066950()
{
  sub_100008A94((v0 + 16));

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1000669B4(uint64_t a1, uint64_t a2, void (*a3)(void (*)(), uint64_t))
{
  String.utf8CString.getter();
  v4 = os_transaction_create();

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  swift_unknownObjectRetain_n();
  a3(nullsub_1, v5);
  swift_unknownObjectRelease_n();
}

uint64_t sub_100066A64()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066A9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for URL();
  sub_10000AC48();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v15);
  (*(v12 + 16))(v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v16);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  (*(v12 + 32))(v18 + v17, v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v19 = (v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a2;
  v19[1] = a3;
  sub_100003998(&qword_1000DE150, &unk_1000AD3A8);
  swift_allocObject();
  v20 = a4;
  v21 = a5;

  v24[1] = Future.init(_:)();
  sub_100067080();
  v22 = Publisher.eraseToAnyPublisher()();

  return v22;
}

void sub_100066C5C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a4;
  v29 = a1;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URLRequest();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a5, v11, v17);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  (*(v16 + 8))(v19, v15);
  v21 = swift_allocObject();
  v22 = v30;
  v21[2] = v29;
  v21[3] = a2;
  v21[4] = v22;
  v21[5] = a7;
  v23 = v31;
  v21[6] = a3;
  v21[7] = v23;
  aBlock[4] = sub_100067B74;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100067BA4;
  aBlock[3] = &unk_1000D27D8;
  v24 = _Block_copy(aBlock);

  v25 = a3;
  v26 = v23;

  v27 = [v25 downloadTaskWithRequest:isa completionHandler:v24];
  _Block_release(v24);

  [v27 resume];
}

uint64_t sub_100066EF4()
{
  v1 = type metadata accessor for URL();
  sub_10000AC48();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

void sub_100066FCC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_100066C5C(a1, a2, v7, v8, v2 + v6, v10, v11);
}

unint64_t sub_100067080()
{
  result = qword_1000DE158;
  if (!qword_1000DE158)
  {
    sub_1000089A8(&qword_1000DE150, &unk_1000AD3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE158);
  }

  return result;
}

uint64_t sub_1000670E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9)
{
  v92 = a5;
  v93 = a4;
  v13 = sub_100003998(&qword_1000DE160, &unk_1000AD3B8);
  __chkstk_darwin(v13);
  v15 = (&v87 - v14);
  v16 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  __chkstk_darwin(v16 - 8);
  v18 = &v87 - v17;
  v19 = type metadata accessor for URL();
  __chkstk_darwin(v19);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v87 - v24;
  if (a3)
  {
    swift_errorRetain();
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100007DE8(v26, qword_1000E6D48);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v94 = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = Error.localizedDescription.getter();
      v33 = sub_1000170D4(v31, v32, &v94);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Could not download image. %s", v29, 0xCu);
      sub_100008A94(v30);
    }

    *v15 = a3;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v93(v15);

    return sub_10001EF70(v15, &qword_1000DE160, &unk_1000AD3B8);
  }

  v91 = v23;
  sub_100067CEC(a1, v18);
  if (sub_100008B84(v18, 1, v19) == 1)
  {
    sub_10001EF70(v18, &unk_1000DD7B0, &qword_1000AC150);
    v34 = objc_allocWithZone(NSError);
    *v15 = sub_100029EF8(0xD00000000000001FLL, 0x80000001000B23A0, 512, 0);
    swift_storeEnumTagMultiPayload();
    v93(v15);
    return sub_10001EF70(v15, &qword_1000DE160, &unk_1000AD3B8);
  }

  (*(v91 + 32))(v25, v18, v19);
  URL.init(fileURLWithPath:)();
  v36 = String._bridgeToObjectiveC()();
  v37 = [a9 fileExistsAtPath:v36];

  if ((v37 & 1) == 0)
  {
    URL._bridgeToObjectiveC()(v38);
    v64 = v63;
    URL._bridgeToObjectiveC()(v65);
    v67 = v66;
    v94 = 0;
    v68 = [a9 moveItemAtURL:v64 toURL:v66 error:&v94];

    v50 = v94;
    if (!v68)
    {
      v81 = v94;
      v82 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v83 = *(v91 + 8);
      v83(v21, v19);
      *v15 = v82;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v93(v15);

      sub_10001EF70(v15, &qword_1000DE160, &unk_1000AD3B8);
      return (v83)(v25, v19);
    }

    goto LABEL_18;
  }

  URL._bridgeToObjectiveC()(v38);
  v40 = v39;
  v94 = 0;
  v41 = [a9 removeItemAtURL:v39 error:&v94];

  if (!v41)
  {
    v70 = v94;
    v71 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000DBA28 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_100007DE8(v72, qword_1000E6D60);

    swift_errorRetain();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    v90 = v73;
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v88 = v71;
      v77 = v76;
      v89 = swift_slowAlloc();
      v94 = v89;
      *v75 = 136315394;
      *(v75 + 4) = sub_1000170D4(a6, a7, &v94);
      *(v75 + 12) = 2112;
      swift_errorRetain();
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 14) = v78;
      *v77 = v78;
      v79 = v74;
      v80 = v90;
      _os_log_impl(&_mh_execute_header, v90, v79, "Could not remove existing file at path %s before moving new file in. Error: %@", v75, 0x16u);
      sub_10001EF70(v77, &unk_1000DD790, &unk_1000AB7A0);

      sub_100008A94(v89);
    }

    else
    {
    }

    goto LABEL_25;
  }

  v42 = v94;
  URL._bridgeToObjectiveC()(v43);
  v45 = v44;
  URL._bridgeToObjectiveC()(v46);
  v48 = v47;
  v94 = 0;
  v49 = [a9 moveItemAtURL:v45 toURL:v47 error:&v94];

  v50 = v94;
  if (v49)
  {
LABEL_18:
    v69 = v50;
LABEL_25:
    v84 = v91;
    (*(v91 + 16))(v15, v21, v19);
    swift_storeEnumTagMultiPayload();
    v93(v15);
    sub_10001EF70(v15, &qword_1000DE160, &unk_1000AD3B8);
    v85 = *(v84 + 8);
    v85(v21, v19);
    return (v85)(v25, v19);
  }

  v51 = v94;
  v52 = _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1000DBA28 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_100007DE8(v53, qword_1000E6D60);

  swift_errorRetain();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v88 = v54;
    v57 = v56;
    v58 = swift_slowAlloc();
    v90 = v52;
    v59 = v58;
    v89 = swift_slowAlloc();
    v94 = v89;
    *v57 = 136315394;
    *(v57 + 4) = sub_1000170D4(a6, a7, &v94);
    *(v57 + 12) = 2112;
    swift_errorRetain();
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v57 + 14) = v60;
    *v59 = v60;
    v61 = v55;
    v62 = v88;
    _os_log_impl(&_mh_execute_header, v88, v61, "Could not move new file after successfully removing existing file at path %s. Error: %@", v57, 0x16u);
    sub_10001EF70(v59, &unk_1000DD790, &unk_1000AB7A0);
    v52 = v90;

    sub_100008A94(v89);
  }

  else
  {
  }

  *v15 = v52;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v93(v15);

  sub_10001EF70(v15, &qword_1000DE160, &unk_1000AD3B8);
  v86 = *(v91 + 8);
  v86(v21, v19);
  return (v86)(v25, v19);
}

uint64_t sub_100067B24()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100067BA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    v13 = 0;
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = 1;
  }

  sub_100008E2C(v10, v13, 1, v12);

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_10001EF70(v10, &unk_1000DD7B0, &qword_1000AC150);
}

uint64_t sub_100067CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100067CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067D5C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100067D9C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100067DE8()
{
  type metadata accessor for ApiAgentError(0);
  sub_10001C2AC();
  __chkstk_darwin(v1);
  sub_100069864(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0xD00000000000001CLL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v5 = sub_100003998(&qword_1000DD728, &qword_1000AC1B0);
      sub_100068E88(v0 + *(v5 + 48));
      result = 0xD00000000000001BLL;
      break;
    case 2:
      return result;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t sub_100067F70()
{
  type metadata accessor for ApiAgentError(0);
  sub_10001C2AC();
  __chkstk_darwin(v1);
  sub_100069864(v2, v7);
  v3 = -1200;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v4 = *v0;
      v5 = sub_100003998(&qword_1000DD728, &qword_1000AC1B0);
      v3 = qword_1000ADA88[v4];
      sub_100068E88(&v0[*(v5 + 48)]);
      break;
    case 2u:
      return v3;
    case 3u:
    case 4u:
      v3 = -1000;
      break;
    default:
      if (*v0)
      {
        v3 = 404;
      }

      else
      {
        v3 = 3328;
      }

      break;
  }

  return v3;
}

uint64_t sub_100068068()
{
  type metadata accessor for ApiAgentError(0);
  sub_10001C2AC();
  __chkstk_darwin(v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068E24(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = *v3;
      v20 = *(sub_100003998(&qword_1000DD728, &qword_1000AC1B0) + 48);
      sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000AA5B0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v22;
      v26 = v19;
      sub_100068C48();
      v23 = Error.localizedDescription.getter();
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v23;
      *(inited + 56) = v24;
      v17 = Dictionary.init(dictionaryLiteral:)();
      sub_100068E88(&v3[v20]);
      return v17;
    case 2u:
      sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_1000AA5B0;
      *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v11 + 40) = v12;
      sub_100068D50();
      goto LABEL_6;
    case 3u:
      sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_1000AA5B0;
      *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v13 + 40) = v14;
      sub_100068CA0();
      goto LABEL_6;
    case 4u:
      sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_1000AA5B0;
      *(v9 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v9 + 40) = v10;
      sub_100068BF0();
LABEL_6:
      v15 = Error.localizedDescription.getter();
      sub_1000698AC(v15, v16, &type metadata for String);
      break;
    default:
      v4 = *v3;
      sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
      v5 = swift_initStackObject();
      *(v5 + 16) = xmmword_1000AA5B0;
      *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v5 + 40) = v6;
      v26 = v4;
      sub_100068CF8();
      v7 = Error.localizedDescription.getter();
      *(v5 + 72) = &type metadata for String;
      *(v5 + 48) = v7;
      *(v5 + 56) = v8;
      break;
  }

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000683B4(uint64_t a1)
{
  v2 = sub_100068EF0(&qword_1000DE190, &unk_1000AD6D0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10006840C(uint64_t a1)
{
  v2 = sub_100068EF0(&qword_1000DE190, &unk_1000AD6D0);

  return Error<>._code.getter(a1, v2);
}

BOOL sub_10006847C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100068464(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100068500(uint64_t a1)
{
  v2 = sub_100068F34();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100068568(uint64_t a1)
{
  if (a1 == 404)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 3328)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100068580(char a1)
{
  if (a1)
  {
    return 404;
  }

  else
  {
    return 3328;
  }
}

uint64_t sub_1000685B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100068568(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000685E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100068580(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100068610(char a1)
{
  sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
  inited = swift_initStackObject();
  sub_100069830(inited, xmmword_1000AA5B0);
  v2 = String.init<A>(describing:)();
  sub_1000698AC(v2, v3, &type metadata for String);
  return sub_100069890();
}

uint64_t sub_1000686D8(uint64_t a1)
{
  v2 = sub_100068FDC();

  return Error<>._domain.getter(a1, v2);
}

BOOL sub_10006874C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006869C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100068788(uint64_t a1)
{
  if (a1 == -1011)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if (a1 == -1016)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == -2000)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10006880C(uint64_t a1)
{
  v2 = sub_100069084();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100068898@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100068788(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000688C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000687B0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1000688F0(char a1)
{
  sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
  inited = swift_initStackObject();
  sub_100069830(inited, xmmword_1000AA5B0);
  v2 = String.init<A>(describing:)();
  sub_1000698AC(v2, v3, &type metadata for String);
  return sub_100069890();
}

uint64_t sub_1000689A8(uint64_t a1)
{
  v2 = sub_10006912C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100068A10(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  a3();
  a4();
  sub_100002660();
  v5 = sub_1000698B8();

  return Error<>._code.getter(v5);
}

uint64_t sub_100068A6C(uint64_t a1)
{
  sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
  inited = swift_initStackObject();
  sub_100069830(inited, xmmword_1000AA5B0);
  v2 = String.init<A>(describing:)();
  sub_1000698AC(v2, v3, &type metadata for String);
  return sub_100069890();
}

uint64_t sub_100068B28(uint64_t a1)
{
  v2 = sub_1000691D4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100068B90(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  a3();
  a4();
  sub_100002660();
  v5 = sub_1000698B8();

  return Error<>._code.getter(v5);
}

unint64_t sub_100068BF0()
{
  result = qword_1000DE168;
  if (!qword_1000DE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE168);
  }

  return result;
}

unint64_t sub_100068C48()
{
  result = qword_1000DE170;
  if (!qword_1000DE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE170);
  }

  return result;
}

unint64_t sub_100068CA0()
{
  result = qword_1000DE178;
  if (!qword_1000DE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE178);
  }

  return result;
}

unint64_t sub_100068CF8()
{
  result = qword_1000DE180;
  if (!qword_1000DE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE180);
  }

  return result;
}

unint64_t sub_100068D50()
{
  result = qword_1000DE188;
  if (!qword_1000DE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE188);
  }

  return result;
}

uint64_t type metadata accessor for ApiAgentError(uint64_t a1)
{
  result = qword_1000DE258;
  if (!qword_1000DE258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100068E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApiAgentError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068E88(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100068EF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ApiAgentError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100068F34()
{
  result = qword_1000DE198;
  if (!qword_1000DE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE198);
  }

  return result;
}

unint64_t sub_100068F88()
{
  result = qword_1000DE1A0;
  if (!qword_1000DE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1A0);
  }

  return result;
}

unint64_t sub_100068FDC()
{
  result = qword_1000DE1A8;
  if (!qword_1000DE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1A8);
  }

  return result;
}

unint64_t sub_100069030()
{
  result = qword_1000DE1B0;
  if (!qword_1000DE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1B0);
  }

  return result;
}

unint64_t sub_100069084()
{
  result = qword_1000DE1B8;
  if (!qword_1000DE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1B8);
  }

  return result;
}

unint64_t sub_1000690D8()
{
  result = qword_1000DE1C0;
  if (!qword_1000DE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1C0);
  }

  return result;
}

unint64_t sub_10006912C()
{
  result = qword_1000DE1C8;
  if (!qword_1000DE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1C8);
  }

  return result;
}

unint64_t sub_100069180()
{
  result = qword_1000DE1D0;
  if (!qword_1000DE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1D0);
  }

  return result;
}

unint64_t sub_1000691D4()
{
  result = qword_1000DE1D8;
  if (!qword_1000DE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1D8);
  }

  return result;
}

unint64_t sub_100069228()
{
  result = qword_1000DE1E0;
  if (!qword_1000DE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ApiAgentError.AMSBagError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10006935CLL);
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

_BYTE *storeEnumTagSinglePayload for ApiAgentError.DataTaskError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100069470);
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

_BYTE *sub_1000694A8(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x100069544);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100069584(uint64_t a1)
{
  sub_1000695F0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1000695F0(uint64_t a1)
{
  if (!qword_1000DE268)
  {
    sub_1000089A8(&qword_1000DD720, &qword_1000AA648);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DE268);
    }
  }
}

unint64_t sub_100069668()
{
  result = qword_1000DE298;
  if (!qword_1000DE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE298);
  }

  return result;
}

unint64_t sub_1000696C0()
{
  result = qword_1000DE2A0;
  if (!qword_1000DE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2A0);
  }

  return result;
}

unint64_t sub_100069718()
{
  result = qword_1000DE2A8;
  if (!qword_1000DE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2A8);
  }

  return result;
}

unint64_t sub_100069770()
{
  result = qword_1000DE2B0;
  if (!qword_1000DE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2B0);
  }

  return result;
}

unint64_t sub_1000697C8()
{
  result = qword_1000DE2B8;
  if (!qword_1000DE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2B8);
  }

  return result;
}

__n128 *sub_100069830(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1868983913;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_100069864@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_100068E24(v2, &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0));
}

uint64_t sub_100069890()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000698AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3[9] = a3;
  v3[6] = result;
  v3[7] = a2;
  return result;
}

uint64_t sub_1000698CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0x2079654B697041;
  v11 = 0xE700000000000000;
  if (qword_1000DB968 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static Secrets.tempoAPIKey;
  v3 = qword_1000E6C10;

  v5._countAndFlagsBits = v4;
  v5._object = v3;
  String.append(_:)(v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100086888(v10, v11, 0x7A69726F68747541, 0xED00006E6F697461, isUniquelyReferenced_nonNull_native);
  v7 = sub_100069A14();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v10 = &_swiftEmptyDictionarySingleton;
  sub_100069B8C(v7, sub_100069E64, 0, v8, &v10);
  return v10;
}

void *sub_100069A14()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = &_swiftEmptyDictionarySingleton;
  sub_100086888(0xD000000000000010, 0x80000001000B2460, 0x2D746E65746E6F43, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);
  v5 = v12;
  static Locale.autoupdatingCurrent.getter();
  v6 = Locale.identifier.getter();
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v12 = v5;
  sub_100086888(v6, v8, 0xD000000000000010, 0x80000001000B2480, v9);
  return v12;
}

uint64_t sub_100069B8C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v77 = a5;
  sub_1000A23BC(&v69);
  v8 = v70;
  v9 = v72;
  v10 = v73;
  v57 = v74;
  v58 = v69;
  v59 = v75;
  v51 = v71;
  v11 = (v71 + 64) >> 6;
  v53 = a1;

  v52 = a3;

  v55 = v11;
  v56 = v8;
  if (v10)
  {
    while (1)
    {
      HIDWORD(v60) = a4;
      v12 = v9;
LABEL_8:
      v14 = (v12 << 10) | (16 * __clz(__rbit64(v10)));
      v15 = (*(v58 + 48) + v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(v58 + 56) + v14);
      v19 = *v18;
      v20 = v18[1];
      v65 = v16;
      v66 = v17;
      v67 = v19;
      v68 = v20;

      v57(&v61, &v65);

      v22 = v61;
      v21 = v62;
      v23 = v63;
      v24 = v64;
      v25 = *v77;
      v33 = sub_100017538(v61, v62);
      v34 = v25[2];
      v35 = (v26 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        break;
      }

      v37 = v26;
      if (v25[3] >= v36)
      {
        if ((v60 & 0x100000000) == 0)
        {
          sub_100003998(&qword_1000DE2C0, &unk_1000ADAA0);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        sub_1000A199C(v36, BYTE4(v60) & 1, v27, v28, v29, v30, v31, v32, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
        v38 = sub_100017538(v22, v21);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_24;
        }

        v33 = v38;
      }

      v10 &= v10 - 1;
      v40 = *v77;
      if (v37)
      {
        v41 = (v40[7] + 16 * v33);
        v43 = *v41;
        v42 = v41[1];

        v44 = (v40[7] + 16 * v33);
        *v44 = v43;
        v44[1] = v42;
      }

      else
      {
        v40[(v33 >> 6) + 8] |= 1 << v33;
        v45 = (v40[6] + 16 * v33);
        *v45 = v22;
        v45[1] = v21;
        v46 = (v40[7] + 16 * v33);
        *v46 = v23;
        v46[1] = v24;
        v47 = v40[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_23;
        }

        v40[2] = v49;
      }

      a4 = 1;
      v9 = v12;
      v11 = v55;
      v8 = v56;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_10001B8A0(v58);
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        HIDWORD(v60) = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100069E64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000A162C(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

void sub_100069EA8(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      return;
    default:
      sub_10006E3B0();
      break;
  }
}

uint64_t sub_100069F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (!v3)
  {
    return 2;
  }

  if (!*(v3 + 16))
  {
    return 2;
  }

  v4 = sub_100017538(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 2;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  v7 = *(v6 + 16);

  v9 = (v6 + 56);
  v10 = -v7;
  v11 = -1;
  do
  {
    if (v10 + v11 == -1)
    {

      return 2;
    }

    if (++v11 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    v13 = *(v9 - 1);
    v12 = *v9;
    if (*(v9 - 3) == 0x495349565F504250 && *(v9 - 2) == 0xEB00000000454C42)
    {
      break;
    }

    v9 += 4;
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((result & 1) == 0);

  if (!v12)
  {
    return 2;
  }

  if (v13 == 1702195828 && v12 == 0xE400000000000000)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

unint64_t sub_10006A0E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CF398, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10006A150@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006A0E0(*a1);
  *a2 = result;
  return result;
}

void sub_10006A180(unint64_t *a1@<X8>)
{
  sub_100069EA8(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_10006A1AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001000B24A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001000B24C0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001000B24E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4C70656544707061 && a2 == 0xEE004C52556B6E69)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_10006A31C(char a1)
{
  result = 0x4C70656544707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_10006A3D0()
{
  sub_1000643A8();
  v3 = v2;
  v4 = sub_100003998(&qword_1000DE4E8, &qword_1000ADEA8);
  sub_10000AC48();
  v6 = v5;
  sub_10000ACFC();
  __chkstk_darwin(v7);
  sub_100064374();
  sub_100008614(v3, v3[3]);
  sub_10006D8C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100003998(&qword_1000DC480, &unk_1000AB420);
  sub_10006E324(&unk_1000DE438);
  sub_10006E258();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    sub_10006E258();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10006E258();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10006E258();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  sub_1000643C0();
}

void sub_10006A574()
{
  sub_1000643A8();
  v2 = v1;
  sub_100003998(&qword_1000DE4D8, &qword_1000ADEA0);
  sub_10000AC48();
  sub_10000ACFC();
  __chkstk_darwin(v3);
  sub_100064364();
  sub_10006E3E8(v2);
  sub_10006D8C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    sub_100003998(&qword_1000DC480, &unk_1000AB420);
    sub_10006E348(&qword_1000DD178);
    sub_10006E234();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10006E234();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10006E234();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10006E234();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v4 = sub_10006E28C();
    v5(v4);
  }

  sub_100008A94(v2);
  sub_1000643C0();
}

uint64_t sub_10006A7B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65727574616566 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10006A878(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x65727574616566;
  }
}

void sub_10006A8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1000643A8();
  v24 = v23;
  v26 = v25;
  v29 = sub_100003998(v27, v28);
  sub_10000AC48();
  v31 = v30;
  sub_10000ACFC();
  __chkstk_darwin(v32);
  sub_100064364();
  sub_100008614(v26, v26[3]);
  v24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v21)
  {
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v31 + 8))(v22, v29);
  sub_1000643C0();
}

void sub_10006A9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1000643A8();
  v25 = v24;
  v27 = v26;
  sub_100003998(v28, v29);
  sub_10000AC48();
  sub_10000ACFC();
  __chkstk_darwin(v30);
  sub_100064364();
  sub_100008614(v27, v27[3]);
  v25();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = sub_10006E28C();
    v32(v31);
  }

  sub_100008A94(v27);
  sub_1000643C0();
}

unint64_t sub_10006ABA8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CF448, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void sub_10006ABFC(char a1)
{
  switch(a1)
  {
    case 4:
      sub_10006E3B0();
      break;
    default:
      return;
  }
}

uint64_t sub_10006AD14(void *a1)
{
  v4 = sub_100003998(&qword_1000DE450, &qword_1000ADE78);
  sub_10000AC48();
  v6 = v5;
  sub_10000ACFC();
  __chkstk_darwin(v7);
  sub_100064374();
  sub_10006E3E8(a1);
  v8 = sub_10006CE10();
  sub_10006448C(&_s20RegistrationResponseV10CodingKeysON, v9, v8);
  sub_10006D444();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100003998(&qword_1000DE338, &qword_1000ADB38);
    sub_10006D498();
    sub_10006E278();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100003998(&qword_1000DE348, &qword_1000ADB40);
    sub_10006D608();
    sub_10006E278();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100003998(&qword_1000DE358, &qword_1000ADB48);
    sub_10006D718();
    sub_10006E278();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000642E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    _s20RegistrationResponseVMa(0);
    type metadata accessor for SportingEventViewContext();
    sub_10006E2F8();
    sub_10006D7D4(v10);
    sub_10006E278();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_10006AFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1000643A8();
  v25 = v24;
  v49 = v26;
  sub_100003998(&qword_1000DD228, &qword_1000ABE40);
  sub_10000ACFC();
  __chkstk_darwin(v27);
  v29 = &v47 - v28;
  sub_100003998(&qword_1000DE3B8, &qword_1000ADE40);
  sub_10000AC48();
  v50 = v31;
  v51 = v30;
  sub_10000ACFC();
  __chkstk_darwin(v32);
  v33 = _s20RegistrationResponseVMa(0);
  __chkstk_darwin(v33);
  v35 = &v47 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v25;
  sub_10006E3E8(v25);
  sub_10006CE10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100008A94(v52);
  }

  else
  {
    v47 = v33;
    v48 = v29;
    sub_10006CE64();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v55;
    *v35 = v53;
    *(v35 + 8) = v54;
    *(v35 + 3) = v36;
    sub_10006E310(1);
    *(v35 + 7) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35[64] = v37 & 1;
    sub_10006E310(2);
    *(v35 + 9) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35[80] = v38 & 1;
    sub_100003998(&qword_1000DE338, &qword_1000ADB38);
    v39 = sub_10006CEB8();
    sub_10006E2CC(v39);
    *(v35 + 4) = v53;
    sub_100003998(&qword_1000DE348, &qword_1000ADB40);
    v40 = sub_10006CFC8();
    sub_10006E2CC(v40);
    *(v35 + 5) = v53;
    sub_100003998(&qword_1000DE358, &qword_1000ADB48);
    v41 = sub_10006D138();
    sub_10006E2CC(v41);
    *(v35 + 6) = v53;
    sub_10006E310(6);
    *(v35 + 11) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v35 + 12) = v42;
    type metadata accessor for SportingEventViewContext();
    LOBYTE(v53) = 7;
    sub_10006E2F8();
    sub_10006D7D4(v43);
    v44 = v48;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v45 = sub_10006E2AC();
    v46(v45);
    sub_10006D1F4(v44, &v35[*(v47 + 44)]);
    sub_100008D68(v35, v49);
    sub_100008A94(v52);
    sub_10006D264(v35);
  }

  sub_1000643C0();
}

uint64_t sub_10006B4E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6556746E65696C63 && a2 == 0xED00006E6F697372;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701869940 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6163696E6F6E6163 && a2 == 0xEC0000007364496CLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656469727265766FLL && a2 == 0xE800000000000000)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10006B780(char a1)
{
  result = 0x6556746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x6556616D65686373;
      break;
    case 2:
      result = 0x6E656B6F74;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x746163696C707061;
      break;
    case 5:
      result = 0x6163696E6F6E6163;
      break;
    case 6:
      result = 0x6574656D61726170;
      break;
    case 7:
      result = 0x656469727265766FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10006B894(void *a1)
{
  v4 = sub_100003998(&qword_1000DE420, &qword_1000ADE58);
  sub_10000AC48();
  v6 = v5;
  sub_10000ACFC();
  __chkstk_darwin(v7);
  sub_100064374();
  sub_10006E3E8(a1);
  v8 = sub_10006D2C0();
  sub_10006448C(&_s23RegistrationRequestBodyV10CodingKeysON, v9, v8);
  sub_1000642E0();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    sub_1000642E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000642E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000642E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000642E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100003998(&qword_1000DC420, &unk_1000ADE60);
    sub_10006D314(&unk_1000DE430);
    sub_10006E278();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100003998(&qword_1000DC480, &unk_1000AB420);
    sub_10006E324(&unk_1000DE438);
    sub_10006E278();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_10006BB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1000643A8();
  v26 = v25;
  v28 = v27;
  v29 = sub_100003998(&qword_1000DE440, &qword_1000ADE70);
  sub_10000AC48();
  v31 = v30;
  sub_10000ACFC();
  __chkstk_darwin(v32);
  v34 = &v51 - v33;
  sub_100008614(v26, v26[3]);
  sub_10006D2C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100008A94(v26);
  }

  else
  {
    LOBYTE(v63[0]) = 0;
    sub_10006E2BC();
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v36;
    LOBYTE(v63[0]) = 1;
    sub_10006E2BC();
    v56 = KeyedDecodingContainer.decode(_:forKey:)();
    v61 = v38;
    LOBYTE(v63[0]) = 2;
    sub_10006E2BC();
    v55 = KeyedDecodingContainer.decode(_:forKey:)();
    v60 = v39;
    LOBYTE(v63[0]) = 3;
    sub_10006E2BC();
    v52 = KeyedDecodingContainer.decode(_:forKey:)();
    v53 = v35;
    v59 = v40;
    LOBYTE(v63[0]) = 4;
    sub_10006E2BC();
    v41 = KeyedDecodingContainer.decode(_:forKey:)();
    v54 = v42;
    v51 = v41;
    sub_100003998(&qword_1000DC420, &unk_1000ADE60);
    LOBYTE(v62[0]) = 5;
    v43 = sub_10006D314(&unk_1000DE448);
    sub_10006E36C(v43);
    v58 = v63[0];
    sub_100003998(&qword_1000DC480, &unk_1000AB420);
    LOBYTE(v62[0]) = 6;
    v44 = sub_10006E348(&qword_1000DD178);
    sub_10006E36C(v44);
    v57 = v63[0];
    sub_10006E2BC();
    v45 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v31 + 8))(v34, v29);
    v65 = v45 & 1;
    v62[0] = v53;
    v62[1] = v37;
    v62[2] = v56;
    v46 = v61;
    v62[3] = v61;
    v62[4] = v55;
    v47 = v60;
    v62[5] = v60;
    v62[6] = v52;
    v48 = v59;
    v62[7] = v59;
    v62[8] = v51;
    v49 = v54;
    v50 = v58;
    v62[9] = v54;
    v62[10] = v58;
    v62[11] = v57;
    LOBYTE(v62[12]) = v65;
    sub_10006D3DC(v62, v63);
    sub_100008A94(v26);
    v63[0] = v53;
    v63[1] = v37;
    v63[2] = v56;
    v63[3] = v46;
    v63[4] = v55;
    v63[5] = v47;
    v63[6] = v52;
    v63[7] = v48;
    v63[8] = v51;
    v63[9] = v49;
    v63[10] = v50;
    v63[11] = v57;
    v64 = v65;
    sub_10006D414(v63);
    memcpy(v28, v62, 0x61uLL);
  }

  sub_1000643C0();
}

uint64_t sub_10006C084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006A1AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006C0AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006A314();
  *a1 = result;
  return result;
}

uint64_t sub_10006C0D4(uint64_t a1)
{
  v2 = sub_10006D8C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C110(uint64_t a1)
{
  v2 = sub_10006D8C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10006C14C(void *a1@<X8>)
{
  sub_10006A574();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

uint64_t sub_10006C19C(uint64_t a1)
{
  v2 = sub_10006D86C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C1D8(uint64_t a1)
{
  v2 = sub_10006D86C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006C2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006A7B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006C2FC(uint64_t a1)
{
  v2 = sub_10006D818();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C338(uint64_t a1)
{
  v2 = sub_10006D818();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10006C474@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006ABA8(*a1);
  *a2 = result;
  return result;
}

void sub_10006C4A4(unint64_t *a1@<X8>)
{
  sub_10006ABFC(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_10006C4EC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10006ABF4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006C520(uint64_t a1)
{
  v2 = sub_10006CE10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C55C(uint64_t a1)
{
  v2 = sub_10006CE10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006C5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006B4E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006C5F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006B778();
  *a1 = result;
  return result;
}

uint64_t sub_10006C620(uint64_t a1)
{
  v2 = sub_10006D2C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C65C(uint64_t a1)
{
  v2 = sub_10006D2C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10006C698(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_10006BB04(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD1(__src[0]), SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0x61uLL);
  }
}

uint64_t sub_10006C704(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_10006C744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006C7C4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003998(&qword_1000DD228, &qword_1000ABE40);
    v9 = a1 + *(a3 + 44);

    return sub_100008B84(v9, a2, v8);
  }
}

void *sub_10006C86C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003998(&qword_1000DD228, &qword_1000ABE40);
    v8 = v5 + *(a4 + 44);

    return sub_100008E2C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s20RegistrationResponseVMa(uint64_t a1)
{
  result = qword_1000DE320;
  if (!qword_1000DE320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C944(uint64_t a1)
{
  sub_10006CA78(319, &qword_1000DE330, &qword_1000DE338, &qword_1000ADB38);
  if (v1 <= 0x3F)
  {
    sub_10006CA78(319, &qword_1000DE340, &qword_1000DE348, &qword_1000ADB40);
    if (v2 <= 0x3F)
    {
      sub_10006CA78(319, &qword_1000DE350, &qword_1000DE358, &qword_1000ADB48);
      if (v3 <= 0x3F)
      {
        sub_10006CACC();
        if (v4 <= 0x3F)
        {
          sub_10006CB1C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10006CA78(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000089A8(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10006CACC()
{
  if (!qword_1000DE360)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE360);
    }
  }
}

void sub_10006CB1C(uint64_t a1)
{
  if (!qword_1000DE368)
  {
    type metadata accessor for SportingEventViewContext();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE368);
    }
  }
}

uint64_t sub_10006CB8C(uint64_t a1, int a2)
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

uint64_t sub_10006CBCC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ApplicationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ApplicationType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10006CD80);
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

unint64_t sub_10006CDBC()
{
  result = qword_1000DE3B0;
  if (!qword_1000DE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3B0);
  }

  return result;
}

unint64_t sub_10006CE10()
{
  result = qword_1000DE3C0;
  if (!qword_1000DE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3C0);
  }

  return result;
}

unint64_t sub_10006CE64()
{
  result = qword_1000DE3C8;
  if (!qword_1000DE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3C8);
  }

  return result;
}

unint64_t sub_10006CEB8()
{
  result = qword_1000DE3D0;
  if (!qword_1000DE3D0)
  {
    sub_1000089A8(&qword_1000DE338, &qword_1000ADB38);
    sub_10006D554(&unk_1000DE3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3D0);
  }

  return result;
}

unint64_t sub_10006CF74()
{
  result = qword_1000DE3E8;
  if (!qword_1000DE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3E8);
  }

  return result;
}

unint64_t sub_10006CFC8()
{
  result = qword_1000DE3F0;
  if (!qword_1000DE3F0)
  {
    sub_1000089A8(&qword_1000DE348, &qword_1000ADB40);
    sub_10006D084(&unk_1000DE3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3F0);
  }

  return result;
}

unint64_t sub_10006D084(uint64_t a1)
{
  result = sub_10006E39C(a1);
  if (!result)
  {
    sub_10006E3BC();
    sub_1000089A8(&qword_1000DE400, &qword_1000ADE50);
    v2();
    result = sub_10006E3C8();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10006D0E4()
{
  result = qword_1000DE408;
  if (!qword_1000DE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE408);
  }

  return result;
}

unint64_t sub_10006D138()
{
  result = qword_1000DE410;
  if (!qword_1000DE410)
  {
    sub_1000089A8(&qword_1000DE358, &qword_1000ADB48);
    sub_10006D7D4(&unk_1000DBD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE410);
  }

  return result;
}

uint64_t sub_10006D1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DD228, &qword_1000ABE40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006D264(uint64_t a1)
{
  v2 = _s20RegistrationResponseVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10006D2C0()
{
  result = qword_1000DE428;
  if (!qword_1000DE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE428);
  }

  return result;
}

unint64_t sub_10006D314(uint64_t a1)
{
  result = sub_10006E39C(a1);
  if (!result)
  {
    sub_10006E3BC();
    sub_1000089A8(&qword_1000DC420, &unk_1000ADE60);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10006D378(uint64_t a1)
{
  result = sub_10006E39C(a1);
  if (!result)
  {
    sub_10006E3BC();
    sub_1000089A8(&qword_1000DC480, &unk_1000AB420);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10006D444()
{
  result = qword_1000DE458;
  if (!qword_1000DE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE458);
  }

  return result;
}

unint64_t sub_10006D498()
{
  result = qword_1000DE460;
  if (!qword_1000DE460)
  {
    sub_1000089A8(&qword_1000DE338, &qword_1000ADB38);
    sub_10006D554(&unk_1000DE468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE460);
  }

  return result;
}

unint64_t sub_10006D554(uint64_t a1)
{
  result = sub_10006E39C(a1);
  if (!result)
  {
    sub_10006E3BC();
    sub_1000089A8(&qword_1000DE3E0, &qword_1000ADE48);
    v2();
    result = sub_10006E3C8();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10006D5B4()
{
  result = qword_1000DE470;
  if (!qword_1000DE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE470);
  }

  return result;
}

unint64_t sub_10006D608()
{
  result = qword_1000DE478;
  if (!qword_1000DE478)
  {
    sub_1000089A8(&qword_1000DE348, &qword_1000ADB40);
    sub_10006D084(&unk_1000DE480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE478);
  }

  return result;
}

unint64_t sub_10006D6C4()
{
  result = qword_1000DE488;
  if (!qword_1000DE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE488);
  }

  return result;
}

unint64_t sub_10006D718()
{
  result = qword_1000DE490;
  if (!qword_1000DE490)
  {
    sub_1000089A8(&qword_1000DE358, &qword_1000ADB48);
    sub_10006D7D4(&unk_1000DE498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE490);
  }

  return result;
}

unint64_t sub_10006D7D4(uint64_t a1)
{
  result = sub_10006E39C(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10006D818()
{
  result = qword_1000DE4B0;
  if (!qword_1000DE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE4B0);
  }

  return result;
}

unint64_t sub_10006D86C()
{
  result = qword_1000DE4C8;
  if (!qword_1000DE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE4C8);
  }

  return result;
}

unint64_t sub_10006D8C0()
{
  result = qword_1000DE4E0;
  if (!qword_1000DE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE4E0);
  }

  return result;
}

_BYTE *_s20RegistrationResponseV5LinksV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10006D9E0);
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

_BYTE *sub_10006DA30(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10006DAF8);
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
          result = sub_10006E3A8(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10006DB4C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10006DBD8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x10006DCA0);
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
          result = sub_10006E3A8(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10006DCDC()
{
  result = qword_1000DE4F0;
  if (!qword_1000DE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE4F0);
  }

  return result;
}

unint64_t sub_10006DD34()
{
  result = qword_1000DE4F8;
  if (!qword_1000DE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE4F8);
  }

  return result;
}

unint64_t sub_10006DD8C()
{
  result = qword_1000DE500;
  if (!qword_1000DE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE500);
  }

  return result;
}

unint64_t sub_10006DDE4()
{
  result = qword_1000DE508;
  if (!qword_1000DE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE508);
  }

  return result;
}

unint64_t sub_10006DE3C()
{
  result = qword_1000DE510;
  if (!qword_1000DE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE510);
  }

  return result;
}

unint64_t sub_10006DE94()
{
  result = qword_1000DE518;
  if (!qword_1000DE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE518);
  }

  return result;
}

unint64_t sub_10006DEEC()
{
  result = qword_1000DE520;
  if (!qword_1000DE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE520);
  }

  return result;
}

unint64_t sub_10006DF44()
{
  result = qword_1000DE528;
  if (!qword_1000DE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE528);
  }

  return result;
}

unint64_t sub_10006DF9C()
{
  result = qword_1000DE530;
  if (!qword_1000DE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE530);
  }

  return result;
}

unint64_t sub_10006DFF4()
{
  result = qword_1000DE538;
  if (!qword_1000DE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE538);
  }

  return result;
}

unint64_t sub_10006E04C()
{
  result = qword_1000DE540;
  if (!qword_1000DE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE540);
  }

  return result;
}

unint64_t sub_10006E0A4()
{
  result = qword_1000DE548;
  if (!qword_1000DE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE548);
  }

  return result;
}

unint64_t sub_10006E0FC()
{
  result = qword_1000DE550;
  if (!qword_1000DE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE550);
  }

  return result;
}

unint64_t sub_10006E154()
{
  result = qword_1000DE558;
  if (!qword_1000DE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE558);
  }

  return result;
}

unint64_t sub_10006E1AC()
{
  result = qword_1000DE560;
  if (!qword_1000DE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE560);
  }

  return result;
}

void *sub_10006E2CC(uint64_t a1)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

unint64_t sub_10006E324(uint64_t a1)
{

  return sub_10006D378(a1);
}

unint64_t sub_10006E348(uint64_t a1)
{

  return sub_10006D378(a1);
}

uint64_t sub_10006E36C(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10006E3C8()
{

  return swift_getWitnessTable();
}

double sub_10006E404@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedScheduler];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 taskRequestForIdentifier:v3];

  if (!v4 || (sub_10006E9B0(), sub_100003998(&qword_1000DE570, &qword_1000AE508), (swift_dynamicCast() & 1) == 0))
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_10006E4E8(uint64_t a1)
{
  v2 = [objc_opt_self() sharedScheduler];
  v14 = 0;
  LODWORD(a1) = [v2 submitTaskRequest:a1 error:&v14];

  v3 = v14;
  if (a1)
  {

    v4 = v3;
  }

  else
  {
    v5 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000DBA10 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100007DE8(v6, qword_1000E6D18);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = sub_1000170D4(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error sbmitting task request: %s", v9, 0xCu);
      sub_100008A94(v10);
    }

    else
    {
    }
  }
}

void sub_10006E750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedScheduler];
  v7 = String._bridgeToObjectiveC()();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_10006E940;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000112F0;
  v10[3] = &unk_1000D3168;
  v9 = _Block_copy(v10);

  [v6 registerForTaskWithIdentifier:v7 usingQueue:0 launchHandler:v9];
  _Block_release(v9);
}

uint64_t sub_10006E884(void *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = a1;
  a2(sub_10006E998, v4);
}

uint64_t sub_10006E908()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006E948(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006E960()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10006E998(id result)
{
  if (result)
  {
    return [*(v1 + 16) setTaskCompleted];
  }

  return result;
}

unint64_t sub_10006E9B0()
{
  result = qword_1000DE568;
  if (!qword_1000DE568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DE568);
  }

  return result;
}

uint64_t *sub_10006EA1C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10006EB70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_10006EA1C(v5, a2);
  sub_100007DE8(v5, a2);
  return Logger.init(subsystem:category:)();
}

void sub_10006EBF8()
{
  type metadata accessor for PersistentStore();
  v0 = PersistentStore.__allocating_init()();
  v1 = objc_allocWithZone(type metadata accessor for ActivityAuthorization());

  v2 = [v1 init];
  v3 = sub_10006F460(v0, v2);

  qword_1000E6DD8 = v3;
}

uint64_t sub_10006EC84()
{
  v1 = v0;
  if (sub_100066914())
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v2 & 1) == 0)
    {
      return result;
    }
  }

  sub_100008614((v1 + 112), *(v1 + 136));
  v4 = dispatch thunk of PersistentStorable.allEventSubscriptionsToConsumers(isConventionalOrUnified:)();
  v5 = v4 + 64;
  sub_10006F7A8();
  v8 = v7 & v6;
  v39 = 0;
  v40 = (v9 + 63) >> 6;
  v45 = 0x80000001000B0480;
  v10 = 0;

  while (1)
  {
    if (v8)
    {
      goto LABEL_10;
    }

    do
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      if (v11 >= v40)
      {

        return 0;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
    }

    while (!v8);
    v10 = v11;
LABEL_10:
    v12 = *(*(v4 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
    v13 = *(v12 + 32);
    v14 = v13 & 0x3F;
    v15 = ((1 << v13) + 63) >> 6;
    v16 = 8 * v15;

    if (v14 <= 0xD)
    {
LABEL_11:
      v42 = &v38;
      v43 = v15;
      __chkstk_darwin(v17);
      v18 = &v38 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v18, v16);
      v44 = 0;
      v19 = 0;
      sub_10006F7A8();
      v22 = v21 & v20;
      v24 = (v23 + 63) >> 6;
      while (1)
      {
        if (v22)
        {
          v25 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          goto LABEL_19;
        }

        v26 = v19;
        do
        {
          v19 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            __break(1u);
            goto LABEL_35;
          }

          if (v19 >= v24)
          {
            v31 = sub_100018FEC(v18, v43, v44, v12);
            v4 = v41;
            goto LABEL_26;
          }

          v27 = *(v12 + 56 + 8 * v19);
          ++v26;
        }

        while (!v27);
        v25 = __clz(__rbit64(v27));
        v22 = (v27 - 1) & v27;
LABEL_19:
        v28 = v25 | (v19 << 6);
        v29 = (*(v12 + 48) + 16 * v28);
        if ((*v29 != 0xD000000000000011 || v45 != v29[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          *&v18[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
          if (__OFADD__(v44++, 1))
          {
            goto LABEL_36;
          }
        }
      }
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_11;
    }

    v33 = v15;
    v34 = swift_slowAlloc();

    v35 = v33;
    v36 = v39;
    v37 = sub_10006F25C(v34, v35, v12, sub_10006F07C, 0);
    v39 = v36;
    if (v36)
    {
      break;
    }

    v31 = v37;
    swift_bridgeObjectRelease_n();

LABEL_26:
    v8 &= v8 - 1;
    v32 = *(v31 + 16);

    if (v32)
    {

      return 1;
    }
  }

  swift_bridgeObjectRelease_n();

  __break(1u);
  return result;
}

uint64_t sub_10006F07C(uint64_t *a1)
{
  if (*a1 == 0xD000000000000011 && 0x80000001000B0480 == a1[1])
  {
    v2 = 0;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_10006F0F0()
{
  sub_100008A94((v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10006F120()
{
  sub_10006F0F0();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10006F174()
{
  result = qword_1000DE630;
  if (!qword_1000DE630)
  {
    type metadata accessor for SubscriptionInspectionUtility();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE630);
  }

  return result;
}

uint64_t sub_10006F1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DBA50 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10006F224(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SubscriptionInspectionUtility();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

unint64_t *sub_10006F25C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v9 = sub_10006F2EC(v8, a2, a3, a4);

    return v9;
  }

  return result;
}

unint64_t *sub_10006F2EC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_100018FEC(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006F460(uint64_t a1, uint64_t a2)
{
  v14 = type metadata accessor for ActivityAuthorization();
  v15 = &off_1000D1900;
  v13[0] = a2;
  type metadata accessor for SubscriptionInspectionUtility();
  v4 = swift_allocObject();
  v5 = sub_10000B90C(v13, v14);
  v6 = __chkstk_darwin(v5);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = sub_10006F578(a1, *v8, v4);
  sub_100008A94(v13);
  return v10;
}

uint64_t sub_10006F578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[3] = type metadata accessor for PersistentStore();
  v27[4] = &protocol witness table for PersistentStore;
  v27[0] = a1;
  v6 = type metadata accessor for ActivityAuthorization();
  v26[3] = v6;
  v26[4] = &off_1000D1900;
  v26[0] = a2;
  swift_defaultActor_initialize();
  sub_10000BC8C(v27, a3 + 112);
  sub_10000BC8C(v26, v25);
  v7 = sub_1000499E0();
  v9 = v8;
  v10 = sub_10000B90C(v25, v25[3]);
  v11 = __chkstk_darwin(v10);
  v13 = (v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v24[3] = v6;
  v24[4] = &off_1000D1900;
  v24[0] = v15;
  type metadata accessor for ActivityCapUtility();
  v16 = swift_allocObject();
  v17 = sub_10000B90C(v24, v6);
  v18 = __chkstk_darwin(v17);
  v20 = (v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = *v20;
  v16[5] = v6;
  v16[6] = &off_1000D1900;
  v16[2] = v22;
  v16[7] = v7;
  v16[8] = v9;
  sub_100008A94(v24);
  sub_100008A94(v27);
  sub_100008A94(v26);
  sub_100008A94(v25);
  *(a3 + 152) = v16;
  return a3;
}

uint64_t sub_10006F7C0@<X0>(void *a1@<X8>)
{
  v2 = sub_1000499E0();
  v4 = v3;
  v5 = [objc_opt_self() defaultSessionConfiguration];
  v6 = [objc_allocWithZone(AMSURLSession) initWithConfiguration:v5];

  if (qword_1000DBA80 != -1)
  {
    sub_1000794D0(&qword_1000DBA80, v7, v8);
  }

  v9 = qword_1000E6E10;
  v19[3] = type metadata accessor for SportsPerformanceMeasurement(0);
  v19[4] = &off_1000D4A78;
  v19[0] = v9;
  a1[3] = &type metadata for ApiAgent;
  a1[4] = &off_1000D18E8;
  v10 = swift_allocObject();
  *a1 = v10;
  v11 = qword_1000DB9B8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = *(qword_1000E6CC0 + 16);
  v13 = [v6 configuration];
  sub_100079034(v2, v4, v13);

  v14 = [v6 configuration];
  v15 = [objc_opt_self() currentProcess];

  v16 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v12];
  [v16 setUrlKnownToBeTrusted:0];
  v10[6] = sub_10000A854();
  v10[7] = &off_1000D0658;
  v10[3] = v16;
  sub_10000A898(v19, (v10 + 9));
  v17 = [objc_allocWithZone(type metadata accessor for AMSTaskDelegate()) init];

  v10[2] = v6;
  v10[8] = v17;
  return sub_100008A94(v19);
}

uint64_t sub_10006FA44()
{
  sub_10000BCF0(v0 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation);

  sub_100008A94((v0 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_liveActivityAppIntentService));
}

id sub_10006FAB8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1000DBA10 != -1)
  {
    sub_10007932C(&qword_1000DBA10, v2, v3);
  }

  v5 = type metadata accessor for Logger();
  sub_10005B0AC(v5, qword_1000E6D18);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Connection closed.", v8, 2u);
    sub_10000B008(v8);
  }

  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "dealloc");
}

void sub_10006FC50(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v141 = a5;
  v153 = a1;
  v154 = a3;
  v152 = a2;
  v10 = type metadata accessor for Date();
  v147 = *(v10 - 8);
  v148 = v10;
  __chkstk_darwin(v10);
  v146 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v143 = *(v12 - 8);
  v144 = v12;
  __chkstk_darwin(v12);
  v142 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003998(&qword_1000DD210, &qword_1000ABE08);
  __chkstk_darwin(v14 - 8);
  v150 = &v131 - v15;
  v16 = type metadata accessor for SportingEventSubscriptionRequest.ContextKey();
  v139 = *(v16 - 8);
  v140 = v16;
  __chkstk_darwin(v16);
  v138 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v137 = &v131 - v19;
  __chkstk_darwin(v20);
  v136 = &v131 - v21;
  __chkstk_darwin(v22);
  v24 = &v131 - v23;
  v145 = type metadata accessor for SubscriptionRegisterOperation(0);
  __chkstk_darwin(v145);
  v149 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SportingEventSubscriptionRequest.SubscriptionType();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v131 - v31;
  v33 = sub_100003998(&qword_1000DE698, &unk_1000AE720);
  __chkstk_darwin(v33 - 8);
  v35 = &v131 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v131 - v37;
  v155 = swift_allocObject();
  v156 = a7;
  *(v155 + 16) = a7;
  v151 = a6;
  v39 = *(a6 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId + 8);
  if (!v39)
  {
    goto LABEL_7;
  }

  v40 = *(a6 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId);
  v41 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v41 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    _Block_copy(v156);

    SportingEventSubscriptionRequest.SubscriptionType.init(rawValue:)();
    sub_10000A744(v38, v35, &qword_1000DE698, &unk_1000AE720);
    if (sub_100008B84(v35, 1, v26) == 1)
    {
      sub_10000A7A8(v38, &qword_1000DE698, &unk_1000AE720);
LABEL_15:

      if (qword_1000DBA20 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_100007DE8(v50, qword_1000E6D48);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v157[0] = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_1000170D4(v154, a4, v157);
        _os_log_impl(&_mh_execute_header, v51, v52, "Tempo /register invalid subscriptionType: %s", v53, 0xCu);
        sub_100008A94(v54);
      }

      v55 = v156;
      sub_100029E04(1u, 0xD000000000000019, 0x80000001000B25E0);
      v56 = _convertErrorToNSError(_:)();
      v55[2](v55, v56);

      v48 = v55;
      goto LABEL_13;
    }

    (*(v27 + 32))(v32, v35, v26);
    (*(v27 + 16))(v29, v32, v26);
    v49 = sub_100070C50(v29);
    (*(v27 + 8))(v32, v26);
    sub_10000A7A8(v38, &qword_1000DE698, &unk_1000AE720);
    if (v49 == 6)
    {
      goto LABEL_15;
    }

    v58 = v152;
    v57 = v153;
    v59 = HIBYTE(v152) & 0xF;
    if ((v152 & 0x2000000000000000) == 0)
    {
      v59 = v153 & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {
      if (qword_1000DBA10 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_100007DE8(v60, qword_1000E6D18);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();

      v63 = os_log_type_enabled(v61, v62);
      v135 = v40;
      v134 = v49;
      if (v63)
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v157[0] = v65;
        *v64 = 136315138;
        *(v64 + 4) = sub_1000170D4(v57, v58, v157);
        _os_log_impl(&_mh_execute_header, v61, v62, "SportsKitRequestXPCSession: Registering for event '%s'", v64, 0xCu);
        sub_100008A94(v65);
      }

      v131 = v151 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation;
      v67 = v139;
      v66 = v140;
      v68 = *(v139 + 104);
      v68(v24, enum case for SportingEventSubscriptionRequest.ContextKey.leagueId(_:), v140);
      v69 = SportingEventSubscriptionRequest.ContextKey.rawValue.getter();
      v71 = v70;
      v72 = *(v67 + 8);
      v72(v24, v66);
      v73 = v141;
      v154 = sub_10007C074(v69, v71, v141);
      v139 = v74;

      v75 = v136;
      v68(v136, enum case for SportingEventSubscriptionRequest.ContextKey.sportId(_:), v66);
      v76 = SportingEventSubscriptionRequest.ContextKey.rawValue.getter();
      v78 = v77;
      v72(v75, v66);
      v136 = sub_10007C074(v76, v78, v73);
      v133 = v79;

      v80 = v137;
      v68(v137, enum case for SportingEventSubscriptionRequest.ContextKey.source(_:), v66);
      v81 = SportingEventSubscriptionRequest.ContextKey.rawValue.getter();
      v83 = v82;
      v72(v80, v66);
      v137 = sub_10007C074(v81, v83, v73);
      v132 = v84;

      v85 = v138;
      v68(v138, enum case for SportingEventSubscriptionRequest.ContextKey.leagueAbbreviation(_:), v66);
      v86 = SportingEventSubscriptionRequest.ContextKey.rawValue.getter();
      v88 = v87;
      v72(v85, v66);
      v89 = sub_10007C074(v86, v88, v73);
      v140 = v90;
      v141 = v89;

      v91 = type metadata accessor for SubscriptionRegisterOperation.PreferredData(0);
      v92 = v150;
      sub_100008E2C(v150, 1, 1, v91);
      v93 = v131;
      v94 = v149;
      sub_10000A898(v131, v149);
      v95 = *(v93 + 40);
      v96 = *(v93 + 48);
      sub_10000A898(v93 + 96, v94 + 56);
      sub_10000A898(v93 + 136, v94 + 96);
      v97 = v145;
      sub_10000A744(v92, v94 + *(v145 + 72), &qword_1000DD210, &qword_1000ABE08);
      sub_100003998(&qword_1000DC430, &qword_1000AA610);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_1000AB460;
      v99 = v152;
      *(v98 + 32) = v153;
      *(v98 + 40) = v99;

      v100 = v142;
      UUID.init()();
      v101 = UUID.uuidString.getter();
      v103 = v102;
      (*(v143 + 8))(v100, v144);
      *(v98 + 48) = v101;
      *(v98 + 56) = v103;
      v157[0] = v98;
      sub_100003998(&qword_1000DC420, &unk_1000ADE60);
      sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60, &protocol conformance descriptor for [A]);
      v104 = BidirectionalCollection<>.joined(separator:)();
      v106 = v105;

      *(v94 + 40) = v95;
      *(v94 + 48) = v96;
      *(v94 + 136) = v135;
      *(v94 + 144) = v39;
      v108 = v153;
      v107 = v154;
      *(v94 + 152) = v153;
      *(v94 + 160) = v99;
      *(v94 + 168) = 0;
      *(v94 + 176) = 0;
      v109 = v139;
      *(v94 + 184) = v107;
      *(v94 + 192) = v109;
      v110 = v133;
      *(v94 + 200) = v136;
      *(v94 + 208) = v110;
      v111 = v132;
      *(v94 + 216) = v137;
      *(v94 + 224) = v111;
      *(v94 + 232) = 0;
      v112 = v140;
      *(v94 + 240) = v141;
      *(v94 + 248) = v112;
      *(v94 + 256) = v134;
      v113 = v97[19];

      v114 = v146;
      v115 = Date.init()();
      sub_10008C99C(v115);
      v117 = v116;
      (*(v147 + 8))(v114, v148);
      sub_10000A7A8(v150, &qword_1000DD210, &qword_1000ABE08);
      *(v94 + v113) = v117;
      v118 = (v94 + v97[20]);
      *v118 = v104;
      v118[1] = v106;
      v119 = v94 + v97[21];
      strcpy(v119, "com.apple.tv");
      *(v119 + 13) = 0;
      *(v119 + 14) = -5120;
      v157[0] = sub_1000351E0();
      v120 = swift_allocObject();
      v121 = v108;
      v120[2] = v108;
      v120[3] = v99;
      v122 = v155;
      v120[4] = sub_100079304;
      v120[5] = v122;
      v123 = swift_allocObject();
      v123[2] = v121;
      v123[3] = v99;
      v123[4] = sub_100079304;
      v123[5] = v122;
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_100003998(&qword_1000DCC18, &qword_1000AB790);
      sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, &protocol conformance descriptor for AnyPublisher<A, B>);
      Publisher.sink(receiveCompletion:receiveValue:)();

      sub_100079224(v94, type metadata accessor for SubscriptionRegisterOperation);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v48 = v156;
    }

    else
    {

      if (qword_1000DBA20 != -1)
      {
        swift_once();
      }

      v124 = type metadata accessor for Logger();
      sub_100007DE8(v124, qword_1000E6D48);
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.error.getter();
      v127 = os_log_type_enabled(v125, v126);
      v128 = v156;
      if (v127)
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        _os_log_impl(&_mh_execute_header, v125, v126, "Tempo /register missing event canonical id", v129, 2u);
      }

      sub_100029E04(1u, 0xD00000000000001ALL, 0x80000001000B2600);
      v130 = _convertErrorToNSError(_:)();
      v128[2](v128, v130);

      v48 = v128;
    }
  }

  else
  {
LABEL_7:
    v42 = v156;
    _Block_copy(v156);
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100007DE8(v43, qword_1000E6D48);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Tempo /register missing process bundle id", v46, 2u);
    }

    sub_100029E04(1u, 0xD000000000000019, 0x80000001000B2590);
    v47 = _convertErrorToNSError(_:)();
    v42[2](v42, v47);

    v48 = v42;
  }

LABEL_13:
  _Block_release(v48);
}

uint64_t sub_100070C50(uint64_t a1)
{
  v2 = type metadata accessor for SportingEventSubscriptionRequest.SubscriptionType();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for SportingEventSubscriptionRequest.SubscriptionType.liveStatistics(_:))
  {
    return 0;
  }

  if (v4 == enum case for SportingEventSubscriptionRequest.SubscriptionType.playByPlay(_:))
  {
    return 1;
  }

  if (v4 == enum case for SportingEventSubscriptionRequest.SubscriptionType.tvClockScore(_:))
  {
    return 5;
  }

  (*(v3 + 8))(a1, v2);
  return 6;
}

uint64_t *sub_100070D50(uint64_t *result, uint64_t a2, unint64_t a3, void (*a4)(uint64_t))
{
  v4 = *result;
  if (*result)
  {
    swift_errorRetain();
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100007DE8(v8, qword_1000E6D48);
    swift_errorRetain();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v11 = 136315394;
      *(v11 + 4) = sub_1000170D4(a2, a3, &v15);
      *(v11 + 12) = 2080;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_1000170D4(v12, v13, &v15);

      *(v11 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "Tempo /register failed for id=%s with error=%s", v11, 0x16u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    a4(v4);
  }

  return result;
}

uint64_t sub_100070F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  type metadata accessor for SportsSubscriptionState();

  static SportsSubscriptionState.activeSubscriptionEventId.setter();
  return a4(0);
}

void sub_1000710A8(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *(a3 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId + 8);
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = *(a3 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId);
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    _Block_copy(a4);
    v12 = qword_1000DBA10;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100007DE8(v13, qword_1000E6D18);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v26 = a1;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000170D4(v26, a2, v27);
      _os_log_impl(&_mh_execute_header, v14, v15, "SportsKitRequestXPCSession: Unregistering for event '%s'", v16, 0xCu);
      sub_100008A94(v17);

      a1 = v26;
    }

    sub_10001F338(v10, v9, a1, a2, v27);

    v18 = v28;
    v19 = v29;
    sub_100008614(v27, v28);
    (*(v19 + 8))(v18, v19);
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = sub_100079304;
    v20[5] = v8;

    sub_100003998(&qword_1000DCC18, &qword_1000AB790);
    sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.sink(receiveCompletion:receiveValue:)();

    sub_100008A94(v27);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    _Block_release(a4);
  }

  else
  {
LABEL_10:
    _Block_copy(a4);
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100007DE8(v21, qword_1000E6D48);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Tempo /unregister missing process bundle id", v24, 2u);
    }

    sub_100029E04(1u, 0xD000000000000019, 0x80000001000B2590);
    v25 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v25);

    _Block_release(a4);
  }
}

uint64_t sub_100071538(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *a1;
  if (!*a1)
  {
    return (a4)(0, a2, a3);
  }

  swift_errorRetain();
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100007DE8(v8, qword_1000E6D48);
  swift_errorRetain();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_1000170D4(a2, a3, &v16);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000170D4(v12, v13, &v16);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Tempo /unregister failed for id=%s - %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  swift_errorRetain();
  a4(v5);
}

void sub_1000717D0(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v80 = type metadata accessor for Date();
  v6 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003998(&qword_1000DDB38, &qword_1000AC630);
  v72 = *(v8 - 8);
  v73 = v8;
  __chkstk_darwin(v8);
  v71 = &v64 - v9;
  v10 = sub_100003998(&qword_1000DDB40, &qword_1000AC638);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v74 = &v64 - v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v14 = *(a2 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId + 8);
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = HIBYTE(v14) & 0xF;
  v78 = *(a2 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId);
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v78 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
LABEL_16:
    _Block_copy(a3);
    if (qword_1000DBA20 == -1)
    {
LABEL_17:
      v52 = type metadata accessor for Logger();
      sub_100007DE8(v52, qword_1000E6D48);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Tempo /unregister missing process bundle id", v55, 2u);
      }

      sub_100029E04(1u, 0xD000000000000019, 0x80000001000B2590);
      v56 = _convertErrorToNSError(_:)();
      (a3)[2](a3, v56);

      _Block_release(a3);
      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_17;
  }

  v65 = v11;
  v66 = v10;
  _Block_copy(a3);
  v16 = qword_1000DBA10;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100007DE8(v17, qword_1000E6D18);

  v18 = Logger.logObject.getter();
  v19 = a1;
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v18, v20);
  v68 = v13;
  v69 = a3;
  v70 = a2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v86[0] = v23;
    *v22 = 136315138;
    v24 = Array.description.getter();
    v26 = sub_1000170D4(v24, v25, v86);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v20, "SportsKitRequestXPCSession: Unregistering for events %s", v22, 0xCu);
    sub_100008A94(v23);
  }

  v27 = *(v19 + 16);
  v67 = v19;
  if (v27)
  {
    v89 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v77 = v70 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation;
    v28 = *(v70 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation + 40);
    v75 = (v6 + 8);
    v76 = v28;
    v29 = (v19 + 40);
    while (1)
    {
      v31 = *(v29 - 1);
      v30 = *v29;
      v32 = v77;
      sub_10000A898(v77, v86);
      sub_10000A898(v32 + 96, &v87);
      sub_10000A898(v32 + 136, v88);
      a3 = v76;
      v86[5] = v76;
      v88[5] = v78;
      v88[6] = v14;
      v88[7] = v31;
      v88[8] = v30;

      v33 = v79;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v35 = v34;
      (*v75)(v33, v80);
      v36 = v35 * 1000.0;
      if (COERCE__INT64(fabs(v35 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v36 <= -1.0)
      {
        goto LABEL_25;
      }

      if (v36 >= 1.84467441e19)
      {
        goto LABEL_26;
      }

      v88[9] = v36;
      v37 = type metadata accessor for ActivityAuthorization();
      v38 = [objc_allocWithZone(v37) init];
      v39 = sub_1000499E0();
      v81 = v40;
      v85[3] = v37;
      v85[4] = &off_1000D1900;
      v85[0] = v38;
      type metadata accessor for ActivityCapUtility();
      v41 = v27;
      v42 = v14;
      v43 = swift_allocObject();
      v44 = sub_10000B90C(v85, v37);
      v45 = __chkstk_darwin(v44);
      v47 = (&v64 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v48 + 16))(v47, v45);
      v49 = *v47;
      v83 = v37;
      v84 = &off_1000D1900;

      *&v82 = v49;
      sub_10000AC3C(&v82, v43 + 16);
      v50 = v81;
      *(v43 + 56) = v39;
      *(v43 + 64) = v50;
      sub_100008A94(v85);
      v88[10] = v43;
      v14 = v42;
      sub_10002F5FC();
      sub_10003248C(v86);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v29 += 2;
      v27 = v41 - 1;
      if (v41 == 1)
      {

        v51 = v89;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_23:
  v86[0] = v51;
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_100003998(&qword_1000DDB58, &unk_1000AC650);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000A6FC(&qword_1000DDB60, &qword_1000DDB58, &unk_1000AC650, &protocol conformance descriptor for [A]);
  v57 = v71;
  Publishers.MergeMany.init<A>(_:)();
  sub_10000A6FC(&qword_1000DDB68, &qword_1000DDB38, &qword_1000AC630, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v58 = v73;
  v59 = v74;
  Publisher.collect()();
  (*(v72 + 8))(v57, v58);
  v60 = swift_allocObject();
  v62 = v67;
  v61 = v68;
  v60[2] = sub_100079304;
  v60[3] = v61;
  v60[4] = v62;
  sub_10000A6FC(&qword_1000DDB70, &qword_1000DDB40, &qword_1000AC638, &protocol conformance descriptor for Publishers.Collect<A>);

  v63 = v66;
  Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v65 + 8))(v59, v63);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  _Block_release(v69);
}

char *sub_1000721A8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*a1 + 16);
  v8 = (*a1 + 32);
  do
  {
    if (v7 == v6)
    {
      return a2(0);
    }

    v9 = v8[v6++];
  }

  while ((v9 & 1) != 0);
  _StringGuts.grow(_:)(46);

  result = sub_100017B68(0, v7, 0);
  if (v7 > *(a4 + 16))
  {
    __break(1u);
  }

  else
  {
    v11 = (a4 + 40);
    do
    {
      v23 = *(v11 - 1);
      v24 = *v11;

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      if (*v8)
      {
        v13 = 0x53534543435553;
      }

      else
      {
        v13 = 0x4552554C494146;
      }

      v14 = 0xE700000000000000;
      String.append(_:)(*&v13);

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_100017B68((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v23;
      v17[5] = v24;
      ++v8;
      v11 += 2;
      --v7;
    }

    while (v7);
    v18 = Array.description.getter();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22 = sub_100029E04(2u, 0xD00000000000002CLL, 0x80000001000B25B0);

    a2(v22);
  }

  return result;
}

uint64_t sub_100072478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1000DBA10 != -1)
  {
    sub_10007932C(&qword_1000DBA10, a2, a3);
  }

  v7 = type metadata accessor for Logger();
  sub_10005B0AC(v7, qword_1000E6D18);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "SportsKitRequestXPCSession: Unsubscribing from all events", v10, 2u);
    sub_10005AFC4();
  }

  v11 = v4 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation;
  sub_10000A898(v4 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation, v16);
  sub_10000A898(v11 + 96, &v17);
  sub_100032104();
  sub_10005B070();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10007934C();
  sub_10000A6FC(v13, &qword_1000DCC18, &qword_1000AB790, v14);
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100079128(v16);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10007266C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  if (!*a1)
  {
    return a2(0);
  }

  swift_errorRetain();
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D48);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_1000170D4(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Tempo /unregister all failed - %s", v7, 0xCu);
    sub_100008A94(v8);
  }

  swift_errorRetain();
  a2(v3);
}

uint64_t sub_1000728C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v48 = type metadata accessor for Date();
  sub_10000AC48();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000ADA0();
  v50 = v13 - v12;
  refreshed = type metadata accessor for SportsManager.RefreshOptions();
  sub_10000AC48();
  v49 = v14;
  __chkstk_darwin(v15);
  sub_10000ADA0();
  v46 = v17 - v16;
  v47 = type metadata accessor for SubscriptionRefreshOperation(0);
  sub_10000ACDC();
  __chkstk_darwin(v18);
  sub_10000ADA0();
  v23 = v22 - v21;
  if (qword_1000DBA10 != -1)
  {
    sub_10007932C(&qword_1000DBA10, v19, v20);
  }

  v24 = type metadata accessor for Logger();
  sub_10005B0AC(v24, qword_1000E6D18);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  v45 = a1;
  if (sub_100079564())
  {
    v44 = v26;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v54[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_1000170D4(a1, a2, v54);
    *(v27 + 12) = 2080;
    v29 = String.init<A>(reflecting:)();
    v31 = a2;
    v32 = sub_1000170D4(v29, v30, v54);

    *(v27 + 14) = v32;
    a2 = v31;
    _os_log_impl(&_mh_execute_header, v25, v44, "SportsKitRequestXPCSession: Refreshing event '%s' with options %s", v27, 0x16u);
    swift_arrayDestroy();
    sub_10000B008(v28);
    sub_10000B008(v27);
  }

  v33 = v6 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation;
  SportsManager.RefreshOptions.init(rawValue:)();
  v34 = *(v33 + 40);
  v35 = *(v33 + 48);
  sub_10000A898(v33 + 96, v23 + 16);
  (*(v49 + 16))(v23 + *(v47 + 36), v46, refreshed);
  *v23 = v34;
  *(v23 + 8) = v35;
  *(v23 + 56) = v45;
  *(v23 + 64) = a2;
  *(v23 + 72) = 1;
  v36 = *(v47 + 40);

  v37 = Date.init()();
  sub_10008C99C(v37);
  v39 = v38;
  (*(v10 + 8))(v50, v48);
  (*(v49 + 8))(v46, refreshed);
  *(v23 + v36) = v39;
  v54[0] = sub_1000A25EC();
  sub_10005B070();
  v40 = swift_allocObject();
  *(v40 + 16) = a4;
  *(v40 + 24) = a5;

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10007934C();
  sub_10000A6FC(v41, &qword_1000DCC18, &qword_1000AB790, v42);
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100079224(v23, type metadata accessor for SubscriptionRefreshOperation);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100072D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DBA80 != -1)
  {
    sub_1000794D0(&qword_1000DBA80, a2, a3);
  }

  return sub_10009E64C();
}

void sub_100072E38(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v45 = a1;
  v46 = a2;
  v9 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v40 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  v15 = *(a5 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId + 8);
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *(a5 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId) & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = v14;
    v42 = *(a5 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId);
    v18 = swift_allocObject();
    v43 = v10;
    v44 = v18;
    v19 = v18;
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v21 = v45;
    v22 = v46;
    v20[2] = v19;
    v20[3] = v21;
    v40 = sub_100079304;
    v20[4] = v22;
    v20[5] = sub_100079304;
    v20[6] = v17;
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A744(a4, v13, &qword_1000DC5A0, &unk_1000AB0E0);
    v24 = *(v43 + 80);
    v41 = a6;
    v25 = (v24 + 40) & ~v24;
    v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = a5;
    v27 = swift_allocObject();
    v28 = v42;
    v27[2] = v23;
    v27[3] = v28;
    v27[4] = v15;
    sub_100078DFC(v13, v27 + v25);
    v29 = (v27 + v26);
    *v29 = v45;
    v29[1] = v22;
    v30 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
    v31 = v40;
    *v30 = v40;
    v30[1] = v17;
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v17;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v33 = v41;
    _Block_copy(v41);

    sub_100074480(sub_100078CB4, v20, sub_100078E6C, v27, sub_100078F4C, v32);

    _Block_release(v33);
  }

  else
  {
LABEL_6:
    _Block_copy(a6);
    if (qword_1000DBA10 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100007DE8(v34, qword_1000E6D18);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1000170D4(v45, v46, &v47);
      _os_log_impl(&_mh_execute_header, v35, v36, "SportsKitRequestXPCSession: Creating activity for event %s, missing process bundle id", v37, 0xCu);
      sub_100008A94(v38);
    }

    sub_100029E04(1u, 0xD000000000000019, 0x80000001000B2590);
    v39 = _convertErrorToNSError(_:)();
    (a6)[2](a6, v39);

    _Block_release(a6);
  }
}

void sub_1000732F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000795F0();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v30 - 8);
  v32 = &a9 - v31;
  v33 = type metadata accessor for Date();
  sub_100008E2C(v32, 1, 1, v33);
  _Block_copy(v21);
  sub_100072E38(v29, v27, v25, v32, v23, v21);
  sub_10000A7A8(v32, &qword_1000DC5A0, &unk_1000AB0E0);
  _Block_release(v21);
  sub_100079604();
}

uint64_t sub_100073484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1000734AC);
}

uint64_t sub_1000734AC()
{
  sub_10001C524();
  sub_1000793B8(*(v0 + 16));
  sub_100064354();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v2 = sub_100079398(v1);

  return v3(v2);
}

uint64_t sub_1000735AC()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  v4 = *v1;
  sub_10001BE74();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_10001C740();

  return _swift_task_switch(v7);
}

uint64_t sub_1000736A8()
{
  sub_10001C370();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v2, v3);
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);
  sub_10001C418();

  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000643EC();

  if (sub_100079564())
  {
    sub_10001C4D0();
    sub_10007951C();
    sub_100079594();
    *(v1 + 4) = sub_1000794A0(4.8149e-34, v6, v7);
    sub_100079480(&_mh_execute_header, v8, v9, "Started live activity for event %s with app intent");
    sub_1000793E0();
    sub_10005AFC4();
  }

  (*(v0 + 40))(0);
  sub_10001BEDC();

  return v10();
}

uint64_t sub_1000737BC()
{
  sub_10001C524();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v3, v4);
  }

  v5 = type metadata accessor for Logger();
  sub_100007DE8(v5, qword_1000E6D90);
  sub_10001C418();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v6, v0))
  {
    sub_10001C4D0();
    v7 = sub_100079548();
    *v2 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v8;
    *v7 = v8;
    sub_10006442C(&_mh_execute_header, v9, v10, "Cannot start live activity: %@");
    sub_10000A7A8(v7, &unk_1000DD790, &unk_1000AB7A0);
    sub_10005AFC4();
    sub_10000B008(v2);
  }

  v11 = *(v1 + 64);
  v12 = *(v1 + 40);

  swift_errorRetain();
  v12(v11);

  sub_10001BEDC();

  return v13();
}

void sub_10007391C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v89 = a8;
  v88 = a7;
  v92 = a6;
  v91 = a5;
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  __chkstk_darwin(ActivityOperation);
  v12 = &v80[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v80[-v14];
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v80[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v80[-v21];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v85 = v22;
    v90 = Strong;

    v84 = a2;
    v96._countAndFlagsBits = a2;
    v24 = a3;
    v96._object = a3;
    v25 = sub_10004B99C(v96);
    if (v25 == 4)
    {
      goto LABEL_7;
    }

    v26 = v25;
    if (qword_1000DB9E8 != -1)
    {
      swift_once();
    }

    if ((sub_100049DE4(v26, qword_1000E6CF8) & 1) == 0)
    {
LABEL_7:
      v27 = sub_1000499E0();
      v24 = v28;
    }

    else
    {

      v27 = v84;
    }

    sub_10000A744(a4, v15, &qword_1000DC5A0, &unk_1000AB0E0);
    v29 = sub_100008B84(v15, 1, v16);
    v30 = v85;
    v86 = v24;
    if (v29 == 1)
    {
      sub_10000A7A8(v15, &qword_1000DC5A0, &unk_1000AB0E0);
      if (qword_1000DBA10 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100007DE8(v31, qword_1000E6D18);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v94[0] = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_1000170D4(v91, v92, v94);
        _os_log_impl(&_mh_execute_header, v32, v33, "SportsKitRequestXPCSession: Creating activity for event %s", v34, 0xCu);
        sub_100008A94(v35);
      }

      v36 = v90;
    }

    else
    {
      v83 = a4;
      (*(v17 + 32))(v85, v15, v16);
      if (qword_1000DBA10 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100007DE8(v37, qword_1000E6D18);
      (*(v17 + 16))(v19, v30, v16);
      v38 = v19;

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v84 = v27;
        v42 = v41;
        v82 = swift_slowAlloc();
        v94[0] = v82;
        *v42 = 136315394;
        *(v42 + 4) = sub_1000170D4(v91, v92, v94);
        *(v42 + 12) = 2080;
        sub_100078F9C(&qword_1000DE690, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v81 = v40;
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        v46 = *(v17 + 8);
        v46(v38, v16);
        v47 = sub_1000170D4(v43, v45, v94);

        *(v42 + 14) = v47;
        _os_log_impl(&_mh_execute_header, v39, v81, "SportsKitRequestXPCSession: Scheduling activity for event %s, scheduled date: %s", v42, 0x16u);
        swift_arrayDestroy();

        v27 = v84;

        v46(v30, v16);
      }

      else
      {

        v48 = *(v17 + 8);
        v48(v19, v16);
        v48(v30, v16);
      }

      v36 = v90;
      a4 = v83;
    }

    v49 = sub_100066914();

    if (v49)
    {
      v50 = 1;
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_10000BC30(v36 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation, v94);
    sub_10000BC30(v94, v12);
    sub_10006F7C0(v12 + 23);
    if (qword_1000DB9B8 != -1)
    {
      swift_once();
    }

    v51 = qword_1000E6CC0;
    *(v12 + 31) = type metadata accessor for BagProvider();
    *(v12 + 32) = &off_1000D0860;
    *(v12 + 28) = v51;
    v52 = type metadata accessor for AccountManager();
    v53 = swift_allocObject();
    *(v12 + 36) = v52;
    *(v12 + 37) = &off_1000D0550;
    *(v12 + 33) = v53;
    v54 = v94[5];
    sub_10000A898(&v95, (v12 + 312));
    if (v50)
    {
      v55 = 0;
    }

    else
    {
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }

    v56 = ActivityOperation;
    sub_10000A744(a4, &v12[*(ActivityOperation + 48)], &qword_1000DC5A0, &unk_1000AB0E0);
    *(v12 + 38) = v54;
    v12[352] = v55 & 1;
    *(v12 + 45) = 0;
    *(v12 + 46) = 0;
    *(v12 + 47) = 0;
    *(v12 + 48) = 1;
    *(v12 + 392) = 0u;
    *(v12 + 408) = 0u;
    *(v12 + 424) = 0u;
    *(v12 + 440) = 0u;
    *(v12 + 456) = 0u;
    *(v12 + 60) = 0;
    *(v12 + 61) = 0;
    *(v12 + 59) = 1;
    v12[496] = 0;
    v57 = &v12[v56[13]];
    *v57 = 0xD000000000000011;
    v57[1] = 0x80000001000B0480;
    v58 = &v12[v56[14]];
    v59 = v86;
    *v58 = v27;
    v58[1] = v59;
    v60 = &v12[v56[15]];
    v61 = v91;
    v62 = v92;
    *v60 = v91;
    v60[1] = v62;
    v12[v56[16]] = v50 & 1;
    ActivityOperation = v56[17];
    v63 = type metadata accessor for ActivityAuthorization();
    v64 = objc_allocWithZone(v63);

    v65 = [v64 init];
    v66 = sub_1000499E0();
    v68 = v67;
    v93[4] = &off_1000D1900;
    v93[3] = v63;
    v93[0] = v65;
    type metadata accessor for ActivityCapUtility();
    v69 = swift_allocObject();
    v70 = sub_10000B90C(v93, v63);
    v71 = __chkstk_darwin(v70);
    v73 = &v80[-((v72 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v74 + 16))(v73, v71);
    v75 = *v73;
    v69[5] = v63;
    v69[6] = &off_1000D1900;
    v69[7] = v66;
    v69[2] = v75;
    v69[8] = v68;
    sub_100008A94(v93);

    sub_10000BCF0(v94);
    *&v12[ActivityOperation] = v69;
    v76 = sub_10008CAA4(0);
    sub_100079224(v12, type metadata accessor for SubscriptionCreateActivityOperation);
    v93[0] = v76;
    v77 = swift_allocObject();
    v77[2] = v61;
    v77[3] = v62;
    v78 = v89;
    v77[4] = v88;
    v77[5] = v78;

    sub_100003998(&qword_1000DCC18, &qword_1000AB790);
    sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.sink(receiveCompletion:receiveValue:)();

    v79 = v90;
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }
}

uint64_t sub_100074480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  sub_100008E2C(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;
  v17[10] = a6;
  v18 = v6;

  sub_10004A77C();
}

uint64_t sub_100074704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10001C594();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10007957C();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a4;
  v10[6] = a5;
  sub_10001C594();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10007957C();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a4;
  v12[6] = a5;
  sub_10005B070();
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  sub_100074480(sub_1000789E8, v10, sub_100078A34, v12, sub_100079300, v13);
}

void sub_1000748C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100074928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100074950);
}

uint64_t sub_100074950()
{
  sub_10001C524();
  sub_1000793B8(*(v0 + 16));
  sub_100064354();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v2 = sub_100079398(v1);

  return v3(v2);
}

uint64_t sub_100074A50()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  v4 = *v1;
  sub_10001BE74();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_10001C740();

  return _swift_task_switch(v7);
}

uint64_t sub_100074B4C()
{
  sub_10001C370();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v2, v3);
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);
  sub_10001C418();

  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000643EC();

  if (sub_100079564())
  {
    sub_10001C4D0();
    sub_10007951C();
    sub_100079594();
    *(v1 + 4) = sub_1000794A0(4.8149e-34, v6, v7);
    sub_100079480(&_mh_execute_header, v8, v9, "Ended live activity for event %s with app intent");
    sub_1000793E0();
    sub_10005AFC4();
  }

  (*(v0 + 40))(0);
  sub_10001BEDC();

  return v10();
}

uint64_t sub_100074C60()
{
  sub_10001C524();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v3, v4);
  }

  v5 = type metadata accessor for Logger();
  sub_100007DE8(v5, qword_1000E6D90);
  sub_10001C418();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v6, v0))
  {
    sub_10001C4D0();
    v7 = sub_100079548();
    *v2 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v8;
    *v7 = v8;
    sub_10006442C(&_mh_execute_header, v9, v10, "Cannot end live activity: %@");
    sub_10000A7A8(v7, &unk_1000DD790, &unk_1000AB7A0);
    sub_10005AFC4();
    sub_10000B008(v2);
  }

  v11 = *(v1 + 64);
  v12 = *(v1 + 40);

  swift_errorRetain();
  v12(v11);

  sub_10001BEDC();

  return v13();
}

void sub_100074DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = type metadata accessor for TaskPriority();
    sub_100008E2C(v11, 1, 1, v14);
    v15 = qword_1000DB9F0;

    v16 = v13;

    if (v15 != -1)
    {
      swift_once();
    }

    v17 = qword_1000E6D00;
    v18 = sub_100078F9C(&qword_1000DDA50, type metadata accessor for LiveActivityActor, &unk_1000AC43C);
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = a2;
    v19[5] = a3;
    v19[6] = v16;
    v19[7] = a4;
    v19[8] = a5;

    sub_10004A77C();
  }
}

uint64_t sub_100074F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[33] = a7;
  v8[34] = a8;
  v8[31] = a5;
  v8[32] = a6;
  v8[30] = a4;
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_10007502C);
}

uint64_t sub_10007502C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DBA10 != -1)
  {
    sub_10007932C(&qword_1000DBA10, a2, a3);
  }

  v5 = type metadata accessor for Logger();
  sub_100007DE8(v5, qword_1000E6D18);
  sub_10001C418();

  v6 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000643EC();

  if (sub_100079564())
  {
    sub_10001C4D0();
    sub_10007951C();
    sub_100079594();
    *(v4 + 4) = sub_1000794A0(4.8149e-34, v7, v8);
    sub_100079480(&_mh_execute_header, v9, v10, "SportsKitRequestXPCSession: Destroying activity for event %s");
    sub_1000793E0();
    sub_10005AFC4();
  }

  v12 = v3[33];
  v11 = v3[34];
  v13 = v3[31];
  v14 = v3[30];
  sub_10000BC30(v3[32] + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation, (v3 + 2));
  v3[25] = 0xD000000000000011;
  v3[26] = 0x80000001000B0480;
  v3[27] = v14;
  v3[28] = v13;

  v3[29] = sub_10009BC68();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v13;
  v15[4] = v12;
  v15[5] = v11;

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10007934C();
  sub_10000A6FC(v16, &qword_1000DCC18, &qword_1000AB790, v17);
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100078B54((v3 + 2));
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10001BEDC();

  return v18();
}

uint64_t sub_10007528C(uint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, const char *a6, const char *a7)
{
  v10 = *a1;
  if (*a1)
  {
    swift_errorRetain();
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C(&qword_1000DBA38, v12, v13);
    }

    v14 = type metadata accessor for Logger();
    sub_10005B0AC(v14, qword_1000E6D90);
    swift_errorRetain();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v29 = a4;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_1000170D4(a2, a3, &v30);
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = sub_1000170D4(v19, v20, &v30);

      *(v17 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, a6, v17, 0x16u);
      swift_arrayDestroy();
      sub_10000B008(v18);
      v22 = v17;
      a4 = v29;
      sub_10000B008(v22);
    }

    swift_errorRetain();
    a4(v10);
  }

  else
  {
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C(&qword_1000DBA38, a2, a3);
    }

    v25 = type metadata accessor for Logger();
    sub_10005B0AC(v25, qword_1000E6D90);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (sub_100079564())
    {
      v28 = sub_10001C4D0();
      v30 = swift_slowAlloc();
      *v28 = 136315138;
      *(v28 + 4) = sub_1000170D4(a2, a3, &v30);
      _os_log_impl(&_mh_execute_header, v26, v27, a7, v28, 0xCu);
      sub_1000793E0();
      sub_10000B008(v28);
    }

    return (a4)(0);
  }
}

void sub_100075548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000795F0();
  v8 = v6;
  v10 = v9;
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v6, v7);
  }

  v11 = type metadata accessor for Logger();
  sub_10005B0AC(v11, qword_1000E6D90);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_10001C4D0();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Cannot check if app intents are supported: %@", v14, 0xCu);
    sub_10000A7A8(v15, &unk_1000DD790, &unk_1000AB7A0);
    sub_10000B008(v15);
    sub_10005AFC4();
  }

  v8(v10);
  sub_100079604();
}

uint64_t sub_1000756B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000795F0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10001C594();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10007957C();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v13;
  v15[4] = v11;
  v15[5] = v9;
  v15[6] = v7;
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v11;
  v16[4] = v9;
  v16[5] = v7;
  sub_10005B070();
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v7;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  sub_100074480(sub_1000786D0, v15, sub_1000786F0, v16, sub_1000786FC, v17);

  sub_100079604();
}

uint64_t sub_100075834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000795F0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = _Block_copy(v14);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  sub_10001C594();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = v13;
  v7(v16, v18, v11, v9, v19);

  sub_100079604();
}

void sub_1000758F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000795F0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v14 - 8);
  v16 = &v21 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = type metadata accessor for TaskPriority();
    sub_100008E2C(v16, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = v13;
    v20[6] = v11;
    v20[7] = v9;
    v20[8] = v7;

    sub_10004A77C();
  }

  sub_100079604();
}

uint64_t sub_100075A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100075A44);
}

uint64_t sub_100075A44()
{
  sub_10001C524();
  sub_1000793B8(*(v0 + 16));
  sub_100064354();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v2 = sub_100079398(v1);

  return v3(v2);
}

uint64_t sub_100075B44()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 64) = v0;

  sub_10001C740();

  return _swift_task_switch(v5);
}

uint64_t sub_100075C4C()
{
  sub_10001BF48();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v1, v2);
  }

  v3 = type metadata accessor for Logger();
  sub_10005B0AC(v3, qword_1000E6D90);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Live activity exists: %{BOOL}d", v7, 8u);
    sub_10000B008(v7);
  }

  v8 = *(v0 + 72);
  v9 = *(v0 + 40);

  v9(v8);
  sub_10001BEDC();

  return v10();
}

uint64_t sub_100075D60()
{
  sub_10001C524();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v3, v4);
  }

  v5 = type metadata accessor for Logger();
  sub_100007DE8(v5, qword_1000E6D90);
  sub_10001C418();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v6, v0))
  {
    sub_10001C4D0();
    v7 = sub_100079548();
    *v2 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v8;
    *v7 = v8;
    sub_10006442C(&_mh_execute_header, v9, v10, "Cannot check for live activity: %@");
    sub_10000A7A8(v7, &unk_1000DD790, &unk_1000AB7A0);
    sub_10005AFC4();
    sub_10000B008(v2);
  }

  v11 = *(v1 + 40);

  v11(0);

  sub_10001BEDC();

  return v12();
}

uint64_t sub_100075EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TaskPriority();
  sub_100008E2C(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;

  sub_10004A77C();
}

uint64_t sub_100075FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100075FDC);
}

uint64_t sub_100075FDC()
{
  sub_10001C370();
  if (qword_1000DBA10 != -1)
  {
    sub_10007932C(&qword_1000DBA10, v2, v3);
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D18);
  sub_10001C418();

  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000643EC();

  if (sub_100079564())
  {
    sub_10001C4D0();
    sub_10007951C();
    sub_100079594();
    *(v1 + 4) = sub_1000794A0(4.8149e-34, v6, v7);
    sub_100079480(&_mh_execute_header, v8, v9, "SportsKitRequestXPCSession: Checking activity for event %s");
    sub_1000793E0();
    sub_10005AFC4();
  }

  if (qword_1000DBA00 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_1000E6D10;
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_10007615C);
}

uint64_t sub_10007615C()
{
  sub_10001BEC4();
  *(v0 + 56) = sub_100052954(*(v0 + 16), *(v0 + 24));
  sub_10001C740();

  return _swift_task_switch(v1);
}

uint64_t sub_1000761C8()
{
  sub_10001BEC4();
  (*(v0 + 32))(*(v0 + 56));
  sub_10001BEDC();

  return v1();
}

uint64_t sub_100076228(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cannot check if app intents are supported: %@", v7, 0xCu);
    sub_10000A7A8(v8, &unk_1000DD790, &unk_1000AB7A0);
  }

  return a2(0);
}

uint64_t sub_1000763C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000795F0();
  v7 = v6;
  v9 = v8;
  v11 = _Block_copy(v10);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  sub_10001C594();
  *(swift_allocObject() + 16) = v11;
  v15 = v9;
  v7(v12, v14);

  sub_100079604();
}

void sub_10007647C(uint64_t a1, void (**a2)(void, void), uint64_t a3)
{
  if (qword_1000DBA00 != -1)
  {
    swift_once();
  }

  v4 = sub_1000499E0();
  v6 = sub_10004F60C(v4, v5);

  a2[2](a2, v6 & 1);

  _Block_release(a2);
}

uint64_t sub_100076580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1000765B4);
}

uint64_t sub_1000765B4()
{
  sub_10001C524();
  sub_1000793B8(*(v2 + 16));
  sub_100064354();
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1000766C4;

  return v6(v0, v1);
}

uint64_t sub_1000766C4()
{
  sub_10001BF48();
  v3 = v2;
  sub_10001BF54();
  v5 = v4;
  sub_10001BED0();
  *v6 = v5;
  v7 = *v1;
  sub_10001BE74();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3 & 1;
  }

  sub_10001C740();

  return _swift_task_switch(v9);
}

uint64_t sub_1000767D8()
{
  sub_10001BEC4();
  v1[12] = v2;
  v1[13] = v0;
  sub_100003998(&qword_1000DE688, &qword_1000AE6A0);
  v1[14] = swift_task_alloc();
  v3 = type metadata accessor for CloudChannelSubscription.Demand();
  v1[15] = v3;
  sub_10000AC84(v3);
  v1[16] = v4;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  sub_10001C740();

  return _swift_task_switch(v5);
}

uint64_t sub_1000768CC()
{
  v1 = *(v0 + 96);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 96) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v27 = *(v0 + 128);
  v28 = (v27 + 32);

  v10 = 0;
  v29 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v10;
    *(v0 + 152) = v29;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v7 &= v7 - 1;

    CloudChannelSubscription.Demand.init(key:value:)();
    if (sub_100008B84(v13, 1, v12) == 1)
    {
      result = sub_10000A7A8(*(v0 + 112), &qword_1000DE688, &qword_1000AE6A0);
    }

    else
    {
      v15 = *(v0 + 136);
      v14 = *(v0 + 144);
      v16 = *(v0 + 120);
      v17 = *v28;
      (*v28)(v14, *(v0 + 112), v16);
      v17(v15, v14, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100016CFC();
        v29 = v22;
      }

      v18 = v29[2];
      v19 = v18 + 1;
      if (v18 >= v29[3] >> 1)
      {
        sub_100016CFC();
        v19 = v18 + 1;
        v29 = v23;
      }

      v20 = *(v0 + 136);
      v21 = *(v0 + 120);
      v29[2] = v19;
      result = (v17)(v29 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v18, v20, v21);
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v24 = *(v0 + 104);

  *(v0 + 56) = v29;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0;
  *(v0 + 88) = 0;
  sub_100079430((v24 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation));
  sub_10000ACDC();
  (*(v25 + 16))();
  sub_1000795D0();
  v26 = swift_task_alloc();
  *(v0 + 160) = v26;
  *v26 = v0;
  sub_100079538(v26);

  return sub_100011358();
}

uint64_t sub_100076BD0()
{
  sub_10001BF48();
  sub_10001BF54();
  v3 = v2;
  sub_10001BED0();
  *v4 = v3;
  v5 = *v1;
  sub_10001BE74();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    sub_10001C740();

    return _swift_task_switch(v7);
  }

  else
  {
    sub_100008A94((v3 + 16));

    sub_10001BEDC();

    return v8();
  }
}

uint64_t sub_100076D3C()
{
  sub_10001BF48();
  sub_100008A94((v0 + 16));

  sub_10001BEDC();

  return v1();
}

uint64_t sub_100076E48(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_100003998(&qword_1000DC400, &qword_1000AAEC0);
  v3[4] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_100076F3C;

  return sub_1000767D8();
}

uint64_t sub_100076F3C()
{
  sub_10001C524();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10001BE74();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = sub_1000794F0();
    v10(v9, v8);
  }

  else
  {
    v11 = sub_1000794F0();
    v12(v11, 0);
  }

  _Block_release(*(v4 + 24));
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_1000770C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_100008E2C(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1000AE630;
  v9[5] = v8;
  sub_100077EB8(0, 0, v6, &unk_1000AE640, v9);
}

uint64_t sub_1000771D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return sub_100079470();
}

uint64_t sub_1000771EC()
{
  sub_10001BF48();
  sub_100079500();
  *(v0 + 88) = 1;
  sub_100079430((v1 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation));
  sub_10000ACDC();
  (*(v2 + 16))();
  sub_1000795D0();
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  sub_100079538(v3);

  return sub_100011358();
}

uint64_t sub_1000772C4()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BED0();
  *v4 = v3;
  v5 = *v1;
  sub_10001BE74();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    sub_10001C740();

    return _swift_task_switch(v7);
  }

  else
  {
    sub_100008A94((v3 + 16));
    sub_10001BEDC();

    return v8();
  }
}

uint64_t sub_100077404(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1000792BC;

  return sub_1000771D0(v6, v8, v9, v11);
}

uint64_t sub_100077500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return sub_100079470();
}

uint64_t sub_10007751C()
{
  sub_10001BF48();
  sub_100079500();
  *(v0 + 88) = 2;
  sub_100079430((v1 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation));
  sub_10000ACDC();
  (*(v2 + 16))();
  sub_1000795D0();
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  sub_100079538(v3);

  return sub_100011358();
}

uint64_t sub_1000775F4()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BED0();
  *v4 = v3;
  v5 = *v1;
  sub_10001BE74();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    sub_10001C740();

    return _swift_task_switch(v7);
  }

  else
  {
    sub_100008A94((v3 + 16));
    sub_10001BEDC();

    return v8();
  }
}

uint64_t sub_100077714()
{
  sub_10001BEC4();
  sub_100008A94((v0 + 16));
  sub_10001BEDC();

  return v1();
}

uint64_t sub_100077790(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_1000794C0();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  v14 = a4;
  v15 = a1;

  return sub_1000770C0(a7, v12);
}

uint64_t sub_100077814(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100077910;

  return sub_100077500(v6, v8, v9, v11);
}

uint64_t sub_100077910()
{
  sub_10001C370();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10001BE74();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = sub_1000794F0();
    v10(v9, v8);
  }

  else
  {
    v11 = sub_1000794F0();
    v12(v11, 0);
  }

  _Block_release(*(v4 + 24));
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_100077ABC()
{
  sub_10001C524();
  v0 = swift_task_alloc();
  v1 = sub_100079424(v0);
  *v1 = v2;
  v3 = sub_100079374(v1);

  return v4(v3);
}

uint64_t sub_100077B58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100045D48;

  return v6();
}

uint64_t sub_100077C44()
{
  sub_10001C524();
  v0 = swift_task_alloc();
  v1 = sub_100079424(v0);
  *v1 = v2;
  v3 = sub_100079374(v1);

  return v4(v3);
}

uint64_t sub_100077CE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100011504;

  return v7();
}

uint64_t sub_100077DC8()
{
  swift_unknownObjectRelease();

  v0 = sub_1000794C0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100077E00()
{
  sub_10001C524();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v1[1] = sub_100045D48;
  v3 = sub_100079364();

  return v4(v3);
}

uint64_t sub_100077EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_10000A744(a3, v22 - v10, &qword_1000DC5A8, &qword_1000AAFD0);
  v12 = type metadata accessor for TaskPriority();
  if (sub_100008B84(v11, 1, v12) == 1)
  {
    sub_10000A7A8(v11, &qword_1000DC5A8, &qword_1000AAFD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_10000A7A8(a3, &qword_1000DC5A8, &qword_1000AAFD0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A7A8(a3, &qword_1000DC5A8, &qword_1000AAFD0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_100078194(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007828C;

  return v6(a1);
}

uint64_t sub_10007828C()
{
  sub_10001BEC4();
  sub_10001BF54();
  v1 = *v0;
  sub_10001BE74();
  *v2 = v1;

  sub_10001BEDC();

  return v3();
}

uint64_t sub_100078370()
{
  sub_10001BF48();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v1[1] = sub_100045D48;
  v3 = sub_100079364();

  return v4(v3);
}

uint64_t sub_100078414()
{
  sub_10001BF48();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v1[1] = sub_100011504;
  v3 = sub_100079364();

  return v4(v3);
}

uint64_t sub_1000784B8()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1000794C0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100078500()
{
  sub_10001C524();
  v0 = swift_task_alloc();
  v1 = sub_100079424(v0);
  *v1 = v2;
  v3 = sub_100079374(v1);

  return v4(v3);
}

uint64_t sub_10007859C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000785E4()
{
  sub_10001BF48();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100079424(v4);
  *v5 = v6;
  v5[1] = sub_100045D48;

  return sub_100076E48(v1, v2, v3);
}