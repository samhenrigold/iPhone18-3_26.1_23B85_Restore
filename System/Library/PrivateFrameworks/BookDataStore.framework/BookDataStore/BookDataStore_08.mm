uint64_t sub_1E46E48B4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 96);
  v7 = *(v5 + 104);
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  return sub_1E45EB5D8(v6, v7);
}

Swift::Void __swiftcall ReadingGoalsDataStore.migrate(bookFinishedGoalDict:streakDayGoalDict:)(Swift::OpaquePointer_optional bookFinishedGoalDict, Swift::OpaquePointer_optional streakDayGoalDict)
{
  v3 = v2;
  v4 = *&bookFinishedGoalDict.is_nil;
  rawValue = bookFinishedGoalDict.value._rawValue;
  v6 = v2[5];
  v7 = v2[6];
  sub_1E465057C(v2 + 2, v6);
  if ((*(v7 + 8))(0xD00000000000001ALL, 0x80000001E471A110, v6, v7))
  {

LABEL_3:
    v8 = 0;
    goto LABEL_8;
  }

  if (!rawValue)
  {
    goto LABEL_3;
  }

  v9 = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE2ADC98;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E471B800;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1E4663DE4();
  *(v11 + 32) = 0xD00000000000001ALL;
  *(v11 + 40) = 0x80000001E471A110;
  *(v11 + 96) = sub_1E4650534(&qword_1ECF757F0, &qword_1E471FC10);
  *(v11 + 104) = sub_1E46E5E14();
  *(v11 + 72) = rawValue;

  sub_1E470A0AC(v9, &dword_1E45E0000, v10, "ReadingGoalsDataStore migrate: { %@: %@ }", 41, 2, v11);

  v12 = v3[5];
  v13 = v3[6];
  sub_1E465057C(v3 + 2, v12);
  (*(v13 + 16))(rawValue, 0xD00000000000001ALL, 0x80000001E471A110, v12, v13);
  v8 = 1;
LABEL_8:
  v14 = v3[5];
  v15 = v3[6];
  sub_1E465057C(v3 + 2, v14);
  if ((*(v15 + 8))(0xD000000000000016, 0x80000001E471A0F0, v14, v15))
  {

    goto LABEL_10;
  }

  if (!v4)
  {
LABEL_10:
    if (!v8)
    {
      return;
    }

    goto LABEL_16;
  }

  v16 = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE2ADC98;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E471B800;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1E4663DE4();
  *(v18 + 32) = 0xD000000000000016;
  *(v18 + 40) = 0x80000001E471A0F0;
  *(v18 + 96) = sub_1E4650534(&qword_1ECF757F0, &qword_1E471FC10);
  *(v18 + 104) = sub_1E46E5E14();
  *(v18 + 72) = v4;

  sub_1E470A0AC(v16, &dword_1E45E0000, v17, "ReadingGoalsDataStore migrate: { %@: %@ }", 41, 2, v18);

  v19 = v3[5];
  v20 = v3[6];
  sub_1E465057C(v3 + 2, v19);
  (*(v20 + 16))(v4, 0xD000000000000016, 0x80000001E471A0F0, v19, v20);
LABEL_16:
  v21 = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    v25 = v21;
    swift_once();
    v21 = v25;
  }

  sub_1E470A0AC(v21, &dword_1E45E0000, qword_1EE2ADC98, "Fake a remote change", 20, 2, MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v22 = v3[12];
  if (v22)
  {
    v23 = v3[13];

    v22(v24);
    sub_1E45EB5D8(v22, v23);
  }
}

unint64_t sub_1E46E4DDC()
{
  result = qword_1ECF75D50;
  if (!qword_1ECF75D50)
  {
    sub_1E4709CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75D50);
  }

  return result;
}

unint64_t *sub_1E46E4E34(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1E46E56C4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E46E4EC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1E4650534(&qword_1ECF754E8, &qword_1E471EAB8);
  result = sub_1E470B5AC();
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
    sub_1E470B8FC();
    MEMORY[0x1E6916620](v17);
    MEMORY[0x1E6916620](v18);
    result = sub_1E470B91C();
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

uint64_t sub_1E46E50E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1E4650534(&unk_1ECF75490, &unk_1E471FCF0);
  result = sub_1E470B5AC();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1E470B41C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_1E46E52DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1E4650534(&unk_1ECF75478, &qword_1E471FCE0);
  result = sub_1E470B5AC();
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
    sub_1E470B8FC();

    sub_1E470AFCC();
    result = sub_1E470B91C();
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

unint64_t *sub_1E46E5500(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v9);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = sub_1E46E56C4((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_1E46E4E34(v12, v6, a2, a1);

    MEMORY[0x1E6917530](v12, -1, -1);
  }

  return v10;
}

unint64_t *sub_1E46E56C4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1E470B8FC();

      sub_1E470AFCC();
      v26 = sub_1E470B91C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1E470B84C() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1E46E52DC(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1E470B8FC();

      sub_1E470AFCC();
      v39 = sub_1E470B91C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1E470B84C() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E46E5AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1E4650534(&qword_1ECF75800, &qword_1E471FCD0);
    v3 = sub_1E470B70C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E465E0B0(v4, v13, &qword_1ECF75808, &qword_1E471FCD8);
      result = sub_1E4655398(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1E46E5BC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1E4650534(&qword_1ECF75818, &qword_1E471FD00);
    v3 = sub_1E470B70C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1E46553DC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1E46E5CDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1E4650534(&qword_1ECF75810, &qword_1E471FCE8);
    v3 = sub_1E470B70C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E465E0B0(v4, &v16, &qword_1ECF757E8, &unk_1E471FC00);
      v5 = v16;
      v6 = v17;
      result = sub_1E46553DC(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_1E46E5E14()
{
  result = qword_1ECF757F8;
  if (!qword_1ECF757F8)
  {
    sub_1E46506D0(&qword_1ECF757F0, &qword_1E471FC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF757F8);
  }

  return result;
}

uint64_t sub_1E46E5F38(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E6915E90](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1E46C8108(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1E46E5FD0(uint64_t a1)
{
  v2 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E46E6060()
{
  v1 = v0;
  v2 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v15 - v8;
  sub_1E465E0B0(v1, v15 - v8, &unk_1ECF74C60, &qword_1E471C910);
  v10 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  v11 = (*(*(v10 - 8) + 48))(v9, 2, v10);
  if (v11)
  {
    if (v11 == 1)
    {
      return 0x6C61636F6CLL;
    }

    else
    {
      return 0x6465726F7473;
    }
  }

  else
  {
    sub_1E46E7C20(v9, v5, type metadata accessor for ReadingHistoryModel);
    v15[0] = 0x2865746F6D6572;
    v15[1] = 0xE700000000000000;
    v13 = ReadingHistoryModel.description.getter();
    MEMORY[0x1E6915D10](v13);

    MEMORY[0x1E6915D10](41, 0xE100000000000000);
    v14 = v15[0];
    sub_1E46E7188(v5, type metadata accessor for ReadingHistoryModel);
    return v14;
  }
}

uint64_t ReadingHistory.ModelSnapshot.ModelValues.init(readingDay:longestStreak:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 2;
  v8 = *(type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0) + 20);
  v9 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  return sub_1E4697BD4(a2, a3 + v8, &qword_1ECF74C40, &unk_1E471C980);
}

uint64_t ReadingHistory.ModelSnapshot.init(loaded:lastSource:modelValues:remoteModelValues:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
  v11 = v10[7];
  v12 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  *a5 = v9;
  sub_1E46E642C(a2, &a5[v10[5]]);
  sub_1E46E7C20(a3, &a5[v10[6]], type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  return sub_1E4697BD4(a4, &a5[v11], &qword_1ECF74C58, &unk_1E471D5A0);
}

uint64_t sub_1E46E642C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 ReadingHistory.ModelSnapshot.ModelValues.readingDay.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ReadingHistory.ModelSnapshot.ModelValues.readingDay.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

uint64_t ReadingHistory.ModelSnapshot.ModelValues.description.getter()
{
  v1 = v0;
  v2 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - v4;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E471B800;
  v7 = *(v0 + 16);
  if (v7 == 2)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v22 = *v0;
    v23 = v7 & 1;
    v8 = ReadingHistory.Day.description.getter();
    v9 = v10;
  }

  v11 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1E4663DE4();
  *(v6 + 64) = v12;
  if (v9)
  {
    v13 = v8;
  }

  else
  {
    v13 = 7104878;
  }

  v14 = 0xE300000000000000;
  if (v9)
  {
    v14 = v9;
  }

  *(v6 + 32) = v13;
  *(v6 + 40) = v14;
  v15 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  sub_1E465E0B0(v1 + *(v15 + 20), v5, &qword_1ECF74C40, &unk_1E471C980);
  v16 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
  {
    sub_1E465E050(v5, &qword_1ECF74C40, &unk_1E471C980);
    v17 = (v6 + 72);
    *(v6 + 96) = v11;
    *(v6 + 104) = v12;
LABEL_13:
    *v17 = 7104878;
    v20 = 0xE300000000000000;
    goto LABEL_14;
  }

  v18 = ReadingHistory.Streak.description.getter();
  v20 = v19;
  sub_1E46E7188(v5, type metadata accessor for ReadingHistory.Streak);
  v17 = (v6 + 72);
  *(v6 + 96) = v11;
  *(v6 + 104) = v12;
  if (!v20)
  {
    goto LABEL_13;
  }

  *v17 = v18;
LABEL_14:
  *(v6 + 80) = v20;
  return sub_1E470AF3C();
}

uint64_t ReadingHistory.ModelSnapshot.modelValues.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.ModelSnapshot(0) + 24);

  return sub_1E46E70C0(v3, a1);
}

uint64_t ReadingHistory.ModelSnapshot.modelValues.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.ModelSnapshot(0) + 24);

  return sub_1E46E7124(a1, v3);
}

uint64_t ReadingHistory.ModelSnapshot.description.getter()
{
  v1 = v0;
  v2 = sub_1E4650534(&qword_1ECF74C58, &unk_1E471D5A0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v24 - v4;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 16) = xmmword_1E471C940;
  v8 = *v0 == 0;
  if (*v0)
  {
    v9 = 0x7964616572;
  }

  else
  {
    v9 = 0x676E6964616F6CLL;
  }

  if (v8)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1E4663DE4();
  v7[8] = v12;
  v7[4] = v9;
  v7[5] = v10;
  v13 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
  v14 = sub_1E46E6060();
  v7[12] = v11;
  v7[13] = v12;
  v7[9] = v14;
  v7[10] = v15;
  v16 = ReadingHistory.ModelSnapshot.ModelValues.description.getter();
  v7[17] = v11;
  v7[18] = v12;
  v7[14] = v16;
  v7[15] = v17;
  sub_1E465E0B0(&v1[*(v13 + 28)], v5, &qword_1ECF74C58, &unk_1E471D5A0);
  v18 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  if ((*(*(v18 - 8) + 48))(v5, 1, v18) == 1)
  {
    sub_1E465E050(v5, &qword_1ECF74C58, &unk_1E471D5A0);
    v19 = v7 + 19;
    v7[22] = v11;
    v7[23] = v12;
LABEL_11:
    *v19 = 7104878;
    v22 = 0xE300000000000000;
    goto LABEL_12;
  }

  v20 = ReadingHistory.ModelSnapshot.ModelValues.description.getter();
  v22 = v21;
  sub_1E46E7188(v5, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  v19 = v7 + 19;
  v7[22] = v11;
  v7[23] = v12;
  if (!v22)
  {
    goto LABEL_11;
  }

  *v19 = v20;
LABEL_12:
  v7[20] = v22;
  return sub_1E470AF3C();
}

BOOL _s13BookDataStore14ReadingHistoryO13ModelSnapshotV0F6ValuesV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.Streak(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v32 - v11;
  v13 = sub_1E4650534(&unk_1ECF74C20, &qword_1E471D578);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v32 - v16;
  v18 = *(a1 + 16);
  v19 = *(a2 + 16);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v19 == 2)
  {
    return 0;
  }

  v24 = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if ((v19 ^ v18))
    {
      return 0;
    }

LABEL_3:
    v33 = v8;
    v20 = v15;
    v21 = *(type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0) + 20);
    v22 = *(v20 + 48);
    sub_1E465E0B0(a1 + v21, v17, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E465E0B0(a2 + v21, &v17[v22], &qword_1ECF74C40, &unk_1E471C980);
    v23 = *(v5 + 48);
    if (v23(v17, 1, v4) == 1)
    {
      if (v23(&v17[v22], 1, v4) == 1)
      {
        sub_1E465E050(v17, &qword_1ECF74C40, &unk_1E471C980);
        return 1;
      }

      goto LABEL_14;
    }

    sub_1E465E0B0(v17, v12, &qword_1ECF74C40, &unk_1E471C980);
    if (v23(&v17[v22], 1, v4) == 1)
    {
      sub_1E46E7188(v12, type metadata accessor for ReadingHistory.Streak);
LABEL_14:
      v25 = &unk_1ECF74C20;
      v26 = &qword_1E471D578;
LABEL_15:
      sub_1E465E050(v17, v25, v26);
      return 0;
    }

    v28 = v33;
    sub_1E46E7C20(&v17[v22], v33, type metadata accessor for ReadingHistory.Streak);
    if ((sub_1E4709C8C() & 1) == 0)
    {
      sub_1E46E7188(v28, type metadata accessor for ReadingHistory.Streak);
      sub_1E46E7188(v12, type metadata accessor for ReadingHistory.Streak);
      v25 = &qword_1ECF74C40;
      v26 = &unk_1E471C980;
      goto LABEL_15;
    }

    v29 = *(v4 + 20);
    v30 = *&v12[v29];
    v31 = *(v28 + v29);
    sub_1E46E7188(v28, type metadata accessor for ReadingHistory.Streak);
    sub_1E46E7188(v12, type metadata accessor for ReadingHistory.Streak);
    sub_1E465E050(v17, &qword_1ECF74C40, &unk_1E471C980);
    return v30 == v31;
  }

  return v24;
}

uint64_t sub_1E46E70C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46E7124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46E7188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s13BookDataStore14ReadingHistoryO13ModelSnapshotV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  v61 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&qword_1ECF74C58, &unk_1E471D5A0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v58 = &v52 - v10;
  v60 = sub_1E4650534(&unk_1ECF75820, &unk_1E471FDA0);
  MEMORY[0x1EEE9AC00](v60, v11);
  v13 = &v52 - v12;
  v59 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v59, v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v52 - v19;
  v21 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v52 - v23;
  v25 = sub_1E4650534(&qword_1ECF74A10, &qword_1E471C918);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v52 - v27;
  if (*a1 != *a2)
  {
    return 0;
  }

  v53 = v4;
  v54 = v13;
  v52 = v7;
  v55 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
  v56 = a1;
  v29 = *(v55 + 20);
  v30 = *(v25 + 48);
  sub_1E465E0B0(&a1[v29], v28, &unk_1ECF74C60, &qword_1E471C910);
  v57 = a2;
  sub_1E465E0B0(&a2[v29], &v28[v30], &unk_1ECF74C60, &qword_1E471C910);
  v31 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  v32 = *(*(v31 - 8) + 48);
  v33 = v32(v28, 2, v31);
  if (v33)
  {
    if (v33 == 1)
    {
      if (v32(&v28[v30], 2, v31) != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (v32(&v28[v30], 2, v31) == 2)
    {
LABEL_9:
      sub_1E465E050(v28, &unk_1ECF74C60, &qword_1E471C910);
      goto LABEL_10;
    }

LABEL_14:
    v44 = &qword_1ECF74A10;
    v45 = &qword_1E471C918;
LABEL_15:
    v46 = v28;
LABEL_16:
    sub_1E465E050(v46, v44, v45);
    return 0;
  }

  sub_1E465E0B0(v28, v24, &unk_1ECF74C60, &qword_1E471C910);
  if (v32(&v28[v30], 2, v31))
  {
    sub_1E46E7188(v24, type metadata accessor for ReadingHistoryModel);
    goto LABEL_14;
  }

  sub_1E46E7C20(v24, v20, type metadata accessor for ReadingHistoryModel);
  sub_1E46E7C20(&v28[v30], v16, type metadata accessor for ReadingHistoryModel);
  sub_1E46E7C88(&qword_1EE2ADA90, &protocol conformance descriptor for ReadingHistoryModel);
  if (sub_1E470AB9C())
  {
    sub_1E46E7188(v16, type metadata accessor for ReadingHistoryModel);
    sub_1E46E7188(v20, type metadata accessor for ReadingHistoryModel);
    v44 = &unk_1ECF74C60;
    v45 = &qword_1E471C910;
    goto LABEL_15;
  }

  v48 = sub_1E470AB9C();
  sub_1E46E7188(v16, type metadata accessor for ReadingHistoryModel);
  sub_1E46E7188(v20, type metadata accessor for ReadingHistoryModel);
  sub_1E465E050(v28, &unk_1ECF74C60, &qword_1E471C910);
  if (v48)
  {
    return 0;
  }

LABEL_10:
  v34 = v55;
  v35 = v56;
  v36 = v57;
  if (!_s13BookDataStore14ReadingHistoryO13ModelSnapshotV0F6ValuesV2eeoiySbAG_AGtFZ_0(&v56[*(v55 + 24)], &v57[*(v55 + 24)]))
  {
    return 0;
  }

  v37 = *(v34 + 28);
  v38 = *(v60 + 48);
  v39 = &v35[v37];
  v40 = v54;
  sub_1E465E0B0(v39, v54, &qword_1ECF74C58, &unk_1E471D5A0);
  sub_1E465E0B0(&v36[v37], v40 + v38, &qword_1ECF74C58, &unk_1E471D5A0);
  v41 = *(v61 + 48);
  v42 = v53;
  if (v41(v40, 1, v53) == 1)
  {
    if (v41(v40 + v38, 1, v42) == 1)
    {
      sub_1E465E050(v40, &qword_1ECF74C58, &unk_1E471D5A0);
      return 1;
    }

    goto LABEL_22;
  }

  v47 = v58;
  sub_1E465E0B0(v40, v58, &qword_1ECF74C58, &unk_1E471D5A0);
  if (v41(v40 + v38, 1, v42) == 1)
  {
    sub_1E46E7188(v47, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
LABEL_22:
    v44 = &unk_1ECF75820;
    v45 = &unk_1E471FDA0;
    v46 = v40;
    goto LABEL_16;
  }

  v49 = v40 + v38;
  v50 = v52;
  sub_1E46E7C20(v49, v52, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  v51 = _s13BookDataStore14ReadingHistoryO13ModelSnapshotV0F6ValuesV2eeoiySbAG_AGtFZ_0(v47, v50);
  sub_1E46E7188(v50, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  sub_1E46E7188(v47, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  sub_1E465E050(v40, &qword_1ECF74C58, &unk_1E471D5A0);
  return v51;
}

void sub_1E46E78F4(uint64_t a1)
{
  sub_1E46E79FC(319, qword_1EE2AE560, type metadata accessor for ModelState.LoadedState);
  if (v1 <= 0x3F)
  {
    sub_1E46E79FC(319, qword_1EE2AE4D8, type metadata accessor for ModelState.Source);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(319);
      if (v3 <= 0x3F)
      {
        sub_1E46E7BCC(319, qword_1EE2AE2C0, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E46E79FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ReadingHistoryModel(255);
    v7 = sub_1E46E7C88(&qword_1EE2ADAA0, &protocol conformance descriptor for ReadingHistoryModel);
    v8 = sub_1E46E7C88(&qword_1EE2ADA70, &protocol conformance descriptor for ReadingHistoryModel);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1E46E7ADC(uint64_t a1)
{
  sub_1E46E7B7C();
  if (v1 <= 0x3F)
  {
    sub_1E46E7BCC(319, &qword_1EE2AE0F0, type metadata accessor for ReadingHistory.Streak);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E46E7B7C()
{
  if (!qword_1EE2AE1C8[0])
  {
    v0 = sub_1E470B47C();
    if (!v1)
    {
      atomic_store(v0, qword_1EE2AE1C8);
    }
  }
}

void sub_1E46E7BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E470B47C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E46E7C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E46E7C88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReadingHistoryModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _ReadingHistoryServiceStatus.description.getter()
{
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E6915D10](v1, v2);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 0x6564616F4C73697BLL;
}

uint64_t sub_1E46E7D70()
{
  sub_1E470B8FC();
  MEMORY[0x1E6916620](0);
  return sub_1E470B91C();
}

uint64_t sub_1E46E7DDC(uint64_t a1)
{
  sub_1E470B8FC();
  MEMORY[0x1E6916620](0);
  return sub_1E470B91C();
}

uint64_t sub_1E46E7E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646564616F4C7369 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E470B84C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E46E7EBC(uint64_t a1)
{
  v2 = sub_1E46E806C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E46E7EF8(uint64_t a1)
{
  v2 = sub_1E46E806C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _ReadingHistoryServiceStatus.encode(to:)(void *a1)
{
  v2 = sub_1E4650534(&qword_1ECF75830, &qword_1E471FDB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1E465057C(a1, a1[3]);
  sub_1E46E806C();
  sub_1E470B93C();
  sub_1E470B7CC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E46E806C()
{
  result = qword_1ECF75838;
  if (!qword_1ECF75838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75838);
  }

  return result;
}

uint64_t _ReadingHistoryServiceStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1E4650534(&qword_1ECF75840, &qword_1E471FDB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  sub_1E465057C(a1, a1[3]);
  sub_1E46E806C();
  sub_1E470B92C();
  if (!v2)
  {
    v10 = sub_1E470B75C();
    (*(v6 + 8))(v9, v5);
    *a2 = v10 & 1;
  }

  return sub_1E4658A0C(a1);
}

uint64_t sub_1E46E8230(void *a1)
{
  v2 = sub_1E4650534(&qword_1ECF75830, &qword_1E471FDB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1E465057C(a1, a1[3]);
  sub_1E46E806C();
  sub_1E470B93C();
  sub_1E470B7CC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E46E8368()
{
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E6915D10](v1, v2);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 0x6564616F4C73697BLL;
}

id ReadingHistoryServiceStatus.__allocating_init(value:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ReadingHistoryServiceStatus.init(value:)(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ReadingHistoryServiceStatus.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1E46586E0(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id ReadingHistoryServiceStatus.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1E46586E0(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id ReadingHistoryServiceStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReadingHistoryServiceStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1E46E8728@<X0>(char *a1@<X0>, char **a2@<X8>)
{
  v4 = *a1;
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = v4;
  v7.receiver = v5;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, sel_init);
  *a2 = result;
  return result;
}

id ReadingHistoryServiceStatus.__allocating_init(isLoaded:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithIsLoaded_];
}

id ReadingHistoryServiceStatus.init(isLoaded:)(char a1)
{
  ObjectType = swift_getObjectType();
  v3 = objc_allocWithZone(ObjectType);
  v3[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = a1;
  v6.receiver = v3;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t ReadingHistoryServiceStatus.description.getter()
{
  if (*(v0 + OBJC_IVAR___BDSReadingHistoryServiceStatus_value))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___BDSReadingHistoryServiceStatus_value))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E6915D10](v1, v2);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 0x6564616F4C73697BLL;
}

uint64_t getEnumTagSinglePayload for _ReadingHistoryServiceStatus(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1E46E8B80()
{
  result = qword_1ECF75858;
  if (!qword_1ECF75858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75858);
  }

  return result;
}

unint64_t sub_1E46E8BD8()
{
  result = qword_1ECF75860;
  if (!qword_1ECF75860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75860);
  }

  return result;
}

unint64_t sub_1E46E8C30()
{
  result = qword_1ECF75868;
  if (!qword_1ECF75868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75868);
  }

  return result;
}

uint64_t sub_1E46E8C84(uint64_t a1)
{
  result = sub_1E470A0DC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1E46E8D54()
{
  sub_1E46E93E8();
  v1 = v0;
  sub_1E46E9314();
  v2 = objc_allocWithZone(BCCloudDataSource);
  v3 = sub_1E470AF0C();

  v4 = [v2 initWithManagedObjectModel:v1 nameOnDisk:v3];

  return v4;
}

void sub_1E46E8E38(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v2;
  v8 = *(v2 + qword_1ECF75880);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = *(v7 + 80);
  *(v10 + 32) = *((v6 & v5) + 0x60);
  *(v10 + 40) = v9;
  *(v10 + 48) = a1;
  *(v10 + 56) = a2;
  v12[4] = sub_1E46EEFFC;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1E46EC4FC;
  v12[3] = &unk_1F5E66800;
  v11 = _Block_copy(v12);

  [v8 cloudDataWithPredicate:0 sortDescriptors:0 completion:v11];
  _Block_release(v11);
}

void sub_1E46E8FBC(char a1)
{
  v2 = *(v1 + qword_1ECF7B638);
  *(v1 + qword_1ECF7B638) = a1;
  v3 = *(v1 + qword_1ECF7B638);
  if (v2 != v3)
  {
    sub_1E46EB990(v3);
  }
}

void sub_1E46E8FE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = [*&v4[qword_1ECF758B0] createTransactionWithName_];
  aBlock[0] = *(ObjectType + 80);
  swift_getMetatypeMetadata();
  v9 = sub_1E470AF6C();
  v11 = v10;
  v12 = type metadata accessor for CRDTModelSync();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  *&v13[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData] = xmmword_1E471B810;
  sub_1E46552AC(a1, a2);
  v31.receiver = v13;
  v31.super_class = v12;
  v15 = objc_msgSendSuper2(&v31, sel_init);
  v16 = &v15[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type];
  *v16 = v9;
  v16[1] = v11;
  v17 = v15;

  v18 = &v17[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
  v19 = *&v17[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
  v20 = *&v17[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8];
  *v18 = a1;
  *(v18 + 1) = a2;
  sub_1E465DDA0(v19, v20);

  v21 = *&v4[qword_1ECF75880];
  v22 = v17;
  sub_1E46E9574();
  sub_1E4650534(&unk_1ECF747B0, &unk_1E471B820);
  v23 = sub_1E470AE2C();

  v24 = swift_allocObject();
  v24[2] = v4;
  v24[3] = a3;
  v24[4] = a4;
  v24[5] = v8;
  aBlock[4] = sub_1E46EEFA0;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46EC754;
  aBlock[3] = &unk_1F5E667B0;
  v25 = _Block_copy(aBlock);
  v26 = v4;

  v27 = v8;

  [v21 setCloudData:v22 predicate:0 mergers:v23 completion:v25];
  _Block_release(v25);
}

void sub_1E46E925C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1E4709AFC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1E46E92CC()
{
  type metadata accessor for CRDTModelSyncEntity(0);
  sub_1E4650534(qword_1ECF75960, &qword_1E4720100);
  return sub_1E470AF6C();
}

uint64_t sub_1E46E9314()
{
  v2 = sub_1E470B5DC();
  MEMORY[0x1E6915D10](45, 0xE100000000000000);
  swift_getMetatypeMetadata();
  v0 = sub_1E470AF6C();
  MEMORY[0x1E6915D10](v0);

  return v2;
}

uint64_t sub_1E46E9394()
{
  swift_getMetatypeMetadata();
  sub_1E470AF6C();
  v0 = sub_1E470AF0C();

  return v0;
}

void sub_1E46E93E8()
{
  v0 = sub_1E4709B9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1E470B40C();

  sub_1E4709B2C();
  v7 = objc_allocWithZone(MEMORY[0x1E695D638]);
  v8 = sub_1E4709B4C();
  v9 = [v7 initWithContentsOfURL_];

  if (v9)
  {
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1E46E9574()
{
  v1 = qword_1ECF758A8;
  if (*(v0 + qword_1ECF758A8))
  {
    v2 = *(v0 + qword_1ECF758A8);
  }

  else
  {
    v2 = sub_1E46E95DC(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_1E46E95DC(uint64_t *a1)
{
  swift_getObjectType();
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *a1;
  v5 = sub_1E4658E2C();
  v7 = v6;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v4 + 80);
  *(v9 + 32) = *((v3 & v2) + 0x60);
  *(v9 + 40) = v8;
  *(v9 + 48) = v5;
  *(v9 + 56) = v7;
  v18 = sub_1E46EEE70;
  v19 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1E46EB778;
  v17 = &unk_1F5E66558;
  v10 = _Block_copy(&aBlock);

  sub_1E4650534(&qword_1ECF75940, &qword_1E47200F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E471BA00;
  aBlock = v5;
  v15 = v7;
  sub_1E470B56C();
  *(inited + 72) = v10;
  v12 = sub_1E46E5AA0(inited);
  swift_setDeallocating();
  sub_1E465E050(inited + 32, &qword_1ECF75808, &qword_1E471FCD8);
  return v12;
}

void sub_1E46E97BC(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, _OWORD *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v293 = a8;
  v294 = a5;
  v291 = a3;
  v290 = a2;
  v292 = a10;
  v14 = sub_1E470A0DC();
  v295 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v263 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = sub_1E470AB3C();
  v276 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281, v18);
  v280 = &v263 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v279 = (&v263 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23, v24);
  v278 = (&v263 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v277 = &v263 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v273 = &v263 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v275 = &v263 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v282 = &v263 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v274 = &v263 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v272 = &v263 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v271 = &v263 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v284 = &v263 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v285 = &v263 - v52;
  v53 = sub_1E470B47C();
  v286 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v54);
  v283 = &v263 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v263 - v58;
  MEMORY[0x1EEE9AC00](v60, v61);
  v288 = &v263 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v289 = &v263 - v65;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    swift_beginAccess();
    v68 = swift_unknownObjectWeakLoadStrong();
    if (v68)
    {
      v69 = v295;
      v70 = v68;
      v295[2](v17, v68 + qword_1ECF7B628, v14);

      sub_1E4658ABC(a1, v300);

      v71 = v14;
      v72 = a6;

      v73 = sub_1E470A0BC();
      v74 = sub_1E470B2CC();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = a7;
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v297 = v77;
        *v76 = 136315650;
        swift_beginAccess();
        v303[0] = swift_unknownObjectWeakLoadStrong();
        type metadata accessor for CRDTModelCloudDataManager(255, v75, v293, v292);
        sub_1E470B47C();
        v78 = sub_1E470AF6C();
        v80 = sub_1E4654D04(v78, v79, &v297);

        *(v76 + 4) = v80;
        v293 = v71;
        *(v76 + 12) = 2080;
        sub_1E4658ABC(v300, v303);
        v81 = sub_1E470AF6C();
        v83 = v82;
        sub_1E4658A0C(v300);
        v84 = sub_1E4654D04(v81, v83, &v297);

        *(v76 + 14) = v84;
        *(v76 + 22) = 2080;
        *(v76 + 24) = sub_1E4654D04(v294, v72, &v297);
        _os_log_impl(&dword_1E45E0000, v73, v74, "CloudSyncConflictResolver: self=%s key=%s is not equal to recordType=%s", v76, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v77, -1, -1);
        MEMORY[0x1E6917530](v76, -1, -1);

        (v295[1])(v17, v293);
      }

      else
      {

        sub_1E4658A0C(v300);
        v69[1](v17, v71);
      }
    }

    goto LABEL_33;
  }

  v67 = Strong;
  sub_1E4658ABC(a1, v300);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v269 = v53;
  v270 = a7;
  if (v303[0] == v294 && v303[1] == a6)
  {

    goto LABEL_12;
  }

  v85 = sub_1E470B84C();

  if ((v85 & 1) == 0)
  {

    a7 = v270;
    goto LABEL_7;
  }

LABEL_12:
  v295 = v67;
  sub_1E46EEEA0(v290, v300);
  sub_1E46EEEA0(v291, v301);
  if (!v300[3])
  {
    if (v302)
    {
      v99 = a9;
      sub_1E46EEEA0(v301, v303);
      v100 = MEMORY[0x1E6969080];
      if (swift_dynamicCast())
      {
        v101 = v299[0];
        v102 = v299[1];
        v103 = sub_1E470A0BC();
        v104 = sub_1E470B2CC();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          *v105 = 0;
          _os_log_impl(&dword_1E45E0000, v103, v104, "CloudSyncConflictResolver: no existing data", v105, 2u);
          MEMORY[0x1E6917530](v105, -1, -1);
        }

        sub_1E4658A0C(v303);
        sub_1E465E050(v301, &unk_1ECF74DD0, &qword_1E471D8C0);
        sub_1E465E050(v300, &unk_1ECF74DD0, &qword_1E471D8C0);
        *(v99 + 3) = v100;

        *v99 = v101;
        *(v99 + 1) = v102;
        return;
      }

      sub_1E4658A0C(v303);
      a9 = v99;
    }

    goto LABEL_32;
  }

  v294 = a9;
  sub_1E46EEEA0(v300, v303);
  v86 = MEMORY[0x1E6969080];
  if (!swift_dynamicCast())
  {
LABEL_31:
    sub_1E4658A0C(v303);
    a9 = v294;
LABEL_32:
    sub_1E465E050(v300, &unk_1ECF75948, &qword_1E47200F8);

LABEL_33:
    *a9 = 0u;
    a9[1] = 0u;
    return;
  }

  v87 = v303[4];
  v88 = v303[5];
  v89 = v270;
  if (!v302)
  {
    v106 = sub_1E470A0BC();
    v107 = sub_1E470B2CC();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = v87;
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&dword_1E45E0000, v106, v107, "CloudSyncConflictResolver: no incoming data", v109, 2u);
      v110 = v109;
      v87 = v108;
      MEMORY[0x1E6917530](v110, -1, -1);
    }

    sub_1E4658A0C(v303);
    sub_1E465E050(v301, &unk_1ECF74DD0, &qword_1E471D8C0);
    sub_1E465E050(v300, &unk_1ECF74DD0, &qword_1E471D8C0);
    v111 = v294;
    *(v294 + 3) = v86;

    *v111 = v87;
    v111[1] = v88;
    return;
  }

  sub_1E46EEEA0(v301, v299);
  v90 = MEMORY[0x1E6969080];
  if (!swift_dynamicCast())
  {
    sub_1E465746C(v87, v88);
    sub_1E4658A0C(v299);
    goto LABEL_31;
  }

  v91 = v298;
  v291 = v297;
  if (sub_1E4663C7C(v87, v88, v297, v298))
  {
    v92 = v91;
    v93 = sub_1E470A0BC();
    v94 = sub_1E470B2CC();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = v90;
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_1E45E0000, v93, v94, "CloudSyncConflictResolver: incoming data and existing data are identical", v96, 2u);
      v97 = v96;
      v90 = v95;
      MEMORY[0x1E6917530](v97, -1, -1);
    }

    v98 = v294;
    *(v294 + 3) = v90;
    sub_1E465746C(v291, v92);

    *v98 = v87;
    v98[1] = v88;
LABEL_39:
    sub_1E4658A0C(v299);
    sub_1E4658A0C(v303);
LABEL_40:
    sub_1E465E050(v301, &unk_1ECF74DD0, &qword_1E471D8C0);
    sub_1E465E050(v300, &unk_1ECF74DD0, &qword_1E471D8C0);
    return;
  }

  v268 = qword_1ECF758A0;
  v112 = *(v295 + qword_1ECF758A0);
  sub_1E46552AC(v87, v88);
  v290 = *(v293 + 8);
  sub_1E470ABEC();
  v293 = v88;
  v267 = v87;
  v113 = v269;
  v114 = *(v287 + 56);
  v114(v289, 0, 1, v89);
  v115 = *(v295 + v268);
  sub_1E46552AC(v291, v91);
  sub_1E470ABEC();
  v266 = v91;
  v265 = 0;
  v116 = v286;
  v114(v288, 0, 1, v89);
  v117 = *(v116 + 16);
  v117(v59, v289, v113);
  v118 = v287;
  v119 = *(v287 + 48);
  if (v119(v59, 1, v89) == 1)
  {
    v120 = *(v116 + 8);
    v120(v59, v113);
    v121 = v267;
    v122 = v293;
    sub_1E46552AC(v267, v293);
    v123 = sub_1E470A0BC();
    v124 = sub_1E470B2CC();
    sub_1E465746C(v121, v122);
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v296 = v126;
      *v125 = 136315138;
      sub_1E46552AC(v121, v122);
      v127 = sub_1E4709BBC();
      v129 = v128;
      sub_1E465746C(v121, v293);
      v130 = sub_1E4654D04(v127, v129, &v296);
      v122 = v293;

      *(v125 + 4) = v130;
      _os_log_impl(&dword_1E45E0000, v123, v124, "CloudSyncConflictResolver: failed to deserialize either existingModel from %s", v125, 0xCu);
      sub_1E4658A0C(v126);
      MEMORY[0x1E6917530](v126, -1, -1);
      MEMORY[0x1E6917530](v125, -1, -1);
    }

    v131 = v288;
    v132 = v294;
    *(v294 + 3) = MEMORY[0x1E6969080];

    sub_1E465746C(v291, v266);
    *v132 = v121;
    v132[1] = v122;
    v133 = v131;
    v134 = v269;
    v120(v133, v269);
    v120(v289, v134);
    goto LABEL_39;
  }

  v135 = *(v118 + 32);
  v136 = v285;
  v264 = v135;
  v135(v285, v59, v89);
  v137 = v283;
  v138 = v288;
  v117(v283, v288, v113);
  v139 = v137;
  v140 = v119(v137, 1, v89);
  v141 = v138;
  if (v140 == 1)
  {
    v142 = *(v286 + 8);
    v142(v139, v113);
    v143 = v291;
    v144 = v266;
    sub_1E46552AC(v291, v266);
    v145 = v295;
    v146 = sub_1E470A0BC();
    v147 = sub_1E470B2CC();
    sub_1E465746C(v143, v144);
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v296 = v149;
      *v148 = 136315138;
      sub_1E46552AC(v143, v144);
      v150 = sub_1E4709BBC();
      v152 = v151;
      sub_1E465746C(v291, v144);
      v153 = sub_1E4654D04(v150, v152, &v296);
      v143 = v291;

      *(v148 + 4) = v153;
      v141 = v288;
      _os_log_impl(&dword_1E45E0000, v146, v147, "CloudSyncConflictResolver: failed to deserialize either incomingModel from %s", v148, 0xCu);
      sub_1E4658A0C(v149);
      MEMORY[0x1E6917530](v149, -1, -1);
      MEMORY[0x1E6917530](v148, -1, -1);
    }

    v154 = v293;
    v155 = v267;
    v156 = v144;
    v157 = v294;
    *(v294 + 3) = MEMORY[0x1E6969080];

    sub_1E465746C(v143, v156);
    *v157 = v155;
    v157[1] = v154;
    (*(v287 + 8))(v285, v270);
    v158 = v269;
    v142(v141, v269);
    v142(v289, v158);
    sub_1E4658A0C(v299);
    sub_1E4658A0C(v303);
    goto LABEL_40;
  }

  v159 = v284;
  v264(v284, v139, v89);
  v160 = v136;
  if ((sub_1E470AB9C() & 1) == 0)
  {
    v184 = v287;
    v185 = *(v287 + 16);
    v186 = v278;
    v185(v278, v159, v89);
    v187 = v279;
    v185(v279, v160, v89);
    v188 = sub_1E470A0BC();
    v189 = sub_1E470B2CC();
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      v290 = swift_slowAlloc();
      v296 = v290;
      *v190 = 136315394;
      LODWORD(v283) = v189;
      v191 = sub_1E470B81C();
      v192 = v187;
      v194 = v193;
      v195 = *(v184 + 8);
      v195(v186, v89);
      v196 = sub_1E4654D04(v191, v194, &v296);

      *(v190 + 4) = v196;
      *(v190 + 12) = 2080;
      v197 = sub_1E470B81C();
      v199 = v198;
      v195(v192, v89);
      v200 = sub_1E4654D04(v197, v199, &v296);

      *(v190 + 14) = v200;
      _os_log_impl(&dword_1E45E0000, v188, v283, "CloudSyncConflictResolver: no delta on incoming=%s from existing=%s", v190, 0x16u);
      v201 = v290;
      swift_arrayDestroy();
      v141 = v288;
      MEMORY[0x1E6917530](v201, -1, -1);
      MEMORY[0x1E6917530](v190, -1, -1);
    }

    else
    {

      v195 = *(v184 + 8);
      v195(v187, v89);
      v195(v186, v89);
    }

    v219 = v286;
    v220 = v293;
    v221 = v291;
    v222 = v294;
    *(v294 + 3) = MEMORY[0x1E6969080];

    sub_1E465746C(v221, v266);
    *v222 = v267;
    v222[1] = v220;
    v195(v284, v89);
    v195(v285, v89);
    v223 = *(v219 + 8);
    v224 = v269;
    v223(v141, v269);
    v223(v289, v224);
    sub_1E4658A0C(v299);
    sub_1E4658A0C(v303);
    goto LABEL_40;
  }

  v161 = sub_1E470AB9C();
  v162 = qword_1ECF7B628;
  v163 = v287;
  v164 = *(v287 + 16);
  if ((v161 & 1) == 0)
  {
    v202 = v273;
    v164(v273, v160, v89);
    v203 = v277;
    v164(v277, v159, v89);
    v204 = sub_1E470A0BC();
    v205 = sub_1E470B2CC();
    if (os_log_type_enabled(v204, v205))
    {
      v206 = v163;
      v207 = swift_slowAlloc();
      v290 = swift_slowAlloc();
      v296 = v290;
      *v207 = 136315394;
      LODWORD(v283) = v205;
      v208 = sub_1E470B81C();
      v210 = v209;
      v211 = *(v206 + 8);
      v211(v202, v89);
      v212 = sub_1E4654D04(v208, v210, &v296);

      *(v207 + 4) = v212;
      *(v207 + 12) = 2080;
      v213 = v277;
      v214 = sub_1E470B81C();
      v216 = v215;
      v211(v213, v89);
      v217 = sub_1E4654D04(v214, v216, &v296);

      *(v207 + 14) = v217;
      _os_log_impl(&dword_1E45E0000, v204, v283, "CloudSyncConflictResolver: no delta on existing=%s from incoming=%s", v207, 0x16u);
      v218 = v290;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v218, -1, -1);
      MEMORY[0x1E6917530](v207, -1, -1);
    }

    else
    {

      v211 = *(v163 + 8);
      v211(v203, v89);
      v211(v202, v89);
    }

    v239 = v286;
    v240 = v288;
    v241 = v293;
    v242 = v291;
    v243 = v294;
    *(v294 + 3) = MEMORY[0x1E6969080];

    sub_1E465746C(v267, v241);
    v244 = v266;
    *v243 = v242;
    v243[1] = v244;
    v211(v284, v89);
    v211(v285, v89);
    v245 = *(v239 + 8);
    v246 = v240;
    v247 = v269;
    v245(v246, v269);
    v245(v289, v247);
    sub_1E4658A0C(v299);
    sub_1E4658A0C(v303);
    goto LABEL_40;
  }

  v165 = v271;
  v164(v271, v160, v89);
  v166 = v272;
  v164(v272, v159, v89);
  v279 = v162;
  v167 = sub_1E470A0BC();
  LODWORD(v277) = sub_1E470B2CC();
  v278 = v167;
  if (os_log_type_enabled(v167, v277))
  {
    v168 = swift_slowAlloc();
    v273 = v168;
    v264 = swift_slowAlloc();
    v296 = v264;
    *v168 = 136315394;
    v169 = v274;
    v164(v274, v165, v89);
    v170 = *(v163 + 8);
    v170(v165, v89);
    v171 = v166;
    v172 = sub_1E470B81C();
    v174 = v173;
    v170(v169, v270);
    v175 = sub_1E4654D04(v172, v174, &v296);

    v176 = v273;
    *(v273 + 4) = v175;
    *(v176 + 6) = 2080;
    v164(v169, v171, v270);
    v170(v171, v270);
    v177 = sub_1E470B81C();
    v179 = v178;
    v283 = v170;
    v170(v169, v270);
    v180 = sub_1E4654D04(v177, v179, &v296);
    v89 = v270;

    v181 = v273;
    *(v273 + 14) = v180;
    v182 = v278;
    _os_log_impl(&dword_1E45E0000, v278, v277, "CloudSyncConflictResolver: merging existing=%s with incoming=%s", v181, 0x16u);
    v183 = v264;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v183, -1, -1);
    MEMORY[0x1E6917530](v181, -1, -1);
  }

  else
  {
    v277 = v164;
    v225 = *(v163 + 8);
    v225(v166, v89);
    v283 = v225;
    v225(v165, v89);
    v164 = v277;
  }

  v226 = v282;
  sub_1E470ABDC();
  v227 = v275;
  v164(v275, v226, v89);
  v228 = sub_1E470A0BC();
  v229 = sub_1E470B2CC();
  if (os_log_type_enabled(v228, v229))
  {
    v230 = swift_slowAlloc();
    v279 = swift_slowAlloc();
    v296 = v279;
    *v230 = 136315138;
    v231 = v274;
    v164(v274, v227, v89);
    v232 = v227;
    v233 = v283;
    (v283)(v232, v89);
    v234 = sub_1E470B81C();
    v236 = v235;
    v233(v231, v270);
    v237 = sub_1E4654D04(v234, v236, &v296);
    v89 = v270;

    *(v230 + 4) = v237;
    _os_log_impl(&dword_1E45E0000, v228, v229, "CloudSyncConflictResolver: merged=%s", v230, 0xCu);
    v238 = v279;
    sub_1E4658A0C(v279);
    MEMORY[0x1E6917530](v238, -1, -1);
    MEMORY[0x1E6917530](v230, -1, -1);
  }

  else
  {
    (v283)(v227, v89);
  }

  v248 = v288;
  v249 = v293;
  v250 = v291;
  v251 = v276;
  (*(v276 + 104))(v280, *MEMORY[0x1E6995278], v281);
  v252 = v265;
  v253 = sub_1E470A9FC();
  if (v252)
  {

    v255 = 0;
    v256 = 0xF000000000000000;
  }

  else
  {
    v255 = v253;
    v256 = v254;
  }

  sub_1E465746C(v250, v266);
  sub_1E465746C(v267, v249);
  (*(v251 + 8))(v280, v281);
  v257 = v283;
  (v283)(v282, v89);
  v257(v284, v89);
  v257(v160, v89);
  v258 = *(v286 + 8);
  v259 = v248;
  v260 = v269;
  v258(v259, v269);
  v258(v289, v260);
  sub_1E4658A0C(v299);
  sub_1E4658A0C(v303);
  sub_1E465E050(v301, &unk_1ECF74DD0, &qword_1E471D8C0);
  sub_1E465E050(v300, &unk_1ECF74DD0, &qword_1E471D8C0);
  if (v256 >> 60 == 15)
  {

    v261 = v294;
    *v294 = 0u;
    v261[1] = 0u;
  }

  else
  {
    v262 = v294;
    *(v294 + 3) = MEMORY[0x1E6969080];

    *v262 = v255;
    v262[1] = v256;
  }
}

id sub_1E46EB778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v21[3] = swift_getObjectType();
  v21[0] = a2;
  if (a3)
  {
    *(&v19 + 1) = swift_getObjectType();
    *&v18 = a3;
    sub_1E46BAC64(&v18, v20);
    if (a4)
    {
LABEL_3:
      ObjectType = swift_getObjectType();
      *&v16 = a4;
      sub_1E46BAC64(&v16, &v18);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v18 = 0u;
  v19 = 0u;
LABEL_6:

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(&v16, v21, v20, &v18);

  sub_1E465E050(&v18, &unk_1ECF74DD0, &qword_1E471D8C0);
  sub_1E465E050(v20, &unk_1ECF74DD0, &qword_1E471D8C0);
  v8 = ObjectType;
  if (ObjectType)
  {
    v9 = sub_1E465057C(&v16, ObjectType);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9, v9);
    v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_1E470B83C();
    (*(v10 + 8))(v13, v8);
    sub_1E4658A0C(&v16);
  }

  else
  {
    v14 = 0;
  }

  sub_1E4658A0C(v21);

  return v14;
}

void sub_1E46EB990(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  [*(v1 + qword_1ECF75888) setEnableCloudSync_];
  v5 = *(v1 + qword_1ECF75890);
  v16 = [v5 privateCloudDatabaseController];
  v6 = sub_1E470A0BC();
  v7 = sub_1E470B2CC();
  v8 = os_log_type_enabled(v6, v7);
  if (a1)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1E45E0000, v6, v7, "CRDTModelCloudDataManager updateWithSyncEnabled: enabled sync to CK", v9, 2u);
      MEMORY[0x1E6917530](v9, -1, -1);
    }

    v10 = *(v2 + qword_1ECF75878);
    sub_1E4658E2C();
    v11 = sub_1E470AF0C();

    [v16 addObserver:v10 recordType:v11];

    v12 = [v5 transactionManager];
    type metadata accessor for CRDTModelCloudDataManager(0, v4[10], v4[11], v4[12]);
    sub_1E4658E2C();
    v13 = sub_1E470AF0C();

    [v12 signalSyncToCKTransactionForEntityName:v13 syncManager:v10];
  }

  else
  {
    if (v8)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1E45E0000, v6, v7, "CRDTModelCloudDataManager updateWithSyncEnabled: disabled sync to CK", v14, 2u);
      MEMORY[0x1E6917530](v14, -1, -1);
    }

    v15 = *(v2 + qword_1ECF75878);
    sub_1E4658E2C();
    v13 = sub_1E470AF0C();

    [v16 removeObserver:v15 recordType:v13];
  }
}

char *sub_1E46EBC2C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_1E470B5CC();

  strcpy(v40, "CRDTModelSync.");
  v40[15] = -18;
  v10 = sub_1E4658E2C();
  MEMORY[0x1E6915D10](v10);

  sub_1E470A0CC();
  *&v4[qword_1ECF75898] = 0;
  *&v4[qword_1ECF758A8] = 0;
  *&v4[qword_1ECF7B630 + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[qword_1ECF7B638] = 0;
  *&v4[qword_1ECF758A0] = a2;
  *&v4[qword_1ECF758B0] = a4;
  v37 = a2;
  swift_unknownObjectRetain();
  v11 = [a3 managedObjectContext];
  *&v4[qword_1ECF75870] = a3;
  *&v4[qword_1ECF75890] = a1;
  type metadata accessor for CRDTModelSyncMapper();
  swift_allocObject();
  v12 = a3;
  v13 = a1;
  v35 = CRDTModelSyncMapper.init()();
  v14 = [objc_allocWithZone(BCCloudDataSyncManager) initWithCloudKitController:v13 dataMapper:v35];
  *&v4[qword_1ECF75878] = v14;
  v15 = v14;
  v36 = v11;
  v16 = sub_1E46E9394();
  v17 = [objc_allocWithZone(BCCloudChangeTokenController) initWithMOC:v36 zoneName:v16 cloudKitController:v13];

  *&v4[qword_1ECF75888] = v17;
  v18 = v12;
  sub_1E46E92CC();
  type metadata accessor for CRDTModelSyncEntity(0);
  type metadata accessor for CRDTModelSync();
  v19 = objc_allocWithZone(BCCloudDataManager);
  v20 = v13;
  v21 = v15;

  v22 = sub_1E470AF0C();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [v19 initWithCloudDataSource:v18 entityName:v22 notificationName:0 immutableClass:ObjCClassFromMetadata mutableClass:swift_getObjCClassFromMetadata() syncManager:v21 cloudKitController:v20 dataMapper:v35];

  *&v5[qword_1ECF75880] = v24;
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v39, sel_init);
  sub_1E45E2DE8(0, &qword_1ECF75958, off_1E8758D38);
  v26 = *&v25[qword_1ECF75888];
  v27 = *&v25[qword_1ECF75890];
  v28 = v25;
  v29 = v26;
  v30 = [v27 privateCloudDatabaseController];
  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithZoneDataManager:v28 tokenController:v29 databaseController:v30];

  v32 = *&v28[qword_1ECF75898];
  *&v28[qword_1ECF75898] = v31;

  v33 = *&v28[qword_1ECF75878];
  [v33 setDelegate_];

  swift_unknownObjectRelease();

  return v28;
}

id sub_1E46EC078()
{
  ObjectType = swift_getObjectType();
  v2 = [*&v0[qword_1ECF75890] privateCloudDatabaseController];
  v3 = qword_1ECF75878;
  [v2 removeObserver_];

  [*&v0[v3] setDelegate_];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1E46EC140(uint64_t a1)
{
  v2 = qword_1ECF7B628;
  v3 = sub_1E470A0DC();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  sub_1E466A310(a1 + qword_1ECF7B630);

  return swift_unknownObjectRelease();
}

void sub_1E46EC24C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (a4)();
    return;
  }

  v8 = Strong;
  if (a2)
  {
    v9 = a2;
    v10 = sub_1E470A0BC();
    v11 = sub_1E470B2AC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_1E470B89C();
      v16 = sub_1E4654D04(v14, v15, &v23);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1E45E0000, v10, v11, "CRDTModelCloudDataManager cloudData: couldn't load existing data: %s", v12, 0xCu);
      sub_1E4658A0C(v13);
      MEMORY[0x1E6917530](v13, -1, -1);
      MEMORY[0x1E6917530](v12, -1, -1);
    }

    goto LABEL_16;
  }

  if (a1)
  {
    type metadata accessor for CRDTModelSync();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;
      swift_unknownObjectRetain();
      a4(v18);

      swift_unknownObjectRelease();
      return;
    }

    v19 = sub_1E470A0BC();
    LOBYTE(v20) = sub_1E470B2AC();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_15;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "CRDTModelCloudDataManager cloudData: loaded existing data with the wrong type";
    goto LABEL_14;
  }

  v19 = sub_1E470A0BC();
  v20 = sub_1E470B2CC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "CRDTModelCloudDataManager cloudData: no existing data";
LABEL_14:
    _os_log_impl(&dword_1E45E0000, v19, v20, v22, v21, 2u);
    MEMORY[0x1E6917530](v21, -1, -1);
  }

LABEL_15:

LABEL_16:
  a4(0);
}

uint64_t sub_1E46EC4FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_1E46EC57C(char a1, char a2, id a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  v12 = a3;
  v13 = sub_1E470A0BC();
  v14 = sub_1E470B2CC();

  if (os_log_type_enabled(v13, v14))
  {
    v21 = a7;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 134218498;
    *(v15 + 4) = a1 & 1;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a2 & 1;
    *(v15 + 22) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      sub_1E470B89C();
    }

    sub_1E4650534(&qword_1ECF75938, &qword_1E47200E0);
    v17 = sub_1E470AF6C();
    v19 = sub_1E4654D04(v17, v18, &v22);

    *(v15 + 24) = v19;
    _os_log_impl(&dword_1E45E0000, v13, v14, "CRDTModelCloudDataManager q_sync: BCCloudDataManager is done: success=%ld hasChanges=%ld error=%s", v15, 0x20u);
    sub_1E4658A0C(v16);
    MEMORY[0x1E6917530](v16, -1, -1);
    MEMORY[0x1E6917530](v15, -1, -1);

    a7 = v21;
  }

  else
  {
  }

  a5(a1 & 1);
  return [a7 endTransaction];
}

void sub_1E46EC754(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

void sub_1E46EC7DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_1ECF75880);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1E46EF030;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E46EC8C8;
  v8[3] = &unk_1F5E66760;
  v7 = _Block_copy(v8);

  [v5 hasSaltChangedWithCompletion_];
  _Block_release(v7);
}

void sub_1E46EC8C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

uint64_t sub_1E46EC940(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  sub_1E46EC7DC(sub_1E46EF034, v5);
}

void sub_1E46EC9CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1E470A0BC();
  v7 = sub_1E470B2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315138;
    v10 = sub_1E4658E2C();
    v12 = sub_1E4654D04(v10, v11, v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1E45E0000, v6, v7, "CRDTModelCloudDataManager dissociateCloudDataFromSyncWithCompletion for: %s", v8, 0xCu);
    sub_1E4658A0C(v9);
    MEMORY[0x1E6917530](v9, -1, -1);
    MEMORY[0x1E6917530](v8, -1, -1);
  }

  v13 = *&v2[qword_1ECF75880];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v17[4] = sub_1E46EEF40;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1E46BA7E4;
  v17[3] = &unk_1F5E66698;
  v15 = _Block_copy(v17);
  v16 = v3;
  sub_1E45EA6A0(a1, a2);

  [v13 dissociateCloudDataFromSyncWithCompletion_];
  _Block_release(v15);
}

void sub_1E46ECBBC(char a1, id a2, void *a3, void (*a4)(void, id), uint64_t a5)
{
  if (a1)
  {
    v8 = *(a3 + qword_1ECF75888);
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a5;
    v24[4] = sub_1E46EEF94;
    v24[5] = v9;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 1107296256;
    v24[2] = sub_1E46BA7E4;
    v24[3] = &unk_1F5E666E8;
    v10 = _Block_copy(v24);
    v11 = a3;
    sub_1E45EA6A0(a4, a5);

    [v8 dissociateCloudDataFromSyncWithCompletion_];
    _Block_release(v10);
  }

  else
  {
    v13 = (*MEMORY[0x1E69E7D40] & *a3);
    v14 = a2;
    v15 = sub_1E470A0BC();
    v16 = sub_1E470B2AC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v17 = 136315394;
      type metadata accessor for CRDTModelCloudDataManager(0, v13[10], v13[11], v13[12]);
      v20 = sub_1E4658E2C();
      v22 = sub_1E4654D04(v20, v21, v24);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2112;
      if (a2)
      {
        v23 = sub_1E4709AFC();
      }

      else
      {
        sub_1E45E2DE8(0, &qword_1ECF742B0, 0x1E696AEC0);
        v23 = sub_1E470B44C();
      }

      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&dword_1E45E0000, v15, v16, "CRDTModelCloudDataManager failed to dissociate data for: %s %@", v17, 0x16u);
      sub_1E465E050(v18, &qword_1ECF75100, qword_1E471E820);
      MEMORY[0x1E6917530](v18, -1, -1);
      sub_1E4658A0C(v19);
      MEMORY[0x1E6917530](v19, -1, -1);
      MEMORY[0x1E6917530](v17, -1, -1);
    }

    if (a4)
    {
      a4(0, a2);
    }
  }
}

void sub_1E46ECEA4(char a1, id a2, void *a3, void (*a4)(void, id))
{
  v7 = (*MEMORY[0x1E69E7D40] & *a3);
  v8 = a2;
  v9 = sub_1E470A0BC();
  v10 = sub_1E470B2CC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315650;
    type metadata accessor for CRDTModelCloudDataManager(0, v7[10], v7[11], v7[12]);
    v14 = sub_1E4658E2C();
    v16 = sub_1E4654D04(v14, v15, &v18);

    *(v11 + 4) = v16;
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    *(v11 + 18) = 2112;
    if (a2)
    {
      v17 = sub_1E4709AFC();
    }

    else
    {
      sub_1E45E2DE8(0, &qword_1ECF742B0, 0x1E696AEC0);
      v17 = sub_1E470B44C();
    }

    *(v11 + 20) = v17;
    *v12 = v17;
    _os_log_impl(&dword_1E45E0000, v9, v10, "CRDTModelCloudDataManager dissociateCloudDataFromSyncWithCompletion for: %s finish with success:%{BOOL}d error: %@", v11, 0x1Cu);
    sub_1E465E050(v12, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v12, -1, -1);
    sub_1E4658A0C(v13);
    MEMORY[0x1E6917530](v13, -1, -1);
    MEMORY[0x1E6917530](v11, -1, -1);

    if (a4)
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (a4)
    {
LABEL_8:
      a4(a1 & 1, a2);
    }
  }
}

void sub_1E46ED0E8(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1E46EF034;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = a1;
  sub_1E46EC9CC(v7, v6);
  sub_1E45EB5D8(v7, v6);
}

void sub_1E46ED1A0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (*(v3 + qword_1ECF7B638) == 1)
  {
    v6 = v3;
    v8 = sub_1E470A0BC();
    v9 = sub_1E470B2CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1E45E0000, v8, v9, "CRDTModelCloudDataManager startSyncToCKWithCompletion: starting syncing to CK", v10, 2u);
      MEMORY[0x1E6917530](v10, -1, -1);
    }

    v11 = *(v6 + qword_1ECF75880);
    v13[4] = a2;
    v13[5] = a3;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1E46C4624;
    v13[3] = &unk_1F5E66620;
    v12 = _Block_copy(v13);

    [v11 startSyncToCKWithSyncManager:a1 completion:v12];
    _Block_release(v12);
  }

  else
  {
    a2(a1);
  }
}

uint64_t sub_1E46ED31C(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = a1;
  sub_1E46ED1A0(v8, sub_1E46EEF38, v7);
}

void sub_1E46ED3BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = [*(v1 + qword_1ECF75890) transactionManager];
  type metadata accessor for CRDTModelCloudDataManager(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), *((v4 & v3) + 0x60));
  sub_1E4658E2C();
  v6 = sub_1E470AF0C();

  [v5 signalSyncToCKTransactionForEntityName:v6 syncManager:a1];
}

void sub_1E46ED4B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1E46ED3BC(v4);
}

uint64_t sub_1E46ED520(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
  v8 = sub_1E470B0BC();
  v9 = a3;
  v10 = a1;
  sub_1E46EDE50(v8);
  _Block_release(v7);
}

uint64_t sub_1E46ED5C8(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_1E4650534(&qword_1ECF75D40, &qword_1E47200E8);
  v8 = sub_1E470B0BC();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = a1;
  sub_1E46EDF90(v8, sub_1E46EF034, v9);
}

uint64_t sub_1E46ED6A0(char a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a4(a1 & 1, a3);
  }

  v11 = Strong;
  if (a2 >> 62)
  {
    result = sub_1E470B50C();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1E6916300](0, a2);
    goto LABEL_7;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(a2 + 32);
    swift_unknownObjectRetain();
LABEL_7:
    v14 = [objc_allocWithZone(type metadata accessor for CRDTModelSync()) initWithCloudData_];
    if (v14)
    {
      v15 = v14;
      v16 = &v11[qword_1ECF7B630];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v16 + 1);
        ObjectType = swift_getObjectType();
        (*(v17 + 8))(v15, ObjectType, v17);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = sub_1E470A0BC();
        v23 = sub_1E470B2AC();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1E45E0000, v22, v23, "CRDTModelCloudDataManager resolveConflictsFor: delegate is nil", v24, 2u);
          MEMORY[0x1E6917530](v24, -1, -1);
        }

        swift_unknownObjectRelease();
      }

      return a4(a1 & 1, a3);
    }

    swift_unknownObjectRelease();
LABEL_11:
    v19 = sub_1E470A0BC();
    v20 = sub_1E470B2AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1E45E0000, v19, v20, "CRDTModelCloudDataManager resolveConflictsFor: couldn't obtain cloudData", v21, 2u);
      MEMORY[0x1E6917530](v21, -1, -1);
    }

    return a4(a1 & 1, a3);
  }

  __break(1u);
  return result;
}

void sub_1E46ED92C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  sub_1E4650534(&qword_1ECF75D40, &qword_1E47200E8);
  v7 = sub_1E470B0BC();

  v8 = a4;
  v6(a2, v7, a4);
}

uint64_t sub_1E46ED9E0(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
  v8 = sub_1E470B0BC();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = a1;
  sub_1E46EE464(v8, sub_1E46EF034, v9);
}

uint64_t sub_1E46EDABC(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
  v8 = sub_1E470B0BC();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = a1;
  sub_1E46EEBC0(v8, sub_1E46BAC5C, v9);
}

id sub_1E46EDB98(void *a1)
{
  sub_1E46EDC9C(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50), *((*MEMORY[0x1E69E7D40] & *a1) + 0x58), *((*MEMORY[0x1E69E7D40] & *a1) + 0x60));
  v1 = sub_1E470AF0C();

  return v1;
}

void sub_1E46EDCD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_1E46553DC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E4656840(v16, a4 & 1);
      v11 = sub_1E46553DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1E470B86C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1E465827C();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1E46EDE50(uint64_t a1)
{

  oslog = sub_1E470A0BC();
  v2 = sub_1E470B2AC();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    v5 = sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
    v6 = MEMORY[0x1E6915DE0](a1, v5);
    v8 = sub_1E4654D04(v6, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_1E45E0000, oslog, v2, "CRDTModelCloudDataManager removeCloudDataFor: asked to remove cloud data: %s", v3, 0xCu);
    sub_1E4658A0C(v4);
    MEMORY[0x1E6917530](v4, -1, -1);
    MEMORY[0x1E6917530](v3, -1, -1);
  }
}

void sub_1E46EDF90(unint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = a2;
  if (*(v3 + qword_1ECF7B638) == 1)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_33:
      v41 = a3;
      v42 = sub_1E470B50C();
      a3 = v41;
      v7 = v42;
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = a3;
    v45 = v3;
    v43 = v4;
    if (v7)
    {
      v4 = 0;
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        v9 = v4;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1E6916300](v9, a1);
            v4 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v9 >= *(v6 + 16))
            {
              goto LABEL_32;
            }

            v10 = *(a1 + 8 * v9 + 32);
            swift_unknownObjectRetain();
            v4 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          swift_getObjectType();
          v11 = swift_conformsToProtocol2();
          if (v11)
          {
            if (v10)
            {
              break;
            }
          }

          swift_unknownObjectRelease();
          ++v9;
          if (v4 == v7)
          {
            goto LABEL_25;
          }
        }

        v3 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_1E4693FF8(0, v8[2] + 1, 1, v8);
        }

        v14 = v8[2];
        v13 = v8[3];
        if (v14 >= v13 >> 1)
        {
          v8 = sub_1E4693FF8((v13 > 1), v14 + 1, 1, v8);
        }

        v8[2] = v14 + 1;
        v15 = &v8[2 * v14];
        v15[4] = v10;
        v15[5] = v3;
      }

      while (v4 != v7);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

LABEL_25:
    v16 = v8[2];
    if (v16)
    {
      v17 = v8 + 5;
      v18 = MEMORY[0x1E69E7CC8];
      do
      {
        v19 = *(v17 - 1);
        v20 = *v17;
        ObjectType = swift_getObjectType();
        v22 = *(v20 + 8);
        swift_unknownObjectRetain();
        v23 = v22(ObjectType, v20);
        v25 = v24;
        swift_unknownObjectRetain();
        v26 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v18;
        sub_1E46EDCD4(v19, v23, v25, v26, aBlock);
        swift_unknownObjectRelease();

        v18 = aBlock[0];
        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v27 = v45;
    v28 = sub_1E470A0BC();
    v29 = sub_1E470B2CC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;

      sub_1E4650534(&qword_1ECF75D40, &qword_1E47200E8);
      v32 = sub_1E470AE4C();
      v34 = v33;

      v35 = sub_1E4654D04(v32, v34, aBlock);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1E45E0000, v28, v29, "CRDTModelCloudDataManager updateSyncGenerationFromCloudData: updating sync generation for %s", v30, 0xCu);
      sub_1E4658A0C(v31);
      MEMORY[0x1E6917530](v31, -1, -1);
      v27 = v45;
      MEMORY[0x1E6917530](v30, -1, -1);
    }

    v36 = *(v27 + qword_1ECF75880);

    sub_1E4650534(&qword_1ECF75D40, &qword_1E47200E8);
    v37 = sub_1E470AE2C();

    v38 = sub_1E470AF0C();
    v39 = swift_allocObject();
    *(v39 + 16) = v43;
    *(v39 + 24) = v44;
    aBlock[4] = sub_1E46EEF10;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46EC8C8;
    aBlock[3] = &unk_1F5E665D0;
    v40 = _Block_copy(aBlock);

    [v36 updateSyncGenerationFromCloudData:v37 predicate:0 propertyIDKey:v38 completion:v40];
    _Block_release(v40);
  }

  else
  {
    a2(0, 0);
  }
}

void sub_1E46EE464(unint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v8 = *MEMORY[0x1E69E7D40] & *v3;
  v9 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v67 - v15;
  if (a1 >> 62)
  {
    if (sub_1E470B50C() < 2)
    {
      goto LABEL_6;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_6;
  }

  v17 = sub_1E470A0BC();
  v18 = sub_1E470B2AC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v73 = a2;
    v20 = v8;
    v21 = v19;
    *v19 = 0;
    _os_log_impl(&dword_1E45E0000, v17, v18, "CRDTModelCloudDataManager resolveConflictsFor: received changes for more than 1 record. This shouldn't be possible", v19, 2u);
    v22 = v21;
    v8 = v20;
    a2 = v73;
    MEMORY[0x1E6917530](v22, -1, -1);
  }

LABEL_6:
  if (*(v4 + qword_1ECF7B638) != 1)
  {
    a2(0, 0);
    return;
  }

  v72 = a3;
  v70 = v16;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1E6916300](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v23 = *(a1 + 32);
  }

  v71 = v8;
  v73 = a2;
  v24 = v23;
  v25 = sub_1E470A0BC();
  v26 = sub_1E470B2CC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v74 = v69;
    *v27 = 138544387;
    *(v27 + 4) = v24;
    *v28 = v24;
    *(v27 + 12) = 2114;
    v29 = v24;
    v30 = [v29 recordID];
    *(v27 + 14) = v30;
    v67 = v28;
    v28[1] = v30;
    *(v27 + 22) = 2082;
    v31 = [v29 creationDate];
    v68 = v26;
    if (v31)
    {
      v32 = v31;
      v33 = v70;
      sub_1E4709C9C();

      v34 = sub_1E4709CCC();
      (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    }

    else
    {
      v35 = sub_1E4709CCC();
      (*(*(v35 - 8) + 56))(v70, 1, 1, v35);
    }

    v36 = sub_1E470AF6C();
    v38 = sub_1E4654D04(v36, v37, &v74);

    *(v27 + 24) = v38;
    *(v27 + 32) = 2082;
    v39 = [v29 modificationDate];
    if (v39)
    {
      v40 = v39;
      sub_1E4709C9C();

      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = sub_1E4709CCC();
    (*(*(v42 - 8) + 56))(v12, v41, 1, v42);
    v43 = sub_1E470AF6C();
    v45 = sub_1E4654D04(v43, v44, &v74);

    *(v27 + 34) = v45;
    *(v27 + 42) = 2081;
    v46 = [v29 modifiedByDevice];
    if (v46)
    {
      v47 = v46;
      v48 = sub_1E470AF1C();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    aBlock = v48;
    v76 = v50;
    sub_1E4650534(&qword_1ECF75938, &qword_1E47200E0);
    v51 = sub_1E470AF6C();
    v53 = sub_1E4654D04(v51, v52, &v74);

    *(v27 + 44) = v53;
    _os_log_impl(&dword_1E45E0000, v25, v68, "CRDTModelCloudDataManager resolveConflictsFor: resolving conflicts for record: %{public}@ id: %{public}@ created: %{public}s modified: %{public}s modifiedByDevice:%{private}s", v27, 0x34u);
    sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
    v54 = v67;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v54, -1, -1);
    v55 = v69;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v55, -1, -1);
    MEMORY[0x1E6917530](v27, -1, -1);
  }

  v56 = *(v4 + qword_1ECF75880);
  sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
  v57 = sub_1E470B0AC();
  sub_1E46E9574();
  sub_1E4650534(&unk_1ECF747B0, &unk_1E471B820);
  v58 = sub_1E470AE2C();

  sub_1E46E9574();
  v59 = sub_1E470AE2C();

  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  v62 = v71;
  v63 = v72;
  *(v61 + 16) = *(v71 + 80);
  v64 = *(v62 + 96);
  v65 = v73;
  *(v61 + 32) = v64;
  *(v61 + 40) = v65;
  *(v61 + 48) = v63;
  *(v61 + 56) = v60;
  v79 = sub_1E46EEE40;
  v80 = v61;
  aBlock = MEMORY[0x1E69E9820];
  v76 = 1107296256;
  v77 = sub_1E46ED92C;
  v78 = &unk_1F5E66508;
  v66 = _Block_copy(&aBlock);

  [v56 resolveConflictsForRecords:v57 withResolvers:v58 mergers:v59 completion:v66];
  _Block_release(v66);
}

void sub_1E46EEBC0(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  if (*(v3 + qword_1ECF7B638) == 1)
  {
    v6 = v3;

    v8 = sub_1E470A0BC();
    v9 = sub_1E470B2CC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136315138;
      v12 = sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
      v13 = MEMORY[0x1E6915DE0](a1, v12);
      v15 = sub_1E4654D04(v13, v14, v19);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1E45E0000, v8, v9, "CRDTModelCloudDataManager failedRecordIDs: failed records %s", v10, 0xCu);
      sub_1E4658A0C(v11);
      MEMORY[0x1E6917530](v11, -1, -1);
      MEMORY[0x1E6917530](v10, -1, -1);
    }

    v16 = *(v6 + qword_1ECF75880);
    sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
    v17 = sub_1E470B0AC();
    v19[4] = a2;
    v19[5] = a3;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1E46BA7E4;
    v19[3] = &unk_1F5E66468;
    v18 = _Block_copy(v19);

    [v16 failedRecordIDs:v17 completion:v18];
    _Block_release(v18);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_1E46EEE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E46EEEA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&unk_1ECF74DD0, &qword_1E471D8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46EEF4C()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E46EEFAC(void (*a1)(void))
{

  a1(*(v1 + 56));

  return MEMORY[0x1EEE6BDD0](v1, 64, 7);
}

uint64_t sub_1E46EF0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1E46984F4();
  result = sub_1E470B46C();
  *a4 = result;
  return result;
}

id sub_1E46EF164(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id CRDTModelLocalFileManager.DefaultConfig.crdtContext.getter()
{
  v0 = sub_1E4670614();

  return v0;
}

uint64_t CRDTModelLocalFileManager.DefaultConfig.storeDirectory.getter()
{
  v0 = sub_1E4709B9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() books];
  v6 = [v5 containerURL];

  sub_1E4709B7C();
  sub_1E4709B6C();

  return (*(v1 + 8))(v4, v0);
}

uint64_t CRDTModelLocalFileManager.SyncError.hashValue.getter()
{
  v1 = *v0;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  return sub_1E470B91C();
}

uint64_t sub_1E46EF434(uint64_t a1)
{
  sub_1E470B8FC();
  CRDTModelLocalFileManager.SyncError.hash(into:)();
  return sub_1E470B91C();
}

uint64_t CRDTModelLocalFileManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CRDTModelLocalFileManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E466C098;
}

uint64_t sub_1E46EF5A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for ModelState(0, v3, *(*v1 + 96), *(*v1 + 104));
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - v7;

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a1, v8, v3);
  return (*(v5 + 8))(v8, v4);
}

BOOL sub_1E46EF6F4()
{
  v1 = type metadata accessor for ModelState(0, *(*v0 + 80), *(*v0 + 96), *(*v0 + 104));
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v8 - v4;

  MutableObservableContainer.value.getter();

  v6 = v5[*(v1 + 44)];
  (*(v2 + 8))(v5, v1);
  v10 = v6;
  v9 = 1;
  return static ModelState.LoadedState.== infix(_:_:)(&v10, &v9);
}

uint64_t CRDTModelLocalFileManager.observable.getter()
{
  v1 = type metadata accessor for ModelState(255, *(*v0 + 80), *(*v0 + 96), *(*v0 + 104));
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer(0, v1, WitnessTable, v3);
  sub_1E470B37C();
  return v5;
}

uint64_t sub_1E46EF9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 80);
  v4 = type metadata accessor for ModelState(0, v3, *(*a1 + 96), *(*a1 + 104));
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - v7;

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a2, v8, v3);
  return (*(v5 + 8))(v8, v4);
}

uint64_t CRDTModelLocalFileManager.enableCloudSync.getter()
{
  v1 = qword_1EE2B0590;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRDTModelLocalFileManager.enableCloudSync.setter(char a1)
{
  v3 = qword_1EE2B0590;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRDTModelLocalFileManager.__allocating_init(clientName:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = v4[11];
  v9 = v4[12];
  v10 = v4[13];
  v14 = v4[10];
  v7 = v14;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  type metadata accessor for CRDTModelLocalFileContextStore(0, &v14);
  v11 = static CRDTModelLocalFileContextStore.persistentContext(_:)(a1, a2);

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v17 = type metadata accessor for CRDTModelLocalFileManager.DefaultConfig(0, &v14);
  v18 = &protocol witness table for CRDTModelLocalFileManager<A>.DefaultConfig;
  v14 = v11;
  v12 = swift_allocObject();
  CRDTModelLocalFileManager.init(config:delegate:)(&v14, 0, 0);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t CRDTModelLocalFileManager.__allocating_init(config:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  CRDTModelLocalFileManager.init(config:delegate:)(a1, a2, a3);
  return v6;
}

void *CRDTModelLocalFileManager.init(config:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v109 = a3;
  v124 = a2;
  v126 = a1;
  v134 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  v116 = sub_1E470A5DC();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v6);
  v114 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1E4709B9C();
  v123 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v8);
  v105 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v125 = &v98 - v12;
  v13 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v108 = &v98 - v15;
  v102 = v5;
  v16 = v5[10];
  v17 = v5[13];
  v18 = v5[12];
  v103 = v18;
  v107 = v17;
  v19 = type metadata accessor for ModelState.Source(0, v16, v18, v17);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v106 = &v98 - v21;
  v122 = v16;
  v121 = type metadata accessor for ModelState(0, v16, v18, v17);
  v113 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v22);
  v119 = &v98 - v23;
  v120 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v104 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v118 = &v98 - v29;
  v30 = sub_1E470B35C();
  v101 = v30;
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1E470B33C();
  MEMORY[0x1EEE9AC00](v110, v35);
  v112 = sub_1E470A61C();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v36);
  v38 = &v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v39 = qword_1EE2AD350;
  v100 = sub_1E465E1DC();
  sub_1E470A60C();
  sub_1E470B32C();
  v40 = *(v31 + 104);
  v40(v34, *MEMORY[0x1E69E8098], v30);
  *(v4 + v39) = sub_1E470B39C();
  v99 = qword_1EE2AD298;
  v98 = "ileManager.model";
  sub_1E470A5FC();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1E45E2E78(&unk_1EE2ACCE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2EC0(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  v40(v34, *MEMORY[0x1E69E8090], v101);
  v110 = v38;
  *(v4 + v99) = sub_1E470B39C();
  v41 = qword_1EE2AD2A8;
  v42 = [objc_allocWithZone(BDSOSTransactionProvider) init];
  type metadata accessor for ObservableTransaction(0);
  v43 = swift_allocObject();
  *(v4 + v41) = sub_1E46F3D10(0xD000000000000035, 0x80000001E471A710, v42, v43);
  *(v4 + qword_1EE2B0590) = 0;
  aBlock = 0;
  v129 = 0xE000000000000000;
  sub_1E470B5CC();

  aBlock = 0xD000000000000013;
  v129 = 0x80000001E471A750;
  v102 = v102[11];
  v101 = v102[1];
  v44 = v122;
  v45 = (v101)(v122);
  MEMORY[0x1E6915D10](v45);

  v46 = v105;
  sub_1E470A0CC();
  v47 = v118;
  v48 = v103;
  sub_1E470AA9C();
  v49 = v126[3];
  v50 = v126[4];
  sub_1E465057C(v126, v49);
  *(v4 + qword_1EE2AD340) = (*(v50 + 8))(v49, v50);
  swift_beginAccess();
  v4[3] = v109;
  swift_unknownObjectWeakAssign();
  v51 = v120;
  v52 = v104;
  (*(v120 + 16))(v104, v47, v44);
  LOBYTE(aBlock) = 0;
  v53 = v106;
  (*(v51 + 56))(v106, 1, 2, v44);
  v54 = type metadata accessor for CRDTModelRevisionInfo(0);
  v55 = v108;
  (*(*(v54 - 8) + 56))(v108, 1, 1, v54);
  v56 = v119;
  ModelState.init(model:loaded:source:revisionInfo:)(v52, &aBlock, v53, v55, v44, v48, v107, v119);
  v57 = v121;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer(0, v57, WitnessTable, v59);
  v4[4] = sub_1E466A1E0(v56);
  v60 = v126[3];
  v61 = v126[4];
  sub_1E465057C(v126, v60);
  (*(v61 + 16))(v60, v61);
  v62 = v123;
  v101();
  sub_1E4709B6C();

  v63 = v46;
  v64 = v117;
  (*(v62 + 32))(v4 + qword_1EE2AD358, v46);

  v65 = sub_1E470A0BC();
  v66 = sub_1E470B29C();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    aBlock = v68;
    *v67 = 136315138;
    (*(v62 + 16))(v63, v4 + qword_1EE2AD358, v64);
    sub_1E45E2E78(&qword_1ECF754D0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v69 = sub_1E470B81C();
    v71 = v70;

    (*(v62 + 8))(v63, v64);
    v72 = sub_1E4654D04(v69, v71, &aBlock);

    *(v67 + 4) = v72;
    _os_log_impl(&dword_1E45E0000, v65, v66, "CRDTModelLocalFileManager Init: modelFileURL: %s", v67, 0xCu);
    sub_1E4658A0C(v68);
    MEMORY[0x1E6917530](v68, -1, -1);
    MEMORY[0x1E6917530](v67, -1, -1);
  }

  else
  {
  }

  v73 = [objc_opt_self() defaultManager];
  v74 = sub_1E4709B4C();
  aBlock = 0;
  v75 = [v73 createDirectoryAtURL:v74 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  if (v75)
  {
    v76 = aBlock;
  }

  else
  {
    v77 = aBlock;
    v78 = sub_1E4709B0C();

    swift_willThrow();
    v79 = sub_1E470B2AC();
    if (qword_1EE2ADDE8 != -1)
    {
      swift_once();
    }

    v80 = qword_1EE2ADDF0;
    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1E471B800;
    v82 = sub_1E4709B1C();
    v84 = v83;
    v85 = MEMORY[0x1E69E6158];
    *(v81 + 56) = MEMORY[0x1E69E6158];
    v86 = sub_1E4663DE4();
    *(v81 + 64) = v86;
    *(v81 + 32) = v82;
    *(v81 + 40) = v84;
    swift_getErrorValue();
    v87 = sub_1E470B89C();
    *(v81 + 96) = v85;
    *(v81 + 104) = v86;
    *(v81 + 72) = v87;
    *(v81 + 80) = v88;
    sub_1E470A0AC(v79, &dword_1E45E0000, v80, "CRDTModelLocalFileManager unable to create directory at %@ error=%@", 67, 2, v81);
  }

  v89 = v123;
  sub_1E466A268(*(v4 + qword_1EE2AD2A8), &protocol witness table for ObservableTransaction);
  v90 = MEMORY[0x1E69E7CC0];
  *(v4 + qword_1EE2AD2B0) = MEMORY[0x1E69E7CC0];
  v91 = os_transaction_create();
  v123 = *(v4 + qword_1EE2AD298);
  v92 = swift_allocObject();
  *(v92 + 16) = v4;
  *(v92 + 24) = v91;
  v132 = sub_1E46F3FEC;
  v133 = v92;
  aBlock = MEMORY[0x1E69E9820];
  v129 = 1107296256;
  v130 = sub_1E46C4624;
  v131 = &unk_1F5E66850;
  v93 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();
  v94 = v110;
  sub_1E470A5FC();
  v127 = v90;
  sub_1E45E2E78(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  v95 = v114;
  v96 = v116;
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v94, v95, v93);
  _Block_release(v93);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v115 + 8))(v95, v96);
  (*(v111 + 8))(v94, v112);
  (*(v89 + 8))(v125, v117);
  (*(v113 + 8))(v119, v121);
  (*(v120 + 8))(v118, v122);

  sub_1E4658A0C(v126);
  return v4;
}

uint64_t sub_1E46F0D30()
{
  v0 = sub_1E470A0BC();
  v1 = sub_1E470B2CC();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1E45E0000, v0, v1, "CRDTModelLocalFileManager Init: About to load data", v2, 2u);
    MEMORY[0x1E6917530](v2, -1, -1);
  }

  v3 = sub_1E4709BAC();
  v5 = v4;
  sub_1E46552AC(v3, v4);
  sub_1E46F0E84(v3, v5, 0);
  sub_1E465746C(v3, v5);

  return sub_1E465746C(v3, v5);
}

uint64_t sub_1E46F0E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E470A5DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E470A5CC();
  v14 = v3;
  v15 = a1;
  v16 = a2;
  v17 = a3;
  sub_1E470B36C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E46F0FAC(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v103 = a1;
  v105 = *v3;
  v106 = a2;
  v6 = sub_1E470AA2C();
  v101 = *(v6 - 8);
  v102 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v105 + 80);
  v11 = sub_1E470B47C();
  v104 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v94 - v13;
  v109 = v10;
  v108 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v94 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v94 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v107 = &v94 - v33;
  sub_1E46EF5A0(&v94 - v33);
  if (a3)
  {
    v34 = a3;
    v35 = sub_1E470A0BC();
    v36 = sub_1E470B2AC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v110[0] = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v39 = sub_1E470B89C();
      v41 = sub_1E4654D04(v39, v40, v110);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1E45E0000, v35, v36, "CRDTModelLocalFileManager Init: couldn't load existing data: %s", v37, 0xCu);
      sub_1E4658A0C(v38);
      MEMORY[0x1E6917530](v38, -1, -1);
      MEMORY[0x1E6917530](v37, -1, -1);
    }
  }

  else
  {
    v98 = v26;
    v99 = v11;
    v95 = v22;
    v96 = v18;
    v97 = v9;
    v100 = v4;
    v42 = sub_1E470A0BC();
    v43 = sub_1E470B2CC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1E45E0000, v42, v43, "CRDTModelLocalFileManager Init: About to deserialize existing data", v44, 2u);
      MEMORY[0x1E6917530](v44, -1, -1);
    }

    v46 = v105;
    v45 = v106;
    if (v106 >> 60 == 15)
    {
      v4 = v100;
      v50 = sub_1E470A0BC();
      v51 = sub_1E470B2AC();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1E45E0000, v50, v51, "CRDTModelLocalFileManager Init: couldn't deserialize existing data", v52, 2u);
        MEMORY[0x1E6917530](v52, -1, -1);
      }
    }

    else
    {
      v94 = v30;
      v47 = v103;
      sub_1E465DD8C(v103, v106);
      sub_1E46552AC(v47, v45);
      v48 = v109;
      v49 = *(*(*(v46 + 96) + 8) + 8);
      sub_1E470AA0C();
      v104 = v49;
      v56 = v108;
      (*(v108 + 56))(v14, 0, 1, v48);
      v57 = v94;
      (*(v56 + 32))(v94, v14, v48);
      v58 = v98;
      v4 = v100;
      sub_1E46EF5A0(v98);
      v59 = sub_1E470AB9C();
      v60 = *(v56 + 8);
      v60(v58, v48);
      v61 = *(v56 + 16);
      if (v59)
      {
        v62 = v95;
        v61(v95, v57, v109);
        v63 = sub_1E470A0BC();
        v64 = sub_1E470B2CC();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = v60;
          v99 = v56 + 8;
          v67 = v65;
          v68 = swift_slowAlloc();
          v110[0] = v68;
          *v67 = 136315394;
          v69 = v109;
          v70 = sub_1E470B81C();
          v71 = v62;
          v73 = v72;
          v66(v71, v69);
          v74 = sub_1E4654D04(v70, v73, v110);

          *(v67 + 4) = v74;
          *(v67 + 12) = 2080;
          swift_beginAccess();
          v75 = sub_1E470B81C();
          v77 = sub_1E4654D04(v75, v76, v110);

          *(v67 + 14) = v77;
          _os_log_impl(&dword_1E45E0000, v63, v64, "CRDTModelLocalFileManager Init: loaded stored model=%s, merging into existing=%s", v67, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E6917530](v68, -1, -1);
          MEMORY[0x1E6917530](v67, -1, -1);

          v79 = v102;
          v78 = v103;
          v80 = v101;
          v81 = v97;
        }

        else
        {

          v60(v62, v109);
          v79 = v102;
          v78 = v103;
          v80 = v101;
          v81 = v97;
          v66 = v60;
        }

        swift_beginAccess();
        v91 = v94;
        v92 = v109;
        sub_1E470AA1C();
        swift_endAccess();
        sub_1E465DDA0(v78, v106);
        (*(v80 + 8))(v81, v79);
        v66(v91, v92);
      }

      else
      {
        v82 = v96;
        v61(v96, v57, v109);
        v83 = sub_1E470A0BC();
        v84 = sub_1E470B2CC();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v110[0] = v104;
          *v85 = 136315138;
          v86 = sub_1E470B81C();
          v88 = v87;
          v60(v82, v109);
          v89 = sub_1E4654D04(v86, v88, v110);

          *(v85 + 4) = v89;
          _os_log_impl(&dword_1E45E0000, v83, v84, "CRDTModelLocalFileManager Init: loaded stored model=%s, no delta", v85, 0xCu);
          v90 = v104;
          sub_1E4658A0C(v104);
          MEMORY[0x1E6917530](v90, -1, -1);
          MEMORY[0x1E6917530](v85, -1, -1);

          sub_1E465DDA0(v103, v106);
          v60(v57, v109);
        }

        else
        {

          sub_1E465DDA0(v103, v106);
          v93 = v109;
          v60(v82, v109);
          v60(v57, v93);
        }
      }
    }
  }

  v53 = v4;
  v54 = v107;
  sub_1E46F1C6C(v53, v107);
  return (*(v108 + 8))(v54, v109);
}

uint64_t sub_1E46F19A0()
{
  v22 = sub_1E470A61C();
  v1 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E470A5DC();
  v5 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1EE2AD2B0;
  swift_beginAccess();
  v10 = *(v0 + v9);
  *(v0 + v9) = MEMORY[0x1E69E7CC0];
  v20 = v10;
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v20 + 32);
    v13 = (v1 + 8);
    v14 = (v5 + 8);
    do
    {
      v15 = swift_allocObject();
      v16 = *v12++;
      *(v15 + 16) = v16;

      sub_1E470A5CC();
      v17 = swift_allocObject();
      *(v17 + 16) = sub_1E467248C;
      *(v17 + 24) = v15;
      aBlock[4] = sub_1E466A228;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E46C4624;
      aBlock[3] = &unk_1F5E66AD8;
      v18 = _Block_copy(aBlock);

      sub_1E470A5FC();
      MEMORY[0x1E69160A0](0, v4, v8, v18);
      _Block_release(v18);

      (*v13)(v4, v22);
      (*v14)(v8, v21);

      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1E46F1C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 96);
  v4[1] = *(*a1 + 80);
  v4[2] = v2;
  v5 = a2;

  MutableObservableContainer.mutate(_:)(sub_1E46F4350, v4);
}

uint64_t sub_1E46F1CF0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v31 = a2;
  v35 = *v3;
  v6 = v35[10];
  v7 = v35[13];
  v33 = v35[12];
  v34 = v6;
  v32 = v7;
  v8 = type metadata accessor for ModelState(0, v6, v33, v7);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v29 - v12;
  (*(v9 + 16))(&v29 - v12, a1, v8, v11);

  v14 = sub_1E470A0BC();
  v15 = sub_1E470B2CC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = a1;
    v18 = v17;
    v36 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1E4654D04(v31, a3, &v36);
    *(v16 + 12) = 2080;
    v19 = ModelState.description.getter(v8);
    v21 = v20;
    (*(v9 + 8))(v13, v8);
    v22 = sub_1E4654D04(v19, v21, &v36);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_1E45E0000, v14, v15, "CRDTModelLocalFileManager q_updateState (%s) -- newState=%s", v16, 0x16u);
    swift_arrayDestroy();
    v23 = v18;
    a1 = v30;
    MEMORY[0x1E6917530](v23, -1, -1);
    MEMORY[0x1E6917530](v16, -1, -1);
  }

  else
  {

    v24 = (*(v9 + 8))(v13, v8);
  }

  MEMORY[0x1EEE9AC00](v24, v25);
  v26 = v35[11];
  *(&v29 - 6) = v34;
  *(&v29 - 5) = v26;
  v27 = v32;
  *(&v29 - 4) = v33;
  *(&v29 - 3) = v27;
  *(&v29 - 2) = a1;

  MutableObservableContainer.mutate(_:)(sub_1E4672268, (&v29 - 8));
}

uint64_t CRDTModelLocalFileManager.sync(_:isRemote:)(uint64_t a1, char a2)
{
  v5 = sub_1E470A5DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E470A5CC();
  v12 = v2;
  v13 = a1;
  v14 = a2;
  sub_1E470B36C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E46F2160(_BYTE *a1, int a2)
{
  v3 = v2;
  v141 = a2;
  v5 = *v2;
  v143 = v5;
  v130 = sub_1E470A5DC();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v6);
  v127 = &v115[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v128 = sub_1E470A61C();
  v126 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v8);
  v125 = &v115[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v5[10];
  v11 = v5[12];
  v12 = v5[13];
  v134 = type metadata accessor for ModelState(0, v10, v11, v12);
  v124 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v13);
  v133 = &v115[-v14];
  v145 = v12;
  v123 = type metadata accessor for ModelState.Source(0, v10, v11, v12);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v15);
  v132 = &v115[-v16];
  v17 = sub_1E470AB3C();
  v138 = *(v17 - 8);
  v139 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v137 = &v115[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v135 = &v115[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24, v25);
  v131 = &v115[-v26];
  MEMORY[0x1EEE9AC00](v27, v28);
  v146 = &v115[-v29];
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v115[-v32];
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v115[-v36];
  v147 = os_transaction_create();
  sub_1E46EF5A0(v37);
  v142 = v11;
  v38 = a1;
  v136 = *(v11 + 8);
  LOBYTE(v12) = sub_1E470AB9C();
  v39 = v20 + 8;
  v148 = *(v20 + 8);
  v148(v37, v10);
  v40 = qword_1EE2B0588;
  v121 = v20;
  v43 = *(v20 + 16);
  v42 = v20 + 16;
  v41 = v43;
  if (v12)
  {
    v135 = v38;
    v120 = v41;
    v119 = v42;
    v41(v33, v38, v10);

    v44 = sub_1E470A0BC();
    v45 = sub_1E470B2CC();

    v46 = os_log_type_enabled(v44, v45);
    v144 = v39;
    v118 = v40;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      aBlock = v117;
      *v47 = 67109634;
      *(v47 + 4) = v141 & 1;
      *(v47 + 8) = 2080;
      v116 = v45;
      v48 = sub_1E470B81C();
      v50 = v49;
      v148(v33, v10);
      v51 = sub_1E4654D04(v48, v50, &aBlock);

      *(v47 + 10) = v51;
      *(v47 + 18) = 2080;
      sub_1E46EF5A0(v37);
      v52 = sub_1E470B81C();
      v54 = v53;
      v55 = v148;
      v148(v37, v10);
      v56 = sub_1E4654D04(v52, v54, &aBlock);

      *(v47 + 20) = v56;
      _os_log_impl(&dword_1E45E0000, v44, v116, "CRDTModelLocalFileManager q_sync: isRemote=%{BOOL}d, incoming=%s and existing=%s", v47, 0x1Cu);
      v57 = v117;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v57, -1, -1);
      MEMORY[0x1E6917530](v47, -1, -1);
    }

    else
    {

      v55 = v148;
      v148(v33, v10);
    }

    v76 = v10;
    sub_1E46EF5A0(v37);
    v77 = v146;
    sub_1E470ABDC();
    v55(v37, v10);
    v79 = v137;
    v78 = v138;
    v80 = v139;
    (*(v138 + 104))(v137, *MEMORY[0x1E6995288], v139);
    v81 = v76;
    v82 = v140;
    v83 = sub_1E470A9FC();
    if (v82)
    {

      (*(v78 + 8))(v79, v80);
      v85 = v131;
      v120(v131, v77, v76);
      v86 = sub_1E470A0BC();
      v87 = sub_1E470B2AC();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        aBlock = v89;
        *v88 = 136315138;
        v90 = v85;
        v91 = v145;
        v92 = sub_1E470B81C();
        v94 = v93;
        v148(v90, v81);
        v95 = sub_1E4654D04(v92, v94, &aBlock);

        *(v88 + 4) = v95;
        _os_log_impl(&dword_1E45E0000, v86, v87, "CRDTModelLocalFileManager q_sync: couldn't serialize model to sync: %s", v88, 0xCu);
        sub_1E4658A0C(v89);
        MEMORY[0x1E6917530](v89, -1, -1);
        v96 = v88;
        v97 = v148;
        MEMORY[0x1E6917530](v96, -1, -1);
      }

      else
      {

        v97 = v148;
        v148(v85, v76);
        v91 = v145;
      }

      v105 = v143[11];
      aBlock = v81;
      v150 = v105;
      v151 = v142;
      v152 = v91;
      type metadata accessor for CRDTModelLocalFileManager.SyncError(0, &aBlock);
      swift_getWitnessTable();
      swift_allocError();
      *v106 = 1;
      swift_willThrow();
      swift_unknownObjectRelease();
      return v97(v146, v81);
    }

    else
    {
      v101 = v135;
      v145 = v84;
      v102 = v83;
      (*(v78 + 8))(v79, v80);
      if (v141)
      {
        v103 = v132;
        v120(v132, v101, v81);
        v104 = 0;
      }

      else
      {
        v104 = 1;
        v103 = v132;
      }

      (*(v121 + 56))(v103, v104, 2, v81);
      v107 = v145;
      sub_1E46552AC(v102, v145);

      v108 = v133;
      MutableObservableContainer.value.getter();

      ModelState.updating(model:source:)(v146, v103, v134);
      sub_1E46F1CF0(v108, 0x636E79735F71, 0xE600000000000000);
      v143 = *(v3 + qword_1EE2AD298);
      v109 = swift_allocObject();
      v109[2] = v3;
      v109[3] = v102;
      v110 = v147;
      v109[4] = v107;
      v109[5] = v110;
      v153 = sub_1E46F4274;
      v154 = v109;
      aBlock = MEMORY[0x1E69E9820];
      v150 = 1107296256;
      v151 = sub_1E46C4624;
      v152 = &unk_1F5E66A38;
      v142 = _Block_copy(&aBlock);

      sub_1E46552AC(v102, v107);
      swift_unknownObjectRetain();
      v111 = v125;
      sub_1E470A5FC();
      v155 = MEMORY[0x1E69E7CC0];
      sub_1E45E2E78(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
      sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
      v112 = v127;
      v113 = v130;
      sub_1E470B4CC();
      v114 = v142;
      MEMORY[0x1E69160A0](0, v111, v112, v142);
      _Block_release(v114);
      swift_unknownObjectRelease();
      sub_1E465746C(v102, v107);
      sub_1E465746C(v102, v107);
      (*(v129 + 8))(v112, v113);
      (*(v126 + 8))(v111, v128);
      (*(v124 + 8))(v133, v134);
      (*(v122 + 8))(v132, v123);
      v148(v146, v81);
    }
  }

  else
  {
    v58 = v135;
    v41(v135, v38, v10);

    v59 = sub_1E470A0BC();
    v60 = sub_1E470B2CC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v144 = v39;
      v62 = v61;
      v146 = swift_slowAlloc();
      aBlock = v146;
      *v62 = 67109634;
      *(v62 + 4) = v141 & 1;
      *(v62 + 8) = 2080;
      v141 = v60;
      v63 = v145;
      v64 = sub_1E470B81C();
      v140 = v59;
      v66 = v65;
      v67 = v58;
      v68 = v148;
      v148(v67, v10);
      v69 = sub_1E4654D04(v64, v66, &aBlock);

      *(v62 + 10) = v69;
      *(v62 + 18) = 2080;
      sub_1E46EF5A0(v37);
      v70 = sub_1E470B81C();
      v72 = v71;
      v68(v37, v10);
      v73 = sub_1E4654D04(v70, v72, &aBlock);

      *(v62 + 20) = v73;
      v74 = v140;
      _os_log_impl(&dword_1E45E0000, v140, v141, "CRDTModelLocalFileManager q_sync -- no delta: isRemote=%{BOOL}d, incoming=%s and existing=%s", v62, 0x1Cu);
      v75 = v146;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v75, -1, -1);
      MEMORY[0x1E6917530](v62, -1, -1);
    }

    else
    {

      v148(v58, v10);
      v63 = v145;
    }

    v98 = v143[11];
    aBlock = v10;
    v150 = v98;
    v151 = v142;
    v152 = v63;
    type metadata accessor for CRDTModelLocalFileManager.SyncError(0, &aBlock);
    swift_getWitnessTable();
    swift_allocError();
    *v99 = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t CRDTModelLocalFileManager.syncAfterLoaded(_:isRemote:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1E470A5DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E470A5CC();
  v16 = v4;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1E470B36C();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1E46F31E4(uint64_t a1, _BYTE *a2, char a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = sub_1E46EF6F4();
  v11 = a3 & 1;
  if (!v10)
  {
    return sub_1E46F3278(a2, v11, a4, a5);
  }

  v12 = sub_1E46F2160(a2, v11);
  if (v5)
  {
  }

  return a4(v12);
}

uint64_t sub_1E46F3278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a3;
  v29 = a4;
  HIDWORD(v27) = a2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v27 - v11;
  v13 = sub_1E470A0BC();
  v14 = sub_1E470B2CC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1E45E0000, v13, v14, "CRDTModelLocalFileManager q_enqueuePendingSync", v15, 2u);
    MEMORY[0x1E6917530](v15, -1, -1);
  }

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = *(v7 + 88);
  *(v17 + 40) = *(v7 + 104);
  *(v17 + 48) = v5;
  (*(v9 + 32))(v17 + v16, v12, v8);
  *(v17 + v16 + v10) = BYTE4(v27) & 1;
  v18 = v17 + ((v16 + v10) & 0xFFFFFFFFFFFFFFF8);
  v19 = v29;
  *(v18 + 8) = v28;
  *(v18 + 16) = v19;
  v20 = qword_1EE2AD2B0;
  swift_beginAccess();
  v21 = *(v5 + v20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v20) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1E4693A54(0, v21[2] + 1, 1, v21);
    *(v5 + v20) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1E4693A54((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[2 * v24];
  v25[4] = sub_1E46F42A0;
  v25[5] = v17;
  *(v5 + v20) = v21;
  return swift_endAccess();
}

uint64_t sub_1E46F3540(uint64_t a1, _BYTE *a2, char a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_1E470A0BC();
  v8 = sub_1E470B2CC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1E45E0000, v7, v8, "CRDTModelLocalFileManager q_enqueuePendingSync -- about to run", v9, 2u);
    MEMORY[0x1E6917530](v9, -1, -1);
  }

  v10 = sub_1E46F2160(a2, a3 & 1);
  return a4(v10);
}

uint64_t sub_1E46F3634(uint64_t a1, uint64_t a2)
{
  sub_1E4709BEC();

  return sub_1E46F37C0();
}

uint64_t sub_1E46F37C0()
{
  v1 = *v0;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12[0] = v5;
    *v4 = 136315138;
    v6 = (*(*(v1 + 88) + 8))();
    v8 = sub_1E4654D04(v6, v7, v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1E45E0000, v2, v3, "CRDTModelLocalFileManager: Model did save %s", v4, 0xCu);
    sub_1E4658A0C(v5);
    MEMORY[0x1E6917530](v5, -1, -1);
    MEMORY[0x1E6917530](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CRDTModelLocalFileManager.deinit()
{
  sub_1E466A310(v0 + 16);

  v1 = qword_1EE2AD358;
  v2 = sub_1E4709B9C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = qword_1EE2B0588;
  v4 = sub_1E470A0DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CRDTModelLocalFileManager.__deallocating_deinit()
{
  CRDTModelLocalFileManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E46F3AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v27[-v13];
  v15 = type metadata accessor for ModelState.Source(0, a3, a5, a6);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v27[-v17];
  v19 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v27[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for ModelState(0, a3, a5, a6);
  (*(*(v24 - 8) + 8))(a1, v24);
  swift_beginAccess();
  (*(v19 + 16))(v23, a2, a3);
  v28 = 1;
  (*(v19 + 56))(v18, 2, 2, a3);
  v25 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  return ModelState.init(model:loaded:source:revisionInfo:)(v23, &v28, v18, v14, a3, a5, a6, a1);
}

void *sub_1E46F3D10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a2;
  v19 = a3;
  v17 = a1;
  v5 = sub_1E470B33C();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1E470A61C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1E470B35C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4[4] = 0;
  v16[1] = sub_1E465E1DC();
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8098], v9);
  sub_1E470A5FC();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1E45E2E78(&unk_1EE2ACCE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2EC0(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  a4[5] = sub_1E470B39C();
  sub_1E470A0CC();
  v14 = v18;
  a4[2] = v17;
  a4[3] = v14;
  a4[6] = v19;
  return a4;
}

uint64_t sub_1E46F4010(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E46F40D0(uint64_t a1)
{
  result = sub_1E4709B9C();
  if (v2 <= 0x3F)
  {
    result = sub_1E470A0DC();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1E46F4220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1E46F4384(void *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = a1;
    v7 = sub_1E470B69C();

    if (v7)
    {
      sub_1E45E2DE8(0, a3, a4);
      swift_dynamicCast();
      return v14;
    }
  }

  else if (*(a2 + 16))
  {
    v10 = sub_1E46554E8(a1);
    if (v11)
    {
      v12 = *(*(a2 + 56) + 8 * v10);
      v13 = v12;
      return v12;
    }
  }

  return 0;
}

BOOL sub_1E46F4454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E470B8FC();
  MEMORY[0x1E6916620](a1);
  MEMORY[0x1E6916620](a2);
  v6 = sub_1E470B91C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v12 = *v10;
    v11 = v10[1];
    v13 = v12 == a1 && v11 == a2;
    result = v13;
    if (v13)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

uint64_t sub_1E46F4538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E470B8FC();
  sub_1E470AFCC();
  v6 = sub_1E470B91C();
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
    if (v11 || (sub_1E470B84C() & 1) != 0)
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

uint64_t sub_1E46F4630(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1E470B53C();
  }

  else if (*(a2 + 16) && (sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90), v5 = sub_1E470B41C(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_1E470B42C();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

Swift::String __swiftcall CKRecordID.bds_recordType()()
{
  v1 = [v0 recordName];
  v2 = sub_1E470AF1C();
  v4 = v3;

  v16[0] = 46;
  v16[1] = 0xE100000000000000;
  v15[2] = v16;
  v5 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E4700498, v15, v2, v4, v16);
  if (v5[2])
  {
    v7 = v5[4];
    v8 = v5[5];
    v9 = v5[6];
    v10 = v5[7];

    v11 = MEMORY[0x1E6915CC0](v7, v8, v9, v10);
    v13 = v12;

    v5 = v11;
    v6 = v13;
  }

  else
  {
    __break(1u);
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

char *sub_1E46F48C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v158 = a5;
  v159 = a6;
  v157 = a4;
  v156 = a3;
  v161 = a1;
  v162 = a2;
  v152 = sub_1E4650534(&qword_1ECF75C58, &qword_1E4720488);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v7);
  v150 = &v128 - v8;
  v149 = sub_1E4650534(&qword_1ECF75C60, &qword_1E4720490);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v9);
  v147 = &v128 - v10;
  v143 = sub_1E4650534(&qword_1ECF75C68, &qword_1E4720498);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v11);
  v141 = &v128 - v12;
  v146 = sub_1E4650534(&qword_1ECF75C70, &qword_1E47204A0);
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v13);
  v144 = &v128 - v14;
  v137 = sub_1E4650534(&qword_1ECF75C78, &qword_1E47204A8);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v15);
  v135 = &v128 - v16;
  v140 = sub_1E4650534(&qword_1ECF75C80, &qword_1E47204B0);
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v17);
  v138 = &v128 - v18;
  v19 = sub_1E4650534(&qword_1ECF75C88, &qword_1E47204B8);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v134 = &v128 - v21;
  v130 = sub_1E4650534(&qword_1ECF75C90, &qword_1E47204C0);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v22);
  v128 = &v128 - v23;
  v133 = sub_1E4650534(&unk_1ECF75C98, &qword_1E47204C8);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v24);
  v131 = &v128 - v25;
  v167 = sub_1E470B35C();
  v165 = *(v167 - 1);
  MEMORY[0x1EEE9AC00](v167, v26);
  v28 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E470B33C();
  MEMORY[0x1EEE9AC00](v29, v30);
  v31 = sub_1E470A61C();
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  *&v6[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_kChangedRecordsBatchSize] = 32;
  v33 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_subscribers] = MEMORY[0x1E69E7CC0];
  v166 = v6;
  sub_1E470A0CC();
  v164 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue;
  v169 = sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  v163 = "neChangeBatch(cloudData:)";
  if (qword_1EE2AE3E8 != -1)
  {
    swift_once();
  }

  v168 = qword_1EE2AE3F0;
  v34 = *(qword_1EE2AE3F0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  sub_1E470A5FC();
  aBlock[0] = v33;
  sub_1E4701460(&unk_1EE2ACCE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2F14(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  v35 = *MEMORY[0x1E69E8090];
  v36 = *(v165 + 104);
  v37 = v167;
  v36(v28, v35, v167);
  v38 = sub_1E470B39C();
  v39 = v166;
  *&v166[v164] = v38;
  v165 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_stateQueue;
  sub_1E470B32C();
  sub_1E470A5FC();
  v36(v28, v35, v37);
  *&v39[v165] = sub_1E470B39C();
  v39[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline__hasPendingModifications] = 0;
  v40 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_currentModifyBatchResponse;
  type metadata accessor for _BDSSyncEngineModifyBatchResponse();
  v41 = swift_allocObject();
  v42 = MEMORY[0x1E69E7CC0];
  v41[2] = MEMORY[0x1E69E7CC0];
  v41[3] = v42;
  v41[4] = v42;
  v41[5] = v42;
  *&v39[v40] = v41;
  *&v39[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_scheduleSyncBlock] = 0;
  v41[6] = MEMORY[0x1E69E7CC8];
  v43 = &v39[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType];
  v44 = v161;
  v45 = v162;
  *v43 = v161;
  v43[1] = v45;
  v46 = v44;
  sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
  sub_1E470AF1C();

  *&v39[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_zoneID] = sub_1E470B2EC();
  v47 = v158;
  *&v39[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_dataMapper] = v159;
  *&v39[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate] = v47;
  *&v39[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_observer] = v47;
  v48 = type metadata accessor for BDSSyncEnginePipeline(0);
  v172.receiver = v39;
  v172.super_class = v48;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v49 = objc_msgSendSuper2(&v172, sel_init);
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1E47014A8;
  *(v51 + 24) = v50;
  v52 = objc_allocWithZone(MEMORY[0x1E698F548]);
  aBlock[4] = sub_1E47014B0;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E469C1B8;
  aBlock[3] = &unk_1F5E66D90;
  v53 = _Block_copy(aBlock);
  v54 = v49;
  swift_retain_n();
  v55 = sub_1E470AF0C();
  v56 = [v52 initWithNotifyBlock:v53 blockDescription:v55];

  _Block_release(v53);

  [v56 setCoalescingDelay_];
  [v56 setMaximumDelay_];

  v57 = v168;
  v58 = *&v54[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_scheduleSyncBlock];
  *&v54[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_scheduleSyncBlock] = v56;

  v59 = swift_allocObject();
  v60 = MEMORY[0x1E69E7CC0];
  *(v59 + 16) = MEMORY[0x1E69E7CC0];
  v61 = v59;
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = swift_allocObject();
  *(v63 + 2) = v61;
  *(v63 + 3) = v62;
  v155 = v61;
  *(v63 + 4) = v46;
  *(v63 + 5) = v45;
  v64 = swift_allocObject();
  *(v64 + 16) = v60;
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = swift_allocObject();
  v66[2] = v64;
  v66[3] = v65;
  v66[4] = v46;
  v66[5] = v45;
  v153 = v66;
  swift_bridgeObjectRetain_n();
  v67 = v54;

  v154 = v64;

  sub_1E47004E4(v67, v46, v45, v57);

  v68 = v67;
  sub_1E47006AC(v68, v57);

  aBlock[0] = *&v57[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_recordChangePublisher];
  v160 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue;
  v170 = *&v68[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue];
  v69 = v170;
  v70 = sub_1E470B34C();
  v71 = *(v70 - 8);
  v72 = *(v71 + 56);
  v73 = v134;
  v164 = v70;
  v166 = (v71 + 56);
  v167 = v72;
  (v72)(v134, 1, 1);

  v74 = v69;
  sub_1E4650534(&qword_1ECF75340, &qword_1E471E978);
  sub_1E45E2F14(&qword_1ECF75CA8, &qword_1ECF75340, &qword_1E471E978, MEMORY[0x1E695BF88]);
  v75 = sub_1E470141C(&qword_1ECF75CB0, &qword_1EE2ACCD0, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v76 = v128;
  v165 = v75;
  sub_1E470A15C();
  v77 = v73;
  sub_1E465E050(v73, &qword_1ECF75C88, &qword_1E47204B8);

  v78 = swift_allocObject();
  v79 = v162;
  *(v78 + 16) = v161;
  *(v78 + 24) = v79;
  sub_1E45E2F14(&qword_1ECF75CB8, &qword_1ECF75C90, &qword_1E47204C0, MEMORY[0x1E695BE98]);

  v80 = v131;
  v81 = v130;
  sub_1E470A14C();

  (*(v129 + 8))(v76, v81);
  v82 = swift_allocObject();
  v82[2] = v155;
  v82[3] = 32;
  v82[4] = sub_1E47014F4;
  v82[5] = v63;
  sub_1E45E2F14(&unk_1ECF75CC0, &unk_1ECF75C98, &qword_1E47204C8, MEMORY[0x1E695BDE0]);

  v163 = v63;

  v83 = v133;
  sub_1E470A13C();

  (*(v132 + 8))(v80, v83);
  v84 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_subscribers;
  v85 = swift_beginAccess();
  MEMORY[0x1E6915DB0](v85);
  if (*((*&v68[v84] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v68[v84] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  swift_endAccess();
  aBlock[0] = *(v168 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_recordDeletionPublisher);
  v170 = *&v68[v160];
  v86 = v170;
  (v167)(v77, 1, 1, v164);

  v87 = v86;
  sub_1E4650534(&qword_1ECF75350, &unk_1E47204D0);
  sub_1E45E2F14(&qword_1ECF75CD0, &qword_1ECF75350, &unk_1E47204D0, MEMORY[0x1E695BF88]);
  v88 = v135;
  sub_1E470A15C();
  sub_1E465E050(v77, &qword_1ECF75C88, &qword_1E47204B8);

  v89 = swift_allocObject();
  v90 = v162;
  *(v89 + 16) = v161;
  *(v89 + 24) = v90;
  sub_1E45E2F14(&qword_1ECF75CD8, &qword_1ECF75C78, &qword_1E47204A8, MEMORY[0x1E695BE98]);
  v91 = v138;
  v92 = v137;
  sub_1E470A14C();

  (*(v136 + 8))(v88, v92);
  v93 = swift_allocObject();
  v93[2] = v154;
  v93[3] = 32;
  v94 = v153;
  v93[4] = sub_1E4701548;
  v93[5] = v94;
  sub_1E45E2F14(&unk_1ECF75CE0, &qword_1ECF75C80, &qword_1E47204B0, MEMORY[0x1E695BDE0]);

  v95 = v140;
  sub_1E470A13C();

  (*(v139 + 8))(v91, v95);
  v96 = swift_beginAccess();
  MEMORY[0x1E6915DB0](v96);
  if (*((*&v68[v84] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v68[v84] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  swift_endAccess();
  aBlock[0] = *(v168 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_endFetchingChangesPublisher);
  v170 = *&v68[v160];
  v97 = v170;
  (v167)(v77, 1, 1, v164);

  v98 = v97;
  sub_1E4650534(&qword_1ECF75370, qword_1E471E988);
  sub_1E45E2F14(&qword_1ECF75CF0, &qword_1ECF75370, qword_1E471E988, MEMORY[0x1E695BF88]);
  v99 = v141;
  sub_1E470A15C();
  sub_1E465E050(v77, &qword_1ECF75C88, &qword_1E47204B8);

  v100 = swift_allocObject();
  v101 = v157;
  *(v100 + 16) = v156;
  *(v100 + 24) = v101;
  sub_1E45E2F14(&qword_1ECF75CF8, &qword_1ECF75C68, &qword_1E4720498, MEMORY[0x1E695BE98]);
  v102 = v144;
  v103 = v143;
  sub_1E470A14C();

  (*(v142 + 8))(v99, v103);
  v104 = swift_allocObject();
  v104[2] = sub_1E4701548;
  v104[3] = v94;
  v105 = v163;
  v104[4] = sub_1E47014F4;
  v104[5] = v105;
  sub_1E45E2F14(&unk_1ECF75D00, &qword_1ECF75C70, &qword_1E47204A0, MEMORY[0x1E695BDE0]);

  v106 = v146;
  sub_1E470A13C();

  (*(v145 + 8))(v102, v106);
  v107 = swift_beginAccess();
  MEMORY[0x1E6915DB0](v107);
  v108 = v84;
  v109 = *((*&v68[v84] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v110 = *((*&v68[v84] & 0xFFFFFFFFFFFFFF8) + 0x18);
  v111 = v160;
  v112 = v94;
  v113 = v164;
  if (v109 >= v110 >> 1)
  {
    sub_1E470B0DC();
  }

  v133 = v108;
  sub_1E470B0FC();
  swift_endAccess();
  aBlock[0] = *(v168 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_updateMetadataPublisher);
  v170 = *&v68[v111];
  v114 = v170;
  (v167)(v77, 1, 1, v113);

  v115 = v114;
  sub_1E4650534(&qword_1ECF75380, qword_1E47204E0);
  sub_1E45E2F14(&qword_1ECF75D10, &qword_1ECF75380, qword_1E47204E0, MEMORY[0x1E695BF88]);
  v116 = v147;
  sub_1E470A15C();
  sub_1E465E050(v77, &qword_1ECF75C88, &qword_1E47204B8);

  v117 = swift_allocObject();
  v117[2] = sub_1E4701548;
  v117[3] = v112;
  v118 = v163;
  v117[4] = sub_1E47014F4;
  v117[5] = v118;
  sub_1E45E2F14(&unk_1ECF75D18, &qword_1ECF75C60, &qword_1E4720490, MEMORY[0x1E695BE98]);

  v119 = v133;

  v120 = v149;
  sub_1E470A13C();

  (*(v148 + 8))(v116, v120);
  v121 = swift_beginAccess();
  MEMORY[0x1E6915DB0](v121);
  if (*((*&v68[v119] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v68[v119] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  swift_endAccess();
  aBlock[0] = *(v168 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_accountChangedPublisher);
  v170 = *&v68[v111];
  v122 = v170;
  (v167)(v77, 1, 1, v164);

  v123 = v122;
  sub_1E4650534(&qword_1ECF75360, &qword_1E471E980);
  sub_1E45E2F14(&qword_1ECF75D28, &qword_1ECF75360, &qword_1E471E980, MEMORY[0x1E695BF88]);
  v124 = v150;
  sub_1E470A15C();
  sub_1E465E050(v77, &qword_1ECF75C88, &qword_1E47204B8);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E45E2F14(&unk_1ECF75D30, &qword_1ECF75C58, &qword_1E4720488, MEMORY[0x1E695BE98]);
  v125 = v152;
  sub_1E470A13C();

  (*(v151 + 8))(v124, v125);
  v126 = swift_beginAccess();
  MEMORY[0x1E6915DB0](v126);
  if (*((*&v68[v119] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v68[v119] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  swift_endAccess();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v68;
}

void sub_1E46F63E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_1EE2AE3E8 != -1)
    {
      swift_once();
    }

    BDSSyncEngine.scheduleSync()();
  }
}

uint64_t sub_1E46F646C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1E470A0DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - v13;
  swift_beginAccess();
  v15 = *(a1 + 16);
  if (v15 >> 62)
  {
    result = sub_1E470B50C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = a3;
    v19 = *(Strong + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_observer);
    swift_beginAccess();
    v20 = *(a1 + 16);
    v21 = qword_1EE2AE3E8;
    v50 = v19;
    swift_unknownObjectRetain();

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = *(qword_1EE2AE3F0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_persistFetchCoordinatorGroup);
    v53 = v8;
    v23 = *(v8 + 16);
    v51 = v18;
    v47 = v23;
    v23(v14, &v18[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_logger], v7);
    v48 = v22;
    dispatch_group_enter(v48);

    v24 = v14;
    v25 = sub_1E470A0BC();
    v26 = sub_1E470B29C();

    v27 = os_log_type_enabled(v25, v26);
    v52 = a4;
    if (v27)
    {
      v45 = v7;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_1E4654D04(v54, a4, aBlock);
      *(v28 + 12) = 2048;
      if (v20 >> 62)
      {
        v30 = sub_1E470B50C();
      }

      else
      {
        v30 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v28 + 14) = v30;

      _os_log_impl(&dword_1E45E0000, v25, v26, "BDSSyncEnginePipeline - processIncomingRecordChanges: [%s] Begin processing %ld updates", v28, 0x16u);
      sub_1E4658A0C(v29);
      MEMORY[0x1E6917530](v29, -1, -1);
      MEMORY[0x1E6917530](v28, -1, -1);

      v7 = v45;
    }

    else
    {
    }

    sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
    v45 = sub_1E470B0AC();
    v31 = v49;
    v46 = v24;
    v47(v49, v24, v7);
    v32 = v53;
    v33 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v34 = (v9 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = v7;
    v36 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    (*(v32 + 32))(v38 + v33, v31, v35);
    v39 = (v38 + v34);
    v40 = v52;
    *v39 = v54;
    v39[1] = v40;
    *(v38 + v36) = v20;
    v41 = v48;
    *(v38 + v37) = v48;
    aBlock[4] = sub_1E470171C;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46C4624;
    aBlock[3] = &unk_1F5E670D8;
    v42 = _Block_copy(aBlock);
    v43 = v41;

    v44 = v45;
    [v50 updatedCloudRecords:v45 completion:v42];
    _Block_release(v42);

    swift_unknownObjectRelease();
    (*(v32 + 8))(v46, v35);
  }

  swift_beginAccess();
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
}

void sub_1E46F69A4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, NSObject *a5)
{

  v9 = sub_1E470A0BC();
  v10 = sub_1E470B29C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1E4654D04(a2, a3, &v14);
    *(v11 + 12) = 2048;
    if (a4 >> 62)
    {
      v13 = sub_1E470B50C();
    }

    else
    {
      v13 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 14) = v13;

    _os_log_impl(&dword_1E45E0000, v9, v10, "BDSSyncEnginePipeline - processIncomingRecordChanges: [%s] Done processing %ld updates", v11, 0x16u);
    sub_1E4658A0C(v12);
    MEMORY[0x1E6917530](v12, -1, -1);
    MEMORY[0x1E6917530](v11, -1, -1);
  }

  else
  {
  }

  dispatch_group_leave(a5);
}

uint64_t sub_1E46F6B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E470A0DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v44 - v14;
  swift_beginAccess();
  v16 = *(a1 + 16);
  if (v16 >> 62)
  {
    result = sub_1E470B50C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v52 = a3;
    v53 = v7;
    v20 = *(Strong + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_observer);
    swift_beginAccess();
    v21 = *(a1 + 16);
    v22 = qword_1EE2AE3E8;
    v49 = v20;
    swift_unknownObjectRetain();
    v47 = v21;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = *(qword_1EE2AE3F0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_persistFetchCoordinatorGroup);
    v24 = *(v8 + 16);
    v50 = v19;
    v46 = v24;
    v24(v15, &v19[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_logger], v53);
    v48 = v23;
    dispatch_group_enter(v48);

    v25 = a4;
    v26 = sub_1E470A0BC();
    v27 = sub_1E470B29C();
    v51 = v25;

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = v8;
      v30 = v29;
      aBlock[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1E4654D04(v52, v51, aBlock);
      _os_log_impl(&dword_1E45E0000, v26, v27, "BDSSyncEnginePipeline - processIncomingRecordDeletions: [%s] Begin processing deletes", v28, 0xCu);
      sub_1E4658A0C(v30);
      v31 = v30;
      v8 = v45;
      MEMORY[0x1E6917530](v31, -1, -1);
      MEMORY[0x1E6917530](v28, -1, -1);
    }

    sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
    v32 = sub_1E470B0AC();

    v33 = v53;
    v46(v11, v15, v53);
    v34 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v35 = v8;
    v36 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    (*(v35 + 32))(v38 + v34, v11, v33);
    v39 = (v38 + v36);
    v40 = v51;
    *v39 = v52;
    v39[1] = v40;
    v41 = v48;
    *(v38 + v37) = v48;
    aBlock[4] = sub_1E4701680;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46C4624;
    aBlock[3] = &unk_1F5E67088;
    v42 = _Block_copy(aBlock);
    v43 = v41;

    [v49 removedCloudRecordsWithIDs:v32 completion:v42];
    _Block_release(v42);

    swift_unknownObjectRelease();
    (*(v35 + 8))(v15, v33);
  }

  swift_beginAccess();
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
}

void sub_1E46F6FDC(uint64_t a1, uint64_t a2, unint64_t a3, NSObject *a4)
{

  v7 = sub_1E470A0BC();
  v8 = sub_1E470B29C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1E4654D04(a2, a3, &v11);
    _os_log_impl(&dword_1E45E0000, v7, v8, "BDSSyncEnginePipeline - processIncomingRecordDeletions: [%s] Done processing deletes", v9, 0xCu);
    sub_1E4658A0C(v10);
    MEMORY[0x1E6917530](v10, -1, -1);
    MEMORY[0x1E6917530](v9, -1, -1);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1E46F7100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1E470B3DC() == a2 && v4 == a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1E470B84C();
  }

  return v6 & 1;
}

void *sub_1E46F7170(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 recordName];
  v6 = sub_1E470AF1C();
  v8 = v7;

  v20[0] = 46;
  v20[1] = 0xE100000000000000;
  v19[2] = v20;
  result = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E4701C10, v19, v6, v8, v20);
  if (result[2])
  {
    v10 = result[4];
    v11 = result[5];
    v12 = result[6];
    v13 = result[7];

    v14 = MEMORY[0x1E6915CC0](v10, v11, v12, v13);
    v16 = v15;

    if (v14 == a2 && v16 == a3)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_1E470B84C();
    }

    return (v18 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E46F72AC(void **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *a1;
  swift_beginAccess();
  v8 = v7;
  MEMORY[0x1E6915DB0]();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  v9 = *(a2 + 16);
  swift_endAccess();
  if (v9 >> 62)
  {
    result = sub_1E470B50C();
    if (result < a3)
    {
      return result;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < a3)
    {
      return result;
    }
  }

  return a4();
}

uint64_t sub_1E46F73B4(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3)
  {
    v6 = [v3 zoneName];
    v7 = sub_1E470AF1C();
    v9 = v8;

    if (v7 == a2 && v9 == a3)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1E470B84C();
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

void sub_1E46F745C(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E46FD074(v2);
  }
}

void sub_1E46F7598()
{
  v1 = v0;
  v2 = sub_1E470A5DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E470A0BC();
  v8 = sub_1E470B2CC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1E4654D04(0xD000000000000010, 0x80000001E471A8C0, aBlock);
    _os_log_impl(&dword_1E45E0000, v7, v8, "BDSSyncEnginePipeline - %s", v9, 0xCu);
    sub_1E4658A0C(v10);
    MEMORY[0x1E6917530](v10, -1, -1);
    MEMORY[0x1E6917530](v9, -1, -1);
  }

  v11 = *(v1 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_stateQueue);
  v12 = sub_1E470A5CC();
  MEMORY[0x1EEE9AC00](v12, v13);
  *(&v20 - 2) = v1;
  *(&v20 - 8) = 1;
  sub_1E470B36C();

  (*(v3 + 8))(v6, v2);
  v14 = os_transaction_create();
  v15 = *(v1 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_scheduleSyncBlock);
  if (v15)
  {
    v16 = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    aBlock[4] = nullsub_60;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46C4624;
    aBlock[3] = &unk_1F5E66B28;
    v18 = _Block_copy(aBlock);
    v19 = v15;
    swift_unknownObjectRetain();

    [v19 signalWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v18);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E46F78EC()
{
  v1[2] = v0;
  v2 = sub_1E470A5DC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46F79AC, 0, 0);
}

uint64_t sub_1E46F79AC()
{
  v14 = v0;
  v0[6] = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_logger;
  v1 = sub_1E470A0BC();
  v2 = sub_1E470B2CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1E4654D04(0x6E79537472617473, 0xEF29284B436F5463, &v13);
    _os_log_impl(&dword_1E45E0000, v1, v2, "BDSSyncEnginePipeline - %s", v3, 0xCu);
    sub_1E4658A0C(v4);
    MEMORY[0x1E6917530](v4, -1, -1);
    MEMORY[0x1E6917530](v3, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  v9 = *(v7 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_stateQueue);
  sub_1E470A5CC();
  v10 = swift_task_alloc();
  *(v10 + 16) = v7;
  *(v10 + 24) = 1;
  sub_1E470B36C();

  (*(v6 + 8))(v5, v8);
  if (qword_1EE2AE3E8 != -1)
  {
    swift_once();
  }

  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_1E46F7BFC;

  return BDSSyncEngine.sendChangesIfReady()();
}

uint64_t sub_1E46F7BFC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E46F7D38, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E46F7D38()
{
  v15 = v0;
  v1 = *(v0 + 64);
  v2 = v1;
  v3 = sub_1E470A0BC();
  v4 = sub_1E470B2AC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 64);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1E4654D04(0x6E79537472617473, 0xEF29284B436F5463, &v14);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1E45E0000, v3, v4, "BDSSyncEnginePipeline - %s error: %@", v7, 0x16u);
    sub_1E465E050(v8, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v8, -1, -1);
    sub_1E4658A0C(v9);
    MEMORY[0x1E6917530](v9, -1, -1);
    MEMORY[0x1E6917530](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1E46F8084(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E46F812C;

  return sub_1E46F78EC();
}

uint64_t sub_1E46F812C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E46F8264()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E46C674C;

  return sub_1E4700AA0();
}

uint64_t sub_1E46F848C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1E46F855C;

  return sub_1E4700AA0();
}

uint64_t sub_1E46F855C(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

id sub_1E46F86C0()
{
  if (qword_1EE2AE3E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE2AE3F0;

  return v1;
}

uint64_t sub_1E46F8778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_1E470A5DC();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46F883C, 0, 0);
}

uint64_t sub_1E46F883C()
{
  v34 = v0;
  v1 = *(v0 + 176);
  *(v0 + 208) = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_logger;
  v2 = v1;
  v3 = sub_1E470A0BC();
  v4 = sub_1E470B2CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471A8E0, v33);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1E4654D04(*(v5 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType), *(v5 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType + 8), v33);
    _os_log_impl(&dword_1E45E0000, v3, v4, "BDSSyncEnginePipeline - %s: [%s]", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v7, -1, -1);
    MEMORY[0x1E6917530](v6, -1, -1);
  }

  if (sub_1E46F4630(*(*(v0 + 176) + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_zoneID), *(v0 + 160)))
  {
    v8 = *(v0 + 176);
    v9 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_stateQueue;
    *(v0 + 216) = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_stateQueue;
    v10 = *(v8 + v9);
    *(swift_task_alloc() + 16) = v8;
    v11 = v10;
    sub_1E470B37C();
    *(v0 + 224) = 0;

    v12 = *(v0 + 176);
    if (*(v0 + 288) == 1)
    {
      *(v0 + 232) = os_transaction_create();
      v13 = &v12[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType];
      v14 = *&v12[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType];
      *(v0 + 240) = v14;
      v15 = *(v13 + 1);
      *(v0 + 248) = v15;

      v16 = sub_1E470A0BC();
      v17 = sub_1E470B2CC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v33[0] = v19;
        *v18 = 136315394;
        *(v18 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471A8E0, v33);
        *(v18 + 12) = 2080;
        *(v18 + 14) = sub_1E4654D04(v14, v15, v33);
        _os_log_impl(&dword_1E45E0000, v16, v17, "BDSSyncEnginePipeline - %s: [%s] About to fetch dirty changes", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v19, -1, -1);
        MEMORY[0x1E6917530](v18, -1, -1);
      }

      v20 = *(v0 + 168);
      v21 = *(*(v0 + 176) + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1E46F8DE8;
      v22 = swift_continuation_init();
      *(v0 + 136) = sub_1E4650534(&qword_1ECF75A28, &qword_1E4720350);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1E46F942C;
      *(v0 + 104) = &unk_1F5E66B50;
      *(v0 + 112) = v22;
      [v21 nextBatchOfMutableCloudDataToSaveToCKWithFetchLimit:v20 completion:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v23 = v12;
    v24 = sub_1E470A0BC();
    v25 = sub_1E470B2CC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 176);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33[0] = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471A8E0, v33);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1E4654D04(*(v26 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType), *(v26 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType + 8), v33);
      _os_log_impl(&dword_1E45E0000, v24, v25, "BDSSyncEnginePipeline - %s: [%s] No pending modifications. Returning nil", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v28, -1, -1);
      MEMORY[0x1E6917530](v27, -1, -1);
    }
  }

  v29 = *(v0 + 152);
  v30 = sub_1E470A30C();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1E46F8DE8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E46F8EC8, 0, 0);
}

uint64_t sub_1E46F8EC8()
{
  v27 = v0;
  v1 = v0[18];
  v0[32] = v1;
  if (v1)
  {
    v2 = v0[29];
    v3 = swift_allocObject();
    v0[33] = v3;
    swift_unknownObjectWeakInit();
    v4 = swift_task_alloc();
    v0[34] = v4;
    v4[2] = v3;
    v4[3] = v1;
    v4[4] = v2;
    v5 = swift_task_alloc();
    v0[35] = v5;
    v6 = sub_1E4650534(&qword_1ECF75A30, &qword_1E471E950);
    *v5 = v0;
    v5[1] = sub_1E46F926C;
    v7 = v0[19];

    return MEMORY[0x1EEE6DDE0](v7, 0, 0, 0xD00000000000002ELL, 0x80000001E471A8E0, sub_1E4700C44, v4, v6);
  }

  else
  {

    v8 = sub_1E470A0BC();
    v9 = sub_1E470B2CC();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[31];
    if (v10)
    {
      v12 = v0[30];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471A8E0, v26);
      *(v13 + 12) = 2080;
      v15 = sub_1E4654D04(v12, v11, v26);

      *(v13 + 14) = v15;
      _os_log_impl(&dword_1E45E0000, v8, v9, "BDSSyncEnginePipeline - %s: [%s] no more dirty changes", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v14, -1, -1);
      MEMORY[0x1E6917530](v13, -1, -1);
    }

    else
    {
    }

    v17 = v0[24];
    v16 = v0[25];
    v19 = v0[22];
    v18 = v0[23];
    v20 = v0[19];
    v21 = *(v19 + v0[27]);
    sub_1E470A5CC();
    v22 = swift_task_alloc();
    *(v22 + 16) = v19;
    *(v22 + 24) = 0;
    sub_1E470B36C();
    swift_unknownObjectRelease();

    (*(v17 + 8))(v16, v18);
    v23 = sub_1E470A30C();
    (*(*(v23 - 8) + 56))(v20, 1, 1, v23);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1E46F926C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E46F93C4, 0, 0);
}

uint64_t sub_1E46F93C4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E46F942C(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1E465057C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1E45E2DE8(0, &qword_1ECF75460, off_1E8758B88);
    v4 = sub_1E470B0BC();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1E46F94BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v5 = sub_1E470A5DC();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470A61C();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4650534(&qword_1ECF75D48, &unk_1E4720570);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v35 - v17;
  v19 = sub_1E4650534(&qword_1ECF75A30, &qword_1E471E950);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v35 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = *(Strong + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue);
    v37 = v5;
    v24 = Strong;
    (*(v14 + 16))(v18, a1, v13);
    v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v26 = swift_allocObject();
    v27 = v8;
    v28 = v39;
    *(v26 + 16) = v24;
    *(v26 + 24) = v28;
    (*(v14 + 32))(v26 + v25, v18, v13);
    *(v26 + ((v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v38;
    aBlock[4] = sub_1E4701ADC;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46C4624;
    aBlock[3] = &unk_1F5E67308;
    v29 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v30 = v36;
    v31 = v24;

    sub_1E470A5FC();
    v43 = MEMORY[0x1E69E7CC0];
    sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
    sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
    v32 = v37;
    sub_1E470B4CC();
    MEMORY[0x1E69160A0](0, v12, v27, v29);
    _Block_release(v29);

    (*(v42 + 8))(v27, v32);
    (*(v40 + 8))(v12, v41);
  }

  else
  {
    v34 = sub_1E470A30C();
    (*(*(v34 - 8) + 56))(v22, 1, 1, v34);
    return sub_1E470B12C();
  }
}

uint64_t sub_1E46F9970(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E4650534(&qword_1ECF75A30, &qword_1E471E950);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  sub_1E46F9A84(a2, &v12 - v9);
  sub_1E465E0B0(v10, v6, &qword_1ECF75A30, &qword_1E471E950);
  sub_1E4650534(&qword_1ECF75D48, &unk_1E4720570);
  sub_1E470B12C();
  return sub_1E465E050(v10, &qword_1ECF75A30, &qword_1E471E950);
}

uint64_t sub_1E46F9A84@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v54 = a2;
  v6 = sub_1E470A5DC();
  v53[0] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType);
  v10 = *(v2 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType + 8);
  v12 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_logger;

  v53[1] = v12;
  v13 = sub_1E470A0BC();
  LOBYTE(v14) = sub_1E470B2CC();

  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_6;
  }

  v3 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v55[0] = v15;
  *v3 = 136315650;
  *(v3 + 4) = sub_1E4654D04(0xD000000000000029, 0x80000001E471AD70, v55);
  *(v3 + 12) = 2080;
  *(v3 + 14) = sub_1E4654D04(v11, v10, v55);
  *(v3 + 22) = 2048;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E470B50C())
  {
    *(v3 + 24) = i;

    _os_log_impl(&dword_1E45E0000, v13, v14, "BDSSyncEnginePipeline - %s: [%s] %ld dirty changes", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v15, -1, -1);
    MEMORY[0x1E6917530](v3, -1, -1);

LABEL_6:
    v14 = MEMORY[0x1E69E7CC0];
    v56 = MEMORY[0x1E69E7CC0];
    v57 = MEMORY[0x1E69E7CC0];
    v17 = *(v4 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_currentModifyBatchResponse);
    swift_beginAccess();

    sub_1E46FD1E4(a1, &v57, &v56, v17 + 48);
    swift_endAccess();

    a1 = v57;
    v15 = v57 >> 62;
    if (v57 >> 62)
    {
      if (sub_1E470B50C())
      {
        goto LABEL_10;
      }
    }

    else if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    v3 = v56;
    if (v56 >> 62)
    {
      if (!sub_1E470B50C())
      {
LABEL_37:

        v45 = sub_1E470A0BC();
        v46 = sub_1E470B2CC();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v55[0] = v48;
          *v47 = 136315394;
          *(v47 + 4) = sub_1E4654D04(0xD000000000000029, 0x80000001E471AD70, v55);
          *(v47 + 12) = 2080;
          v49 = sub_1E4654D04(v11, v10, v55);

          *(v47 + 14) = v49;
          _os_log_impl(&dword_1E45E0000, v45, v46, "BDSSyncEnginePipeline - %s: [%s] Cannot create CKRecords to save", v47, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E6917530](v48, -1, -1);
          MEMORY[0x1E6917530](v47, -1, -1);
        }

        else
        {
        }

        v26 = v54;
        v50 = *(v4 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_stateQueue);
        v51 = sub_1E470A5CC();
        MEMORY[0x1EEE9AC00](v51, v52);
        v53[-2] = v4;
        LOBYTE(v53[-1]) = 0;
        sub_1E470B36C();

        (*(v53[0] + 8))(v9, v6);
        v42 = 1;
        goto LABEL_29;
      }
    }

    else if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

LABEL_10:
    if (v15)
    {
      v6 = sub_1E470B50C();
      if (!v6)
      {
LABEL_20:

        v22 = MEMORY[0x1E69E7CC0];
        goto LABEL_21;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    v55[0] = v14;

    v13 = v55;
    sub_1E470B63C();
    if ((v6 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_33:
    ;
  }

  v53[0] = v11;
  v18 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1E6916300](v18, a1);
    }

    else
    {
      v19 = *(a1 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    v21 = [v19 recordID];

    sub_1E470B61C();
    sub_1E470B64C();
    sub_1E470B65C();
    sub_1E470B62C();
  }

  while (v6 != v18);
  v22 = v55[0];
  v11 = v53[0];
LABEL_21:

  v23 = sub_1E470A0BC();
  v24 = sub_1E470B2CC();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v54;
  if (v25)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v55[0] = v28;
    *v27 = 136316418;
    *(v27 + 4) = sub_1E4654D04(0xD000000000000029, 0x80000001E471AD70, v55);
    *(v27 + 12) = 2080;
    v29 = sub_1E4654D04(v11, v10, v55);

    *(v27 + 14) = v29;
    *(v27 + 22) = 2048;
    if (v22 >> 62)
    {
      v30 = sub_1E470B50C();
    }

    else
    {
      v30 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v27 + 24) = v30;

    *(v27 + 32) = 2080;
    v31 = sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
    v32 = MEMORY[0x1E6915DE0](v22, v31);
    v34 = v33;

    v35 = sub_1E4654D04(v32, v34, v55);

    *(v27 + 34) = v35;
    *(v27 + 42) = 2048;
    swift_beginAccess();
    if (v56 >> 62)
    {
      v36 = sub_1E470B50C();
    }

    else
    {
      v36 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v27 + 44) = v36;
    *(v27 + 52) = 2080;

    v38 = MEMORY[0x1E6915DE0](v37, v31);
    v40 = v39;

    v41 = sub_1E4654D04(v38, v40, v55);

    *(v27 + 54) = v41;
    _os_log_impl(&dword_1E45E0000, v23, v24, "BDSSyncEnginePipeline - %s: [%s] Returning records %ld idsToSave=%s, %ld idsToDelete=%s", v27, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v28, -1, -1);
    MEMORY[0x1E6917530](v27, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  swift_beginAccess();

  sub_1E470A2CC();
  v42 = 0;
LABEL_29:
  v43 = sub_1E470A30C();
  (*(*(v43 - 8) + 56))(v26, v42, 1, v43);
}

uint64_t sub_1E46FA2FC(void *a1)
{
  v2 = v1;
  v4 = sub_1E470A5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470A61C();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  v14 = sub_1E470A0BC();
  v15 = sub_1E470B2CC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v5;
    v19 = v18;
    aBlock[0] = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_1E4654D04(0xD000000000000010, 0x80000001E471A980, aBlock);
    *(v16 + 12) = 2112;
    v20 = [v13 recordID];
    *(v16 + 14) = v20;
    *v17 = v20;
    _os_log_impl(&dword_1E45E0000, v14, v15, "BDSSyncEnginePipeline - %s: %@", v16, 0x16u);
    sub_1E465E050(v17, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v17, -1, -1);
    sub_1E4658A0C(v19);
    v21 = v19;
    v5 = v29;
    MEMORY[0x1E6917530](v21, -1, -1);
    MEMORY[0x1E6917530](v16, -1, -1);
  }

  v22 = *&v2[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue];
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = v13;
  aBlock[4] = sub_1E4700C50;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66BC8;
  v24 = _Block_copy(aBlock);
  v25 = v13;
  v26 = v22;
  v27 = v2;
  sub_1E470A5FC();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v12, v8, v24);
  _Block_release(v24);

  (*(v5 + 8))(v8, v4);
  (*(v30 + 8))(v12, v31);
}

void sub_1E46FA720(void *a1)
{
  v3 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_currentModifyBatchResponse;
  v4 = *(v1 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_currentModifyBatchResponse);

  v5 = [a1 recordID];
  swift_beginAccess();
  v6 = *(v4 + 48);

  v7 = sub_1E46F4384(v5, v6, &qword_1ECF75460, off_1E8758B88);

  if (!v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate);
    v9 = [a1 recordID];
    v7 = [v8 mutableCloudDataForRecordID_];

    if (!v7)
    {
      return;
    }

    v10 = v1;
    v11 = sub_1E470A0BC();
    v12 = sub_1E470B2AC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1E4654D04(0xD000000000000013, 0x80000001E471AD50, &v17);
      _os_log_impl(&dword_1E45E0000, v11, v12, "BDSSyncEnginePipeline - %s: Unable to find outstanding cloudData. Overwrite existing.", v13, 0xCu);
      sub_1E4658A0C(v14);
      MEMORY[0x1E6917530](v14, -1, -1);
      MEMORY[0x1E6917530](v13, -1, -1);
    }

    v1 = v10;
  }

  [v7 setSystemFields_];
  v15 = *(v1 + v3);

  v16 = [a1 recordID];
  sub_1E47009C4(v7, v16, v15);
}

uint64_t sub_1E46FA96C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1E470A5DC();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E470A61C();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = sub_1E470A0BC();
  v16 = sub_1E470B2CC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v17 = 136315394;
    *(v17 + 4) = sub_1E4654D04(0xD000000000000027, 0x80000001E471A9A0, aBlock);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v19 = v14;
    v21 = v14;
    _os_log_impl(&dword_1E45E0000, v15, v16, "BDSSyncEnginePipeline - %s: %@", v17, 0x16u);
    sub_1E465E050(v19, &qword_1ECF75100, qword_1E471E820);
    v22 = v19;
    a2 = v32;
    MEMORY[0x1E6917530](v22, -1, -1);
    sub_1E4658A0C(v20);
    MEMORY[0x1E6917530](v20, -1, -1);
    MEMORY[0x1E6917530](v17, -1, -1);
  }

  v23 = *&v3[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue];
  v24 = swift_allocObject();
  v24[2] = v3;
  v24[3] = v14;
  v24[4] = a2;
  aBlock[4] = sub_1E4700C78;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66C18;
  v25 = _Block_copy(aBlock);
  v26 = v14;
  v27 = v23;
  v28 = v3;
  v29 = a2;
  sub_1E470A5FC();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v13, v9, v25);
  _Block_release(v25);

  (*(v35 + 8))(v9, v6);
  (*(v33 + 8))(v13, v34);
}

uint64_t sub_1E46FAD90(void *a1)
{
  v2 = v1;
  v4 = sub_1E470A5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470A61C();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  v14 = sub_1E470A0BC();
  v15 = sub_1E470B2CC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v5;
    v19 = v18;
    aBlock[0] = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_1E4654D04(0xD00000000000001ELL, 0x80000001E471A9D0, aBlock);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v17 = v13;
    v20 = v13;
    _os_log_impl(&dword_1E45E0000, v14, v15, "BDSSyncEnginePipeline - %s: %@", v16, 0x16u);
    sub_1E465E050(v17, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v17, -1, -1);
    sub_1E4658A0C(v19);
    v21 = v19;
    v5 = v29;
    MEMORY[0x1E6917530](v21, -1, -1);
    MEMORY[0x1E6917530](v16, -1, -1);
  }

  v22 = *&v2[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue];
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = v13;
  aBlock[4] = sub_1E4700CA4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66C68;
  v24 = _Block_copy(aBlock);
  v25 = v13;
  v26 = v22;
  v27 = v2;
  sub_1E470A5FC();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v12, v8, v24);
  _Block_release(v24);

  (*(v5 + 8))(v8, v4);
  (*(v30 + 8))(v12, v31);
}

uint64_t sub_1E46FB1A0(uint64_t a1, void *a2)
{

  sub_1E46FE000(a2);
}

uint64_t sub_1E46FB1F0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1E470A5DC();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E470A61C();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = sub_1E470A0BC();
  v16 = sub_1E470B2CC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v17 = 136315394;
    *(v17 + 4) = sub_1E4654D04(0xD000000000000029, 0x80000001E471A9F0, aBlock);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v19 = v14;
    v21 = v14;
    _os_log_impl(&dword_1E45E0000, v15, v16, "BDSSyncEnginePipeline - %s: %@", v17, 0x16u);
    sub_1E465E050(v19, &qword_1ECF75100, qword_1E471E820);
    v22 = v19;
    a2 = v32;
    MEMORY[0x1E6917530](v22, -1, -1);
    sub_1E4658A0C(v20);
    MEMORY[0x1E6917530](v20, -1, -1);
    MEMORY[0x1E6917530](v17, -1, -1);
  }

  v23 = *&v3[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue];
  v24 = swift_allocObject();
  v24[2] = v3;
  v24[3] = v14;
  v24[4] = a2;
  aBlock[4] = sub_1E4701C2C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66CB8;
  v25 = _Block_copy(aBlock);
  v26 = v14;
  v27 = v23;
  v28 = v3;
  v29 = a2;
  sub_1E470A5FC();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v13, v9, v25);
  _Block_release(v25);

  (*(v35 + 8))(v9, v6);
  (*(v33 + 8))(v13, v34);
}

uint64_t sub_1E46FB614(void *a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType);
  v5 = *(v2 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType + 8);
  swift_beginAccess();
  v6 = a1[2];
  swift_beginAccess();
  v7 = a1[3];
  swift_beginAccess();
  v8 = a1[4];
  swift_beginAccess();
  v9 = a1[5];
  v51 = v9 >> 62;
  if (v9 >> 62)
  {
    v10 = sub_1E470B50C();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = sub_1E470A0BC();
  v12 = v7 >> 62;
  v54 = v8;
  v55 = v8 >> 62;
  v52 = v10;
  if (v10)
  {
    v13 = sub_1E470B2AC();
    if (os_log_type_enabled(v11, v13))
    {
      log = v11;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v14 = 136316418;
      *(v14 + 4) = sub_1E4654D04(0xD000000000000019, 0x80000001E471ADF0, &aBlock);
      *(v14 + 12) = 2080;
      v16 = sub_1E4654D04(v4, v5, &aBlock);

      *(v14 + 14) = v16;
      *(v14 + 22) = 2048;
      if (v6 >> 62)
      {
        v17 = sub_1E470B50C();
      }

      else
      {
        v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v7 >> 62;
      *(v14 + 24) = v17;
      *(v14 + 32) = 2048;
      if (v7 >> 62)
      {
        v18 = sub_1E470B50C();
      }

      else
      {
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 34) = v18;
      *(v14 + 42) = 2048;
      if (v55)
      {
        v19 = sub_1E470B50C();
      }

      else
      {
        v19 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 44) = v19;
      *(v14 + 52) = 2048;
      if (v51)
      {
        v20 = sub_1E470B50C();
      }

      else
      {
        v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 54) = v20;
      _os_log_impl(&dword_1E45E0000, log, v13, "BDSSyncEnginePipeline - %s: [%s] %ld savedCloudDatas, %ld deletedRecordIDs, %ld serverVersionRecords, %ld failedRecordIDs", v14, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v15, -1, -1);
      MEMORY[0x1E6917530](v14, -1, -1);

      v28 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!(v6 >> 62))
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v21 = sub_1E470B2CC();
    if (os_log_type_enabled(v11, v21))
    {
      v49 = v21;
      v22 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock = v48;
      *v22 = 136316418;
      *(v22 + 4) = sub_1E4654D04(0xD000000000000019, 0x80000001E471ADF0, &aBlock);
      *(v22 + 12) = 2080;
      v23 = sub_1E4654D04(v4, v5, &aBlock);

      *(v22 + 14) = v23;
      *(v22 + 22) = 2048;
      if (v6 >> 62)
      {
        v24 = sub_1E470B50C();
      }

      else
      {
        v24 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 24) = v24;
      *(v22 + 32) = 2048;
      if (v12)
      {
        v25 = sub_1E470B50C();
      }

      else
      {
        v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 34) = v25;
      *(v22 + 42) = 2048;
      if (v55)
      {
        v26 = sub_1E470B50C();
      }

      else
      {
        v26 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 44) = v26;
      *(v22 + 52) = 2048;
      if (v51)
      {
        v27 = sub_1E470B50C();
      }

      else
      {
        v27 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 54) = v27;
      _os_log_impl(&dword_1E45E0000, v11, v49, "BDSSyncEnginePipeline - %s: [%s] %ld savedCloudDatas, %ld deletedRecordIDs, %ld serverVersionRecords, %ld failedRecordIDs", v22, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v48, -1, -1);
      MEMORY[0x1E6917530](v22, -1, -1);

      v28 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!(v6 >> 62))
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }
  }

  v28 = v6 & 0xFFFFFFFFFFFFFF8;
  if (!(v6 >> 62))
  {
LABEL_26:
    v29 = *(v28 + 16);
    goto LABEL_27;
  }

LABEL_45:
  v29 = sub_1E470B50C();
LABEL_27:
  if (v29)
  {
    v30 = v12;
    v31 = *(v56 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate);
    sub_1E4650534(&qword_1ECF75D40, &qword_1E47200E8);
    v32 = sub_1E470B0AC();
    v33 = v56;

    v61 = nullsub_60;
    v62 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1E46BA7E4;
    v60 = &unk_1F5E67240;
    v34 = _Block_copy(&aBlock);
    [v31 syncProvider:v56 updateSyncGenerationFromCloudData:v32 completion:v34];
    _Block_release(v34);

    v35 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v30)
    {
      goto LABEL_29;
    }
  }

  else
  {

    v33 = v56;
    v35 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v12)
    {
LABEL_29:
      if (*(v35 + 16))
      {
        goto LABEL_30;
      }

      goto LABEL_36;
    }
  }

  if (sub_1E470B50C())
  {
LABEL_30:
    v36 = *(v33 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate);
    sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
    v37 = sub_1E470B0AC();

    v61 = nullsub_60;
    v62 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1E46BA7E4;
    v60 = &unk_1F5E67268;
    v38 = _Block_copy(&aBlock);
    [v36 syncProvider:v33 removeCloudDataForIDs:v37 completion:v38];
    _Block_release(v38);

    v39 = v54;
    if (!v55)
    {
      goto LABEL_31;
    }

    goto LABEL_37;
  }

LABEL_36:

  v39 = v54;
  if (!v55)
  {
LABEL_31:
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

LABEL_38:

    if (v52)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

LABEL_37:
  if (!sub_1E470B50C())
  {
    goto LABEL_38;
  }

LABEL_32:
  v40 = *(v33 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate);
  sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
  v41 = sub_1E470B0AC();

  v61 = nullsub_60;
  v62 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1E46BA7E4;
  v60 = &unk_1F5E67290;
  v42 = _Block_copy(&aBlock);
  [v40 syncProvider:v33 resolveConflictsForRecords:v41 completion:v42];
  _Block_release(v42);

  if (v52)
  {
LABEL_33:
    v43 = *(v33 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate);
    sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
    v44 = sub_1E470B0AC();

    v61 = nullsub_60;
    v62 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1E46BA7E4;
    v60 = &unk_1F5E672B8;
    v45 = _Block_copy(&aBlock);
    [v43 syncProvider:v33 failedRecordIDs:v44 completion:v45];
    _Block_release(v45);

    goto LABEL_40;
  }

LABEL_39:

LABEL_40:
  v46 = MEMORY[0x1E69E7CC0];
  a1[2] = MEMORY[0x1E69E7CC0];

  a1[3] = v46;

  a1[4] = v46;

  a1[5] = v46;

  if (a2)
  {
    return sub_1E46FEC08();
  }

  return result;
}

void sub_1E46FBF34(void *a1, id a2)
{
  v4 = v2;
  v88 = a2;
  v7 = a2;
  sub_1E4650534(&unk_1ECF75C20, &unk_1E471DAC0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v8 = v87;
    v88 = MEMORY[0x1E69E7CC0];
    v9 = sub_1E470AE1C();
    if (v9)
    {
      v10 = v9;
      sub_1E4701460(&qword_1ECF743C8, type metadata accessor for CKError, &unk_1E471B454);
      sub_1E4709ACC();
      if (v86 == 14)
      {
        v11 = a1;
        v12 = v87;
        v13 = sub_1E470A0BC();
        v14 = sub_1E470B28C();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v3 = swift_slowAlloc();
          p_isa = v3;
          *v15 = 136315650;
          *(v15 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471AD20, &p_isa);
          *(v15 + 12) = 2112;
          *(v15 + 14) = v11;
          *v16 = v11;
          *(v15 + 22) = 2112;
          v17 = v11;
          v18 = v12;
          v19 = _swift_stdlib_bridgeErrorToNSError();
          *(v15 + 24) = v19;
          v16[1] = v19;
          _os_log_impl(&dword_1E45E0000, v13, v14, "BDSSyncEnginePipeline - %s: CKErrorServerRecordChanged record %@ perRecordError %@", v15, 0x20u);
          sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
          swift_arrayDestroy();
          MEMORY[0x1E6917530](v16, -1, -1);
          sub_1E4658A0C(v3);
          MEMORY[0x1E6917530](v3, -1, -1);
          MEMORY[0x1E6917530](v15, -1, -1);
        }

        v20 = MEMORY[0x1E69E7CC8];
        v21 = v10;
        if (!(v20 >> 62))
        {
          goto LABEL_9;
        }

        v22 = sub_1E470B50C();
        if (!__OFADD__(v22, 1))
        {
          v20 = sub_1E46C6E94(MEMORY[0x1E69E7CC8], v22 + 1);
LABEL_9:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          p_isa = v20;
          sub_1E46C7664(v21, v11, isUniquelyReferenced_nonNull_native);

          v24 = 0;
          v25 = p_isa;
          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_53;
      }

      v46 = v87;
      v47 = v10;
      v48 = sub_1E470A0BC();
      v49 = sub_1E470B2AC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        p_isa = v52;
        *v50 = 136315650;
        *(v50 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471AD20, &p_isa);
        *(v50 + 12) = 2112;
        *(v50 + 14) = v47;
        *v51 = v10;
        *(v50 + 22) = 2112;
        v53 = v46;
        v54 = v47;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 24) = v55;
        v51[1] = v55;
        _os_log_impl(&dword_1E45E0000, v48, v49, "BDSSyncEnginePipeline - %s: Unhandled error for record %@ perRecordError %@", v50, 0x20u);
        sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v51, -1, -1);
        sub_1E4658A0C(v52);
        MEMORY[0x1E6917530](v52, -1, -1);
        MEMORY[0x1E6917530](v50, -1, -1);

LABEL_32:
        v24 = 0;
        v25 = MEMORY[0x1E69E7CC8];
LABEL_33:
        v71 = MEMORY[0x1E69E7CC0];
        if ((v25 & 0xC000000000000001) != 0)
        {
          goto LABEL_34;
        }

LABEL_44:
        if (!*(v25 + 16))
        {
LABEL_36:
          if (v71 >> 62)
          {
            if (sub_1E470B50C())
            {
LABEL_38:

              sub_1E46FE8C4(v71);

              if (v24)
              {
LABEL_39:
                sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
                v73 = [*(v4 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_zoneID) zoneName];
                sub_1E470AF1C();

                sub_1E470AF1C();
                v74 = sub_1E470B2EC();
                v75 = [objc_allocWithZone(MEMORY[0x1E695BA80]) initWithZoneID_];
                if (qword_1EE2AE3E8 != -1)
                {
                  swift_once();
                }

                BDSSyncEngine.resetCloudKitZone(_:)(v75);

                goto LABEL_51;
              }

LABEL_50:

              goto LABEL_51;
            }
          }

          else if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          if (v24)
          {
            goto LABEL_39;
          }

          goto LABEL_50;
        }

LABEL_35:

        sub_1E46FE0D8(v72);

        goto LABEL_36;
      }
    }

    else
    {
      v3 = a1;
      v35 = v87;
      v36 = sub_1E470A0BC();
      v37 = sub_1E470B2AC();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = v87;
        v41 = swift_slowAlloc();
        v87 = v41;
        *v38 = 136315650;
        *(v38 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471AD20, &v87);
        *(v38 + 12) = 2112;
        *(v38 + 14) = v3;
        *v39 = v3;
        *(v38 + 22) = 2112;
        v42 = v3;
        v43 = v35;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 24) = v44;
        v39[1] = v44;
        _os_log_impl(&dword_1E45E0000, v36, v37, "BDSSyncEnginePipeline - %s: Unable to retrieve serverRecord for recordID %@ perRecordError %@", v38, 0x20u);
        sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v39, -1, -1);
        sub_1E4658A0C(v41);
        v45 = v41;
        v8 = v40;
        MEMORY[0x1E6917530](v45, -1, -1);
        MEMORY[0x1E6917530](v38, -1, -1);
      }

      v87 = v35;
      sub_1E4701460(&qword_1ECF743C8, type metadata accessor for CKError, &unk_1E471B454);
      sub_1E4709ACC();
      if (v86 > 25)
      {
        if (v86 == 26 || v86 == 28)
        {
          if (qword_1EE2AE3E8 == -1)
          {
LABEL_23:
            sub_1E4650534(&qword_1ECF75078, qword_1E471E7D0);
            v56 = swift_allocObject();
            *(v56 + 16) = xmmword_1E471E8F0;
            v57 = *(v4 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_zoneID);
            *(v56 + 32) = v57;
            v58 = v57;

            v59 = sub_1E470A0BC();
            v60 = sub_1E470B2CC();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              p_isa = swift_slowAlloc();
              v62 = v8;
              v63 = v3;
              v64 = p_isa;
              *v61 = 136446210;
              v65 = sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
              v66 = MEMORY[0x1E6915DE0](v56, v65);
              v68 = sub_1E4654D04(v66, v67, &p_isa);

              *(v61 + 4) = v68;
              _os_log_impl(&dword_1E45E0000, v59, v60, "BDSSyncEngine - handleZoneMissingOrDeleted: %{public}s", v61, 0xCu);
              sub_1E4658A0C(v64);
              v69 = v64;
              v3 = v63;
              v8 = v62;
              MEMORY[0x1E6917530](v69, -1, -1);
              MEMORY[0x1E6917530](v61, -1, -1);
            }

            sub_1E46C3D48(v56, 1);

LABEL_26:
            v70 = v3;
            MEMORY[0x1E6915DB0]();
            if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E470B0DC();
            }

            sub_1E470B0FC();
            v24 = 0;
            v71 = v88;
            v25 = MEMORY[0x1E69E7CC8];
            if ((MEMORY[0x1E69E7CC8] & 0xC000000000000001) == 0)
            {
              goto LABEL_44;
            }

LABEL_34:
            if (!sub_1E470B50C())
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

LABEL_53:
          swift_once();
          goto LABEL_23;
        }
      }

      else if (v86 == 14 || v86 == 21)
      {
        goto LABEL_26;
      }

      p_isa = &v35->isa;
      if (sub_1E4709AEC() == 112)
      {
        v25 = MEMORY[0x1E69E7CC8];
        v71 = MEMORY[0x1E69E7CC0];
        v24 = 1;
        if ((MEMORY[0x1E69E7CC8] & 0xC000000000000001) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_34;
      }

      v76 = v3;
      v77 = v35;
      v48 = sub_1E470A0BC();
      v78 = sub_1E470B2AC();

      if (os_log_type_enabled(v48, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v87 = v81;
        *v79 = 136315650;
        *(v79 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471AD20, &v87);
        *(v79 + 12) = 2112;
        *(v79 + 14) = v76;
        *v80 = v76;
        *(v79 + 22) = 2112;
        v82 = v76;
        v83 = v77;
        v84 = _swift_stdlib_bridgeErrorToNSError();
        *(v79 + 24) = v84;
        v80[1] = v84;
        _os_log_impl(&dword_1E45E0000, v48, v78, "BDSSyncEnginePipeline - %s: Unhandled error for recordID %@ perRecordError %@", v79, 0x20u);
        sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v80, -1, -1);
        sub_1E4658A0C(v81);
        MEMORY[0x1E6917530](v81, -1, -1);
        MEMORY[0x1E6917530](v79, -1, -1);
      }
    }

    goto LABEL_32;
  }

  v26 = a2;
  v27 = a1;
  v8 = sub_1E470A0BC();
  v28 = sub_1E470B2AC();

  if (os_log_type_enabled(v8, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v88 = v31;
    *v29 = 136315650;
    *(v29 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471AD20, &v88);
    *(v29 + 12) = 2112;
    *(v29 + 14) = v27;
    *v30 = v27;
    *(v29 + 22) = 2112;
    v32 = a2;
    v33 = v27;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 24) = v34;
    v30[1] = v34;
    _os_log_impl(&dword_1E45E0000, v8, v28, "BDSSyncEnginePipeline - %s: Error modifying record:%@ error=%@", v29, 0x20u);
    sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v30, -1, -1);
    sub_1E4658A0C(v31);
    MEMORY[0x1E6917530](v31, -1, -1);
    MEMORY[0x1E6917530](v29, -1, -1);
  }

LABEL_51:
}

uint64_t sub_1E46FCC1C()
{
  v1 = v0;
  v2 = sub_1E470A5DC();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E470A61C();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType];
  v10 = *&v0[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType + 8];

  v12 = sub_1E470A0BC();
  v13 = sub_1E470B2CC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1E4654D04(0xD00000000000001FLL, 0x80000001E471AA20, aBlock);
    *(v14 + 12) = 2080;
    v16 = sub_1E4654D04(v11, v10, aBlock);

    *(v14 + 14) = v16;
    _os_log_impl(&dword_1E45E0000, v12, v13, "BDSSyncEnginePipeline - %s: [%s]", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v15, -1, -1);
    MEMORY[0x1E6917530](v14, -1, -1);
  }

  else
  {
  }

  v17 = *&v1[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  aBlock[4] = sub_1E4700CF4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66D08;
  v19 = _Block_copy(aBlock);
  v20 = v17;
  v21 = v1;
  sub_1E470A5FC();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v9, v5, v19);
  _Block_release(v19);

  (*(v25 + 8))(v5, v2);
  (*(v23 + 8))(v9, v24);
}

uint64_t sub_1E46FD024()
{

  sub_1E46FB614(v0, 1);
}

void sub_1E46FD074(void *a1)
{
  v2 = a1;
  oslog = sub_1E470A0BC();
  v3 = sub_1E470B2CC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1E4654D04(0xD000000000000025, 0x80000001E471ACF0, &v9);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v2;
    *v5 = a1;
    v7 = v2;
    _os_log_impl(&dword_1E45E0000, oslog, v3, "BDSSyncEnginePipeline - %s: %@", v4, 0x16u);
    sub_1E465E050(v5, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v5, -1, -1);
    sub_1E4658A0C(v6);
    MEMORY[0x1E6917530](v6, -1, -1);
    MEMORY[0x1E6917530](v4, -1, -1);
  }
}

void sub_1E46FD1E4(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = a1;
  v110 = *(v4 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType);
  v114 = *(v4 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType + 8);
  if (a1 >> 62)
  {
LABEL_89:
    v7 = sub_1E470B50C();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v121 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v111 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_dataMapper;
      v112 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v119 = a4;
      v115 = isUniquelyReferenced_nonNull_native;
      v113 = v7;
      do
      {
        if (v121)
        {
          v9 = MEMORY[0x1E6916300](v8, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          if (v8 >= *(v112 + 16))
          {
            goto LABEL_82;
          }

          v9 = *(isUniquelyReferenced_nonNull_native + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_82:
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
          __break(1u);
          goto LABEL_89;
        }

        v12 = [v9 systemFields];
        if (!v12)
        {

          v23 = v10;
          v24 = sub_1E470A0BC();
          v25 = sub_1E470B2AC();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v122[0] = v28;
            *v26 = 136315394;
            *(v26 + 4) = sub_1E4654D04(v110, v114, v122);
            *(v26 + 12) = 2112;
            *(v26 + 14) = v23;
            *v27 = v23;
            v23 = v23;
            _os_log_impl(&dword_1E45E0000, v24, v25, "BDSSyncEnginePipeline - [%s] Unable to retrieve systemFields from %@", v26, 0x16u);
            sub_1E465E050(v27, &qword_1ECF75100, qword_1E471E820);
            v29 = v27;
            v7 = v113;
            MEMORY[0x1E6917530](v29, -1, -1);
            sub_1E4658A0C(v28);
            v30 = v28;
            a4 = v119;
            MEMORY[0x1E6917530](v30, -1, -1);
            MEMORY[0x1E6917530](v26, -1, -1);
          }

          goto LABEL_5;
        }

        v13 = v12;
        if ([v10 deletedFlag])
        {
          v14 = [v13 recordID];
          v15 = v14;
          v16 = *a4;
          if ((*a4 & 0xC000000000000001) != 0)
          {
            if (v16 < 0)
            {
              v17 = *a4;
            }

            else
            {
              v17 = v16 & 0xFFFFFFFFFFFFFF8;
            }

            v18 = v14;
            a4 = sub_1E470B69C();

            if (a4)
            {
              sub_1E45E2DE8(0, &qword_1ECF75460, off_1E8758B88);
              swift_dynamicCast();
              v19 = v122[0];
              if (v122[0])
              {
LABEL_28:

                v36 = v10;
                v37 = sub_1E470A0BC();
                v38 = sub_1E470B2AC();

                if (os_log_type_enabled(v37, v38))
                {
                  v39 = swift_slowAlloc();
                  v40 = swift_slowAlloc();
                  v116 = v13;
                  v41 = swift_slowAlloc();
                  v122[0] = v41;
                  *v39 = 136315394;
                  *(v39 + 4) = sub_1E4654D04(v110, v114, v122);
                  *(v39 + 12) = 2112;
                  *(v39 + 14) = v36;
                  *v40 = v36;
                  v42 = v36;
                  _os_log_impl(&dword_1E45E0000, v37, v38, "BDSSyncEnginePipeline - [%s] cloudDataMap already contans an entry for deleting %@", v39, 0x16u);
                  sub_1E465E050(v40, &qword_1ECF75100, qword_1E471E820);
                  MEMORY[0x1E6917530](v40, -1, -1);
                  sub_1E4658A0C(v41);
                  MEMORY[0x1E6917530](v41, -1, -1);
                  MEMORY[0x1E6917530](v39, -1, -1);
                }

                else
                {
                }

                isUniquelyReferenced_nonNull_native = v115;
                v7 = v113;
                a4 = v119;
                goto LABEL_5;
              }
            }

            v20 = v18;
            v21 = v10;
            v22 = sub_1E470B50C();
            if (__OFADD__(v22, 1))
            {
              goto LABEL_85;
            }

            a4 = v119;
            *v119 = sub_1E46C70E0(v17, v22 + 1);
          }

          else
          {
            if (*(v16 + 16))
            {
              v33 = sub_1E46554E8(v14);
              if (v34)
              {
                v35 = *(*(v16 + 56) + 8 * v33);
                v19 = v35;
                if (v35)
                {
                  goto LABEL_28;
                }
              }
            }

            v60 = v15;
            v61 = v10;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v122[0] = *a4;
          v62 = v122[0];
          v63 = sub_1E46554E8(v15);
          v65 = *(v62 + 16);
          v66 = (v64 & 1) == 0;
          v67 = __OFADD__(v65, v66);
          v68 = v65 + v66;
          if (v67)
          {
            goto LABEL_83;
          }

          v69 = v64;
          if (*(v62 + 24) >= v68)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v104 = v63;
              sub_1E46583EC();
              v63 = v104;
              v7 = v113;
              a4 = v119;
            }
          }

          else
          {
            sub_1E4656AF4(v68, isUniquelyReferenced_nonNull_native);
            v63 = sub_1E46554E8(v15);
            if ((v69 & 1) != (v70 & 1))
            {
              goto LABEL_91;
            }
          }

          isUniquelyReferenced_nonNull_native = v115;
          v71 = v122[0];
          if (v69)
          {
            v72 = *(v122[0] + 56);
            v73 = *(v72 + 8 * v63);
            *(v72 + 8 * v63) = v10;
          }

          else
          {
            *(v122[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
            *(v71[6] + 8 * v63) = v15;
            *(v71[7] + 8 * v63) = v10;
            v74 = v71[2];
            v67 = __OFADD__(v74, 1);
            v75 = v74 + 1;
            if (v67)
            {
              goto LABEL_86;
            }

            v71[2] = v75;
          }

          *a4 = v71;
          v76 = v15;
          MEMORY[0x1E6915DB0]();
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_79;
          }

LABEL_80:
          sub_1E470B0DC();
          v7 = v113;
          a4 = v119;
          goto LABEL_79;
        }

        v31 = *(v120 + v111);
        if (v31)
        {
          v32 = [v31 recordFromCloudData_];
        }

        else
        {
          v32 = [v10 configuredRecordFromAttributes];
        }

        v43 = v32;
        if (!v43)
        {
          v49 = v10;
          v50 = sub_1E470A0BC();
          v51 = sub_1E470B2AC();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v122[0] = v53;
            *v52 = 136315394;
            *(v52 + 4) = sub_1E4654D04(0xD000000000000019, 0x80000001E471ACD0, v122);
            *(v52 + 12) = 2080;
            v54 = [v49 localRecordID];
            v118 = v13;
            v55 = sub_1E470AF1C();
            v57 = v56;

            v58 = sub_1E4654D04(v55, v57, v122);
            v7 = v113;

            *(v52 + 14) = v58;
            a4 = v119;
            _os_log_impl(&dword_1E45E0000, v50, v51, "BDSSyncEnginePipeline - %s: failed to create CKRecord for %s", v52, 0x16u);
            swift_arrayDestroy();
            v59 = v53;
            isUniquelyReferenced_nonNull_native = v115;
            MEMORY[0x1E6917530](v59, -1, -1);
            MEMORY[0x1E6917530](v52, -1, -1);
          }

          else
          {
          }

          goto LABEL_5;
        }

        v44 = v43;
        v117 = v13;
        v45 = [v43 recordID];
        v46 = v45;
        v47 = *a4;
        isUniquelyReferenced_nonNull_native = *a4 & 0xC000000000000001;
        if (isUniquelyReferenced_nonNull_native)
        {
          v48 = v45;
          a4 = sub_1E470B69C();

          if (!a4)
          {
            goto LABEL_57;
          }

          sub_1E45E2DE8(0, &qword_1ECF75460, off_1E8758B88);
          swift_dynamicCast();
          a4 = v122[0];
        }

        else
        {
          if (!*(v47 + 16) || (v77 = sub_1E46554E8(v45), (v78 & 1) == 0))
          {
LABEL_57:

            v79 = v119;
            goto LABEL_58;
          }

          a4 = *(*(v47 + 56) + 8 * v77);
        }

        v79 = v119;
        if (a4)
        {

          v80 = v10;
          v81 = sub_1E470A0BC();
          v82 = sub_1E470B2AC();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = v81;
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v122[0] = v86;
            *v84 = 136315394;
            *(v84 + 4) = sub_1E4654D04(v110, v114, v122);
            *(v84 + 12) = 2112;
            *(v84 + 14) = v80;
            *v85 = v80;
            v87 = v80;
            _os_log_impl(&dword_1E45E0000, v83, v82, "BDSSyncEnginePipeline - [%s] cloudDataMap already contans an entry for saving %@", v84, 0x16u);
            sub_1E465E050(v85, &qword_1ECF75100, qword_1E471E820);
            MEMORY[0x1E6917530](v85, -1, -1);
            sub_1E4658A0C(v86);
            v88 = v86;
            a4 = v119;
            MEMORY[0x1E6917530](v88, -1, -1);
            MEMORY[0x1E6917530](v84, -1, -1);

            isUniquelyReferenced_nonNull_native = v115;
            v7 = v113;
          }

          else
          {

            isUniquelyReferenced_nonNull_native = v115;
            v7 = v113;
            a4 = v119;
          }

          goto LABEL_5;
        }

LABEL_58:
        v89 = [v44 recordID];
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v47 >= 0)
          {
            v47 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v90 = v10;
          v91 = sub_1E470B50C();
          v92 = v117;
          if (__OFADD__(v91, 1))
          {
            goto LABEL_87;
          }

          *v79 = sub_1E46C70E0(v47, v91 + 1);
        }

        else
        {
          v93 = v10;
          v92 = v117;
        }

        a4 = swift_isUniquelyReferenced_nonNull_native();
        v122[0] = *v79;
        v94 = v122[0];
        v95 = sub_1E46554E8(v89);
        v97 = *(v94 + 16);
        v98 = (v96 & 1) == 0;
        v67 = __OFADD__(v97, v98);
        v99 = v97 + v98;
        if (v67)
        {
          goto LABEL_84;
        }

        isUniquelyReferenced_nonNull_native = v96;
        if (*(v94 + 24) < v99)
        {
          sub_1E4656AF4(v99, a4);
          v95 = sub_1E46554E8(v89);
          if ((isUniquelyReferenced_nonNull_native & 1) != (v100 & 1))
          {
LABEL_91:
            sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
            sub_1E470B86C();
            __break(1u);
            return;
          }

LABEL_70:
          v101 = v122[0];
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_71;
          }

          goto LABEL_76;
        }

        if (a4)
        {
          goto LABEL_70;
        }

        a4 = v92;
        v105 = v95;
        sub_1E46583EC();
        v95 = v105;
        v92 = a4;
        v101 = v122[0];
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_71:
          v13 = v92;
          v102 = v101[7];
          v103 = *(v102 + 8 * v95);
          *(v102 + 8 * v95) = v10;

          goto LABEL_78;
        }

LABEL_76:
        v101[(v95 >> 6) + 8] |= 1 << v95;
        *(v101[6] + 8 * v95) = v89;
        *(v101[7] + 8 * v95) = v10;
        v106 = v101[2];
        v67 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        if (v67)
        {
          goto LABEL_88;
        }

        v13 = v92;
        v101[2] = v107;
LABEL_78:
        a4 = v119;
        *v119 = v101;
        v76 = v44;
        MEMORY[0x1E6915DB0]();
        isUniquelyReferenced_nonNull_native = v115;
        v7 = v113;
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_80;
        }

LABEL_79:
        sub_1E470B0FC();

LABEL_5:
        ++v8;
      }

      while (v11 != v7);
    }
  }
}

id BDSSyncEnginePipeline.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BDSSyncEnginePipeline.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BDSSyncEnginePipeline(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E46FE000(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_1E46FF8C4(a1);
  swift_endAccess();

  swift_beginAccess();
  v5 = a1;
  MEMORY[0x1E6915DB0]();
  if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  return swift_endAccess();
}

void sub_1E46FE0D8(unint64_t a1)
{
  v2 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1E470B67C() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v4 = ~v7;
    v3 = a1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(a1 + 64);
    v6 = a1;
  }

  v10 = 0;
  v35 = v4;
  v11 = (v4 + 64) >> 6;
  v36 = v6;
  while ((v6 & 0x8000000000000000) != 0)
  {
    if (!sub_1E470B6AC() || (swift_unknownObjectRelease(), sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60), swift_dynamicCast(), (v14 = v39) == 0))
    {
LABEL_32:
      sub_1E45E781C(v6);
      swift_beginAccess();

      sub_1E46FE52C(v33, v34);
      swift_endAccess();
      return;
    }

LABEL_20:
    v15 = [v14 recordID];
    swift_beginAccess();
    v16 = *(v2 + 48);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v37 = v5;
      v17 = v2;
      if (v16 < 0)
      {
        v18 = *(v2 + 48);
      }

      else
      {
        v18 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v19 = v15;
      v20 = sub_1E470B69C();

      if (v20)
      {
        swift_unknownObjectRelease();

        v21 = sub_1E470B50C();
        v22 = sub_1E46C70E0(v18, v21);

        v23 = sub_1E46554E8(v19);
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          goto LABEL_34;
        }

        v26 = *(*(v22 + 56) + 8 * v23);
        sub_1E4700060(v23, v22);

        v2 = v17;
        *(v17 + 48) = v22;
      }

      else
      {

        v2 = v17;
      }

      v6 = v36;
      v5 = v37;
    }

    else
    {
      v27 = sub_1E46554E8(v15);
      if (v28)
      {
        v29 = v27;
        v38 = v5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(v2 + 48);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E46583EC();
        }

        v32 = *(*(v31 + 56) + 8 * v29);
        sub_1E4700060(v29, v31);
        *(v2 + 48) = v31;

        v5 = v38;
      }

      else
      {
      }
    }

    swift_endAccess();
  }

  v12 = v10;
  v13 = v5;
  if (v5)
  {
LABEL_16:
    v5 = (v13 - 1) & v13;
    v14 = *(*(v6 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      goto LABEL_32;
    }

    v13 = *(v3 + 8 * v10);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1E46FE43C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1E470B50C();
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

  v13 = sub_1E470B50C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1E47001EC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E470028C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_1E46FE52C(unint64_t a1, __n128 a2)
{
  v8 = v2;
  v9 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = sub_1E470B50C();
  }

  else
  {
    v10 = *(a1 + 16);
  }

  if (!(*v2 >> 62))
  {
    v11 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v10);
    result = v11 + v10;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = sub_1E470B50C();
  v12 = __OFADD__(v18, v10);
  result = v18 + v10;
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1E47001EC(result, 1);
  v3 = *v2;
  v4 = *v2 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v4 + 0x10);
  v15 = (*(v4 + 0x18) >> 1) - v14;
  result = sub_1E46B8EE0(&v35, (v4 + 8 * v14 + 32), v15, v9);
  if (result < v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v16 = *(v4 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v4 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_11:
    result = sub_1E45E781C(v35);
    *v8 = v3;
    return result;
  }

LABEL_16:
  v5 = *(v4 + 16);
  v4 = v35;
  v6 = v36;
  v9 = v38;
  v32 = v37;
  v7 = v39;
  if (v35 < 0)
  {
LABEL_20:
    if (!sub_1E470B6AC())
    {
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
    sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
    result = swift_dynamicCast();
    v20 = v34;
    goto LABEL_31;
  }

  if (!v39)
  {
    v21 = (v37 + 64) >> 6;
    if (v21 <= (v38 + 1))
    {
      v22 = v38 + 1;
    }

    else
    {
      v22 = (v37 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v19 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_59;
      }

      if (v19 >= v21)
      {
        v20 = 0;
        v7 = 0;
        goto LABEL_30;
      }

      v7 = *(v36 + 8 * v19);
      ++v9;
      if (v7)
      {
        goto LABEL_29;
      }
    }
  }

  v19 = v38;
LABEL_29:
  v24 = __clz(__rbit64(v7));
  v7 &= v7 - 1;
  v20 = *(*(v35 + 56) + ((v19 << 9) | (8 * v24)));
  result = v20;
  v23 = v19;
LABEL_30:
  v38 = v23;
  v39 = v7;
  v9 = v23;
LABEL_31:
  if (!v20)
  {
    goto LABEL_11;
  }

  v25 = (v32 + 64) >> 6;
LABEL_33:
  if (v5 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1E470B0DC();
  }

  v3 = *v8;
  v26 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v31 = *v8 & 0xFFFFFFFFFFFFFF8;
  if (v5 > v26)
  {
    v26 = v5;
  }

  v33 = v26;
  while (1)
  {
    while (1)
    {
      if (v5 == v33)
      {
        v5 = v33;
        *(v31 + 16) = v33;
        goto LABEL_33;
      }

      *(v31 + 32 + 8 * v5++) = v20;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1E470B6AC())
      {
        swift_unknownObjectRelease();
        sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
        result = swift_dynamicCast();
        v20 = v34;
        if (v34)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v7)
    {
      break;
    }

    v27 = v9;
LABEL_54:
    v30 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v20 = *(*(v4 + 56) + ((v27 << 9) | (8 * v30)));
    result = v20;
    v29 = v27;
LABEL_39:
    v35 = v4;
    v36 = v6;
    v37 = v32;
    v38 = v29;
    v9 = v29;
    v39 = v7;
    if (!v20)
    {
LABEL_56:
      *(v31 + 16) = v5;
      goto LABEL_11;
    }
  }

  if (v25 <= (v9 + 1))
  {
    v28 = v9 + 1;
  }

  else
  {
    v28 = (v32 + 64) >> 6;
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v27 >= v25)
    {
      v20 = 0;
      v7 = 0;
      goto LABEL_39;
    }

    v7 = *(v6 + 8 * v27);
    ++v9;
    if (v7)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

unint64_t sub_1E46FE8C4(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_33;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_34:
    swift_beginAccess();

    sub_1E46FE43C(v38);
    return swift_endAccess();
  }

LABEL_3:
  if (v4 >= 1)
  {
    if ((v3 & 0xC000000000000001) == 0)
    {
      v21 = (v3 + 32);
      do
      {
        v23 = *v21;
        swift_beginAccess();
        v24 = *(v2 + 48);
        if ((v24 & 0xC000000000000001) != 0)
        {
          if (v24 < 0)
          {
            v25 = *(v2 + 48);
          }

          else
          {
            v25 = v24 & 0xFFFFFFFFFFFFFF8;
          }

          v26 = v23;
          if (sub_1E470B69C())
          {
            swift_unknownObjectRelease();

            v27 = sub_1E470B50C();
            v28 = sub_1E46C70E0(v25, v27);

            v29 = sub_1E46554E8(v26);
            v31 = v30;

            if ((v31 & 1) == 0)
            {
              goto LABEL_32;
            }

            v32 = *(*(v28 + 56) + 8 * v29);
            sub_1E4700060(v29, v28);

            *(v2 + 48) = v28;
          }
        }

        else
        {
          v33 = sub_1E46554E8(v23);
          if (v34)
          {
            v35 = v33;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v37 = *(v2 + 48);
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1E46583EC();
            }

            v22 = *(*(v37 + 56) + 8 * v35);
            sub_1E4700060(v35, v37);
            *(v2 + 48) = v37;
          }
        }

        swift_endAccess();

        ++v21;
        --v4;
      }

      while (v4);
      goto LABEL_34;
    }

    v5 = 0;
    while (1)
    {
      v7 = MEMORY[0x1E6916300](v5, v3);
      swift_beginAccess();
      v8 = *(v2 + 48);
      if ((v8 & 0xC000000000000001) != 0)
      {
        if (v8 < 0)
        {
          v9 = *(v2 + 48);
        }

        else
        {
          v9 = v8 & 0xFFFFFFFFFFFFFF8;
        }

        if (sub_1E470B69C())
        {
          swift_unknownObjectRelease();

          v10 = sub_1E470B50C();
          v11 = sub_1E46C70E0(v9, v10);

          v12 = sub_1E46554E8(v7);
          v14 = v13;

          if ((v14 & 1) == 0)
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            result = sub_1E470B50C();
            v4 = result;
            if (!result)
            {
              goto LABEL_34;
            }

            goto LABEL_3;
          }

          v15 = *(*(v11 + 56) + 8 * v12);
          sub_1E4700060(v12, v11);

          *(v2 + 48) = v11;
        }
      }

      else
      {
        v16 = sub_1E46554E8(v7);
        if (v17)
        {
          v18 = v16;
          v19 = swift_isUniquelyReferenced_nonNull_native();
          v20 = *(v2 + 48);
          if (!v19)
          {
            sub_1E46583EC();
          }

          v6 = *(*(v20 + 56) + 8 * v18);
          sub_1E4700060(v18, v20);
          *(v2 + 48) = v20;
        }
      }

      ++v5;
      swift_endAccess();
      swift_unknownObjectRelease();
      if (v4 == v5)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
  return result;
}