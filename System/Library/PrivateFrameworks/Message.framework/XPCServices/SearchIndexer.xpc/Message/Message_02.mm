uint64_t sub_10001F4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v25 = a2;
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v23 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  result = sub_1000201D4(a1, a3, a4);
  v14 = result;
  v24 = *(result + 16);
  if (v24)
  {
    v15 = 0;
    v22 = result + 32;
    while (v15 < *(v14 + 16))
    {
      v16 = *(v25 + 16);
      if (v16)
      {
        v17 = *(v22 + 4 * v15);
        v18 = v25 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
        v19 = *(v23 + 72);
        do
        {
          sub_100021190(v18, v12, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v12, v9, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v20 = *(v9 + 2);
            result = sub_100020EDC(*v9);
            if (v20 == v17)
            {
              v21 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v9, type metadata accessor for TaskHistory.Previous);
          }

          v18 += v19;
          --v16;
        }

        while (v16);
      }

      if (++v15 == v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v21 = 0;
LABEL_13:

    return v21;
  }

  return result;
}

uint64_t sub_10001F708(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = result;
  v4 = 0;
  if (result)
  {
    v5 = BYTE4(result) & 1;
  }

  else
  {
    v5 = 0;
  }

  if (result)
  {
    v6 = 0;
  }

  else
  {
    v6 = BYTE4(result) & 1;
  }

  v7 = a2 + 40;
  do
  {
    v8 = (v7 + 12 * v4);
    v9 = v4;
    while (1)
    {
      if (v9 >= v2)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_34;
      }

      v10 = *(v8 - 1);
      v11 = *v8;
      if (v11 == 1)
      {
        break;
      }

      if ((v3 & 0x100000000) == 0 && v10 == v3)
      {
        v10 = v3;
        goto LABEL_22;
      }

LABEL_11:
      ++v9;
      v8 += 12;
      if (v4 == v2)
      {
        goto LABEL_27;
      }
    }

    if (v10)
    {
      if (v5)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

    v10 = 0;
LABEL_22:
    v21 = *(v8 - 2);
    result = swift_isUniquelyReferenced_nonNull_native();
    v22 = v7;
    if ((result & 1) == 0)
    {
      result = sub_100091F08(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      result = sub_100091F08((v12 > 1), v13 + 1, 1);
      v14 = v13 + 1;
    }

    _swiftEmptyArrayStorage[2] = v14;
    v15 = _swiftEmptyArrayStorage + 12 * v13;
    *(v15 + 8) = v21;
    *(v15 + 9) = v10;
    v15[40] = v11;
    v7 = v22;
  }

  while (v4 != v2);
LABEL_27:
  v16 = _swiftEmptyArrayStorage[2];
  if (v16)
  {
    sub_100091AA8(0, v16, 0);
    v17 = _swiftEmptyArrayStorage[2];
    v18 = 32;
    do
    {
      v19 = *(_swiftEmptyArrayStorage + v18);
      v20 = _swiftEmptyArrayStorage[3];
      if (v17 >= v20 >> 1)
      {
        sub_100091AA8((v20 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      *(&_swiftEmptyArrayStorage[4] + v17) = v19;
      v18 += 12;
      ++v17;
      --v16;
    }

    while (v16);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10001F940(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  result = sub_10001F708(a1 | ((HIDWORD(a1) & 1) << 32), a3);
  v12 = result;
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    while (v13 < *(v12 + 16))
    {
      v14 = *(v24 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_100021190(v16, v10, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v10, v7, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v18 = *(v7 + 2);
            result = sub_100020EDC(*v7);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v7, type metadata accessor for TaskHistory.Previous);
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      if (++v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

uint64_t sub_10001FB84(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t))
{
  v27 = a3;
  v9 = type metadata accessor for TaskHistory.Previous(0);
  v25 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  result = sub_10001FF7C(a1, a2 & 1, a4, a5);
  v16 = result;
  v26 = *(result + 16);
  if (v26)
  {
    v17 = 0;
    v24 = result + 32;
    while (v17 < *(v16 + 16))
    {
      v18 = *(v27 + 16);
      if (v18)
      {
        v19 = *(v24 + 4 * v17);
        v20 = v27 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
        v21 = *(v25 + 72);
        do
        {
          sub_100021190(v20, v14, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v14, v11, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v22 = *(v11 + 2);
            result = sub_100020EDC(*v11);
            if (v22 == v19)
            {
              v23 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v11, type metadata accessor for TaskHistory.Previous);
          }

          v20 += v21;
          --v18;
        }

        while (v18);
      }

      if (++v17 == v26)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v23 = 0;
LABEL_13:

    return v23;
  }

  return result;
}

void *sub_10001FE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, __n128))
{
  v20[0] = a1;
  v20[1] = a2;
  v18[2] = v20;

  v8 = (a5)(a4, v18, a3);
  v9 = *(v8 + 16);
  if (v9)
  {
    v19 = _swiftEmptyArrayStorage;
    v10 = v8;
    sub_100091AA8(0, v9, 0);
    v11 = v10;
    v12 = v19;
    v13 = v19[2];
    v14 = 32;
    do
    {
      v15 = *(v11 + v14);
      v19 = v12;
      v16 = v12[3];
      if (v13 >= v16 >> 1)
      {
        sub_100091AA8((v16 > 1), v13 + 1, 1);
        v11 = v10;
        v12 = v19;
      }

      v12[2] = v13 + 1;
      *(v12 + v13 + 8) = v15;
      v14 += 24;
      ++v13;
      --v9;
    }

    while (v9);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

uint64_t sub_10001FF7C(uint64_t result, char a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    goto LABEL_17;
  }

  v7 = result;
  v8 = 0;
  v9 = a3 + 48;
  do
  {
    v10 = (v9 + 24 * v8);
    v11 = v8;
    while (1)
    {
      if (v11 >= v4)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_24;
      }

      v12 = *(v10 - 1);
      v13 = *v10;
      if (v13 != 1)
      {
        break;
      }

      if (a2)
      {
        goto LABEL_12;
      }

LABEL_5:
      ++v11;
      v10 += 24;
      if (v8 == v4)
      {
        goto LABEL_17;
      }
    }

    if ((a2 & 1) != 0 || v12 != v7)
    {
      goto LABEL_5;
    }

    v12 = v7;
LABEL_12:
    v22 = *(v10 - 4);
    result = swift_isUniquelyReferenced_nonNull_native();
    v23 = v9;
    if ((result & 1) == 0)
    {
      result = a4(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      result = a4(v14 > 1, v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[3 * v15];
    *(v16 + 8) = v22;
    v16[5] = v12;
    *(v16 + 48) = v13;
    v9 = v23;
  }

  while (v8 != v4);
LABEL_17:
  v17 = _swiftEmptyArrayStorage[2];
  if (v17)
  {
    sub_100091AA8(0, v17, 0);
    v18 = _swiftEmptyArrayStorage[2];
    v19 = 4;
    do
    {
      v20 = _swiftEmptyArrayStorage[v19];
      v21 = _swiftEmptyArrayStorage[3];
      if (v18 >= v21 >> 1)
      {
        sub_100091AA8((v21 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      *(&_swiftEmptyArrayStorage[4] + v18) = v20;
      v19 += 3;
      ++v18;
      --v17;
    }

    while (v17);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000201D4(uint64_t result, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v4 = 0;
  v5 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 24;
LABEL_2:
  v8 = (v7 + 8 * v4);
  while (v6 != v4)
  {
    if (v4 >= v6)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_19;
    }

    v10 = *(v8 + 12);
    v8 += 2;
    ++v4;
    if (v10 == v5)
    {
      v11 = *v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = a3(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = a3(v12 > 1, v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[v13];
      *(v14 + 8) = v11;
      *(v14 + 36) = v5;
      v4 = v9;
      goto LABEL_2;
    }
  }

  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    sub_100091AA8(0, v15, 0);
    v16 = _swiftEmptyArrayStorage[2];
    v17 = 4;
    do
    {
      v18 = _swiftEmptyArrayStorage[v17];
      v19 = _swiftEmptyArrayStorage[3];
      if (v16 >= v19 >> 1)
      {
        sub_100091AA8((v19 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      *(&_swiftEmptyArrayStorage[4] + v16) = v18;
      ++v17;
      ++v16;
      --v15;
    }

    while (v15);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000203BC(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = a2 + 24;
  v5 = result & 1;
LABEL_2:
  v6 = (v4 + 8 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_19;
    }

    v8 = *(v6 + 12);
    v6 += 2;
    ++v2;
    if (v8 == v5)
    {
      v9 = *v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100092208(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_100092208((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[v11];
      *(v12 + 8) = v9;
      *(v12 + 36) = v8;
      v2 = v7;
      goto LABEL_2;
    }
  }

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    sub_100091AA8(0, v13, 0);
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 4;
    do
    {
      v16 = _swiftEmptyArrayStorage[v15];
      v17 = _swiftEmptyArrayStorage[3];
      if (v14 >= v17 >> 1)
      {
        sub_100091AA8((v17 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v16;
      ++v15;
      ++v14;
      --v13;
    }

    while (v13);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100020580(char a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  result = sub_1000203BC(a1 & 1, a3);
  v12 = result;
  v22 = *(result + 16);
  if (v22)
  {
    v13 = 0;
    v20 = result + 32;
    while (v13 < *(v12 + 16))
    {
      v14 = *(v23 + 16);
      if (v14)
      {
        v15 = *(v20 + 4 * v13);
        v16 = v23 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v17 = *(v21 + 72);
        do
        {
          sub_100021190(v16, v10, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v10, v7, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v18 = *(v7 + 2);
            result = sub_100020EDC(*v7);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v7, type metadata accessor for TaskHistory.Previous);
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      if (++v13 == v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

void *sub_1000207A4(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      v9 = v8 + 1;
      if (v8 >= v7 >> 1)
      {
        a2(v7 > 1, v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9;
      *(&_swiftEmptyArrayStorage[4] + v8) = v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage[2];
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  sub_100091AA8(0, v9, 0);
  v10 = _swiftEmptyArrayStorage[2];
  v11 = 32;
  do
  {
    v12 = *(_swiftEmptyArrayStorage + v11);
    v13 = _swiftEmptyArrayStorage[3];
    if (v10 >= v13 >> 1)
    {
      sub_100091AA8((v13 > 1), v10 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v10 + 1;
    *(&_swiftEmptyArrayStorage[4] + v10) = v12;
    v11 += 4;
    ++v10;
    --v9;
  }

  while (v9);
LABEL_14:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100020944(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100020950(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Environment.AvailableFileSystemSpace(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Environment.AvailableFileSystemSpace(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100020B88()
{
  result = qword_1005CD288;
  if (!qword_1005CD288)
  {
    result = swift_getWitnessTable(byte_1004CEF6C, &type metadata for DeleteMailboxes.ActionID, v0, v1);
    atomic_store(result, &qword_1005CD288);
  }

  return result;
}

unint64_t sub_100020BE0()
{
  result = qword_1005CD290;
  if (!qword_1005CD290)
  {
    result = swift_getWitnessTable("%~\v", &type metadata for DeleteMailboxes.DeleteMailbox, v0, v1);
    atomic_store(result, &qword_1005CD290);
  }

  return result;
}

unint64_t sub_100020C34(uint64_t a1)
{
  result = sub_100020C5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100020C5C()
{
  result = qword_1005CD310;
  if (!qword_1005CD310)
  {
    result = swift_getWitnessTable(byte_1004CEF00, &type metadata for DeleteMailboxes, v0, v1);
    atomic_store(result, &qword_1005CD310);
  }

  return result;
}

unint64_t sub_100020CB4()
{
  result = qword_1005CD318;
  if (!qword_1005CD318)
  {
    result = swift_getWitnessTable(byte_1004CEF94, &type metadata for DeleteMailboxes.Result, v0, v1);
    atomic_store(result, &qword_1005CD318);
  }

  return result;
}

double sub_100020D10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {

    v4 = vars8;
  }

  return result;
}

uint64_t sub_100020D58(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100020E0C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020E44()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100020E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100020EDC(unint64_t result)
{
  switch((result >> 58) & 0x3C | (result >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100021128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100021190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000211F8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_10002120C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_100021254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000212A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000212F4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100021348(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100021360(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

Swift::Int sub_1000213E0(uint64_t a1)
{
  sub_1004A6E94();
  TextPartEnumerationResult.hash(into:)(v3, *v1);
  return sub_1004A6F14();
}

void *sub_100021428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5C54();
  v5 = sub_10003842C(v4, a1, a2);

  v7 = type metadata accessor for DependencyGraph.State(255, a1, a2, v6);
  swift_getTupleTypeMetadata2();
  v8 = sub_1004A5C54();
  sub_1000219E0(v8, a1, v7, a2);

  return v5;
}

uint64_t sub_1000214FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((sub_100037CB4(a1, a2, a3, a5, a6, a7, a9, a10) & 1) == 0)
  {
    return 0;
  }

  v11 = type metadata accessor for DependencyGraph.State(0, a9, a10, v10);
  swift_getWitnessTable(byte_1004CF1C8, v11);

  return sub_1004A5544();
}

uint64_t sub_1000215C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100037DE4(a1, a2, a3, a4, a6, a7);
  v10 = type metadata accessor for DependencyGraph.State(0, a6, a7, v9);
  swift_getWitnessTable(byte_1004CF188, v10);

  return sub_1004A5534();
}

Swift::Int sub_100021660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1004A6E94();
  sub_1000215C0(v13, a1, a2, a3, a4, a5, a6);
  return sub_1004A6F14();
}

Swift::Int sub_100021708(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  sub_1000215C0(v5, *v2, v2[1], v2[2], v2[3], *(a2 + 16), *(a2 + 24));
  return sub_1004A6F14();
}

uint64_t sub_10002179C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_100021CCC(a1, *(a2 + 16), *(a2 + 24));
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a3 = v4;
  a3[1] = v6;
  a3[2] = v8;
  a3[3] = v10;
  return result;
}

unint64_t sub_1000217FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5554();

  return sub_100021858(a1, v6, a2, a3);
}

unint64_t sub_100021858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1004A5724();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1000219E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1004A5C94())
  {
    sub_1004A6A84();
    v13 = sub_1004A6A74();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_1004A5CC4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1004A5C74())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1004A6784();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1000217FC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void *sub_100021CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100021428(v9, v10);
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  if (sub_1004A5CB4())
  {
    v23 = v7;
    for (i = 0; ; ++i)
    {
      v16 = sub_1004A5C74();
      sub_1004A5C34();
      if (v16)
      {
        (*(v6 + 16))(v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i, a2);
        v18 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1004A6784();
        if (v23 != 8)
        {
          __break(1u);
          return result;
        }

        v24 = result;
        (*(v6 + 16))(v8, &v24, a2);
        swift_unknownObjectRelease();
        v18 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_10:
          __break(1u);
          return v25;
        }
      }

      v19 = type metadata accessor for DependencyGraph(0, a2, a3, v17);
      v21 = type metadata accessor for DirectedAcyclicGraph(0, *(v19 + 16), *(v19 + 24), v20);
      sub_100037500(v8, v21);
      (*(v6 + 8))(v8, a2);
      if (v18 == sub_1004A5CB4())
      {
        return v25;
      }
    }
  }

  return v11;
}

uint64_t sub_100021F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100021F6C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100021F78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100021FC0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

Swift::Int sub_100022038()
{
  result = sub_100093190(&off_100598778);
  qword_1005DDEC0 = result;
  return result;
}

uint64_t sub_100022060()
{
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004CEA80;
  *(v0 + 32) = type metadata accessor for FetchSearchResultMessages(0);
  sub_100026044();

  sub_1004A6674();
  *(v0 + 80) = type metadata accessor for FindMissingMessages(0);

  sub_1004A6674();
  *(v0 + 128) = &type metadata for PurgeMessagesOutsideWindowOfInterest;

  sub_1004A6674();
  return v0;
}

void sub_100022170(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  sub_100025E34(a1, &v24 - v8, type metadata accessor for MailboxTaskLogger);
  sub_100025E34(a1, v6, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000258C0(v2, v31);
  sub_1000258C0(v2, v29);
  sub_1000258C0(v2, v28);
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v12 = 68160003;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v13 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v13;
    *(v12 + 11) = 2082;
    v14 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_10015BA6C(*(v14 + 1), *(v14 + 2), &v27);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    LOWORD(v13) = *(v13 + 12);
    sub_100025E9C(v6, type metadata accessor for MailboxTaskLogger);
    *(v12 + 29) = v13;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v15 = *(v14 + 4);
    LODWORD(v14) = *(v14 + 10);

    sub_100025E9C(v9, type metadata accessor for MailboxTaskLogger);
    v25 = v15;
    v26 = v14;
    v16 = sub_1004A5824();
    v18 = sub_10015BA6C(v16, v17, &v27);

    *(v12 + 43) = v18;
    *(v12 + 51) = 2048;
    v19 = *(v32 + 16);
    sub_1000258F8(v31);
    *(v12 + 53) = v19;
    *(v12 + 61) = 2082;
    LOBYTE(v25) = v30;
    v20 = sub_1000DCF64(v29[17]);
    v22 = v21;
    sub_1000258F8(v29);
    v23 = sub_10015BA6C(v20, v22, &v27);

    *(v12 + 63) = v23;
    *(v12 + 71) = 1024;
    LODWORD(v23) = v28[105];
    sub_1000258F8(v28);
    *(v12 + 73) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID batch(es): %{public}s, fetching highest-mod-seq: %{BOOL}d", v12, 0x4Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000258F8(v28);
    sub_1000258F8(v31);
    sub_100025E9C(v6, type metadata accessor for MailboxTaskLogger);

    sub_100025E9C(v9, type metadata accessor for MailboxTaskLogger);
    sub_1000258F8(v29);
  }
}

uint64_t sub_100022514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (!*(v6 + 112))
  {
    v13 = (a5 + *(type metadata accessor for MailboxSyncState(0) + 48));
    v14 = v13[3];
    v15 = v13[4];
    sub_10002587C(v13, v14);
    *(v6 + 112) = (*(v15 + 24))(v14, v15);
  }

  if (*(v6 + 128) == 1)
  {
    v16 = a5 + *(type metadata accessor for MailboxSyncState(0) + 48);
    v17 = *(v16 + 40);
    if ((*(v16 + 48) & 1) == 0)
    {
      v17 = *(v17 + 16);
    }

    *(v6 + 120) = v17;
    *(v6 + 128) = 0;
  }

  v18 = &off_1005987A0;
  v19 = &off_1005988A8;
  if (*(v6 + 105))
  {
    v18 = &off_100598810;
    v19 = &off_100598940;
  }

  if (*(v6 + 104))
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  sub_100022658(a1, a2, a3, a4, v20, a6);
}

double sub_100022658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = sub_10000C9C0(&qword_1005CD540, &qword_1004CF318);
  __chkstk_darwin(v13 - 8);
  v15 = &v27[-v14];
  v16 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v16 - 8);
  v18 = &v27[-v17];
  v19 = *v6;
  v27[12] = *(v6 + 12);
  sub_1000239E4(a1, a2, a3, a4, v19, v15);
  v20 = sub_10000C9C0(&qword_1005CD548, &unk_1004CF320);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    sub_100025F40(v15, &qword_1005CD540, &qword_1004CF318);
    v21 = sub_10000C9C0(&qword_1005CD550, &unk_1004CF4D0);
    (*(*(v21 - 8) + 56))(a6, 1, 1, v21);
  }

  else
  {
    v23 = *v15;
    sub_100025FDC(v15 + *(v20 + 48), v18, &qword_1005CD1D0, &unk_1004CF2C0);
    v24 = sub_10000C9C0(&qword_1005CD550, &unk_1004CF4D0);
    v25 = a6 + *(v24 + 48);
    *a6 = v23;
    v26 = &v25[*(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48)];
    sub_100025FDC(v18, v25, &unk_1005D91B0, &unk_1004CF400);
    *v26 = a5;
    *(v26 + 1) = 0;
    v26[16] = 1;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v24 - 8) + 56))(a6, 0, 1, v24);
  }

  return result;
}

void sub_10002291C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v78);
  v79 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v75 - v8;
  __chkstk_darwin(v9);
  v11 = &v75 - v10;
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  __chkstk_darwin(v15);
  v17 = &v75 - v16;
  __chkstk_darwin(v18);
  v20 = &v75 - v19;
  v21 = *(a2 + 112);
  if (v21)
  {
    v22 = a1 + *(type metadata accessor for MailboxSyncState(0) + 48);
    v23 = *(v22 + 24);
    v24 = *(v22 + 32);
    sub_100025928(v22, v23);
    (*(v24 + 32))(v21, v23, v24);
  }

  v25 = *(type metadata accessor for MailboxSyncState(0) + 48);
  v81 = a1;
  v26 = (a1 + v25);
  v28 = *(a1 + v25 + 24);
  v27 = *(a1 + v25 + 32);
  v76 = v26;
  sub_10002587C(v26, v28);
  (*(v27 + 40))(v28, v27);
  v30 = *(v29 + 16);

  if (!v30)
  {
    sub_100025E34(a3, v14, type metadata accessor for MailboxTaskLogger);
    sub_100025E34(a3, v11, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000258C0(a2, &v85);
    v42 = sub_1004A4A54();
    v43 = sub_1004A6034();
    if (os_log_type_enabled(v42, v43))
    {
      v77 = a3;
      v44 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v44 = 68159491;
      *(v44 + 4) = 2;
      *(v44 + 8) = 256;
      v45 = v78;
      v46 = &v11[*(v78 + 20)];
      *(v44 + 10) = *v46;
      *(v44 + 11) = 2082;
      v47 = &v14[*(v45 + 20)];
      *(v44 + 13) = sub_10015BA6C(*(v47 + 1), *(v47 + 2), &v84);
      *(v44 + 21) = 1040;
      *(v44 + 23) = 2;
      *(v44 + 27) = 512;
      v48 = *(v46 + 12);
      sub_100025E9C(v11, type metadata accessor for MailboxTaskLogger);
      *(v44 + 29) = v48;
      *(v44 + 31) = 2160;
      *(v44 + 33) = 0x786F626C69616DLL;
      *(v44 + 41) = 2085;
      v49 = *(v47 + 4);
      v50 = *(v47 + 10);

      sub_100025E9C(v14, type metadata accessor for MailboxTaskLogger);
      v82 = v49;
      v83 = v50;
      v51 = sub_1004A5824();
      v53 = sub_10015BA6C(v51, v52, &v84);

      *(v44 + 43) = v53;
      *(v44 + 51) = 2048;
      if (v87)
      {
        v54 = *(v87 + 16);
      }

      else
      {
        v54 = 0;
      }

      v56 = v80;
      sub_1000258F8(&v85);
      *(v44 + 53) = v54;
      _os_log_impl(&_mh_execute_header, v42, v43, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed all %ld changes without UID.", v44, 0x3Du);
      swift_arrayDestroy();

      a3 = v77;
      goto LABEL_17;
    }

    sub_1000258F8(&v85);
    sub_100025E9C(v11, type metadata accessor for MailboxTaskLogger);

    v55 = v14;
LABEL_12:
    sub_100025E9C(v55, type metadata accessor for MailboxTaskLogger);
    v56 = v80;
LABEL_17:
    v57 = v79;
    goto LABEL_18;
  }

  sub_100025E34(a3, v20, type metadata accessor for MailboxTaskLogger);
  sub_100025E34(a3, v17, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000258C0(a2, &v85);
  v31 = sub_1004A4A54();
  v32 = sub_1004A6034();
  if (!os_log_type_enabled(v31, v32))
  {
    sub_1000258F8(&v85);
    sub_100025E9C(v17, type metadata accessor for MailboxTaskLogger);

    v55 = v20;
    goto LABEL_12;
  }

  v77 = a3;
  v33 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  v84 = v75;
  *v33 = 68159747;
  *(v33 + 4) = 2;
  *(v33 + 8) = 256;
  v34 = v78;
  v35 = &v17[*(v78 + 20)];
  *(v33 + 10) = *v35;
  *(v33 + 11) = 2082;
  v36 = &v20[*(v34 + 20)];
  *(v33 + 13) = sub_10015BA6C(*(v36 + 1), *(v36 + 2), &v84);
  *(v33 + 21) = 1040;
  *(v33 + 23) = 2;
  *(v33 + 27) = 512;
  LOWORD(v35) = *(v35 + 12);
  sub_100025E9C(v17, type metadata accessor for MailboxTaskLogger);
  *(v33 + 29) = v35;
  *(v33 + 31) = 2160;
  *(v33 + 33) = 0x786F626C69616DLL;
  *(v33 + 41) = 2085;
  v37 = *(v36 + 4);
  LODWORD(v35) = *(v36 + 10);

  sub_100025E9C(v20, type metadata accessor for MailboxTaskLogger);
  v82 = v37;
  v83 = v35;
  v38 = sub_1004A5824();
  v40 = sub_10015BA6C(v38, v39, &v84);

  *(v33 + 43) = v40;
  *(v33 + 51) = 2048;
  if (v87)
  {
    v41 = *(v87 + 16);
  }

  else
  {
    v41 = 0;
  }

  v57 = v79;
  sub_1000258F8(&v85);
  *(v33 + 53) = v41;
  *(v33 + 61) = 2048;
  *(v33 + 63) = v30;
  _os_log_impl(&_mh_execute_header, v31, v32, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld changes without UID, still %ld remaining.", v33, 0x47u);
  swift_arrayDestroy();

  a3 = v77;
  v56 = v80;
LABEL_18:
  v58 = v81;
  if (!*(v81 + 32))
  {
    v59 = *(v81 + 24);
    sub_100025E34(a3, v56, type metadata accessor for MailboxTaskLogger);
    sub_100025E34(a3, v57, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v60 = sub_1004A4A54();
    v61 = sub_1004A6034();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v82 = v80;
      *v62 = 68159491;
      v77 = a3;
      *(v62 + 4) = 2;
      *(v62 + 8) = 256;
      v63 = v78;
      v64 = v57 + *(v78 + 20);
      *(v62 + 10) = *v64;
      *(v62 + 11) = 2082;
      v65 = v56;
      v66 = v56 + *(v63 + 20);
      *(v62 + 13) = sub_10015BA6C(*(v66 + 8), *(v66 + 16), &v82);
      *(v62 + 21) = 1040;
      *(v62 + 23) = 2;
      *(v62 + 27) = 512;
      v67 = *(v64 + 24);
      sub_100025E9C(v57, type metadata accessor for MailboxTaskLogger);
      *(v62 + 29) = v67;
      *(v62 + 31) = 2160;
      *(v62 + 33) = 0x786F626C69616DLL;
      *(v62 + 41) = 2085;
      v68 = *(v66 + 32);
      v69 = *(v66 + 40);

      sub_100025E9C(v65, type metadata accessor for MailboxTaskLogger);
      v85 = v68;
      v86 = v69;
      a3 = v77;
      v70 = sub_1004A5824();
      v72 = sub_10015BA6C(v70, v71, &v82);

      *(v62 + 43) = v72;
      *(v62 + 51) = 2048;
      *(v62 + 53) = v59;
      _os_log_impl(&_mh_execute_header, v60, v61, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Setting mailbox HIGHESTMODSEQ to %llu.", v62, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100025E9C(v57, type metadata accessor for MailboxTaskLogger);

      sub_100025E9C(v56, type metadata accessor for MailboxTaskLogger);
    }

    v73 = v76[3];
    v74 = v76[4];
    sub_100025928(v76, v73);
    (*(v74 + 64))(v59, a3, v73, v74);
    v58 = v81;
  }

  sub_1000DE294(v58, *(a2 + 120), *(a2 + 128), a3, *(a2 + 136), *(a2 + 144) | (*(a2 + 148) << 32));
}

double sub_10002333C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return result;
}

double sub_100023390()
{
  if (qword_1005CCDF8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100023404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(v5 + 136);
  v11 = *(v5 + 144);
  v12 = *(v5 + 148);
  v13 = *v5;
  v14 = *(v5 + 8);
  result = sub_100024A18(v13, v14, a1, a2, a3, a4, v10);
  if (v17 == 0xFF)
  {
    result = sub_100024C54(v13, v14, a1, a2, a3, a4, v10, v11 | (v12 << 32));
  }

  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}

uint64_t sub_1000234D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_10000C9C0(&qword_1005CD500, &unk_1004CF2D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v27[-v14];
  v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v16 - 8);
  v18 = &v27[-v17];
  v19 = *(v7 + 136);
  v27[12] = *(v7 + 148);
  sub_100023C8C(a1, a2, a3, a4, a7, v19, v15);
  v20 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    v21 = &qword_1005CD500;
    v22 = &unk_1004CF2D0;
    v23 = v15;
  }

  else
  {
    v24 = *v15;
    v25 = sub_100025FDC(v15 + *(v20 + 48), v18, &unk_1005D91B0, &unk_1004CF400);
    __chkstk_darwin(v25);
    *&v27[-16] = v18;
    sub_100023840(v24, sub_100025D54, &v27[-32]);
    v23 = v18;
    v21 = &unk_1005D91B0;
    v22 = &unk_1004CF400;
  }

  return sub_100025F40(v23, v21, v22);
}

uint64_t sub_10002376C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (*(result + 192) == 1)
  {
    v6 = *(result + 176);
    v5 = *(result + 184);
    v10 = *(result + 168);
    v7 = v10;
    v8 = result;

    sub_1000BE940(&v10, v3, v4, 0, sub_100025874);
    result = sub_100020D58(v7, v6, v5, 1);
    v9 = v10;
    *(v8 + 176) = 0;
    *(v8 + 184) = 0;
    *(v8 + 168) = v9;
    *(v8 + 192) = 1;
  }

  return result;
}

uint64_t sub_100023840(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v8 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v3;
  v13 = *(*v3 + 2);
  if (!v13)
  {
    return 1;
  }

  v17 = a3;
  v18 = a2;
  v14 = 0;
  while (1)
  {
    if (v14 >= *(v12 + 2))
    {
      __break(1u);
      goto LABEL_12;
    }

    v4 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    a2 = (*(v9 + 72) * v14);
    sub_100025E34(&v12[v4 + a2], v11, type metadata accessor for MessagesToRemoveHelper.Range);
    v15 = *v11;
    sub_100025E9C(v11, type metadata accessor for MessagesToRemoveHelper.Range);
    if (v15 == a1)
    {
      break;
    }

    if (v13 == ++v14)
    {
      return 1;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_8;
  }

LABEL_12:
  result = sub_100139854(v12);
  v12 = result;
LABEL_8:
  if (v14 >= *(v12 + 2))
  {
    __break(1u);
  }

  else
  {
    v18(&v12[v4 + a2]);
    result = 0;
    *v3 = v12;
  }

  return result;
}

uint64_t sub_1000239E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v27 = a6;
  v11 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10000C9C0(&qword_1005CD4F0, &unk_1004CF2B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  v29[0] = a1;
  v29[1] = a2;
  v29[2] = a3;
  v29[3] = a4;
  v28 = v29;
  sub_100079CE4(sub_100025FA0, a5, &v26 - v19);
  sub_100025FDC(v20, v17, &qword_1005CD4F0, &unk_1004CF2B0);
  if ((*(v12 + 48))(v17, 1, v11) == 1)
  {
    v21 = sub_10000C9C0(&qword_1005CD548, &unk_1004CF320);
    return (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  }

  else
  {
    sub_100025DB0(v17, v14);
    v23 = sub_10000C9C0(&qword_1005CD548, &unk_1004CF320);
    v24 = *(v23 + 48);
    v25 = v27;
    *v27 = *v14;
    sub_10000E268(v14 + *(v11 + 20), v25 + v24, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025E9C(v14, type metadata accessor for MessagesToRemoveHelper.Range);
    return (*(*(v23 - 8) + 56))(v25, 0, 1, v23);
  }
}

uint64_t sub_100023C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t *a7@<X8>)
{
  v112 = a2;
  v113 = a6;
  v109 = a4;
  v110 = a5;
  v108 = a3;
  v114 = a7;
  v115 = a1;
  v7 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v101 - v8;
  v116 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v111 = *(v116 - 8);
  __chkstk_darwin(v116);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v105 = (&v101 - v13);
  v14 = sub_10000C9C0(&qword_1005CD4F0, &unk_1004CF2B0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v101 - v15);
  v17 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v17 - 8);
  v103 = &v101 - v18;
  v19 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v102 = *(v19 - 8);
  __chkstk_darwin(v19);
  v101 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v101 - v22;
  __chkstk_darwin(v24);
  v26 = &v101 - v25;
  v27 = type metadata accessor for TaskHistory.Running(0);
  v106 = *(v27 - 8);
  v107 = v27;
  __chkstk_darwin(v27);
  v104 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v101 - v30;
  v32 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v32);
  v34 = (&v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100025E34(v115, v34, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    if (EnumCaseMultiPayload != 20)
    {
      if (EnumCaseMultiPayload != 12)
      {
        v79 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
        (*(*(v79 - 8) + 56))(v114, 1, 1, v79);
        return sub_100025E9C(v34, type metadata accessor for UntaggedResponse);
      }

      v36 = v34[1];
      v118[0] = *v34;
      v118[1] = v36;
      v118[2] = v34[2];
      v37 = *(&v118[0] + 1);
      if (*(&v118[0] + 1))
      {
        v38 = *&v118[0];
        v39 = *&v118[1];

        v40._countAndFlagsBits = v38;
        v40._object = v37;
        v119 = Tag.init(_:)(v40);
        if (v119.is_nil)
        {
          goto LABEL_42;
        }

        value = v119.value;
        v108 = v39;
        v111 = v38;
        v113 = v37;
        v42 = *(v112 + 16);

        if (!v42)
        {
LABEL_41:

          v37 = v113;
          v38 = v111;
          goto LABEL_42;
        }

        LODWORD(v116) = value.connectionIdentifier;
        v115 = HIDWORD(*&value);
        v43 = v112 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        v44 = *(v106 + 72);
        while (1)
        {
          sub_100025E34(v43, v31, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100025E9C(v31, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v45 = *v31;
            v46 = *(v31 + 1);
            v47 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_100025E9C(&v31[*(v47 + 64)], type metadata accessor for ClientCommand);
            v48 = v45 == v116 && v46 == v115;
            if (v48)
            {
              v49 = v43;
              v50 = v104;
              sub_100025E34(v49, v104, type metadata accessor for TaskHistory.Running);
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                v51 = *v50;
                v52 = *(v50 + 1);
                v53 = *(v50 + 2);
                sub_100025E9C(&v50[*(v47 + 64)], type metadata accessor for ClientCommand);

                v48 = v51 == v116;
                v37 = v113;
                v38 = v111;
                if (!v48)
                {
                  __break(1u);
                  goto LABEL_52;
                }

                if (v52 == v115)
                {
                  v54 = sub_10006F088(v53, v109);
                  if ((v55 & 1) == 0)
                  {
                    v56 = v54;
                    v57 = v103;
                    ExtendedSearchResponse.matchedUIDs.getter(v103);
                    sub_100016C68(v118);
                    if ((*(v102 + 48))(v57, 1, v19) == 1)
                    {
                      sub_100025F40(v57, &qword_1005CD510, &unk_1004CF2E0);
                      v58 = sub_1004A4A54();
                      v59 = sub_1004A6014();
                      v60 = os_log_type_enabled(v58, v59);
                      v61 = v114;
                      if (v60)
                      {
                        v62 = swift_slowAlloc();
                        *v62 = 0;
                        _os_log_impl(&_mh_execute_header, v58, v59, "Extended search response has no UIDs.", v62, 2u);
                      }

                      v63 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
                      v64 = *(*(v63 - 8) + 56);
                      v65 = v61;
                      return v64(v65, 1, 1, v63);
                    }

                    else
                    {
                      v97 = v101;
                      sub_100025FDC(v57, v101, &unk_1005D91B0, &unk_1004CF400);
                      v98 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
                      v99 = *(v98 + 48);
                      v100 = v114;
                      *v114 = v56;
                      sub_100025FDC(v97, v100 + v99, &unk_1005D91B0, &unk_1004CF400);
                      return (*(*(v98 - 8) + 56))(v100, 0, 1, v98);
                    }
                  }

LABEL_42:

                  sub_100016C68(v118);

LABEL_43:

                  v86 = sub_1004A4A54();
                  v87 = sub_1004A6014();

                  if (os_log_type_enabled(v86, v87))
                  {
                    v88 = swift_slowAlloc();
                    v89 = swift_slowAlloc();
                    v117[0] = v89;
                    *v88 = 136446210;
                    v90 = sub_10015BA6C(v38, v37, v117);

                    *(v88 + 4) = v90;
                    _os_log_impl(&_mh_execute_header, v86, v87, "Received unknown extended search response with tag '%{public}s'.", v88, 0xCu);
                    sub_1000197E0(v89);
                  }

                  else
                  {
                  }

                  v91 = v114;
                  v63 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
                  v64 = *(*(v63 - 8) + 56);
                  v65 = v91;
                  return v64(v65, 1, 1, v63);
                }

LABEL_52:
                __break(1u);
              }

              result = sub_100025E9C(v50, type metadata accessor for TaskHistory.Running);
              __break(1u);
              return result;
            }
          }

          v43 += v44;
          if (!--v42)
          {
            goto LABEL_41;
          }
        }
      }

      sub_100016C68(v118);
      v37 = 0xE90000000000003ELL;
      v38 = 0x6E776F6E6B6E753CLL;
      goto LABEL_43;
    }

    memcpy(v118, v34, 0x268uLL);
    if ((BYTE12(v118[0]) & 1) == 0)
    {
      v66 = v113[2];
      if (v66)
      {
        v67 = DWORD2(v118[0]);
        v68 = v113 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
        v69 = *(v111 + 72);
        while (1)
        {
          sub_100025E34(v68, v11, type metadata accessor for MessagesToRemoveHelper.Range);
          sub_10000E268(&v11[*(v116 + 20)], v9, &qword_1005CD1D0, &unk_1004CF2C0);
          LODWORD(v117[0]) = v67;
          v70 = MessageIdentifierSet.contains(_:)(v117, v19);
          sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
          if (v70)
          {
            break;
          }

          sub_100025E9C(v11, type metadata accessor for MessagesToRemoveHelper.Range);
          v68 += v69;
          if (!--v66)
          {
            goto LABEL_49;
          }
        }

        v92 = v105;
        sub_100025DB0(v11, v105);
        v93 = *v92;
        sub_100025E9C(v92, type metadata accessor for MessagesToRemoveHelper.Range);
        if (sub_10005787C(v93, v112, v108, v109))
        {
          v94 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
          v95 = v114;
          *v114 = v93;
          LODWORD(v117[0]) = v67;
          v96 = sub_100016948();
          MessageIdentifierSet.init(_:)(v117, &type metadata for UID, v96);
          sub_100025D5C(v118);
          return (*(*(v94 - 8) + 56))(v95, 0, 1, v94);
        }
      }
    }

LABEL_49:
    sub_100025D5C(v118);
    v63 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
    v64 = *(*(v63 - 8) + 56);
    v65 = v114;
    return v64(v65, 1, 1, v63);
  }

  v71 = v16;
  v72 = *v34;
  sub_100016D2C();
  sub_1004A7114();
  v73 = *(v72 + 16);
  if (v73)
  {
    v74 = (v72 + 32);
    do
    {
      v75 = *v74++;
      LODWORD(v117[0]) = v75;
      MessageIdentifierSet.insert(_:)(v118, v117, v19);
      --v73;
    }

    while (v73);
  }

  v76 = v26;
  v77 = sub_100025FDC(v23, v26, &unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v77);
  *(&v101 - 2) = v26;
  sub_100079CE4(sub_100025E14, v113, v71);
  if ((*(v111 + 48))(v71, 1, v116) == 1)
  {
    sub_100025F40(v71, &qword_1005CD4F0, &unk_1004CF2B0);
    v78 = v114;
  }

  else
  {
    v81 = *v71;
    sub_100025E9C(v71, type metadata accessor for MessagesToRemoveHelper.Range);
    v82 = sub_10005787C(v81, v112, v108, v109);
    v78 = v114;
    if (v82)
    {
      v83 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
      v84 = *(v83 + 48);
      *v78 = v81;
      sub_10000E268(v76, v78 + v84, &unk_1005D91B0, &unk_1004CF400);
      (*(*(v83 - 8) + 56))(v78, 0, 1, v83);
      return sub_100025F40(v76, &unk_1005D91B0, &unk_1004CF400);
    }
  }

  v85 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
  (*(*(v85 - 8) + 56))(v78, 1, 1, v85);
  return sub_100025F40(v76, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_100024A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v13 = sub_10000C9C0(&qword_1005CD4F0, &unk_1004CF2B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29[0] = a3;
  v29[1] = a4;
  v29[2] = a5;
  v29[3] = a6;
  v28 = v29;
  sub_100079CE4(sub_100025EFC, a7, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100025F40(v15, &qword_1005CD4F0, &unk_1004CF2B0);
    return 0;
  }

  else
  {
    sub_100025DB0(v15, v19);
    v20 = *v19;
    v21 = sub_10000C9C0(&qword_1005CD538, &qword_1004CF310);
    swift_allocBox();
    v22 = *(v21 + 48);
    v23 = v27;
    *v24 = a1;
    v24[1] = v23;
    sub_10000E268(v19 + *(v16 + 20), v24 + v22, &qword_1005CD1D0, &unk_1004CF2C0);

    sub_100025E9C(v19, type metadata accessor for MessagesToRemoveHelper.Range);
  }

  return v20;
}

uint64_t sub_100024C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v91);
  v92 = &v79 - v16;
  v17 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v17 - 8);
  v93 = (&v79 - v18);
  v19 = sub_10000C9C0(&qword_1005CD520, &qword_1004CF2F8);
  __chkstk_darwin(v19 - 8);
  v87 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v88 = (&v79 - v22);
  __chkstk_darwin(v23);
  v89 = (&v79 - v24);
  __chkstk_darwin(v25);
  v94 = (&v79 - v26);
  v27 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v27);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  __chkstk_darwin(v31);
  __chkstk_darwin(v32);
  v38 = *(a7 + 16);
  if (v38)
  {
    v82 = v36;
    v83 = v37;
    v81 = v35;
    v84 = v33;
    v85 = &v79 - v34;
    v90 = a2;
    v86 = a1;
    v39 = *(type metadata accessor for MessagesToRemoveHelper.Range(0) - 8);
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v41 = *(v39 + 72);

    v42 = 0;
    while (1)
    {
      v43 = *(a7 + v40);
      if ((sub_100019844(v43, a3, a4, a5) & 1) != 0 && (sub_10009A290(v43, 0, a3, a4, a6) & 1) != 0 && (sub_10001F268(v43, 1, a4, a6) & 1) == 0)
      {
        break;
      }

      v40 += v41;
      if (v38 == ++v42)
      {
LABEL_21:
        v56 = sub_10000C9C0(&qword_1005CD528, &unk_1004CF300);
        v57 = v94;
        (*(*(v56 - 8) + 56))(v94, 1, 1, v56);
        goto LABEL_22;
      }
    }

    v80 = (v83 + 7);
    v83 += 6;
LABEL_8:
    if (v42 >= v38)
    {
      goto LABEL_34;
    }

    v44 = type metadata accessor for MessagesToRemoveHelper.Range(0);
    v45 = *(v44 - 8);
    v46 = a7 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v47 = *(v45 + 72);
    v48 = v46 + v47 * v42 + *(v44 + 24);
    v79 = (v46 + v47 * v42);
    MessageIdentifierSet.subtracting(_:)(v48, v92);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v92, &unk_1005D91B0, &unk_1004CF400);
      v50 = 1;
    }

    else
    {
      v49 = v82;
      sub_100025FDC(v92, v82, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v49, v93, &qword_1005CD1D0, &unk_1004CF2C0);
      v50 = 0;
    }

    v51 = v84;
    (*v80)(v93, v50, 1, v84);
    if ((*v83)(v93, 1, v51) == 1)
    {
      sub_100025F40(v93, &qword_1005CD518, &qword_1004CF2F0);
      v52 = sub_10000C9C0(&qword_1005CD528, &unk_1004CF300);
      v53 = v89;
      (*(*(v52 - 8) + 56))(v89, 1, 1, v52);
      sub_100025F40(v53, &qword_1005CD520, &qword_1004CF2F8);
      while (!__OFADD__(v42++, 1))
      {
        if (v42 == v38)
        {
          goto LABEL_21;
        }

        if (v42 >= v38)
        {
          goto LABEL_33;
        }

        v55 = *(v46 + v42 * v47);
        if ((sub_100019844(v55, a3, a4, a5) & 1) != 0 && (sub_10009A290(v55, 0, a3, a4, a6) & 1) != 0 && (sub_10001F268(v55, 1, a4, a6) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v71 = v81;
    sub_100025FDC(v93, v81, &qword_1005CD1D0, &unk_1004CF2C0);
    v72 = sub_10000C9C0(&qword_1005CD528, &unk_1004CF300);
    v73 = *(v72 + 48);
    v74 = v79;
    v75 = v89;
    *v89 = *v79;
    sub_100025FDC(v71, v75 + v73, &qword_1005CD1D0, &unk_1004CF2C0);
    v76 = *(v72 - 8);
    v93 = *(v76 + 56);
    (v93)(v75, 0, 1, v72);
    sub_100025F40(v75, &qword_1005CD520, &qword_1004CF2F8);
    v77 = v88;
    sub_1000E10D0(v74, v88);
    v78 = v87;
    sub_10000E268(v77, v87, &qword_1005CD520, &qword_1004CF2F8);
    if ((*(v76 + 48))(v78, 1, v72) == 1)
    {
LABEL_35:

      __break(1u);
      return result;
    }

    v57 = v94;
    sub_100025FDC(v78, v94, &qword_1005CD528, &unk_1004CF300);
    sub_100025F40(v77, &qword_1005CD520, &qword_1004CF2F8);
    (v93)(v57, 0, 1, v72);
LABEL_22:

    v58 = sub_10000C9C0(&qword_1005CD528, &unk_1004CF300);
    v59 = (*(*(v58 - 8) + 48))(v57, 1, v58);
    v60 = v90;
    if (v59 == 1)
    {
      sub_100025F40(v57, &qword_1005CD520, &qword_1004CF2F8);
      return 0;
    }

    v62 = *v57;
    v63 = v85;
    sub_100025FDC(v57 + *(v58 + 48), v85, &qword_1005CD1D0, &unk_1004CF2C0);
    v64 = sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0);
    swift_allocBox();
    v65 = *(v64 + 48);
    *v66 = v86;
    v66[1] = v60;
    sub_100025FDC(v63, v66 + v65, &qword_1005CD1D0, &unk_1004CF2C0);

    return v62;
  }

  else if (a8 & 0x100000000) != 0 || (sub_10001F268(-1, 1, a4, a6))
  {
    return 0;
  }

  else
  {
    LODWORD(v96) = 1;
    LODWORD(v95) = a8;
    v67 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v96, &v95, &type metadata for UID, &v97);
    v96 = v97;
    v95 = Range<>.init<A>(_:)(&v96, &type metadata for UID, v67);
    sub_100016D2C();
    sub_1004A7124();
    v68 = sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0);
    swift_allocBox();
    v69 = *(v68 + 48);
    *v70 = a1;
    v70[1] = a2;
    sub_100025FDC(v29, v70 + v69, &qword_1005CD1D0, &unk_1004CF2C0);

    return -1;
  }
}

__n128 sub_100025650(uint64_t a1, uint64_t a2)
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
  *(a1 + 141) = *(a2 + 141);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100025684(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 149))
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

uint64_t sub_1000256CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 148) = 0;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 149) = 1;
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

    *(result + 149) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002574C()
{
  result = qword_1005CD428;
  if (!qword_1005CD428)
  {
    result = swift_getWitnessTable("]8\v", &type metadata for MessagesToRemoveHelper.ActionID, v0, v1);
    atomic_store(result, &qword_1005CD428);
  }

  return result;
}

unint64_t sub_1000257A4()
{
  result = qword_1005CD430;
  if (!qword_1005CD430)
  {
    result = swift_getWitnessTable(byte_1004D34E4, &type metadata for MessagesToRemoveHelper.CommandID, v0, v1);
    atomic_store(result, &qword_1005CD430);
  }

  return result;
}

unint64_t sub_1000257F8(uint64_t a1)
{
  result = sub_100025820();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100025820()
{
  result = qword_1005CD4E8;
  if (!qword_1005CD4E8)
  {
    result = swift_getWitnessTable("A{\v", &type metadata for DetectChangesToMessages, v0, v1);
    atomic_store(result, &qword_1005CD4E8);
  }

  return result;
}

void *sub_10002587C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100025928(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_100025978(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v36 = a5;
  v11 = sub_10000C9C0(&qword_1005CD4F0, &unk_1004CF2B0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v32 - v12);
  v14 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
  __chkstk_darwin(v14);
  v16 = (&v32 - v15);
  v17 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v17 - 8);
  v19 = &v32 - v18;
  v20 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v20 - 8);
  v22 = &v32 - v21;
  if (((a3 >> 59) & 0x1E | (a3 >> 2) & 1) == 0xA)
  {
    v33 = a6;
    v34 = v6;
    v23 = swift_projectBox();
    sub_10000E268(v23, v16, &qword_1005CD4F8, &unk_1004CF790);
    v24 = v16 + *(v14 + 48);
    v25 = v16 + *(v14 + 64);
    if (v16[1] == a2)
    {
      v26 = sub_1000FFC98(a1, *v16);

      if (v26)
      {
        sub_100025FDC(v24, v22, &unk_1005D91B0, &unk_1004CF400);
        v27 = sub_100025FDC(v25, v19, &qword_1005CD1D0, &unk_1004CF2C0);
        __chkstk_darwin(v27);
        *(&v32 - 2) = v19;
        sub_100079CE4(sub_100025D2C, v28, v13);
        v29 = type metadata accessor for MessagesToRemoveHelper.Range(0);
        if ((*(*(v29 - 8) + 48))(v13, 1, v29) == 1)
        {
          sub_100025F40(v13, &qword_1005CD4F0, &unk_1004CF2B0);
        }

        else
        {
          v30 = *v13;
          sub_100025E9C(v13, type metadata accessor for MessagesToRemoveHelper.Range);
          v31 = sub_10006F78C(v30, 0, v35, v36, v33);
          if (v31)
          {
            __chkstk_darwin(v31);
            *(&v32 - 2) = v22;
            sub_100023840(v30, sub_100025D4C, (&v32 - 4));
          }
        }

        v25 = v19;
        v24 = v22;
      }
    }

    else
    {
    }

    sub_100025F40(v25, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025F40(v24, &unk_1005D91B0, &unk_1004CF400);
  }
}

uint64_t sub_100025DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025F40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000C9C0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100025FDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C9C0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100026044()
{
  result = qword_1005CD568;
  if (!qword_1005CD568)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxName, &type metadata for MailboxName, v0, v1);
    atomic_store(result, &qword_1005CD568);
  }

  return result;
}

Swift::Int sub_100026098()
{
  result = sub_100093190(&off_100598A00);
  qword_1005DDEC8 = result;
  return result;
}

void sub_1000260C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  sub_1000118A4(a1, &v24 - v8);
  sub_1000118A4(a1, v6);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_100026E5C(v2, v27);
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v12 = 68159491;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v13 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v13;
    *(v12 + 11) = 2082;
    v14 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_10015BA6C(*(v14 + 1), *(v14 + 2), &v26);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    v15 = *(v13 + 12);
    sub_100011908(v6);
    *(v12 + 29) = v15;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v16 = *(v14 + 4);
    LODWORD(v14) = *(v14 + 10);

    sub_100011908(v9);
    v24 = v16;
    v25 = v14;
    v17 = sub_1004A5824();
    v19 = sub_10015BA6C(v17, v18, &v26);

    *(v12 + 43) = v19;
    *(v12 + 51) = 2082;
    LOBYTE(v24) = v29;
    v20 = sub_1000DCF64(v28);
    v22 = v21;
    sub_100026E94(v27);
    v23 = sub_10015BA6C(v20, v22, &v26);

    *(v12 + 53) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task: %{public}s", v12, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_100011908(v6);

    sub_100011908(v9);
    sub_100026E94(v27);
  }
}

void sub_1000263A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = *(a2 + 112);
  v13 = *(type metadata accessor for MailboxSyncState(0) + 48);
  v33 = a1;
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 24);
  v16 = *(a1 + v13 + 32);
  sub_100025928(a1 + v13, v15);
  (*(v16 + 32))(v12, v15, v16);
  v17 = v14[3];
  v18 = v14[4];
  sub_10002587C(v14, v17);
  v19 = *((*(v18 + 24))(v17, v18) + 16);

  sub_1000118A4(a3, v11);
  sub_1000118A4(a3, v8);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_bridgeObjectRetain_n();
  v20 = sub_1004A4A54();
  v21 = sub_1004A6034();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v22 = 68159747;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v23 = *(v6 + 20);
    v31 = v19;
    v24 = &v8[v23];
    *(v22 + 10) = v8[v23];
    *(v22 + 11) = 2082;
    v25 = &v11[*(v6 + 20)];
    *(v22 + 13) = sub_10015BA6C(*(v25 + 1), *(v25 + 2), &v36);
    *(v22 + 21) = 1040;
    *(v22 + 23) = 2;
    *(v22 + 27) = 512;
    LOWORD(v24) = *(v24 + 12);
    sub_100011908(v8);
    *(v22 + 29) = v24;
    *(v22 + 31) = 2160;
    *(v22 + 33) = 0x786F626C69616DLL;
    *(v22 + 41) = 2085;
    v26 = *(v25 + 4);
    LODWORD(v24) = *(v25 + 10);

    sub_100011908(v11);
    v34 = v26;
    v35 = v24;
    v27 = sub_1004A5824();
    v29 = sub_10015BA6C(v27, v28, &v36);

    *(v22 + 43) = v29;
    *(v22 + 51) = 2048;
    v30 = *(v12 + 16);

    *(v22 + 53) = v30;

    *(v22 + 61) = 2048;
    *(v22 + 63) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld changes without UID, still %ld remaining.", v22, 0x47u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100011908(v8);

    sub_100011908(v11);
  }

  sub_1000DE294(v33, *(a2 + 120), 0, a3, *(a2 + 128), *(a2 + 136) | (*(a2 + 140) << 32));
}

double sub_100026734()
{
  if (qword_1005CCE00 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100026794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(v5 + 104))
  {
    v6 = &off_100598A28;
  }

  else
  {
    v6 = &off_100598A98;
  }

  sub_100022658(a1, a2, a3, a4, v6, a5);
}

uint64_t sub_1000267EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(v5 + 128);
  v11 = *(v5 + 136);
  v12 = *(v5 + 140);
  v13 = *v5;
  v14 = *(v5 + 8);
  result = sub_100024A18(v13, v14, a1, a2, a3, a4, v10);
  if (v17 == 0xFF)
  {
    result = sub_100024C54(v13, v14, a1, a2, a3, a4, v10, v11 | (v12 << 32));
  }

  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}

uint64_t sub_1000268C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_10000C9C0(&qword_1005CD500, &unk_1004CF2D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v27[-v14];
  v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v16 - 8);
  v18 = &v27[-v17];
  v19 = *(v7 + 128);
  v27[12] = *(v7 + 140);
  sub_100023C8C(a1, a2, a3, a4, a7, v19, v15);
  v20 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    v21 = &qword_1005CD500;
    v22 = &unk_1004CF2D0;
    v23 = v15;
  }

  else
  {
    v24 = *v15;
    v25 = sub_100020950(v15 + *(v20 + 48), v18);
    __chkstk_darwin(v25);
    *&v27[-16] = v18;
    sub_100023840(v24, sub_100025D54, &v27[-32]);
    v21 = &unk_1005D91B0;
    v22 = &unk_1004CF400;
    v23 = v18;
  }

  return sub_100025F40(v23, v21, v22);
}

uint64_t sub_100026B44(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (*(result + 192) == 1)
  {
    v6 = *(result + 176);
    v5 = *(result + 184);
    v10 = *(result + 168);
    v7 = v10;
    v8 = result;

    sub_1000BE940(&v10, v3, v4, 0, sub_100026E54);
    result = sub_100020D58(v7, v6, v5, 1);
    v9 = v10;
    *(v8 + 176) = 0;
    *(v8 + 184) = 0;
    *(v8 + 168) = v9;
    *(v8 + 192) = 1;
  }

  return result;
}

BOOL sub_100026C18(_BOOL8 result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a2 / 2;
  if (a2 / 2 >= result)
  {
    return 0;
  }

  v5 = __OFSUB__(result, v4);
  v6 = result - v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if ((v6 - 0x100000000) < 0xFFFFFFFF00000001)
    {
      return 0;
    }

    if (a4)
    {
      return a3 < 1;
    }

    else
    {
      v7 = *(a3 + 16);
      if (v7 > 0x8B)
      {
        return 0;
      }

      v8 = (a3 + 32);
      do
      {
        result = v7 == 0;
        if (!v7)
        {
          break;
        }

        v9 = *v8++;
        --v7;
      }

      while (v9 >= v6);
    }
  }

  return result;
}

BOOL sub_100026C90(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v3 = result - a2 / 2;
  if (__OFSUB__(result, a2 / 2))
  {
    __break(1u);
  }

  else if ((v3 - 0x100000000) >= 0xFFFFFFFF00000001)
  {
    v4 = (a3 + 32);
    v5 = *(a3 + 16) + 1;
    do
    {
      result = --v5 == 0;
      if (!v5)
      {
        break;
      }

      v6 = *v4;
      v4 += 8;
    }

    while (v6 >= v3);
  }

  else
  {
    return 0;
  }

  return result;
}

__n128 sub_100026CE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100026D18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 141))
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

uint64_t sub_100026D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 140) = 0;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 141) = 1;
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

    *(result + 141) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100026DD8(uint64_t a1)
{
  result = sub_100026E00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100026E00()
{
  result = qword_1005CD620;
  if (!qword_1005CD620)
  {
    result = swift_getWitnessTable(byte_1004CF3B0, &type metadata for DetectChangesToMessagesInRecent, v0, v1);
    atomic_store(result, &qword_1005CD620);
  }

  return result;
}

Swift::Int sub_100026EC4()
{
  result = sub_100093190(&off_100598B30);
  qword_1005DDED0 = result;
  return result;
}

void sub_100026EEC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  sub_1000118A4(a1, &v24 - v8);
  sub_1000118A4(a1, v6);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_100027D64(v2, v29);
  sub_100027D64(v2, v27);
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v12 = 68159747;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v13 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v13;
    *(v12 + 11) = 2082;
    v14 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_10015BA6C(*(v14 + 1), *(v14 + 2), &v26);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    LOWORD(v13) = *(v13 + 12);
    sub_100011908(v6);
    *(v12 + 29) = v13;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v15 = *(v14 + 4);
    LODWORD(v14) = *(v14 + 10);

    sub_100011908(v9);
    v24 = v15;
    v25 = v14;
    v16 = sub_1004A5824();
    v18 = sub_10015BA6C(v16, v17, &v26);

    *(v12 + 43) = v18;
    *(v12 + 51) = 2048;
    v19 = *(v29[11] + 16);
    sub_100027D9C(v29);
    *(v12 + 53) = v19;
    *(v12 + 61) = 2082;
    LOBYTE(v24) = v28;
    v20 = sub_1000DCF64(v27[11]);
    v22 = v21;
    sub_100027D9C(v27);
    v23 = sub_10015BA6C(v20, v22, &v26);

    *(v12 + 63) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID batch(es): %{public}s", v12, 0x47u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100027D9C(v29);
    sub_100011908(v6);

    sub_100011908(v9);
    sub_100027D9C(v27);
  }
}

uint64_t sub_10002720C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v32 = a5;
  v12 = sub_10000C9C0(&qword_1005CD540, &qword_1004CF318);
  __chkstk_darwin(v12 - 8);
  v14 = (&v31 - v13);
  v15 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  v19 = *v6;
  v33 = *(v6 + 12);
  sub_1000239E4(a1, a2, a3, a4, v19, v14);
  v20 = sub_10000C9C0(&qword_1005CD548, &unk_1004CF320);
  if ((*(*(v20 - 8) + 48))(v14, 1, v20) == 1)
  {
    sub_100025F40(v14, &qword_1005CD540, &qword_1004CF318);
    v21 = sub_10000C9C0(&qword_1005CD550, &unk_1004CF4D0);
    return (*(*(v21 - 8) + 56))(a6, 1, 1, v21);
  }

  else
  {
    v23 = *v14;
    sub_100025FDC(v14 + *(v20 + 48), v18, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
    v24 = swift_allocBox();
    v26 = v25;
    sub_100027CF4(v18, v25);
    (*(v16 + 56))(v26, 0, 1, v15);
    v27 = v24 | 0xA000000000000000;
    v28 = sub_10000C9C0(&qword_1005CD550, &unk_1004CF4D0);
    v29 = (a6 + *(v28 + 48));
    *a6 = v23;
    if ((v32 & 0x100) != 0)
    {
      sub_100025F40(v18, &qword_1005CD1D0, &unk_1004CF2C0);
      *v29 = v27;
    }

    else
    {
      sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
      type metadata accessor for SearchReturnOption(0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1004CEAA0;
      swift_storeEnumTagMultiPayload();
      sub_100025F40(v18, &qword_1005CD1D0, &unk_1004CF2C0);
      *v29 = v27;
      v29[1] = v30;
    }

    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v28 - 8) + 56))(a6, 0, 1, v28);
  }
}

double sub_1000275F8()
{
  if (qword_1005CCE08 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_10002766C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (*(v6 + 112) == 1)
  {
    v7 = a6;
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    v12 = a5 + *(type metadata accessor for MailboxSyncState(0) + 48);
    v13 = *(v12 + 40);
    if ((*(v12 + 48) & 1) == 0)
    {
      v13 = *(v13 + 16);
    }

    *(v6 + 104) = v13;
    *(v6 + 112) = 0;
    a4 = v11;
    a3 = v10;
    a2 = v9;
    a1 = v8;
    a6 = v7;
  }

  if (*(v6 + 102))
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  return sub_10002720C(a1, a2, a3, a4, v14 | *(v6 + 101), a6);
}

uint64_t sub_100027720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(v5 + 88);
  v11 = *(v5 + 96);
  v12 = *(v5 + 100);
  v13 = *v5;
  v14 = *(v5 + 8);
  result = sub_100024A18(v13, v14, a1, a2, a3, a4, v10);
  if (v17 == 0xFF)
  {
    result = sub_100024C54(v13, v14, a1, a2, a3, a4, v10, v11 | (v12 << 32));
  }

  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}

uint64_t sub_1000277F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_10000C9C0(&qword_1005CD500, &unk_1004CF2D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v27[-v14];
  v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v16 - 8);
  v18 = &v27[-v17];
  v19 = *(v7 + 88);
  v27[12] = *(v7 + 100);
  sub_100023C8C(a1, a2, a3, a4, a7, v19, v15);
  v20 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    v21 = &qword_1005CD500;
    v22 = &unk_1004CF2D0;
    v23 = v15;
  }

  else
  {
    v24 = *v15;
    v25 = sub_100025FDC(v15 + *(v20 + 48), v18, &unk_1005D91B0, &unk_1004CF400);
    __chkstk_darwin(v25);
    *&v27[-16] = v18;
    sub_100023840(v24, sub_100025D54, &v27[-32]);
    v23 = v18;
    v21 = &unk_1005D91B0;
    v22 = &unk_1004CF400;
  }

  return sub_100025F40(v23, v21, v22);
}

uint64_t sub_100027A90(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (*(result + 192) == 1)
  {
    v6 = *(result + 176);
    v5 = *(result + 184);
    v10 = *(result + 168);
    v7 = v10;
    v8 = result;

    sub_1000BE940(&v10, v3, v4, 0, sub_100027CC4);
    result = sub_100020D58(v7, v6, v5, 1);
    v9 = v10;
    *(v8 + 176) = 0;
    *(v8 + 184) = 0;
    *(v8 + 168) = v9;
    *(v8 + 192) = 1;
  }

  return result;
}

__n128 sub_100027B64(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100027B90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_100027BD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100027C48(uint64_t a1)
{
  result = sub_100027C70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100027C70()
{
  result = qword_1005CD6D8;
  if (!qword_1005CD6D8)
  {
    result = swift_getWitnessTable("1y\v", &type metadata for DetectRemovedMessages, v0, v1);
    atomic_store(result, &qword_1005CD6D8);
  }

  return result;
}

uint64_t sub_100027CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100027DCC()
{
  result = sub_100093190(&off_100598B80);
  qword_1005DDED8 = result;
  return result;
}

void sub_100027DF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  sub_10002A644(a1, &v24 - v8, type metadata accessor for MailboxTaskLogger);
  sub_10002A644(a1, v6, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10002A764(v2, v28);
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 68159491;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v13 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v13;
    *(v12 + 11) = 2082;
    v14 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_10015BA6C(*(v14 + 1), *(v14 + 2), &v27);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    v15 = *(v13 + 12);
    sub_10002A6AC(v6, type metadata accessor for MailboxTaskLogger);
    *(v12 + 29) = v15;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v16 = *(v14 + 4);
    LODWORD(v14) = *(v14 + 10);

    sub_10002A6AC(v9, type metadata accessor for MailboxTaskLogger);
    v25 = v16;
    v26 = v14;
    v17 = sub_1004A5824();
    v19 = sub_10015BA6C(v17, v18, &v27);

    *(v12 + 43) = v19;
    *(v12 + 51) = 2082;
    LOBYTE(v25) = v30;
    v20 = sub_1000DCF64(v29);
    v22 = v21;
    sub_10002A79C(v28);
    v23 = sub_10015BA6C(v20, v22, &v27);

    *(v12 + 53) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task: %{public}s", v12, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_10002A6AC(v6, type metadata accessor for MailboxTaskLogger);

    sub_10002A6AC(v9, type metadata accessor for MailboxTaskLogger);
    sub_10002A79C(v28);
  }
}

void sub_100028134(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005CD798, &unk_1004D3640);
  __chkstk_darwin(v5 - 8);
  v199 = &v175[-v6];
  v7 = _s15MissingMessagesO10NewMissingVMa(0);
  v197 = *(v7 - 8);
  v198 = v7;
  __chkstk_darwin(v7);
  v192 = &v175[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v190 = &v175[-v10];
  __chkstk_darwin(v11);
  v191 = &v175[-v12];
  __chkstk_darwin(v13);
  v196 = &v175[-v14];
  v195 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v195);
  v188 = &v175[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v189 = &v175[-v17];
  __chkstk_darwin(v18);
  v186 = &v175[-v19];
  __chkstk_darwin(v20);
  v187 = &v175[-v21];
  __chkstk_darwin(v22);
  v193 = &v175[-v23];
  __chkstk_darwin(v24);
  v26 = &v175[-v25];
  __chkstk_darwin(v27);
  v29 = &v175[-v28];
  __chkstk_darwin(v30);
  v32 = &v175[-v31];
  v33 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v33 - 8);
  v35 = &v175[-v34];
  v36 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v36);
  v202 = &v175[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v38);
  __chkstk_darwin(v39);
  __chkstk_darwin(v40);
  __chkstk_darwin(v41);
  v43 = &v175[-v42];
  __chkstk_darwin(v44);
  v50 = &v175[-v46];
  v51 = *(v2 + 88);
  if (!*(v51 + 16))
  {
    v79 = *(v2 + 24);
    v80 = *(v2 + 32);
    __chkstk_darwin(v45);
    *&v175[-16] = a2;
    if ((*(a1 + 192) & 1) == 0)
    {
      return;
    }

    v82 = *(a1 + 176);
    v81 = *(a1 + 184);
    v83 = *(a1 + 168);
    v203 = v83;

    sub_1000BE940(&v203, v79, v80, 0, sub_10002A750);
    goto LABEL_37;
  }

  v180 = v49;
  v181 = v48;
  v182 = v32;
  v183 = v26;
  v184 = v47;
  v194 = v45;
  v52 = *(v2 + 96);
  v200 = v2;
  LOBYTE(v203) = *(v2 + 100);
  v53 = v203;
  sub_1000DFE98(v51, &v175[-v46]);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v54 = sub_1004A70C4();
  v201 = v50;
  if ((v54 & 1) == 0)
  {
    v176 = v53;
    v177 = v52;
    v178 = v51;
    v185 = a2;
    v179 = a1;
    MessageIdentifierSet.ranges.getter(v35);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v55 = sub_1004A7044();
    v56 = sub_1004A7074();
    v57 = sub_1004A7044();
    v58 = sub_1004A7074();
    if (v55 < v57 || v58 < v55)
    {
      __break(1u);
    }

    else
    {
      v59 = sub_1004A7044();
      v60 = sub_1004A7074();
      sub_100025F40(v35, &qword_1005CD7A0, &unk_1004CF590);
      if (v56 >= v59 && v60 >= v56)
      {
        if (!__OFSUB__(v56, v55))
        {
          if (v56 - v55 > 19)
          {
            v84 = v185;
            v85 = v183;
            sub_10002A644(v185, v183, type metadata accessor for MailboxTaskLogger);
            v86 = v193;
            sub_10002A644(v84, v193, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v87 = v201;
            v88 = v180;
            sub_10002A54C(v201, v180);
            v89 = v184;
            sub_10002A54C(v87, v184);
            v90 = sub_1004A4A54();
            v91 = sub_1004A6034();
            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v182 = swift_slowAlloc();
              v205[0] = v182;
              *v92 = 68159747;
              *(v92 + 4) = 2;
              *(v92 + 8) = 256;
              v93 = v195;
              v94 = &v86[*(v195 + 20)];
              *(v92 + 10) = *v94;
              *(v92 + 11) = 2082;
              v95 = v85 + *(v93 + 20);
              *(v92 + 13) = sub_10015BA6C(*(v95 + 8), *(v95 + 16), v205);
              *(v92 + 21) = 1040;
              *(v92 + 23) = 2;
              *(v92 + 27) = 512;
              LOWORD(v94) = *(v94 + 12);
              sub_10002A6AC(v86, type metadata accessor for MailboxTaskLogger);
              *(v92 + 29) = v94;
              *(v92 + 31) = 2160;
              *(v92 + 33) = 0x786F626C69616DLL;
              *(v92 + 41) = 2085;
              v96 = *(v95 + 32);
              LODWORD(v95) = *(v95 + 40);

              sub_10002A6AC(v85, type metadata accessor for MailboxTaskLogger);
              v203 = v96;
              v204 = v95;
              v97 = sub_1004A5824();
              v99 = sub_10015BA6C(v97, v98, v205);

              *(v92 + 43) = v99;
              *(v92 + 51) = 2048;
              v100 = v89;
              v101 = v194;
              v102 = MessageIdentifierSet.count.getter();
              sub_100025F40(v88, &unk_1005D91B0, &unk_1004CF400);
              *(v92 + 53) = v102;
              *(v92 + 61) = 2082;
              v103 = v202;
              MessageIdentifierSet.suffix(_:)(20, v101, v202);
              v104 = MessageIdentifierSet.debugDescription.getter();
              v106 = v105;
              sub_100025F40(v103, &unk_1005D91B0, &unk_1004CF400);
              sub_100025F40(v100, &unk_1005D91B0, &unk_1004CF400);
              v107 = sub_10015BA6C(v104, v106, v205);

              *(v92 + 63) = v107;
              _os_log_impl(&_mh_execute_header, v90, v91, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: ... %{public}s", v92, 0x47u);
              swift_arrayDestroy();
            }

            else
            {
              sub_100025F40(v88, &unk_1005D91B0, &unk_1004CF400);
              sub_10002A6AC(v86, type metadata accessor for MailboxTaskLogger);

              sub_100025F40(v89, &unk_1005D91B0, &unk_1004CF400);
              sub_10002A6AC(v85, type metadata accessor for MailboxTaskLogger);
            }

            a1 = v179;
            a2 = v185;
          }

          else
          {
            a2 = v185;
            v61 = v182;
            sub_10002A644(v185, v182, type metadata accessor for MailboxTaskLogger);
            sub_10002A644(a2, v29, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v62 = v201;
            sub_10002A54C(v201, v43);
            v63 = v181;
            sub_10002A54C(v62, v181);
            v64 = sub_1004A4A54();
            v65 = sub_1004A6034();
            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              v205[0] = v193;
              *v66 = 68159747;
              LODWORD(v184) = v65;
              *(v66 + 4) = 2;
              *(v66 + 8) = 256;
              v67 = v195;
              v68 = &v29[*(v195 + 20)];
              *(v66 + 10) = *v68;
              *(v66 + 11) = 2082;
              v69 = v61 + *(v67 + 20);
              *(v66 + 13) = sub_10015BA6C(*(v69 + 8), *(v69 + 16), v205);
              *(v66 + 21) = 1040;
              *(v66 + 23) = 2;
              *(v66 + 27) = 512;
              LOWORD(v68) = *(v68 + 12);
              sub_10002A6AC(v29, type metadata accessor for MailboxTaskLogger);
              *(v66 + 29) = v68;
              *(v66 + 31) = 2160;
              *(v66 + 33) = 0x786F626C69616DLL;
              *(v66 + 41) = 2085;
              v70 = *(v69 + 32);
              LODWORD(v68) = *(v69 + 40);

              sub_10002A6AC(v61, type metadata accessor for MailboxTaskLogger);
              v203 = v70;
              v204 = v68;
              v71 = sub_1004A5824();
              v73 = sub_10015BA6C(v71, v72, v205);

              *(v66 + 43) = v73;
              *(v66 + 51) = 2048;
              v74 = MessageIdentifierSet.count.getter();
              sub_100025F40(v43, &unk_1005D91B0, &unk_1004CF400);
              *(v66 + 53) = v74;
              *(v66 + 61) = 2082;
              v75 = MessageIdentifierSet.debugDescription.getter();
              v77 = v76;
              a2 = v185;
              sub_100025F40(v63, &unk_1005D91B0, &unk_1004CF400);
              v78 = sub_10015BA6C(v75, v77, v205);

              *(v66 + 63) = v78;
              _os_log_impl(&_mh_execute_header, v64, v184, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: %{public}s", v66, 0x47u);
              swift_arrayDestroy();
            }

            else
            {
              sub_100025F40(v43, &unk_1005D91B0, &unk_1004CF400);
              sub_10002A6AC(v29, type metadata accessor for MailboxTaskLogger);

              sub_100025F40(v63, &unk_1005D91B0, &unk_1004CF400);
              sub_10002A6AC(v61, type metadata accessor for MailboxTaskLogger);
            }

            a1 = v179;
          }

          v51 = v178;
          v52 = v177;
          LOBYTE(v53) = v176;
          goto LABEL_20;
        }

LABEL_43:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_20:
  LOBYTE(v203) = v53;
  v108 = v202;
  v109 = sub_1000E1570(v51, v52 | (v53 << 32));
  __chkstk_darwin(v109);
  *&v175[-16] = v108;
  v110 = sub_1000DCD18(0, sub_10002A5BC, &v175[-32], v51);
  v111 = sub_100025F40(v108, &unk_1005D91B0, &unk_1004CF400);
  v112 = v51;
  v113 = a2;
  if (v110 < 1)
  {
    goto LABEL_35;
  }

  LOBYTE(v203) = v53;
  v114 = v199;
  sub_1000E0110(0x10F, v112, v52 | (v53 << 32), v199);
  if ((*(v197 + 48))(v114, 1, v198) == 1)
  {
    v111 = sub_100025F40(v114, &qword_1005CD798, &unk_1004D3640);
    goto LABEL_35;
  }

  v115 = v196;
  sub_10002A5E0(v114, v196);
  if (v110 > 0x13)
  {
    v137 = v189;
    sub_10002A644(v113, v189, type metadata accessor for MailboxTaskLogger);
    v138 = v188;
    sub_10002A644(v113, v188, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v139 = v190;
    sub_10002A644(v115, v190, _s15MissingMessagesO10NewMissingVMa);
    v140 = v192;
    sub_10002A644(v115, v192, _s15MissingMessagesO10NewMissingVMa);
    v119 = sub_1004A4A54();
    v141 = sub_1004A6014();
    if (os_log_type_enabled(v119, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v185 = v113;
      v199 = v143;
      v205[0] = v143;
      *v142 = 68160003;
      LODWORD(v198) = v141;
      *(v142 + 4) = 2;
      *(v142 + 8) = 256;
      v145 = v194;
      v144 = v195;
      v146 = v137;
      v147 = &v138[*(v195 + 20)];
      *(v142 + 10) = *v147;
      v179 = a1;
      *(v142 + 11) = 2082;
      v148 = v139;
      v149 = v146 + *(v144 + 20);
      *(v142 + 13) = sub_10015BA6C(*(v149 + 8), *(v149 + 16), v205);
      *(v142 + 21) = 1040;
      *(v142 + 23) = 2;
      *(v142 + 27) = 512;
      LOWORD(v147) = *(v147 + 12);
      sub_10002A6AC(v138, type metadata accessor for MailboxTaskLogger);
      *(v142 + 29) = v147;
      *(v142 + 31) = 2160;
      *(v142 + 33) = 0x786F626C69616DLL;
      *(v142 + 41) = 2085;
      v150 = *(v149 + 32);
      LODWORD(v149) = *(v149 + 40);

      sub_10002A6AC(v146, type metadata accessor for MailboxTaskLogger);
      v203 = v150;
      v204 = v149;
      v151 = sub_1004A5824();
      v153 = sub_10015BA6C(v151, v152, v205);

      *(v142 + 43) = v153;
      *(v142 + 51) = 2048;
      *(v142 + 53) = v110;
      *(v142 + 61) = 2048;
      v154 = MessageIdentifierSet.count.getter();
      sub_10002A6AC(v148, _s15MissingMessagesO10NewMissingVMa);
      *(v142 + 63) = v154;
      *(v142 + 71) = 2082;
      a1 = v179;
      v115 = v196;
      v155 = v202;
      v156 = v192;
      MessageIdentifierSet.suffix(_:)(20, v145, v202);
      v157 = MessageIdentifierSet.debugDescription.getter();
      v159 = v158;
      sub_100025F40(v155, &unk_1005D91B0, &unk_1004CF400);
      sub_10002A6AC(v156, _s15MissingMessagesO10NewMissingVMa);
      v160 = sub_10015BA6C(v157, v159, v205);

      *(v142 + 73) = v160;
      _os_log_impl(&_mh_execute_header, v119, v198, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs, adding %ld UIDs as missing: ... %{public}s", v142, 0x51u);
      swift_arrayDestroy();
      goto LABEL_28;
    }

    sub_10002A6AC(v139, _s15MissingMessagesO10NewMissingVMa);
    sub_10002A6AC(v138, type metadata accessor for MailboxTaskLogger);

    sub_10002A6AC(v140, _s15MissingMessagesO10NewMissingVMa);
    v162 = v137;
LABEL_31:
    v161 = sub_10002A6AC(v162, type metadata accessor for MailboxTaskLogger);
    goto LABEL_32;
  }

  v116 = v187;
  sub_10002A644(v113, v187, type metadata accessor for MailboxTaskLogger);
  v117 = v186;
  sub_10002A644(v113, v186, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v118 = v191;
  sub_10002A644(v115, v191, _s15MissingMessagesO10NewMissingVMa);
  v119 = sub_1004A4A54();
  v120 = sub_1004A6014();
  if (!os_log_type_enabled(v119, v120))
  {
    sub_10002A6AC(v117, type metadata accessor for MailboxTaskLogger);

    sub_10002A6AC(v118, _s15MissingMessagesO10NewMissingVMa);
    v162 = v116;
    goto LABEL_31;
  }

  v121 = swift_slowAlloc();
  v122 = swift_slowAlloc();
  v185 = v113;
  v205[0] = v122;
  *v121 = 68159747;
  LODWORD(v202) = v120;
  *(v121 + 4) = 2;
  *(v121 + 8) = 256;
  v123 = v195;
  v124 = &v117[*(v195 + 20)];
  *(v121 + 10) = *v124;
  v125 = a1;
  *(v121 + 11) = 2082;
  v126 = v116;
  v127 = &v116[*(v123 + 20)];
  *(v121 + 13) = sub_10015BA6C(*(v127 + 1), *(v127 + 2), v205);
  *(v121 + 21) = 1040;
  *(v121 + 23) = 2;
  *(v121 + 27) = 512;
  LOWORD(v124) = *(v124 + 12);
  sub_10002A6AC(v117, type metadata accessor for MailboxTaskLogger);
  *(v121 + 29) = v124;
  *(v121 + 31) = 2160;
  *(v121 + 33) = 0x786F626C69616DLL;
  *(v121 + 41) = 2085;
  v128 = *(v127 + 4);
  LODWORD(v127) = *(v127 + 10);

  sub_10002A6AC(v126, type metadata accessor for MailboxTaskLogger);
  v203 = v128;
  v204 = v127;
  v129 = sub_1004A5824();
  v131 = sub_10015BA6C(v129, v130, v205);

  *(v121 + 43) = v131;
  *(v121 + 51) = 2048;
  *(v121 + 53) = v110;
  *(v121 + 61) = 2082;
  a1 = v125;
  v115 = v196;
  v132 = v191;
  v133 = MessageIdentifierSet.debugDescription.getter();
  v135 = v134;
  sub_10002A6AC(v132, _s15MissingMessagesO10NewMissingVMa);
  v136 = sub_10015BA6C(v133, v135, v205);

  *(v121 + 63) = v136;
  _os_log_impl(&_mh_execute_header, v119, v202, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs: %{public}s", v121, 0x47u);
  swift_arrayDestroy();
LABEL_28:
  v113 = v185;

LABEL_32:
  v163 = *(v200 + 24);
  v164 = *(v200 + 32);
  __chkstk_darwin(v161);
  *&v175[-16] = v115;
  if (*(a1 + 192) == 1)
  {
    v166 = v113;
    v168 = *(a1 + 176);
    v167 = *(a1 + 184);
    v203 = *(a1 + 168);
    v165 = v203;

    sub_1000BE940(&v203, v163, v164, 0, sub_10002A70C);
    v169 = v168;
    v113 = v166;
    sub_100020D58(v165, v169, v167, 1);
    v170 = v203;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v170;
    *(a1 + 192) = 1;
  }

  v111 = sub_10002A6AC(v115, _s15MissingMessagesO10NewMissingVMa);
LABEL_35:
  v171 = *(v200 + 24);
  v172 = *(v200 + 32);
  __chkstk_darwin(v111);
  *&v175[-16] = v173;
  *&v175[-8] = v113;
  if (*(a1 + 192))
  {
    v82 = *(a1 + 176);
    v81 = *(a1 + 184);
    v83 = *(a1 + 168);
    v203 = v83;

    sub_1000BE940(&v203, v171, v172, 0, sub_10002A5D8);
    sub_100025F40(v201, &unk_1005D91B0, &unk_1004CF400);
LABEL_37:
    sub_100020D58(v83, v82, v81, 1);
    v174 = v203;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v174;
    *(a1 + 192) = 1;
    return;
  }

  sub_100025F40(v201, &unk_1005D91B0, &unk_1004CF400);
}

void sub_100029700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  v10 = a1 + *(type metadata accessor for MailboxSyncState(0) + 48);
  v11 = *(v10 + 40);
  v12 = v11;
  if ((*(v10 + 48) & 1) == 0)
  {
    v12 = *(v11 + 16);
  }

  sub_10002A758(v11, *(v10 + 48));
  *(v10 + 40) = _swiftEmptyArrayStorage;
  *(v10 + 48) = 0;
  sub_10002A644(a2, v9, type metadata accessor for MailboxTaskLogger);
  sub_10002A644(a2, v6, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v13 = sub_1004A4A54();
  v14 = sub_1004A6034();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24[0] = v12;
    v26 = v16;
    *v15 = 68159491;
    *(v15 + 4) = 2;
    *(v15 + 8) = 256;
    v17 = &v6[*(v4 + 20)];
    *(v15 + 10) = *v17;
    *(v15 + 11) = 2082;
    v18 = &v9[*(v4 + 20)];
    *(v15 + 13) = sub_10015BA6C(*(v18 + 1), *(v18 + 2), &v26);
    *(v15 + 21) = 1040;
    *(v15 + 23) = 2;
    *(v15 + 27) = 512;
    v19 = *(v17 + 12);
    sub_10002A6AC(v6, type metadata accessor for MailboxTaskLogger);
    *(v15 + 29) = v19;
    *(v15 + 31) = 2160;
    *(v15 + 33) = 0x786F626C69616DLL;
    *(v15 + 41) = 2085;
    v20 = *(v18 + 4);
    LODWORD(v18) = *(v18 + 10);

    sub_10002A6AC(v9, type metadata accessor for MailboxTaskLogger);
    v24[1] = v20;
    v25 = v18;
    v21 = sub_1004A5824();
    v23 = sub_10015BA6C(v21, v22, &v26);

    *(v15 + 43) = v23;
    *(v15 + 51) = 2048;
    *(v15 + 53) = v24[0];
    _os_log_impl(&_mh_execute_header, v13, v14, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Local mailbox is empty. Removed %ld pending expunge.", v15, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_10002A6AC(v6, type metadata accessor for MailboxTaskLogger);

    sub_10002A6AC(v9, type metadata accessor for MailboxTaskLogger);
  }
}

void sub_100029A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  v18 = *(a2 + 104);
  v19 = a1 + *(type metadata accessor for MailboxSyncState(0) + 48);
  sub_1000FFB58(v18);
  v20 = *(v19 + 40);
  if ((*(v19 + 48) & 1) == 0)
  {
    v20 = *(v20 + 16);
  }

  if (v20 < 1)
  {
    sub_10002A644(a3, v11, type metadata accessor for MailboxTaskLogger);
    sub_10002A644(a3, v8, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v21 = sub_1004A4A54();
    v31 = sub_1004A6034();
    if (os_log_type_enabled(v21, v31))
    {
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v32 = 68159491;
      v44 = v18;
      *(v32 + 4) = 2;
      *(v32 + 8) = 256;
      v33 = &v8[*(v6 + 20)];
      *(v32 + 10) = *v33;
      *(v32 + 11) = 2082;
      v34 = &v11[*(v6 + 20)];
      *(v32 + 13) = sub_10015BA6C(*(v34 + 1), *(v34 + 2), &v47);
      *(v32 + 21) = 1040;
      *(v32 + 23) = 2;
      *(v32 + 27) = 512;
      v35 = *(v33 + 12);
      sub_10002A6AC(v8, type metadata accessor for MailboxTaskLogger);
      *(v32 + 29) = v35;
      *(v32 + 31) = 2160;
      *(v32 + 33) = 0x786F626C69616DLL;
      *(v32 + 41) = 2085;
      v36 = *(v34 + 4);
      v37 = *(v34 + 10);

      sub_10002A6AC(v11, type metadata accessor for MailboxTaskLogger);
      v45 = v36;
      v46 = v37;
      v38 = sub_1004A5824();
      v40 = sub_10015BA6C(v38, v39, &v47);

      *(v32 + 43) = v40;
      *(v32 + 51) = 2048;
      *(v32 + 53) = v44;
      _os_log_impl(&_mh_execute_header, v21, v31, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed all %ld EXPUNGE messages.", v32, 0x3Du);
      swift_arrayDestroy();

      goto LABEL_8;
    }

    sub_10002A6AC(v8, type metadata accessor for MailboxTaskLogger);

    v41 = v11;
  }

  else
  {
    sub_10002A644(a3, v17, type metadata accessor for MailboxTaskLogger);
    sub_10002A644(a3, v14, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v21 = sub_1004A4A54();
    v22 = sub_1004A6034();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47 = v43;
      *v23 = 68159747;
      *(v23 + 4) = 2;
      *(v23 + 8) = 256;
      v24 = *(v6 + 20);
      v44 = v18;
      v25 = &v14[v24];
      *(v23 + 10) = v14[v24];
      *(v23 + 11) = 2082;
      v26 = &v17[*(v6 + 20)];
      *(v23 + 13) = sub_10015BA6C(*(v26 + 1), *(v26 + 2), &v47);
      *(v23 + 21) = 1040;
      *(v23 + 23) = 2;
      *(v23 + 27) = 512;
      LOWORD(v25) = *(v25 + 12);
      sub_10002A6AC(v14, type metadata accessor for MailboxTaskLogger);
      *(v23 + 29) = v25;
      *(v23 + 31) = 2160;
      *(v23 + 33) = 0x786F626C69616DLL;
      *(v23 + 41) = 2085;
      v27 = *(v26 + 4);
      LODWORD(v25) = *(v26 + 10);

      sub_10002A6AC(v17, type metadata accessor for MailboxTaskLogger);
      v45 = v27;
      v46 = v25;
      v28 = sub_1004A5824();
      v30 = sub_10015BA6C(v28, v29, &v47);

      *(v23 + 43) = v30;
      *(v23 + 51) = 2048;
      *(v23 + 53) = v44;
      *(v23 + 61) = 2048;
      *(v23 + 63) = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld EXPUNGE messages, still %ld remaining.", v23, 0x47u);
      swift_arrayDestroy();

LABEL_8:

      return;
    }

    sub_10002A6AC(v14, type metadata accessor for MailboxTaskLogger);

    v41 = v17;
  }

  sub_10002A6AC(v41, type metadata accessor for MailboxTaskLogger);
}

double sub_100029FC0()
{
  if (qword_1005CCE10 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_10002A02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_10000C9C0(&qword_1005CD7B8, &unk_1004CF5B0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v19 - v12);
  if (*(v5 + 102))
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  sub_10002720C(a1, a2, a3, a4, v14 | *(v5 + 101), v13);
  v15 = sub_10000C9C0(&qword_1005CD550, &unk_1004CF4D0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_100025F40(v13, &qword_1005CD7B8, &unk_1004CF5B0);
    v17 = 1;
  }

  else
  {
    sub_100025FDC(v13, a5, &qword_1005CD550, &unk_1004CF4D0);
    v17 = 0;
  }

  return (*(v16 + 56))(a5, v17, 1, v15);
}

uint64_t sub_10002A1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_10000C9C0(&qword_1005CD500, &unk_1004CF2D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v27[-v14];
  v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v16 - 8);
  v18 = &v27[-v17];
  v19 = *(v7 + 88);
  v27[12] = *(v7 + 100);
  sub_100023C8C(a1, a2, a3, a4, a7, v19, v15);
  v20 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    v21 = &qword_1005CD500;
    v22 = &unk_1004CF2D0;
    v23 = v15;
  }

  else
  {
    v24 = *v15;
    v25 = sub_100025FDC(v15 + *(v20 + 48), v18, &unk_1005D91B0, &unk_1004CF400);
    __chkstk_darwin(v25);
    *&v27[-16] = v18;
    sub_100023840(v24, sub_100025D54, &v27[-32]);
    v23 = v18;
    v21 = &unk_1005D91B0;
    v22 = &unk_1004CF400;
  }

  return sub_100025F40(v23, v21, v22);
}

__n128 sub_10002A3F8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10002A41C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_10002A464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002A4D0(uint64_t a1)
{
  result = sub_10002A4F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002A4F8()
{
  result = qword_1005CD790;
  if (!qword_1005CD790)
  {
    result = swift_getWitnessTable("ix\v", &type metadata for DetectRemovedMessagesInRecent, v0, v1);
    atomic_store(result, &qword_1005CD790);
  }

  return result;
}

uint64_t sub_10002A54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A5E0(uint64_t a1, uint64_t a2)
{
  v4 = _s15MissingMessagesO10NewMissingVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002A6AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002A70C()
{
  v1 = *(v0 + 16);
  type metadata accessor for MailboxSyncState(0);
  return sub_1000E3CF8(v1);
}

uint64_t sub_10002A758(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_10002A7E0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DetermineMessageBatches.TaskState(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

void *sub_10002A8C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DetermineMessageBatches.TaskState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002A984(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002A9BC(uint64_t a1)
{
  sub_10002AABC(319);
  if (v1 <= 0x3F)
  {
    sub_10002AB6C(319);
    if (v2 <= 0x3F)
    {
      sub_10002ABD0();
      if (v3 <= 0x3F)
      {
        type metadata accessor for DetermineMessageBatches.TaskState(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10002AABC(uint64_t a1)
{
  if (!qword_1005CD828)
  {
    sub_10002AB18();
    v1 = sub_1004A5DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1005CD828);
    }
  }
}

unint64_t sub_10002AB18()
{
  result = qword_1005CD830;
  if (!qword_1005CD830)
  {
    result = swift_getWitnessTable(byte_1004D98B0, &type metadata for SyncStep, v0, v1);
    atomic_store(result, &qword_1005CD830);
  }

  return result;
}

void sub_10002AB6C(uint64_t a1)
{
  if (!qword_1005CD838)
  {
    sub_10000DEFC(&qword_1005CD198, &qword_1004CEC20);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005CD838);
    }
  }
}

void sub_10002ABD0()
{
  if (!qword_1005CD840)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CD840);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for WindowOfInterestSize(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10002AC34(uint64_t *a1, int a2)
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

uint64_t sub_10002AC7C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DetermineMessageBatches.Mode(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for DetermineMessageBatches.Mode(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
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
        goto LABEL_22;
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

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10002AE30(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_WORD *sub_10002AE44(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_10002AE78(uint64_t a1)
{
  result = sub_10002AEEC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MessageBatches(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_10002AEEC()
{
  result = qword_1005CD918;
  if (!qword_1005CD918)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1005CD918);
  }

  return result;
}

uint64_t sub_10002AF1C(uint64_t a1, uint64_t a2)
{
  v3 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if ((*(a2 + 16) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = *a2 ^ *a1 ^ 1;
  if (*(a2 + 16))
  {
    v4 = 0;
  }

  if (*(a1 + 16))
  {
    v4 = v3;
  }

  return v4 & 1;
}

BOOL sub_10002AF64(unsigned __int16 *a1, _WORD *a2)
{
  v2 = *a1;
  v3 = *a1;
  result = *a2 == 2 && v3 == 2;
  if (v3 != 2 && *a2 != 2)
  {
    return ((*a2 ^ v2) & 0x101) == 0;
  }

  return result;
}

void sub_10002AFBC(uint64_t a1)
{
  v3 = type metadata accessor for DetermineMessageBatches(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v122 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v119 = (&v113 - v7);
  __chkstk_darwin(v8);
  v117 = &v113 - v9;
  v121 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v121);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v118 = &v113 - v13;
  __chkstk_darwin(v14);
  v16 = &v113 - v15;
  __chkstk_darwin(v17);
  v19 = &v113 - v18;
  __chkstk_darwin(v20);
  v114 = &v113 - v21;
  __chkstk_darwin(v22);
  v115 = &v113 - v23;
  __chkstk_darwin(v24);
  v26 = &v113 - v25;
  __chkstk_darwin(v27);
  v29 = &v113 - v28;
  v30 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v30 - 8);
  v116 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v120 = &v113 - v33;
  v34 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  __chkstk_darwin(v34);
  v36 = (&v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031C0C(v1 + *(v4 + 64), v36, type metadata accessor for DetermineMessageBatches.TaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v65 = *v36;
    v66 = v118;
    sub_100031C0C(a1, v118, type metadata accessor for MailboxTaskLogger);
    sub_100031C0C(a1, v11, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100031C0C(v1, v122, type metadata accessor for DetermineMessageBatches);
    v67 = sub_1004A4A54();
    v68 = sub_1004A6034();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v69 = 68159747;
      *(v69 + 4) = 2;
      *(v69 + 8) = 256;
      v70 = v121;
      v71 = &v11[*(v121 + 20)];
      *(v69 + 10) = *v71;
      *(v69 + 11) = 2082;
      v72 = v66 + *(v70 + 20);
      *(v69 + 13) = sub_10015BA6C(*(v72 + 8), *(v72 + 16), &v126);
      *(v69 + 21) = 1040;
      *(v69 + 23) = 2;
      *(v69 + 27) = 512;
      LOWORD(v71) = *(v71 + 12);
      sub_100031C74(v11, type metadata accessor for MailboxTaskLogger);
      *(v69 + 29) = v71;
      *(v69 + 31) = 2160;
      *(v69 + 33) = 0x786F626C69616DLL;
      *(v69 + 41) = 2085;
      v73 = *(v72 + 32);
      LODWORD(v71) = *(v72 + 40);

      sub_100031C74(v66, type metadata accessor for MailboxTaskLogger);
      v124 = v73;
      v125 = v71;
      v74 = sub_1004A5824();
      v76 = sub_10015BA6C(v74, v75, &v126);

      *(v69 + 43) = v76;
      *(v69 + 51) = 2048;
      *(v69 + 53) = v65;
      *(v69 + 61) = 2048;
      v77 = *(v122 + 144);
      sub_100031C74(v122, type metadata accessor for DetermineMessageBatches);
      *(v69 + 63) = v77;
      _os_log_impl(&_mh_execute_header, v67, v68, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Will query local persistence (message count: %ld, batch size: %ld).", v69, 0x47u);
      swift_arrayDestroy();

      return;
    }

    sub_100031C74(v122, type metadata accessor for DetermineMessageBatches);
    sub_100031C74(v11, type metadata accessor for MailboxTaskLogger);

    v90 = v66;
    v91 = type metadata accessor for MailboxTaskLogger;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v38 = v120;
    sub_100035908(v36, v120, type metadata accessor for MessageBatches);
    if (*(*(v38 + 8) + 16))
    {
      v39 = v115;
      sub_100031C0C(a1, v115, type metadata accessor for MailboxTaskLogger);
      v40 = v114;
      sub_100031C0C(a1, v114, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v41 = v116;
      sub_100031C0C(v38, v116, type metadata accessor for MessageBatches);
      v42 = v117;
      sub_100031C0C(v1, v117, type metadata accessor for DetermineMessageBatches);
      v43 = sub_1004A4A54();
      v44 = sub_1004A6034();
      if (os_log_type_enabled(v43, v44))
      {
        v119 = v43;
        v45 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v126 = v122;
        *v45 = 68159747;
        *(v45 + 4) = 2;
        *(v45 + 8) = 256;
        v46 = v121;
        v47 = v40 + *(v121 + 20);
        *(v45 + 10) = *v47;
        *(v45 + 11) = 2082;
        v48 = v40;
        v49 = v39;
        v50 = v39 + *(v46 + 20);
        *(v45 + 13) = sub_10015BA6C(*(v50 + 8), *(v50 + 16), &v126);
        *(v45 + 21) = 1040;
        *(v45 + 23) = 2;
        *(v45 + 27) = 512;
        LOWORD(v47) = *(v47 + 24);
        sub_100031C74(v48, type metadata accessor for MailboxTaskLogger);
        *(v45 + 29) = v47;
        *(v45 + 31) = 2160;
        *(v45 + 33) = 0x786F626C69616DLL;
        *(v45 + 41) = 2085;
        v51 = *(v50 + 32);
        LODWORD(v50) = *(v50 + 40);

        sub_100031C74(v49, type metadata accessor for MailboxTaskLogger);
        v124 = v51;
        v125 = v50;
        v52 = sub_1004A5824();
        v54 = sub_10015BA6C(v52, v53, &v126);

        *(v45 + 43) = v54;
        *(v45 + 51) = 2082;
        v55 = *(v41 + 8);
        v56 = *(v55 + 16);
        v57 = _swiftEmptyArrayStorage;
        if (v56)
        {
          LODWORD(v121) = v44;
          v124 = _swiftEmptyArrayStorage;
          sub_100134BC4(0, v56, 0);
          v57 = v124;
          v58 = (v55 + 32);
          do
          {
            v123 = *v58;
            sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
            v59 = sub_1004A5804();
            v124 = v57;
            v62 = v57[2];
            v61 = v57[3];
            if (v62 >= v61 >> 1)
            {
              v118 = v59;
              v64 = v60;
              sub_100134BC4((v61 > 1), v62 + 1, 1);
              v60 = v64;
              v59 = v118;
              v57 = v124;
            }

            v57[2] = v62 + 1;
            v63 = &v57[2 * v62];
            v63[4] = v59;
            v63[5] = v60;
            ++v58;
            --v56;
          }

          while (v56);
          v38 = v120;
          v41 = v116;
          v42 = v117;
          LOBYTE(v44) = v121;
        }

        else
        {
          v38 = v120;
        }

        v124 = v57;
        sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
        sub_100031CDC();
        v107 = sub_1004A5614();
        v109 = v108;

        sub_100031C74(v41, type metadata accessor for MessageBatches);
        v110 = sub_10015BA6C(v107, v109, &v126);

        *(v45 + 53) = v110;
        *(v45 + 61) = 2048;
        v111 = *(v42 + 144);
        sub_100031C74(v42, type metadata accessor for DetermineMessageBatches);
        *(v45 + 63) = v111;
        v112 = v119;
        _os_log_impl(&_mh_execute_header, v119, v44, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Using fixed range(s): %{public}s (batch size: %ld).", v45, 0x47u);
        swift_arrayDestroy();

        goto LABEL_24;
      }

      sub_100031C74(v42, type metadata accessor for DetermineMessageBatches);
      sub_100031C74(v40, type metadata accessor for MailboxTaskLogger);

      sub_100031C74(v39, type metadata accessor for MailboxTaskLogger);
      v105 = type metadata accessor for MessageBatches;
      v106 = v41;
    }

    else
    {
      v92 = v29;
      sub_100031C0C(a1, v29, type metadata accessor for MailboxTaskLogger);
      sub_100031C0C(a1, v26, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v93 = sub_1004A4A54();
      v94 = sub_1004A6034();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *v95 = 68159235;
        *(v95 + 4) = 2;
        *(v95 + 8) = 256;
        v96 = v121;
        v97 = v38;
        v98 = &v26[*(v121 + 20)];
        *(v95 + 10) = *v98;
        *(v95 + 11) = 2082;
        v99 = v92 + *(v96 + 20);
        *(v95 + 13) = sub_10015BA6C(*(v99 + 8), *(v99 + 16), &v126);
        *(v95 + 21) = 1040;
        *(v95 + 23) = 2;
        *(v95 + 27) = 512;
        LOWORD(v98) = *(v98 + 12);
        sub_100031C74(v26, type metadata accessor for MailboxTaskLogger);
        *(v95 + 29) = v98;
        *(v95 + 31) = 2160;
        *(v95 + 33) = 0x786F626C69616DLL;
        *(v95 + 41) = 2085;
        v100 = *(v99 + 32);
        v101 = *(v99 + 40);

        sub_100031C74(v92, type metadata accessor for MailboxTaskLogger);
        v124 = v100;
        v125 = v101;
        v102 = sub_1004A5824();
        v104 = sub_10015BA6C(v102, v103, &v126);

        *(v95 + 43) = v104;
        v38 = v97;
        _os_log_impl(&_mh_execute_header, v93, v94, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. No messages.", v95, 0x33u);
        swift_arrayDestroy();

LABEL_24:
        v91 = type metadata accessor for MessageBatches;
        v90 = v38;
        goto LABEL_25;
      }

      sub_100031C74(v26, type metadata accessor for MailboxTaskLogger);

      v106 = v29;
      v105 = type metadata accessor for MailboxTaskLogger;
    }

    sub_100031C74(v106, v105);
    goto LABEL_24;
  }

  sub_100031C0C(a1, v19, type metadata accessor for MailboxTaskLogger);
  sub_100031C0C(a1, v16, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v78 = v119;
  sub_100031C0C(v1, v119, type metadata accessor for DetermineMessageBatches);
  v79 = sub_1004A4A54();
  v80 = sub_1004A6034();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *v81 = 68159491;
    *(v81 + 4) = 2;
    *(v81 + 8) = 256;
    v82 = v121;
    v83 = &v16[*(v121 + 20)];
    *(v81 + 10) = *v83;
    *(v81 + 11) = 2082;
    v84 = &v19[*(v82 + 20)];
    *(v81 + 13) = sub_10015BA6C(*(v84 + 1), *(v84 + 2), &v126);
    *(v81 + 21) = 1040;
    *(v81 + 23) = 2;
    *(v81 + 27) = 512;
    LOWORD(v83) = *(v83 + 12);
    sub_100031C74(v16, type metadata accessor for MailboxTaskLogger);
    *(v81 + 29) = v83;
    *(v81 + 31) = 2160;
    *(v81 + 33) = 0x786F626C69616DLL;
    *(v81 + 41) = 2085;
    v85 = *(v84 + 4);
    LODWORD(v83) = *(v84 + 10);

    sub_100031C74(v19, type metadata accessor for MailboxTaskLogger);
    v124 = v85;
    v125 = v83;
    v86 = sub_1004A5824();
    v88 = sub_10015BA6C(v86, v87, &v126);

    *(v81 + 43) = v88;
    *(v81 + 51) = 2048;
    isa = v78[18].isa;
    sub_100031C74(v78, type metadata accessor for DetermineMessageBatches);
    *(v81 + 53) = isa;
    _os_log_impl(&_mh_execute_header, v79, v80, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Will query server. (batch size: %ld).", v81, 0x3Du);
    swift_arrayDestroy();

    return;
  }

  sub_100031C74(v78, type metadata accessor for DetermineMessageBatches);
  sub_100031C74(v16, type metadata accessor for MailboxTaskLogger);

  v90 = v19;
  v91 = type metadata accessor for MailboxTaskLogger;
LABEL_25:
  sub_100031C74(v90, v91);
}

uint64_t sub_10002BEE0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_10002F2C8();
  v7 = sub_1000300D8(v5, v6);
  v8 = sub_10003203C(a1);
  v9 = *(v7 + 2);
  if (v9)
  {
    v10 = 0;
    while (2)
    {
      v11 = &v7[16 * v10 + 32];
      v12 = *v11;
      v13 = *(v11 + 1);
      ++v10;
      v14 = *(v8 + 2) + 1;
      v15 = (v8 + 40);
      do
      {
        if (!--v14)
        {

          v24 = sub_10000C9C0(&qword_1005CDA50, &qword_1004CF7B8);
          v25 = a2 + *(v24 + 48);
          *a2 = v12;
          *(a2 + 8) = v13;
          *(a2 + 16) = 1;
          *v25 = *(v2 + 144);
          *(v25 + 8) = v12;
          *(v25 + 16) = v13;
          *(v25 + 24) = 0;
          type metadata accessor for ClientCommand(0);
          swift_storeEnumTagMultiPayload();
          v20 = *(*(v24 - 8) + 56);
          v22 = a2;
          v23 = 0;
          v21 = v24;
          goto LABEL_13;
        }

        v17 = *(v15 - 1);
        v16 = *v15;
        v15 += 2;
      }

      while (v17 != v12 || v16 != v13);
      if (v10 != v9)
      {
        continue;
      }

      break;
    }
  }

  v19 = sub_10000C9C0(&qword_1005CDA50, &qword_1004CF7B8);
  v20 = *(*(v19 - 8) + 56);
  v21 = v19;
  v22 = a2;
  v23 = 1;
LABEL_13:

  return v20(v22, v23, 1, v21);
}

uint64_t sub_10002C07C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X8>)
{
  v6 = v5;
  v71 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
  __chkstk_darwin(v71);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  __chkstk_darwin(v16);
  v68 = &v59 - v17;
  v18 = sub_10000C9C0(&qword_1005CDA60, &qword_1004CF7C8);
  __chkstk_darwin(v18 - 8);
  v20 = &v59 - v19;
  v21 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v70 = *(v21 - 8);
  __chkstk_darwin(v21);
  v67 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v59 - v24;
  result = sub_100032120(0, a1, a2);
  if (result)
  {
    goto LABEL_26;
  }

  v66 = v20;
  v27 = *(v6 + 144);
  if (*(v6 + 72))
  {
    LODWORD(v28) = 1;
  }

  else
  {
    v29 = *(v6 + 64);
    v30 = __OFSUB__(a3, v29);
    v31 = a3 - v29;
    if (v30)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v30 = __OFADD__(v31, 1);
    v28 = v31 + 1;
    if (v30)
    {
LABEL_37:
      __break(1u);
      return result;
    }

    if ((v28 - 0x100000000) < 0xFFFFFFFF00000001)
    {
      LODWORD(v28) = 1;
    }
  }

  v65 = v28;
  if ((a3 - 0x100000000) <= 0xFFFFFFFF00000000)
  {
    v32 = v66;
    (*(v70 + 56))(v66, 1, 1, v21);
LABEL_25:
    sub_100025F40(v32, &qword_1005CDA60, &qword_1004CF7C8);
LABEL_26:
    v50 = sub_10000C9C0(&qword_1005CDA50, &qword_1004CF7B8);
    return (*(*(v50 - 8) + 56))(a5, 1, 1, v50);
  }

  v63 = v21;
  v64 = a5;
  v60 = v25;
  v61 = a4;
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  *(v33 + 20) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v27;
  v35 = v65;
  *(v34 + 32) = v65;
  *(v34 + 36) = a3;
  *(v34 + 40) = 0;
  *(v34 + 48) = v27;
  sub_10000C9C0(&qword_1005CDA70, &qword_1004CF7D8);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1000358F8;
  *(inited + 24) = v34;
  v62 = inited;
  sub_100016D2C();
  sub_1004A7114();
  result = swift_beginAccess();
  v37 = a3 - v35;
  if (v37 >= v27)
  {
    v38 = 0;
    v39 = __OFSUB__(0, v27);
    v40 = a3 - v27;
    while (v38 | v27)
    {
      if (v39)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        break;
      }

      if (-v27 > 0xFFFFFFFFLL)
      {
        goto LABEL_32;
      }

      if (v40 + v38 < 1)
      {
        goto LABEL_33;
      }

      if ((v40 + v38) >> 32)
      {
        goto LABEL_34;
      }

      *(v33 + 16) = a3 - v27;
      *(v33 + 20) = 0;
      v72 = a3;
      result = MessageIdentifierSet.insert(_:)(&v73, &v72, v71);
      v38 -= v27;
      LODWORD(a3) = a3 - v27;
      if (v37 + v38 < v27)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_21:
  *(v33 + 16) = 0;
  *(v33 + 20) = 1;
  v72 = a3;
  v41 = v71;
  MessageIdentifierSet.insert(_:)(&v73, &v72, v71);
  *(v33 + 16) = 0;
  *(v33 + 20) = 1;
  v42 = v68;
  sub_100025FDC(v15, v68, &qword_1005CDA58, &qword_1004CF7C0);
  v72 = v65;
  MessageIdentifierSet.insert(_:)(&v73, &v72, v41);
  v43 = v69;
  sub_10000E268(v42, v69, &qword_1005CDA58, &qword_1004CF7C0);
  v44 = MessageIdentifierSet.count.getter();

  sub_100025F40(v42, &qword_1005CDA58, &qword_1004CF7C0);
  a5 = v64;
  if (v44 <= 0)
  {
    sub_100025F40(v43, &qword_1005CDA58, &qword_1004CF7C0);
    v46 = 1;
    v32 = v66;
  }

  else
  {
    v45 = v67;
    sub_100025FDC(v43, v67, &qword_1005CDA58, &qword_1004CF7C0);
    v32 = v66;
    sub_100025FDC(v45, v66, &qword_1005CDA68, &qword_1004CF7D0);
    v46 = 0;
  }

  v47 = v70;
  v48 = *(v70 + 56);
  v49 = v63;
  v48(v32, v46, 1, v63);

  if ((*(v47 + 48))(v32, 1, v49) == 1)
  {
    goto LABEL_25;
  }

  v51 = v60;
  sub_100025FDC(v32, v60, &qword_1005CDA68, &qword_1004CF7D0);
  sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v52 = swift_allocBox();
  v54 = v53;
  sub_10000E268(v51, v53, &qword_1005CDA68, &qword_1004CF7D0);
  v48(v54, 0, 1, v49);
  v55 = v52 | 0xB000000000000004;
  v56 = sub_10000C9C0(&qword_1005CDA50, &qword_1004CF7B8);
  v57 = (a5 + *(v56 + 48));
  v73 = 1;
  *a5 = MessageIdentifierSet.contains(_:)(&v73, v71) & 1;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  if ((v61 & 0x100) != 0)
  {
    sub_100025F40(v51, &qword_1005CDA68, &qword_1004CF7D0);
    *v57 = v55;
  }

  else
  {
    sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
    type metadata accessor for SearchReturnOption(0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1004CEAA0;
    swift_storeEnumTagMultiPayload();
    sub_100025F40(v51, &qword_1005CDA68, &qword_1004CF7D0);
    *v57 = v55;
    v57[1] = v58;
  }

  type metadata accessor for ClientCommand(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v56 - 8) + 56))(a5, 0, 1, v56);
}

uint64_t sub_10002C838(int a1, uint64_t a2, __int16 a3, char *a4)
{
  v5 = v4;
  v93 = a4;
  LODWORD(v92) = a1;
  v90 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v90);
  v87 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v85 - v9;
  __chkstk_darwin(v10);
  v86 = &v85 - v11;
  __chkstk_darwin(v12);
  v88 = &v85 - v13;
  v14 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v17 - 8);
  v19 = &v85 - v18;
  v20 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v85 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v85 - v24;
  __chkstk_darwin(v26);
  v28 = &v85 - v27;
  __chkstk_darwin(v29);
  v31 = &v85 - v30;
  sub_100124ED4(a3 & 0x101, v19);
  v32 = *(v21 + 48);
  v91 = v20;
  if (v32(v19, 1, v20) == 1)
  {
    v33 = &qword_1005CD510;
    v34 = &unk_1004CF2E0;
    v35 = v19;
  }

  else
  {
    sub_100025FDC(v19, v31, &unk_1005D91B0, &unk_1004CF400);
    v37 = *(v4 + 144);
    sub_10000E268(v31, v28, &unk_1005D91B0, &unk_1004CF400);
    sub_1000D7B58(v37, v28, v92 & 1, v16);
    v38 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
    sub_100031C74(v5 + v38, type metadata accessor for DetermineMessageBatches.TaskState);
    sub_100031C0C(v16, v5 + v38, type metadata accessor for MessageBatches);
    type metadata accessor for DetermineMessageBatches.TaskState(0);
    swift_storeEnumTagMultiPayload();
    v39 = sub_10002D27C(v16);
    if (v40)
    {
      v41 = v93;
      v42 = v89;
      sub_100031C0C(v93, v89, type metadata accessor for MailboxTaskLogger);
      v43 = v87;
      sub_100031C0C(v41, v87, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v44 = v85;
      sub_10000E268(v31, v85, &unk_1005D91B0, &unk_1004CF400);
      v45 = sub_1004A4A54();
      v46 = sub_1004A6034();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v96 = v88;
        *v47 = 68159491;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        v48 = v90;
        v49 = *(v90 + 20);
        v92 = v31;
        v93 = v16;
        v50 = v43 + v49;
        *(v47 + 10) = *(v43 + v49);
        *(v47 + 11) = 2082;
        v51 = v42 + *(v48 + 20);
        *(v47 + 13) = sub_10015BA6C(*(v51 + 8), *(v51 + 16), &v96);
        *(v47 + 21) = 1040;
        *(v47 + 23) = 2;
        *(v47 + 27) = 512;
        LOWORD(v50) = *(v50 + 24);
        sub_100031C74(v43, type metadata accessor for MailboxTaskLogger);
        *(v47 + 29) = v50;
        *(v47 + 31) = 2160;
        *(v47 + 33) = 0x786F626C69616DLL;
        *(v47 + 41) = 2085;
        v52 = *(v51 + 32);
        LODWORD(v51) = *(v51 + 40);

        sub_100031C74(v42, type metadata accessor for MailboxTaskLogger);
        v94 = v52;
        v95 = v51;
        v53 = sub_1004A5824();
        v55 = sub_10015BA6C(v53, v54, &v96);

        *(v47 + 43) = v55;
        *(v47 + 51) = 2082;
        v56 = MessageIdentifierSet.debugDescription.getter();
        v58 = v57;
        sub_100025F40(v44, &unk_1005D91B0, &unk_1004CF400);
        v59 = sub_10015BA6C(v56, v58, &v96);

        *(v47 + 53) = v59;
        _os_log_impl(&_mh_execute_header, v45, v46, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Creating UID ranges from UIDs: %{public}s", v47, 0x3Du);
        swift_arrayDestroy();

        sub_100031C74(v93, type metadata accessor for MessageBatches);
        v35 = v92;
      }

      else
      {
        sub_100031C74(v43, type metadata accessor for MailboxTaskLogger);

        sub_100025F40(v44, &unk_1005D91B0, &unk_1004CF400);
        sub_100031C74(v42, type metadata accessor for MailboxTaskLogger);
        sub_100031C74(v16, type metadata accessor for MessageBatches);
        v35 = v31;
      }

      v33 = &unk_1005D91B0;
      v34 = &unk_1004CF400;
    }

    else
    {
      v60 = v39;
      v61 = v93;
      v62 = v88;
      sub_100031C0C(v93, v88, type metadata accessor for MailboxTaskLogger);
      v63 = v86;
      sub_100031C0C(v61, v86, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10000E268(v31, v25, &unk_1005D91B0, &unk_1004CF400);
      v64 = sub_1004A4A54();
      v65 = sub_1004A6034();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v93 = v16;
        v67 = v66;
        v92 = swift_slowAlloc();
        v96 = v92;
        *v67 = 68159747;
        *(v67 + 4) = 2;
        *(v67 + 8) = 256;
        v68 = v90;
        v69 = *(v90 + 20);
        v89 = v60;
        v70 = v63;
        v71 = v63 + v69;
        *(v67 + 10) = *v71;
        *(v67 + 11) = 2082;
        v72 = v62 + *(v68 + 20);
        *(v67 + 13) = sub_10015BA6C(*(v72 + 8), *(v72 + 16), &v96);
        *(v67 + 21) = 1040;
        *(v67 + 23) = 2;
        *(v67 + 27) = 512;
        LOWORD(v71) = *(v71 + 24);
        sub_100031C74(v70, type metadata accessor for MailboxTaskLogger);
        *(v67 + 29) = v71;
        *(v67 + 31) = 2160;
        *(v67 + 33) = 0x786F626C69616DLL;
        *(v67 + 41) = 2085;
        v73 = *(v72 + 32);
        LODWORD(v72) = *(v72 + 40);

        sub_100031C74(v62, type metadata accessor for MailboxTaskLogger);
        v94 = v73;
        v95 = v72;
        v74 = sub_1004A5824();
        v76 = sub_10015BA6C(v74, v75, &v96);

        *(v67 + 43) = v76;
        *(v67 + 51) = 2082;
        v77 = MessageIdentifierSet.debugDescription.getter();
        v78 = v31;
        v80 = v79;
        sub_100025F40(v25, &unk_1005D91B0, &unk_1004CF400);
        v81 = sub_10015BA6C(v77, v80, &v96);

        *(v67 + 53) = v81;
        *(v67 + 61) = 2082;
        v94 = v89;
        sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v82 = MessageIdentifierRange.debugDescription.getter();
        v84 = sub_10015BA6C(v82, v83, &v96);

        *(v67 + 63) = v84;
        _os_log_impl(&_mh_execute_header, v64, v65, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Creating UID ranges from UIDs: %{public}s (window of interest: %{public}s)", v67, 0x47u);
        swift_arrayDestroy();

        sub_100031C74(v93, type metadata accessor for MessageBatches);
        v35 = v78;
      }

      else
      {
        sub_100031C74(v63, type metadata accessor for MailboxTaskLogger);

        sub_100025F40(v25, &unk_1005D91B0, &unk_1004CF400);
        sub_100031C74(v62, type metadata accessor for MailboxTaskLogger);
        sub_100031C74(v16, type metadata accessor for MessageBatches);
        v35 = v31;
      }

      v33 = &unk_1005D91B0;
      v34 = &unk_1004CF400;
    }
  }

  return sub_100025F40(v35, v33, v34);
}

uint64_t sub_10002D27C(uint64_t a1)
{
  if (*(v1 + 72))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 8 * v3 + 24);
  v9 = *(v2 + 36);
  v10 = v4;
  sub_100016948();
  static MessageIdentifier.... infix(_:_:)(&v10, &v9, &type metadata for UID, &v11);
  v5 = *(v1 + 132);
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (v7 == 0 || !v6)
  {
    v7 = 1;
  }

  if (*(v1 + 136))
  {
    v7 = -1;
  }

  v9 = v7;
  v10 = v11;
  static MessageIdentifier.... infix(_:_:)(&v10, &v9, &type metadata for UID, &v11);
  result = v11;
  *(v1 + 76) = v11;
  *(v1 + 84) = 0;
  return result;
}

uint64_t sub_10002D350(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8, unint64_t a9)
{
  v42 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v42);
  v43 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v44 = &v39[-v17];
  v18 = sub_10000C9C0(&qword_1005CDA28, &unk_1004CF780);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v39[-v20];
  v22 = type metadata accessor for DetermineMessageBatches(0);
  v23 = *(v19 + 56);
  sub_100031C0C(v9 + *(v22 + 56), &v21[v23], type metadata accessor for DetermineMessageBatches.TaskState);
  if (a3)
  {
    v24 = v45;
    sub_1000112D4(a9, a4, a5, a6, a7);
    if (!v24)
    {
      sub_10002D784(a9);
    }
  }

  else
  {
    type metadata accessor for DetermineMessageBatches.TaskState(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000112D4(a9, a4, a5, a6, a7);
    }

    else
    {
      v25 = v44;
      sub_100031C0C(a9, v44, type metadata accessor for MailboxTaskLogger);
      v26 = v43;
      sub_100031C0C(a9, v43, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v27 = sub_1004A4A54();
      v28 = sub_1004A6014();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v48 = v41;
        *v29 = 68159235;
        v40 = v28;
        *(v29 + 4) = 2;
        *(v29 + 8) = 256;
        v30 = v42;
        v31 = &v26[*(v42 + 20)];
        *(v29 + 10) = *v31;
        *(v29 + 11) = 2082;
        v32 = v25;
        v33 = &v25[*(v30 + 20)];
        *(v29 + 13) = sub_10015BA6C(*(v33 + 1), *(v33 + 2), &v48);
        *(v29 + 21) = 1040;
        *(v29 + 23) = 2;
        *(v29 + 27) = 512;
        LOWORD(v31) = *(v31 + 12);
        sub_100031C74(v26, type metadata accessor for MailboxTaskLogger);
        *(v29 + 29) = v31;
        *(v29 + 31) = 2160;
        *(v29 + 33) = 0x786F626C69616DLL;
        *(v29 + 41) = 2085;
        v34 = *(v33 + 4);
        LODWORD(v33) = *(v33 + 10);

        sub_100031C74(v32, type metadata accessor for MailboxTaskLogger);
        v46 = v34;
        v47 = v33;
        v35 = sub_1004A5824();
        v37 = sub_10015BA6C(v35, v36, &v48);

        *(v29 + 43) = v37;
        _os_log_impl(&_mh_execute_header, v27, v40, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed SEARCH for boundary IDs, but didn’t get any result from the server.", v29, 0x33u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100031C74(v26, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v25, type metadata accessor for MailboxTaskLogger);
      }
    }
  }

  return sub_100031C74(&v21[v23], type metadata accessor for DetermineMessageBatches.TaskState);
}

uint64_t sub_10002D784(unint64_t a1)
{
  v5 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v5);
  v242 = &v232 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v243 = &v232 - v8;
  __chkstk_darwin(v9);
  v256 = &v232 - v10;
  __chkstk_darwin(v11);
  v257 = (&v232 - v12);
  __chkstk_darwin(v13);
  v239 = &v232 - v14;
  __chkstk_darwin(v15);
  v241 = &v232 - v16;
  __chkstk_darwin(v17);
  v238 = &v232 - v18;
  __chkstk_darwin(v19);
  v240 = &v232 - v20;
  __chkstk_darwin(v21);
  v248 = &v232 - v22;
  __chkstk_darwin(v23);
  v249 = &v232 - v24;
  v25 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v254 = *(v25 - 8);
  v255 = v25;
  __chkstk_darwin(v25);
  v251 = &v232 - v26;
  v27 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v27 - 8);
  v29 = &v232 - v28;
  v30 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v30);
  v32 = &v232 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v232 - v34;
  v36 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v36 - 8);
  v247 = &v232 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v237 = &v232 - v39;
  __chkstk_darwin(v40);
  v244 = &v232 - v41;
  __chkstk_darwin(v42);
  v258 = (&v232 - v43);
  __chkstk_darwin(v44);
  v246 = &v232 - v45;
  __chkstk_darwin(v46);
  v236 = &v232 - v47;
  __chkstk_darwin(v48);
  v245 = &v232 - v49;
  __chkstk_darwin(v50);
  v235 = &v232 - v51;
  __chkstk_darwin(v52);
  v259 = (&v232 - v53);
  sub_10002F2C8();
  if (v54 < 1)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    swift_unknownObjectRelease();
    v72 = v5;
    v71 = v234;
    v70 = v233;
    v69 = v258;
LABEL_15:
    sub_1000B1490(v1, v70, v71, v72);
    v68 = v73;
LABEL_22:
    swift_unknownObjectRelease();
LABEL_23:
    sub_100016D2C();
    sub_1004A7114();
    sub_10000E268(v35, v32, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v32, &unk_1005D91B0, &unk_1004CF400);
      v78 = 1;
    }

    else
    {
      v77 = v251;
      sub_100025FDC(v32, v251, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v77, v29, &qword_1005CD1D0, &unk_1004CF2C0);
      v78 = 0;
    }

    v79 = v257;
    (*(v254 + 56))(v29, v78, 1, v255);
    v80 = v259;
    sub_1000D80D8(v3, v68, v29, v259);
    sub_100025F40(v35, &unk_1005D91B0, &unk_1004CF400);
    v81 = sub_10002D27C(v80);
    v83 = *(v80[1] + 16);
    v84 = v256;
    if (v83)
    {
      if (v83 <= 9)
      {
        if (v82)
        {
          v85 = v253;
          v86 = v241;
          sub_100031C0C(v253, v241, type metadata accessor for MailboxTaskLogger);
          v87 = v239;
          sub_100031C0C(v85, v239, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v88 = v259;
          v89 = v236;
          sub_100031C0C(v259, v236, type metadata accessor for MessageBatches);
          v90 = v246;
          sub_100031C0C(v88, v246, type metadata accessor for MessageBatches);
          v91 = sub_1004A4A54();
          v92 = sub_1004A6034();
          if (os_log_type_enabled(v91, v92))
          {
            LODWORD(v256) = v92;
            v258 = v91;
            v93 = swift_slowAlloc();
            v255 = swift_slowAlloc();
            v265 = v255;
            *v93 = 68159747;
            *(v93 + 4) = 2;
            *(v93 + 8) = 256;
            v94 = v250;
            v95 = v87 + *(v250 + 20);
            *(v93 + 10) = *v95;
            *(v93 + 11) = 2082;
            v96 = v86 + *(v94 + 20);
            *(v93 + 13) = sub_10015BA6C(*(v96 + 8), *(v96 + 16), &v265);
            *(v93 + 21) = 1040;
            *(v93 + 23) = 2;
            *(v93 + 27) = 512;
            LOWORD(v95) = *(v95 + 24);
            sub_100031C74(v87, type metadata accessor for MailboxTaskLogger);
            *(v93 + 29) = v95;
            *(v93 + 31) = 2160;
            *(v93 + 33) = 0x786F626C69616DLL;
            *(v93 + 41) = 2085;
            v97 = *(v96 + 32);
            LODWORD(v96) = *(v96 + 40);

            sub_100031C74(v86, type metadata accessor for MailboxTaskLogger);
            v263 = v97;
            v264 = v96;
            v98 = sub_1004A5824();
            v100 = sub_10015BA6C(v98, v99, &v265);

            *(v93 + 43) = v100;
            *(v93 + 51) = 2048;
            v101 = *(*(v89 + 8) + 16);
            sub_100031C74(v89, type metadata accessor for MessageBatches);
            *(v93 + 53) = v101;
            v257 = v93;
            *(v93 + 61) = 2082;
            v102 = v246;
            v103 = *(v246 + 8);
            v104 = *(v103 + 16);
            v105 = _swiftEmptyArrayStorage;
            if (v104)
            {
              v263 = _swiftEmptyArrayStorage;
              sub_100134BC4(0, v104, 0);
              v105 = v263;
              v106 = (v103 + 32);
              do
              {
                v262 = *v106;
                sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
                v107 = sub_1004A5804();
                v109 = v108;
                v263 = v105;
                v111 = v105[2];
                v110 = v105[3];
                if (v111 >= v110 >> 1)
                {
                  sub_100134BC4((v110 > 1), v111 + 1, 1);
                  v105 = v263;
                }

                v105[2] = v111 + 1;
                v112 = &v105[2 * v111];
                v112[4] = v107;
                v112[5] = v109;
                ++v106;
                --v104;
              }

              while (v104);
              v102 = v246;
            }

            v263 = v105;
            sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
            sub_100031CDC();
            v192 = sub_1004A5614();
            v194 = v193;
LABEL_76:

            sub_100031C74(v102, type metadata accessor for MessageBatches);
            v221 = sub_10015BA6C(v192, v194, &v265);

            v222 = v257;
            *(&v257[7].isa + 7) = v221;
            v116 = v258;
            _os_log_impl(&_mh_execute_header, v258, v256, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. %ld message batch(es): %{public}s", v222, 0x47u);
            swift_arrayDestroy();
            goto LABEL_77;
          }
        }

        else
        {
          v258 = v81;
          v149 = v253;
          v86 = v240;
          sub_100031C0C(v253, v240, type metadata accessor for MailboxTaskLogger);
          v87 = v238;
          sub_100031C0C(v149, v238, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v150 = v259;
          v89 = v235;
          sub_100031C0C(v259, v235, type metadata accessor for MessageBatches);
          v90 = v245;
          sub_100031C0C(v150, v245, type metadata accessor for MessageBatches);
          v91 = sub_1004A4A54();
          v151 = sub_1004A6034();
          if (os_log_type_enabled(v91, v151))
          {
            LODWORD(v255) = v151;
            v257 = v91;
            v253 = v258 >> 32;
            v152 = swift_slowAlloc();
            v254 = swift_slowAlloc();
            v265 = v254;
            *v152 = 68160003;
            *(v152 + 4) = 2;
            *(v152 + 8) = 256;
            v153 = v250;
            v154 = v87 + *(v250 + 20);
            *(v152 + 10) = *v154;
            *(v152 + 11) = 2082;
            v155 = v86 + *(v153 + 20);
            *(v152 + 13) = sub_10015BA6C(*(v155 + 8), *(v155 + 16), &v265);
            *(v152 + 21) = 1040;
            *(v152 + 23) = 2;
            *(v152 + 27) = 512;
            LOWORD(v154) = *(v154 + 24);
            sub_100031C74(v87, type metadata accessor for MailboxTaskLogger);
            *(v152 + 29) = v154;
            *(v152 + 31) = 2160;
            *(v152 + 33) = 0x786F626C69616DLL;
            *(v152 + 41) = 2085;
            v156 = *(v155 + 32);
            LODWORD(v155) = *(v155 + 40);

            sub_100031C74(v86, type metadata accessor for MailboxTaskLogger);
            v263 = v156;
            v264 = v155;
            v157 = sub_1004A5824();
            v159 = sub_10015BA6C(v157, v158, &v265);

            *(v152 + 43) = v159;
            *(v152 + 51) = 2048;
            v160 = *(*(v89 + 8) + 16);
            sub_100031C74(v89, type metadata accessor for MessageBatches);
            *(v152 + 53) = v160;
            v256 = v152;
            *(v152 + 61) = 2082;
            v161 = v245;
            v162 = *(v245 + 8);
            v163 = *(v162 + 16);
            v164 = _swiftEmptyArrayStorage;
            if (v163)
            {
              v263 = _swiftEmptyArrayStorage;
              sub_100134BC4(0, v163, 0);
              v164 = v263;
              v165 = (v162 + 32);
              do
              {
                v262 = *v165;
                sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
                v166 = sub_1004A5804();
                v168 = v167;
                v263 = v164;
                v170 = v164[2];
                v169 = v164[3];
                if (v170 >= v169 >> 1)
                {
                  sub_100134BC4((v169 > 1), v170 + 1, 1);
                  v164 = v263;
                }

                v164[2] = v170 + 1;
                v171 = &v164[2 * v170];
                v171[4] = v166;
                v171[5] = v168;
                ++v165;
                --v163;
              }

              while (v163);
              v161 = v245;
            }

            v263 = v164;
            sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
            sub_100031CDC();
            v195 = sub_1004A5614();
            v197 = v196;

            sub_100031C74(v161, type metadata accessor for MessageBatches);
            v198 = sub_10015BA6C(v195, v197, &v265);

            v199 = v256;
            *(v256 + 63) = v198;
            *(v199 + 71) = 2082;
            v263 = __PAIR64__(v253, v258);
            sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
            v200 = MessageIdentifierRange.debugDescription.getter();
            v202 = sub_10015BA6C(v200, v201, &v265);

            *(v199 + 73) = v202;
            v116 = v257;
            _os_log_impl(&_mh_execute_header, v257, v255, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. %ld message batch(es): %{public}s (window of interest: %{public}s)", v199, 0x51u);
            swift_arrayDestroy();

            goto LABEL_78;
          }
        }

        sub_100031C74(v89, type metadata accessor for MessageBatches);
        sub_100031C74(v87, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v86, type metadata accessor for MailboxTaskLogger);
        v148 = v90;
        v191 = type metadata accessor for MessageBatches;
LABEL_57:
        sub_100031C74(v148, v191);
LABEL_79:
        v223 = *(v252 + 56);
        v224 = v260;
        sub_100031C74(v260 + v223, type metadata accessor for DetermineMessageBatches.TaskState);
        sub_100035908(v259, v224 + v223, type metadata accessor for MessageBatches);
        type metadata accessor for DetermineMessageBatches.TaskState(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (v82)
      {
        v126 = v253;
        v127 = v243;
        sub_100031C0C(v253, v243, type metadata accessor for MailboxTaskLogger);
        v128 = v242;
        sub_100031C0C(v126, v242, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v129 = v259;
        v130 = v237;
        sub_100031C0C(v259, v237, type metadata accessor for MessageBatches);
        v131 = v129;
        v132 = v247;
        sub_100031C0C(v131, v247, type metadata accessor for MessageBatches);
        v133 = sub_1004A4A54();
        v134 = sub_1004A6034();
        if (os_log_type_enabled(v133, v134))
        {
          LODWORD(v256) = v134;
          v258 = v133;
          v135 = swift_slowAlloc();
          v255 = swift_slowAlloc();
          v265 = v255;
          *v135 = 68159747;
          *(v135 + 4) = 2;
          *(v135 + 8) = 256;
          v136 = v250;
          v137 = v128 + *(v250 + 20);
          *(v135 + 10) = *v137;
          v138 = v128;
          *(v135 + 11) = 2082;
          v139 = v127 + *(v136 + 20);
          *(v135 + 13) = sub_10015BA6C(*(v139 + 8), *(v139 + 16), &v265);
          *(v135 + 21) = 1040;
          *(v135 + 23) = 2;
          *(v135 + 27) = 512;
          LOWORD(v137) = *(v137 + 24);
          sub_100031C74(v138, type metadata accessor for MailboxTaskLogger);
          *(v135 + 29) = v137;
          *(v135 + 31) = 2160;
          *(v135 + 33) = 0x786F626C69616DLL;
          *(v135 + 41) = 2085;
          v140 = *(v139 + 32);
          LODWORD(v139) = *(v139 + 40);

          sub_100031C74(v127, type metadata accessor for MailboxTaskLogger);
          v263 = v140;
          v264 = v139;
          v141 = sub_1004A5824();
          v143 = sub_10015BA6C(v141, v142, &v265);

          *(v135 + 43) = v143;
          *(v135 + 51) = 2048;
          v144 = *(*(v130 + 8) + 16);
          sub_100031C74(v130, type metadata accessor for MessageBatches);
          *(v135 + 53) = v144;
          v257 = v135;
          *(v135 + 61) = 2082;
          v102 = v247;
          v145 = *(v247 + 8);
          v146 = *(v145 + 16);
          if (v146 <= 0xA)
          {
          }

          else
          {
            sub_1000B1490(*(v247 + 8), v145 + 32, 0, 0x15uLL);
            v145 = v147;
            v146 = *(v147 + 16);
          }

          if (v146)
          {
            v263 = _swiftEmptyArrayStorage;
            sub_100134BC4(0, v146, 0);
            v203 = 32;
            v204 = v263;
            do
            {
              v262 = *(v145 + v203);
              sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
              v205 = sub_1004A5804();
              v207 = v206;
              v263 = v204;
              v209 = v204[2];
              v208 = v204[3];
              if (v209 >= v208 >> 1)
              {
                sub_100134BC4((v208 > 1), v209 + 1, 1);
                v204 = v263;
              }

              v204[2] = v209 + 1;
              v210 = &v204[2 * v209];
              v210[4] = v205;
              v210[5] = v207;
              v203 += 8;
              --v146;
            }

            while (v146);

            v102 = v247;
          }

          else
          {

            v204 = _swiftEmptyArrayStorage;
          }

          v263 = v204;
          sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
          sub_100031CDC();
          v192 = sub_1004A5614();
          v194 = v220;
          goto LABEL_76;
        }

        sub_100031C74(v130, type metadata accessor for MessageBatches);
        sub_100031C74(v128, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v132, type metadata accessor for MessageBatches);
        v148 = v127;
      }

      else
      {
        v172 = v81;
        v173 = v253;
        sub_100031C0C(v253, v79, type metadata accessor for MailboxTaskLogger);
        sub_100031C0C(v173, v84, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v174 = v259;
        sub_100031C0C(v259, v69, type metadata accessor for MessageBatches);
        v175 = v244;
        sub_100031C0C(v174, v244, type metadata accessor for MessageBatches);
        v176 = sub_1004A4A54();
        v177 = sub_1004A6034();
        if (os_log_type_enabled(v176, v177))
        {
          LODWORD(v255) = v177;
          v257 = v176;
          v258 = v172;
          v253 = v172 >> 32;
          v178 = swift_slowAlloc();
          v254 = swift_slowAlloc();
          v265 = v254;
          *v178 = 68160003;
          *(v178 + 4) = 2;
          *(v178 + 8) = 256;
          v179 = v250;
          v180 = v84 + *(v250 + 20);
          *(v178 + 10) = *v180;
          *(v178 + 11) = 2082;
          v181 = v69;
          v182 = v79 + *(v179 + 20);
          *(v178 + 13) = sub_10015BA6C(*(v182 + 1), *(v182 + 2), &v265);
          *(v178 + 21) = 1040;
          *(v178 + 23) = 2;
          *(v178 + 27) = 512;
          LOWORD(v180) = *(v180 + 24);
          sub_100031C74(v84, type metadata accessor for MailboxTaskLogger);
          *(v178 + 29) = v180;
          *(v178 + 31) = 2160;
          *(v178 + 33) = 0x786F626C69616DLL;
          *(v178 + 41) = 2085;
          v183 = *(v182 + 4);
          LODWORD(v182) = *(v182 + 10);

          sub_100031C74(v79, type metadata accessor for MailboxTaskLogger);
          v263 = v183;
          v264 = v182;
          v184 = sub_1004A5824();
          v186 = sub_10015BA6C(v184, v185, &v265);

          *(v178 + 43) = v186;
          *(v178 + 51) = 2048;
          v187 = *(*(v181 + 8) + 16);
          sub_100031C74(v181, type metadata accessor for MessageBatches);
          *(v178 + 53) = v187;
          *(v178 + 61) = 2082;
          v188 = *(v175 + 8);
          v189 = *(v188 + 16);
          if (v189 <= 0xA)
          {
          }

          else
          {
            sub_1000B1490(*(v175 + 8), v188 + 32, 0, 0x15uLL);
            v188 = v190;
            v189 = *(v190 + 16);
          }

          v211 = v257;
          if (v189)
          {
            v256 = v178;
            v263 = _swiftEmptyArrayStorage;
            sub_100134BC4(0, v189, 0);
            v212 = 32;
            v213 = v263;
            do
            {
              v262 = *(v188 + v212);
              sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
              v214 = sub_1004A5804();
              v216 = v215;
              v263 = v213;
              v218 = v213[2];
              v217 = v213[3];
              if (v218 >= v217 >> 1)
              {
                sub_100134BC4((v217 > 1), v218 + 1, 1);
                v213 = v263;
              }

              v213[2] = v218 + 1;
              v219 = &v213[2 * v218];
              v219[4] = v214;
              v219[5] = v216;
              v212 += 8;
              --v189;
            }

            while (v189);

            v175 = v244;
            v178 = v256;
            v211 = v257;
          }

          else
          {

            v213 = _swiftEmptyArrayStorage;
          }

          v263 = v213;
          sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
          sub_100031CDC();
          v225 = sub_1004A5614();
          v227 = v226;

          sub_100031C74(v175, type metadata accessor for MessageBatches);
          v228 = sub_10015BA6C(v225, v227, &v265);

          *(v178 + 63) = v228;
          *(v178 + 71) = 2082;
          v263 = __PAIR64__(v253, v258);
          sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
          v229 = MessageIdentifierRange.debugDescription.getter();
          v231 = sub_10015BA6C(v229, v230, &v265);

          *(v178 + 73) = v231;
          _os_log_impl(&_mh_execute_header, v211, v255, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. %ld message batch(es): %{public}s (window of interest: %{public}s)", v178, 0x51u);
          swift_arrayDestroy();

          goto LABEL_79;
        }

        sub_100031C74(v69, type metadata accessor for MessageBatches);
        sub_100031C74(v84, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v175, type metadata accessor for MessageBatches);
        v148 = v79;
      }
    }

    else
    {
      v113 = v253;
      v114 = v249;
      sub_100031C0C(v253, v249, type metadata accessor for MailboxTaskLogger);
      v115 = v248;
      sub_100031C0C(v113, v248, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v116 = sub_1004A4A54();
      v117 = sub_1004A6034();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v265 = swift_slowAlloc();
        *v118 = 68159235;
        *(v118 + 4) = 2;
        *(v118 + 8) = 256;
        v119 = v250;
        v120 = v115 + *(v250 + 20);
        *(v118 + 10) = *v120;
        *(v118 + 11) = 2082;
        v121 = v114 + *(v119 + 20);
        *(v118 + 13) = sub_10015BA6C(*(v121 + 8), *(v121 + 16), &v265);
        *(v118 + 21) = 1040;
        *(v118 + 23) = 2;
        *(v118 + 27) = 512;
        LOWORD(v120) = *(v120 + 24);
        sub_100031C74(v115, type metadata accessor for MailboxTaskLogger);
        *(v118 + 29) = v120;
        *(v118 + 31) = 2160;
        *(v118 + 33) = 0x786F626C69616DLL;
        *(v118 + 41) = 2085;
        v122 = *(v121 + 32);
        LODWORD(v121) = *(v121 + 40);

        sub_100031C74(v114, type metadata accessor for MailboxTaskLogger);
        v263 = v122;
        v264 = v121;
        v123 = sub_1004A5824();
        v125 = sub_10015BA6C(v123, v124, &v265);

        *(v118 + 43) = v125;
        _os_log_impl(&_mh_execute_header, v116, v117, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. No message batches.", v118, 0x33u);
        swift_arrayDestroy();
LABEL_77:

LABEL_78:

        goto LABEL_79;
      }

      sub_100031C74(v115, type metadata accessor for MailboxTaskLogger);

      v148 = v114;
    }

    v191 = type metadata accessor for MailboxTaskLogger;
    goto LABEL_57;
  }

  v55 = v54;
  v253 = a1;
  v250 = v5;
  v261 = v2;
  result = type metadata accessor for DetermineMessageBatches(0);
  v252 = result;
  v57 = *(result + 60);
  v260 = v1;
  v58 = v1 + v57;
  v59 = *(v1 + v57);
  if (*(v59 + 16))
  {
    v60 = 1;
    while (1)
    {
      result = sub_100063D94(v60);
      if ((v61 & 1) == 0)
      {
        break;
      }

      if (v55 == v60)
      {
        goto LABEL_9;
      }

      if (__OFADD__(v60++, 1))
      {
        __break(1u);
LABEL_9:
        v3 = *(v260 + 144);
        v63 = sub_10002F374();
        if (*(v58 + 8))
        {
          sub_100032D20();
          swift_allocError();
          return swift_willThrow();
        }

        v65 = v64;
        v66 = v63;
        v67 = sub_100032AF0(v59);
        v68 = v67;
        if (v65)
        {
          v69 = v258;
          goto LABEL_23;
        }

        v69 = v258;
        if (v66 >= *(v67 + 2))
        {
          goto LABEL_23;
        }

        v1 = sub_100096640(v66, v67);
        if ((v72 & 1) == 0)
        {
          goto LABEL_15;
        }

        v5 = v72;
        v234 = v71;
        v233 = v70;
        sub_1004A6DA4();
        swift_unknownObjectRetain_n();
        v74 = swift_dynamicCastClass();
        if (!v74)
        {
          swift_unknownObjectRelease();
          v74 = _swiftEmptyArrayStorage;
        }

        v75 = v74[2];

        if (!__OFSUB__(v5 >> 1, v234))
        {
          if (v75 != (v5 >> 1) - v234)
          {
            goto LABEL_85;
          }

          v76 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v69 = v258;
          v68 = v76;
          if (!v76)
          {
            v68 = _swiftEmptyArrayStorage;
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        goto LABEL_84;
      }
    }
  }

  return result;
}

void sub_10002F2C8()
{
  v1 = *(v0 + 144);
  if (v1 < 1)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = *(v0 + 88);
  if (v2 >= 1)
  {
    if (*(v0 + 72))
    {
      if (!__OFADD__(v2, 50000))
      {
        return;
      }

      goto LABEL_16;
    }

    v3 = *(v0 + 64);
    v4 = __OFADD__(v3, v1 >> 1);
    v5 = v3 + (v1 >> 1);
    if (v4)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v6 = v5 / v1;
    v7 = v5 / v1 * v1;
    if ((v6 * v1) >> 64 != v7 >> 63)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v4 = __OFSUB__(v7, v2);
    v8 = v7 - v2;
    if (v4)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v8 < 0)
    {
      v4 = __OFSUB__(0, v8);
      v8 = -v8;
      if (v4)
      {
        goto LABEL_21;
      }
    }

    if (v8 < v1 && __OFADD__(v6, 1))
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }
  }
}

uint64_t sub_10002F374()
{
  if (*(v0 + 72))
  {
    return 0;
  }

  v1 = *(v0 + 144);
  if (v1 >= 1)
  {
    if (*(v0 + 88) >= 1)
    {
      v2 = *(v0 + 64);
      v3 = __OFADD__(v2, v1 >> 1);
      v4 = v2 + (v1 >> 1);
      if (!v3)
      {
        return v4 / v1;
      }

      goto LABEL_8;
    }

    return 0;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

void sub_10002F3B8(uint64_t a1, uint64_t a2)
{
  v88 = a1;
  v86 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v86);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v85 = (&v81 - v7);
  __chkstk_darwin(v8);
  v10 = &v81 - v9;
  __chkstk_darwin(v11);
  v13 = &v81 - v12;
  v14 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  __chkstk_darwin(v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v81 - v21;
  __chkstk_darwin(v23);
  v25 = &v81 - v24;
  v26 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
  v87 = v2;
  sub_100031C0C(v2 + v26, v16, type metadata accessor for DetermineMessageBatches.TaskState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100035908(v16, v25, type metadata accessor for MessageBatches);
    sub_100031C0C(a2, v13, type metadata accessor for MailboxTaskLogger);
    sub_100031C0C(a2, v10, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100031C0C(v25, v22, type metadata accessor for MessageBatches);
    v27 = v25;
    sub_100031C0C(v25, v19, type metadata accessor for MessageBatches);
    v28 = sub_1004A4A54();
    v29 = sub_1004A6034();
    v30 = v19;
    if (os_log_type_enabled(v28, v29))
    {
      v84 = v29;
      v85 = v28;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v92 = v32;
      *v31 = 68159747;
      *(v31 + 4) = 2;
      *(v31 + 8) = 256;
      v33 = v86;
      v34 = &v10[*(v86 + 20)];
      *(v31 + 10) = *v34;
      *(v31 + 11) = 2082;
      v35 = v13;
      v36 = &v13[*(v33 + 20)];
      *(v31 + 13) = sub_10015BA6C(*(v36 + 1), *(v36 + 2), &v92);
      *(v31 + 21) = 1040;
      *(v31 + 23) = 2;
      *(v31 + 27) = 512;
      LOWORD(v34) = *(v34 + 12);
      sub_100031C74(v10, type metadata accessor for MailboxTaskLogger);
      *(v31 + 29) = v34;
      *(v31 + 31) = 2160;
      *(v31 + 33) = 0x786F626C69616DLL;
      *(v31 + 41) = 2085;
      v37 = *(v36 + 4);
      LODWORD(v36) = *(v36 + 10);

      sub_100031C74(v35, type metadata accessor for MailboxTaskLogger);
      v90 = v37;
      v91 = v36;
      v38 = sub_1004A5824();
      v40 = sub_10015BA6C(v38, v39, &v92);

      *(v31 + 43) = v40;
      *(v31 + 51) = 2048;
      v41 = *(*(v22 + 1) + 16);
      sub_100031C74(v22, type metadata accessor for MessageBatches);
      *(v31 + 53) = v41;
      *(v31 + 61) = 2082;
      v86 = v30;
      v42 = *(v30 + 8);
      v43 = *(v42 + 16);
      v44 = _swiftEmptyArrayStorage;
      v45 = v27;
      if (v43)
      {
        v83 = v32;
        v90 = _swiftEmptyArrayStorage;
        sub_100134BC4(0, v43, 0);
        v44 = v90;
        v46 = (v42 + 32);
        do
        {
          v89 = *v46;
          sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
          v47 = sub_1004A5804();
          v90 = v44;
          v50 = *(v44 + 2);
          v49 = *(v44 + 3);
          if (v50 >= v49 >> 1)
          {
            v82 = v47;
            v52 = v48;
            sub_100134BC4((v49 > 1), v50 + 1, 1);
            v48 = v52;
            v47 = v82;
            v44 = v90;
          }

          *(v44 + 2) = v50 + 1;
          v51 = &v44[16 * v50];
          *(v51 + 4) = v47;
          *(v51 + 5) = v48;
          ++v46;
          --v43;
        }

        while (v43);
      }

      v90 = v44;
      sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
      sub_100031CDC();
      v70 = sub_1004A5614();
      v72 = v71;

      sub_100031C74(v86, type metadata accessor for MessageBatches);
      v73 = sub_10015BA6C(v70, v72, &v92);

      *(v31 + 63) = v73;
      v74 = v85;
      _os_log_impl(&_mh_execute_header, v85, v84, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created %ld message batches: %{public}s", v31, 0x47u);
      swift_arrayDestroy();

      v67 = v88;
    }

    else
    {
      sub_100031C74(v22, type metadata accessor for MessageBatches);
      sub_100031C74(v10, type metadata accessor for MailboxTaskLogger);

      sub_100031C74(v13, type metadata accessor for MailboxTaskLogger);
      v66 = sub_100031C74(v19, type metadata accessor for MessageBatches);
      v67 = v88;
      v45 = v27;
    }

    v75 = *(v87 + 120);
    v76 = *(v87 + 128);
    __chkstk_darwin(v66);
    *(&v81 - 2) = v45;
    if (*(v67 + 192) == 1)
    {
      v78 = *(v67 + 176);
      v77 = *(v67 + 184);
      v90 = *(v67 + 168);
      v79 = v90;

      sub_1000BE940(&v90, v75, v76, 0, sub_100031CD4);
      sub_100020D58(v79, v78, v77, 1);
      v80 = v90;
      *(v67 + 176) = 0;
      *(v67 + 184) = 0;
      *(v67 + 168) = v80;
      *(v67 + 192) = 1;
    }

    v69 = type metadata accessor for MessageBatches;
    v68 = v45;
  }

  else
  {
    sub_100031C74(v16, type metadata accessor for DetermineMessageBatches.TaskState);
    v53 = v85;
    sub_100031C0C(a2, v85, type metadata accessor for MailboxTaskLogger);
    sub_100031C0C(a2, v5, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v54 = sub_1004A4A54();
    v55 = sub_1004A6014();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v56 = 68159235;
      *(v56 + 4) = 2;
      *(v56 + 8) = 256;
      v57 = v86;
      v58 = &v5[*(v86 + 20)];
      *(v56 + 10) = *v58;
      *(v56 + 11) = 2082;
      v59 = v53 + *(v57 + 20);
      *(v56 + 13) = sub_10015BA6C(*(v59 + 1), *(v59 + 2), &v92);
      *(v56 + 21) = 1040;
      *(v56 + 23) = 2;
      *(v56 + 27) = 512;
      v60 = *(v58 + 12);
      sub_100031C74(v5, type metadata accessor for MailboxTaskLogger);
      *(v56 + 29) = v60;
      *(v56 + 31) = 2160;
      *(v56 + 33) = 0x786F626C69616DLL;
      *(v56 + 41) = 2085;
      v61 = *(v59 + 4);
      v62 = *(v59 + 10);

      sub_100031C74(v53, type metadata accessor for MailboxTaskLogger);
      v90 = v61;
      v91 = v62;
      v63 = sub_1004A5824();
      v65 = sub_10015BA6C(v63, v64, &v92);

      *(v56 + 43) = v65;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to determine message batches", v56, 0x33u);
      swift_arrayDestroy();

      return;
    }

    sub_100031C74(v5, type metadata accessor for MailboxTaskLogger);

    v68 = v53;
    v69 = type metadata accessor for MailboxTaskLogger;
  }

  sub_100031C74(v68, v69);
}

uint64_t sub_10002FD40(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for MailboxSyncState(0) + 60);
  sub_100025F40(a1 + v4, &qword_1005CDA20, &unk_1004D2F20);
  sub_100031C0C(a2, a1 + v4, type metadata accessor for MessageBatches);
  v5 = type metadata accessor for MessageBatches(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 0, 1, v5);
}

double sub_10002FE08@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return result;
}

double sub_10002FE5C()
{
  if (qword_1005CCE18 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_10002FEBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  __chkstk_darwin(v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031C0C(v4 + *(a3 + 56), v11, type metadata accessor for DetermineMessageBatches.TaskState);
  LODWORD(a3) = swift_getEnumCaseMultiPayload();
  sub_100031C74(v11, type metadata accessor for DetermineMessageBatches.TaskState);
  if (a3 == 2)
  {
    if (*(v4 + 137) == 2)
    {
      return sub_10002BEE0(a2, a4);
    }

    else
    {
      return sub_10002C07C(a1, a2, *(v4 + 88), *(v4 + 137) & 0x101, a4);
    }
  }

  else
  {
    v13 = sub_10000C9C0(&qword_1005CDA50, &qword_1004CF7B8);
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_100030030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  result = sub_100032D74(a1, a2, a3, a4, a5);
  *a6 = result;
  a6[1] = v8;
  return result;
}

char *sub_1000300D8(uint64_t a1, uint64_t a2)
{
  if (a1 < 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a2 - 1;
  v5 = _swiftEmptyArrayStorage;
  v6 = 1;
  while (1)
  {
    v7 = v6 + a2;
    if (__OFADD__(v6, a2))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v8 = v7 - 1;
    if (__OFSUB__(v7, 1))
    {
      goto LABEL_20;
    }

    if (v8 > a1)
    {
      break;
    }

    if (v8 < v6)
    {
      goto LABEL_21;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100085BDC(0, *(v5 + 2) + 1, 1, v5);
    }

    v10 = *(v5 + 2);
    v9 = *(v5 + 3);
    if (v10 >= v9 >> 1)
    {
      v5 = sub_100085BDC((v9 > 1), v10 + 1, 1, v5);
    }

    *(v5 + 2) = v10 + 1;
    v11 = &v5[16 * v10];
    *(v11 + 4) = v6;
    *(v11 + 5) = v8;
    v6 += v4;
    if (v8 >= a1)
    {
      return v5;
    }
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_15;
  }

LABEL_22:
  v5 = sub_100085BDC(0, *(v5 + 2) + 1, 1, v5);
LABEL_15:
  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = sub_100085BDC((v12 > 1), v13 + 1, 1, v5);
  }

  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = v6;
  *(v14 + 5) = a1;
  return v5;
}

Swift::Int sub_100030248()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  sub_100092528(v4, v1);
  sub_1004A6EC4(v2);
  return sub_1004A6F14();
}

void sub_1000302A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_100092528(a1, v2);
  sub_1004A6EC4(v3);
}

Swift::Int sub_1000302E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1004A6E94();
  sub_100092528(v5, v2);
  sub_1004A6EC4(v3);
  return sub_1004A6F14();
}

uint64_t sub_10003033C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_100114730(*a1, *a2) & ~(v2 ^ v3) & 1;
}

unint64_t sub_100030384()
{
  result = qword_1005CD948;
  if (!qword_1005CD948)
  {
    result = swift_getWitnessTable(byte_1004CF674, &type metadata for DetermineMessageBatches.UIDBatchesResponses, v0, v1);
    atomic_store(result, &qword_1005CD948);
  }

  return result;
}

unint64_t sub_1000303D8()
{
  result = qword_1005CD950;
  if (!qword_1005CD950)
  {
    result = swift_getWitnessTable("!v\v", &type metadata for DetermineMessageBatches.ActionID, v0, v1);
    atomic_store(result, &qword_1005CD950);
  }

  return result;
}

unint64_t sub_100030430()
{
  result = qword_1005CD958;
  if (!qword_1005CD958)
  {
    result = swift_getWitnessTable("Iv\v", &type metadata for DetermineMessageBatches.CommandID, v0, v1);
    atomic_store(result, &qword_1005CD958);
  }

  return result;
}

unint64_t sub_100030484(uint64_t a1)
{
  result = sub_1000304AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000304AC()
{
  result = qword_1005CDA10;
  if (!qword_1005CDA10)
  {
    v3 = type metadata accessor for DetermineMessageBatches(255);
    result = swift_getWitnessTable(byte_1004CF6DC, v3, v0, v1);
    atomic_store(result, &qword_1005CDA10);
  }

  return result;
}

void sub_100030504(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v189 = a1;
  v190 = a4;
  v186 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v186);
  v183 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v184 = &v179 - v9;
  __chkstk_darwin(v10);
  v180 = &v179 - v11;
  __chkstk_darwin(v12);
  v182 = &v179 - v13;
  __chkstk_darwin(v14);
  v179 = &v179 - v15;
  __chkstk_darwin(v16);
  v181 = &v179 - v17;
  __chkstk_darwin(v18);
  v185 = &v179 - v19;
  __chkstk_darwin(v20);
  v22 = &v179 - v21;
  __chkstk_darwin(v23);
  v25 = &v179 - v24;
  __chkstk_darwin(v26);
  v28 = &v179 - v27;
  __chkstk_darwin(v29);
  v31 = &v179 - v30;
  __chkstk_darwin(v32);
  v34 = &v179 - v33;
  __chkstk_darwin(v35);
  v37 = &v179 - v36;
  __chkstk_darwin(v38);
  v40 = &v179 - v39;
  v187 = v4;
  v188 = a3;
  v41 = *v4;
  if (*(v41 + 16) && (v42 = sub_100063D94(a3), (v43 & 1) != 0))
  {
    v44 = *(v41 + 56) + 12 * v42;
    if (*(v44 + 8))
    {
      if (a2)
      {
        return;
      }

      v45 = v190;
      sub_100031C0C(v190, v28, type metadata accessor for MailboxTaskLogger);
      sub_100031C0C(v45, v25, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v46 = sub_1004A4A54();
      v47 = sub_1004A6034();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *v48 = 68159747;
        *(v48 + 4) = 2;
        *(v48 + 8) = 256;
        v49 = v186;
        v50 = &v25[*(v186 + 20)];
        *(v48 + 10) = *v50;
        *(v48 + 11) = 2082;
        v51 = &v28[*(v49 + 20)];
        *(v48 + 13) = sub_10015BA6C(*(v51 + 1), *(v51 + 2), &v194);
        *(v48 + 21) = 1040;
        *(v48 + 23) = 2;
        *(v48 + 27) = 512;
        LOWORD(v50) = *(v50 + 12);
        sub_100031C74(v25, type metadata accessor for MailboxTaskLogger);
        *(v48 + 29) = v50;
        *(v48 + 31) = 2160;
        *(v48 + 33) = 0x786F626C69616DLL;
        *(v48 + 41) = 2085;
        v52 = *(v51 + 4);
        v53 = *(v51 + 10);

        sub_100031C74(v28, type metadata accessor for MailboxTaskLogger);
        v192 = v52;
        v193 = v53;
        v54 = sub_1004A5824();
        v56 = sub_10015BA6C(v54, v55, &v194);

        *(v48 + 43) = v56;
        *(v48 + 51) = 2048;
        v57 = v188;
        v58 = v189;
        *(v48 + 53) = v188;
        *(v48 + 61) = 2082;
        v192 = v58;
        sub_10000C9C0(&qword_1005CDA48, &qword_1004CF7A8);
        v59 = sub_1004A56E4();
        v61 = sub_10015BA6C(v59, v60, &v194);

        *(v48 + 63) = v61;
        _os_log_impl(&_mh_execute_header, v46, v47, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response NIL and %{public}s", v48, 0x47u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100031C74(v25, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v28, type metadata accessor for MailboxTaskLogger);
        v57 = v188;
        v58 = v189;
      }

      v93 = v187;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v192 = *v93;
      v95 = v58;
      v96 = v57;
      goto LABEL_16;
    }

    v97 = *v44;
    v98 = HIDWORD(*v44);
    if (a2)
    {
      v99 = v190;
      v100 = v22;
      sub_100031C0C(v190, v22, type metadata accessor for MailboxTaskLogger);
      v101 = v185;
      sub_100031C0C(v99, v185, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v102 = sub_1004A4A54();
      v103 = sub_1004A6034();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *v104 = 68159747;
        *(v104 + 4) = 2;
        *(v104 + 8) = 256;
        v105 = v186;
        v106 = v101 + *(v186 + 20);
        *(v104 + 10) = *v106;
        *(v104 + 11) = 2082;
        v107 = *(v105 + 20);
        v190 = v97;
        v108 = v100;
        v109 = &v100[v107];
        *(v104 + 13) = sub_10015BA6C(*(v109 + 1), *(v109 + 2), &v194);
        *(v104 + 21) = 1040;
        *(v104 + 23) = 2;
        *(v104 + 27) = 512;
        LOWORD(v106) = *(v106 + 24);
        sub_100031C74(v101, type metadata accessor for MailboxTaskLogger);
        *(v104 + 29) = v106;
        *(v104 + 31) = 2160;
        *(v104 + 33) = 0x786F626C69616DLL;
        *(v104 + 41) = 2085;
        v110 = *(v109 + 4);
        LODWORD(v106) = *(v109 + 10);

        sub_100031C74(v108, type metadata accessor for MailboxTaskLogger);
        v192 = v110;
        v193 = v106;
        v111 = sub_1004A5824();
        LODWORD(v110) = v98;
        v113 = sub_10015BA6C(v111, v112, &v194);

        *(v104 + 43) = v113;
        *(v104 + 51) = 2048;
        *(v104 + 53) = v188;
        *(v104 + 61) = 2082;
        v192 = __PAIR64__(v110, v190);
        sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v114 = MessageIdentifierRange.debugDescription.getter();
        v116 = sub_10015BA6C(v114, v115, &v194);

        *(v104 + 63) = v116;
        _os_log_impl(&_mh_execute_header, v102, v103, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response NIL and %{public}s", v104, 0x47u);
        swift_arrayDestroy();

LABEL_36:

        return;
      }

      sub_100031C74(v101, type metadata accessor for MailboxTaskLogger);

      v140 = v100;
      goto LABEL_40;
    }

    v117 = v189;
    v118 = HIDWORD(v189);
    if (v97 == v189 && v118 == v98)
    {
      v141 = v190;
      v142 = v184;
      sub_100031C0C(v190, v184, type metadata accessor for MailboxTaskLogger);
      v143 = v183;
      sub_100031C0C(v141, v183, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v102 = sub_1004A4A54();
      v144 = sub_1004A6004();
      if (os_log_type_enabled(v102, v144))
      {
        v145 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *v145 = 68159491;
        *(v145 + 4) = 2;
        *(v145 + 8) = 256;
        v146 = v186;
        v147 = v143 + *(v186 + 20);
        *(v145 + 10) = *v147;
        *(v145 + 11) = 2082;
        v148 = v142 + *(v146 + 20);
        *(v145 + 13) = sub_10015BA6C(*(v148 + 8), *(v148 + 16), &v194);
        *(v145 + 21) = 1040;
        *(v145 + 23) = 2;
        *(v145 + 27) = 512;
        LOWORD(v147) = *(v147 + 24);
        sub_100031C74(v143, type metadata accessor for MailboxTaskLogger);
        *(v145 + 29) = v147;
        *(v145 + 31) = 2160;
        *(v145 + 33) = 0x786F626C69616DLL;
        *(v145 + 41) = 2085;
        v149 = *(v148 + 32);
        LODWORD(v148) = *(v148 + 40);

        sub_100031C74(v142, type metadata accessor for MailboxTaskLogger);
        v192 = v149;
        v193 = v148;
        v150 = sub_1004A5824();
        v152 = sub_10015BA6C(v150, v151, &v194);

        *(v145 + 43) = v152;
        *(v145 + 51) = 2048;
        *(v145 + 53) = v188;
        _os_log_impl(&_mh_execute_header, v102, v144, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Duplicate response for batch #%ld is identical.", v145, 0x3Du);
        swift_arrayDestroy();

        goto LABEL_36;
      }

      sub_100031C74(v143, type metadata accessor for MailboxTaskLogger);

      v140 = v142;
LABEL_40:
      sub_100031C74(v140, type metadata accessor for MailboxTaskLogger);
      return;
    }

    if (HIDWORD(v189) >= v97 && v98 >= v189)
    {
      v153 = v190;
      v154 = v181;
      sub_100031C0C(v190, v181, type metadata accessor for MailboxTaskLogger);
      v155 = v179;
      sub_100031C0C(v153, v179, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v156 = sub_1004A4A54();
      v157 = sub_1004A6034();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v185 = v98;
        v159 = v158;
        v190 = swift_slowAlloc();
        v194 = v190;
        *v159 = 68160003;
        *(v159 + 4) = 2;
        *(v159 + 8) = 256;
        v160 = v186;
        v161 = v155 + *(v186 + 20);
        *(v159 + 10) = *v161;
        *(v159 + 11) = 2082;
        v162 = v154 + *(v160 + 20);
        *(v159 + 13) = sub_10015BA6C(*(v162 + 8), *(v162 + 16), &v194);
        *(v159 + 21) = 1040;
        *(v159 + 23) = 2;
        *(v159 + 27) = 512;
        LOWORD(v161) = *(v161 + 24);
        sub_100031C74(v155, type metadata accessor for MailboxTaskLogger);
        *(v159 + 29) = v161;
        *(v159 + 31) = 2160;
        *(v159 + 33) = 0x786F626C69616DLL;
        *(v159 + 41) = 2085;
        v163 = *(v162 + 32);
        LODWORD(v162) = *(v162 + 40);

        sub_100031C74(v154, type metadata accessor for MailboxTaskLogger);
        v192 = v163;
        v193 = v162;
        v164 = sub_1004A5824();
        v166 = sub_10015BA6C(v164, v165, &v194);

        *(v159 + 43) = v166;
        *(v159 + 51) = 2048;
        v167 = v188;
        *(v159 + 53) = v188;
        *(v159 + 61) = 2082;
        v192 = __PAIR64__(v185, v97);
        sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v168 = MessageIdentifierRange.debugDescription.getter();
        v170 = sub_10015BA6C(v168, v169, &v194);

        *(v159 + 63) = v170;
        v117 = v189;
        *(v159 + 71) = 2082;
        v192 = __PAIR64__(v118, v117);
        v171 = MessageIdentifierRange.debugDescription.getter();
        v173 = sub_10015BA6C(v171, v172, &v194);

        *(v159 + 73) = v173;
        _os_log_impl(&_mh_execute_header, v156, v157, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response %{public}s and %{public}s", v159, 0x51u);
        swift_arrayDestroy();

        v98 = v185;
      }

      else
      {
        sub_100031C74(v155, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v154, type metadata accessor for MailboxTaskLogger);
        v167 = v188;
      }

      if (v117 >= v97)
      {
        v174 = v97;
      }

      else
      {
        v174 = v117;
      }

      LODWORD(v194) = v174;
      if (v118 <= v98)
      {
        v175 = v98;
      }

      else
      {
        v175 = v118;
      }

      v191 = v175;
      sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v194, &v191, &type metadata for UID, &v192);
      v176 = v192;
      v177 = v187;
      v178 = swift_isUniquelyReferenced_nonNull_native();
      v194 = *v177;
      sub_10001CD40(v176, 0, v167, v178);
      *v177 = v194;
    }

    else
    {
      v185 = HIDWORD(*v44);
      v121 = v190;
      v122 = v182;
      sub_100031C0C(v190, v182, type metadata accessor for MailboxTaskLogger);
      v123 = v180;
      sub_100031C0C(v121, v180, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v124 = sub_1004A4A54();
      v125 = sub_1004A6014();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v194 = v190;
        *v126 = 68160003;
        *(v126 + 4) = 2;
        *(v126 + 8) = 256;
        v127 = v186;
        v128 = v123 + *(v186 + 20);
        *(v126 + 10) = *v128;
        *(v126 + 11) = 2082;
        v129 = v122 + *(v127 + 20);
        *(v126 + 13) = sub_10015BA6C(*(v129 + 8), *(v129 + 16), &v194);
        *(v126 + 21) = 1040;
        *(v126 + 23) = 2;
        *(v126 + 27) = 512;
        LOWORD(v128) = *(v128 + 24);
        sub_100031C74(v123, type metadata accessor for MailboxTaskLogger);
        *(v126 + 29) = v128;
        *(v126 + 31) = 2160;
        *(v126 + 33) = 0x786F626C69616DLL;
        *(v126 + 41) = 2085;
        v130 = *(v129 + 32);
        LODWORD(v129) = *(v129 + 40);

        sub_100031C74(v122, type metadata accessor for MailboxTaskLogger);
        v192 = v130;
        v193 = v129;
        v131 = sub_1004A5824();
        v133 = sub_10015BA6C(v131, v132, &v194);

        *(v126 + 43) = v133;
        *(v126 + 51) = 2048;
        *(v126 + 53) = v188;
        *(v126 + 61) = 2082;
        v192 = __PAIR64__(v185, v97);
        sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v134 = MessageIdentifierRange.debugDescription.getter();
        v136 = sub_10015BA6C(v134, v135, &v194);

        *(v126 + 63) = v136;
        *(v126 + 71) = 2082;
        v192 = __PAIR64__(v118, v189);
        v137 = MessageIdentifierRange.debugDescription.getter();
        v139 = sub_10015BA6C(v137, v138, &v194);

        *(v126 + 73) = v139;
        _os_log_impl(&_mh_execute_header, v124, v125, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response %{public}s and %{public}s: Should overlap, but they do not.", v126, 0x51u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100031C74(v123, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v122, type metadata accessor for MailboxTaskLogger);
      }

      *(v187 + 8) = 1;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v74 = v190;
      sub_100031C0C(v190, v34, type metadata accessor for MailboxTaskLogger);
      sub_100031C0C(v74, v31, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v75 = sub_1004A4A54();
      v76 = sub_1004A6004();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *v77 = 68159747;
        *(v77 + 4) = 2;
        *(v77 + 8) = 256;
        v78 = v186;
        v79 = &v31[*(v186 + 20)];
        *(v77 + 10) = *v79;
        *(v77 + 11) = 2082;
        v80 = &v34[*(v78 + 20)];
        *(v77 + 13) = sub_10015BA6C(*(v80 + 1), *(v80 + 2), &v194);
        *(v77 + 21) = 1040;
        *(v77 + 23) = 2;
        *(v77 + 27) = 512;
        LOWORD(v79) = *(v79 + 12);
        sub_100031C74(v31, type metadata accessor for MailboxTaskLogger);
        *(v77 + 29) = v79;
        *(v77 + 31) = 2160;
        *(v77 + 33) = 0x786F626C69616DLL;
        *(v77 + 41) = 2085;
        v81 = *(v80 + 4);
        LODWORD(v79) = *(v80 + 10);

        sub_100031C74(v34, type metadata accessor for MailboxTaskLogger);
        v192 = v81;
        v193 = v79;
        v82 = sub_1004A5824();
        v84 = sub_10015BA6C(v82, v83, &v194);

        *(v77 + 43) = v84;
        *(v77 + 51) = 2048;
        v85 = v188;
        *(v77 + 53) = v188;
        *(v77 + 61) = 2082;
        v86 = v189;
        v192 = v189;
        sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v87 = MessageIdentifierRange.debugDescription.getter();
        v89 = sub_10015BA6C(v87, v88, &v194);

        *(v77 + 63) = v89;
        _os_log_impl(&_mh_execute_header, v75, v76, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld is %{public}s", v77, 0x47u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100031C74(v31, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v34, type metadata accessor for MailboxTaskLogger);
        v85 = v188;
        v86 = v189;
      }

      v93 = v187;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v192 = *v93;
      v95 = v86;
      v96 = v85;
LABEL_16:
      sub_10001CD40(v95, 0, v96, isUniquelyReferenced_nonNull_native);
      *v93 = v192;
      return;
    }

    v62 = v190;
    sub_100031C0C(v190, v40, type metadata accessor for MailboxTaskLogger);
    sub_100031C0C(v62, v37, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v63 = sub_1004A4A54();
    v64 = sub_1004A6004();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *v65 = 68159491;
      *(v65 + 4) = 2;
      *(v65 + 8) = 256;
      v66 = v186;
      v67 = &v37[*(v186 + 20)];
      *(v65 + 10) = *v67;
      *(v65 + 11) = 2082;
      v68 = &v40[*(v66 + 20)];
      *(v65 + 13) = sub_10015BA6C(*(v68 + 1), *(v68 + 2), &v194);
      *(v65 + 21) = 1040;
      *(v65 + 23) = 2;
      *(v65 + 27) = 512;
      LOWORD(v67) = *(v67 + 12);
      sub_100031C74(v37, type metadata accessor for MailboxTaskLogger);
      *(v65 + 29) = v67;
      *(v65 + 31) = 2160;
      *(v65 + 33) = 0x786F626C69616DLL;
      *(v65 + 41) = 2085;
      v69 = *(v68 + 4);
      LODWORD(v67) = *(v68 + 10);

      sub_100031C74(v40, type metadata accessor for MailboxTaskLogger);
      v192 = v69;
      v193 = v67;
      v70 = sub_1004A5824();
      v72 = sub_10015BA6C(v70, v71, &v194);

      *(v65 + 43) = v72;
      *(v65 + 51) = 2048;
      v73 = v188;
      *(v65 + 53) = v188;
      _os_log_impl(&_mh_execute_header, v63, v64, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld is empty", v65, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100031C74(v37, type metadata accessor for MailboxTaskLogger);

      sub_100031C74(v40, type metadata accessor for MailboxTaskLogger);
      v73 = v188;
    }

    v90 = v189;
    v91 = v187;
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v192 = *v91;
    sub_10001CD40(v90, 1, v73, v92);
    *v91 = v192;
  }
}

uint64_t sub_100031A88(uint64_t (*a1)(void))
{
  v1 = *(a1() + 16);
  if (v1)
  {
    sub_100134BC4(0, v1, 0);
    v2 = 32;
    v3 = _swiftEmptyArrayStorage;
    do
    {
      sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
      v4 = sub_1004A5804();
      v13 = v3;
      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        v9 = v4;
        v10 = v5;
        sub_100134BC4((v6 > 1), v7 + 1, 1);
        v5 = v10;
        v4 = v9;
        v3 = v13;
      }

      v3[2] = v7 + 1;
      v8 = &v3[2 * v7];
      v8[4] = v4;
      v8[5] = v5;
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v11 = sub_1004A5614();

  return v11;
}

uint64_t sub_100031C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100031C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100031CDC()
{
  result = qword_1005CDA18;
  if (!qword_1005CDA18)
  {
    v3 = sub_10000DEFC(&unk_1005DA9A0, &unk_1004CF770);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005CDA18);
  }

  return result;
}

BOOL sub_100031D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  __chkstk_darwin(v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v21 - v11);
  v13 = sub_10000C9C0(&qword_1005CDA80, &qword_1004CF7F8);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - v14;
  v17 = *(v16 + 56);
  sub_100031C0C(a1, &v21 - v14, type metadata accessor for DetermineMessageBatches.TaskState);
  sub_100031C0C(a2, &v15[v17], type metadata accessor for DetermineMessageBatches.TaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100031C0C(v15, v12, type metadata accessor for DetermineMessageBatches.TaskState);
    if (!swift_getEnumCaseMultiPayload())
    {
      v19 = *v12 == *&v15[v17];
      goto LABEL_7;
    }

LABEL_11:
    sub_100025F40(v15, &qword_1005CDA80, &qword_1004CF7F8);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100031C74(v15, type metadata accessor for DetermineMessageBatches.TaskState);
      return 1;
    }

    goto LABEL_11;
  }

  sub_100031C0C(v15, v9, type metadata accessor for DetermineMessageBatches.TaskState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100031C74(v9, type metadata accessor for MessageBatches);
    goto LABEL_11;
  }

  sub_100035908(&v15[v17], v6, type metadata accessor for MessageBatches);
  v19 = sub_1000DA5A0(v9, v6);
  sub_100031C74(v6, type metadata accessor for MessageBatches);
  sub_100031C74(v9, type metadata accessor for MessageBatches);
LABEL_7:
  sub_100031C74(v15, type metadata accessor for DetermineMessageBatches.TaskState);
  return v19;
}

char *sub_10003203C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = (a1 + 56);
  v3 = _swiftEmptyArrayStorage;
  do
  {
    if (*v2 == 1)
    {
      v7 = *(v2 - 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100085BDC(0, *(v3 + 2) + 1, 1, v3);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_100085BDC((v4 > 1), v5 + 1, 1, v3);
      }

      *(v3 + 2) = v5 + 1;
      *&v3[16 * v5 + 32] = v7;
    }

    v2 += 32;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_100032120(char a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  result = sub_10006F7A4(a1 & 1, a3);
  v22 = *(result + 16);
  if (v22)
  {
    v12 = 0;
    v20 = result + 32;
    v23 = result;
    while (v12 < *(result + 16))
    {
      v13 = *(v24 + 16);
      if (v13)
      {
        v14 = *(v20 + 4 * v12);
        v15 = v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v16 = *(v21 + 72);
        do
        {
          sub_100031C0C(v15, v10, type metadata accessor for TaskHistory.Previous);
          sub_100035908(v10, v7, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100031C74(v7, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v17 = *&v7[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_100031C74(v7, type metadata accessor for ClientCommand);
            if (v17 == v14)
            {
              v18 = 1;
              goto LABEL_13;
            }
          }

          v15 += v16;
          --v13;
        }

        while (v13);
      }

      ++v12;
      result = v23;
      if (v12 == v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v18 = 0;
LABEL_13:

    return v18;
  }

  return result;
}

void *sub_10003235C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v4 = a1;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  result = sub_10006F998(v4, a3);
  v22 = result[2];
  if (v22)
  {
    v12 = 0;
    v20 = result + 4;
    v23 = result;
    while (v12 < result[2])
    {
      v13 = *(v24 + 16);
      if (v13)
      {
        v14 = *(v20 + v12);
        v15 = v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v16 = *(v21 + 72);
        do
        {
          sub_100031C0C(v15, v10, type metadata accessor for TaskHistory.Previous);
          sub_100035908(v10, v7, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100031C74(v7, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v17 = *&v7[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_100031C74(v7, type metadata accessor for ClientCommand);
            if (v17 == v14)
            {
              v18 = 1;
              goto LABEL_13;
            }
          }

          v15 += v16;
          --v13;
        }

        while (v13);
      }

      ++v12;
      result = v23;
      if (v12 == v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v18 = 0;
LABEL_13:

    return v18;
  }

  return result;
}

uint64_t sub_100032598(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TaskHistory.Running(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;

  v15._countAndFlagsBits = a1;
  v15._object = a2;
  v39 = Tag.init(_:)(v15);
  if (v39.is_nil)
  {
    return 0;
  }

  value = v39.value;
  v36 = a4;
  v37 = v11;
  v17 = *(a3 + 16);
  v38 = a3;

  if (!v17)
  {
LABEL_20:

    return 0;
  }

  connectionIdentifier = value.connectionIdentifier;
  v19 = HIDWORD(*&value);
  v20 = v38 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v21 = *(v9 + 72);
  while (1)
  {
    sub_100031C0C(v20, v14, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_100031C74(v14, type metadata accessor for TaskHistory.Running);
LABEL_5:
    v20 += v21;
    if (!--v17)
    {
      goto LABEL_20;
    }
  }

  v22 = *v14;
  v23 = *(v14 + 1);
  v24 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
  sub_100031C74(&v14[*(v24 + 64)], type metadata accessor for ClientCommand);
  if (v22 != connectionIdentifier || v23 != v19)
  {
    goto LABEL_5;
  }

  v26 = v37;
  sub_100031C0C(v20, v37, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_25:
    result = sub_100031C74(v26, type metadata accessor for TaskHistory.Running);
    __break(1u);
    return result;
  }

  v27 = *v26;
  v28 = v26;
  v29 = *(v26 + 4);
  v26 = *(v26 + 8);
  sub_100031C74(v28 + *(v24 + 64), type metadata accessor for ClientCommand);

  if (v27 != connectionIdentifier)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v29 != v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = (v36 + 32);
  v31 = *(v36 + 16) + 1;
  while (--v31)
  {
    v32 = v30 + 8;
    v33 = *v30;
    v30 += 8;
    if (v33 == v26)
    {
      if ((*(v32 - 2) & 1) == 0)
      {
        return 0;
      }

      return *(v32 - 3);
    }
  }

  return 0;
}

void sub_10003287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v7 = v6;
  v33 = a6;
  v12 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v12);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v7 + 137);
  if (v15 == 2)
  {
    sub_100031C0C(a1, v14, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      v16 = *v14;
      v17 = v14[1];
      v18 = v14[2];
      v19 = v14[5];
      v20 = sub_100032598(v16, v17, a2, a4);
      if (v22)
      {
LABEL_23:
      }

      else
      {
        v26 = v20;
        v27 = v21;
        v32[1] = v17;
        v32[2] = v18;
        v28 = 0;
        type metadata accessor for DetermineMessageBatches(0);
        v29 = *(v19 + 16);
        while (!__OFADD__(v28, 1))
        {
          if (v28 < v29)
          {
            if (v28 >= *(v19 + 16))
            {
              goto LABEL_26;
            }

            v30 = *(v19 + 8 * v28 + 32);
          }

          else
          {
            v30 = 0;
          }

          v31 = v26 + v28;
          sub_100030504(v30, v28 >= v29, v26 + v28, v33);
          if (!(v26 - v27 + v28))
          {
            goto LABEL_23;
          }

          ++v28;
          if (__OFADD__(v31, 1))
          {
            __break(1u);
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
      }
    }

    else
    {
      sub_100031C74(v14, type metadata accessor for UntaggedResponse);
    }
  }

  else
  {
    if (sub_100057D68(0, 0, 0, a2, a3, a4))
    {
      v23 = v15 & 0x101;
      v24 = 0;
    }

    else
    {
      if ((sub_100057D68(1, 0, 0, a2, a3, a4) & 1) == 0)
      {
        return;
      }

      v23 = v15 & 0x101;
      v24 = 1;
    }

    v25 = v33;

    sub_10002C838(v24, a1, v23, v25);
  }
}

char *sub_100032AF0(unint64_t a1)
{
  v2 = _swiftEmptyArrayStorage;
  v3 = 1;
  v4 = 2;
LABEL_2:
  v5 = v3;
  while (1)
  {
    v3 = v4;
    if (!*(a1 + 16))
    {
      return v2;
    }

    v6 = a1;
    v7 = sub_100063D94(v5);
    if ((v8 & 1) == 0)
    {
      return v2;
    }

    v9 = *(a1 + 56) + 12 * v7;
    if (*(v9 + 8))
    {
      if (!*(v2 + 2))
      {
        return v2;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v19 = *(v2 + 2);
        if (v19)
        {
          goto LABEL_26;
        }
      }

      else
      {
LABEL_30:
        v2 = sub_100139840(v2);
        v19 = *(v2 + 2);
        if (v19)
        {
LABEL_26:
          v20 = v19 - 1;
          v21 = *&v2[8 * v20 + 36];
          *(v2 + 2) = v20;
          v25 = v21;
          v26 = 1;
          sub_100016948();
          static MessageIdentifier.... infix(_:_:)(&v26, &v25, &type metadata for UID, &v27);
          v18 = v27;
          a1 = *(v2 + 2);
          v19 = *(v2 + 3);
          v6 = a1 + 1;
          if (a1 < v19 >> 1)
          {
LABEL_27:
            *(v2 + 2) = v6;
            *&v2[8 * a1 + 32] = v18;
            return v2;
          }

LABEL_32:
          v24 = v18;
          v23 = sub_100085898((v19 > 1), v6, 1, v2);
          v18 = v24;
          v2 = v23;
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    v10 = *v9;
    v11 = *(v2 + 2);
    if (!v11)
    {
      v14 = HIDWORD(v10);
      goto LABEL_16;
    }

    v12 = *&v2[8 * v11 + 24];
    if (v12 >= 2 && v12 - 1 >= v10)
    {
      v25 = v12 - 1;
      v26 = v10;
      sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v26, &v25, &type metadata for UID, &v27);
      LODWORD(v10) = v27;
      LODWORD(v14) = HIDWORD(v27);
LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_100085898(0, *(v2 + 2) + 1, 1, v2);
      }

      v16 = *(v2 + 2);
      v15 = *(v2 + 3);
      v6 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v2 = sub_100085898((v15 > 1), v16 + 1, 1, v2);
      }

      *(v2 + 2) = v6;
      v17 = &v2[8 * v16];
      *(v17 + 8) = v10;
      *(v17 + 9) = v14;
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      goto LABEL_2;
    }

    v4 = v3 + 1;
    v5 = v3;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_29;
    }
  }
}

unint64_t sub_100032D20()
{
  result = qword_1005CDA30;
  if (!qword_1005CDA30)
  {
    result = swift_getWitnessTable(byte_1004CF8BC, &_s34UIDBatchesResponsesAreInconsistentVN, v0, v1);
    atomic_store(result, &qword_1005CDA30);
  }

  return result;
}

uint64_t sub_100032D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v85 = a5;
  v83 = a1;
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v8 - 8);
  v82 = &v82 - v9;
  v10 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  __chkstk_darwin(v10);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v84);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v82 - v16;
  __chkstk_darwin(v18);
  v20 = &v82 - v19;
  __chkstk_darwin(v21);
  v23 = &v82 - v22;
  v24 = *(v5 + 72);
  if (v24 == 1 && (sub_10001F494(1, a2, a3) & 1) == 0)
  {
    v31 = *(v5 + 76);
    v83 = v5;
    v32 = *(v5 + 84);
    if (v32)
    {
      v33 = v85;
      sub_100031C0C(v85, v17, type metadata accessor for MailboxTaskLogger);
      sub_100031C0C(v33, v14, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v34 = sub_1004A4A54();
      v35 = sub_1004A6034();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *v36 = 68159235;
        v85 = v31;
        *(v36 + 4) = 2;
        *(v36 + 8) = 256;
        v37 = v84;
        v38 = &v14[*(v84 + 20)];
        *(v36 + 10) = *v38;
        *(v36 + 11) = 2082;
        v39 = &v17[*(v37 + 20)];
        *(v36 + 13) = sub_10015BA6C(*(v39 + 1), *(v39 + 2), &v89);
        *(v36 + 21) = 1040;
        *(v36 + 23) = 2;
        *(v36 + 27) = 512;
        LOWORD(v38) = *(v38 + 12);
        sub_100031C74(v14, type metadata accessor for MailboxTaskLogger);
        *(v36 + 29) = v38;
        *(v36 + 31) = 2160;
        *(v36 + 33) = 0x786F626C69616DLL;
        *(v36 + 41) = 2085;
        v40 = *(v39 + 4);
        LODWORD(v39) = *(v39 + 10);

        sub_100031C74(v17, type metadata accessor for MailboxTaskLogger);
        v86 = v40;
        v87 = v39;
        v41 = sub_1004A5824();
        v43 = sub_10015BA6C(v41, v42, &v89);
        v31 = v85;

        *(v36 + 43) = v43;
        _os_log_impl(&_mh_execute_header, v34, v35, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Clearing window of interest", v36, 0x33u);
        swift_arrayDestroy();

LABEL_23:

LABEL_28:
        v65 = v83;
        v66 = swift_allocObject();
        v67 = *(v65 + 104);
        *(v66 + 16) = *(v65 + 96);
        *(v66 + 24) = v67;
        *(v66 + 32) = v31;
        *(v66 + 40) = v32;

        return 1;
      }

      sub_100031C74(v14, type metadata accessor for MailboxTaskLogger);

      v64 = v17;
    }

    else
    {
      v47 = v85;
      sub_100031C0C(v85, v23, type metadata accessor for MailboxTaskLogger);
      sub_100031C0C(v47, v20, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v34 = sub_1004A4A54();
      v48 = sub_1004A6034();
      if (os_log_type_enabled(v34, v48))
      {
        v49 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *v49 = 68159491;
        *(v49 + 4) = 2;
        *(v49 + 8) = 256;
        v50 = v84;
        v51 = *(v84 + 20);
        v85 = v31;
        v52 = &v20[v51];
        *(v49 + 10) = v20[v51];
        *(v49 + 11) = 2082;
        v53 = &v23[*(v50 + 20)];
        *(v49 + 13) = sub_10015BA6C(*(v53 + 1), *(v53 + 2), &v89);
        *(v49 + 21) = 1040;
        *(v49 + 23) = 2;
        *(v49 + 27) = 512;
        LOWORD(v52) = *(v52 + 12);
        sub_100031C74(v20, type metadata accessor for MailboxTaskLogger);
        *(v49 + 29) = v52;
        *(v49 + 31) = 2160;
        *(v49 + 33) = 0x786F626C69616DLL;
        *(v49 + 41) = 2085;
        v54 = *(v53 + 4);
        v55 = *(v53 + 10);

        sub_100031C74(v23, type metadata accessor for MailboxTaskLogger);
        v86 = v54;
        v87 = v55;
        v56 = sub_1004A5824();
        v58 = sub_10015BA6C(v56, v57, &v89);

        *(v49 + 43) = v58;
        *(v49 + 51) = 2082;
        v86 = v85;
        sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v59 = MessageIdentifierRange.debugDescription.getter();
        v61 = sub_10015BA6C(v59, v60, &v89);

        *(v49 + 53) = v61;
        v31 = v85;
        _os_log_impl(&_mh_execute_header, v34, v48, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Setting window of interest: %{public}s", v49, 0x3Du);
        swift_arrayDestroy();

        goto LABEL_23;
      }

      sub_100031C74(v20, type metadata accessor for MailboxTaskLogger);

      v64 = v23;
    }

    sub_100031C74(v64, type metadata accessor for MailboxTaskLogger);
    goto LABEL_28;
  }

  v25 = type metadata accessor for DetermineMessageBatches(0);
  sub_100031C0C(v5 + *(v25 + 56), v12, type metadata accessor for DetermineMessageBatches.TaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 4;
    }

    if ((sub_10001F494(EnumCaseMultiPayload, a2, a3) & 1) == 0)
    {
      v44 = swift_allocObject();
      v45 = *(v5 + 104);
      *(v44 + 16) = *(v5 + 96);
      *(v44 + 24) = v45;
      v46 = *(v5 + 84);
      *(v44 + 32) = *(v5 + 76);
      *(v44 + 40) = v46;

      sub_100031C74(v12, type metadata accessor for DetermineMessageBatches.TaskState);
      return 1;
    }

    if (*(v5 + 84) & 1) != 0 || (v27 = *(v5 + 76), (v27 & 0xFFFFFFFE) == 0) || (sub_10001F494(3, a2, a3))
    {
      sub_100031C74(v12, type metadata accessor for DetermineMessageBatches.TaskState);
      return 4;
    }

    LODWORD(v89) = 1;
    LODWORD(v88) = v27 - 1;
    v69 = sub_100016948();
    v70 = v5;
    static MessageIdentifier.... infix(_:_:)(&v89, &v88, &type metadata for UID, &v86);
    v89 = v86;
    v88 = Range<>.init<A>(_:)(&v89, &type metadata for UID, v69);
    sub_100016D2C();
    v71 = v82;
    sub_1004A7124();
    v72 = sub_10000C9C0(&qword_1005CD538, &qword_1004CF310);
    swift_allocBox();
    v73 = *(v72 + 48);
    v74 = *(v70 + 104);
    *v75 = *(v70 + 96);
    v75[1] = v74;
    sub_100025FDC(v71, v75 + v73, &qword_1005CD1D0, &unk_1004CF2C0);

    sub_100031C74(v12, type metadata accessor for DetermineMessageBatches.TaskState);
    return 3;
  }

  else
  {
    if ((v24 & 1) == 0)
    {
      if ((sub_10001F494(0, a2, a3) & 1) == 0)
      {
        v62 = swift_allocObject();
        v63 = *(v5 + 104);
        *(v62 + 16) = *(v5 + 96);
        *(v62 + 24) = v63;

        return 0;
      }

      if ((sub_10009A604(0, v83, a2, a3) & 1) == 0)
      {
        return 4;
      }
    }

    result = sub_10001F494(2, a2, a3);
    if (result)
    {
      return 4;
    }

    v29 = *(v5 + 136);
    if (v29)
    {
      v30 = -1;
    }

    else
    {
      v68 = *(v5 + 132);
      v30 = v68 - 1;
      if (v68 == 1)
      {
        v30 = 1;
      }

      else if (!v68)
      {
        __break(1u);
        return result;
      }
    }

    v76 = *(v5 + 76);
    v77 = *(v5 + 84);
    if (v29 | v77)
    {
      v78 = 0;
    }

    else
    {
      v78 = v30 - HIDWORD(v76);
    }

    v79 = swift_allocObject();
    v80 = v79;
    v81 = *(v5 + 104);
    v79[2] = *(v5 + 96);
    v79[3] = v81;
    if (v77)
    {
      LODWORD(v86) = 1;
      LODWORD(v89) = v30;
      sub_100016948();

      static MessageIdentifier.... infix(_:_:)(&v86, &v89, &type metadata for UID, (v80 + 4));
    }

    else
    {
      v79[4] = v76;
    }

    v80[5] = *(v5 + 144);
    v80[6] = v78;
    return 2;
  }
}

void sub_10003376C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v279 = a5;
  v286 = a1;
  v271 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
  __chkstk_darwin(v271);
  v277 = (&v239 - v9);
  v10 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v10 - 8);
  v280 = &v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v263 = *(v264 - 8);
  __chkstk_darwin(v264);
  v254 = &v239 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v265 = &v239 - v14;
  __chkstk_darwin(v15);
  v246 = &v239 - v16;
  v17 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v17 - 8);
  v260 = &v239 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v251 = &v239 - v20;
  v248 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  __chkstk_darwin(v248);
  v273 = &v239 - v21;
  v278 = sub_10000C9C0(&qword_1005CDA40, &qword_1004CF7A0);
  __chkstk_darwin(v278);
  v23 = (&v239 - v22);
  v274 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v274);
  v258 = &v239 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v259 = &v239 - v26;
  __chkstk_darwin(v27);
  v266 = &v239 - v28;
  __chkstk_darwin(v29);
  v247 = &v239 - v30;
  __chkstk_darwin(v31);
  v249 = &v239 - v32;
  __chkstk_darwin(v33);
  v272 = &v239 - v34;
  __chkstk_darwin(v35);
  v255 = &v239 - v36;
  __chkstk_darwin(v37);
  v256 = &v239 - v38;
  __chkstk_darwin(v39);
  v262 = &v239 - v40;
  __chkstk_darwin(v41);
  v275 = &v239 - v42;
  v285 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  __chkstk_darwin(v285);
  v257 = (&v239 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44);
  v281 = &v239 - v45;
  __chkstk_darwin(v46);
  v250 = (&v239 - v47);
  __chkstk_darwin(v48);
  v261 = (&v239 - v49);
  __chkstk_darwin(v50);
  v52 = (&v239 - v51);
  v276 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v276);
  v267 = &v239 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v268 = &v239 - v55;
  __chkstk_darwin(v56);
  v252 = &v239 - v57;
  __chkstk_darwin(v58);
  v253 = &v239 - v59;
  __chkstk_darwin(v60);
  v269 = &v239 - v61;
  __chkstk_darwin(v62);
  v270 = &v239 - v63;
  __chkstk_darwin(v64);
  v66 = &v239 - v65;
  __chkstk_darwin(v67);
  v69 = &v239 - v68;
  __chkstk_darwin(v70);
  v72 = &v239 - v71;
  __chkstk_darwin(v73);
  v75 = &v239 - v74;
  v282 = a2;
  v283 = a4;
  v284 = a3;
  if ((sub_10006FDE4(0, a2, a3, a4) & 1) != 0 && ((v286 >> 59) & 0x1E | (v286 >> 2) & 1) == 8 && *(v5 + 104) == *((v286 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
  {
    v76 = *((v286 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v77 = *((v286 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
    if (sub_1000FFC98(*(v5 + 96), *((v286 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
    {
      v244 = v76;
      v245 = v5;
      v78 = v279;
      sub_100031C0C(v279, v75, type metadata accessor for MailboxTaskLogger);
      sub_100031C0C(v78, v72, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v79 = sub_1004A4A54();
      v80 = sub_1004A6034();
      v243 = v79;
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v242 = swift_slowAlloc();
        v290 = v242;
        *v81 = 68159491;
        *(v81 + 4) = 2;
        *(v81 + 8) = 256;
        v82 = v276;
        v83 = v77;
        v84 = &v72[SHIDWORD(v276[2].isa)];
        *(v81 + 10) = *v84;
        *(v81 + 11) = 2082;
        isa_high = SHIDWORD(v82[2].isa);
        v241 = v80;
        v86 = &v75[isa_high];
        *(v81 + 13) = sub_10015BA6C(*&v75[isa_high + 8], *&v75[isa_high + 16], &v290);
        *(v81 + 21) = 1040;
        *(v81 + 23) = 2;
        *(v81 + 27) = 512;
        v240 = *(v84 + 12);
        v77 = v83;
        sub_100031C74(v72, type metadata accessor for MailboxTaskLogger);
        *(v81 + 29) = v240;
        *(v81 + 31) = 2160;
        *(v81 + 33) = 0x786F626C69616DLL;
        *(v81 + 41) = 2085;
        v87 = *(v86 + 4);
        LODWORD(v86) = *(v86 + 10);

        sub_100031C74(v75, type metadata accessor for MailboxTaskLogger);
        v287 = v87;
        v288 = v86;
        v88 = sub_1004A5824();
        v90 = sub_10015BA6C(v88, v89, &v290);

        *(v81 + 43) = v90;
        *(v81 + 51) = 2082;
        v91 = v243;
        v92 = v244;
        v287 = __PAIR64__(v77, v244);
        sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v93 = MessageIdentifierRange.debugDescription.getter();
        v95 = sub_10015BA6C(v93, v94, &v290);

        *(v81 + 53) = v95;
        _os_log_impl(&_mh_execute_header, v91, v241, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found window of interest: %{public}s", v81, 0x3Du);
        swift_arrayDestroy();
      }

      else
      {
        sub_100031C74(v72, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v75, type metadata accessor for MailboxTaskLogger);
        v92 = v244;
      }

      v5 = v245;
      *(v245 + 76) = v92 | (v77 << 32);
      *(v5 + 84) = 0;
      if ((*(v5 + 136) & 1) == 0)
      {
        v96 = *(v5 + 132) - v77;
        if (v96 > *(v5 + 144) / 2)
        {
          v97 = v279;
          sub_100031C0C(v279, v69, type metadata accessor for MailboxTaskLogger);
          sub_100031C0C(v97, v66, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v98 = sub_1004A4A54();
          v99 = sub_1004A6034();
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v244 = swift_slowAlloc();
            v290 = v244;
            *v100 = 68159491;
            *(v100 + 4) = 2;
            *(v100 + 8) = 256;
            v101 = v276;
            v102 = &v66[SHIDWORD(v276[2].isa)];
            *(v100 + 10) = *v102;
            *(v100 + 11) = 2082;
            v103 = SHIDWORD(v101[2].isa);
            LODWORD(v243) = v99;
            v104 = &v69[v103];
            *(v100 + 13) = sub_10015BA6C(*&v69[v103 + 8], *&v69[v103 + 16], &v290);
            *(v100 + 21) = 1040;
            *(v100 + 23) = 2;
            *(v100 + 27) = 512;
            v105 = *(v102 + 12);
            sub_100031C74(v66, type metadata accessor for MailboxTaskLogger);
            *(v100 + 29) = v105;
            *(v100 + 31) = 2160;
            *(v100 + 33) = 0x786F626C69616DLL;
            *(v100 + 41) = 2085;
            v106 = *(v104 + 4);
            LODWORD(v104) = *(v104 + 10);

            sub_100031C74(v69, type metadata accessor for MailboxTaskLogger);
            v287 = v106;
            v288 = v104;
            v107 = sub_1004A5824();
            v109 = sub_10015BA6C(v107, v108, &v290);

            *(v100 + 43) = v109;
            *(v100 + 51) = 2048;
            *(v100 + 53) = v96;
            _os_log_impl(&_mh_execute_header, v98, v243, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld new UIDs on server. Querying server..", v100, 0x3Du);
            swift_arrayDestroy();
          }

          else
          {
            sub_100031C74(v66, type metadata accessor for MailboxTaskLogger);

            sub_100031C74(v69, type metadata accessor for MailboxTaskLogger);
          }

          v5 = v245;
          v110 = type metadata accessor for DetermineMessageBatches(0);
          sub_100031C74(v5 + *(v110 + 56), type metadata accessor for DetermineMessageBatches.TaskState);
          swift_storeEnumTagMultiPayload();
        }
      }
    }
  }

  v111 = v282;
  v112 = v283;
  v113 = v284;
  if (sub_10006FDE4(2, v282, v284, v283))
  {
    v114 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
    sub_100031C0C(v5 + v114, v52, type metadata accessor for DetermineMessageBatches.TaskState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100031C74(v52, type metadata accessor for DetermineMessageBatches.TaskState);
      goto LABEL_29;
    }

    if (((v286 >> 59) & 0x1E | (v286 >> 2) & 1) == 9)
    {
      v115 = *v52;
      v116 = swift_projectBox();
      sub_10000E268(v116, v23, &qword_1005CDA40, &qword_1004CF7A0);
      v117 = *v23;
      v118 = *(v278 + 48);
      if (*(v5 + 104) == v23[1])
      {
        v278 = *(v23 + *(v278 + 64));
        v119 = sub_1000FFC98(*(v5 + 96), v117);

        if (v119)
        {
          v244 = v115;
          sub_100025FDC(v23 + v118, v275, &unk_1005D91B0, &unk_1004CF400);
          v120 = *(v5 + 64);
          v121 = *(v5 + 72);
          v122 = v270;
          v123 = v269;
          v245 = v5;
          if (v121 == 1)
          {
            v124 = v278 - v244;
            if (__OFSUB__(v278, v244))
            {
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

            if (v124 < 0)
            {
              v125 = __OFSUB__(0, v124);
              v124 = v244 - v278;
              if (v125)
              {
                goto LABEL_92;
              }
            }

            if (v124 < *(v5 + 144) / 2)
            {
              v273 = *(v5 + 144);
              v126 = v279;
              sub_100031C0C(v279, v270, type metadata accessor for MailboxTaskLogger);
              sub_100031C0C(v126, v123, type metadata accessor for MailboxTaskLogger);
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              v127 = sub_1004A4A54();
              v128 = sub_1004A6034();
              if (os_log_type_enabled(v127, v128))
              {
                v129 = swift_slowAlloc();
                LODWORD(v272) = v128;
                v130 = v129;
                v279 = swift_slowAlloc();
                v290 = v279;
                *v130 = 68159747;
                *(v130 + 4) = 2;
                *(v130 + 8) = 256;
                v131 = v276;
                v132 = v123 + SHIDWORD(v276[2].isa);
                *(v130 + 10) = *v132;
                *(v130 + 11) = 2082;
                v133 = v122 + SHIDWORD(v131[2].isa);
                *(v130 + 13) = sub_10015BA6C(*(v133 + 8), *(v133 + 16), &v290);
                *(v130 + 21) = 1040;
                *(v130 + 23) = 2;
                *(v130 + 27) = 512;
                LOWORD(v132) = *(v132 + 24);
                sub_100031C74(v123, type metadata accessor for MailboxTaskLogger);
                *(v130 + 29) = v132;
                *(v130 + 31) = 2160;
                *(v130 + 33) = 0x786F626C69616DLL;
                *(v130 + 41) = 2085;
                v134 = *(v133 + 32);
                LODWORD(v133) = *(v133 + 40);

                sub_100031C74(v122, type metadata accessor for MailboxTaskLogger);
                v287 = v134;
                v288 = v133;
                v135 = sub_1004A5824();
                v137 = sub_10015BA6C(v135, v136, &v290);
                v111 = v282;

                *(v130 + 43) = v137;
                v112 = v283;
                v113 = v284;
                *(v130 + 51) = 2048;
                *(v130 + 53) = v278;
                *(v130 + 61) = 2048;
                *(v130 + 63) = v244;
                _os_log_impl(&_mh_execute_header, v127, v272, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld UIDs locally, %ld on server.", v130, 0x47u);
                swift_arrayDestroy();
              }

              else
              {
                sub_100031C74(v123, type metadata accessor for MailboxTaskLogger);

                sub_100031C74(v122, type metadata accessor for MailboxTaskLogger);
              }

              v5 = v245;
              v203 = v275;
              v204 = v262;
              sub_10000E268(v275, v262, &unk_1005D91B0, &unk_1004CF400);
              v205 = v261;
              sub_1000D7B58(v273, v204, 1, v261);
              sub_100025F40(v203, &unk_1005D91B0, &unk_1004CF400);
              swift_storeEnumTagMultiPayload();
              sub_1000357A4(v205, v5 + v114);
              goto LABEL_29;
            }
          }

          if (*(v5 + 84) & 1) != 0 || ((v121 | *(v5 + 136)))
          {
LABEL_52:
            v190 = v279;
            v191 = v268;
            sub_100031C0C(v279, v268, type metadata accessor for MailboxTaskLogger);
            v192 = v267;
            sub_100031C0C(v190, v267, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v193 = sub_1004A4A54();
            v194 = sub_1004A6034();
            if (os_log_type_enabled(v193, v194))
            {
              v195 = swift_slowAlloc();
              v290 = swift_slowAlloc();
              *v195 = 68159747;
              *(v195 + 4) = 2;
              *(v195 + 8) = 256;
              v196 = v276;
              v197 = v192 + SHIDWORD(v276[2].isa);
              *(v195 + 10) = *v197;
              *(v195 + 11) = 2082;
              v198 = v191 + SHIDWORD(v196[2].isa);
              *(v195 + 13) = sub_10015BA6C(*(v198 + 8), *(v198 + 16), &v290);
              *(v195 + 21) = 1040;
              *(v195 + 23) = 2;
              *(v195 + 27) = 512;
              LOWORD(v197) = *(v197 + 24);
              sub_100031C74(v192, type metadata accessor for MailboxTaskLogger);
              *(v195 + 29) = v197;
              *(v195 + 31) = 2160;
              *(v195 + 33) = 0x786F626C69616DLL;
              *(v195 + 41) = 2085;
              v199 = *(v198 + 32);
              LODWORD(v198) = *(v198 + 40);

              sub_100031C74(v191, type metadata accessor for MailboxTaskLogger);
              v287 = v199;
              v288 = v198;
              v112 = v283;
              v200 = sub_1004A5824();
              v202 = sub_10015BA6C(v200, v201, &v290);
              v111 = v282;

              *(v195 + 43) = v202;
              *(v195 + 51) = 2048;
              *(v195 + 53) = v278;
              *(v195 + 61) = 2048;
              *(v195 + 63) = v244;
              _os_log_impl(&_mh_execute_header, v193, v194, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Only found %ld UIDs locally but %ld on server. Querying server for message batches.", v195, 0x47u);
              swift_arrayDestroy();
            }

            else
            {
              sub_100031C74(v192, type metadata accessor for MailboxTaskLogger);

              sub_100031C74(v191, type metadata accessor for MailboxTaskLogger);
            }

            sub_100025F40(v275, &unk_1005D91B0, &unk_1004CF400);
            v5 = v245;
            sub_100031C74(v245 + v114, type metadata accessor for DetermineMessageBatches.TaskState);
            swift_storeEnumTagMultiPayload();
            v113 = v284;
            goto LABEL_29;
          }

          v165 = *(v5 + 76);
          v166 = HIDWORD(v165);
          v167 = *(v5 + 132);
          v168 = v167 + ~HIDWORD(v165);
          v169 = v120 - v168;
          if (!__OFSUB__(v120, v168))
          {
            if (!__OFSUB__(v169, 500))
            {
              if (v169 - 500 < v278)
              {
                v170 = v279;
                v171 = v253;
                sub_100031C0C(v279, v253, type metadata accessor for MailboxTaskLogger);
                v172 = v252;
                sub_100031C0C(v170, v252, type metadata accessor for MailboxTaskLogger);
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                v173 = sub_1004A4A54();
                v174 = sub_1004A6034();
                if (os_log_type_enabled(v173, v174))
                {
                  v175 = swift_slowAlloc();
                  v270 = swift_slowAlloc();
                  v290 = v270;
                  *v175 = 68160003;
                  LODWORD(v269) = v174;
                  *(v175 + 4) = 2;
                  *(v175 + 8) = 256;
                  v176 = v276;
                  v177 = SHIDWORD(v276[2].isa);
                  v279 = v167;
                  v178 = v172 + v177;
                  *(v175 + 10) = *(v172 + v177);
                  *(v175 + 11) = 2082;
                  v179 = SHIDWORD(v176[2].isa);
                  v276 = v173;
                  v180 = v165;
                  v165 = v172;
                  v181 = v171 + v179;
                  *(v175 + 13) = sub_10015BA6C(*(v171 + v179 + 8), *(v171 + v179 + 16), &v290);
                  *(v175 + 21) = 1040;
                  *(v175 + 23) = 2;
                  *(v175 + 27) = 512;
                  LOWORD(v178) = *(v178 + 24);
                  v182 = v165;
                  LODWORD(v165) = v180;
                  sub_100031C74(v182, type metadata accessor for MailboxTaskLogger);
                  *(v175 + 29) = v178;
                  *(v175 + 31) = 2160;
                  *(v175 + 33) = 0x786F626C69616DLL;
                  *(v175 + 41) = 2085;
                  v183 = *(v181 + 32);
                  LODWORD(v181) = *(v181 + 40);

                  sub_100031C74(v171, type metadata accessor for MailboxTaskLogger);
                  v287 = v183;
                  v288 = v181;
                  v184 = sub_1004A5824();
                  v186 = sub_10015BA6C(v184, v185, &v290);

                  *(v175 + 43) = v186;
                  *(v175 + 51) = 2048;
                  *(v175 + 53) = v278;
                  *(v175 + 61) = 2082;
                  v287 = __PAIR64__(v166, v180);
                  sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
                  v187 = MessageIdentifierRange.debugDescription.getter();
                  v167 = sub_10015BA6C(v187, v188, &v290);

                  *(v175 + 63) = v167;
                  LODWORD(v167) = v279;
                  *(v175 + 71) = 2048;
                  *(v175 + 73) = v244;
                  v189 = v276;
                  _os_log_impl(&_mh_execute_header, v276, v269, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld UIDs locally in window %{public}s, %ld on server.", v175, 0x51u);
                  swift_arrayDestroy();
                }

                else
                {
                  sub_100031C74(v172, type metadata accessor for MailboxTaskLogger);

                  sub_100031C74(v171, type metadata accessor for MailboxTaskLogger);
                }

                v207 = v256;
                v208 = *(v245 + 144);
                v113 = v284;
                if (v208 >= 1)
                {
                  if (v278 >= 1)
                  {
                    if (__OFADD__(v169, v208 >> 1))
                    {
LABEL_96:
                      __break(1u);
                      goto LABEL_97;
                    }

                    v209 = (v169 + (v208 >> 1)) / v208;
                    v210 = v209 * v208;
                    if ((v209 * v208) >> 64 != (v209 * v208) >> 63)
                    {
LABEL_97:
                      __break(1u);
                      goto LABEL_98;
                    }

                    v125 = __OFSUB__(v210, v278);
                    v211 = v210 - v278;
                    if (v125)
                    {
LABEL_98:
                      __break(1u);
LABEL_99:
                      __break(1u);
LABEL_100:
                      __break(1u);
                      return;
                    }

                    if (v211 < 0)
                    {
                      v125 = __OFSUB__(0, v211);
                      v211 = -v211;
                      if (v125)
                      {
                        goto LABEL_100;
                      }
                    }

                    if (v211 >= v208)
                    {
                      goto LABEL_74;
                    }

                    v125 = __OFADD__(v209++, 1);
                    if (!v125)
                    {
                      goto LABEL_74;
                    }

                    __break(1u);
                  }

                  v209 = 0;
LABEL_74:
                  if (!__OFADD__(v209, 1))
                  {
                    v212 = v274;
                    MessageIdentifierSet.suffix(_:)(v209 + 1, v274, v207);
                    v213 = MessageIdentifierSet.startIndex.getter(v212);
                    v215 = v214;
                    if (v213 != MessageIdentifierSet.endIndex.getter(v212) || v215 != v216)
                    {
                      MessageIdentifierSet.subscript.getter(v215, v274, &v287);
                      LODWORD(v165) = v287;
                    }

                    if (v167 == 1)
                    {
                      v217 = 1;
                      goto LABEL_82;
                    }

                    if (v167)
                    {
                      v217 = v167 - 1;
LABEL_82:
                      LODWORD(v290) = v165;
                      LODWORD(v289) = v217;
                      sub_100016948();
                      static MessageIdentifier.... infix(_:_:)(&v290, &v289, &type metadata for UID, &v287);
                      v218 = v245;
                      *(v245 + 76) = v287;
                      *(v218 + 84) = 0;
                      sub_100016D2C();
                      sub_1004A7114();
                      sub_10000E268(v207, v273, &unk_1005D91B0, &unk_1004CF400);
                      v219 = v274;
                      v220 = MessageIdentifierSet.startIndex.getter(v274);
                      v222 = v221;
                      for (i = v219; v220 != MessageIdentifierSet.endIndex.getter(i) || v222 != v228; i = v224)
                      {
                        v224 = v274;
                        MessageIdentifierSet.subscript.getter(v222, v274, &v287);
                        v225 = v287;
                        MessageIdentifierSet.index(_:offsetBy:)(v220, v222, 1);
                        v220 = v226;
                        v222 = v227;
                        LODWORD(v290) = v225;
                        MessageIdentifierSet.insert(_:)(&v287, &v290, v224);
                      }

                      v229 = v273;
                      v230 = (v273 + *(v248 + 36));
                      *v230 = v220;
                      v230[1] = v222;
                      sub_100025F40(v229, &qword_1005CDA38, &unk_1004D14C0);
                      v231 = v255;
                      sub_100025FDC(v272, v255, &unk_1005D91B0, &unk_1004CF400);
                      v232 = sub_1000DAC78(v231);
                      v233 = v249;
                      sub_1004A7114();
                      v234 = v247;
                      sub_10000E268(v233, v247, &unk_1005D91B0, &unk_1004CF400);
                      if (MessageIdentifierSet.count.getter() < 1)
                      {
                        sub_100025F40(v234, &unk_1005D91B0, &unk_1004CF400);
                        v237 = 1;
                        v5 = v245;
                        v111 = v282;
                        v112 = v283;
                        v236 = v251;
                      }

                      else
                      {
                        v235 = v246;
                        sub_100025FDC(v234, v246, &unk_1005D91B0, &unk_1004CF400);
                        v236 = v251;
                        sub_100025FDC(v235, v251, &qword_1005CD1D0, &unk_1004CF2C0);
                        v237 = 0;
                        v5 = v245;
                        v111 = v282;
                        v112 = v283;
                      }

                      v238 = v250;
                      (*(v263 + 56))(v236, v237, 1, v264);
                      sub_1000D80D8(v208, v232, v236, v238);
                      sub_100025F40(v255, &unk_1005D91B0, &unk_1004CF400);
                      sub_100025F40(v256, &unk_1005D91B0, &unk_1004CF400);
                      sub_100025F40(v275, &unk_1005D91B0, &unk_1004CF400);
                      sub_100025F40(v233, &unk_1005D91B0, &unk_1004CF400);
                      swift_storeEnumTagMultiPayload();
                      sub_1000357A4(v238, v5 + v114);
                      goto LABEL_29;
                    }

                    goto LABEL_99;
                  }

                  goto LABEL_95;
                }

LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
                goto LABEL_96;
              }

              goto LABEL_52;
            }

LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          goto LABEL_91;
        }
      }

      else
      {
      }

      sub_100025F40(v23 + v118, &unk_1005D91B0, &unk_1004CF400);
    }
  }

LABEL_29:
  if ((sub_10006FDE4(3, v111, v113, v112) & 1) == 0)
  {
    return;
  }

  v138 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
  v139 = v281;
  sub_100031C0C(v5 + v138, v281, type metadata accessor for DetermineMessageBatches.TaskState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v162 = type metadata accessor for DetermineMessageBatches.TaskState;
    v163 = v139;
LABEL_41:
    sub_100031C74(v163, v162);
    return;
  }

  v140 = v280;
  sub_100035908(v139, v280, type metadata accessor for MessageBatches);
  if ((*(v5 + 84) & 1) != 0 || (v141 = *(v5 + 76), (v141 & 0xFFFFFFFE) == 0) || ((v286 >> 59) & 0x1E | (v286 >> 2) & 1) != 0xA)
  {
    v162 = type metadata accessor for MessageBatches;
    v163 = v140;
    goto LABEL_41;
  }

  v142 = swift_projectBox();
  v143 = v277;
  sub_10000E268(v142, v277, &qword_1005CD4F8, &unk_1004CF790);
  v144 = *(v271 + 48);
  v145 = *(v271 + 64);
  if (*(v5 + 104) != v143[1])
  {

    goto LABEL_44;
  }

  v146 = sub_1000FFC98(*(v5 + 96), *v143);

  if ((v146 & 1) == 0)
  {
LABEL_44:
    sub_100031C74(v140, type metadata accessor for MessageBatches);
    v164 = v277;
    sub_100025F40(v277 + v145, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025F40(v164 + v144, &unk_1005D91B0, &unk_1004CF400);
    return;
  }

  v147 = v5;
  v148 = v277;
  v149 = v277 + v144;
  v150 = v266;
  sub_100025FDC(v149, v266, &unk_1005D91B0, &unk_1004CF400);
  LODWORD(v290) = 1;
  LODWORD(v289) = v141 - 1;
  v151 = sub_100016948();
  static MessageIdentifier.... infix(_:_:)(&v290, &v289, &type metadata for UID, &v287);
  v290 = v287;
  v289 = Range<>.init<A>(_:)(&v290, &type metadata for UID, v151);
  sub_100016D2C();
  v152 = v265;
  sub_1004A7124();
  LOBYTE(v151) = sub_1004A7034();
  sub_100025F40(v152, &qword_1005CD1D0, &unk_1004CF2C0);
  if (v151)
  {
    sub_100025F40(v148 + v145, &qword_1005CD1D0, &unk_1004CF2C0);
    v153 = *(v5 + 144);
    v154 = *(v140 + 8);
    v155 = v259;
    sub_10000E268(v150, v259, &unk_1005D91B0, &unk_1004CF400);
    v156 = v258;
    sub_10000E268(v155, v258, &unk_1005D91B0, &unk_1004CF400);

    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v156, &unk_1005D91B0, &unk_1004CF400);
      v161 = 1;
      v160 = v260;
    }

    else
    {
      v157 = v156;
      v158 = v254;
      sub_100025FDC(v157, v254, &unk_1005D91B0, &unk_1004CF400);
      v159 = v158;
      v160 = v260;
      sub_100025FDC(v159, v260, &qword_1005CD1D0, &unk_1004CF2C0);
      v161 = 0;
    }

    (*(v263 + 56))(v160, v161, 1, v264);
    v206 = v257;
    sub_1000D80D8(v153, v154, v160, v257);
    sub_100025F40(v155, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v150, &unk_1005D91B0, &unk_1004CF400);
    sub_100031C74(v140, type metadata accessor for MessageBatches);
    swift_storeEnumTagMultiPayload();
    sub_1000357A4(v206, v147 + v138);
  }

  else
  {
    sub_100025F40(v150, &unk_1005D91B0, &unk_1004CF400);
    sub_100031C74(v140, type metadata accessor for MessageBatches);
    sub_100025F40(v148 + v145, &qword_1005CD1D0, &unk_1004CF2C0);
  }
}