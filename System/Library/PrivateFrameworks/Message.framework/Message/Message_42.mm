uint64_t sub_1B0A9E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t), double a5)
{
  v26 = a2;
  v8 = type metadata accessor for TaskHistory.Previous(0);
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  result = sub_1B0A9F568(a1, a3, a4);
  v15 = result;
  v25 = *(result + 16);
  if (v25)
  {
    v16 = 0;
    v23 = result + 32;
    while (v16 < *(v15 + 16))
    {
      v17 = *(v26 + 16);
      if (v17)
      {
        v18 = *(v23 + 4 * v16);
        v19 = v26 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v20 = *(v24 + 72);
        do
        {
          sub_1B03B1B68(v19, v13, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v13, v10, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v21 = *(v10 + 2);
            result = sub_1B03E1BE8(*v10);
            if (v21 == v18)
            {
              v22 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v10, type metadata accessor for TaskHistory.Previous);
          }

          v19 += v20;
          --v17;
        }

        while (v17);
      }

      if (++v16 == v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v22 = 0;
LABEL_13:

    return v22;
  }

  return result;
}

uint64_t sub_1B0A9EA9C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v4 = result;
  v5 = 0;
  if (result)
  {
    v6 = BYTE4(result) & 1;
  }

  else
  {
    v6 = 0;
  }

  if (result)
  {
    v7 = 0;
  }

  else
  {
    v7 = BYTE4(result) & 1;
  }

  v8 = a2 + 40;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = (v8 + 12 * v5);
    v11 = v5;
    while (1)
    {
      if (v11 >= v2)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }

      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_38;
      }

      v12 = *(v10 - 1);
      v13 = *v10;
      if (v13 == 1)
      {
        break;
      }

      if ((v4 & 0x100000000) == 0 && v12 == v4)
      {
        v12 = v4;
        goto LABEL_22;
      }

LABEL_11:
      ++v11;
      v10 += 12;
      if (v5 == v2)
      {
        goto LABEL_29;
      }
    }

    if (v12)
    {
      if (v6)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

    v12 = 0;
LABEL_22:
    v23 = *(v10 - 2);
    result = swift_isUniquelyReferenced_nonNull_native();
    v24 = v8;
    if ((result & 1) == 0)
    {
      result = sub_1B0B0A1A4(0, *(v9 + 16) + 1, 1);
    }

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      result = sub_1B0B0A1A4((v14 > 1), v15 + 1, 1);
      v16 = v15 + 1;
      v3 = MEMORY[0x1E69E7CC0];
    }

    *(v9 + 16) = v16;
    v17 = v9 + 12 * v15;
    *(v17 + 32) = v23;
    *(v17 + 36) = v12;
    *(v17 + 40) = v13;
    v8 = v24;
  }

  while (v5 != v2);
LABEL_29:
  v18 = *(v9 + 16);
  if (v18)
  {
    sub_1B0B09DC4(0, v18, 0);
    v19 = *(v3 + 16);
    v20 = 32;
    do
    {
      v21 = *(v9 + v20);
      v22 = *(v3 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_1B0B09DC4((v22 > 1), v19 + 1, 1);
      }

      *(v3 + 16) = v19 + 1;
      *(v3 + 4 * v19 + 32) = v21;
      v20 += 12;
      ++v19;
      --v18;
    }

    while (v18);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1B0A9ECD4(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = a2;
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  result = sub_1B0A9EA9C(a1 | ((HIDWORD(a1) & 1) << 32), a3);
  v13 = result;
  v24 = *(result + 16);
  if (v24)
  {
    v14 = 0;
    v22 = result + 32;
    while (v14 < *(v13 + 16))
    {
      v15 = *(v25 + 16);
      if (v15)
      {
        v16 = *(v22 + 4 * v14);
        v17 = v25 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
        v18 = *(v23 + 72);
        do
        {
          sub_1B03B1B68(v17, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = *(v8 + 2);
            result = sub_1B03E1BE8(*v8);
            if (v19 == v16)
            {
              v20 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v8, type metadata accessor for TaskHistory.Previous);
          }

          v17 += v18;
          --v15;
        }

        while (v15);
      }

      if (++v14 == v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v20 = 0;
LABEL_13:

    return v20;
  }

  return result;
}

uint64_t sub_1B0A9EF18(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t), double a6)
{
  v28 = a3;
  v10 = type metadata accessor for TaskHistory.Previous(0);
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  result = sub_1B0A9F310(a1, a2 & 1, a4, a5);
  v17 = result;
  v27 = *(result + 16);
  if (v27)
  {
    v18 = 0;
    v25 = result + 32;
    while (v18 < *(v17 + 16))
    {
      v19 = *(v28 + 16);
      if (v19)
      {
        v20 = *(v25 + 4 * v18);
        v21 = v28 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
        v22 = *(v26 + 72);
        do
        {
          sub_1B03B1B68(v21, v15, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v15, v12, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v23 = *(v12 + 2);
            result = sub_1B03E1BE8(*v12);
            if (v23 == v20)
            {
              v24 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v12, type metadata accessor for TaskHistory.Previous);
          }

          v21 += v22;
          --v19;
        }

        while (v19);
      }

      if (++v18 == v27)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v24 = 0;
LABEL_13:

    return v24;
  }

  return result;
}

uint64_t sub_1B0A9F1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, __n128))
{
  v20[0] = a1;
  v20[1] = a2;
  v18[2] = v20;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = (a5)(a4, v18, a3);
  v9 = *(v8 + 16);
  if (v9)
  {
    v19 = MEMORY[0x1E69E7CC0];
    v10 = v8;
    sub_1B0B09DC4(0, v9, 0);
    v11 = v10;
    v12 = v19;
    v13 = *(v19 + 16);
    v14 = 32;
    do
    {
      v15 = *(v11 + v14);
      v19 = v12;
      v16 = *(v12 + 24);
      if (v13 >= v16 >> 1)
      {
        sub_1B0B09DC4((v16 > 1), v13 + 1, 1);
        v11 = v10;
        v12 = v19;
      }

      *(v12 + 16) = v13 + 1;
      *(v12 + 4 * v13 + 32) = v15;
      v14 += 24;
      ++v13;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1B0A9F310(uint64_t result, char a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v8 = result;
  v9 = 0;
  v10 = a3 + 48;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = (v10 + 24 * v9);
    v13 = v9;
    while (1)
    {
      if (v13 >= v4)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_28;
      }

      v14 = *(v12 - 1);
      v15 = *v12;
      if (v15 != 1)
      {
        break;
      }

      if (a2)
      {
        goto LABEL_12;
      }

LABEL_5:
      ++v13;
      v12 += 24;
      if (v9 == v4)
      {
        goto LABEL_19;
      }
    }

    if ((a2 & 1) != 0 || v14 != v8)
    {
      goto LABEL_5;
    }

    v14 = v8;
LABEL_12:
    v24 = *(v12 - 4);
    result = swift_isUniquelyReferenced_nonNull_native();
    v25 = v10;
    if ((result & 1) == 0)
    {
      result = a4(0, *(v11 + 16) + 1, 1);
    }

    v17 = *(v11 + 16);
    v16 = *(v11 + 24);
    if (v17 >= v16 >> 1)
    {
      result = a4(v16 > 1, v17 + 1, 1);
    }

    *(v11 + 16) = v17 + 1;
    v18 = v11 + 24 * v17;
    *(v18 + 32) = v24;
    *(v18 + 40) = v14;
    *(v18 + 48) = v15;
    v10 = v25;
  }

  while (v9 != v4);
LABEL_19:
  v19 = *(v11 + 16);
  if (v19)
  {
    sub_1B0B09DC4(0, v19, 0);
    v20 = *(v5 + 16);
    v21 = 32;
    do
    {
      v22 = *(v11 + v21);
      v23 = *(v5 + 24);
      if (v20 >= v23 >> 1)
      {
        sub_1B0B09DC4((v23 > 1), v20 + 1, 1);
      }

      *(v5 + 16) = v20 + 1;
      *(v5 + 4 * v20 + 32) = v22;
      v21 += 24;
      ++v20;
      --v19;
    }

    while (v19);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1B0A9F568(uint64_t result, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v4 = 0;
  v5 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 24;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = (v7 + 8 * v4);
  while (v6 != v4)
  {
    if (v4 >= v6)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_21;
    }

    v12 = *(v10 + 12);
    v10 += 2;
    ++v4;
    if (v12 == v5)
    {
      v13 = *v10;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = a3(0, *(v9 + 16) + 1, 1);
      }

      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        result = a3(v14 > 1, v15 + 1, 1);
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 8 * v15;
      *(v16 + 32) = v13;
      *(v16 + 36) = v5;
      v4 = v11;
      goto LABEL_2;
    }
  }

  v17 = *(v9 + 16);
  if (v17)
  {
    sub_1B0B09DC4(0, v17, 0);
    v18 = *(v8 + 16);
    v19 = 32;
    do
    {
      v20 = *(v9 + v19);
      v21 = *(v8 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_1B0B09DC4((v21 > 1), v18 + 1, 1);
      }

      *(v8 + 16) = v18 + 1;
      *(v8 + 4 * v18 + 32) = v20;
      v19 += 8;
      ++v18;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1B0A9F750(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = a2 + 24;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = result & 1;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v4 + 8 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_21;
    }

    v10 = *(v8 + 12);
    v8 += 2;
    ++v2;
    if (v10 == v6)
    {
      v11 = *v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B0A4A4(0, *(v7 + 16) + 1, 1);
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1B0B0A4A4((v12 > 1), v13 + 1, 1);
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 8 * v13;
      *(v14 + 32) = v11;
      *(v14 + 36) = v10;
      v2 = v9;
      goto LABEL_2;
    }
  }

  v15 = *(v7 + 16);
  if (v15)
  {
    sub_1B0B09DC4(0, v15, 0);
    v16 = *(v5 + 16);
    v17 = 32;
    do
    {
      v18 = *(v7 + v17);
      v19 = *(v5 + 24);
      if (v16 >= v19 >> 1)
      {
        sub_1B0B09DC4((v19 > 1), v16 + 1, 1);
      }

      *(v5 + 16) = v16 + 1;
      *(v5 + 4 * v16 + 32) = v18;
      v17 += 8;
      ++v16;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1B0A9F914(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v24 = a2;
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  result = sub_1B0A9F750(a1 & 1, a3);
  v13 = result;
  v23 = *(result + 16);
  if (v23)
  {
    v14 = 0;
    v21 = result + 32;
    while (v14 < *(v13 + 16))
    {
      v15 = *(v24 + 16);
      if (v15)
      {
        v16 = *(v21 + 4 * v14);
        v17 = v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v18 = *(v22 + 72);
        do
        {
          sub_1B03B1B68(v17, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = *(v8 + 2);
            result = sub_1B03E1BE8(*v8);
            if (v19 == v16)
            {
              v20 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v8, type metadata accessor for TaskHistory.Previous);
          }

          v17 += v18;
          --v15;
        }

        while (v15);
      }

      if (++v14 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v20 = 0;
LABEL_13:

    return v20;
  }

  return result;
}

uint64_t sub_1B0A9FB38(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = (a1 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *v5++;
      v7 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2(0, *(v6 + 16) + 1, 1);
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        a2(v9 > 1, v10 + 1, 1);
      }

      *(v6 + 16) = v11;
      *(v6 + 4 * v10 + 32) = v7;
      --v2;
    }

    while (v2);
  }

  else
  {
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v11)
    {
      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_15;
    }

    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1B0B09DC4(0, v11, 0);
  v12 = v3;
  v13 = *(v3 + 16);
  v14 = 32;
  do
  {
    v15 = *(v6 + v14);
    v16 = *(v12 + 24);
    if (v13 >= v16 >> 1)
    {
      sub_1B0B09DC4((v16 > 1), v13 + 1, 1);
    }

    *(v12 + 16) = v13 + 1;
    *(v12 + 4 * v13 + 32) = v15;
    v14 += 4;
    ++v13;
    --v11;
  }

  while (v11);
LABEL_15:

  return v12;
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

unint64_t sub_1B0A9FE98()
{
  result = qword_1EB6E3EF0;
  if (!qword_1EB6E3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3EF0);
  }

  return result;
}

unint64_t sub_1B0A9FEF0()
{
  result = qword_1EB6E3EF8;
  if (!qword_1EB6E3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3EF8);
  }

  return result;
}

unint64_t sub_1B0A9FF44(uint64_t a1)
{
  result = sub_1B0A9FF6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0A9FF6C()
{
  result = qword_1EB6E3F00;
  if (!qword_1EB6E3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3F00);
  }

  return result;
}

unint64_t sub_1B0A9FFC4()
{
  result = qword_1EB6E3F08;
  if (!qword_1EB6E3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3F08);
  }

  return result;
}

uint64_t sub_1B0AA0164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AA01DC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1B0AA022C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1B0AA0280(void *result, int a2)
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

uint64_t _s15IMAP2Connection13PathViabilityO9hashValueSivg_0(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AA0380(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0AA02DC(v3, *v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AA03C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E45258();
  v5 = sub_1B0AB6B5C(v4, a1, a2);

  v7 = type metadata accessor for DependencyGraph.State(255, a1, a2, v6);
  swift_getTupleTypeMetadata2();
  v8 = sub_1B0E45258();
  sub_1B0AA0980(v8, a1, v7, a2);

  return v5;
}

uint64_t sub_1B0AA049C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((sub_1B0AB63E4(a1, a2, a3, a5, a6, a7, a9, a10) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DependencyGraph.State(0, a9, a10, v10);
  swift_getWitnessTable();

  return sub_1B0E44758();
}

uint64_t sub_1B0AA0560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B0AB6514(a1, a2, a3, a4, a6, a7);
  type metadata accessor for DependencyGraph.State(0, a6, a7, v9);
  swift_getWitnessTable();

  return sub_1B0E44748();
}

uint64_t sub_1B0AA0600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B0E46C28();
  sub_1B0AA0560(v13, a1, a2, a3, a4, a5, a6);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AA06A8(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  sub_1B0AA0560(v5, *v2, v2[1], v2[2], v2[3], *(a2 + 16), *(a2 + 24));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AA073C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = sub_1B0AA0C6C(a2, *(a3 + 16), *(a3 + 24));
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  return result;
}

unint64_t sub_1B0AA079C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B0E447B8();

  return sub_1B0AA07F8(a1, v6, a2, a3);
}

unint64_t sub_1B0AA07F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
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
      v20 = sub_1B0E44A28();
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

unint64_t sub_1B0AA0980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1B0E452A8())
  {
    sub_1B0E466B8();
    v13 = sub_1B0E466A8();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1B0E452A8();
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
        if (sub_1B0E45288())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1B0E462E8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1B0AA079C(v12, a2, v27);
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

uint64_t sub_1B0AA0C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B0AA03C8(v9, v10);
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  if (sub_1B0E452A8())
  {
    v23 = v7;
    for (i = 0; ; ++i)
    {
      v16 = sub_1B0E45288();
      sub_1B0E451E8();
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
        result = sub_1B0E462E8();
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
      sub_1B0AB5C30(v8, v21);
      (*(v6 + 8))(v8, a2);
      if (v18 == sub_1B0E452A8())
      {
        return v25;
      }
    }
  }

  return v11;
}

uint64_t sub_1B0AA0ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0AA0F18(uint64_t *a1, int a2)
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

uint64_t sub_1B0AA0F60(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0AA0FD8()
{
  result = sub_1B03D0770(&unk_1F2710640);
  qword_1EB738368 = result;
  return result;
}

uint64_t sub_1B0AA1000()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B0EC1E50;
  *(v0 + 32) = type metadata accessor for FetchSearchResultMessages(0);
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 80) = type metadata accessor for FindMissingMessages(0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 128) = &type metadata for PurgeMessagesOutsideWindowOfInterest;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  return v0;
}

void sub_1B0AA1110(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  sub_1B0AA4CE4(a1, &v25 - v8, type metadata accessor for MailboxTaskLogger);
  sub_1B0AA4CE4(a1, v6, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0AA47C0(v2, v32);
  sub_1B0AA47C0(v2, v30);
  sub_1B0AA47C0(v2, v29);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v12 = 68160003;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v13 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v13;
    *(v12 + 11) = 2082;
    v14 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_1B0399D64(*(v14 + 1), *(v14 + 2), &v28);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    LOWORD(v13) = *(v13 + 12);
    sub_1B0AA4D4C(v6, type metadata accessor for MailboxTaskLogger);
    *(v12 + 29) = v13;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v15 = *(v14 + 4);
    LODWORD(v14) = *(v14 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AA4D4C(v9, type metadata accessor for MailboxTaskLogger);
    v26 = v15;
    v27 = v14;
    v16 = sub_1B0E44BA8();
    v18 = sub_1B0399D64(v16, v17, &v28);

    *(v12 + 43) = v18;
    *(v12 + 51) = 2048;
    v19 = *(v33 + 16);
    sub_1B0AA47F8(v32);
    *(v12 + 53) = v19;
    *(v12 + 61) = 2082;
    LOBYTE(v26) = v31;
    v20 = sub_1B0B430BC(v30[17]);
    v22 = v21;
    sub_1B0AA47F8(v30);
    v23 = sub_1B0399D64(v20, v22, &v28);

    *(v12 + 63) = v23;
    *(v12 + 71) = 1024;
    LODWORD(v23) = v29[105];
    sub_1B0AA47F8(v29);
    *(v12 + 73) = v23;
    _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID batch(es): %{public}s, fetching highest-mod-seq: %{BOOL}d", v12, 0x4Du);
    v24 = v25;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v24, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  else
  {
    sub_1B0AA47F8(v29);
    sub_1B0AA47F8(v32);
    sub_1B0AA4D4C(v6, type metadata accessor for MailboxTaskLogger);

    sub_1B0AA4D4C(v9, type metadata accessor for MailboxTaskLogger);
    sub_1B0AA47F8(v30);
  }
}

uint64_t sub_1B0AA14B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (!*(v6 + 112))
  {
    v13 = (a5 + *(type metadata accessor for MailboxSyncState(0) + 48));
    v14 = v13[3];
    v15 = v13[4];
    __swift_project_boxed_opaque_existential_0(v13, v14);
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

  v18 = &unk_1F2710668;
  v19 = &unk_1F2710770;
  if (*(v6 + 105))
  {
    v18 = &unk_1F27106D8;
    v19 = &unk_1F2710808;
  }

  if (*(v6 + 104))
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  sub_1B0AA15F8(a1, a2, a3, a4, v20, a6);
}

double sub_1B0AA15F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC8, &qword_1B0EC26A8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27[-v17];
  v19 = *v6;
  v27[12] = *(v6 + 12);
  sub_1B0AA2928(a1, a2, a3, a4, v19, v15);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD0, &unk_1B0EC26B0);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    sub_1B0398EFC(v15, &qword_1EB6E3FC8, &qword_1B0EC26A8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD8, &unk_1B0EC2850);
    (*(*(v21 - 8) + 56))(a6, 1, 1, v21);
  }

  else
  {
    v23 = *v15;
    sub_1B03C60A4(v15 + *(v20 + 48), v18, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD8, &unk_1B0EC2850);
    v25 = a6 + *(v24 + 48);
    *a6 = v23;
    v26 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48)];
    sub_1B03C60A4(v18, v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *v26 = a5;
    *(v26 + 1) = 0;
    v26[16] = 1;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v24 - 8) + 56))(a6, 0, 1, v24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

void sub_1B0AA18BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v78 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v78 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v78 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v78 - v19;
  v21 = *(a2 + 112);
  if (v21)
  {
    v22 = a1 + *(type metadata accessor for MailboxSyncState(0) + 48);
    v23 = *(v22 + 24);
    v24 = *(v22 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    (*(v24 + 32))(v21, v23, v24);
  }

  v25 = *(type metadata accessor for MailboxSyncState(0) + 48);
  v84 = a1;
  v26 = (a1 + v25);
  v28 = *(a1 + v25 + 24);
  v27 = *(a1 + v25 + 32);
  v79 = v26;
  __swift_project_boxed_opaque_existential_0(v26, v28);
  (*(v27 + 40))(v28, v27);
  v30 = *(v29 + 16);

  if (!v30)
  {
    sub_1B0AA4CE4(a3, v14, type metadata accessor for MailboxTaskLogger);
    sub_1B0AA4CE4(a3, v11, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0AA47C0(a2, &v88);
    v42 = sub_1B0E43988();
    v43 = sub_1B0E45908();
    if (os_log_type_enabled(v42, v43))
    {
      v80 = a3;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v87 = v45;
      *v44 = 68159491;
      *(v44 + 4) = 2;
      *(v44 + 8) = 256;
      v46 = v81;
      v47 = &v11[*(v81 + 20)];
      *(v44 + 10) = *v47;
      *(v44 + 11) = 2082;
      v48 = &v14[*(v46 + 20)];
      *(v44 + 13) = sub_1B0399D64(*(v48 + 1), *(v48 + 2), &v87);
      *(v44 + 21) = 1040;
      *(v44 + 23) = 2;
      *(v44 + 27) = 512;
      v49 = *(v47 + 12);
      sub_1B0AA4D4C(v11, type metadata accessor for MailboxTaskLogger);
      *(v44 + 29) = v49;
      *(v44 + 31) = 2160;
      *(v44 + 33) = 0x786F626C69616DLL;
      *(v44 + 41) = 2085;
      v50 = *(v48 + 4);
      v51 = *(v48 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AA4D4C(v14, type metadata accessor for MailboxTaskLogger);
      v85 = v50;
      v86 = v51;
      v52 = sub_1B0E44BA8();
      v54 = sub_1B0399D64(v52, v53, &v87);

      *(v44 + 43) = v54;
      *(v44 + 51) = 2048;
      if (v90)
      {
        v55 = *(v90 + 16);
      }

      else
      {
        v55 = 0;
      }

      v57 = v83;
      sub_1B0AA47F8(&v88);
      *(v44 + 53) = v55;
      _os_log_impl(&dword_1B0389000, v42, v43, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed all %ld changes without UID.", v44, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v45, -1, -1);
      MEMORY[0x1B272C230](v44, -1, -1);

      a3 = v80;
      goto LABEL_17;
    }

    sub_1B0AA47F8(&v88);
    sub_1B0AA4D4C(v11, type metadata accessor for MailboxTaskLogger);

    v56 = v14;
LABEL_12:
    sub_1B0AA4D4C(v56, type metadata accessor for MailboxTaskLogger);
    v57 = v83;
LABEL_17:
    v58 = v82;
    goto LABEL_18;
  }

  sub_1B0AA4CE4(a3, v20, type metadata accessor for MailboxTaskLogger);
  sub_1B0AA4CE4(a3, v17, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0AA47C0(a2, &v88);
  v31 = sub_1B0E43988();
  v32 = sub_1B0E45908();
  if (!os_log_type_enabled(v31, v32))
  {
    sub_1B0AA47F8(&v88);
    sub_1B0AA4D4C(v17, type metadata accessor for MailboxTaskLogger);

    v56 = v20;
    goto LABEL_12;
  }

  v80 = a3;
  v33 = swift_slowAlloc();
  v78 = swift_slowAlloc();
  v87 = v78;
  *v33 = 68159747;
  *(v33 + 4) = 2;
  *(v33 + 8) = 256;
  v34 = v81;
  v35 = &v17[*(v81 + 20)];
  *(v33 + 10) = *v35;
  *(v33 + 11) = 2082;
  v36 = &v20[*(v34 + 20)];
  *(v33 + 13) = sub_1B0399D64(*(v36 + 1), *(v36 + 2), &v87);
  *(v33 + 21) = 1040;
  *(v33 + 23) = 2;
  *(v33 + 27) = 512;
  LOWORD(v35) = *(v35 + 12);
  sub_1B0AA4D4C(v17, type metadata accessor for MailboxTaskLogger);
  *(v33 + 29) = v35;
  *(v33 + 31) = 2160;
  *(v33 + 33) = 0x786F626C69616DLL;
  *(v33 + 41) = 2085;
  v37 = *(v36 + 4);
  LODWORD(v35) = *(v36 + 10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AA4D4C(v20, type metadata accessor for MailboxTaskLogger);
  v85 = v37;
  v86 = v35;
  v38 = sub_1B0E44BA8();
  v40 = sub_1B0399D64(v38, v39, &v87);

  *(v33 + 43) = v40;
  *(v33 + 51) = 2048;
  if (v90)
  {
    v41 = *(v90 + 16);
  }

  else
  {
    v41 = 0;
  }

  v58 = v82;
  sub_1B0AA47F8(&v88);
  *(v33 + 53) = v41;
  *(v33 + 61) = 2048;
  *(v33 + 63) = v30;
  _os_log_impl(&dword_1B0389000, v31, v32, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld changes without UID, still %ld remaining.", v33, 0x47u);
  v59 = v78;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v59, -1, -1);
  MEMORY[0x1B272C230](v33, -1, -1);

  a3 = v80;
  v57 = v83;
LABEL_18:
  v60 = v84;
  if (!*(v84 + 32))
  {
    v61 = *(v84 + 24);
    sub_1B0AA4CE4(a3, v57, type metadata accessor for MailboxTaskLogger);
    sub_1B0AA4CE4(a3, v58, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v62 = sub_1B0E43988();
    v63 = sub_1B0E45908();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v85 = v83;
      *v64 = 68159491;
      v80 = a3;
      *(v64 + 4) = 2;
      *(v64 + 8) = 256;
      v65 = v81;
      v66 = v58 + *(v81 + 20);
      *(v64 + 10) = *v66;
      *(v64 + 11) = 2082;
      v67 = v57;
      v68 = v57 + *(v65 + 20);
      *(v64 + 13) = sub_1B0399D64(*(v68 + 8), *(v68 + 16), &v85);
      *(v64 + 21) = 1040;
      *(v64 + 23) = 2;
      *(v64 + 27) = 512;
      v69 = *(v66 + 24);
      sub_1B0AA4D4C(v58, type metadata accessor for MailboxTaskLogger);
      *(v64 + 29) = v69;
      *(v64 + 31) = 2160;
      *(v64 + 33) = 0x786F626C69616DLL;
      *(v64 + 41) = 2085;
      v70 = *(v68 + 32);
      v71 = *(v68 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AA4D4C(v67, type metadata accessor for MailboxTaskLogger);
      v88 = v70;
      v89 = v71;
      a3 = v80;
      v72 = sub_1B0E44BA8();
      v74 = sub_1B0399D64(v72, v73, &v85);

      *(v64 + 43) = v74;
      *(v64 + 51) = 2048;
      *(v64 + 53) = v61;
      _os_log_impl(&dword_1B0389000, v62, v63, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Setting mailbox HIGHESTMODSEQ to %llu.", v64, 0x3Du);
      v75 = v83;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v75, -1, -1);
      MEMORY[0x1B272C230](v64, -1, -1);
    }

    else
    {
      sub_1B0AA4D4C(v58, type metadata accessor for MailboxTaskLogger);

      sub_1B0AA4D4C(v57, type metadata accessor for MailboxTaskLogger);
    }

    v76 = v79[3];
    v77 = v79[4];
    __swift_mutable_project_boxed_opaque_existential_1(v79, v76);
    (*(v77 + 64))(v61, a3, v76, v77);
    v60 = v84;
  }

  sub_1B0B443EC(v60, *(a2 + 120), *(a2 + 128), a3, *(a2 + 136), *(a2 + 144) | (*(a2 + 148) << 32));
}

double sub_1B0AA22DC()
{
  if (qword_1EB6E3DC0 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0AA2348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(v5 + 136);
  v11 = *(v5 + 144);
  v12 = *(v5 + 148);
  v13 = *v5;
  v14 = *(v5 + 8);
  result = sub_1B0AA395C(v13, v14, a1, a2, a3, a4, v10);
  if (v17 == 0xFF)
  {
    result = sub_1B0AA3B98(v13, v14, a1, a2, a3, a4, v10, v11 | (v12 << 32));
  }

  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}

uint64_t sub_1B0AA241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA8, &qword_1B0EC2680);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27[-v17];
  v19 = *(v7 + 136);
  v27[12] = *(v7 + 148);
  sub_1B0AA2BD0(a1, a2, a3, a4, a7, v19, v15);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    v21 = &qword_1EB6E3FA8;
    v22 = &qword_1B0EC2680;
    v23 = v15;
  }

  else
  {
    v24 = *v15;
    v25 = sub_1B03C60A4(v15 + *(v20 + 48), v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1EEE9AC00](v25);
    *&v27[-16] = v18;
    sub_1B0AA2784(v24, sub_1B0AA4C04, &v27[-32]);
    v23 = v18;
    v21 = &unk_1EB6E1AF0;
    v22 = &unk_1B0E9AF40;
  }

  return sub_1B0398EFC(v23, v21, v22);
}

uint64_t sub_1B0AA26B0(uint64_t result, uint64_t a2)
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v10, v3, v4, 0, sub_1B0AA47B8);
    result = sub_1B03BB638(v7, v6, v5, 1);
    v9 = v10;
    *(v8 + 176) = 0;
    *(v8 + 184) = 0;
    *(v8 + 168) = v9;
    *(v8 + 192) = 1;
  }

  return result;
}

uint64_t sub_1B0AA2784(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v8 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
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
    sub_1B0AA4CE4(&v12[v4 + a2], v11, type metadata accessor for MessagesToRemoveHelper.Range);
    v15 = *v11;
    sub_1B0AA4D4C(v11, type metadata accessor for MessagesToRemoveHelper.Range);
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
  result = sub_1B0B8C8C4(v12);
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

uint64_t sub_1B0AA2928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v27 = a6;
  v11 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA0, &unk_1B0EC2670);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  v29[0] = a1;
  v29[1] = a2;
  v29[2] = a3;
  v29[3] = a4;
  v28 = v29;
  sub_1B0AF4F50(sub_1B0AA4DF0, a5, &v26 - v19);
  sub_1B03C60A4(v20, v17, &qword_1EB6E3FA0, &unk_1B0EC2670);
  if ((*(v12 + 48))(v17, 1, v11) == 1)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD0, &unk_1B0EC26B0);
    return (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  }

  else
  {
    sub_1B0AA4C60(v17, v14);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD0, &unk_1B0EC26B0);
    v24 = *(v23 + 48);
    v25 = v27;
    *v27 = *v14;
    sub_1B03B5C80(v14 + *(v11 + 20), v25 + v24, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0AA4D4C(v14, type metadata accessor for MessagesToRemoveHelper.Range);
    return (*(*(v23 - 8) + 56))(v25, 0, 1, v23);
  }
}

uint64_t sub_1B0AA2BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v114 = a2;
  v115 = a6;
  v111 = a4;
  v112 = a5;
  v110 = a3;
  v116 = a7;
  v117 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v103 - v8;
  v118 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v113 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v107 = (&v103 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA0, &unk_1B0EC2670);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v103 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v105 = &v103 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v104 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v103 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v103 - v25;
  v27 = type metadata accessor for TaskHistory.Running(0);
  v108 = *(v27 - 8);
  v109 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v106 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v103 - v30;
  v32 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0AA4CE4(v117, v34, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    if (EnumCaseMultiPayload != 20)
    {
      if (EnumCaseMultiPayload != 12)
      {
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
        (*(*(v81 - 8) + 56))(v116, 1, 1, v81);
        return sub_1B0AA4D4C(v34, type metadata accessor for UntaggedResponse);
      }

      v36 = v34[1];
      v120[0] = *v34;
      v120[1] = v36;
      v120[2] = v34[2];
      v37 = *(&v120[0] + 1);
      if (*(&v120[0] + 1))
      {
        v38 = *&v120[0];
        v39 = *&v120[1];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v41 = Tag.init(_:)(v38, v37, v40);
        if (v42)
        {
          goto LABEL_42;
        }

        v43 = v41;
        v110 = v39;
        v113 = v38;
        v115 = v37;
        v44 = *(v114 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (!v44)
        {
LABEL_41:

          v37 = v115;
          v38 = v113;
          goto LABEL_42;
        }

        LODWORD(v118) = v43;
        v117 = HIDWORD(v43);
        v45 = v114 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
        v46 = *(v108 + 72);
        while (1)
        {
          sub_1B0AA4CE4(v45, v31, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AA4D4C(v31, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v47 = *v31;
            v48 = *(v31 + 1);
            v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AA4D4C(&v31[*(v49 + 64)], type metadata accessor for ClientCommand);
            v50 = v47 == v118 && v48 == v117;
            if (v50)
            {
              v51 = v45;
              v52 = v106;
              sub_1B0AA4CE4(v51, v106, type metadata accessor for TaskHistory.Running);
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                v53 = *v52;
                v54 = *(v52 + 1);
                v55 = *(v52 + 2);
                sub_1B0AA4D4C(&v52[*(v49 + 64)], type metadata accessor for ClientCommand);

                v50 = v53 == v118;
                v37 = v115;
                v38 = v113;
                if (!v50)
                {
                  __break(1u);
                  goto LABEL_52;
                }

                if (v54 == v117)
                {
                  v56 = sub_1B0AEAA80(v55, v111);
                  if ((v57 & 1) == 0)
                  {
                    v58 = v56;
                    v59 = v105;
                    ExtendedSearchResponse.matchedUIDs.getter(v105);
                    sub_1B0A96464(v120);
                    if ((*(v104 + 48))(v59, 1, v19) == 1)
                    {
                      sub_1B0398EFC(v59, &qword_1EB6E3920, &qword_1B0E9B070);
                      v60 = sub_1B0E43988();
                      v61 = sub_1B0E458E8();
                      v62 = os_log_type_enabled(v60, v61);
                      v63 = v116;
                      if (v62)
                      {
                        v64 = swift_slowAlloc();
                        *v64 = 0;
                        _os_log_impl(&dword_1B0389000, v60, v61, "Extended search response has no UIDs.", v64, 2u);
                        MEMORY[0x1B272C230](v64, -1, -1);
                      }

                      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
                      v66 = *(*(v65 - 8) + 56);
                      v67 = v63;
                      return v66(v67, 1, 1, v65);
                    }

                    else
                    {
                      v99 = v103;
                      sub_1B03C60A4(v59, v103, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
                      v101 = *(v100 + 48);
                      v102 = v116;
                      *v116 = v58;
                      sub_1B03C60A4(v99, v102 + v101, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      return (*(*(v100 - 8) + 56))(v102, 0, 1, v100);
                    }
                  }

LABEL_42:
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B0A96464(v120);

LABEL_43:
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  v88 = sub_1B0E43988();
                  v89 = sub_1B0E458E8();

                  if (os_log_type_enabled(v88, v89))
                  {
                    v90 = swift_slowAlloc();
                    v91 = swift_slowAlloc();
                    v119[0] = v91;
                    *v90 = 136446210;
                    v92 = sub_1B0399D64(v38, v37, v119);

                    *(v90 + 4) = v92;
                    _os_log_impl(&dword_1B0389000, v88, v89, "Received unknown extended search response with tag '%{public}s'.", v90, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v91);
                    MEMORY[0x1B272C230](v91, -1, -1);
                    MEMORY[0x1B272C230](v90, -1, -1);
                  }

                  else
                  {
                  }

                  v93 = v116;
                  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
                  v66 = *(*(v65 - 8) + 56);
                  v67 = v93;
                  return v66(v67, 1, 1, v65);
                }

LABEL_52:
                __break(1u);
              }

              result = sub_1B0AA4D4C(v52, type metadata accessor for TaskHistory.Running);
              __break(1u);
              return result;
            }
          }

          v45 += v46;
          if (!--v44)
          {
            goto LABEL_41;
          }
        }
      }

      sub_1B0A96464(v120);
      v37 = 0xE90000000000003ELL;
      v38 = 0x6E776F6E6B6E753CLL;
      goto LABEL_43;
    }

    memcpy(v120, v34, 0x268uLL);
    if ((BYTE12(v120[0]) & 1) == 0)
    {
      v68 = *(v115 + 16);
      if (v68)
      {
        v69 = DWORD2(v120[0]);
        v70 = v115 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
        v71 = *(v113 + 72);
        while (1)
        {
          sub_1B0AA4CE4(v70, v11, type metadata accessor for MessagesToRemoveHelper.Range);
          sub_1B03B5C80(&v11[*(v118 + 20)], v9, &unk_1EB6E26C0, &unk_1B0E9DE10);
          LODWORD(v119[0]) = v69;
          v72 = MessageIdentifierSet.contains(_:)(v119, v19);
          sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          if (v72)
          {
            break;
          }

          sub_1B0AA4D4C(v11, type metadata accessor for MessagesToRemoveHelper.Range);
          v70 += v71;
          if (!--v68)
          {
            goto LABEL_49;
          }
        }

        v94 = v107;
        sub_1B0AA4C60(v11, v107);
        v95 = *v94;
        sub_1B0AA4D4C(v94, type metadata accessor for MessagesToRemoveHelper.Range);
        if (sub_1B0AD44F4(v95, v114, v110, v111))
        {
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
          v97 = v116;
          *v116 = v95;
          LODWORD(v119[0]) = v69;
          v98 = sub_1B041C1E8();
          MessageIdentifierSet.init(_:)(v119, &type metadata for UID, v98);
          sub_1B0AA4C0C(v120);
          return (*(*(v96 - 8) + 56))(v97, 0, 1, v96);
        }
      }
    }

LABEL_49:
    sub_1B0AA4C0C(v120);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
    v66 = *(*(v65 - 8) + 56);
    v67 = v116;
    return v66(v67, 1, 1, v65);
  }

  v73 = v16;
  v74 = *v34;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v75 = *(v74 + 16);
  if (v75)
  {
    v76 = (v74 + 32);
    do
    {
      v77 = *v76++;
      LODWORD(v119[0]) = v77;
      MessageIdentifierSet.insert(_:)(v120, v119, v19);
      --v75;
    }

    while (v75);
  }

  v78 = v26;
  v79 = sub_1B03C60A4(v23, v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v79);
  *(&v103 - 2) = v26;
  sub_1B0AF4F50(sub_1B0AA4CC4, v115, v73);
  if ((*(v113 + 48))(v73, 1, v118) == 1)
  {
    sub_1B0398EFC(v73, &qword_1EB6E3FA0, &unk_1B0EC2670);
    v80 = v116;
  }

  else
  {
    v83 = *v73;
    sub_1B0AA4D4C(v73, type metadata accessor for MessagesToRemoveHelper.Range);
    v84 = sub_1B0AD44F4(v83, v114, v110, v111);
    v80 = v116;
    if (v84)
    {
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
      v86 = *(v85 + 48);
      *v80 = v83;
      sub_1B03B5C80(v78, v80 + v86, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      (*(*(v85 - 8) + 56))(v80, 0, 1, v85);
      return sub_1B0398EFC(v78, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }
  }

  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
  (*(*(v87 - 8) + 56))(v80, 1, 1, v87);
  return sub_1B0398EFC(v78, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0AA395C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA0, &unk_1B0EC2670);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29[0] = a3;
  v29[1] = a4;
  v29[2] = a5;
  v29[3] = a6;
  v28 = v29;
  sub_1B0AF4F50(sub_1B0AA4DAC, a7, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1B0398EFC(v15, &qword_1EB6E3FA0, &unk_1B0EC2670);
    return 0;
  }

  else
  {
    sub_1B0AA4C60(v15, v19);
    v20 = *v19;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3620, &qword_1B0EC26A0);
    swift_allocBox();
    v22 = *(v21 + 48);
    v23 = v27;
    *v24 = a1;
    v24[1] = v23;
    sub_1B03B5C80(v19 + *(v16 + 20), v24 + v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AA4D4C(v19, type metadata accessor for MessagesToRemoveHelper.Range);
  }

  return v20;
}

uint64_t sub_1B0AA3B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v82 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = (&v82 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB8, &qword_1B0EC2688);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v90 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v91 = (&v82 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v92 = (&v82 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v97 = (&v82 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v38 = MEMORY[0x1EEE9AC00](v32);
  v39 = *(a7 + 16);
  if (v39)
  {
    v85 = v36;
    v86 = v37;
    v84 = v35;
    v87 = v33;
    v88 = &v82 - v34;
    v93 = a2;
    v89 = a1;
    v40 = *(type metadata accessor for MessagesToRemoveHelper.Range(0) - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = *(v40 + 72);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v43 = 0;
    while (1)
    {
      v44 = *(a7 + v41);
      if ((sub_1B0A98E04(v44, a3, a4, a5) & 1) != 0 && (sub_1B0B11C58(v44, 0, a3, a4, a6) & 1) != 0 && (sub_1B0A9E5FC(v44, 1, a4, a6, v45) & 1) == 0)
      {
        break;
      }

      v41 += v42;
      if (v39 == ++v43)
      {
LABEL_21:
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC0, &unk_1B0EC2690);
        v60 = v97;
        (*(*(v59 - 8) + 56))(v97, 1, 1, v59);
        goto LABEL_22;
      }
    }

    v83 = (v86 + 7);
    v86 += 6;
LABEL_8:
    if (v43 >= v39)
    {
      goto LABEL_34;
    }

    v46 = type metadata accessor for MessagesToRemoveHelper.Range(0);
    v47 = *(v46 - 8);
    v48 = a7 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v49 = *(v47 + 72);
    v50 = v48 + v49 * v43 + *(v46 + 24);
    v82 = (v48 + v49 * v43);
    MessageIdentifierSet.subtracting(_:)(v50, v95);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v95, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v52 = 1;
    }

    else
    {
      v51 = v85;
      sub_1B03C60A4(v95, v85, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v51, v96, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v52 = 0;
    }

    v53 = v87;
    (*v83)(v96, v52, 1, v87);
    if ((*v86)(v96, 1, v53) == 1)
    {
      sub_1B0398EFC(v96, &unk_1EB6E3670, &unk_1B0E9B260);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC0, &unk_1B0EC2690);
      v55 = v92;
      (*(*(v54 - 8) + 56))(v92, 1, 1, v54);
      sub_1B0398EFC(v55, &qword_1EB6E3FB8, &qword_1B0EC2688);
      while (!__OFADD__(v43++, 1))
      {
        if (v43 == v39)
        {
          goto LABEL_21;
        }

        if (v43 >= v39)
        {
          goto LABEL_33;
        }

        v57 = *(v48 + v43 * v49);
        if ((sub_1B0A98E04(v57, a3, a4, a5) & 1) != 0 && (sub_1B0B11C58(v57, 0, a3, a4, a6) & 1) != 0 && (sub_1B0A9E5FC(v57, 1, a4, a6, v58) & 1) == 0)
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

    v74 = v84;
    sub_1B03C60A4(v96, v84, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC0, &unk_1B0EC2690);
    v76 = *(v75 + 48);
    v77 = v82;
    v78 = v92;
    *v92 = *v82;
    sub_1B03C60A4(v74, v78 + v76, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v79 = *(v75 - 8);
    v96 = *(v79 + 56);
    (v96)(v78, 0, 1, v75);
    sub_1B0398EFC(v78, &qword_1EB6E3FB8, &qword_1B0EC2688);
    v80 = v91;
    sub_1B0B47218(v77, v91);
    v81 = v90;
    sub_1B03B5C80(v80, v90, &qword_1EB6E3FB8, &qword_1B0EC2688);
    if ((*(v79 + 48))(v81, 1, v75) == 1)
    {
LABEL_35:

      __break(1u);
      return result;
    }

    v60 = v97;
    sub_1B03C60A4(v81, v97, &qword_1EB6E3FC0, &unk_1B0EC2690);
    sub_1B0398EFC(v80, &qword_1EB6E3FB8, &qword_1B0EC2688);
    (v96)(v60, 0, 1, v75);
LABEL_22:

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC0, &unk_1B0EC2690);
    v62 = (*(*(v61 - 8) + 48))(v60, 1, v61);
    v63 = v93;
    if (v62 == 1)
    {
      sub_1B0398EFC(v60, &qword_1EB6E3FB8, &qword_1B0EC2688);
      return 0;
    }

    v65 = *v60;
    v66 = v88;
    sub_1B03C60A4(v60 + *(v61 + 48), v88, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390);
    swift_allocBox();
    v68 = *(v67 + 48);
    *v69 = v89;
    v69[1] = v63;
    sub_1B03C60A4(v66, v69 + v68, &unk_1EB6E26C0, &unk_1B0E9DE10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v65;
  }

  else if (a8 & 0x100000000) != 0 || (sub_1B0A9E5FC(-1, 1, a4, a6, v38))
  {
    return 0;
  }

  else
  {
    LODWORD(v99) = 1;
    LODWORD(v98) = a8;
    v70 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v99, &v98, &type metadata for UID, &v100);
    v99 = v100;
    v98 = Range<>.init<A>(_:)(&v99, &type metadata for UID, v70);
    sub_1B03D06F8();
    sub_1B0E46F08();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390);
    swift_allocBox();
    v72 = *(v71 + 48);
    *v73 = a1;
    v73[1] = a2;
    sub_1B03C60A4(v29, v73 + v72, &unk_1EB6E26C0, &unk_1B0E9DE10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return -1;
  }
}

__n128 __swift_memcpy149_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B0AA45C8(uint64_t *a1, int a2)
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

uint64_t sub_1B0AA4610(uint64_t result, int a2, int a3)
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

unint64_t sub_1B0AA4690()
{
  result = qword_1EB6DD898;
  if (!qword_1EB6DD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD898);
  }

  return result;
}

unint64_t sub_1B0AA46E8()
{
  result = qword_1EB6DD890;
  if (!qword_1EB6DD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD890);
  }

  return result;
}

unint64_t sub_1B0AA473C(uint64_t a1)
{
  result = sub_1B0AA4764();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AA4764()
{
  result = qword_1EB6E3F98;
  if (!qword_1EB6E3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3F98);
  }

  return result;
}

void sub_1B0AA4828(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v36 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA0, &unk_1B0EC2670);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v32 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3628, &unk_1B0EA2080);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v32 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v32 - v21;
  if (((a3 >> 59) & 0x1E | (a3 >> 2) & 1) == 0xA)
  {
    v33 = a6;
    v34 = v6;
    v23 = swift_projectBox();
    sub_1B03B5C80(v23, v16, &qword_1EB6E3628, &unk_1B0EA2080);
    v24 = v16 + *(v14 + 48);
    v25 = v16 + *(v14 + 64);
    if (v16[1] == a2)
    {
      v26 = sub_1B04520BC(a1, *v16);

      if (v26)
      {
        sub_1B03C60A4(v24, v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v27 = sub_1B03C60A4(v25, v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MEMORY[0x1EEE9AC00](v27);
        *(&v32 - 2) = v19;
        sub_1B0AF4F50(sub_1B0AA4BDC, v28, v13);
        v29 = type metadata accessor for MessagesToRemoveHelper.Range(0);
        if ((*(*(v29 - 8) + 48))(v13, 1, v29) == 1)
        {
          sub_1B0398EFC(v13, &qword_1EB6E3FA0, &unk_1B0EC2670);
        }

        else
        {
          v30 = *v13;
          sub_1B0AA4D4C(v13, type metadata accessor for MessagesToRemoveHelper.Range);
          v31 = sub_1B0AEAF24(v30, 0, v35, v36, v33);
          if (v31)
          {
            MEMORY[0x1EEE9AC00](v31);
            *(&v32 - 2) = v22;
            sub_1B0AA2784(v30, sub_1B0AA4BFC, (&v32 - 4));
          }
        }

        v25 = v19;
        v24 = v22;
      }
    }

    else
    {
    }

    sub_1B0398EFC(v25, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0398EFC(v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }
}

uint64_t sub_1B0AA4C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0AA4CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AA4D4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0AA4E2C()
{
  result = sub_1B03D0770(&unk_1F27108C8);
  qword_1EB738370 = result;
  return result;
}

void sub_1B0AA4E54(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  sub_1B0A92638(a1, &v25 - v8);
  sub_1B0A92638(a1, v6);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0AA5BF0(v2, v28);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 68159491;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v14 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v14;
    *(v12 + 11) = 2082;
    v15 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_1B0399D64(*(v15 + 1), *(v15 + 2), &v27);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    v16 = *(v14 + 12);
    sub_1B0A9269C(v6);
    *(v12 + 29) = v16;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v17 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v9);
    v25 = v17;
    v26 = v15;
    v18 = sub_1B0E44BA8();
    v20 = sub_1B0399D64(v18, v19, &v27);

    *(v12 + 43) = v20;
    *(v12 + 51) = 2082;
    LOBYTE(v25) = v30;
    v21 = sub_1B0B430BC(v29);
    v23 = v22;
    sub_1B0AA5C28(v28);
    v24 = sub_1B0399D64(v21, v23, &v27);

    *(v12 + 53) = v24;
    _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task: %{public}s", v12, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v13, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  else
  {
    sub_1B0A9269C(v6);

    sub_1B0A9269C(v9);
    sub_1B0AA5C28(v28);
  }
}

void sub_1B0AA513C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = *(a2 + 112);
  v13 = *(type metadata accessor for MailboxSyncState(0) + 48);
  v34 = a1;
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 24);
  v16 = *(a1 + v13 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1 + v13, v15);
  (*(v16 + 32))(v12, v15, v16);
  v17 = v14[3];
  v18 = v14[4];
  __swift_project_boxed_opaque_existential_0(v14, v17);
  v19 = *((*(v18 + 24))(v17, v18) + 16);

  sub_1B0A92638(a3, v11);
  sub_1B0A92638(a3, v8);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_bridgeObjectRetain_n();
  v20 = sub_1B0E43988();
  v21 = sub_1B0E45908();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v22 = 68159747;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v23 = *(v6 + 20);
    v32 = v19;
    v24 = &v8[v23];
    *(v22 + 10) = v8[v23];
    *(v22 + 11) = 2082;
    v25 = &v11[*(v6 + 20)];
    *(v22 + 13) = sub_1B0399D64(*(v25 + 1), *(v25 + 2), &v37);
    *(v22 + 21) = 1040;
    *(v22 + 23) = 2;
    *(v22 + 27) = 512;
    LOWORD(v24) = *(v24 + 12);
    sub_1B0A9269C(v8);
    *(v22 + 29) = v24;
    *(v22 + 31) = 2160;
    *(v22 + 33) = 0x786F626C69616DLL;
    *(v22 + 41) = 2085;
    v26 = *(v25 + 4);
    LODWORD(v24) = *(v25 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v11);
    v35 = v26;
    v36 = v24;
    v27 = sub_1B0E44BA8();
    v29 = sub_1B0399D64(v27, v28, &v37);

    *(v22 + 43) = v29;
    *(v22 + 51) = 2048;
    v30 = *(v12 + 16);

    *(v22 + 53) = v30;

    *(v22 + 61) = 2048;
    *(v22 + 63) = v32;
    _os_log_impl(&dword_1B0389000, v20, v21, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld changes without UID, still %ld remaining.", v22, 0x47u);
    v31 = v33;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v31, -1, -1);
    MEMORY[0x1B272C230](v22, -1, -1);
  }

  else
  {

    sub_1B0A9269C(v8);

    sub_1B0A9269C(v11);
  }

  sub_1B0B443EC(v34, *(a2 + 120), 0, a3, *(a2 + 128), *(a2 + 136) | (*(a2 + 140) << 32));
}

double sub_1B0AA54C8()
{
  if (qword_1EB6E3DC8 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0AA5528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(v5 + 104))
  {
    v6 = &unk_1F27108F0;
  }

  else
  {
    v6 = &unk_1F2710960;
  }

  sub_1B0AA15F8(a1, a2, a3, a4, v6, a5);
}

uint64_t sub_1B0AA5580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(v5 + 128);
  v11 = *(v5 + 136);
  v12 = *(v5 + 140);
  v13 = *v5;
  v14 = *(v5 + 8);
  result = sub_1B0AA395C(v13, v14, a1, a2, a3, a4, v10);
  if (v17 == 0xFF)
  {
    result = sub_1B0AA3B98(v13, v14, a1, a2, a3, a4, v10, v11 | (v12 << 32));
  }

  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}

uint64_t sub_1B0AA5654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA8, &qword_1B0EC2680);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27[-v17];
  v19 = *(v7 + 128);
  v27[12] = *(v7 + 140);
  sub_1B0AA2BD0(a1, a2, a3, a4, a7, v19, v15);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    v21 = &qword_1EB6E3FA8;
    v22 = &qword_1B0EC2680;
    v23 = v15;
  }

  else
  {
    v24 = *v15;
    v25 = sub_1B074BA2C(v15 + *(v20 + 48), v18);
    MEMORY[0x1EEE9AC00](v25);
    *&v27[-16] = v18;
    sub_1B0AA2784(v24, sub_1B0AA4C04, &v27[-32]);
    v21 = &unk_1EB6E1AF0;
    v22 = &unk_1B0E9AF40;
    v23 = v18;
  }

  return sub_1B0398EFC(v23, v21, v22);
}

uint64_t sub_1B0AA58D8(uint64_t result, uint64_t a2)
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v10, v3, v4, 0, sub_1B0AA5BE8);
    result = sub_1B03BB638(v7, v6, v5, 1);
    v9 = v10;
    *(v8 + 176) = 0;
    *(v8 + 184) = 0;
    *(v8 + 168) = v9;
    *(v8 + 192) = 1;
  }

  return result;
}

BOOL sub_1B0AA59AC(_BOOL8 result, uint64_t a2, uint64_t a3, char a4)
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

BOOL sub_1B0AA5A24(_BOOL8 result, uint64_t a2, uint64_t a3)
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

__n128 __swift_memcpy141_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B0AA5AAC(uint64_t *a1, int a2)
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

uint64_t sub_1B0AA5AF4(uint64_t result, int a2, int a3)
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

unint64_t sub_1B0AA5B6C(uint64_t a1)
{
  result = sub_1B0AA5B94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AA5B94()
{
  result = qword_1EB6E3FF0;
  if (!qword_1EB6E3FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3FF0);
  }

  return result;
}

uint64_t sub_1B0AA5C58()
{
  result = sub_1B03D0770(&unk_1F27109F8);
  qword_1EB737D60 = result;
  return result;
}

void sub_1B0AA5C80(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  sub_1B0A92638(a1, &v25 - v8);
  sub_1B0A92638(a1, v6);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0AA6A5C(v2, v30);
  sub_1B0AA6A5C(v2, v28);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 68159747;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v14 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v14;
    *(v12 + 11) = 2082;
    v15 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_1B0399D64(*(v15 + 1), *(v15 + 2), &v27);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    LOWORD(v14) = *(v14 + 12);
    sub_1B0A9269C(v6);
    *(v12 + 29) = v14;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v16 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v9);
    v25 = v16;
    v26 = v15;
    v17 = sub_1B0E44BA8();
    v19 = sub_1B0399D64(v17, v18, &v27);

    *(v12 + 43) = v19;
    *(v12 + 51) = 2048;
    v20 = *(v30[11] + 16);
    sub_1B0AA6A94(v30);
    *(v12 + 53) = v20;
    *(v12 + 61) = 2082;
    LOBYTE(v25) = v29;
    v21 = sub_1B0B430BC(v28[11]);
    v23 = v22;
    sub_1B0AA6A94(v28);
    v24 = sub_1B0399D64(v21, v23, &v27);

    *(v12 + 63) = v24;
    _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID batch(es): %{public}s", v12, 0x47u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v13, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  else
  {
    sub_1B0AA6A94(v30);
    sub_1B0A9269C(v6);

    sub_1B0A9269C(v9);
    sub_1B0AA6A94(v28);
  }
}

uint64_t sub_1B0AA5FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v32 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC8, &qword_1B0EC26A8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v31 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  v19 = *v6;
  v33 = *(v6 + 12);
  sub_1B0AA2928(a1, a2, a3, a4, v19, v14);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD0, &unk_1B0EC26B0);
  if ((*(*(v20 - 8) + 48))(v14, 1, v20) == 1)
  {
    sub_1B0398EFC(v14, &qword_1EB6E3FC8, &qword_1B0EC26A8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD8, &unk_1B0EC2850);
    return (*(*(v21 - 8) + 56))(a6, 1, 1, v21);
  }

  else
  {
    v23 = *v14;
    sub_1B03C60A4(v14 + *(v20 + 48), v18, &unk_1EB6E26C0, &unk_1B0E9DE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
    v24 = swift_allocBox();
    v26 = v25;
    sub_1B03D08AC(v18, v25);
    (*(v16 + 56))(v26, 0, 1, v15);
    v27 = v24 | 0xA000000000000000;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD8, &unk_1B0EC2850);
    v29 = (a6 + *(v28 + 48));
    *a6 = v23;
    if ((v32 & 0x100) != 0)
    {
      sub_1B0398EFC(v18, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *v29 = v27;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
      type metadata accessor for SearchReturnOption(0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1B0EC1E70;
      swift_storeEnumTagMultiPayload();
      sub_1B0398EFC(v18, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *v29 = v27;
      v29[1] = v30;
    }

    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v28 - 8) + 56))(a6, 0, 1, v28);
  }
}

double sub_1B0AA638C()
{
  if (qword_1EB6DD8B8 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0AA6400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
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

  return sub_1B0AA5FA0(a1, a2, a3, a4, v14 | *(v6 + 101), a6);
}

uint64_t sub_1B0AA64B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(v5 + 88);
  v11 = *(v5 + 96);
  v12 = *(v5 + 100);
  v13 = *v5;
  v14 = *(v5 + 8);
  result = sub_1B0AA395C(v13, v14, a1, a2, a3, a4, v10);
  if (v17 == 0xFF)
  {
    result = sub_1B0AA3B98(v13, v14, a1, a2, a3, a4, v10, v11 | (v12 << 32));
  }

  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}

uint64_t sub_1B0AA6588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA8, &qword_1B0EC2680);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27[-v17];
  v19 = *(v7 + 88);
  v27[12] = *(v7 + 100);
  sub_1B0AA2BD0(a1, a2, a3, a4, a7, v19, v15);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    v21 = &qword_1EB6E3FA8;
    v22 = &qword_1B0EC2680;
    v23 = v15;
  }

  else
  {
    v24 = *v15;
    v25 = sub_1B03C60A4(v15 + *(v20 + 48), v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1EEE9AC00](v25);
    *&v27[-16] = v18;
    sub_1B0AA2784(v24, sub_1B0AA4C04, &v27[-32]);
    v23 = v18;
    v21 = &unk_1EB6E1AF0;
    v22 = &unk_1B0E9AF40;
  }

  return sub_1B0398EFC(v23, v21, v22);
}

uint64_t sub_1B0AA6824(uint64_t result, uint64_t a2)
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v10, v3, v4, 0, sub_1B0AA6A2C);
    result = sub_1B03BB638(v7, v6, v5, 1);
    v9 = v10;
    *(v8 + 176) = 0;
    *(v8 + 184) = 0;
    *(v8 + 168) = v9;
    *(v8 + 192) = 1;
  }

  return result;
}

uint64_t sub_1B0AA68F8(uint64_t *a1, int a2)
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

uint64_t sub_1B0AA6940(uint64_t result, int a2, int a3)
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

unint64_t sub_1B0AA69B0(uint64_t a1)
{
  result = sub_1B0AA69D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AA69D8()
{
  result = qword_1EB6DD8B0;
  if (!qword_1EB6DD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD8B0);
  }

  return result;
}

uint64_t sub_1B0AA6AC4()
{
  result = sub_1B03D0770(&unk_1F2710A48);
  qword_1EB737D28 = result;
  return result;
}

void sub_1B0AA6AEC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  sub_1B0AA92CC(a1, &v25 - v8, type metadata accessor for MailboxTaskLogger);
  sub_1B0AA92CC(a1, v6, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0AA93EC(v2, v29);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 68159491;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v14 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v14;
    *(v12 + 11) = 2082;
    v15 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_1B0399D64(*(v15 + 1), *(v15 + 2), &v28);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    v16 = *(v14 + 12);
    sub_1B0AA9334(v6, type metadata accessor for MailboxTaskLogger);
    *(v12 + 29) = v16;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v17 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AA9334(v9, type metadata accessor for MailboxTaskLogger);
    v26 = v17;
    v27 = v15;
    v18 = sub_1B0E44BA8();
    v20 = sub_1B0399D64(v18, v19, &v28);

    *(v12 + 43) = v20;
    *(v12 + 51) = 2082;
    LOBYTE(v26) = v31;
    v21 = sub_1B0B430BC(v30);
    v23 = v22;
    sub_1B0AA9424(v29);
    v24 = sub_1B0399D64(v21, v23, &v28);

    *(v12 + 53) = v24;
    _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task: %{public}s", v12, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v13, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  else
  {
    sub_1B0AA9334(v6, type metadata accessor for MailboxTaskLogger);

    sub_1B0AA9334(v9, type metadata accessor for MailboxTaskLogger);
    sub_1B0AA9424(v29);
  }
}

void sub_1B0AA6E2C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FF8, &unk_1B0EC6940);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v203 = &v179[-v6];
  v7 = _s15MissingMessagesO10NewMissingVMa(0);
  v201 = *(v7 - 8);
  v202 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v196 = &v179[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v194 = &v179[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v195 = &v179[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v200 = &v179[-v14];
  v199 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v199);
  v192 = &v179[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v193 = &v179[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v190 = &v179[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v191 = &v179[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v197 = &v179[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v179[-v25];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v179[-v28];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v179[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v179[-v34];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v36);
  v206 = &v179[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v179[-v42];
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v179[-v46];
  v51 = *(v2 + 88);
  if (!*(v51 + 16))
  {
    v80 = *(v2 + 24);
    v81 = *(v2 + 32);
    MEMORY[0x1EEE9AC00](v45);
    *&v179[-16] = a2;
    if ((*(a1 + 192) & 1) == 0)
    {
      return;
    }

    v83 = *(a1 + 176);
    v82 = *(a1 + 184);
    v84 = *(a1 + 168);
    v207 = v84;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v207, v80, v81, 0, sub_1B0AA93D8);
    goto LABEL_37;
  }

  v184 = v49;
  v185 = v48;
  v186 = v32;
  v187 = v26;
  v188 = v47;
  v198 = v45;
  v52 = *(v2 + 96);
  v204 = v2;
  LOBYTE(v207) = *(v2 + 100);
  v53 = v207;
  sub_1B0B45FF0(v51, &v179[-v46]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v54 = sub_1B0E46E98();
  v205 = v50;
  if ((v54 & 1) == 0)
  {
    v180 = v53;
    v181 = v52;
    v182 = v51;
    v189 = a2;
    v183 = a1;
    MessageIdentifierSet.ranges.getter(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v55 = sub_1B0E46E18();
    v56 = sub_1B0E46E28();
    v57 = sub_1B0E46E18();
    v58 = sub_1B0E46E28();
    if (v55 < v57 || v58 < v55)
    {
      __break(1u);
    }

    else
    {
      v59 = sub_1B0E46E18();
      v60 = sub_1B0E46E28();
      sub_1B0398EFC(v35, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v56 >= v59 && v60 >= v56)
      {
        if (!__OFSUB__(v56, v55))
        {
          if (v56 - v55 > 19)
          {
            v85 = v189;
            v86 = v187;
            sub_1B0AA92CC(v189, v187, type metadata accessor for MailboxTaskLogger);
            v87 = v197;
            sub_1B0AA92CC(v85, v197, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v88 = v205;
            v89 = v184;
            sub_1B03D08AC(v205, v184);
            v90 = v188;
            sub_1B03D08AC(v88, v188);
            v91 = sub_1B0E43988();
            v92 = sub_1B0E45908();
            if (os_log_type_enabled(v91, v92))
            {
              v93 = swift_slowAlloc();
              v186 = swift_slowAlloc();
              v209[0] = v186;
              *v93 = 68159747;
              *(v93 + 4) = 2;
              *(v93 + 8) = 256;
              v94 = v199;
              v95 = &v87[*(v199 + 20)];
              *(v93 + 10) = *v95;
              *(v93 + 11) = 2082;
              v96 = v86 + *(v94 + 20);
              *(v93 + 13) = sub_1B0399D64(*(v96 + 8), *(v96 + 16), v209);
              *(v93 + 21) = 1040;
              *(v93 + 23) = 2;
              *(v93 + 27) = 512;
              LOWORD(v95) = *(v95 + 12);
              sub_1B0AA9334(v87, type metadata accessor for MailboxTaskLogger);
              *(v93 + 29) = v95;
              *(v93 + 31) = 2160;
              *(v93 + 33) = 0x786F626C69616DLL;
              *(v93 + 41) = 2085;
              v97 = *(v96 + 32);
              LODWORD(v96) = *(v96 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0AA9334(v86, type metadata accessor for MailboxTaskLogger);
              v207 = v97;
              v208 = v96;
              v98 = sub_1B0E44BA8();
              v100 = sub_1B0399D64(v98, v99, v209);

              *(v93 + 43) = v100;
              *(v93 + 51) = 2048;
              v101 = v90;
              v102 = v198;
              v103 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v89, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v93 + 53) = v103;
              *(v93 + 61) = 2082;
              v104 = v206;
              MessageIdentifierSet.suffix(_:)(20, v102, v206);
              v105 = MessageIdentifierSet.debugDescription.getter();
              v107 = v106;
              sub_1B0398EFC(v104, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0398EFC(v101, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v108 = sub_1B0399D64(v105, v107, v209);

              *(v93 + 63) = v108;
              _os_log_impl(&dword_1B0389000, v91, v92, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: ... %{public}s", v93, 0x47u);
              v109 = v186;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v109, -1, -1);
              MEMORY[0x1B272C230](v93, -1, -1);
            }

            else
            {
              sub_1B0398EFC(v89, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AA9334(v87, type metadata accessor for MailboxTaskLogger);

              sub_1B0398EFC(v90, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AA9334(v86, type metadata accessor for MailboxTaskLogger);
            }

            a1 = v183;
            a2 = v189;
          }

          else
          {
            a2 = v189;
            v61 = v186;
            sub_1B0AA92CC(v189, v186, type metadata accessor for MailboxTaskLogger);
            sub_1B0AA92CC(a2, v29, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v62 = v205;
            sub_1B03D08AC(v205, v43);
            v63 = v185;
            sub_1B03D08AC(v62, v185);
            v64 = sub_1B0E43988();
            v65 = sub_1B0E45908();
            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v197 = swift_slowAlloc();
              v209[0] = v197;
              *v66 = 68159747;
              LODWORD(v188) = v65;
              *(v66 + 4) = 2;
              *(v66 + 8) = 256;
              v67 = v199;
              v68 = &v29[*(v199 + 20)];
              *(v66 + 10) = *v68;
              *(v66 + 11) = 2082;
              v69 = v61 + *(v67 + 20);
              *(v66 + 13) = sub_1B0399D64(*(v69 + 8), *(v69 + 16), v209);
              *(v66 + 21) = 1040;
              *(v66 + 23) = 2;
              *(v66 + 27) = 512;
              LOWORD(v68) = *(v68 + 12);
              sub_1B0AA9334(v29, type metadata accessor for MailboxTaskLogger);
              *(v66 + 29) = v68;
              *(v66 + 31) = 2160;
              *(v66 + 33) = 0x786F626C69616DLL;
              *(v66 + 41) = 2085;
              v70 = *(v69 + 32);
              LODWORD(v68) = *(v69 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0AA9334(v61, type metadata accessor for MailboxTaskLogger);
              v207 = v70;
              v208 = v68;
              v71 = sub_1B0E44BA8();
              v73 = sub_1B0399D64(v71, v72, v209);

              *(v66 + 43) = v73;
              *(v66 + 51) = 2048;
              v74 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v43, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v66 + 53) = v74;
              *(v66 + 61) = 2082;
              v75 = MessageIdentifierSet.debugDescription.getter();
              v77 = v76;
              a2 = v189;
              sub_1B0398EFC(v63, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v78 = sub_1B0399D64(v75, v77, v209);

              *(v66 + 63) = v78;
              _os_log_impl(&dword_1B0389000, v64, v188, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: %{public}s", v66, 0x47u);
              v79 = v197;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v79, -1, -1);
              MEMORY[0x1B272C230](v66, -1, -1);
            }

            else
            {
              sub_1B0398EFC(v43, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AA9334(v29, type metadata accessor for MailboxTaskLogger);

              sub_1B0398EFC(v63, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AA9334(v61, type metadata accessor for MailboxTaskLogger);
            }

            a1 = v183;
          }

          v51 = v182;
          v52 = v181;
          LOBYTE(v53) = v180;
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
  LOBYTE(v207) = v53;
  v110 = v206;
  v111 = sub_1B0B476B8(v51, v52 | (v53 << 32));
  MEMORY[0x1EEE9AC00](v111);
  *&v179[-16] = v110;
  v112 = sub_1B0B42E70(0, sub_1B0AA9244, &v179[-32], v51);
  v113 = sub_1B0398EFC(v110, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v114 = v51;
  v115 = a2;
  if (v112 < 1)
  {
    goto LABEL_35;
  }

  LOBYTE(v207) = v53;
  v116 = v203;
  sub_1B0B46268(0x10F, v114, v52 | (v53 << 32), v203);
  if ((*(v201 + 48))(v116, 1, v202) == 1)
  {
    v113 = sub_1B0398EFC(v116, &qword_1EB6E3FF8, &unk_1B0EC6940);
    goto LABEL_35;
  }

  v117 = v200;
  sub_1B0AA9268(v116, v200);
  if (v112 > 0x13)
  {
    v141 = v193;
    sub_1B0AA92CC(v115, v193, type metadata accessor for MailboxTaskLogger);
    v142 = v192;
    sub_1B0AA92CC(v115, v192, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v143 = v194;
    sub_1B0AA92CC(v117, v194, _s15MissingMessagesO10NewMissingVMa);
    v144 = v196;
    sub_1B0AA92CC(v117, v196, _s15MissingMessagesO10NewMissingVMa);
    v121 = sub_1B0E43988();
    v145 = sub_1B0E458E8();
    if (os_log_type_enabled(v121, v145))
    {
      v123 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v189 = v115;
      v203 = v146;
      v209[0] = v146;
      *v123 = 68160003;
      LODWORD(v202) = v145;
      *(v123 + 4) = 2;
      *(v123 + 8) = 256;
      v148 = v198;
      v147 = v199;
      v149 = v141;
      v150 = &v142[*(v199 + 20)];
      *(v123 + 10) = *v150;
      v183 = a1;
      *(v123 + 11) = 2082;
      v151 = v143;
      v152 = v149 + *(v147 + 20);
      *(v123 + 13) = sub_1B0399D64(*(v152 + 8), *(v152 + 16), v209);
      *(v123 + 21) = 1040;
      *(v123 + 23) = 2;
      *(v123 + 27) = 512;
      LOWORD(v150) = *(v150 + 12);
      sub_1B0AA9334(v142, type metadata accessor for MailboxTaskLogger);
      *(v123 + 29) = v150;
      *(v123 + 31) = 2160;
      *(v123 + 33) = 0x786F626C69616DLL;
      *(v123 + 41) = 2085;
      v153 = *(v152 + 32);
      LODWORD(v152) = *(v152 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AA9334(v149, type metadata accessor for MailboxTaskLogger);
      v207 = v153;
      v208 = v152;
      v154 = sub_1B0E44BA8();
      v156 = sub_1B0399D64(v154, v155, v209);

      *(v123 + 43) = v156;
      *(v123 + 51) = 2048;
      *(v123 + 53) = v112;
      *(v123 + 61) = 2048;
      v157 = MessageIdentifierSet.count.getter();
      sub_1B0AA9334(v151, _s15MissingMessagesO10NewMissingVMa);
      *(v123 + 63) = v157;
      *(v123 + 71) = 2082;
      a1 = v183;
      v117 = v200;
      v158 = v206;
      v159 = v196;
      MessageIdentifierSet.suffix(_:)(20, v148, v206);
      v160 = MessageIdentifierSet.debugDescription.getter();
      v162 = v161;
      sub_1B0398EFC(v158, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0AA9334(v159, _s15MissingMessagesO10NewMissingVMa);
      v163 = sub_1B0399D64(v160, v162, v209);

      *(v123 + 73) = v163;
      _os_log_impl(&dword_1B0389000, v121, v202, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs, adding %ld UIDs as missing: ... %{public}s", v123, 0x51u);
      v164 = v203;
      swift_arrayDestroy();
      v140 = v164;
      goto LABEL_28;
    }

    sub_1B0AA9334(v143, _s15MissingMessagesO10NewMissingVMa);
    sub_1B0AA9334(v142, type metadata accessor for MailboxTaskLogger);

    sub_1B0AA9334(v144, _s15MissingMessagesO10NewMissingVMa);
    v166 = v141;
LABEL_31:
    v165 = sub_1B0AA9334(v166, type metadata accessor for MailboxTaskLogger);
    goto LABEL_32;
  }

  v118 = v191;
  sub_1B0AA92CC(v115, v191, type metadata accessor for MailboxTaskLogger);
  v119 = v190;
  sub_1B0AA92CC(v115, v190, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v120 = v195;
  sub_1B0AA92CC(v117, v195, _s15MissingMessagesO10NewMissingVMa);
  v121 = sub_1B0E43988();
  v122 = sub_1B0E458E8();
  if (!os_log_type_enabled(v121, v122))
  {
    sub_1B0AA9334(v119, type metadata accessor for MailboxTaskLogger);

    sub_1B0AA9334(v120, _s15MissingMessagesO10NewMissingVMa);
    v166 = v118;
    goto LABEL_31;
  }

  v123 = swift_slowAlloc();
  v124 = swift_slowAlloc();
  v189 = v115;
  v125 = v124;
  v209[0] = v124;
  *v123 = 68159747;
  LODWORD(v206) = v122;
  *(v123 + 4) = 2;
  *(v123 + 8) = 256;
  v126 = v199;
  v127 = &v119[*(v199 + 20)];
  *(v123 + 10) = *v127;
  v128 = a1;
  *(v123 + 11) = 2082;
  v129 = v118;
  v130 = &v118[*(v126 + 20)];
  *(v123 + 13) = sub_1B0399D64(*(v130 + 1), *(v130 + 2), v209);
  *(v123 + 21) = 1040;
  *(v123 + 23) = 2;
  *(v123 + 27) = 512;
  LOWORD(v127) = *(v127 + 12);
  sub_1B0AA9334(v119, type metadata accessor for MailboxTaskLogger);
  *(v123 + 29) = v127;
  *(v123 + 31) = 2160;
  *(v123 + 33) = 0x786F626C69616DLL;
  *(v123 + 41) = 2085;
  v131 = *(v130 + 4);
  LODWORD(v130) = *(v130 + 10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AA9334(v129, type metadata accessor for MailboxTaskLogger);
  v207 = v131;
  v208 = v130;
  v132 = sub_1B0E44BA8();
  v134 = sub_1B0399D64(v132, v133, v209);

  *(v123 + 43) = v134;
  *(v123 + 51) = 2048;
  *(v123 + 53) = v112;
  *(v123 + 61) = 2082;
  a1 = v128;
  v117 = v200;
  v135 = v195;
  v136 = MessageIdentifierSet.debugDescription.getter();
  v138 = v137;
  sub_1B0AA9334(v135, _s15MissingMessagesO10NewMissingVMa);
  v139 = sub_1B0399D64(v136, v138, v209);

  *(v123 + 63) = v139;
  _os_log_impl(&dword_1B0389000, v121, v206, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs: %{public}s", v123, 0x47u);
  swift_arrayDestroy();
  v140 = v125;
LABEL_28:
  v115 = v189;
  MEMORY[0x1B272C230](v140, -1, -1);
  MEMORY[0x1B272C230](v123, -1, -1);

LABEL_32:
  v167 = *(v204 + 24);
  v168 = *(v204 + 32);
  MEMORY[0x1EEE9AC00](v165);
  *&v179[-16] = v117;
  if (*(a1 + 192) == 1)
  {
    v170 = v115;
    v172 = *(a1 + 176);
    v171 = *(a1 + 184);
    v207 = *(a1 + 168);
    v169 = v207;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v207, v167, v168, 0, sub_1B0AA9394);
    v173 = v172;
    v115 = v170;
    sub_1B03BB638(v169, v173, v171, 1);
    v174 = v207;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v174;
    *(a1 + 192) = 1;
  }

  v113 = sub_1B0AA9334(v117, _s15MissingMessagesO10NewMissingVMa);
LABEL_35:
  v175 = *(v204 + 24);
  v176 = *(v204 + 32);
  MEMORY[0x1EEE9AC00](v113);
  *&v179[-16] = v177;
  *&v179[-8] = v115;
  if (*(a1 + 192))
  {
    v83 = *(a1 + 176);
    v82 = *(a1 + 184);
    v84 = *(a1 + 168);
    v207 = v84;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v207, v175, v176, 0, sub_1B0AA9260);
    sub_1B0398EFC(v205, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_37:
    sub_1B03BB638(v84, v83, v82, 1);
    v178 = v207;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v178;
    *(a1 + 192) = 1;
    return;
  }

  sub_1B0398EFC(v205, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

void sub_1B0AA83F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  v10 = a1 + *(type metadata accessor for MailboxSyncState(0) + 48);
  v11 = *(v10 + 40);
  v12 = v11;
  if ((*(v10 + 48) & 1) == 0)
  {
    v12 = *(v11 + 16);
  }

  sub_1B0AA93E0(v11, *(v10 + 48));
  *(v10 + 40) = MEMORY[0x1E69E7CC0];
  *(v10 + 48) = 0;
  sub_1B0AA92CC(a2, v9, type metadata accessor for MailboxTaskLogger);
  sub_1B0AA92CC(a2, v6, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v13 = sub_1B0E43988();
  v14 = sub_1B0E45908();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25[0] = v12;
    v17 = v16;
    v27 = v16;
    *v15 = 68159491;
    *(v15 + 4) = 2;
    *(v15 + 8) = 256;
    v18 = &v6[*(v4 + 20)];
    *(v15 + 10) = *v18;
    *(v15 + 11) = 2082;
    v19 = &v9[*(v4 + 20)];
    *(v15 + 13) = sub_1B0399D64(*(v19 + 1), *(v19 + 2), &v27);
    *(v15 + 21) = 1040;
    *(v15 + 23) = 2;
    *(v15 + 27) = 512;
    v20 = *(v18 + 12);
    sub_1B0AA9334(v6, type metadata accessor for MailboxTaskLogger);
    *(v15 + 29) = v20;
    *(v15 + 31) = 2160;
    *(v15 + 33) = 0x786F626C69616DLL;
    *(v15 + 41) = 2085;
    v21 = *(v19 + 4);
    LODWORD(v19) = *(v19 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AA9334(v9, type metadata accessor for MailboxTaskLogger);
    v25[1] = v21;
    v26 = v19;
    v22 = sub_1B0E44BA8();
    v24 = sub_1B0399D64(v22, v23, &v27);

    *(v15 + 43) = v24;
    *(v15 + 51) = 2048;
    *(v15 + 53) = v25[0];
    _os_log_impl(&dword_1B0389000, v13, v14, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Local mailbox is empty. Removed %ld pending expunge.", v15, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v17, -1, -1);
    MEMORY[0x1B272C230](v15, -1, -1);
  }

  else
  {
    sub_1B0AA9334(v6, type metadata accessor for MailboxTaskLogger);

    sub_1B0AA9334(v9, type metadata accessor for MailboxTaskLogger);
  }
}

void sub_1B0AA871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = *(a2 + 104);
  v19 = a1 + *(type metadata accessor for MailboxSyncState(0) + 48);
  sub_1B0B638C4(v18);
  v20 = *(v19 + 40);
  if ((*(v19 + 48) & 1) == 0)
  {
    v20 = *(v20 + 16);
  }

  if (v20 < 1)
  {
    sub_1B0AA92CC(a3, v11, type metadata accessor for MailboxTaskLogger);
    sub_1B0AA92CC(a3, v8, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v21 = sub_1B0E43988();
    v33 = sub_1B0E45908();
    if (os_log_type_enabled(v21, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 68159491;
      v47 = v18;
      *(v34 + 4) = 2;
      *(v34 + 8) = 256;
      v36 = &v8[*(v6 + 20)];
      *(v34 + 10) = *v36;
      *(v34 + 11) = 2082;
      v37 = &v11[*(v6 + 20)];
      *(v34 + 13) = sub_1B0399D64(*(v37 + 1), *(v37 + 2), &v50);
      *(v34 + 21) = 1040;
      *(v34 + 23) = 2;
      *(v34 + 27) = 512;
      v38 = *(v36 + 12);
      sub_1B0AA9334(v8, type metadata accessor for MailboxTaskLogger);
      *(v34 + 29) = v38;
      *(v34 + 31) = 2160;
      *(v34 + 33) = 0x786F626C69616DLL;
      *(v34 + 41) = 2085;
      v39 = *(v37 + 4);
      v40 = *(v37 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AA9334(v11, type metadata accessor for MailboxTaskLogger);
      v48 = v39;
      v49 = v40;
      v41 = sub_1B0E44BA8();
      v43 = sub_1B0399D64(v41, v42, &v50);

      *(v34 + 43) = v43;
      *(v34 + 51) = 2048;
      *(v34 + 53) = v47;
      _os_log_impl(&dword_1B0389000, v21, v33, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed all %ld EXPUNGE messages.", v34, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v35, -1, -1);
      v32 = v34;
      goto LABEL_8;
    }

    sub_1B0AA9334(v8, type metadata accessor for MailboxTaskLogger);

    v44 = v11;
  }

  else
  {
    sub_1B0AA92CC(a3, v17, type metadata accessor for MailboxTaskLogger);
    sub_1B0AA92CC(a3, v14, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v21 = sub_1B0E43988();
    v22 = sub_1B0E45908();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v50 = v46;
      *v23 = 68159747;
      *(v23 + 4) = 2;
      *(v23 + 8) = 256;
      v24 = *(v6 + 20);
      v47 = v18;
      v25 = &v14[v24];
      *(v23 + 10) = v14[v24];
      *(v23 + 11) = 2082;
      v26 = &v17[*(v6 + 20)];
      *(v23 + 13) = sub_1B0399D64(*(v26 + 1), *(v26 + 2), &v50);
      *(v23 + 21) = 1040;
      *(v23 + 23) = 2;
      *(v23 + 27) = 512;
      LOWORD(v25) = *(v25 + 12);
      sub_1B0AA9334(v14, type metadata accessor for MailboxTaskLogger);
      *(v23 + 29) = v25;
      *(v23 + 31) = 2160;
      *(v23 + 33) = 0x786F626C69616DLL;
      *(v23 + 41) = 2085;
      v27 = *(v26 + 4);
      LODWORD(v25) = *(v26 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AA9334(v17, type metadata accessor for MailboxTaskLogger);
      v48 = v27;
      v49 = v25;
      v28 = sub_1B0E44BA8();
      v30 = sub_1B0399D64(v28, v29, &v50);

      *(v23 + 43) = v30;
      *(v23 + 51) = 2048;
      *(v23 + 53) = v47;
      *(v23 + 61) = 2048;
      *(v23 + 63) = v20;
      _os_log_impl(&dword_1B0389000, v21, v22, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld EXPUNGE messages, still %ld remaining.", v23, 0x47u);
      v31 = v46;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v31, -1, -1);
      v32 = v23;
LABEL_8:
      MEMORY[0x1B272C230](v32, -1, -1);

      return;
    }

    sub_1B0AA9334(v14, type metadata accessor for MailboxTaskLogger);

    v44 = v17;
  }

  sub_1B0AA9334(v44, type metadata accessor for MailboxTaskLogger);
}

double sub_1B0AA8CB8()
{
  if (qword_1EB6DD380 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0AA8D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4000, &unk_1B0EC2910);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v19 - v12);
  if (*(v5 + 102))
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  sub_1B0AA5FA0(a1, a2, a3, a4, v14 | *(v5 + 101), v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD8, &unk_1B0EC2850);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_1B0398EFC(v13, &qword_1EB6E4000, &unk_1B0EC2910);
    v17 = 1;
  }

  else
  {
    sub_1B03C60A4(v13, a5, &qword_1EB6E3FD8, &unk_1B0EC2850);
    v17 = 0;
  }

  return (*(v16 + 56))(a5, v17, 1, v15);
}

uint64_t sub_1B0AA8EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA8, &qword_1B0EC2680);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27[-v17];
  v19 = *(v7 + 88);
  v27[12] = *(v7 + 100);
  sub_1B0AA2BD0(a1, a2, a3, a4, a7, v19, v15);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    v21 = &qword_1EB6E3FA8;
    v22 = &qword_1B0EC2680;
    v23 = v15;
  }

  else
  {
    v24 = *v15;
    v25 = sub_1B03C60A4(v15 + *(v20 + 48), v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1EEE9AC00](v25);
    *&v27[-16] = v18;
    sub_1B0AA2784(v24, sub_1B0AA4C04, &v27[-32]);
    v23 = v18;
    v21 = &unk_1EB6E1AF0;
    v22 = &unk_1B0E9AF40;
  }

  return sub_1B0398EFC(v23, v21, v22);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1B0AA9114(uint64_t *a1, int a2)
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

uint64_t sub_1B0AA915C(uint64_t result, int a2, int a3)
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

unint64_t sub_1B0AA91C8(uint64_t a1)
{
  result = sub_1B0AA91F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AA91F0()
{
  result = qword_1EB6DD378;
  if (!qword_1EB6DD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD378);
  }

  return result;
}

uint64_t sub_1B0AA9268(uint64_t a1, uint64_t a2)
{
  v4 = _s15MissingMessagesO10NewMissingVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0AA92CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AA9334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0AA9394()
{
  v1 = *(v0 + 16);
  type metadata accessor for MailboxSyncState(0);
  return sub_1B0B494D4(v1);
}

uint64_t sub_1B0AA93E0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_1B0AA94BC(uint64_t a1)
{
  sub_1B0AA95BC(319);
  if (v1 <= 0x3F)
  {
    sub_1B0AA9618(319);
    if (v2 <= 0x3F)
    {
      sub_1B0AA967C();
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

void sub_1B0AA95BC(uint64_t a1)
{
  if (!qword_1EB6DAD90)
  {
    sub_1B0451ED8();
    v1 = sub_1B0E45588();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DAD90);
    }
  }
}

void sub_1B0AA9618(uint64_t a1)
{
  if (!qword_1EB6DE348[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2640, &qword_1B0E9B010);
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, qword_1EB6DE348);
    }
  }
}

void sub_1B0AA967C()
{
  if (!qword_1EB6DE198)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DE198);
    }
  }
}

uint64_t sub_1B0AA96CC(uint64_t *a1, int a2)
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

uint64_t sub_1B0AA9714(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0AA98C8(unsigned __int8 *a1)
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

_WORD *sub_1B0AA98DC(_WORD *result, unsigned int a2)
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

uint64_t sub_1B0AA9910(uint64_t a1)
{
  result = sub_1B0AA9984();
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

uint64_t sub_1B0AA9984()
{
  result = qword_1EB6DACE0;
  if (!qword_1EB6DACE0)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EB6DACE0);
  }

  return result;
}

uint64_t sub_1B0AA99B4(uint64_t a1, uint64_t a2)
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

BOOL sub_1B0AA99FC(unsigned __int16 *a1, _WORD *a2)
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

void sub_1B0AA9A54(uint64_t a1)
{
  v3 = type metadata accessor for DetermineMessageBatches(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v126 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v123 = (&v117 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v121 = &v117 - v9;
  v125 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v125);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v117 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v117 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v117 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v117 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v117 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v117 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v117 - v28;
  v30 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v120 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v124 = &v117 - v33;
  v34 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0AB06A4(v1 + *(v4 + 64), v36, type metadata accessor for DetermineMessageBatches.TaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v65 = *v36;
    v66 = v122;
    sub_1B0AB06A4(a1, v122, type metadata accessor for MailboxTaskLogger);
    sub_1B0AB06A4(a1, v11, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0AB06A4(v1, v126, type metadata accessor for DetermineMessageBatches);
    v67 = sub_1B0E43988();
    v68 = sub_1B0E45908();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v130 = v70;
      *v69 = 68159747;
      *(v69 + 4) = 2;
      *(v69 + 8) = 256;
      v71 = v125;
      v72 = &v11[*(v125 + 20)];
      *(v69 + 10) = *v72;
      *(v69 + 11) = 2082;
      v73 = v66 + *(v71 + 20);
      *(v69 + 13) = sub_1B0399D64(*(v73 + 8), *(v73 + 16), &v130);
      *(v69 + 21) = 1040;
      *(v69 + 23) = 2;
      *(v69 + 27) = 512;
      LOWORD(v72) = *(v72 + 12);
      sub_1B0AB070C(v11, type metadata accessor for MailboxTaskLogger);
      *(v69 + 29) = v72;
      *(v69 + 31) = 2160;
      *(v69 + 33) = 0x786F626C69616DLL;
      *(v69 + 41) = 2085;
      v74 = *(v73 + 32);
      LODWORD(v72) = *(v73 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AB070C(v66, type metadata accessor for MailboxTaskLogger);
      v128 = v74;
      v129 = v72;
      v75 = sub_1B0E44BA8();
      v77 = sub_1B0399D64(v75, v76, &v130);

      *(v69 + 43) = v77;
      *(v69 + 51) = 2048;
      *(v69 + 53) = v65;
      *(v69 + 61) = 2048;
      v78 = *(v126 + 144);
      sub_1B0AB070C(v126, type metadata accessor for DetermineMessageBatches);
      *(v69 + 63) = v78;
      _os_log_impl(&dword_1B0389000, v67, v68, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Will query local persistence (message count: %ld, batch size: %ld).", v69, 0x47u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v70, -1, -1);
      MEMORY[0x1B272C230](v69, -1, -1);

      return;
    }

    sub_1B0AB070C(v126, type metadata accessor for DetermineMessageBatches);
    sub_1B0AB070C(v11, type metadata accessor for MailboxTaskLogger);

    v92 = v66;
    v93 = type metadata accessor for MailboxTaskLogger;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v38 = v124;
    sub_1B0AB424C(v36, v124, type metadata accessor for MessageBatches);
    if (*(*(v38 + 8) + 16))
    {
      v39 = v119;
      sub_1B0AB06A4(a1, v119, type metadata accessor for MailboxTaskLogger);
      v40 = v118;
      sub_1B0AB06A4(a1, v118, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v41 = v120;
      sub_1B0AB06A4(v38, v120, type metadata accessor for MessageBatches);
      v42 = v121;
      sub_1B0AB06A4(v1, v121, type metadata accessor for DetermineMessageBatches);
      v43 = sub_1B0E43988();
      v44 = sub_1B0E45908();
      if (os_log_type_enabled(v43, v44))
      {
        v123 = v43;
        v45 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v130 = v126;
        *v45 = 68159747;
        *(v45 + 4) = 2;
        *(v45 + 8) = 256;
        v46 = v125;
        v47 = v40 + *(v125 + 20);
        *(v45 + 10) = *v47;
        *(v45 + 11) = 2082;
        v48 = v40;
        v49 = v39;
        v50 = v39 + *(v46 + 20);
        *(v45 + 13) = sub_1B0399D64(*(v50 + 8), *(v50 + 16), &v130);
        *(v45 + 21) = 1040;
        *(v45 + 23) = 2;
        *(v45 + 27) = 512;
        LOWORD(v47) = *(v47 + 24);
        sub_1B0AB070C(v48, type metadata accessor for MailboxTaskLogger);
        *(v45 + 29) = v47;
        *(v45 + 31) = 2160;
        *(v45 + 33) = 0x786F626C69616DLL;
        *(v45 + 41) = 2085;
        v51 = *(v50 + 32);
        LODWORD(v50) = *(v50 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v49, type metadata accessor for MailboxTaskLogger);
        v128 = v51;
        v129 = v50;
        v52 = sub_1B0E44BA8();
        v54 = sub_1B0399D64(v52, v53, &v130);

        *(v45 + 43) = v54;
        *(v45 + 51) = 2082;
        v55 = *(v41 + 8);
        v56 = *(v55 + 16);
        v57 = MEMORY[0x1E69E7CC0];
        if (v56)
        {
          LODWORD(v125) = v44;
          v128 = MEMORY[0x1E69E7CC0];
          sub_1B0A18B88(0, v56, 0);
          v57 = v128;
          v58 = (v55 + 32);
          do
          {
            v127 = *v58;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
            v59 = sub_1B0E44B88();
            v128 = v57;
            v62 = *(v57 + 16);
            v61 = *(v57 + 24);
            if (v62 >= v61 >> 1)
            {
              v122 = v59;
              v64 = v60;
              sub_1B0A18B88(v61 > 1, v62 + 1, 1);
              v60 = v64;
              v59 = v122;
              v57 = v128;
            }

            *(v57 + 16) = v62 + 1;
            v63 = v57 + 16 * v62;
            *(v63 + 32) = v59;
            *(v63 + 40) = v60;
            ++v58;
            --v56;
          }

          while (v56);
          v38 = v124;
          v41 = v120;
          v42 = v121;
          LOBYTE(v44) = v125;
        }

        else
        {
          v38 = v124;
        }

        v128 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
        sub_1B03B11C4();
        v110 = sub_1B0E448E8();
        v112 = v111;

        sub_1B0AB070C(v41, type metadata accessor for MessageBatches);
        v113 = sub_1B0399D64(v110, v112, &v130);

        *(v45 + 53) = v113;
        *(v45 + 61) = 2048;
        v114 = *(v42 + 144);
        sub_1B0AB070C(v42, type metadata accessor for DetermineMessageBatches);
        *(v45 + 63) = v114;
        v115 = v123;
        _os_log_impl(&dword_1B0389000, v123, v44, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Using fixed range(s): %{public}s (batch size: %ld).", v45, 0x47u);
        v116 = v126;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v116, -1, -1);
        MEMORY[0x1B272C230](v45, -1, -1);

        goto LABEL_24;
      }

      sub_1B0AB070C(v42, type metadata accessor for DetermineMessageBatches);
      sub_1B0AB070C(v40, type metadata accessor for MailboxTaskLogger);

      sub_1B0AB070C(v39, type metadata accessor for MailboxTaskLogger);
      v108 = type metadata accessor for MessageBatches;
      v109 = v41;
    }

    else
    {
      v94 = v29;
      sub_1B0AB06A4(a1, v29, type metadata accessor for MailboxTaskLogger);
      sub_1B0AB06A4(a1, v26, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v95 = sub_1B0E43988();
      v96 = sub_1B0E45908();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v130 = v98;
        *v97 = 68159235;
        *(v97 + 4) = 2;
        *(v97 + 8) = 256;
        v99 = v125;
        v100 = v38;
        v101 = &v26[*(v125 + 20)];
        *(v97 + 10) = *v101;
        *(v97 + 11) = 2082;
        v102 = v94 + *(v99 + 20);
        *(v97 + 13) = sub_1B0399D64(*(v102 + 8), *(v102 + 16), &v130);
        *(v97 + 21) = 1040;
        *(v97 + 23) = 2;
        *(v97 + 27) = 512;
        LOWORD(v101) = *(v101 + 12);
        sub_1B0AB070C(v26, type metadata accessor for MailboxTaskLogger);
        *(v97 + 29) = v101;
        *(v97 + 31) = 2160;
        *(v97 + 33) = 0x786F626C69616DLL;
        *(v97 + 41) = 2085;
        v103 = *(v102 + 32);
        v104 = *(v102 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v94, type metadata accessor for MailboxTaskLogger);
        v128 = v103;
        v129 = v104;
        v105 = sub_1B0E44BA8();
        v107 = sub_1B0399D64(v105, v106, &v130);

        *(v97 + 43) = v107;
        v38 = v100;
        _os_log_impl(&dword_1B0389000, v95, v96, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. No messages.", v97, 0x33u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v98, -1, -1);
        MEMORY[0x1B272C230](v97, -1, -1);

LABEL_24:
        v93 = type metadata accessor for MessageBatches;
        v92 = v38;
        goto LABEL_25;
      }

      sub_1B0AB070C(v26, type metadata accessor for MailboxTaskLogger);

      v109 = v29;
      v108 = type metadata accessor for MailboxTaskLogger;
    }

    sub_1B0AB070C(v109, v108);
    goto LABEL_24;
  }

  sub_1B0AB06A4(a1, v19, type metadata accessor for MailboxTaskLogger);
  sub_1B0AB06A4(a1, v16, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v79 = v123;
  sub_1B0AB06A4(v1, v123, type metadata accessor for DetermineMessageBatches);
  v80 = sub_1B0E43988();
  v81 = sub_1B0E45908();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v130 = v83;
    *v82 = 68159491;
    *(v82 + 4) = 2;
    *(v82 + 8) = 256;
    v84 = v125;
    v85 = &v16[*(v125 + 20)];
    *(v82 + 10) = *v85;
    *(v82 + 11) = 2082;
    v86 = &v19[*(v84 + 20)];
    *(v82 + 13) = sub_1B0399D64(*(v86 + 1), *(v86 + 2), &v130);
    *(v82 + 21) = 1040;
    *(v82 + 23) = 2;
    *(v82 + 27) = 512;
    LOWORD(v85) = *(v85 + 12);
    sub_1B0AB070C(v16, type metadata accessor for MailboxTaskLogger);
    *(v82 + 29) = v85;
    *(v82 + 31) = 2160;
    *(v82 + 33) = 0x786F626C69616DLL;
    *(v82 + 41) = 2085;
    v87 = *(v86 + 4);
    LODWORD(v85) = *(v86 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AB070C(v19, type metadata accessor for MailboxTaskLogger);
    v128 = v87;
    v129 = v85;
    v88 = sub_1B0E44BA8();
    v90 = sub_1B0399D64(v88, v89, &v130);

    *(v82 + 43) = v90;
    *(v82 + 51) = 2048;
    isa = v79[18].isa;
    sub_1B0AB070C(v79, type metadata accessor for DetermineMessageBatches);
    *(v82 + 53) = isa;
    _os_log_impl(&dword_1B0389000, v80, v81, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Will query server. (batch size: %ld).", v82, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v83, -1, -1);
    MEMORY[0x1B272C230](v82, -1, -1);

    return;
  }

  sub_1B0AB070C(v79, type metadata accessor for DetermineMessageBatches);
  sub_1B0AB070C(v16, type metadata accessor for MailboxTaskLogger);

  v92 = v19;
  v93 = type metadata accessor for MailboxTaskLogger;
LABEL_25:
  sub_1B0AB070C(v92, v93);
}

uint64_t sub_1B0AAA978@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1B0AADD60();
  v7 = sub_1B0AAEB70(v5, v6);
  v8 = sub_1B0AB0A70(a1);
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

          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4028, &qword_1B0EC2AF8);
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

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4028, &qword_1B0EC2AF8);
  v20 = *(*(v19 - 8) + 56);
  v21 = v19;
  v22 = a2;
  v23 = 1;
LABEL_13:

  return v20(v22, v23, 1, v21);
}

uint64_t sub_1B0AAAB14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X8>)
{
  v6 = v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v60 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4038, &qword_1B0EC2B08);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v71 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v68 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v60 - v25;
  result = sub_1B0AB0B54(0, a1, a2, v24);
  if (result)
  {
    goto LABEL_26;
  }

  v67 = v20;
  v28 = *(v6 + 144);
  if (*(v6 + 72))
  {
    LODWORD(v29) = 1;
  }

  else
  {
    v30 = *(v6 + 64);
    v31 = __OFSUB__(a3, v30);
    v32 = a3 - v30;
    if (v31)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v31 = __OFADD__(v32, 1);
    v29 = v32 + 1;
    if (v31)
    {
LABEL_37:
      __break(1u);
      return result;
    }

    if ((v29 - 0x100000000) < 0xFFFFFFFF00000001)
    {
      LODWORD(v29) = 1;
    }
  }

  v66 = v29;
  if ((a3 - 0x100000000) <= 0xFFFFFFFF00000000)
  {
    v33 = v67;
    (*(v71 + 56))(v67, 1, 1, v21);
LABEL_25:
    sub_1B0398EFC(v33, &qword_1EB6E4038, &qword_1B0EC2B08);
LABEL_26:
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4028, &qword_1B0EC2AF8);
    return (*(*(v51 - 8) + 56))(a5, 1, 1, v51);
  }

  v64 = v21;
  v65 = a5;
  v61 = v26;
  v62 = a4;
  v34 = swift_allocObject();
  *(v34 + 16) = a3;
  *(v34 + 20) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v28;
  v36 = v66;
  *(v35 + 32) = v66;
  *(v35 + 36) = a3;
  *(v35 + 40) = 0;
  *(v35 + 48) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4048, &qword_1B0EC2B18);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1B0AB423C;
  *(inited + 24) = v35;
  v63 = inited;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  result = swift_beginAccess();
  v38 = a3 - v36;
  if (v38 >= v28)
  {
    v39 = 0;
    v40 = __OFSUB__(0, v28);
    v41 = a3 - v28;
    while (v39 | v28)
    {
      if (v40)
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

      if (-v28 > 0xFFFFFFFFLL)
      {
        goto LABEL_32;
      }

      if (v41 + v39 < 1)
      {
        goto LABEL_33;
      }

      if ((v41 + v39) >> 32)
      {
        goto LABEL_34;
      }

      *(v34 + 16) = a3 - v28;
      *(v34 + 20) = 0;
      v73 = a3;
      result = MessageIdentifierSet.insert(_:)(&v74, &v73, v72);
      v39 -= v28;
      LODWORD(a3) = a3 - v28;
      if (v38 + v39 < v28)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_21:
  *(v34 + 16) = 0;
  *(v34 + 20) = 1;
  v73 = a3;
  v42 = v72;
  MessageIdentifierSet.insert(_:)(&v74, &v73, v72);
  *(v34 + 16) = 0;
  *(v34 + 20) = 1;
  v43 = v69;
  sub_1B03C60A4(v15, v69, &qword_1EB6E4030, &qword_1B0EC2B00);
  v73 = v66;
  MessageIdentifierSet.insert(_:)(&v74, &v73, v42);
  v44 = v70;
  sub_1B03B5C80(v43, v70, &qword_1EB6E4030, &qword_1B0EC2B00);
  v45 = MessageIdentifierSet.count.getter();

  sub_1B0398EFC(v43, &qword_1EB6E4030, &qword_1B0EC2B00);
  a5 = v65;
  if (v45 <= 0)
  {
    sub_1B0398EFC(v44, &qword_1EB6E4030, &qword_1B0EC2B00);
    v47 = 1;
    v33 = v67;
  }

  else
  {
    v46 = v68;
    sub_1B03C60A4(v44, v68, &qword_1EB6E4030, &qword_1B0EC2B00);
    v33 = v67;
    sub_1B03C60A4(v46, v67, &qword_1EB6E4040, &qword_1B0EC2B10);
    v47 = 0;
  }

  v48 = v71;
  v49 = *(v71 + 56);
  v50 = v64;
  v49(v33, v47, 1, v64);

  if ((*(v48 + 48))(v33, 1, v50) == 1)
  {
    goto LABEL_25;
  }

  v52 = v61;
  sub_1B03C60A4(v33, v61, &qword_1EB6E4040, &qword_1B0EC2B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  v53 = swift_allocBox();
  v55 = v54;
  sub_1B03B5C80(v52, v54, &qword_1EB6E4040, &qword_1B0EC2B10);
  v49(v55, 0, 1, v50);
  v56 = v53 | 0xB000000000000004;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4028, &qword_1B0EC2AF8);
  v58 = (a5 + *(v57 + 48));
  v74 = 1;
  *a5 = MessageIdentifierSet.contains(_:)(&v74, v72) & 1;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  if ((v62 & 0x100) != 0)
  {
    sub_1B0398EFC(v52, &qword_1EB6E4040, &qword_1B0EC2B10);
    *v58 = v56;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
    type metadata accessor for SearchReturnOption(0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1B0EC1E70;
    swift_storeEnumTagMultiPayload();
    sub_1B0398EFC(v52, &qword_1EB6E4040, &qword_1B0EC2B10);
    *v58 = v56;
    v58[1] = v59;
  }

  type metadata accessor for ClientCommand(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v57 - 8) + 56))(a5, 0, 1, v57);
}

uint64_t sub_1B0AAB2D0(int a1, uint64_t a2, __int16 a3, char *a4)
{
  v5 = v4;
  v95 = a4;
  LODWORD(v94) = a1;
  v92 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v87 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v87 - v13;
  v14 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v87 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v87 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v87 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v87 - v30;
  sub_1B0B7EA7C(a3 & 0x101, v19);
  v32 = *(v21 + 48);
  v93 = v20;
  if (v32(v19, 1, v20) == 1)
  {
    v33 = &qword_1EB6E3920;
    v34 = &qword_1B0E9B070;
    v35 = v19;
  }

  else
  {
    sub_1B03C60A4(v19, v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v37 = *(v4 + 144);
    sub_1B03B5C80(v31, v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0B3EA18(v37, v28, v94 & 1, v16);
    v38 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
    sub_1B0AB070C(v5 + v38, type metadata accessor for DetermineMessageBatches.TaskState);
    sub_1B0AB06A4(v16, v5 + v38, type metadata accessor for MessageBatches);
    type metadata accessor for DetermineMessageBatches.TaskState(0);
    swift_storeEnumTagMultiPayload();
    v39 = sub_1B0AABD14(v16);
    if (v40)
    {
      v41 = v95;
      v42 = v91;
      sub_1B0AB06A4(v95, v91, type metadata accessor for MailboxTaskLogger);
      v43 = v89;
      sub_1B0AB06A4(v41, v89, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v44 = v87;
      sub_1B03B5C80(v31, v87, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v45 = sub_1B0E43988();
      v46 = sub_1B0E45908();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v98 = v90;
        *v47 = 68159491;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        v48 = v92;
        v49 = *(v92 + 20);
        v94 = v31;
        v95 = v16;
        v50 = v43 + v49;
        *(v47 + 10) = *(v43 + v49);
        *(v47 + 11) = 2082;
        v51 = v42 + *(v48 + 20);
        *(v47 + 13) = sub_1B0399D64(*(v51 + 8), *(v51 + 16), &v98);
        *(v47 + 21) = 1040;
        *(v47 + 23) = 2;
        *(v47 + 27) = 512;
        LOWORD(v50) = *(v50 + 24);
        sub_1B0AB070C(v43, type metadata accessor for MailboxTaskLogger);
        *(v47 + 29) = v50;
        *(v47 + 31) = 2160;
        *(v47 + 33) = 0x786F626C69616DLL;
        *(v47 + 41) = 2085;
        v52 = *(v51 + 32);
        LODWORD(v51) = *(v51 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v42, type metadata accessor for MailboxTaskLogger);
        v96 = v52;
        v97 = v51;
        v53 = sub_1B0E44BA8();
        v55 = sub_1B0399D64(v53, v54, &v98);

        *(v47 + 43) = v55;
        *(v47 + 51) = 2082;
        v56 = MessageIdentifierSet.debugDescription.getter();
        v58 = v57;
        sub_1B0398EFC(v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v59 = sub_1B0399D64(v56, v58, &v98);

        *(v47 + 53) = v59;
        _os_log_impl(&dword_1B0389000, v45, v46, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Creating UID ranges from UIDs: %{public}s", v47, 0x3Du);
        v60 = v90;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v60, -1, -1);
        MEMORY[0x1B272C230](v47, -1, -1);

        sub_1B0AB070C(v95, type metadata accessor for MessageBatches);
        v35 = v94;
      }

      else
      {
        sub_1B0AB070C(v43, type metadata accessor for MailboxTaskLogger);

        sub_1B0398EFC(v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0AB070C(v42, type metadata accessor for MailboxTaskLogger);
        sub_1B0AB070C(v16, type metadata accessor for MessageBatches);
        v35 = v31;
      }

      v33 = &unk_1EB6E1AF0;
      v34 = &unk_1B0E9AF40;
    }

    else
    {
      v61 = v39;
      v62 = v95;
      v63 = v90;
      sub_1B0AB06A4(v95, v90, type metadata accessor for MailboxTaskLogger);
      v64 = v88;
      sub_1B0AB06A4(v62, v88, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B5C80(v31, v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v65 = sub_1B0E43988();
      v66 = sub_1B0E45908();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v95 = v16;
        v68 = v67;
        v94 = swift_slowAlloc();
        v98 = v94;
        *v68 = 68159747;
        *(v68 + 4) = 2;
        *(v68 + 8) = 256;
        v69 = v92;
        v70 = *(v92 + 20);
        v91 = v61;
        v71 = v64;
        v72 = v64 + v70;
        *(v68 + 10) = *v72;
        *(v68 + 11) = 2082;
        v73 = v63 + *(v69 + 20);
        *(v68 + 13) = sub_1B0399D64(*(v73 + 8), *(v73 + 16), &v98);
        *(v68 + 21) = 1040;
        *(v68 + 23) = 2;
        *(v68 + 27) = 512;
        LOWORD(v72) = *(v72 + 24);
        sub_1B0AB070C(v71, type metadata accessor for MailboxTaskLogger);
        *(v68 + 29) = v72;
        *(v68 + 31) = 2160;
        *(v68 + 33) = 0x786F626C69616DLL;
        *(v68 + 41) = 2085;
        v74 = *(v73 + 32);
        LODWORD(v73) = *(v73 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v63, type metadata accessor for MailboxTaskLogger);
        v96 = v74;
        v97 = v73;
        v75 = sub_1B0E44BA8();
        v77 = sub_1B0399D64(v75, v76, &v98);

        *(v68 + 43) = v77;
        *(v68 + 51) = 2082;
        v78 = MessageIdentifierSet.debugDescription.getter();
        v79 = v31;
        v81 = v80;
        sub_1B0398EFC(v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v82 = sub_1B0399D64(v78, v81, &v98);

        *(v68 + 53) = v82;
        *(v68 + 61) = 2082;
        v96 = v91;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v83 = MessageIdentifierRange.debugDescription.getter();
        v85 = sub_1B0399D64(v83, v84, &v98);

        *(v68 + 63) = v85;
        _os_log_impl(&dword_1B0389000, v65, v66, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Creating UID ranges from UIDs: %{public}s (window of interest: %{public}s)", v68, 0x47u);
        v86 = v94;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v86, -1, -1);
        MEMORY[0x1B272C230](v68, -1, -1);

        sub_1B0AB070C(v95, type metadata accessor for MessageBatches);
        v35 = v79;
      }

      else
      {
        sub_1B0AB070C(v64, type metadata accessor for MailboxTaskLogger);

        sub_1B0398EFC(v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0AB070C(v63, type metadata accessor for MailboxTaskLogger);
        sub_1B0AB070C(v16, type metadata accessor for MessageBatches);
        v35 = v31;
      }

      v33 = &unk_1EB6E1AF0;
      v34 = &unk_1B0E9AF40;
    }
  }

  return sub_1B0398EFC(v35, v33, v34);
}

uint64_t sub_1B0AABD14(uint64_t a1)
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
  sub_1B041C1E8();
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

uint64_t sub_1B0AABDE8(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8, unint64_t a9)
{
  v43 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v40[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4018, &unk_1B0EC2AD0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40[-v20];
  v22 = type metadata accessor for DetermineMessageBatches(0);
  v23 = *(v19 + 56);
  sub_1B0AB06A4(v9 + *(v22 + 56), &v21[v23], type metadata accessor for DetermineMessageBatches.TaskState);
  if (a3)
  {
    v24 = v46;
    sub_1B0A92068(a9, a4, a5, a6, a7);
    if (!v24)
    {
      sub_1B0AAC21C(a9);
    }
  }

  else
  {
    type metadata accessor for DetermineMessageBatches.TaskState(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0A92068(a9, a4, a5, a6, a7);
    }

    else
    {
      v25 = v45;
      sub_1B0AB06A4(a9, v45, type metadata accessor for MailboxTaskLogger);
      v26 = v44;
      sub_1B0AB06A4(a9, v44, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v27 = sub_1B0E43988();
      v28 = sub_1B0E458E8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v49 = v42;
        *v29 = 68159235;
        v41 = v28;
        *(v29 + 4) = 2;
        *(v29 + 8) = 256;
        v30 = v43;
        v31 = &v26[*(v43 + 20)];
        *(v29 + 10) = *v31;
        *(v29 + 11) = 2082;
        v32 = v25;
        v33 = &v25[*(v30 + 20)];
        *(v29 + 13) = sub_1B0399D64(*(v33 + 1), *(v33 + 2), &v49);
        *(v29 + 21) = 1040;
        *(v29 + 23) = 2;
        *(v29 + 27) = 512;
        LOWORD(v31) = *(v31 + 12);
        sub_1B0AB070C(v26, type metadata accessor for MailboxTaskLogger);
        *(v29 + 29) = v31;
        *(v29 + 31) = 2160;
        *(v29 + 33) = 0x786F626C69616DLL;
        *(v29 + 41) = 2085;
        v34 = *(v33 + 4);
        LODWORD(v33) = *(v33 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v32, type metadata accessor for MailboxTaskLogger);
        v47 = v34;
        v48 = v33;
        v35 = sub_1B0E44BA8();
        v37 = sub_1B0399D64(v35, v36, &v49);

        *(v29 + 43) = v37;
        _os_log_impl(&dword_1B0389000, v27, v41, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed SEARCH for boundary IDs, but didn’t get any result from the server.", v29, 0x33u);
        v38 = v42;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v38, -1, -1);
        MEMORY[0x1B272C230](v29, -1, -1);
      }

      else
      {
        sub_1B0AB070C(v26, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v25, type metadata accessor for MailboxTaskLogger);
      }
    }
  }

  return sub_1B0AB070C(&v21[v23], type metadata accessor for DetermineMessageBatches.TaskState);
}

uint64_t sub_1B0AAC21C(unint64_t a1)
{
  v5 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v5);
  v247 = &v237 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v248 = &v237 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v261 = &v237 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v262 = (&v237 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v244 = &v237 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v246 = &v237 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v243 = &v237 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v245 = &v237 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v253 = &v237 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v254 = &v237 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v259 = *(v25 - 8);
  v260 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v256 = &v237 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v237 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v237 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v237 - v34;
  v36 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v252 = &v237 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v242 = &v237 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v249 = &v237 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v263 = (&v237 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v251 = &v237 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v241 = &v237 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v250 = &v237 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v240 = &v237 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v264 = (&v237 - v53);
  sub_1B0AADD60();
  if (v54 < 1)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    swift_unknownObjectRelease();
    v72 = v5;
    v71 = v239;
    v70 = v238;
    v69 = v263;
LABEL_15:
    sub_1B0B21C30(v1, v70, v71, v72);
    v68 = v73;
LABEL_22:
    swift_unknownObjectRelease();
LABEL_23:
    sub_1B03D06F8();
    sub_1B0E46EE8();
    sub_1B03B5C80(v35, v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v78 = 1;
    }

    else
    {
      v77 = v256;
      sub_1B03C60A4(v32, v256, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v77, v29, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v78 = 0;
    }

    v79 = v262;
    (*(v259 + 56))(v29, v78, 1, v260);
    v80 = v264;
    sub_1B0B3EF98(v3, v68, v29, v264);
    sub_1B0398EFC(v35, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v81 = sub_1B0AABD14(v80);
    v83 = *(v80[1] + 16);
    v84 = v261;
    if (v83)
    {
      if (v83 <= 9)
      {
        if (v82)
        {
          v85 = v258;
          v86 = v246;
          sub_1B0AB06A4(v258, v246, type metadata accessor for MailboxTaskLogger);
          v87 = v244;
          sub_1B0AB06A4(v85, v244, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v88 = v264;
          v89 = v241;
          sub_1B0AB06A4(v264, v241, type metadata accessor for MessageBatches);
          v90 = v251;
          sub_1B0AB06A4(v88, v251, type metadata accessor for MessageBatches);
          v91 = sub_1B0E43988();
          v92 = sub_1B0E45908();
          if (os_log_type_enabled(v91, v92))
          {
            LODWORD(v261) = v92;
            v263 = v91;
            v93 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            v270 = v260;
            *v93 = 68159747;
            *(v93 + 4) = 2;
            *(v93 + 8) = 256;
            v94 = v255;
            v95 = v87 + *(v255 + 20);
            *(v93 + 10) = *v95;
            *(v93 + 11) = 2082;
            v96 = v86 + *(v94 + 20);
            *(v93 + 13) = sub_1B0399D64(*(v96 + 8), *(v96 + 16), &v270);
            *(v93 + 21) = 1040;
            *(v93 + 23) = 2;
            *(v93 + 27) = 512;
            LOWORD(v95) = *(v95 + 24);
            sub_1B0AB070C(v87, type metadata accessor for MailboxTaskLogger);
            *(v93 + 29) = v95;
            *(v93 + 31) = 2160;
            *(v93 + 33) = 0x786F626C69616DLL;
            *(v93 + 41) = 2085;
            v97 = *(v96 + 32);
            LODWORD(v96) = *(v96 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0AB070C(v86, type metadata accessor for MailboxTaskLogger);
            v268 = v97;
            v269 = v96;
            v98 = sub_1B0E44BA8();
            v100 = sub_1B0399D64(v98, v99, &v270);

            *(v93 + 43) = v100;
            *(v93 + 51) = 2048;
            v101 = *(*(v89 + 8) + 16);
            sub_1B0AB070C(v89, type metadata accessor for MessageBatches);
            *(v93 + 53) = v101;
            v262 = v93;
            *(v93 + 61) = 2082;
            v102 = v251;
            v103 = *(v251 + 8);
            v104 = *(v103 + 16);
            v105 = MEMORY[0x1E69E7CC0];
            if (v104)
            {
              v268 = MEMORY[0x1E69E7CC0];
              sub_1B0A18B88(0, v104, 0);
              v105 = v268;
              v106 = (v103 + 32);
              do
              {
                v267 = *v106;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
                v107 = sub_1B0E44B88();
                v109 = v108;
                v268 = v105;
                v111 = *(v105 + 16);
                v110 = *(v105 + 24);
                if (v111 >= v110 >> 1)
                {
                  sub_1B0A18B88(v110 > 1, v111 + 1, 1);
                  v105 = v268;
                }

                *(v105 + 16) = v111 + 1;
                v112 = v105 + 16 * v111;
                *(v112 + 32) = v107;
                *(v112 + 40) = v109;
                ++v106;
                --v104;
              }

              while (v104);
              v102 = v251;
            }

            v268 = v105;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
            sub_1B03B11C4();
            v194 = sub_1B0E448E8();
            v196 = v195;
LABEL_76:

            sub_1B0AB070C(v102, type metadata accessor for MessageBatches);
            v225 = sub_1B0399D64(v194, v196, &v270);

            v118 = v262;
            *(&v262[7].isa + 7) = v225;
            v116 = v263;
            _os_log_impl(&dword_1B0389000, v263, v261, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. %ld message batch(es): %{public}s", v118, 0x47u);
            v226 = v260;
            swift_arrayDestroy();
            v127 = v226;
            goto LABEL_77;
          }
        }

        else
        {
          v263 = v81;
          v151 = v258;
          v86 = v245;
          sub_1B0AB06A4(v258, v245, type metadata accessor for MailboxTaskLogger);
          v87 = v243;
          sub_1B0AB06A4(v151, v243, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v152 = v264;
          v89 = v240;
          sub_1B0AB06A4(v264, v240, type metadata accessor for MessageBatches);
          v90 = v250;
          sub_1B0AB06A4(v152, v250, type metadata accessor for MessageBatches);
          v91 = sub_1B0E43988();
          v153 = sub_1B0E45908();
          if (os_log_type_enabled(v91, v153))
          {
            LODWORD(v260) = v153;
            v262 = v91;
            v258 = v263 >> 32;
            v154 = swift_slowAlloc();
            v259 = swift_slowAlloc();
            v270 = v259;
            *v154 = 68160003;
            *(v154 + 4) = 2;
            *(v154 + 8) = 256;
            v155 = v255;
            v156 = v87 + *(v255 + 20);
            *(v154 + 10) = *v156;
            *(v154 + 11) = 2082;
            v157 = v86 + *(v155 + 20);
            *(v154 + 13) = sub_1B0399D64(*(v157 + 8), *(v157 + 16), &v270);
            *(v154 + 21) = 1040;
            *(v154 + 23) = 2;
            *(v154 + 27) = 512;
            LOWORD(v156) = *(v156 + 24);
            sub_1B0AB070C(v87, type metadata accessor for MailboxTaskLogger);
            *(v154 + 29) = v156;
            *(v154 + 31) = 2160;
            *(v154 + 33) = 0x786F626C69616DLL;
            *(v154 + 41) = 2085;
            v158 = *(v157 + 32);
            LODWORD(v157) = *(v157 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0AB070C(v86, type metadata accessor for MailboxTaskLogger);
            v268 = v158;
            v269 = v157;
            v159 = sub_1B0E44BA8();
            v161 = sub_1B0399D64(v159, v160, &v270);

            *(v154 + 43) = v161;
            *(v154 + 51) = 2048;
            v162 = *(*(v89 + 8) + 16);
            sub_1B0AB070C(v89, type metadata accessor for MessageBatches);
            *(v154 + 53) = v162;
            v261 = v154;
            *(v154 + 61) = 2082;
            v163 = v250;
            v164 = *(v250 + 8);
            v165 = *(v164 + 16);
            v166 = MEMORY[0x1E69E7CC0];
            if (v165)
            {
              v268 = MEMORY[0x1E69E7CC0];
              sub_1B0A18B88(0, v165, 0);
              v166 = v268;
              v167 = (v164 + 32);
              do
              {
                v267 = *v167;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
                v168 = sub_1B0E44B88();
                v170 = v169;
                v268 = v166;
                v172 = *(v166 + 16);
                v171 = *(v166 + 24);
                if (v172 >= v171 >> 1)
                {
                  sub_1B0A18B88(v171 > 1, v172 + 1, 1);
                  v166 = v268;
                }

                *(v166 + 16) = v172 + 1;
                v173 = v166 + 16 * v172;
                *(v173 + 32) = v168;
                *(v173 + 40) = v170;
                ++v167;
                --v165;
              }

              while (v165);
              v163 = v250;
            }

            v268 = v166;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
            sub_1B03B11C4();
            v197 = sub_1B0E448E8();
            v199 = v198;

            sub_1B0AB070C(v163, type metadata accessor for MessageBatches);
            v200 = sub_1B0399D64(v197, v199, &v270);

            v201 = v261;
            *(v261 + 63) = v200;
            *(v201 + 71) = 2082;
            v268 = __PAIR64__(v258, v263);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
            v202 = MessageIdentifierRange.debugDescription.getter();
            v204 = sub_1B0399D64(v202, v203, &v270);

            *(v201 + 73) = v204;
            v116 = v262;
            _os_log_impl(&dword_1B0389000, v262, v260, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. %ld message batch(es): %{public}s (window of interest: %{public}s)", v201, 0x51u);
            v205 = v259;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v205, -1, -1);
            v206 = v201;
            goto LABEL_78;
          }
        }

        sub_1B0AB070C(v89, type metadata accessor for MessageBatches);
        sub_1B0AB070C(v87, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v86, type metadata accessor for MailboxTaskLogger);
        v150 = v90;
        v193 = type metadata accessor for MessageBatches;
LABEL_57:
        sub_1B0AB070C(v150, v193);
LABEL_79:
        v227 = *(v257 + 56);
        v228 = v265;
        sub_1B0AB070C(v265 + v227, type metadata accessor for DetermineMessageBatches.TaskState);
        sub_1B0AB424C(v264, v228 + v227, type metadata accessor for MessageBatches);
        type metadata accessor for DetermineMessageBatches.TaskState(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (v82)
      {
        v128 = v258;
        v129 = v248;
        sub_1B0AB06A4(v258, v248, type metadata accessor for MailboxTaskLogger);
        v130 = v247;
        sub_1B0AB06A4(v128, v247, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v131 = v264;
        v132 = v242;
        sub_1B0AB06A4(v264, v242, type metadata accessor for MessageBatches);
        v133 = v131;
        v134 = v252;
        sub_1B0AB06A4(v133, v252, type metadata accessor for MessageBatches);
        v135 = sub_1B0E43988();
        v136 = sub_1B0E45908();
        if (os_log_type_enabled(v135, v136))
        {
          LODWORD(v261) = v136;
          v263 = v135;
          v137 = swift_slowAlloc();
          v260 = swift_slowAlloc();
          v270 = v260;
          *v137 = 68159747;
          *(v137 + 4) = 2;
          *(v137 + 8) = 256;
          v138 = v255;
          v139 = v130 + *(v255 + 20);
          *(v137 + 10) = *v139;
          v140 = v130;
          *(v137 + 11) = 2082;
          v141 = v129 + *(v138 + 20);
          *(v137 + 13) = sub_1B0399D64(*(v141 + 8), *(v141 + 16), &v270);
          *(v137 + 21) = 1040;
          *(v137 + 23) = 2;
          *(v137 + 27) = 512;
          LOWORD(v139) = *(v139 + 24);
          sub_1B0AB070C(v140, type metadata accessor for MailboxTaskLogger);
          *(v137 + 29) = v139;
          *(v137 + 31) = 2160;
          *(v137 + 33) = 0x786F626C69616DLL;
          *(v137 + 41) = 2085;
          v142 = *(v141 + 32);
          LODWORD(v141) = *(v141 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AB070C(v129, type metadata accessor for MailboxTaskLogger);
          v268 = v142;
          v269 = v141;
          v143 = sub_1B0E44BA8();
          v145 = sub_1B0399D64(v143, v144, &v270);

          *(v137 + 43) = v145;
          *(v137 + 51) = 2048;
          v146 = *(*(v132 + 8) + 16);
          sub_1B0AB070C(v132, type metadata accessor for MessageBatches);
          *(v137 + 53) = v146;
          v262 = v137;
          *(v137 + 61) = 2082;
          v102 = v252;
          v147 = *(v252 + 8);
          v148 = *(v147 + 16);
          if (v148 <= 0xA)
          {
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          }

          else
          {
            sub_1B0B21C30(*(v252 + 8), v147 + 32, 0, 0x15uLL);
            v147 = v149;
            v148 = *(v149 + 16);
          }

          if (v148)
          {
            v268 = MEMORY[0x1E69E7CC0];
            sub_1B0A18B88(0, v148, 0);
            v207 = 32;
            v208 = v268;
            do
            {
              v267 = *(v147 + v207);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
              v209 = sub_1B0E44B88();
              v211 = v210;
              v268 = v208;
              v213 = *(v208 + 16);
              v212 = *(v208 + 24);
              if (v213 >= v212 >> 1)
              {
                sub_1B0A18B88(v212 > 1, v213 + 1, 1);
                v208 = v268;
              }

              *(v208 + 16) = v213 + 1;
              v214 = v208 + 16 * v213;
              *(v214 + 32) = v209;
              *(v214 + 40) = v211;
              v207 += 8;
              --v148;
            }

            while (v148);

            v102 = v252;
          }

          else
          {

            v208 = MEMORY[0x1E69E7CC0];
          }

          v268 = v208;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
          sub_1B03B11C4();
          v194 = sub_1B0E448E8();
          v196 = v224;
          goto LABEL_76;
        }

        sub_1B0AB070C(v132, type metadata accessor for MessageBatches);
        sub_1B0AB070C(v130, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v134, type metadata accessor for MessageBatches);
        v150 = v129;
      }

      else
      {
        v174 = v81;
        v175 = v258;
        sub_1B0AB06A4(v258, v79, type metadata accessor for MailboxTaskLogger);
        sub_1B0AB06A4(v175, v84, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v176 = v264;
        sub_1B0AB06A4(v264, v69, type metadata accessor for MessageBatches);
        v177 = v249;
        sub_1B0AB06A4(v176, v249, type metadata accessor for MessageBatches);
        v178 = sub_1B0E43988();
        v179 = sub_1B0E45908();
        if (os_log_type_enabled(v178, v179))
        {
          LODWORD(v260) = v179;
          v262 = v178;
          v263 = v174;
          v258 = v174 >> 32;
          v180 = swift_slowAlloc();
          v259 = swift_slowAlloc();
          v270 = v259;
          *v180 = 68160003;
          *(v180 + 4) = 2;
          *(v180 + 8) = 256;
          v181 = v255;
          v182 = v84 + *(v255 + 20);
          *(v180 + 10) = *v182;
          *(v180 + 11) = 2082;
          v183 = v69;
          v184 = v79 + *(v181 + 20);
          *(v180 + 13) = sub_1B0399D64(*(v184 + 1), *(v184 + 2), &v270);
          *(v180 + 21) = 1040;
          *(v180 + 23) = 2;
          *(v180 + 27) = 512;
          LOWORD(v182) = *(v182 + 24);
          sub_1B0AB070C(v84, type metadata accessor for MailboxTaskLogger);
          *(v180 + 29) = v182;
          *(v180 + 31) = 2160;
          *(v180 + 33) = 0x786F626C69616DLL;
          *(v180 + 41) = 2085;
          v185 = *(v184 + 4);
          LODWORD(v184) = *(v184 + 10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AB070C(v79, type metadata accessor for MailboxTaskLogger);
          v268 = v185;
          v269 = v184;
          v186 = sub_1B0E44BA8();
          v188 = sub_1B0399D64(v186, v187, &v270);

          *(v180 + 43) = v188;
          *(v180 + 51) = 2048;
          v189 = *(*(v183 + 8) + 16);
          sub_1B0AB070C(v183, type metadata accessor for MessageBatches);
          *(v180 + 53) = v189;
          *(v180 + 61) = 2082;
          v190 = *(v177 + 8);
          v191 = *(v190 + 16);
          if (v191 <= 0xA)
          {
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          }

          else
          {
            sub_1B0B21C30(*(v177 + 8), v190 + 32, 0, 0x15uLL);
            v190 = v192;
            v191 = *(v192 + 16);
          }

          v215 = v262;
          if (v191)
          {
            v261 = v180;
            v268 = MEMORY[0x1E69E7CC0];
            sub_1B0A18B88(0, v191, 0);
            v216 = 32;
            v217 = v268;
            do
            {
              v267 = *(v190 + v216);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
              v218 = sub_1B0E44B88();
              v220 = v219;
              v268 = v217;
              v222 = *(v217 + 16);
              v221 = *(v217 + 24);
              if (v222 >= v221 >> 1)
              {
                sub_1B0A18B88(v221 > 1, v222 + 1, 1);
                v217 = v268;
              }

              *(v217 + 16) = v222 + 1;
              v223 = v217 + 16 * v222;
              *(v223 + 32) = v218;
              *(v223 + 40) = v220;
              v216 += 8;
              --v191;
            }

            while (v191);

            v177 = v249;
            v180 = v261;
            v215 = v262;
          }

          else
          {

            v217 = MEMORY[0x1E69E7CC0];
          }

          v268 = v217;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
          sub_1B03B11C4();
          v229 = sub_1B0E448E8();
          v231 = v230;

          sub_1B0AB070C(v177, type metadata accessor for MessageBatches);
          v232 = sub_1B0399D64(v229, v231, &v270);

          *(v180 + 63) = v232;
          *(v180 + 71) = 2082;
          v268 = __PAIR64__(v258, v263);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
          v233 = MessageIdentifierRange.debugDescription.getter();
          v235 = sub_1B0399D64(v233, v234, &v270);

          *(v180 + 73) = v235;
          _os_log_impl(&dword_1B0389000, v215, v260, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. %ld message batch(es): %{public}s (window of interest: %{public}s)", v180, 0x51u);
          v236 = v259;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v236, -1, -1);
          MEMORY[0x1B272C230](v180, -1, -1);

          goto LABEL_79;
        }

        sub_1B0AB070C(v69, type metadata accessor for MessageBatches);
        sub_1B0AB070C(v84, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v177, type metadata accessor for MessageBatches);
        v150 = v79;
      }
    }

    else
    {
      v113 = v258;
      v114 = v254;
      sub_1B0AB06A4(v258, v254, type metadata accessor for MailboxTaskLogger);
      v115 = v253;
      sub_1B0AB06A4(v113, v253, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v116 = sub_1B0E43988();
      v117 = sub_1B0E45908();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v270 = v119;
        LODWORD(v118->isa) = 68159235;
        HIDWORD(v118->isa) = 2;
        LOWORD(v118[1].isa) = 256;
        v120 = v255;
        v121 = v115 + *(v255 + 20);
        BYTE2(v118[1].isa) = *v121;
        *(&v118[1].isa + 3) = 2082;
        v122 = v114 + *(v120 + 20);
        *(&v118[1].isa + 5) = sub_1B0399D64(*(v122 + 8), *(v122 + 16), &v270);
        *(&v118[2].isa + 5) = 1040;
        *(&v118[2].isa + 7) = 2;
        *(&v118[3].isa + 3) = 512;
        LOWORD(v121) = *(v121 + 24);
        sub_1B0AB070C(v115, type metadata accessor for MailboxTaskLogger);
        *(&v118[3].isa + 5) = v121;
        *(&v118[3].isa + 7) = 2160;
        *(&v118[4].isa + 1) = 0x786F626C69616DLL;
        *(&v118[5].isa + 1) = 2085;
        v123 = *(v122 + 32);
        LODWORD(v122) = *(v122 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v114, type metadata accessor for MailboxTaskLogger);
        v268 = v123;
        v269 = v122;
        v124 = sub_1B0E44BA8();
        v126 = sub_1B0399D64(v124, v125, &v270);

        *(&v118[5].isa + 3) = v126;
        _os_log_impl(&dword_1B0389000, v116, v117, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. No message batches.", v118, 0x33u);
        swift_arrayDestroy();
        v127 = v119;
LABEL_77:
        MEMORY[0x1B272C230](v127, -1, -1);
        v206 = v118;
LABEL_78:
        MEMORY[0x1B272C230](v206, -1, -1);

        goto LABEL_79;
      }

      sub_1B0AB070C(v115, type metadata accessor for MailboxTaskLogger);

      v150 = v114;
    }

    v193 = type metadata accessor for MailboxTaskLogger;
    goto LABEL_57;
  }

  v55 = v54;
  v258 = a1;
  v255 = v5;
  v266 = v2;
  result = type metadata accessor for DetermineMessageBatches(0);
  v257 = result;
  v57 = *(result + 60);
  v265 = v1;
  v58 = v1 + v57;
  v59 = *(v1 + v57);
  if (*(v59 + 16))
  {
    v60 = 1;
    while (1)
    {
      result = sub_1B0ADFFE8(v60);
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
        v3 = *(v265 + 144);
        v63 = sub_1B0AADE0C();
        if (*(v58 + 8))
        {
          sub_1B0AB1754();
          swift_allocError();
          return swift_willThrow();
        }

        v65 = v64;
        v66 = v63;
        v67 = sub_1B0AB1524(v59);
        v68 = v67;
        if (v65)
        {
          v69 = v263;
          goto LABEL_23;
        }

        v69 = v263;
        if (v66 >= *(v67 + 2))
        {
          goto LABEL_23;
        }

        v1 = sub_1B0B0E178(v66, v67);
        if ((v72 & 1) == 0)
        {
          goto LABEL_15;
        }

        v5 = v72;
        v239 = v71;
        v238 = v70;
        sub_1B0E46AD8();
        swift_unknownObjectRetain_n();
        v74 = swift_dynamicCastClass();
        if (!v74)
        {
          swift_unknownObjectRelease();
          v74 = MEMORY[0x1E69E7CC0];
        }

        v75 = *(v74 + 16);

        if (!__OFSUB__(v5 >> 1, v239))
        {
          if (v75 != (v5 >> 1) - v239)
          {
            goto LABEL_85;
          }

          v76 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v69 = v263;
          v68 = v76;
          if (!v76)
          {
            v68 = MEMORY[0x1E69E7CC0];
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

void sub_1B0AADD60()
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

uint64_t sub_1B0AADE0C()
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

void sub_1B0AADE50(uint64_t a1, uint64_t a2)
{
  v89 = a1;
  v87 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v87);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v86 = (&v82 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v82 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v82 - v12;
  v14 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v82 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v82 - v24;
  v26 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
  v88 = v2;
  sub_1B0AB06A4(v2 + v26, v16, type metadata accessor for DetermineMessageBatches.TaskState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0AB424C(v16, v25, type metadata accessor for MessageBatches);
    sub_1B0AB06A4(a2, v13, type metadata accessor for MailboxTaskLogger);
    sub_1B0AB06A4(a2, v10, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0AB06A4(v25, v22, type metadata accessor for MessageBatches);
    v27 = v25;
    sub_1B0AB06A4(v25, v19, type metadata accessor for MessageBatches);
    v28 = sub_1B0E43988();
    v29 = sub_1B0E45908();
    v30 = v19;
    if (os_log_type_enabled(v28, v29))
    {
      v85 = v29;
      v86 = v28;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v93 = v32;
      *v31 = 68159747;
      *(v31 + 4) = 2;
      *(v31 + 8) = 256;
      v33 = v87;
      v34 = &v10[*(v87 + 20)];
      *(v31 + 10) = *v34;
      *(v31 + 11) = 2082;
      v35 = v13;
      v36 = &v13[*(v33 + 20)];
      *(v31 + 13) = sub_1B0399D64(*(v36 + 1), *(v36 + 2), &v93);
      *(v31 + 21) = 1040;
      *(v31 + 23) = 2;
      *(v31 + 27) = 512;
      LOWORD(v34) = *(v34 + 12);
      sub_1B0AB070C(v10, type metadata accessor for MailboxTaskLogger);
      *(v31 + 29) = v34;
      *(v31 + 31) = 2160;
      *(v31 + 33) = 0x786F626C69616DLL;
      *(v31 + 41) = 2085;
      v37 = *(v36 + 4);
      LODWORD(v36) = *(v36 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AB070C(v35, type metadata accessor for MailboxTaskLogger);
      v91 = v37;
      v92 = v36;
      v38 = sub_1B0E44BA8();
      v40 = sub_1B0399D64(v38, v39, &v93);

      *(v31 + 43) = v40;
      *(v31 + 51) = 2048;
      v41 = *(*(v22 + 1) + 16);
      sub_1B0AB070C(v22, type metadata accessor for MessageBatches);
      *(v31 + 53) = v41;
      *(v31 + 61) = 2082;
      v87 = v30;
      v42 = *(v30 + 8);
      v43 = *(v42 + 16);
      v44 = MEMORY[0x1E69E7CC0];
      v45 = v27;
      if (v43)
      {
        v84 = v32;
        v91 = MEMORY[0x1E69E7CC0];
        sub_1B0A18B88(0, v43, 0);
        v44 = v91;
        v46 = (v42 + 32);
        do
        {
          v90 = *v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
          v47 = sub_1B0E44B88();
          v91 = v44;
          v50 = *(v44 + 2);
          v49 = *(v44 + 3);
          if (v50 >= v49 >> 1)
          {
            v83 = v47;
            v52 = v48;
            sub_1B0A18B88(v49 > 1, v50 + 1, 1);
            v48 = v52;
            v47 = v83;
            v44 = v91;
          }

          *(v44 + 2) = v50 + 1;
          v51 = &v44[16 * v50];
          *(v51 + 4) = v47;
          *(v51 + 5) = v48;
          ++v46;
          --v43;
        }

        while (v43);
        v32 = v84;
      }

      v91 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      sub_1B03B11C4();
      v71 = sub_1B0E448E8();
      v73 = v72;

      sub_1B0AB070C(v87, type metadata accessor for MessageBatches);
      v74 = sub_1B0399D64(v71, v73, &v93);

      *(v31 + 63) = v74;
      v75 = v86;
      _os_log_impl(&dword_1B0389000, v86, v85, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created %ld message batches: %{public}s", v31, 0x47u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v32, -1, -1);
      MEMORY[0x1B272C230](v31, -1, -1);

      v68 = v89;
    }

    else
    {
      sub_1B0AB070C(v22, type metadata accessor for MessageBatches);
      sub_1B0AB070C(v10, type metadata accessor for MailboxTaskLogger);

      sub_1B0AB070C(v13, type metadata accessor for MailboxTaskLogger);
      v67 = sub_1B0AB070C(v19, type metadata accessor for MessageBatches);
      v68 = v89;
      v45 = v27;
    }

    v76 = *(v88 + 120);
    v77 = *(v88 + 128);
    MEMORY[0x1EEE9AC00](v67);
    *(&v82 - 2) = v45;
    if (*(v68 + 192) == 1)
    {
      v79 = *(v68 + 176);
      v78 = *(v68 + 184);
      v91 = *(v68 + 168);
      v80 = v91;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B2BE00(&v91, v76, v77, 0, sub_1B0AB076C);
      sub_1B03BB638(v80, v79, v78, 1);
      v81 = v91;
      *(v68 + 176) = 0;
      *(v68 + 184) = 0;
      *(v68 + 168) = v81;
      *(v68 + 192) = 1;
    }

    v70 = type metadata accessor for MessageBatches;
    v69 = v45;
  }

  else
  {
    sub_1B0AB070C(v16, type metadata accessor for DetermineMessageBatches.TaskState);
    v53 = v86;
    sub_1B0AB06A4(a2, v86, type metadata accessor for MailboxTaskLogger);
    sub_1B0AB06A4(a2, v5, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v54 = sub_1B0E43988();
    v55 = sub_1B0E458E8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v93 = v57;
      *v56 = 68159235;
      *(v56 + 4) = 2;
      *(v56 + 8) = 256;
      v58 = v87;
      v59 = &v5[*(v87 + 20)];
      *(v56 + 10) = *v59;
      *(v56 + 11) = 2082;
      v60 = v53 + *(v58 + 20);
      *(v56 + 13) = sub_1B0399D64(*(v60 + 1), *(v60 + 2), &v93);
      *(v56 + 21) = 1040;
      *(v56 + 23) = 2;
      *(v56 + 27) = 512;
      v61 = *(v59 + 12);
      sub_1B0AB070C(v5, type metadata accessor for MailboxTaskLogger);
      *(v56 + 29) = v61;
      *(v56 + 31) = 2160;
      *(v56 + 33) = 0x786F626C69616DLL;
      *(v56 + 41) = 2085;
      v62 = *(v60 + 4);
      v63 = *(v60 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AB070C(v53, type metadata accessor for MailboxTaskLogger);
      v91 = v62;
      v92 = v63;
      v64 = sub_1B0E44BA8();
      v66 = sub_1B0399D64(v64, v65, &v93);

      *(v56 + 43) = v66;
      _os_log_impl(&dword_1B0389000, v54, v55, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to determine message batches", v56, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v57, -1, -1);
      MEMORY[0x1B272C230](v56, -1, -1);

      return;
    }

    sub_1B0AB070C(v5, type metadata accessor for MailboxTaskLogger);

    v69 = v53;
    v70 = type metadata accessor for MailboxTaskLogger;
  }

  sub_1B0AB070C(v69, v70);
}

uint64_t sub_1B0AAE7D8(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for MailboxSyncState(0) + 60);
  sub_1B0398EFC(a1 + v4, &qword_1EB6E4010, &unk_1B0EC6220);
  sub_1B0AB06A4(a2, a1 + v4, type metadata accessor for MessageBatches);
  v5 = type metadata accessor for MessageBatches(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 0, 1, v5);
}

double sub_1B0AAE8A0@<D0>(uint64_t a1@<X8>)
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
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

double sub_1B0AAE8F4()
{
  if (qword_1EB6DD7A0 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0AAE954@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0AB06A4(v4 + *(a3 + 56), v11, type metadata accessor for DetermineMessageBatches.TaskState);
  LODWORD(a3) = swift_getEnumCaseMultiPayload();
  sub_1B0AB070C(v11, type metadata accessor for DetermineMessageBatches.TaskState);
  if (a3 == 2)
  {
    if (*(v4 + 137) == 2)
    {
      return sub_1B0AAA978(a2, a4);
    }

    else
    {
      return sub_1B0AAAB14(a1, a2, *(v4 + 88), *(v4 + 137) & 0x101, a4);
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4028, &qword_1B0EC2AF8);
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_1B0AAEAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  result = sub_1B0AB17A8(a1, a2, a3, a4, a5);
  *a6 = result;
  a6[1] = v8;
  return result;
}

char *sub_1B0AAEB70(uint64_t a1, uint64_t a2)
{
  if (a1 < 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = a2 - 1;
  v5 = MEMORY[0x1E69E7CC0];
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
      v5 = sub_1B0AFF8A0(0, *(v5 + 2) + 1, 1, v5);
    }

    v10 = *(v5 + 2);
    v9 = *(v5 + 3);
    if (v10 >= v9 >> 1)
    {
      v5 = sub_1B0AFF8A0((v9 > 1), v10 + 1, 1, v5);
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
  v5 = sub_1B0AFF8A0(0, *(v5 + 2) + 1, 1, v5);
LABEL_15:
  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = sub_1B0AFF8A0((v12 > 1), v13 + 1, 1, v5);
  }

  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = v6;
  *(v14 + 5) = a1;
  return v5;
}

uint64_t sub_1B0AAECE0()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0B0A704(v3, v1);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AAED78(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  sub_1B0B0A704(v4, v2);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AAEDD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1B0B73554(*a1, *a2) & ~(v2 ^ v3) & 1;
}

unint64_t sub_1B0AAEE1C()
{
  result = qword_1EB6E4008;
  if (!qword_1EB6E4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4008);
  }

  return result;
}

unint64_t sub_1B0AAEE70()
{
  result = qword_1EB6DD798;
  if (!qword_1EB6DD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD798);
  }

  return result;
}

unint64_t sub_1B0AAEEC8()
{
  result = qword_1EB6DD790;
  if (!qword_1EB6DD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD790);
  }

  return result;
}

unint64_t sub_1B0AAEF1C(uint64_t a1)
{
  result = sub_1B0AAEF44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AAEF44()
{
  result = qword_1EB6DD778;
  if (!qword_1EB6DD778)
  {
    type metadata accessor for DetermineMessageBatches(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD778);
  }

  return result;
}

void sub_1B0AAEF9C(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v198 = a1;
  v199 = a4;
  v195 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v195);
  v192 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v193 = &v188 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v189 = &v188 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v191 = &v188 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v188 = &v188 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v190 = &v188 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v194 = &v188 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v188 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v188 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v188 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v188 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v188 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v188 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v188 - v39;
  v196 = v4;
  v197 = a3;
  v41 = *v4;
  if (*(v41 + 16) && (v42 = sub_1B0ADFFE8(a3), (v43 & 1) != 0))
  {
    v44 = *(v41 + 56) + 12 * v42;
    if (*(v44 + 8))
    {
      if (a2)
      {
        return;
      }

      v45 = v199;
      sub_1B0AB06A4(v199, v28, type metadata accessor for MailboxTaskLogger);
      sub_1B0AB06A4(v45, v25, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v46 = sub_1B0E43988();
      v47 = sub_1B0E45908();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v203 = v49;
        *v48 = 68159747;
        *(v48 + 4) = 2;
        *(v48 + 8) = 256;
        v50 = v195;
        v51 = &v25[*(v195 + 20)];
        *(v48 + 10) = *v51;
        *(v48 + 11) = 2082;
        v52 = &v28[*(v50 + 20)];
        *(v48 + 13) = sub_1B0399D64(*(v52 + 1), *(v52 + 2), &v203);
        *(v48 + 21) = 1040;
        *(v48 + 23) = 2;
        *(v48 + 27) = 512;
        LOWORD(v51) = *(v51 + 12);
        sub_1B0AB070C(v25, type metadata accessor for MailboxTaskLogger);
        *(v48 + 29) = v51;
        *(v48 + 31) = 2160;
        *(v48 + 33) = 0x786F626C69616DLL;
        *(v48 + 41) = 2085;
        v53 = *(v52 + 4);
        v54 = *(v52 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v28, type metadata accessor for MailboxTaskLogger);
        v201 = v53;
        v202 = v54;
        v55 = sub_1B0E44BA8();
        v57 = sub_1B0399D64(v55, v56, &v203);

        *(v48 + 43) = v57;
        *(v48 + 51) = 2048;
        v58 = v197;
        v59 = v198;
        *(v48 + 53) = v197;
        *(v48 + 61) = 2082;
        v201 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AD0, &qword_1B0EA3A70);
        v60 = sub_1B0E449D8();
        v62 = sub_1B0399D64(v60, v61, &v203);

        *(v48 + 63) = v62;
        _os_log_impl(&dword_1B0389000, v46, v47, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response NIL and %{public}s", v48, 0x47u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v49, -1, -1);
        MEMORY[0x1B272C230](v48, -1, -1);
      }

      else
      {
        sub_1B0AB070C(v25, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v28, type metadata accessor for MailboxTaskLogger);
        v58 = v197;
        v59 = v198;
      }

      v96 = v196;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v201 = *v96;
      v98 = v59;
      v99 = v58;
      goto LABEL_16;
    }

    v100 = *v44;
    v101 = HIDWORD(*v44);
    if (a2)
    {
      v102 = v199;
      v103 = v22;
      sub_1B0AB06A4(v199, v22, type metadata accessor for MailboxTaskLogger);
      v104 = v194;
      sub_1B0AB06A4(v102, v194, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v105 = sub_1B0E43988();
      v106 = sub_1B0E45908();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v203 = v108;
        *v107 = 68159747;
        *(v107 + 4) = 2;
        *(v107 + 8) = 256;
        v109 = v195;
        v110 = v104 + *(v195 + 20);
        *(v107 + 10) = *v110;
        *(v107 + 11) = 2082;
        v111 = *(v109 + 20);
        v199 = v100;
        v112 = v103;
        v113 = &v103[v111];
        *(v107 + 13) = sub_1B0399D64(*(v113 + 1), *(v113 + 2), &v203);
        *(v107 + 21) = 1040;
        *(v107 + 23) = 2;
        *(v107 + 27) = 512;
        LOWORD(v110) = *(v110 + 24);
        sub_1B0AB070C(v104, type metadata accessor for MailboxTaskLogger);
        *(v107 + 29) = v110;
        *(v107 + 31) = 2160;
        *(v107 + 33) = 0x786F626C69616DLL;
        *(v107 + 41) = 2085;
        v114 = *(v113 + 4);
        LODWORD(v110) = *(v113 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v112, type metadata accessor for MailboxTaskLogger);
        v201 = v114;
        v202 = v110;
        v115 = sub_1B0E44BA8();
        LODWORD(v114) = v101;
        v117 = sub_1B0399D64(v115, v116, &v203);

        *(v107 + 43) = v117;
        *(v107 + 51) = 2048;
        *(v107 + 53) = v197;
        *(v107 + 61) = 2082;
        v201 = __PAIR64__(v114, v199);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v118 = MessageIdentifierRange.debugDescription.getter();
        v120 = sub_1B0399D64(v118, v119, &v203);

        *(v107 + 63) = v120;
        _os_log_impl(&dword_1B0389000, v105, v106, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response NIL and %{public}s", v107, 0x47u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v108, -1, -1);
        v121 = v107;
LABEL_36:
        MEMORY[0x1B272C230](v121, -1, -1);

        return;
      }

      sub_1B0AB070C(v104, type metadata accessor for MailboxTaskLogger);

      v146 = v103;
      goto LABEL_40;
    }

    v122 = v198;
    v123 = HIDWORD(v198);
    if (v100 == v198 && v123 == v101)
    {
      v147 = v199;
      v148 = v193;
      sub_1B0AB06A4(v199, v193, type metadata accessor for MailboxTaskLogger);
      v149 = v192;
      sub_1B0AB06A4(v147, v192, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v105 = sub_1B0E43988();
      v150 = sub_1B0E458D8();
      if (os_log_type_enabled(v105, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v203 = v152;
        *v151 = 68159491;
        *(v151 + 4) = 2;
        *(v151 + 8) = 256;
        v153 = v195;
        v154 = v149 + *(v195 + 20);
        *(v151 + 10) = *v154;
        *(v151 + 11) = 2082;
        v155 = v148 + *(v153 + 20);
        *(v151 + 13) = sub_1B0399D64(*(v155 + 8), *(v155 + 16), &v203);
        *(v151 + 21) = 1040;
        *(v151 + 23) = 2;
        *(v151 + 27) = 512;
        LOWORD(v154) = *(v154 + 24);
        sub_1B0AB070C(v149, type metadata accessor for MailboxTaskLogger);
        *(v151 + 29) = v154;
        *(v151 + 31) = 2160;
        *(v151 + 33) = 0x786F626C69616DLL;
        *(v151 + 41) = 2085;
        v156 = *(v155 + 32);
        LODWORD(v155) = *(v155 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v148, type metadata accessor for MailboxTaskLogger);
        v201 = v156;
        v202 = v155;
        v157 = sub_1B0E44BA8();
        v159 = sub_1B0399D64(v157, v158, &v203);

        *(v151 + 43) = v159;
        *(v151 + 51) = 2048;
        *(v151 + 53) = v197;
        _os_log_impl(&dword_1B0389000, v105, v150, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Duplicate response for batch #%ld is identical.", v151, 0x3Du);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v152, -1, -1);
        v121 = v151;
        goto LABEL_36;
      }

      sub_1B0AB070C(v149, type metadata accessor for MailboxTaskLogger);

      v146 = v148;
LABEL_40:
      sub_1B0AB070C(v146, type metadata accessor for MailboxTaskLogger);
      return;
    }

    if (HIDWORD(v198) >= v100 && v101 >= v198)
    {
      v160 = v199;
      v161 = v190;
      sub_1B0AB06A4(v199, v190, type metadata accessor for MailboxTaskLogger);
      v162 = v188;
      sub_1B0AB06A4(v160, v188, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v163 = sub_1B0E43988();
      v164 = sub_1B0E45908();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v194 = v101;
        v166 = v165;
        v199 = swift_slowAlloc();
        v203 = v199;
        *v166 = 68160003;
        *(v166 + 4) = 2;
        *(v166 + 8) = 256;
        v167 = v195;
        v168 = v162 + *(v195 + 20);
        *(v166 + 10) = *v168;
        *(v166 + 11) = 2082;
        v169 = v161 + *(v167 + 20);
        *(v166 + 13) = sub_1B0399D64(*(v169 + 8), *(v169 + 16), &v203);
        *(v166 + 21) = 1040;
        *(v166 + 23) = 2;
        *(v166 + 27) = 512;
        LOWORD(v168) = *(v168 + 24);
        sub_1B0AB070C(v162, type metadata accessor for MailboxTaskLogger);
        *(v166 + 29) = v168;
        *(v166 + 31) = 2160;
        *(v166 + 33) = 0x786F626C69616DLL;
        *(v166 + 41) = 2085;
        v170 = *(v169 + 32);
        LODWORD(v169) = *(v169 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v161, type metadata accessor for MailboxTaskLogger);
        v201 = v170;
        v202 = v169;
        v171 = sub_1B0E44BA8();
        v173 = sub_1B0399D64(v171, v172, &v203);

        *(v166 + 43) = v173;
        *(v166 + 51) = 2048;
        v174 = v197;
        *(v166 + 53) = v197;
        *(v166 + 61) = 2082;
        v201 = __PAIR64__(v194, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v175 = MessageIdentifierRange.debugDescription.getter();
        v177 = sub_1B0399D64(v175, v176, &v203);

        *(v166 + 63) = v177;
        v122 = v198;
        *(v166 + 71) = 2082;
        v201 = __PAIR64__(v123, v122);
        v178 = MessageIdentifierRange.debugDescription.getter();
        v180 = sub_1B0399D64(v178, v179, &v203);

        *(v166 + 73) = v180;
        _os_log_impl(&dword_1B0389000, v163, v164, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response %{public}s and %{public}s", v166, 0x51u);
        v181 = v199;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v181, -1, -1);
        v182 = v166;
        v101 = v194;
        MEMORY[0x1B272C230](v182, -1, -1);
      }

      else
      {
        sub_1B0AB070C(v162, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v161, type metadata accessor for MailboxTaskLogger);
        v174 = v197;
      }

      if (v122 >= v100)
      {
        v183 = v100;
      }

      else
      {
        v183 = v122;
      }

      LODWORD(v203) = v183;
      if (v123 <= v101)
      {
        v184 = v101;
      }

      else
      {
        v184 = v123;
      }

      v200 = v184;
      sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v203, &v200, &type metadata for UID, &v201);
      v185 = v201;
      v186 = v196;
      v187 = swift_isUniquelyReferenced_nonNull_native();
      v203 = *v186;
      sub_1B0A9C268(v185, 0, v174, v187);
      *v186 = v203;
    }

    else
    {
      v194 = HIDWORD(*v44);
      v126 = v199;
      v127 = v191;
      sub_1B0AB06A4(v199, v191, type metadata accessor for MailboxTaskLogger);
      v128 = v189;
      sub_1B0AB06A4(v126, v189, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v129 = sub_1B0E43988();
      v130 = sub_1B0E458E8();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v203 = v199;
        *v131 = 68160003;
        *(v131 + 4) = 2;
        *(v131 + 8) = 256;
        v132 = v195;
        v133 = v128 + *(v195 + 20);
        *(v131 + 10) = *v133;
        *(v131 + 11) = 2082;
        v134 = v127 + *(v132 + 20);
        *(v131 + 13) = sub_1B0399D64(*(v134 + 8), *(v134 + 16), &v203);
        *(v131 + 21) = 1040;
        *(v131 + 23) = 2;
        *(v131 + 27) = 512;
        LOWORD(v133) = *(v133 + 24);
        sub_1B0AB070C(v128, type metadata accessor for MailboxTaskLogger);
        *(v131 + 29) = v133;
        *(v131 + 31) = 2160;
        *(v131 + 33) = 0x786F626C69616DLL;
        *(v131 + 41) = 2085;
        v135 = *(v134 + 32);
        LODWORD(v134) = *(v134 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v127, type metadata accessor for MailboxTaskLogger);
        v201 = v135;
        v202 = v134;
        v136 = sub_1B0E44BA8();
        v138 = sub_1B0399D64(v136, v137, &v203);

        *(v131 + 43) = v138;
        *(v131 + 51) = 2048;
        *(v131 + 53) = v197;
        *(v131 + 61) = 2082;
        v201 = __PAIR64__(v194, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v139 = MessageIdentifierRange.debugDescription.getter();
        v141 = sub_1B0399D64(v139, v140, &v203);

        *(v131 + 63) = v141;
        *(v131 + 71) = 2082;
        v201 = __PAIR64__(v123, v198);
        v142 = MessageIdentifierRange.debugDescription.getter();
        v144 = sub_1B0399D64(v142, v143, &v203);

        *(v131 + 73) = v144;
        _os_log_impl(&dword_1B0389000, v129, v130, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response %{public}s and %{public}s: Should overlap, but they do not.", v131, 0x51u);
        v145 = v199;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v145, -1, -1);
        MEMORY[0x1B272C230](v131, -1, -1);
      }

      else
      {
        sub_1B0AB070C(v128, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v127, type metadata accessor for MailboxTaskLogger);
      }

      *(v196 + 8) = 1;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v76 = v199;
      sub_1B0AB06A4(v199, v34, type metadata accessor for MailboxTaskLogger);
      sub_1B0AB06A4(v76, v31, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v77 = sub_1B0E43988();
      v78 = sub_1B0E458D8();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v203 = v80;
        *v79 = 68159747;
        *(v79 + 4) = 2;
        *(v79 + 8) = 256;
        v81 = v195;
        v82 = &v31[*(v195 + 20)];
        *(v79 + 10) = *v82;
        *(v79 + 11) = 2082;
        v83 = &v34[*(v81 + 20)];
        *(v79 + 13) = sub_1B0399D64(*(v83 + 1), *(v83 + 2), &v203);
        *(v79 + 21) = 1040;
        *(v79 + 23) = 2;
        *(v79 + 27) = 512;
        LOWORD(v82) = *(v82 + 12);
        sub_1B0AB070C(v31, type metadata accessor for MailboxTaskLogger);
        *(v79 + 29) = v82;
        *(v79 + 31) = 2160;
        *(v79 + 33) = 0x786F626C69616DLL;
        *(v79 + 41) = 2085;
        v84 = *(v83 + 4);
        LODWORD(v82) = *(v83 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v34, type metadata accessor for MailboxTaskLogger);
        v201 = v84;
        v202 = v82;
        v85 = sub_1B0E44BA8();
        v87 = sub_1B0399D64(v85, v86, &v203);

        *(v79 + 43) = v87;
        *(v79 + 51) = 2048;
        v88 = v197;
        *(v79 + 53) = v197;
        *(v79 + 61) = 2082;
        v89 = v198;
        v201 = v198;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v90 = MessageIdentifierRange.debugDescription.getter();
        v92 = sub_1B0399D64(v90, v91, &v203);

        *(v79 + 63) = v92;
        _os_log_impl(&dword_1B0389000, v77, v78, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld is %{public}s", v79, 0x47u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v80, -1, -1);
        MEMORY[0x1B272C230](v79, -1, -1);
      }

      else
      {
        sub_1B0AB070C(v31, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v34, type metadata accessor for MailboxTaskLogger);
        v88 = v197;
        v89 = v198;
      }

      v96 = v196;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v201 = *v96;
      v98 = v89;
      v99 = v88;
LABEL_16:
      sub_1B0A9C268(v98, 0, v99, isUniquelyReferenced_nonNull_native);
      *v96 = v201;
      return;
    }

    v63 = v199;
    sub_1B0AB06A4(v199, v40, type metadata accessor for MailboxTaskLogger);
    sub_1B0AB06A4(v63, v37, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v64 = sub_1B0E43988();
    v65 = sub_1B0E458D8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v203 = v67;
      *v66 = 68159491;
      *(v66 + 4) = 2;
      *(v66 + 8) = 256;
      v68 = v195;
      v69 = &v37[*(v195 + 20)];
      *(v66 + 10) = *v69;
      *(v66 + 11) = 2082;
      v70 = &v40[*(v68 + 20)];
      *(v66 + 13) = sub_1B0399D64(*(v70 + 1), *(v70 + 2), &v203);
      *(v66 + 21) = 1040;
      *(v66 + 23) = 2;
      *(v66 + 27) = 512;
      LOWORD(v69) = *(v69 + 12);
      sub_1B0AB070C(v37, type metadata accessor for MailboxTaskLogger);
      *(v66 + 29) = v69;
      *(v66 + 31) = 2160;
      *(v66 + 33) = 0x786F626C69616DLL;
      *(v66 + 41) = 2085;
      v71 = *(v70 + 4);
      LODWORD(v69) = *(v70 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AB070C(v40, type metadata accessor for MailboxTaskLogger);
      v201 = v71;
      v202 = v69;
      v72 = sub_1B0E44BA8();
      v74 = sub_1B0399D64(v72, v73, &v203);

      *(v66 + 43) = v74;
      *(v66 + 51) = 2048;
      v75 = v197;
      *(v66 + 53) = v197;
      _os_log_impl(&dword_1B0389000, v64, v65, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld is empty", v66, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v67, -1, -1);
      MEMORY[0x1B272C230](v66, -1, -1);
    }

    else
    {
      sub_1B0AB070C(v37, type metadata accessor for MailboxTaskLogger);

      sub_1B0AB070C(v40, type metadata accessor for MailboxTaskLogger);
      v75 = v197;
    }

    v93 = v198;
    v94 = v196;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v201 = *v94;
    sub_1B0A9C268(v93, 1, v75, v95);
    *v94 = v201;
  }
}

uint64_t sub_1B0AB0520(uint64_t (*a1)(void))
{
  v1 = *(a1() + 16);
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B0A18B88(0, v1, 0);
    v2 = 32;
    v3 = v13;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v4 = sub_1B0E44B88();
      v14 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = v4;
        v10 = v5;
        sub_1B0A18B88(v6 > 1, v7 + 1, 1);
        v5 = v10;
        v4 = v9;
        v3 = v14;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 16 * v7;
      *(v8 + 32) = v4;
      *(v8 + 40) = v5;
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v11 = sub_1B0E448E8();

  return v11;
}

uint64_t sub_1B0AB06A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AB070C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1B0AB0774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v21 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4058, &qword_1B0EC2B38);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  v17 = *(v16 + 56);
  sub_1B0AB06A4(a1, &v21 - v14, type metadata accessor for DetermineMessageBatches.TaskState);
  sub_1B0AB06A4(a2, &v15[v17], type metadata accessor for DetermineMessageBatches.TaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B0AB06A4(v15, v12, type metadata accessor for DetermineMessageBatches.TaskState);
    if (!swift_getEnumCaseMultiPayload())
    {
      v19 = *v12 == *&v15[v17];
      goto LABEL_7;
    }

LABEL_11:
    sub_1B0398EFC(v15, &qword_1EB6E4058, &qword_1B0EC2B38);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B0AB070C(v15, type metadata accessor for DetermineMessageBatches.TaskState);
      return 1;
    }

    goto LABEL_11;
  }

  sub_1B0AB06A4(v15, v9, type metadata accessor for DetermineMessageBatches.TaskState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0AB070C(v9, type metadata accessor for MessageBatches);
    goto LABEL_11;
  }

  sub_1B0AB424C(&v15[v17], v6, type metadata accessor for MessageBatches);
  v19 = sub_1B03D34B0(v9, v6);
  sub_1B0AB070C(v6, type metadata accessor for MessageBatches);
  sub_1B0AB070C(v9, type metadata accessor for MessageBatches);
LABEL_7:
  sub_1B0AB070C(v15, type metadata accessor for DetermineMessageBatches.TaskState);
  return v19;
}

char *sub_1B0AB0A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 56);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    if (*v2 == 1)
    {
      v7 = *(v2 - 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1B0AFF8A0(0, *(v3 + 2) + 1, 1, v3);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_1B0AFF8A0((v4 > 1), v5 + 1, 1, v3);
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

uint64_t sub_1B0AB0B54(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = a2;
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0AEAF3C(a1 & 1, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_1B0AB06A4(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0AB424C(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AB070C(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B0AB070C(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
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

uint64_t sub_1B0AB0D90(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = a2;
  v5 = a1;
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0AEB130(v5, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_1B0AB06A4(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0AB424C(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AB070C(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B0AB070C(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
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

uint64_t sub_1B0AB0FCC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TaskHistory.Running(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = Tag.init(_:)(a1, a2, v15);
  if (v17)
  {
    return 0;
  }

  v18 = v16;
  v38 = a4;
  v39 = v11;
  v19 = *(a3 + 16);
  v40 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v19)
  {
LABEL_20:

    return 0;
  }

  v20 = v18;
  v21 = HIDWORD(v18);
  v22 = v40 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v23 = *(v9 + 72);
  while (1)
  {
    sub_1B0AB06A4(v22, v14, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B0AB070C(v14, type metadata accessor for TaskHistory.Running);
LABEL_5:
    v22 += v23;
    if (!--v19)
    {
      goto LABEL_20;
    }
  }

  v24 = *v14;
  v25 = *(v14 + 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
  sub_1B0AB070C(&v14[*(v26 + 64)], type metadata accessor for ClientCommand);
  if (v24 != v20 || v25 != v21)
  {
    goto LABEL_5;
  }

  v28 = v39;
  sub_1B0AB06A4(v22, v39, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_25:
    result = sub_1B0AB070C(v28, type metadata accessor for TaskHistory.Running);
    __break(1u);
    return result;
  }

  v29 = *v28;
  v30 = v28;
  v31 = *(v28 + 4);
  v28 = *(v28 + 8);
  sub_1B0AB070C(v30 + *(v26 + 64), type metadata accessor for ClientCommand);

  if (v29 != v20)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v31 != v21)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = (v38 + 32);
  v33 = *(v38 + 16) + 1;
  while (--v33)
  {
    v34 = v32 + 8;
    v35 = *v32;
    v32 += 8;
    if (v35 == v28)
    {
      if ((*(v34 - 2) & 1) == 0)
      {
        return 0;
      }

      return *(v34 - 3);
    }
  }

  return 0;
}

void sub_1B0AB12B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v7 = v6;
  v33 = a6;
  v12 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v7 + 137);
  if (v15 == 2)
  {
    sub_1B0AB06A4(a1, v14, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      v16 = *v14;
      v17 = v14[1];
      v18 = v14[2];
      v19 = v14[5];
      v20 = sub_1B0AB0FCC(v16, v17, a2, a4);
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
          sub_1B0AAEF9C(v30, v28 >= v29, v26 + v28, v33);
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
      sub_1B0AB070C(v14, type metadata accessor for UntaggedResponse);
    }
  }

  else
  {
    if (sub_1B0AD49E0(0, 0, 0, a2, a3, a4))
    {
      v23 = v15 & 0x101;
      v24 = 0;
    }

    else
    {
      if ((sub_1B0AD49E0(1, 0, 0, a2, a3, a4) & 1) == 0)
      {
        return;
      }

      v23 = v15 & 0x101;
      v24 = 1;
    }

    v25 = v33;

    sub_1B0AAB2D0(v24, a1, v23, v25);
  }
}

char *sub_1B0AB1524(unint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
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
    v7 = sub_1B0ADFFE8(v5);
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
        v2 = sub_1B0B8C8B0(v2);
        v19 = *(v2 + 2);
        if (v19)
        {
LABEL_26:
          v20 = v19 - 1;
          v21 = *&v2[8 * v20 + 36];
          *(v2 + 2) = v20;
          v25 = v21;
          v26 = 1;
          sub_1B041C1E8();
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
          v23 = sub_1B0AFF55C((v19 > 1), v6, 1, v2);
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
      sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v26, &v25, &type metadata for UID, &v27);
      LODWORD(v10) = v27;
      LODWORD(v14) = HIDWORD(v27);
LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1B0AFF55C(0, *(v2 + 2) + 1, 1, v2);
      }

      v16 = *(v2 + 2);
      v15 = *(v2 + 3);
      v6 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v2 = sub_1B0AFF55C((v15 > 1), v16 + 1, 1, v2);
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

unint64_t sub_1B0AB1754()
{
  result = qword_1EB6E4020;
  if (!qword_1EB6E4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4020);
  }

  return result;
}

uint64_t sub_1B0AB17A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v91 = a5;
  v89 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v88 = &v88 - v9;
  v10 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v90);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v88 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v88 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v88 - v23;
  v25 = *(v5 + 72);
  if (v25 == 1 && (sub_1B0A9E828(1, a2, a3, v22) & 1) == 0)
  {
    v34 = *(v5 + 76);
    v89 = v5;
    v35 = *(v5 + 84);
    if (v35)
    {
      v36 = v91;
      sub_1B0AB06A4(v91, v17, type metadata accessor for MailboxTaskLogger);
      sub_1B0AB06A4(v36, v14, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v37 = sub_1B0E43988();
      v38 = sub_1B0E45908();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v95 = v40;
        *v39 = 68159235;
        v91 = v34;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        v41 = v90;
        v42 = &v14[*(v90 + 20)];
        *(v39 + 10) = *v42;
        *(v39 + 11) = 2082;
        v43 = &v17[*(v41 + 20)];
        *(v39 + 13) = sub_1B0399D64(*(v43 + 1), *(v43 + 2), &v95);
        *(v39 + 21) = 1040;
        *(v39 + 23) = 2;
        *(v39 + 27) = 512;
        LOWORD(v42) = *(v42 + 12);
        sub_1B0AB070C(v14, type metadata accessor for MailboxTaskLogger);
        *(v39 + 29) = v42;
        *(v39 + 31) = 2160;
        *(v39 + 33) = 0x786F626C69616DLL;
        *(v39 + 41) = 2085;
        v44 = *(v43 + 4);
        LODWORD(v43) = *(v43 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v17, type metadata accessor for MailboxTaskLogger);
        v92 = v44;
        v93 = v43;
        v45 = sub_1B0E44BA8();
        v47 = sub_1B0399D64(v45, v46, &v95);
        v34 = v91;

        *(v39 + 43) = v47;
        _os_log_impl(&dword_1B0389000, v37, v38, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Clearing window of interest", v39, 0x33u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v40, -1, -1);
        v48 = v39;
LABEL_23:
        MEMORY[0x1B272C230](v48, -1, -1);

LABEL_28:
        v71 = v89;
        v72 = swift_allocObject();
        v73 = *(v71 + 104);
        *(v72 + 16) = *(v71 + 96);
        *(v72 + 24) = v73;
        *(v72 + 32) = v34;
        *(v72 + 40) = v35;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return 1;
      }

      sub_1B0AB070C(v14, type metadata accessor for MailboxTaskLogger);

      v70 = v17;
    }

    else
    {
      v52 = v91;
      sub_1B0AB06A4(v91, v24, type metadata accessor for MailboxTaskLogger);
      sub_1B0AB06A4(v52, v20, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v37 = sub_1B0E43988();
      v53 = sub_1B0E45908();
      if (os_log_type_enabled(v37, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v95 = v55;
        *v54 = 68159491;
        *(v54 + 4) = 2;
        *(v54 + 8) = 256;
        v56 = v90;
        v57 = *(v90 + 20);
        v91 = v34;
        v58 = &v20[v57];
        *(v54 + 10) = v20[v57];
        *(v54 + 11) = 2082;
        v59 = &v24[*(v56 + 20)];
        *(v54 + 13) = sub_1B0399D64(*(v59 + 1), *(v59 + 2), &v95);
        *(v54 + 21) = 1040;
        *(v54 + 23) = 2;
        *(v54 + 27) = 512;
        LOWORD(v58) = *(v58 + 12);
        sub_1B0AB070C(v20, type metadata accessor for MailboxTaskLogger);
        *(v54 + 29) = v58;
        *(v54 + 31) = 2160;
        *(v54 + 33) = 0x786F626C69616DLL;
        *(v54 + 41) = 2085;
        v60 = *(v59 + 4);
        v61 = *(v59 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v24, type metadata accessor for MailboxTaskLogger);
        v92 = v60;
        v93 = v61;
        v62 = sub_1B0E44BA8();
        v64 = sub_1B0399D64(v62, v63, &v95);

        *(v54 + 43) = v64;
        *(v54 + 51) = 2082;
        v92 = v91;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v65 = MessageIdentifierRange.debugDescription.getter();
        v67 = sub_1B0399D64(v65, v66, &v95);

        *(v54 + 53) = v67;
        v34 = v91;
        _os_log_impl(&dword_1B0389000, v37, v53, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Setting window of interest: %{public}s", v54, 0x3Du);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v55, -1, -1);
        v48 = v54;
        goto LABEL_23;
      }

      sub_1B0AB070C(v20, type metadata accessor for MailboxTaskLogger);

      v70 = v24;
    }

    sub_1B0AB070C(v70, type metadata accessor for MailboxTaskLogger);
    goto LABEL_28;
  }

  v26 = type metadata accessor for DetermineMessageBatches(0);
  sub_1B0AB06A4(v5 + *(v26 + 56), v12, type metadata accessor for DetermineMessageBatches.TaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 4;
    }

    if ((sub_1B0A9E828(EnumCaseMultiPayload, a2, a3, v28) & 1) == 0)
    {
      v49 = swift_allocObject();
      v50 = *(v5 + 104);
      *(v49 + 16) = *(v5 + 96);
      *(v49 + 24) = v50;
      v51 = *(v5 + 84);
      *(v49 + 32) = *(v5 + 76);
      *(v49 + 40) = v51;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AB070C(v12, type metadata accessor for DetermineMessageBatches.TaskState);
      return 1;
    }

    if (*(v5 + 84) & 1) != 0 || (v30 = *(v5 + 76), (v30 & 0xFFFFFFFE) == 0) || (sub_1B0A9E828(3, a2, a3, v29))
    {
      sub_1B0AB070C(v12, type metadata accessor for DetermineMessageBatches.TaskState);
      return 4;
    }

    LODWORD(v95) = 1;
    LODWORD(v94) = v30 - 1;
    v75 = sub_1B041C1E8();
    v76 = v5;
    static MessageIdentifier.... infix(_:_:)(&v95, &v94, &type metadata for UID, &v92);
    v95 = v92;
    v94 = Range<>.init<A>(_:)(&v95, &type metadata for UID, v75);
    sub_1B03D06F8();
    v77 = v88;
    sub_1B0E46F08();
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3620, &qword_1B0EC26A0);
    swift_allocBox();
    v79 = *(v78 + 48);
    v80 = *(v76 + 104);
    *v81 = *(v76 + 96);
    v81[1] = v80;
    sub_1B03C60A4(v77, v81 + v79, &unk_1EB6E26C0, &unk_1B0E9DE10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AB070C(v12, type metadata accessor for DetermineMessageBatches.TaskState);
    return 3;
  }

  else
  {
    if ((v25 & 1) == 0)
    {
      if ((sub_1B0A9E828(0, a2, a3, v28) & 1) == 0)
      {
        v68 = swift_allocObject();
        v69 = *(v5 + 104);
        *(v68 + 16) = *(v5 + 96);
        *(v68 + 24) = v69;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return 0;
      }

      if ((sub_1B0B11FCC(0, v89, a2, a3) & 1) == 0)
      {
        return 4;
      }
    }

    result = sub_1B0A9E828(2, a2, a3, v28);
    if (result)
    {
      return 4;
    }

    v32 = *(v5 + 136);
    if (v32)
    {
      v33 = -1;
    }

    else
    {
      v74 = *(v5 + 132);
      v33 = v74 - 1;
      if (v74 == 1)
      {
        v33 = 1;
      }

      else if (!v74)
      {
        __break(1u);
        return result;
      }
    }

    v82 = *(v5 + 76);
    v83 = *(v5 + 84);
    if (v32 | v83)
    {
      v84 = 0;
    }

    else
    {
      v84 = v33 - HIDWORD(v82);
    }

    v85 = swift_allocObject();
    v86 = v85;
    v87 = *(v5 + 104);
    v85[2] = *(v5 + 96);
    v85[3] = v87;
    if (v83)
    {
      LODWORD(v92) = 1;
      LODWORD(v95) = v33;
      sub_1B041C1E8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      static MessageIdentifier.... infix(_:_:)(&v92, &v95, &type metadata for UID, (v86 + 4));
    }

    else
    {
      v85[4] = v82;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    v86[5] = *(v5 + 144);
    v86[6] = v84;
    return 2;
  }
}

void sub_1B0AB21A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v284 = a5;
  v291 = a1;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3628, &unk_1B0EA2080);
  MEMORY[0x1EEE9AC00](v276);
  v282 = (&v244 - v9);
  v10 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v285 = &v244 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v268 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v259 = &v244 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v270 = &v244 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v251 = &v244 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v265 = &v244 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v256 = &v244 - v20;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  MEMORY[0x1EEE9AC00](v253);
  v278 = &v244 - v21;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3630, &unk_1B0EC2AE0);
  MEMORY[0x1EEE9AC00](v283);
  v23 = (&v244 - v22);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v279);
  v263 = &v244 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v264 = &v244 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v271 = &v244 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v252 = &v244 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v254 = &v244 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v277 = &v244 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v260 = &v244 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v261 = &v244 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v267 = &v244 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v280 = &v244 - v42;
  v290 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  MEMORY[0x1EEE9AC00](v290);
  v262 = (&v244 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v44);
  v286 = &v244 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v255 = (&v244 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v266 = (&v244 - v49);
  MEMORY[0x1EEE9AC00](v50);
  v52 = (&v244 - v51);
  v281 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v281);
  v272 = &v244 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v273 = &v244 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v257 = &v244 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v258 = &v244 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v274 = &v244 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v275 = &v244 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v244 - v65;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v244 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v244 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v244 - v74;
  v287 = a2;
  v288 = a4;
  v289 = a3;
  if ((sub_1B0AEB57C(0, a2, a3, a4) & 1) != 0 && ((v291 >> 59) & 0x1E | (v291 >> 2) & 1) == 8 && *(v5 + 104) == *((v291 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
  {
    v76 = *((v291 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v77 = *((v291 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
    if (sub_1B04520BC(*(v5 + 96), *((v291 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
    {
      v249 = v76;
      v250 = v5;
      v78 = v284;
      sub_1B0AB06A4(v284, v75, type metadata accessor for MailboxTaskLogger);
      sub_1B0AB06A4(v78, v72, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v79 = sub_1B0E43988();
      v80 = sub_1B0E45908();
      v248 = v79;
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v247 = swift_slowAlloc();
        v295 = v247;
        *v81 = 68159491;
        *(v81 + 4) = 2;
        *(v81 + 8) = 256;
        v82 = v281;
        v83 = v77;
        v84 = &v72[SHIDWORD(v281[2].isa)];
        *(v81 + 10) = *v84;
        *(v81 + 11) = 2082;
        isa_high = SHIDWORD(v82[2].isa);
        v246 = v80;
        v86 = &v75[isa_high];
        *(v81 + 13) = sub_1B0399D64(*&v75[isa_high + 8], *&v75[isa_high + 16], &v295);
        *(v81 + 21) = 1040;
        *(v81 + 23) = 2;
        *(v81 + 27) = 512;
        v245 = *(v84 + 12);
        v77 = v83;
        sub_1B0AB070C(v72, type metadata accessor for MailboxTaskLogger);
        *(v81 + 29) = v245;
        *(v81 + 31) = 2160;
        *(v81 + 33) = 0x786F626C69616DLL;
        *(v81 + 41) = 2085;
        v87 = *(v86 + 4);
        LODWORD(v86) = *(v86 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v75, type metadata accessor for MailboxTaskLogger);
        v292 = v87;
        v293 = v86;
        v88 = sub_1B0E44BA8();
        v90 = sub_1B0399D64(v88, v89, &v295);

        *(v81 + 43) = v90;
        *(v81 + 51) = 2082;
        v91 = v248;
        v92 = v249;
        v292 = __PAIR64__(v77, v249);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v93 = MessageIdentifierRange.debugDescription.getter();
        v95 = sub_1B0399D64(v93, v94, &v295);

        *(v81 + 53) = v95;
        _os_log_impl(&dword_1B0389000, v91, v246, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found window of interest: %{public}s", v81, 0x3Du);
        v96 = v247;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v96, -1, -1);
        MEMORY[0x1B272C230](v81, -1, -1);
      }

      else
      {
        sub_1B0AB070C(v72, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v75, type metadata accessor for MailboxTaskLogger);
        v92 = v249;
      }

      v5 = v250;
      *(v250 + 76) = v92 | (v77 << 32);
      *(v5 + 84) = 0;
      if ((*(v5 + 136) & 1) == 0)
      {
        v97 = *(v5 + 132) - v77;
        if (v97 > *(v5 + 144) / 2)
        {
          v98 = v284;
          sub_1B0AB06A4(v284, v69, type metadata accessor for MailboxTaskLogger);
          sub_1B0AB06A4(v98, v66, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v99 = sub_1B0E43988();
          v100 = sub_1B0E45908();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v249 = swift_slowAlloc();
            v295 = v249;
            *v101 = 68159491;
            *(v101 + 4) = 2;
            *(v101 + 8) = 256;
            v102 = v281;
            v103 = &v66[SHIDWORD(v281[2].isa)];
            *(v101 + 10) = *v103;
            *(v101 + 11) = 2082;
            v104 = SHIDWORD(v102[2].isa);
            LODWORD(v248) = v100;
            v105 = &v69[v104];
            *(v101 + 13) = sub_1B0399D64(*&v69[v104 + 8], *&v69[v104 + 16], &v295);
            *(v101 + 21) = 1040;
            *(v101 + 23) = 2;
            *(v101 + 27) = 512;
            v106 = *(v103 + 12);
            sub_1B0AB070C(v66, type metadata accessor for MailboxTaskLogger);
            *(v101 + 29) = v106;
            *(v101 + 31) = 2160;
            *(v101 + 33) = 0x786F626C69616DLL;
            *(v101 + 41) = 2085;
            v107 = *(v105 + 4);
            LODWORD(v105) = *(v105 + 10);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0AB070C(v69, type metadata accessor for MailboxTaskLogger);
            v292 = v107;
            v293 = v105;
            v108 = sub_1B0E44BA8();
            v110 = sub_1B0399D64(v108, v109, &v295);

            *(v101 + 43) = v110;
            *(v101 + 51) = 2048;
            *(v101 + 53) = v97;
            _os_log_impl(&dword_1B0389000, v99, v248, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld new UIDs on server. Querying server..", v101, 0x3Du);
            v111 = v249;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v111, -1, -1);
            MEMORY[0x1B272C230](v101, -1, -1);
          }

          else
          {
            sub_1B0AB070C(v66, type metadata accessor for MailboxTaskLogger);

            sub_1B0AB070C(v69, type metadata accessor for MailboxTaskLogger);
          }

          v5 = v250;
          v112 = type metadata accessor for DetermineMessageBatches(0);
          sub_1B0AB070C(v5 + *(v112 + 56), type metadata accessor for DetermineMessageBatches.TaskState);
          swift_storeEnumTagMultiPayload();
        }
      }
    }
  }

  v113 = v287;
  v114 = v288;
  v115 = v289;
  if (sub_1B0AEB57C(2, v287, v289, v288))
  {
    v116 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
    sub_1B0AB06A4(v5 + v116, v52, type metadata accessor for DetermineMessageBatches.TaskState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B0AB070C(v52, type metadata accessor for DetermineMessageBatches.TaskState);
      goto LABEL_29;
    }

    if (((v291 >> 59) & 0x1E | (v291 >> 2) & 1) == 9)
    {
      v117 = *v52;
      v118 = swift_projectBox();
      sub_1B03B5C80(v118, v23, &qword_1EB6E3630, &unk_1B0EC2AE0);
      v119 = *v23;
      v120 = *(v283 + 48);
      if (*(v5 + 104) == v23[1])
      {
        v283 = *(v23 + *(v283 + 64));
        v121 = sub_1B04520BC(*(v5 + 96), v119);

        if (v121)
        {
          v249 = v117;
          sub_1B03C60A4(v23 + v120, v280, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v122 = *(v5 + 64);
          v123 = *(v5 + 72);
          v124 = v275;
          v125 = v274;
          v250 = v5;
          if (v123 == 1)
          {
            v126 = v283 - v249;
            if (__OFSUB__(v283, v249))
            {
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

            if (v126 < 0)
            {
              v127 = __OFSUB__(0, v126);
              v126 = v249 - v283;
              if (v127)
              {
                goto LABEL_92;
              }
            }

            if (v126 < *(v5 + 144) / 2)
            {
              v278 = *(v5 + 144);
              v128 = v284;
              sub_1B0AB06A4(v284, v275, type metadata accessor for MailboxTaskLogger);
              sub_1B0AB06A4(v128, v125, type metadata accessor for MailboxTaskLogger);
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              v129 = sub_1B0E43988();
              v130 = sub_1B0E45908();
              if (os_log_type_enabled(v129, v130))
              {
                v131 = swift_slowAlloc();
                LODWORD(v277) = v130;
                v132 = v131;
                v284 = swift_slowAlloc();
                v295 = v284;
                *v132 = 68159747;
                *(v132 + 4) = 2;
                *(v132 + 8) = 256;
                v133 = v281;
                v134 = v125 + SHIDWORD(v281[2].isa);
                *(v132 + 10) = *v134;
                *(v132 + 11) = 2082;
                v135 = v124 + SHIDWORD(v133[2].isa);
                *(v132 + 13) = sub_1B0399D64(*(v135 + 8), *(v135 + 16), &v295);
                *(v132 + 21) = 1040;
                *(v132 + 23) = 2;
                *(v132 + 27) = 512;
                LOWORD(v134) = *(v134 + 24);
                sub_1B0AB070C(v125, type metadata accessor for MailboxTaskLogger);
                *(v132 + 29) = v134;
                *(v132 + 31) = 2160;
                *(v132 + 33) = 0x786F626C69616DLL;
                *(v132 + 41) = 2085;
                v136 = *(v135 + 32);
                LODWORD(v135) = *(v135 + 40);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B0AB070C(v124, type metadata accessor for MailboxTaskLogger);
                v292 = v136;
                v293 = v135;
                v137 = sub_1B0E44BA8();
                v139 = sub_1B0399D64(v137, v138, &v295);
                v113 = v287;

                *(v132 + 43) = v139;
                v114 = v288;
                v115 = v289;
                *(v132 + 51) = 2048;
                *(v132 + 53) = v283;
                *(v132 + 61) = 2048;
                *(v132 + 63) = v249;
                _os_log_impl(&dword_1B0389000, v129, v277, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld UIDs locally, %ld on server.", v132, 0x47u);
                v140 = v284;
                swift_arrayDestroy();
                MEMORY[0x1B272C230](v140, -1, -1);
                MEMORY[0x1B272C230](v132, -1, -1);
              }

              else
              {
                sub_1B0AB070C(v125, type metadata accessor for MailboxTaskLogger);

                sub_1B0AB070C(v124, type metadata accessor for MailboxTaskLogger);
              }

              v5 = v250;
              v208 = v280;
              v209 = v267;
              sub_1B03B5C80(v280, v267, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v210 = v266;
              sub_1B0B3EA18(v278, v209, 1, v266);
              sub_1B0398EFC(v208, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              swift_storeEnumTagMultiPayload();
              sub_1B0AB41D8(v210, v5 + v116);
              goto LABEL_29;
            }
          }

          if (*(v5 + 84) & 1) != 0 || ((v123 | *(v5 + 136)))
          {
LABEL_52:
            v194 = v284;
            v195 = v273;
            sub_1B0AB06A4(v284, v273, type metadata accessor for MailboxTaskLogger);
            v196 = v272;
            sub_1B0AB06A4(v194, v272, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v197 = sub_1B0E43988();
            v198 = sub_1B0E45908();
            if (os_log_type_enabled(v197, v198))
            {
              v199 = swift_slowAlloc();
              v200 = swift_slowAlloc();
              v295 = v200;
              *v199 = 68159747;
              *(v199 + 4) = 2;
              *(v199 + 8) = 256;
              v201 = v281;
              v202 = v196 + SHIDWORD(v281[2].isa);
              *(v199 + 10) = *v202;
              *(v199 + 11) = 2082;
              v203 = v195 + SHIDWORD(v201[2].isa);
              *(v199 + 13) = sub_1B0399D64(*(v203 + 8), *(v203 + 16), &v295);
              *(v199 + 21) = 1040;
              *(v199 + 23) = 2;
              *(v199 + 27) = 512;
              LOWORD(v202) = *(v202 + 24);
              sub_1B0AB070C(v196, type metadata accessor for MailboxTaskLogger);
              *(v199 + 29) = v202;
              *(v199 + 31) = 2160;
              *(v199 + 33) = 0x786F626C69616DLL;
              *(v199 + 41) = 2085;
              v204 = *(v203 + 32);
              LODWORD(v203) = *(v203 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0AB070C(v195, type metadata accessor for MailboxTaskLogger);
              v292 = v204;
              v293 = v203;
              v114 = v288;
              v205 = sub_1B0E44BA8();
              v207 = sub_1B0399D64(v205, v206, &v295);
              v113 = v287;

              *(v199 + 43) = v207;
              *(v199 + 51) = 2048;
              *(v199 + 53) = v283;
              *(v199 + 61) = 2048;
              *(v199 + 63) = v249;
              _os_log_impl(&dword_1B0389000, v197, v198, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Only found %ld UIDs locally but %ld on server. Querying server for message batches.", v199, 0x47u);
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v200, -1, -1);
              MEMORY[0x1B272C230](v199, -1, -1);
            }

            else
            {
              sub_1B0AB070C(v196, type metadata accessor for MailboxTaskLogger);

              sub_1B0AB070C(v195, type metadata accessor for MailboxTaskLogger);
            }

            sub_1B0398EFC(v280, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v5 = v250;
            sub_1B0AB070C(v250 + v116, type metadata accessor for DetermineMessageBatches.TaskState);
            swift_storeEnumTagMultiPayload();
            v115 = v289;
            goto LABEL_29;
          }

          v168 = *(v5 + 76);
          v169 = HIDWORD(v168);
          v170 = *(v5 + 132);
          v171 = v170 + ~HIDWORD(v168);
          v172 = v122 - v171;
          if (!__OFSUB__(v122, v171))
          {
            if (!__OFSUB__(v172, 500))
            {
              if (v172 - 500 < v283)
              {
                v173 = v284;
                v174 = v258;
                sub_1B0AB06A4(v284, v258, type metadata accessor for MailboxTaskLogger);
                v175 = v257;
                sub_1B0AB06A4(v173, v257, type metadata accessor for MailboxTaskLogger);
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                v176 = sub_1B0E43988();
                v177 = sub_1B0E45908();
                if (os_log_type_enabled(v176, v177))
                {
                  v178 = swift_slowAlloc();
                  v275 = swift_slowAlloc();
                  v295 = v275;
                  *v178 = 68160003;
                  LODWORD(v274) = v177;
                  *(v178 + 4) = 2;
                  *(v178 + 8) = 256;
                  v179 = v281;
                  v180 = SHIDWORD(v281[2].isa);
                  v284 = v170;
                  v181 = v175 + v180;
                  *(v178 + 10) = *(v175 + v180);
                  *(v178 + 11) = 2082;
                  v182 = SHIDWORD(v179[2].isa);
                  v281 = v176;
                  v183 = v168;
                  v168 = v175;
                  v184 = v174 + v182;
                  *(v178 + 13) = sub_1B0399D64(*(v174 + v182 + 8), *(v174 + v182 + 16), &v295);
                  *(v178 + 21) = 1040;
                  *(v178 + 23) = 2;
                  *(v178 + 27) = 512;
                  LOWORD(v181) = *(v181 + 24);
                  v185 = v168;
                  LODWORD(v168) = v183;
                  sub_1B0AB070C(v185, type metadata accessor for MailboxTaskLogger);
                  *(v178 + 29) = v181;
                  *(v178 + 31) = 2160;
                  *(v178 + 33) = 0x786F626C69616DLL;
                  *(v178 + 41) = 2085;
                  v186 = *(v184 + 32);
                  LODWORD(v184) = *(v184 + 40);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B0AB070C(v174, type metadata accessor for MailboxTaskLogger);
                  v292 = v186;
                  v293 = v184;
                  v187 = sub_1B0E44BA8();
                  v189 = sub_1B0399D64(v187, v188, &v295);

                  *(v178 + 43) = v189;
                  *(v178 + 51) = 2048;
                  *(v178 + 53) = v283;
                  *(v178 + 61) = 2082;
                  v292 = __PAIR64__(v169, v183);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
                  v190 = MessageIdentifierRange.debugDescription.getter();
                  v170 = sub_1B0399D64(v190, v191, &v295);

                  *(v178 + 63) = v170;
                  LODWORD(v170) = v284;
                  *(v178 + 71) = 2048;
                  *(v178 + 73) = v249;
                  v192 = v281;
                  _os_log_impl(&dword_1B0389000, v281, v274, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld UIDs locally in window %{public}s, %ld on server.", v178, 0x51u);
                  v193 = v275;
                  swift_arrayDestroy();
                  MEMORY[0x1B272C230](v193, -1, -1);
                  MEMORY[0x1B272C230](v178, -1, -1);
                }

                else
                {
                  sub_1B0AB070C(v175, type metadata accessor for MailboxTaskLogger);

                  sub_1B0AB070C(v174, type metadata accessor for MailboxTaskLogger);
                }

                v212 = v261;
                v213 = *(v250 + 144);
                v115 = v289;
                if (v213 >= 1)
                {
                  if (v283 >= 1)
                  {
                    if (__OFADD__(v172, v213 >> 1))
                    {
LABEL_96:
                      __break(1u);
                      goto LABEL_97;
                    }

                    v214 = (v172 + (v213 >> 1)) / v213;
                    v215 = v214 * v213;
                    if ((v214 * v213) >> 64 != (v214 * v213) >> 63)
                    {
LABEL_97:
                      __break(1u);
                      goto LABEL_98;
                    }

                    v127 = __OFSUB__(v215, v283);
                    v216 = v215 - v283;
                    if (v127)
                    {
LABEL_98:
                      __break(1u);
LABEL_99:
                      __break(1u);
LABEL_100:
                      __break(1u);
                      return;
                    }

                    if (v216 < 0)
                    {
                      v127 = __OFSUB__(0, v216);
                      v216 = -v216;
                      if (v127)
                      {
                        goto LABEL_100;
                      }
                    }

                    if (v216 >= v213)
                    {
                      goto LABEL_74;
                    }

                    v127 = __OFADD__(v214++, 1);
                    if (!v127)
                    {
                      goto LABEL_74;
                    }

                    __break(1u);
                  }

                  v214 = 0;
LABEL_74:
                  if (!__OFADD__(v214, 1))
                  {
                    v217 = v279;
                    MessageIdentifierSet.suffix(_:)(v214 + 1, v279, v212);
                    v218 = MessageIdentifierSet.startIndex.getter(v217);
                    v220 = v219;
                    if (v218 != MessageIdentifierSet.endIndex.getter(v217) || v220 != v221)
                    {
                      MessageIdentifierSet.subscript.getter(v220, v279, &v292);
                      LODWORD(v168) = v292;
                    }

                    if (v170 == 1)
                    {
                      v222 = 1;
                      goto LABEL_82;
                    }

                    if (v170)
                    {
                      v222 = v170 - 1;
LABEL_82:
                      LODWORD(v295) = v168;
                      LODWORD(v294) = v222;
                      sub_1B041C1E8();
                      static MessageIdentifier.... infix(_:_:)(&v295, &v294, &type metadata for UID, &v292);
                      v223 = v250;
                      *(v250 + 76) = v292;
                      *(v223 + 84) = 0;
                      sub_1B03D06F8();
                      sub_1B0E46EE8();
                      sub_1B03B5C80(v212, v278, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      v224 = v279;
                      v225 = MessageIdentifierSet.startIndex.getter(v279);
                      v227 = v226;
                      for (i = v224; v225 != MessageIdentifierSet.endIndex.getter(i) || v227 != v233; i = v229)
                      {
                        v229 = v279;
                        MessageIdentifierSet.subscript.getter(v227, v279, &v292);
                        v230 = v292;
                        MessageIdentifierSet.index(_:offsetBy:)(v225, v227, 1);
                        v225 = v231;
                        v227 = v232;
                        LODWORD(v295) = v230;
                        MessageIdentifierSet.insert(_:)(&v292, &v295, v229);
                      }

                      v234 = v278;
                      v235 = (v278 + *(v253 + 36));
                      *v235 = v225;
                      v235[1] = v227;
                      sub_1B0398EFC(v234, &qword_1EB6E1BF8, &qword_1B0E9AFF0);
                      v236 = v260;
                      sub_1B03C60A4(v277, v260, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      v237 = sub_1B0B417E8(v236);
                      v238 = v254;
                      sub_1B0E46EE8();
                      v239 = v252;
                      sub_1B03B5C80(v238, v252, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      if (MessageIdentifierSet.count.getter() < 1)
                      {
                        sub_1B0398EFC(v239, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                        v242 = 1;
                        v5 = v250;
                        v113 = v287;
                        v114 = v288;
                        v241 = v256;
                      }

                      else
                      {
                        v240 = v251;
                        sub_1B03C60A4(v239, v251, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                        v241 = v256;
                        sub_1B03C60A4(v240, v256, &unk_1EB6E26C0, &unk_1B0E9DE10);
                        v242 = 0;
                        v5 = v250;
                        v113 = v287;
                        v114 = v288;
                      }

                      v243 = v255;
                      (*(v268 + 56))(v241, v242, 1, v269);
                      sub_1B0B3EF98(v213, v237, v241, v243);
                      sub_1B0398EFC(v260, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      sub_1B0398EFC(v261, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      sub_1B0398EFC(v280, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      sub_1B0398EFC(v238, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      swift_storeEnumTagMultiPayload();
                      sub_1B0AB41D8(v243, v5 + v116);
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

      sub_1B0398EFC(v23 + v120, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }
  }

LABEL_29:
  if ((sub_1B0AEB57C(3, v113, v115, v114) & 1) == 0)
  {
    return;
  }

  v141 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
  v142 = v286;
  sub_1B0AB06A4(v5 + v141, v286, type metadata accessor for DetermineMessageBatches.TaskState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v165 = type metadata accessor for DetermineMessageBatches.TaskState;
    v166 = v142;
LABEL_41:
    sub_1B0AB070C(v166, v165);
    return;
  }

  v143 = v285;
  sub_1B0AB424C(v142, v285, type metadata accessor for MessageBatches);
  if ((*(v5 + 84) & 1) != 0 || (v144 = *(v5 + 76), (v144 & 0xFFFFFFFE) == 0) || ((v291 >> 59) & 0x1E | (v291 >> 2) & 1) != 0xA)
  {
    v165 = type metadata accessor for MessageBatches;
    v166 = v143;
    goto LABEL_41;
  }

  v145 = swift_projectBox();
  v146 = v282;
  sub_1B03B5C80(v145, v282, &qword_1EB6E3628, &unk_1B0EA2080);
  v147 = *(v276 + 48);
  v148 = *(v276 + 64);
  if (*(v5 + 104) != v146[1])
  {

    goto LABEL_44;
  }

  v149 = sub_1B04520BC(*(v5 + 96), *v146);

  if ((v149 & 1) == 0)
  {
LABEL_44:
    sub_1B0AB070C(v143, type metadata accessor for MessageBatches);
    v167 = v282;
    sub_1B0398EFC(v282 + v148, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0398EFC(v167 + v147, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return;
  }

  v150 = v5;
  v151 = v282;
  v152 = v282 + v147;
  v153 = v271;
  sub_1B03C60A4(v152, v271, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  LODWORD(v295) = 1;
  LODWORD(v294) = v144 - 1;
  v154 = sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(&v295, &v294, &type metadata for UID, &v292);
  v295 = v292;
  v294 = Range<>.init<A>(_:)(&v295, &type metadata for UID, v154);
  sub_1B03D06F8();
  v155 = v270;
  sub_1B0E46F08();
  LOBYTE(v154) = sub_1B0E46E08();
  sub_1B0398EFC(v155, &unk_1EB6E26C0, &unk_1B0E9DE10);
  if (v154)
  {
    sub_1B0398EFC(v151 + v148, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v156 = *(v5 + 144);
    v157 = *(v143 + 8);
    v158 = v264;
    sub_1B03B5C80(v153, v264, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v159 = v263;
    sub_1B03B5C80(v158, v263, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v159, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v164 = 1;
      v163 = v265;
    }

    else
    {
      v160 = v159;
      v161 = v259;
      sub_1B03C60A4(v160, v259, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v162 = v161;
      v163 = v265;
      sub_1B03C60A4(v162, v265, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v164 = 0;
    }

    (*(v268 + 56))(v163, v164, 1, v269);
    v211 = v262;
    sub_1B0B3EF98(v156, v157, v163, v262);
    sub_1B0398EFC(v158, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v153, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0AB070C(v143, type metadata accessor for MessageBatches);
    swift_storeEnumTagMultiPayload();
    sub_1B0AB41D8(v211, v150 + v141);
  }

  else
  {
    sub_1B0398EFC(v153, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0AB070C(v143, type metadata accessor for MessageBatches);
    sub_1B0398EFC(v151 + v148, &unk_1EB6E26C0, &unk_1B0E9DE10);
  }
}