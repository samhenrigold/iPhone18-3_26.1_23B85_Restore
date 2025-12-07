uint64_t sub_1E46C9340(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1E4650534(&unk_1ECF75490, &unk_1E471FCF0);
  result = sub_1E470B58C();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1E470B41C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_1E46C9554(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1E470B50C();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1E46B7B44(v2, 0);

    v1 = sub_1E46B8CC4(&v5, v3 + 4, v2, v1);
    sub_1E45E781C(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1E46C9604(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E470B8FC();
  sub_1E470AFCC();
  v6 = sub_1E470B91C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1E470B84C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E46C8C24();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1E46C9A40(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1E46C9740(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1E470B53C();

    if (v6)
    {
      v7 = sub_1E46C98D8(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
  v10 = sub_1E470B41C();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1E470B42C();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E46C8D80();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1E46C9C04(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1E46C98D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1E470B50C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1E46C8490(v5, v4);
  v15 = v6;

  v7 = sub_1E470B41C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1E470B42C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_1E46C9C04(v9);
  result = sub_1E470B42C();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E46C9A40(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E470B4DC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1E470B8FC();

        sub_1E470AFCC();
        v10 = sub_1E470B91C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1E46C9C04(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E470B4DC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1E470B41C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1E46C9DA4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1E6916300](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1E470B50C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void (*sub_1E46C9ECC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E6916300](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1E46C9F4C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46C9F54(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v8 = type metadata accessor for BDSSyncEnginePipeline(0);
  v30 = v8;
  v31 = &off_1F5E66D30;
  *&v29 = a1;
  v9 = *a4;
  v11 = sub_1E4655498(a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      sub_1E4658A0C(v18);
      return sub_1E46585B4(&v29, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_1E46580E4();
    goto LABEL_7;
  }

  sub_1E46565AC(v14, a3 & 1);
  v20 = sub_1E4655498(a2);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    sub_1E45E2DE8(0, &qword_1ECF742B0, 0x1E696AEC0);
    result = sub_1E470B86C();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_1E4679A94(&v29, v8);
  v23 = MEMORY[0x1EEE9AC00](v22, v22);
  v25 = (&v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  sub_1E46CA148(v11, a2, *v25, v17);
  v27 = a2;
  return sub_1E4658A0C(&v29);
}

uint64_t sub_1E46CA148(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = type metadata accessor for BDSSyncEnginePipeline(0);
  v14 = &off_1F5E66D30;
  *&v12 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1E46585B4(&v12, a4[7] + 40 * a1);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t sub_1E46CA1E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E470A5DC();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E470A61C();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1E46D129C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66000;
  v14 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1E470A5FC();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v11, v7, v14);
  _Block_release(v14);
  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

uint64_t sub_1E46CA500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E4665FC8;

  return sub_1E46C514C(a1, v4, v5, v6);
}

uint64_t sub_1E46CA5B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E4665DD0;

  return sub_1E46C096C(a1, v4, v5, v6, v7, v8);
}

void sub_1E46CA67C(void *a1)
{
  v2 = a1;
  v3 = sub_1E470A0BC();
  v4 = sub_1E470B2CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_1E4654D04(0xD00000000000003CLL, 0x80000001E4719C60, &v12);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = a1;
    v8 = v2;
    _os_log_impl(&dword_1E45E0000, v3, v4, "BDSSyncEngine - %s. newUserRecordID - %@", v5, 0x16u);
    sub_1E465E050(v6, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v6, -1, -1);
    sub_1E4658A0C(v7);
    MEMORY[0x1E6917530](v7, -1, -1);
    MEMORY[0x1E6917530](v5, -1, -1);
  }

  v12 = a1;
  sub_1E470A10C();
  if (a1)
  {
    BDSSyncEngine.reestablishSalt()();
  }

  else
  {
    v9 = sub_1E470A0BC();
    v10 = sub_1E470B2CC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1E45E0000, v9, v10, "BDSSyncEngine - Skipping salt establishment since no valid account found", v11, 2u);
      MEMORY[0x1E6917530](v11, -1, -1);
    }
  }
}

uint64_t sub_1E46CA888(uint64_t a1)
{
  v24 = a1;
  v1 = sub_1E470A5DC();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v27 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E470A61C();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E470A53C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = sub_1E470A0BC();
  v13 = sub_1E470B2CC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1E4654D04(0xD00000000000001DLL, 0x80000001E4719D30, aBlock);
    _os_log_impl(&dword_1E45E0000, v12, v13, "BDSSyncEngine - %s", v14, 0xCu);
    sub_1E4658A0C(v15);
    MEMORY[0x1E6917530](v15, -1, -1);
    MEMORY[0x1E6917530](v14, -1, -1);
  }

  sub_1E4650534(&qword_1ECF75380, qword_1E47204E0);
  sub_1E45E2F14(&qword_1ECF754B8, &qword_1ECF75380, qword_1E47204E0, MEMORY[0x1E695BF80]);
  sub_1E470A12C();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v8);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v9 + 32))(v18 + v17, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_1E46D0EC8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E65DF8;
  v19 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  v20 = v27;
  v21 = v29;
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v7, v20, v19);
  _Block_release(v19);
  (*(v28 + 8))(v20, v21);
  (*(v25 + 8))(v7, v26);
}

void sub_1E46CAD8C(void *a1, uint64_t a2)
{
  v4 = sub_1E470B1FC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a2, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x1E695B708])
  {
    v11 = 0xE700000000000000;
    v12 = 0x646574656C6564;
  }

  else if (v10 == *MEMORY[0x1E695B700])
  {
    v11 = 0xE600000000000000;
    v12 = 0x646567727570;
  }

  else if (v10 == *MEMORY[0x1E695B6F8])
  {
    v12 = 0xD000000000000012;
    v11 = 0x80000001E4719D80;
  }

  else
  {
    (*(v5 + 8))(v9, v4);
    v11 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E75;
  }

  v13 = a1;

  v14 = sub_1E470A0BC();
  v15 = sub_1E470B2CC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = v18;
    *v16 = 136315650;
    *(v16 + 4) = sub_1E4654D04(0xD00000000000002ALL, 0x80000001E4719D50, &v22);
    *(v16 + 12) = 2114;
    *(v16 + 14) = v13;
    *v17 = v13;
    *(v16 + 22) = 2082;
    v19 = v13;
    v20 = sub_1E4654D04(v12, v11, &v22);

    *(v16 + 24) = v20;
    _os_log_impl(&dword_1E45E0000, v14, v15, "BDSSyncEngine - %s: %{public}@, reason=%{public}s", v16, 0x20u);
    sub_1E465E050(v17, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v18, -1, -1);
    MEMORY[0x1E6917530](v16, -1, -1);
  }

  else
  {
  }
}

void sub_1E46CB0B4(uint64_t a1)
{
  v3 = sub_1E470B1FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E470B22C();
  MEMORY[0x1EEE9AC00](v8, v9);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v11);
  v17 = &v62 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v70 = *(v19 + 56);
    v71 = v20;
    v65 = v3;
    v66 = v12;
    v63 = v14;
    v64 = (v4 + 8);
    v68 = v19;
    v69 = (v19 - 8);
    v22 = v21;
    v67 = v1;
    v23 = v18;
    v24 = v7;
    v25 = v12;
    do
    {
      v26 = v71(v17, v22, v25, v15);
      v27 = MEMORY[0x1E6915F30](v26);
      sub_1E470B20C();
      sub_1E46CAD8C(v27, v24);

      (*v64)(v24, v65);
      v28 = *v69;
      (*v69)(v17, v25);
      v22 += v70;
      --v23;
    }

    while (v23);
    v29 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
    v30 = v67;
    [*(v67 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock) lock];
    v31 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
    swift_beginAccess();
    v32 = *(v30 + v31);
    v33 = *(v30 + v29);

    [v33 unlock];
    v72 = MEMORY[0x1E69E7CC0];
    sub_1E470B63C();
    v34 = v66;
    v35 = v63;
    do
    {
      v36 = (v71)(v35, v21, v34);
      MEMORY[0x1E6915F30](v36);
      v28(v35, v34);
      sub_1E470B61C();
      sub_1E470B64C();
      sub_1E470B65C();
      sub_1E470B62C();
      v21 += v70;
      --v18;
    }

    while (v18);
    v37 = v72;
    v72 = MEMORY[0x1E69E7CC0];
    if (v37 < 0 || (v37 & 0x4000000000000000) != 0)
    {
      goto LABEL_33;
    }

    for (i = *(v37 + 16); i; i = sub_1E470B50C())
    {
      v39 = 0;
      v68 = i;
      v69 = (v37 + 32);
      v70 = v32 & 0xC000000000000001;
      v71 = (v37 & 0xC000000000000001);
      v40 = v32 & 0xFFFFFFFFFFFFFF8;
      if (v32 < 0)
      {
        v40 = v32;
      }

      v66 = v40;
      v41 = v32 + 56;
      while (1)
      {
        if (v71)
        {
          v42 = MEMORY[0x1E6916300](v39, v37);
        }

        else
        {
          if (v39 >= *(v37 + 16))
          {
            goto LABEL_32;
          }

          v42 = v69[v39];
        }

        v43 = v42;
        if (__OFADD__(v39++, 1))
        {
          break;
        }

        if (v70)
        {
          v45 = v42;
          v46 = sub_1E470B53C();

          if ((v46 & 1) == 0)
          {

            goto LABEL_13;
          }

LABEL_12:
          sub_1E470B61C();
          sub_1E470B64C();
          sub_1E470B65C();
          sub_1E470B62C();
LABEL_13:
          i = v68;
          if (v39 == v68)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (*(v32 + 16))
          {
            sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
            v47 = sub_1E470B41C();
            v48 = -1 << *(v32 + 32);
            v49 = v47 & ~v48;
            if (((*(v41 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
            {
LABEL_26:

              goto LABEL_13;
            }

            v50 = ~v48;
            while (1)
            {
              v51 = *(*(v32 + 48) + 8 * v49);
              v52 = sub_1E470B42C();

              if (v52)
              {
                goto LABEL_12;
              }

              v49 = (v49 + 1) & v50;
              if (((*(v41 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          if (v39 == i)
          {
LABEL_30:
            v53 = v72;
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

    v53 = MEMORY[0x1E69E7CC0];
LABEL_35:

    v54 = sub_1E470A0BC();
    v55 = sub_1E470B2CC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72 = v57;
      *v56 = 136446210;
      v58 = sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
      v59 = MEMORY[0x1E6915DE0](v53, v58);
      v61 = sub_1E4654D04(v59, v60, &v72);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_1E45E0000, v54, v55, "BDSSyncEngine - handleZoneMissingOrDeleted: %{public}s", v56, 0xCu);
      sub_1E4658A0C(v57);
      MEMORY[0x1E6917530](v57, -1, -1);
      MEMORY[0x1E6917530](v56, -1, -1);
    }

    sub_1E46C3D48(v53, 1);
  }
}

uint64_t sub_1E46CB6CC(void *a1)
{
  v2 = sub_1E470A5DC();
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E470A61C();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  v11 = sub_1E470A0BC();
  v12 = sub_1E470B2CC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_1E45E0000, v11, v12, "BDSSyncEngine - didSave recordZone: %{public}@", v13, 0xCu);
    sub_1E465E050(v14, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v14, -1, -1);
    MEMORY[0x1E6917530](v13, -1, -1);
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v10;
  aBlock[4] = sub_1E46D1034;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E65E98;
  v18 = _Block_copy(aBlock);
  v19 = v10;

  sub_1E470A5FC();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v9, v5, v18);
  _Block_release(v18);
  (*(v23 + 8))(v5, v2);
  (*(v21 + 8))(v9, v22);
}

void sub_1E46CBAA8(void *a1)
{
  v1 = a1;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2CC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = [v1 recordID];
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEngine - didSave recordID: %@", v4, 0xCu);
    sub_1E465E050(v5, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v5, -1, -1);
    MEMORY[0x1E6917530](v4, -1, -1);
  }

  v7 = sub_1E470B3DC();
  v9 = v8;
  v10 = sub_1E470AF0C();
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_1E4650534(&unk_1ECF75468, &qword_1E471EA78);
  sub_1E470B37C();

  if (v18)
  {

    sub_1E46585B4(&v17, v19);
    sub_1E465057C(v19, v19[3]);
    sub_1E46FA2FC(v1);
    sub_1E4658A0C(v19);
  }

  else
  {
    sub_1E465E050(&v17, &unk_1ECF75468, &qword_1E471EA78);

    v12 = sub_1E470A0BC();
    v13 = sub_1E470B2AC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_1E4654D04(0xD000000000000016, 0x80000001E4719E80, v19);
      *(v14 + 12) = 2082;
      v16 = sub_1E4654D04(v7, v9, v19);

      *(v14 + 14) = v16;
      _os_log_impl(&dword_1E45E0000, v12, v13, "BDSSyncEngine - %s: missing pipeline for %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v15, -1, -1);
      MEMORY[0x1E6917530](v14, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1E46CBDD8(void *a1, void *a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;
  v6 = a1;
  v7 = a2;
  v8 = sub_1E470A0BC();
  v9 = sub_1E470B2CC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v6;
    *v11 = v6;
    *(v10 + 12) = 2112;
    v12 = v6;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_1E45E0000, v8, v9, "BDSSyncEngine - failedToSaveRecordWith recordID: %@, error: %@", v10, 0x16u);
    sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v11, -1, -1);
    MEMORY[0x1E6917530](v10, -1, -1);
  }

  v15 = [v6 recordName];
  v16 = sub_1E470AF1C();
  v18 = v17;

  v43[0] = 46;
  v43[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v19, v20);
  v38 = v43;
  v21 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E46D12E0, &v37, v16, v18, &v40);
  if (v21[2])
  {
    v40 = v5;
    v22 = v21[4];
    v23 = v21[5];
    v24 = v21[6];
    v25 = v21[7];

    v26 = MEMORY[0x1E6915CC0](v22, v23, v24, v25);
    v28 = v27;

    v29 = sub_1E470AF0C();
    MEMORY[0x1EEE9AC00](v29, v30);
    v38 = v3;
    v39 = v31;
    sub_1E4650534(&unk_1ECF75468, &qword_1E471EA78);
    sub_1E470B37C();

    if (v42)
    {

      sub_1E46585B4(&v41, v43);
      sub_1E465057C(v43, v43[3]);
      sub_1E46FA96C(v6, a2);
      sub_1E4658A0C(v43);
    }

    else
    {
      sub_1E465E050(&v41, &unk_1ECF75468, &qword_1E471EA78);

      v32 = sub_1E470A0BC();
      v33 = sub_1E470B2AC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v43[0] = v35;
        *v34 = 136315394;
        *(v34 + 4) = sub_1E4654D04(0xD00000000000002BLL, 0x80000001E4719E50, v43);
        *(v34 + 12) = 2082;
        v36 = sub_1E4654D04(v26, v28, v43);

        *(v34 + 14) = v36;
        _os_log_impl(&dword_1E45E0000, v32, v33, "BDSSyncEngine - %s: missing pipeline for %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v35, -1, -1);
        MEMORY[0x1E6917530](v34, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E46CC214(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1E470A0BC();
  v5 = sub_1E470B2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1E45E0000, v4, v5, "BDSSyncEngine - didDeleteRecordWith recordID: %@", v6, 0xCu);
    sub_1E465E050(v7, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v7, -1, -1);
    MEMORY[0x1E6917530](v6, -1, -1);
  }

  v9 = [v3 recordName];
  v10 = sub_1E470AF1C();
  v12 = v11;

  v37[0] = 46;
  v37[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v13, v14);
  v32 = v37;
  v15 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E46D12E0, &v31, v10, v12, &v34);
  if (v15[2])
  {
    v16 = v15[4];
    v17 = v15[5];
    v18 = v15[6];
    v19 = v15[7];

    v20 = MEMORY[0x1E6915CC0](v16, v17, v18, v19);
    v22 = v21;

    v23 = sub_1E470AF0C();
    MEMORY[0x1EEE9AC00](v23, v24);
    v32 = v2;
    v33 = v25;
    sub_1E4650534(&unk_1ECF75468, &qword_1E471EA78);
    sub_1E470B37C();

    if (v36)
    {

      sub_1E46585B4(&v35, v37);
      sub_1E465057C(v37, v37[3]);
      sub_1E46FAD90(v3);
      sub_1E4658A0C(v37);
    }

    else
    {
      sub_1E465E050(&v35, &unk_1ECF75468, &qword_1E471EA78);

      v26 = sub_1E470A0BC();
      v27 = sub_1E470B2AC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v37[0] = v29;
        *v28 = 136315394;
        *(v28 + 4) = sub_1E4654D04(0xD000000000000022, 0x80000001E4719E20, v37);
        *(v28 + 12) = 2082;
        v30 = sub_1E4654D04(v20, v22, v37);

        *(v28 + 14) = v30;
        _os_log_impl(&dword_1E45E0000, v26, v27, "BDSSyncEngine - %s: missing pipeline for %{public}s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v29, -1, -1);
        MEMORY[0x1E6917530](v28, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E46CC604(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;

  v30 = v1;
  v4 = sub_1E470A0BC();
  v5 = sub_1E470B2CC();

  v28[0] = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34[0] = v7;
    *v6 = 136446210;
    v8 = sub_1E470B16C();
    v10 = sub_1E4654D04(v8, v9, v34);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E45E0000, v4, v5, "BDSSyncEngine - didCompleteModifyRecordsBatch recordTypes: %{public}s", v6, 0xCu);
    sub_1E4658A0C(v7);
    MEMORY[0x1E6917530](v7, -1, -1);
    MEMORY[0x1E6917530](v6, -1, -1);
  }

  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v28[1] = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue;
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v29 = a1;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_10:
      v18 = (*(a1 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v14)))));
      v19 = *v18;
      v20 = v18[1];

      v21 = sub_1E470AF0C();
      v31 = v28;
      MEMORY[0x1EEE9AC00](v21, v22);
      sub_1E4650534(&unk_1ECF75468, &qword_1E471EA78);
      sub_1E470B37C();

      if (!v33)
      {
        break;
      }

      v14 &= v14 - 1;

      sub_1E46585B4(&v32, v34);
      sub_1E465057C(v34, v34[3]);
      sub_1E46FCC1C();
      sub_1E4658A0C(v34);
      v16 = v17;
      a1 = v29;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

    sub_1E465E050(&v32, &unk_1ECF75468, &qword_1E471EA78);

    v23 = sub_1E470A0BC();
    v24 = sub_1E470B2AC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_1E4654D04(0xD00000000000002CLL, 0x80000001E4719DC0, v34);
      *(v25 + 12) = 2082;
      v27 = sub_1E4654D04(v19, v20, v34);

      *(v25 + 14) = v27;
      _os_log_impl(&dword_1E45E0000, v23, v24, "BDSSyncEngine - %s: missing pipeline for %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v26, -1, -1);
      MEMORY[0x1E6917530](v25, -1, -1);
    }

    else
    {
    }

LABEL_13:
  }

  else
  {
LABEL_7:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        goto LABEL_13;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1E46CCA0C(void *a1, void *a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;
  v6 = a1;
  v7 = a2;
  v8 = sub_1E470A0BC();
  v9 = sub_1E470B2CC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v6;
    *v11 = v6;
    *(v10 + 12) = 2112;
    v12 = v6;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_1E45E0000, v8, v9, "BDSSyncEngine - failedToDeleteRecordWith recordID: %@, error: %@", v10, 0x16u);
    sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v11, -1, -1);
    MEMORY[0x1E6917530](v10, -1, -1);
  }

  v15 = [v6 recordName];
  v16 = sub_1E470AF1C();
  v18 = v17;

  v43[0] = 46;
  v43[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v19, v20);
  v38 = v43;
  v21 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E46D12E0, &v37, v16, v18, &v40);
  if (v21[2])
  {
    v40 = v5;
    v22 = v21[4];
    v23 = v21[5];
    v24 = v21[6];
    v25 = v21[7];

    v26 = MEMORY[0x1E6915CC0](v22, v23, v24, v25);
    v28 = v27;

    v29 = sub_1E470AF0C();
    MEMORY[0x1EEE9AC00](v29, v30);
    v38 = v3;
    v39 = v31;
    sub_1E4650534(&unk_1ECF75468, &qword_1E471EA78);
    sub_1E470B37C();

    if (v42)
    {

      sub_1E46585B4(&v41, v43);
      sub_1E465057C(v43, v43[3]);
      sub_1E46FB1F0(v6, a2);
      sub_1E4658A0C(v43);
    }

    else
    {
      sub_1E465E050(&v41, &unk_1ECF75468, &qword_1E471EA78);

      v32 = sub_1E470A0BC();
      v33 = sub_1E470B2AC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v43[0] = v35;
        *v34 = 136315394;
        *(v34 + 4) = sub_1E4654D04(0xD00000000000002DLL, 0x80000001E4719DF0, v43);
        *(v34 + 12) = 2082;
        v36 = sub_1E4654D04(v26, v28, v43);

        *(v34 + 14) = v36;
        _os_log_impl(&dword_1E45E0000, v32, v33, "BDSSyncEngine - %s: missing pipeline for %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v35, -1, -1);
        MEMORY[0x1E6917530](v34, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E46CCE48(void *a1, id a2)
{
  v3 = v2;
  v6 = a2;
  v7 = sub_1E470A0BC();
  v8 = sub_1E470B2AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32[0] = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_1E4654D04(0xD00000000000002CLL, 0x80000001E4719C30, v32);
    *(v9 + 12) = 2112;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1E45E0000, v7, v8, "BDSSyncEngine - %s. Error - %@", v9, 0x16u);
    sub_1E465E050(v10, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v10, -1, -1);
    sub_1E4658A0C(v11);
    MEMORY[0x1E6917530](v11, -1, -1);
    MEMORY[0x1E6917530](v9, -1, -1);
  }

  v14 = sub_1E4709AFC();
  v15 = [v14 domain];

  v16 = sub_1E470AF1C();
  v18 = v17;

  if (v16 == sub_1E470AF1C() && v18 == v19)
  {
  }

  else
  {
    v21 = sub_1E470B84C();

    if ((v21 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v22 = a2;
  v23 = sub_1E470A0BC();
  v24 = sub_1E470B2BC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = a2;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_1E45E0000, v23, v24, "BDSSyncEngineDataSource. Receieved error with NSCocoaErrorDomain - %@", v25, 0xCu);
    sub_1E465E050(v26, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v26, -1, -1);
    MEMORY[0x1E6917530](v25, -1, -1);
  }

LABEL_13:
  type metadata accessor for Code(0);
  v32[0] = 21;
  sub_1E46D01D4(&qword_1ECF743E8, type metadata accessor for Code, &unk_1E471B418);
  if (sub_1E4709A7C() & 1) != 0 || (v32[0] = 26, (sub_1E4709A7C()) || (v32[0] = 28, result = sub_1E4709A7C(), (result))
  {
    v30 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_invalidTokenZoneIDs;
    swift_beginAccess();
    v31 = a1;
    MEMORY[0x1E6915DB0]();
    if (*((*(v3 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E470B0DC();
    }

    sub_1E470B0FC();
    return swift_endAccess();
  }

  return result;
}

void sub_1E46CD268(void *a1)
{
  v1 = a1;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2CC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1E4654D04(0xD000000000000027, 0x80000001E4719EA0, &v9);
    *(v4 + 12) = 2114;
    *(v4 + 14) = v1;
    *v5 = v1;
    v7 = v1;
    _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEngine - %s: zoneID: %{public}@", v4, 0x16u);
    sub_1E465E050(v5, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v5, -1, -1);
    sub_1E4658A0C(v6);
    MEMORY[0x1E6917530](v6, -1, -1);
    MEMORY[0x1E6917530](v4, -1, -1);
  }

  v9 = v1;
  v8 = v1;
  sub_1E470A10C();
}

uint64_t sub_1E46CD3F4()
{
  v1 = v0;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2CC();

  v4 = &unk_1EE2AE000;
  if (os_log_type_enabled(v2, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_1E4654D04(0xD000000000000023, 0x80000001E4719ED0, v26);
    *(v5 + 12) = 2082;
    swift_beginAccess();
    v7 = sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);

    v9 = MEMORY[0x1E6915DE0](v8, v7);
    v11 = v10;

    v12 = sub_1E4654D04(v9, v11, v26);

    *(v5 + 14) = v12;
    v4 = &unk_1EE2AE000;
    _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEngine - %s: invalidTokenZoneIDs: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v6, -1, -1);
    MEMORY[0x1E6917530](v5, -1, -1);
  }

  v13 = v4[131];
  swift_beginAccess();
  v14 = *&v1[v13];
  if (v14 >> 62)
  {
    if (!sub_1E470B50C())
    {
      goto LABEL_8;
    }
  }

  else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  v15 = *&v1[v13];

  v16 = sub_1E470A0BC();
  v17 = sub_1E470B2CC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136446210;
    v20 = sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
    v21 = MEMORY[0x1E6915DE0](v15, v20);
    v23 = sub_1E4654D04(v21, v22, &v25);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1E45E0000, v16, v17, "BDSSyncEngine - handleZoneDidReset: %{public}s", v18, 0xCu);
    sub_1E4658A0C(v19);
    MEMORY[0x1E6917530](v19, -1, -1);
    MEMORY[0x1E6917530](v18, -1, -1);
  }

  sub_1E46BE47C();
  BDSSyncEngine.reestablishSalt()();

  *&v1[v13] = MEMORY[0x1E69E7CC0];

LABEL_8:
  v25 = 0;
  return sub_1E470A10C();
}

uint64_t sub_1E46CD72C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_1E470A37C();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_1E470A38C();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = sub_1E470A4FC();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v6 = sub_1E470A51C();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v7 = sub_1E470A41C();
  v2[27] = v7;
  v2[28] = *(v7 - 8);
  v2[29] = swift_task_alloc();
  v8 = sub_1E470A46C();
  v2[30] = v8;
  v2[31] = *(v8 - 8);
  v2[32] = swift_task_alloc();
  v9 = sub_1E470A3EC();
  v2[33] = v9;
  v2[34] = *(v9 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v10 = sub_1E470B27C();
  v2[37] = v10;
  v2[38] = *(v10 - 8);
  v2[39] = swift_task_alloc();
  v11 = sub_1E470B24C();
  v2[40] = v11;
  v2[41] = *(v11 - 8);
  v2[42] = swift_task_alloc();
  v12 = sub_1E470A4CC();
  v2[43] = v12;
  v2[44] = *(v12 - 8);
  v2[45] = swift_task_alloc();
  v13 = sub_1E470B1EC();
  v2[46] = v13;
  v2[47] = *(v13 - 8);
  v2[48] = swift_task_alloc();
  v14 = sub_1E470A49C();
  v2[49] = v14;
  v2[50] = *(v14 - 8);
  v2[51] = swift_task_alloc();
  v15 = sub_1E470A53C();
  v2[52] = v15;
  v2[53] = *(v15 - 8);
  v2[54] = swift_task_alloc();
  v16 = sub_1E470A33C();
  v2[55] = v16;
  v2[56] = *(v16 - 8);
  v2[57] = swift_task_alloc();
  v17 = sub_1E470A34C();
  v2[58] = v17;
  v2[59] = *(v17 - 8);
  v2[60] = swift_task_alloc();
  v18 = sub_1E470A36C();
  v2[61] = v18;
  v2[62] = *(v18 - 8);
  v2[63] = swift_task_alloc();
  v19 = sub_1E470A52C();
  v2[64] = v19;
  v2[65] = *(v19 - 8);
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46CDDE8, 0, 0);
}

unint64_t sub_1E46CDDE8()
{
  v397 = v0;
  v2 = v0;
  v3 = v0[67];
  v4 = v0[65];
  v5 = v0[64];
  v6 = *(v4 + 16);
  v6(v3, v2[10], v5);
  v7 = (*(v4 + 88))(v3, v5);
  v394 = v2;
  if (v7 == *MEMORY[0x1E695B608])
  {
    v8 = v2[67];
    v9 = v2[65];
    v10 = v2[64];
    v11 = v2[57];
    v12 = v2[56];
    v13 = v394[55];
    v14 = v394[54];
    v15 = v394[53];
    v16 = v394[52];
    (*(v9 + 96))(v8, v10);
    (*(v12 + 32))(v11, v8, v13);
    sub_1E470A32C();
    sub_1E46CA888(v14);
    (*(v15 + 8))(v14, v16);
    goto LABEL_3;
  }

  if (v7 == *MEMORY[0x1E695B630])
  {
    v19 = v2[67];
    v20 = v2[65];
    v22 = v2[63];
    v21 = v2[64];
    v23 = v2[61];
    v24 = v2[62];
    v25 = v2;
    v28 = v2 + 59;
    v27 = v2[59];
    v26 = v28[1];
    v29 = v25[58];
    (*(v20 + 96))(v19, v21);
    (*(v24 + 32))(v22, v19, v23);
    sub_1E470A35C();
    v30 = (*(v27 + 88))(v26, v29);
    if (v30 == *MEMORY[0x1E695B620])
    {
      v32 = v25[62];
      v31 = v25[63];
      v34 = v25[60];
      v33 = v25[61];
      (*(v25[59] + 96))(v34, v25[58]);
      v35 = *v34;
      v36 = v35;
      sub_1E46CA67C(v35);

      (*(v32 + 8))(v31, v33);
      v2 = v25;
      goto LABEL_5;
    }

    if (v30 == *MEMORY[0x1E695B628])
    {
      v2 = v394;
      v65 = v394[62];
      v64 = v394[63];
      v67 = v394[60];
      v66 = v394[61];
      (*(v394[59] + 96))(v67, v394[58]);
      v68 = *v67;
      sub_1E46CA67C(0);

      (*(v65 + 8))(v64, v66);
      goto LABEL_5;
    }

    if (v30 != *MEMORY[0x1E695B618])
    {
      v117 = sub_1E470A0BC();
      v118 = sub_1E470B2AC();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        _os_log_impl(&dword_1E45E0000, v117, v118, "BDSSyncEngine - handleEvent(.accountChange): unknown changeType", v119, 2u);
        MEMORY[0x1E6917530](v119, -1, -1);
      }

      v121 = v394[62];
      v120 = v394[63];
      v123 = v394[60];
      v122 = v394[61];
      v124 = v394[59];
      v125 = v394[58];

      (*(v121 + 8))(v120, v122);
      (*(v124 + 8))(v123, v125);
      goto LABEL_4;
    }

    v11 = v394[63];
    v12 = v394[62];
    v13 = v394[61];
    v94 = v394[60];
    (*(v394[59] + 96))(v94, v394[58]);
    v95 = *v94;
    v96 = *(v94 + 8);
    v97 = v95;
    v98 = v96;
    sub_1E46CA67C(v96);

LABEL_3:
    (*(v12 + 8))(v11, v13);
LABEL_4:
    v2 = v394;
    goto LABEL_5;
  }

  if (v7 == *MEMORY[0x1E695B698])
  {
    v37 = v2[67];
    v38 = v2[50];
    v39 = v2[51];
    v40 = v2[49];
    (*(v2[65] + 96))(v37, v2[64]);
    v41 = (*(v38 + 32))(v39, v37, v40);
    v42 = MEMORY[0x1E6915190](v41);
    v43 = *(v42 + 16);
    if (v43)
    {
      v44 = v2[47];
      v45 = v2[11];
      v47 = *(v44 + 16);
      v44 += 16;
      v46 = v47;
      v48 = v42 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
      v49 = *(v44 + 56);
      v388 = (v44 - 8);
      v376 = v49;
      do
      {
        v50 = v394[48];
        v51 = v394[46];
        v52 = v46(v50, v48, v51);
        v53 = MEMORY[0x1E6915EF0](v52);
        (*v388)(v50, v51);
        v54 = v53;
        v55 = sub_1E470A0BC();
        v56 = sub_1E470B2CC();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = v46;
          v59 = v45;
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v396 = v61;
          *v57 = 136315394;
          *(v57 + 4) = sub_1E4654D04(0xD000000000000020, 0x80000001E4719D00, &v396);
          *(v57 + 12) = 2114;
          *(v57 + 14) = v54;
          *v60 = v54;
          v54 = v54;
          _os_log_impl(&dword_1E45E0000, v55, v56, "BDSSyncEngine - %s: %{public}@", v57, 0x16u);
          sub_1E465E050(v60, &qword_1ECF75100, qword_1E471E820);
          v62 = v60;
          v45 = v59;
          v46 = v58;
          MEMORY[0x1E6917530](v62, -1, -1);
          sub_1E4658A0C(v61);
          MEMORY[0x1E6917530](v61, -1, -1);
          v63 = v57;
          v49 = v376;
          MEMORY[0x1E6917530](v63, -1, -1);
        }

        v48 += v49;
        --v43;
      }

      while (v43);

      v2 = v394;
    }

    else
    {
    }

    v113 = v2[50];
    v112 = v2[51];
    v114 = v2[49];
    v115 = MEMORY[0x1E69151A0](v93);
    sub_1E46CB0B4(v115);

LABEL_41:
    (*(v113 + 8))(v112, v114);
    goto LABEL_5;
  }

  if (v7 == *MEMORY[0x1E695B6A0])
  {
    v69 = v2[67];
    v70 = v2[44];
    v71 = v2[45];
    v72 = v2[43];
    (*(v2[65] + 96))(v69, v2[64]);
    v73 = (*(v70 + 32))(v71, v69, v72);
    v74 = MEMORY[0x1E69151C0](v73);
    v75 = *(v74 + 16);
    v76 = "bookReadParams";
    if (v75)
    {
      v77 = v2[41];
      v79 = *(v77 + 16);
      v78 = v77 + 16;
      v80 = v74 + ((*(v78 + 64) + 32) & ~*(v78 + 64));
      v385 = v79;
      v374 = *(v78 + 56);
      do
      {
        v81 = v2[42];
        v82 = v2[40];
        v83 = v385(v81, v80, v82);
        v84 = MEMORY[0x1E6915F50](v83);
        (*(v78 - 8))(v81, v82);
        v85 = v84;
        v86 = sub_1E470A0BC();
        v87 = sub_1E470B2CC();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v396 = v90;
          *v88 = 136315394;
          *(v88 + 4) = sub_1E4654D04(0xD000000000000017, 0x80000001E4719CE0, &v396);
          *(v88 + 12) = 2112;
          v91 = [v85 recordID];
          *(v88 + 14) = v91;
          *v89 = v91;
          _os_log_impl(&dword_1E45E0000, v86, v87, "BDSSyncEngine - %s: %@", v88, 0x16u);
          sub_1E465E050(v89, &qword_1ECF75100, qword_1E471E820);
          MEMORY[0x1E6917530](v89, -1, -1);
          sub_1E4658A0C(v90);
          v92 = v90;
          v2 = v394;
          MEMORY[0x1E6917530](v92, -1, -1);
          MEMORY[0x1E6917530](v88, -1, -1);
        }

        v2[8] = v85;
        sub_1E470A10C();

        v80 += v374;
        --v75;
      }

      while (v75);

      v76 = "bookReadParams";
    }

    else
    {
    }

    v138 = MEMORY[0x1E69151D0](v116);
    v139 = *(v138 + 16);
    if (v139)
    {
      v140 = v2[38];
      v142 = *(v140 + 16);
      v140 += 16;
      v141 = v142;
      v143 = v138 + ((*(v140 + 64) + 32) & ~*(v140 + 64));
      v380 = *(v140 + 56);
      v377 = (v140 - 8);
      v370 = *(v76 + 484);
      do
      {
        v144 = v2[39];
        v145 = v2[37];
        v146 = v141(v144, v143, v145);
        v147 = MEMORY[0x1E6915F80](v146);
        sub_1E470B25C();
        (*v377)(v144, v145);
        v148 = v147;
        v149 = sub_1E470A0BC();
        v150 = sub_1E470B2CC();

        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v153 = v141;
          v154 = swift_slowAlloc();
          v396 = v154;
          *v151 = v370;
          *(v151 + 4) = sub_1E4654D04(0xD000000000000030, 0x80000001E4719CA0, &v396);
          *(v151 + 12) = 2112;
          *(v151 + 14) = v148;
          *v152 = v148;
          v155 = v148;
          _os_log_impl(&dword_1E45E0000, v149, v150, "BDSSyncEngine - %s: %@", v151, 0x16u);
          sub_1E465E050(v152, &qword_1ECF75100, qword_1E471E820);
          v156 = v152;
          v2 = v394;
          MEMORY[0x1E6917530](v156, -1, -1);
          sub_1E4658A0C(v154);
          v157 = v154;
          v141 = v153;
          MEMORY[0x1E6917530](v157, -1, -1);
          MEMORY[0x1E6917530](v151, -1, -1);
        }

        v2[9] = v148;
        sub_1E470A10C();

        v143 += v380;
        --v139;
      }

      while (v139);
    }

    (*(v2[44] + 8))(v2[45], v2[43]);
    goto LABEL_5;
  }

  if (v7 == *MEMORY[0x1E695B688])
  {
    v99 = v2[67];
    v100 = v2[36];
    v101 = v2[33];
    v102 = v2[34];
    (*(v2[65] + 96))(v99, v2[64]);
    v103 = (*(v102 + 32))(v100, v99, v101);
    v104 = MEMORY[0x1E69150B0](v103);
    if (v104 >> 62)
    {
      v236 = sub_1E470B50C();

      if (!v236)
      {
LABEL_93:
        v237 = *(MEMORY[0x1E69150E0](v106) + 16);

        if (v237)
        {
          (*(v2[34] + 16))(v2[35], v2[36], v2[33]);
          v239 = sub_1E470A0BC();
          v240 = sub_1E470B2AC();
          v241 = os_log_type_enabled(v239, v240);
          v243 = v2[34];
          v242 = v2[35];
          v244 = v2[33];
          if (v241)
          {
            v245 = swift_slowAlloc();
            v246 = swift_slowAlloc();
            v396 = v246;
            *v245 = 136446210;
            v247 = MEMORY[0x1E69150E0]();
            v248 = sub_1E470A3AC();
            v249 = MEMORY[0x1E6915DE0](v247, v248);
            v251 = v250;

            (*(v243 + 8))(v242, v244);
            v252 = sub_1E4654D04(v249, v251, &v396);

            *(v245 + 4) = v252;
            _os_log_impl(&dword_1E45E0000, v239, v240, "BDSSyncEngine - failedZoneSaves: %{public}s", v245, 0xCu);
            sub_1E4658A0C(v246);
            MEMORY[0x1E6917530](v246, -1, -1);
            MEMORY[0x1E6917530](v245, -1, -1);
          }

          else
          {

            v238 = (*(v243 + 8))(v242, v244);
          }

          v2 = v394;
        }

        v253 = MEMORY[0x1E69150D0](v238);
        if (v253 >> 62)
        {
          v274 = sub_1E470B50C();

          if (!v274)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v254 = *((v253 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v254)
          {
LABEL_114:
            v275 = *(sub_1E470A3DC() + 16);

            if (v275)
            {
              v276 = sub_1E470A3DC();
              v277 = 0;
              v278 = v276 + 64;
              v391 = v276;
              v279 = -1;
              v280 = -1 << *(v276 + 32);
              if (-v280 < 64)
              {
                v279 = ~(-1 << -v280);
              }

              v131 = v279 & *(v276 + 64);
              v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;
              v281 = (63 - v280) >> 6;
              v381 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;
LABEL_119:
              if (v131)
              {
                goto LABEL_124;
              }

              while (1)
              {
                v282 = v277 + 1;
                if (__OFADD__(v277, 1))
                {
                  break;
                }

                if (v282 >= v281)
                {
                  v2 = v394;
                  (*(v394[34] + 8))(v394[36], v394[33]);

                  goto LABEL_5;
                }

                v131 = *(v278 + 8 * v282);
                ++v277;
                if (v131)
                {
                  v277 = v282;
LABEL_124:
                  v283 = (v277 << 9) | (8 * __clz(__rbit64(v131)));
                  v284 = *(*(v391 + 56) + v283);
                  v285 = *(*(v391 + 48) + v283);
                  v286 = v284;
                  v287 = v285;
                  v288 = v286;
                  v289 = sub_1E470A0BC();
                  v290 = sub_1E470B2CC();

                  if (os_log_type_enabled(v289, v290))
                  {
                    v291 = swift_slowAlloc();
                    v292 = swift_slowAlloc();
                    *v291 = 138543618;
                    *(v291 + 4) = v287;
                    *v292 = v287;
                    *(v291 + 12) = 2114;
                    v293 = v287;
                    v294 = v288;
                    v295 = _swift_stdlib_bridgeErrorToNSError();
                    *(v291 + 14) = v295;
                    v292[1] = v295;
                    _os_log_impl(&dword_1E45E0000, v289, v290, "BDSSyncEngine - failedToDeleteRecordZoneWith recordZoneID: %{public}@, error: %{public}@", v291, 0x16u);
                    sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
                    swift_arrayDestroy();
                    MEMORY[0x1E6917530](v292, -1, -1);
                    v296 = v291;
                    v1 = v381;
                    MEMORY[0x1E6917530](v296, -1, -1);
                  }

                  v131 &= v131 - 1;

                  goto LABEL_119;
                }
              }

              __break(1u);
              goto LABEL_129;
            }

            (*(v2[34] + 8))(v2[36], v2[33]);
LABEL_5:

            v17 = v2[1];

            return v17();
          }
        }

        result = MEMORY[0x1E69150D0](v255);
        v256 = result;
        if (result >> 62)
        {
          result = sub_1E470B50C();
          v257 = result;
          if (result)
          {
LABEL_102:
            if (v257 >= 1)
            {
              v258 = 0;
              v259 = v2[11];
              v260 = v256 & 0xC000000000000001;
              do
              {
                if (v260)
                {
                  v261 = MEMORY[0x1E6916300](v258, v256);
                }

                else
                {
                  v261 = *(v256 + 8 * v258 + 32);
                }

                v262 = v261;
                v263 = sub_1E470A0BC();
                v264 = sub_1E470B2CC();

                if (os_log_type_enabled(v263, v264))
                {
                  v265 = v260;
                  v266 = v259;
                  v267 = v257;
                  v268 = v256;
                  v269 = swift_slowAlloc();
                  v270 = swift_slowAlloc();
                  *v269 = 138543362;
                  *(v269 + 4) = v262;
                  *v270 = v262;
                  v271 = v262;
                  _os_log_impl(&dword_1E45E0000, v263, v264, "BDSSyncEngine - didDeleteRecordZoneWith recordZoneID: %{public}@", v269, 0xCu);
                  sub_1E465E050(v270, &qword_1ECF75100, qword_1E471E820);
                  v272 = v270;
                  v2 = v394;
                  MEMORY[0x1E6917530](v272, -1, -1);
                  v273 = v269;
                  v256 = v268;
                  v257 = v267;
                  v259 = v266;
                  v260 = v265;
                  MEMORY[0x1E6917530](v273, -1, -1);
                }

                ++v258;
              }

              while (v257 != v258);
              goto LABEL_113;
            }

LABEL_165:
            __break(1u);
            goto LABEL_166;
          }
        }

        else
        {
          v257 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v257)
          {
            goto LABEL_102;
          }
        }

LABEL_113:

        goto LABEL_114;
      }
    }

    else
    {
      v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v105)
      {
        goto LABEL_93;
      }
    }

    result = MEMORY[0x1E69150B0](v106);
    v107 = result;
    if (result >> 62)
    {
      result = sub_1E470B50C();
      v108 = result;
      if (result)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v108 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v108)
      {
LABEL_33:
        if (v108 < 1)
        {
          __break(1u);
          goto LABEL_165;
        }

        for (i = 0; i != v108; ++i)
        {
          if ((v107 & 0xC000000000000001) != 0)
          {
            v110 = MEMORY[0x1E6916300](i, v107);
          }

          else
          {
            v110 = *(v107 + 8 * i + 32);
          }

          v111 = v110;
          sub_1E46CB6CC(v110);
        }
      }
    }

    goto LABEL_93;
  }

  if (v7 != *MEMORY[0x1E695B690])
  {
    if (v7 == *MEMORY[0x1E695B680])
    {
      v158 = sub_1E470A0BC();
      v159 = sub_1E470B2CC();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&dword_1E45E0000, v158, v159, "BDSSyncEngine - willFetchChanges", v160, 2u);
        MEMORY[0x1E6917530](v160, -1, -1);
      }

      v161 = v2[67];
      v162 = v2[65];
      v163 = v2[64];

      goto LABEL_66;
    }

    v164 = v2[64];
    if (v7 == *MEMORY[0x1E695B6B0])
    {
      v165 = v2[67];
      v166 = v2[25];
      v167 = v2[26];
      v168 = v2[23];
      v169 = v2[24];
      (*(v2[65] + 96))(v165, v164);
      (*(v169 + 32))(v167, v165, v168);
      (*(v169 + 16))(v166, v167, v168);
      v170 = sub_1E470A0BC();
      v171 = sub_1E470B2CC();
      v172 = os_log_type_enabled(v170, v171);
      v173 = v2[25];
      v174 = v2[26];
      v175 = v2[23];
      v176 = v2[24];
      if (v172)
      {
        v177 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        *v177 = 138543362;
        v179 = MEMORY[0x1E6915220]();
        v180 = *(v176 + 8);
        v180(v173, v175);
        *(v177 + 4) = v179;
        *v178 = v179;
        _os_log_impl(&dword_1E45E0000, v170, v171, "BDSSyncEngine - willFetchRecordZoneChanges: %{public}@", v177, 0xCu);
        sub_1E465E050(v178, &qword_1ECF75100, qword_1E471E820);
        v181 = v178;
        v2 = v394;
        MEMORY[0x1E6917530](v181, -1, -1);
        MEMORY[0x1E6917530](v177, -1, -1);

        v180(v174, v175);
      }

      else
      {

        v191 = *(v176 + 8);
        v191(v173, v175);
        v191(v174, v175);
      }

      goto LABEL_5;
    }

    if (v7 == *MEMORY[0x1E695B6A8])
    {
      v182 = v2[67];
      v183 = v2[21];
      v184 = v2[22];
      v185 = v2[20];
      (*(v2[65] + 96))(v182, v164);
      (*(v183 + 32))(v184, v182, v185);
      v186 = sub_1E470A4DC();
      if (v186)
      {
        v187 = v186;
        v188 = MEMORY[0x1E6915200]();
        v189 = v187;
        sub_1E46CCE48(v188, v189);
      }

      v113 = v2[21];
      v112 = v2[22];
      v114 = v2[20];
      v190 = MEMORY[0x1E6915200]();
      sub_1E46CD268(v190);

      goto LABEL_41;
    }

    if (v7 == *MEMORY[0x1E695B670])
    {
      v161 = v2[67];
      v162 = v2[65];
      v163 = v2[64];
      sub_1E46CD3F4();
LABEL_66:
      (*(v162 + 8))(v161, v163);
      goto LABEL_5;
    }

    if (v7 == *MEMORY[0x1E695B678])
    {
      v192 = v2[67];
      v193 = v2[18];
      v194 = v2[19];
      v195 = v2[16];
      v196 = v2[17];
      (*(v2[65] + 96))(v192, v164);
      (*(v196 + 32))(v194, v192, v195);
      (*(v196 + 16))(v193, v194, v195);
      v197 = sub_1E470A0BC();
      v198 = sub_1E470B2CC();
      v199 = os_log_type_enabled(v197, v198);
      v200 = v2[18];
      v201 = v2[19];
      v202 = v2[16];
      v203 = v2[17];
      if (v199)
      {
        v204 = swift_slowAlloc();
        v205 = swift_slowAlloc();
        v396 = v205;
        *v204 = 136446210;
        sub_1E46D01D4(&qword_1ECF754B0, MEMORY[0x1E695B660], MEMORY[0x1E695B668]);
        v206 = sub_1E470B81C();
        v208 = v207;
        v389 = v201;
        v209 = *(v203 + 8);
        v209(v200, v202);
        v210 = sub_1E4654D04(v206, v208, &v396);

        *(v204 + 4) = v210;
        v211 = "BDSSyncEngine - willSendChanges: %{public}s";
LABEL_83:
        _os_log_impl(&dword_1E45E0000, v197, v198, v211, v204, 0xCu);
        sub_1E4658A0C(v205);
        MEMORY[0x1E6917530](v205, -1, -1);
        v222 = v204;
        v2 = v394;
        MEMORY[0x1E6917530](v222, -1, -1);

        v209(v389, v202);
        goto LABEL_5;
      }
    }

    else
    {
      if (v7 != *MEMORY[0x1E695B650])
      {
        v6(v2[66], v2[10], v2[64]);
        v224 = sub_1E470A0BC();
        v225 = sub_1E470B2AC();
        v226 = os_log_type_enabled(v224, v225);
        v227 = v2[66];
        v228 = v2[65];
        v229 = v2[64];
        if (v226)
        {
          v230 = swift_slowAlloc();
          v390 = swift_slowAlloc();
          v396 = v390;
          *v230 = 136315138;
          sub_1E46D01D4(&qword_1ECF754A0, MEMORY[0x1E695B6B8], MEMORY[0x1E695B6C0]);
          v231 = sub_1E470B81C();
          v233 = v232;
          v234 = *(v228 + 8);
          v234(v227, v229);
          v235 = sub_1E4654D04(v231, v233, &v396);

          *(v230 + 4) = v235;
          _os_log_impl(&dword_1E45E0000, v224, v225, "BDSSyncEngine - handleEvent - unhandled event: %s", v230, 0xCu);
          sub_1E4658A0C(v390);
          MEMORY[0x1E6917530](v390, -1, -1);
          MEMORY[0x1E6917530](v230, -1, -1);
        }

        else
        {

          v234 = *(v228 + 8);
          v234(v227, v229);
        }

        v2 = v394;
        v234(v394[67], v394[64]);
        goto LABEL_5;
      }

      v212 = v2[67];
      v213 = v2[14];
      v214 = v2[15];
      v215 = v2[12];
      v216 = v2[13];
      (*(v2[65] + 96))(v212, v164);
      (*(v216 + 32))(v214, v212, v215);
      (*(v216 + 16))(v213, v214, v215);
      v197 = sub_1E470A0BC();
      v198 = sub_1E470B2CC();
      v217 = os_log_type_enabled(v197, v198);
      v200 = v2[14];
      v201 = v2[15];
      v202 = v2[12];
      v203 = v2[13];
      if (v217)
      {
        v204 = swift_slowAlloc();
        v205 = swift_slowAlloc();
        v396 = v205;
        *v204 = 136446210;
        sub_1E46D01D4(&qword_1ECF754A8, MEMORY[0x1E695B640], MEMORY[0x1E695B648]);
        v218 = sub_1E470B81C();
        v220 = v219;
        v389 = v201;
        v209 = *(v203 + 8);
        v209(v200, v202);
        v221 = sub_1E4654D04(v218, v220, &v396);

        *(v204 + 4) = v221;
        v211 = "BDSSyncEngine - didSendChanges: %{public}s";
        goto LABEL_83;
      }
    }

    v223 = *(v203 + 8);
    v223(v200, v202);
    v223(v201, v202);
    goto LABEL_5;
  }

  v126 = v2[67];
  v127 = v2[31];
  v128 = v2[32];
  v129 = v2[30];
  (*(v2[65] + 96))(v126, v2[64]);
  v130 = (*(v127 + 32))(v128, v126, v129);
  v395 = MEMORY[0x1E69E7CD0];
  result = MEMORY[0x1E6915170](v130);
  v131 = result;
  if (!(result >> 62))
  {
    v132 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v132)
    {
      goto LABEL_130;
    }

    goto LABEL_49;
  }

LABEL_129:
  result = sub_1E470B50C();
  v132 = result;
  if (!result)
  {
    goto LABEL_130;
  }

LABEL_49:
  if (v132 >= 1)
  {
    v133 = 0;
    do
    {
      if ((v131 & 0xC000000000000001) != 0)
      {
        v134 = MEMORY[0x1E6916300](v133, v131);
      }

      else
      {
        v134 = *(v131 + 8 * v133 + 32);
      }

      v135 = v134;
      ++v133;
      v136 = sub_1E470B3DC();
      sub_1E46C8108(&v396, v136, v137);

      sub_1E46CBAA8(v135);
    }

    while (v132 != v133);
LABEL_130:
    v297 = v394;

    v299 = MEMORY[0x1E6915140](v298);
    v300 = *(v299 + 16);
    if (v300)
    {
      v301 = 0;
      v302 = v394[28];
      v303 = *(v302 + 16);
      v302 += 16;
      v373 = v303;
      v304 = v299 + ((*(v302 + 64) + 32) & ~*(v302 + 64));
      v372 = *(v302 + 56);
      v378 = (v394 + 2);
      v371 = (v302 - 8);
      do
      {
        v305 = v373(v394[29], v304, v394[27]);
        v306 = MEMORY[0x1E6915120](v305);
        v307 = [v306 recordID];

        v308 = [v307 recordName];
        v309 = sub_1E470AF1C();
        v311 = v310;

        v394[2] = 46;
        v394[3] = 0xE100000000000000;
        v312 = swift_task_alloc();
        *(v312 + 16) = v378;
        v313 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E46D0EA8, v312, v309, v311, v378);

        if (!v313[2])
        {
          goto LABEL_159;
        }

        v314 = v394[29];
        v382 = v394[27];
        v315 = v304;
        v316 = v313[4];
        v1 = v313[5];
        v392 = v300;
        v317 = v313[6];
        v318 = v313[7];

        v319 = MEMORY[0x1E6915CC0](v316, v1, v317, v318);
        v321 = v320;

        sub_1E46C8108(&v396, v319, v321);

        v322 = sub_1E470A3FC();
        (*v371)(v314, v382);
        sub_1E46CBDD8(v307, v322);

        v304 = v315 + v372;
        v300 = v392 - 1;
      }

      while (v392 != 1);
    }

    else
    {

      v301 = 0;
    }

    result = MEMORY[0x1E6915160](v323);
    v1 = result;
    if (result >> 62)
    {
      goto LABEL_162;
    }

    v324 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v393 = 0;
    if (v324)
    {
      goto LABEL_138;
    }

    while (1)
    {
LABEL_146:
      v384 = v297 + 48;

      v343 = sub_1E470A3DC();
      v344 = 0;
      v345 = v343 + 64;
      v387 = v343;
      v346 = -1;
      v347 = -1 << *(v343 + 32);
      if (-v347 < 64)
      {
        v346 = ~(-1 << -v347);
      }

      v348 = v346 & *(v343 + 64);
      v349 = (63 - v347) >> 6;
      v375 = v349;
      for (j = v343 + 64; v348; v345 = j)
      {
        v350 = v344;
        v2 = v394;
LABEL_154:
        v351 = (v350 << 9) | (8 * __clz(__rbit64(v348)));
        v352 = *(*(v387 + 56) + v351);
        v1 = *(*(v387 + 48) + v351);
        v297 = v352;
        v353 = [v1 recordName];
        v354 = sub_1E470AF1C();
        v356 = v355;

        v2[6] = 46;
        v2[7] = 0xE100000000000000;
        v357 = swift_task_alloc();
        *(v357 + 16) = v384;
        v358 = v356;
        v301 = v393;
        v359 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E46D12E0, v357, v354, v358, v384);

        if (!v359[2])
        {
          goto LABEL_161;
        }

        v348 &= v348 - 1;
        v360 = v359[4];
        v361 = v359[5];
        v362 = v359[6];
        v363 = v359[7];

        v364 = MEMORY[0x1E6915CC0](v360, v361, v362, v363);
        v366 = v365;

        sub_1E46C8108(&v396, v364, v366);

        v301 = v297;
        sub_1E46CCA0C(v1, v301);

        v344 = v350;
        v349 = v375;
      }

      v2 = v394;
      while (1)
      {
        v350 = v344 + 1;
        if (__OFADD__(v344, 1))
        {
          break;
        }

        if (v350 >= v349)
        {
          v368 = v394[31];
          v367 = v394[32];
          v369 = v394[30];

          sub_1E46CC604(v395);

          (*(v368 + 8))(v367, v369);
          goto LABEL_5;
        }

        v348 = *(v345 + 8 * v350);
        ++v344;
        if (v348)
        {
          goto LABEL_154;
        }
      }

      __break(1u);
LABEL_159:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        result = sub_1E470B50C();
        v324 = result;
        v393 = v301;
        if (!result)
        {
          break;
        }

LABEL_138:
        if (v324 < 1)
        {
          goto LABEL_167;
        }

        v325 = 0;
        v383 = v1 & 0xC000000000000001;
        v386 = v297 + 32;
        while (1)
        {
          v326 = v383 ? MEMORY[0x1E6916300](v325, v1) : *(v1 + 8 * v325 + 32);
          v327 = v326;
          v297 = v393;
          v328 = [v326 recordName];
          v329 = sub_1E470AF1C();
          v331 = v330;

          v394[4] = 46;
          v394[5] = 0xE100000000000000;
          v332 = swift_task_alloc();
          *(v332 + 16) = v386;
          v333 = v331;
          v301 = v393;
          v334 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E46D12E0, v332, v329, v333, v386);

          if (!v334[2])
          {
            break;
          }

          ++v325;
          v335 = v334[4];
          v336 = v334[5];
          v337 = v324;
          v338 = v1;
          v339 = v334[6];
          v340 = v334[7];

          v301 = MEMORY[0x1E6915CC0](v335, v336, v339, v340);
          v342 = v341;
          v1 = v338;
          v324 = v337;

          sub_1E46C8108(&v396, v301, v342);

          sub_1E46CC214(v327);

          if (v337 == v325)
          {
            v297 = v394;
            goto LABEL_146;
          }
        }
      }
    }
  }

LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
  return result;
}

double sub_1E46D00F8@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_registeredDataSourceByRecordType;
  swift_beginAccess();
  *a1 = *(v3 + v4);

  return result;
}

uint64_t sub_1E46D0164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF75A30, &qword_1E471E950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46D01D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E46D021C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v25 = *(*(v24 + 48) + 8 * v13);
    MEMORY[0x1EEE9AC00](a1, a2);
    v19[2] = &v25;
    v15 = v14;
    v16 = sub_1E46C9DA4(sub_1E46D1320, v19, v23);

    if (v16)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        sub_1E46E50E8(v21, v20, v22, v18);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1E46D03C4(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v34[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v33 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28 = &v28;
    v29 = v5;
    MEMORY[0x1EEE9AC00](v7, v8);
    v30 = &v28 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v6);
    v31 = 0;
    v32 = v2;
    v5 = 0;
    v12 = *(v2 + 56);
    v2 += 56;
    v11 = v12;
    v13 = 1 << *(v2 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v6 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v19 = v16 | (v5 << 6);
      v34[0] = *(*(v32 + 48) + 8 * v19);
      MEMORY[0x1EEE9AC00](v9, v10);
      *(&v28 - 2) = v34;
      v21 = v20;
      v22 = sub_1E46C9DA4(sub_1E46D1320, (&v28 - 4), v33);

      if (v22)
      {
        *&v30[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_1E46E50E8(v30, v29, v31, v32);
          goto LABEL_17;
        }
      }
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v18 = *(v2 + 8 * v5);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = v33;

  v24 = sub_1E46C7F50(v26, v5, v2, v27);

  MEMORY[0x1E6917530](v26, -1, -1);
LABEL_17:

  return v24;
}

uint64_t sub_1E46D0684(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1E46D03C4(a1, a2);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v25 = MEMORY[0x1E69E7CD0];

  sub_1E470B4FC();
  v4 = sub_1E470B52C();
  if (v4)
  {
    v5 = v4;
    sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
    v6 = v5;
    do
    {
      v23 = v6;
      v7 = swift_dynamicCast();
      v23 = v24;
      MEMORY[0x1EEE9AC00](v7, v8);
      v22[2] = &v23;
      v9 = sub_1E46C9DA4(sub_1E46D0E24, v22, a2);
      v10 = v24;
      if (v9)
      {
        v11 = *(v3 + 16);
        if (*(v3 + 24) <= v11)
        {
          sub_1E46C7CA4(v11 + 1);
        }

        v3 = v25;
        result = sub_1E470B41C();
        v13 = v3 + 56;
        v14 = -1 << *(v3 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v3 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v3 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v16 == v19;
            if (v16 == v19)
            {
              v16 = 0;
            }

            v18 |= v20;
            v21 = *(v13 + 8 * v16);
          }

          while (v21 == -1);
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v3 + 48) + 8 * v17) = v10;
        ++*(v3 + 16);
      }

      else
      {
      }

      v6 = sub_1E470B52C();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_1E46D08E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E470A5DC();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E470A61C();
  v20 = *(v8 - 8);
  v21 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_1E470A0BC();
  v13 = sub_1E470B2CC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1E4654D04(a1, a2, aBlock);
    _os_log_impl(&dword_1E45E0000, v12, v13, "BDSSyncEngine - updatedSaltWithVersion %{public}s", v14, 0xCu);
    sub_1E4658A0C(v15);
    MEMORY[0x1E6917530](v15, -1, -1);
    MEMORY[0x1E6917530](v14, -1, -1);
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = sub_1E46D0DD8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E65D80;
  v18 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v11, v7, v18);
  _Block_release(v18);
  (*(v22 + 8))(v7, v4);
  (*(v20 + 8))(v11, v21);
}

uint64_t sub_1E46D0CD8(uint64_t a1)
{
  result = sub_1E470A0DC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1E46D0DE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E46D0EE0()
{
  v1 = sub_1E470A53C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E46D0FBC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1E470A53C() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1E46D1060(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4665FC8;

  return sub_1E46C1660(a1, v4, v5, v7, v6);
}

uint64_t sub_1E46D1120(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4665FC8;

  return sub_1E46C6CA4(a1, v4);
}

uint64_t sub_1E46D11D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4665DD0;

  return sub_1E46C6CA4(a1, v4);
}

uint64_t PBPropertyValue.identifier.getter(double a1)
{
  v2 = (v1 + *(type metadata accessor for PBPropertyValue(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t PBPropertyValue.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(v1 + *(v7 + 28), v6, &qword_1ECF74A38, &unk_1E471EB00);
  v8 = sub_1E4709E7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1E4709E6C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1E465E050(v6, &qword_1ECF74A38, &unk_1E471EB00);
  }

  return result;
}

uint64_t PBPropertyBundle.configuration.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PBPropertyBundle(0);
  sub_1E465E0B0(v1 + *(v7 + 28), v6, &qword_1ECF74A28, &unk_1E471E790);
  v8 = type metadata accessor for PBPropertyConfiguration(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1E46D48B4(v6, a1, type metadata accessor for PBPropertyConfiguration);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1E465E050(v6, &qword_1ECF74A28, &unk_1E471E790);
  }

  return result;
}

uint64_t PBPropertyTimeSlice.startOfTimeSlice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_1E465E0B0(v1 + *(v7 + 24), v6, &qword_1ECF74A38, &unk_1E471EB00);
  v8 = sub_1E4709E7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1E4709E6C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1E465E050(v6, &qword_1ECF74A38, &unk_1E471EB00);
  }

  return result;
}

uint64_t sub_1E46D17E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v147 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v120 - v10;
  v12 = sub_1E4650534(&qword_1ECF75790, &qword_1E471FB28);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v120 - v14;
  v16 = sub_1E4709E7C();
  v142 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v154 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v120 - v21;
  v23 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v143 = &v120 - v25;
  v149 = sub_1E4650534(&qword_1ECF75788, &qword_1E471FB20);
  MEMORY[0x1EEE9AC00](v149, v26);
  v150 = &v120 - v27;
  v155 = type metadata accessor for PBPropertyValue(0);
  v136 = *(v155 - 1);
  MEMORY[0x1EEE9AC00](v155, v28);
  v152 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v156 = (&v120 - v32);
  v146 = type metadata accessor for PBPropertyConfiguration(0);
  v33 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v34);
  v137 = (&v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v138 = (&v120 - v38);
  v144 = sub_1E4650534(&qword_1ECF75798, &qword_1E471FB30);
  MEMORY[0x1EEE9AC00](v144, v39);
  v145 = &v120 - v40;
  v148 = type metadata accessor for PBPropertyBundle(0);
  MEMORY[0x1EEE9AC00](v148, v41);
  v153 = (&v120 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v43, v44);
  v47 = &v120 - v46;
  v48 = *(a1 + 16);
  if (v48 != *(a2 + 16))
  {
LABEL_63:
    v114 = 0;
    return v114 & 1;
  }

  if (!v48 || a1 == a2)
  {
    v114 = 1;
    return v114 & 1;
  }

  v122 = v7;
  v49 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v50 = a1 + v49;
  v127 = a2 + v49;
  v126 = (v33 + 48);
  v132 = (v142 + 48);
  v124 = (v142 + 32);
  v151 = (v142 + 8);
  v131 = (v147 + 48);
  v147 = v142 + 16;
  v51 = *(v45 + 72);
  v134 = v4;
  v123 = v11;
  v133 = v15;
  v52 = 0;
  v130 = v12;
  v139 = (&v120 - v46);
  v129 = v48;
  v121 = v50;
  v120 = v51;
  while (1)
  {
    v53 = v47;
    result = sub_1E46D52FC(v50 + v51 * v52, v47, type metadata accessor for PBPropertyBundle);
    if (v52 == v129)
    {
      goto LABEL_66;
    }

    v55 = v153;
    sub_1E46D52FC(v127 + v51 * v52, v153, type metadata accessor for PBPropertyBundle);
    v56 = *(v148 + 28);
    v57 = *(v144 + 48);
    v58 = v145;
    sub_1E465E0B0(&v53[v56], v145, &qword_1ECF74A28, &unk_1E471E790);
    sub_1E465E0B0(v55 + v56, v58 + v57, &qword_1ECF74A28, &unk_1E471E790);
    v59 = *v126;
    v60 = v146;
    v61 = (*v126)(v58, 1, v146);
    v125 = v52;
    if (v61 == 1)
    {
      if (v59(v58 + v57, 1, v60) != 1)
      {
        goto LABEL_60;
      }

      sub_1E465E050(v58, &qword_1ECF74A28, &unk_1E471E790);
      v62 = v152;
      goto LABEL_17;
    }

    v63 = v138;
    sub_1E465E0B0(v58, v138, &qword_1ECF74A28, &unk_1E471E790);
    if (v59(v58 + v57, 1, v60) == 1)
    {
      sub_1E46D4D18(v63, type metadata accessor for PBPropertyConfiguration);
LABEL_60:
      v115 = &qword_1ECF75798;
      v116 = &qword_1E471FB30;
      goto LABEL_61;
    }

    v64 = v137;
    sub_1E46D48B4(v58 + v57, v137, type metadata accessor for PBPropertyConfiguration);
    if (*v63 != *v64 || v63[1] != v64[1] || (v63[2] != v64[2] || v63[3] != v64[3]) && (sub_1E470B84C() & 1) == 0 || v63[4] != v64[4])
    {
      sub_1E46D4D18(v64, type metadata accessor for PBPropertyConfiguration);
      sub_1E46D4D18(v63, type metadata accessor for PBPropertyConfiguration);
      v115 = &qword_1ECF74A28;
      v116 = &unk_1E471E790;
LABEL_61:
      sub_1E465E050(v58, v115, v116);
LABEL_62:
      sub_1E46D4D18(v153, type metadata accessor for PBPropertyBundle);
      sub_1E46D4D18(v139, type metadata accessor for PBPropertyBundle);
      goto LABEL_63;
    }

    sub_1E4709EAC();
    sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v65 = sub_1E470AEFC();
    sub_1E46D4D18(v64, type metadata accessor for PBPropertyConfiguration);
    sub_1E46D4D18(v63, type metadata accessor for PBPropertyConfiguration);
    sub_1E465E050(v58, &qword_1ECF74A28, &unk_1E471E790);
    v62 = v152;
    if ((v65 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_17:
    v66 = *v139;
    v67 = *v153;
    v68 = *(*v139 + 16);
    if (v68 != *(*v153 + 16))
    {
      goto LABEL_62;
    }

    if (v68 && v66 != v67)
    {
      break;
    }

LABEL_42:
    v101 = v139[1];
    v102 = v153[1];
    v103 = *(v101 + 16);
    if (v103 != *(v102 + 16))
    {
      goto LABEL_62;
    }

    if (v103 && v101 != v102)
    {
      v104 = (*(v142 + 80) + 32) & ~*(v142 + 80);
      v105 = v101 + v104;
      v106 = v102 + v104;
      v107 = *(v142 + 72);
      v108 = *(v142 + 16);
      v140 = v108;
      v141 = v107;
      do
      {
        v108(v22, v105, v16);
        v109 = v154;
        v108(v154, v106, v16);
        sub_1E46E0828(&qword_1ECF75070, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
        v110 = sub_1E470AEFC();
        v111 = *v151;
        (*v151)(v109, v16);
        v111(v22, v16);
        if ((v110 & 1) == 0)
        {
          goto LABEL_62;
        }

        v108 = v140;
        v106 += v141;
        v105 += v141;
      }

      while (--v103);
    }

    sub_1E4709EAC();
    sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v112 = v139;
    v113 = v153;
    v114 = sub_1E470AEFC();
    sub_1E46D4D18(v113, type metadata accessor for PBPropertyBundle);
    sub_1E46D4D18(v112, type metadata accessor for PBPropertyBundle);
    if (v114)
    {
      v52 = v125 + 1;
      v47 = v139;
      v50 = v121;
      v51 = v120;
      if (v125 + 1 != v129)
      {
        continue;
      }
    }

    return v114 & 1;
  }

  v69 = (*(v136 + 80) + 32) & ~*(v136 + 80);
  v70 = v66 + v69;
  v71 = v67 + v69;
  v128 = *(v136 + 72);
  while (1)
  {
    v72 = v156;
    result = sub_1E46D52FC(v70, v156, type metadata accessor for PBPropertyValue);
    if (!v68)
    {
      break;
    }

    v140 = v70;
    v141 = v68;
    v73 = v22;
    v135 = v71;
    sub_1E46D52FC(v71, v62, type metadata accessor for PBPropertyValue);
    v74 = v155[7];
    v75 = v150;
    v76 = *(v149 + 48);
    sub_1E465E0B0(v72 + v74, v150, &qword_1ECF74A38, &unk_1E471EB00);
    sub_1E465E0B0(v62 + v74, v75 + v76, &qword_1ECF74A38, &unk_1E471EB00);
    v77 = *v132;
    v78 = (*v132)(v75, 1, v16);
    v79 = v134;
    v80 = v133;
    if (v78 == 1)
    {
      if (v77(v75 + v76, 1, v16) != 1)
      {
        goto LABEL_54;
      }

      sub_1E465E050(v75, &qword_1ECF74A38, &unk_1E471EB00);
      v22 = v73;
      v81 = v131;
    }

    else
    {
      v82 = v143;
      sub_1E465E0B0(v75, v143, &qword_1ECF74A38, &unk_1E471EB00);
      if (v77(v75 + v76, 1, v16) == 1)
      {
        (*v151)(v82, v16);
        v62 = v152;
LABEL_54:
        v117 = &qword_1ECF75788;
        v118 = &qword_1E471FB20;
        v119 = v75;
LABEL_57:
        sub_1E465E050(v119, v117, v118);
LABEL_58:
        sub_1E46D4D18(v62, type metadata accessor for PBPropertyValue);
        sub_1E46D4D18(v156, type metadata accessor for PBPropertyValue);
        goto LABEL_62;
      }

      (*v124)(v73, v75 + v76, v16);
      sub_1E46E0828(&qword_1ECF75070, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v83 = sub_1E470AEFC();
      v84 = *v151;
      (*v151)(v73, v16);
      v84(v82, v16);
      v85 = v75;
      v22 = v73;
      sub_1E465E050(v85, &qword_1ECF74A38, &unk_1E471EB00);
      v62 = v152;
      v81 = v131;
      if ((v83 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v86 = v155[8];
    v87 = (v156 + v86);
    v88 = *(v156 + v86 + 8);
    v89 = (v62 + v86);
    v90 = v89[1];
    if (v88)
    {
      if (!v90 || (*v87 != *v89 || v88 != v90) && (sub_1E470B84C() & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (v90)
    {
      goto LABEL_58;
    }

    if (*v156 != *v62)
    {
      goto LABEL_58;
    }

    v91 = v155[5];
    v92 = *(v130 + 48);
    sub_1E465E0B0(v156 + v91, v80, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E465E0B0(v62 + v91, v80 + v92, &qword_1ECF74A30, &unk_1E471EB10);
    v93 = *v81;
    if ((*v81)(v80, 1, v79) == 1)
    {
      if (v93(v80 + v92, 1, v79) != 1)
      {
        goto LABEL_56;
      }

      sub_1E465E050(v80, &qword_1ECF74A30, &unk_1E471EB10);
    }

    else
    {
      v94 = v80;
      v95 = v80;
      v96 = v123;
      sub_1E465E0B0(v94, v123, &qword_1ECF74A30, &unk_1E471EB10);
      if (v93(v95 + v92, 1, v79) == 1)
      {
        sub_1E46D4D18(v96, type metadata accessor for PBPropertyValue.OneOf_Params);
        v80 = v95;
        v62 = v152;
LABEL_56:
        v117 = &qword_1ECF75790;
        v118 = &qword_1E471FB28;
        v119 = v80;
        goto LABEL_57;
      }

      v97 = v122;
      sub_1E46D48B4(v95 + v92, v122, type metadata accessor for PBPropertyValue.OneOf_Params);
      v98 = _s13BookDataStore15PBPropertyValueV12OneOf_ParamsO2eeoiySbAE_AEtFZ_0(v96, v97);
      sub_1E46D4D18(v97, type metadata accessor for PBPropertyValue.OneOf_Params);
      sub_1E46D4D18(v96, type metadata accessor for PBPropertyValue.OneOf_Params);
      sub_1E465E050(v95, &qword_1ECF74A30, &unk_1E471EB10);
      v62 = v152;
      if ((v98 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    sub_1E4709EAC();
    sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v99 = v156;
    v100 = sub_1E470AEFC();
    sub_1E46D4D18(v62, type metadata accessor for PBPropertyValue);
    sub_1E46D4D18(v99, type metadata accessor for PBPropertyValue);
    if ((v100 & 1) == 0)
    {
      goto LABEL_62;
    }

    v71 = v135 + v128;
    v70 = v140 + v128;
    v68 = v141 - 1;
    if (v141 == 1)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1E46D28B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPropertyValue(0) - 8;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (&v20 - v11);
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1E46D52FC(v15, v12, type metadata accessor for PBPropertyValue);
        sub_1E46D52FC(v16, v7, type metadata accessor for PBPropertyValue);
        v18 = _s13BookDataStore15PBPropertyValueV2eeoiySbAC_ACtFZ_0(v12, v7);
        sub_1E46D4D18(v7, type metadata accessor for PBPropertyValue);
        sub_1E46D4D18(v12, type metadata accessor for PBPropertyValue);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1E46D2A6C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1E4709E7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v6 + 16);
  v19 = v6 + 16;
  v21 = (v19 - 8);
  v28 = *(v19 + 56);
  v29 = v20;
  while (1)
  {
    v22 = v29;
    result = (v29)(v14, v17, v5, v12);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v9, v18, v5);
    sub_1E46E0828(&qword_1ECF75070, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
    v25 = sub_1E470AEFC();
    v26 = *v21;
    (*v21)(v9, v5);
    v26(v14, v5);
    if (v25)
    {
      v18 += v28;
      v17 += v28;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46D2C80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v3 - 2);
      v8 = *(v3 - 1);
      v10 = *v3;
      if (*(v4 - 4) == *(v3 - 4) && *(v4 - 3) == *(v3 - 3))
      {
        result = 0;
        if (v6 != v9 || v5 != v8)
        {
          return result;
        }
      }

      else
      {
        v12 = sub_1E470B84C();
        result = 0;
        if ((v12 & 1) == 0 || v6 != v9 || v5 != v8)
        {
          return result;
        }
      }

      if ((v7 ^ v10))
      {
        return result;
      }

      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t PBPropertyTimeSlice.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v3 = type metadata accessor for PBPropertyTimeSlice(0);
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v4 = *(v3 + 24);
  v5 = sub_1E4709E7C();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

BOOL PBPropertyTimeSlice.hasStartOfTimeSlice.getter()
{
  v1 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_1E465E0B0(v0 + *(v5 + 24), v4, &qword_1ECF74A38, &unk_1E471EB00);
  v6 = sub_1E4709E7C();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1E465E050(v4, &qword_1ECF74A38, &unk_1E471EB00);
  return v7;
}

uint64_t PBPropertyTimeSlice.startOfTimeSlice.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  sub_1E465E050(v2 + v4, &qword_1ECF74A38, &unk_1E471EB00);
  v5 = sub_1E4709E7C();
  v8 = *(v5 - 8);
  (*(v8 + 32))(v2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t PBPropertyBundle.init()@<X0>(char *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v3;
  v4 = type metadata accessor for PBPropertyBundle(0);
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v5 = *(v4 + 28);
  v6 = type metadata accessor for PBPropertyConfiguration(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t PBPropertyBundle.configuration.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for PBPropertyBundle(0) + 28);
  sub_1E465E050(v2 + v4, &qword_1ECF74A28, &unk_1E471E790);
  sub_1E46D48B4(a1, v2 + v4, type metadata accessor for PBPropertyConfiguration);
  v5 = type metadata accessor for PBPropertyConfiguration(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

unint64_t MarkedAsFinishedMechanism.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t sub_1E46D3184@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1E46D319C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1E46D31B8(uint64_t a1, uint64_t a2)
{
  sub_1E470B8FC();
  sub_1E470AECC();
  return sub_1E470B91C();
}

uint64_t sub_1E46D3224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0870();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1E46D3270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E470B8FC();
  sub_1E470AECC();
  return sub_1E470B91C();
}

double static MarkedAsFinishedMechanism.allCases.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static MarkedAsFinishedMechanism.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1ECF754F0 = a1;
}

double sub_1E46D33C8@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1ECF754F0;

  return result;
}

uint64_t PBPropertyConfiguration.eventName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PBPropertyConfiguration.eventName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PBPropertyConfiguration.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for PBPropertyConfiguration(0) + 32);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t PBPropertyConfiguration.unknownFields.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for PBPropertyConfiguration(0) + 32);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PBPropertyConfiguration.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  type metadata accessor for PBPropertyConfiguration(0);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t PBPropertyNoParams.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4709EAC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PBPropertyNoParams.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1E4709EAC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PBPropertySingleFloatParam.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for PBPropertySingleFloatParam(0);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t PBPropertyBookReadParams.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  type metadata accessor for PBPropertyBookReadParams(0);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D3A74@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E46D3B30(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PBPropertyBookImpressionParam.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for PBPropertyBookImpressionParam(0);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

void PBPropertyMarkedAsFinishedParam.value.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t PBPropertyMarkedAsFinishedParam.value.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t PBPropertyMarkedAsFinishedParam.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D3D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v8 + 28), v7, &qword_1ECF74A38, &unk_1E471EB00);
  v9 = sub_1E4709E7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1E4709E6C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1E465E050(v7, &qword_1ECF74A38, &unk_1E471EB00);
  }

  return result;
}

uint64_t sub_1E46D3EB8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1E4709E7C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v5, v8);
  v11 = *(type metadata accessor for PBPropertyValue(0) + 28);
  sub_1E465E050(a2 + v11, &qword_1ECF74A38, &unk_1E471EB00);
  (*(v6 + 32))(a2 + v11, v10, v5);
  return (*(v6 + 56))(a2 + v11, 0, 1, v5);
}

uint64_t PBPropertyValue.createdAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PBPropertyValue(0) + 28);
  sub_1E465E050(v1 + v3, &qword_1ECF74A38, &unk_1E471EB00);
  v4 = sub_1E4709E7C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*PBPropertyValue.createdAt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1E4709E7C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PBPropertyValue(0) + 28);
  *(v5 + 12) = v15;
  sub_1E465E0B0(v1 + v15, v8, &qword_1ECF74A38, &unk_1E471EB00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1E4709E6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1E465E050(v8, &qword_1ECF74A38, &unk_1E471EB00);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1E46D42D0;
}

double sub_1E46D434C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PBPropertyValue(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_1E46D43B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for PBPropertyValue(0) + 32));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t PBPropertyValue.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PBPropertyValue(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*PBPropertyValue.identifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for PBPropertyValue(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1E46D44FC;
}

void sub_1E46D44FC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall PBPropertyValue.clearIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for PBPropertyValue(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t PBPropertyValue.params.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PBPropertyValue(0) + 20);

  return sub_1E46D4678(a1, v3);
}

uint64_t sub_1E46D4678(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PBPropertyValue.noParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(v1 + *(v7 + 20), v6, &qword_1ECF74A30, &unk_1E471EB10);
  v8 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1E465E050(v6, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1E46D48B4(v6, a1, type metadata accessor for PBPropertyNoParams);
    }

    sub_1E46D4D18(v6, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D48B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E46D493C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  v8 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v8 + 20), v7, &qword_1ECF74A30, &unk_1E471EB10);
  v9 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1E465E050(v7, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1E46D48B4(v7, a2, type metadata accessor for PBPropertyNoParams);
    }

    sub_1E46D4D18(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.noParams.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for PBPropertyNoParams(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v5 + 12) = v12;
  sub_1E465E0B0(v1 + v12, v8, &qword_1ECF74A30, &unk_1E471EB10);
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1E46D48B4(v8, v11, type metadata accessor for PBPropertyNoParams);
      return sub_1E46D4CD4;
    }

    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  return sub_1E46D4CD4;
}

uint64_t sub_1E46D4D18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PBPropertyValue.floatParam.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(v1 + *(v7 + 20), v6, &qword_1ECF74A30, &unk_1E471EB10);
  v8 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1E465E050(v6, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1E46D48B4(v6, a1, type metadata accessor for PBPropertySingleFloatParam);
    }

    sub_1E46D4D18(v6, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  type metadata accessor for PBPropertySingleFloatParam(0);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D4EF0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  v8 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v8 + 20), v7, &qword_1ECF74A30, &unk_1E471EB10);
  v9 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1E465E050(v7, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1E46D48B4(v7, a2, type metadata accessor for PBPropertySingleFloatParam);
    }

    sub_1E46D4D18(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a2 = 0;
  type metadata accessor for PBPropertySingleFloatParam(0);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.floatParam.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for PBPropertySingleFloatParam(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v5 + 12) = v12;
  sub_1E465E0B0(v1 + v12, v8, &qword_1ECF74A30, &unk_1E471EB10);
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
LABEL_15:
    *v11 = 0;
    _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
    return sub_1E46D52B8;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_1E46D48B4(v8, v11, type metadata accessor for PBPropertySingleFloatParam);
  return sub_1E46D52B8;
}

uint64_t sub_1E46D52FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PBPropertyValue.bookReadParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(v1 + *(v7 + 20), v6, &qword_1ECF74A30, &unk_1E471EB10);
  v8 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1E465E050(v6, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1E46D48B4(v6, a1, type metadata accessor for PBPropertyBookReadParams);
    }

    sub_1E46D4D18(v6, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  *(a1 + 4) = 0;
  type metadata accessor for PBPropertyBookReadParams(0);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D54E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  v8 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v8 + 20), v7, &qword_1ECF74A30, &unk_1E471EB10);
  v9 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1E465E050(v7, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1E46D48B4(v7, a2, type metadata accessor for PBPropertyBookReadParams);
    }

    sub_1E46D4D18(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a2 = 0;
  *(a2 + 4) = 0;
  type metadata accessor for PBPropertyBookReadParams(0);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.bookReadParams.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for PBPropertyBookReadParams(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v5 + 12) = v12;
  sub_1E465E0B0(v1 + v12, v8, &qword_1ECF74A30, &unk_1E471EB10);
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
LABEL_15:
    *v11 = 0;
    *(v11 + 4) = 0;
    _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
    return sub_1E46D58B0;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_1E46D48B4(v8, v11, type metadata accessor for PBPropertyBookReadParams);
  return sub_1E46D58B0;
}

uint64_t PBPropertyValue.markedAsFinishedParam.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(v1 + *(v7 + 20), v6, &qword_1ECF74A30, &unk_1E471EB10);
  v8 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1E465E050(v6, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1E46D48B4(v6, a1, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    }

    sub_1E46D4D18(v6, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D5A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  v8 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v8 + 20), v7, &qword_1ECF74A30, &unk_1E471EB10);
  v9 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1E465E050(v7, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1E46D48B4(v7, a2, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    }

    sub_1E46D4D18(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.markedAsFinishedParam.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for PBPropertyMarkedAsFinishedParam(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v5 + 12) = v12;
  sub_1E465E0B0(v1 + v12, v8, &qword_1ECF74A30, &unk_1E471EB10);
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 1;
    _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
    return sub_1E46D5E4C;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_1E46D48B4(v8, v11, type metadata accessor for PBPropertyMarkedAsFinishedParam);
  return sub_1E46D5E4C;
}

uint64_t PBPropertyValue.bookImpressionParam.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(v1 + *(v7 + 20), v6, &qword_1ECF74A30, &unk_1E471EB10);
  v8 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1E465E050(v6, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1E46D48B4(v6, a1, type metadata accessor for PBPropertyBookImpressionParam);
    }

    sub_1E46D4D18(v6, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  type metadata accessor for PBPropertyBookImpressionParam(0);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D6008@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  v8 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v8 + 20), v7, &qword_1ECF74A30, &unk_1E471EB10);
  v9 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1E465E050(v7, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1E46D48B4(v7, a2, type metadata accessor for PBPropertyBookImpressionParam);
    }

    sub_1E46D4D18(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a2 = 0;
  type metadata accessor for PBPropertyBookImpressionParam(0);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D6184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v19 - v14;
  sub_1E46D52FC(a1, &v19 - v14, a6);
  v16 = *(type metadata accessor for PBPropertyValue(0) + 20);
  sub_1E465E050(a2 + v16, &qword_1ECF74A30, &unk_1E471EB10);
  sub_1E46D48B4(v15, a2 + v16, a7);
  v17 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v17 - 8) + 56))(a2 + v16, 0, 1, v17);
}

uint64_t sub_1E46D62C0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for PBPropertyValue(0) + 20);
  sub_1E465E050(v3 + v6, &qword_1ECF74A30, &unk_1E471EB10);
  sub_1E46D48B4(a1, v3 + v6, a2);
  v7 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

void (*PBPropertyValue.bookImpressionParam.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for PBPropertyBookImpressionParam(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v5 + 12) = v12;
  sub_1E465E0B0(v1 + v12, v8, &qword_1ECF74A30, &unk_1E471EB10);
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
LABEL_15:
    *v11 = 0;
    _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
    return sub_1E46D65BC;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_1E46D48B4(v8, v11, type metadata accessor for PBPropertyBookImpressionParam);
  return sub_1E46D65BC;
}

void sub_1E46D6600(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_1E46D52FC(v12, v11, a5);
    sub_1E465E050(v13 + v10, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    sub_1E46D4D18(v12, a6);
  }

  else
  {
    sub_1E465E050(v13 + v10, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t sub_1E46D6780@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E46D681C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static PBPropertyNoParams.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1E470AEFC() & 1;
}

uint64_t static PBPropertySingleFloatParam.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for PBPropertySingleFloatParam(0);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1E470AEFC() & 1;
}

uint64_t static PBPropertyBookReadParams.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for PBPropertyBookReadParams(0);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1E470AEFC() & 1;
}

uint64_t static PBPropertyBookImpressionParam.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for PBPropertyBookImpressionParam(0);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1E470AEFC() & 1;
}

uint64_t PBPropertyValue.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for PBPropertyValue(0);
  v3 = v2[5];
  v4 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v5 = v2[7];
  v6 = sub_1E4709E7C();
  result = (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v8 = &a1[v2[8]];
  *v8 = 0;
  *(v8 + 1) = 0;
  return result;
}

uint64_t sub_1E46D6C60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for PBPropertyBundle(0);
  sub_1E465E0B0(a1 + *(v8 + 28), v7, &qword_1ECF74A28, &unk_1E471E790);
  v9 = type metadata accessor for PBPropertyConfiguration(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1E46D48B4(v7, a2, type metadata accessor for PBPropertyConfiguration);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1E465E050(v7, &qword_1ECF74A28, &unk_1E471E790);
  }

  return result;
}

uint64_t sub_1E46D6DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPropertyConfiguration(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E46D52FC(a1, v8, type metadata accessor for PBPropertyConfiguration);
  v9 = *(type metadata accessor for PBPropertyBundle(0) + 28);
  sub_1E465E050(a2 + v9, &qword_1ECF74A28, &unk_1E471E790);
  sub_1E46D48B4(v8, a2 + v9, type metadata accessor for PBPropertyConfiguration);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*PBPropertyBundle.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for PBPropertyConfiguration(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PBPropertyBundle(0) + 28);
  *(v5 + 12) = v15;
  sub_1E465E0B0(v1 + v15, v8, &qword_1ECF74A28, &unk_1E471E790);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v14[4] = 0;
    _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1E465E050(v8, &qword_1ECF74A28, &unk_1E471E790);
    }
  }

  else
  {
    sub_1E46D48B4(v8, v14, type metadata accessor for PBPropertyConfiguration);
  }

  return sub_1E46D7120;
}

void sub_1E46D7120(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1E46D52FC((*a1)[5], v4, type metadata accessor for PBPropertyConfiguration);
    sub_1E465E050(v9 + v3, &qword_1ECF74A28, &unk_1E471E790);
    sub_1E46D48B4(v4, v9 + v3, type metadata accessor for PBPropertyConfiguration);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1E46D4D18(v5, type metadata accessor for PBPropertyConfiguration);
  }

  else
  {
    sub_1E465E050(v9 + v3, &qword_1ECF74A28, &unk_1E471E790);
    sub_1E46D48B4(v5, v9 + v3, type metadata accessor for PBPropertyConfiguration);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_1E46D72C4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = sub_1E4650534(a1, a2);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  sub_1E465E0B0(v4 + *(v14 + 28), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_1E465E050(v13, a1, a2);
  return v16;
}

uint64_t sub_1E46D73FC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1E465E050(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t PBPropertyBundle.propertyValues.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PBPropertyBundle.deletedPropertyValueTimestamps.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1E46D75C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_1E465E0B0(a1 + *(v8 + 24), v7, &qword_1ECF74A38, &unk_1E471EB00);
  v9 = sub_1E4709E7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1E4709E6C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1E465E050(v7, &qword_1ECF74A38, &unk_1E471EB00);
  }

  return result;
}

uint64_t sub_1E46D7730(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1E4709E7C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v5, v8);
  v11 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  sub_1E465E050(a2 + v11, &qword_1ECF74A38, &unk_1E471EB00);
  (*(v6 + 32))(a2 + v11, v10, v5);
  return (*(v6 + 56))(a2 + v11, 0, 1, v5);
}

uint64_t (*PBPropertyTimeSlice.startOfTimeSlice.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1E4709E7C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  *(v5 + 12) = v15;
  sub_1E465E0B0(v1 + v15, v8, &qword_1ECF74A38, &unk_1E471EB00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1E4709E6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1E465E050(v8, &qword_1ECF74A38, &unk_1E471EB00);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1E46E1E64;
}

void sub_1E46D7A70(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1E465E050(v9 + v3, &qword_1ECF74A38, &unk_1E471EB00);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1E465E050(v9 + v3, &qword_1ECF74A38, &unk_1E471EB00);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall PBPropertyTimeSlice.clearStartOfTimeSlice()()
{
  v1 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  sub_1E465E050(v0 + v1, &qword_1ECF74A38, &unk_1E471EB00);
  v2 = sub_1E4709E7C();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1E46D7CFC()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF754F8);
  sub_1E4665EC4(v0, qword_1ECF754F8);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v1 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E471EAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1E470A06C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Manually";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Automatically";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1E470A07C();
}

uint64_t sub_1E46D7F70()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF75510);
  sub_1E4665EC4(v0, qword_1ECF75510);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v1 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E471C940;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ageToExpire";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1E470A06C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "countLimit";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "eventName";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "recordType";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1E470A07C();
}

uint64_t PBPropertyConfiguration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1E4709F0C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1E4709F7C();
      }

      else if (result == 4)
      {
        goto LABEL_2;
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_1E4709F5C();
    }
  }
}

uint64_t PBPropertyConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1E470A02C(), !v4))
  {
    if (!v3[1] || (result = sub_1E470A02C(), !v4))
    {
      v6 = v3[3];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v3[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_1E470A03C(), !v4))
      {
        if (!v3[4] || (result = sub_1E470A02C(), !v4))
        {
          type metadata accessor for PBPropertyConfiguration(0);
          return sub_1E4709E8C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E46D83D0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D841C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E46D8490(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1E46D8558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75780, type metadata accessor for PBPropertyConfiguration, &protocol conformance descriptor for PBPropertyConfiguration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46D85F8(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF75688, type metadata accessor for PBPropertyConfiguration, &protocol conformance descriptor for PBPropertyConfiguration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46D8664(uint64_t a1, uint64_t a2)
{
  sub_1E46E0828(&qword_1ECF75688, type metadata accessor for PBPropertyConfiguration, &protocol conformance descriptor for PBPropertyConfiguration);

  return sub_1E4709FEC();
}

uint64_t sub_1E46D8700()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF75528);
  sub_1E4665EC4(v0, qword_1ECF75528);
  return sub_1E470A08C();
}

uint64_t PBPropertyNoParams.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_1E4709F0C();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_1E46D8834@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4709EAC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E46D889C(uint64_t a1)
{
  v3 = sub_1E4709EAC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1E46D8954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75778, type metadata accessor for PBPropertyNoParams, &protocol conformance descriptor for PBPropertyNoParams);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46D89F4(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF756A0, type metadata accessor for PBPropertyNoParams, &protocol conformance descriptor for PBPropertyNoParams);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46D8A60(uint64_t a1, uint64_t a2)
{
  sub_1E46E0828(&qword_1ECF756A0, type metadata accessor for PBPropertyNoParams, &protocol conformance descriptor for PBPropertyNoParams);

  return sub_1E4709FEC();
}

uint64_t sub_1E46D8ADC(uint64_t a1, uint64_t a2)
{
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1E470AEFC() & 1;
}

uint64_t PBPropertySingleFloatParam.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1E4709F0C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1E4709F4C();
    }
  }

  return result;
}

uint64_t PBPropertySingleFloatParam.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = sub_1E470A01C(), !v4))
  {
    type metadata accessor for PBPropertySingleFloatParam(0);
    return sub_1E4709E8C();
  }

  return result;
}

uint64_t sub_1E46D8DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75770, type metadata accessor for PBPropertySingleFloatParam, &protocol conformance descriptor for PBPropertySingleFloatParam);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46D8E40(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF756B8, type metadata accessor for PBPropertySingleFloatParam, &protocol conformance descriptor for PBPropertySingleFloatParam);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46D8EAC(uint64_t a1, uint64_t a2)
{
  sub_1E46E0828(&qword_1ECF756B8, type metadata accessor for PBPropertySingleFloatParam, &protocol conformance descriptor for PBPropertySingleFloatParam);

  return sub_1E4709FEC();
}

uint64_t sub_1E46D8F28(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1E470AEFC() & 1;
}

uint64_t sub_1E46D8FE8()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF75558);
  sub_1E4665EC4(v0, qword_1ECF75558);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v1 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E471B800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "isSample";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1E470A06C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "progress";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1E470A07C();
}

uint64_t PBPropertyBookReadParams.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1E4709F0C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1E4709F2C();
    }

    else if (result == 2)
    {
      sub_1E4709F4C();
    }
  }

  return result;
}

uint64_t PBPropertyBookReadParams.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1E4709FFC(), !v4))
  {
    if (*(v3 + 4) == 0.0 || (result = sub_1E470A01C(), !v4))
    {
      type metadata accessor for PBPropertyBookReadParams(0);
      return sub_1E4709E8C();
    }
  }

  return result;
}

uint64_t sub_1E46D935C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D93D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75768, type metadata accessor for PBPropertyBookReadParams, &protocol conformance descriptor for PBPropertyBookReadParams);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46D9470(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF756D0, type metadata accessor for PBPropertyBookReadParams, &protocol conformance descriptor for PBPropertyBookReadParams);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46D94DC(uint64_t a1, uint64_t a2)
{
  sub_1E46E0828(&qword_1ECF756D0, type metadata accessor for PBPropertyBookReadParams, &protocol conformance descriptor for PBPropertyBookReadParams);

  return sub_1E4709FEC();
}

uint64_t sub_1E46D9558(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1E470AEFC() & 1;
}

uint64_t PBPropertyBookImpressionParam.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1E4709F0C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1E4709F2C();
    }
  }

  return result;
}

uint64_t PBPropertyBookImpressionParam.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1E4709FFC(), !v4))
  {
    type metadata accessor for PBPropertyBookImpressionParam(0);
    return sub_1E4709E8C();
  }

  return result;
}

uint64_t sub_1E46D9820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75760, type metadata accessor for PBPropertyBookImpressionParam, &protocol conformance descriptor for PBPropertyBookImpressionParam);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46D98C0(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF756E8, type metadata accessor for PBPropertyBookImpressionParam, &protocol conformance descriptor for PBPropertyBookImpressionParam);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46D992C(uint64_t a1, uint64_t a2)
{
  sub_1E46E0828(&qword_1ECF756E8, type metadata accessor for PBPropertyBookImpressionParam, &protocol conformance descriptor for PBPropertyBookImpressionParam);

  return sub_1E4709FEC();
}

uint64_t sub_1E46D99A8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1E470AEFC() & 1;
}

uint64_t sub_1E46D9A80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E470A09C();
  sub_1E4665F64(v7, a2);
  sub_1E4665EC4(v7, a2);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v8 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E471BA00;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v13 = sub_1E470A06C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_1E470A07C();
}

uint64_t PBPropertyMarkedAsFinishedParam.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4709F0C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1E46E0870();
        sub_1E4709F3C();
      }

      result = sub_1E4709F0C();
    }
  }

  return result;
}

uint64_t PBPropertyMarkedAsFinishedParam.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1E46E0870(), result = sub_1E470A00C(), !v4))
  {
    type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
    return sub_1E4709E8C();
  }

  return result;
}

uint64_t sub_1E46D9DAC@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D9E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75758, type metadata accessor for PBPropertyMarkedAsFinishedParam, &protocol conformance descriptor for PBPropertyMarkedAsFinishedParam);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46D9EC4(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF75700, type metadata accessor for PBPropertyMarkedAsFinishedParam, &protocol conformance descriptor for PBPropertyMarkedAsFinishedParam);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46D9F30(uint64_t a1, uint64_t a2)
{
  sub_1E46E0828(&qword_1ECF75700, type metadata accessor for PBPropertyMarkedAsFinishedParam, &protocol conformance descriptor for PBPropertyMarkedAsFinishedParam);

  return sub_1E4709FEC();
}

uint64_t sub_1E46D9FD4()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF755A0);
  sub_1E4665EC4(v0, qword_1ECF755A0);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v1 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E471EAF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "createdAt";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1E470A06C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "assetID";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "noParams";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "floatParam";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "bookReadParams";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "markedAsFinishedParam";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "bookImpressionParam";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v9();
  return sub_1E470A07C();
}

uint64_t PBPropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1E4709F0C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_1E46DB6EC(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          sub_1E46DBCB4(v5, a1, a2, a3);
        }
      }

      else if (result == 5)
      {
        sub_1E46DAB5C(v5, a1, a2, a3);
      }

      else
      {
        sub_1E46DB124(v5, a1, a2, a3);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_1E4709F5C();
      }

      else
      {
        sub_1E46DA594(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_1E46DA4E0(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      type metadata accessor for PBPropertyValue(0);
      sub_1E4709F6C();
    }
  }

  return result;
}

uint64_t sub_1E46DA4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBPropertyValue(0);
  sub_1E4709E7C();
  sub_1E46E0828(&qword_1ECF75638, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1E4709F9C();
}

uint64_t sub_1E46DA594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v58 = a2;
  v59 = a3;
  v5 = type metadata accessor for PBPropertyNoParams(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v52 = &v48 - v11;
  v12 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v48 - v23;
  v25 = sub_1E4650534(&qword_1ECF757B0, &qword_1E471FB48);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v55 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v48 - v31;
  v54 = v6;
  v33 = *(v6 + 56);
  v57 = v5;
  v34 = v5;
  v35 = v33;
  (v33)(&v48 - v31, 1, 1, v34, v30);
  v36 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v51 = a1;
  v49 = v36;
  sub_1E465E0B0(a1 + v36, v15, &qword_1ECF74A30, &unk_1E471EB10);
  v50 = v17;
  v37 = (*(v17 + 48))(v15, 1, v16);
  if (v37 == 1)
  {
    sub_1E465E050(v15, &qword_1ECF74A30, &unk_1E471EB10);
    v38 = v16;
    v39 = v57;
  }

  else
  {
    sub_1E46D48B4(v15, v24, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_1E46D48B4(v24, v20, type metadata accessor for PBPropertyValue.OneOf_Params);
    v38 = v16;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1E46D4D18(v20, type metadata accessor for PBPropertyValue.OneOf_Params);
      v39 = v57;
    }

    else
    {
      sub_1E465E050(v32, &qword_1ECF757B0, &qword_1E471FB48);
      v40 = v20;
      v41 = v52;
      sub_1E46D48B4(v40, v52, type metadata accessor for PBPropertyNoParams);
      sub_1E46D48B4(v41, v32, type metadata accessor for PBPropertyNoParams);
      v39 = v57;
      v35(v32, 0, 1, v57);
    }
  }

  v42 = v55;
  sub_1E46E0828(&qword_1ECF756A0, type metadata accessor for PBPropertyNoParams, &protocol conformance descriptor for PBPropertyNoParams);
  v43 = v56;
  sub_1E4709F9C();
  if (v43)
  {
    return sub_1E465E050(v32, &qword_1ECF757B0, &qword_1E471FB48);
  }

  sub_1E465E0B0(v32, v42, &qword_1ECF757B0, &qword_1E471FB48);
  if ((*(v54 + 48))(v42, 1, v39) == 1)
  {
    sub_1E465E050(v32, &qword_1ECF757B0, &qword_1E471FB48);
    return sub_1E465E050(v42, &qword_1ECF757B0, &qword_1E471FB48);
  }

  else
  {
    v45 = v53;
    sub_1E46D48B4(v42, v53, type metadata accessor for PBPropertyNoParams);
    if (v37 != 1)
    {
      sub_1E4709F1C();
    }

    sub_1E465E050(v32, &qword_1ECF757B0, &qword_1E471FB48);
    v46 = v51;
    v47 = v49;
    sub_1E465E050(v51 + v49, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v45, v46 + v47, type metadata accessor for PBPropertyNoParams);
    swift_storeEnumTagMultiPayload();
    return (*(v50 + 56))(v46 + v47, 0, 1, v38);
  }
}

uint64_t sub_1E46DAB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v58 = a2;
  v59 = a3;
  v5 = type metadata accessor for PBPropertySingleFloatParam(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v53 = &v48 - v11;
  v12 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v48 - v23;
  v25 = sub_1E4650534(&qword_1ECF757B8, &qword_1E471FB50);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v55 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v48 - v31;
  v54 = v6;
  v33 = *(v6 + 56);
  v57 = v5;
  v34 = v5;
  v35 = v33;
  (v33)(&v48 - v31, 1, 1, v34, v30);
  v36 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v51 = a1;
  v49 = v36;
  sub_1E465E0B0(a1 + v36, v15, &qword_1ECF74A30, &unk_1E471EB10);
  v50 = v17;
  v37 = (*(v17 + 48))(v15, 1, v16);
  if (v37 == 1)
  {
    sub_1E465E050(v15, &qword_1ECF74A30, &unk_1E471EB10);
    v38 = v16;
  }

  else
  {
    sub_1E46D48B4(v15, v24, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_1E46D48B4(v24, v20, type metadata accessor for PBPropertyValue.OneOf_Params);
    v38 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E465E050(v32, &qword_1ECF757B8, &qword_1E471FB50);
      v39 = v20;
      v40 = v53;
      sub_1E46D48B4(v39, v53, type metadata accessor for PBPropertySingleFloatParam);
      sub_1E46D48B4(v40, v32, type metadata accessor for PBPropertySingleFloatParam);
      v41 = v57;
      v35(v32, 0, 1, v57);
      goto LABEL_7;
    }

    sub_1E46D4D18(v20, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v41 = v57;
LABEL_7:
  v42 = v55;
  sub_1E46E0828(&qword_1ECF756B8, type metadata accessor for PBPropertySingleFloatParam, &protocol conformance descriptor for PBPropertySingleFloatParam);
  v43 = v56;
  sub_1E4709F9C();
  if (v43)
  {
    return sub_1E465E050(v32, &qword_1ECF757B8, &qword_1E471FB50);
  }

  sub_1E465E0B0(v32, v42, &qword_1ECF757B8, &qword_1E471FB50);
  if ((*(v54 + 48))(v42, 1, v41) == 1)
  {
    sub_1E465E050(v32, &qword_1ECF757B8, &qword_1E471FB50);
    return sub_1E465E050(v42, &qword_1ECF757B8, &qword_1E471FB50);
  }

  else
  {
    v45 = v52;
    sub_1E46D48B4(v42, v52, type metadata accessor for PBPropertySingleFloatParam);
    if (v37 != 1)
    {
      sub_1E4709F1C();
    }

    sub_1E465E050(v32, &qword_1ECF757B8, &qword_1E471FB50);
    v46 = v51;
    v47 = v49;
    sub_1E465E050(v51 + v49, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v45, v46 + v47, type metadata accessor for PBPropertySingleFloatParam);
    swift_storeEnumTagMultiPayload();
    return (*(v50 + 56))(v46 + v47, 0, 1, v38);
  }
}

uint64_t sub_1E46DB124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v58 = a2;
  v59 = a3;
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  v6 = *(Params - 8);
  MEMORY[0x1EEE9AC00](Params, v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v53 = &v48 - v11;
  v12 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v48 - v23;
  v25 = sub_1E4650534(&qword_1ECF757C0, &qword_1E471FB58);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v55 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v48 - v31;
  v54 = v6;
  v33 = *(v6 + 56);
  v57 = Params;
  v34 = Params;
  v35 = v33;
  (v33)(&v48 - v31, 1, 1, v34, v30);
  v36 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v51 = a1;
  v49 = v36;
  sub_1E465E0B0(a1 + v36, v15, &qword_1ECF74A30, &unk_1E471EB10);
  v50 = v17;
  v37 = (*(v17 + 48))(v15, 1, v16);
  if (v37 == 1)
  {
    sub_1E465E050(v15, &qword_1ECF74A30, &unk_1E471EB10);
    v38 = v16;
  }

  else
  {
    sub_1E46D48B4(v15, v24, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_1E46D48B4(v24, v20, type metadata accessor for PBPropertyValue.OneOf_Params);
    v38 = v16;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1E465E050(v32, &qword_1ECF757C0, &qword_1E471FB58);
      v39 = v20;
      v40 = v53;
      sub_1E46D48B4(v39, v53, type metadata accessor for PBPropertyBookReadParams);
      sub_1E46D48B4(v40, v32, type metadata accessor for PBPropertyBookReadParams);
      v41 = v57;
      v35(v32, 0, 1, v57);
      goto LABEL_7;
    }

    sub_1E46D4D18(v20, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v41 = v57;
LABEL_7:
  v42 = v55;
  sub_1E46E0828(&qword_1ECF756D0, type metadata accessor for PBPropertyBookReadParams, &protocol conformance descriptor for PBPropertyBookReadParams);
  v43 = v56;
  sub_1E4709F9C();
  if (v43)
  {
    return sub_1E465E050(v32, &qword_1ECF757C0, &qword_1E471FB58);
  }

  sub_1E465E0B0(v32, v42, &qword_1ECF757C0, &qword_1E471FB58);
  if ((*(v54 + 48))(v42, 1, v41) == 1)
  {
    sub_1E465E050(v32, &qword_1ECF757C0, &qword_1E471FB58);
    return sub_1E465E050(v42, &qword_1ECF757C0, &qword_1E471FB58);
  }

  else
  {
    v45 = v52;
    sub_1E46D48B4(v42, v52, type metadata accessor for PBPropertyBookReadParams);
    if (v37 != 1)
    {
      sub_1E4709F1C();
    }

    sub_1E465E050(v32, &qword_1ECF757C0, &qword_1E471FB58);
    v46 = v51;
    v47 = v49;
    sub_1E465E050(v51 + v49, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v45, v46 + v47, type metadata accessor for PBPropertyBookReadParams);
    swift_storeEnumTagMultiPayload();
    return (*(v50 + 56))(v46 + v47, 0, 1, v38);
  }
}

uint64_t sub_1E46DB6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v58 = a2;
  v59 = a3;
  v5 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v53 = &v48 - v11;
  v12 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v48 - v23;
  v25 = sub_1E4650534(&qword_1ECF757C8, &qword_1E471FB60);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v55 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v48 - v31;
  v54 = v6;
  v33 = *(v6 + 56);
  v57 = v5;
  v34 = v5;
  v35 = v33;
  (v33)(&v48 - v31, 1, 1, v34, v30);
  v36 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v51 = a1;
  v49 = v36;
  sub_1E465E0B0(a1 + v36, v15, &qword_1ECF74A30, &unk_1E471EB10);
  v50 = v17;
  v37 = (*(v17 + 48))(v15, 1, v16);
  if (v37 == 1)
  {
    sub_1E465E050(v15, &qword_1ECF74A30, &unk_1E471EB10);
    v38 = v16;
  }

  else
  {
    sub_1E46D48B4(v15, v24, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_1E46D48B4(v24, v20, type metadata accessor for PBPropertyValue.OneOf_Params);
    v38 = v16;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1E465E050(v32, &qword_1ECF757C8, &qword_1E471FB60);
      v39 = v20;
      v40 = v53;
      sub_1E46D48B4(v39, v53, type metadata accessor for PBPropertyMarkedAsFinishedParam);
      sub_1E46D48B4(v40, v32, type metadata accessor for PBPropertyMarkedAsFinishedParam);
      v41 = v57;
      v35(v32, 0, 1, v57);
      goto LABEL_7;
    }

    sub_1E46D4D18(v20, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v41 = v57;
LABEL_7:
  v42 = v55;
  sub_1E46E0828(&qword_1ECF75700, type metadata accessor for PBPropertyMarkedAsFinishedParam, &protocol conformance descriptor for PBPropertyMarkedAsFinishedParam);
  v43 = v56;
  sub_1E4709F9C();
  if (v43)
  {
    return sub_1E465E050(v32, &qword_1ECF757C8, &qword_1E471FB60);
  }

  sub_1E465E0B0(v32, v42, &qword_1ECF757C8, &qword_1E471FB60);
  if ((*(v54 + 48))(v42, 1, v41) == 1)
  {
    sub_1E465E050(v32, &qword_1ECF757C8, &qword_1E471FB60);
    return sub_1E465E050(v42, &qword_1ECF757C8, &qword_1E471FB60);
  }

  else
  {
    v45 = v52;
    sub_1E46D48B4(v42, v52, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    if (v37 != 1)
    {
      sub_1E4709F1C();
    }

    sub_1E465E050(v32, &qword_1ECF757C8, &qword_1E471FB60);
    v46 = v51;
    v47 = v49;
    sub_1E465E050(v51 + v49, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v45, v46 + v47, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    swift_storeEnumTagMultiPayload();
    return (*(v50 + 56))(v46 + v47, 0, 1, v38);
  }
}

uint64_t sub_1E46DBCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v58 = a2;
  v59 = a3;
  v5 = type metadata accessor for PBPropertyBookImpressionParam(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v53 = &v48 - v11;
  v12 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v48 - v23;
  v25 = sub_1E4650534(&qword_1ECF757D0, &qword_1E471FB68);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v55 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v48 - v31;
  v54 = v6;
  v33 = *(v6 + 56);
  v57 = v5;
  v34 = v5;
  v35 = v33;
  (v33)(&v48 - v31, 1, 1, v34, v30);
  v36 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v51 = a1;
  v49 = v36;
  sub_1E465E0B0(a1 + v36, v15, &qword_1ECF74A30, &unk_1E471EB10);
  v50 = v17;
  v37 = (*(v17 + 48))(v15, 1, v16);
  if (v37 == 1)
  {
    sub_1E465E050(v15, &qword_1ECF74A30, &unk_1E471EB10);
    v38 = v16;
  }

  else
  {
    sub_1E46D48B4(v15, v24, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_1E46D48B4(v24, v20, type metadata accessor for PBPropertyValue.OneOf_Params);
    v38 = v16;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1E465E050(v32, &qword_1ECF757D0, &qword_1E471FB68);
      v39 = v20;
      v40 = v53;
      sub_1E46D48B4(v39, v53, type metadata accessor for PBPropertyBookImpressionParam);
      sub_1E46D48B4(v40, v32, type metadata accessor for PBPropertyBookImpressionParam);
      v41 = v57;
      v35(v32, 0, 1, v57);
      goto LABEL_7;
    }

    sub_1E46D4D18(v20, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v41 = v57;
LABEL_7:
  v42 = v55;
  sub_1E46E0828(&qword_1ECF756E8, type metadata accessor for PBPropertyBookImpressionParam, &protocol conformance descriptor for PBPropertyBookImpressionParam);
  v43 = v56;
  sub_1E4709F9C();
  if (v43)
  {
    return sub_1E465E050(v32, &qword_1ECF757D0, &qword_1E471FB68);
  }

  sub_1E465E0B0(v32, v42, &qword_1ECF757D0, &qword_1E471FB68);
  if ((*(v54 + 48))(v42, 1, v41) == 1)
  {
    sub_1E465E050(v32, &qword_1ECF757D0, &qword_1E471FB68);
    return sub_1E465E050(v42, &qword_1ECF757D0, &qword_1E471FB68);
  }

  else
  {
    v45 = v52;
    sub_1E46D48B4(v42, v52, type metadata accessor for PBPropertyBookImpressionParam);
    if (v37 != 1)
    {
      sub_1E4709F1C();
    }

    sub_1E465E050(v32, &qword_1ECF757D0, &qword_1E471FB68);
    v46 = v51;
    v47 = v49;
    sub_1E465E050(v51 + v49, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v45, v46 + v47, type metadata accessor for PBPropertyBookImpressionParam);
    swift_storeEnumTagMultiPayload();
    return (*(v50 + 56))(v46 + v47, 0, 1, v38);
  }
}

uint64_t PBPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  result = sub_1E46DC4CC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1E46DC6E8(v3, a1, a2, a3);
    if (*v3)
    {
      sub_1E470A02C();
    }

    v14 = type metadata accessor for PBPropertyValue(0);
    sub_1E465E0B0(v5 + *(v14 + 20), v12, &qword_1ECF74A30, &unk_1E471EB10);
    v15 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
    if ((*(*(v15 - 8) + 48))(v12, 1, v15) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_1E46DC9A0(v5, a1, a2, a3);
        }

        else
        {
          sub_1E46DC760(v5, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_1E46DCBE4(v5, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_1E46DCE28(v5, a1, a2, a3);
      }

      else
      {
        sub_1E46DD06C(v5, a1, a2, a3);
      }

      sub_1E46D4D18(v12, type metadata accessor for PBPropertyValue.OneOf_Params);
    }

    return sub_1E4709E8C();
  }

  return result;
}

uint64_t sub_1E46DC4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1E4709E7C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v14 + 28), v8, &qword_1ECF74A38, &unk_1E471EB00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1E465E050(v8, &qword_1ECF74A38, &unk_1E471EB00);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1E46E0828(&qword_1ECF75638, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1E470A05C();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1E46DC6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PBPropertyValue(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_1E470A03C();
  }

  return result;
}

uint64_t sub_1E46DC760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPropertyNoParams(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v13 + 20), v8, &qword_1ECF74A30, &unk_1E471EB10);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1E46D48B4(v8, v12, type metadata accessor for PBPropertyNoParams);
    sub_1E46E0828(&qword_1ECF756A0, type metadata accessor for PBPropertyNoParams, &protocol conformance descriptor for PBPropertyNoParams);
    sub_1E470A05C();
    return sub_1E46D4D18(v12, type metadata accessor for PBPropertyNoParams);
  }

  result = sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_1E46DC9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPropertySingleFloatParam(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v13 + 20), v8, &qword_1ECF74A30, &unk_1E471EB10);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E46D48B4(v8, v12, type metadata accessor for PBPropertySingleFloatParam);
    sub_1E46E0828(&qword_1ECF756B8, type metadata accessor for PBPropertySingleFloatParam, &protocol conformance descriptor for PBPropertySingleFloatParam);
    sub_1E470A05C();
    return sub_1E46D4D18(v12, type metadata accessor for PBPropertySingleFloatParam);
  }

  result = sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_1E46DCBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  MEMORY[0x1EEE9AC00](Params, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v13 + 20), v8, &qword_1ECF74A30, &unk_1E471EB10);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1E46D48B4(v8, v12, type metadata accessor for PBPropertyBookReadParams);
    sub_1E46E0828(&qword_1ECF756D0, type metadata accessor for PBPropertyBookReadParams, &protocol conformance descriptor for PBPropertyBookReadParams);
    sub_1E470A05C();
    return sub_1E46D4D18(v12, type metadata accessor for PBPropertyBookReadParams);
  }

  result = sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_1E46DCE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v13 + 20), v8, &qword_1ECF74A30, &unk_1E471EB10);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1E46D48B4(v8, v12, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    sub_1E46E0828(&qword_1ECF75700, type metadata accessor for PBPropertyMarkedAsFinishedParam, &protocol conformance descriptor for PBPropertyMarkedAsFinishedParam);
    sub_1E470A05C();
    return sub_1E46D4D18(v12, type metadata accessor for PBPropertyMarkedAsFinishedParam);
  }

  result = sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_1E46DD06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPropertyBookImpressionParam(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v13 + 20), v8, &qword_1ECF74A30, &unk_1E471EB10);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1E46D48B4(v8, v12, type metadata accessor for PBPropertyBookImpressionParam);
    sub_1E46E0828(&qword_1ECF756E8, type metadata accessor for PBPropertyBookImpressionParam, &protocol conformance descriptor for PBPropertyBookImpressionParam);
    sub_1E470A05C();
    return sub_1E46D4D18(v12, type metadata accessor for PBPropertyBookImpressionParam);
  }

  result = sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_1E46DD2FC@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = a1[5];
  v5 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v6 = a1[7];
  v7 = sub_1E4709E7C();
  result = (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v9 = &a2[a1[8]];
  *v9 = 0;
  *(v9 + 1) = 0;
  return result;
}

uint64_t sub_1E46DD420(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75750, type metadata accessor for PBPropertyValue, &protocol conformance descriptor for PBPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46DD4C0(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF75630, type metadata accessor for PBPropertyValue, &protocol conformance descriptor for PBPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46DD52C(uint64_t a1, uint64_t a2)
{
  sub_1E46E0828(&qword_1ECF75630, type metadata accessor for PBPropertyValue, &protocol conformance descriptor for PBPropertyValue);

  return sub_1E4709FEC();
}

uint64_t sub_1E46DD5C8()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF755B8);
  sub_1E4665EC4(v0, qword_1ECF755B8);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v1 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E471EAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "configuration";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1E470A06C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyValues";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "deletedPropertyValueTimestamps";
  *(v11 + 8) = 30;
  *(v11 + 16) = 2;
  v9();
  return sub_1E470A07C();
}

uint64_t PBPropertyBundle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1E4709F0C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for PBPropertyValue(0);
        sub_1E46E0828(&qword_1ECF75630, type metadata accessor for PBPropertyValue, &protocol conformance descriptor for PBPropertyValue);
LABEL_12:
        sub_1E4709F8C();
        goto LABEL_4;
      }

      if (result == 1)
      {
        sub_1E46DD964(a1, v5, a2, a3);
      }

LABEL_4:
      result = sub_1E4709F0C();
    }

    sub_1E4709E7C();
    sub_1E46E0828(&qword_1ECF75638, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1E46DD964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBPropertyBundle(0);
  type metadata accessor for PBPropertyConfiguration(0);
  sub_1E46E0828(&qword_1ECF75688, type metadata accessor for PBPropertyConfiguration, &protocol conformance descriptor for PBPropertyConfiguration);
  return sub_1E4709F9C();
}

uint64_t PBPropertyBundle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E46DDB90(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for PBPropertyValue(0);
      sub_1E46E0828(&qword_1ECF75630, type metadata accessor for PBPropertyValue, &protocol conformance descriptor for PBPropertyValue);
      sub_1E470A04C();
    }

    if (*(v3[1] + 16))
    {
      sub_1E4709E7C();
      sub_1E46E0828(&qword_1ECF75638, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
      sub_1E470A04C();
    }

    type metadata accessor for PBPropertyBundle(0);
    return sub_1E4709E8C();
  }

  return result;
}

uint64_t sub_1E46DDB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPropertyConfiguration(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBPropertyBundle(0);
  sub_1E465E0B0(a1 + *(v14 + 28), v8, &qword_1ECF74A28, &unk_1E471E790);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1E465E050(v8, &qword_1ECF74A28, &unk_1E471E790);
  }

  sub_1E46D48B4(v8, v13, type metadata accessor for PBPropertyConfiguration);
  sub_1E46E0828(&qword_1ECF75688, type metadata accessor for PBPropertyConfiguration, &protocol conformance descriptor for PBPropertyConfiguration);
  sub_1E470A05C();
  return sub_1E46D4D18(v13, type metadata accessor for PBPropertyConfiguration);
}

uint64_t sub_1E46DDDF8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v5;
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v6 = *(a1 + 28);
  v7 = type metadata accessor for PBPropertyConfiguration(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1E46DDEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E46DDF14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1E46DDFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75748, type metadata accessor for PBPropertyBundle, &protocol conformance descriptor for PBPropertyBundle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46DE058(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF75648, type metadata accessor for PBPropertyBundle, &protocol conformance descriptor for PBPropertyBundle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46DE0C4(uint64_t a1, uint64_t a2)
{
  sub_1E46E0828(&qword_1ECF75648, type metadata accessor for PBPropertyBundle, &protocol conformance descriptor for PBPropertyBundle);

  return sub_1E4709FEC();
}

uint64_t sub_1E46DE160()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF755D0);
  sub_1E4665EC4(v0, qword_1ECF755D0);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v1 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E471B800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startOfTimeSlice";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1E470A06C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyBundles";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1E470A07C();
}

uint64_t sub_1E46DE34C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1E470A09C();
  v7 = sub_1E4665EC4(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t PBPropertyTimeSlice.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1E4709F0C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1E46DE4E4(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for PBPropertyBundle(0);
        sub_1E46E0828(&qword_1ECF75648, type metadata accessor for PBPropertyBundle, &protocol conformance descriptor for PBPropertyBundle);
        sub_1E4709F8C();
      }

      result = sub_1E4709F0C();
    }
  }

  return result;
}

uint64_t sub_1E46DE4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBPropertyTimeSlice(0);
  sub_1E4709E7C();
  sub_1E46E0828(&qword_1ECF75638, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1E4709F9C();
}

uint64_t PBPropertyTimeSlice.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E46DE694(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for PBPropertyBundle(0);
      sub_1E46E0828(&qword_1ECF75648, type metadata accessor for PBPropertyBundle, &protocol conformance descriptor for PBPropertyBundle);
      sub_1E470A04C();
    }

    type metadata accessor for PBPropertyTimeSlice(0);
    return sub_1E4709E8C();
  }

  return result;
}

uint64_t sub_1E46DE694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1E4709E7C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_1E465E0B0(a1 + *(v14 + 24), v8, &qword_1ECF74A38, &unk_1E471EB00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1E465E050(v8, &qword_1ECF74A38, &unk_1E471EB00);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1E46E0828(&qword_1ECF75638, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1E470A05C();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1E46DE8FC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1E470B8FC();
  a1(0);
  sub_1E46E0828(a2, a3, a4);
  sub_1E470AECC();
  return sub_1E470B91C();
}

uint64_t sub_1E46DE984@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v5 = *(a1 + 24);
  v6 = sub_1E4709E7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1E46DEA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E46DEAA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1E46DEB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75740, type metadata accessor for PBPropertyTimeSlice, &protocol conformance descriptor for PBPropertyTimeSlice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46DEBE4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1E470A09C();
  v7 = sub_1E4665EC4(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1E46DEC80(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF75068, type metadata accessor for PBPropertyTimeSlice, &protocol conformance descriptor for PBPropertyTimeSlice);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46DECEC(uint64_t a1, uint64_t a2)
{
  sub_1E470B8FC();
  sub_1E470AECC();
  return sub_1E470B91C();
}

uint64_t sub_1E46DED44(uint64_t a1, uint64_t a2)
{
  sub_1E46E0828(&qword_1ECF75068, type metadata accessor for PBPropertyTimeSlice, &protocol conformance descriptor for PBPropertyTimeSlice);

  return sub_1E4709FEC();
}

uint64_t sub_1E46DEDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E470B8FC();
  sub_1E470AECC();
  return sub_1E470B91C();
}

uint64_t _s13BookDataStore31PBPropertyMarkedAsFinishedParamV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

LABEL_7:
      type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
      sub_1E4709EAC();
      sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return sub_1E470AEFC() & 1;
    }

    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t _s13BookDataStore19PBPropertyTimeSliceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2, double a3)
{
  v5 = sub_1E4709E7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26 - v11;
  v13 = sub_1E4650534(&qword_1ECF75788, &qword_1E471FB20);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - v16;
  v26 = type metadata accessor for PBPropertyTimeSlice(0);
  v18 = *(v26 + 24);
  v19 = *(v14 + 56);
  v28 = a1;
  sub_1E465E0B0(a1 + v18, v17, &qword_1ECF74A38, &unk_1E471EB00);
  v29 = a2;
  sub_1E465E0B0(a2 + v18, &v17[v19], &qword_1ECF74A38, &unk_1E471EB00);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) == 1)
  {
    if (v20(&v17[v19], 1, v5) == 1)
    {
      sub_1E465E050(v17, &qword_1ECF74A38, &unk_1E471EB00);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1E465E0B0(v17, v12, &qword_1ECF74A38, &unk_1E471EB00);
  if (v20(&v17[v19], 1, v5) == 1)
  {
    (*(v6 + 8))(v12, v5);
LABEL_6:
    sub_1E465E050(v17, &qword_1ECF75788, &qword_1E471FB20);
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  v21 = v27;
  (*(v6 + 32))(v27, &v17[v19], v5);
  sub_1E46E0828(&qword_1ECF75070, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
  v22 = sub_1E470AEFC();
  v23 = *(v6 + 8);
  v23(v21, v5);
  v23(v12, v5);
  sub_1E465E050(v17, &qword_1ECF74A38, &unk_1E471EB00);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_1E46D17E4(*v28, *v29) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v24 = sub_1E470AEFC();
  return v24 & 1;
}

uint64_t _s13BookDataStore23PBPropertyConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_1E470B84C();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  type metadata accessor for PBPropertyConfiguration(0);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1E470AEFC() & 1;
}

uint64_t _s13BookDataStore16PBPropertyBundleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBPropertyConfiguration(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v28 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v26 - v10);
  v12 = sub_1E4650534(&qword_1ECF75798, &qword_1E471FB30);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v26 - v15;
  v27 = type metadata accessor for PBPropertyBundle(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_1E465E0B0(a1 + v17, v16, &qword_1ECF74A28, &unk_1E471E790);
  sub_1E465E0B0(a2 + v17, &v16[v18], &qword_1ECF74A28, &unk_1E471E790);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1E465E0B0(v16, v11, &qword_1ECF74A28, &unk_1E471E790);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_1E46D48B4(&v16[v18], v28, type metadata accessor for PBPropertyConfiguration);
      v21 = _s13BookDataStore23PBPropertyConfigurationV2eeoiySbAC_ACtFZ_0(v11, v20);
      sub_1E46D4D18(v20, type metadata accessor for PBPropertyConfiguration);
      sub_1E46D4D18(v11, type metadata accessor for PBPropertyConfiguration);
      sub_1E465E050(v16, &qword_1ECF74A28, &unk_1E471E790);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_11:
      v24 = 0;
      return v24 & 1;
    }

    sub_1E46D4D18(v11, type metadata accessor for PBPropertyConfiguration);
LABEL_6:
    sub_1E465E050(v16, &qword_1ECF75798, &qword_1E471FB30);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1E465E050(v16, &qword_1ECF74A28, &unk_1E471E790);
LABEL_8:
  v22 = v29;
  if ((sub_1E46D28B4(*v29, *a2) & 1) == 0 || (sub_1E46D2A6C(v22[1], a2[1], v23) & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v24 = sub_1E470AEFC();
  return v24 & 1;
}

uint64_t _s13BookDataStore15PBPropertyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v55 = &v53 - v9;
  v56 = sub_1E4650534(&qword_1ECF75790, &qword_1E471FB28);
  MEMORY[0x1EEE9AC00](v56, v10);
  v59 = &v53 - v11;
  v12 = sub_1E4709E7C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v60 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v53 - v18;
  v20 = sub_1E4650534(&qword_1ECF75788, &qword_1E471FB20);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v53 - v23;
  v61 = type metadata accessor for PBPropertyValue(0);
  v62 = a1;
  v25 = *(v61 + 28);
  v26 = *(v21 + 56);
  sub_1E465E0B0(a1 + v25, v24, &qword_1ECF74A38, &unk_1E471EB00);
  sub_1E465E0B0(a2 + v25, &v24[v26], &qword_1ECF74A38, &unk_1E471EB00);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) == 1)
  {
    if (v27(&v24[v26], 1, v12) == 1)
    {
      sub_1E465E050(v24, &qword_1ECF74A38, &unk_1E471EB00);
      goto LABEL_11;
    }

LABEL_6:
    v28 = &qword_1ECF75788;
    v29 = &qword_1E471FB20;
LABEL_7:
    sub_1E465E050(v24, v28, v29);
    goto LABEL_8;
  }

  sub_1E465E0B0(v24, v19, &qword_1ECF74A38, &unk_1E471EB00);
  if (v27(&v24[v26], 1, v12) == 1)
  {
    (*(v13 + 8))(v19, v12);
    goto LABEL_6;
  }

  v32 = &v24[v26];
  v33 = v60;
  (*(v13 + 32))(v60, v32, v12);
  sub_1E46E0828(&qword_1ECF75070, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
  v34 = sub_1E470AEFC();
  v35 = *(v13 + 8);
  v35(v33, v12);
  v35(v19, v12);
  sub_1E465E050(v24, &qword_1ECF74A38, &unk_1E471EB00);
  if ((v34 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v37 = v61;
  v36 = v62;
  v38 = *(v61 + 32);
  v39 = (v62 + v38);
  v40 = *(v62 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_1E470B84C() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v42)
  {
    goto LABEL_8;
  }

  if (*v36 != *a2)
  {
    goto LABEL_8;
  }

  v43 = *(v37 + 20);
  v44 = *(v56 + 48);
  v45 = v59;
  sub_1E465E0B0(v36 + v43, v59, &qword_1ECF74A30, &unk_1E471EB10);
  v46 = a2 + v43;
  v24 = v45;
  sub_1E465E0B0(v46, v45 + v44, &qword_1ECF74A30, &unk_1E471EB10);
  v47 = v58;
  v48 = *(v57 + 48);
  if (v48(v45, 1, v58) == 1)
  {
    if (v48(v45 + v44, 1, v47) == 1)
    {
      sub_1E465E050(v45, &qword_1ECF74A30, &unk_1E471EB10);
LABEL_26:
      sub_1E4709EAC();
      sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v30 = sub_1E470AEFC();
      return v30 & 1;
    }

    goto LABEL_24;
  }

  v49 = v55;
  sub_1E465E0B0(v24, v55, &qword_1ECF74A30, &unk_1E471EB10);
  if (v48(&v24[v44], 1, v47) == 1)
  {
    sub_1E46D4D18(v49, type metadata accessor for PBPropertyValue.OneOf_Params);
LABEL_24:
    v28 = &qword_1ECF75790;
    v29 = &qword_1E471FB28;
    goto LABEL_7;
  }

  v50 = &v24[v44];
  v51 = v54;
  sub_1E46D48B4(v50, v54, type metadata accessor for PBPropertyValue.OneOf_Params);
  v52 = _s13BookDataStore15PBPropertyValueV12OneOf_ParamsO2eeoiySbAE_AEtFZ_0(v49, v51);
  sub_1E46D4D18(v51, type metadata accessor for PBPropertyValue.OneOf_Params);
  sub_1E46D4D18(v49, type metadata accessor for PBPropertyValue.OneOf_Params);
  sub_1E465E050(v24, &qword_1ECF74A30, &unk_1E471EB10);
  if (v52)
  {
    goto LABEL_26;
  }

LABEL_8:
  v30 = 0;
  return v30 & 1;
}

uint64_t _s13BookDataStore15PBPropertyValueV12OneOf_ParamsO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v70 = a2;
  v63 = type metadata accessor for PBPropertyBookImpressionParam(0);
  MEMORY[0x1EEE9AC00](v63, v2);
  v65 = &Params - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  MEMORY[0x1EEE9AC00](v62, v4);
  v66 = &Params - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  MEMORY[0x1EEE9AC00](Params, v6);
  v64 = (&Params - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PBPropertySingleFloatParam(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&Params - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PBPropertyNoParams(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &Params - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v67 = (&Params - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v20);
  v68 = (&Params - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&Params - v24);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = (&Params - v28);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &Params - v32;
  v34 = sub_1E4650534(&qword_1ECF757D8, &unk_1E471FB70);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &Params - v36;
  v39 = *(v38 + 56);
  sub_1E46D52FC(v69, &Params - v36, type metadata accessor for PBPropertyValue.OneOf_Params);
  sub_1E46D52FC(v70, &v37[v39], type metadata accessor for PBPropertyValue.OneOf_Params);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1E46D52FC(v37, v25, type metadata accessor for PBPropertyValue.OneOf_Params);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v46 = v64;
        sub_1E46D48B4(&v37[v39], v64, type metadata accessor for PBPropertyBookReadParams);
        if (*v25 == *v46 && v25[1] == v46[1])
        {
          sub_1E4709EAC();
          sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v47 = sub_1E470AEFC();
          sub_1E46D4D18(v46, type metadata accessor for PBPropertyBookReadParams);
          if (v47)
          {
            v48 = type metadata accessor for PBPropertyBookReadParams;
            goto LABEL_39;
          }
        }

        else
        {
          sub_1E46D4D18(v46, type metadata accessor for PBPropertyBookReadParams);
        }

        v55 = type metadata accessor for PBPropertyBookReadParams;
LABEL_47:
        v58 = v55;
        v59 = v25;
        goto LABEL_48;
      }

      v53 = type metadata accessor for PBPropertyBookReadParams;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v25 = v68;
        sub_1E46D52FC(v37, v68, type metadata accessor for PBPropertyValue.OneOf_Params);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v41 = v66;
          sub_1E46D48B4(&v37[v39], v66, type metadata accessor for PBPropertyMarkedAsFinishedParam);
          v42 = *v25;
          v43 = *v41;
          if (*(v41 + 8) == 1)
          {
            if (v43)
            {
              if (v43 == 1)
              {
                if (v42 != 1)
                {
                  goto LABEL_45;
                }
              }

              else if (v42 != 2)
              {
                goto LABEL_45;
              }

              goto LABEL_35;
            }

            if (v42)
            {
LABEL_45:
              sub_1E46D4D18(v41, type metadata accessor for PBPropertyMarkedAsFinishedParam);
              goto LABEL_46;
            }
          }

          else if (v42 != v43)
          {
            goto LABEL_45;
          }

LABEL_35:
          sub_1E4709EAC();
          sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v56 = sub_1E470AEFC();
          sub_1E46D4D18(v41, type metadata accessor for PBPropertyMarkedAsFinishedParam);
          if ((v56 & 1) == 0)
          {
LABEL_46:
            v55 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
            goto LABEL_47;
          }

          v48 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
          goto LABEL_39;
        }

        v53 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
        goto LABEL_28;
      }

      v25 = v67;
      sub_1E46D52FC(v37, v67, type metadata accessor for PBPropertyValue.OneOf_Params);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v49 = v65;
        sub_1E46D48B4(&v37[v39], v65, type metadata accessor for PBPropertyBookImpressionParam);
        if (*v25 != *v49)
        {
          sub_1E46D4D18(v49, type metadata accessor for PBPropertyBookImpressionParam);
LABEL_41:
          v55 = type metadata accessor for PBPropertyBookImpressionParam;
          goto LABEL_47;
        }

        sub_1E4709EAC();
        sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v57 = sub_1E470AEFC();
        sub_1E46D4D18(v49, type metadata accessor for PBPropertyBookImpressionParam);
        if ((v57 & 1) == 0)
        {
          goto LABEL_41;
        }

        v48 = type metadata accessor for PBPropertyBookImpressionParam;
LABEL_39:
        v51 = v48;
        v52 = v25;
        goto LABEL_40;
      }

      v53 = type metadata accessor for PBPropertyBookImpressionParam;
    }

LABEL_28:
    v44 = v53;
    v45 = v25;
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1E46D52FC(v37, v29, type metadata accessor for PBPropertyValue.OneOf_Params);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E46D48B4(&v37[v39], v11, type metadata accessor for PBPropertySingleFloatParam);
      if (*v29 == *v11)
      {
        sub_1E4709EAC();
        sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v50 = sub_1E470AEFC();
        sub_1E46D4D18(v11, type metadata accessor for PBPropertySingleFloatParam);
        if (v50)
        {
          v51 = type metadata accessor for PBPropertySingleFloatParam;
          v52 = v29;
LABEL_40:
          sub_1E46D4D18(v52, v51);
          sub_1E46D4D18(v37, type metadata accessor for PBPropertyValue.OneOf_Params);
          v54 = 1;
          return v54 & 1;
        }
      }

      else
      {
        sub_1E46D4D18(v11, type metadata accessor for PBPropertySingleFloatParam);
      }

      v58 = type metadata accessor for PBPropertySingleFloatParam;
      v59 = v29;
LABEL_48:
      sub_1E46D4D18(v59, v58);
      sub_1E46D4D18(v37, type metadata accessor for PBPropertyValue.OneOf_Params);
      goto LABEL_49;
    }

    v44 = type metadata accessor for PBPropertySingleFloatParam;
    v45 = v29;
LABEL_30:
    sub_1E46D4D18(v45, v44);
    sub_1E465E050(v37, &qword_1ECF757D8, &unk_1E471FB70);
LABEL_49:
    v54 = 0;
    return v54 & 1;
  }

  sub_1E46D52FC(v37, v33, type metadata accessor for PBPropertyValue.OneOf_Params);
  if (swift_getEnumCaseMultiPayload())
  {
    v44 = type metadata accessor for PBPropertyNoParams;
    v45 = v33;
    goto LABEL_30;
  }

  sub_1E46D48B4(&v37[v39], v15, type metadata accessor for PBPropertyNoParams);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v54 = sub_1E470AEFC();
  sub_1E46D4D18(v15, type metadata accessor for PBPropertyNoParams);
  sub_1E46D4D18(v33, type metadata accessor for PBPropertyNoParams);
  sub_1E46D4D18(v37, type metadata accessor for PBPropertyValue.OneOf_Params);
  return v54 & 1;
}

uint64_t sub_1E46E0828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E46E0870()
{
  result = qword_1ECF75618;
  if (!qword_1ECF75618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75618);
  }

  return result;
}

unint64_t sub_1E46E08C8()
{
  result = qword_1ECF75658;
  if (!qword_1ECF75658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75658);
  }

  return result;
}

unint64_t sub_1E46E0920()
{
  result = qword_1ECF75660;
  if (!qword_1ECF75660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75660);
  }

  return result;
}

unint64_t sub_1E46E0978()
{
  result = qword_1ECF75668;
  if (!qword_1ECF75668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75668);
  }

  return result;
}

unint64_t sub_1E46E09D0()
{
  result = qword_1ECF75670;
  if (!qword_1ECF75670)
  {
    sub_1E46506D0(&qword_1ECF75678, &qword_1E471ED00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75670);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MarkedAsFinishedMechanism(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MarkedAsFinishedMechanism(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MarkedAsFinishedMechanism(uint64_t result, int a2, int a3)
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

uint64_t sub_1E46E14B8(uint64_t a1)
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

uint64_t sub_1E46E14D4(uint64_t result, int a2)
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

uint64_t sub_1E46E152C(uint64_t a1)
{
  result = sub_1E4709EAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E46E15DC(uint64_t a1)
{
  result = sub_1E4709EAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E46E16A4(uint64_t a1)
{
  result = sub_1E4709EAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E46E1770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1E4709EAC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1E46E17FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1E4709EAC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1E46E1884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1E4709EAC();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E46E1920(uint64_t a1)
{
  sub_1E46E1A44(319, qword_1EE2AE050, type metadata accessor for PBPropertyValue.OneOf_Params, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1E4709EAC();
    if (v2 <= 0x3F)
    {
      sub_1E46E1A44(319, &unk_1EE2ACDE8, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E465F064();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E46E1A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1E46E1AF8(uint64_t a1)
{
  result = type metadata accessor for PBPropertyNoParams(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PBPropertySingleFloatParam(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PBPropertyBookReadParams(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for PBPropertyMarkedAsFinishedParam(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for PBPropertyBookImpressionParam(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1E46E1BD0(uint64_t a1)
{
  sub_1E46E1A44(319, &qword_1EE2ACD30, type metadata accessor for PBPropertyValue, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1E46E1A44(319, &qword_1EE2ACD20, MEMORY[0x1E69AA900], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1E4709EAC();
      if (v3 <= 0x3F)
      {
        sub_1E46E1A44(319, qword_1EE2AD540, type metadata accessor for PBPropertyConfiguration, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E46E1D3C(uint64_t a1)
{
  sub_1E46E1A44(319, &qword_1EE2ACD28, type metadata accessor for PBPropertyBundle, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1E4709EAC();
    if (v2 <= 0x3F)
    {
      sub_1E46E1A44(319, &unk_1EE2ACDE8, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for CRDTModelSyncVersion(uint64_t a1)
{
  result = qword_1EE2AD910;
  if (!qword_1EE2AD910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CRDTModelSyncVersion.serializedData()()
{
  v0 = sub_1E470AB3C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRDTModelSyncVersion(0);
  (*(v1 + 104))(v4, *MEMORY[0x1E6995288], v0);
  sub_1E470ADFC();
  v5 = sub_1E470AC4C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t static CRDTModelSyncVersion.== infix(_:_:)(void *a1, void *a2)
{
  sub_1E46E20EC();
  if ((sub_1E470B42C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CRDTModelSyncVersion(0);

  return sub_1E470ADDC();
}

unint64_t sub_1E46E20EC()
{
  result = qword_1EE2ACCC0;
  if (!qword_1EE2ACCC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2ACCC0);
  }

  return result;
}

uint64_t sub_1E46E2138(void *a1, void *a2, uint64_t a3)
{
  sub_1E46E20EC();
  if ((sub_1E470B42C() & 1) == 0)
  {
    return 0;
  }

  return sub_1E470ADDC();
}

uint64_t sub_1E46E2204(uint64_t a1)
{
  result = sub_1E470AD7C();
  if (v2 <= 0x3F)
  {
    result = sub_1E470ADFC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E46E22D0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E466A228;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E45EA6A0(v4, v5);
}

uint64_t sub_1E46E2364(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E46E6038;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 96);
  v9 = *(v7 + 104);
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  sub_1E45EA6A0(v3, v4);
  return sub_1E45EB5D8(v8, v9);
}

uint64_t ReadingGoalsDataStore.onRemoteChange.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  sub_1E45EA6A0(v1, *(v0 + 104));
  return v1;
}

uint64_t ReadingGoalsDataStore.onRemoteChange.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return sub_1E45EB5D8(v5, v6);
}

uint64_t ReadingGoalsDataStore.__allocating_init(localStore:syncStore:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  ReadingGoalsDataStore.init(localStore:syncStore:)(a1, a2);
  return v4;
}

uint64_t ReadingGoalsDataStore.init(localStore:syncStore:)(void *a1, void *a2)
{
  v3 = v2;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  sub_1E4658550(a1, v2 + 16);
  sub_1E4658550(a2, v2 + 56);
  sub_1E465057C(a2, a2[3]);
  DynamicType = swift_getDynamicType();
  v7 = a2[4];
  v8 = [objc_opt_self() defaultCenter];
  v9 = *(v7 + 16);

  v10 = v9(DynamicType, v7);
  v11 = a2[3];
  v12 = sub_1E465057C(a2, v11);
  v13 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12, v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v14);
  v17 = sub_1E470B83C();
  (*(v13 + 8))(v16, v11);
  [v8 addObserver:v3 selector:sel_handleCloudChangeNotification_ name:v10 object:v17];

  swift_unknownObjectRelease();
  v18 = a2[3];
  v19 = a2[4];
  sub_1E465057C(a2, v18);
  if ((*(v19 + 24))(v18, v19))
  {
    v24 = byte_1F5E62458;
    sub_1E46E2834(&v24, a2, a1);
    v24 = byte_1F5E62459;
    sub_1E46E2834(&v24, a2, a1);
  }

  else
  {
    v20 = sub_1E470B2AC();
    if (qword_1EE2ADC90 != -1)
    {
      v22 = v20;
      swift_once();
      v20 = v22;
    }

    sub_1E470A0AC(v20, &dword_1E45E0000, qword_1EE2ADC98, "Goals init: Synchronize failed", 30, 2, MEMORY[0x1E69E7CC0]);
  }

  sub_1E4658A0C(a2);
  sub_1E4658A0C(a1);
  return v3;
}

uint64_t sub_1E46E2834(unsigned __int8 *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2[3];
  v6 = a2[4];
  sub_1E465057C(a2, v5);
  v7 = v4 == 0;
  if (v4)
  {
    v8 = 0xD000000000000016;
  }

  else
  {
    v8 = 0xD00000000000001ALL;
  }

  if (v7)
  {
    v9 = "ReadingGoals.StreakDay";
  }

  else
  {
    v9 = "Goals init: Synchronize failed";
  }

  v10 = v9 | 0x8000000000000000;
  v11 = (*(*(v6 + 8) + 8))(v8, v9 | 0x8000000000000000, v5);

  v12 = a3[3];
  v13 = a3[4];
  sub_1E465057C(a3, v12);
  (*(v13 + 16))(v11, v8, v10, v12, v13);

  v14 = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE2ADC98;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E471B800;
  v17 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1E4663DE4();
  *(v16 + 64) = v18;
  *(v16 + 32) = v8;
  *(v16 + 40) = v10;
  if (v11)
  {
    v21 = sub_1E4650534(&qword_1ECF757F0, &qword_1E471FC10);
    v22 = sub_1E46E5E14();
    *&v20 = v11;
    sub_1E46585B4(&v20, v16 + 72);
  }

  else
  {
    *(v16 + 96) = v17;
    *(v16 + 104) = v18;
    *(v16 + 72) = 7104878;
    *(v16 + 80) = 0xE300000000000000;
  }

  sub_1E470A0AC(v14, &dword_1E45E0000, v15, "Goals init: Got { %@: %@ }", 26, 2, v16);
}

void sub_1E46E2A40()
{
  v1 = v0;
  v2 = sub_1E47099AC();
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = v2;
  v49 = sub_1E470AF1C();
  sub_1E470B56C();
  if (!v3[2] || (v4 = sub_1E4655398(v51), (v5 & 1) == 0))
  {

    sub_1E4658910(v51);
LABEL_25:
    v29 = sub_1E470B2AC();
    if (qword_1EE2ADC90 != -1)
    {
      v46 = v29;
      swift_once();
      v29 = v46;
    }

    sub_1E470A0AC(v29, &dword_1E45E0000, qword_1EE2ADC98, "Goals cloud error: Change notification had invalid user info", 60, 2, MEMORY[0x1E69E7CC0]);
    return;
  }

  sub_1E4658ABC(v3[7] + 32 * v4, v52);
  sub_1E4658910(v51);
  v6 = MEMORY[0x1E69E6530];
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_25;
  }

  v7 = v49;
  v8 = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
LABEL_52:
    swift_once();
  }

  v9 = qword_1EE2ADC98;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E471BA00;
  v11 = MEMORY[0x1E69E65A8];
  *(v10 + 56) = v6;
  *(v10 + 64) = v11;
  *(v10 + 32) = v7;
  sub_1E470A0AC(v8, &dword_1E45E0000, v9, "Goals cloud change with reason %d", v48);

  if (v7 > 1)
  {

    if (v7 == 3)
    {
      v32 = sub_1E470B29C();
      sub_1E470A0AC(v32, &dword_1E45E0000, v9, "Goals cloud account change", 26, 2, MEMORY[0x1E69E7CC0]);
      v33 = byte_1F5E62480;
      v34 = v1[5];
      v35 = v1[6];
      sub_1E465057C(v1 + 2, v34);
      if (v33)
      {
        v36 = 0xD000000000000016;
      }

      else
      {
        v36 = 0xD00000000000001ALL;
      }

      if (v33)
      {
        v37 = "Goals init: Synchronize failed";
      }

      else
      {
        v37 = "ReadingGoals.StreakDay";
      }

      (*(v35 + 16))(0, v36, v37 | 0x8000000000000000, v34, v35);

      v38 = byte_1F5E62481;
      v39 = v1[5];
      v40 = v1[6];
      sub_1E465057C(v1 + 2, v39);
      if (v38)
      {
        v41 = 0xD000000000000016;
      }

      else
      {
        v41 = 0xD00000000000001ALL;
      }

      if (v38)
      {
        v42 = "Goals init: Synchronize failed";
      }

      else
      {
        v42 = "ReadingGoals.StreakDay";
      }

      (*(v40 + 16))(0, v41, v42 | 0x8000000000000000, v39, v40);
    }

    else if (v7 == 2)
    {
      v30 = sub_1E470B2AC();
      sub_1E470A0AC(v30, &dword_1E45E0000, v9, "Goals cloud error: Quota exceeded", 33, 2, MEMORY[0x1E69E7CC0]);
    }

    return;
  }

  v50 = sub_1E470AF1C();
  sub_1E470B56C();
  if (!v3[2] || (v12 = sub_1E4655398(v51), (v13 & 1) == 0))
  {

    sub_1E4658910(v51);
    goto LABEL_34;
  }

  sub_1E4658ABC(v3[7] + 32 * v12, v52);
  sub_1E4658910(v51);

  sub_1E4650534(&qword_1ECF74AA0, &qword_1E471C990);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    v31 = sub_1E470B2AC();
    sub_1E470A0AC(v31, &dword_1E45E0000, v9, "Goals cloud error: Change notification had no keys", 50, 2, MEMORY[0x1E69E7CC0]);
    return;
  }

  v51[0] = MEMORY[0x1E69E7CC0];
  sub_1E467F200(0, 2, 0);
  v14 = v51[0];
  v16 = *(v51[0] + 16);
  v15 = *(v51[0] + 24);
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    sub_1E467F200((v15 > 1), v16 + 1, 1);
    v18 = v16 + 1;
    v14 = v51[0];
    v15 = *(v51[0] + 24);
    v17 = v15 >> 1;
  }

  *(v14 + 16) = v18;
  v19 = v14 + 16 * v16;
  *(v19 + 32) = 0xD00000000000001ALL;
  *(v19 + 40) = 0x80000001E471A110;
  v20 = v16 + 2;
  if (v17 <= v18)
  {
    v47 = v18;
    sub_1E467F200((v15 > 1), v20, 1);
    v18 = v47;
    v14 = v51[0];
  }

  *(v14 + 16) = v20;
  v21 = v14 + 16 * v18;
  *(v21 + 32) = 0xD000000000000016;
  *(v21 + 40) = 0x80000001E471A0F0;
  v6 = sub_1E46E5F38(v14);

  v22 = sub_1E46E5F38(v50);

  v3 = sub_1E46E5500(v22, v6);

  v52[0] = 0;
  v8 = (v3 + 7);
  v23 = 1 << *(v3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v7 = v24 & v3[7];
  v25 = (v23 + 63) >> 6;

  v26 = 0;
  if (v7)
  {
    while (1)
    {
      v27 = v26;
LABEL_22:
      v28 = (v3[6] + ((v27 << 10) | (16 * __clz(__rbit64(v7)))));
      v6 = v28[1];
      v7 &= v7 - 1;
      v51[0] = *v28;
      v51[1] = v6;

      sub_1E46E30AC(v51, v1, v52);

      if (!v7)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
LABEL_18:
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v27 >= v25)
    {
      break;
    }

    v7 = *(v8 + 8 * v27);
    ++v26;
    if (v7)
    {
      v26 = v27;
      goto LABEL_22;
    }
  }

  if (v52[0] == 1)
  {
    swift_beginAccess();
    v43 = v1[12];
    if (v43)
    {
      v44 = v1[13];

      v43(v45);
      sub_1E45EB5D8(v43, v44);
    }
  }
}

uint64_t sub_1E46E30AC(uint64_t *a1, void *a2, _BYTE *a3)
{
  v6 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v68 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v60 - v11;
  v13 = sub_1E4709CCC();
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v67 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v69 = &v60 - v18;
  v20 = *a1;
  v19 = a1[1];
  v21 = a2[5];
  v22 = a2[6];
  sub_1E465057C(a2 + 2, v21);
  v23 = (*(v22 + 8))(v20, v19, v21, v22);
  v24 = a2[10];
  v25 = a2[11];
  sub_1E465057C(a2 + 7, v24);
  v26 = (*(*(v25 + 8) + 8))(v20, v19, v24);
  v27 = v26;
  if (!v23)
  {
LABEL_11:
    v36 = a2[5];
    v37 = a2[6];
    sub_1E465057C(a2 + 2, v36);
    (*(v37 + 16))(v27, v20, v19, v36, v37);

LABEL_13:
    *a3 = 1;
    return result;
  }

  if (!v26)
  {

    v39 = a2[5];
    v40 = a2[6];
    sub_1E465057C(a2 + 2, v39);
    result = (*(v40 + 16))(0, v20, v19, v39, v40);
    goto LABEL_13;
  }

  if (!*(v23 + 16) || (v28 = sub_1E46553DC(1702125924, 0xE400000000000000), (v29 & 1) == 0))
  {

    (*(v70 + 56))(v12, 1, 1, v71);
    goto LABEL_8;
  }

  sub_1E4658ABC(*(v23 + 56) + 32 * v28, v72);
  v30 = v71;
  v31 = swift_dynamicCast();
  v32 = v70;
  v65 = *(v70 + 56);
  v66 = v70 + 56;
  v65(v12, v31 ^ 1u, 1, v30);
  v63 = *(v32 + 48);
  v64 = v32 + 48;
  if (v63(v12, 1, v30) == 1)
  {

LABEL_8:
    sub_1E46E5FD0(v12);
    v33 = sub_1E470B2AC();
    if (qword_1EE2ADC90 != -1)
    {
      swift_once();
    }

    v34 = qword_1EE2ADC98;
    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1E471BA00;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = sub_1E4663DE4();
    *(v35 + 32) = v20;
    *(v35 + 40) = v19;

    sub_1E470A0AC(v33, &dword_1E45E0000, v34, "Goals cloud error: Local dict for key %@ existed with no date", 61, 2, v35);

    goto LABEL_11;
  }

  v61 = *(v32 + 32);
  v62 = v32 + 32;
  v61(v69, v12, v30);
  if (!*(v27 + 16) || (v41 = sub_1E46553DC(1702125924, 0xE400000000000000), (v42 & 1) == 0))
  {

    v43 = v68;
    v65(v68, 1, 1, v30);
    goto LABEL_19;
  }

  sub_1E4658ABC(*(v27 + 56) + 32 * v41, v72);
  v43 = v68;
  v44 = swift_dynamicCast();
  v65(v43, v44 ^ 1u, 1, v30);
  if (v63(v43, 1, v30) == 1)
  {

LABEL_19:
    v45 = v69;
    sub_1E46E5FD0(v43);
    v46 = sub_1E470B2AC();
    if (qword_1EE2ADC90 != -1)
    {
      swift_once();
    }

    v47 = qword_1EE2ADC98;
    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1E471BA00;
    *(v48 + 56) = MEMORY[0x1E69E6158];
    *(v48 + 64) = sub_1E4663DE4();
    *(v48 + 32) = v20;
    *(v48 + 40) = v19;

    sub_1E470A0AC(v46, &dword_1E45E0000, v47, "Goals cloud error: Remote dict for key %@ existed with no date", 62, 2, v48);

    v49 = a2[10];
    v50 = a2[11];
    sub_1E465057C(a2 + 7, v49);
    (*(*(v50 + 8) + 16))(v23, v20, v19, v49);

    return (*(v70 + 8))(v45, v71);
  }

  v61(v67, v43, v30);
  v51 = v69;
  if ((sub_1E4709C6C() & 1) == 0)
  {

    v57 = a2[5];
    v56 = a2[6];
    sub_1E465057C(a2 + 2, v57);
    (*(v56 + 16))(v27, v20, v19, v57, v56);

    v58 = v71;
    v59 = *(v70 + 8);
    v59(v67, v71);
    result = (v59)(v51, v58);
    goto LABEL_13;
  }

  v52 = a2[10];
  v53 = a2[11];
  sub_1E465057C(a2 + 7, v52);
  (*(*(v53 + 8) + 16))(v23, v20, v19, v52);

  v54 = v71;
  v55 = *(v70 + 8);
  v55(v67, v71);
  return (v55)(v51, v54);
}

void *ReadingGoalsDataStore.deinit()
{
  sub_1E4658A0C(v0 + 2);
  sub_1E4658A0C(v0 + 7);
  sub_1E45EB5D8(v0[12], v0[13]);
  return v0;
}

uint64_t ReadingGoalsDataStore.__deallocating_deinit()
{
  sub_1E4658A0C(v0 + 2);
  sub_1E4658A0C(v0 + 7);
  sub_1E45EB5D8(v0[12], v0[13]);

  return swift_deallocClassInstance();
}

uint64_t sub_1E46E3990(char a1, uint64_t a2)
{
  v4 = v2[5];
  v5 = v2[6];
  sub_1E465057C(v2 + 2, v4);
  if (a1)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v7 = "Goals init: Synchronize failed";
  }

  else
  {
    v7 = "ReadingGoals.StreakDay";
  }

  v8 = (*(v5 + 8))(v6, v7 | 0x8000000000000000, v4, v5);

  if (v8)
  {
    if (*(v8 + 16))
    {
      v9 = sub_1E46553DC(1818324839, 0xE400000000000000);
      if (v10)
      {
        sub_1E4658ABC(*(v8 + 56) + 32 * v9, v14);

        goto LABEL_13;
      }
    }
  }

  memset(v14, 0, sizeof(v14));
LABEL_13:
  sub_1E4650534(&unk_1ECF74DD0, &qword_1E471D8C0);
  v11 = swift_dynamicCast();
  v12 = v15;
  if (!v11)
  {
    return 0;
  }

  return v12;
}

uint64_t ReadingGoalsDataStore.value<A>(for:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[5];
  v8 = v3[6];
  sub_1E465057C(v3 + 2, v7);
  if (a1)
  {
    v9 = 0xD000000000000016;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v10 = "Goals init: Synchronize failed";
  }

  else
  {
    v10 = "ReadingGoals.StreakDay";
  }

  v11 = (*(v8 + 8))(v9, v10 | 0x8000000000000000, v7, v8);

  if (!v11)
  {
    goto LABEL_12;
  }

  if (!*(v11 + 16) || (v12 = sub_1E46553DC(1818324839, 0xE400000000000000), (v13 & 1) == 0))
  {

LABEL_12:
    memset(v16, 0, sizeof(v16));
    goto LABEL_13;
  }

  sub_1E4658ABC(*(v11 + 56) + 32 * v12, v16);

LABEL_13:
  sub_1E4650534(&unk_1ECF74DD0, &qword_1E471D8C0);
  v14 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v14 ^ 1u, 1, a2);
}

uint64_t sub_1E46E3C28(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1E4709CCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - v13;
  sub_1E4650534(&qword_1ECF757E0, &qword_1E471FBF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E471B800;
  *(inited + 32) = 1818324839;
  *(inited + 40) = 0xE400000000000000;
  v25 = a1;
  sub_1E470B56C();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  sub_1E4709CBC();
  (*(v7 + 16))(v10, v14, v6);
  sub_1E46E4DDC();
  sub_1E470B56C();
  (*(v7 + 8))(v14, v6);
  v16 = sub_1E46E5CDC(inited);
  swift_setDeallocating();
  sub_1E4650534(&qword_1ECF757E8, &unk_1E471FC00);
  swift_arrayDestroy();
  v17 = v3[6];
  sub_1E465057C(v3 + 2, v3[5]);
  sub_1E46B96A0(v16);
  if (a2)
  {
    v18 = 0xD000000000000016;
  }

  else
  {
    v18 = 0xD00000000000001ALL;
  }

  if (a2)
  {
    v19 = "Goals init: Synchronize failed";
  }

  else
  {
    v19 = "ReadingGoals.StreakDay";
  }

  (*(v17 + 16))();

  v20 = v3[10];
  v21 = v3[11];
  sub_1E465057C(v3 + 7, v20);
  sub_1E46B96A0(v16);
  v23 = v22;

  (*(*(v21 + 8) + 16))(v23, v18, v19 | 0x8000000000000000, v20);
}

uint64_t sub_1E46E3EF8(char a1, double a2)
{
  v3 = v2;
  v6 = sub_1E4709CCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v25 - v13;
  sub_1E4650534(&qword_1ECF757E0, &qword_1E471FBF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E471B800;
  *(inited + 32) = 1818324839;
  *(inited + 40) = 0xE400000000000000;
  *&v25[1] = a2;
  sub_1E470B56C();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  sub_1E4709CBC();
  (*(v7 + 16))(v10, v14, v6);
  sub_1E46E4DDC();
  sub_1E470B56C();
  (*(v7 + 8))(v14, v6);
  v16 = sub_1E46E5CDC(inited);
  swift_setDeallocating();
  sub_1E4650534(&qword_1ECF757E8, &unk_1E471FC00);
  swift_arrayDestroy();
  v17 = v3[6];
  sub_1E465057C(v3 + 2, v3[5]);
  sub_1E46B96A0(v16);
  if (a1)
  {
    v18 = 0xD000000000000016;
  }

  else
  {
    v18 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v19 = "Goals init: Synchronize failed";
  }

  else
  {
    v19 = "ReadingGoals.StreakDay";
  }

  (*(v17 + 16))();

  v20 = v3[10];
  v21 = v3[11];
  sub_1E465057C(v3 + 7, v20);
  sub_1E46B96A0(v16);
  v23 = v22;

  (*(*(v21 + 8) + 16))(v23, v18, v19 | 0x8000000000000000, v20);
}

uint64_t ReadingGoalsDataStore.set<A>(value:forGoal:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25[1] = a4;
  v26 = a2;
  v6 = sub_1E4709CCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v25 - v13;
  sub_1E4650534(&qword_1ECF757E0, &qword_1E471FBF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E471B800;
  *(inited + 32) = 1818324839;
  *(inited + 40) = 0xE400000000000000;
  sub_1E470B71C();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  sub_1E4709CBC();
  (*(v7 + 16))(v10, v14, v6);
  sub_1E46E4DDC();
  sub_1E470B56C();
  (*(v7 + 8))(v14, v6);
  v16 = sub_1E46E5CDC(inited);
  swift_setDeallocating();
  sub_1E4650534(&qword_1ECF757E8, &unk_1E471FC00);
  swift_arrayDestroy();
  v17 = v5[6];
  sub_1E465057C(v5 + 2, v5[5]);
  sub_1E46B96A0(v16);
  if (v26)
  {
    v18 = 0xD000000000000016;
  }

  else
  {
    v18 = 0xD00000000000001ALL;
  }

  if (v26)
  {
    v19 = "Goals init: Synchronize failed";
  }

  else
  {
    v19 = "ReadingGoals.StreakDay";
  }

  (*(v17 + 16))();

  v20 = v5[10];
  v21 = v5[11];
  sub_1E465057C(v5 + 7, v20);
  sub_1E46B96A0(v16);
  v23 = v22;

  (*(*(v21 + 8) + 16))(v23, v18, v19 | 0x8000000000000000, v20);
}

Swift::Void __swiftcall ReadingGoalsDataStore.clearData()()
{
  v1 = byte_1F5E623E0;
  v2 = v0[5];
  v3 = v0[6];
  sub_1E465057C(v0 + 2, v2);
  v4 = v1 == 0;
  if (v1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v4)
  {
    v6 = "ReadingGoals.StreakDay";
  }

  else
  {
    v6 = "Goals init: Synchronize failed";
  }

  (*(v3 + 16))(0, v5, v6 | 0x8000000000000000, v2, v3);

  v7 = v0[10];
  v8 = v0[11];
  sub_1E465057C(v0 + 7, v7);
  (*(*(v8 + 8) + 16))(0, v5, v6 | 0x8000000000000000, v7);

  v9 = byte_1F5E623E1;
  v10 = v0[5];
  v11 = v0[6];
  sub_1E465057C(v0 + 2, v10);
  v12 = v9 == 0;
  if (v9)
  {
    v13 = 0xD000000000000016;
  }

  else
  {
    v13 = 0xD00000000000001ALL;
  }

  if (v12)
  {
    v14 = "ReadingGoals.StreakDay";
  }

  else
  {
    v14 = "Goals init: Synchronize failed";
  }

  (*(v11 + 16))(0, v13, v14 | 0x8000000000000000, v10, v11);

  v15 = v0[10];
  v16 = v0[11];
  sub_1E465057C(v0 + 7, v15);
  (*(*(v16 + 8) + 16))(0, v13, v14 | 0x8000000000000000, v15);
}

uint64_t static ReadingGoalsDataStore.clearCachedData(in:)(void *a1)
{
  v2 = byte_1F5E624A8;
  v3 = a1[3];
  v4 = a1[4];
  sub_1E465057C(a1, v3);
  if (v2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v6 = "Goals init: Synchronize failed";
  }

  else
  {
    v6 = "ReadingGoals.StreakDay";
  }

  (*(v4 + 16))(0, v5, v6 | 0x8000000000000000, v3, v4);

  v7 = byte_1F5E624A9;
  v8 = a1[3];
  v9 = a1[4];
  sub_1E465057C(a1, v8);
  if (v7)
  {
    v10 = 0xD000000000000016;
  }

  else
  {
    v10 = 0xD00000000000001ALL;
  }

  if (v7)
  {
    v11 = "Goals init: Synchronize failed";
  }

  else
  {
    v11 = "ReadingGoals.StreakDay";
  }

  (*(v9 + 16))(0, v10, v11 | 0x8000000000000000, v8, v9);
}

uint64_t ReadingGoalsDataStore.state.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E46E3990(0, MEMORY[0x1E69E6530]);
  if (v3)
  {
    if (qword_1EE2AE440 != -1)
    {
      swift_once();
    }

    v4 = qword_1EE2AE448;
  }

  else
  {
    v4 = v2;
  }

  result = sub_1E46E3990(1, MEMORY[0x1E69E63B0]);
  if (v6)
  {
    if (qword_1EE2AE440 != -1)
    {
      swift_once();
    }

    result = qword_1EE2AE450;
  }

  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_1E46E4860()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 96);
  sub_1E45EA6A0(v2, *(v1 + 104));
  return v2;
}