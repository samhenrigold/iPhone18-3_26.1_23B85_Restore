__n128 sub_100001730(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_100001774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 194))
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

uint64_t sub_1000017BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 194) = 1;
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

    *(result + 194) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000184C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000656C646ELL;
  v3 = 0x546567617373656DLL;
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xEC000000656C7469;
    v13 = 0x8000000100010450;
    v14 = 0xD000000000000012;
    if (a1 == 2)
    {
      v14 = 0xD000000000000011;
    }

    else
    {
      v13 = 0x8000000100010470;
    }

    v15 = 0x536567617373656DLL;
    if (a1)
    {
      v12 = 0xEF656C7469546275;
    }

    else
    {
      v15 = 0x546567617373656DLL;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v14;
    }

    if (v4 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v5 = 0x69636966656E6562;
    v6 = 0xED00004449797261;
    v7 = 0x61487265646E6573;
    v8 = 0xE700000000000000;
    if (a1 == 7)
    {
      v8 = 0xEC000000656C646ELL;
    }

    else
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0x8000000100010490;
    if (a1 != 4)
    {
      v9 = 0x80000001000104B0;
    }

    if (a1 <= 5u)
    {
      v10 = 0xD000000000000013;
    }

    else
    {
      v10 = v5;
    }

    if (v4 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x8000000100010450;
        v3 = 0xD000000000000011;
      }

      else
      {
        v2 = 0x8000000100010470;
        v3 = 0xD000000000000012;
      }
    }

    else if (a2)
    {
      v3 = 0x536567617373656DLL;
      v2 = 0xEF656C7469546275;
    }

    else
    {
      v2 = 0xEC000000656C7469;
    }
  }

  else if (a2 <= 5u)
  {
    v3 = 0xD000000000000013;
    if (a2 == 4)
    {
      v16 = "acceptedButtonLabel";
    }

    else
    {
      v16 = "declinedButtonLabel";
    }

    v2 = (v16 - 32) | 0x8000000000000000;
  }

  else if (a2 == 6)
  {
    v3 = 0x69636966656E6562;
    v2 = 0xED00004449797261;
  }

  else if (a2 == 7)
  {
    v3 = 0x61487265646E6573;
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  if (v10 == v3 && v11 == v2)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_10000F6F0();
  }

  return v17 & 1;
}

Swift::Int sub_100001B18()
{
  v1 = *v0;
  sub_10000F730();
  sub_100001B68(v3, v1);
  return sub_10000F750();
}

uint64_t sub_100001B68(uint64_t a1, unsigned __int8 a2)
{
  sub_10000F500();
}

Swift::Int sub_100001CE8(uint64_t a1)
{
  v2 = *v1;
  sub_10000F730();
  sub_100001B68(v4, v2);
  return sub_10000F750();
}

unint64_t sub_100001D2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100003570(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100001D5C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100001D8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100001D8C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x546567617373656DLL;
    v5 = 0xD000000000000012;
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    if (a1)
    {
      v4 = 0x536567617373656DLL;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x69636966656E6562;
    v2 = 0x61487265646E6573;
    if (a1 != 7)
    {
      v2 = 0x6E776F6E6B6E75;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 <= 5u)
    {
      return 0xD000000000000013;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100001EF4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100006940((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000066E8(&qword_100018458, &qword_10000FDD8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100001FCC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100006940((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000066E8(&qword_100018458, &qword_10000FDD8);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100006984();
    **(*(v4 + 64) + 40) = sub_10000F530();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000020B4(uint64_t a1, uint64_t a2)
{
  result = sub_10000F5A0();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100002108(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000F5B0();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100002160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000F5C0();
  *a1 = result;
  return result;
}

void *sub_100002188@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000021B8(uint64_t a1)
{
  sub_100006C84(&qword_100018488, &unk_10000FEEC);
  sub_100006C84(&qword_100018490, &unk_10000FE94);
  return sub_10000F6C0();
}

uint64_t sub_1000022BC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100002318(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100002318(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000023E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000067FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006860(v11);
  return v7;
}

unint64_t sub_1000023E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000024F0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10000F670();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000024F0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000253C(a1, a2);
  sub_10000266C(&off_100014B80);
  return v3;
}

char *sub_10000253C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100002758(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000F670();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000F510();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002758(v10, 0);
        result = sub_10000F650();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000266C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000027CC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100002758(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000066E8(&qword_100018448, &qword_10000FDD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000027CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000066E8(&qword_100018448, &qword_10000FDD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1000028C0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1000028D0(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_100002944@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_100002974(uint64_t a1)
{
  v1 = a1;
  sub_10000F730();
  sub_100001B68(v4, v1);
  v2 = sub_10000F750();

  return sub_1000029E0(v1, v2);
}

unint64_t sub_1000029E0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xD000000000000011;
    v26 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 <= 3)
      {
        v9 = 0xEC000000656C7469;
        if (v6 == 2)
        {
          v10 = v5;
        }

        else
        {
          v10 = 0xD000000000000012;
        }

        if (v6 == 2)
        {
          v11 = 0x8000000100010450;
        }

        else
        {
          v11 = 0x8000000100010470;
        }

        if (v6)
        {
          v12 = 0x536567617373656DLL;
        }

        else
        {
          v12 = 0x546567617373656DLL;
        }

        if (v6)
        {
          v9 = 0xEF656C7469546275;
        }

        v7 = v6 <= 1 ? v12 : v10;
        v8 = v6 <= 1 ? v9 : v11;
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        v8 = v6 == 4 ? 0x8000000100010490 : 0x80000001000104B0;
        v7 = 0xD000000000000013;
      }

      else if (v6 == 6)
      {
        v7 = 0x69636966656E6562;
        v8 = 0xED00004449797261;
      }

      else if (v6 == 7)
      {
        v7 = 0x61487265646E6573;
        v8 = 0xEC000000656C646ELL;
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x6E776F6E6B6E75;
      }

      v13 = 0xEC000000656C7469;
      v14 = 0x61487265646E6573;
      if (v26 != 7)
      {
        v14 = 0x6E776F6E6B6E75;
      }

      v15 = 0xE700000000000000;
      if (v26 == 7)
      {
        v15 = 0xEC000000656C646ELL;
      }

      if (v26 == 6)
      {
        v14 = 0x69636966656E6562;
        v15 = 0xED00004449797261;
      }

      v16 = 0x80000001000104B0;
      if (v26 == 4)
      {
        v16 = 0x8000000100010490;
      }

      if (v26 <= 5)
      {
        v14 = 0xD000000000000013;
        v15 = v16;
      }

      if (v26 == 2)
      {
        v17 = v5;
      }

      else
      {
        v17 = 0xD000000000000012;
      }

      if (v26 == 2)
      {
        v18 = 0x8000000100010450;
      }

      else
      {
        v18 = 0x8000000100010470;
      }

      if (v26)
      {
        v19 = 0x536567617373656DLL;
      }

      else
      {
        v19 = 0x546567617373656DLL;
      }

      if (v26)
      {
        v13 = 0xEF656C7469546275;
      }

      if (v26 > 1)
      {
        v13 = v18;
      }

      else
      {
        v17 = v19;
      }

      v20 = v26 <= 3 ? v17 : v14;
      v21 = v26 <= 3 ? v13 : v15;
      if (v7 == v20 && v8 == v21)
      {
        break;
      }

      v22 = v5;
      v23 = sub_10000F6F0();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      v5 = v22;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

uint64_t sub_100002D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000066E8(&qword_100018440, &qword_10000FDC8);
  v32 = v4;
  result = sub_10000F6A0();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 16 * v23);
      v26 = v25[1];
      v33 = *v25;
      if ((v32 & 1) == 0)
      {
      }

      sub_10000F730();
      sub_10000F500();

      result = sub_10000F750();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 16 * v18);
      *v19 = v33;
      v19[1] = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_100003104(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000F640() + 1) & ~v5;
    do
    {
      sub_10000F730();
      sub_10000F500();

      result = sub_10000F750();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_100003408()
{
  v1 = v0;
  sub_1000066E8(&qword_100018440, &qword_10000FDC8);
  v2 = *v0;
  v3 = sub_10000F690();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_100003570(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100014A88;
  v6._object = a2;
  v4 = sub_10000F6D0(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000035BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000066E8(&qword_100018440, &qword_10000FDC8);
    v3 = sub_10000F6B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_100002974(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000036B4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 338) = a3;
  *(v3 + 3808) = a2;
  *(v3 + 3800) = a1;
  sub_1000066E8(&qword_100018418, &qword_10000FDA8);
  *(v3 + 3816) = swift_task_alloc();
  v4 = sub_10000F150();
  *(v3 + 3824) = v4;
  *(v3 + 3832) = *(v4 - 8);
  *(v3 + 3840) = swift_task_alloc();
  *(v3 + 3848) = swift_task_alloc();
  v5 = sub_10000F180();
  *(v3 + 3856) = v5;
  *(v3 + 3864) = *(v5 - 8);
  *(v3 + 3872) = swift_task_alloc();
  *(v3 + 3880) = swift_task_alloc();
  *(v3 + 3888) = swift_task_alloc();
  *(v3 + 3896) = swift_task_alloc();
  *(v3 + 3904) = swift_task_alloc();
  v6 = sub_10000F0A0();
  *(v3 + 3912) = v6;
  *(v3 + 3920) = *(v6 - 8);
  *(v3 + 3928) = swift_task_alloc();

  return _swift_task_switch(sub_1000038A8, 0, 0);
}

uint64_t sub_1000038A8()
{
  v1 = sub_10000F0B0();
  if (!v1)
  {
    v5 = sub_1000035BC(&_swiftEmptyArrayStorage);
LABEL_28:
    sub_10000F160();
    v36 = sub_10000F170();
    v37 = sub_10000F5F0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Building message..", v38, 2u);
    }

    v39 = *(v0 + 3904);
    v40 = *(v0 + 3864);
    v41 = *(v0 + 3856);

    v42 = *(v40 + 8);
    *(v0 + 3936) = v42;
    v42(v39, v41);
    *(v0 + 4016) = 0;
    v43 = 0xE000000000000000;
    *(v0 + 344) = 0;
    *(v0 + 352) = 0xE000000000000000;
    *(v0 + 360) = 0;
    *(v0 + 368) = 0xE000000000000000;
    *(v0 + 376) = 0;
    *(v0 + 384) = 0xE000000000000000;
    *(v0 + 392) = 0;
    *(v0 + 400) = 0xE000000000000000;
    *(v0 + 408) = 0;
    *(v0 + 416) = 0xE000000000000000;
    *(v0 + 424) = 0;
    *(v0 + 432) = 0xE000000000000000;
    *(v0 + 440) = 0;
    *(v0 + 448) = 0;
    *(v0 + 456) = 0xE000000000000000;
    *(v0 + 464) = xmmword_10000FC90;
    *(v0 + 480) = 0xE000000000000000;
    *(v0 + 488) = 0;
    *(v0 + 496) = 0xE000000000000000;
    *(v0 + 504) = 0;
    *(v0 + 512) = 0xE000000000000000;
    *(v0 + 520) = 0;
    *(v0 + 528) = 0xE000000000000000;
    *(v0 + 536) = 0;
    if (v5[2])
    {
      v44 = sub_100002974(6);
      if (v45)
      {
        v46 = (v5[7] + 16 * v44);
        v47 = *v46;
        v43 = v46[1];
      }

      else
      {
        v47 = 0;
        v43 = 0xE000000000000000;
      }
    }

    else
    {
      v47 = 0;
    }

    *(v0 + 3952) = v43;
    *(v0 + 3944) = v47;
    v48 = *(v0 + 3832);
    v49 = *(v0 + 3824);
    v50 = *(v0 + 3816);

    *(v0 + 448) = v47;
    *(v0 + 456) = v43;
    sub_10000F110();

    if ((*(v48 + 48))(v50, 1, v49) == 1)
    {
      sub_100006730(*(v0 + 3816));
      sub_100006798(v0 + 544);
      v51 = *(v0 + 3800);
      v52 = *(v0 + 520);
      *(v0 + 904) = *(v0 + 504);
      *(v0 + 920) = v52;
      *(v0 + 936) = *(v0 + 536);
      v53 = *(v0 + 456);
      *(v0 + 840) = *(v0 + 440);
      *(v0 + 856) = v53;
      v54 = *(v0 + 488);
      *(v0 + 872) = *(v0 + 472);
      *(v0 + 888) = v54;
      v55 = *(v0 + 392);
      *(v0 + 776) = *(v0 + 376);
      *(v0 + 792) = v55;
      v56 = *(v0 + 424);
      *(v0 + 808) = *(v0 + 408);
      *(v0 + 824) = v56;
      v57 = *(v0 + 360);
      *(v0 + 744) = *(v0 + 344);
      *(v0 + 760) = v57;
      sub_1000067BC(v0 + 744);
      *v51 = *(v0 + 544);
      v58 = *(v0 + 608);
      v60 = *(v0 + 560);
      v59 = *(v0 + 576);
      *(v51 + 48) = *(v0 + 592);
      *(v51 + 64) = v58;
      *(v51 + 16) = v60;
      *(v51 + 32) = v59;
      v61 = *(v0 + 672);
      v63 = *(v0 + 624);
      v62 = *(v0 + 640);
      *(v51 + 112) = *(v0 + 656);
      *(v51 + 128) = v61;
      *(v51 + 80) = v63;
      *(v51 + 96) = v62;
      v65 = *(v0 + 704);
      v64 = *(v0 + 720);
      v66 = *(v0 + 688);
      *(v51 + 192) = *(v0 + 736);
      *(v51 + 160) = v65;
      *(v51 + 176) = v64;
      *(v51 + 144) = v66;

      v67 = *(v0 + 8);

      return v67();
    }

    else
    {
      (*(*(v0 + 3832) + 32))(*(v0 + 3848), *(v0 + 3816), *(v0 + 3824));
      v69 = [objc_allocWithZone(AAInheritanceController) init];
      *(v0 + 3960) = v69;
      isa = sub_10000F130().super.isa;
      *(v0 + 3968) = isa;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 3776;
      *(v0 + 24) = sub_100004018;
      v71 = swift_continuation_init();
      *(v0 + 3600) = sub_1000066E8(&qword_100018420, &qword_10000FDB0);
      *(v0 + 3576) = v71;
      *(v0 + 3544) = _NSConcreteStackBlock;
      *(v0 + 3552) = 1107296256;
      *(v0 + 3560) = sub_100001EF4;
      *(v0 + 3568) = &unk_100014C60;
      [v69 fetchInvitationWithBeneficiaryID:isa completion:v0 + 3544];

      return _swift_continuation_await(v0 + 16);
    }
  }

  v2 = v1;
  v75 = *(v1 + 16);
  if (!v75)
  {

    v5 = &_swiftEmptyDictionarySingleton;
    goto LABEL_28;
  }

  v3 = 0;
  v4 = *(v0 + 3920);
  v73 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v74 = v4;
  v72 = (v4 + 8);
  v5 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v1);
    }

    (*(v74 + 16))(*(v0 + 3928), v73 + *(v74 + 72) * v3, *(v0 + 3912));
    v7 = sub_10000F080();
    v9 = v8;
    v10._rawValue = &off_100014A88;
    v78._countAndFlagsBits = v7;
    v78._object = v9;
    v11 = sub_10000F6D0(v10, v78);

    if (v11 >= 9)
    {
      v12 = 8;
    }

    else
    {
      v12 = v11;
    }

    v13 = sub_10000F090();
    if (!v14)
    {
      v25 = sub_100002974(v12);
      if (v26)
      {
        v27 = v25;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_100003408();
        }

        v28 = *(v0 + 3928);
        v29 = *(v0 + 3912);

        sub_100003104(v27, v5);
        v1 = (*v72)(v28, v29);
      }

      else
      {
        v1 = (*v72)(*(v0 + 3928), *(v0 + 3912));
      }

      goto LABEL_5;
    }

    v15 = v13;
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v5;
    v1 = sub_100002974(v12);
    v19 = v5[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_46;
    }

    v23 = v18;
    if (v5[3] < v22)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = v1;
      sub_100003408();
      v1 = v35;
      v5 = v76;
    }

LABEL_21:
    v30 = *(v0 + 3928);
    v31 = *(v0 + 3912);
    if (v23)
    {
      v6 = (v5[7] + 16 * v1);
      *v6 = v15;
      v6[1] = v16;

      v1 = (*v72)(v30, v31);
    }

    else
    {
      v5[(v1 >> 6) + 8] |= 1 << v1;
      *(v5[6] + v1) = v12;
      v32 = (v5[7] + 16 * v1);
      *v32 = v15;
      v32[1] = v16;
      v1 = (*v72)(v30, v31);
      v33 = v5[2];
      v21 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v21)
      {
        goto LABEL_47;
      }

      v5[2] = v34;
    }

LABEL_5:
    if (v75 == ++v3)
    {

      goto LABEL_28;
    }
  }

  sub_100002D00(v22, isUniquelyReferenced_nonNull_native);
  v1 = sub_100002974(v12);
  if ((v23 & 1) == (v24 & 1))
  {
    goto LABEL_21;
  }

  v1 = &type metadata for InviteQueryItem;

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v1);
}

uint64_t sub_100004018()
{
  v1 = *(*v0 + 48);
  *(*v0 + 3976) = v1;
  if (v1)
  {
    v2 = sub_1000054CC;
  }

  else
  {
    v2 = sub_100004128;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004128()
{
  v162 = v0;
  v1 = *(v0 + 3968);
  v2 = *(v0 + 3776);

  *(v0 + 536) = 1;
  v160 = v2;
  v3 = [v2 beneficiaryDisplayName];
  if (v3)
  {
    v4 = v3;
    sub_10000F4D0();
  }

  type metadata accessor for MessagesViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v154 = objc_opt_self();
  v156 = ObjCClassFromMetadata;
  v6 = [v154 bundleForClass:ObjCClassFromMetadata];
  v164._object = 0xEC000000454C5449;
  v151._countAndFlagsBits = 0xEC000000454C5449;
  v164._countAndFlagsBits = 0x545F5245444E4553;
  v166.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v166.value._object = 0xEB00000000656C62;
  v7.super.isa = v6;
  v168._countAndFlagsBits = 0;
  v168._object = 0xE000000000000000;
  v152._object = sub_10000F0E0(v164, v166, v7, v168, 0x545F5245444E4553, v151);

  sub_1000066E8(&qword_100018430, &qword_10000FDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10000FCA0;
  v9 = [v2 beneficiaryFirstName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_10000F4D0();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = (v0 + 344);
  v159 = (v0 + 1344);
  *(v8 + 56) = &type metadata for String;
  v15 = sub_1000068E8();
  *(v8 + 64) = v15;
  if (v13)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v13)
  {
    v17 = v13;
  }

  *(v8 + 32) = v16;
  *(v8 + 40) = v17;
  v18 = sub_10000F4E0();
  v20 = v19;

  *(v0 + 344) = v18;
  *(v0 + 352) = v20;
  v21 = [v154 bundleForClass:v156];
  v165._object = 0xEF454C5449544255;
  v152._countAndFlagsBits = 0xEF454C5449544255;
  v165._countAndFlagsBits = 0x535F5245444E4553;
  v167.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v167.value._object = 0xEB00000000656C62;
  v22.super.isa = v21;
  v169._countAndFlagsBits = 0;
  v169._object = 0xE000000000000000;
  sub_10000F0E0(v165, v167, v22, v169, 0x535F5245444E4553, v152);

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10000FCA0;
  v24 = [v160 beneficiaryFirstName];
  v158 = (v0 + 1544);
  v153 = (v0 + 1744);
  if (v24)
  {
    v25 = v24;
    v26 = sub_10000F4D0();
    v28 = v27;

    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v15;
    if (v28)
    {
      goto LABEL_16;
    }

    v26 = 0;
  }

  else
  {
    v26 = 0;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v15;
  }

  v28 = 0xE000000000000000;
LABEL_16:
  v29 = *(v0 + 3848);
  v30 = *(v0 + 3832);
  v31 = *(v0 + 3824);
  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  v32 = sub_10000F4E0();
  v34 = v33;

  *(v0 + 360) = v32;
  *(v0 + 368) = v34;
  v35 = [v160 status];

  (*(v30 + 8))(v29, v31);
  *(v0 + 464) = v35;
  sub_10000F160();
  v36 = *(v0 + 488);
  v37 = *(v0 + 504);
  v38 = *(v0 + 520);
  *(v0 + 2104) = v37;
  *(v0 + 2120) = v38;
  v39 = *(v0 + 424);
  v40 = *(v0 + 440);
  v41 = *(v0 + 456);
  *(v0 + 2040) = v40;
  *(v0 + 2056) = v41;
  v42 = *(v0 + 456);
  v43 = *(v0 + 472);
  v44 = *(v0 + 488);
  *(v0 + 2072) = v43;
  *(v0 + 2088) = v44;
  v45 = *(v0 + 360);
  v46 = *(v0 + 376);
  v47 = *(v0 + 392);
  *(v0 + 1976) = v46;
  *(v0 + 1992) = v47;
  v48 = *(v0 + 392);
  v49 = *(v0 + 408);
  v50 = *(v0 + 424);
  *(v0 + 2008) = v49;
  *(v0 + 2024) = v50;
  v51 = *(v0 + 360);
  *(v0 + 1944) = *v14;
  *(v0 + 1960) = v51;
  v52 = *(v0 + 488);
  v53 = *(v0 + 520);
  *(v0 + 1904) = *(v0 + 504);
  *(v0 + 1920) = v53;
  v54 = *(v0 + 424);
  v55 = *(v0 + 456);
  *(v0 + 1840) = *(v0 + 440);
  *(v0 + 1856) = v55;
  *(v0 + 1872) = *(v0 + 472);
  *(v0 + 1888) = v52;
  v56 = *v14;
  v57 = *(v0 + 360);
  v58 = *(v0 + 392);
  *(v0 + 1776) = *(v0 + 376);
  *(v0 + 1792) = v58;
  *(v0 + 1808) = *(v0 + 408);
  *(v0 + 1824) = v54;
  *v153 = *v14;
  *(v0 + 1760) = v57;
  v59 = *(v0 + 488);
  v60 = *(v0 + 520);
  *(v0 + 1704) = *(v0 + 504);
  *(v0 + 1720) = v60;
  v61 = *(v0 + 424);
  v62 = *(v0 + 456);
  *(v0 + 1640) = *(v0 + 440);
  *(v0 + 1656) = v62;
  *(v0 + 1672) = *(v0 + 472);
  *(v0 + 1688) = v59;
  v63 = *(v0 + 360);
  v64 = *(v0 + 392);
  *(v0 + 1576) = *(v0 + 376);
  *(v0 + 1592) = v64;
  *(v0 + 1608) = *(v0 + 408);
  *(v0 + 1624) = v61;
  *v158 = *v14;
  *(v0 + 1560) = v63;
  v65 = *(v0 + 520);
  *(v0 + 1504) = v37;
  *(v0 + 1520) = v65;
  *(v0 + 1440) = v40;
  *(v0 + 1456) = v42;
  *(v0 + 1472) = v43;
  *(v0 + 1488) = v36;
  *(v0 + 1376) = v46;
  *(v0 + 1392) = v48;
  *(v0 + 1408) = v49;
  *(v0 + 1424) = v39;
  *(v0 + 2136) = *(v0 + 536);
  *(v0 + 1936) = *(v0 + 536);
  *(v0 + 1736) = *(v0 + 536);
  *(v0 + 1536) = *(v0 + 536);
  *v159 = v56;
  *(v0 + 1360) = v45;
  sub_1000068AC(v153, v0 + 2144);
  sub_1000068AC(v158, v0 + 2344);
  sub_1000068AC(v159, v0 + 2544);
  sub_1000068AC(v0 + 1944, v0 + 2744);
  v66 = sub_10000F170();
  v67 = sub_10000F5F0();
  sub_1000067BC(v0 + 1944);
  v68 = os_log_type_enabled(v66, v67);
  v69 = *(v0 + 3936);
  v70 = *(v0 + 3896);
  v71 = *(v0 + 3856);
  if (v68)
  {
    v157 = *(v0 + 3856);
    v72 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    *v72 = 136315906;
    v73 = *(v0 + 2072);
    v155 = v70;
    v74 = *(v0 + 2080);

    v75 = sub_100002318(v73, v74, &v161);

    *(v72 + 4) = v75;
    *(v72 + 12) = 2080;
    v76 = *(v0 + 1920);
    v77 = *(v0 + 1928);

    sub_1000067BC(v153);
    v78 = sub_100002318(v76, v77, &v161);

    *(v72 + 14) = v78;
    *(v72 + 22) = 1024;
    *(v72 + 24) = *(v0 + 1736);
    sub_1000067BC(v158);
    *(v72 + 28) = 2080;
    v79 = *(v0 + 1448);
    v80 = *(v0 + 1456);

    sub_1000067BC(v159);
    v81 = sub_100002318(v79, v80, &v161);

    *(v72 + 30) = v81;
    _os_log_impl(&_mh_execute_header, v66, v67, "lcContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.beneficiaryID :%s", v72, 0x26u);
    swift_arrayDestroy();

    v69(v155, v157);
  }

  else
  {
    sub_1000067BC(v159);
    sub_1000067BC(v158);
    sub_1000067BC(v153);

    v69(v70, v71);
  }

  if (*(v0 + 338) == 1)
  {
    v82 = v0 + 3344;
    sub_10000F160();
    v83 = sub_10000F170();
    v84 = sub_10000F5F0();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "Message is in compose screen, return message with minimal details", v85, 2u);
    }

    v86 = *(v0 + 3936);
    v87 = *(v0 + 3888);
    v88 = *(v0 + 3856);

    v86(v87, v88);
    swift_beginAccess();
    v89 = *(v0 + 488);
    v91 = *(v0 + 504);
    v90 = *(v0 + 520);
    *(v0 + 1304) = v91;
    *(v0 + 1320) = v90;
    v92 = *(v0 + 424);
    v94 = *(v0 + 440);
    v93 = *(v0 + 456);
    *(v0 + 1240) = v94;
    *(v0 + 1256) = v93;
    v95 = *(v0 + 456);
    v97 = *(v0 + 472);
    v96 = *(v0 + 488);
    *(v0 + 1272) = v97;
    *(v0 + 1288) = v96;
    v98 = *(v0 + 360);
    v100 = *(v0 + 376);
    v99 = *(v0 + 392);
    *(v0 + 1176) = v100;
    *(v0 + 1192) = v99;
    v101 = *(v0 + 392);
    v103 = *(v0 + 408);
    v102 = *(v0 + 424);
    *(v0 + 1208) = v103;
    *(v0 + 1224) = v102;
    v104 = *(v0 + 360);
    v105 = *v14;
    *(v0 + 1144) = *v14;
    *(v0 + 1160) = v104;
    v106 = *(v0 + 520);
    *(v0 + 3504) = v91;
    *(v0 + 3520) = v106;
    *(v0 + 3440) = v94;
    *(v0 + 3456) = v95;
    *(v0 + 3472) = v97;
    *(v0 + 3488) = v89;
    *(v0 + 3376) = v100;
    *(v0 + 3392) = v101;
    *(v0 + 3408) = v103;
    *(v0 + 3424) = v92;
    *(v0 + 1336) = *(v0 + 536);
    *(v0 + 3536) = *(v0 + 536);
    *v82 = v105;
    *(v0 + 3360) = v98;
    nullsub_1();
    v107 = v0 + 944;
    v108 = v0 + 1144;
  }

  else
  {
    v82 = v0 + 2944;
    swift_beginAccess();
    v109 = *(v0 + 488);
    v111 = *(v0 + 504);
    v110 = *(v0 + 520);
    *(v0 + 3304) = v111;
    *(v0 + 3320) = v110;
    v112 = *(v0 + 424);
    v114 = *(v0 + 440);
    v113 = *(v0 + 456);
    *(v0 + 3240) = v114;
    *(v0 + 3256) = v113;
    v115 = *(v0 + 456);
    v117 = *(v0 + 472);
    v116 = *(v0 + 488);
    *(v0 + 3272) = v117;
    *(v0 + 3288) = v116;
    v118 = *(v0 + 360);
    v120 = *(v0 + 376);
    v119 = *(v0 + 392);
    *(v0 + 3176) = v120;
    *(v0 + 3192) = v119;
    v121 = *(v0 + 392);
    v123 = *(v0 + 408);
    v122 = *(v0 + 424);
    *(v0 + 3208) = v123;
    *(v0 + 3224) = v122;
    v124 = *(v0 + 360);
    v125 = *v14;
    *(v0 + 3144) = *v14;
    *(v0 + 3160) = v124;
    v126 = *(v0 + 520);
    *(v0 + 3104) = v111;
    *(v0 + 3120) = v126;
    *(v0 + 3040) = v114;
    *(v0 + 3056) = v115;
    *(v0 + 3072) = v117;
    *(v0 + 3088) = v109;
    *(v0 + 2976) = v120;
    *(v0 + 2992) = v121;
    *(v0 + 3008) = v123;
    *(v0 + 3024) = v112;
    *(v0 + 3336) = *(v0 + 536);
    *(v0 + 3136) = *(v0 + 536);
    *(v0 + 2944) = v125;
    *(v0 + 2960) = v118;
    nullsub_1();
    v107 = v0 + 144;
    v108 = v0 + 3144;
  }

  sub_1000068AC(v108, v107);
  v127 = *(v82 + 176);
  *(v0 + 704) = *(v82 + 160);
  *(v0 + 720) = v127;
  *(v0 + 736) = *(v82 + 192);
  v128 = *(v82 + 112);
  *(v0 + 640) = *(v82 + 96);
  *(v0 + 656) = v128;
  v129 = *(v82 + 144);
  *(v0 + 672) = *(v82 + 128);
  *(v0 + 688) = v129;
  v130 = *(v82 + 48);
  *(v0 + 576) = *(v82 + 32);
  *(v0 + 592) = v130;
  v131 = *(v82 + 80);
  *(v0 + 608) = *(v82 + 64);
  *(v0 + 624) = v131;
  v132 = *(v82 + 16);
  *(v0 + 544) = *v82;
  *(v0 + 560) = v132;
  v133 = *(v0 + 3800);
  v134 = *(v0 + 520);
  *(v0 + 904) = *(v0 + 504);
  *(v0 + 920) = v134;
  *(v0 + 936) = *(v0 + 536);
  v135 = *(v0 + 456);
  *(v0 + 840) = *(v0 + 440);
  *(v0 + 856) = v135;
  v136 = *(v0 + 488);
  *(v0 + 872) = *(v0 + 472);
  *(v0 + 888) = v136;
  v137 = *(v0 + 392);
  *(v0 + 776) = *(v0 + 376);
  *(v0 + 792) = v137;
  v138 = *(v0 + 424);
  *(v0 + 808) = *(v0 + 408);
  *(v0 + 824) = v138;
  v139 = *(v0 + 360);
  *(v0 + 744) = *v14;
  *(v0 + 760) = v139;
  sub_1000067BC(v0 + 744);
  *v133 = *(v0 + 544);
  v140 = *(v0 + 608);
  v142 = *(v0 + 560);
  v141 = *(v0 + 576);
  *(v133 + 48) = *(v0 + 592);
  *(v133 + 64) = v140;
  *(v133 + 16) = v142;
  *(v133 + 32) = v141;
  v143 = *(v0 + 672);
  v145 = *(v0 + 624);
  v144 = *(v0 + 640);
  *(v133 + 112) = *(v0 + 656);
  *(v133 + 128) = v143;
  *(v133 + 80) = v145;
  *(v133 + 96) = v144;
  v147 = *(v0 + 704);
  v146 = *(v0 + 720);
  v148 = *(v0 + 688);
  *(v133 + 192) = *(v0 + 736);
  *(v133 + 160) = v147;
  *(v133 + 176) = v146;
  *(v133 + 144) = v148;

  v149 = *(v0 + 8);

  return v149();
}

uint64_t sub_100004B48()
{
  v1 = *(*v0 + 112);
  *(*v0 + 3992) = v1;
  if (v1)
  {
    v2 = sub_100005E7C;
  }

  else
  {
    v2 = sub_100004C58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004C58()
{
  v143 = v0;
  v1 = *(v0 + 3768);

  v2 = v1;
  if (v1 >> 62)
  {
    result = sub_10000F680();
    v2 = v1;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:
    v17 = (v0 + 344);

    sub_10000F160();
    v18 = *(v0 + 488);
    v19 = *(v0 + 504);
    v20 = *(v0 + 520);
    *(v0 + 2104) = v19;
    *(v0 + 2120) = v20;
    v21 = *(v0 + 424);
    v22 = *(v0 + 440);
    v23 = *(v0 + 456);
    *(v0 + 2040) = v22;
    *(v0 + 2056) = v23;
    v24 = *(v0 + 456);
    v25 = *(v0 + 472);
    v26 = *(v0 + 488);
    *(v0 + 2072) = v25;
    *(v0 + 2088) = v26;
    v27 = *(v0 + 360);
    v28 = *(v0 + 376);
    v29 = *(v0 + 392);
    *(v0 + 1976) = v28;
    *(v0 + 1992) = v29;
    v30 = *(v0 + 392);
    v31 = *(v0 + 408);
    v32 = *(v0 + 424);
    *(v0 + 2008) = v31;
    *(v0 + 2024) = v32;
    v33 = *(v0 + 360);
    *(v0 + 1944) = *(v0 + 344);
    *(v0 + 1960) = v33;
    v34 = *(v0 + 488);
    v35 = *(v0 + 520);
    *(v0 + 1904) = *(v0 + 504);
    *(v0 + 1920) = v35;
    v36 = *(v0 + 424);
    v37 = *(v0 + 456);
    *(v0 + 1840) = *(v0 + 440);
    *(v0 + 1856) = v37;
    *(v0 + 1872) = *(v0 + 472);
    *(v0 + 1888) = v34;
    v38 = *(v0 + 344);
    v39 = *(v0 + 360);
    v40 = *(v0 + 392);
    *(v0 + 1776) = *(v0 + 376);
    *(v0 + 1792) = v40;
    *(v0 + 1808) = *(v0 + 408);
    *(v0 + 1824) = v36;
    *(v0 + 1744) = *(v0 + 344);
    *(v0 + 1760) = v39;
    v41 = *(v0 + 488);
    v42 = *(v0 + 520);
    *(v0 + 1704) = *(v0 + 504);
    *(v0 + 1720) = v42;
    v43 = *(v0 + 424);
    v44 = *(v0 + 456);
    *(v0 + 1640) = *(v0 + 440);
    *(v0 + 1656) = v44;
    *(v0 + 1672) = *(v0 + 472);
    *(v0 + 1688) = v41;
    v45 = *(v0 + 360);
    v46 = *(v0 + 392);
    *(v0 + 1576) = *(v0 + 376);
    *(v0 + 1592) = v46;
    *(v0 + 1608) = *(v0 + 408);
    *(v0 + 1624) = v43;
    *(v0 + 1544) = *(v0 + 344);
    *(v0 + 1560) = v45;
    v47 = *(v0 + 520);
    *(v0 + 1504) = v19;
    *(v0 + 1520) = v47;
    *(v0 + 1440) = v22;
    *(v0 + 1456) = v24;
    *(v0 + 1472) = v25;
    *(v0 + 1488) = v18;
    *(v0 + 1376) = v28;
    *(v0 + 1392) = v30;
    *(v0 + 1408) = v31;
    *(v0 + 1424) = v21;
    *(v0 + 2136) = *(v0 + 536);
    *(v0 + 1936) = *(v0 + 536);
    *(v0 + 1736) = *(v0 + 536);
    *(v0 + 1536) = *(v0 + 536);
    *(v0 + 1344) = v38;
    *(v0 + 1360) = v27;
    sub_1000068AC(v0 + 1744, v0 + 2144);
    sub_1000068AC(v0 + 1544, v0 + 2344);
    sub_1000068AC(v0 + 1344, v0 + 2544);
    sub_1000068AC(v0 + 1944, v0 + 2744);
    v48 = sub_10000F170();
    v49 = sub_10000F5F0();
    sub_1000067BC(v0 + 1944);
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 3936);
    v52 = *(v0 + 3896);
    v53 = *(v0 + 3856);
    if (v50)
    {
      v139 = *(v0 + 3856);
      v54 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v54 = 136315906;
      v135 = v52;
      v137 = v51;
      v55 = *(v0 + 2072);
      v56 = *(v0 + 2080);

      v57 = sub_100002318(v55, v56, &v142);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;
      v58 = *(v0 + 1920);
      v59 = *(v0 + 1928);

      sub_1000067BC(v0 + 1744);
      v60 = sub_100002318(v58, v59, &v142);

      *(v54 + 14) = v60;
      *(v54 + 22) = 1024;
      *(v54 + 24) = *(v0 + 1736);
      sub_1000067BC(v0 + 1544);
      *(v54 + 28) = 2080;
      v61 = *(v0 + 1448);
      v62 = *(v0 + 1456);

      sub_1000067BC(v0 + 1344);
      v63 = sub_100002318(v61, v62, &v142);

      *(v54 + 30) = v63;
      _os_log_impl(&_mh_execute_header, v48, v49, "lcContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.beneficiaryID :%s", v54, 0x26u);
      swift_arrayDestroy();

      v137(v135, v139);
    }

    else
    {
      sub_1000067BC(v0 + 1344);
      sub_1000067BC(v0 + 1544);
      sub_1000067BC(v0 + 1744);

      v51(v52, v53);
    }

    v64 = v0;
    if (*(v0 + 338) == 1)
    {
      v65 = (v0 + 1144);
      v66 = v0 + 3344;
      sub_10000F160();
      v67 = sub_10000F170();
      v68 = sub_10000F5F0();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "Message is in compose screen, return message with minimal details", v69, 2u);
      }

      v70 = *(v0 + 3936);
      v71 = *(v64 + 3888);
      v72 = *(v64 + 3856);

      v70(v71, v72);
      swift_beginAccess();
      v73 = v17[9];
      v75 = v17[10];
      v74 = v17[11];
      *(v64 + 1304) = v75;
      *(v64 + 1320) = v74;
      v76 = v17[5];
      v78 = v17[6];
      v77 = v17[7];
      *(v64 + 1240) = v78;
      *(v64 + 1256) = v77;
      v79 = v17[7];
      v81 = v17[8];
      v80 = v17[9];
      *(v64 + 1272) = v81;
      *(v64 + 1288) = v80;
      v82 = v17[1];
      v84 = v17[2];
      v83 = v17[3];
      *(v64 + 1176) = v84;
      *(v64 + 1192) = v83;
      v85 = v17[3];
      v87 = v17[4];
      v86 = v17[5];
      *(v64 + 1208) = v87;
      *(v64 + 1224) = v86;
      v88 = v17[1];
      v89 = *v17;
      *v65 = *v17;
      *(v64 + 1160) = v88;
      v90 = v17[11];
      *(v64 + 3504) = v75;
      *(v64 + 3520) = v90;
      *(v64 + 3440) = v78;
      *(v64 + 3456) = v79;
      *(v64 + 3472) = v81;
      *(v64 + 3488) = v73;
      *(v64 + 3376) = v84;
      *(v64 + 3392) = v85;
      *(v64 + 3408) = v87;
      *(v64 + 3424) = v76;
      *(v64 + 1336) = *(v17 + 96);
      *(v64 + 3536) = *(v17 + 96);
      *v66 = v89;
      *(v64 + 3360) = v82;
      nullsub_1();
      v91 = v64 + 944;
      v92 = v64 + 1144;
    }

    else
    {
      v66 = v0 + 2944;
      swift_beginAccess();
      v93 = *(v0 + 488);
      v95 = *(v0 + 504);
      v94 = *(v0 + 520);
      *(v0 + 3304) = v95;
      *(v0 + 3320) = v94;
      v96 = *(v0 + 424);
      v98 = *(v0 + 440);
      v97 = *(v0 + 456);
      *(v0 + 3240) = v98;
      *(v0 + 3256) = v97;
      v99 = *(v0 + 456);
      v101 = *(v0 + 472);
      v100 = *(v0 + 488);
      *(v0 + 3272) = v101;
      *(v0 + 3288) = v100;
      v102 = *(v0 + 360);
      v104 = *(v0 + 376);
      v103 = *(v0 + 392);
      *(v0 + 3176) = v104;
      *(v0 + 3192) = v103;
      v105 = *(v0 + 392);
      v107 = *(v0 + 408);
      v106 = *(v0 + 424);
      *(v0 + 3208) = v107;
      *(v0 + 3224) = v106;
      v108 = *(v0 + 360);
      v109 = *v17;
      *(v0 + 3144) = *v17;
      *(v0 + 3160) = v108;
      v110 = *(v0 + 520);
      *(v0 + 3104) = v95;
      *(v0 + 3120) = v110;
      *(v0 + 3040) = v98;
      *(v0 + 3056) = v99;
      *(v0 + 3072) = v101;
      *(v0 + 3088) = v93;
      *(v0 + 2976) = v104;
      *(v0 + 2992) = v105;
      *(v0 + 3008) = v107;
      *(v0 + 3024) = v96;
      *(v0 + 3336) = *(v0 + 536);
      *(v0 + 3136) = *(v0 + 536);
      *(v0 + 2944) = v109;
      *(v0 + 2960) = v102;
      nullsub_1();
      v91 = v0 + 144;
      v92 = v0 + 3144;
    }

    sub_1000068AC(v92, v91);
    v111 = *(v66 + 176);
    *(v64 + 704) = *(v66 + 160);
    *(v64 + 720) = v111;
    *(v64 + 736) = *(v66 + 192);
    v112 = *(v66 + 112);
    *(v64 + 640) = *(v66 + 96);
    *(v64 + 656) = v112;
    v113 = *(v66 + 144);
    *(v64 + 672) = *(v66 + 128);
    *(v64 + 688) = v113;
    v114 = *(v66 + 48);
    *(v64 + 576) = *(v66 + 32);
    *(v64 + 592) = v114;
    v115 = *(v66 + 80);
    *(v64 + 608) = *(v66 + 64);
    *(v64 + 624) = v115;
    v116 = *(v66 + 16);
    *(v64 + 544) = *v66;
    *(v64 + 560) = v116;
    v117 = *(v64 + 3800);
    v118 = v17[11];
    *(v64 + 904) = v17[10];
    *(v64 + 920) = v118;
    *(v64 + 936) = *(v17 + 96);
    v119 = v17[7];
    *(v64 + 840) = v17[6];
    *(v64 + 856) = v119;
    v120 = v17[9];
    *(v64 + 872) = v17[8];
    *(v64 + 888) = v120;
    v121 = v17[3];
    *(v64 + 776) = v17[2];
    *(v64 + 792) = v121;
    v122 = v17[5];
    *(v64 + 808) = v17[4];
    *(v64 + 824) = v122;
    v123 = v17[1];
    *(v64 + 744) = *v17;
    *(v64 + 760) = v123;
    sub_1000067BC(v64 + 744);
    *v117 = *(v64 + 544);
    v124 = *(v64 + 608);
    v126 = *(v64 + 560);
    v125 = *(v64 + 576);
    *(v117 + 48) = *(v64 + 592);
    *(v117 + 64) = v124;
    *(v117 + 16) = v126;
    *(v117 + 32) = v125;
    v127 = *(v64 + 672);
    v129 = *(v64 + 624);
    v128 = *(v64 + 640);
    *(v117 + 112) = *(v64 + 656);
    *(v117 + 128) = v127;
    *(v117 + 80) = v129;
    *(v117 + 96) = v128;
    v131 = *(v64 + 704);
    v130 = *(v64 + 720);
    v132 = *(v64 + 688);
    *(v117 + 192) = *(v64 + 736);
    *(v117 + 160) = v131;
    *(v117 + 176) = v130;
    *(v117 + 144) = v132;

    v133 = *(v64 + 8);

    return v133();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (result >= 1)
  {
    v4 = 0;
    v134 = v2 & 0xC000000000000001;
    v136 = result;
    v138 = v2;
    v140 = v0;
    while (1)
    {
      v5 = v134 ? sub_10000F660() : *(v2 + 8 * v4 + 32);
      v6 = v5;
      v7 = *(v0 + 4000);
      v141 = *(v0 + 3952);
      v8 = *(v0 + 3944);
      v9 = *(v0 + 3840);
      v10 = *(v0 + 3824);

      v11 = [v6 beneficiaryID];
      sub_10000F140();

      v12 = sub_10000F120();
      v14 = v13;
      v7(v9, v10);
      if (v8 == v12 && v141 == v14)
      {
        break;
      }

      v0 = v140;
      v15 = sub_10000F6F0();

      if (v15)
      {
        goto LABEL_14;
      }

LABEL_6:
      v2 = v138;
      if (v136 == ++v4)
      {
        goto LABEL_16;
      }
    }

    v0 = v140;
LABEL_14:
    *(v0 + 537) = 1;
    v16 = [v6 status];

    *(v0 + 464) = v16;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000054CC()
{
  v142 = v0;
  v1 = *(v0 + 3968);
  v2 = *(v0 + 3960);
  v3 = *(v0 + 3848);
  v4 = *(v0 + 3832);
  v5 = *(v0 + 3824);
  swift_willThrow();
  v6 = *(v4 + 8);
  *(v0 + 4000) = v6;
  *(v0 + 4008) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  sub_10000F160();
  swift_errorRetain();
  v7 = sub_10000F170();
  v8 = sub_10000F5E0();

  if (os_log_type_enabled(v7, v8))
  {
    v138 = *(v0 + 3880);
    v140 = *(v0 + 3936);
    v9 = *(v0 + 3856);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v141[0] = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_10000F710();
    v14 = sub_100002318(v12, v13, v141);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "fetchTrustedContacts : %s", v10, 0xCu);
    sub_100006860(v11);

    v140(v138, v9);
    if ((*(v0 + 4016) & 1) == 0)
    {
LABEL_3:
      v15 = [objc_allocWithZone(AAInheritanceController) init];
      *(v0 + 3984) = v15;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 3768;
      *(v0 + 88) = sub_100004B48;
      v16 = swift_continuation_init();
      *(v0 + 3664) = sub_1000066E8(&qword_100018428, &qword_10000FDB8);
      *(v0 + 3640) = v16;
      *(v0 + 3608) = _NSConcreteStackBlock;
      *(v0 + 3616) = 1107296256;
      *(v0 + 3624) = sub_100001FCC;
      *(v0 + 3632) = &unk_100014C88;
      [v15 fetchBenefactorsWithCompletion:v0 + 3608];

      return _swift_continuation_await(v0 + 80);
    }
  }

  else
  {
    v17 = *(v0 + 3936);
    v18 = *(v0 + 3880);
    v19 = *(v0 + 3856);

    v17(v18, v19);
    if ((*(v0 + 4016) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v20 = (v0 + 344);
  sub_10000F160();
  v21 = *(v0 + 488);
  v22 = *(v0 + 504);
  v23 = *(v0 + 520);
  *(v0 + 2104) = v22;
  *(v0 + 2120) = v23;
  v24 = *(v0 + 424);
  v25 = *(v0 + 440);
  v26 = *(v0 + 456);
  *(v0 + 2040) = v25;
  *(v0 + 2056) = v26;
  v27 = *(v0 + 456);
  v28 = *(v0 + 472);
  v29 = *(v0 + 488);
  *(v0 + 2072) = v28;
  *(v0 + 2088) = v29;
  v30 = *(v0 + 360);
  v31 = *(v0 + 376);
  v32 = *(v0 + 392);
  *(v0 + 1976) = v31;
  *(v0 + 1992) = v32;
  v33 = *(v0 + 392);
  v34 = *(v0 + 408);
  v35 = *(v0 + 424);
  *(v0 + 2008) = v34;
  *(v0 + 2024) = v35;
  v36 = *(v0 + 360);
  *(v0 + 1944) = *(v0 + 344);
  *(v0 + 1960) = v36;
  v37 = *(v0 + 488);
  v38 = *(v0 + 520);
  *(v0 + 1904) = *(v0 + 504);
  *(v0 + 1920) = v38;
  v39 = *(v0 + 424);
  v40 = *(v0 + 456);
  *(v0 + 1840) = *(v0 + 440);
  *(v0 + 1856) = v40;
  *(v0 + 1872) = *(v0 + 472);
  *(v0 + 1888) = v37;
  v41 = *(v0 + 344);
  v42 = *(v0 + 360);
  v43 = *(v0 + 392);
  *(v0 + 1776) = *(v0 + 376);
  *(v0 + 1792) = v43;
  *(v0 + 1808) = *(v0 + 408);
  *(v0 + 1824) = v39;
  *(v0 + 1744) = *(v0 + 344);
  *(v0 + 1760) = v42;
  v44 = *(v0 + 488);
  v45 = *(v0 + 520);
  *(v0 + 1704) = *(v0 + 504);
  *(v0 + 1720) = v45;
  v46 = *(v0 + 424);
  v47 = *(v0 + 456);
  *(v0 + 1640) = *(v0 + 440);
  *(v0 + 1656) = v47;
  *(v0 + 1672) = *(v0 + 472);
  *(v0 + 1688) = v44;
  v48 = *(v0 + 360);
  v49 = *(v0 + 392);
  *(v0 + 1576) = *(v0 + 376);
  *(v0 + 1592) = v49;
  *(v0 + 1608) = *(v0 + 408);
  *(v0 + 1624) = v46;
  *(v0 + 1544) = *(v0 + 344);
  *(v0 + 1560) = v48;
  v50 = *(v0 + 520);
  *(v0 + 1504) = v22;
  *(v0 + 1520) = v50;
  *(v0 + 1440) = v25;
  *(v0 + 1456) = v27;
  *(v0 + 1472) = v28;
  *(v0 + 1488) = v21;
  *(v0 + 1376) = v31;
  *(v0 + 1392) = v33;
  *(v0 + 1408) = v34;
  *(v0 + 1424) = v24;
  *(v0 + 2136) = *(v0 + 536);
  *(v0 + 1936) = *(v0 + 536);
  *(v0 + 1736) = *(v0 + 536);
  *(v0 + 1536) = *(v0 + 536);
  *(v0 + 1344) = v41;
  *(v0 + 1360) = v30;
  sub_1000068AC(v0 + 1744, v0 + 2144);
  sub_1000068AC(v0 + 1544, v0 + 2344);
  sub_1000068AC(v0 + 1344, v0 + 2544);
  sub_1000068AC(v0 + 1944, v0 + 2744);
  v51 = sub_10000F170();
  v52 = sub_10000F5F0();
  sub_1000067BC(v0 + 1944);
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 3936);
  v55 = *(v0 + 3896);
  v56 = *(v0 + 3856);
  if (v53)
  {
    v139 = *(v0 + 3856);
    v57 = swift_slowAlloc();
    v141[0] = swift_slowAlloc();
    *v57 = 136315906;
    v136 = v55;
    v137 = v54;
    v58 = *(v0 + 2072);
    v59 = *(v0 + 2080);

    v60 = sub_100002318(v58, v59, v141);

    *(v57 + 4) = v60;
    *(v57 + 12) = 2080;
    v61 = *(v0 + 1920);
    v62 = *(v0 + 1928);

    sub_1000067BC(v0 + 1744);
    v63 = sub_100002318(v61, v62, v141);

    *(v57 + 14) = v63;
    *(v57 + 22) = 1024;
    *(v57 + 24) = *(v0 + 1736);
    sub_1000067BC(v0 + 1544);
    *(v57 + 28) = 2080;
    v64 = *(v0 + 1448);
    v65 = *(v0 + 1456);

    sub_1000067BC(v0 + 1344);
    v66 = sub_100002318(v64, v65, v141);

    *(v57 + 30) = v66;
    _os_log_impl(&_mh_execute_header, v51, v52, "lcContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.beneficiaryID :%s", v57, 0x26u);
    swift_arrayDestroy();

    v137(v136, v139);
  }

  else
  {
    sub_1000067BC(v0 + 1344);
    sub_1000067BC(v0 + 1544);
    sub_1000067BC(v0 + 1744);

    v54(v55, v56);
  }

  if (*(v0 + 338) == 1)
  {
    v67 = v0 + 3344;
    sub_10000F160();
    v68 = sub_10000F170();
    v69 = sub_10000F5F0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Message is in compose screen, return message with minimal details", v70, 2u);
    }

    v71 = *(v0 + 3936);
    v72 = *(v0 + 3888);
    v73 = *(v0 + 3856);

    v71(v72, v73);
    swift_beginAccess();
    v74 = *(v0 + 488);
    v76 = *(v0 + 504);
    v75 = *(v0 + 520);
    *(v0 + 1304) = v76;
    *(v0 + 1320) = v75;
    v77 = *(v0 + 424);
    v79 = *(v0 + 440);
    v78 = *(v0 + 456);
    *(v0 + 1240) = v79;
    *(v0 + 1256) = v78;
    v80 = *(v0 + 456);
    v82 = *(v0 + 472);
    v81 = *(v0 + 488);
    *(v0 + 1272) = v82;
    *(v0 + 1288) = v81;
    v83 = *(v0 + 360);
    v85 = *(v0 + 376);
    v84 = *(v0 + 392);
    *(v0 + 1176) = v85;
    *(v0 + 1192) = v84;
    v86 = *(v0 + 392);
    v88 = *(v0 + 408);
    v87 = *(v0 + 424);
    *(v0 + 1208) = v88;
    *(v0 + 1224) = v87;
    v89 = *(v0 + 360);
    v90 = *v20;
    *(v0 + 1144) = *v20;
    *(v0 + 1160) = v89;
    v91 = *(v0 + 520);
    *(v0 + 3504) = v76;
    *(v0 + 3520) = v91;
    *(v0 + 3440) = v79;
    *(v0 + 3456) = v80;
    *(v0 + 3472) = v82;
    *(v0 + 3488) = v74;
    *(v0 + 3376) = v85;
    *(v0 + 3392) = v86;
    *(v0 + 3408) = v88;
    *(v0 + 3424) = v77;
    *(v0 + 1336) = *(v0 + 536);
    *(v0 + 3536) = *(v0 + 536);
    *v67 = v90;
    *(v0 + 3360) = v83;
    nullsub_1();
    v92 = v0 + 944;
    v93 = v0 + 1144;
  }

  else
  {
    v67 = v0 + 2944;
    swift_beginAccess();
    v94 = *(v0 + 488);
    v96 = *(v0 + 504);
    v95 = *(v0 + 520);
    *(v0 + 3304) = v96;
    *(v0 + 3320) = v95;
    v97 = *(v0 + 424);
    v99 = *(v0 + 440);
    v98 = *(v0 + 456);
    *(v0 + 3240) = v99;
    *(v0 + 3256) = v98;
    v100 = *(v0 + 456);
    v102 = *(v0 + 472);
    v101 = *(v0 + 488);
    *(v0 + 3272) = v102;
    *(v0 + 3288) = v101;
    v103 = *(v0 + 360);
    v105 = *(v0 + 376);
    v104 = *(v0 + 392);
    *(v0 + 3176) = v105;
    *(v0 + 3192) = v104;
    v106 = *(v0 + 392);
    v108 = *(v0 + 408);
    v107 = *(v0 + 424);
    *(v0 + 3208) = v108;
    *(v0 + 3224) = v107;
    v109 = *(v0 + 360);
    v110 = *v20;
    *(v0 + 3144) = *v20;
    *(v0 + 3160) = v109;
    v111 = *(v0 + 520);
    *(v0 + 3104) = v96;
    *(v0 + 3120) = v111;
    *(v0 + 3040) = v99;
    *(v0 + 3056) = v100;
    *(v0 + 3072) = v102;
    *(v0 + 3088) = v94;
    *(v0 + 2976) = v105;
    *(v0 + 2992) = v106;
    *(v0 + 3008) = v108;
    *(v0 + 3024) = v97;
    *(v0 + 3336) = *(v0 + 536);
    *(v0 + 3136) = *(v0 + 536);
    *(v0 + 2944) = v110;
    *(v0 + 2960) = v103;
    nullsub_1();
    v92 = v0 + 144;
    v93 = v0 + 3144;
  }

  sub_1000068AC(v93, v92);
  v112 = *(v67 + 176);
  *(v0 + 704) = *(v67 + 160);
  *(v0 + 720) = v112;
  *(v0 + 736) = *(v67 + 192);
  v113 = *(v67 + 112);
  *(v0 + 640) = *(v67 + 96);
  *(v0 + 656) = v113;
  v114 = *(v67 + 144);
  *(v0 + 672) = *(v67 + 128);
  *(v0 + 688) = v114;
  v115 = *(v67 + 48);
  *(v0 + 576) = *(v67 + 32);
  *(v0 + 592) = v115;
  v116 = *(v67 + 80);
  *(v0 + 608) = *(v67 + 64);
  *(v0 + 624) = v116;
  v117 = *(v67 + 16);
  *(v0 + 544) = *v67;
  *(v0 + 560) = v117;
  v118 = *(v0 + 3800);
  v119 = *(v0 + 520);
  *(v0 + 904) = *(v0 + 504);
  *(v0 + 920) = v119;
  *(v0 + 936) = *(v0 + 536);
  v120 = *(v0 + 456);
  *(v0 + 840) = *(v0 + 440);
  *(v0 + 856) = v120;
  v121 = *(v0 + 488);
  *(v0 + 872) = *(v0 + 472);
  *(v0 + 888) = v121;
  v122 = *(v0 + 392);
  *(v0 + 776) = *(v0 + 376);
  *(v0 + 792) = v122;
  v123 = *(v0 + 424);
  *(v0 + 808) = *(v0 + 408);
  *(v0 + 824) = v123;
  v124 = *(v0 + 360);
  *(v0 + 744) = *v20;
  *(v0 + 760) = v124;
  sub_1000067BC(v0 + 744);
  *v118 = *(v0 + 544);
  v125 = *(v0 + 608);
  v127 = *(v0 + 560);
  v126 = *(v0 + 576);
  *(v118 + 48) = *(v0 + 592);
  *(v118 + 64) = v125;
  *(v118 + 16) = v127;
  *(v118 + 32) = v126;
  v128 = *(v0 + 672);
  v130 = *(v0 + 624);
  v129 = *(v0 + 640);
  *(v118 + 112) = *(v0 + 656);
  *(v118 + 128) = v128;
  *(v118 + 80) = v130;
  *(v118 + 96) = v129;
  v132 = *(v0 + 704);
  v131 = *(v0 + 720);
  v133 = *(v0 + 688);
  *(v118 + 192) = *(v0 + 736);
  *(v118 + 160) = v132;
  *(v118 + 176) = v131;
  *(v118 + 144) = v133;

  v134 = *(v0 + 8);

  return v134();
}

uint64_t sub_100005E7C()
{
  v137 = v0;
  v1 = (v0 + 344);
  v2 = *(v0 + 3984);
  swift_willThrow();

  sub_10000F160();
  swift_errorRetain();
  v3 = sub_10000F170();
  v4 = sub_10000F5E0();

  log = v3;
  if (os_log_type_enabled(v3, v4))
  {
    v131 = *(v0 + 3872);
    v133 = *(v0 + 3936);
    v129 = *(v0 + 3856);
    v5 = swift_slowAlloc();
    v128 = v4;
    v6 = swift_slowAlloc();
    v136[0] = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_10000F710();
    v9 = sub_100002318(v7, v8, v136);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v128, "fetchMyCustodianshipOwners : %s", v5, 0xCu);
    sub_100006860(v6);

    v133(v131, v129);
  }

  else
  {
    v10 = *(v0 + 3936);
    v11 = *(v0 + 3872);
    v12 = *(v0 + 3856);

    v10(v11, v12);
  }

  sub_10000F160();
  v13 = *(v0 + 488);
  v14 = *(v0 + 504);
  v15 = *(v0 + 520);
  *(v0 + 2104) = v14;
  *(v0 + 2120) = v15;
  v16 = *(v0 + 424);
  v17 = *(v0 + 440);
  v18 = *(v0 + 456);
  *(v0 + 2040) = v17;
  *(v0 + 2056) = v18;
  v19 = *(v0 + 456);
  v20 = *(v0 + 472);
  v21 = *(v0 + 488);
  *(v0 + 2072) = v20;
  *(v0 + 2088) = v21;
  v22 = *(v0 + 360);
  v23 = *(v0 + 376);
  v24 = *(v0 + 392);
  *(v0 + 1976) = v23;
  *(v0 + 1992) = v24;
  v25 = *(v0 + 392);
  v26 = *(v0 + 408);
  v27 = *(v0 + 424);
  *(v0 + 2008) = v26;
  *(v0 + 2024) = v27;
  v28 = *(v0 + 360);
  *(v0 + 1944) = *v1;
  *(v0 + 1960) = v28;
  v29 = *(v0 + 488);
  v30 = *(v0 + 520);
  *(v0 + 1904) = *(v0 + 504);
  *(v0 + 1920) = v30;
  v31 = *(v0 + 424);
  v32 = *(v0 + 456);
  *(v0 + 1840) = *(v0 + 440);
  *(v0 + 1856) = v32;
  *(v0 + 1872) = *(v0 + 472);
  *(v0 + 1888) = v29;
  v33 = *v1;
  v34 = *(v0 + 360);
  v35 = *(v0 + 392);
  *(v0 + 1776) = *(v0 + 376);
  *(v0 + 1792) = v35;
  *(v0 + 1808) = *(v0 + 408);
  *(v0 + 1824) = v31;
  *(v0 + 1744) = *v1;
  *(v0 + 1760) = v34;
  v36 = *(v0 + 488);
  v37 = *(v0 + 520);
  *(v0 + 1704) = *(v0 + 504);
  *(v0 + 1720) = v37;
  v38 = *(v0 + 424);
  v39 = *(v0 + 456);
  *(v0 + 1640) = *(v0 + 440);
  *(v0 + 1656) = v39;
  *(v0 + 1672) = *(v0 + 472);
  *(v0 + 1688) = v36;
  v40 = *(v0 + 360);
  v41 = *(v0 + 392);
  *(v0 + 1576) = *(v0 + 376);
  *(v0 + 1592) = v41;
  *(v0 + 1608) = *(v0 + 408);
  *(v0 + 1624) = v38;
  *(v0 + 1544) = *v1;
  *(v0 + 1560) = v40;
  v42 = *(v0 + 520);
  *(v0 + 1504) = v14;
  *(v0 + 1520) = v42;
  *(v0 + 1440) = v17;
  *(v0 + 1456) = v19;
  *(v0 + 1472) = v20;
  *(v0 + 1488) = v13;
  *(v0 + 1376) = v23;
  *(v0 + 1392) = v25;
  *(v0 + 1408) = v26;
  *(v0 + 1424) = v16;
  *(v0 + 2136) = *(v0 + 536);
  *(v0 + 1936) = *(v0 + 536);
  *(v0 + 1736) = *(v0 + 536);
  *(v0 + 1536) = *(v0 + 536);
  *(v0 + 1344) = v33;
  *(v0 + 1360) = v22;
  sub_1000068AC(v0 + 1744, v0 + 2144);
  sub_1000068AC(v0 + 1544, v0 + 2344);
  sub_1000068AC(v0 + 1344, v0 + 2544);
  sub_1000068AC(v0 + 1944, v0 + 2744);
  v43 = sub_10000F170();
  v44 = sub_10000F5F0();
  sub_1000067BC(v0 + 1944);
  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v0 + 3936);
  v47 = *(v0 + 3896);
  v48 = *(v0 + 3856);
  if (v45)
  {
    v134 = *(v0 + 3856);
    v49 = swift_slowAlloc();
    v136[0] = swift_slowAlloc();
    *v49 = 136315906;
    v130 = v47;
    v132 = v46;
    v50 = *(v0 + 2072);
    v51 = *(v0 + 2080);

    v52 = sub_100002318(v50, v51, v136);

    *(v49 + 4) = v52;
    *(v49 + 12) = 2080;
    v53 = *(v0 + 1920);
    v54 = *(v0 + 1928);

    sub_1000067BC(v0 + 1744);
    v55 = sub_100002318(v53, v54, v136);

    *(v49 + 14) = v55;
    *(v49 + 22) = 1024;
    *(v49 + 24) = *(v0 + 1736);
    sub_1000067BC(v0 + 1544);
    *(v49 + 28) = 2080;
    v56 = *(v0 + 1448);
    v57 = *(v0 + 1456);

    sub_1000067BC(v0 + 1344);
    v58 = sub_100002318(v56, v57, v136);

    *(v49 + 30) = v58;
    _os_log_impl(&_mh_execute_header, v43, v44, "lcContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.beneficiaryID :%s", v49, 0x26u);
    swift_arrayDestroy();

    v132(v130, v134);
  }

  else
  {
    sub_1000067BC(v0 + 1344);
    sub_1000067BC(v0 + 1544);
    sub_1000067BC(v0 + 1744);

    v46(v47, v48);
  }

  if (*(v0 + 338) == 1)
  {
    v59 = v0 + 3344;
    sub_10000F160();
    v60 = sub_10000F170();
    v61 = sub_10000F5F0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Message is in compose screen, return message with minimal details", v62, 2u);
    }

    v63 = *(v0 + 3936);
    v64 = *(v0 + 3888);
    v65 = *(v0 + 3856);

    v63(v64, v65);
    swift_beginAccess();
    v66 = *(v0 + 488);
    v68 = *(v0 + 504);
    v67 = *(v0 + 520);
    *(v0 + 1304) = v68;
    *(v0 + 1320) = v67;
    v69 = *(v0 + 424);
    v71 = *(v0 + 440);
    v70 = *(v0 + 456);
    *(v0 + 1240) = v71;
    *(v0 + 1256) = v70;
    v72 = *(v0 + 456);
    v74 = *(v0 + 472);
    v73 = *(v0 + 488);
    *(v0 + 1272) = v74;
    *(v0 + 1288) = v73;
    v75 = *(v0 + 360);
    v77 = *(v0 + 376);
    v76 = *(v0 + 392);
    *(v0 + 1176) = v77;
    *(v0 + 1192) = v76;
    v78 = *(v0 + 392);
    v80 = *(v0 + 408);
    v79 = *(v0 + 424);
    *(v0 + 1208) = v80;
    *(v0 + 1224) = v79;
    v81 = *(v0 + 360);
    v82 = *v1;
    *(v0 + 1144) = *v1;
    *(v0 + 1160) = v81;
    v83 = *(v0 + 520);
    *(v0 + 3504) = v68;
    *(v0 + 3520) = v83;
    *(v0 + 3440) = v71;
    *(v0 + 3456) = v72;
    *(v0 + 3472) = v74;
    *(v0 + 3488) = v66;
    *(v0 + 3376) = v77;
    *(v0 + 3392) = v78;
    *(v0 + 3408) = v80;
    *(v0 + 3424) = v69;
    *(v0 + 1336) = *(v0 + 536);
    *(v0 + 3536) = *(v0 + 536);
    *v59 = v82;
    *(v0 + 3360) = v75;
    nullsub_1();
    v84 = v0 + 944;
    v85 = v0 + 1144;
  }

  else
  {
    v59 = v0 + 2944;
    swift_beginAccess();
    v86 = *(v0 + 488);
    v88 = *(v0 + 504);
    v87 = *(v0 + 520);
    *(v0 + 3304) = v88;
    *(v0 + 3320) = v87;
    v89 = *(v0 + 424);
    v91 = *(v0 + 440);
    v90 = *(v0 + 456);
    *(v0 + 3240) = v91;
    *(v0 + 3256) = v90;
    v92 = *(v0 + 456);
    v94 = *(v0 + 472);
    v93 = *(v0 + 488);
    *(v0 + 3272) = v94;
    *(v0 + 3288) = v93;
    v95 = *(v0 + 360);
    v97 = *(v0 + 376);
    v96 = *(v0 + 392);
    *(v0 + 3176) = v97;
    *(v0 + 3192) = v96;
    v98 = *(v0 + 392);
    v100 = *(v0 + 408);
    v99 = *(v0 + 424);
    *(v0 + 3208) = v100;
    *(v0 + 3224) = v99;
    v101 = *(v0 + 360);
    v102 = *v1;
    *(v0 + 3144) = *v1;
    *(v0 + 3160) = v101;
    v103 = *(v0 + 520);
    *(v0 + 3104) = v88;
    *(v0 + 3120) = v103;
    *(v0 + 3040) = v91;
    *(v0 + 3056) = v92;
    *(v0 + 3072) = v94;
    *(v0 + 3088) = v86;
    *(v0 + 2976) = v97;
    *(v0 + 2992) = v98;
    *(v0 + 3008) = v100;
    *(v0 + 3024) = v89;
    *(v0 + 3336) = *(v0 + 536);
    *(v0 + 3136) = *(v0 + 536);
    *(v0 + 2944) = v102;
    *(v0 + 2960) = v95;
    nullsub_1();
    v84 = v0 + 144;
    v85 = v0 + 3144;
  }

  sub_1000068AC(v85, v84);
  v104 = *(v59 + 176);
  *(v0 + 704) = *(v59 + 160);
  *(v0 + 720) = v104;
  *(v0 + 736) = *(v59 + 192);
  v105 = *(v59 + 112);
  *(v0 + 640) = *(v59 + 96);
  *(v0 + 656) = v105;
  v106 = *(v59 + 144);
  *(v0 + 672) = *(v59 + 128);
  *(v0 + 688) = v106;
  v107 = *(v59 + 48);
  *(v0 + 576) = *(v59 + 32);
  *(v0 + 592) = v107;
  v108 = *(v59 + 80);
  *(v0 + 608) = *(v59 + 64);
  *(v0 + 624) = v108;
  v109 = *(v59 + 16);
  *(v0 + 544) = *v59;
  *(v0 + 560) = v109;
  v110 = *(v0 + 3800);
  v111 = *(v0 + 520);
  *(v0 + 904) = *(v0 + 504);
  *(v0 + 920) = v111;
  *(v0 + 936) = *(v0 + 536);
  v112 = *(v0 + 456);
  *(v0 + 840) = *(v0 + 440);
  *(v0 + 856) = v112;
  v113 = *(v0 + 488);
  *(v0 + 872) = *(v0 + 472);
  *(v0 + 888) = v113;
  v114 = *(v0 + 392);
  *(v0 + 776) = *(v0 + 376);
  *(v0 + 792) = v114;
  v115 = *(v0 + 424);
  *(v0 + 808) = *(v0 + 408);
  *(v0 + 824) = v115;
  v116 = *(v0 + 360);
  *(v0 + 744) = *v1;
  *(v0 + 760) = v116;
  sub_1000067BC(v0 + 744);
  *v110 = *(v0 + 544);
  v117 = *(v0 + 608);
  v119 = *(v0 + 560);
  v118 = *(v0 + 576);
  *(v110 + 48) = *(v0 + 592);
  *(v110 + 64) = v117;
  *(v110 + 16) = v119;
  *(v110 + 32) = v118;
  v120 = *(v0 + 672);
  v122 = *(v0 + 624);
  v121 = *(v0 + 640);
  *(v110 + 112) = *(v0 + 656);
  *(v110 + 128) = v120;
  *(v110 + 80) = v122;
  *(v110 + 96) = v121;
  v124 = *(v0 + 704);
  v123 = *(v0 + 720);
  v125 = *(v0 + 688);
  *(v110 + 192) = *(v0 + 736);
  *(v110 + 160) = v124;
  *(v110 + 176) = v123;
  *(v110 + 144) = v125;

  v126 = *(v0 + 8);

  return v126();
}

uint64_t sub_1000066E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006730(uint64_t a1)
{
  v2 = sub_1000066E8(&qword_100018418, &qword_10000FDA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100006798(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
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
  return result;
}

uint64_t sub_1000067FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006860(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1000068E8()
{
  result = qword_100018438;
  if (!qword_100018438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018438);
  }

  return result;
}

void *sub_100006940(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100006984()
{
  result = qword_100018450;
  if (!qword_100018450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100018450);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InviteQueryItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InviteQueryItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata accessor for Status()
{
  if (!qword_100018460)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100018460);
    }
  }
}

unint64_t sub_100006C30()
{
  result = qword_100018480;
  if (!qword_100018480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018480);
  }

  return result;
}

uint64_t sub_100006C84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Status();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006D00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = sub_1000066E8(&qword_100018498, &qword_100010138);
  __chkstk_darwin(v3 - 8);
  v5 = &v60 - v4;
  v6 = sub_1000066E8(&qword_1000184A0, &qword_100010140);
  __chkstk_darwin(v6);
  v8 = &v60 - v7;
  v60 = sub_1000066E8(&qword_1000184A8, &qword_100010148);
  __chkstk_darwin(v60);
  v10 = &v60 - v9;
  v61 = sub_1000066E8(&qword_1000184B0, &qword_100010150);
  __chkstk_darwin(v61);
  v12 = &v60 - v11;
  v62 = sub_1000066E8(&qword_1000184B8, &qword_100010158);
  __chkstk_darwin(v62);
  v14 = &v60 - v13;
  *v5 = sub_10000F250();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v15 = sub_1000066E8(&qword_1000184C0, &qword_100010160);
  sub_100007204(v2, &v5[*(v15 + 44)]);
  sub_1000066E8(&qword_1000184C8, &qword_100010168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100010020;
  v17 = sub_10000F2B0();
  *(inited + 32) = v17;
  v18 = sub_10000F2D0();
  *(inited + 33) = v18;
  v19 = sub_10000F2C0();
  sub_10000F2C0();
  if (sub_10000F2C0() != v17)
  {
    v19 = sub_10000F2C0();
  }

  sub_10000F2C0();
  if (sub_10000F2C0() != v18)
  {
    v19 = sub_10000F2C0();
  }

  sub_10000F190();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_10000A4FC(v5, v8, &qword_100018498, &qword_100010138);
  v28 = &v8[*(v6 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_10000F2A0();
  sub_10000F190();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_10000A4FC(v8, v10, &qword_1000184A0, &qword_100010140);
  v38 = &v10[*(v60 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = sub_10000F290();
  sub_10000F190();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_10000A4FC(v10, v12, &qword_1000184A8, &qword_100010148);
  v48 = &v12[*(v61 + 36)];
  *v48 = v39;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  sub_10000F470();
  sub_10000F1D0();
  sub_10000A4FC(v12, v14, &qword_1000184B0, &qword_100010150);
  v49 = &v14[*(v62 + 36)];
  v50 = v69;
  *(v49 + 4) = v68;
  *(v49 + 5) = v50;
  *(v49 + 6) = v70;
  v51 = v65;
  *v49 = v64;
  *(v49 + 1) = v51;
  v52 = v67;
  *(v49 + 2) = v66;
  *(v49 + 3) = v52;
  v53 = [objc_opt_self() systemGray5Color];
  v54 = sub_10000F3C0();
  v55 = sub_10000F280();
  v56 = v14;
  v57 = v63;
  sub_10000A4FC(v56, v63, &qword_1000184B8, &qword_100010158);
  result = sub_1000066E8(&qword_1000184D0, &qword_100010170);
  v59 = v57 + *(result + 36);
  *v59 = v54;
  *(v59 + 8) = v55;
  return result;
}

uint64_t sub_100007204@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1000066E8(&qword_1000184D8, &qword_100010178);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = sub_1000066E8(&qword_1000184E0, &qword_100010180);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  sub_10000A564();
  sub_10000F3B0();
  v26 = sub_10000F250();
  v29 = 0;
  sub_1000075A0(a1, &v39);
  v33 = *&v40[32];
  v34 = *&v40[48];
  v31 = *v40;
  v32 = *&v40[16];
  v30 = v39;
  v35[2] = *&v40[16];
  v35[3] = *&v40[32];
  v36 = *&v40[48];
  v35[0] = v39;
  v35[1] = *v40;
  sub_10000A5B8(&v30, v37, &qword_1000184F0, &qword_100010188);
  sub_10000AE94(v35, &qword_1000184F0, &qword_100010188);
  *(&v28[1] + 7) = v31;
  *(&v28[2] + 7) = v32;
  *(&v28[3] + 7) = v33;
  *(&v28[4] + 7) = v34;
  *(v28 + 7) = v30;
  v15 = v29;
  sub_100007958(v8);
  sub_10000A5B8(v14, v12, &qword_1000184E0, &qword_100010180);
  sub_10000A5B8(v8, v6, &qword_1000184D8, &qword_100010178);
  v16 = v27;
  sub_10000A5B8(v12, v27, &qword_1000184E0, &qword_100010180);
  v17 = sub_1000066E8(&qword_1000184F8, &qword_100010190);
  v18 = (v16 + *(v17 + 48));
  v19 = v26;
  v37[0] = v26;
  v37[1] = 0;
  LOBYTE(v38[0]) = v15;
  *(v38 + 1) = v28[0];
  *(&v38[1] + 1) = v28[1];
  *(&v38[2] + 1) = v28[2];
  *(&v38[3] + 10) = *(&v28[3] + 9);
  *(&v38[3] + 1) = v28[3];
  v20 = v38[0];
  *v18 = v26;
  v18[1] = v20;
  v21 = v38[1];
  v22 = v38[2];
  v23 = v38[3];
  *(v18 + 74) = *(&v38[3] + 10);
  v18[3] = v22;
  v18[4] = v23;
  v18[2] = v21;
  sub_10000A5B8(v6, v16 + *(v17 + 64), &qword_1000184D8, &qword_100010178);
  sub_10000A5B8(v37, &v39, &qword_100018500, &qword_100010198);
  sub_10000AE94(v8, &qword_1000184D8, &qword_100010178);
  sub_10000AE94(v14, &qword_1000184E0, &qword_100010180);
  sub_10000AE94(v6, &qword_1000184D8, &qword_100010178);
  v39 = v19;
  v40[0] = v15;
  *&v40[17] = v28[1];
  *&v40[33] = v28[2];
  *&v40[49] = v28[3];
  *&v40[58] = *(&v28[3] + 9);
  *&v40[1] = v28[0];
  sub_10000AE94(&v39, &qword_100018500, &qword_100010198);
  return sub_10000AE94(v12, &qword_1000184E0, &qword_100010180);
}

uint64_t sub_1000075A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000F300();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v50 = a1[3];
  v51 = v8;
  v61 = v6;
  v62 = v7;
  v49 = sub_10000AE20();

  v9 = sub_10000F360();
  v11 = v10;
  v13 = v12;
  sub_10000F2E0();
  v14 = sub_10000F350();
  v16 = v15;
  v18 = v17;

  sub_10000AE74(v9, v11, v13 & 1);

  sub_10000F2F0();
  v19 = sub_10000F330();
  v21 = v20;
  LOBYTE(v9) = v22;
  sub_10000AE74(v14, v16, v18 & 1);

  sub_10000F3F0();
  v23 = sub_10000F340();
  v53 = v24;
  v54 = v23;
  v52 = v25;
  v55 = v26;

  sub_10000AE74(v19, v21, v9 & 1);

  v61 = v51;
  v62 = v50;

  v27 = sub_10000F360();
  v29 = v28;
  LOBYTE(v11) = v30;
  sub_10000F3F0();
  v31 = sub_10000F340();
  v33 = v32;
  LOBYTE(v19) = v34;

  sub_10000AE74(v27, v29, v11 & 1);

  sub_10000F320();
  v36 = v56;
  v35 = v57;
  v37 = v58;
  (*(v57 + 104))(v56, enum case for Font.Leading.tight(_:), v58);
  sub_10000F310();

  (*(v35 + 8))(v36, v37);
  v38 = sub_10000F350();
  v40 = v39;
  LOBYTE(v36) = v41;
  v43 = v42;

  sub_10000AE74(v31, v33, v19 & 1);

  v44 = v52 & 1;
  LOBYTE(v61) = v52 & 1;
  v60 = v52 & 1;
  v59 = v36 & 1;
  v46 = v53;
  v45 = v54;
  *a2 = v54;
  *(a2 + 8) = v46;
  *(a2 + 16) = v44;
  *(a2 + 24) = v55;
  *(a2 + 32) = v38;
  *(a2 + 40) = v40;
  *(a2 + 48) = v36 & 1;
  *(a2 + 56) = v43;
  *(a2 + 64) = 256;
  v47 = v45;
  sub_10000AE84(v45, v46, v44);

  sub_10000AE84(v38, v40, v36 & 1);

  sub_10000AE74(v38, v40, v36 & 1);

  sub_10000AE74(v47, v46, v61);
}

uint64_t sub_100007958@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_1000066E8(&qword_100018508, &qword_1000101A0);
  __chkstk_darwin(v3);
  v23 = v22 - v4;
  v5 = sub_1000066E8(&qword_100018510, &qword_1000101A8);
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  v8 = sub_1000066E8(&qword_100018518, &qword_1000101B0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  v11 = sub_1000066E8(&qword_100018520, &qword_1000101B8);
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  v14 = sub_1000066E8(&qword_100018528, &qword_1000101C0);
  __chkstk_darwin(v14);
  v16 = v22 - v15;
  if (*(v2 + 192))
  {
    *v16 = sub_10000F250();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v17 = sub_1000066E8(&qword_100018530, &qword_1000101C8);
    sub_100008EC0(v2, sub_10000A804, &v16[*(v17 + 44)]);
    v23 = v5;
    sub_10000A5B8(v16, v10, &qword_100018528, &qword_1000101C0);
    swift_storeEnumTagMultiPayload();
    sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0, &protocol conformance descriptor for VStack<A>);
    sub_10000A720();
    sub_10000F270();
    sub_10000A5B8(v13, v7, &qword_100018520, &qword_1000101B8);
    swift_storeEnumTagMultiPayload();
    sub_10000A620();
    sub_10000F270();
    sub_10000AE94(v13, &qword_100018520, &qword_1000101B8);
    v18 = v16;
  }

  else
  {
    v22[1] = v11;
    if (*(v2 + 193))
    {
      v19 = v23;
      sub_100007E70();
      sub_10000A5B8(v19, v10, &qword_100018508, &qword_1000101A0);
      swift_storeEnumTagMultiPayload();
      sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0, &protocol conformance descriptor for VStack<A>);
      sub_10000A720();
      sub_10000F270();
      sub_10000A5B8(v13, v7, &qword_100018520, &qword_1000101B8);
      swift_storeEnumTagMultiPayload();
      sub_10000A620();
      sub_10000F270();
      sub_10000AE94(v13, &qword_100018520, &qword_1000101B8);
      return sub_10000AE94(v19, &qword_100018508, &qword_1000101A0);
    }

    *v16 = sub_10000F250();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v21 = sub_1000066E8(&qword_100018530, &qword_1000101C8);
    sub_1000094C8(&v16[*(v21 + 44)]);
    sub_10000A5B8(v16, v7, &qword_100018528, &qword_1000101C0);
    swift_storeEnumTagMultiPayload();
    sub_10000A620();
    sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0, &protocol conformance descriptor for VStack<A>);
    sub_10000F270();
    v18 = v16;
  }

  return sub_10000AE94(v18, &qword_100018528, &qword_1000101C0);
}

uint64_t sub_100007E70()
{
  v1 = sub_1000066E8(&qword_100018528, &qword_1000101C0);
  __chkstk_darwin(v1);
  v3 = &v13 - v2;
  v4 = sub_1000066E8(&qword_100018588, &qword_1000101F8);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = sub_1000066E8(&qword_100018558, &qword_1000101D0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  if (*(v0 + 120) == 1)
  {
    *v9 = sub_10000F210();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v10 = sub_1000066E8(&qword_100018590, &qword_100010200);
    sub_1000084E0(v0, &v9[*(v10 + 44)]);
    sub_10000A5B8(v9, v6, &qword_100018558, &qword_1000101D0);
    swift_storeEnumTagMultiPayload();
    sub_10000BAA0(&qword_100018550, &qword_100018558, &qword_1000101D0, &protocol conformance descriptor for HStack<A>);
    sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0, &protocol conformance descriptor for VStack<A>);
    sub_10000F270();
    return sub_10000AE94(v9, &qword_100018558, &qword_1000101D0);
  }

  else
  {
    *v3 = sub_10000F250();
    *(v3 + 1) = 0;
    v3[16] = 1;
    v12 = sub_1000066E8(&qword_100018530, &qword_1000101C8);
    sub_100008EC0(v0, sub_10000B4C0, &v3[*(v12 + 44)]);
    sub_10000A5B8(v3, v6, &qword_100018528, &qword_1000101C0);
    swift_storeEnumTagMultiPayload();
    sub_10000BAA0(&qword_100018550, &qword_100018558, &qword_1000101D0, &protocol conformance descriptor for HStack<A>);
    sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0, &protocol conformance descriptor for VStack<A>);
    sub_10000F270();
    return sub_10000AE94(v3, &qword_100018528, &qword_1000101C0);
  }
}

uint64_t sub_1000081B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = sub_10000F200();
  sub_100008360(a1, &v24);
  v19 = v25;
  v20 = v24;
  v18 = v26;
  v21 = v28;
  v22 = v27;
  v30 = 0;
  v29 = v26;
  v24 = sub_10000AC2C(a1[15], a1[18], a1[19]);
  v25 = v4;
  sub_10000AE20();
  v5 = sub_10000F360();
  v7 = v6;
  v9 = v8;
  sub_10000F320();
  v10 = sub_10000F350();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_10000AE74(v5, v7, v9 & 1);

  LOBYTE(v24) = v18;
  *a2 = v23;
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = v20;
  *(a2 + 32) = v19;
  *(a2 + 40) = v18;
  *(a2 + 48) = v22;
  *(a2 + 56) = v21;
  *(a2 + 64) = v10;
  *(a2 + 72) = v12;
  *(a2 + 80) = v14 & 1;
  *(a2 + 88) = v16;
  sub_10000AE84(v20, v19, v18);

  sub_10000AE84(v10, v12, v14 & 1);

  sub_10000AE74(v10, v12, v14 & 1);

  sub_10000AE74(v20, v19, v24);
}

uint64_t sub_100008360@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[15];
  sub_10000A994(v3, a1[18], a1[19]);
  sub_10000AE20();
  v4 = sub_10000F360();
  v6 = v5;
  v8 = v7;
  sub_10000F320();
  v9 = sub_10000F350();
  v11 = v10;
  v17 = v12;
  v14 = v13;

  sub_10000AE74(v4, v6, v8 & 1);

  v15 = sub_10000F400();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  sub_10000AE84(v9, v11, v17 & 1);

  sub_10000AE74(v9, v11, v17 & 1);
}

uint64_t sub_1000084E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v72 = a2;
  v67 = sub_10000F240();
  v75 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000066E8(&qword_100018598, &qword_100010208);
  __chkstk_darwin(v74);
  v5 = v58 - v4;
  v6 = sub_1000066E8(&qword_1000185A0, &qword_100010210);
  v71 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v70 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v69 = v58 - v10;
  v11 = __chkstk_darwin(v9);
  v68 = v58 - v12;
  __chkstk_darwin(v11);
  v73 = v58 - v13;
  v14 = swift_allocObject();
  v15 = *(a1 + 176);
  *(v14 + 176) = *(a1 + 160);
  *(v14 + 192) = v15;
  *(v14 + 208) = *(a1 + 192);
  v16 = *(a1 + 112);
  *(v14 + 112) = *(a1 + 96);
  *(v14 + 128) = v16;
  v17 = *(a1 + 144);
  *(v14 + 144) = *(a1 + 128);
  *(v14 + 160) = v17;
  v18 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v18;
  v19 = *(a1 + 80);
  *(v14 + 80) = *(a1 + 64);
  *(v14 + 96) = v19;
  v20 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v20;
  v77 = a1;
  sub_10000AF28(a1, v78);
  sub_10000F440();
  v66 = sub_1000066E8(&qword_1000185A8, &qword_100010218);
  v21 = &v5[*(v66 + 36)];
  v65 = sub_10000F1C0();
  v22 = *(v65 + 20);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v62 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = sub_10000F220();
  v25 = *(v24 - 8);
  v61 = *(v25 + 104);
  v63 = v25 + 104;
  v61(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #10.0 }

  v60 = _Q0;
  *v21 = _Q0;
  v59 = sub_1000066E8(&qword_1000185B0, &qword_100010220);
  *&v21[*(v59 + 36)] = 256;
  v31 = sub_10000F3E0();
  KeyPath = swift_getKeyPath();
  v33 = &v5[*(v74 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = v64;
  sub_10000F230();
  v58[2] = sub_10000AFB8();
  v58[1] = sub_10000B154();
  v35 = v67;
  sub_10000F390();
  v36 = *(v75 + 8);
  v75 += 8;
  v58[0] = v36;
  v36(v34, v35);
  sub_10000AE94(v5, &qword_100018598, &qword_100010208);
  v37 = swift_allocObject();
  v38 = *(a1 + 176);
  *(v37 + 176) = *(a1 + 160);
  *(v37 + 192) = v38;
  *(v37 + 208) = *(a1 + 192);
  v39 = *(a1 + 112);
  *(v37 + 112) = *(a1 + 96);
  *(v37 + 128) = v39;
  v40 = *(a1 + 144);
  *(v37 + 144) = *(a1 + 128);
  *(v37 + 160) = v40;
  v41 = *(a1 + 48);
  *(v37 + 48) = *(a1 + 32);
  *(v37 + 64) = v41;
  v42 = *(a1 + 80);
  *(v37 + 80) = *(a1 + 64);
  *(v37 + 96) = v42;
  v43 = *(a1 + 16);
  *(v37 + 16) = *a1;
  *(v37 + 32) = v43;
  v76 = a1;
  sub_10000AF28(a1, v78);
  sub_10000F440();
  v44 = &v5[*(v66 + 36)];
  v61(&v44[*(v65 + 20)], v62, v24);
  *v44 = v60;
  *&v44[*(v59 + 36)] = 256;
  v45 = sub_10000F3D0();
  v46 = swift_getKeyPath();
  v47 = &v5[*(v74 + 36)];
  *v47 = v46;
  v47[1] = v45;
  sub_10000F230();
  v48 = v68;
  sub_10000F390();
  (v58[0])(v34, v35);
  sub_10000AE94(v5, &qword_100018598, &qword_100010208);
  v49 = v71;
  v50 = *(v71 + 16);
  v51 = v69;
  v52 = v73;
  v50(v69, v73, v6);
  v53 = v70;
  v50(v70, v48, v6);
  v54 = v72;
  v50(v72, v51, v6);
  v55 = sub_1000066E8(&qword_1000185F8, &qword_100010268);
  v50(&v54[*(v55 + 48)], v53, v6);
  v56 = *(v49 + 8);
  v56(v48, v6);
  v56(v52, v6);
  v56(v53, v6);
  return (v56)(v51, v6);
}

uint64_t sub_100008B50(char a1)
{
  v2 = v1;
  v4 = sub_1000066E8(&qword_100018600, &qword_100010270);
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-v5 - 8];
  v7 = sub_10000F180();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000F160();
  v11 = sub_10000F170();
  v12 = sub_10000F5E0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "handleInvite : %{BOOL}d", v13, 8u);
  }

  (*(v8 + 8))(v10, v7);
  v14 = sub_10000F580();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_10000F560();
  sub_10000AF28(v2, v25);
  v15 = sub_10000F550();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  v17 = *(v2 + 176);
  *(v16 + 192) = *(v2 + 160);
  *(v16 + 208) = v17;
  *(v16 + 224) = *(v2 + 192);
  v18 = *(v2 + 112);
  *(v16 + 128) = *(v2 + 96);
  *(v16 + 144) = v18;
  v19 = *(v2 + 144);
  *(v16 + 160) = *(v2 + 128);
  *(v16 + 176) = v19;
  v20 = *(v2 + 48);
  *(v16 + 64) = *(v2 + 32);
  *(v16 + 80) = v20;
  v21 = *(v2 + 80);
  *(v16 + 96) = *(v2 + 64);
  *(v16 + 112) = v21;
  v22 = *(v2 + 16);
  *(v16 + 32) = *v2;
  *(v16 + 48) = v22;
  *(v16 + 226) = a1 & 1;
  sub_10000BB9C(0, 0, v6, &unk_100010280, v16);
}

uint64_t sub_100008DE8@<X0>(uint64_t a2@<X8>)
{
  sub_10000AE20();

  result = sub_10000F360();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100008E54@<X0>(uint64_t a2@<X8>)
{
  sub_10000AE20();

  result = sub_10000F360();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100008EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v31 = a2;
  v33 = a3;
  v32 = sub_1000066E8(&qword_100018560, &qword_1000101D8);
  v29 = *(v32 - 8);
  v4 = v29;
  v5 = __chkstk_darwin(v32);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = sub_10000F460();
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  sub_10000F450();
  v34 = a1;
  sub_1000066E8(&qword_100018568, &qword_1000101E0);
  sub_10000BAA0(&qword_100018570, &qword_100018568, &qword_1000101E0, &protocol conformance descriptor for TupleView<A>);
  v28 = v9;
  sub_10000F1A0();
  v17 = *(v11 + 16);
  v17(v14, v16, v10);
  v18 = *(v4 + 16);
  v19 = v7;
  v20 = v9;
  v21 = v32;
  v18(v7, v20, v32);
  v22 = v33;
  v17(v33, v14, v10);
  v23 = sub_1000066E8(&qword_100018578, &unk_1000101E8);
  v18(&v22[*(v23 + 48)], v19, v21);
  v24 = *(v29 + 8);
  v25 = v21;
  v24(v28, v21);
  v26 = *(v30 + 8);
  v26(v16, v10);
  v24(v19, v25);
  return (v26)(v14, v10);
}

uint64_t sub_1000091C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = sub_10000F200();
  sub_10000936C(a1, &v23);
  v18 = v24;
  v19 = v23;
  v4 = v25;
  v20 = v27;
  v21 = v26;
  v29 = 0;
  v28 = v25;
  v23 = sub_10000B63C(*(a1 + 120));
  v24 = v5;
  sub_10000AE20();
  v6 = sub_10000F360();
  v8 = v7;
  v10 = v9;
  sub_10000F320();
  v11 = sub_10000F350();
  v13 = v12;
  LOBYTE(a1) = v14;
  v17 = v15;

  sub_10000AE74(v6, v8, v10 & 1);

  LOBYTE(v23) = v4;
  *a2 = v22;
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = v19;
  *(a2 + 32) = v18;
  *(a2 + 40) = v4;
  *(a2 + 48) = v21;
  *(a2 + 56) = v20;
  *(a2 + 64) = v11;
  *(a2 + 72) = v13;
  *(a2 + 80) = a1 & 1;
  *(a2 + 88) = v17;
  sub_10000AE84(v19, v18, v4);

  sub_10000AE84(v11, v13, a1 & 1);

  sub_10000AE74(v11, v13, a1 & 1);

  sub_10000AE74(v19, v18, v23);
}

uint64_t sub_10000936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 120);
  sub_10000B4C8(v3);
  sub_10000AE20();
  v4 = sub_10000F360();
  v6 = v5;
  v8 = v7;
  sub_10000F320();
  v9 = sub_10000F350();
  v11 = v10;
  v17 = v12;
  v14 = v13;

  sub_10000AE74(v4, v6, v8 & 1);

  v15 = sub_10000F400();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  sub_10000AE84(v9, v11, v17 & 1);

  sub_10000AE74(v9, v11, v17 & 1);
}

uint64_t sub_1000094C8@<X0>(char *a1@<X8>)
{
  v30 = a1;
  v29 = sub_1000066E8(&qword_100018560, &qword_1000101D8);
  v27 = *(v29 - 8);
  v1 = v27;
  v2 = __chkstk_darwin(v29);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v25 - v5;
  v7 = sub_10000F460();
  v28 = *(v7 - 8);
  v8 = v28;
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  sub_10000F450();
  sub_1000066E8(&qword_100018568, &qword_1000101E0);
  sub_10000BAA0(&qword_100018570, &qword_100018568, &qword_1000101E0, &protocol conformance descriptor for TupleView<A>);
  v26 = v6;
  sub_10000F1A0();
  v14 = *(v8 + 16);
  v14(v11, v13, v7);
  v15 = *(v1 + 16);
  v16 = v4;
  v17 = v6;
  v18 = v29;
  v15(v4, v17, v29);
  v19 = v30;
  v14(v30, v11, v7);
  v20 = sub_1000066E8(&qword_100018578, &unk_1000101E8);
  v15(&v19[*(v20 + 48)], v16, v18);
  v21 = *(v27 + 8);
  v22 = v18;
  v21(v26, v18);
  v23 = *(v28 + 8);
  v23(v13, v7);
  v21(v16, v22);
  return (v23)(v11, v7);
}

uint64_t sub_1000097CC@<X0>(uint64_t a1@<X8>)
{
  v27 = sub_10000F200();
  sub_100009A00(&v28);
  v23 = v29;
  v24 = v28;
  HIDWORD(v21._object) = v30;
  v25 = v32;
  v26 = v31;
  v34 = 0;
  v33 = v30;
  type metadata accessor for MessagesViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v21._countAndFlagsBits = 0x8000000100010710;
  v36.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v36.value._object = 0xEB00000000656C62;
  v35._countAndFlagsBits = 0xD000000000000017;
  v35._object = 0x8000000100010710;
  v4.super.isa = v3;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v5 = sub_10000F0E0(v35, v36, v4, v37, 0xD000000000000017, v21);
  v7 = v6;

  v28 = v5;
  v29 = v7;
  sub_10000AE20();
  v8 = sub_10000F360();
  v10 = v9;
  v12 = v11;
  sub_10000F320();
  v13 = sub_10000F350();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_10000AE74(v8, v10, v12 & 1);

  LOBYTE(v28) = v22;
  *a1 = v27;
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = v24;
  *(a1 + 32) = v23;
  *(a1 + 40) = v22;
  *(a1 + 48) = v26;
  *(a1 + 56) = v25;
  *(a1 + 64) = v13;
  *(a1 + 72) = v15;
  *(a1 + 80) = v17 & 1;
  *(a1 + 88) = v19;
  sub_10000AE84(v24, v23, v22);

  sub_10000AE84(v13, v15, v17 & 1);

  sub_10000AE74(v13, v15, v17 & 1);

  sub_10000AE74(v24, v23, v28);
}

uint64_t sub_100009A00@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19._countAndFlagsBits = 0x8000000100010730;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v20._countAndFlagsBits = 0xD000000000000014;
  v20._object = 0x8000000100010730;
  v4.super.isa = v3;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_10000F0E0(v20, v21, v4, v22, 0xD000000000000014, v19);

  sub_10000AE20();
  v5 = sub_10000F360();
  v7 = v6;
  v9 = v8;
  sub_10000F320();
  v10 = sub_10000F350();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_10000AE74(v5, v7, v9 & 1);

  v17 = sub_10000F400();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  sub_10000AE84(v10, v12, v14 & 1);

  sub_10000AE74(v10, v12, v14 & 1);
}

uint64_t sub_100009BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 288) = a5;
  *(v5 + 176) = a4;
  v6 = sub_10000F180();
  *(v5 + 184) = v6;
  *(v5 + 192) = *(v6 - 8);
  *(v5 + 200) = swift_task_alloc();
  sub_1000066E8(&qword_100018418, &qword_10000FDA8);
  *(v5 + 208) = swift_task_alloc();
  v7 = sub_10000F150();
  *(v5 + 216) = v7;
  *(v5 + 224) = *(v7 - 8);
  *(v5 + 232) = swift_task_alloc();
  sub_10000F560();
  *(v5 + 240) = sub_10000F550();
  v9 = sub_10000F540();
  *(v5 + 248) = v9;
  *(v5 + 256) = v8;

  return _swift_task_switch(sub_100009D44, v9, v8);
}

uint64_t sub_100009D44()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  sub_10000F110();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 208);

    sub_10000AE94(v4, &qword_100018418, &qword_10000FDA8);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 288);
    (*(*(v0 + 224) + 32))(*(v0 + 232), *(v0 + 208), *(v0 + 216));
    v8 = objc_allocWithZone(AACustodianInvitationResponseContext);
    isa = sub_10000F130().super.isa;
    v10 = [v8 initWithCustodianID:isa didAccept:v7];
    *(v0 + 264) = v10;

    v11 = [objc_allocWithZone(AACustodianController) init];
    *(v0 + 272) = v11;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100009F8C;
    v12 = swift_continuation_init();
    *(v0 + 136) = sub_1000066E8(&qword_100018608, &unk_100010290);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000A3C8;
    *(v0 + 104) = &unk_100014E60;
    *(v0 + 112) = v12;
    [v11 respondToCustodianRequestWithResponse:v10 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100009F8C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 256);
  v4 = *(v1 + 248);
  if (v2)
  {
    v5 = sub_10000A170;
  }

  else
  {
    v5 = sub_10000A0BC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000A0BC()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[28];

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10000A170()
{
  v25 = v0;
  v1 = *(v0 + 272);

  swift_willThrow();

  sub_10000F160();
  swift_errorRetain();
  v2 = sub_10000F170();
  v3 = sub_10000F5E0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 224);
    v22 = *(v0 + 216);
    v23 = *(v0 + 232);
    v5 = *(v0 + 192);
    v21 = *(v0 + 200);
    v19 = *(v0 + 264);
    v20 = *(v0 + 184);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_10000F710();
    v10 = sub_100002318(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "respondToCustodianRequest : %s", v6, 0xCu);
    sub_100006860(v7);

    (*(v5 + 8))(v21, v20);
    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v13 = *(v0 + 216);
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 184);

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10000A3C8(uint64_t a1, void *a2)
{
  v3 = sub_100006940((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000066E8(&qword_100018458, &qword_10000FDD8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10000A4FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000066E8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000A564()
{
  result = qword_1000184E8;
  if (!qword_1000184E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184E8);
  }

  return result;
}

uint64_t sub_10000A5B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000066E8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000A620()
{
  result = qword_100018538;
  if (!qword_100018538)
  {
    sub_10000A6D8(&qword_100018520, &qword_1000101B8);
    sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0, &protocol conformance descriptor for VStack<A>);
    sub_10000A720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018538);
  }

  return result;
}

uint64_t sub_10000A6D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000A720()
{
  result = qword_100018548;
  if (!qword_100018548)
  {
    sub_10000A6D8(&qword_100018508, &qword_1000101A0);
    sub_10000BAA0(&qword_100018550, &qword_100018558, &qword_1000101D0, &protocol conformance descriptor for HStack<A>);
    sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018548);
  }

  return result;
}

double sub_10000A80C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10000F410();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F430();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = sub_10000F420();

  (*(v3 + 8))(v5, v2);
  sub_10000F480();
  sub_10000F1B0();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  result = *&v16;
  *(a1 + 40) = v16;
  return result;
}

uint64_t sub_10000A994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 4)
  {
    type metadata accessor for MessagesViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v19._countAndFlagsBits = 0x80000001000105F0;
    v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v21.value._object = 0xEB00000000656C62;
    v20._countAndFlagsBits = 0xD000000000000017;
    v20._object = 0x80000001000105F0;
    v16.super.isa = v15;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_10000F0E0(v20, v21, v16, v22, 0xD000000000000017, v19);

    sub_1000066E8(&qword_100018430, &qword_10000FDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10000FCA0;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_1000068E8();
    *(v17 + 32) = a2;
    *(v17 + 40) = a3;

    v11 = sub_10000F4E0();
  }

  else
  {
    if (a1 == 2)
    {
      type metadata accessor for MessagesViewController(0);
      v10 = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass:v10];
      v19._countAndFlagsBits = 0x8000000100010610;
      v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v5.value._object = 0xEB00000000656C62;
      v6._countAndFlagsBits = 0xD000000000000017;
      v6._object = 0x8000000100010610;
      v7.super.isa = v4;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      v9 = 0xD000000000000017;
    }

    else
    {
      if (a1 != 1)
      {
        return 0;
      }

      type metadata accessor for MessagesViewController(0);
      v3 = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass:v3];
      v6._countAndFlagsBits = 0xD000000000000013;
      v19._countAndFlagsBits = 0x8000000100010630;
      v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v5.value._object = 0xEB00000000656C62;
      v6._object = 0x8000000100010630;
      v7.super.isa = v4;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      v9 = 0xD000000000000013;
    }

    v11 = sub_10000F0E0(v6, v5, v7, v8, v9, v19);
  }

  return v11;
}

uint64_t sub_10000AC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 4)
  {
    type metadata accessor for MessagesViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v16._countAndFlagsBits = 0x8000000100010540;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    v9._object = 0x8000000100010540;
    v10.super.isa = v6;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v8 = 0xD00000000000001FLL;
  }

  else
  {
    if (a1 != 2)
    {
      return 0;
    }

    type metadata accessor for MessagesViewController(0);
    v5 = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass:v5];
    v16._countAndFlagsBits = 0x8000000100010560;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v9._countAndFlagsBits = 0xD000000000000020;
    v8 = 0xD000000000000020;
    v9._object = 0x8000000100010560;
    v10.super.isa = v6;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
  }

  sub_10000F0E0(v9, v7, v10, v11, v8, v16);

  sub_1000066E8(&qword_100018430, &qword_10000FDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10000FCA0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_1000068E8();
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;

  v14 = sub_10000F4E0();

  return v14;
}

unint64_t sub_10000AE20()
{
  result = qword_100018580;
  if (!qword_100018580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018580);
  }

  return result;
}

uint64_t sub_10000AE74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000AE84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000AE94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000066E8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000AF60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000F1E0();
  *a1 = result;
  return result;
}

unint64_t sub_10000AFB8()
{
  result = qword_1000185B8;
  if (!qword_1000185B8)
  {
    sub_10000A6D8(&qword_100018598, &qword_100010208);
    sub_10000B070();
    sub_10000BAA0(&qword_1000185E0, &qword_1000185E8, &qword_100010260, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000185B8);
  }

  return result;
}

unint64_t sub_10000B070()
{
  result = qword_1000185C0;
  if (!qword_1000185C0)
  {
    sub_10000A6D8(&qword_1000185A8, &qword_100010218);
    sub_10000BAA0(&qword_1000185C8, &qword_1000185D0, &qword_100010258, &protocol conformance descriptor for Button<A>);
    sub_10000BAA0(&qword_1000185D8, &qword_1000185B0, &qword_100010220, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000185C0);
  }

  return result;
}

unint64_t sub_10000B154()
{
  result = qword_1000185F0;
  if (!qword_1000185F0)
  {
    sub_10000F240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000185F0);
  }

  return result;
}

uint64_t sub_10000B1AC()
{

  return _swift_deallocObject(v0, 210, 7);
}

uint64_t sub_10000B264()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 227, 7);
}

uint64_t sub_10000B2F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 226);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B3B4;

  return sub_100009BB8(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_10000B3B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000B4C8(uint64_t a1)
{
  if (a1 == 4)
  {
    type metadata accessor for MessagesViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v11._countAndFlagsBits = 0x80000001000106D0;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v5._countAndFlagsBits = 0xD000000000000018;
    v5._object = 0x80000001000106D0;
    v6.super.isa = v2;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v4 = 0xD000000000000018;
  }

  else
  {
    if (a1 != 2)
    {
      return 0;
    }

    type metadata accessor for MessagesViewController(0);
    v1 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass:v1];
    v11._countAndFlagsBits = 0x80000001000106F0;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v5._countAndFlagsBits = 0xD000000000000019;
    v4 = 0xD000000000000019;
    v5._object = 0x80000001000106F0;
    v6.super.isa = v2;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
  }

  v9 = sub_10000F0E0(v5, v3, v6, v7, v4, v11);

  return v9;
}

uint64_t sub_10000B63C(uint64_t a1)
{
  if (a1 == 4)
  {
    type metadata accessor for MessagesViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v11._countAndFlagsBits = 0x8000000100010670;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v5._countAndFlagsBits = 0xD000000000000021;
    v5._object = 0x8000000100010670;
    v6.super.isa = v2;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v4 = 0xD000000000000021;
  }

  else
  {
    if (a1 != 2)
    {
      return 0;
    }

    type metadata accessor for MessagesViewController(0);
    v1 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass:v1];
    v11._countAndFlagsBits = 0x80000001000106A0;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v5._countAndFlagsBits = 0xD000000000000022;
    v4 = 0xD000000000000022;
    v5._object = 0x80000001000106A0;
    v6.super.isa = v2;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
  }

  v9 = sub_10000F0E0(v5, v3, v6, v7, v4, v11);

  return v9;
}

unint64_t sub_10000B7C4()
{
  result = qword_100018610;
  if (!qword_100018610)
  {
    sub_10000A6D8(&qword_1000184D0, &qword_100010170);
    sub_10000B87C();
    sub_10000BAA0(&qword_100018640, &qword_100018648, &qword_1000102B8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018610);
  }

  return result;
}

unint64_t sub_10000B87C()
{
  result = qword_100018618;
  if (!qword_100018618)
  {
    sub_10000A6D8(&qword_1000184B8, &qword_100010158);
    sub_10000B934(&qword_100018620, &qword_1000184B0, &qword_100010150, sub_10000B9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018618);
  }

  return result;
}

uint64_t sub_10000B934(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000A6D8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000B9E8()
{
  result = qword_100018630;
  if (!qword_100018630)
  {
    sub_10000A6D8(&qword_1000184A0, &qword_100010140);
    sub_10000BAA0(&qword_100018638, &qword_100018498, &qword_100010138, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018630);
  }

  return result;
}

uint64_t sub_10000BAA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000A6D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000BB08()
{
  result = qword_100018650;
  if (!qword_100018650)
  {
    sub_10000A6D8(&qword_100018658, &unk_100010310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018650);
  }

  return result;
}

uint64_t sub_10000BB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000066E8(&qword_100018600, &qword_100010270);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000A5B8(a3, v25 - v10, &qword_100018600, &qword_100010270);
  v12 = sub_10000F580();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000AE94(v11, &qword_100018600, &qword_100010270);
  }

  else
  {
    sub_10000F570();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10000F540();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10000F4F0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000AE94(a3, &qword_100018600, &qword_100010270);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000AE94(a3, &qword_100018600, &qword_100010270);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_10000BEAC(char a1)
{
  v2 = v1;
  v4 = sub_10000F180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessagesViewController(0);
  v13.receiver = v2;
  v13.super_class = v8;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1);
  sub_10000F160();
  v9 = sub_10000F170();
  v10 = sub_10000F5F0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Register for LegacyContactMessageExtention update notification", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v12 = [objc_opt_self() defaultCenter];
  [v12 addObserver:v2 selector:"handleLegacyContactDidUpdate" name:AAInheritanceContactChangedNotification object:0];
}

void sub_10000C0B8(char a1)
{
  v2 = v1;
  v4 = sub_10000F180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessagesViewController(0);
  v13.receiver = v2;
  v13.super_class = v8;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1);
  sub_10000F160();
  v9 = sub_10000F170();
  v10 = sub_10000F5F0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unregister for LegacyContactMessageExtention update notification", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v12 = [objc_opt_self() defaultCenter];
  [v12 removeObserver:v2 name:AAInheritanceContactChangedNotification object:0];
}

id sub_10000C2BC(void *a1)
{
  v111 = a1;
  v1 = sub_1000066E8(&qword_100018600, &qword_100010270);
  __chkstk_darwin(v1 - 8);
  v100 = &v96 - v2;
  v3 = sub_1000066E8(&qword_1000186C8, &qword_1000103D0);
  v4 = __chkstk_darwin(v3 - 8);
  v98 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v102 = &v96 - v6;
  v103 = sub_10000F0D0();
  v7 = *(v103 - 8);
  __chkstk_darwin(v103);
  v99 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000066E8(&qword_100018700, &qword_1000103F0);
  v10 = __chkstk_darwin(v9 - 8);
  v107 = (&v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v110 = (&v96 - v12);
  v13 = sub_10000F100();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v108 = &v96 - v19;
  __chkstk_darwin(v18);
  v21 = &v96 - v20;
  v22 = sub_10000F180();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v105 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v101 = &v96 - v27;
  v28 = __chkstk_darwin(v26);
  v109 = &v96 - v29;
  __chkstk_darwin(v28);
  v31 = &v96 - v30;
  sub_10000F160();
  v32 = sub_10000F170();
  v33 = sub_10000F5F0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v106 = v23;
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "LegacyContactMessageExtention willBecomeActive", v34, 2u);
    v23 = v106;
  }

  v37 = *(v23 + 8);
  v36 = v23 + 8;
  v35 = v37;
  v37(v31, v22);
  v38 = [v111 selectedMessage];
  if (!v38)
  {
    v46 = v110;
    (*(v14 + 56))(v110, 1, 1, v13);
    return sub_10000AE94(v46, &qword_100018700, &qword_1000103F0);
  }

  v97 = v35;
  v39 = v38;
  v40 = [v38 URL];

  if (v40)
  {
    v41 = v107;
    sub_10000F0F0();

    v42 = v41;
    v43 = 0;
    v45 = v108;
    v44 = v109;
  }

  else
  {
    v43 = 1;
    v45 = v108;
    v44 = v109;
    v42 = v107;
  }

  (*(v14 + 56))(v42, v43, 1, v13);
  v47 = v42;
  v46 = v110;
  sub_10000EE14(v47, v110);
  if ((*(v14 + 48))(v46, 1, v13) == 1)
  {
    return sub_10000AE94(v46, &qword_100018700, &qword_1000103F0);
  }

  v108 = v22;
  (*(v14 + 32))(v21, v46, v13);
  sub_10000F160();
  (*(v14 + 16))(v45, v21, v13);
  v49 = sub_10000F170();
  v50 = v45;
  v51 = sub_10000F5F0();
  if (os_log_type_enabled(v49, v51))
  {
    v52 = swift_slowAlloc();
    v106 = v36;
    v53 = v52;
    v96 = v52;
    v107 = swift_slowAlloc();
    v112[0] = v107;
    *v53 = 136315138;
    sub_10000EFF8(&qword_100018708, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v54 = v21;
    v55 = v7;
    v56 = sub_10000F6E0();
    v57 = v14;
    v58 = v13;
    v60 = v59;
    v110 = *(v57 + 8);
    (v110)(v50, v58);
    v61 = v56;
    v7 = v55;
    v21 = v54;
    v62 = sub_100002318(v61, v60, v112);
    v13 = v58;

    v63 = v96;
    *(v96 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v49, v51, "LegacyContactMessageExtention messageURL %s", v63, 0xCu);
    sub_100006860(v107);

    v64 = v109;
  }

  else
  {

    v110 = *(v14 + 8);
    (v110)(v50, v13);
    v64 = v44;
  }

  v65 = v108;
  v66 = v97;
  v97(v64, v108);
  v67 = [v111 selectedMessage];
  if (v67)
  {
    v68 = v67;
    v69 = [v67 URL];
    if (v69)
    {
      v70 = v69;
      sub_10000F0F0();

      v71 = v102;
      sub_10000F0C0();
      v72 = v103;
      if ((*(v7 + 48))(v71, 1, v103) == 1)
      {
        v73 = v17;
        sub_10000AE94(v71, &qword_1000186C8, &qword_1000103D0);
        sub_10000F160();
        v74 = sub_10000F170();
        v75 = sub_10000F5F0();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&_mh_execute_header, v74, v75, "Missing url components for invite message url", v76, 2u);
        }

        v66(v101, v108);
        result = [v104 view];
        if (result)
        {
          v77 = result;
          v78 = [objc_opt_self() blackColor];
          [v77 setBackgroundColor:v78];

          v79 = v110;
          (v110)(v73, v13);
          return (v79)(v21, v13);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v84 = *(v7 + 32);
        v85 = v99;
        v111 = v17;
        v84(v99, v71, v72);
        v86 = v98;
        (*(v7 + 16))(v98, v85, v72);
        (*(v7 + 56))(v86, 0, 1, v72);
        v109 = v21;
        v87 = OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_urlComponents;
        v88 = v104;
        swift_beginAccess();
        sub_10000EE84(v86, v88 + v87);
        swift_endAccess();
        LOBYTE(v86) = [v68 isPending];
        v89 = sub_10000F580();
        v90 = v100;
        (*(*(v89 - 8) + 56))(v100, 1, 1, v89);
        sub_10000F560();
        v91 = v72;
        v92 = v88;
        v93 = sub_10000F550();
        v94 = swift_allocObject();
        *(v94 + 16) = v93;
        *(v94 + 24) = &protocol witness table for MainActor;
        *(v94 + 32) = v92;
        *(v94 + 40) = v86;
        sub_10000BB9C(0, 0, v90, &unk_1000103F8, v94);

        (*(v7 + 8))(v85, v91);
        v95 = v110;
        (v110)(v111, v13);
        return (v95)(v109, v13);
      }

      return result;
    }
  }

  v80 = v105;
  sub_10000F160();
  v81 = sub_10000F170();
  v82 = sub_10000F5F0();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&_mh_execute_header, v81, v82, "Missing invite message url", v83, 2u);
  }

  v66(v80, v65);
  return (v110)(v21, v13);
}

uint64_t sub_10000CEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 210) = a5;
  *(v5 + 1496) = a4;
  v6 = sub_10000F490();
  *(v5 + 1504) = v6;
  *(v5 + 1512) = *(v6 - 8);
  *(v5 + 1520) = swift_task_alloc();
  v7 = sub_10000F4B0();
  *(v5 + 1528) = v7;
  *(v5 + 1536) = *(v7 - 8);
  *(v5 + 1544) = swift_task_alloc();
  v8 = sub_10000F180();
  *(v5 + 1552) = v8;
  *(v5 + 1560) = *(v8 - 8);
  *(v5 + 1568) = swift_task_alloc();
  *(v5 + 1576) = swift_task_alloc();
  sub_1000066E8(&qword_1000186C8, &qword_1000103D0);
  *(v5 + 1584) = swift_task_alloc();
  v9 = sub_10000F0D0();
  *(v5 + 1592) = v9;
  *(v5 + 1600) = *(v9 - 8);
  *(v5 + 1608) = swift_task_alloc();
  sub_10000F560();
  *(v5 + 1616) = sub_10000F550();
  v11 = sub_10000F540();
  *(v5 + 1624) = v11;
  *(v5 + 1632) = v10;

  return _swift_task_switch(sub_10000D140, v11, v10);
}

uint64_t sub_10000D140()
{
  v1 = *(v0 + 1600);
  v2 = *(v0 + 1592);
  v3 = *(v0 + 1584);
  v4 = *(v0 + 1496);
  v5 = OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_urlComponents;
  swift_beginAccess();
  sub_10000A5B8(v4 + v5, v3, &qword_1000186C8, &qword_1000103D0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 1584);

    sub_10000AE94(v6, &qword_1000186C8, &qword_1000103D0);
    sub_10000F160();
    v7 = sub_10000F170();
    v8 = sub_10000F5E0();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 1576);
    v11 = *(v0 + 1560);
    v12 = *(v0 + 1552);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Message bubble missing urlComponents", v13, 2u);
    }

    (*(v11 + 8))(v10, v12);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    (*(*(v0 + 1600) + 32))(*(v0 + 1608), *(v0 + 1584), *(v0 + 1592));
    v16 = swift_task_alloc();
    *(v0 + 1640) = v16;
    *v16 = v0;
    v16[1] = sub_10000D3D4;
    v17 = *(v0 + 1608);
    v18 = *(v0 + 210);

    return sub_1000036B4(v0 + 416, v17, v18);
  }
}

uint64_t sub_10000D3D4()
{
  v1 = *v0;

  v2 = *(v1 + 592);
  *(v1 + 776) = *(v1 + 576);
  *(v1 + 792) = v2;
  *(v1 + 808) = *(v1 + 608);
  v3 = *(v1 + 528);
  *(v1 + 712) = *(v1 + 512);
  *(v1 + 728) = v3;
  v4 = *(v1 + 560);
  *(v1 + 744) = *(v1 + 544);
  *(v1 + 760) = v4;
  v5 = *(v1 + 464);
  *(v1 + 648) = *(v1 + 448);
  *(v1 + 664) = v5;
  v6 = *(v1 + 496);
  *(v1 + 680) = *(v1 + 480);
  *(v1 + 696) = v6;
  v7 = *(v1 + 432);
  *(v1 + 616) = *(v1 + 416);
  *(v1 + 632) = v7;
  v8 = *(v1 + 1632);
  v9 = *(v1 + 1624);

  return _swift_task_switch(sub_10000D534, v9, v8);
}

uint64_t sub_10000D534()
{

  v1 = *(v0 + 576);
  v2 = *(v0 + 592);
  v3 = *(v0 + 544);
  *(v0 + 360) = *(v0 + 560);
  *(v0 + 376) = v1;
  *(v0 + 392) = v2;
  v4 = *(v0 + 512);
  v5 = *(v0 + 528);
  v6 = *(v0 + 480);
  *(v0 + 296) = *(v0 + 496);
  *(v0 + 312) = v4;
  *(v0 + 328) = v5;
  *(v0 + 344) = v3;
  v7 = *(v0 + 416);
  *(v0 + 232) = *(v0 + 432);
  v8 = *(v0 + 464);
  *(v0 + 248) = *(v0 + 448);
  *(v0 + 264) = v8;
  *(v0 + 280) = v6;
  *(v0 + 408) = *(v0 + 608);
  *(v0 + 216) = v7;
  if (sub_10000EC9C(v0 + 216) == 1)
  {
    sub_10000F160();
    v9 = sub_10000F170();
    v10 = sub_10000F5E0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 1608);
    v13 = *(v0 + 1600);
    v14 = *(v0 + 1592);
    v15 = *(v0 + 1568);
    v16 = *(v0 + 1560);
    v17 = *(v0 + 1552);
    if (v11)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Message bubble could not build inviteMessageDetail", v18, 2u);
    }

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  else
  {
    v70 = *(v0 + 1592);
    v71 = *(v0 + 1608);
    v19 = *(v0 + 1544);
    v20 = *(v0 + 1536);
    v68 = *(v0 + 1528);
    v69 = *(v0 + 1600);
    v21 = *(v0 + 1520);
    v22 = *(v0 + 1512);
    v23 = *(v0 + 1504);
    v24 = *(v0 + 1496);
    v25 = *(v0 + 264);
    *(v0 + 48) = *(v0 + 248);
    *(v0 + 64) = v25;
    v26 = *(v0 + 328);
    *(v0 + 112) = *(v0 + 312);
    *(v0 + 128) = v26;
    v27 = *(v0 + 296);
    *(v0 + 80) = *(v0 + 280);
    *(v0 + 96) = v27;
    *(v0 + 208) = *(v0 + 408);
    v28 = *(v0 + 392);
    *(v0 + 176) = *(v0 + 376);
    *(v0 + 192) = v28;
    v29 = *(v0 + 360);
    *(v0 + 144) = *(v0 + 344);
    *(v0 + 160) = v29;
    v30 = *(v0 + 232);
    *(v0 + 16) = *(v0 + 216);
    *(v0 + 32) = v30;
    v31 = &v24[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_inviteMessageDetails];
    *(v0 + 1016) = *&v24[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_inviteMessageDetails];
    v32 = *(v31 + 4);
    v34 = *(v31 + 1);
    v33 = *(v31 + 2);
    *(v0 + 1064) = *(v31 + 3);
    *(v0 + 1080) = v32;
    *(v0 + 1032) = v34;
    *(v0 + 1048) = v33;
    v35 = *(v31 + 8);
    v37 = *(v31 + 5);
    v36 = *(v31 + 6);
    *(v0 + 1128) = *(v31 + 7);
    *(v0 + 1144) = v35;
    *(v0 + 1096) = v37;
    *(v0 + 1112) = v36;
    v39 = *(v31 + 10);
    v38 = *(v31 + 11);
    v40 = *(v31 + 9);
    *(v0 + 1208) = *(v31 + 96);
    *(v0 + 1176) = v39;
    *(v0 + 1192) = v38;
    *(v0 + 1160) = v40;
    *v31 = *(v0 + 416);
    v41 = *(v0 + 432);
    v42 = *(v0 + 448);
    v43 = *(v0 + 480);
    *(v31 + 3) = *(v0 + 464);
    *(v31 + 4) = v43;
    *(v31 + 1) = v41;
    *(v31 + 2) = v42;
    v44 = *(v0 + 496);
    v45 = *(v0 + 512);
    v46 = *(v0 + 544);
    *(v31 + 7) = *(v0 + 528);
    *(v31 + 8) = v46;
    *(v31 + 5) = v44;
    *(v31 + 6) = v45;
    v47 = *(v0 + 560);
    v48 = *(v0 + 576);
    v49 = *(v0 + 592);
    *(v31 + 96) = *(v0 + 608);
    *(v31 + 10) = v48;
    *(v31 + 11) = v49;
    *(v31 + 9) = v47;
    v50 = *(v0 + 792);
    *(v0 + 976) = *(v0 + 776);
    *(v0 + 992) = v50;
    *(v0 + 1008) = *(v0 + 808);
    v51 = *(v0 + 728);
    *(v0 + 912) = *(v0 + 712);
    *(v0 + 928) = v51;
    v52 = *(v0 + 760);
    *(v0 + 944) = *(v0 + 744);
    *(v0 + 960) = v52;
    v53 = *(v0 + 664);
    *(v0 + 848) = *(v0 + 648);
    *(v0 + 864) = v53;
    v54 = *(v0 + 696);
    *(v0 + 880) = *(v0 + 680);
    *(v0 + 896) = v54;
    v55 = *(v0 + 632);
    *(v0 + 816) = *(v0 + 616);
    *(v0 + 832) = v55;
    sub_1000068AC(v0 + 816, v0 + 1216);
    sub_10000AE94(v0 + 1016, &qword_1000186D0, &qword_1000103D8);
    sub_10000ECB4(0, &qword_1000186D8, OS_dispatch_queue_ptr);
    v56 = sub_10000F600();
    v57 = swift_allocObject();
    v58 = *(v0 + 192);
    *(v57 + 176) = *(v0 + 176);
    *(v57 + 192) = v58;
    *(v57 + 208) = *(v0 + 208);
    v59 = *(v0 + 128);
    *(v57 + 112) = *(v0 + 112);
    *(v57 + 128) = v59;
    v60 = *(v0 + 160);
    *(v57 + 144) = *(v0 + 144);
    *(v57 + 160) = v60;
    v61 = *(v0 + 64);
    *(v57 + 48) = *(v0 + 48);
    *(v57 + 64) = v61;
    v62 = *(v0 + 96);
    *(v57 + 80) = *(v0 + 80);
    *(v57 + 96) = v62;
    v63 = *(v0 + 32);
    *(v57 + 16) = *(v0 + 16);
    *(v57 + 32) = v63;
    *(v57 + 216) = v24;
    *(v0 + 1448) = sub_10000ED8C;
    *(v0 + 1456) = v57;
    *(v0 + 1416) = _NSConcreteStackBlock;
    *(v0 + 1424) = 1107296256;
    *(v0 + 1432) = sub_10000DAFC;
    *(v0 + 1440) = &unk_100014F48;
    v64 = _Block_copy((v0 + 1416));
    v65 = v24;
    sub_10000F4A0();
    *(v0 + 1488) = &_swiftEmptyArrayStorage;
    sub_10000EFF8(&qword_1000186E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000066E8(&qword_1000186E8, &qword_1000103E0);
    sub_10000EDB0();
    sub_10000F630();
    sub_10000F610();
    _Block_release(v64);

    (*(v22 + 8))(v21, v23);
    (*(v20 + 8))(v19, v68);
    (*(v69 + 8))(v71, v70);
  }

  v66 = *(v0 + 8);

  return v66();
}

void sub_10000DA48(uint64_t a1)
{
  v2 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v2;
  v12 = *(a1 + 192);
  v3 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v3;
  v4 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v4;
  v5 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v5;
  v6 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v6;
  v7 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v7;
  v8 = objc_allocWithZone(sub_1000066E8(&qword_1000186F8, &qword_1000103E8));
  sub_1000068AC(a1, v10);
  v9 = sub_10000F260();
  sub_10000DDC4(v9);
}

uint64_t sub_10000DAFC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000DB40()
{
  v1 = v0;
  v2 = sub_1000066E8(&qword_100018600, &qword_100010270);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_10000F180();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F160();
  v9 = sub_10000F170();
  v10 = sub_10000F5F0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received notification for LegacyContactMessageExtention update notification", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_10000F580();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_10000F560();
  v13 = v1;
  v14 = sub_10000F550();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  sub_10000BB9C(0, 0, v4, &unk_1000103B0, v15);
}

void sub_10000DDC4(void *a1)
{
  v3 = [a1 view];
  if (v3)
  {
    v36 = v3;
    v4 = [v1 view];
    if (v4)
    {
      v34 = v4;
      v5 = [v1 childViewControllers];
      sub_10000ECB4(0, &qword_1000186B0, UIViewController_ptr);
      v6 = sub_10000F530();

      v35 = v1;
      if (v6 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10000F680())
      {
        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_10000F660();
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          [v9 willMoveToParentViewController:0];
          v12 = [v10 view];
          [v12 removeFromSuperview];

          [v10 removeFromParentViewController];
          ++v8;
          if (v11 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:

      [v35 addChildViewController:a1];
      v14 = [v35 view];
      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = v14;
      [v14 addSubview:v36];

      [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      v33 = objc_opt_self();
      sub_1000066E8(&qword_1000186B8, &unk_100010398);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100010320;
      v17 = [v36 topAnchor];
      v18 = [v34 safeAreaLayoutGuide];
      v19 = [v18 topAnchor];

      v20 = [v17 constraintEqualToAnchor:v19];
      *(v16 + 32) = v20;
      v21 = [v36 bottomAnchor];
      v22 = [v34 bottomAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];

      *(v16 + 40) = v23;
      v24 = [v36 leadingAnchor];
      v25 = [v34 safeAreaLayoutGuide];
      v26 = [v25 leadingAnchor];

      v27 = [v24 constraintEqualToAnchor:v26];
      *(v16 + 48) = v27;
      v28 = [v36 trailingAnchor];
      v29 = [v34 safeAreaLayoutGuide];
      v30 = [v29 trailingAnchor];

      v31 = [v28 constraintEqualToAnchor:v30];
      *(v16 + 56) = v31;
      sub_10000ECB4(0, &qword_1000186C0, NSLayoutConstraint_ptr);
      isa = sub_10000F520().super.isa;

      [v33 activateConstraints:isa];

      [a1 didMoveToParentViewController:v35];
      v13 = v34;
    }

    else
    {
      v13 = v36;
    }
  }
}

id sub_10000E278(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_optimalBubbleSize] = 0x406F400000000000;
  v6 = &v3[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_recipientHandleFromConversation];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_urlComponents;
  v8 = sub_10000F0D0();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_inviteMessageDetails];
  sub_100006798(v20);
  v10 = v20[11];
  *(v9 + 10) = v20[10];
  *(v9 + 11) = v10;
  *(v9 + 96) = v21;
  v11 = v20[7];
  *(v9 + 6) = v20[6];
  *(v9 + 7) = v11;
  v12 = v20[9];
  *(v9 + 8) = v20[8];
  *(v9 + 9) = v12;
  v13 = v20[3];
  *(v9 + 2) = v20[2];
  *(v9 + 3) = v13;
  v14 = v20[5];
  *(v9 + 4) = v20[4];
  *(v9 + 5) = v14;
  v15 = v20[1];
  *v9 = v20[0];
  *(v9 + 1) = v15;
  if (a2)
  {
    v16 = sub_10000F4C0();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v3;
  v19.super_class = type metadata accessor for MessagesViewController(0);
  v17 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", v16, a3);

  return v17;
}

id sub_10000E440(void *a1)
{
  *&v1[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_optimalBubbleSize] = 0x406F400000000000;
  v3 = &v1[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_recipientHandleFromConversation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_urlComponents;
  v5 = sub_10000F0D0();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_inviteMessageDetails];
  sub_100006798(v16);
  v7 = v16[11];
  *(v6 + 10) = v16[10];
  *(v6 + 11) = v7;
  *(v6 + 96) = v17;
  v8 = v16[7];
  *(v6 + 6) = v16[6];
  *(v6 + 7) = v8;
  v9 = v16[9];
  *(v6 + 8) = v16[8];
  *(v6 + 9) = v9;
  v10 = v16[3];
  *(v6 + 2) = v16[2];
  *(v6 + 3) = v10;
  v11 = v16[5];
  *(v6 + 4) = v16[4];
  *(v6 + 5) = v11;
  v12 = v16[1];
  *v6 = v16[0];
  *(v6 + 1) = v12;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for MessagesViewController(0);
  v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

id sub_10000E5A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MessagesViewController(uint64_t a1)
{
  result = qword_100018698;
  if (!qword_100018698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E6E8(uint64_t a1)
{
  sub_10000E798(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000E798(uint64_t a1)
{
  if (!qword_1000186A8)
  {
    sub_10000F0D0();
    v1 = sub_10000F620();
    if (!v2)
    {
      atomic_store(v1, &qword_1000186A8);
    }
  }
}

uint64_t sub_10000E7F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000F048;

  return sub_10000CEEC(a1, v4, v5, v6, v7);
}

uint64_t sub_10000E8B8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10000E904(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000E9FC;

  return v6(a1);
}

uint64_t sub_10000E9FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000EAF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EB2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F048;

  return sub_10000E904(a1, v4);
}

uint64_t sub_10000EBE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000B3B4;

  return sub_10000E904(a1, v4);
}

uint64_t sub_10000EC9C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000ECB4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000ECFC()
{

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t sub_10000ED98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000EDB0()
{
  result = qword_1000186F0;
  if (!qword_1000186F0)
  {
    sub_10000A6D8(&qword_1000186E8, &qword_1000103E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000186F0);
  }

  return result;
}

uint64_t sub_10000EE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000066E8(&qword_100018700, &qword_1000103F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000066E8(&qword_1000186C8, &qword_1000103D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EEF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10000EF34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000B3B4;

  return sub_10000CEEC(a1, v4, v5, v6, v7);
}

uint64_t sub_10000EFF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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