uint64_t sub_1C8D5B168(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 104;
  v9 = (a3 - a2) / 104;
  if (v8 < v9)
  {
    sub_1C8D0C590(a1, (a2 - a1) / 104, a4);
    v10 = &v4[104 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_71;
      }

      v12 = 0xE300000000000000;
      v13 = 5459817;
      switch(*v6)
      {
        case 1:
          v12 = 0xE600000000000000;
          v13 = 0x534F64615069;
          break;
        case 2:
          v12 = 0xE500000000000000;
          v13 = 0x534F63616DLL;
          break;
        case 3:
          v12 = 0xE700000000000000;
          v13 = 0x534F6863746177;
          break;
        case 4:
          v12 = 0xE400000000000000;
          v13 = 1397716596;
          break;
        case 5:
          v12 = 0xE800000000000000;
          v13 = 0x534F6E6F69736976;
          break;
        case 6:
          v13 = 0x6341206F69647541;
          v12 = 0xEF79726F73736563;
          break;
        case 7:
          v12 = 0xE700000000000000;
          v13 = 0x6E776F6E6B6E55;
          break;
        default:
          break;
      }

      v14 = 0xE300000000000000;
      v15 = 5459817;
      switch(*v4)
      {
        case 1:
          v14 = 0xE600000000000000;
          v15 = 0x534F64615069;
          break;
        case 2:
          v14 = 0xE500000000000000;
          v15 = 0x534F63616DLL;
          break;
        case 3:
          v14 = 0xE700000000000000;
          v15 = 0x534F6863746177;
          break;
        case 4:
          v14 = 0xE400000000000000;
          v15 = 1397716596;
          break;
        case 5:
          v14 = 0xE800000000000000;
          v15 = 0x534F6E6F69736976;
          break;
        case 6:
          v15 = 0x6341206F69647541;
          v14 = 0xEF79726F73736563;
          break;
        case 7:
          v14 = 0xE700000000000000;
          v15 = 0x6E776F6E6B6E55;
          break;
        default:
          break;
      }

      v16 = v13 == v15 && v12 == v14;
      if (v16)
      {
        break;
      }

      v17 = sub_1C9064C2C();

      if ((v17 & 1) == 0)
      {
        goto LABEL_32;
      }

      v18 = v6;
      v16 = v7 == v6;
      v6 += 104;
      if (!v16)
      {
        goto LABEL_33;
      }

LABEL_34:
      v7 += 104;
    }

LABEL_32:
    v18 = v4;
    v16 = v7 == v4;
    v4 += 104;
    if (v16)
    {
      goto LABEL_34;
    }

LABEL_33:
    memmove(v7, v18, 0x68uLL);
    goto LABEL_34;
  }

  sub_1C8D0C590(a2, (a3 - a2) / 104, a4);
  v10 = &v4[104 * v9];
LABEL_36:
  v19 = v6 - 104;
  v20 = v5 - 104;
  for (__src = v6 - 104; v10 > v4 && v6 > v7; v19 = __src)
  {
    v35 = v20 + 104;
    v22 = *v19;
    v23 = 0xE300000000000000;
    v24 = v20;
    v25 = 5459817;
    switch(*(v10 - 104))
    {
      case 1:
        v23 = 0xE600000000000000;
        v25 = 0x534F64615069;
        break;
      case 2:
        v23 = 0xE500000000000000;
        v25 = 0x534F63616DLL;
        break;
      case 3:
        v23 = 0xE700000000000000;
        v25 = 0x534F6863746177;
        break;
      case 4:
        v23 = 0xE400000000000000;
        v25 = 1397716596;
        break;
      case 5:
        v23 = 0xE800000000000000;
        v25 = 0x534F6E6F69736976;
        break;
      case 6:
        v25 = 0x6341206F69647541;
        v23 = 0xEF79726F73736563;
        break;
      case 7:
        v23 = 0xE700000000000000;
        v25 = 0x6E776F6E6B6E55;
        break;
      default:
        break;
    }

    v26 = 0xE300000000000000;
    v27 = 5459817;
    switch(v22)
    {
      case 1:
        v26 = 0xE600000000000000;
        v27 = 0x534F64615069;
        break;
      case 2:
        v26 = 0xE500000000000000;
        v27 = 0x534F63616DLL;
        break;
      case 3:
        v26 = 0xE700000000000000;
        v27 = 0x534F6863746177;
        break;
      case 4:
        v26 = 0xE400000000000000;
        v27 = 1397716596;
        break;
      case 5:
        v26 = 0xE800000000000000;
        v27 = 0x534F6E6F69736976;
        break;
      case 6:
        v27 = 0x6341206F69647541;
        v26 = 0xEF79726F73736563;
        break;
      case 7:
        v26 = 0xE700000000000000;
        v27 = 0x6E776F6E6B6E55;
        break;
      default:
        break;
    }

    v28 = v6;
    if (v25 == v27 && v23 == v26)
    {
    }

    else
    {
      v30 = sub_1C9064C2C();

      if (v30)
      {
        v5 = v24;
        v6 = __src;
        if (v24 + 104 != v28)
        {
          memmove(v24, __src, 0x68uLL);
          v6 = __src;
        }

        goto LABEL_36;
      }
    }

    if (v10 != v35)
    {
      memmove(v24, v10 - 104, 0x68uLL);
    }

    v20 = v24 - 104;
    v10 -= 104;
    v6 = v28;
  }

LABEL_71:
  v31 = 104 * ((v10 - v4) / 104);
  if (v6 != v4 || v6 >= &v4[v31])
  {
    memmove(v6, v4, v31);
  }

  return 1;
}

_BYTE *sub_1C8D5B6F8@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

unint64_t sub_1C8D5B764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66810;
  if (!qword_1EDA66810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66810);
  }

  return result;
}

unint64_t sub_1C8D5B7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313DB0;
  if (!qword_1EC313DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313DB0);
  }

  return result;
}

unint64_t sub_1C8D5B80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69548;
  if (!qword_1EDA69548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69548);
  }

  return result;
}

unint64_t sub_1C8D5B860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63710;
  if (!qword_1EDA63710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63710);
  }

  return result;
}

unint64_t sub_1C8D5B8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63200;
  if (!qword_1EDA63200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63200);
  }

  return result;
}

unint64_t sub_1C8D5B908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63708;
  if (!qword_1EDA63708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63708);
  }

  return result;
}

unint64_t sub_1C8D5B95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA631F8;
  if (!qword_1EDA631F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA631F8);
  }

  return result;
}

unint64_t sub_1C8D5B9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C60;
  if (!qword_1EDA69C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C60);
  }

  return result;
}

unint64_t sub_1C8D5BA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313E18;
  if (!qword_1EC313E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313E18);
  }

  return result;
}

unint64_t sub_1C8D5BA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313E20;
  if (!qword_1EC313E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313E20);
  }

  return result;
}

unint64_t sub_1C8D5BAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69BE8;
  if (!qword_1EDA69BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BE8);
  }

  return result;
}

unint64_t sub_1C8D5BB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C48;
  if (!qword_1EDA69C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C48);
  }

  return result;
}

unint64_t sub_1C8D5BB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C00;
  if (!qword_1EDA69C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C00);
  }

  return result;
}

unint64_t sub_1C8D5BBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69BD0;
  if (!qword_1EDA69BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BD0);
  }

  return result;
}

unint64_t sub_1C8D5BBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C30;
  if (!qword_1EDA69C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C30);
  }

  return result;
}

unint64_t sub_1C8D5BC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C18;
  if (!qword_1EDA69C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C18);
  }

  return result;
}

uint64_t sub_1C8D5BCA4(uint64_t a1, uint64_t a2)
{
  sub_1C9063EEC();
  OUTLINED_FUNCTION_29_5();
  v4 = sub_1C9063EEC();
  if (v3 == v4 && v2 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_8(v4);
  }

  return v7 & 1;
}

unint64_t sub_1C8D5BD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA696B8;
  if (!qword_1EDA696B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA696B8);
  }

  return result;
}

unint64_t sub_1C8D5BD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313E80;
  if (!qword_1EC313E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313E80);
  }

  return result;
}

unint64_t sub_1C8D5BDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60B90;
  if (!qword_1EDA60B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60B90);
  }

  return result;
}

unint64_t sub_1C8D5BE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313E88;
  if (!qword_1EC313E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313E88);
  }

  return result;
}

unint64_t sub_1C8D5BE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313E90;
  if (!qword_1EC313E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313E90);
  }

  return result;
}

unint64_t sub_1C8D5BED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313E98;
  if (!qword_1EC313E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313E98);
  }

  return result;
}

uint64_t sub_1C8D5BF44(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 97))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

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

uint64_t sub_1C8D5BF9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C8D5C028(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1C8D5C074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1C8D5C0D8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8D5C234(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8D5C310(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8D5C3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313EA0;
  if (!qword_1EC313EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EA0);
  }

  return result;
}

unint64_t sub_1C8D5C414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313EA8;
  if (!qword_1EC313EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EA8);
  }

  return result;
}

unint64_t sub_1C8D5C46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313EB0;
  if (!qword_1EC313EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EB0);
  }

  return result;
}

unint64_t sub_1C8D5C4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313EB8;
  if (!qword_1EC313EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EB8);
  }

  return result;
}

unint64_t sub_1C8D5C51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA696A8;
  if (!qword_1EDA696A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA696A8);
  }

  return result;
}

unint64_t sub_1C8D5C574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA696B0;
  if (!qword_1EDA696B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA696B0);
  }

  return result;
}

unint64_t sub_1C8D5C5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C08;
  if (!qword_1EDA69C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C08);
  }

  return result;
}

unint64_t sub_1C8D5C624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C10;
  if (!qword_1EDA69C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C10);
  }

  return result;
}

unint64_t sub_1C8D5C67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C20;
  if (!qword_1EDA69C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C20);
  }

  return result;
}

unint64_t sub_1C8D5C6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C28;
  if (!qword_1EDA69C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C28);
  }

  return result;
}

unint64_t sub_1C8D5C72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69BC0;
  if (!qword_1EDA69BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BC0);
  }

  return result;
}

unint64_t sub_1C8D5C784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69BC8;
  if (!qword_1EDA69BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BC8);
  }

  return result;
}

unint64_t sub_1C8D5C7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69BF0;
  if (!qword_1EDA69BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BF0);
  }

  return result;
}

unint64_t sub_1C8D5C834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69BF8;
  if (!qword_1EDA69BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BF8);
  }

  return result;
}

unint64_t sub_1C8D5C88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C38;
  if (!qword_1EDA69C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C38);
  }

  return result;
}

unint64_t sub_1C8D5C8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C40;
  if (!qword_1EDA69C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C40);
  }

  return result;
}

unint64_t sub_1C8D5C93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69BD8;
  if (!qword_1EDA69BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BD8);
  }

  return result;
}

unint64_t sub_1C8D5C994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69BE0;
  if (!qword_1EDA69BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BE0);
  }

  return result;
}

unint64_t sub_1C8D5C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313EC0;
  if (!qword_1EC313EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EC0);
  }

  return result;
}

unint64_t sub_1C8D5CA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313EC8;
  if (!qword_1EC313EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EC8);
  }

  return result;
}

unint64_t sub_1C8D5CA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313ED0;
  if (!qword_1EC313ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313ED0);
  }

  return result;
}

unint64_t sub_1C8D5CAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313ED8;
  if (!qword_1EC313ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313ED8);
  }

  return result;
}

unint64_t sub_1C8D5CB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C50;
  if (!qword_1EDA69C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C50);
  }

  return result;
}

unint64_t sub_1C8D5CBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C58;
  if (!qword_1EDA69C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C58);
  }

  return result;
}

unint64_t sub_1C8D5CBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69538;
  if (!qword_1EDA69538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69538);
  }

  return result;
}

unint64_t sub_1C8D5CC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69540;
  if (!qword_1EDA69540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69540);
  }

  return result;
}

id sub_1C8D5CDA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C9063F3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9063F2C();
  v6 = sub_1C9063EFC();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    result = sub_1C906491C();
    __break(1u);
  }

  else
  {

    sub_1C8CB78AC(0, &qword_1EC313EE8, 0x1E696AE58);
    return sub_1C8D5CF20(v6, v8);
  }

  return result;
}

id sub_1C8D5CF20(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C9061EFC();
  v6 = [v4 initWithData_];

  sub_1C8CE7B78(a1, a2);
  return v6;
}

uint64_t sub_1C8D5CF98(void *a1)
{
  v2 = sub_1C9063F3C();
  v3 = 0;
  if ([a1 beginContentAccess])
  {
    v4 = sub_1C9061F3C();
    v6 = v5;
    sub_1C9063F2C();
    v3 = sub_1C9063F0C();
    sub_1C8CE7B78(v4, v6);
    [a1 endContentAccess];
  }

  return v3;
}

uint64_t sub_1C8D5D0F8()
{
  sub_1C9064D7C();
  sub_1C90645CC();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D5D14C(uint64_t a1)
{
  sub_1C9064D7C();
  sub_1C90645CC();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D5D198()
{

  return v0;
}

uint64_t sub_1C8D5D1C0()
{
  sub_1C8D5D198();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C8D5D22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313EE0;
  if (!qword_1EC313EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EE0);
  }

  return result;
}

void ToolDatabase.get<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 3;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a1;
  swift_getAssociatedTypeWitness();
  v3 = sub_1C906464C();
  ToolDatabase.performInTransaction<A>(mode:work:)(&v5, sub_1C8D5D838, v4, v3);
}

void sub_1C8D5D318(void (*a1)(void))
{
  v26[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v25 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = [objc_opt_self() currentProcess];
  v9 = [v8 isManaged];

  if (v9)
  {
    v24 = a1;
    v10 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    *(v11 + 32) = sub_1C8D11144(0xD000000000000010, 0x80000001C90C9700, 0xD000000000000017, 0x80000001C90C9720);
    v12 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v13 = sub_1C8D13FA0(0xD000000000000017, 0x80000001C90C96E0, v10, v11);
    v26[0] = 0;
    if ([v13 acquireWithError_])
    {
      (a1)(v26[0]);
    }

    else
    {
      v14 = v26[0];
      v15 = sub_1C9061D7C();

      swift_willThrow();
      sub_1C906371C();
      v16 = v15;
      v17 = sub_1C9063D1C();
      v18 = sub_1C906444C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        v21 = v15;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_1C8C9B000, v17, v18, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v19, 0xCu);
        sub_1C8D16D78(v20, &qword_1EC312EC8, &qword_1C9071EA0);
        MEMORY[0x1CCA833A0](v20, -1, -1);
        MEMORY[0x1CCA833A0](v19, -1, -1);
      }

      else
      {
      }

      v23 = (*(v25 + 8))(v7, v2);
      (v24)(v23);
    }

    [v13 invalidate];
  }

  else
  {
    a1();
  }
}

uint64_t ToolDatabase.__allocating_init(file:readonly:)(uint64_t a1, unsigned int a2)
{
  v4 = OUTLINED_FUNCTION_8_12();
  ToolDatabase.init(file:readonly:)(a1, a2);
  return v4;
}

uint64_t sub_1C8D5D758(uint64_t a1)
{
  sub_1C906273C();
  v2 = OBJC_IVAR____TtC7ToolKit12ToolDatabase_lock;
  swift_beginAccess();
  v3 = type metadata accessor for FileLock(0);
  if (!__swift_getEnumTagSinglePayload(a1 + v2, 1, v3))
  {
    v5 = 2;
    FileLock.unlock(configuration:)(&v5);
  }

  return swift_endAccess();
}

unint64_t sub_1C8D5D868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313EF0;
  if (!qword_1EC313EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EF0);
  }

  return result;
}

uint64_t sub_1C8D5D8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

ToolKit::ToolDatabase::DidChangeNotificationSource_optional __swiftcall ToolDatabase.DidChangeNotificationSource.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C8D5D970@<X0>(uint64_t *a1@<X8>)
{
  result = ToolDatabase.DidChangeNotificationSource.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1C8D5D9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313F08;
  if (!qword_1EC313F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313F08);
  }

  return result;
}

uint64_t type metadata accessor for ToolDatabase(uint64_t a1)
{
  result = qword_1EDA6D860;
  if (!qword_1EDA6D860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C8D5DA7C(uint64_t a1)
{
  sub_1C8D5DBDC(319, &qword_1EDA6D458, type metadata accessor for ToolDatabase.DatabaseFile);
  if (v1 <= 0x3F)
  {
    sub_1C8D5DBDC(319, &qword_1EDA6D038, type metadata accessor for FileLock);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C8D5DBDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C906464C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ToolDatabase.DidChangeNotificationSource(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1C8D5DD0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v5 = sub_1C8D3F274();
    v6 = 0;
    v7 = v2 + 56;
    v25 = v2 + 64;
    v26 = v1;
    v27 = v2;
    v28 = v2 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_36;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_37;
        }

        v30 = v5 >> 6;
        v33 = v4;
        v29 = v6;
        v8 = (*(v2 + 48) + 104 * v5);
        v9 = v8[6];
        v31 = v3;
        v32 = v8[10];
        v10 = v8[11];
        v34 = v8[3];
        v35 = v8[4];
        if (v9)
        {
          v11 = v8[5];
        }

        else
        {
          v11 = 0;
        }

        if (v9)
        {
          v12 = v8[6];
        }

        else
        {
          v12 = 0xE000000000000000;
        }

        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        MEMORY[0x1CCA81A90](v11, v12);

        if (v10)
        {
          v13 = v32;
        }

        else
        {
          v13 = 0;
        }

        if (v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = 0xE000000000000000;
        }

        MEMORY[0x1CCA81A90](v13, v14);

        v15 = *(v36 + 16);
        if (v15 >= *(v36 + 24) >> 1)
        {
          sub_1C8CA6480();
        }

        *(v36 + 16) = v15 + 1;
        v16 = v36 + 16 * v15;
        *(v16 + 32) = v34;
        *(v16 + 40) = v35;
        v7 = v28;
        if (v33)
        {
          goto LABEL_41;
        }

        v2 = v27;
        v17 = 1 << *(v27 + 32);
        if (v5 >= v17)
        {
          goto LABEL_38;
        }

        v18 = *(v28 + 8 * v30);
        if ((v18 & (1 << v5)) == 0)
        {
          goto LABEL_39;
        }

        if (*(v27 + 36) != v31)
        {
          goto LABEL_40;
        }

        v19 = v18 & (-2 << (v5 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v30 << 6;
          v21 = v30 + 1;
          v22 = (v25 + 8 * v30);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_1C8CAF698(v5, v31, 0);
              v17 = __clz(__rbit64(v23)) + v20;
              goto LABEL_31;
            }
          }

          sub_1C8CAF698(v5, v31, 0);
        }

LABEL_31:
        v6 = v29 + 1;
        if (v29 + 1 == v26)
        {
          return;
        }

        v4 = 0;
        v3 = *(v27 + 36);
        v5 = v17;
        if (v17 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1C8D5E02C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v5 = sub_1C8D3F274();
    v6 = 0;
    v7 = v2 + 56;
    v24 = v2 + 64;
    v25 = v1;
    v26 = v2 + 56;
    v27 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_31;
        }

        v29 = v4;
        v28 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = v9[1];
        if (v10)
        {
          v11 = *v9;
        }

        else
        {
          v11 = 0;
        }

        if (v10)
        {
          v12 = v9[1];
        }

        else
        {
          v12 = 0xE000000000000000;
        }

        v14 = *(v30 + 16);
        v13 = *(v30 + 24);

        if (v14 >= v13 >> 1)
        {
          OUTLINED_FUNCTION_19_6();
          sub_1C8CA6480();
        }

        *(v30 + 16) = v14 + 1;
        v15 = v30 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v12;
        if (v29)
        {
          goto LABEL_35;
        }

        v7 = v26;
        v2 = v27;
        v16 = 1 << *(v27 + 32);
        if (v5 >= v16)
        {
          goto LABEL_32;
        }

        v17 = *(v26 + 8 * v8);
        if ((v17 & (1 << v5)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v27 + 36) != v28)
        {
          goto LABEL_34;
        }

        v18 = v17 & (-2 << (v5 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v8 << 6;
          v20 = v8 + 1;
          v21 = (v24 + 8 * v8);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1C8CAF698(v5, v28, 0);
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_25;
            }
          }

          sub_1C8CAF698(v5, v28, 0);
        }

LABEL_25:
        if (++v6 == v25)
        {
          return;
        }

        v4 = 0;
        v3 = *(v27 + 36);
        v5 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

void sub_1C8D5E26C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v23 = *(a1 + 16);
    sub_1C8D096CC(0, v1, 0);
    v5 = sub_1C8D3F274();
    v6 = v23;
    v7 = 0;
    v8 = a1 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v9 = v5 >> 6;
        if ((*(v8 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_25;
        }

        v10 = *(*(a1 + 48) + v5);
        v12 = *(v24 + 16);
        v11 = *(v24 + 24);
        if (v12 >= v11 >> 1)
        {
          v22 = v3;
          v21 = v4;
          sub_1C8D096CC(v11 > 1, v12 + 1, 1);
          v4 = v21;
          v3 = v22;
          v8 = a1 + 56;
          v6 = v23;
        }

        *(v24 + 16) = v12 + 1;
        *(v24 + 8 * v12 + 32) = v10;
        if (v4)
        {
          goto LABEL_29;
        }

        v13 = 1 << *(a1 + 32);
        if (v5 >= v13)
        {
          goto LABEL_26;
        }

        v14 = *(v8 + 8 * v9);
        if ((v14 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_28;
        }

        v15 = v14 & (-2 << (v5 & 0x3F));
        if (v15)
        {
          v13 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = v9 << 6;
          v17 = v9 + 1;
          v18 = (a1 + 64 + 8 * v9);
          while (v17 < (v13 + 63) >> 6)
          {
            v20 = *v18++;
            v19 = v20;
            v16 += 64;
            ++v17;
            if (v20)
            {
              sub_1C8CAF698(v5, v3, 0);
              v8 = a1 + 56;
              v6 = v23;
              v13 = __clz(__rbit64(v19)) + v16;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v5, v3, 0);
          v8 = a1 + 56;
          v6 = v23;
        }

LABEL_19:
        if (++v7 == v6)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v13;
        if (v13 < 0)
        {
          break;
        }
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
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1C8D5E4AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v23 = *(a1 + 16);
    sub_1C8D096CC(0, v1, 0);
    v5 = sub_1C8D3F274();
    v6 = v23;
    v7 = 0;
    v8 = a1 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v9 = v5 >> 6;
        if ((*(v8 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_25;
        }

        v10 = *(*(a1 + 48) + v5);
        v12 = *(v24 + 16);
        v11 = *(v24 + 24);
        if (v12 >= v11 >> 1)
        {
          v22 = v3;
          v21 = v4;
          sub_1C8D096CC(v11 > 1, v12 + 1, 1);
          v4 = v21;
          v3 = v22;
          v8 = a1 + 56;
          v6 = v23;
        }

        *(v24 + 16) = v12 + 1;
        *(v24 + 8 * v12 + 32) = 2 * v10 - 1;
        if (v4)
        {
          goto LABEL_29;
        }

        v13 = 1 << *(a1 + 32);
        if (v5 >= v13)
        {
          goto LABEL_26;
        }

        v14 = *(v8 + 8 * v9);
        if ((v14 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_28;
        }

        v15 = v14 & (-2 << (v5 & 0x3F));
        if (v15)
        {
          v13 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = v9 << 6;
          v17 = v9 + 1;
          v18 = (a1 + 64 + 8 * v9);
          while (v17 < (v13 + 63) >> 6)
          {
            v20 = *v18++;
            v19 = v20;
            v16 += 64;
            ++v17;
            if (v20)
            {
              sub_1C8CAF698(v5, v3, 0);
              v8 = a1 + 56;
              v6 = v23;
              v13 = __clz(__rbit64(v19)) + v16;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v5, v3, 0);
          v8 = a1 + 56;
          v6 = v23;
        }

LABEL_19:
        if (++v7 == v6)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v13;
        if (v13 < 0)
        {
          break;
        }
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
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1C8D5E6F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v5 = sub_1C8D3F274();
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_1C8CA6480();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1C8CAF698(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
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
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1C8D5E92C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v28 = MEMORY[0x1E69E7CC0];
    v27 = *(a1 + 16);
    sub_1C8CA6480();
    v4 = sub_1C8D3F274();
    v5 = v27;
    v6 = 0;
    v7 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_29;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_30;
        }

        ++v6;
        v9 = v4 & 0x3F;
        v10 = 0xE900000000000074;
        v11 = 0x6E65746E49707061;
        switch(*(*(a1 + 48) + v4))
        {
          case 1:
            v10 = 0xEA0000000000746ELL;
            v11 = 0x65746E4969726973;
            break;
          case 2:
            v10 = 0xE600000000000000;
            v11 = 0x6E6F69746361;
            break;
          case 3:
            v10 = 0xE700000000000000;
            v11 = 0x6E776F6E6B6E75;
            break;
          case 4:
            v10 = 0xE800000000000000;
            v11 = 0x6C6F6F54776F6C66;
            break;
          default:
            break;
        }

        v12 = *(v28 + 16);
        if (v12 >= *(v28 + 24) >> 1)
        {
          v25 = v2;
          v26 = v6;
          v24 = v3;
          sub_1C8CA6480();
          v9 = v4 & 0x3F;
          v3 = v24;
          v2 = v25;
          v6 = v26;
          v7 = a1 + 56;
          v5 = v27;
        }

        *(v28 + 16) = v12 + 1;
        v13 = v28 + 16 * v12;
        *(v13 + 32) = v11;
        *(v13 + 40) = v10;
        if (v3)
        {
          goto LABEL_34;
        }

        v14 = 1 << *(a1 + 32);
        if (v4 >= v14)
        {
          goto LABEL_31;
        }

        v15 = *(v7 + 8 * v8);
        if ((v15 & (1 << v4)) == 0)
        {
          goto LABEL_32;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_33;
        }

        v16 = v15 & (-2 << v9);
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v8 << 6;
          v18 = v8 + 1;
          v19 = (a1 + 64 + 8 * v8);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              v22 = v6;
              sub_1C8CAF698(v4, v2, 0);
              v7 = a1 + 56;
              v5 = v27;
              v6 = v22;
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_24;
            }
          }

          v23 = v6;
          sub_1C8CAF698(v4, v2, 0);
          v7 = a1 + 56;
          v5 = v27;
          v6 = v23;
        }

LABEL_24:
        if (v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t _s7ToolKit2aaoiyAA08CompoundaB14PropertyFilterOyxGAE_AEtSHRzlF_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  OUTLINED_FUNCTION_50();
  v10 = swift_allocObject();
  type metadata accessor for CompoundToolKitPropertyFilter(255, a3, a4, v11);
  sub_1C9064BEC();
  swift_allocObject();
  v12 = sub_1C90641BC();
  *v13 = v8;
  v13[1] = v9;
  sub_1C906423C();
  *(v10 + 16) = v12;
  *a5 = v10 | 0x8000000000000000;
}

void sub_1C8D5ED58(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_50();
      v26 = swift_allocObject();

      sub_1C8D5E02C(v27);
      OUTLINED_FUNCTION_14_13();
      if (v4)
      {
        goto LABEL_28;
      }

      *(v26 + 16) = sub_1C8D2BCE0(v3);
      v19 = v26 | 0x2000000000000000;
      goto LABEL_33;
    case 2uLL:
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_50();
      v18 = swift_allocObject();

      a2(v3);
      OUTLINED_FUNCTION_23_7();
      if (v4)
      {
        goto LABEL_28;
      }

      v19 = v18 | 0x4000000000000000;
      goto LABEL_33;
    case 3uLL:
      OUTLINED_FUNCTION_24_8();
      OUTLINED_FUNCTION_50();
      v20 = swift_allocObject();
      v21 = MEMORY[0x1E69E7CC0];
      if (!*(v5 + 16))
      {
        goto LABEL_32;
      }

      v30 = v20;
      v32 = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_16_8();
      v21 = v32;
      while (*(v5 + 16))
      {
        OUTLINED_FUNCTION_29_6();
        v22 = OUTLINED_FUNCTION_28_4();
        a2(v22);
        if (v4)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_10_8();
        if (v13)
        {
          OUTLINED_FUNCTION_19_6();
          sub_1C8D09E14(v23, v24, v25);
        }

        OUTLINED_FUNCTION_20_5();
        if (v14)
        {

          v20 = v30;
LABEL_32:
          *(v20 + 16) = v21;
          v19 = v20 | 0x6000000000000000;
          goto LABEL_33;
        }
      }

      goto LABEL_35;
    case 4uLL:
      OUTLINED_FUNCTION_24_8();
      OUTLINED_FUNCTION_50();
      v10 = swift_allocObject();
      v11 = MEMORY[0x1E69E7CC0];
      if (!*(v5 + 16))
      {
        goto LABEL_31;
      }

      v29 = v10;
      v31 = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_16_8();
      v11 = v31;
      break;
    case 5uLL:
      v19 = 0xA000000000000000;
      goto LABEL_33;
    default:
      if (*(a1 + 24))
      {
        v8 = *(a1 + 16);
        v9 = *(a1 + 24);
      }

      else
      {
        v8 = 0;
        v9 = 0xE000000000000000;
      }

      OUTLINED_FUNCTION_2();
      v28 = swift_allocObject();
      *(v28 + 16) = v8;
      *(v28 + 24) = v9;
      *a3 = v28;

      return;
  }

  while (*(v5 + 16))
  {
    OUTLINED_FUNCTION_29_6();
    v12 = OUTLINED_FUNCTION_28_4();
    a2(v12);
    if (v4)
    {
LABEL_27:

LABEL_28:
      OUTLINED_FUNCTION_50();
      swift_deallocUninitializedObject();
      return;
    }

    OUTLINED_FUNCTION_10_8();
    if (v13)
    {
      OUTLINED_FUNCTION_19_6();
      sub_1C8D09E14(v15, v16, v17);
    }

    OUTLINED_FUNCTION_20_5();
    if (v14)
    {

      v10 = v29;
LABEL_31:
      *(v10 + 16) = v11;
      v19 = v10 | 0x8000000000000000;
LABEL_33:
      *a3 = v19;
      return;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1C8D5F090(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a6@<X8>)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_50();
      v33 = swift_allocObject();

      sub_1C8D5DD0C(v34);
      v36 = v35;

      if (v7)
      {
        goto LABEL_39;
      }

      *(v33 + 16) = sub_1C8D2BCE0(v36);
      *a6 = v33 | 0x2000000000000000;
      return;
    case 2uLL:
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_50();
      v25 = swift_allocObject();

      a2(v6);
      OUTLINED_FUNCTION_23_7();
      if (v7)
      {
        goto LABEL_39;
      }

      v26 = v25 | 0x4000000000000000;
      goto LABEL_42;
    case 3uLL:
      OUTLINED_FUNCTION_24_8();
      OUTLINED_FUNCTION_50();
      v40 = swift_allocObject();
      v27 = MEMORY[0x1E69E7CC0];
      if (!*(v8 + 16))
      {
        goto LABEL_41;
      }

      v43 = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_16_8();
      v27 = v43;
      while (*(v8 + 16))
      {
        OUTLINED_FUNCTION_29_6();
        v28 = OUTLINED_FUNCTION_28_4();
        a2(v28);
        if (v7)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_10_8();
        if (v20)
        {
          OUTLINED_FUNCTION_19_6();
          sub_1C8D09E14(v29, v30, v31);
        }

        OUTLINED_FUNCTION_22_9();
        if (v21)
        {

LABEL_41:
          *(v40 + 16) = v27;
          v26 = v40 | 0x6000000000000000;
          goto LABEL_42;
        }
      }

      goto LABEL_44;
    case 4uLL:
      OUTLINED_FUNCTION_24_8();
      OUTLINED_FUNCTION_50();
      v39 = swift_allocObject();
      v18 = MEMORY[0x1E69E7CC0];
      if (!*(v8 + 16))
      {
        goto LABEL_40;
      }

      v42 = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_16_8();
      v18 = v42;
      break;
    case 5uLL:
      v26 = 0xA000000000000000;
      goto LABEL_42;
    default:
      v11 = *(a1 + 64);
      v37 = *(a1 + 96);
      v12 = *(a1 + 104);
      v41 = *(a1 + 40);
      v44 = *(a1 + 48);
      if (v11)
      {
        v13 = *(a1 + 56);
      }

      else
      {
        v13 = 0;
      }

      if (v11)
      {
        v14 = *(a1 + 64);
      }

      else
      {
        v14 = 0xE000000000000000;
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      MEMORY[0x1CCA81A90](v13, v14);

      if (v12)
      {
        v15 = v37;
      }

      else
      {
        v15 = 0;
      }

      if (v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      OUTLINED_FUNCTION_2();
      v17 = swift_allocObject();

      MEMORY[0x1CCA81A90](v15, v16);

      *(v17 + 16) = v41;
      *(v17 + 24) = v44;

      *a6 = v17;
      return;
  }

  while (*(v8 + 16))
  {
    OUTLINED_FUNCTION_29_6();
    v19 = OUTLINED_FUNCTION_28_4();
    a2(v19);
    if (v7)
    {
LABEL_38:

LABEL_39:
      OUTLINED_FUNCTION_50();
      swift_deallocUninitializedObject();
      return;
    }

    OUTLINED_FUNCTION_10_8();
    if (v20)
    {
      OUTLINED_FUNCTION_19_6();
      sub_1C8D09E14(v22, v23, v24);
    }

    OUTLINED_FUNCTION_22_9();
    if (v21)
    {

LABEL_40:
      *(v39 + 16) = v18;
      v26 = v39 | 0x8000000000000000;
LABEL_42:
      *a6 = v26;
      return;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_1C8D5F978()
{
  OUTLINED_FUNCTION_17_5();
  v6 = v5;
  switch(v4 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_50();
      v27 = swift_allocObject();
      v33 = OUTLINED_FUNCTION_31_5(v27, v28, v29, v30, v31, v32);
      sub_1C8D5E6F4(v33);
      OUTLINED_FUNCTION_14_13();
      if (v1)
      {
        goto LABEL_27;
      }

      v34 = sub_1C8D2BCE0(v0);
      OUTLINED_FUNCTION_27_4(v34);
      goto LABEL_30;
    case 2uLL:
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_30_5();
      OUTLINED_FUNCTION_9_10();
      sub_1C8D5F978();
      OUTLINED_FUNCTION_23_7();
      if (v1)
      {
        goto LABEL_27;
      }

      v19 = v2 | 0x4000000000000000;
      goto LABEL_30;
    case 3uLL:
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_11_8();
      if (!v3)
      {
        goto LABEL_29;
      }

      v20 = OUTLINED_FUNCTION_3_17();
      sub_1C8D09E14(v20, v21, v22);
      OUTLINED_FUNCTION_13_9();
      while (1)
      {
        OUTLINED_FUNCTION_12_9();
        if (v13)
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_4_11();
        sub_1C8D5F978();
        if (v1)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_2_15();
        if (v13)
        {
          v24 = OUTLINED_FUNCTION_0_22(v23);
          sub_1C8D09E14(v24, v25, v26);
        }

        OUTLINED_FUNCTION_1_19();
        if (v15)
        {

LABEL_29:
          OUTLINED_FUNCTION_25_6();
          goto LABEL_30;
        }
      }

    case 4uLL:
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_11_8();
      if (!v3)
      {
        goto LABEL_28;
      }

      v10 = OUTLINED_FUNCTION_3_17();
      sub_1C8D09E14(v10, v11, v12);
      OUTLINED_FUNCTION_13_9();
      break;
    case 5uLL:
      *v5 = v4;
      goto LABEL_31;
    default:
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      OUTLINED_FUNCTION_2();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v7;
      *v6 = v9;

      goto LABEL_31;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_9();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_4_11();
    sub_1C8D5F978();
    if (v1)
    {
LABEL_26:

LABEL_27:
      OUTLINED_FUNCTION_50();
      swift_deallocUninitializedObject();
LABEL_31:
      OUTLINED_FUNCTION_18_4();
      return;
    }

    OUTLINED_FUNCTION_2_15();
    if (v13)
    {
      v16 = OUTLINED_FUNCTION_0_22(v14);
      sub_1C8D09E14(v16, v17, v18);
    }

    OUTLINED_FUNCTION_1_19();
    if (v15)
    {

LABEL_28:
      OUTLINED_FUNCTION_26_2();
LABEL_30:
      *v6 = v19;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t CompoundToolKitPropertyFilter.debugDescription.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = 7958113;
  switch(*v1 >> 61)
  {
    case 1:
      OUTLINED_FUNCTION_15_8();
      v26 = 2649705;
      v27 = 0xE300000000000000;
      v25 = v1;
      sub_1C906438C();

      swift_getWitnessTable();
      v16 = sub_1C9063F5C();
      MEMORY[0x1CCA81A90](v16);
      goto LABEL_8;
    case 2:
      v17 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v26 = 678719342;
      v27 = 0xE400000000000000;
      v25 = v17;

      v18 = CompoundToolKitPropertyFilter.debugDescription.getter(a1);
      MEMORY[0x1CCA81A90](v18);

      MEMORY[0x1CCA81A90](41, 0xE100000000000000);

      goto LABEL_9;
    case 3:
      v14 = 677670497;
      v15 = 0xE400000000000000;
      goto LABEL_7;
    case 4:
      v14 = 2650735;
      v15 = 0xE300000000000000;
LABEL_7:
      v26 = v14;
      v27 = v15;

      v20 = MEMORY[0x1CCA81C60](v19, a1);
      v22 = v21;

      MEMORY[0x1CCA81A90](v20, v22);
LABEL_8:

      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
LABEL_9:
      v10 = v26;
      break;
    case 5:
      return v10;
    default:
      v11 = swift_projectBox();
      v12 = *(v4 + 16);
      v12(v9, v11, v3);
      v26 = 2650985;
      v27 = 0xE300000000000000;
      v12(v6, v9, v3);
      v13 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v13);

      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
      v10 = v26;
      (*(v4 + 8))(v9, v3);
      break;
  }

  return v10;
}

uint64_t ! prefix<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_50();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a2 = v4 | 0x4000000000000000;
}

uint64_t sub_1C8D601F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C8D6022C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit08CompoundaB14PropertyFilterOyxG(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_1C8D60284(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C8D602D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1C8D60328(unint64_t *result, uint64_t a2)
{
  if (a2 < 5)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_7()
{
}

uint64_t OUTLINED_FUNCTION_29_6()
{
}

uint64_t AssistantEnumerationSchemaDefinition.init(protobuf:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v70 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v70 - v9;
  v88 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  OUTLINED_FUNCTION_11();
  v90 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v70 - v14;
  type metadata accessor for EnumerationCaseDefinition(0);
  OUTLINED_FUNCTION_11();
  v85 = v16;
  v86 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v22);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v26);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v70 - v28;
  v30 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v31 = sub_1C8CC0620(a1 + *(v30 + 20), v29, &qword_1EC313F20, &unk_1C9074D20);
  sub_1C8D60A64(v31, v32, v33);
  v34 = v101;
  sub_1C906351C();
  if (v34)
  {
    OUTLINED_FUNCTION_0_23();
    return sub_1C8D60EF0(a1, v35);
  }

  else
  {
    v76 = v30;
    v83 = v21;
    v84 = v18;
    v91 = 0;
    v77 = v25;
    v38 = v96;
    v37 = v97;
    v74 = v99;
    v75 = v98;
    v39 = v100;
    v40 = *a1;
    v41 = *(*a1 + 16);
    v42 = a1;
    if (v41)
    {
      v70 = v96;
      v71 = v100;
      v72 = v97;
      v73 = a1;
      v92 = MEMORY[0x1E69E7CC0];
      v80 = v41;
      sub_1C8CB2580(0, v41, 0);
      v101 = v92;
      result = type metadata accessor for DisplayRepresentation(0);
      v82 = result;
      v43 = 0;
      v44 = v90;
      v81 = v40 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v45 = v78;
      v46 = v84;
      v47 = v89;
      while (v43 < *(v40 + 16))
      {
        v48 = v87;
        sub_1C8D60E34(v81 + *(v44 + 72) * v43, v87);
        sub_1C8D60E34(v48, v47);
        v49 = v47[1];
        *v46 = *v47;
        v46[1] = v49;
        sub_1C8CC0620(v47 + *(v88 + 20), v6, &qword_1EC312A48, &unk_1C9072A10);
        sub_1C8D60E98();

        v50 = v91;
        sub_1C906350C();
        if (v50)
        {

          sub_1C8D60EF0(v47, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
          sub_1C8D60EF0(v48, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

          OUTLINED_FUNCTION_0_23();
          sub_1C8D60EF0(v73, v58);
        }

        v91 = 0;
        v51 = v48;
        v52 = v6;
        sub_1C8D60EF0(v47, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
        sub_1C8D60EF0(v51, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
        sub_1C8D60F48(v45, v46 + *(v86 + 20));
        v53 = v83;
        sub_1C8D16CB0(v46, v83);
        v54 = v101;
        v92 = v101;
        v56 = *(v101 + 16);
        v55 = *(v101 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_1C8CB2580(v55 > 1, v56 + 1, 1);
          v45 = v78;
          v54 = v92;
        }

        ++v43;
        *(v54 + 16) = v56 + 1;
        v57 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v101 = v54;
        result = sub_1C8D16CB0(v53, v54 + v57 + *(v85 + 72) * v56);
        v6 = v52;
        v47 = v89;
        v44 = v90;
        v46 = v84;
        if (v80 == v43)
        {
          v42 = v73;
          v59 = v79;
          v60 = v77;
          v37 = v72;
          v39 = v71;
          v38 = v70;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
      v101 = MEMORY[0x1E69E7CC0];
      v60 = v77;
      v59 = v79;
LABEL_13:
      v61 = sub_1C8CC0620(v42 + *(v76 + 24), v60, &qword_1EC313F18, &unk_1C9072A20);
      sub_1C8D60FB8(v61, v62, v63);
      v64 = v91;
      sub_1C906351C();
      if (v64)
      {
        sub_1C8D60EF0(v42, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      }

      else
      {
        result = sub_1C8D60EF0(v42, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
        v65 = v92;
        v66 = v93;
        v67 = v95;
        *v59 = v38;
        *(v59 + 8) = v37;
        v68 = v74;
        *(v59 + 16) = v75;
        *(v59 + 32) = v68;
        v69 = v101;
        *(v59 + 48) = v39;
        *(v59 + 56) = v69;
        *(v59 + 64) = v65;
        *(v59 + 72) = v66;
        *(v59 + 80) = v94;
        *(v59 + 96) = v67;
      }
    }
  }

  return result;
}

unint64_t sub_1C8D60A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA607D8;
  if (!qword_1EDA607D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA607D8);
  }

  return result;
}

uint64_t AssistantEnumerationSchemaDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a1;
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v35 - v12);
  v14 = *v2;
  v15 = v2[1];
  v43 = *(v2 + 1);
  v16 = v2[4];
  v17 = v2[5];
  v18 = v2[6];
  v44 = v2[7];
  v19 = v2[8];
  v37 = v2[9];
  v38 = v19;
  v20 = v2[10];
  v36 = v2[11];
  v39 = v2[12];
  v40 = v20;
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);

  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v9 = v43;
  *(v9 + 2) = v16;
  OUTLINED_FUNCTION_6_10(v9, 0);
  v21 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v22 = *(v21 + 24);
  OUTLINED_FUNCTION_6_10(v13 + v22, 1);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v13 = v14;
  v13[1] = v15;
  sub_1C8D61094(v9, v13 + v22, &qword_1EC313F28, &qword_1C9072058);
  v13[2] = v17;
  v13[3] = v18;
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v21);
  v47 = v45;
  v23 = v48;
  sub_1C8D3F9A4(sub_1C8D6100C, v46, v44);
  if (v23)
  {
    return sub_1C8D6102C(v13);
  }

  v26 = v24;
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v27 = v36;

  v28 = v39;

  v29 = v37;

  v30 = v41;
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v30 = v38;
  v30[1] = v29;
  v30[3] = v40;
  v30[4] = v27;
  v30[2] = v28;
  OUTLINED_FUNCTION_6_10(v30, 0);
  v31 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v32 = *(v31 + 20);
  v33 = v42;
  __swift_storeEnumTagSinglePayload(v42 + v32, 1, 1, v21);
  v34 = *(v31 + 24);
  OUTLINED_FUNCTION_6_10(v33 + v34, 1);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8D61094(v13, v33 + v32, &qword_1EC313F20, &unk_1C9074D20);
  *v33 = v26;
  return sub_1C8D61094(v30, v33 + v34, &qword_1EC313F18, &unk_1C9072A20);
}

void sub_1C8D60DCC(uint64_t a1, uint64_t a2, void *a3)
{
  EnumerationCaseDefinition.protobuf(useCase:)();
  if (v3)
  {
    *a3 = v3;
  }
}

uint64_t sub_1C8D60E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D60E98()
{
  result = qword_1EDA60930;
  if (!qword_1EDA60930)
  {
    type metadata accessor for DisplayRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60930);
  }

  return result;
}

uint64_t sub_1C8D60EF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8D60F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D60FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60778;
  if (!qword_1EDA60778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60778);
  }

  return result;
}

uint64_t sub_1C8D6102C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8D61094(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_1();
  (*(v6 + 40))(v4, v5);
  return v4;
}

unint64_t sub_1C8D610E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313F30;
  if (!qword_1EC313F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313F30);
  }

  return result;
}

uint64_t RunnableTool.toolDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RunnableTool(0) + 20);

  return sub_1C8D611F4(v3, a1);
}

uint64_t type metadata accessor for RunnableTool(uint64_t a1)
{
  result = qword_1EC313F80;
  if (!qword_1EC313F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8D611F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDefinition(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RunnableTool.dynamicallyCall(withKeywordArguments:)()
{
  OUTLINED_FUNCTION_7();
  v1[167] = v0;
  v1[166] = v2;
  v1[165] = v3;
  v4 = type metadata accessor for ConcreteResolvable(0);
  OUTLINED_FUNCTION_9(v4);
  v1[168] = OUTLINED_FUNCTION_39();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F38, &qword_1C90720C8);
  v1[169] = v5;
  v1[170] = *(v5 - 8);
  v1[171] = OUTLINED_FUNCTION_39();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F40, &unk_1C90720D0);
  v1[172] = v6;
  OUTLINED_FUNCTION_9(v6);
  v1[173] = OUTLINED_FUNCTION_38_1();
  v1[174] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F48, &unk_1C907AA90);
  OUTLINED_FUNCTION_9(v7);
  v1[175] = OUTLINED_FUNCTION_38_1();
  v1[176] = swift_task_alloc();
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C8D613B0()
{
  v50 = 0;
  v45 = *(v0 + 1384);
  v48 = *(v0 + 1408);
  v44 = *(v0 + 1368);
  v1 = MEMORY[0x1E69E7CC8];
  v2 = *(*(v0 + 1328) + 16);
  v46 = v2;
  v47 = *(v0 + 1336) + 40;
LABEL_2:
  *(v0 + 1416) = v1;
  v49 = v1;
  if (v50 == v2)
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 1400), 1, 1, *(v0 + 1376));
    v50 = v2;
    goto LABEL_7;
  }

  if (v50 >= v2)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v3 = *(v0 + 1384);
  v4 = *(v0 + 1368);
  v5 = v50;
  sub_1C8D63FCC();
  v6 = *v4;
  v7 = *(v44 + 8);
  sub_1C8D64DF4();
  *v3 = v6;
  *(v45 + 8) = v7;
  sub_1C8D64DF4();
  sub_1C8D61C2C();
  ++v50;
  if (__OFADD__(v5, 1))
  {
LABEL_40:
    __break(1u);
    return;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 1400), 0, 1, *(v0 + 1376));
LABEL_7:
  v8 = *(v0 + 1408);
  v9 = *(v0 + 1376);
  sub_1C8D61C2C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    type metadata accessor for RunnableTool(0);
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    *(v0 + 1424) = v42;
    *v42 = v43;
    v42[1] = sub_1C8D619E8;

    ToolDefinition.callAsFunction(session:_:)();
  }

  else
  {
    v51 = **(v0 + 1408);
    v52 = *(v48 + 8);
    sub_1C8D64DF4();
    v10 = 0;
    v11 = *(v47 + *(type metadata accessor for RunnableTool(0) + 20));
    v12 = *(v11 + 16);
    v13 = (v11 + 32);
    v14 = (v11 + 32);
    while (v12 != v10)
    {
      if (v10 >= *(v11 + 16))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      memcpy((v0 + 152), v14, 0x88uLL);
      v15 = sub_1C9063F6C();
      v17 = v16;
      if (v15 == sub_1C9063F6C() && v17 == v18)
      {
        sub_1C8D07294(v0 + 152, v0 + 560);

LABEL_27:

        v31 = (v0 + 424);
        memcpy((v0 + 424), (v0 + 152), 0x88uLL);
        nullsub_1();
        v23 = *(v0 + 152);
        v24 = *(v0 + 160);
LABEL_30:
        memcpy((v0 + 16), v31, 0x88uLL);
        v32 = *(v0 + 1344);
        sub_1C8F37254((v0 + 1240));
        sub_1C8D04FA4((v0 + 1240), v0 + 1280);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1C8D63DE4((v0 + 1280), v23, v24, isUniquelyReferenced_nonNull_native);

        sub_1C8D16D78(v0 + 16, &qword_1EC313F50, &unk_1C90C5930);
        v1 = v49;
        OUTLINED_FUNCTION_16_9();
        sub_1C8D64024(v32, v34);
        v2 = v46;
        goto LABEL_2;
      }

      v20 = sub_1C9064C2C();
      sub_1C8D07294(v0 + 152, v0 + 288);

      if (v20)
      {
        goto LABEL_27;
      }

      sub_1C8D072F0(v0 + 152);
      v14 += 136;
      ++v10;
    }

    v21 = 0;
    v22 = *(v11 + 16);
    while (v22 != v21)
    {
      if (v21 >= *(v11 + 16))
      {
        goto LABEL_38;
      }

      memcpy((v0 + 696), v13, 0x88uLL);
      v23 = *(v0 + 696);
      v24 = *(v0 + 704);
      v25 = sub_1C9063F6C();
      v27 = v26;
      if (v25 == sub_1C9063F6C() && v27 == v28)
      {
        sub_1C8D07294(v0 + 696, v0 + 1104);

LABEL_29:

        v31 = (v0 + 968);
        memcpy((v0 + 968), (v0 + 696), 0x88uLL);
        nullsub_1();
        goto LABEL_30;
      }

      v30 = sub_1C9064C2C();
      sub_1C8D07294(v0 + 696, v0 + 832);

      if (v30)
      {
        goto LABEL_29;
      }

      sub_1C8D072F0(v0 + 696);
      v13 += 136;
      ++v21;
    }

    v35 = *(v0 + 1344);

    sub_1C8D63F30(v36, v37, v38);
    swift_allocError();
    *v39 = v51;
    v39[1] = v52;
    swift_willThrow();
    OUTLINED_FUNCTION_16_9();
    sub_1C8D64024(v35, v40);
    OUTLINED_FUNCTION_36_5(*(v0 + 1408));

    OUTLINED_FUNCTION_6_0();

    v41();
  }
}

uint64_t sub_1C8D619E8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 1432) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8D61AE8()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_7_10();

  return v0();
}

uint64_t sub_1C8D61B8C()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_36_5(*(v0 + 1408));

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t sub_1C8D61C2C()
{
  OUTLINED_FUNCTION_223();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_13_1();
  v3 = OUTLINED_FUNCTION_94();
  v4(v3);
  return v0;
}

uint64_t ToolDefinition.callAsFunction(session:_:)()
{
  OUTLINED_FUNCTION_7();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_1C906204C();
  v1[7] = v6;
  v1[8] = *(v6 - 8);
  v1[9] = OUTLINED_FUNCTION_39();
  v7 = type metadata accessor for ToolDefinition(0);
  OUTLINED_FUNCTION_9(v7);
  v1[10] = OUTLINED_FUNCTION_38_1();
  v1[11] = swift_task_alloc();
  v8 = type metadata accessor for ToolInvocation(0);
  v1[12] = v8;
  OUTLINED_FUNCTION_9(v8);
  v1[13] = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8D61D8C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];
  sub_1C8D611F4(v0[6], v2);
  _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
  sub_1C8D611F4(v2, v1);
  sub_1C8DC6858(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
  v12 = v11;
  v14 = v0[12];
  v13 = v0[13];
  v16 = v0[8];
  v15 = v0[9];
  v17 = v0[7];
  sub_1C8D64024(v0[11], type metadata accessor for ToolDefinition);
  v18 = v13 + *(v14 + 28);
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 16) = 1;
  *(v18 + 40) = 0;
  (*(v16 + 32))(v13, v15, v17);
  sub_1C8D64DF4();
  *(v13 + *(v14 + 24)) = v12;
  sub_1C8D63F84(*v18, *(v18 + 8), *(v18 + 16));
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 16) = 1;
  *(v18 + 40) = 0;
  swift_getObjectType();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[14] = v19;
  *v19 = v20;
  v19[1] = sub_1C8D62000;

  return ToolExecutionSession.execute(invocation:)();
}

uint64_t sub_1C8D62000()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v4 + 120) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C8D62100()
{
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_15_9();
  sub_1C8D64024(v1, v2);

  OUTLINED_FUNCTION_7_10();

  return v3();
}

uint64_t sub_1C8D62194()
{
  OUTLINED_FUNCTION_15_9();
  sub_1C8D64024(v0, v1);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t TypedValue.init(stringLiteral:)()
{
  OUTLINED_FUNCTION_223();
  v1 = v0;
  type metadata accessor for TypedValue.PrimitiveValue(0);
  v2 = swift_allocBox();
  v3 = sub_1C90640AC();
  result = OUTLINED_FUNCTION_37_7(v3, v4);
  *v1 = v2;
  return result;
}

uint64_t sub_1C8D622B4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TypedValue.PrimitiveValue(0);
  v3 = swift_allocBox();
  v5 = v4;
  *v4 = sub_1C90640AC();
  v5[1] = v6;
  result = swift_storeEnumTagMultiPayload();
  *a2 = v3;
  return result;
}

uint64_t ConcreteResolvable.init(stringLiteral:)()
{
  OUTLINED_FUNCTION_223();
  v1 = v0;
  type metadata accessor for TypedValue.PrimitiveValue(0);
  v2 = swift_allocBox();
  v3 = sub_1C90640AC();
  OUTLINED_FUNCTION_37_7(v3, v4);
  *v1 = v2;
  type metadata accessor for ConcreteResolvable(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TypedValue.init(floatLiteral:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for TypedValue.PrimitiveValue(0);
  v3 = swift_allocBox();
  result = OUTLINED_FUNCTION_29_7(v3, v4);
  *a1 = v1;
  return result;
}

uint64_t ConcreteResolvable.init(floatLiteral:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for TypedValue.PrimitiveValue(0);
  v3 = swift_allocBox();
  OUTLINED_FUNCTION_29_7(v3, v4);
  *a1 = v1;
  type metadata accessor for ConcreteResolvable(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t TypedValue.init(integerLiteral:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for TypedValue.PrimitiveValue(0);
  v3 = swift_allocBox();
  result = OUTLINED_FUNCTION_25_7(v3, v4);
  *a1 = v1;
  return result;
}

uint64_t ConcreteResolvable.init(integerLiteral:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for TypedValue.PrimitiveValue(0);
  v3 = swift_allocBox();
  OUTLINED_FUNCTION_25_7(v3, v4);
  *a1 = v1;
  type metadata accessor for ConcreteResolvable(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static ToolExecutor.session<A>(options:work:)()
{
  OUTLINED_FUNCTION_7();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_17_6(v4);

  return static ToolExecutor.start(options:)();
}

uint64_t sub_1C8D6264C()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  OUTLINED_FUNCTION_377();
  v5 = v4;
  OUTLINED_FUNCTION_4_12();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v5[6] = v3;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = v3;
    OUTLINED_FUNCTION_0_24();
    v15 = v12;
    v13 = swift_task_alloc();
    v5[7] = v13;
    *v13 = v7;
    v13[1] = sub_1C8D627FC;
    v14 = v5[2];

    return v15(v14, v11, &off_1F48A6CC8);
  }
}

uint64_t sub_1C8D627FC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t static ToolExecutor.session(options:work:)()
{
  OUTLINED_FUNCTION_7();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164C0, &qword_1C9072100);
  OUTLINED_FUNCTION_9(v4);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_17_6(v5);

  return static ToolExecutor.start(options:)();
}

uint64_t sub_1C8D629D0()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  OUTLINED_FUNCTION_377();
  v5 = v4;
  OUTLINED_FUNCTION_4_12();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v5[10] = v3;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = v3;
    OUTLINED_FUNCTION_0_24();
    v15 = v12;
    v13 = swift_task_alloc();
    v5[11] = v13;
    *v13 = v7;
    v13[1] = sub_1C8D62B90;
    v14 = v5[8];

    return v15(v14, v11, &off_1F48A6CC8);
  }
}

uint64_t sub_1C8D62B90()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8D62C90()
{
  v1 = v0[7];
  sub_1C8D63FCC();
  v2 = type metadata accessor for TypedValue.ID(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[10];
    v4 = v0[7];
    v5 = v0[4];
    OUTLINED_FUNCTION_40_4(v0[8]);

    OUTLINED_FUNCTION_40_4(v4);
    *v5 = 0xF000000000000007;

    OUTLINED_FUNCTION_7_10();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_31_6();
    OUTLINED_FUNCTION_34_6();
    v8 = v1;
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    v0[13] = v9;
    *v9 = v10;
    v11 = OUTLINED_FUNCTION_18_5(v9);

    return v12(v11);
  }
}

uint64_t sub_1C8D62E5C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v7 = *(v3 + 56);

    OUTLINED_FUNCTION_5_14();
    sub_1C8D64024(v7, v8);
  }

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t static ToolExecutor.session<A>(work:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  OUTLINED_FUNCTION_21_1();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8D62F9C()
{
  OUTLINED_FUNCTION_7();
  if (qword_1EDA660F0 != -1)
  {
    OUTLINED_FUNCTION_19_7(&qword_1EDA660F0);
  }

  v1 = type metadata accessor for ToolExecutor.SessionOptions(0);
  __swift_project_value_buffer(v1, qword_1EDA660F8);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_17_6(v2);

  return static ToolExecutor.start(options:)();
}

uint64_t sub_1C8D6305C()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  OUTLINED_FUNCTION_377();
  v5 = v4;
  OUTLINED_FUNCTION_4_12();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v5[6] = v3;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = v3;
    OUTLINED_FUNCTION_0_24();
    v15 = v12;
    v13 = swift_task_alloc();
    v5[7] = v13;
    *v13 = v7;
    v13[1] = sub_1C8D6320C;
    v14 = v5[2];

    return v15(v14, v11, &off_1F48A6CC8);
  }
}

uint64_t sub_1C8D6320C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8D6330C()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_7_10();

  return v1();
}

uint64_t sub_1C8D63364()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t static ToolExecutor.session(work:)()
{
  OUTLINED_FUNCTION_7();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164C0, &qword_1C9072100);
  OUTLINED_FUNCTION_9(v4);
  v0[7] = OUTLINED_FUNCTION_38_1();
  v0[8] = swift_task_alloc();
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C8D6345C()
{
  OUTLINED_FUNCTION_7();
  if (qword_1EDA660F0 != -1)
  {
    OUTLINED_FUNCTION_19_7(&qword_1EDA660F0);
  }

  v1 = type metadata accessor for ToolExecutor.SessionOptions(0);
  __swift_project_value_buffer(v1, qword_1EDA660F8);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_17_6(v2);

  return static ToolExecutor.start(options:)();
}

uint64_t sub_1C8D6351C()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  OUTLINED_FUNCTION_377();
  v5 = v4;
  OUTLINED_FUNCTION_4_12();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v5[10] = v3;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = v3;
    OUTLINED_FUNCTION_0_24();
    v15 = v12;
    v13 = swift_task_alloc();
    v5[11] = v13;
    *v13 = v7;
    v13[1] = sub_1C8D636DC;
    v14 = v5[8];

    return v15(v14, v11, &off_1F48A6CC8);
  }
}

uint64_t sub_1C8D636DC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8D637DC()
{
  v1 = v0[7];
  sub_1C8D63FCC();
  v2 = type metadata accessor for TypedValue.ID(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[10];
    v4 = v0[7];
    v5 = v0[4];
    OUTLINED_FUNCTION_40_4(v0[8]);

    OUTLINED_FUNCTION_40_4(v4);
    *v5 = 0xF000000000000007;

    OUTLINED_FUNCTION_7_10();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_31_6();
    OUTLINED_FUNCTION_34_6();
    v8 = v1;
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    v0[13] = v9;
    *v9 = v10;
    v11 = OUTLINED_FUNCTION_18_5(v9);

    return v12(v11);
  }
}

uint64_t sub_1C8D639A8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v7 = *(v3 + 56);

    OUTLINED_FUNCTION_5_14();
    sub_1C8D64024(v7, v8);
  }

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8D63AB8()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  sub_1C8D16D78(v1, &unk_1EC3164C0, &qword_1C9072100);
  *v2 = *(v0 + 16);

  OUTLINED_FUNCTION_7_10();

  return v3();
}

uint64_t sub_1C8D63B48()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];

  sub_1C8D16D78(v3, &unk_1EC3164C0, &qword_1C9072100);
  OUTLINED_FUNCTION_5_14();
  sub_1C8D64024(v2, v4);

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t sub_1C8D63BEC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t ToolExecutionSession.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = type metadata accessor for RunnableTool(0);
  sub_1C8D611F4(a1, a3 + *(v7 + 20));
  *a3 = v3;
  a3[1] = a2;

  return swift_unknownObjectRetain();
}

void sub_1C8D63CBC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C8D59AE4(a2);
  OUTLINED_FUNCTION_1_20();
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F98, &unk_1C9085250);
  if ((sub_1C90648EC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1C8D59AE4(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    sub_1C9064CBC();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    v14 = v13[7];
    v15 = *(v14 + 8 * v9);
    *(v14 + 8 * v9) = a1;
  }

  else
  {
    sub_1C8D5CCA8(a2, v16);
    sub_1C8D64B58(v9, v16, a1, v13);
  }
}

uint64_t sub_1C8D63DE4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1C8CAE064(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC313FC8, &qword_1C9072458);
  if ((sub_1C90648EC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1C8CAE064(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1C9064CBC();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 40 * v12);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_1C8D04FA4(a1, v17);
  }

  else
  {
    sub_1C8D64BB0(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_1C8D63F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313F58;
  if (!qword_1EC313F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313F58);
  }

  return result;
}

uint64_t sub_1C8D63F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1C8D63FCC()
{
  OUTLINED_FUNCTION_223();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_13_1();
  v3 = OUTLINED_FUNCTION_94();
  v4(v3);
  return v0;
}

uint64_t sub_1C8D64024(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C8D64080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313F60;
  if (!qword_1EC313F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313F60);
  }

  return result;
}

unint64_t sub_1C8D640D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313F68;
  if (!qword_1EC313F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313F68);
  }

  return result;
}

uint64_t sub_1C8D64194(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ConcreteResolvable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8D64218(uint64_t a1)
{
  result = sub_1C8D6429C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolDefinition(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C8D6429C()
{
  result = qword_1EC313F90;
  if (!qword_1EC313F90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC313F90);
  }

  return result;
}

void sub_1C8D64304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_16(a1, a2, a3);
  OUTLINED_FUNCTION_1_20();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1C9064CBC();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313FA8, &unk_1C9085260);
  OUTLINED_FUNCTION_6_11();
  v7 = sub_1C90648EC();
  if (v7)
  {
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_10_9();
    if (!v11)
    {
      goto LABEL_12;
    }

    v3 = v7;
  }

  if (v5)
  {
    v12 = OUTLINED_FUNCTION_27_5();
    v13 = type metadata accessor for IndexingLog.IndexingEvent(v12);
    v14 = OUTLINED_FUNCTION_9(v13);
    OUTLINED_FUNCTION_30_6(v14, v4 + *(v15 + 72) * v3);
    OUTLINED_FUNCTION_421();
  }

  else
  {
    OUTLINED_FUNCTION_11_9(v7, v8, v9, v10, *v4, type metadata accessor for IndexingLog.IndexingEvent, type metadata accessor for IndexingLog.IndexingEvent);
    OUTLINED_FUNCTION_421();
  }
}

void sub_1C8D6442C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_16(a1, a2, a3);
  OUTLINED_FUNCTION_1_20();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1C9064CBC();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313FB8, &qword_1C9085270);
  OUTLINED_FUNCTION_6_11();
  v7 = sub_1C90648EC();
  if (v7)
  {
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_10_9();
    if (!v11)
    {
      goto LABEL_12;
    }

    v3 = v7;
  }

  if (v5)
  {
    v12 = OUTLINED_FUNCTION_27_5();
    v13 = type metadata accessor for IndexingLog.WALEvent(v12);
    v14 = OUTLINED_FUNCTION_9(v13);
    OUTLINED_FUNCTION_30_6(v14, v4 + *(v15 + 72) * v3);
    OUTLINED_FUNCTION_421();
  }

  else
  {
    OUTLINED_FUNCTION_11_9(v7, v8, v9, v10, *v4, type metadata accessor for IndexingLog.WALEvent, type metadata accessor for IndexingLog.WALEvent);
    OUTLINED_FUNCTION_421();
  }
}

void sub_1C8D64540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_16(a1, a2, a3);
  OUTLINED_FUNCTION_1_20();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1C9064CBC();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313FC0, &qword_1C9072450);
  OUTLINED_FUNCTION_6_11();
  v7 = sub_1C90648EC();
  if (v7)
  {
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_10_9();
    if (!v11)
    {
      goto LABEL_12;
    }

    v3 = v7;
  }

  if (v5)
  {
    v12 = OUTLINED_FUNCTION_27_5();
    v13 = type metadata accessor for IndexingLog.VacuumEvent(v12);
    v14 = OUTLINED_FUNCTION_9(v13);
    OUTLINED_FUNCTION_30_6(v14, v4 + *(v15 + 72) * v3);
    OUTLINED_FUNCTION_421();
  }

  else
  {
    OUTLINED_FUNCTION_11_9(v7, v8, v9, v10, *v4, type metadata accessor for IndexingLog.VacuumEvent, type metadata accessor for IndexingLog.VacuumEvent);
    OUTLINED_FUNCTION_421();
  }
}

uint64_t sub_1C8D64668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1C8CAE064(a2, a3);
  OUTLINED_FUNCTION_1_20();
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_6_11();
  if ((sub_1C90648EC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_1C8CAE064(a2, a3);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_1C9064CBC();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *v6;
  if (v16)
  {
    *(*(v19 + 56) + 8 * v15) = a1;
    OUTLINED_FUNCTION_163();
  }

  else
  {
    sub_1C8D64CA8(v15, a2, a3, a1, v19);
    OUTLINED_FUNCTION_163();
  }
}

void sub_1C8D6478C(_OWORD *a1, uint64_t a2)
{
  v5 = sub_1C90648DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D59B28(a2);
  OUTLINED_FUNCTION_1_20();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316430, &unk_1C9072410);
  OUTLINED_FUNCTION_6_11();
  if ((sub_1C90648EC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1C8D59B28(a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_1C9064CBC();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v2;
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1((v16[7] + 32 * v12));
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_163();

    sub_1C8D1D824(v17, v18);
  }

  else
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_1C8D64CDC(v12, v8, a1, v16);
    OUTLINED_FUNCTION_163();
  }
}

void sub_1C8D64930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_16(a1, a2, a3);
  OUTLINED_FUNCTION_1_20();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1C9064CBC();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164A0, &qword_1C9085180);
  OUTLINED_FUNCTION_6_11();
  v7 = sub_1C90648EC();
  if (v7)
  {
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_10_9();
    if (!v11)
    {
      goto LABEL_12;
    }

    v3 = v7;
  }

  if (v5)
  {
    v12 = OUTLINED_FUNCTION_27_5();
    v13 = type metadata accessor for ConcreteResolvable(v12);
    v14 = OUTLINED_FUNCTION_9(v13);
    OUTLINED_FUNCTION_30_6(v14, v4 + *(v15 + 72) * v3);
    OUTLINED_FUNCTION_421();
  }

  else
  {
    OUTLINED_FUNCTION_11_9(v7, v8, v9, v10, *v4, type metadata accessor for ConcreteResolvable, type metadata accessor for ConcreteResolvable);
    OUTLINED_FUNCTION_421();
  }
}

void sub_1C8D64A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_16(a1, a2, a3);
  OUTLINED_FUNCTION_1_20();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1C9064CBC();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316520, &unk_1C9072420);
  OUTLINED_FUNCTION_6_11();
  v7 = sub_1C90648EC();
  if (v7)
  {
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_10_9();
    if (!v11)
    {
      goto LABEL_12;
    }

    v3 = v7;
  }

  if (v5)
  {
    v12 = OUTLINED_FUNCTION_27_5();
    v13 = type metadata accessor for ToolKitProtoIndexingLogEntry(v12);
    v14 = OUTLINED_FUNCTION_9(v13);
    OUTLINED_FUNCTION_30_6(v14, v4 + *(v15 + 72) * v3);
    OUTLINED_FUNCTION_421();
  }

  else
  {
    OUTLINED_FUNCTION_11_9(v7, v8, v9, v10, *v4, type metadata accessor for ToolKitProtoIndexingLogEntry, type metadata accessor for ToolKitProtoIndexingLogEntry);
    OUTLINED_FUNCTION_421();
  }
}

unint64_t sub_1C8D64B58(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1C8D64BB0(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C8D04FA4(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1C8D64C20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_23_8(a1, a2, a3, a4, a5);
  v9 = v8(0);
  OUTLINED_FUNCTION_9(v9);
  result = sub_1C8D64DF4();
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

unint64_t sub_1C8D64CA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_23_8(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

_OWORD *sub_1C8D64CDC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C90648DC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1C8D1D824(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1C8D64D9C()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t sub_1C8D64DF4()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

unint64_t OUTLINED_FUNCTION_23_8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_7(uint64_t a1, void *a2)
{
  *a2 = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_37_7(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t SecureCodable.init(bytes:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v9 = MEMORY[0x1CCA82A80]();
  sub_1C8D65014(a1, a2, a3, &v11, &v12);
  objc_autoreleasePoolPop(v9);
  result = sub_1C8CE7B78(a1, a2);
  if (!v4)
  {
    *a4 = v12;
  }

  return result;
}

void SecureCodable.bytes.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = MEMORY[0x1CCA82A80]();
  sub_1C8D652B8(v2, &v4, &v5);
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1C8D65014@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_self();
  sub_1C8CB78AC(0, &qword_1EC312AD8, 0x1E695DFD8);
  v27[3] = swift_getMetatypeMetadata();
  v27[0] = a3;
  v9 = sub_1C8D009F4(v27);
  v10 = LNValueTypeObjectClassesForCoding();
  sub_1C906432C();

  v11 = sub_1C906431C();

  v12 = [v9 setByAddingObjectsFromSet_];

  sub_1C906432C();
  v13 = sub_1C906431C();

  v14 = sub_1C9061EFC();
  v27[0] = 0;
  v15 = [v8 unarchivedObjectOfClasses:v13 fromData:v14 error:v27];

  if (v15)
  {
    v16 = v27[0];
    sub_1C906468C();
    swift_unknownObjectRelease();
    result = swift_dynamicCast();
    if (result)
    {
      *a5 = v26;
    }

    else
    {
      type metadata accessor for SecureCodable.DecodingError(0, a3, v18, v19);
      swift_getWitnessTable();
      v22 = swift_allocError();
      *v23 = a1;
      v23[1] = a2;
      swift_willThrow();
      *a4 = v22;
      return sub_1C8CE9144(a1, a2);
    }
  }

  else
  {
    v20 = v27[0];
    v21 = sub_1C9061D7C();

    result = swift_willThrow();
    *a4 = v21;
  }

  return result;
}

void sub_1C8D652B8(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v5 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v12];
  v6 = v12[0];
  if (v5)
  {
    v7 = sub_1C9061F3C();
    v9 = v8;

    *a3 = v7;
    a3[1] = v9;
  }

  else
  {
    v10 = v6;
    v11 = sub_1C9061D7C();

    swift_willThrow();
    *a2 = v11;
  }
}

uint64_t SecureCodable.init(from:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9064DDC();
  if (!v3)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_1C8D02AFC(v7, v8, v9);
    sub_1C9064C4C();
    SecureCodable.init(bytes:)(v11[0], v11[1], a2, v11);
    *a3 = v11[0];
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SecureCodable.encode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9064DFC();
  SecureCodable.bytes.getter(a2);
  if (!v2)
  {
    v10 = v4;
    v11 = v5;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_1C8D02AA8(v6, v7, v8);
    sub_1C9064C5C();
    sub_1C8CE7B78(v10, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(v12);
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

void SecureCodable.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  sub_1C90645CC();
}

uint64_t SecureCodable.hashValue.getter()
{
  v2[9] = *v0;
  sub_1C9064D7C();
  SecureCodable.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D6569C(uint64_t a1)
{
  sub_1C9064D7C();
  SecureCodable.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t SecureCodable.debugDescription.getter(uint64_t a1)
{
  v2 = *v1;
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0x6F43657275636553, 0xEE003C656C626164);
  v3 = sub_1C9064E9C();
  MEMORY[0x1CCA81A90](v3);

  MEMORY[0x1CCA81A90](10302, 0xE200000000000000);
  swift_getWitnessTable();
  sub_1C9064BFC();

  MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C8D65850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _s16InsertionSessionVwet(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t _s16InsertionSessionVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_1C8D65920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 AssistantSchemaVersion.init(protobuf:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v5 = *a1;
  v3 = a1[1].n128_u64[0];
  sub_1C8D659C8(a1);
  result = v5;
  *a2 = v5;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t sub_1C8D659C8(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 AssistantSchemaVersion.protobuf(useCase:)@<Q0>(__n128 *a1@<X8>)
{
  v5 = *v1;
  v3 = v1[1].n128_u64[0];
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  result = v5;
  *a1 = v5;
  a1[1].n128_u64[0] = v3;
  return result;
}

unint64_t sub_1C8D65A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60860;
  if (!qword_1EDA60860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60860);
  }

  return result;
}

uint64_t IndexingLog.IndexingEvent.reason.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = type metadata accessor for IndexingLog.IndexingEvent(v0);
  return OUTLINED_FUNCTION_61_4(&qword_1EC314058, &qword_1C90726F8, *(v1 + 28));
}

uint64_t IndexingLog.IndexingEvent.requestId.getter()
{
  type metadata accessor for IndexingLog.IndexingEvent(0);
  OUTLINED_FUNCTION_27_6();
  return OUTLINED_FUNCTION_94();
}

uint64_t IndexingLog.IndexingEvent.coalescedWithReasons.getter()
{
  type metadata accessor for IndexingLog.IndexingEvent(0);
}

uint64_t IndexingLog.IndexingEvent.resolvedChangeset.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = type metadata accessor for IndexingLog.IndexingEvent(v0);
  return OUTLINED_FUNCTION_61_4(&qword_1EC314060, &qword_1C9072700, *(v1 + 40));
}

uint64_t IndexingLog.IndexingEvent.resolutionDecisionMetadata.getter()
{
  type metadata accessor for IndexingLog.IndexingEvent(0);
}

uint64_t IndexingLog.IndexingEvent.successfulTools.getter()
{
  type metadata accessor for IndexingLog.IndexingEvent(0);
}

uint64_t IndexingLog.IndexingEvent.successfulTypes.getter()
{
  type metadata accessor for IndexingLog.IndexingEvent(0);
}

uint64_t IndexingLog.IndexingEvent.fatalError.getter()
{
  type metadata accessor for IndexingLog.IndexingEvent(0);
  OUTLINED_FUNCTION_27_6();
  return OUTLINED_FUNCTION_94();
}

uint64_t IndexingLog.IndexingEvent.failedTools.getter()
{
  type metadata accessor for IndexingLog.IndexingEvent(0);
}

uint64_t IndexingLog.IndexingEvent.failedTypes.getter()
{
  type metadata accessor for IndexingLog.IndexingEvent(0);
}

uint64_t sub_1C8D65E18()
{
  v0 = OUTLINED_FUNCTION_386();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_61_4(&qword_1EC313AD8, &qword_1C90726F0, *(v2 + 20));
}

uint64_t sub_1C8D65E94()
{
  v0 = OUTLINED_FUNCTION_386();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_61_4(&qword_1EC313AD8, &qword_1C90726F0, *(v2 + 24));
}

uint64_t sub_1C8D66004(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_27_6();
  return OUTLINED_FUNCTION_94();
}

void IndexingLog.IndexingEvent.Either<>.hash(into:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_31_7();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_30_7();
  v8 = v6 - v7;
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_31_7();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30_7();
  v16 = v14 - v15;
  OUTLINED_FUNCTION_31_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30_7();
  v20 = v18 - v19;
  (*(v21 + 16))(v18 - v19, v22, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v8, v20, v2);
    MEMORY[0x1CCA82810](1);
    sub_1C9063E7C();
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    (*(v12 + 32))(v16, v20, v10);
    MEMORY[0x1CCA82810](0);
    sub_1C9063E7C();
    (*(v12 + 8))(v16, v10);
  }

  OUTLINED_FUNCTION_163();
}

uint64_t IndexingLog.IndexingEvent.Either<>.hashValue.getter()
{
  sub_1C9064D7C();
  OUTLINED_FUNCTION_54_2();
  IndexingLog.IndexingEvent.Either<>.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D662F4(uint64_t a1)
{
  sub_1C9064D7C();
  IndexingLog.IndexingEvent.Either<>.hash(into:)();
  return sub_1C9064DBC();
}

void static IndexingLog.IndexingEvent.Either<>.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v42 = v2;
  v43 = v3;
  v5 = v4;
  v48 = v6;
  v49 = v7;
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v41 = v10 - v9;
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v40 = v14 - v13;
  v15 = OUTLINED_FUNCTION_111();
  v47 = v16;
  v18 = type metadata accessor for IndexingLog.IndexingEvent.Either(v15, v17, v16, v16);
  OUTLINED_FUNCTION_11();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_51_3();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_11();
  v44 = v23;
  OUTLINED_FUNCTION_82();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v40 - v26;
  v29 = *(v28 + 48);
  v30 = *(v20 + 16);
  v30(&v40 - v26, v48, v18, v25);
  (v30)(&v27[v29], v49, v18);
  OUTLINED_FUNCTION_93();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v30)(v1, v27, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v46;
      v31 = v47;
      v33 = v41;
      (*(v46 + 32))(v41, &v27[v29], v47);
      sub_1C9063EAC();
      v34 = *(v32 + 8);
      v34(v33, v31);
      v34(v1, v31);
    }

    else
    {
      (*(v46 + 8))(v1, v47);
    }
  }

  else
  {
    (v30)(v0, v27, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v45 + 8))(v0, v5);
    }

    else
    {
      v35 = v45;
      v36 = v40;
      (*(v45 + 32))(v40, &v27[v29], v5);
      sub_1C9063EAC();
      v37 = *(v35 + 8);
      v37(v36, v5);
      v37(v0, v5);
    }
  }

  v38 = OUTLINED_FUNCTION_93();
  v39(v38);
  OUTLINED_FUNCTION_163();
}

uint64_t IndexingLog.IndexingEvent.FailureAnnotated<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C9063E7C();
  if (!*(v3 + *(a2 + 28) + 8))
  {
    return sub_1C9064D9C();
  }

  sub_1C9064D9C();
  OUTLINED_FUNCTION_54_2();

  return sub_1C9063FBC();
}

uint64_t IndexingLog.IndexingEvent.FailureAnnotated<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1C9064D7C();
  IndexingLog.IndexingEvent.FailureAnnotated<A>.hash(into:)(v5, a1, a2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D6683C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1C9064D7C();
  IndexingLog.IndexingEvent.FailureAnnotated<A>.hash(into:)(v6, a2, v4);
  return sub_1C9064DBC();
}

uint64_t static IndexingLog.IndexingEvent.FailureAnnotated<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1C9063EAC())
  {
    v9 = *(type metadata accessor for IndexingLog.IndexingEvent.FailureAnnotated(0, a3, v7, v8) + 28);
    v10 = (a1 + v9);
    v11 = *(a1 + v9 + 8);
    v12 = (a2 + v9);
    v13 = v12[1];
    if (v11)
    {
      if (v13)
      {
        v14 = *v10 == *v12 && v11 == v13;
        if (v14 || (sub_1C9064C2C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

void *sub_1C8D66944()
{
  type metadata accessor for IndexingLog.IndexingEvent(0);
  v0[2] = sub_1C9063E2C();
  v1 = type metadata accessor for IndexingLog.WALEvent(0);
  v0[3] = OUTLINED_FUNCTION_21_7(v1);
  v2 = type metadata accessor for IndexingLog.VacuumEvent(0);
  v0[4] = OUTLINED_FUNCTION_21_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  v0[5] = OUTLINED_FUNCTION_21_7(v3);
  return v0;
}

void sub_1C8D669E0()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316530, &qword_1C90729E8);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_142();
  v8 = type metadata accessor for ToolKitProtoIndexingReason(0);
  v9 = OUTLINED_FUNCTION_9(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = sub_1C906359C();
  OUTLINED_FUNCTION_11();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  sub_1C8D6DEE0(v5, v12, type metadata accessor for ToolKitProtoIndexingReason);

  ToolKitIndexingReason.init(protobuf:)();
  if (v1)
  {
  }

  else
  {
    [v3 timestamp];
    sub_1C9061F6C();
    v20 = sub_1C9061FEC();
    v21 = OUTLINED_FUNCTION_137();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
    v24 = type metadata accessor for IndexingLog.IndexingEvent(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v20);
    (*(v15 + 16))(v0 + v24[7], v19, v13);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
    sub_1C906357C();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    OUTLINED_FUNCTION_40_5(v24[8]);
    v39 = MEMORY[0x1E69E7CD0];
    *(v0 + v24[9]) = MEMORY[0x1E69E7CD0];
    *(v0 + v24[11]) = v39;
    *(v0 + v24[12]) = v39;
    *(v0 + v24[13]) = v39;
    OUTLINED_FUNCTION_40_5(v24[14]);
    *(v0 + v24[15]) = v40;
    *(v0 + v24[16]) = v40;
    v41 = OUTLINED_FUNCTION_137();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v24);
    OUTLINED_FUNCTION_5_15();
    swift_beginAccess();
    sub_1C8E06AB0();
    swift_endAccess();
    (*(v15 + 8))(v19, v13);
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8D66CCC()
{
  OUTLINED_FUNCTION_196();
  v118 = v0;
  v111 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  v110 = v7;
  v8 = OUTLINED_FUNCTION_111();
  v9 = type metadata accessor for IndexingLog.IndexingEvent(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v109 = v11 - v12;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_228();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316530, &qword_1C90729E8);
  v15 = OUTLINED_FUNCTION_9(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  v108 = v16 - v17;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_147();
  v113 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314058, &qword_1C90726F8);
  OUTLINED_FUNCTION_9(v20);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_97();
  v112 = v22;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  OUTLINED_FUNCTION_11();
  v107 = v23;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_97();
  v116 = v25;
  v26 = v4[2];
  v27 = *(v26 + 16);
  v106 = v26;
  if (v27)
  {
    v105 = v4;
    v119 = MEMORY[0x1E69E7CC0];

    sub_1C8D09AF4(0, v27, 0);
    v28 = (v26 + 40);
    while (1)
    {
      v30 = *(v28 - 1);
      v29 = *v28;
      OUTLINED_FUNCTION_7_11();
      swift_beginAccess();
      if (*(*(v118 + 16) + 16))
      {

        v31 = OUTLINED_FUNCTION_93();
        sub_1C8CAE064(v31, v32);
        if (v33)
        {
          OUTLINED_FUNCTION_0_25();
          v34 = v113;
          sub_1C8D6DEE0(v35, v113, v36);
          v37 = v113;
          v38 = 0;
        }

        else
        {
          v34 = v113;
          v37 = OUTLINED_FUNCTION_25_2();
        }

        __swift_storeEnumTagSinglePayload(v37, v38, 1, v9);
      }

      else
      {
        v34 = v113;
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v9);
      }

      v42 = OUTLINED_FUNCTION_25_2();
      if (__swift_getEnumTagSinglePayload(v42, v43, v9))
      {
        break;
      }

      sub_1C8D52860(v34 + v9[7], v112, &qword_1EC314058, &qword_1C90726F8);
      v48 = v34;
      v44 = v112;
      sub_1C8D16D78(v48, &unk_1EC316530, &qword_1C90729E8);
      swift_endAccess();
      v49 = OUTLINED_FUNCTION_25_2();
      if (__swift_getEnumTagSinglePayload(v49, v50, v115) == 1)
      {
        goto LABEL_12;
      }

      sub_1C8D6DFF0(v112, v116);
LABEL_15:
      v54 = *(v119 + 16);
      v53 = *(v119 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1C8D09AF4((v53 > 1), v54 + 1, 1);
      }

      *(v119 + 16) = v54 + 1;
      sub_1C8D6DFF0(v116, v119 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v54);
      v28 += 2;
      if (!--v27)
      {
        v4 = v105;
        v26 = v106;
        goto LABEL_20;
      }
    }

    sub_1C8D16D78(v34, &unk_1EC316530, &qword_1C90729E8);
    swift_endAccess();
    v44 = v112;
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v115);
LABEL_12:
    *v116 = v30;
    v116[1] = v29;
    swift_storeEnumTagMultiPayload();
    v51 = OUTLINED_FUNCTION_25_2();
    if (__swift_getEnumTagSinglePayload(v51, v52, v115) != 1)
    {
      sub_1C8D16D78(v44, &qword_1EC314058, &qword_1C90726F8);
    }

    goto LABEL_15;
  }

LABEL_20:
  sub_1C8D2BF0C();
  v55 = *(v26 + 16);
  v56 = v118;
  if (v55)
  {
    v117 = *v4;
    v114 = v4[1];
    v57 = (v26 + 40);
    do
    {
      v59 = *(v57 - 1);
      v58 = *v57;
      OUTLINED_FUNCTION_7_11();
      swift_beginAccess();
      if (*(*(v56 + 16) + 16))
      {

        sub_1C8CAE064(v59, v58);
        v60 = v108;
        if (v61)
        {
          OUTLINED_FUNCTION_0_25();
          sub_1C8D6DEE0(v62, v108, v63);
          v64 = v108;
          v65 = 0;
        }

        else
        {
          v64 = v108;
          v65 = 1;
        }

        __swift_storeEnumTagSinglePayload(v64, v65, 1, v9);
      }

      else
      {
        v60 = v108;
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v66, v67, v68, v9);
      }

      swift_endAccess();
      if (__swift_getEnumTagSinglePayload(v60, 1, v9) == 1)
      {
        v69 = sub_1C9061FEC();
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v73, v74, v75, v69);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v76, v77, v78, v69);
        v79 = (v1 + v9[7]);
        *v79 = v59;
        v79[1] = v58;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_150();
        __swift_storeEnumTagSinglePayload(v80, v81, v82, v115);
        sub_1C906357C();
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
        v87 = (v1 + v9[8]);
        *v87 = 0;
        v87[1] = 0;
        v88 = MEMORY[0x1E69E7CD0];
        *(v1 + v9[9]) = MEMORY[0x1E69E7CD0];
        *(v1 + v9[11]) = v88;
        *(v1 + v9[12]) = v88;
        *(v1 + v9[13]) = v88;
        v89 = (v1 + v9[14]);
        *v89 = 0;
        v89[1] = 0;
        *(v1 + v9[15]) = v88;
        *(v1 + v9[16]) = v88;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v9);

        if (EnumTagSinglePayload != 1)
        {
          sub_1C8D16D78(v60, &unk_1EC316530, &qword_1C90729E8);
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_21();
        sub_1C8D6DF94(v60, v1, v91);
      }

      v92 = (v1 + v9[8]);

      *v92 = v117;
      v92[1] = v114;
      [v111 timestamp];
      sub_1C9061F6C();
      sub_1C9061FEC();
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
      sub_1C8D6E060(v110, v1 + v9[5]);

      v98 = sub_1C8D6D410(v97, v59, v58);
      v99 = v9[9];

      *(v1 + v99) = v98;
      OUTLINED_FUNCTION_0_25();
      sub_1C8D6DEE0(v1, v109, v100);
      v56 = v118;
      OUTLINED_FUNCTION_5_15();
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v120 = *(v118 + 16);
      sub_1C8D64304(v109, v59, v58);
      *(v118 + 16) = v120;

      swift_endAccess();
      OUTLINED_FUNCTION_2_17();
      sub_1C8D6DF3C(v1, v101);
      v57 += 2;
      --v55;
    }

    while (v55);

    v26 = v106;
    v102 = v117;
    v103 = v114;
  }

  else
  {

    v102 = *v4;
    v103 = v4[1];
  }

  OUTLINED_FUNCTION_5_15();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v121 = *(v56 + 40);
  sub_1C8D64418(v26, v102, v103, isUniquelyReferenced_nonNull_native);
  *(v56 + 40) = v121;
  swift_endAccess();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D674F4()
{
  OUTLINED_FUNCTION_196();
  v97 = v1;
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316530, &qword_1C90729E8);
  v6 = OUTLINED_FUNCTION_9(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v100 = v7 - v8;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_147();
  v98 = v10;
  v11 = OUTLINED_FUNCTION_111();
  v99 = type metadata accessor for IndexingLog.IndexingEvent(v11);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  OUTLINED_FUNCTION_9(v16);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v89 - v18;
  v20 = sub_1C906357C();
  OUTLINED_FUNCTION_11();
  v90 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v25 = v24 - v23;
  v26 = type metadata accessor for ToolKitProtoIndexingPolicyResolution(0);
  v27 = v4;
  sub_1C8D52860(v4 + *(v26 + 24), v19, &qword_1EC3141E0, &unk_1C90729F0);
  sub_1C8D6E0D0(&qword_1EC3141E8, MEMORY[0x1E69E0830], &protocol conformance descriptor for ToolKitIndexingReason.Changeset);
  v28 = v97;
  sub_1C906351C();
  if (v28)
  {
    goto LABEL_10;
  }

  v29 = v90;
  v97 = v20;
  v89 = 0;
  v30 = v27;
  v31 = *v27;
  v32 = v30[1];
  OUTLINED_FUNCTION_7_11();
  swift_beginAccess();
  v33 = *(v2 + 40);

  v34 = OUTLINED_FUNCTION_94();
  v36 = sub_1C8CB26F8(v34, v35, v33);
  if (!v36)
  {
    swift_endAccess();
    v61 = v32;
    v62 = sub_1C9061FEC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v62);
    v66 = v99;
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v62);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v62);
    v73 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
    v78 = *(v29 + 16);
    v79 = v97;
    v78(v100 + v66[10], v25, v97);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
    v83 = (v100 + v66[8]);
    *v83 = v31;
    v83[1] = v61;
    v84 = MEMORY[0x1E69E7CD0];
    *(v100 + v66[9]) = MEMORY[0x1E69E7CD0];
    *(v100 + v66[11]) = v84;
    *(v100 + v66[12]) = v84;
    *(v100 + v66[13]) = v84;
    v85 = (v100 + v66[14]);
    *v85 = 0;
    v85[1] = 0;
    *(v100 + v66[15]) = v84;
    *(v100 + v66[16]) = v84;
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v66);
    OUTLINED_FUNCTION_5_15();
    swift_beginAccess();

    sub_1C8E06AB0();
    swift_endAccess();
    (*(v73 + 8))(v25, v79);
LABEL_10:
    OUTLINED_FUNCTION_198();
    return;
  }

  v37 = v36;
  v94 = v30;
  v95 = v25;
  swift_endAccess();
  v38 = 0;
  v96 = *(v37 + 16);
  v92 = (v29 + 16);
  v93 = v37;
  v39 = (v37 + 40);
  v91 = v32;
  while (1)
  {
    if (v96 == v38)
    {

      (*(v90 + 8))(v95, v97);
      goto LABEL_10;
    }

    if (v38 >= *(v37 + 16))
    {
      break;
    }

    v41 = *(v39 - 1);
    v40 = *v39;
    OUTLINED_FUNCTION_7_11();
    swift_beginAccess();
    v42 = *(v2 + 16);

    v43 = v98;
    sub_1C8E9E350(v41, v40, v42, v98);
    swift_endAccess();
    v44 = v99;
    if (__swift_getEnumTagSinglePayload(v43, 1, v99) == 1)
    {
      goto LABEL_12;
    }

    v45 = v2;
    ++v38;
    OUTLINED_FUNCTION_1_21();
    sub_1C8D6DF94(v43, v15, v46);
    v47 = v44;
    v48 = *(v44 + 40);
    sub_1C8D16D78(v15 + v48, &qword_1EC314060, &qword_1C9072700);
    v49 = v97;
    (*v92)(v15 + v48, v95, v97);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);

    v54 = sub_1C8D2BCE0(v53);
    v55 = *(v47 + 44);

    *(v15 + v55) = v54;
    OUTLINED_FUNCTION_0_25();
    sub_1C8D6DEE0(v15, v100, v56);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v47);
    OUTLINED_FUNCTION_5_15();
    swift_beginAccess();
    sub_1C8E06AB0();
    swift_endAccess();
    OUTLINED_FUNCTION_2_17();
    sub_1C8D6DF3C(v15, v60);
    v39 += 2;
    v2 = v45;
    v37 = v93;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1C8D67A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v13 = v11;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316530, &qword_1C90729E8);
  v17 = OUTLINED_FUNCTION_9(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_61_3();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_147();
  v178 = v19;
  v20 = OUTLINED_FUNCTION_111();
  v21 = type metadata accessor for IndexingLog.IndexingEvent(v20);
  OUTLINED_FUNCTION_11();
  v180 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v183 = v169 - v28;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_147();
  v184 = v30;
  v186 = v15[6];
  if (v186 == 1)
  {
    goto LABEL_110;
  }

  v182 = *(v15 + 32);
  if (v182 == 255)
  {
    goto LABEL_110;
  }

  v169[1] = v12;
  v185 = v15[5];
  v32 = v15[2];
  v31 = v15[3];
  v34 = *v15;
  v33 = v15[1];
  swift_beginAccess();
  v35 = *(v13 + 40);

  OUTLINED_FUNCTION_54_2();
  v39 = sub_1C8CB26F8(v36, v37, v38);
  if (!v39)
  {
    swift_endAccess();
    v143 = sub_1C9061FEC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v144, v145, v146, v143);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v147, v148, v149, v143);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v150, v151, v152, v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
    sub_1C906357C();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
    v161 = (v26 + v21[8]);
    *v161 = v34;
    v161[1] = v33;
    v162 = MEMORY[0x1E69E7CD0];
    *(v26 + v21[9]) = MEMORY[0x1E69E7CD0];
    *(v26 + v21[11]) = v162;
    *(v26 + v21[12]) = v162;
    *(v26 + v21[13]) = v162;
    v163 = (v26 + v21[14]);
    *v163 = 0;
    v163[1] = 0;
    *(v26 + v21[15]) = v162;
    *(v26 + v21[16]) = v162;

    sub_1C8D684BC(v26, v32, v31, v182 & 1, v185, v186);
    OUTLINED_FUNCTION_0_25();
    sub_1C8D6DEE0(v26, v10, v164);
    v165 = OUTLINED_FUNCTION_137();
    __swift_storeEnumTagSinglePayload(v165, v166, v167, v21);
    OUTLINED_FUNCTION_59_4();
    sub_1C8E06AB0();
    swift_endAccess();
    OUTLINED_FUNCTION_2_17();
    sub_1C8D6DF3C(v26, v168);
    goto LABEL_110;
  }

  v40 = v39;
  swift_endAccess();
  v176 = *(v40 + 16);
  if (!v176)
  {
LABEL_108:

LABEL_110:
    OUTLINED_FUNCTION_198();
    return;
  }

  v41 = 0;
  v175 = v40 + 32;
  v170 = v13;
  v172 = v21;
  v173 = v33;
  v42 = v184;
  v171 = v40;
  v174 = v32;
  while (1)
  {
    if (v41 >= *(v40 + 16))
    {
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
      goto LABEL_117;
    }

    v181 = v41;
    v43 = (v175 + 16 * v41);
    v45 = *v43;
    v44 = v43[1];
    swift_beginAccess();
    v46 = *(v13 + 16);
    if (*(v46 + 16))
    {

      sub_1C8CAE064(v45, v44);
      v47 = v178;
      if (v48)
      {
        OUTLINED_FUNCTION_36_6();
        OUTLINED_FUNCTION_0_25();
        sub_1C8D6DEE0(v49, v47, v50);
        v51 = v47;
        v52 = 0;
      }

      else
      {
        v51 = v178;
        v52 = 1;
      }

      __swift_storeEnumTagSinglePayload(v51, v52, 1, v21);
    }

    else
    {
      v47 = v178;
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v21);
    }

    swift_endAccess();
    if (__swift_getEnumTagSinglePayload(v47, 1, v21) == 1)
    {
      goto LABEL_116;
    }

    v56 = v13;
    OUTLINED_FUNCTION_1_21();
    sub_1C8D6DF94(v47, v42, v57);
    if ((v182 & 1) == 0)
    {
      break;
    }

    v13 = v186;
    if (!v186)
    {
      goto LABEL_52;
    }

    v179 = v45;
    v177 = v44;
    v61 = OUTLINED_FUNCTION_45_7(v21[16]);
    OUTLINED_FUNCTION_20_7(v61, v62, v63, v64, v65, v66);
    OUTLINED_FUNCTION_60_3();
    sub_1C9063FBC();
    sub_1C9064DBC();
    v67 = v44 + 56;
    OUTLINED_FUNCTION_8_14();
    if (((*(v44 + 56 + v69) >> v42) & 1) == 0)
    {
LABEL_30:
      v76 = OUTLINED_FUNCTION_57_5();
      OUTLINED_FUNCTION_38_7(v76, v77, v78, v79, v80, v81);

      if (v46 <= v47)
      {
        v105 = OUTLINED_FUNCTION_44_7();
        if (v35)
        {
          sub_1C8D897C0();
        }

        else
        {
          sub_1C8D8F9F4(v105);
        }

        v82 = a10;
        sub_1C9064D7C();
        sub_1C9063FBC();
        OUTLINED_FUNCTION_60_3();
        sub_1C9063FBC();
        sub_1C9064DBC();
        OUTLINED_FUNCTION_8_14();
        if ((*(a10 + 56 + v108) >> v42))
        {
          v45 = ~v107;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3140A8, &qword_1C9072948);
          OUTLINED_FUNCTION_56_4();
          while (1)
          {
            v109 = OUTLINED_FUNCTION_48_2();
            v112 = *(v111 + 16);
            v82 = *(v111 + 24);
            v113 = v109 == v56 && v31 == v110;
            if (v113 || (OUTLINED_FUNCTION_22_10(v109, v110) & 1) != 0)
            {
              if (v82)
              {
                v114 = v112 == v185 && v82 == v186;
                if (v114 || (OUTLINED_FUNCTION_24_9(v112) & 1) != 0)
                {
                  goto LABEL_117;
                }
              }
            }

            OUTLINED_FUNCTION_13_10();
            if (((*(a10 + 56 + v115) >> v42) & 1) == 0)
            {
              OUTLINED_FUNCTION_23_9();
              break;
            }
          }
        }
      }

      else
      {
        v13 = v170;
        v45 = v179;
        if (v35)
        {
          v82 = v44;
        }

        else
        {
          sub_1C8D8DA9C();
          v82 = a10;
        }
      }

      OUTLINED_FUNCTION_15_10();
      if (v117)
      {
        goto LABEL_114;
      }

      goto LABEL_93;
    }

    v45 = ~v68;
    v13 = v44;
    v44 = *(v44 + 48);
    while (1)
    {
      v70 = OUTLINED_FUNCTION_48_2();
      v46 = *(v72 + 16);
      v47 = *(v72 + 24);
      v73 = v70 == v56 && v31 == v71;
      if (v73 || (OUTLINED_FUNCTION_22_10(v70, v71) & 1) != 0)
      {
        if (v47)
        {
          v74 = v46 == v185 && v47 == v186;
          if (v74 || (OUTLINED_FUNCTION_24_9(v46) & 1) != 0)
          {
            break;
          }
        }
      }

      OUTLINED_FUNCTION_13_10();
      if (((*(v67 + v75) >> v42) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

LABEL_51:

    v13 = v170;
    v42 = v184;
    v45 = v179;
LABEL_94:

    v44 = v177;
LABEL_95:
    OUTLINED_FUNCTION_0_25();
    sub_1C8D6DEE0(v42, v183, v127);
    OUTLINED_FUNCTION_59_4();
    swift_isUniquelyReferenced_nonNull_native();
    a10 = *(v13 + 16);
    *(v13 + 16) = 0x8000000000000000;
    v128 = sub_1C8CAE064(v45, v44);
    if (__OFADD__(*(a10 + 16), (v129 & 1) == 0))
    {
      goto LABEL_112;
    }

    v130 = v128;
    v131 = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313FA8, &unk_1C9085260);
    if (sub_1C90648EC())
    {
      v132 = sub_1C8CAE064(v45, v44);
      v42 = v184;
      if ((v131 & 1) != (v133 & 1))
      {
        goto LABEL_118;
      }

      v130 = v132;
    }

    else
    {
      v42 = v184;
    }

    if (v131)
    {
      OUTLINED_FUNCTION_36_6();
      sub_1C8D6E130(v183, v134 + v135 * v130);
    }

    else
    {
      OUTLINED_FUNCTION_50_6(a10 + 8 * (v130 >> 6));
      v137 = (v136 + 16 * v130);
      *v137 = v45;
      v137[1] = v44;
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_1_21();
      sub_1C8D6DF94(v183, v138, v139);
      v140 = *(a10 + 16);
      v117 = __OFADD__(v140, 1);
      v141 = v140 + 1;
      if (v117)
      {
        goto LABEL_113;
      }

      *(a10 + 16) = v141;
    }

    v41 = v181 + 1;
    *(v13 + 16) = a10;

    swift_endAccess();
    OUTLINED_FUNCTION_2_17();
    sub_1C8D6DF3C(v42, v142);
    v21 = v172;
    v40 = v171;
    if (v41 == v176)
    {
      goto LABEL_108;
    }
  }

  v13 = v186;
  if (!v186)
  {
LABEL_52:
    v104 = v174;
    sub_1C8D6E118(v174, v31, v182, v58, v59, v60);
    sub_1C8D8634C(&v187, v104, v31);

    v13 = v56;
    goto LABEL_95;
  }

  v179 = v45;
  v177 = v44;
  v83 = OUTLINED_FUNCTION_45_7(v21[15]);
  OUTLINED_FUNCTION_20_7(v83, v84, v85, v86, v87, v88);
  OUTLINED_FUNCTION_60_3();
  sub_1C9063FBC();
  sub_1C9064DBC();
  v89 = v44 + 56;
  OUTLINED_FUNCTION_8_14();
  if ((*(v44 + 56 + v91) >> v42))
  {
    v45 = ~v90;
    v13 = v44;
    v44 = *(v44 + 48);
    do
    {
      v92 = OUTLINED_FUNCTION_48_2();
      v46 = *(v94 + 16);
      v47 = *(v94 + 24);
      v95 = v92 == v56 && v31 == v93;
      if (v95 || (OUTLINED_FUNCTION_22_10(v92, v93) & 1) != 0)
      {
        if (v47)
        {
          v96 = v46 == v185 && v47 == v186;
          if (v96 || (OUTLINED_FUNCTION_24_9(v46) & 1) != 0)
          {
            goto LABEL_51;
          }
        }
      }

      OUTLINED_FUNCTION_13_10();
    }

    while (((*(v89 + v97) >> v42) & 1) != 0);
  }

  v98 = OUTLINED_FUNCTION_57_5();
  OUTLINED_FUNCTION_38_7(v98, v99, v100, v101, v102, v103);

  if (v46 > v47)
  {
    v13 = v170;
    v45 = v179;
    if (v35)
    {
      v82 = v44;
    }

    else
    {
      sub_1C8D8DA9C();
      v82 = a10;
    }

LABEL_92:
    OUTLINED_FUNCTION_15_10();
    if (v117)
    {
      goto LABEL_115;
    }

LABEL_93:
    *(v82 + 16) = v116;
    v42 = v184;
    *(v184 + v169[2]) = v82;
    goto LABEL_94;
  }

  v106 = OUTLINED_FUNCTION_44_7();
  if (v35)
  {
    sub_1C8D897C0();
  }

  else
  {
    sub_1C8D8F9F4(v106);
  }

  v82 = a10;
  sub_1C9064D7C();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_60_3();
  sub_1C9063FBC();
  sub_1C9064DBC();
  OUTLINED_FUNCTION_8_14();
  if (((*(a10 + 56 + v119) >> v42) & 1) == 0)
  {
    goto LABEL_92;
  }

  v45 = ~v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3140A8, &qword_1C9072948);
  OUTLINED_FUNCTION_56_4();
  while (1)
  {
    v120 = OUTLINED_FUNCTION_48_2();
    v123 = *(v122 + 16);
    v82 = *(v122 + 24);
    v124 = v120 == v56 && v31 == v121;
    if (v124 || (OUTLINED_FUNCTION_22_10(v120, v121) & 1) != 0)
    {
      if (v82)
      {
        v125 = v123 == v185 && v82 == v186;
        if (v125 || (OUTLINED_FUNCTION_24_9(v123) & 1) != 0)
        {
          break;
        }
      }
    }

    OUTLINED_FUNCTION_13_10();
    if (((*(a10 + 56 + v126) >> v42) & 1) == 0)
    {
      OUTLINED_FUNCTION_23_9();
      goto LABEL_92;
    }
  }

LABEL_117:
  sub_1C9064CAC();
  __break(1u);
LABEL_118:
  sub_1C9064CBC();
  __break(1u);
}

uint64_t sub_1C8D684BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    if (a6)
    {
      v42 = *(type metadata accessor for IndexingLog.IndexingEvent(0) + 64);
      v43 = a1;
      v11 = *(a1 + v42);
      sub_1C9064D7C();
      OUTLINED_FUNCTION_264(a2, a3, 1, v12, v13, v14);

      sub_1C9063FBC();
      sub_1C9064D9C();
      sub_1C9063FBC();
      v15 = sub_1C9064DBC();
      v16 = v11 + 56;
      v17 = -1 << *(v11 + 32);
      v18 = v15 & ~v17;
      if ((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        v20 = *(v11 + 48);
        while (1)
        {
          v21 = (v20 + 32 * v18);
          v23 = v21[2];
          v22 = v21[3];
          v24 = *v21 == a2 && v21[1] == a3;
          if (v24 || (sub_1C9064C2C() & 1) != 0)
          {
            if (v22)
            {
              v25 = v23 == a5 && v22 == a6;
              if (v25 || (sub_1C9064C2C() & 1) != 0)
              {
                break;
              }
            }
          }

          v18 = (v18 + 1) & v19;
          if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_33;
          }
        }

LABEL_34:

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_38:
    type metadata accessor for IndexingLog.IndexingEvent(0);

    sub_1C8D8634C(&v44, a2, a3);
  }

  if (!a6)
  {
    goto LABEL_38;
  }

  v42 = *(type metadata accessor for IndexingLog.IndexingEvent(0) + 60);
  v43 = a1;
  v26 = *(a1 + v42);
  sub_1C9064D7C();
  OUTLINED_FUNCTION_264(a2, a3, 0, v27, v28, v29);

  sub_1C9063FBC();
  sub_1C9064D9C();
  sub_1C9063FBC();
  v30 = sub_1C9064DBC();
  v31 = v26 + 56;
  v32 = -1 << *(v26 + 32);
  v18 = v30 & ~v32;
  if ((*(v26 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v33 = ~v32;
    v34 = *(v26 + 48);
    do
    {
      v35 = (v34 + 32 * v18);
      v37 = v35[2];
      v36 = v35[3];
      v38 = *v35 == a2 && v35[1] == a3;
      if (v38 || (sub_1C9064C2C() & 1) != 0)
      {
        if (v36)
        {
          v39 = v37 == a5 && v36 == a6;
          if (v39 || (sub_1C9064C2C() & 1) != 0)
          {
            goto LABEL_34;
          }
        }
      }

      v18 = (v18 + 1) & v33;
    }

    while (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

LABEL_33:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(v43 + v42);

  sub_1C8D8B7C0(a2, a3, a5, a6, v18, isUniquelyReferenced_nonNull_native);
  *(v43 + v42) = v44;
LABEL_35:
}

void sub_1C8D68844()
{
  OUTLINED_FUNCTION_196();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v102 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316530, &qword_1C90729E8);
  v12 = OUTLINED_FUNCTION_9(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_61_3();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_51_3();
  v15 = type metadata accessor for IndexingLog.IndexingEvent(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v106 = v17 - v18;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_147();
  v104 = v7;
  v105 = v20;
  v22 = *v7;
  v21 = v7[1];
  OUTLINED_FUNCTION_7_11();
  swift_beginAccess();
  v23 = *(v3 + 40);

  v24 = sub_1C8CB26F8(v22, v21, v23);
  if (!v24)
  {
    swift_endAccess();
    v73 = sub_1C9061FEC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v73);
    [v5 timestamp];
    sub_1C9061F6C();
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
    sub_1C906357C();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
    v91 = (v0 + v15[8]);
    *v91 = v22;
    v91[1] = v21;
    v92 = MEMORY[0x1E69E7CD0];
    *(v0 + v15[9]) = MEMORY[0x1E69E7CD0];
    *(v0 + v15[11]) = v92;
    *(v0 + v15[12]) = v92;
    *(v0 + v15[13]) = v92;
    OUTLINED_FUNCTION_40_5(v15[14]);
    *(v0 + v15[15]) = v93;
    *(v0 + v15[16]) = v93;
    v94 = OUTLINED_FUNCTION_137();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v15);
    OUTLINED_FUNCTION_5_15();
    swift_beginAccess();

    sub_1C8E06AB0();
    swift_endAccess();
LABEL_27:
    OUTLINED_FUNCTION_198();
    return;
  }

  v25 = v24;
  v101 = v15;
  swift_endAccess();
  v100 = *(v25 + 16);
  if (!v100)
  {
LABEL_26:

    goto LABEL_27;
  }

  v26 = 0;
  v27 = (v25 + 40);
  v103 = v3;
  v28 = v105;
  v98 = v2;
  v99 = v5;
  v97 = v25;
  while (v26 < *(v25 + 16))
  {
    v29 = v5;
    v31 = *(v27 - 1);
    v30 = *v27;
    OUTLINED_FUNCTION_7_11();
    swift_beginAccess();
    v107 = v31;
    if (*(*(v3 + 16) + 16))
    {

      v32 = OUTLINED_FUNCTION_93();
      sub_1C8CAE064(v32, v33);
      if (v34)
      {
        OUTLINED_FUNCTION_35_5();
        OUTLINED_FUNCTION_0_25();
        sub_1C8D6DEE0(v35, v2, v36);
        v37 = v2;
        v38 = 0;
      }

      else
      {
        v37 = v2;
        v38 = 1;
      }

      v39 = v101;
      __swift_storeEnumTagSinglePayload(v37, v38, 1, v101);
    }

    else
    {
      OUTLINED_FUNCTION_115();
      v39 = v101;
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v101);
    }

    swift_endAccess();
    if (__swift_getEnumTagSinglePayload(v2, 1, v39) == 1)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_1_21();
    sub_1C8D6DF94(v2, v28, v43);
    [v29 timestamp];
    sub_1C9061F6C();
    sub_1C9061FEC();
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    sub_1C8D6E060(v102, v28 + *(v39 + 24));
    v51 = v104[3];
    if (v51 >= 3)
    {
      v52 = v104[2];
      v53 = (v28 + *(v39 + 56));
      sub_1C8D6E194(v52, v51, v48, v49, v50);
      v28 = v105;

      *v53 = v52;
      v53[1] = v51;
      v3 = v103;
    }

    OUTLINED_FUNCTION_0_25();
    sub_1C8D6DEE0(v28, v106, v54);
    OUTLINED_FUNCTION_5_15();
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    v56 = sub_1C8CAE064(v107, v30);
    if (__OFADD__(*(v55 + 16), (v57 & 1) == 0))
    {
      goto LABEL_29;
    }

    v58 = v56;
    v59 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313FA8, &unk_1C9085260);
    if (sub_1C90648EC())
    {
      v60 = sub_1C8CAE064(v107, v30);
      v28 = v105;
      if ((v59 & 1) != (v61 & 1))
      {
        goto LABEL_32;
      }

      v58 = v60;
      v5 = v99;
    }

    else
    {
      v5 = v99;
      v28 = v105;
    }

    if (v59)
    {

      OUTLINED_FUNCTION_35_5();
      sub_1C8D6E130(v106, v62 + v63 * v58);
    }

    else
    {
      OUTLINED_FUNCTION_50_6(v55 + 8 * (v58 >> 6));
      v65 = (v64 + 16 * v58);
      *v65 = v66;
      v65[1] = v30;
      OUTLINED_FUNCTION_35_5();
      OUTLINED_FUNCTION_1_21();
      sub_1C8D6DF94(v106, v67, v68);
      v69 = *(v55 + 16);
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_30;
      }

      *(v55 + 16) = v71;
    }

    ++v26;
    v3 = v103;
    *(v103 + 16) = v55;

    swift_endAccess();
    OUTLINED_FUNCTION_2_17();
    sub_1C8D6DF3C(v28, v72);
    v27 += 2;
    v25 = v97;
    v2 = v98;
    if (v100 == v26)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_1C9064CBC();
  __break(1u);
}

void sub_1C8D68E48()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316540, &qword_1C9072A00);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_142();
  v7 = *v4;
  v8 = v4[1];
  v9 = type metadata accessor for IndexingLog.WALEvent(0);
  swift_bridgeObjectRetain_n();
  [v2 timestamp];
  sub_1C9061F6C();
  v10 = sub_1C9061FEC();
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  *v0 = v7;
  v0[1] = v8;
  OUTLINED_FUNCTION_40_5(v9[7]);
  *(v0 + v9[8]) = 2;
  v17 = v0 + v9[9];
  *v17 = 0;
  v17[4] = 1;
  v18 = v0 + v9[10];
  *v18 = 0;
  v18[4] = 1;
  v19 = OUTLINED_FUNCTION_137();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v9);
  OUTLINED_FUNCTION_5_15();
  swift_beginAccess();
  sub_1C8E06C14();
  swift_endAccess();
  OUTLINED_FUNCTION_163();
}

void sub_1C8D68F98()
{
  OUTLINED_FUNCTION_164();
  v58 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v59 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316540, &qword_1C9072A00);
  v12 = OUTLINED_FUNCTION_9(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_61_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_155_0();
  v14 = type metadata accessor for IndexingLog.WALEvent(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_228();
  v17 = *v7;
  v18 = *(v7 + 8);
  OUTLINED_FUNCTION_7_11();
  swift_beginAccess();
  v19 = *(v1 + 24);

  sub_1C8E9E444(v17, v18, v19, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v14) == 1)
  {
    sub_1C8D16D78(v2, &unk_1EC316540, &qword_1C9072A00);
    swift_endAccess();
    *v3 = 0;
    v3[1] = 0;
    v20 = sub_1C9061FEC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
    v24 = v14[6];
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
    v28 = (v3 + v14[7]);
    *v28 = 0;
    v28[1] = 0;
    v57 = v0;
    v29 = v14[8];
    *(v3 + v29) = 2;
    v30 = v3 + v14[9];
    *v30 = 0;
    v30[4] = 1;
    v31 = v3 + v14[10];
    *v31 = 0;
    v31[4] = 1;
    [v58 timestamp];
    sub_1C9061F6C();
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v20);
    sub_1C8D6E060(v59, v3 + v24);
    v35 = *(v7 + 48);
    *v28 = *(v7 + 40);
    v28[1] = v35;
    *(v3 + v29) = *(v7 + 16);
    v36 = *(v7 + 24);
    *v30 = *(v7 + 20);
    v30[4] = v36;
    v37 = *(v7 + 32);
    *v31 = *(v7 + 28);
    v31[4] = v37;
    OUTLINED_FUNCTION_18_6();
    sub_1C8D6DEE0(v3, v57, v38);
    v39 = OUTLINED_FUNCTION_137();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v14);
    OUTLINED_FUNCTION_5_15();
    swift_beginAccess();

    sub_1C8E06C14();
    swift_endAccess();
    v4 = v3;
  }

  else
  {
    sub_1C8D6DF94(v2, v4, type metadata accessor for IndexingLog.WALEvent);
    swift_endAccess();
    [v58 timestamp];
    sub_1C9061F6C();
    sub_1C9061FEC();
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    sub_1C8D6E060(v59, v4 + v14[6]);
    v47 = *(v7 + 40);
    v46 = *(v7 + 48);
    v48 = (v4 + v14[7]);

    *v48 = v47;
    v48[1] = v46;
    *(v4 + v14[8]) = *(v7 + 16);
    v49 = *(v7 + 24);
    v50 = v4 + v14[9];
    *v50 = *(v7 + 20);
    *(v50 + 4) = v49;
    v51 = *(v7 + 32);
    v52 = v4 + v14[10];
    *v52 = *(v7 + 28);
    *(v52 + 4) = v51;
    OUTLINED_FUNCTION_18_6();
    sub_1C8D6DEE0(v4, v0, v53);
    v54 = OUTLINED_FUNCTION_137();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v14);
    OUTLINED_FUNCTION_5_15();
    swift_beginAccess();
    sub_1C8E06C14();
    swift_endAccess();
  }

  sub_1C8D6DF3C(v4, type metadata accessor for IndexingLog.WALEvent);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D69398(uint64_t *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316550, &qword_1C9072A08);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_142();
  v7 = *a1;
  v8 = a1[1];
  v9 = type metadata accessor for IndexingLog.VacuumEvent(0);
  swift_bridgeObjectRetain_n();
  [a2 timestamp];
  sub_1C9061F6C();
  v10 = sub_1C9061FEC();
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  *v2 = v7;
  v2[1] = v8;
  OUTLINED_FUNCTION_40_5(*(v9 + 28));
  v17 = OUTLINED_FUNCTION_137();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v9);
  swift_beginAccess();
  sub_1C8E06D78();
  return swift_endAccess();
}

void sub_1C8D694C8()
{
  OUTLINED_FUNCTION_164();
  v51 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316550, &qword_1C9072A08);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25();
  v52 = v12 - v13;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_155_0();
  v15 = type metadata accessor for IndexingLog.VacuumEvent(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_228();
  v18 = *v5;
  OUTLINED_FUNCTION_7_11();
  swift_beginAccess();

  v53 = v18;
  OUTLINED_FUNCTION_54_2();
  sub_1C8E9E470(v19, v20, v21, v22);
  if (__swift_getEnumTagSinglePayload(v0, 1, v15) == 1)
  {
    sub_1C8D16D78(v0, &unk_1EC316550, &qword_1C9072A08);
    swift_endAccess();
    *v1 = 0;
    v1[1] = 0;
    v23 = sub_1C9061FEC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
    v27 = *(v15 + 24);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v23);
    v31 = (v1 + *(v15 + 28));
    *v31 = 0;
    v31[1] = 0;
    [v51 timestamp];
    sub_1C9061F6C();
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v23);
    sub_1C8D6E060(v9, v1 + v27);
    v35 = v5[3];
    *v31 = v5[2];
    v31[1] = v35;
    OUTLINED_FUNCTION_17_7();
    sub_1C8D6DEE0(v1, v52, v36);
    v37 = OUTLINED_FUNCTION_137();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v15);
    OUTLINED_FUNCTION_5_15();
    swift_beginAccess();

    OUTLINED_FUNCTION_58_3();
    swift_endAccess();
    v2 = v1;
  }

  else
  {
    sub_1C8D6DF94(v0, v2, type metadata accessor for IndexingLog.VacuumEvent);
    swift_endAccess();
    [v51 timestamp];
    sub_1C9061F6C();
    sub_1C9061FEC();
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    sub_1C8D6E060(v9, v2 + *(v15 + 24));
    v45 = v5[2];
    v44 = v5[3];
    v46 = (v2 + *(v15 + 28));

    *v46 = v45;
    v46[1] = v44;
    OUTLINED_FUNCTION_17_7();
    sub_1C8D6DEE0(v2, v52, v47);
    v48 = OUTLINED_FUNCTION_137();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v15);
    OUTLINED_FUNCTION_5_15();
    swift_beginAccess();
    OUTLINED_FUNCTION_58_3();
    swift_endAccess();
  }

  sub_1C8D6DF3C(v2, type metadata accessor for IndexingLog.VacuumEvent);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D69800()
{
  v8 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();

  sub_1C8D78DE8();
  sub_1C8D69A04();
  v1 = v0;

  sub_1C8D37C5C(v1);
  swift_beginAccess();

  sub_1C8D78EB4();
  sub_1C8D69A04();
  v3 = v2;

  sub_1C8D37C5C(v3);
  swift_beginAccess();

  sub_1C8D78F80();
  sub_1C8D69A04();
  v5 = v4;

  sub_1C8D37C5C(v5);
  v7 = v8;

  sub_1C8D6BB58(&v7);

  return v7;
}

void sub_1C8D69A04()
{
  OUTLINED_FUNCTION_164();
  v22 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  OUTLINED_FUNCTION_11();
  v10 = v9;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *(v6 + 16);
  if (v14)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1C8D09B14(0, v14, 0);
    v15 = v26;
    v16 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);
    do
    {
      sub_1C8D6DEE0(v16, v13, v4);
      v26 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1C8D09B14(v18 > 1, v19 + 1, 1);
        v15 = v26;
      }

      v24 = v8;
      v25 = v2;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
      sub_1C8D6DEE0(v13, boxed_opaque_existential_1, v4);
      *(v15 + 16) = v19 + 1;
      sub_1C8D04FA4(&v23, v15 + 40 * v19 + 32);
      sub_1C8D6DF3C(v13, v22);
      v16 += v17;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D69B88(void *a1, void *a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = sub_1C9061FEC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v17 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v16 + 8))(v17, v16);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C9061F7C();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_1C8D16D78(v8, &qword_1EC313AD8, &qword_1C90726F0);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
  }

  v18 = v24[3];
  v19 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v18);
  (*(v19 + 8))(v18, v19);
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    sub_1C9061F7C();
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) != 1)
    {
      sub_1C8D16D78(v5, &qword_1EC313AD8, &qword_1C90726F0);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v5, v9);
  }

  v20 = sub_1C9061F9C();
  v21 = *(v10 + 8);
  v21(v12, v9);
  v21(v15, v9);
  return v20 & 1;
}

uint64_t sub_1C8D69E74()
{

  return v0;
}

uint64_t sub_1C8D69EAC()
{
  sub_1C8D69E74();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t IndexingLog.events(since:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  v5 = OUTLINED_FUNCTION_9(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_155_0();
  _s14ParsingContextCMa();
  v10 = swift_allocObject();
  sub_1C8D66944();
  v11 = *(v1 + 16);
  sub_1C8D52860(a1, v2, &qword_1EC313AD8, &qword_1C90726F0);
  sub_1C9061FEC();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v17 = sub_1C8D6AAD8(v2, v8, -1, -1, 0);
  v18 = [v11 publisherWithOptions_];

  v28 = nullsub_1;
  v29 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C8CE974C;
  v27 = &block_descriptor_0;
  v19 = _Block_copy(&aBlock);
  v28 = sub_1C8D6AC14;
  v29 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C8CE974C;
  v27 = &block_descriptor_3;
  v20 = _Block_copy(&aBlock);

  v21 = [v18 sinkWithCompletion:v19 receiveInput:v20];
  _Block_release(v20);
  _Block_release(v19);

  v22 = sub_1C8D69800();

  return v22;
}

uint64_t sub_1C8D6A170(void *a1, uint64_t a2)
{
  v63 = a2;
  v3 = type metadata accessor for ToolKitProtoVacuumOperationEnd(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ToolKitProtoVacuumOperationStart(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ToolKitProtoWALOperationEnd(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ToolKitProtoWALOperationStart(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = (&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ToolKitProtoIndexingResponse(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ToolKitProtoIndexingEvent(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v56 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ToolKitProtoIndexingPolicyResolution(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ToolKitProtoIndexingRequest(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ToolKitProtoIndexingReason(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v56 - v25;
  v27 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v56 - v31;
  v33 = type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v56 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = MEMORY[0x1EEE9AC00](v36).n128_u64[0];
  v39 = &v56 - v38;
  v62 = a1;
  v40 = [a1 eventBody];
  if (!v40)
  {
    goto LABEL_18;
  }

  v41 = v40;
  sub_1C8D6DEE0(v40 + OBJC_IVAR____TtCC7ToolKit11IndexingLog5Entry_protoEntry, v35, type metadata accessor for ToolKitProtoIndexingLogEntry);

  sub_1C8D6DF94(v35, v39, type metadata accessor for ToolKitProtoIndexingLogEntry);
  sub_1C8D52860(v39, v26, &qword_1EC3141D8, &qword_1C909DFF0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_1C8D6DF3C(v39, type metadata accessor for ToolKitProtoIndexingLogEntry);
    sub_1C8D16D78(v26, &qword_1EC3141D8, &qword_1C909DFF0);
LABEL_18:
    result = sub_1C906491C();
    __break(1u);
    return result;
  }

  sub_1C8D6DF94(v26, v32, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  sub_1C8D6DEE0(v32, v29, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C8D6DF94(v29, v20, type metadata accessor for ToolKitProtoIndexingRequest);
      sub_1C8D66CCC();
      v42 = type metadata accessor for ToolKitProtoIndexingRequest;
      v43 = v20;
      break;
    case 2u:
      sub_1C8D6DF94(v29, v17, type metadata accessor for ToolKitProtoIndexingPolicyResolution);
      sub_1C8D674F4();
      v42 = type metadata accessor for ToolKitProtoIndexingPolicyResolution;
      v43 = v17;
      break;
    case 3u:
      v44 = v56;
      sub_1C8D6DF94(v29, v56, type metadata accessor for ToolKitProtoIndexingEvent);
      sub_1C8D67A7C(v44, v46, v47, v48, v49, v50, v51, v52, v56, v57);
      v45 = type metadata accessor for ToolKitProtoIndexingEvent;
      goto LABEL_8;
    case 4u:
      v44 = v57;
      sub_1C8D6DF94(v29, v57, type metadata accessor for ToolKitProtoIndexingResponse);
      sub_1C8D68844();
      v45 = type metadata accessor for ToolKitProtoIndexingResponse;
LABEL_8:
      v42 = v45;
      v43 = v44;
      break;
    case 5u:
      v53 = v58;
      sub_1C8D6DF94(v29, v58, type metadata accessor for ToolKitProtoWALOperationStart);
      sub_1C8D68E48();
      v54 = type metadata accessor for ToolKitProtoWALOperationStart;
      goto LABEL_15;
    case 6u:
      v53 = v59;
      sub_1C8D6DF94(v29, v59, type metadata accessor for ToolKitProtoWALOperationEnd);
      sub_1C8D68F98();
      v54 = type metadata accessor for ToolKitProtoWALOperationEnd;
      goto LABEL_15;
    case 7u:
      v53 = v60;
      sub_1C8D6DF94(v29, v60, type metadata accessor for ToolKitProtoVacuumOperationStart);
      sub_1C8D69398(v53, v62);
      v54 = type metadata accessor for ToolKitProtoVacuumOperationStart;
      goto LABEL_15;
    case 8u:
      v53 = v61;
      sub_1C8D6DF94(v29, v61, type metadata accessor for ToolKitProtoVacuumOperationEnd);
      sub_1C8D694C8();
      v54 = type metadata accessor for ToolKitProtoVacuumOperationEnd;
LABEL_15:
      v42 = v54;
      v43 = v53;
      break;
    default:
      sub_1C8D6DF94(v29, v23, type metadata accessor for ToolKitProtoIndexingReason);
      sub_1C8D669E0();
      v42 = type metadata accessor for ToolKitProtoIndexingReason;
      v43 = v23;
      break;
  }

  sub_1C8D6DF3C(v43, v42);
  sub_1C8D6DF3C(v32, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  return sub_1C8D6DF3C(v39, type metadata accessor for ToolKitProtoIndexingLogEntry);
}

id sub_1C8D6AAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_1C9061FEC();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_1C9061F8C();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1C9061F8C();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_1C8D6ACEC(uint64_t a1)
{
  sub_1C8D6AF18(319, &qword_1EC314078, MEMORY[0x1E6969530]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1C8D6AEB4(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1C8D1FDF8(319, &qword_1EDA6E558, MEMORY[0x1E69E6158]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1C8D6AFC4(319, &qword_1EC314088, &qword_1EC312DD0, &qword_1C9072940, sub_1C8D3EDD4);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_1C8D6AF18(319, &qword_1EC314090, MEMORY[0x1E69E0830]);
        if (v10 > 0x3F)
        {
          return v8;
        }

        sub_1C8D6AF6C();
        if (v11 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_1C8D6AFC4(319, &qword_1EC3140A0, &qword_1EC3140A8, &qword_1C9072948, sub_1C8D6B034);
          v2 = v12;
          if (v13 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_1C8D6AEB4(uint64_t a1)
{
  if (!qword_1EC314080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312DD0, &qword_1C9072940);
    v1 = sub_1C906464C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC314080);
    }
  }
}

void sub_1C8D6AF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C906464C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C8D6AF6C()
{
  if (!qword_1EC314098)
  {
    v0 = sub_1C906438C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC314098);
    }
  }
}

void sub_1C8D6AFC4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_1C906438C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C8D6B034()
{
  result = qword_1EC3140B0[0];
  if (!qword_1EC3140B0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3140A8, &qword_1C9072948);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3140B0);
  }

  return result;
}

void sub_1C8D6B0B0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C8D1FDF8(319, &qword_1EDA6E558, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C8D6B148(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C8D6B28C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = 0;
              v17[1] = 0;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              v17[1] = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C8D6B468(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C8D6B4E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1C8D6B618(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1C8D6B814(uint64_t a1)
{
  sub_1C8D1FDF8(319, &qword_1EDA6E558, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1C8D6AF18(319, &qword_1EC314078, MEMORY[0x1E6969530]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1C8D1FDF8(319, &qword_1EDA66730, MEMORY[0x1E69E6370]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1C8D1FDF8(319, &unk_1EDA60448, MEMORY[0x1E69E72F0]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_24Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8D6BA8C(uint64_t a1)
{
  sub_1C8D1FDF8(319, &qword_1EDA6E558, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1C8D6AF18(319, &qword_1EC314078, MEMORY[0x1E6969530]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_1C8D6BB58(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C8DDC794();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_1C8D6BBC4(v5);
  *a1 = v2;
}

void sub_1C8D6BBC4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C9064BCC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312AB0, &qword_1C9068E90);
        v6 = sub_1C906421C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C8D6C0B4(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C8D6BCC8(0, v2, 1, a1);
  }
}

void sub_1C8D6BCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v41 - v12;
  v13 = sub_1C9061FEC();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v41 - v18;
  v42 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v47 = (v17 + 8);
    v48 = (v17 + 32);
    v46 = v19;
    v20 = v19 + 40 * a3;
    v21 = a1 - a3;
    while (2)
    {
      v44 = v20;
      v45 = a3;
      v43 = v21;
      v22 = v20;
      do
      {
        v23 = v15;
        v24 = v10;
        sub_1C8D04FBC(v22, &v54);
        sub_1C8D04FBC(v22 - 40, v51);
        v25 = v55;
        v26 = v56;
        __swift_project_boxed_opaque_existential_1(&v54, v55);
        v27 = v25;
        v28 = v49;
        (*(v26 + 8))(v27, v26);
        if (__swift_getEnumTagSinglePayload(v28, 1, v13) == 1)
        {
          sub_1C9061F7C();
          if (__swift_getEnumTagSinglePayload(v28, 1, v13) != 1)
          {
            sub_1C8D16D78(v28, &qword_1EC313AD8, &qword_1C90726F0);
          }
        }

        else
        {
          (*v48)(v57, v28, v13);
        }

        v29 = v52;
        v30 = v53;
        __swift_project_boxed_opaque_existential_1(v51, v52);
        v31 = v29;
        v32 = v24;
        (*(v30 + 8))(v31, v30);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v13);
        v50 = v21;
        if (EnumTagSinglePayload == 1)
        {
          v15 = v23;
          sub_1C9061F7C();
          if (__swift_getEnumTagSinglePayload(v32, 1, v13) != 1)
          {
            sub_1C8D16D78(v32, &qword_1EC313AD8, &qword_1C90726F0);
          }
        }

        else
        {
          v15 = v23;
          (*v48)(v23, v32, v13);
        }

        v34 = v57;
        v35 = sub_1C9061F9C();
        v36 = v32;
        v37 = *v47;
        (*v47)(v15, v13);
        v37(v34, v13);
        v10 = v36;
        __swift_destroy_boxed_opaque_existential_1(v51);
        __swift_destroy_boxed_opaque_existential_1(&v54);
        v38 = v50;
        if ((v35 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return;
        }

        sub_1C8D04FA4(v22, &v54);
        v39 = *(v22 - 24);
        *v22 = *(v22 - 40);
        *(v22 + 16) = v39;
        *(v22 + 32) = *(v22 - 8);
        sub_1C8D04FA4(&v54, v22 - 40);
        v22 -= 40;
        v40 = __CFADD__(v38, 1);
        v21 = v38 + 1;
      }

      while (!v40);
      a3 = v45 + 1;
      v20 = v44 + 40;
      v21 = v43 - 1;
      if (v45 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C8D6C0B4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v135 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v149 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v148 = &v131 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v141 = &v131 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v140 = &v131 - v13;
  v14 = sub_1C9061FEC();
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v158 = &v131 - v16;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v142 = a3;
  v143 = &v131 - v22;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_108:
    v158 = *v135;
    if (!v158)
    {
      goto LABEL_151;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_110;
    }

    goto LABEL_145;
  }

  v133 = a4;
  v24 = 0;
  v151 = (v19 + 32);
  v25 = MEMORY[0x1E69E7CC0];
  v150 = (v19 + 8);
  v147 = v20;
  v138 = v21;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    if (v27 < v23)
    {
      v28 = *v142;
      sub_1C8D04FBC(*v142 + 40 * v27, &v155);
      sub_1C8D04FBC(&v28[40 * v26], v152);
      v29 = v144;
      LODWORD(v146) = sub_1C8D69B88(&v155, v152);
      v144 = v29;
      if (v29)
      {
        __swift_destroy_boxed_opaque_existential_1(v152);
        __swift_destroy_boxed_opaque_existential_1(&v155);
LABEL_120:

        return;
      }

      __swift_destroy_boxed_opaque_existential_1(v152);
      __swift_destroy_boxed_opaque_existential_1(&v155);
      v137 = 40 * v26;
      v30 = v26;
      v31 = &v28[40 * v26 + 80];
      v134 = v30;
      v32 = v30 + 2;
      v139 = v23;
      while (1)
      {
        v33 = v32;
        if (v27 + 1 >= v23)
        {
          break;
        }

        v145 = v27;
        sub_1C8D04FBC(v31, &v155);
        sub_1C8D04FBC(v31 - 40, v152);
        v35 = v156;
        v34 = v157;
        __swift_project_boxed_opaque_existential_1(&v155, v156);
        v36 = *(v34 + 8);
        v37 = v34;
        v38 = v140;
        v36(v35, v37);
        if (__swift_getEnumTagSinglePayload(v38, 1, v14) == 1)
        {
          sub_1C9061F7C();
          if (__swift_getEnumTagSinglePayload(v38, 1, v14) != 1)
          {
            sub_1C8D16D78(v38, &qword_1EC313AD8, &qword_1C90726F0);
          }
        }

        else
        {
          (*v151)(v143, v38, v14);
        }

        v39 = v153;
        v40 = v154;
        __swift_project_boxed_opaque_existential_1(v152, v153);
        v41 = v39;
        v42 = v141;
        (*(v40 + 8))(v41, v40);
        if (__swift_getEnumTagSinglePayload(v42, 1, v14) == 1)
        {
          v43 = v138;
          sub_1C9061F7C();
          if (__swift_getEnumTagSinglePayload(v42, 1, v14) != 1)
          {
            sub_1C8D16D78(v42, &qword_1EC313AD8, &qword_1C90726F0);
          }
        }

        else
        {
          v43 = v138;
          (*v151)(v138, v42, v14);
        }

        v44 = v143;
        v45 = sub_1C9061F9C();
        v46 = *v150;
        (*v150)(v43, v14);
        v46(v44, v14);
        __swift_destroy_boxed_opaque_existential_1(v152);
        __swift_destroy_boxed_opaque_existential_1(&v155);
        v31 += 40;
        v27 = v145 + 1;
        v32 = v33 + 1;
        v23 = v139;
        if ((v146 ^ v45))
        {
          goto LABEL_18;
        }
      }

      v27 = v23;
LABEL_18:
      if ((v146 & 1) == 0)
      {
        goto LABEL_30;
      }

      v26 = v134;
      if (v27 < v134)
      {
        goto LABEL_144;
      }

      if (v134 < v27)
      {
        if (v23 >= v33)
        {
          v47 = v33;
        }

        else
        {
          v47 = v23;
        }

        v48 = v134;
        v49 = 40 * v47 - 40;
        v145 = v27;
        v50 = v27;
        v51 = v137;
        do
        {
          if (v48 != --v50)
          {
            v52 = *v142;
            if (!*v142)
            {
              goto LABEL_149;
            }

            v53 = v52 + v51;
            v54 = v52 + v49;
            sub_1C8D04FA4((v52 + v51), &v155);
            v55 = *(v54 + 32);
            v56 = *(v54 + 16);
            *v53 = *v54;
            *(v53 + 16) = v56;
            *(v53 + 32) = v55;
            sub_1C8D04FA4(&v155, v54);
          }

          ++v48;
          v49 -= 40;
          v51 += 40;
        }

        while (v48 < v50);
        v27 = v145;
LABEL_30:
        v26 = v134;
      }
    }

    v57 = v142[1];
    if (v27 < v57)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_141;
      }

      if (v27 - v26 < v133)
      {
        break;
      }
    }

LABEL_55:
    if (v27 < v26)
    {
      goto LABEL_140;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v145 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C8D00D94();
      v25 = v121;
    }

    v76 = *(v25 + 16);
    v77 = v76 + 1;
    if (v76 >= *(v25 + 24) >> 1)
    {
      sub_1C8D00D94();
      v25 = v122;
    }

    *(v25 + 16) = v77;
    v78 = v25 + 32;
    v79 = (v25 + 32 + 16 * v76);
    v80 = v145;
    *v79 = v26;
    v79[1] = v80;
    v146 = *v135;
    if (!v146)
    {
      goto LABEL_150;
    }

    if (v76)
    {
      while (1)
      {
        v81 = v77 - 1;
        v82 = (v78 + 16 * (v77 - 1));
        v83 = (v25 + 16 * v77);
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v84 = *(v25 + 32);
          v85 = *(v25 + 40);
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_75:
          if (v87)
          {
            goto LABEL_127;
          }

          v99 = *v83;
          v98 = v83[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_130;
          }

          v103 = v82[1];
          v104 = v103 - *v82;
          if (__OFSUB__(v103, *v82))
          {
            goto LABEL_133;
          }

          if (__OFADD__(v101, v104))
          {
            goto LABEL_135;
          }

          if (v101 + v104 >= v86)
          {
            if (v86 < v104)
            {
              v81 = v77 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        if (v77 < 2)
        {
          goto LABEL_129;
        }

        v106 = *v83;
        v105 = v83[1];
        v94 = __OFSUB__(v105, v106);
        v101 = v105 - v106;
        v102 = v94;
LABEL_90:
        if (v102)
        {
          goto LABEL_132;
        }

        v108 = *v82;
        v107 = v82[1];
        v94 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v94)
        {
          goto LABEL_134;
        }

        if (v109 < v101)
        {
          goto LABEL_104;
        }

LABEL_97:
        if (v81 - 1 >= v77)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v142)
        {
          goto LABEL_147;
        }

        v113 = v25;
        v114 = (v78 + 16 * (v81 - 1));
        v115 = *v114;
        v116 = v78 + 16 * v81;
        v25 = *(v116 + 8);
        v117 = v144;
        sub_1C8D6CCC4((*v142 + 40 * *v114), (*v142 + 40 * *v116), (*v142 + 40 * v25), v146);
        v144 = v117;
        if (v117)
        {
          goto LABEL_120;
        }

        if (v25 < v115)
        {
          goto LABEL_122;
        }

        v118 = v78;
        v119 = *(v113 + 16);
        if (v81 > v119)
        {
          goto LABEL_123;
        }

        *v114 = v115;
        v114[1] = v25;
        if (v81 >= v119)
        {
          goto LABEL_124;
        }

        v77 = v119 - 1;
        sub_1C8DDBD9C((v116 + 16), v119 - 1 - v81, v116);
        v25 = v113;
        *(v113 + 16) = v119 - 1;
        v120 = v119 > 2;
        v78 = v118;
        if (!v120)
        {
          goto LABEL_104;
        }
      }

      v88 = v78 + 16 * v77;
      v89 = *(v88 - 64);
      v90 = *(v88 - 56);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_125;
      }

      v93 = *(v88 - 48);
      v92 = *(v88 - 40);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_126;
      }

      v95 = v83[1];
      v96 = v95 - *v83;
      if (__OFSUB__(v95, *v83))
      {
        goto LABEL_128;
      }

      v94 = __OFADD__(v86, v96);
      v97 = v86 + v96;
      if (v94)
      {
        goto LABEL_131;
      }

      if (v97 >= v91)
      {
        v111 = *v82;
        v110 = v82[1];
        v94 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v94)
        {
          goto LABEL_139;
        }

        if (v86 < v112)
        {
          v81 = v77 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_75;
    }

LABEL_104:
    v23 = v142[1];
    v24 = v145;
    if (v145 >= v23)
    {
      goto LABEL_108;
    }
  }

  v58 = v26 + v133;
  if (__OFADD__(v26, v133))
  {
    goto LABEL_142;
  }

  if (v58 >= v57)
  {
    v58 = v142[1];
  }

  if (v58 < v26)
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    v25 = sub_1C8DDBD88(v25);
LABEL_110:
    v123 = (v25 + 16);
    v124 = *(v25 + 16);
    while (v124 >= 2)
    {
      if (!*v142)
      {
        goto LABEL_148;
      }

      v125 = v25;
      v126 = (v25 + 16 * v124);
      v25 = *v126;
      v127 = &v123[2 * v124];
      v128 = *(v127 + 1);
      v129 = v144;
      sub_1C8D6CCC4((*v142 + 40 * *v126), (*v142 + 40 * *v127), (*v142 + 40 * v128), v158);
      v144 = v129;
      if (v129)
      {
        break;
      }

      if (v128 < v25)
      {
        goto LABEL_136;
      }

      if (v124 - 2 >= *v123)
      {
        goto LABEL_137;
      }

      *v126 = v25;
      v126[1] = v128;
      v130 = *v123 - v124;
      if (*v123 < v124)
      {
        goto LABEL_138;
      }

      v124 = *v123 - 1;
      sub_1C8DDBD9C(v127 + 16, v130, v127);
      *v123 = v124;
      v25 = v125;
    }

    goto LABEL_120;
  }

  if (v27 == v58)
  {
    goto LABEL_55;
  }

  v132 = v25;
  v146 = *v142;
  v59 = &v146[40 * v27];
  v134 = v26;
  v60 = v26 - v27;
  v136 = v58;
LABEL_40:
  v145 = v27;
  v137 = v60;
  v139 = v59;
  while (1)
  {
    sub_1C8D04FBC(v59, &v155);
    sub_1C8D04FBC((v59 - 40), v152);
    v61 = v156;
    v62 = v157;
    __swift_project_boxed_opaque_existential_1(&v155, v156);
    v63 = v61;
    v64 = v148;
    (*(v62 + 8))(v63, v62);
    if (__swift_getEnumTagSinglePayload(v64, 1, v14) == 1)
    {
      sub_1C9061F7C();
      if (__swift_getEnumTagSinglePayload(v64, 1, v14) != 1)
      {
        sub_1C8D16D78(v64, &qword_1EC313AD8, &qword_1C90726F0);
      }
    }

    else
    {
      (*v151)(v158, v64, v14);
    }

    v65 = v153;
    v66 = v154;
    __swift_project_boxed_opaque_existential_1(v152, v153);
    v67 = v65;
    v68 = v149;
    (*(v66 + 8))(v67, v66);
    if (__swift_getEnumTagSinglePayload(v68, 1, v14) == 1)
    {
      v69 = v147;
      sub_1C9061F7C();
      if (__swift_getEnumTagSinglePayload(v68, 1, v14) != 1)
      {
        sub_1C8D16D78(v68, &qword_1EC313AD8, &qword_1C90726F0);
      }
    }

    else
    {
      v69 = v147;
      (*v151)(v147, v68, v14);
    }

    v70 = v158;
    v71 = sub_1C9061F9C();
    v72 = *v150;
    (*v150)(v69, v14);
    v72(v70, v14);
    __swift_destroy_boxed_opaque_existential_1(v152);
    __swift_destroy_boxed_opaque_existential_1(&v155);
    if ((v71 & 1) == 0)
    {
LABEL_53:
      v27 = v145 + 1;
      v59 = (v139 + 40);
      v60 = v137 - 1;
      if (v145 + 1 == v136)
      {
        v27 = v136;
        v25 = v132;
        v26 = v134;
        goto LABEL_55;
      }

      goto LABEL_40;
    }

    if (!v146)
    {
      break;
    }

    sub_1C8D04FA4(v59, &v155);
    v73 = *(v59 - 24);
    *v59 = *(v59 - 40);
    *(v59 + 1) = v73;
    *(v59 + 4) = *(v59 - 1);
    sub_1C8D04FA4(&v155, (v59 - 40));
    v59 -= 40;
    if (__CFADD__(v60++, 1))
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

uint64_t sub_1C8D6CCC4(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v83 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v79 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v79 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v79 - v16;
  v17 = sub_1C9061FEC();
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v79 - v22;
  MEMORY[0x1EEE9AC00](v24);
  i = a3;
  v85 = &v79 - v25;
  v26 = (a2 - a1) / 40;
  v87 = (v27 + 32);
  v28 = (v27 + 8);
  v29 = (a3 - a2) / 40;
  if (v26 >= v29)
  {
    v85 = a1;
    sub_1C8CB15B4(a2, v29, a4);
    v54 = &a4[40 * v29];
    v31 = a4;
    v55 = i;
    v88 = a4;
LABEL_22:
    v56 = a2 - 40;
    v55 -= 40;
    v57 = (v54 - 40);
    v95 = a2;
    for (i = a2 - 40; ; v56 = i)
    {
      v30 = (v57 + 40);
      if (v57 + 40 <= v31 || a2 <= v85)
      {
        break;
      }

      sub_1C8D04FBC(v57, v92);
      sub_1C8D04FBC(v56, v89);
      v59 = v93;
      v60 = v94;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      v61 = v59;
      v62 = v82;
      (*(v60 + 8))(v61, v60);
      if (__swift_getEnumTagSinglePayload(v62, 1, v17) == 1)
      {
        sub_1C9061F7C();
        if (__swift_getEnumTagSinglePayload(v62, 1, v17) != 1)
        {
          sub_1C8D16D78(v62, &qword_1EC313AD8, &qword_1C90726F0);
        }
      }

      else
      {
        (*v87)(v86, v62, v17);
      }

      v63 = v90;
      v64 = v91;
      __swift_project_boxed_opaque_existential_1(v89, v90);
      v65 = v63;
      v66 = v83;
      (*(v64 + 8))(v65, v64);
      if (__swift_getEnumTagSinglePayload(v66, 1, v17) == 1)
      {
        v67 = v80;
        sub_1C9061F7C();
        if (__swift_getEnumTagSinglePayload(v66, 1, v17) != 1)
        {
          sub_1C8D16D78(v66, &qword_1EC313AD8, &qword_1C90726F0);
        }
      }

      else
      {
        v67 = v80;
        (*v87)(v80, v66, v17);
      }

      v68 = v86;
      v69 = sub_1C9061F9C();
      v70 = *v28;
      (*v28)(v67, v17);
      v70(v68, v17);
      __swift_destroy_boxed_opaque_existential_1(v89);
      __swift_destroy_boxed_opaque_existential_1(v92);
      if (v69)
      {
        v54 = (v57 + 40);
        v73 = i;
        a2 = i;
        v31 = v88;
        if (v55 + 40 != v95)
        {
          v74 = *i;
          v75 = *(i + 1);
          *(v55 + 4) = *(i + 4);
          *v55 = v74;
          *(v55 + 1) = v75;
          a2 = v73;
        }

        goto LABEL_22;
      }

      v31 = v88;
      if (v30 != v55 + 40)
      {
        v71 = *v57;
        v72 = *(v57 + 16);
        *(v55 + 4) = *(v57 + 32);
        *v55 = v71;
        *(v55 + 1) = v72;
      }

      v55 -= 40;
      v57 -= 40;
      a2 = v95;
    }
  }

  else
  {
    sub_1C8CB15B4(a1, (a2 - a1) / 40, a4);
    v30 = &a4[40 * v26];
    v31 = a4;
    v32 = i;
    v86 = v30;
    while (v31 < v30 && a2 < v32)
    {
      v34 = v28;
      v35 = v23;
      v36 = v14;
      v95 = a2;
      sub_1C8D04FBC(a2, v92);
      v88 = v31;
      sub_1C8D04FBC(v31, v89);
      v37 = v93;
      v38 = v94;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      v39 = v81;
      (*(v38 + 8))(v37, v38);
      v40 = v39;
      if (__swift_getEnumTagSinglePayload(v39, 1, v17) == 1)
      {
        sub_1C9061F7C();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v17);
        v23 = v35;
        if (EnumTagSinglePayload != 1)
        {
          sub_1C8D16D78(v40, &qword_1EC313AD8, &qword_1C90726F0);
        }
      }

      else
      {
        (*v87)(v85, v39, v17);
        v23 = v35;
      }

      v42 = v90;
      v43 = v91;
      __swift_project_boxed_opaque_existential_1(v89, v90);
      v44 = *(v43 + 8);
      v45 = v43;
      v14 = v36;
      v44(v42, v45);
      v28 = v34;
      if (__swift_getEnumTagSinglePayload(v36, 1, v17) == 1)
      {
        sub_1C9061F7C();
        v46 = __swift_getEnumTagSinglePayload(v36, 1, v17);
        v30 = v86;
        if (v46 != 1)
        {
          sub_1C8D16D78(v36, &qword_1EC313AD8, &qword_1C90726F0);
        }
      }

      else
      {
        (*v87)(v23, v36, v17);
        v30 = v86;
      }

      v47 = v85;
      v48 = sub_1C9061F9C();
      v49 = *v28;
      (*v28)(v23, v17);
      v49(v47, v17);
      __swift_destroy_boxed_opaque_existential_1(v89);
      __swift_destroy_boxed_opaque_existential_1(v92);
      if (v48)
      {
        v50 = v95;
        a2 = v95 + 40;
        v51 = a1 == v95;
        v31 = v88;
      }

      else
      {
        v50 = v88;
        v31 = v88 + 40;
        v51 = a1 == v88;
        a2 = v95;
      }

      v32 = i;
      if (!v51)
      {
        v52 = *v50;
        v53 = *(v50 + 1);
        *(a1 + 4) = *(v50 + 4);
        *a1 = v52;
        *(a1 + 1) = v53;
      }

      a1 += 40;
    }

    a2 = a1;
  }

  v76 = (v30 - v31) / 40;
  if (a2 != v31 || a2 >= &v31[40 * v76])
  {
    memmove(a2, v31, 40 * v76);
  }

  return 1;
}