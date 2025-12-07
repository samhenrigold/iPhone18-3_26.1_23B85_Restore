unint64_t sub_100358E80(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1004A6E94();
      sub_1004A6EB4(v9);
      result = sub_1004A6F14();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 72 * v3;
        v15 = (v14 + 72 * v6);
        if (v3 != v6 || result >= v15 + 72)
        {
          result = memmove(result, v15, 0x48uLL);
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

void sub_100359018(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1004A6E94();
      v11 = v10;
      sub_1004A6304();
      v12 = sub_1004A6F14();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 24 * v3;
        v19 = (v17 + 24 * v6);
        if (v3 != v6 || v18 >= v19 + 24)
        {
          v9 = *v19;
          *(v18 + 16) = *(v19 + 2);
          *v18 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_1003591C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = a1;
  v10 = *v4;
  v11 = sub_10035E1B0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100361088();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10035F1D4(v16, a4 & 1);
    v11 = sub_10035E1B0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_1004A6E24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = v9;
  }

  else
  {
    sub_100376DD0(v11, a2, a3, v9, v21);
  }
}

void sub_1003592F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_10035E1DC(a4);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v13;
  v19 = v11[3];
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 >= v17 && (a5 & 1) == 0)
    {
      v20 = v12;
      sub_100361B98();
      v12 = v20;
      goto LABEL_8;
    }

    sub_100360554(v17, a5 & 1);
    v12 = sub_10035E1DC(a4);
    if ((v18 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_1004A6E24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v22 = *v6;
  if (v18)
  {
    v23 = v22[7] + 24 * v12;
    v26 = *v23;
    *v23 = a1;
    *(v23 + 8) = a2;
    *(v23 + 16) = a3;
  }

  else
  {
    sub_100376EC4(v12, a4, a1, a2, a3, v22);

    v24 = a4;
  }
}

void sub_100359464(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100064090(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100361D20();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100360810(v16, a4 & 1);
    v11 = sub_100064090(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1004A6E24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1000197E0(v22);

    sub_10019A8D4(a1, v22);
  }

  else
  {
    sub_100376F14(v11, a2, a3, a1, v21);
  }
}

unint64_t *sub_1003595B4(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100359714(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1003598A8(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_100359714(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v19 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 56) + 72 * v13 + 14);

    if ((*RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor() & ~v14) != 0)
    {
      v15 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();

      v16 = (v15 & ~v14) == 0;
      v3 = a3;
      if (!v16)
      {
        *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v20++, 1))
        {
          __break(1u);
          return sub_1000B19E0(v19, a2, v20, v3);
        }
      }
    }

    else
    {
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
      return sub_1000B19E0(v19, a2, v20, v3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003598A8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100359714(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_100359920(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000C9C0(&qword_1005D8CA8, &unk_1004F5F28);
  result = sub_1004A6A74();
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
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v36 = *v21;
    v35 = *(v21 + 8);
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    result = sub_1004A6F14();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = 16 * v25;
    v31 = (*(v9 + 48) + v30);
    *v31 = v19;
    v31[1] = v20;
    v32 = *(v9 + 56) + v30;
    *v32 = v36;
    *(v32 + 8) = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void (*sub_100359B7C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004A6794();
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
    return sub_100359BFC;
  }

  __break(1u);
  return result;
}

unint64_t sub_100359C04()
{
  result = qword_1005DA4E0;
  if (!qword_1005DA4E0)
  {
    result = swift_getWitnessTable(byte_1004F79E0, &_s13NoMailboxNameVN, v0, v1);
    atomic_store(result, &qword_1005DA4E0);
  }

  return result;
}

unint64_t sub_100359C58()
{
  result = qword_1005DA4E8;
  if (!qword_1005DA4E8)
  {
    result = swift_getWitnessTable(asc_1004F69A4, &_s22MailboxHasNotBeenSavedVN, v0, v1);
    atomic_store(result, &qword_1005DA4E8);
  }

  return result;
}

void (*sub_100359CAC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004A6794();
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
    return sub_10035A924;
  }

  __break(1u);
  return result;
}

uint64_t sub_100359D2C(uint64_t a1, int64_t a2, int a3)
{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_100361B98();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(*(v9 + 48) + 8 * a2);
    v11 = *(v9 + 56) + 24 * a2;
    v12 = *v11;
    v13 = *(v11 + 16);
    *a1 = v12;
    *(a1 + 16) = v13;
    sub_100359018(a2, v9);
    *v4 = v9;
    return v10;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_100359E0C(void *a1)
{
  v2 = sub_1004A6294();
  v3 = sub_1004A62A4();
  v4 = sub_1004A6294();
  result = sub_1004A62A4();
  if (v2 < v4 || result < v2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = sub_1004A6294();
  result = sub_1004A62A4();
  if (v3 < v6 || result < v3)
  {
    goto LABEL_12;
  }

  v7 = __OFSUB__(v3, v2);
  v8 = v3 - v2;
  if (!v7)
  {
    if (v8)
    {
      v9 = sub_10015BEAC(v8, 0);
      v10 = a1;
      v11 = sub_100359EE8(v12, (v9 + 4), v8);

      if (v11 == v8)
      {
        return v9;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100359EE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A6294();
  v8 = result;
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *a1 = v3;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = v8 + v9;
      if (v8 + v9 == sub_1004A62A4())
      {
        v8 += v9;
        a3 = v9;
        goto LABEL_15;
      }

      v11 = sub_1004A62B4();
      v12 = sub_1004A6294();
      result = sub_1004A62A4();
      if (v10 < v12 || v10 >= result)
      {
        break;
      }

      *(a2 + v9) = v11;
      if (a3 - 1 == v9)
      {
        v8 += v9 + 1;
        goto LABEL_15;
      }

      if (__OFADD__(++v9, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100359FD0(uint64_t a1)
{
  v2 = **(v1 + 16);
  v4[2] = a1;
  return sub_100351E90(sub_10035A48C, v4, v2) & 1;
}

unint64_t sub_10035A018(unint64_t a1, unint64_t a2)
{
  v12 = a2;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_1004A6A34();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_1004A6794();
      v6 = v7;
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v13 = *(v6 + 16);
    __chkstk_darwin(v7);
    v11[2] = &v13;
    v8 = sub_100351E90(sub_10035A928, v11, v12);

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10035A16C(unint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v7 = sub_10035A018(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1004A6A34();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v21 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1004A6A34())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = sub_1004A6794();
      v12 = v13;
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v22 = *(v12 + 16);
    __chkstk_darwin(v13);
    v20[2] = &v22;
    v14 = sub_100351E90(sub_10035A418, v20, a2);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = sub_1004A6794();
    v16 = sub_1004A6794();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v17)
    {
      goto LABEL_46;
    }

    if (v10 >= v17)
    {
      goto LABEL_47;
    }

    v15 = *(v6 + 32 + 8 * v2);
    v16 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_100337194(v6);
    v18 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v18) = 0;
  }

  v19 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v16;

  if ((v6 & 0x8000000000000000) == 0 && !v18)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_100337194(v6);
  v19 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v19 + 16))
    {
      goto LABEL_44;
    }

    *(v19 + 8 * v10 + 32) = v15;

    *v21 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_1004A6A34();
}

uint64_t sub_10035A508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10035A570(uint64_t result, char a2)
{
  if (!a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_10035A580(uint64_t result, char a2)
{
  if (!a2)
  {
  }

  return v2;
}

uint64_t sub_10035A590(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  sub_100016D2C();
  sub_1004A7114();
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = (a2 + 32);
    v12 = *(a2 + 16);
    do
    {
      v13 = *v11;
      v11 += 6;
      v29 = v13;
      MessageIdentifierSet.insert(_:)(v30, &v29, v4);
      --v12;
    }

    while (v12);
  }

  sub_100020950(v6, v9);
  sub_100333E88(v9);
  if (v2)
  {
    return sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
  }

  v16 = v14;
  v27 = 0;
  if (v10)
  {
    v17 = a2 + 48;
    v28 = v9;
    do
    {
      v18 = *(v17 - 12);
      if (v18 != 2 && *(v16 + 16))
      {
        v19 = sub_100067004();
        if (v20)
        {
          v21 = *(*(v16 + 56) + 8 * v19);
          v22 = Flags.init(_:)(v18 & 0xFFFFFFFF01010101);

          v23 = v21;
          v24 = sub_1004A5734();
          [v23 willChangeValueForKey:v24];

          v25 = [objc_allocWithZone(NSNumber) initWithLongLong:sub_10031FD9C(v22 & 0xFFFF010101010101)];
          [v23 setPrimitiveFlags:v25];

          v9 = v28;
          v26 = sub_1004A5734();
          [v23 didChangeValueForKey:v26];
        }
      }

      v17 += 24;
      --v10;
    }

    while (v10);
  }

  return sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_10035A84C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10035A8B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10035A944(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  [v2 setPersistentStoreCoordinator:a1];
  sub_1004A6204();
  v3 = aBlock[0];
  if (aBlock[0] == 1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    aBlock[4] = sub_10035BA34;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B5380;
    v5 = _Block_copy(aBlock);
    v6 = v2;

    [v6 performBlock:v5];
    _Block_release(v5);
    return v6;
  }

  else
  {
    if (qword_1005D8778 != -1)
    {
      swift_once();
    }

    v8 = sub_1004A4A74();
    sub_1001C203C(v8, qword_1005DE2D0);
    v9 = sub_1004A4A54();
    v10 = sub_1004A6014();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = v3;
      *(v11 + 12) = 2048;
      *(v11 + 14) = 1;
      _os_log_impl(&_mh_execute_header, v9, v10, "Store version is %ld, current is %ld.", v11, 0x16u);
    }

    return 0;
  }
}

uint64_t sub_10035AB78@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1005D8798 != -1)
  {
    swift_once();
  }

  v3[2] = xmmword_1005DA560;
  v3[3] = *&qword_1005DA570;
  v3[4] = xmmword_1005DA580;
  v3[0] = xmmword_1005DA540;
  v3[1] = *&qword_1005DA550;
  result = sub_100352450(v3);
  *a1 = result;
  return result;
}

id sub_10035AC10(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1004A6054();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004A4374();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v13);
  sub_10035B2D0();
  sub_1004A6044();
  sub_1004A6284();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v15, v11);
  sub_10035AF68(a4);
  v16 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  [v16 setPersistentStoreCoordinator:a3];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  aBlock[4] = sub_10035BAD8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B53D0;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  [v19 performBlock:v18];
  _Block_release(v18);
  return v19;
}

uint64_t sub_10035AF68(uint64_t a1)
{
  v20 = sub_1004A4374();
  v16 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004A6054();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A6044();
  sub_10035B2D0();
  sub_10000C9C0(&qword_1005D51A8, &qword_1004E6C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D01D0;
  v18 = sub_1004A5764();
  v19 = v7;
  sub_1004A6674();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  v18 = sub_1004A5764();
  v19 = v8;
  sub_1004A6674();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  sub_100213AA4(inited);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005D51B8, &qword_1004F7780);
  swift_arrayDestroy();
  v9 = v17;
  v10 = sub_1004A6274();
  v11 = (v16 + 8);
  v12 = (v15 + 8);
  if (v9)
  {
  }

  else
  {
    v13 = v10;
  }

  (*v11)(v2, v20);
  return (*v12)(v5, v3);
}

void sub_10035B24C()
{
  if (qword_1005D8798 != -1)
  {
    swift_once();
  }

  v0[2] = xmmword_1005DA560;
  v0[3] = *&qword_1005DA570;
  v0[4] = xmmword_1005DA580;
  v0[0] = xmmword_1005DA540;
  v0[1] = *&qword_1005DA550;
  sub_100352478(1, v0);
}

uint64_t sub_10035B2D0()
{
  v0 = sub_1004A4294();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  sub_1004A42F4(v5);
  v7 = v6;
  v18 = 0;
  v8 = [v4 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v18];

  v9 = v18;
  if (v8)
  {
    v18 = 0x6573616261746164;
    v19 = 0xE800000000000000;
    (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
    sub_1001C2190();
    v10 = v9;
    sub_1004A4364();
    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    v12 = v18;
    sub_1004A4274();

    swift_willThrow();
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1004A6724(23);

    v18 = 0xD000000000000011;
    v19 = 0x80000001004AFE80;
    v20._countAndFlagsBits = sub_1004A4354();
    sub_1004A5994(v20);

    v21._countAndFlagsBits = 8250;
    v21._object = 0xE200000000000000;
    sub_1004A5994(v21);
    v13 = sub_1004A4264();
    v14 = [v13 description];
    v15 = sub_1004A5764();
    v17 = v16;

    v22._countAndFlagsBits = v15;
    v22._object = v17;
    sub_1004A5994(v22);

    result = sub_1004A69A4();
    __break(1u);
  }

  return result;
}

void sub_10035B5B4()
{
  strcpy(&xmmword_1005DA540, "StoreVersion");
  BYTE13(xmmword_1005DA540) = 0;
  HIWORD(xmmword_1005DA540) = -5120;
  qword_1005DA550 = 0xD000000000000014;
  unk_1005DA558 = 0x80000001004AFDA0;
  *&xmmword_1005DA560 = sub_10035B638;
  *(&xmmword_1005DA560 + 1) = 0;
  qword_1005DA570 = sub_10035B680;
  unk_1005DA578 = 0;
  *&xmmword_1005DA580 = sub_10035B6B4;
  *(&xmmword_1005DA580 + 1) = 0;
}

id sub_10035B638(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger:v1];
}

id sub_10035B680@<X0>(id result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = [result integerValue];
  }

  *a2 = result;
  return result;
}

void sub_10035B6B4(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1005D8778 != -1)
  {
    swift_once();
  }

  v2 = sub_1004A4A74();
  sub_1001C203C(v2, qword_1005DE2D0);
  oslog = sub_1004A4A54();
  v3 = sub_1004A6034();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Saving current store version %ld.", v4, 0xCu);
  }
}

id sub_10035B7B4(uint64_t a1, void (*a2)(__n128), uint64_t a3)
{
  v6 = sub_10033D148();
  v7 = [objc_allocWithZone(NSPersistentStoreCoordinator) initWithManagedObjectModel:v6];

  v8 = sub_1004A5734();
  [v7 setName:v8];

  sub_10035AF68(a1);
  v9 = sub_10035A944(v7);
  if (v9)
  {
    v10 = v9;

    return v10;
  }

  else
  {
    v12 = sub_10035AC10(a2, a3, v7, a1);

    return v12;
  }
}

uint64_t sub_10035B9FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10035BA50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10035BA7C()
{
  result = qword_1005DA590;
  if (!qword_1005DA590)
  {
    result = swift_getWitnessTable(asc_1004F7840, &_s12StoreVersionVN, v0, v1);
    atomic_store(result, &qword_1005DA590);
  }

  return result;
}

uint64_t sub_10035BAE0(uint64_t a1)
{
  sub_100026044();
  result = sub_1004A5D64();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(a1 + 48) + ((v8 << 10) | (16 * v9));
    v11 = *v10;
    v12 = *(v10 + 8);

    sub_100088220(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10035BC04(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_10002587C(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1001E1794(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1001E184C(v3, v4);
    }

    else
    {
      v6 = sub_1001E18C8(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1000197E0(v8);
  return v6;
}

uint64_t sub_10035BCC0(uint64_t a1)
{
  v4 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  result = sub_10035C158();
  if (!v2)
  {
    v8 = result;
    v53 = v6;
    v55 = v1;
    v51 = 0;

    v60 = sub_10035BAE0(v9);
    v10 = _swiftEmptyArrayStorage;
    v57 = _swiftEmptyArrayStorage;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    if (v13)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v16 >= v14)
      {
        break;
      }

      v13 = *(a1 + 64 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        do
        {
LABEL_9:
          v17 = *(a1 + 56) + 72 * (__clz(__rbit64(v13)) | (v15 << 6));
          v58[0] = *v17;
          v19 = *(v17 + 32);
          v18 = *(v17 + 48);
          v20 = *(v17 + 16);
          v59 = *(v17 + 64);
          v58[2] = v19;
          v58[3] = v18;
          v58[1] = v20;
          v21 = *&v58[0];
          v22 = DWORD2(v58[0]);
          sub_100063BD4(v58, v56);
          sub_100063BD4(v58, v56);
          sub_100140EC0(v21, v22);

          sub_100063C30(v58);
          if (*(v8 + 16) && (v23 = sub_100063B5C(v21, v22), (v24 & 1) != 0))
          {
            v25 = *(*(v8 + 56) + 8 * v23);
          }

          else
          {
            v25 = sub_10035D2BC(v58);
          }

          v26 = v25;
          sub_100063C30(v58);
          v27 = v26;
          sub_1004A5BF4();
          if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004A5C44();
          }

          v13 &= v13 - 1;
          sub_1004A5C84();

          v10 = v57;
        }

        while (v13);
      }
    }

    v50 = v10;

    v28 = v60;
    v29 = v60 + 56;
    v30 = 1 << *(v60 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v60 + 56);
    v33 = (v30 + 63) >> 6;

    v34 = 0;
    v52 = v28;
    while (v32)
    {
      v35 = v32;
LABEL_26:
      v32 = (v35 - 1) & v35;
      if (*(v8 + 16))
      {
        v37 = *(v28 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v35))));
        v38 = sub_100063B5C(*v37, *(v37 + 8));
        if (v39)
        {
          v40 = *(*(v8 + 56) + 8 * v38);
          v54 = *(v55 + 48);
          v41 = *(v55 + 64);
          v42 = v40;
          sub_10030AA54(0, 1);
          v43 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
          v44 = v8;
          v45 = v53;
          (*(*(v43 - 8) + 56))(v53, 1, 1, v43);
          v46 = v54;
          sub_10030B530(v42, v45, v41);
          v47 = v45;
          v8 = v44;
          sub_100025F40(v47, &qword_1005CD518, &qword_1004CF2F0);
          v28 = v52;
          [v46 deleteObject:v42];
          sub_100309448();
        }
      }
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= v33)
      {

        v48 = v51;
        sub_10035CD10();
        if (v48)
        {
        }

        else
        {

          v56[0] = sub_100367B54(v49);
          sub_1003652BC(v56);

          return v56[0];
        }
      }

      v35 = *(v29 + 8 * v36);
      ++v34;
      if (v35)
      {
        v34 = v36;
        goto LABEL_26;
      }
    }

LABEL_34:
    __break(1u);

    __break(1u);
  }

  return result;
}

void *sub_10035C158()
{
  v2 = v1;
  v3 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v3 - 8);
  v108 = v96 - v4;
  v107 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v107);
  v104 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = v96 - v7;
  v8 = objc_allocWithZone(NSFetchRequest);
  v9 = sub_1004A5734();
  v10 = [v8 initWithEntityName:v9];

  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  v109 = v0;
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004CEAA0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = v12;
  *(v13 + 40) = v11;

  v14 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v16 = [objc_opt_self() predicateWithFormat:v14 argumentArray:isa];

  [v10 appendPredicate:v16];
  [v10 setReturnsObjectsAsFaults:0];
  v17 = sub_100351620(_swiftEmptyArrayStorage);
  v112 = 0;
  v18 = [v10 execute:&v112];
  v19 = v112;
  if (v18)
  {
    v20 = v18;
    _s7MailboxCMa();
    isUniquelyReferenced_nonNull_native = sub_1004A5C14();
    v22 = v19;

    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      goto LABEL_64;
    }

    v24 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v96[0] = v10;
    v96[1] = v2;
    if (v24)
    {
      v25 = 0;
      v106 = v109 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
      v110 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v101 = isUniquelyReferenced_nonNull_native + 32;
      v102 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      *&v23 = 68158464;
      v98 = v23;
      *&v23 = 68158979;
      v97 = v23;
      v10 = v17;
      v103 = v24;
      v105 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v110)
        {
          v29 = sub_1004A6794();
        }

        else
        {
          if (v25 >= *(v102 + 16))
          {
            goto LABEL_62;
          }

          v29 = *(v101 + 8 * v25);
        }

        v2 = v29;
        v30 = __OFADD__(v25, 1);
        v31 = v25 + 1;
        if (v30)
        {
          goto LABEL_57;
        }

        v111 = v31;
        v32 = sub_1004A5734();
        [v2 willAccessValueForKey:{v32, v96[0]}];

        v33 = [v2 primitiveName];
        if (v33)
        {
          v34 = v33;
          v35 = sub_1004A6294();
          v17 = sub_1004A62A4();
          v36 = sub_1004A6294();
          v37 = sub_1004A62A4();
          if (v35 < v36 || v37 < v35)
          {
            goto LABEL_58;
          }

          v38 = sub_1004A6294();
          v39 = sub_1004A62A4();
          if (v17 < v38 || v39 < v17)
          {
            goto LABEL_59;
          }

          v40 = v2;
          v2 = v17 - v35;
          if (__OFSUB__(v17, v35))
          {
            goto LABEL_60;
          }

          if (v2)
          {
            if (v2 >= 1)
            {
              v41 = v10;
              sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
              v42 = swift_allocObject();
              v43 = j__malloc_size(v42);
              v42[2] = v2;
              v42[3] = 2 * v43 - 64;
              isUniquelyReferenced_nonNull_native = sub_1004A6294();
              if (isUniquelyReferenced_nonNull_native != sub_1004A62A4())
              {
                v10 = v42 + 4;
                v2 = ~v35 + v17;
                while (1)
                {
                  v17 = sub_1004A62B4();
                  v44 = sub_1004A6294();
                  v45 = sub_1004A62A4();
                  if (isUniquelyReferenced_nonNull_native < v44 || isUniquelyReferenced_nonNull_native >= v45)
                  {
                    break;
                  }

                  *v10 = v17;
                  if (!v2)
                  {
                    v10 = v41;
                    isUniquelyReferenced_nonNull_native = v105;
                    v24 = v103;
                    goto LABEL_31;
                  }

                  v10 = (v10 + 1);
                  ++isUniquelyReferenced_nonNull_native;
                  --v2;
                  if (isUniquelyReferenced_nonNull_native == sub_1004A62A4())
                  {
                    goto LABEL_65;
                  }
                }

                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                v24 = sub_1004A6A34();
                goto LABEL_4;
              }

LABEL_65:

              __break(1u);
            }

            sub_1004A6294();
            __break(1u);
          }

          v42 = _swiftEmptyArrayStorage;
LABEL_31:

          v48 = MailboxName.init(_:)(v42);
          rawValue = v48.bytes._rawValue;
          v47 = *&v48._hashValue._value;

          v2 = v40;
        }

        else
        {
          rawValue = 0;
          v47 = 0;
        }

        v49 = sub_1004A5734();
        [v2 didAccessValueForKey:v49];

        if (rawValue)
        {
          if (v10[2] && (sub_100063B5C(rawValue, v47), (v50 & 1) != 0))
          {
            v100 = v10;
            v51 = v106;
            v52 = v99;
            sub_100367F90(v106, v99);
            v53 = v51 + *(v107 + 20);
            v54 = *v53;
            v55 = *(v53 + 4);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();

            v56 = sub_1004A4A54();
            v57 = sub_1004A4A74();
            (*(*(v57 - 8) + 8))(v52, v57);
            v58 = sub_1004A6014();

            if (os_log_type_enabled(v56, v58))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v61 = v55;
              v62 = v60;
              v114 = v60;
              *v59 = v97;
              *(v59 + 4) = 2;
              *(v59 + 8) = 256;
              *(v59 + 10) = v54;
              *(v59 + 11) = 1040;
              *(v59 + 13) = 8;
              *(v59 + 17) = 1024;
              *(v59 + 19) = v61;
              *(v59 + 23) = 2160;
              *(v59 + 25) = 0x786F626C69616DLL;
              *(v59 + 33) = 2085;
              v112 = rawValue;
              v113 = v47;
              v63 = sub_1004A5824();
              v65 = sub_10015BA6C(v63, v64, &v114);

              *(v59 + 35) = v65;
              _os_log_impl(&_mh_execute_header, v56, v58, "[%.*hhx-%.*X] Found duplicate local mailbox with name '%{sensitive,mask.mailbox}s'.", v59, 0x2Bu);
              sub_1000197E0(v62);

              isUniquelyReferenced_nonNull_native = v105;
            }

            else
            {
            }

            v25 = v111;
            v17 = *(v109 + 48);
            v89 = *(v109 + 64);
            sub_10030AA54(0, 1);
            v90 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
            v91 = v2;
            v2 = v108;
            (*(*(v90 - 8) + 56))(v108, 1, 1, v90);
            sub_10030B530(v91, v2, v89);
            sub_100025F40(v2, &qword_1005CD518, &qword_1004CF2F0);
            [v17 deleteObject:v91];
            sub_100309448();

            v10 = v100;
          }

          else
          {
            v66 = isUniquelyReferenced_nonNull_native;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v112 = v10;
            v67 = sub_100063B5C(rawValue, v47);
            v69 = v10[2];
            v70 = (v68 & 1) == 0;
            v30 = __OFADD__(v69, v70);
            v71 = v69 + v70;
            if (v30)
            {
              goto LABEL_61;
            }

            v17 = v68;
            if (v10[3] >= v71)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v92 = v2;
                v93 = v67;
                sub_100361A24();
                v67 = v93;
                v2 = v92;
              }
            }

            else
            {
              sub_1003602AC(v71, isUniquelyReferenced_nonNull_native);
              v67 = sub_100063B5C(rawValue, v47);
              if ((v17 & 1) != (v72 & 1))
              {
                result = sub_1004A6E24();
                __break(1u);
                return result;
              }
            }

            isUniquelyReferenced_nonNull_native = v66;
            v10 = v112;
            if (v17)
            {
              v84 = v112[7];
              v85 = *(v84 + 8 * v67);
              *(v84 + 8 * v67) = v2;
            }

            else
            {
              v112[(v67 >> 6) + 8] |= 1 << v67;
              v86 = v10[6] + 16 * v67;
              *v86 = rawValue;
              *(v86 + 8) = v47;
              *(v10[7] + 8 * v67) = v2;
              v87 = v10[2];
              v30 = __OFADD__(v87, 1);
              v88 = v87 + 1;
              if (v30)
              {
                goto LABEL_63;
              }

              v10[2] = v88;
            }

            v25 = v111;
          }
        }

        else
        {
          v73 = isUniquelyReferenced_nonNull_native;
          v74 = v10;
          v75 = v106;
          v76 = v104;
          sub_100367F90(v106, v104);
          v77 = (v75 + *(v107 + 20));
          v78 = *v77;
          v79 = *(v77 + 1);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v80 = sub_1004A4A54();
          v81 = sub_1004A4A74();
          (*(*(v81 - 8) + 8))(v76, v81);
          v82 = sub_1004A6014();
          if (os_log_type_enabled(v80, v82))
          {
            v83 = swift_slowAlloc();
            *v83 = v98;
            *(v83 + 4) = 2;
            *(v83 + 8) = 256;
            *(v83 + 10) = v78;
            *(v83 + 11) = 1040;
            *(v83 + 13) = 8;
            *(v83 + 17) = 1024;
            *(v83 + 19) = v79;
            _os_log_impl(&_mh_execute_header, v80, v82, "[%.*hhx-%.*X] Found local mailbox without name.", v83, 0x17u);
          }

          v17 = *(v109 + 48);
          v26 = *(v109 + 64);
          sub_10030AA54(0, 1);
          v27 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
          v28 = v2;
          v2 = v108;
          (*(*(v27 - 8) + 56))(v108, 1, 1, v27);
          sub_10030B530(v28, v2, v26);
          sub_100025F40(v2, &qword_1005CD518, &qword_1004CF2F0);
          [v17 deleteObject:v28];
          sub_100309448();

          v10 = v74;
          v25 = v111;
          isUniquelyReferenced_nonNull_native = v73;
        }

        if (v25 == v24)
        {
          goto LABEL_54;
        }
      }
    }

    v10 = v17;
LABEL_54:
  }

  else
  {
    v94 = v112;
    sub_1004A4274();

    swift_willThrow();
  }

  return v10;
}

void sub_10035CD10()
{
  v47 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v47);
  v44 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v42 = &v41 - v5;
  v46 = v0;
  v43 = *(v0 + 48);
  v6 = [v43 registeredObjects];
  sub_10019A8E4(0, &qword_1005D8A10, NSManagedObject_ptr);
  sub_100309DBC();
  v7 = sub_1004A5D44();

  v45 = v1;
  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_1004A6594();
    sub_1004A5DB4();
    v7 = v50[1];
    v8 = v50[2];
    v9 = v50[3];
    v10 = v50[4];
    v11 = v50[5];
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(v7 + 32);
    v8 = (v7 + 56);
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = (v14 & *(v7 + 56));
  }

  v48 = v9;
  v15 = (v9 + 64) >> 6;
  while (1)
  {
    if (v7 < 0)
    {
      v21 = sub_1004A6604();
      if (!v21)
      {
        goto LABEL_24;
      }

      v49 = v21;
      swift_dynamicCast();
      v20 = v50[0];
      v18 = v10;
      v19 = v11;
      if (!v50[0])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v16 = v10;
      v17 = v11;
      v18 = v10;
      if (!v11)
      {
        while (1)
        {
          v18 = (v16 + 1);
          if (__OFADD__(v16, 1))
          {
            __break(1u);
          }

          if (v18 >= v15)
          {
            break;
          }

          v17 = v8[v18];
          ++v16;
          if (v17)
          {
            goto LABEL_14;
          }
        }

LABEL_24:
        sub_100020D08(v7);
        v32 = v46 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
        v33 = v44;
        sub_100367F90(v46 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v44);
        v34 = (v32 + *(v47 + 20));
        v35 = *v34;
        v36 = *(v34 + 1);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v20 = sub_1004A4A54();
        v37 = sub_1004A4A74();
        (*(*(v37 - 8) + 8))(v33, v37);
        v38 = sub_1004A6034();
        if (os_log_type_enabled(v20, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 68158464;
          *(v39 + 4) = 2;
          *(v39 + 8) = 256;
          *(v39 + 10) = v35;
          *(v39 + 11) = 1040;
          *(v39 + 13) = 8;
          *(v39 + 17) = 1024;
          *(v39 + 19) = v36;
          _os_log_impl(&_mh_execute_header, v20, v38, "[%.*hhx-%.*X] No new mailboxes.", v39, 0x17u);
        }

LABEL_26:

        return;
      }

LABEL_14:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v20)
      {
        goto LABEL_24;
      }
    }

    _s7MailboxCMa();
    if ([v20 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      if ([v20 isInserted])
      {
        break;
      }
    }

    v10 = v18;
    v11 = v19;
  }

  v22 = v46 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
  v23 = v42;
  sub_100367F90(v46 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v42);
  v24 = (v22 + *(v47 + 20));
  v25 = *v24;
  v26 = *(v24 + 1);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v27 = sub_1004A4A54();
  v28 = sub_1004A4A74();
  (*(*(v28 - 8) + 8))(v23, v28);
  v29 = sub_1004A6034();
  if (os_log_type_enabled(v27, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 68158464;
    *(v30 + 4) = 2;
    *(v30 + 8) = 256;
    *(v30 + 10) = v25;
    *(v30 + 11) = 1040;
    *(v30 + 13) = 8;
    *(v30 + 17) = 1024;
    *(v30 + 19) = v26;
    _os_log_impl(&_mh_execute_header, v27, v29, "[%.*hhx-%.*X] New mailboxes were inserted. Saving context.", v30, 0x17u);
  }

  v50[0] = 0;
  if ([v43 save:v50])
  {
    v31 = v50[0];
    sub_100020D08(v7);
    goto LABEL_26;
  }

  v40 = v50[0];
  sub_1004A4274();

  swift_willThrow();
  sub_100020D08(v7);
}

id sub_10035D2BC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(a1 + 65);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 36);
    v7 = *(a1 + 64);
  }

  v8 = *a1;
  v21[84] = *(a1 + 65);
  v21[80] = 1;
  v21[72] = v7 & 1;
  v21[68] = 1;
  LODWORD(v22) = v6;
  BYTE4(v22) = v4;
  *(&v22 + 1) = 0;
  v23 = 1;
  v24 = v5;
  v25 = v7 & 1;
  v26 = 0;
  v27 = 1;
  v9 = objc_allocWithZone(_s7MailboxCMa());

  sub_100063BD4(a1, v21);
  v10 = [v9 initWithContext:v3];
  v11 = sub_1004A5734();
  [v10 willChangeValueForKey:v11];

  v12 = sub_1004A5734();

  [v10 setPrimitiveAccount:v12];

  v13 = sub_1004A5734();
  [v10 didChangeValueForKey:v13];

  v14 = sub_1004A5734();
  [v10 willChangeValueForKey:v14];

  v15 = sub_1001E194C(v8);
  v17 = v16;
  sub_100063C30(a1);
  isa = sub_1004A4404().super.isa;
  sub_100014D40(v15, v17);
  [v10 setPrimitiveName:isa];

  v19 = sub_1004A5734();
  [v10 didChangeValueForKey:v19];

  sub_10033BB90(&v22);
  return v10;
}

void *sub_10035D4E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA480, &unk_1004F7700);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D8C98, &qword_1004F5F18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10035D618(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA5F0, &unk_1004F7920);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D9938, &qword_1004F6B60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10035D760(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA5E0, &qword_1004F7910);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_10035D8F4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA5C8, &qword_1004F78E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D9928, &unk_1004F78F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10035DA28(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA430, &qword_1004F78D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_10035DB38(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA660, &qword_1004F79B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10035DC3C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA648, &qword_1004F79A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005DA650, &qword_1004F79A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10035DD98(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10035DF74(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA5D0, &unk_1004F7900);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10035E0BC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_10035E144(Swift::UInt a1)
{
  sub_1004A6E94();
  sub_1004A6EB4(a1);
  v2 = sub_1004A6F14();

  return sub_100064384(a1, v2);
}

unint64_t sub_10035E1DC(uint64_t a1)
{
  sub_1004A6E94();
  sub_1004A6304();
  v2 = sub_1004A6F14();

  return sub_10035E408(a1, v2);
}

unint64_t sub_10035E248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  Mailbox.hash(into:)(v8, a1, a2, a3);
  v6 = sub_1004A6F14();

  return sub_10035E4DC(a1, a2, a3, v6);
}

unint64_t sub_10035E2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(v4 | (v4 << 32));
  v8 = sub_1004A6F14();

  return sub_10035E5D4(a1, a2, a3, v4, v8);
}

uint64_t sub_10035E374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1004A6E94();
  a3(v10, a1, a2);
  v7 = sub_1004A6F14();

  return a4(a1, a2, v7);
}

unint64_t sub_10035E408(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1004A62F4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10035E4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v10 = ~v5;
    do
    {
      v11 = (*(v4 + 48) + 24 * v6);
      v13 = *v11;
      v12 = v11[1];
      v14 = v11[2];

      LOBYTE(v12) = static Mailbox.__derived_struct_equals(_:_:)(v13, v12, v14, a1, a2, a3, v15);

      if (v12)
      {
        break;
      }

      v6 = (v6 + 1) & v10;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10035E5D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = ~v7;
    v13 = *(v5 + 48);
    v14 = a4 | (a4 << 32);
    v23 = (a3 + 32);
    do
    {
      v15 = v13 + 32 * v8;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *v15 == a1 && *(v15 + 8) == a2;
      if (v18 || (sub_1004A6D34()) && (v17 | (v17 << 32)) == v14)
      {
        v19 = *(v16 + 16);
        if (v19 == *(a3 + 16))
        {
          if (!v19 || v16 == a3)
          {
            return v8;
          }

          v20 = (v16 + 32);
          for (i = v23; *v20 == *i; ++i)
          {
            ++v20;
            if (!--v19)
            {
              return v8;
            }
          }
        }
      }

      v8 = (v8 + 1) & v12;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_10035E71C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005DA420, &unk_1004F7690);
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v4;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 72 * v20;
      v34 = *(v22 + 32);
      v35 = *(v22 + 48);
      v36 = *(v22 + 64);
      v32 = *v22;
      v33 = *(v22 + 16);
      sub_1004A6E94();
      sub_1004A6EB4(v21);
      result = sub_1004A6F14();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 72 * v15;
      *(v16 + 32) = v34;
      *(v16 + 48) = v35;
      *(v16 + 64) = v36;
      *v16 = v32;
      *(v16 + 16) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_10035E9D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005DA4A0, &qword_1004F7940);
  v34 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10035EC70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005DA468, &unk_1004F7930);
  v33 = v4;
  result = sub_1004A6A64();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10035EF14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005D8CA8, &unk_1004F5F28);
  v37 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v38 = *(v26 + 8);
      if ((v37 & 1) == 0)
      {
      }

      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10035F1D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005D8C88, &unk_1004F7770);
  v34 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10035F474(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005DA5E8, &qword_1004F7918);
  v36 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v37 = *v25;
      v26 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v37;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10035F734(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005DA440, &unk_1004F7980);
  v34 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10035F9DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005D9930, &qword_1004F6B58);
  v31 = v4;
  result = sub_1004A6A64();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1004A6E94();
      sub_1004A6EE4(v20);
      result = sub_1004A6F14();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10035FC68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v41 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v44 = &v39 - v6;
  v7 = *v2;
  sub_10000C9C0(&qword_1005DA4C8, &unk_1004F7748);
  v42 = v4;
  result = sub_1004A6A64();
  v9 = result;
  if (*(v7 + 16))
  {
    v39 = v2;
    v40 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(v7 + 56);
      v25 = *(v7 + 48) + 32 * v23;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v45 = *(v25 + 24);
      v43 = *(v41 + 72);
      v29 = v24 + v43 * v23;
      if (v42)
      {
        v30 = v28;
        sub_100020950(v29, v44);
      }

      else
      {
        sub_10002A54C(v29, v44);

        v30 = v28;
      }

      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1004A6EB4(v45 | (v45 << 32));
      result = sub_1004A6F14();
      v31 = -1 << *(v9 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v16 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v16 + 8 * v33);
          if (v37 != -1)
          {
            v17 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v32) & ~*(v16 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 32 * v17;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v30;
      v19 = v44;
      *(v18 + 24) = v45;
      result = sub_100020950(v19, *(v9 + 56) + v43 * v17);
      ++*(v9 + 16);
      v7 = v40;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v7 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v11, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_10035FFE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005DA298, &qword_1004F7550);
  v35 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 24 * v20);
      v23 = *v22;
      v36 = v22[1];
      v24 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1004A6E94();
      Mailbox.hash(into:)(v37, v23, v36, v24);
      result = sub_1004A6F14();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v23;
      v16[1] = v36;
      v16[2] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1003602AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005DA408, &qword_1004F7678);
  v36 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_1004A6E94();
      sub_1004A6EB4(v24 | (v24 << 32));
      result = sub_1004A6F14();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100360554(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005DA498, &qword_1004F7720);
  v36 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v37 = *(v22 + 8);
      v24 = *(v22 + 16);
      if ((v36 & 1) == 0)
      {
        v25 = v21;
        v26 = v23;
      }

      sub_1004A6E94();
      sub_1004A6304();
      result = sub_1004A6F14();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v23;
      v16[1] = v37;
      v16[2] = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100360810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005D5FE0, &unk_1004F79C0);
  v33 = v4;
  result = sub_1004A6A64();
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
        sub_10019A8D4(v24, v34);
      }

      else
      {
        sub_1001659C8(v24, v34);
      }

      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
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
      result = sub_10019A8D4(v34, (*(v7 + 56) + 32 * v15));
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

void *sub_100360AC8()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA420, &unk_1004F7690);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v26 + 16) = v24)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(*(v2 + 48) + 8 * v14);
      v19 = 72 * v14;
      v20 = *(v2 + 56) + v19;
      v21 = *(v20 + 32);
      v22 = *(v20 + 48);
      v23 = *(v20 + 64);
      v25 = *v20;
      v24 = *(v20 + 16);
      *(*(v4 + 48) + v17) = v18;
      v26 = *(v4 + 56) + v19;
      *(v26 + 64) = v23;
      *(v26 + 32) = v21;
      *(v26 + 48) = v22;
      *v26 = v25;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_100360C40()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA4A0, &qword_1004F7940);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
}

void sub_100360DA8()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA468, &unk_1004F7930);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
}

void sub_100360F10()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D8CA8, &unk_1004F5F28);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LOBYTE(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v20;
        v23[1] = v19;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
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
}

void sub_100361088()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D8C88, &unk_1004F7770);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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
}

void sub_1003611F0()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA5E8, &qword_1004F7918);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;
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
}

void sub_100361370()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA440, &unk_1004F7980);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
}

id sub_1003614E0()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D9930, &qword_1004F6B58);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void sub_10036163C()
{
  v1 = v0;
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v33 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - v3;
  sub_10000C9C0(&qword_1005DA4C8, &unk_1004F7748);
  v4 = *v0;
  v5 = sub_1004A6A54();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 32 * v19;
        v21 = *(v4 + 48) + 32 * v19;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = *(v21 + 24);
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_10002A54C(*(v4 + 56) + v27, v32);
        v28 = v34;
        v29 = *(v34 + 48) + v20;
        *v29 = v22;
        *(v29 + 8) = v23;
        *(v29 + 16) = v24;
        *(v29 + 24) = v25;
        sub_100020950(v26, *(v28 + 56) + v27);

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_100361898()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA298, &qword_1004F7550);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 24 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
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
}

id sub_100361A24()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA408, &qword_1004F7678);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LODWORD(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_100361B98()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA498, &qword_1004F7720);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 24 * v17;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + 24 * v17);
        *v23 = v21;
        v23[1] = v20;
        v23[2] = v22;
        v24 = v18;
        v25 = v21;
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

void sub_100361D20()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D5FE0, &unk_1004F79C0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1001659C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10019A8D4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

uint64_t sub_100361EC4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v8 = sub_1004A6F14();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1003634EC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100362014(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1004A6E94();
  sub_1004A6EE4(a2);
  v6 = sub_1004A6F14();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10036366C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100362130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = *v5;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v34 = a5;
  v11 = a5 | (a5 << 32);
  sub_1004A6EB4(v11);
  v12 = sub_1004A6F14();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v32 = v10;
    v17 = *(v10 + 48);
    while (1)
    {
      v18 = v17 + 32 * v15;
      result = *v18;
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
      v22 = *v18 == a2 && *(v18 + 8) == a3;
      if (v22 || (result = sub_1004A6D34(), (result & 1) != 0))
      {
        if ((v21 | (v21 << 32)) == v11)
        {
          v23 = *(v20 + 16);
          if (v23 == *(a4 + 16))
          {
            break;
          }
        }
      }

LABEL_3:
      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v23)
    {
      v24 = v20 == a4;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
LABEL_19:

      v27 = *(v32 + 48) + 32 * v15;
      v29 = *v27;
      v28 = *(v27 + 8);
      v30 = *(v27 + 16);
      LODWORD(v27) = *(v27 + 24);
      *a1 = v29;
      *(a1 + 8) = v28;
      *(a1 + 16) = v30;
      *(a1 + 24) = v27;

      return 0;
    }

    else
    {
      v25 = (v20 + 32);
      v26 = (a4 + 32);
      while (v23)
      {
        if (*v25 != *v26)
        {
          goto LABEL_3;
        }

        ++v25;
        ++v26;
        if (!--v23)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v33;

    sub_1003637B8(a2, a3, a4, v34, v15, isUniquelyReferenced_nonNull_native);
    *v33 = v36;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = v34;
    return 1;
  }

  return result;
}

uint64_t sub_100362378(void *a1, void *a2)
{
  v5 = *v2;
  sub_1004A6E94();
  sub_1004A6304();
  v6 = sub_1004A6F14();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
    while (1)
    {
      v10 = *(*(v5 + 48) + 8 * v8);
      v11 = sub_1004A62F4();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(*(v5 + 48) + 8 * v8);
    *a1 = v15;
    v16 = v15;
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    v13 = a2;
    sub_1003639D0(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v17;
    *a1 = v13;
    return 1;
  }
}

uint64_t sub_1003624CC(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1004A6E84();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100363B60(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1003625D0(Swift::UInt64 *a1, Swift::UInt64 a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v13 = *v6;
  sub_1004A6E94();
  sub_1004A6EF4(a2);
  v14 = sub_1004A6F14();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (*(*(v13 + 48) + 8 * v16) != a2)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    sub_100363C80(a2, v16, isUniquelyReferenced_nonNull_native, a3, a4, a5, a6);
    *v6 = v20;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1003626F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D8CA0, &qword_1004F5F20);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100362958(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005DA668, &qword_1004F79B8);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      sub_1004A6E94();
      sub_1004A6EE4(v17);
      result = sub_1004A6F14();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100362BA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D8CC0, &qword_1004F5F48);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v29 = *(v18 + 8);
      v20 = *(v18 + 24);
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1004A6EB4(v20 | (v20 << 32));
      result = sub_1004A6F14();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v29;
      *(v14 + 24) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100362E30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005DA628, &qword_1004F7978);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1004A6E94();
      sub_1004A6304();
      result = sub_1004A6F14();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100363080(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005DA5B0, &unk_1004F78C0);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1004A6E84();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1003632A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10000C9C0(a2, a3);
  result = sub_1004A6694();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_1004A6E94();
      sub_1004A6EF4(v19);
      result = sub_1004A6F14();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

void sub_1003634EC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1003626F8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100363E00();
      goto LABEL_16;
    }

    sub_1003645D0(v8 + 1);
  }

  v10 = *v4;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v11 = sub_1004A6F14();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1004A6D34() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1004A6E14();
  __break(1u);
}

uint64_t sub_10036366C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100362958(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100363F5C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100364808(v5 + 1);
  }

  v8 = *v3;
  sub_1004A6E94();
  sub_1004A6EE4(v4);
  result = sub_1004A6F14();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

void sub_1003637B8(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, unint64_t a5, char a6)
{
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_100362BA8(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        sub_10036409C();
        goto LABEL_27;
      }

      sub_100364A28(v12 + 1);
    }

    v14 = *v6;
    sub_1004A6E94();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v15 = a4 | (a4 << 32);
    sub_1004A6EB4(v15);
    v16 = sub_1004A6F14();
    v17 = v14 + 56;
    v18 = -1 << *(v14 + 32);
    a5 = v16 & ~v18;
    if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v19 = ~v18;
      v20 = *(v14 + 48);
      while (1)
      {
        v21 = v20 + 32 * a5;
        v22 = *(v21 + 16);
        v23 = *(v21 + 24);
        v24 = *v21 == result && *(v21 + 8) == a2;
        if (v24 || (sub_1004A6D34()) && (v23 | (v23 << 32)) == v15)
        {
          v25 = *(v22 + 16);
          if (v25 == *(a3 + 16))
          {
            break;
          }
        }

LABEL_10:
        a5 = (a5 + 1) & v19;
        if (((*(v17 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      if (v25)
      {
        v26 = v22 == a3;
      }

      else
      {
        v26 = 1;
      }

      if (!v26)
      {
        v27 = (v22 + 32);
        v28 = (a3 + 32);
        while (v25)
        {
          if (*v27 != *v28)
          {
            goto LABEL_10;
          }

          ++v27;
          ++v28;
          if (!--v25)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

LABEL_26:
      sub_1004A6E14();
      __break(1u);
    }
  }

LABEL_27:
  v29 = *v34;
  *(*v34 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v30 = *(v29 + 48) + 32 * a5;
  *v30 = result;
  *(v30 + 8) = a2;
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v29 + 16) = v33;
    return;
  }

LABEL_30:
  __break(1u);
}

void sub_1003639D0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100362E30(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100364210();
      goto LABEL_12;
    }

    sub_100364C8C(v6 + 1);
  }

  v8 = *v3;
  sub_1004A6E94();
  sub_1004A6304();
  v9 = sub_1004A6F14();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1004A62F4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004A6E14();
  __break(1u);
}

uint64_t sub_100363B60(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100363080(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100364360();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100364EB4(v5 + 1);
  }

  v8 = *v3;
  result = sub_1004A6E84();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

Swift::UInt64 sub_100363C80(Swift::UInt64 result, Swift::UInt64 a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v10 = result;
  v11 = *(*v7 + 16);
  v12 = *(*v7 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v9 = a6;
    v8 = a7;
    sub_1003632A4(v11 + 1, a4, a5);
  }

  else
  {
    if (v12 > v11)
    {
      v8 = a2;
      result = sub_1003644A0(a4, a5);
      a2 = v8;
      goto LABEL_12;
    }

    v9 = a6;
    v8 = a7;
    sub_1003650A4(v11 + 1, a4, a5);
  }

  v13 = *v7;
  sub_1004A6E94();
  sub_1004A6EF4(v10);
  result = sub_1004A6F14();
  v14 = -1 << *(v13 + 32);
  a2 = result & ~v14;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    while (*(*(v13 + 48) + 8 * a2) != v10)
    {
      a2 = (a2 + 1) & v15;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v16 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v10;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  sub_10000C9C0(v9, v8);
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

void sub_100363E00()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D8CA0, &qword_1004F5F20);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void *sub_100363F5C()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA668, &qword_1004F79B8);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_10036409C()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D8CC0, &qword_1004F5F48);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        LODWORD(v18) = *(v18 + 24);
        v22 = *(v4 + 48) + v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v21;
        *(v22 + 24) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

id sub_100364210()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA628, &qword_1004F7978);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100364360()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA5B0, &unk_1004F78C0);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1003644A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000C9C0(a1, a2);
  v4 = *v2;
  v5 = sub_1004A6684();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1003645D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D8CA0, &qword_1004F5F20);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1004A6E94();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_100364808(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005DA668, &qword_1004F79B8);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      sub_1004A6E94();
      sub_1004A6EE4(v16);
      result = sub_1004A6F14();
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
      *(*(v5 + 48) + 4 * v12) = v16;
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

        v2 = v1;
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

uint64_t sub_100364A28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D8CC0, &qword_1004F5F48);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      sub_1004A6E94();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1004A6EB4(v22 | (v22 << 32));
      result = sub_1004A6F14();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      v3 = v31;
      *(v14 + 24) = v22;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_100364C8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005DA628, &qword_1004F7978);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      sub_1004A6E94();
      v17 = v16;
      sub_1004A6304();
      result = sub_1004A6F14();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
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

uint64_t sub_100364EB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005DA5B0, &unk_1004F78C0);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
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
      result = sub_1004A6E84();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1003650A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10000C9C0(a2, a3);
  result = sub_1004A6694();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      sub_1004A6E94();
      sub_1004A6EF4(v18);
      result = sub_1004A6F14();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1003652BC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100367F68(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100365338(v6);
  return sub_1004A6834();
}

Swift::Int sub_100365338(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1004A6CC4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s7MailboxCMa();
        v6 = sub_1004A5C64();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10036596C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10036543C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10036543C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = result;
  if (a3 == a2)
  {
    return result;
  }

  v4 = *a4;
  p_attr = (&stru_1005CAFF8 + 8);
  v6 = (&stru_1005CAFF8 + 8);
  v61 = *a4;
LABEL_5:
  v7 = *(v4 + 8 * a3);
  v60 = a3;
  while (1)
  {
    v66 = a3;
    v64 = a3 - 1;
    v8 = *(v4 + 8 * (a3 - 1));
    v9 = v7;
    v10 = v8;
    v11 = sub_1004A5734();
    [v9 p_attr[434]];

    v12 = [v9 v6[503]];
    v67 = v10;
    if (v12)
    {
      v13 = v9;
      v9 = v12;
      v14 = sub_1004A6294();
      v15 = v9;
      v16 = sub_1004A62A4();
      v17 = sub_1004A6294();
      v18 = sub_1004A62A4();
      if (v14 < v17 || v18 < v14)
      {
        goto LABEL_56;
      }

      v15 = v9;
      v20 = sub_1004A6294();
      v21 = sub_1004A62A4();
      if (v16 < v20 || v21 < v16)
      {
        goto LABEL_57;
      }

      v15 = v16 - v14;
      if (__OFSUB__(v16, v14))
      {
        goto LABEL_58;
      }

      if (v15)
      {
        if (v15 < 1)
        {
          goto LABEL_65;
        }

        sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
        v22 = swift_allocObject();
        v23 = j__malloc_size(v22);
        v22[2] = v15;
        v22[3] = 2 * v23 - 64;
        v15 = v9;
        v24 = sub_1004A6294();
        if (v24 != sub_1004A62A4())
        {
          v25 = v22 + 4;
          v26 = ~v14 + v16;
          while (1)
          {
            v27 = sub_1004A62B4();
            v28 = sub_1004A6294();
            v29 = sub_1004A62A4();
            if (v24 < v28 || v24 >= v29)
            {
              break;
            }

            *v25 = v27;
            if (!v26)
            {

              v4 = v61;
              p_attr = (&stru_1005CAFF8 + 8);
              v6 = (&stru_1005CAFF8 + 8);
              goto LABEL_26;
            }

            ++v25;
            ++v24;
            --v26;
            if (v24 == sub_1004A62A4())
            {
              goto LABEL_62;
            }
          }

          __break(1u);
          goto LABEL_55;
        }

        goto LABEL_62;
      }

      v22 = _swiftEmptyArrayStorage;
LABEL_26:

      v32 = MailboxName.init(_:)(v22);
      rawValue = v32.bytes._rawValue;
      value = v32._hashValue._value;

      v9 = v13;
      v10 = v67;
    }

    else
    {
      rawValue = 0;
      value = 0;
    }

    v33 = sub_1004A5734();
    [v9 didAccessValueForKey:v33];

    if (!rawValue)
    {
      v34 = MailboxName.inbox.unsafeMutableAddressor();
      rawValue = *v34;
      value = *(v34 + 2);
    }

    v35 = sub_1004A5734();
    [v10 p_attr[434]];

    v36 = [v10 v6[503]];
    v65 = value;
    if (!v36)
    {
      v51 = 0;
      v52 = 0;
      goto LABEL_48;
    }

    v63 = v9;
    v9 = v36;
    v37 = sub_1004A6294();
    v15 = v9;
    v38 = sub_1004A62A4();
    v39 = sub_1004A6294();
    v40 = sub_1004A62A4();
    if (v37 < v39 || v40 < v37)
    {
      goto LABEL_59;
    }

    v15 = v9;
    v41 = sub_1004A6294();
    v42 = sub_1004A62A4();
    if (v38 < v41 || v42 < v38)
    {
      goto LABEL_60;
    }

    v15 = v38 - v37;
    if (__OFSUB__(v38, v37))
    {
      goto LABEL_61;
    }

    if (v15)
    {
      break;
    }

    v43 = _swiftEmptyArrayStorage;
LABEL_47:

    v53 = MailboxName.init(_:)(v43);
    v51 = v53.bytes._rawValue;
    v52 = v53._hashValue._value;

    p_attr = &stru_1005CAFF8.attr;
    v6 = &stru_1005CAFF8.attr;
    v9 = v63;
LABEL_48:
    v54 = sub_1004A5734();
    [v10 didAccessValueForKey:v54];

    if (!v51)
    {
      v55 = MailboxName.inbox.unsafeMutableAddressor();
      v51 = *v55;
      v52 = *(v55 + 2);
    }

    v56 = static MailboxName.stableOrder(_:_:)(rawValue, v65, v51, v52);

    if (v56)
    {
      if (!v4)
      {
        goto LABEL_64;
      }

      v7 = *(v4 + 8 * v66);
      *(v4 + 8 * v66) = *(v4 + 8 * v64);
      *(v4 + 8 * v64) = v7;
      a3 = v64;
      if (v64 != v62)
      {
        continue;
      }
    }

    a3 = v60 + 1;
    if (v60 + 1 == a2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v15 < 1)
  {
    goto LABEL_66;
  }

  sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
  v43 = swift_allocObject();
  v44 = j__malloc_size(v43);
  v43[2] = v15;
  v43[3] = 2 * v44 - 64;
  v15 = v9;
  v45 = sub_1004A6294();
  if (v45 != sub_1004A62A4())
  {
    v46 = v43 + 4;
    v47 = ~v37 + v38;
    while (1)
    {
      v48 = sub_1004A62B4();
      v49 = sub_1004A6294();
      v50 = sub_1004A62A4();
      if (v45 < v49 || v45 >= v50)
      {
        break;
      }

      *v46 = v48;
      if (!v47)
      {

        v4 = v61;
        v10 = v67;
        goto LABEL_47;
      }

      ++v46;
      ++v45;
      --v47;
      if (v45 == sub_1004A62A4())
      {
        goto LABEL_63;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:

    __break(1u);
  }

LABEL_63:

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  v57 = v9;
  sub_1004A6294();
  __break(1u);
LABEL_66:
  v58 = v9;
  result = sub_1004A6294();
  __break(1u);
  return result;
}

uint64_t sub_10036596C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v175 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_183:
    v5._rawValue = v175->_rawValue;
    if (!v175->_rawValue)
    {
      goto LABEL_245;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_185;
    }

    goto LABEL_228;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8 + 1;
    v187 = v9;
    v185 = v8;
    if (v8 + 1 < v7)
    {
      v176 = v7;
      v179 = *a3;
      v11 = *(*a3 + 8 * v8);
      v12 = *(*a3 + 8 * v10);
      v5._rawValue = v11;
      v13 = sub_10033A824();
      if (v13)
      {
        v15 = v13;
        v16 = v14;
      }

      else
      {
        v17 = MailboxName.inbox.unsafeMutableAddressor();
        v15 = *v17;
        v16 = *(v17 + 2);
      }

      v18 = sub_10033A824();
      if (v18)
      {
        v4 = v18;
        v20 = v19;
      }

      else
      {
        v21 = MailboxName.inbox.unsafeMutableAddressor();
        v4 = *v21;
        v20 = *(v21 + 2);
      }

      v181 = static MailboxName.stableOrder(_:_:)(v15, v16, v4, v20);

      v22 = 8 * v185 + 8;
      v23 = v176;
      do
      {
        v25 = v10;
        v24 = v22;
        ++v10;
        v177 = v25;
        if (v10 >= v23)
        {
          break;
        }

        v26 = *(v179 + 8 * v25);
        v27 = *(v179 + 8 * v10);
        v6 = v26;
        v28 = sub_1004A5734();
        [v27 willAccessValueForKey:v28];

        v29 = [v27 primitiveName];
        v196 = v10;
        v193 = v24;
        if (v29)
        {
          v190 = v6;
          v30 = v27;
          v5._rawValue = v29;
          v31 = sub_1004A6294();
          v6 = sub_1004A62A4();
          v32 = sub_1004A6294();
          v33 = sub_1004A62A4();
          v34 = v31 < v32 || v33 < v31;
          if (v34)
          {
            goto LABEL_207;
          }

          v35 = sub_1004A6294();
          v36 = sub_1004A62A4();
          if (v6 < v35 || v36 < v6)
          {
            goto LABEL_208;
          }

          v38 = &v6[-v31];
          if (__OFSUB__(v6, v31))
          {
            goto LABEL_209;
          }

          if (v38)
          {
            if (v38 < 1)
            {
              goto LABEL_240;
            }

            sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
            v39 = swift_allocObject();
            v40 = j__malloc_size(v39);
            v39[2] = v38;
            v39[3] = 2 * v40 - 64;
            v4 = v5._rawValue;
            v9 = sub_1004A6294();
            if (v9 == sub_1004A62A4())
            {
              goto LABEL_234;
            }

            v41 = v39 + 4;
            v6 += ~v31;
            while (1)
            {
              v42 = sub_1004A62B4();
              v43 = sub_1004A6294();
              v44 = sub_1004A62A4();
              if (v9 < v43 || v9 >= v44)
              {
                goto LABEL_196;
              }

              *v41 = v42;
              if (!v6)
              {
                break;
              }

              ++v41;
              v9 = (v9 + 1);
              --v6;
              if (v9 == sub_1004A62A4())
              {
                goto LABEL_234;
              }
            }

            v9 = v187;
            v23 = v176;
          }

          else
          {
            v39 = _swiftEmptyArrayStorage;
          }

          v47 = MailboxName.init(_:)(v39);
          rawValue = v47.bytes._rawValue;
          value = v47._hashValue._value;

          v27 = v30;
          v10 = v196;
          v6 = v190;
        }

        else
        {
          rawValue = 0;
          value = 0;
        }

        v48 = sub_1004A5734();
        [v27 didAccessValueForKey:v48];

        if (!rawValue)
        {
          v49 = MailboxName.inbox.unsafeMutableAddressor();
          rawValue = *v49;
          value = *(v49 + 2);
        }

        v191 = value;
        v50 = sub_1004A5734();
        [v6 willAccessValueForKey:v50];

        v51 = [v6 primitiveName];
        if (v51)
        {
          v183 = rawValue;
          v52 = v6;
          v188 = v27;
          v5._rawValue = v51;
          v53 = sub_1004A6294();
          v6 = sub_1004A62A4();
          v54 = sub_1004A6294();
          v55 = sub_1004A62A4();
          if (v53 < v54 || v55 < v53)
          {
            goto LABEL_210;
          }

          v56 = sub_1004A6294();
          v57 = sub_1004A62A4();
          if (v6 < v56 || v57 < v6)
          {
            goto LABEL_211;
          }

          v58 = &v6[-v53];
          if (__OFSUB__(v6, v53))
          {
            goto LABEL_212;
          }

          if (v58)
          {
            if (v58 < 1)
            {
              goto LABEL_241;
            }

            sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
            v9 = swift_allocObject();
            v59 = j__malloc_size(v9);
            v9[2] = v58;
            v9[3] = 2 * v59 - 64;
            v4 = v5._rawValue;
            v60 = sub_1004A6294();
            if (v60 == sub_1004A62A4())
            {
              goto LABEL_235;
            }

            v61 = v9 + 4;
            v62 = &v6[~v53];
            while (1)
            {
              v63 = sub_1004A62B4();
              v6 = sub_1004A6294();
              v64 = sub_1004A62A4();
              if (v60 < v6 || v60 >= v64)
              {
                goto LABEL_197;
              }

              *v61 = v63;
              if (!v62)
              {
                break;
              }

              ++v61;
              ++v60;
              --v62;
              if (v60 == sub_1004A62A4())
              {
                goto LABEL_235;
              }
            }

            v10 = v196;
            v23 = v176;
          }

          else
          {
            v9 = _swiftEmptyArrayStorage;
          }

          v6 = v52;

          v67 = MailboxName.init(_:)(v9);
          v65 = v67.bytes._rawValue;
          v66 = v67._hashValue._value;

          v9 = v187;
          v27 = v188;
          rawValue = v183;
        }

        else
        {
          v65 = 0;
          v66 = 0;
        }

        v5._rawValue = sub_1004A5734();
        [v6 didAccessValueForKey:v5._rawValue];

        if (!v65)
        {
          v68 = MailboxName.inbox.unsafeMutableAddressor();
          v65 = *v68;
          v66 = *(v68 + 2);
        }

        v4 = static MailboxName.stableOrder(_:_:)(rawValue, v191, v65, v66);

        v24 = v193;
        v22 = v193 + 8;
      }

      while (v181 == v4);
      if (v181)
      {
        v69 = v185;
        if (v10 < v185)
        {
          goto LABEL_231;
        }

        if (v185 < v10)
        {
          v70 = 8 * v185;
          v71 = v177;
          do
          {
            if (v69 != v71)
            {
              v72 = *a3;
              if (!*a3)
              {
                goto LABEL_243;
              }

              v73 = *(v72 + v70);
              *(v72 + v70) = *(v72 + v24);
              *(v72 + v24) = v73;
            }

            ++v69;
            v24 -= 8;
            v70 += 8;
            v34 = v69 < v71--;
          }

          while (v34);
        }
      }
    }

    v74 = a3[1];
    if (v10 >= v74)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v10, v185))
    {
      goto LABEL_227;
    }

    if (v10 - v185 >= a4)
    {
      goto LABEL_132;
    }

    v75 = v185 + a4;
    if (__OFADD__(v185, a4))
    {
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
      goto LABEL_232;
    }

    if (v75 >= v74)
    {
      v75 = a3[1];
    }

    if (v75 < v185)
    {
      goto LABEL_230;
    }

    if (v10 == v75)
    {
      if (v10 >= v185)
      {
        goto LABEL_133;
      }

      goto LABEL_226;
    }

    v76 = *a3;
    v178 = v75;
    v180 = *a3;
    while (2)
    {
      v77 = *(v76 + 8 * v10);
      v78 = v10;
      v197 = v10;
      while (1)
      {
        v189 = v78 - 1;
        v79 = *(v76 + 8 * (v78 - 1));
        v6 = v77;
        v80 = v79;
        v81 = sub_1004A5734();
        [v6 willAccessValueForKey:v81];

        v82 = [v6 primitiveName];
        v192 = v78;
        v194 = v80;
        if (v82)
        {
          v5._rawValue = v82;
          v83 = sub_1004A6294();
          v84 = sub_1004A62A4();
          v85 = sub_1004A6294();
          v86 = sub_1004A62A4();
          if (v83 < v85 || v86 < v83)
          {
            goto LABEL_201;
          }

          v88 = sub_1004A6294();
          v89 = sub_1004A62A4();
          if (v84 < v88 || v89 < v84)
          {
            goto LABEL_202;
          }

          v90 = v84 - v83;
          if (__OFSUB__(v84, v83))
          {
            goto LABEL_203;
          }

          if (v90)
          {
            if (v90 < 1)
            {
LABEL_238:
              v170 = v5._rawValue;
              sub_1004A6294();
              __break(1u);
LABEL_239:
              v171 = v6;
              sub_1004A6294();
              __break(1u);
LABEL_240:
              v172 = v5._rawValue;
              sub_1004A6294();
              __break(1u);
LABEL_241:
              v173 = v5._rawValue;
              result = sub_1004A6294();
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
              goto LABEL_244;
            }

            v9 = v6;
            sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
            v91 = swift_allocObject();
            v92 = j__malloc_size(v91);
            v91[2] = v90;
            v91[3] = 2 * v92 - 64;
            v4 = v5._rawValue;
            v93 = sub_1004A6294();
            if (v93 != sub_1004A62A4())
            {
              v6 = v91 + 4;
              v94 = ~v83 + v84;
              while (1)
              {
                v95 = sub_1004A62B4();
                v96 = sub_1004A6294();
                v97 = sub_1004A62A4();
                if (v93 < v96 || v93 >= v97)
                {
                  break;
                }

                *v6 = v95;
                if (!v94)
                {

                  v10 = v197;
                  v6 = v9;
                  v9 = v187;
                  goto LABEL_103;
                }

                ++v6;
                ++v93;
                --v94;
                if (v93 == sub_1004A62A4())
                {
                  goto LABEL_232;
                }
              }

              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
LABEL_201:
              __break(1u);
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
LABEL_205:
              __break(1u);
LABEL_206:
              __break(1u);
LABEL_207:
              __break(1u);
LABEL_208:
              __break(1u);
LABEL_209:
              __break(1u);
LABEL_210:
              __break(1u);
LABEL_211:
              __break(1u);
LABEL_212:
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
LABEL_215:
              __break(1u);
LABEL_216:
              __break(1u);
LABEL_217:
              __break(1u);
LABEL_218:
              __break(1u);
LABEL_219:
              __break(1u);
LABEL_220:
              __break(1u);
LABEL_221:
              __break(1u);
LABEL_222:
              __break(1u);
LABEL_223:
              __break(1u);
LABEL_224:
              __break(1u);
LABEL_225:
              __break(1u);
              goto LABEL_226;
            }

LABEL_232:

            __break(1u);
LABEL_233:

            __break(1u);
LABEL_234:

            __break(1u);
LABEL_235:

            __break(1u);
LABEL_236:
            __break(1u);
LABEL_237:
            __break(1u);
            goto LABEL_238;
          }

          v91 = _swiftEmptyArrayStorage;
LABEL_103:

          v100 = MailboxName.init(_:)(v91);
          v98 = v100.bytes._rawValue;
          v99 = v100._hashValue._value;

          v80 = v194;
        }

        else
        {
          v98 = 0;
          v99 = 0;
        }

        v101 = sub_1004A5734();
        [v6 didAccessValueForKey:v101];

        if (!v98)
        {
          v102 = MailboxName.inbox.unsafeMutableAddressor();
          v98 = *v102;
          v99 = *(v102 + 2);
        }

        v103 = sub_1004A5734();
        [v80 willAccessValueForKey:v103];

        v104 = [v80 primitiveName];
        if (v104)
        {
          v182 = v99;
          v184 = v6;
          v6 = v104;
          v105 = sub_1004A6294();
          v106 = sub_1004A62A4();
          v5._rawValue = sub_1004A6294();
          v107 = sub_1004A62A4();
          if (v105 < v5._rawValue || v107 < v105)
          {
            goto LABEL_204;
          }

          v5._rawValue = sub_1004A6294();
          v108 = sub_1004A62A4();
          if (v106 < v5._rawValue || v108 < v106)
          {
            goto LABEL_205;
          }

          v109 = v106 - v105;
          if (__OFSUB__(v106, v105))
          {
            goto LABEL_206;
          }

          if (v109)
          {
            if (v109 < 1)
            {
              goto LABEL_239;
            }

            sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
            v5._rawValue = swift_allocObject();
            v110 = j__malloc_size(v5._rawValue);
            *(v5._rawValue + 2) = v109;
            *(v5._rawValue + 3) = 2 * v110 - 64;
            v4 = v6;
            v111 = sub_1004A6294();
            if (v111 == sub_1004A62A4())
            {
              goto LABEL_233;
            }

            v112 = v5._rawValue + 32;
            v9 = (~v105 + v106);
            while (1)
            {
              v113 = sub_1004A62B4();
              v114 = sub_1004A6294();
              v115 = sub_1004A62A4();
              if (v111 < v114 || v111 >= v115)
              {
                goto LABEL_195;
              }

              *v112 = v113;
              if (!v9)
              {
                break;
              }

              ++v112;
              ++v111;
              v9 = (v9 - 1);
              if (v111 == sub_1004A62A4())
              {
                goto LABEL_233;
              }
            }

            v9 = v187;
            v10 = v197;
            v80 = v194;
          }

          else
          {
            v5._rawValue = _swiftEmptyArrayStorage;
          }

          v99 = v182;

          v118 = MailboxName.init(_:)(v5);
          v116 = v118.bytes._rawValue;
          v117 = v118._hashValue._value;

          v6 = v184;
        }

        else
        {
          v116 = 0;
          v117 = 0;
        }

        v5._rawValue = sub_1004A5734();
        [v80 didAccessValueForKey:v5._rawValue];

        if (!v116)
        {
          v119 = MailboxName.inbox.unsafeMutableAddressor();
          v116 = *v119;
          v117 = *(v119 + 2);
        }

        v120 = static MailboxName.stableOrder(_:_:)(v98, v99, v116, v117);

        if (!v120)
        {
          break;
        }

        v76 = v180;
        if (!v180)
        {
          goto LABEL_236;
        }

        v77 = *(v180 + 8 * v192);
        *(v180 + 8 * v192) = *(v180 + 8 * v189);
        *(v180 + 8 * v189) = v77;
        v78 = v189;
        if (v189 == v185)
        {
          goto LABEL_81;
        }
      }

      v76 = v180;
LABEL_81:
      if (++v10 != v178)
      {
        continue;
      }

      break;
    }

    v10 = v178;
LABEL_132:
    if (v10 < v185)
    {
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      result = sub_100141810(v9);
      v9 = result;
LABEL_185:
      v166 = v9[2];
      if (v166 < 2)
      {
      }

      while (*a3)
      {
        v167 = v9[2 * v166];
        v168 = v9[2 * v166 + 3];
        sub_1003668C0((*a3 + 8 * v167), (*a3 + 8 * v9[2 * v166 + 2]), (*a3 + 8 * v168), v5._rawValue);
        if (v195)
        {
        }

        if (v168 < v167)
        {
          goto LABEL_223;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100141810(v9);
        }

        if (v166 - 2 >= v9[2])
        {
          goto LABEL_224;
        }

        v169 = &v9[2 * v166];
        *v169 = v167;
        v169[1] = v168;
        result = sub_100141784(v166 - 1);
        v166 = v9[2];
        if (v166 <= 1)
        {
        }
      }

      goto LABEL_242;
    }

LABEL_133:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v9[2] + 1, 1, v9);
      v9 = result;
    }

    v122 = v9[2];
    v121 = v9[3];
    v4 = v122 + 1;
    if (v122 >= v121 >> 1)
    {
      result = sub_100085288((v121 > 1), v122 + 1, 1, v9);
      v9 = result;
    }

    v9[2] = v4;
    v123 = &v9[2 * v122];
    v123[4] = v185;
    v123[5] = v10;
    v124 = v175->_rawValue;
    if (!v175->_rawValue)
    {
      break;
    }

    v8 = v10;
    if (v122)
    {
      while (1)
      {
        v125 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v126 = v9[4];
          v127 = v9[5];
          v136 = __OFSUB__(v127, v126);
          v128 = v127 - v126;
          v129 = v136;
LABEL_152:
          if (v129)
          {
            goto LABEL_215;
          }

          v142 = &v9[2 * v4];
          v144 = *v142;
          v143 = v142[1];
          v145 = __OFSUB__(v143, v144);
          v146 = v143 - v144;
          v147 = v145;
          if (v145)
          {
            goto LABEL_218;
          }

          v148 = &v9[2 * v125 + 4];
          v150 = *v148;
          v149 = v148[1];
          v136 = __OFSUB__(v149, v150);
          v151 = v149 - v150;
          if (v136)
          {
            goto LABEL_221;
          }

          if (__OFADD__(v146, v151))
          {
            goto LABEL_222;
          }

          if (v146 + v151 >= v128)
          {
            if (v128 < v151)
            {
              v125 = v4 - 2;
            }

            goto LABEL_173;
          }

          goto LABEL_166;
        }

        v152 = &v9[2 * v4];
        v154 = *v152;
        v153 = v152[1];
        v136 = __OFSUB__(v153, v154);
        v146 = v153 - v154;
        v147 = v136;
LABEL_166:
        if (v147)
        {
          goto LABEL_217;
        }

        v155 = &v9[2 * v125];
        v157 = v155[4];
        v156 = v155[5];
        v136 = __OFSUB__(v156, v157);
        v158 = v156 - v157;
        if (v136)
        {
          goto LABEL_220;
        }

        if (v158 < v146)
        {
          goto LABEL_3;
        }

LABEL_173:
        v163 = v125 - 1;
        if (v125 - 1 >= v4)
        {
          goto LABEL_198;
        }

        if (!*a3)
        {
          goto LABEL_237;
        }

        v164 = v9[2 * v163 + 4];
        v5._rawValue = v9[2 * v125 + 5];
        sub_1003668C0((*a3 + 8 * v164), (*a3 + 8 * v9[2 * v125 + 4]), (*a3 + 8 * v5._rawValue), v124);
        if (v195)
        {
        }

        if (v5._rawValue < v164)
        {
          goto LABEL_199;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100141810(v9);
        }

        if (v163 >= v9[2])
        {
          goto LABEL_200;
        }

        v165 = &v9[2 * v163];
        v165[4]._rawValue = v164;
        v165[5]._rawValue = v5._rawValue;
        result = sub_100141784(v125);
        v4 = v9[2];
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v130 = &v9[2 * v4 + 4];
      v131 = *(v130 - 64);
      v132 = *(v130 - 56);
      v136 = __OFSUB__(v132, v131);
      v133 = v132 - v131;
      if (v136)
      {
        goto LABEL_213;
      }

      v135 = *(v130 - 48);
      v134 = *(v130 - 40);
      v136 = __OFSUB__(v134, v135);
      v128 = v134 - v135;
      v129 = v136;
      if (v136)
      {
        goto LABEL_214;
      }

      v137 = &v9[2 * v4];
      v139 = *v137;
      v138 = v137[1];
      v136 = __OFSUB__(v138, v139);
      v140 = v138 - v139;
      if (v136)
      {
        goto LABEL_216;
      }

      v136 = __OFADD__(v128, v140);
      v141 = v128 + v140;
      if (v136)
      {
        goto LABEL_219;
      }

      if (v141 >= v133)
      {
        v159 = &v9[2 * v125 + 4];
        v161 = *v159;
        v160 = v159[1];
        v136 = __OFSUB__(v160, v161);
        v162 = v160 - v161;
        if (v136)
        {
          goto LABEL_225;
        }

        if (v128 < v162)
        {
          v125 = v4 - 2;
        }

        goto LABEL_173;
      }

      goto LABEL_152;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_183;
    }
  }

LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
  return result;
}