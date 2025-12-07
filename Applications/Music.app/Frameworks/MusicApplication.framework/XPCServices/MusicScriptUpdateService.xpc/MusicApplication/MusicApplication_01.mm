char *sub_100019004(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100601280, &qword_1004C80A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100019134(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100003ABC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003ABC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1000192A0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100003ABC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003ABC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1000193D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100601258, &qword_1004C8078);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

unint64_t _s9MusicCore8MenuTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A2FF8;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

Swift::Int sub_100019524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100601368, &qword_1004D16E0);
    v3 = sub_1004BD3E4();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      sub_1004BDBA4();
      v7 = ActionType.rawValue.getter(v6);
      v9 = v8;
      sub_1004BBF84();

      result = sub_1004BDBF4();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v23 = v6;
        v16 = ~v11;
        do
        {
          if (ActionType.rawValue.getter(*(*(v3 + 48) + v12)) == v7 && v17 == v9)
          {

            goto LABEL_4;
          }

          v19 = sub_1004BD9C4();

          if (v19)
          {
            goto LABEL_4;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
        }

        while (((1 << v12) & v14) != 0);
        v6 = v23;
      }

      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + v12) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t _s9MusicCore10ActionTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004BDA14();

  if (v2 >= 0x34)
  {
    return 52;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100019764()
{
  result = qword_100601220;
  if (!qword_100601220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601220);
  }

  return result;
}

uint64_t sub_1000197E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100019840()
{
  result = qword_100601238;
  if (!qword_100601238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601238);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MenuType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MenuType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCD)
  {
    goto LABEL_17;
  }

  if (a2 + 51 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 51) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 51;
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

      return (*a1 | (v4 << 8)) - 51;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v8 = v6 - 52;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCD)
  {
    v4 = 0;
  }

  if (a2 > 0xCC)
  {
    v5 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
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
    *result = a2 + 51;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_100019B70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100601330, &qword_1004C8168);
    v3 = sub_1004BD3E4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1004BDBA4();

      sub_1004BBF84();
      result = sub_1004BDBF4();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1004BD9C4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_100019CD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_1006012A8, &qword_1004C80D0);
    v3 = sub_1004BD3E4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1004BDBA4();
      sub_1004BDBB4(v10);
      result = sub_1004BDBF4();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100019E14(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1004BD6A4();
    if (result)
    {
LABEL_3:
      sub_100003ABC(&qword_1006012E0, &qword_1004C8110);
      result = sub_1004BD3E4();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1004BD6A4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_1004BD484();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_1004B84F4();
    sub_10001AE94(&qword_1006012E8, &protocol conformance descriptor for AnyCancellable);
    result = sub_1004BBCD4();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_10001AE94(&qword_1006012F0, &protocol conformance descriptor for AnyCancellable);
      while (1)
      {
        result = sub_1004BBD84();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

Swift::Int sub_10001A080(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_1006012D8, &qword_1004C8108);
    v3 = sub_1004BD3E4();
    v4 = 0;
    v5 = v3 + 56;
    v21 = v1;
    v22 = a1 + 32;
    while (1)
    {
      v6 = *(v22 + v4++);
      sub_1004BDBA4();
      sub_1004BBF84();

      result = sub_1004BDBF4();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          if (*(*(v3 + 48) + v9))
          {
            if (*(*(v3 + 48) + v9) == 1)
            {
              v13 = 0x657469726F766166;
            }

            else
            {
              v13 = 0x64616F6C6E776F64;
            }

            v14 = 0xE900000000000073;
            if (!v6)
            {
LABEL_10:
              v15 = 0xE300000000000000;
              if (v13 != 7105633)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          else
          {
            v14 = 0xE300000000000000;
            v13 = 7105633;
            if (!v6)
            {
              goto LABEL_10;
            }
          }

          if (v6 == 1)
          {
            v16 = 0x657469726F766166;
          }

          else
          {
            v16 = 0x64616F6C6E776F64;
          }

          v15 = 0xE900000000000073;
          if (v13 != v16)
          {
            goto LABEL_19;
          }

LABEL_18:
          if (v14 == v15)
          {

            goto LABEL_4;
          }

LABEL_19:
          v17 = sub_1004BD9C4();

          if (v17)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      *(v3 + 16) = v20;
LABEL_4:
      if (v4 == v21)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_10001A2F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_100003ABC(&qword_1006012C8, &unk_1004C80F0);
  v3 = sub_1004BD3E4();
  v4 = 0;
  v5 = v3 + 56;
  v23 = a1 + 32;
  do
  {
    v24 = v4;
    v6 = *(v23 + v4);
    sub_1004BDBA4();
    Library.Menu.Identifier.rawValue.getter(v6);
    sub_1004BBF84();

    v7 = sub_1004BDBF4();
    v8 = ~(-1 << *(v3 + 32));
    v9 = v7 & v8;
    v10 = (v7 & v8) >> 6;
    v11 = *(v5 + 8 * v10);
    v12 = 1 << (v7 & v8);
    if ((v12 & v11) != 0)
    {
      while (1)
      {
        v13 = 0xD000000000000029;
        v14 = "orites";
        switch(*(*(v3 + 48) + v9))
        {
          case 1:
            v13 = 0xD000000000000025;
            v14 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v13 = 0xD000000000000023;
            v14 = "LibraryView.Playlists";
            break;
          case 3:
            v13 = 0xD000000000000022;
            v14 = "LibraryView.Artists";
            break;
          case 4:
            v13 = 0xD000000000000021;
            v14 = "LibraryView.Albums";
            break;
          case 5:
            v13 = 0xD000000000000026;
            v14 = "LibraryView.Songs";
            break;
          case 6:
            v13 = 0xD000000000000027;
            v14 = "LibraryView.MadeForYou";
            break;
          case 7:
            v13 = 0xD000000000000022;
            v14 = "LibraryView.MusicVideos";
            break;
          case 8:
            v13 = 0xD000000000000028;
            v14 = "LibraryView.Genres";
            break;
          case 9:
            v13 = 0xD000000000000025;
            v14 = "LibraryView.Compilations";
            break;
          case 0xA:
            v13 = 0xD000000000000021;
            v14 = "LibraryView.Composers";
            break;
          case 0xB:
            v13 = 0xD000000000000026;
            v14 = "LibraryView.Shows";
            break;
          case 0xC:
            v13 = 0xD000000000000027;
            v14 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        v15 = v14 | 0x8000000000000000;
        v16 = 0xD000000000000029;
        v17 = "orites";
        switch(v6)
        {
          case 1:
            v16 = 0xD000000000000025;
            v17 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v16 = 0xD000000000000023;
            v17 = "LibraryView.Playlists";
            break;
          case 3:
            v16 = 0xD000000000000022;
            v17 = "LibraryView.Artists";
            break;
          case 4:
            v16 = 0xD000000000000021;
            v17 = "LibraryView.Albums";
            break;
          case 5:
            v16 = 0xD000000000000026;
            v17 = "LibraryView.Songs";
            break;
          case 6:
            v16 = 0xD000000000000027;
            v17 = "LibraryView.MadeForYou";
            break;
          case 7:
            v16 = 0xD000000000000022;
            v17 = "LibraryView.MusicVideos";
            break;
          case 8:
            v16 = 0xD000000000000028;
            v17 = "LibraryView.Genres";
            break;
          case 9:
            v16 = 0xD000000000000025;
            v17 = "LibraryView.Compilations";
            break;
          case 10:
            v16 = 0xD000000000000021;
            v17 = "LibraryView.Composers";
            break;
          case 11:
            v16 = 0xD000000000000026;
            v17 = "LibraryView.Shows";
            break;
          case 12:
            v16 = 0xD000000000000027;
            v17 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        if (v13 == v16 && v15 == (v17 | 0x8000000000000000))
        {
          break;
        }

        v18 = sub_1004BD9C4();

        if (v18)
        {
          goto LABEL_4;
        }

        v9 = (v9 + 1) & v8;
        v10 = v9 >> 6;
        v11 = *(v5 + 8 * (v9 >> 6));
        v12 = 1 << v9;
        if ((v11 & (1 << v9)) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
LABEL_36:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        __break(1u);
        JUMPOUT(0x10001A6E8);
      }

      *(v3 + 16) = v21;
    }

LABEL_4:
    v4 = v24 + 1;
  }

  while (v24 + 1 != v1);
  return v3;
}

Swift::Int sub_10001A750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_1006012B8, &qword_1004C80E0);
    v3 = sub_1004BD3E4();
    v4 = 0;
    v5 = v3 + 56;
    v20 = a1 + 32;
    while (1)
    {
      v6 = *(v20 + v4);
      sub_1004BDBA4();
      sub_1004BBF84();

      result = sub_1004BDBF4();
      v8 = -1 << *(v3 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      v11 = *(v5 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) != 0)
      {
        break;
      }

LABEL_21:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v19;
LABEL_3:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v13 = ~v8;
    while (1)
    {
      v14 = *(*(v3 + 48) + v9);
      v15 = v14 >> 6;
      if (v14 >> 6 > 1)
      {
        if (v15 != 2 && v14 == 192 && v6 == 192)
        {
          goto LABEL_3;
        }
      }

      else if (v15)
      {
        if (v6 >> 6 == 1)
        {
          if (((v14 ^ v6) & 0x3F) == 0)
          {
            goto LABEL_3;
          }

          goto LABEL_7;
        }
      }

      else if (v6 < 0x40)
      {
        if (((v14 ^ v6) & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_7;
      }

      sub_1004BDBA4();
      sub_1004BBF84();

      v16 = sub_1004BDBF4();
      sub_1004BDBA4();
      sub_1004BBF84();

      result = sub_1004BDBF4();
      if (v16 == result)
      {
        goto LABEL_3;
      }

LABEL_7:
      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v5 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if ((v11 & (1 << v9)) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10001AE94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1004B84F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Class ActionList.menu.getter(uint64_t a1)
{
  v67 = _swiftEmptyArrayStorage;
  v1 = *(a1 + 16);
  if (!v1)
  {
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

  v2 = 0;
  v55 = *(a1 + 16);
  v56 = a1 + 32;
  v52 = _swiftEmptyArrayStorage;
LABEL_3:
  v3 = v2;
  do
  {
    if (v3 >= v1)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v2 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_53;
    }

    v4 = *(v56 + 8 * v3);
    v66 = _swiftEmptyArrayStorage;
    v5 = *(v4 + 16);

    v60 = v5;
    if (v5)
    {
      v7 = 0;
      v8 = v4 + 32;
      v9 = _swiftEmptyArrayStorage;
      v59 = v2;
      v61 = v4;
      v54 = v4 + 32;
      while (1)
      {
        v57 = v9;
        v10 = v60 - v7;
        v11 = (v8 + 144 * v7);
        while (1)
        {
          if (v7 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_52;
          }

          v68 = *v11;
          v12 = v11[1];
          v13 = v11[2];
          v14 = v11[4];
          v71 = v11[3];
          v72 = v14;
          v69 = v12;
          v70 = v13;
          v15 = v11[5];
          v16 = v11[6];
          v17 = v11[8];
          v75 = v11[7];
          v76 = v17;
          v73 = v15;
          v74 = v16;
          v18 = *(v11 + 56);
          v19 = *(v11 + 40);
          v78 = *(v11 + 24);
          v79 = v19;
          v80 = v18;
          v20 = *(&v78 + 1);
          if (*(&v78 + 1) == 1)
          {
            goto LABEL_9;
          }

          v21 = v73;
          if (!v73)
          {
            __break(1u);
            return result;
          }

          v62 = v10;
          v22 = v78;
          v23 = v79;
          v24 = v80;
          v25 = BYTE8(v80);
          sub_100013090(&v68, &v64);
          v26 = sub_10000F778(&v78, &v64, &qword_100601148, &qword_1004C77A8);
          v27 = v21(v26);
          if (v28 == 1)
          {
            break;
          }

          sub_1000130F8(v27, v28);
          sub_1000130C8(&v68);
          v81[0] = v22;
          v81[1] = v20;
          sub_100007214(v81, &unk_100606160, &qword_1004CAC60);
          v82 = v23;
          sub_100007214(&v82, &unk_100606160, &qword_1004CAC60);
          v83 = v24;
          result = sub_100007214(&v83, &qword_100601390, &qword_1004C8448);
          v4 = v61;
          v10 = v62;
LABEL_9:
          v11 += 9;
          ++v7;
          if (!--v10)
          {
            v1 = v55;
            v9 = v57;
            v2 = v59;
            goto LABEL_36;
          }
        }

        v58 = v22;
        v29 = *(&v72 + 1);
        v77 = *(&v72 + 1);
        v53 = v20;
        if (*(&v72 + 1))
        {
          v2 = v59;
          v30 = v24;
          goto LABEL_29;
        }

        if (v25)
        {
          if ((v25 & 2) == 0)
          {
            v31 = 1;
            if ((v25 & 4) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

          v31 = 3;
          if ((v25 & 4) != 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if ((v25 & 2) != 0)
          {
            v31 = 2;
            if ((v25 & 4) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v31 = 0;
            if ((v25 & 4) == 0)
            {
              goto LABEL_28;
            }
          }

LABEL_27:
          v31 |= 4uLL;
        }

LABEL_28:
        sub_100009130(0, &qword_100601380, UIAction_ptr);
        v32 = swift_allocObject();
        v33 = v75;
        v32[7] = v74;
        v32[8] = v33;
        v32[9] = v76;
        v34 = v71;
        v32[3] = v70;
        v32[4] = v34;
        v35 = v73;
        v32[5] = v72;
        v32[6] = v35;
        v36 = v69;
        v32[1] = v68;
        v32[2] = v36;
        sub_100013090(&v68, &v64);
        v30 = v24;
        v37 = v24;

        v51._rawValue = v31;
        v29 = sub_1004BCFD4();
        v2 = v59;
LABEL_29:
        v64 = 0x2E736E6F69746341;
        v65 = 0xE800000000000000;
        v38 = ActionType.rawValue.getter(v68);
        v40 = v39;
        sub_10000F778(&v77, v63, &qword_100601388, &qword_1004C8440);
        v41 = v29;
        v89._countAndFlagsBits = v38;
        v89._object = v40;
        sub_1004BC024(v89);

        v43 = v64;
        v42 = v65;
        if (qword_100600148 != -1)
        {
          swift_once();
        }

        v64 = qword_1006091F0;
        v65 = *algn_1006091F8;

        v90._countAndFlagsBits = 46;
        v90._object = 0xE100000000000000;
        sub_1004BC024(v90);

        v91._countAndFlagsBits = v43;
        v91._object = v42;
        sub_1004BC024(v91);

        v44 = sub_1004BBE24();

        [v41 setAccessibilityIdentifier:v44];
        sub_1000130C8(&v68);

        v84[0] = v58;
        v84[1] = v53;
        sub_100007214(v84, &unk_100606160, &qword_1004CAC60);
        v85 = v23;
        sub_100007214(&v85, &unk_100606160, &qword_1004CAC60);
        v86 = v30;
        sub_100007214(&v86, &qword_100601390, &qword_1004C8448);
        sub_1004BC274();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1004BC2E4();
        }

        ++v7;
        result = sub_1004BC334();
        v9 = v66;
        v4 = v61;
        v8 = v54;
        v1 = v55;
        if (v62 == 1)
        {
LABEL_36:
          if (v9 >> 62)
          {
            goto LABEL_41;
          }

LABEL_37:
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
          {
            goto LABEL_38;
          }

LABEL_42:
          v47 = v9;
          sub_100009130(0, &qword_100601398, UIMenu_ptr);
          v92._countAndFlagsBits = 0;
          v92._object = 0xE000000000000000;
          v94.value._countAndFlagsBits = 0;
          v94.value._object = 0;
          v87.value.super.isa = 0;
          v87.is_nil = 0;
          v48.value = 1;
          sub_1004BCE54(v92, v94, v87, v48, 0xFFFFFFFFFFFFFFFFLL, v47, v51);

          sub_1004BC274();
          if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004BC2E4();
          }

          sub_1004BC334();
          v52 = v67;
          if (v2 == v1)
          {
            goto LABEL_47;
          }

          goto LABEL_3;
        }
      }
    }

    v9 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_37;
    }

LABEL_41:
    v45 = v9;
    v46 = sub_1004BD6A4();
    v9 = v45;
    if (v46 > 0)
    {
      goto LABEL_42;
    }

LABEL_38:

    v3 = v2;
  }

  while (v2 != v1);
LABEL_47:
  if (!(v52 >> 62))
  {
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      sub_1004BD9E4();
      sub_100009130(0, &qword_1006013A0, UIMenuElement_ptr);
      v49 = v52;
LABEL_50:

      sub_100009130(0, &qword_100601398, UIMenu_ptr);
      v93._countAndFlagsBits = 0;
      v93._object = 0xE000000000000000;
      v95.value._countAndFlagsBits = 0;
      v95.value._object = 0;
      v88.value.super.isa = 0;
      v88.is_nil = 0;
      v50.value = 0;
      return sub_1004BCE54(v93, v95, v88, v50, 0xFFFFFFFFFFFFFFFFLL, v49, v51).super.super.isa;
    }

    goto LABEL_56;
  }

LABEL_54:
  if (sub_1004BD6A4() > 0)
  {
    sub_100009130(0, &qword_1006013A0, UIMenuElement_ptr);

    v49 = sub_1004BD634();

    goto LABEL_50;
  }

LABEL_56:

  return 0;
}

Class ActionGroup.menu.getter(Class result)
{
  v1 = _swiftEmptyArrayStorage;
  v42 = _swiftEmptyArrayStorage;
  v2 = *(result + 2);
  if (!v2)
  {
    goto LABEL_30;
  }

  v3 = 0;
  v4 = result + 32;
  v36 = result + 32;
  v38 = *(result + 2);
  do
  {
    v37 = v1;
    v5 = &v4[144 * v3];
    v6 = v3;
    while (1)
    {
      if (v6 >= v2)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v7 = *(v5 + 7);
      v49 = *(v5 + 6);
      v50 = v7;
      v51 = *(v5 + 8);
      v8 = *(v5 + 3);
      v45 = *(v5 + 2);
      v46 = v8;
      v9 = *(v5 + 5);
      v47 = *(v5 + 4);
      v48 = v9;
      v10 = *(v5 + 1);
      v43 = *v5;
      v44 = v10;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_34;
      }

      if (v45 != 1)
      {
        break;
      }

LABEL_4:
      ++v6;
      v5 += 144;
      if (v11 == v2)
      {
        v1 = v37;
        goto LABEL_30;
      }
    }

    v12 = v48;
    if (!v48)
    {
      __break(1u);
      return result;
    }

    v14 = *(&v46 + 1);
    v13 = v47;
    sub_100013090(&v43, &v40);
    v1 = v14;

    v16 = v12(v15);
    if (v17 != 1)
    {
      sub_1000130F8(v16, v17);

      result = sub_1000130C8(&v43);
      v2 = v38;
      v11 = v6 + 1;
      goto LABEL_4;
    }

    v18 = *(&v47 + 1);
    v52 = *(&v47 + 1);
    if (*(&v47 + 1))
    {
      v2 = v38;
      v3 = v6 + 1;
      v19 = v1;
    }

    else
    {
      v3 = v6 + 1;
      if (v13)
      {
        v2 = v38;
        v19 = v1;
        if ((v13 & 2) != 0)
        {
          v20 = 3;
        }

        else
        {
          v20 = 1;
        }
      }

      else
      {
        v2 = v38;
        v19 = v1;
        if ((v13 & 2) != 0)
        {
          v20 = 2;
        }

        else
        {
          v20 = 0;
        }
      }

      if ((v13 & 4) != 0)
      {
        v20 |= 4uLL;
      }

      sub_100009130(0, &qword_100601380, UIAction_ptr);
      v21 = swift_allocObject();
      v22 = v50;
      v21[7] = v49;
      v21[8] = v22;
      v21[9] = v51;
      v23 = v46;
      v21[3] = v45;
      v21[4] = v23;
      v24 = v48;
      v21[5] = v47;
      v21[6] = v24;
      v25 = v44;
      v21[1] = v43;
      v21[2] = v25;
      sub_100013090(&v43, &v40);

      v26 = v19;
      v35._rawValue = v20;
      v18 = sub_1004BCFD4();
    }

    v40 = 0x2E736E6F69746341;
    v41 = 0xE800000000000000;
    v27 = ActionType.rawValue.getter(v43);
    v29 = v28;
    sub_10000F778(&v52, v39, &qword_100601388, &qword_1004C8440);
    v30 = v18;
    v54._countAndFlagsBits = v27;
    v54._object = v29;
    sub_1004BC024(v54);

    v32 = v40;
    v31 = v41;
    if (qword_100600148 != -1)
    {
      swift_once();
    }

    v40 = qword_1006091F0;
    v41 = *algn_1006091F8;

    v55._countAndFlagsBits = 46;
    v55._object = 0xE100000000000000;
    sub_1004BC024(v55);

    v56._countAndFlagsBits = v32;
    v56._object = v31;
    sub_1004BC024(v56);

    v33 = sub_1004BBE24();

    [v30 setAccessibilityIdentifier:v33];

    sub_1000130C8(&v43);
    sub_1004BC274();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004BC2E4();
    }

    result = sub_1004BC334();
    v1 = v42;
    v4 = v36;
  }

  while (v3 != v2);
LABEL_30:
  if (v1 >> 62)
  {
LABEL_35:
    if (sub_1004BD6A4() <= 0)
    {
      goto LABEL_36;
    }

LABEL_32:
    sub_100009130(0, &qword_100601398, UIMenu_ptr);
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    v58.value._countAndFlagsBits = 0;
    v58.value._object = 0;
    v53.value.super.isa = 0;
    v53.is_nil = 0;
    v34.value = 1;
    return sub_1004BCE54(v57, v58, v53, v34, 0xFFFFFFFFFFFFFFFFLL, v1, v35).super.super.isa;
  }

  else
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
      goto LABEL_32;
    }

LABEL_36:

    return 0;
  }
}

Class ActionList.contextMenuConfiguration(identifier:previewProvider:)(uint64_t a1, void *(*a2)(), uint64_t a3, uint64_t a4)
{
  v7 = ActionList.menu.getter(a4);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = objc_opt_self();
    v17 = a2;
    v18 = a3;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10001C664;
    v16 = &unk_1005A79A8;
    v10 = _Block_copy(&v13);
    swift_unknownObjectRetain();
    swift_retain_n();

    v17 = NowPlaying.TrackMetadata.underlyingItem.getter;
    v18 = v8;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10001C6CC;
    v16 = &unk_1005A79D0;
    v11 = _Block_copy(&v13);

    v7 = [v9 configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
    swift_unknownObjectRelease();

    _Block_release(v11);
    _Block_release(v10);
  }

  return v7;
}

void AnyAction.menuElement.getter()
{
  if (*(v0 + 32) != 1)
  {
    v1 = v0;
    v2 = *(v0 + 80);
    if (v2)
    {
      v3 = *(v0 + 56);

      v5 = v2(v4);
      if (v6 == 1)
      {
        v7 = *(v0 + 72);
        v24 = v7;
        if (!v7)
        {
          sub_100009130(0, &qword_100601380, UIAction_ptr);
          v8 = swift_allocObject();
          v9 = *(v1 + 112);
          v8[7] = *(v1 + 96);
          v8[8] = v9;
          v8[9] = *(v1 + 128);
          v10 = *(v1 + 48);
          v8[3] = *(v1 + 32);
          v8[4] = v10;
          v11 = *(v1 + 80);
          v8[5] = *(v1 + 64);
          v8[6] = v11;
          v12 = *(v1 + 16);
          v8[1] = *v1;
          v8[2] = v12;

          v13 = v3;
          sub_100013090(v1, &v22);
          v7 = sub_1004BCFD4();
        }

        v22 = 0x2E736E6F69746341;
        v23 = 0xE800000000000000;
        v14 = ActionType.rawValue.getter(*v1);
        v16 = v15;
        sub_10000F778(&v24, v21, &qword_100601388, &qword_1004C8440);
        v17 = v7;
        v25._countAndFlagsBits = v14;
        v25._object = v16;
        sub_1004BC024(v25);

        v19 = v22;
        v18 = v23;
        if (qword_100600148 != -1)
        {
          swift_once();
        }

        v22 = qword_1006091F0;
        v23 = *algn_1006091F8;

        v26._countAndFlagsBits = 46;
        v26._object = 0xE100000000000000;
        sub_1004BC024(v26);

        v27._countAndFlagsBits = v19;
        v27._object = v18;
        sub_1004BC024(v27);

        v20 = sub_1004BBE24();

        [v17 setAccessibilityIdentifier:v20];
      }

      else
      {
        sub_1000130F8(v5, v6);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10001C008(uint64_t a1, _OWORD *a2)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v4 = &v13[-v3];
  v5 = sub_1004BC4B4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1004BC474();
  sub_100013090(a2, v13);
  v6 = sub_1004BC464();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = a2[7];
  *(v7 + 128) = a2[6];
  *(v7 + 144) = v8;
  *(v7 + 160) = a2[8];
  v9 = a2[3];
  *(v7 + 64) = a2[2];
  *(v7 + 80) = v9;
  v10 = a2[5];
  *(v7 + 96) = a2[4];
  *(v7 + 112) = v10;
  v11 = a2[1];
  *(v7 + 32) = *a2;
  *(v7 + 48) = v11;
  sub_1000FD6BC(0, 0, v4, &unk_1004C8460, v7);
}

uint64_t sub_10001C158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v4[22] = sub_1004BC474();
  v4[23] = sub_1004BC464();
  v5 = swift_task_alloc();
  v4[24] = v5;
  *v5 = v4;
  v5[1] = sub_10001C20C;

  return AnyAction.execute()();
}

uint64_t sub_10001C20C()
{
  *(*v1 + 200) = v0;

  v3 = sub_1004BC3E4();
  if (v0)
  {
    v4 = sub_10001C3C8;
  }

  else
  {
    v4 = sub_10001C368;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10001C368()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001C3C8()
{
  v18 = v0;

  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_1004B80B4();
  sub_100007084(v2, static Logger.actions);
  sub_100013090(v1, (v0 + 2));
  swift_errorRetain();
  v3 = sub_1004B8094();
  v4 = sub_1004BC984();
  sub_1000130C8(v1);

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  if (v5)
  {
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = ActionType.rawValue.getter(*v7);
    v11 = sub_100012018(v9, v10, &v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    v0[20] = v6;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v12 = sub_1004BBF04();
    v14 = sub_100012018(v12, v13, &v17);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Action %{public}s failed: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10001C604()
{

  return swift_deallocObject();
}

void *NowPlaying.TrackMetadata.underlyingItem.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_10001C664(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_10001C6B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10001C6CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100009130(0, &qword_1006013A0, UIMenuElement_ptr);
  v3 = sub_1004BC2A4();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_10001C75C()
{

  if (*(v0 + 48) != 1)
  {
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10001C7FC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64) != 1)
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  if (*(v0 + 160))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10001C8A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000136EC;

  return sub_10001C158(a1, v4, v5, v1 + 32);
}

int *Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  (*(*(a11 - 8) + 32))(a9, a1, a11);
  result = type metadata accessor for Action(0, a11, a12, v21);
  *(a9 + result[9]) = a2;
  *(a9 + result[11]) = a10;
  v23 = (a9 + result[10]);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a9 + result[12]);
  *v24 = a5;
  v24[1] = a6;
  v25 = (a9 + result[13]);
  *v25 = a7;
  v25[1] = a8;
  return result;
}

{
  v20 = swift_allocObject();
  v20[2] = a11;
  v20[3] = a12;
  v20[4] = a5;
  v20[5] = a6;
  (*(*(a11 - 8) + 32))(a9, a1, a11);
  result = type metadata accessor for Action(0, a11, a12, v21);
  *(a9 + result[9]) = a2;
  *(a9 + result[11]) = a10;
  v23 = (a9 + result[10]);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a9 + result[12]);
  *v24 = &unk_1004C84B0;
  v24[1] = v20;
  v25 = (a9 + result[13]);
  *v25 = a7;
  v25[1] = a8;
  return result;
}

uint64_t Action.execute(checkSupportedStatus:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 357) = a2;
  *(v4 + 56) = a1;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v4 + 80) = swift_task_alloc();
  v6 = *(a3 + 24);
  *(v4 + 88) = v6;
  v7 = *(v6 - 8);
  *(v4 + 96) = v7;
  *(v4 + 104) = *(v7 + 64);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 136) = swift_task_alloc();
  v8 = *(a3 - 8);
  *(v4 + 144) = v8;
  *(v4 + 152) = *(v8 + 64);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v9 = sub_1004B80B4();
  *(v4 + 208) = v9;
  *(v4 + 216) = *(v9 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_10001CD54, 0, 0);
}

uint64_t sub_10001CD54()
{
  v117 = v0;
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 72) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v77 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v77) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 356) = 2;
    v78 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v78) & 1) == 0)
    {
LABEL_21:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v79 = *(v0 + 232);
        v80 = *(v0 + 208);
        v81 = *(v0 + 216);
        v82 = *(v0 + 168);
        v83 = *(v0 + 144);
        v85 = *(v0 + 64);
        v84 = *(v0 + 72);
        v86 = sub_100007084(v80, qword_1006013A8);
        (*(v81 + 16))(v79, v86, v80);
        (*(v83 + 16))(v82, v84, v85);
        v87 = sub_1004B8094();
        v88 = sub_1004BC984();
        v89 = os_log_type_enabled(v87, v88);
        v90 = *(v0 + 232);
        v92 = *(v0 + 208);
        v91 = *(v0 + 216);
        v93 = *(v0 + 168);
        v94 = *(v0 + 144);
        v95 = *(v0 + 64);
        if (v89)
        {
          v115 = *(v0 + 232);
          v96 = swift_slowAlloc();
          v112 = v92;
          v97 = swift_slowAlloc();
          v116[0] = v97;
          *v96 = 136446210;
          v98 = *(v93 + *(v1 + 36));
          (*(v94 + 8))(v93, v95);
          v99 = ActionType.rawValue.getter(v98);
          v101 = sub_100012018(v99, v100, v116);

          *(v96 + 4) = v101;
          _os_log_impl(&_mh_execute_header, v87, v88, "%{public}s: attempted to execute but identifier is hidden", v96, 0xCu);
          sub_100004C6C(v97);

          (*(v91 + 8))(v115, v112);
        }

        else
        {
          (*(v94 + 8))(*(v0 + 168), *(v0 + 64));

          (*(v91 + 8))(v90, v92);
        }
      }

      v50 = 0x80000001004FC520;
      v69 = 0xD000000000000014;
      goto LABEL_30;
    }
  }

LABEL_2:
  if (*(v0 + 357) != 1 || (v3 = (*(*(v0 + 72) + *(*(v0 + 64) + 40)))(), v4 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 248);
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    v8 = *(v0 + 192);
    v9 = *(v0 + 144);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = sub_100007084(v6, qword_1006013A8);
    *(v0 + 264) = v12;
    v13 = *(v7 + 16);
    *(v0 + 272) = v13;
    *(v0 + 280) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v5, v12, v6);
    v14 = *(v9 + 16);
    *(v0 + 288) = v14;
    *(v0 + 296) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v110 = v14;
    v14(v8, v10, v11);
    v15 = sub_1004B8094();
    v16 = sub_1004BC9A4();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 248);
    v20 = *(v0 + 208);
    v19 = *(v0 + 216);
    v21 = *(v0 + 192);
    v22 = *(v0 + 144);
    v23 = *(v0 + 64);
    if (v17)
    {
      v106 = *(v0 + 248);
      v24 = swift_slowAlloc();
      v104 = v20;
      v25 = swift_slowAlloc();
      v116[0] = v25;
      *v24 = 136446210;
      v26 = *(v21 + *(v1 + 36));
      (*(v22 + 8))(v21, v23);
      v27 = ActionType.rawValue.getter(v26);
      v29 = sub_100012018(v27, v28, v116);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s: performing…", v24, 0xCu);
      sub_100004C6C(v25);

      (*(v19 + 8))(v106, v104);
    }

    else
    {
      (*(v22 + 8))(*(v0 + 192), *(v0 + 64));

      (*(v19 + 8))(v18, v20);
    }

    v32 = *(v0 + 184);
    v33 = *(v0 + 144);
    v34 = *(v0 + 136);
    v107 = *(v0 + 88);
    v36 = *(v0 + 64);
    v35 = *(v0 + 72);
    sub_1000202C0(0, v30, v31);
    v37 = [objc_opt_self() mainRunLoop];
    v38 = sub_1004BD0F4();
    (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
    v39 = sub_1004BCF44();

    sub_100007214(v34, &qword_1006013C0, &qword_1004C8480);
    *(v0 + 32) = v39;
    sub_1004BCF34();
    sub_10002030C();
    v40 = sub_1004B8544();

    *(v0 + 40) = v40;
    v110(v32, v35, v36);
    v41 = *(v33 + 80);
    *(v0 + 352) = v41;
    v42 = (v41 + 32) & ~v41;
    v43 = swift_allocObject();
    v44 = *(v36 + 16);
    *(v0 + 304) = v44;
    *(v43 + 16) = v44;
    *(v43 + 24) = v107;
    v45 = *(v33 + 32);
    *(v0 + 312) = v45;
    *(v0 + 320) = (v33 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v45(v43 + v42, v32, v36);
    sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 328) = sub_1004B8644();

    v113 = (*(v35 + *(v36 + 48)) + **(v35 + *(v36 + 48)));
    v46 = swift_task_alloc();
    *(v0 + 336) = v46;
    *v46 = v0;
    v46[1] = sub_10001D8F0;
    v47 = *(v0 + 72);
    v48 = *(v0 + 56);

    return v113(v48, v47);
  }

  v50 = v4;
  v114 = v3;
  v108 = v1;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v51 = *(v0 + 256);
  v53 = *(v0 + 208);
  v52 = *(v0 + 216);
  v54 = *(v0 + 200);
  v55 = *(v0 + 144);
  v57 = *(v0 + 64);
  v56 = *(v0 + 72);
  v58 = sub_100007084(v53, qword_1006013A8);
  (*(v52 + 16))(v51, v58, v53);
  (*(v55 + 16))(v54, v56, v57);

  v59 = sub_1004B8094();
  v60 = sub_1004BC984();
  sub_1000130F8(v114, v50);
  v61 = os_log_type_enabled(v59, v60);
  v62 = *(v0 + 256);
  v63 = *(v0 + 216);
  v111 = *(v0 + 208);
  v64 = *(v0 + 200);
  v65 = *(v0 + 144);
  v66 = *(v0 + 64);
  if (v61)
  {
    v105 = *(v0 + 256);
    v67 = swift_slowAlloc();
    v116[0] = swift_slowAlloc();
    *v67 = 136446466;
    v68 = *(v108 + 36);
    v109 = v60;
    v69 = v114;
    v70 = *(v64 + v68);
    (*(v65 + 8))(v64, v66);
    v71 = ActionType.rawValue.getter(v70);
    v73 = sub_100012018(v71, v72, v116);

    *(v67 + 4) = v73;
    *(v67 + 12) = 2082;
    *(v0 + 16) = v114;
    *(v0 + 24) = v50;

    sub_100003ABC(&unk_100606160, &qword_1004CAC60);
    v74 = sub_1004BBF04();
    v76 = sub_100012018(v74, v75, v116);

    *(v67 + 14) = v76;
    _os_log_impl(&_mh_execute_header, v59, v109, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v67, 0x16u);
    swift_arrayDestroy();

    (*(v63 + 8))(v105, v111);
  }

  else
  {
    (*(v65 + 8))(*(v0 + 200), *(v0 + 64));

    (*(v63 + 8))(v62, v111);
    v69 = v114;
  }

LABEL_30:
  sub_100020670();
  swift_allocError();
  *v102 = v69;
  v102[1] = v50;
  swift_willThrow();

  v103 = *(v0 + 8);

  return v103();
}

uint64_t sub_10001D8F0()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_10001DFE8;
  }

  else
  {
    v2 = sub_10001DA04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001DA04()
{
  v67 = v0;
  v63 = *(v0 + 288);
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 208);
  v5 = *(v0 + 176);
  v6 = *(v0 + 96);
  v59 = *(v0 + 88);
  v61 = *(v0 + 128);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v58 = *(v0 + 56);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v63(v5, v7, v8);
  v9 = *(v6 + 16);
  v9(v61, v58, v59);
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();
  v64 = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v60 = v11;
    v62 = v10;
    v12 = *(v0 + 176);
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    v57 = *(v0 + 128);
    v15 = *(v0 + 88);
    v16 = *(v0 + 64);
    v17 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v17 = 136446466;
    v18 = *(v12 + *(v16 + 36));
    (*(v13 + 8))(v12, v16);
    v19 = ActionType.rawValue.getter(v18);
    v21 = sub_100012018(v19, v20, &v65);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v9(v14, v57, v15);
    v22 = 0xE000000000000000;
    if (swift_dynamicCast())
    {
      v23 = 0;
    }

    else
    {
      v30 = *(v0 + 128);
      v31 = *(v0 + 112);
      v32 = *(v0 + 88);
      v66[0] = 0;
      v66[1] = 0xE000000000000000;
      sub_1004BD404(16);

      strcpy(v66, " with result: ");
      HIBYTE(v66[1]) = -18;
      v9(v31, v30, v32);
      v69._countAndFlagsBits = sub_1004BBF04();
      sub_1004BC024(v69);

      v23 = v66[0];
      v22 = v66[1];
    }

    v33 = *(v0 + 240);
    v34 = *(v0 + 208);
    v35 = *(v0 + 216);
    (*(*(v0 + 96) + 8))(*(v0 + 128), *(v0 + 88));
    v36 = sub_100012018(v23, v22, &v65);

    *(v17 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v62, v60, "%{public}s: perform success%{public}s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v33, v34);
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 208);
    v26 = *(v0 + 216);
    v27 = *(v0 + 128);
    v28 = *(v0 + 88);
    v29 = *(v0 + 96);
    (*(*(v0 + 144) + 8))(*(v0 + 176), *(v0 + 64));

    (*(v29 + 8))(v27, v28);
    (*(v26 + 8))(v24, v25);
  }

  v55 = *(v0 + 304);
  v56 = *(v0 + 312);
  v37 = *(v0 + 352);
  v53 = *(v0 + 288);
  v38 = *(v0 + 184);
  v52 = *(v0 + 152);
  v39 = *(v0 + 112);
  v40 = *(v0 + 96);
  v41 = *(v0 + 80);
  v42 = *(v0 + 88);
  v54 = v41;
  v44 = *(v0 + 64);
  v43 = *(v0 + 72);
  v45 = *(v0 + 56);
  v46 = sub_1004BC4B4();
  (*(*(v46 - 8) + 56))(v41, 1, 1, v46);
  v53(v38, v43, v44);
  v64(v39, v45, v42);
  v47 = (v37 + 48) & ~v37;
  v48 = (v52 + v47 + *(v40 + 80)) & ~*(v40 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = 0;
  *(v49 + 3) = 0;
  *(v49 + 4) = v55;
  *(v49 + 5) = v42;
  v56(&v49[v47], v38, v44);
  (*(v40 + 32))(&v49[v48], v39, v42);
  sub_10001F35C(0, 0, v54, &unk_1004C84A0, v49);

  sub_100007214(v54, &qword_1006014F0, &qword_1004C9B00);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_10001DFE8()
{
  v32 = v0;
  v28 = v0[36];
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[20];
  v7 = v0[8];
  v6 = v0[9];

  v1(v3, v2, v4);
  v28(v5, v6, v7);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[43];
    v27 = v0[27];
    v29 = v0[26];
    v30 = v0[28];
    v11 = v0[20];
    v12 = v0[18];
    v13 = v0[8];
    v14 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v14 = 136446466;
    v15 = *(v11 + *(v13 + 36));
    (*(v12 + 8))(v11, v13);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_100012018(v16, v17, v31);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[6] = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v19 = sub_1004BBF04();
    v21 = sub_100012018(v19, v20, v31);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v30, v29);
  }

  else
  {
    v23 = v0[27];
    v22 = v0[28];
    v24 = v0[26];
    (*(v0[18] + 8))(v0[20], v0[8]);

    (*(v23 + 8))(v22, v24);
  }

  swift_willThrow();

  v25 = v0[1];

  return v25();
}

uint64_t sub_10001E34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  v7[9] = swift_task_alloc();
  v11 = type metadata accessor for Action(0, a6, a7, v10);
  v7[10] = v11;
  v12 = *(v11 - 8);
  v7[11] = v12;
  v7[12] = *(v12 + 64);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v13 = sub_1004B80B4();
  v7[17] = v13;
  v7[18] = *(v13 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_10001E4F8, 0, 0);
}

uint64_t sub_10001E4F8()
{
  v49 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 40);
  v8 = sub_100007084(v2, qword_1006013A8);
  *(v0 + 176) = v8;
  v9 = *(v3 + 16);
  *(v0 + 184) = v9;
  *(v0 + 192) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v8, v2);
  v10 = *(v6 + 16);
  *(v0 + 200) = v10;
  *(v0 + 208) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v46 = v10;
  v10(v4, v7, v5);
  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 168);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 128);
  v19 = *(v0 + 80);
  v18 = *(v0 + 88);
  if (v13)
  {
    v44 = *(v0 + 168);
    v20 = swift_slowAlloc();
    v43 = v16;
    v21 = swift_slowAlloc();
    v48 = v21;
    *v20 = 136446210;
    v22 = *(v17 + *(v19 + 36));
    (*(v18 + 8))(v17, v19);
    v23 = ActionType.rawValue.getter(v22);
    v25 = sub_100012018(v23, v24, &v48);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: finishing…", v20, 0xCu);
    sub_100004C6C(v21);

    (*(v15 + 8))(v44, v43);
  }

  else
  {
    (*(v18 + 8))(*(v0 + 128), *(v0 + 80));

    (*(v15 + 8))(v14, v16);
  }

  v28 = *(v0 + 120);
  v29 = *(v0 + 88);
  v31 = *(v0 + 72);
  v30 = *(v0 + 80);
  v32 = *(v0 + 40);
  sub_1000202C0(0, v26, v27);
  v45 = *(v0 + 56);
  v33 = [objc_opt_self() mainRunLoop];
  v34 = sub_1004BD0F4();
  (*(*(v34 - 8) + 56))(v31, 1, 1, v34);
  v35 = sub_1004BCF44();

  sub_100007214(v31, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 16) = v35;
  sub_1004BCF34();
  sub_10002030C();
  v36 = sub_1004B8544();

  *(v0 + 24) = v36;
  v46(v28, v32, v30);
  v37 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v45;
  (*(v29 + 32))(v38 + v37, v28, v30);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 216) = sub_1004B8644();

  v47 = (*(v32 + *(v30 + 52)) + **(v32 + *(v30 + 52)));
  v39 = swift_task_alloc();
  *(v0 + 224) = v39;
  *v39 = v0;
  v39[1] = sub_10001E9F4;
  v41 = *(v0 + 40);
  v40 = *(v0 + 48);

  return v47(v41, v40);
}

uint64_t sub_10001E9F4()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_10001ED74;
  }

  else
  {
    v2 = sub_10001EB08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001EB08()
{
  v29 = v0;
  v25 = v0[25];
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[10];
  v7 = v0[5];
  sub_1004B84E4();
  v2(v3, v1, v4);
  v25(v5, v7, v6);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[20];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[14];
  v16 = v0[10];
  v15 = v0[11];
  if (v10)
  {
    v27 = v0[17];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136446210;
    v26 = v11;
    v19 = *(v14 + *(v16 + 36));
    (*(v15 + 8))(v14, v16);
    v20 = ActionType.rawValue.getter(v19);
    v22 = sub_100012018(v20, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v17, 0xCu);
    sub_100004C6C(v18);

    (*(v12 + 8))(v26, v27);
  }

  else
  {
    (*(v15 + 8))(v0[14], v0[10]);

    (*(v12 + 8))(v11, v13);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_10001ED74()
{
  v32 = v0;
  v28 = v0[25];
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[5];

  v2(v3, v1, v4);
  v28(v5, v7, v6);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[29];
    v27 = v0[18];
    v29 = v0[17];
    v30 = v0[19];
    v11 = v0[13];
    v13 = v0[10];
    v12 = v0[11];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = *(v11 + *(v13 + 36));
    (*(v12 + 8))(v11, v13);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_100012018(v16, v17, &v31);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[4] = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v19 = sub_1004BBF04();
    v21 = sub_100012018(v19, v20, &v31);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v30, v29);
  }

  else
  {
    v23 = v0[18];
    v22 = v0[19];
    v24 = v0[17];
    (*(v0[11] + 8))(v0[13], v0[10]);

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_10001F070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = type metadata accessor for Action(0, a3, a4, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v27 - v9;
  v11 = sub_1004B80B4();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v15 = sub_100007084(v11, qword_1006013A8);
  (*(v12 + 16))(v14, v15, v11);
  (*(v8 + 16))(v10, a2, v7);
  v16 = sub_1004B8094();
  v17 = sub_1004BC9A4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28 = a5;
    v21 = v20;
    v30 = v20;
    *v19 = 136446210;
    v22 = v10[*(v7 + 36)];
    (*(v8 + 8))(v10, v7);
    v23 = ActionType.rawValue.getter(v22);
    v25 = sub_100012018(v23, v24, &v30);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, v28, v19, 0xCu);
    sub_100004C6C(v21);

    return (*(v12 + 8))(v14, v29);
  }

  else
  {
    (*(v8 + 8))(v10, v7);

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_10001F35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100021174(a3, v24 - v9);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_1006014F0, &qword_1004C9B00);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004BBF54() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t static ActionSupportedStatus.allSupported(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = a1 + 32;
    v22 = a1 + 32;
    v5 = 2;
    v21 = *(a1 + 16);
    while (1)
    {
      v6 = *(v4 + 16 * v3);
      v7 = *(v4 + 16 * v3 + 8);
      if (v5 == 2)
      {
        v2 = *(v4 + 16 * v3);
        sub_10001388C(v2, *(v4 + 16 * v3 + 8));
        goto LABEL_4;
      }

      if (v5 == 1 && v7 == 1)
      {
        v23 = *(v4 + 16 * v3);
        sub_10002071C(v2, 1);
        v2 = v23;
        goto LABEL_4;
      }

      v25 = v2;
      v26 = v5;
      v8 = v6;
      v27 = v6;
      sub_10001388C(v6, v7);
      v24 = v8;
      sub_10001388C(v8, v7);
      sub_1000206C4(v2, v5);
      v9 = 0;
      v10 = _swiftEmptyArrayStorage;
      do
      {
        v11 = &v26 + 2 * v9++;
        while (1)
        {
          v12 = *v11;
          if (*v11 != 1)
          {
            break;
          }

LABEL_11:
          v11 += 2;
          if (++v9 == 3)
          {
            goto LABEL_20;
          }
        }

        v13 = *(v11 - 1);
        if (!v12)
        {
          sub_1000130F8(*(v11 - 1), 0);
          goto LABEL_11;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100017CC8(0, *(v10 + 2) + 1, 1, v10);
        }

        v15 = *(v10 + 2);
        v14 = *(v10 + 3);
        if (v15 >= v14 >> 1)
        {
          v10 = sub_100017CC8((v14 > 1), v15 + 1, 1, v10);
        }

        *(v10 + 2) = v15 + 1;
        v16 = &v10[16 * v15];
        *(v16 + 4) = v13;
        *(v16 + 5) = v12;
        v1 = v21;
      }

      while (v9 != 2);
LABEL_20:
      swift_arrayDestroy();
      sub_100003ABC(&unk_100603590, &unk_1004C8150);
      sub_1000206D4(&qword_100604020, &unk_100603590, &unk_1004C8150, &protocol conformance descriptor for [A]);
      v17 = sub_1004BBD34();
      v19 = v18;
      sub_1000130F8(v24, v7);
      sub_10002071C(v2, v5);

      v2 = v17;
      v7 = v19;
      v4 = v22;
LABEL_4:
      ++v3;
      v5 = v7;
      if (v3 == v1)
      {
        goto LABEL_22;
      }
    }
  }

  v2 = 0;
  v7 = 2;
LABEL_22:
  if (v7 == 2)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v2;
  }
}

unint64_t ActionError.description.getter(uint64_t a1, void *a2)
{
  sub_1004BD404(34);

  if (a2)
  {
    v4 = a2;
  }

  else
  {

    v4 = 0xE700000000000000;
    a1 = 0x6E776F6E6B6E75;
  }

  v6._countAndFlagsBits = a1;
  v6._object = v4;
  sub_1004BC024(v6);

  return 0xD000000000000020;
}

uint64_t static ActionError.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      if (sub_1004BD9C4())
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10001F9F8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1004BD9C4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10001FB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_10001FBA4, 0, 0);
}

uint64_t sub_10001FBA4()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_10001FCA0;
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD00000000000003ALL, 0x80000001004FC590, sub_100020DEC, v2, v5);
}

uint64_t sub_10001FCA0()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001FDDC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10001FDDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001FE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a4;
  v35 = a2;
  v36 = a3;
  v34 = a1;
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  v31 = a6;
  v8 = sub_1004BC414();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v29 - v10;
  v30 = &v29 - v10;
  v13 = type metadata accessor for Action(0, a5, a6, v12);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v29 - v16;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v19 = &v29 - v18;
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v14 + 16))(v17, v33, v13);
  v21 = v11;
  v22 = v8;
  (*(v9 + 16))(v21, v34, v8);
  v23 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v24 = (v15 + v23 + *(v9 + 80)) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = v31;
  *(v25 + 4) = v32;
  *(v25 + 5) = v26;
  v27 = v36;
  *(v25 + 6) = v35;
  *(v25 + 7) = v27;
  (*(v14 + 32))(&v25[v23], v17, v13);
  (*(v9 + 32))(&v25[v24], v30, v22);

  sub_1001FA838(0, 0, v19, &unk_1004C8670, v25);
}

uint64_t sub_100020144(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_1000136EC;

  return v12(a6, a7);
}

uint64_t sub_10002024C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_1006013A8);
  sub_100007084(v2, qword_1006013A8);
  return sub_1004B80A4();
}

unint64_t sub_1000202C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1006013C8;
  if (!qword_1006013C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006013C8);
  }

  return result;
}

unint64_t sub_10002030C()
{
  result = qword_1006013D0;
  if (!qword_1006013D0)
  {
    sub_1004BCF34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006013D0);
  }

  return result;
}

uint64_t sub_100020374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  v7 = *(type metadata accessor for Action(0, v6, v5, a4) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v5 - 8);
  v10 = (v8 + *(v7 + 64) + *(v9 + 80)) & ~*(v9 + 80);
  swift_unknownObjectRelease();
  (*(*(v6 - 8) + 8))(v4 + v8, v6);

  (*(v9 + 8))(v4 + v10, v5);

  return swift_deallocObject();
}

uint64_t sub_10002050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  v10 = *(type metadata accessor for Action(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = (v11 + *(v10 + 64) + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v13 = v4[2];
  v14 = v4[3];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1000136EC;

  return sub_10001E34C(a1, v13, v14, v4 + v11, v4 + v12, v9, v8);
}

unint64_t sub_100020670()
{
  result = qword_1006013E8[0];
  if (!qword_1006013E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006013E8);
  }

  return result;
}

uint64_t sub_1000206C4(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_10001388C(a1, a2);
  }

  return a1;
}

uint64_t sub_1000206D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002071C(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1000130F8(a1, a2);
  }

  return a1;
}

BOOL _s9MusicCore21ActionSupportedStatusO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a4)
    {
      return 0;
    }

    return a1 == a3 && a2 == a4 || (sub_1004BD9C4() & 1) != 0;
  }

  else
  {
    return !a4;
  }
}

uint64_t sub_1000207A8()
{

  return swift_deallocObject();
}

uint64_t sub_1000207E0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000136EC;

  return sub_10001FB7C(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_1000208B4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_100020C70();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100020950(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_100020A9C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if ((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = &result[v8] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 8) = a2 & 0x7FFFFFFF;
          *(v19 + 16) = 0;
        }

        else
        {
          *(v19 + 8) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if ((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if ((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_100020C70()
{
  result = qword_100605910;
  if (!qword_100605910)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100605910);
  }

  return result;
}

uint64_t sub_100020CC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_100020CE4(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100020D40(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_100020D9C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_100020DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(type metadata accessor for Action(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  v9 = sub_1004BC414();
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  swift_unknownObjectRelease();

  (*(*(v5 - 8) + 8))(v4 + v7, v5);

  (*(v10 + 8))(v4 + v11, v9);

  return swift_deallocObject();
}

uint64_t sub_100020FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = *(type metadata accessor for Action(0, v4[4], v4[5], a4) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  v10 = *(sub_1004BC414() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = v4[6];
  v15 = v4[7];
  v16 = swift_task_alloc();
  *(v6 + 16) = v16;
  *v16 = v6;
  v16[1] = sub_10001384C;

  return sub_100020144(a1, v12, v13, v14, v15, v4 + v8, v4 + v11);
}

uint64_t sub_100021174(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000211E4()
{

  return swift_deallocObject();
}

uint64_t sub_10002121C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_100109480(a1, v4);
}

uint64_t sub_1000212D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for Action(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_1000213F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, ...)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for Action(0, v7, v8, a4) - 8);
  return sub_10001F070(a1, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v8, a2);
}

uint64_t sub_1000214BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v11 = &v23[-1] - v10;
  v23[5] = a4;
  v23[6] = a5;
  sub_100021174(a3, &v23[-1] - v10);
  v12 = sub_1004BC4B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000247E4(v11);
  }

  else
  {
    sub_1004BC4A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1004BC3E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1004BBF54();
      sub_100023770(v19 + 32, v23);

      v20 = v23[0];
      sub_1000247E4(a3);

      return v20;
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

  sub_1000247E4(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t ActionMenu.Element.id.getter()
{
  v1 = *v0;
  if ((*v0 & 0x8000000000000000) == 0)
  {
    return ActionType.rawValue.getter(v1);
  }

  v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

  return v3;
}

uint64_t ActionMenu.Element.parentMenu.getter()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    v2 = &unk_1004C887E + *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v2 = &unk_1004C884A + v1;
  }

  return *v2;
}

uint64_t ActionMenu.Element.priority.getter()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    v2 = &qword_1004C8A30[*((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
  }

  else
  {
    v2 = &qword_1004C8890[v1];
  }

  return *v2;
}

BOOL static ActionMenu.Element.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 < 0)
  {
    v3 = &qword_1004C8A30[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
  }

  else
  {
    v3 = &qword_1004C8890[v2];
  }

  v4 = *v3;
  v5 = *a2;
  if (*a2 < 0)
  {
    v6 = &qword_1004C8A30[*((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
  }

  else
  {
    v6 = &qword_1004C8890[v5];
  }

  return v4 < *v6;
}

uint64_t sub_100021818@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v4 = ActionType.rawValue.getter(v3);
    result = v5;
  }

  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_100021860(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s9MusicCore10ActionMenuC7ElementO21__derived_enum_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

BOOL sub_1000218BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    v4 = qword_1004C8A30[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_1004C8A30[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 < *v5;
  }

  v4 = qword_1004C8890[v2];
  if (v3 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_1004C8890[v3];
  return v4 < *v5;
}

BOOL sub_100021924(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 < 0)
  {
    v4 = qword_1004C8A30[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_1004C8A30[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 >= *v5;
  }

  v4 = qword_1004C8890[v3];
  if (v2 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_1004C8890[v2];
  return v4 >= *v5;
}

BOOL sub_10002198C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    v4 = qword_1004C8A30[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_1004C8A30[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 >= *v5;
  }

  v4 = qword_1004C8890[v2];
  if (v3 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_1004C8890[v3];
  return v4 >= *v5;
}

BOOL sub_1000219F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 < 0)
  {
    v4 = qword_1004C8A30[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_1004C8A30[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 < *v5;
  }

  v4 = qword_1004C8890[v3];
  if (v2 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_1004C8890[v2];
  return v4 < *v5;
}

char *sub_100021A60(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = result + 32;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_100017DD4(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v34 = a2;
  v6 = type metadata accessor for Action(0, a2, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v31 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = v27 - v9;
  v11 = v10;
  __chkstk_darwin();
  v13 = v27 - v12;
  v28 = v27 - v12;
  sub_100003ABC(&unk_100601470, &unk_1004C81B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004C50A0;
  v15 = *(v6 + 36);
  v33 = a1;
  v30 = *(a1 + v15);
  v35 = *(v7 + 16);
  v35(v13, a1, v6);
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v27[1] = v11;
  v17 = swift_allocObject();
  v19 = v36;
  v18 = v37;
  *(v17 + 2) = a2;
  *(v17 + 3) = v19;
  *(v17 + 4) = v18;
  v32 = *(v7 + 32);
  v32(&v17[v16], v28, v6);
  v20 = v29;
  v35(v29, v33, v6);
  v21 = swift_allocObject();
  *(v21 + 2) = v34;
  *(v21 + 3) = v19;
  v22 = v37;
  *(v21 + 4) = v37;
  v32(&v21[v16], v20, v6);
  v23 = v31;
  v35(v31, v33, v6);
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 2) = v34;
  *(v24 + 3) = v25;
  *(v24 + 4) = v22;
  v32(&v24[v16], v23, v6);
  *(v14 + 32) = v30;
  *(v14 + 40) = sub_100023F90;
  *(v14 + 48) = v17;
  *(v14 + 56) = sub_100023F94;
  *(v14 + 64) = v21;
  *(v14 + 72) = &unk_1004C8690;
  *(v14 + 80) = v24;
  return v14;
}

uint64_t sub_100021E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Action(0, a2, a3, a4);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100021F94, 0, 0);
}

uint64_t sub_100021F94()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = sub_1004BC4B4();
  v12 = *(v0 + 32);
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v5, v4);
  v8 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v12;
  (*(v3 + 32))(v9 + v8, v2, v4);
  sub_1000214BC(0, 0, v1, &unk_1004C8840, v9, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10002211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  v12 = type metadata accessor for Action(0, a5, a6, v11);
  *v10 = v6;
  v10[1] = sub_1000136EC;

  return Action.execute(checkSupportedStatus:)(a1, 1, v12);
}

uint64_t static ActionMenu.ElementBuilder.buildExpression(_:)(uint64_t a1)
{
  sub_100003ABC(&unk_100601470, &unk_1004C81B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C50A0;
  *(v2 + 32) = a1 | 0x8000000000000000;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;

  return v2;
}

uint64_t static ActionMenu.ElementBuilder.buildExpression(_:)()
{
  sub_100003ABC(&qword_100601268, &unk_1004C9890);
  sub_1000206D4(&unk_100601480, &qword_100601268, &unk_1004C9890, &protocol conformance descriptor for [A]);
  return sub_1004BC1F4();
}

uint64_t sub_100022310@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 6);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v4 = *(a1 + 2);
  *(a2 + 16) = *(a1 + 1);
  *(a2 + 32) = v4;
  *(a2 + 48) = v3;
}

uint64_t static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v34 = a2;
  v6 = type metadata accessor for Action(0, a2, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v31 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = v27 - v9;
  v11 = v10;
  __chkstk_darwin();
  v13 = v27 - v12;
  v28 = v27 - v12;
  sub_100003ABC(&qword_100601358, &qword_1004C9850);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004C50A0;
  v15 = *(v6 + 36);
  v33 = a1;
  v30 = *(a1 + v15);
  v35 = *(v7 + 16);
  v35(v13, a1, v6);
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v27[1] = v11;
  v17 = swift_allocObject();
  v19 = v36;
  v18 = v37;
  *(v17 + 2) = a2;
  *(v17 + 3) = v19;
  *(v17 + 4) = v18;
  v32 = *(v7 + 32);
  v32(&v17[v16], v28, v6);
  v20 = v29;
  v35(v29, v33, v6);
  v21 = swift_allocObject();
  *(v21 + 2) = v34;
  *(v21 + 3) = v19;
  v22 = v37;
  *(v21 + 4) = v37;
  v32(&v21[v16], v20, v6);
  v23 = v31;
  v35(v31, v33, v6);
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 2) = v34;
  *(v24 + 3) = v25;
  *(v24 + 4) = v22;
  v32(&v24[v16], v23, v6);
  *(v14 + 32) = v30;
  *(v14 + 40) = sub_100024AA8;
  *(v14 + 48) = v17;
  *(v14 + 56) = sub_100024A98;
  *(v14 + 64) = v21;
  *(v14 + 72) = &unk_1004C86A0;
  *(v14 + 80) = v24;
  return v14;
}

uint64_t sub_100022678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Action(0, a2, a3, a4);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10002277C, 0, 0);
}

uint64_t sub_10002277C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = sub_1004BC4B4();
  v12 = *(v0 + 32);
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v5, v4);
  v8 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v12;
  (*(v3 + 32))(v9 + v8, v2, v4);
  sub_1000214BC(0, 0, v1, &unk_1004C8830, v9, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100022904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  v12 = type metadata accessor for Action(0, a5, a6, v11);
  *v10 = v6;
  v10[1] = sub_10001384C;

  return Action.execute(checkSupportedStatus:)(a1, 1, v12);
}

uint64_t static ActionBuilder.buildExpression(_:)(__int128 *a1)
{
  sub_100003ABC(&qword_100601358, &qword_1004C9850);
  v2 = swift_allocObject();
  v3 = *(a1 + 6);
  v4 = *a1;
  *(v2 + 16) = xmmword_1004C50A0;
  *(v2 + 32) = v4;
  v5 = a1[2];
  *(v2 + 48) = a1[1];
  *(v2 + 64) = v5;
  *(v2 + 80) = v3;

  return v2;
}

uint64_t sub_100022A64(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100017758(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100022B9C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100017DD4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100022C94(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_10001813C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[2 * v7 + 32], v6 + 32, 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100022DAC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000184FC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100003ABC(&qword_100606050, &qword_1004D2CC0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100022EB4(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100017CC8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10002302C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_100023170(char *result)
{
  v3 = *(result + 2);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100017CC8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = (v9 - v11);
  result = sub_100023690(&v29, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v13 = *(v4 + 2);
    v14 = __OFADD__(v13, result);
    v15 = &result[v13];
    if (v14)
    {
      __break(1u);
      goto LABEL_32;
    }

    *(v4 + 2) = v15;
  }

  if (result != v12)
  {
LABEL_13:

    *v1 = v4;
    return result;
  }

LABEL_16:
  if (!v30)
  {
    goto LABEL_13;
  }

  v16 = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
LABEL_34:
    __break(1u);
  }

  else if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = v29;
    if (v16 < *(v29 + 16))
    {
      v18 = *(v4 + 2);
      v19 = v29 + 16 * v16;
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);

      while (1)
      {
LABEL_22:
        v22 = *(v4 + 3);
        v23 = v22 >> 1;
        if ((v22 >> 1) < v18 + 1)
        {
          result = sub_100017CC8((v22 > 1), v18 + 1, 1, v4);
          v4 = result;
          v23 = *(result + 3) >> 1;
          v24 = v18 - v23;
          if (v18 < v23)
          {
LABEL_24:
            v28 = v23;
            v2 = 0;
            v25 = (v17 + 24 + 16 * v16);
            v27 = v18;
            v26 = &v4[16 * v18 + 40];
            while (1)
            {
              *(v26 - 1) = v21;
              *v26 = v20;
              if (!(v16 + v2))
              {
                break;
              }

              if ((v16 + v2 - 1) >= *(v17 + 16))
              {
                __break(1u);
                goto LABEL_34;
              }

              v21 = *(v25 - 1);
              v20 = *v25;

              --v2;
              v25 -= 2;
              v26 += 16;
              if (v24 == v2)
              {
                v16 += v2;
                v18 = v28;
                *(v4 + 2) = v28;
                goto LABEL_22;
              }
            }

LABEL_32:
            *(v4 + 2) = v27 - v2 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v24 = v18 - v23;
          if (v18 < v23)
          {
            goto LABEL_24;
          }
        }

        *(v4 + 2) = v18;
      }
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1000233B4(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1004BD6A4();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1004BD6A4();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1000234B4(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_100018BA4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[32 * v7 + 32], v6 + 32, 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000235A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1004BD6A4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1004BD6A4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100133248();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100023D18(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_100023690(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v13 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v13;
    return v6;
  }

  if (!a3)
  {
    v13 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 16 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *v11;
        *v8 = *(v11 - 1);
        v8[1] = v12;
        if (!(v10 + v9))
        {

          v13 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 2;
        v8 += 2;
        v13 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v13 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100023770@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002382C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004BD6A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004BD6A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000206D4(&qword_1006014E8, &qword_1006014E0, &qword_1004C8820, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100003ABC(&qword_1006014E0, &qword_1004C8820);
            v9 = sub_10024DEA4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Whitetail.Binding(0, a2);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000239D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004BD6A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004BD6A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000206D4(&unk_1006014D0, &qword_1006014C8, &qword_1004C8818, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100003ABC(&qword_1006014C8, &qword_1004C8818);
            v9 = sub_10024DF2C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for BagProvider.Observer(0, a2);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100023B74(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004BD6A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004BD6A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000206D4(&qword_1006014C0, &qword_100606F60, &unk_1004D3F60, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100003ABC(&qword_100606F60, &unk_1004D3F60);
            v9 = sub_10024DFAC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100024680(0, a2, a3);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100023D18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004BD6A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004BD6A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000206D4(&qword_1006014A8, &qword_1006014A0, &qword_1004C8810, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100003ABC(&qword_1006014A0, &qword_1004C8810);
            v9 = sub_10024E034(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100003ABC(&qword_1006085E0, &qword_1004C8808);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s9MusicCore10ActionMenuC7ElementO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    v10 = *a1;
    v2 = *(a1 + 3);
    v11 = *(a1 + 1);
    v12 = v2;
    v13 = *(a1 + 5);
    if ((*a2 & 0x8000000000000000) == 0)
    {
      v6 = *a2;
      v7 = *(a2 + 1);
      v8 = *(a2 + 3);
      v9 = *(a2 + 5);
      v3 = static ActionMenu.Item.== infix(_:_:)(&v10, &v6);
      return v3 & 1;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if ((*a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  if (*((*a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == *((*a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) && *((*a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18) == *((*a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18))
  {
    v3 = 1;
    return v3 & 1;
  }

  return sub_1004BD9C4();
}

uint64_t sub_100023F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = *(type metadata accessor for Action(0, v6, v7, a4) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000136EC;

  return sub_100021E90(v4 + v10, v6, v7, v8);
}

char *sub_100024094(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = result + 32;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_100017EFC(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1000241D4@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 4);
  v6 = *(type metadata accessor for Action(0, v4, *(v2 + 3), a1) - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  a2[3] = v4;
  a2[4] = v5;
  v8 = sub_1000133B0(a2);
  v9 = *(*(v4 - 8) + 16);

  return v9(v8, &v2[v7], v4);
}

uint64_t sub_1000242F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for Action(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 40) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_100024404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = *(type metadata accessor for Action(0, v6, v7, a4) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10001384C;

  return sub_100022678(v4 + v10, v6, v7, v8);
}

unint64_t sub_10002450C()
{
  result = qword_100601490;
  if (!qword_100601490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601490);
  }

  return result;
}

uint64_t sub_10002456C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 56))
  {
    return (*a1 + 15);
  }

  v3 = (((*a1 >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*a1 >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000245C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 7) - 8 * a2) << 60;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
    }
  }

  return result;
}

unint64_t sub_100024680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1006014B0;
  if (!qword_1006014B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006014B0);
  }

  return result;
}

uint64_t sub_1000246D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for Action(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_10001384C;

  return sub_100022904(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t sub_1000247E4(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002484C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(type metadata accessor for Action(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(*(v5 - 8) + 8))(v4 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100024968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for Action(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_10001384C;

  return sub_10002211C(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t Actions.MetricsReportingContext.actionContext.getter()
{
  v1 = *v0;
  sub_100024AE0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_100024AE0(uint64_t a1, unint64_t a2)
{
  if (a2 != 12)
  {
    return sub_100024AF0(a1, a2);
  }

  return a1;
}

uint64_t sub_100024AF0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t Actions.MetricsReportingContext.actionContext.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100024B3C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_100024B3C(uint64_t a1, unint64_t a2)
{
  if (a2 != 12)
  {
    return sub_100024B4C(a1, a2);
  }

  return a1;
}

uint64_t sub_100024B4C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t type metadata accessor for Actions.MetricsReportingContext(uint64_t a1)
{
  result = qword_100601590;
  if (!qword_100601590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Actions.MetricsReportingContext.page.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Actions.MetricsReportingContext(0) + 20);

  return sub_100024C58(a1, v3);
}

uint64_t sub_100024C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Actions.MetricsReportingContext.pageContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.MetricsReportingContext(0) + 24));

  return v1;
}

uint64_t Actions.MetricsReportingContext.pageContext.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.MetricsReportingContext(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.MetricsReportingContext.locations.getter()
{
  type metadata accessor for Actions.MetricsReportingContext(0);
}

uint64_t Actions.MetricsReportingContext.locations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Actions.MetricsReportingContext(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Actions.MetricsReportingContext.impressions.getter()
{
  type metadata accessor for Actions.MetricsReportingContext(0);
}

uint64_t Actions.MetricsReportingContext.impressions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Actions.MetricsReportingContext(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Actions.MetricsReportingContext.sharedListeningContext.setter(char a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Actions.MetricsReportingContext(0);
  v8 = v3 + *(result + 36);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  return result;
}

uint64_t Actions.MetricsReportingContext.init(actionContext:page:pageContext:locations:impressions:sharedListeningContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for Actions.MetricsReportingContext(0);
  v17 = v16[5];
  v18 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[7];
  v20 = &a9[v16[6]];
  v21 = v16[8];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_100024C58(a3, &a9[v17]);
  *v20 = a4;
  *(v20 + 1) = a5;
  *&a9[v19] = a6;
  *&a9[v21] = a7;
  v23 = &a9[v16[9]];
  *v23 = a8;
  *(v23 + 1) = a10;
  *(v23 + 2) = a11;
  return result;
}

uint64_t static Actions.reportClickEvent(targetIdentifier:targetType:actionType:actionURL:actionDetails:reportingContext:)(unsigned int (*a1)(uint64_t, uint64_t, int *), uint64_t a2, int a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, uint64_t *a10)
{
  v86 = a7;
  v87 = a8;
  v85 = a6;
  LODWORD(v88) = a4;
  LODWORD(v77) = a3;
  v83 = a2;
  v71 = a1;
  v84 = a9;
  sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  __chkstk_darwin();
  v81 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79 = &v71 - v12;
  __chkstk_darwin();
  v76 = &v71 - v13;
  __chkstk_darwin();
  v75 = &v71 - v14;
  __chkstk_darwin();
  v74 = &v71 - v15;
  __chkstk_darwin();
  v72 = &v71 - v16;
  __chkstk_darwin();
  v18 = (&v71 - v17);
  __chkstk_darwin();
  v20 = &v71 - v19;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v73 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v71 - v22;
  v24 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v71 - v27;
  sub_10000F778(a5, v23, &qword_100600DE0, &unk_1004C66D0);
  v28 = type metadata accessor for Actions.MetricsReportingContext(0);
  v29 = *(a10 + v28[7]);
  v31 = *a10;
  v30 = a10[1];
  sub_10000F778(a10 + v28[5], v20, &qword_1006014F8, &unk_1004C8AA0);
  v78 = v28;
  v32 = v28[8];
  v82 = a10;
  v33 = *(a10 + v32);
  v26[v24[19]] = 0;
  v34 = &v26[v24[20]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = v83;
  *v26 = v71;
  *(v26 + 1) = v35;
  v26[16] = v77;
  v26[17] = v88;
  sub_100025B04(v23, &v26[v24[7]], &qword_100600DE0, &unk_1004C66D0);
  *&v26[v24[8]] = v29;
  v36 = &v26[v24[9]];
  *v36 = v31;
  v36[1] = v30;
  v37 = &v26[v24[10]];
  v38 = v86;
  *v37 = v85;
  *(v37 + 1) = v38;
  *(v37 + 2) = v87;
  *(v37 + 12) = v84;
  v77 = v20;
  sub_10000F778(v20, v18, &qword_1006014F8, &unk_1004C8AA0);
  v39 = type metadata accessor for MetricsEvent.Page(0);
  v40 = *(v39 - 1);
  v71 = *(v40 + 48);
  v88 = v40 + 48;
  if (v71(v18, 1, v39) == 1)
  {

    sub_100024AE0(v31, v30);

    sub_100025A80(v85, v86, v87, v84);
    sub_100007214(v18, &qword_1006014F8, &unk_1004C8AA0);
    v41 = v33;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v44 = v33;
    v42 = *v18;
    v43 = v18[1];

    sub_100024AE0(v31, v30);

    sub_100025A80(v85, v86, v87, v84);

    sub_100028FD4(v18, type metadata accessor for MetricsEvent.Page);
    v41 = v44;
  }

  v45 = &v26[v24[12]];
  *v45 = v42;
  *(v45 + 1) = v43;
  v46 = v77;
  v47 = v72;
  sub_10000F778(v77, v72, &qword_1006014F8, &unk_1004C8AA0);
  v48 = v71;
  v49 = v71(v47, 1, v39);
  v50 = v76;
  if (v49 == 1)
  {
    sub_100007214(v47, &qword_1006014F8, &unk_1004C8AA0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = *(v47 + 16);
    v52 = *(v47 + 24);

    sub_100028FD4(v47, type metadata accessor for MetricsEvent.Page);
  }

  v53 = &v26[v24[13]];
  *v53 = v51;
  *(v53 + 1) = v52;
  v54 = v74;
  v55 = v75;
  sub_10000F778(v46, v74, &qword_1006014F8, &unk_1004C8AA0);
  if (v48(v54, 1, v39) == 1)
  {
    sub_100007214(v54, &qword_1006014F8, &unk_1004C8AA0);
    v56 = sub_1004B6B04();
    v57 = v73;
    (*(*(v56 - 8) + 56))(v73, 1, 1, v56);
  }

  else
  {
    v58 = v73;
    sub_10000F778(v54 + v39[6], v73, &qword_100600DE0, &unk_1004C66D0);
    v59 = v54;
    v57 = v58;
    sub_100028FD4(v59, type metadata accessor for MetricsEvent.Page);
  }

  v60 = v79;
  sub_100025B04(v57, &v26[v24[14]], &qword_100600DE0, &unk_1004C66D0);
  sub_10000F778(v46, v55, &qword_1006014F8, &unk_1004C8AA0);
  if (v48(v55, 1, v39) == 1)
  {
    sub_100007214(v55, &qword_1006014F8, &unk_1004C8AA0);
    v61 = 0;
  }

  else
  {
    v61 = *(v55 + v39[7]);

    sub_100028FD4(v55, type metadata accessor for MetricsEvent.Page);
  }

  *&v26[v24[15]] = v61;
  sub_10000F778(v46, v50, &qword_1006014F8, &unk_1004C8AA0);
  if (v48(v50, 1, v39) == 1)
  {
    sub_100007214(v50, &qword_1006014F8, &unk_1004C8AA0);
    v62 = 1;
  }

  else
  {
    v62 = *(v50 + v39[9]);
    sub_100028FD4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v26[v24[16]] = v62;
  sub_10000F778(v46, v60, &qword_1006014F8, &unk_1004C8AA0);
  if (v48(v60, 1, v39) == 1)
  {
    sub_100007214(v60, &qword_1006014F8, &unk_1004C8AA0);
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v65 = (v60 + v39[8]);
    v63 = *v65;
    v64 = v65[1];

    sub_100028FD4(v60, type metadata accessor for MetricsEvent.Page);
  }

  v66 = &v26[v24[18]];
  *v66 = v63;
  *(v66 + 1) = v64;
  v67 = v81;
  sub_100025B04(v46, v81, &qword_1006014F8, &unk_1004C8AA0);
  if (v48(v67, 1, v39) == 1)
  {
    sub_100007214(v67, &qword_1006014F8, &unk_1004C8AA0);
    v68 = 2;
  }

  else
  {
    v68 = *(v67 + v39[11]);
    sub_100028FD4(v67, type metadata accessor for MetricsEvent.Page);
  }

  v26[v24[17]] = v68;
  *&v26[v24[11]] = v41;
  v69 = v80;
  sub_100025B6C(v26, v80);
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v82 + v78[6]), *(v82 + v78[6] + 8), *(v82 + v78[9]), *(v82 + v78[9] + 8), *(v82 + v78[9] + 16));
  return sub_100028FD4(v69, type metadata accessor for MetricsEvent.Click);
}

id sub_100025A80(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE1(a4) != 255)
  {
    return sub_100025A94(a1, a2, a3, a4, SBYTE1(a4));
  }

  return a1;
}

id sub_100025A94(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  if (a5 == 1)
  {
    return sub_100025AC0(result, a2, a3);
  }

  return result;
}

id sub_100025AC0(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;

    return v3;
  }

  return result;
}

uint64_t sub_100025B04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003ABC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100025B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsEvent.Click(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MetricsEvent.Click.ActionDetails.Key.DestinationType.init(rawValue:)(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A3958;
  v7._object = a2;
  v4 = sub_1004BD764(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t MetricsEvent.Click.ActionDetails.Key.DestinationType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7473696C79616C70;
  }

  else
  {
    return 0x7972617262696CLL;
  }
}

uint64_t sub_100025C5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473696C79616C70;
  }

  else
  {
    v3 = 0x7972617262696CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7473696C79616C70;
  }

  else
  {
    v5 = 0x7972617262696CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

Swift::Int sub_100025D04()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100025D88(uint64_t a1)
{
  sub_1004BBF84();
}

Swift::Int sub_100025DF8()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100025E78@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005A3958;
  v8._object = v3;
  v5 = sub_1004BD764(v4, v8);

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

void sub_100025ED8(uint64_t *a1@<X8>)
{
  v2 = 0x7972617262696CLL;
  if (*v1)
  {
    v2 = 0x7473696C79616C70;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

BOOL MetricsEvent.Click.ActionDetails.Key.PlayType.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A39A8;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  return v4 != 0;
}

Swift::Int sub_100025F84()
{
  sub_1004BDBA4();
  sub_1004BBF84();
  return sub_1004BDBF4();
}

Swift::Int sub_100026008()
{
  sub_1004BDBA4();
  sub_1004BBF84();
  return sub_1004BDBF4();
}

uint64_t sub_100026064@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005A39E0;
  v7._object = v3;
  v5 = sub_1004BD764(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t MetricsEvent.Click.ActionDetails.Key.NavigationType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6D75626C41;
  v2 = 0x7473696C79616C50;
  if (a1 != 2)
  {
    v2 = 0x434174726F706552;
  }

  if (a1)
  {
    v1 = 0x747369747241;
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

Swift::Int sub_100026170()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100026238(uint64_t a1)
{
  sub_1004BBF84();
}

Swift::Int sub_1000262EC()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

unint64_t sub_1000263B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyO14NavigationTypeO8rawValueAKSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000263E0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6D75626C41;
  v4 = 0xE800000000000000;
  v5 = 0x7473696C79616C50;
  if (*v1 != 2)
  {
    v5 = 0x434174726F706552;
    v4 = 0xEE006E7265636E6FLL;
  }

  if (*v1)
  {
    v3 = 0x747369747241;
    v2 = 0xE600000000000000;
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

void *MetricsEvent.Click.ActionDetails.init(_:)(uint64_t a1)
{
  v1 = sub_100029080(a1);

  return v1;
}

uint64_t MusicItem.metricsContentType.getter(uint64_t a1)
{
  v3 = __chkstk_darwin();
  (*(v5 + 16))(v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v3);
  sub_100003ABC(&qword_100601500, &qword_1004C8AB0);
  if (swift_dynamicCast())
  {
    sub_100013414(v23, v25);
    v6 = v26;
    v7 = v27;
    sub_100009178(v25, v26);
    v8 = (*(v7 + 8))(v6, v7);
    sub_100004C6C(v25);
    return v8;
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_100007214(v23, &qword_100601508, &qword_1004C8AB8);
    v25[0] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v10 = sub_1004BBF04();
    v12 = v11;
    sub_100029474(1, v10, v11);
    v13 = sub_1004BD184();
    v15 = v14;

    v16 = sub_100029510(1uLL, v10, v12);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    *&v23[0] = v13;
    *(&v23[0] + 1) = v15;
    v25[0] = v16;
    v25[1] = v18;
    v25[2] = v20;
    v26 = v22;
    sub_1000295C0();
    sub_1004BC004();

    return *&v23[0];
  }
}

uint64_t MusicItem.metricsTargetIdentifier.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin();
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v7 = *(v3 + 16);
  v7(v17 - v8, v1, a1, v6);
  sub_100003ABC(&qword_100601500, &qword_1004C8AB0);
  if (!swift_dynamicCast())
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_100007214(v17, &qword_100601508, &qword_1004C8AB8);
    (v7)(v5, v1, a1);
    sub_100003ABC(&qword_100601518, &unk_1004C8AC0);
    if (swift_dynamicCast())
    {
      v12 = *(&v20 + 1);
      v13 = v21;
      sub_100009178(&v19, *(&v20 + 1));
      v11 = (*(v13 + 8))(v12, v13);
      if (v14)
      {
        goto LABEL_5;
      }

      sub_100004C6C(&v19);
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      sub_100007214(&v19, &unk_100606F20, &qword_1004CAC90);
    }

    return 0x497972617262694CLL;
  }

  sub_100013414(v17, &v19);
  v9 = *(&v20 + 1);
  v10 = v21;
  sub_100009178(&v19, *(&v20 + 1));
  v11 = (*(v10 + 16))(v9, v10);
LABEL_5:
  v15 = v11;
  sub_100004C6C(&v19);
  return v15;
}

uint64_t sub_100026940()
{
  v0 = sub_1004B7BB4();
  v99 = *(v0 - 8);
  v100 = v0;
  __chkstk_darwin();
  v98 = &v98 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004B7B64();
  v102 = *(v2 - 8);
  v103 = v2;
  __chkstk_darwin();
  v101 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B7CF4();
  v105 = *(v4 - 8);
  v106 = v4;
  __chkstk_darwin();
  v104 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004B7A34();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BAD04();
  v109 = *(v10 - 8);
  __chkstk_darwin();
  v108 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BB384();
  v107 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004BB9B4();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BB9C4();
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v7 + 32))(v9, v18, v6);
    v110 = v6;
    sub_100003ABC(&qword_100601650, &qword_1004C8E38);
    v20 = sub_1004BBF04();
    v22 = v21;
    sub_100029474(1, v20, v21);
    v23 = sub_1004BD184();
    v25 = v24;

    v26 = sub_100029510(1uLL, v20, v22);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v114 = v23;
    v115 = v25;
    v110 = v26;
    v111 = v28;
    v112 = v30;
    v113 = v32;
    sub_1000295C0();
    sub_1004BC004();

    v33 = v114;
    (*(v7 + 8))(v9, v6);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v16 + 96))(v18, v15);
    v35 = v108;
    v34 = v109;
    (*(v109 + 32))(v108, v18, v10);
    v110 = v10;
    sub_100003ABC(&qword_100601620, &qword_1004C8E08);
    v36 = sub_1004BBF04();
    v38 = v37;
    sub_100029474(1, v36, v37);
    v39 = sub_1004BD184();
    v41 = v40;

    v42 = sub_100029510(1uLL, v36, v38);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v114 = v39;
    v115 = v41;
    v110 = v42;
    v111 = v44;
    v112 = v46;
    v113 = v48;
    sub_1000295C0();
    sub_1004BC004();

    v33 = v114;
    (*(v34 + 8))(v35, v10);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v16 + 96))(v18, v15);
    v49 = v107;
    (*(v107 + 32))(v14, v18, v12);
    v110 = v12;
    sub_100003ABC(&qword_100601610, &qword_1004C8DF8);
    v50 = sub_1004BBF04();
    v52 = v51;
    sub_100029474(1, v50, v51);
    v53 = sub_1004BD184();
    v55 = v54;

    v56 = sub_100029510(1uLL, v50, v52);
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v114 = v53;
    v115 = v55;
    v110 = v56;
    v111 = v58;
    v112 = v60;
    v113 = v62;
    sub_1000295C0();
    sub_1004BC004();

    v33 = v114;
    (*(v49 + 8))(v14, v12);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v16 + 96))(v18, v15);
    v64 = v104;
    v63 = v105;
    v65 = v106;
    (*(v105 + 32))(v104, v18, v106);
    v110 = v65;
    sub_100003ABC(&qword_100601648, &qword_1004C8E30);
    v66 = sub_1004BBF04();
    v68 = v67;
    sub_100029474(1, v66, v67);
    v69 = sub_1004BD184();
    v71 = v70;

    v72 = sub_100029510(1uLL, v66, v68);
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v114 = v69;
    v115 = v71;
    v110 = v72;
    v111 = v74;
    v112 = v76;
    v113 = v78;
    sub_1000295C0();
    sub_1004BC004();

    v33 = v114;
    (*(v63 + 8))(v64, v65);
  }

  else
  {
    if (v19 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
    {
      (*(v16 + 96))(v18, v15);
      v80 = v101;
      v79 = v102;
      v81 = v103;
      (*(v102 + 32))(v101, v18, v103);
      v110 = v81;
      v82 = &unk_100601640;
      v83 = &unk_1004C8E28;
    }

    else
    {
      if (v19 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        (*(v16 + 8))(v18, v15);
        return 1735290739;
      }

      (*(v16 + 96))(v18, v15);
      v80 = v98;
      v79 = v99;
      v81 = v100;
      (*(v99 + 32))(v98, v18, v100);
      v110 = v81;
      v82 = &unk_100601638;
      v83 = &unk_1004C8E20;
    }

    sub_100003ABC(v82, v83);
    v84 = sub_1004BBF04();
    v86 = v85;
    sub_100029474(1, v84, v85);
    v87 = sub_1004BD184();
    v89 = v88;

    v90 = sub_100029510(1uLL, v84, v86);
    v92 = v91;
    v94 = v93;
    v96 = v95;

    v114 = v87;
    v115 = v89;
    v110 = v90;
    v111 = v92;
    v112 = v94;
    v113 = v96;
    sub_1000295C0();
    sub_1004BC004();

    v33 = v114;
    (*(v79 + 8))(v80, v81);
  }

  return v33;
}

uint64_t sub_10002731C()
{
  v0 = sub_1004B7BB4();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin();
  v37 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004B7B64();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin();
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B7CF4();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin();
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004B7A34();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BAD04();
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin();
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004BB384();
  v46 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004BB9B4();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BB9C4();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v17 + 96))(v19, v16);
    (*(v7 + 32))(v9, v19, v6);
    v21 = sub_1004B7A24();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    if (!v23)
    {
      return 0x497972617262694CLL;
    }

    return v21;
  }

  if (v20 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v17 + 96))(v19, v16);
    v25 = v47;
    v24 = v48;
    (*(v47 + 32))(v12, v19, v48);
    v21 = sub_1004BACB4();
    v27 = v26;
    (*(v25 + 8))(v12, v24);
  }

  else
  {
    if (v20 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v17 + 96))(v19, v16);
      v28 = v46;
      (*(v46 + 32))(v15, v19, v13);
      v21 = sub_1004BB2B4();
      v30 = v29;
      (*(v28 + 8))(v15, v13);
      if (!v30)
      {
        return 0x497972617262694CLL;
      }

      return v21;
    }

    if (v20 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
    {
      (*(v17 + 96))(v19, v16);
      v32 = v43;
      v31 = v44;
      v33 = v45;
      (*(v44 + 32))(v43, v19, v45);
      v34 = sub_1004B7CE4();
    }

    else if (v20 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
    {
      (*(v17 + 96))(v19, v16);
      v32 = v40;
      v31 = v41;
      v33 = v42;
      (*(v41 + 32))(v40, v19, v42);
      v34 = sub_1004B7B54();
    }

    else
    {
      if (v20 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        (*(v17 + 8))(v19, v16);
        return 0x497972617262694CLL;
      }

      (*(v17 + 96))(v19, v16);
      v32 = v37;
      v31 = v38;
      v33 = v39;
      (*(v38 + 32))(v37, v19, v39);
      v34 = sub_1004B7BA4();
    }

    v21 = v34;
    v27 = v35;
    (*(v31 + 8))(v32, v33);
  }

  if (v27)
  {
    return v21;
  }

  return 0x497972617262694CLL;
}

uint64_t sub_1000279B8()
{
  v1 = sub_1004BAD04();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004BB384();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004BB4D4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v0, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for Track.song(_:))
  {
    (*(v10 + 96))(v13, v9);
    (*(v6 + 32))(v8, v13, v5);
    v44 = v5;
    sub_100003ABC(&qword_100601610, &qword_1004C8DF8);
    v15 = sub_1004BBF04();
    v17 = v16;
    sub_100029474(1, v15, v16);
    v18 = sub_1004BD184();
    v20 = v19;

    v21 = sub_100029510(1uLL, v15, v17);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v48 = v18;
    v49 = v20;
    v44 = v21;
    v45 = v23;
    v46 = v25;
    v47 = v27;
    sub_1000295C0();
    sub_1004BC004();

    v28 = v48;
    (*(v6 + 8))(v8, v5);
  }

  else if (v14 == enum case for Track.musicVideo(_:))
  {
    (*(v10 + 96))(v13, v9);
    (*(v2 + 32))(v4, v13, v1);
    v44 = v1;
    sub_100003ABC(&qword_100601620, &qword_1004C8E08);
    v29 = sub_1004BBF04();
    v31 = v30;
    sub_100029474(1, v29, v30);
    v32 = sub_1004BD184();
    v34 = v33;

    v35 = sub_100029510(1uLL, v29, v31);
    v37 = v36;
    v39 = v38;
    v40 = v2;
    v42 = v41;

    v48 = v32;
    v49 = v34;
    v44 = v35;
    v45 = v37;
    v46 = v39;
    v47 = v42;
    sub_1000295C0();
    sub_1004BC004();

    v28 = v48;
    (*(v40 + 8))(v4, v1);
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    return 1735290739;
  }

  return v28;
}

uint64_t sub_100027E00()
{
  v1 = v0;
  v2 = sub_1004BAD04();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004BB384();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BB4D4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for Track.song(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    v16 = sub_1004BB2B4();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    if (!v18)
    {
      return 0x497972617262694CLL;
    }

    return v16;
  }

  if (v15 == enum case for Track.musicVideo(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v3 + 32))(v5, v14, v2);
    v16 = sub_1004BACB4();
    v20 = v19;
    (*(v3 + 8))(v5, v2);
    if (v20)
    {
      return v16;
    }
  }

  else
  {
    (*(v11 + 8))(v14, v10);
  }

  return 0x497972617262694CLL;
}

uint64_t sub_100028120()
{
  v0 = sub_1004BB384();
  v98 = *(v0 - 8);
  v99 = v0;
  __chkstk_darwin();
  v97 = &v96 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004BBA84();
  v101 = *(v2 - 8);
  v102 = v2;
  __chkstk_darwin();
  v100 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004BAD04();
  v104 = *(v4 - 8);
  v105 = v4;
  __chkstk_darwin();
  v103 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004BB564();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BB434();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004B7994();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B79A4();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicPin.Item.album(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v106 = v10;
    sub_100003ABC(&qword_100601630, &qword_1004C8E18);
    v19 = sub_1004BBF04();
    v21 = v20;
    sub_100029474(1, v19, v20);
    v22 = sub_1004BD184();
    v24 = v23;

    v25 = sub_100029510(1uLL, v19, v21);
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v110 = v22;
    v111 = v24;
    v106 = v25;
    v107 = v27;
    v108 = v29;
    v109 = v31;
    sub_1000295C0();
    sub_1004BC004();

    v32 = v110;
    (*(v11 + 8))(v13, v10);
  }

  else if (v18 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v33 = v7;
    (*(v7 + 32))(v9, v17, v6);
    v106 = v6;
    sub_100003ABC(&qword_100601628, &qword_1004C8E10);
    v34 = sub_1004BBF04();
    v36 = v35;
    sub_100029474(1, v34, v35);
    v37 = sub_1004BD184();
    v39 = v38;

    v40 = sub_100029510(1uLL, v34, v36);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v110 = v37;
    v111 = v39;
    v106 = v40;
    v107 = v42;
    v108 = v44;
    v109 = v46;
    sub_1000295C0();
    sub_1004BC004();

    v32 = v110;
    (*(v33 + 8))(v9, v6);
  }

  else if (v18 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v15 + 96))(v17, v14);
    v47 = v103;
    v48 = v104;
    v49 = v105;
    (*(v104 + 32))(v103, v17, v105);
    v106 = v49;
    sub_100003ABC(&qword_100601620, &qword_1004C8E08);
    v50 = sub_1004BBF04();
    v52 = v51;
    sub_100029474(1, v50, v51);
    v53 = sub_1004BD184();
    v55 = v54;

    v56 = sub_100029510(1uLL, v50, v52);
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v110 = v53;
    v111 = v55;
    v106 = v56;
    v107 = v58;
    v108 = v60;
    v109 = v62;
    sub_1000295C0();
    sub_1004BC004();

    v32 = v110;
    (*(v48 + 8))(v47, v49);
  }

  else if (v18 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v64 = v100;
    v63 = v101;
    v65 = v102;
    (*(v101 + 32))(v100, v17, v102);
    v106 = v65;
    sub_100003ABC(&qword_100601618, &qword_1004C8E00);
    v66 = sub_1004BBF04();
    v68 = v67;
    sub_100029474(1, v66, v67);
    v69 = sub_1004BD184();
    v71 = v70;

    v72 = sub_100029510(1uLL, v66, v68);
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v110 = v69;
    v111 = v71;
    v106 = v72;
    v107 = v74;
    v108 = v76;
    v109 = v78;
    sub_1000295C0();
    sub_1004BC004();

    v32 = v110;
    (*(v63 + 8))(v64, v65);
  }

  else if (v18 == enum case for MusicPin.Item.song(_:))
  {
    (*(v15 + 96))(v17, v14);
    v80 = v97;
    v79 = v98;
    v81 = v99;
    (*(v98 + 32))(v97, v17, v99);
    v106 = v81;
    sub_100003ABC(&qword_100601610, &qword_1004C8DF8);
    v82 = sub_1004BBF04();
    v84 = v83;
    sub_100029474(1, v82, v83);
    v85 = sub_1004BD184();
    v87 = v86;

    v88 = sub_100029510(1uLL, v82, v84);
    v90 = v89;
    v92 = v91;
    v94 = v93;

    v110 = v85;
    v111 = v87;
    v106 = v88;
    v107 = v90;
    v108 = v92;
    v109 = v94;
    sub_1000295C0();
    sub_1004BC004();

    v32 = v110;
    (*(v79 + 8))(v80, v81);
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    return 0;
  }

  return v32;
}

uint64_t sub_100028A14()
{
  v0 = sub_1004BB384();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin();
  v36 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004BBA84();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin();
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004BAD04();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin();
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004BB564();
  v44 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BB434();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004B7994();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B79A4();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicPin.Item.album(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v19 = sub_1004BB3D4();
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    if (!v21)
    {
      return 0x507972617262694CLL;
    }

    return v19;
  }

  if (v18 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v22 = v44;
    (*(v44 + 32))(v9, v17, v7);
    v19 = sub_1004BB534();
    v24 = v23;
    (*(v22 + 8))(v9, v7);
    if (!v24)
    {
      return 0x507972617262694CLL;
    }

    return v19;
  }

  if (v18 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v15 + 96))(v17, v14);
    v26 = v42;
    v25 = v43;
    (*(v42 + 32))(v6, v17, v43);
    v19 = sub_1004BACB4();
    v28 = v27;
    (*(v26 + 8))(v6, v25);
  }

  else
  {
    if (v18 == enum case for MusicPin.Item.playlist(_:))
    {
      (*(v15 + 96))(v17, v14);
      v30 = v39;
      v29 = v40;
      v31 = v41;
      (*(v40 + 32))(v39, v17, v41);
      v32 = sub_1004BB944();
    }

    else
    {
      if (v18 != enum case for MusicPin.Item.song(_:))
      {
        (*(v15 + 8))(v17, v14);
        return 0x507972617262694CLL;
      }

      (*(v15 + 96))(v17, v14);
      v30 = v36;
      v29 = v37;
      v31 = v38;
      (*(v37 + 32))(v36, v17, v38);
      v32 = sub_1004BB2B4();
    }

    v19 = v32;
    v28 = v33;
    (*(v29 + 8))(v30, v31);
  }

  if (v28)
  {
    return v19;
  }

  return 0x507972617262694CLL;
}

uint64_t sub_100028FD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t _s9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyO14NavigationTypeO8rawValueAKSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A3A18;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void *sub_100029080(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  for (i = (a1 + 48); ; i += 24)
  {
    v4 = *(i - 2);
    v5 = *(i - 1);
    v6 = *i;
    v38 = v4;
    if (v6 <= 1)
    {
      if (*i)
      {
        sub_10000E7F4();
        v17 = sub_1004BD1E4();
        v36 = v18;
        v37 = v17;

        v14 = 0xE500000000000000;
        v13 = 0x6F54646461;
      }

      else
      {
        sub_100029FF0(v4, v5, 0);

        v14 = 0xE400000000000000;
        v36 = v5;
        v37 = v4;
        v13 = 1684957547;
      }
    }

    else if (v6 == 2)
    {
      sub_10000E7F4();
      v15 = sub_1004BD1E4();
      v36 = v16;
      v37 = v15;

      v14 = 0xEA00000000006D6FLL;
      v13 = 0x72466574656C6564;
    }

    else if (v6 == 3)
    {
      v7 = 0x7473696C79616C50;
      if (v4 != 2)
      {
        v7 = 0x434174726F706552;
      }

      v8 = 0xE800000000000000;
      if (v4 != 2)
      {
        v8 = 0xEE006E7265636E6FLL;
      }

      v9 = 0x6D75626C41;
      if (v4)
      {
        v9 = 0x747369747241;
      }

      v10 = 0xE500000000000000;
      if (v4)
      {
        v10 = 0xE600000000000000;
      }

      v11 = v4 <= 1u ? v9 : v7;
      v37 = v11;
      v12 = v4 <= 1u ? v10 : v8;
      v36 = v12;
      v13 = 0x657461676976616ELL;
      v14 = 0xEA00000000006F54;
    }

    else
    {
      v14 = 0xE800000000000000;
      v37 = 0x7453657461657263;
      v36 = 0xED00006E6F697461;
      v13 = 0x6570795479616C70;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1000346D4(v13, v14);
    v22 = _swiftEmptyDictionarySingleton[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (_swiftEmptyDictionarySingleton[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v5;
        v28 = v38;
        if (v20)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_100039684();
        v29 = v5;
        v28 = v38;
        if (v25)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1000354E8(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_1000346D4(v13, v14);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_42;
      }

      v21 = v26;
      v29 = v5;
      v28 = v38;
      if (v25)
      {
LABEL_3:

        v3 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
        *v3 = v37;
        v3[1] = v36;

        sub_100029FDC(v28, v29, v6);
        goto LABEL_4;
      }
    }

    _swiftEmptyDictionarySingleton[(v21 >> 6) + 8] |= 1 << v21;
    v30 = (_swiftEmptyDictionarySingleton[6] + 16 * v21);
    *v30 = v13;
    v30[1] = v14;
    v31 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
    *v31 = v37;
    v31[1] = v36;
    sub_100029FDC(v28, v29, v6);
    v32 = _swiftEmptyDictionarySingleton[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_41;
    }

    _swiftEmptyDictionarySingleton[2] = v34;
LABEL_4:
    if (!--v1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1004BDAA4();
  __break(1u);
  return result;
}

uint64_t sub_100029474(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1004BBFE4();

    return sub_1004BC114();
  }

  return result;
}

unint64_t sub_100029510(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1004BBFE4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1004BC114();
}

unint64_t sub_1000295C0()
{
  result = qword_100601510;
  if (!qword_100601510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601510);
  }

  return result;
}

unint64_t sub_100029618()
{
  result = qword_100601520;
  if (!qword_100601520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601520);
  }

  return result;
}

unint64_t sub_100029670()
{
  result = qword_100601528;
  if (!qword_100601528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601528);
  }

  return result;
}

unint64_t sub_1000296C8()
{
  result = qword_100601530;
  if (!qword_100601530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601530);
  }

  return result;
}

uint64_t sub_100029730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_100029820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_1000298EC(uint64_t a1)
{
  sub_100029A78(319, &qword_1006015A0, &type metadata for MetricsEvent.Click.ActionContext);
  if (v1 <= 0x3F)
  {
    sub_100029A20(319);
    if (v2 <= 0x3F)
    {
      sub_100029A78(319, &qword_1006084E0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_100029AC4(319, &qword_1006015B0, &qword_1006015B8, &qword_1004CCFA0);
        if (v4 <= 0x3F)
        {
          sub_100029AC4(319, &qword_1006015C0, &qword_1006015C8, &qword_1004C8D10);
          if (v5 <= 0x3F)
          {
            sub_100029B18();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100029A20(uint64_t a1)
{
  if (!qword_1006015A8)
  {
    type metadata accessor for MetricsEvent.Page(255);
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_1006015A8);
    }
  }
}

void sub_100029A78(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1004BD174();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100029AC4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100003B68(a3, a4);
    v5 = sub_1004BD174();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100029B18()
{
  if (!qword_1006015D0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006015D0);
    }
  }
}

uint64_t sub_100029B80(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_100029B9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100029BE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_100029C28(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t _s14descr1005A0321O3KeyO15DestinationTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14descr1005A0321O3KeyO15DestinationTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MetricsEvent.Page.DisplayType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricsEvent.Page.DisplayType(_WORD *result, int a2, int a3)
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

uint64_t _s14descr1005A0321O3KeyO14NavigationTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14descr1005A0321O3KeyO14NavigationTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100029FDC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_100029FF0(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t View.actionContextMenu(title:menu:excluding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a4;
  v39 = a1;
  v40 = a2;
  v45 = a7;
  v46 = *(a5 - 8);
  __chkstk_darwin();
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v37 - v12;
  v14 = sub_100003B68(&qword_100601658, &qword_1004C8E40);
  v15 = sub_10002A4EC();
  v51 = a5;
  v52 = v14;
  v53 = a6;
  v54 = v15;
  v48 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v37 - v20;
  v21 = sub_1004B9524();
  v43 = *(v21 - 8);
  v44 = v21;
  v22 = __chkstk_darwin();
  v47 = &v37 - v23;
  if (a3)
  {
    v46 = v14;
    __chkstk_darwin();
    *(&v37 - 8) = a5;
    *(&v37 - 7) = a6;
    *(&v37 - 6) = OpaqueTypeConformance2;
    *(&v37 - 5) = a3;
    v24 = v40;
    *(&v37 - 4) = v39;
    *(&v37 - 3) = v24;
    *(&v37 - 2) = v41;

    v25 = v48;
    sub_1004B9E34();
    v51 = a5;
    v52 = v46;
    v53 = a6;
    v54 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = *(v17 + 16);
    v27 = v38;
    v26(v38, v19, OpaqueTypeMetadata2);
    v28 = *(v17 + 8);
    v28(v19, OpaqueTypeMetadata2);
    v26(v19, v27, OpaqueTypeMetadata2);
    v14 = v46;
    sub_10002A7A8(v19, OpaqueTypeMetadata2, a5, OpaqueTypeConformance2, a6);

    v28(v19, OpaqueTypeMetadata2);
    v28(v27, OpaqueTypeMetadata2);
  }

  else
  {
    v29 = v46;
    v30 = *(v46 + 16);
    v30(v13, OpaqueTypeConformance2, a5, v22);
    (v30)(v11, v13, a5);
    v51 = a5;
    v52 = v14;
    v53 = a6;
    v54 = v48;
    v31 = swift_getOpaqueTypeConformance2();
    sub_10002A8A0(v11, OpaqueTypeMetadata2, a5, v31, a6);
    v32 = *(v29 + 8);
    v32(v11, a5);
    v32(v13, a5);
  }

  v51 = a5;
  v52 = v14;
  v53 = a6;
  v54 = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = a6;
  v33 = v44;
  swift_getWitnessTable();
  v34 = v43;
  v35 = v47;
  (*(v43 + 16))(v45, v47, v33);
  return (*(v34 + 8))(v35, v33);
}

unint64_t sub_10002A4EC()
{
  result = qword_100601660;
  if (!qword_100601660)
  {
    sub_100003B68(&qword_100601658, &qword_1004C8E40);
    sub_10002A584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601660);
  }

  return result;
}

unint64_t sub_10002A584()
{
  result = qword_100601668;
  if (!qword_100601668)
  {
    sub_100003B68(&qword_100601670, &qword_1004C8E48);
    sub_10002F904(&qword_100601678, type metadata accessor for ActionMenuView, &unk_1004C8ED8);
    sub_1000206D4(&qword_100601680, &qword_100601688, &qword_1004C8E50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601668);
  }

  return result;
}

uint64_t type metadata accessor for ActionMenuView(uint64_t a1)
{
  result = qword_1006017C0;
  if (!qword_1006017C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002A6B8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{

  sub_100003ABC(&qword_100601670, &qword_1004C8E48);
  sub_10002A584();
  sub_10000E7F4();
  return sub_1004BA694();
}

uint64_t sub_10002A7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1004B9504();
  v7 = __chkstk_darwin();
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return sub_1004B9514();
}

uint64_t sub_10002A8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1004B9504();
  v7 = __chkstk_darwin();
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return sub_1004B9514();
}

uint64_t View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v68 = a7;
  v69 = a8;
  v66 = a5;
  v67 = a6;
  v65 = a4;
  v64 = a2;
  v63 = a1;
  v73 = a9;
  v62 = *(a10 - 8);
  __chkstk_darwin();
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v59 - v16;
  v18 = sub_100003B68(&qword_100601658, &qword_1004C8E40);
  v19 = sub_10002A4EC();
  v81 = a10;
  v82 = v18;
  v76 = v18;
  v77 = a11;
  v83 = a11;
  v84 = a12;
  v78 = a12;
  v75 = v19;
  v85 = v19;
  v86 = a13;
  v72 = a13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = v59 - v24;
  v26 = sub_1004B9524();
  v71 = *(v26 - 8);
  v27 = __chkstk_darwin();
  v70 = v59 - v28;
  if (a3)
  {
    v59[2] = v59;
    __chkstk_darwin();
    v62 = v26;
    v59[1] = &v59[-12];
    v29 = v77;
    v30 = v78;
    v59[-10] = a10;
    v59[-9] = v29;
    v60 = v21;
    v61 = v25;
    v31 = v72;
    v59[-8] = v30;
    v59[-7] = v31;
    v59[-6] = v74;
    v59[-5] = a3;
    v32 = OpaqueTypeMetadata2;
    v59[3] = v33;
    __chkstk_darwin();
    v59[-6] = a10;
    v59[-5] = v29;
    v34 = swift_allocObject();
    v35 = v69;
    *(v34 + 16) = v68;
    *(v34 + 24) = v35;

    v58 = v31;
    v36 = v75;
    v56 = v30;
    v57 = v75;
    v55 = v29;
    v37 = v76;
    sub_1004B9E24();

    v81 = a10;
    v82 = v37;
    v83 = v29;
    v84 = v30;
    v85 = v36;
    v86 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v60;
    v40 = *(v60 + 16);
    v41 = v61;
    v40(v61, v23, v32);
    v42 = *(v39 + 8);
    v42(v23, v32);
    v40(v23, v41, v32);
    v43 = v70;
    v44 = OpaqueTypeConformance2;
    v26 = v62;
    sub_10002A7A8(v23, v32, a10, v44, v78);

    v42(v23, v32);
    v42(v41, v32);
  }

  else
  {
    v45 = v62;
    v46 = *(v62 + 16);
    v46(v17, v74, a10, v27);
    (v46)(v15, v17, a10);
    v81 = a10;
    v82 = v76;
    v47 = v78;
    v83 = v77;
    v84 = v78;
    v31 = v72;
    v85 = v75;
    v86 = v72;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = v70;
    sub_10002A8A0(v15, OpaqueTypeMetadata2, a10, v48, v47);
    v50 = *(v45 + 8);
    v51 = v15;
    v43 = v49;
    v50(v51, a10);
    v50(v17, a10);
  }

  v81 = a10;
  v82 = v76;
  v52 = v78;
  v83 = v77;
  v84 = v78;
  v85 = v75;
  v86 = v31;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v52;
  swift_getWitnessTable();
  v53 = v71;
  (*(v71 + 16))(v73, v43, v26);
  return (*(v53 + 8))(v43, v26);
}

uint64_t sub_10002B058@<X0>(uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v15 - v9;
  v11(v8);
  v12 = *(v5 + 16);
  v12(v10, v7, a2);
  v13 = *(v5 + 8);
  v13(v7, a2);
  v12(a3, v10, a2);
  return (v13)(v10, a2);
}

uint64_t sub_10002B1A8()
{

  return swift_deallocObject();
}

uint64_t sub_10002B1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding(0, a2, a4);
  sub_10002F904(&qword_1006016A0, type metadata accessor for ActionMenuView.Excluding, "Au\r");

  *(a3 + 32) = sub_1004B8F04();
  *(a3 + 40) = v6;
  v7 = *(type metadata accessor for ActionMenuView(0) + 32);
  *(a3 + v7) = swift_getKeyPath();
  sub_100003ABC(&qword_100601878, &qword_1004C8FA8);
  swift_storeEnumTagMultiPayload();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;

  v9 = sub_1004B8524();
  result = sub_100003ABC(&qword_100601670, &qword_1004C8E48);
  v11 = (a3 + *(result + 36));
  *v11 = v9;
  v11[1] = v8;
  return result;
}

uint64_t ActionMenu.menuButton<A>(title:excluding:label:onPresentationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v49 = a6;
  v45 = a5;
  v50 = a4;
  v51 = a3;
  v42 = a2;
  v44 = a1;
  v55 = a9;
  v11 = sub_1004BA814();
  v53 = *(v11 - 8);
  v54 = v11;
  __chkstk_darwin();
  v52 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003B68(&qword_100601690, &qword_1004C8E58);
  v43 = v13;
  v14 = sub_10002B884();
  v61 = a8;
  v62 = v13;
  v63 = a10;
  v64 = v14;
  v15 = sub_1004B9B94();
  v48 = *(v15 - 8);
  __chkstk_darwin();
  v17 = v37 - v16;
  sub_100003B68(&qword_100601688, &qword_1004C8E50);
  v40 = v15;
  v18 = sub_1004B8D64();
  v38 = v18;
  v47 = *(v18 - 8);
  __chkstk_darwin();
  v41 = v37 - v19;
  WitnessTable = swift_getWitnessTable();
  v37[1] = WitnessTable;
  v21 = sub_1000206D4(&qword_100601680, &qword_100601688, &qword_1004C8E50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v59 = WitnessTable;
  v60 = v21;
  v39 = swift_getWitnessTable();
  v61 = v18;
  v62 = v39;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v25 = v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = v37 - v26;
  v56 = v44;
  v57 = v42;
  v58 = v46;

  sub_1004B9B74();
  type metadata accessor for ActionMenuView.Excluding(0, v28, v29);
  *(swift_allocObject() + 16) = v51;
  sub_10002F904(&qword_1006016A0, type metadata accessor for ActionMenuView.Excluding, "Au\r");

  v30 = v41;
  v31 = v40;
  sub_1004B9F84();

  (*(v48 + 8))(v17, v31);
  v32 = v52;
  sub_1004BA804();
  v33 = v38;
  sub_1004BA1B4();
  (*(v53 + 8))(v32, v54);
  (*(v47 + 8))(v30, v33);
  v34 = *(v23 + 16);
  v34(v27, v25, OpaqueTypeMetadata2);
  v35 = *(v23 + 8);
  v35(v25, OpaqueTypeMetadata2);
  v34(v55, v27, OpaqueTypeMetadata2);
  return (v35)(v27, OpaqueTypeMetadata2);
}

unint64_t sub_10002B884()
{
  result = qword_100601698;
  if (!qword_100601698)
  {
    sub_100003B68(&qword_100601690, &qword_1004C8E58);
    sub_10002F904(&qword_100601678, type metadata accessor for ActionMenuView, &unk_1004C8ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601698);
  }

  return result;
}

uint64_t sub_10002B94C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for ActionMenuView(0);
  sub_10002F904(&qword_100601678, type metadata accessor for ActionMenuView, &unk_1004C8ED8);
  sub_10000E7F4();

  return sub_1004BA694();
}

uint64_t sub_10002BA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = 1;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding(0, a2, a3);
  sub_10002F904(&qword_1006016A0, type metadata accessor for ActionMenuView.Excluding, "Au\r");

  *(a4 + 32) = sub_1004B8F04();
  *(a4 + 40) = v5;
  v6 = *(type metadata accessor for ActionMenuView(0) + 32);
  *(a4 + v6) = swift_getKeyPath();
  sub_100003ABC(&qword_100601878, &qword_1004C8FA8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WeakValuesDictionary.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10002BB78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  type metadata accessor for ActionMenuView.Excluding(0, a1, a2);
  result = sub_1004B8534();
  *a3 = result;
  return result;
}

uint64_t sub_10002BBB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003ABC(&qword_100601820, &qword_1004C8F28);
  v87 = *(v3 - 8);
  __chkstk_darwin();
  v86 = v72 - v4;
  v98 = sub_100003ABC(&qword_100601828, &qword_1004C8F30);
  __chkstk_darwin();
  v100 = v72 - v5;
  v99 = sub_100003ABC(&qword_100601830, &qword_1004C8F38);
  __chkstk_darwin();
  v94 = v72 - v6;
  v7 = sub_1004BA644();
  v90 = *(v7 - 8);
  v91 = v7;
  __chkstk_darwin();
  v79 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100601838, &qword_1004C8F40);
  __chkstk_darwin();
  v92 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = v72 - v10;
  v83 = sub_100003ABC(&qword_100601840, &qword_1004C8F48);
  __chkstk_darwin();
  v88 = v72 - v11;
  v85 = sub_1004B95D4();
  v77 = *(v85 - 8);
  __chkstk_darwin();
  v75 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100003ABC(&qword_100601848, &qword_1004C8F50);
  v74 = *(v82 - 8);
  __chkstk_darwin();
  v73 = v72 - v13;
  v84 = sub_100003ABC(&qword_100601850, &qword_1004C8F58);
  v78 = *(v84 - 8);
  __chkstk_darwin();
  v76 = v72 - v14;
  sub_100003ABC(&qword_100601858, &qword_1004C8F60);
  __chkstk_darwin();
  v89 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = v72 - v16;
  v105 = sub_100003ABC(&qword_100601860, &qword_1004C8F68);
  __chkstk_darwin();
  v97 = v72 - v17;
  v18 = *(type metadata accessor for ActionMenuView(0) - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v20 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100003ABC(&qword_100601868, &qword_1004C8F70);
  __chkstk_darwin();
  v101 = v72 - v21;
  v103 = sub_100003ABC(&qword_100601870, &qword_1004C8F78);
  __chkstk_darwin();
  v104 = v72 - v24;
  if (!v1[4])
  {
    type metadata accessor for ActionMenuView.Excluding(0, v22, v23);
    sub_10002F904(&qword_1006016A0, type metadata accessor for ActionMenuView.Excluding, "Au\r");
    result = sub_1004B8EF4();
    __break(1u);
    return result;
  }

  v25 = v1;
  v26 = *v1;

  v28 = ActionMenu.elements(excluding:includeUnsupported:)(v27, 0);
  v102 = v29;
  v31 = v30;

  if (!*(v28 + 2))
  {

    (v102)(v44);
    swift_storeEnumTagMultiPayload();
    sub_10002F178();
    sub_1004B9514();
  }

  v80 = v3;
  v81 = a1;
  v106 = v28;
  swift_getKeyPath();
  sub_10002EBD8(v25, v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v33 = (v19 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_10002ED88(v20, v34 + v32);
  *(v34 + v33) = v28;
  swift_bridgeObjectRetain_n();
  sub_100003ABC(&qword_100601880, &qword_1004C8FB0);
  sub_100003ABC(&qword_100601888, &qword_1004C8FB8);
  sub_1000206D4(&qword_100601890, &qword_100601880, &qword_1004C8FB0, &protocol conformance descriptor for [A]);
  sub_10002EE98();
  v35 = v101;
  sub_1004BA654();
  v36 = swift_allocObject();
  *(v36 + 16) = v102;
  *(v36 + 24) = v31;
  v37 = (v35 + *(v95 + 36));
  *v37 = sub_100009350;
  v37[1] = v36;
  v37[2] = 0;
  v37[3] = 0;
  v38 = *(v26 + 32);

  v39 = v31;
  if ((MenuType.style.getter(v38) & 1) == 0)
  {
    v102 = v25;
    v46 = *(v28 + 2);
    v47 = *(v26 + 32);

    if (MenuType.rawValue.getter(v47) == 0x7463416B63697571 && v48 == 0xEB000000006E6F69)
    {

      if (v46 <= 1)
      {
LABEL_13:
        sub_10000F778(v35, v88, &qword_100601868, &qword_1004C8F70);
        swift_storeEnumTagMultiPayload();
        v59 = sub_1000206D4(&qword_1006018F8, &qword_100601848, &qword_1004C8F50, &protocol conformance descriptor for ControlGroup<A>);
        v60 = sub_10002F904(&qword_100601900, &type metadata accessor for MenuControlGroupStyle, &protocol conformance descriptor for MenuControlGroupStyle);
        v106 = v82;
        v107 = v85;
        v108 = v59;
        v109 = v60;
        swift_getOpaqueTypeConformance2();
        sub_10002F068();
        sub_1004B9514();
        goto LABEL_14;
      }
    }

    else
    {
      v49 = sub_1004BD9C4();

      if ((v49 & 1) == 0 || v46 < 2)
      {
        goto LABEL_13;
      }
    }

    __chkstk_darwin();
    v87 = sub_10002F068();
    v50 = v73;
    sub_1004B88B4();
    v51 = v75;
    sub_1004B95C4();
    v52 = sub_1000206D4(&qword_1006018F8, &qword_100601848, &qword_1004C8F50, &protocol conformance descriptor for ControlGroup<A>);
    v53 = sub_10002F904(&qword_100601900, &type metadata accessor for MenuControlGroupStyle, &protocol conformance descriptor for MenuControlGroupStyle);
    v54 = v76;
    v55 = v82;
    v56 = v85;
    sub_1004B9F74();
    (*(v77 + 8))(v51, v56);
    (*(v74 + 8))(v50, v55);
    v57 = v78;
    v58 = v84;
    (*(v78 + 16))(v88, v54, v84);
    swift_storeEnumTagMultiPayload();
    v106 = v55;
    v107 = v56;
    v108 = v52;
    v109 = v53;
    swift_getOpaqueTypeConformance2();
    sub_1004B9514();
    (*(v57 + 8))(v54, v58);
LABEL_14:
    v62 = v90;
    v61 = v91;
    v63 = *(v102 + 8) == 1;
    v64 = v93;
    v72[1] = v39;
    if (v63)
    {
      v65 = v79;
      sub_1004BA634();
      (*(v62 + 32))(v64, v65, v61);
      v66 = 0;
    }

    else
    {
      v66 = 1;
    }

    (*(v62 + 56))(v64, v66, 1, v61);
    v67 = v96;
    v68 = v89;
    sub_10000F778(v96, v89, &qword_100601858, &qword_1004C8F60);
    v69 = v92;
    sub_10000F778(v64, v92, &qword_100601838, &qword_1004C8F40);
    v70 = v94;
    sub_10000F778(v68, v94, &qword_100601858, &qword_1004C8F60);
    v71 = sub_100003ABC(&qword_100601908, &qword_1004C8FD8);
    sub_10000F778(v69, v70 + *(v71 + 48), &qword_100601838, &qword_1004C8F40);
    sub_100007214(v69, &qword_100601838, &qword_1004C8F40);
    sub_100007214(v68, &qword_100601858, &qword_1004C8F60);
    sub_10000F778(v70, v100, &qword_100601830, &qword_1004C8F38);
    swift_storeEnumTagMultiPayload();
    sub_1000206D4(&qword_1006018E0, &qword_100601830, &qword_1004C8F38, &protocol conformance descriptor for TupleView<A>);
    sub_1000206D4(&qword_1006018E8, &qword_100601820, &qword_1004C8F28, &protocol conformance descriptor for Menu<A, B>);
    v43 = v97;
    sub_1004B9514();
    sub_100007214(v70, &qword_100601830, &qword_1004C8F38);
    sub_100007214(v64, &qword_100601838, &qword_1004C8F40);
    sub_100007214(v67, &qword_100601858, &qword_1004C8F60);
    v35 = v101;
    goto LABEL_18;
  }

  __chkstk_darwin();
  __chkstk_darwin();
  sub_100003ABC(&qword_1006018A8, &qword_1004C8FC0);
  sub_10002EFB0();
  sub_10002F068();
  v40 = v86;
  sub_1004B9B84();
  v41 = v87;
  v42 = v80;
  (*(v87 + 16))(v100, v40, v80);
  swift_storeEnumTagMultiPayload();
  sub_1000206D4(&qword_1006018E0, &qword_100601830, &qword_1004C8F38, &protocol conformance descriptor for TupleView<A>);
  sub_1000206D4(&qword_1006018E8, &qword_100601820, &qword_1004C8F28, &protocol conformance descriptor for Menu<A, B>);
  v43 = v97;
  sub_1004B9514();
  (*(v41 + 8))(v40, v42);
LABEL_18:
  sub_10000F778(v43, v104, &qword_100601860, &qword_1004C8F68);
  swift_storeEnumTagMultiPayload();
  sub_10002F178();
  sub_1004B9514();

  sub_100007214(v43, &qword_100601860, &qword_1004C8F68);
  return sub_100007214(v35, &qword_100601868, &qword_1004C8F70);
}