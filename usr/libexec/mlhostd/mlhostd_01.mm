void sub_100013D00(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000089AC(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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
}

void sub_100013EB0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v37 - v7;
  sub_1000089AC(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

uint64_t (*sub_100014138(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100014BDC(v7);
  v7[9] = sub_1000144C8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1000141E4;
}

uint64_t (*sub_1000141E8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100014BDC(v7);
  v7[9] = sub_10001465C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1000157E0;
}

void sub_100014294(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1000142F4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for DatastoreKey();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_100014C58(v5);
  v5[12] = sub_10001492C(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_100014430;
}

void sub_100014430(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1000144C8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100010DF4(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100013D00(&qword_100086090, &qword_100069740);
      v13 = v21;
      goto LABEL_11;
    }

    sub_1000127A0(v18, a4 & 1, &qword_100086090, &qword_100069740);
    v13 = sub_100010DF4(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100014644;
}

void (*sub_10001465C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100010DF4(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100013D00(&qword_1000857E8, &qword_100069178);
      v13 = v21;
      goto LABEL_11;
    }

    sub_1000127A0(v18, a4 & 1, &qword_1000857E8, &qword_100069178);
    v13 = sub_100010DF4(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100014644;
}

void sub_1000147D8(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = **a1;
  LOBYTE(v5) = *(*a1 + 40);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v6 = v3[4];
    v7 = *v3[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v9 = v3[1];
    v8 = v3[2];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v10 = (v7[6] + 16 * v6);
    *v10 = v9;
    v10[1] = v8;
    *(v7[7] + 8 * v6) = v4;
    v11 = v7[2];
    v12 = __OFADD__(v11, 1);
    v5 = v11 + 1;
    if (!v12)
    {
LABEL_13:
      v7[2] = v5;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v5)
    {
      v13 = v3[4];
      v14 = *v3[3];
      sub_100014C04(*(v14 + 48) + 16 * v13);
      a3(v13, v14);
    }

    goto LABEL_14;
  }

  v6 = v3[4];
  v7 = *v3[3];
  if ((v5 & 1) == 0)
  {
    v17 = v3[1];
    v16 = v3[2];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v18 = (v7[6] + 16 * v6);
    *v18 = v17;
    v18[1] = v16;
    *(v7[7] + 8 * v6) = v4;
    v19 = v7[2];
    v12 = __OFADD__(v19, 1);
    v5 = v19 + 1;
    if (v12)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v7[7] + 8 * v6) = v4;
LABEL_14:

  free(v3);
}

void (*sub_10001492C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for DatastoreKey();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_100010FDC(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10001354C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_100011C28(v19, a3 & 1);
    v14 = sub_100010FDC(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_100014ADC;
}

void sub_100014ADC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_100012EC4(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_10004B660(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*sub_100014BDC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1000157D4;
}

uint64_t (*sub_100014C58(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100014C80;
}

uint64_t sub_100014C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014CFC(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100014D64(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_10001550C(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1000152D4(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_100009A28(v13);
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t *sub_1000152D4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_10001550C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

Swift::Int sub_10001550C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000089AC(&unk_100085C30, &unk_1000693E0);
  result = static _SetStorage.allocate(capacity:)();
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
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
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
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
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

uint64_t sub_100015730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000157E4()
{
  sub_1000089AC(&qword_1000859A8, &qword_100069270);
  inited = swift_initStackObject();
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 16) = xmmword_1000691A0;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 448;
  v1 = NSFilePosixPermissions;
  v2 = sub_10004F318(inited);
  swift_setDeallocating();
  result = sub_100009C94(inited + 32, &unk_1000859B0, &qword_100069278);
  qword_100085820 = v2;
  return result;
}

SEL *sub_10001589C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v128 = a3;
  v134 = a1;
  v135 = a2;
  v121 = type metadata accessor for URLResourceValues();
  v120 = *(v121 - 8);
  v4 = __chkstk_darwin(v121);
  v122 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v123 = &v119 - v6;
  v7 = type metadata accessor for URL.DirectoryHint();
  v138 = *(v7 - 8);
  v8 = v138;
  __chkstk_darwin(v7);
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000089AC(&qword_100085948, &qword_100069258);
  __chkstk_darwin(v11 - 8);
  v13 = (&v119 - v12);
  v136 = type metadata accessor for URL();
  v14 = *(v136 - 8);
  v15 = __chkstk_darwin(v136);
  v131 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v119 - v18;
  __chkstk_darwin(v17);
  v21 = &v119 - v20;
  *(v3 + 72) = &_swiftEmptySetSingleton;
  v22 = *(v14 + 56);
  v130 = (v14 + 56);
  *&v137 = v22;
  v126 = v13;
  v22(v13, 1, 1);
  v23 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v24 = *(v8 + 13);
  LODWORD(v125) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v24(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
  v124 = v24;

  URL.init(filePath:directoryHint:relativeTo:)();
  v140 = 0xD000000000000021;
  v141 = 0x8000000100072D00;
  v24(v10, v23, v7);
  v129 = sub_100027A04();
  URL.appending<A>(path:directoryHint:)();
  v25 = *(v138 + 1);
  v138 += 8;
  v127 = v25;
  v25(v10, v7);
  v26 = *(v14 + 8);
  v27 = v136;
  v26(v19, v136);
  v133 = v14 + 8;
  v28 = URL.path(percentEncoded:)(0);
  v26(v21, v27);
  *(v132 + 3) = v28;
  (v137)(v126, 1, 1, v27);
  v29 = v125;
  v30 = v124;
  v124(v10, v125, v7);

  URL.init(filePath:directoryHint:relativeTo:)();
  v140 = 0xD00000000000001FLL;
  v141 = 0x8000000100072D30;
  v30(v10, v29, v7);
  URL.appending<A>(path:directoryHint:)();
  v127(v10, v7);
  v31 = v136;
  v26(v19, v136);
  v32 = URL.path(percentEncoded:)(0);
  v127 = v21;
  v33 = v132;
  v130 = v26;
  v26(v21, v31);
  v34 = v128;
  *(v33 + 5) = v32;
  sub_1000089AC(&qword_100085A40, &unk_100068F60);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v33[7] = v35;
  v36 = _swiftEmptyArrayStorage;
  v33[8] = sub_10004F12C(_swiftEmptyArrayStorage);
  v37 = &OBJC_PROTOCOL____TtP20LighthouseBackground26MLHostExtensionXPCProtocol_;
  v38 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v39 = [v38 Ledger];
  swift_unknownObjectRelease();
  v40 = [v39 TaskStatus];
  swift_unknownObjectRelease();
  v33[10] = v40;
  v41 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v42 = [v41 Ledger];
  swift_unknownObjectRelease();
  v43 = [v42 TaskError];
  swift_unknownObjectRelease();
  v33[11] = v43;
  v45 = v34[2];
  v46 = &OBJC_PROTOCOL____TtP20LighthouseBackground26MLHostExtensionXPCProtocol_;
  if (!v45)
  {
    v129 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v47 = 0;
  v48 = v34 + 5;
  v129 = _swiftEmptyArrayStorage;
  v125 = v45 - 1;
  *&v44 = 136315138;
  v137 = v44;
  v138 = v45;
  v126 = v34 + 5;
  do
  {
    v33 = &v48[2 * v47];
    v49 = v47;
    while (1)
    {
      if (v49 >= v34[2])
      {
        __break(1u);
        goto LABEL_51;
      }

      v50 = *(v33 - 1);
      v51 = *v33;
      v139 = 1;
      v52 = objc_opt_self();

      v36 = v46;
      v53 = [v52 v46[389]];
      v37 = String._bridgeToObjectiveC()();
      v54 = [v53 fileExistsAtPath:v37 isDirectory:&v139];

      if (!v54)
      {
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_1000098DC(v55, qword_100087610);

        v56 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v56, v37))
        {
          v57 = swift_slowAlloc();
          v58 = v34;
          v59 = swift_slowAlloc();
          v142 = v59;
          *v57 = v137;
          *(v57 + 4) = sub_100008A0C(v50, v51, &v142);
          _os_log_impl(&_mh_execute_header, v56, v37, "Skipping staticTask folder %s because doesn't exist.", v57, 0xCu);
          sub_100009914(v59);
          v34 = v58;
        }

        goto LABEL_5;
      }

      if (v139)
      {
        break;
      }

LABEL_5:
      v46 = v36;
      ++v49;
      v33 += 2;
      if (v138 == v49)
      {
        v33 = v132;
        goto LABEL_22;
      }
    }

    v60 = v129;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v60;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000249C4(0, v60[2] + 1, 1);
      v60 = v140;
    }

    v33 = v132;
    v63 = v60[2];
    v62 = v60[3];
    v37 = (v63 + 1);
    if (v63 >= v62 >> 1)
    {
      sub_1000249C4((v62 > 1), v63 + 1, 1);
      v60 = v140;
    }

    v47 = v49 + 1;
    v60[2] = v37;
    v129 = v60;
    v64 = &v60[2 * v63];
    v64[4] = v50;
    v64[5] = v51;
    v46 = v36;
    v48 = v126;
  }

  while (v125 != v49);
LABEL_22:

  v33[2] = v129;
  v65 = v127;
  URL.init(fileURLWithPath:)();

  URL.appendingPathComponent(_:)();
  v130(v65, v136);
  v37 = objc_opt_self();
  v34 = v46;
  v46 = [v37 v46[389]];
  URL._bridgeToObjectiveC()(v66);
  v36 = v67;
  if (qword_1000850B0 != -1)
  {
LABEL_51:
    swift_once();
  }

  type metadata accessor for FileAttributeKey(0);
  sub_100027AC8(&qword_1000851F8, type metadata accessor for FileAttributeKey, &unk_100068D34);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v140 = 0;
  v69 = [(SEL *)v46 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:isa error:&v140];

  v70 = v140;
  if ((v69 & 1) != 0 && (v71 = v140, v72 = [v37 v34[389]], , v73 = String._bridgeToObjectiveC()(), , v74 = Dictionary._bridgeToObjectiveC()().super.isa, v140 = 0, v75 = objc_msgSend(v72, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v73, 1, v74, &v140), v72, v73, v74, v70 = v140, v75))
  {
    v76 = v140;
    v77 = [v37 v34[389]];

    v78 = String._bridgeToObjectiveC()();

    v79 = Dictionary._bridgeToObjectiveC()().super.isa;
    v140 = 0;
    v80 = [v77 createDirectoryAtPath:v78 withIntermediateDirectories:1 attributes:v79 error:&v140];

    if (v80)
    {
      v81 = v140;
      v82 = v131;
      v83 = v123;
      goto LABEL_33;
    }

    v106 = v140;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v84 = v70;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v82 = v131;
  v83 = v123;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v85 = type metadata accessor for Logger();
  sub_1000098DC(v85, qword_100087610);
  swift_errorRetain();
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v88 = 138412290;
    swift_errorRetain();
    v90 = _swift_stdlib_bridgeErrorToNSError();
    *(v88 + 4) = v90;
    *v89 = v90;
    _os_log_impl(&_mh_execute_header, v86, v87, "Failed at creating folder: %@", v88, 0xCu);
    sub_100009C94(v89, &qword_100085970, &qword_100068F48);
  }

  else
  {
  }

LABEL_33:
  sub_1000089AC(&qword_100085A48, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000691A0;
  *(inited + 32) = NSURLIsExcludedFromBackupKey;
  v92 = NSURLIsExcludedFromBackupKey;
  sub_10004F440(inited);
  swift_setDeallocating();
  sub_100027C20(inited + 32);
  URL.resourceValues(forKeys:)();

  v93 = URLResourceValues.isExcludedFromBackup.getter();
  if (v93 == 2 || (v93 & 1) == 0)
  {
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    URL.setResourceValues(_:)();
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v107 = type metadata accessor for Logger();
    sub_1000098DC(v107, qword_100087610);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v108, v109))
    {

      v117 = *(v120 + 8);
      v118 = v121;
      v117(v122, v121);
      v117(v83, v118);
      goto LABEL_40;
    }

    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v142 = v111;
    *v110 = 136315138;
    swift_beginAccess();
    sub_100027AC8(&qword_100085D10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v99 = v136;
    v112 = dispatch thunk of CustomStringConvertible.description.getter();
    v114 = sub_100008A0C(v112, v113, &v142);

    *(v110 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v108, v109, "Folder %s is now excluded from iCloud Backup.", v110, 0xCu);
    sub_100009914(v111);

    v115 = *(v120 + 8);
    v116 = v121;
    v115(v122, v121);
    v115(v83, v116);
LABEL_47:
    v103 = v82;
    v104 = v99;
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    sub_1000098DC(v94, qword_100087610);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v142 = v98;
      *v97 = 136315138;
      swift_beginAccess();
      sub_100027AC8(&qword_100085D10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v99 = v136;
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = sub_100008A0C(v100, v101, &v142);

      *(v97 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v95, v96, "Folder %s is already excluded from iCloud Backup.", v97, 0xCu);
      sub_100009914(v98);

      (*(v120 + 8))(v83, v121);
      goto LABEL_47;
    }

    (*(v120 + 8))(v83, v121);
LABEL_40:
    v103 = v82;
    v104 = v136;
  }

  v130(v103, v104);
  return v33;
}

uint64_t sub_100016CA0()
{
  v1 = v0;
  _StringGuts.grow(_:)(49);
  v2 = _typeName(_:qualified:)();

  v3._countAndFlagsBits = 0x203A736B73617428;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);
  v4 = *(v0 + 56);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  os_unfair_lock_unlock(v4 + 4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x636974617473202CLL;
  v6._object = 0xEA0000000000203ALL;
  String.append(_:)(v6);
  v7._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x696D616E7964202CLL;
  v8._object = 0xEB00000000203A63;
  String.append(_:)(v8);
  String.append(_:)(*(v1 + 24));
  v9._countAndFlagsBits = 0x737465737361202CLL;
  v9._object = 0xEA0000000000203ALL;
  String.append(_:)(v9);
  String.append(_:)(*(v1 + 40));
  return v2;
}

void *sub_100016E50(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v47 = a2;
  v6 = type metadata accessor for MLHostTask();
  v7 = __chkstk_darwin(v6);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v45 = &v40 - v10;
  result = __chkstk_darwin(v9);
  v50 = a3;
  v51 = &v40 - v13;
  v14 = 0;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v48 = v12;
  v49 = v12 + 32;
  v43 = (v12 + 8);
  v44 = v12 + 16;
  v41 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

    v23 = v4;
LABEL_10:
    v24 = *(v50 + 56);
    v25 = v48;
    v42 = *(v48 + 72);
    v26 = v45;
    (*(v48 + 16))(v45, v24 + v42 * (__clz(__rbit64(v20)) | (v14 << 6)), v6);
    v27 = *(v25 + 32);
    v28 = v6;
    v29 = v51;
    v30 = v28;
    v27(v51, v26);
    v31 = v46(v29);
    v4 = v23;
    if (v23)
    {
      (*v43)(v51, v30);
      v39 = v41;

      return v39;
    }

    v20 &= v20 - 1;
    if (v31)
    {
      v6 = v30;
      (v27)(v40, v51, v30);
      v32 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000249E4(0, v32[2] + 1, 1);
        v6 = v30;
        v32 = v52;
      }

      v35 = v32[2];
      v34 = v32[3];
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v38 = v35 + 1;
        v41 = v35;
        sub_1000249E4((v34 > 1), v35 + 1, 1);
        v36 = v38;
        v35 = v41;
        v6 = v30;
        v32 = v52;
      }

      v32[2] = v36;
      v37 = *(v48 + 80);
      v41 = v32;
      result = (v27)(v32 + ((v37 + 32) & ~v37) + v35 * v42, v40, v6);
    }

    else
    {
      v6 = v30;
      result = (*v43)(v51, v30);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return v41;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      v23 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1000171C0()
{
  v1 = type metadata accessor for TaskType();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v45 - v5;
  v61 = type metadata accessor for MLHostTask();
  v6 = *(v61 - 8);
  v7 = __chkstk_darwin(v61);
  v58 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v46 = &v45 - v10;
  __chkstk_darwin(v9);
  v55 = &v45 - v11;
  v47 = *(v0 + 56);
  os_unfair_lock_lock(v47 + 4);
  swift_beginAccess();
  v12 = *(v0 + 64);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v52 = enum case for TaskType.dynamicTask(_:);
  v50 = (v2 + 8);
  v51 = (v2 + 104);
  v59 = (v6 + 8);
  v60 = v6 + 16;
  v53 = v6;
  v45 = (v6 + 32);
  v54 = v12;

  v18 = 0;
  v48 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v18;
    if (!v16)
    {
      break;
    }

LABEL_8:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = *(v54 + 56);
    v49 = *(v53 + 72);
    (*(v53 + 16))(v55, v21 + v49 * (v20 | (v18 << 6)), v61);
    MLHostTask.taskType.getter();
    (*v51)(v57, v52, v1);
    sub_100027AC8(&qword_100085928, &type metadata accessor for TaskType, &protocol conformance descriptor for TaskType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v64 == v62 && v65 == v63)
    {
      v24 = *v50;
      (*v50)(v57, v1);
      v24(v56, v1);

LABEL_13:
      v25 = *v45;
      (*v45)(v46, v55, v61);
      v26 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000249E4(0, v26[2] + 1, 1);
        v26 = v66;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        sub_1000249E4((v28 > 1), v29 + 1, 1);
        v26 = v66;
      }

      v26[2] = v29 + 1;
      v30 = *(v53 + 80);
      v48 = v26;
      v25(v26 + ((v30 + 32) & ~v30) + v29 * v49, v46, v61);
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v23 = *v50;
      (*v50)(v57, v1);
      v23(v56, v1);

      if (v22)
      {
        goto LABEL_13;
      }

      (*v59)(v55, v61);
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return;
    }

    if (v18 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v18);
    ++v19;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  v31 = v48;
  v32 = v48[2];
  if (v32)
  {
    v64 = _swiftEmptyArrayStorage;
    sub_1000249C4(0, v32, 0);
    v33 = v64;
    v34 = v31 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v35 = *(v53 + 72);
    v36 = *(v53 + 16);
    do
    {
      v37 = v58;
      v38 = v61;
      v36(v58, v34, v61);
      v39 = MLHostTask.name.getter();
      v41 = v40;
      (*v59)(v37, v38);
      v64 = v33;
      v43 = v33[2];
      v42 = v33[3];
      if (v43 >= v42 >> 1)
      {
        sub_1000249C4((v42 > 1), v43 + 1, 1);
        v33 = v64;
      }

      v33[2] = v43 + 1;
      v44 = &v33[2 * v43];
      v44[4] = v39;
      v44[5] = v41;
      v34 += v35;
      --v32;
    }

    while (v32);
  }

  os_unfair_lock_unlock(v47 + 4);
}

void *sub_1000177EC()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = String._bridgeToObjectiveC()();
  v23 = 0;
  v2 = [v0 contentsOfDirectoryAtPath:v1 error:&v23];

  v3 = v23;
  if (v2)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v3;

    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = v4 + 40;
      v9 = _swiftEmptyArrayStorage;
      do
      {
        v10 = (v8 + 16 * v7);
        v11 = v7;
        while (1)
        {
          if (v11 >= *(v4 + 16))
          {
            __break(1u);
          }

          v13 = *(v10 - 1);
          v12 = *v10;
          v7 = v11 + 1;

          v14._countAndFlagsBits = 0x7473696C702ELL;
          v14._object = 0xE600000000000000;
          if (String.hasSuffix(_:)(v14))
          {
            break;
          }

          v10 += 2;
          ++v11;
          if (v6 == v7)
          {
            goto LABEL_17;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v9;
        v22 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000249C4(0, v9[2] + 1, 1);
          v9 = v23;
        }

        v17 = v9[2];
        v16 = v9[3];
        if (v17 >= v16 >> 1)
        {
          sub_1000249C4((v16 > 1), v17 + 1, 1);
          v9 = v23;
        }

        v9[2] = v17 + 1;
        v18 = &v9[2 * v17];
        v18[4] = v13;
        v18[5] = v12;
        v8 = v22;
      }

      while (v6 - 1 != v11);
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

LABEL_17:

    v20 = sub_10004F764(v9);
  }

  else
  {
    v19 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return &_swiftEmptySetSingleton;
  }

  return v20;
}

void *sub_100017A40()
{
  v62 = type metadata accessor for URL.DirectoryHint();
  v64 = *(v62 - 8);
  __chkstk_darwin(v62);
  v55 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000089AC(&qword_100085948, &qword_100069258);
  __chkstk_darwin(v2 - 8);
  v61 = &v43 - v3;
  v65 = type metadata accessor for URL();
  v4 = *(v65 - 8);
  v5 = __chkstk_darwin(v65);
  v60 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = &v43 - v7;
  v58 = objc_opt_self();
  v8 = [v58 defaultManager];
  v9 = *(v0 + 40);
  v56 = *(v0 + 48);
  v57 = v9;
  v10 = String._bridgeToObjectiveC()();
  v66[0] = 0;
  v11 = [v8 contentsOfDirectoryAtPath:v10 error:v66];

  v12 = v66[0];
  if (v11)
  {
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v12;

    v15 = *(v13 + 16);
    if (!v15)
    {
      v18 = &_swiftEmptyArrayStorage;
      goto LABEL_20;
    }

    v16 = 0;
    v52 = (v4 + 56);
    v51 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v50 = (v64 + 104);
    v49 = (v64 + 8);
    v48 = (v4 + 8);
    v17 = v13 + 40;
    v44 = v15 - 1;
    v18 = &_swiftEmptyArrayStorage;
    v53 = v15;
    v54 = v13;
    v45 = v13 + 40;
    v19 = enum case for URL.DirectoryHint.inferFromPath(_:);
    while (1)
    {
      v46 = v18;
      v20 = (v17 + 16 * v16);
      v21 = v16;
      while (1)
      {
        if (v21 >= *(v13 + 16))
        {
          __break(1u);
        }

        v63 = v20;
        v64 = v21;
        v24 = *(v20 - 1);
        v23 = *v20;
        v67 = 1;
        (*v52)(v61, 1, 1, v65);
        v25 = *v50;
        v26 = v55;
        v27 = v62;
        (*v50)(v55, v19, v62);

        v28 = v60;
        v29 = v23;
        URL.init(filePath:directoryHint:relativeTo:)();
        v47 = v24;
        v66[0] = v24;
        v66[1] = v23;
        v25(v26, v19, v27);
        sub_100027A04();
        v30 = v59;
        URL.appending<A>(path:directoryHint:)();
        (*v49)(v26, v27);
        v31 = *v48;
        v32 = v65;
        (*v48)(v28, v65);
        URL.path(percentEncoded:)(0);
        v31(v30, v32);
        v33 = [v58 defaultManager];
        v34 = String._bridgeToObjectiveC()();

        LODWORD(v27) = [v33 fileExistsAtPath:v34 isDirectory:&v67];

        if (v27)
        {
          break;
        }

        v22 = v53;
LABEL_6:
        v21 = v64 + 1;
        v20 = v63 + 2;
        v13 = v54;
        if (v22 == v64 + 1)
        {
          v18 = v46;
          goto LABEL_20;
        }
      }

      v22 = v53;
      if ((v67 & 1) == 0)
      {
        break;
      }

      v18 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000249C4(0, v18[2] + 1, 1);
        v18 = v68;
      }

      v13 = v54;
      v17 = v45;
      v37 = v18[2];
      v36 = v18[3];
      if (v37 >= v36 >> 1)
      {
        sub_1000249C4((v36 > 1), v37 + 1, 1);
        v18 = v68;
      }

      v38 = v64;
      v16 = v64 + 1;
      v18[2] = v37 + 1;
      v39 = &v18[2 * v37];
      *(v39 + 4) = v47;
      *(v39 + 5) = v29;
      if (v44 == v38)
      {
LABEL_20:

        v41 = sub_10004F764(v18);

        return v41;
      }
    }

    goto LABEL_6;
  }

  v40 = v66[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10001802C()
{
  v1 = [*(v0 + 80) pruner];
  v2 = String._bridgeToObjectiveC()();
  v12 = sub_10001824C;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100027C8C;
  v11 = &unk_100082A50;
  v3 = _Block_copy(&v8);

  [v1 deleteWithPolicy:v2 eventsPassingTest:v3];

  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = [*(v0 + 88) pruner];
  v6 = String._bridgeToObjectiveC()();
  v12 = sub_10001824C;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100027C8C;
  v11 = &unk_100082A78;
  v7 = _Block_copy(&v8);

  [v5 deleteWithPolicy:v6 eventsPassingTest:v7];

  _Block_release(v7);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_100018254(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_1000182B0(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(a1 + 64) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    sub_1000089AC(&qword_1000859D0, &qword_100069280);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(a1 + 64) = v4;
  }

  return swift_endAccess();
}

uint64_t sub_100018354(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v110[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000089AC(&qword_100085948, &qword_100069258);
  __chkstk_darwin(v9 - 8);
  v122 = &v110[-v10];
  v11 = type metadata accessor for URL();
  v123 = *(v11 - 8);
  v124 = v11;
  v12 = __chkstk_darwin(v11);
  v117 = &v110[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v118 = &v110[-v14];
  v120 = type metadata accessor for TaskType();
  isa = *(v120 - 8);
  v15 = __chkstk_darwin(v120);
  v125 = &v110[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v126 = &v110[-v17];
  v18 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v110[-v19];
  v21 = type metadata accessor for MLHostTask();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v110[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100019300(a1, a2, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100009C94(v20, &qword_100085940, &unk_1000693D0);
LABEL_19:
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000098DC(v42, qword_100087610);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v132 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_100008A0C(a1, a2, &v132);
      _os_log_impl(&_mh_execute_header, v43, v44, "DynamicTask %s not found in registry.", v45, 0xCu);
      sub_100009914(v46);
    }

    return 0;
  }

  v112 = v8;
  v113 = v6;
  v114 = v5;
  v128 = a1;
  v129 = a2;
  v119 = v22;
  v25 = *(v22 + 32);
  v121 = v24;
  v116 = v21;
  v25(v24, v20, v21);
  v115 = v2;
  v26 = sub_1000177EC();
  v27 = v26;
  v28 = v26 + 56;
  v29 = 1 << v26[32];
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v26 + 7);
  v32 = (v29 + 63) >> 6;

  v33 = 0;
  v34 = &protocol witness table for String;
  if (!v31)
  {
LABEL_7:
    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35 >= v32)
      {

        (v119)[1](v121, v116);
        goto LABEL_18;
      }

      v31 = *&v28[8 * v35];
      ++v33;
      if (v31)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  while (1)
  {
    v35 = v33;
LABEL_10:
    v36 = *(v27 + 6) + ((v35 << 10) | (16 * __clz(__rbit64(v31))));
    v37 = *v36;
    v38 = *(v36 + 8);
    v132 = 0x7473696C702ELL;
    v133 = 0xE600000000000000;
    v130 = v128;
    v131 = v129;

    v130 = String.init<A>(_:)();
    v131 = v39;
    String.append<A>(contentsOf:)();
    v2 = v131;
    if (v37 == v130 && v38 == v131)
    {

      goto LABEL_27;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      break;
    }

    v31 &= v31 - 1;

    v33 = v35;
    if (!v31)
    {
      goto LABEL_7;
    }
  }

LABEL_27:

  v48 = v121;
  MLHostTask.taskType.getter();
  v49 = v120;
  isa[13](v125, enum case for TaskType.dynamicTask(_:), v120);
  sub_100027AC8(&qword_100085928, &type metadata accessor for TaskType, &protocol conformance descriptor for TaskType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v50 = v119;
  v51 = v115;
  if (v132 == v130 && v133 == v131)
  {
    v52 = isa[1];
    v52(v125, v49);
    v52(v126, v49);
  }

  else
  {
    v111 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v53 = isa[1];
    v53(v125, v49);
    v53(v126, v49);

    if ((v111 & 1) == 0)
    {
      (v50)[1](v48, v116);
LABEL_18:

      a1 = v128;
      a2 = v129;
      goto LABEL_19;
    }
  }

  isa = v51[3].isa;
  (*(v123 + 56))(v122, 1, 1, v124);
  v54 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v55 = v113;
  v56 = *(v113 + 104);
  v57 = v112;
  v58 = v114;
  v56(v112, enum case for URL.DirectoryHint.inferFromPath(_:), v114);

  v59 = v117;
  URL.init(filePath:directoryHint:relativeTo:)();
  v132 = v37;
  v133 = v38;
  v56(v57, v54, v58);
  sub_100027A04();
  v60 = v118;
  URL.appending<A>(path:directoryHint:)();
  (*(v55 + 8))(v57, v58);
  v61 = v124;
  v62 = *(v123 + 8);
  v62(v59, v124);
  object = URL.path(percentEncoded:)(0)._object;
  v62(v60, v61);
  v64 = objc_opt_self();
  v65 = [v64 defaultManager];
  v66 = String._bridgeToObjectiveC()();
  v132 = 0;
  v67 = [v65 removeItemAtPath:v66 error:&v132];

  if (!v67)
  {
    v89 = v132;
    v90 = v121;
    v34 = v119;
LABEL_43:
    v91 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v132 = v91;
    swift_errorRetain();
    sub_1000089AC(&qword_100085958, &unk_1000693F0);
    sub_100009A48(0, &unk_100085960, NSError_ptr);
    swift_dynamicCast();

    v92 = v130;
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_1000098DC(v93, qword_100087610);
    v94 = v92;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v97 = 138412290;
      *(v97 + 4) = v94;
      *v98 = v94;
      v99 = v94;
      _os_log_impl(&_mh_execute_header, v95, v96, "Failed removing items: %@", v97, 0xCu);
      sub_100009C94(v98, &qword_100085970, &qword_100068F48);
    }

    else
    {
      v99 = v95;
      v95 = v94;
    }

    (v34)[1](v90, v116);

    return 0;
  }

  isa = object;
  v68 = qword_1000850B8;
  v69 = v132;
  if (v68 != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  sub_1000098DC(v70, qword_100087610);

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();

  v73 = os_log_type_enabled(v71, v72);
  v74 = v121;
  v34 = v119;
  if (v73)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v132 = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_100008A0C(v37, v38, &v132);
    _os_log_impl(&_mh_execute_header, v71, v72, "Removed task definition: %s", v75, 0xCu);
    sub_100009914(v76);
    v34 = v119;

    v74 = v121;
  }

  v77 = MLHostTask.taskFolder.getter();
  if (!v78)
  {
    goto LABEL_52;
  }

  v79 = v77;
  v80 = v78;
  v81 = [v64 defaultManager];
  v82 = String._bridgeToObjectiveC()();
  v132 = 0;
  v83 = [v81 removeItemAtPath:v82 error:&v132];

  v84 = v132;
  if (!v83)
  {
    v89 = v84;

    v90 = v121;
    goto LABEL_43;
  }

  v2 = Logger.logObject.getter();
  v85 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v2, v85))
  {
LABEL_50:

    goto LABEL_51;
  }

  v86 = swift_slowAlloc();
  v87 = swift_slowAlloc();
  v132 = v87;
  *v86 = 136315138;
  v88 = sub_100008A0C(v79, v80, &v132);

  *(v86 + 4) = v88;
  _os_log_impl(&_mh_execute_header, v2, v85, "Removed task folder: %s", v86, 0xCu);
  sub_100009914(v87);
  v34 = v119;

LABEL_51:

  v74 = v121;
LABEL_52:
  v100 = v115[7].isa;
  v101 = __chkstk_darwin(v77);
  v103 = v128;
  v102 = v129;
  *&v110[-32] = v104;
  *&v110[-24] = v103;
  *&v110[-16] = v102;
  __chkstk_darwin(v101);
  *&v110[-16] = sub_100027A8C;
  *&v110[-8] = v105;
  os_unfair_lock_lock(v100 + 4);
  sub_100027CA0();
  os_unfair_lock_unlock(v100 + 4);

  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v132 = v109;
    *v108 = 136315138;
    *(v108 + 4) = sub_100008A0C(v103, v102, &v132);
    _os_log_impl(&_mh_execute_header, v106, v107, "Task %s is removed from TaskRegistry.", v108, 0xCu);
    sub_100009914(v109);
  }

  (v34)[1](v74, v116);
  return 1;
}

void sub_100019300(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 56);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v3 + 64);
  if (*(v8 + 16) && (v9 = sub_100010DF4(a1, a2), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = type metadata accessor for MLHostTask();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a3, v12 + *(v14 + 72) * v11, v13);
    (*(v14 + 56))(a3, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for MLHostTask();
    (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  swift_endAccess();
  os_unfair_lock_unlock(v7 + 4);
}

uint64_t sub_100019478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  swift_beginAccess();
  v9 = sub_100010DF4(a2, a3);
  if (v10)
  {
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + 64);
    v19 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000133A4();
      v13 = v19;
    }

    v14 = *(v13 + 56);
    v15 = type metadata accessor for MLHostTask();
    v16 = *(v15 - 8);
    (*(v16 + 32))(v8, v14 + *(v16 + 72) * v11, v15);
    sub_10004B150(v11, v13);
    *(a1 + 64) = v13;
    (*(v16 + 56))(v8, 0, 1, v15);
  }

  else
  {
    v17 = type metadata accessor for MLHostTask();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  }

  swift_endAccess();
  return sub_100009C94(v8, &qword_100085940, &unk_1000693D0);
}

void *sub_10001967C()
{
  v1 = sub_10001982C();
  v2 = v1;
  if (*(v1 + 2))
  {
    v3 = *(v0 + 56);
    v4 = __chkstk_darwin(v1);
    __chkstk_darwin(v4);
    os_unfair_lock_lock(v3 + 4);
    sub_100027CA0();
    os_unfair_lock_unlock(v3 + 4);

    sub_100026030(v0, v2);
  }

  else
  {

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000098DC(v5, qword_100087610);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No task pruned. Skipping cleanup.", v8, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  return v2;
}

char *sub_10001982C()
{
  v1 = sub_1000089AC(&qword_100085ED0, &qword_1000695E0);
  __chkstk_darwin(v1 - 8);
  v138 = &v121[-v2];
  v139 = type metadata accessor for Date();
  v3 = *(v139 - 8);
  v4 = __chkstk_darwin(v139 - 8);
  v127 = &v121[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v130 = &v121[-v7];
  __chkstk_darwin(v6);
  v9 = &v121[-v8];
  v10 = sub_1000089AC(&qword_100085978, &qword_100069260);
  __chkstk_darwin(v10 - 8);
  v153 = &v121[-v11];
  v158 = type metadata accessor for TaskDefinition();
  v12 = *(v158 - 8);
  v13 = __chkstk_darwin(v158 - 8);
  v126 = &v121[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v156 = &v121[-v15];
  v152 = type metadata accessor for URL.DirectoryHint();
  v16 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v121[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1000089AC(&qword_100085948, &qword_100069258);
  __chkstk_darwin(v18 - 8);
  v150 = &v121[-v19];
  v162 = type metadata accessor for URL();
  v20 = *(v162 - 8);
  v21 = __chkstk_darwin(v162);
  v149 = &v121[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v148 = &v121[-v23];
  v163 = v0;
  v24 = sub_1000177EC();
  v26 = 0;
  v134 = 0;
  v28 = (v24 + 7);
  v27 = v24[7];
  v157 = v24;
  v29 = 1 << *(v24 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v27;
  v32 = (v29 + 63) >> 6;
  v146 = (v20 + 56);
  v145 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v144 = (v16 + 104);
  v143 = (v16 + 8);
  v142 = (v20 + 8);
  v141 = (v12 + 48);
  v137 = (v12 + 32);
  v136 = (v3 + 48);
  v129 = (v3 + 32);
  v133 = (v3 + 8);
  v125 = (v12 + 16);
  v124 = (v3 + 16);
  v135 = (v12 + 8);
  v132 = _swiftEmptyArrayStorage;
  *&v25 = 136315138;
  v131 = v25;
  *&v25 = 136315394;
  v128 = v25;
  v140 = v9;
  v154 = (v24 + 7);
  v147 = v32;
  while (v31)
  {
LABEL_11:
    v34 = v157[6];
    v159 = v26;
    v35 = v34 + ((v26 << 10) | (16 * __clz(__rbit64(v31))));
    v37 = *v35;
    v36 = *(v35 + 8);
    v160 = *(v163 + 24);
    v161 = (v31 - 1) & v31;
    (*v146)(v150, 1, 1, v162);
    v38 = *v144;
    v40 = v151;
    v39 = v152;
    v41 = v145;
    (*v144)(v151, v145, v152);

    v42 = v149;
    URL.init(filePath:directoryHint:relativeTo:)();
    v155 = v37;
    v166[0] = v37;
    v166[1] = v36;
    v160 = v36;
    v38(v40, v41, v39);
    sub_100027A04();
    v43 = v148;
    URL.appending<A>(path:directoryHint:)();
    (*v143)(v40, v39);
    v44 = *v142;
    v45 = v162;
    (*v142)(v42, v162);
    v46 = URL.path(percentEncoded:)(1);
    v44(v43, v45);
    v47 = v153;
    sub_10001AE50(v46._countAndFlagsBits, v46._object, v153);
    v48 = v158;
    if ((*v141)(v47, 1, v158) == 1)
    {

      sub_100009C94(v47, &qword_100085978, &qword_100069260);
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_1000098DC(v49, qword_100087610);
      v50 = v160;

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      v53 = os_log_type_enabled(v51, v52);
      v28 = v154;
      v31 = v161;
      v26 = v159;
      if (v53)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v166[0] = v55;
        *v54 = v131;
        v56 = sub_100008A0C(v155, v50, v166);

        *(v54 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v51, v52, "Found invalid definition file: %s", v54, 0xCu);
        sub_100009914(v55);
      }

      else
      {
      }

      v32 = v147;
    }

    else
    {
      (*v137)(v156, v47, v48);
      v57 = v138;
      TaskDefinition.endDate.getter();
      v58 = v139;
      v59 = (*v136)(v57, 1, v139);
      v60 = v140;
      if (v59 == 1)
      {
        sub_100009C94(v57, &qword_100085ED0, &qword_1000695E0);
        v28 = v154;
        v26 = v159;
        v61 = v160;
LABEL_24:
        v87 = [objc_opt_self() defaultManager];
        v88 = String._bridgeToObjectiveC()();
        v166[0] = 0;
        v89 = [v87 removeItemAtPath:v88 error:v166];

        if (v89)
        {
          v106 = v166[0];

          v31 = v161;
          if (qword_1000850B8 != -1)
          {
            swift_once();
          }

          v107 = type metadata accessor for Logger();
          sub_1000098DC(v107, qword_100087610);

          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v166[0] = v111;
            *v110 = v131;
            v112 = sub_100008A0C(v155, v61, v166);

            *(v110 + 4) = v112;
            _os_log_impl(&_mh_execute_header, v108, v109, "Removed expired task definition: %s", v110, 0xCu);
            sub_100009914(v111);
          }

          else
          {
          }

          v32 = v147;
          v113 = TaskDefinition.name.getter();
          v115 = v114;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v132 = sub_1000243B8(0, *(v132 + 2) + 1, 1, v132);
          }

          v117 = *(v132 + 2);
          v116 = *(v132 + 3);
          if (v117 >= v116 >> 1)
          {
            v132 = sub_1000243B8((v116 > 1), v117 + 1, 1, v132);
          }

          (*v135)(v156, v48);
          v118 = v132;
          *(v132 + 2) = v117 + 1;
          v119 = &v118[16 * v117];
          *(v119 + 4) = v113;
          *(v119 + 5) = v115;
        }

        else
        {
          v90 = v166[0];
          v91 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v166[0] = v91;
          sub_1000089AC(&qword_100085958, &unk_1000693F0);
          sub_100009A48(0, &unk_100085960, NSError_ptr);
          swift_dynamicCast();

          v92 = v164;
          if (qword_1000850B8 != -1)
          {
            swift_once();
          }

          v93 = type metadata accessor for Logger();
          sub_1000098DC(v93, qword_100087610);

          v94 = v92;
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v165 = v99;
            *v97 = v128;
            v100 = sub_100008A0C(v46._countAndFlagsBits, v46._object, &v165);

            *(v97 + 4) = v100;
            *(v97 + 12) = 2112;
            *(v97 + 14) = v94;
            *v98 = v94;
            v101 = v94;
            _os_log_impl(&_mh_execute_header, v95, v96, "Failed at removing task definition: %s %@", v97, 0x16u);
            sub_100009C94(v98, &qword_100085970, &qword_100068F48);

            sub_100009914(v99);

            (*v135)(v156, v158);
          }

          else
          {

            (*v135)(v156, v48);
          }

          v32 = v147;
          v31 = v161;

          v134 = 0;
        }
      }

      else
      {
        (*v129)(v140, v57, v58);
        v62 = v60;
        v63 = v130;
        static Date.now.getter();
        v64 = static Date.> infix(_:_:)();
        v65 = *v133;
        (*v133)(v63, v58);
        v28 = v154;
        v26 = v159;
        v61 = v160;
        if ((v64 & 1) == 0)
        {
          v65(v62, v58);
          v48 = v158;
          goto LABEL_24;
        }

        v155 = v65;

        v66 = v156;
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v67 = type metadata accessor for Logger();
        sub_1000098DC(v67, qword_100087610);
        v68 = v126;
        (*v125)(v126, v66, v158);
        v69 = v127;
        v70 = v140;
        v71 = v139;
        (*v124)(v127, v140, v139);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = v69;
          v122 = v73;
          v76 = v68;
          v77 = v74;
          v123 = swift_slowAlloc();
          v166[0] = v123;
          *v77 = v128;
          v78 = TaskDefinition.name.getter();
          v80 = v79;
          v160 = *v135;
          v160(v76, v158);
          v81 = sub_100008A0C(v78, v80, v166);

          *(v77 + 4) = v81;
          *(v77 + 12) = 2080;
          sub_100027AC8(&unk_100085980, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v82 = dispatch thunk of CustomStringConvertible.description.getter();
          v84 = v83;
          v85 = v155;
          v155(v75, v71);
          v86 = sub_100008A0C(v82, v84, v166);

          *(v77 + 14) = v86;
          _os_log_impl(&_mh_execute_header, v72, v122, "Skipping %s because expiration date is in the future %s", v77, 0x16u);
          swift_arrayDestroy();

          v85(v140, v71);
          v160(v156, v158);
        }

        else
        {

          v102 = v155;
          v155(v69, v71);
          v103 = *v135;
          v104 = v68;
          v105 = v158;
          (*v135)(v104, v158);
          v102(v70, v71);
          v103(v156, v105);
        }

        v32 = v147;
        v31 = v161;
      }
    }
  }

  while (1)
  {
    v33 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
    }

    if (v33 >= v32)
    {
      break;
    }

    v31 = *&v28[8 * v33];
    ++v26;
    if (v31)
    {
      v26 = v33;
      goto LABEL_11;
    }
  }

  return v132;
}

uint64_t sub_10001A9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v50 = type metadata accessor for MLHostTask();
  v44 = *(v50 - 8);
  v7 = __chkstk_darwin(v50);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v49 = &v38 - v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v47 = (v44 + 32);
    v48 = (v44 + 56);
    v43 = (v44 + 16);
    v45 = (v44 + 8);
    v46 = (v44 + 48);
    v14 = (a1 + 40);
    *&v11 = 136315138;
    v40 = v11;
    v41 = v6;
    v42 = a2;
    v39 = v9;
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      swift_beginAccess();

      v17 = sub_100010DF4(v16, v15);
      if (v18)
      {
        v19 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *(a2 + 64);
        v52 = v21;
        *(a2 + 64) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000133A4();
          v21 = v52;
        }

        v22 = v50;
        (*(v44 + 32))(v6, *(v21 + 56) + *(v44 + 72) * v19, v50);
        sub_10004B150(v19, v21);
        *(a2 + 64) = v21;

        v23 = 0;
      }

      else
      {
        v23 = 1;
        v22 = v50;
      }

      (*v48)(v6, v23, 1, v22);
      swift_endAccess();

      if ((*v46)(v6, 1, v22) == 1)
      {
        result = sub_100009C94(v6, &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v24 = v49;
        (*v47)(v49, v6, v22);
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_1000098DC(v25, qword_100087610);
        (*v43)(v9, v24, v22);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v51[0] = v29;
          *v28 = v40;
          v30 = MLHostTask.name.getter();
          v31 = v22;
          v33 = v32;
          v34 = v9;
          v35 = *v45;
          (*v45)(v34, v31);
          v36 = sub_100008A0C(v30, v33, v51);

          *(v28 + 4) = v36;
          _os_log_impl(&_mh_execute_header, v26, v27, "Task %s is removed from TaskRegistry", v28, 0xCu);
          sub_100009914(v29);
          v6 = v41;

          a2 = v42;

          result = (v35)(v49, v50);
          v9 = v39;
        }

        else
        {

          v37 = *v45;
          (*v45)(v9, v22);
          result = (v37)(v49, v22);
        }
      }

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_10001AE50@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for TaskValidationError();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v9 = __chkstk_darwin(v8);
  v11 = v46 - v10;
  v12 = __chkstk_darwin(v9);
  __chkstk_darwin(v12);
  v13 = sub_1000089AC(&qword_100085978, &qword_100069260);
  __chkstk_darwin(v13 - 8);
  v15 = v46 - v14;
  v16 = type metadata accessor for TaskDefinition();
  v17 = *(v16 - 8);
  v56 = v16;
  v57 = v17;
  __chkstk_darwin(v16);
  v55 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19._countAndFlagsBits = 0x7473696C702ELL;
  v19._object = 0xE600000000000000;
  if (String.hasSuffix(_:)(v19))
  {
    v52 = v7;
    v53 = v6;
    v54 = a3;
    v20 = [objc_opt_self() defaultManager];
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 contentsAtPath:v21];

    if (v22)
    {
      v49 = v11;
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      v26 = PropertyListDecoder.init()();
      sub_100027AC8(&qword_100085470, &type metadata accessor for TaskDefinition, &protocol conformance descriptor for TaskDefinition);
      v27 = v56;
      v50 = v23;
      v51 = v25;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v46[4] = a1;
      v47 = *(v57 + 56);
      v48 = v26;
      v47(v15, 0, 1, v27);
      v41 = v55;
      v42 = v15;
      v43 = *(v57 + 32);
      v43(v55, v42, v27);
      _s20LighthouseBackground22validateTaskDefinitionyyAA0dE0VAA0D15ValidationErrorOYKF();

      sub_1000099D4(v50, v51);
      v44 = v54;
      v43(v54, v41, v27);
      return (v47)(v44, 0, 1, v27);
    }

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000098DC(v36, qword_100087610);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_100008A0C(a1, a2, &v58);
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed reading data from: %s", v39, 0xCu);
      sub_100009914(v40);
    }

    v35 = v54;
    v33 = v56;
    v34 = *(v57 + 56);
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000098DC(v28, qword_100087610);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v58 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100008A0C(a1, a2, &v58);
      _os_log_impl(&_mh_execute_header, v29, v30, "Invalid task definition file: %s", v31, 0xCu);
      sub_100009914(v32);
    }

    v33 = v56;
    v34 = *(v57 + 56);
    v35 = a3;
  }

  return v34(v35, 1, 1, v33);
}

uint64_t sub_10001B96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = 0;
  v10 = *(a1 + 64);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
LABEL_9:
    v16 = (*(v10 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v13)))));
    result = *v16;
    if (*v16 != a2 || v16[1] != a3)
    {
      v13 &= v13 - 1;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    v18 = 1;
LABEL_16:
    *a4 = v18;
    return result;
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      v18 = 0;
      goto LABEL_16;
    }

    v13 = *(v10 + 64 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10001BA90(uint64_t a1, uint64_t a2)
{
  v32 = type metadata accessor for MLHostTask();
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 56);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v2 + 64);
  v34 = a1;
  v35 = a2;

  v9 = sub_100016E50(sub_1000249A4, v33, v8);
  v10 = v9[2];
  if (v10)
  {
    v28 = v7;
    v36 = &_swiftEmptyArrayStorage;
    sub_1000249C4(0, v10, 0);
    v11 = v36;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = *(v12 + 64);
    v27 = v9;
    v15 = v9 + ((v14 + 32) & ~v14);
    v29 = *(v12 + 56);
    v30 = v13;
    v16 = (v12 - 8);
    do
    {
      v18 = v31;
      v17 = v32;
      v19 = v12;
      v30(v31, v15, v32);
      v20 = MLHostTask.name.getter();
      v22 = v21;
      (*v16)(v18, v17);
      v36 = v11;
      v24 = v11[2];
      v23 = v11[3];
      if (v24 >= v23 >> 1)
      {
        sub_1000249C4((v23 > 1), v24 + 1, 1);
        v11 = v36;
      }

      v11[2] = v24 + 1;
      v25 = &v11[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
      v15 += v29;
      --v10;
      v12 = v19;
    }

    while (v10);

    v7 = v28;
  }

  else
  {

    v11 = &_swiftEmptyArrayStorage;
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

uint64_t sub_10001BCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v5 = sub_1000089AC(&qword_100085910, &unk_1000693B0);
  __chkstk_darwin(v5 - 8);
  v35 = &v32 - v6;
  v7 = type metadata accessor for TaskCategory();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = __chkstk_darwin(v7);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v32 - v10;
  v11 = sub_1000089AC(&qword_100085918, &qword_100069250);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for TaskType();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  sub_100009C2C(a2, v13, &qword_100085918, &qword_100069250);
  v21 = (*(v15 + 48))(v13, 1, v14);
  v36 = a1;
  if (v21 == 1)
  {
    sub_100009C94(v13, &qword_100085918, &qword_100069250);
    v22 = 1;
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    MLHostTask.taskType.getter();
    sub_100027AC8(&qword_100085928, &type metadata accessor for TaskType, &protocol conformance descriptor for TaskType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v42 == v40 && v43 == v41)
    {
      v22 = 1;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v23 = *(v15 + 8);
    v23(v18, v14);
    v23(v20, v14);
  }

  v24 = v35;
  sub_100009C2C(v34, v35, &qword_100085910, &unk_1000693B0);
  v26 = v38;
  v25 = v39;
  v27 = (*(v38 + 48))(v24, 1, v39);
  v28 = v37;
  if (v27 == 1)
  {
    sub_100009C94(v24, &qword_100085910, &unk_1000693B0);
  }

  else
  {
    (*(v26 + 32))(v37, v24, v25);
    if (v22)
    {
      v29 = v33;
      MLHostTask.taskCategory.getter();
      sub_100027AC8(&qword_100085920, &type metadata accessor for TaskCategory, &protocol conformance descriptor for TaskCategory);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v42 == v40 && v43 == v41)
      {
        v22 = 1;
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v30 = *(v26 + 8);
      v30(v29, v25);
      v30(v28, v25);
    }

    else
    {
      (*(v26 + 8))(v28, v25);
      v22 = 0;
    }
  }

  return v22 & 1;
}

uint64_t sub_10001C1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085ED0, &qword_1000695E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for TaskStatus();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for MLHostTask();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019300(a1, a2, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_100009C94(v13, &qword_100085940, &unk_1000693D0);
  }

  (*(v15 + 32))(v17, v13, v14);
  (*(v8 + 104))(v10, enum case for TaskStatus.taskNotStarted(_:), v7);
  MLHostTask.status.setter();
  Date.init()();
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
  MLHostTask.lastExecutionDate.setter();
  sub_10001C4DC(v17);
  return (*(v15 + 8))(v17, v14);
}

void sub_10001C4DC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TaskStatus();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLHostTask();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 56);
  v36 = v1;
  v37 = a1;
  v33 = sub_100024D68;
  v34 = &v35;
  os_unfair_lock_lock(v11 + 4);
  sub_100024D84();
  os_unfair_lock_unlock(v11 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000098DC(v12, qword_100087610);
  (*(v8 + 16))(v10, a1, v7);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = a1;
    v18 = v17;
    v38 = v17;
    *v16 = 136315138;
    v19 = MLHostTask.description.getter();
    v21 = v20;
    (*(v8 + 8))(v10, v7);
    v22 = sub_100008A0C(v19, v21, &v38);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Persisting task: %s", v16, 0xCu);
    sub_100009914(v18);

    v2 = v30;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  sub_100009A48(0, &unk_100085930, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  MLHostTask.name.getter();
  MLHostTask.status.getter();
  TaskStatus.rawValue.getter();
  (*(v31 + 8))(v6, v32);
  v24 = objc_allocWithZone(BMLighthouseTaskStatus);
  v25 = String._bridgeToObjectiveC()();

  v26 = String._bridgeToObjectiveC()();

  v27 = [v24 initWithVersion:isa taskName:v25 taskState:v26 taskSource:0 pushMetadata:0 pullMetadata:0];

  v28 = [*(v2 + 80) source];
  [v28 sendEvent:v27];
}

uint64_t sub_10001C8E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = MLHostTask.name.getter();
  v8 = v7;
  v9 = type metadata accessor for MLHostTask();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v5, a2, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_100028958(v5, v6, v8);
  return swift_endAccess();
}

void sub_10001CA2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000098DC(v10, qword_100087610);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100008A0C(a1, a2, &v20);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100008A0C(a3, a4, &v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "Persisting task error: %s %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  sub_100009A48(0, &unk_100085930, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v15 = objc_allocWithZone(BMLighthouseTaskError);

  v16 = String._bridgeToObjectiveC()();

  v17 = String._bridgeToObjectiveC()();

  v18 = [v15 initWithVersion:isa taskName:v16 errorCode:v17];

  v19 = [*(v5 + 88) source];
  [v19 sendEvent:v18];
}

void sub_10001CCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v77 = a3;
  v78 = a2;
  v76 = a1;
  v9 = sub_1000089AC(&qword_100085ED0, &qword_1000695E0);
  __chkstk_darwin(v9 - 8);
  v75 = &v71 - v10;
  v11 = type metadata accessor for TaskStatus();
  v73 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000089AC(&unk_1000859C0, &qword_1000694A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v71 - v15;
  v17 = sub_1000089AC(&unk_100085D00, &unk_1000694B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v71 - v18;
  v20 = type metadata accessor for PushMetadata();
  v80 = *(v20 - 8);
  v81 = v20;
  __chkstk_darwin(v20);
  v79 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DynamicTaskSource();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v23 + 16);
  v74 = a4;
  v26(v25, a4, v22);
  v27 = (*(v23 + 88))(v25, v22);
  if (v27 == enum case for DynamicTaskSource.push(_:))
  {
    sub_100009C2C(a5, v16, &unk_1000859C0, &qword_1000694A0);
    v28 = type metadata accessor for TaskMetadata();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v16, 1, v28) == 1)
    {
      sub_100009C94(v16, &unk_1000859C0, &qword_1000694A0);
      (*(v80 + 56))(v19, 1, 1, v81);
LABEL_10:
      sub_100009C94(v19, &unk_100085D00, &unk_1000694B0);
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000098DC(v37, qword_100087610);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_15;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Incomplete push metadata.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

LABEL_15:

      return;
    }

    v72 = v6;
    TaskMetadata.pushMetadata.getter();
    (*(v29 + 8))(v16, v28);
    v36 = v80;
    v35 = v81;
    if ((*(v80 + 48))(v19, 1, v81) == 1)
    {
      goto LABEL_10;
    }

    (*(v36 + 32))(v79, v19, v35);
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000098DC(v42, qword_100087610);
    v43 = v73;
    (*(v73 + 16))(v13, v77, v11);
    v44 = v78;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    v47 = os_log_type_enabled(v45, v46);
    v48 = v75;
    if (v47)
    {
      v49 = v43;
      v50 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v50 = 136315394;
      *(v50 + 4) = sub_100008A0C(v76, v44, &v82);
      *(v50 + 12) = 2080;
      v51 = TaskStatus.rawValue.getter();
      v53 = v52;
      (*(v49 + 8))(v13, v11);
      v48 = v75;
      v54 = sub_100008A0C(v51, v53, &v82);

      *(v50 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v45, v46, "Donating task status for push event: taskName: %s, taskStatus: %s", v50, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v43 + 8))(v13, v11);
    }

    PushMetadata.topic.getter();
    PushMetadata.channelID.getter();
    v71 = PushMetadata.pushType.getter();
    v73 = PushMetadata.pushPriority.getter();
    PushMetadata.creationDate.getter();
    v55 = type metadata accessor for Date();
    v56 = *(v55 - 8);
    (*(v56 + 56))(v48, 0, 1, v55);
    v57 = String._bridgeToObjectiveC()();

    v58 = String._bridgeToObjectiveC()();

    v59 = String._bridgeToObjectiveC()();

    v60 = String._bridgeToObjectiveC()();

    isa = 0;
    if ((*(v56 + 48))(v48, 1, v55) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v56 + 8))(v48, v55);
    }

    v62 = [objc_allocWithZone(BMLighthouseTaskStatusPushMetadata) initWithTopic:v57 channelID:v58 pushType:v59 pushPriority:v60 creationDate:isa];

    sub_100009A48(0, &unk_100085930, NSNumber_ptr);
    v63 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    TaskStatus.rawValue.getter();
    DynamicTaskSource.rawValue.getter();
    v64 = objc_allocWithZone(BMLighthouseTaskStatus);
    v65 = v62;
    v66 = String._bridgeToObjectiveC()();
    v67 = String._bridgeToObjectiveC()();

    v68 = String._bridgeToObjectiveC()();

    v69 = [v64 initWithVersion:v63 taskName:v66 taskState:v67 taskSource:v68 pushMetadata:v65 pullMetadata:0];

    v70 = [*(v72 + 80) source];
    [v70 sendEvent:v69];

    (*(v80 + 8))(v79, v81);
  }

  else
  {
    if (v27 == enum case for DynamicTaskSource.pull(_:))
    {
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000098DC(v30, qword_100087610);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_15;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Donating task status for pull events is not implemented yet.";
      goto LABEL_14;
    }

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000098DC(v38, qword_100087610);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Invalid taskSource, skipping donation.", v41, 2u);
    }

    (*(v23 + 8))(v25, v22);
  }
}

uint64_t sub_10001D78C(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100085ED0, &qword_1000695E0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v31 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = v31 - v10;
  __chkstk_darwin(v9);
  v13 = v31 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100050158(&_swiftEmptyArrayStorage);
  v31[1] = (v14 + 16);
  v31[0] = *(a1 + 80);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v13, 1, 1, v15);
  v17(v11, 1, 1, v15);
  v32 = v13;
  sub_100009C2C(v13, v8, &qword_100085ED0, &qword_1000695E0);
  v33 = v11;
  sub_100009C2C(v11, v5, &qword_100085ED0, &qword_1000695E0);
  v18 = *(v16 + 48);
  v19 = v18(v8, 1, v15);

  isa = 0;
  if (v19 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v8, v15);
  }

  if (v18(v5, 1, v15) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = Date._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v5, v15);
  }

  v22 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:isa endDate:v21 maxEvents:0 lastN:0 reversed:0];

  v23 = String._bridgeToObjectiveC()();
  v24 = [v31[0] publisherWithUseCase:v23 options:v22];

  v38 = nullsub_1;
  v39 = 0;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100027C9C;
  v37 = &unk_100082AC8;
  v25 = _Block_copy(&aBlock);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100027B48;
  *(v26 + 24) = v14;
  v38 = sub_100027B88;
  v39 = v26;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100027C9C;
  v37 = &unk_100082B18;
  v27 = _Block_copy(&aBlock);

  v28 = [v24 sinkWithCompletion:v25 receiveInput:v27];
  _Block_release(v27);
  _Block_release(v25);

  sub_100009C94(v33, &qword_100085ED0, &qword_1000695E0);
  sub_100009C94(v32, &qword_100085ED0, &qword_1000695E0);
  swift_beginAccess();
  v29 = *(v14 + 16);

  return v29;
}

void sub_10001DC3C(void *a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085A10, &qword_100069690);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for TaskStatus();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 taskState];
  if (v14)
  {
    v29 = a2;
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = [a1 taskName];
    if (v16)
    {
      v17 = v16;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      TaskStatus.init(rawValue:)();
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        (*(v11 + 32))(v13, v9, v10);
        (*(v11 + 16))(v7, v13, v10);
        (*(v11 + 56))(v7, 0, 1, v10);
        swift_beginAccess();
        sub_10002904C(v7, v28, v19);
        swift_endAccess();
        (*(v11 + 8))(v13, v10);
        return;
      }

      sub_100009C94(v9, &qword_100085A10, &qword_100069690);
    }

    else
    {
    }
  }

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000098DC(v20, qword_100087610);
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "Invalid taskState for message: %@", v24, 0xCu);
    sub_100009C94(v25, &qword_100085970, &qword_100068F48);
  }
}

uint64_t sub_10001DFFC(uint64_t a1, uint64_t a2)
{
  v70 = type metadata accessor for MLHostTask();
  v4 = *(v70 - 8);
  v5 = __chkstk_darwin(v70 - 8);
  v69 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = &v59 - v7;
  v78 = type metadata accessor for TaskStatus();
  v8 = *(v78 - 8);
  v9 = __chkstk_darwin(v78);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v77 = &v59 - v11;
  swift_beginAccess();
  v75 = a1;
  v12 = *(a1 + 64);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v73 = v8 + 16;
  v65 = v4 + 16;
  v63 = (v4 + 32);
  v62 = (v4 + 40);
  v67 = v4;
  v64 = (v4 + 8);
  v71 = (v8 + 8);
  v72 = v8;
  v80 = v12;

  v18 = 0;
  *&v19 = 136315138;
  v74 = v19;
  v79 = v17;
  v76 = a2;
  while (v16)
  {
LABEL_10:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = (*(v80 + 48) + ((v18 << 10) | (16 * v21)));
    v24 = *v22;
    v23 = v22[1];
    v25 = *(a2 + 16);

    if (v25 && (v26 = sub_100010DF4(v24, v23), (v27 & 1) != 0))
    {
      v28 = *(v72 + 16);
      v28(v77, *(a2 + 56) + *(v72 + 72) * v26, v78);
      v29 = v75;
      swift_beginAccess();
      v30 = *(v29 + 64);
      if (!*(v30 + 16) || (v31 = sub_100010DF4(v24, v23), (v32 & 1) == 0))
      {
        swift_endAccess();
        (*v71)(v77, v78);
        v17 = v79;
        goto LABEL_20;
      }

      v33 = *(v30 + 56);
      v60 = *(v67 + 72);
      v61 = *(v67 + 16);
      v34 = v68;
      v61(v68, v33 + v60 * v31, v70);
      swift_endAccess();
      v28(v66, v77, v78);
      MLHostTask.status.setter();
      v35 = v75;
      swift_beginAccess();
      v61(v69, v34, v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = *(v35 + 64);
      v37 = v82;
      *(v35 + 64) = 0x8000000000000000;
      v39 = sub_100010DF4(v24, v23);
      v40 = v37[2];
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        goto LABEL_34;
      }

      v43 = v38;
      if (v37[3] >= v42)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v38)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_1000133A4();
          if (v43)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_100011948(v42, isUniquelyReferenced_nonNull_native);
        v44 = sub_100010DF4(v24, v23);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_36;
        }

        v39 = v44;
        if (v43)
        {
LABEL_27:

          v52 = v82;
          v53 = v70;
          (*v62)(v82[7] + v39 * v60, v69, v70);
          goto LABEL_31;
        }
      }

      v52 = v82;
      v82[(v39 >> 6) + 8] |= 1 << v39;
      v54 = (v52[6] + 16 * v39);
      *v54 = v24;
      v54[1] = v23;
      v53 = v70;
      (*v63)(v52[7] + v39 * v60, v69, v70);
      v55 = v52[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_35;
      }

      v52[2] = v57;
LABEL_31:
      a2 = v76;
      *(v75 + 64) = v52;

      swift_endAccess();
      (*v64)(v68, v53);
      (*v71)(v77, v78);
      v17 = v79;
    }

    else
    {
LABEL_20:
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_1000098DC(v46, qword_100087610);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v81[0] = v50;
        *v49 = v74;
        v51 = sub_100008A0C(v24, v23, v81);

        *(v49 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v47, v48, "Task %s not found in taskStatusMap", v49, 0xCu);
        sub_100009914(v50);
        a2 = v76;

        v17 = v79;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10001E6EC(void *a1, void (*a2)(NSObject *))
{
  v4 = [a1 eventBody];
  if (v4)
  {
    oslog = v4;
    [a1 timestamp];
    a2(oslog);
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000098DC(v5, qword_100087610);
    v6 = a1;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Invalid event: %@", v8, 0xCu);
      sub_100009C94(v9, &qword_100085970, &qword_100068F48);
    }
  }
}

void sub_10001E880(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10001E8E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a2;
  v143 = type metadata accessor for TaskType();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLHostTask();
  v163 = *(v4 - 8);
  v164 = v4;
  __chkstk_darwin(v4);
  v144 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for TaskDefinition();
  v162 = *(v165 - 8);
  v6 = __chkstk_darwin(v165);
  v161 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  countAndFlagsBits = &v136 - v9;
  v10 = __chkstk_darwin(v8);
  v145 = &v136 - v11;
  v12 = __chkstk_darwin(v10);
  v139 = &v136 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = &v136 - v15;
  __chkstk_darwin(v14);
  v138 = &v136 - v16;
  v151 = type metadata accessor for URL.DirectoryHint();
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000089AC(&qword_100085948, &qword_100069258);
  __chkstk_darwin(v18 - 8);
  v146 = &v136 - v19;
  v152 = type metadata accessor for URL();
  v158 = *(v152 - 1);
  v20 = __chkstk_darwin(v152);
  v147 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v148 = &v136 - v22;
  v23 = sub_1000089AC(&qword_100085ED0, &qword_1000695E0);
  __chkstk_darwin(v23 - 8);
  v156 = (&v136 - v24);
  v25 = type metadata accessor for Date();
  v159 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v136 - v29;
  v31 = type metadata accessor for TaskValidationError();
  v32 = __chkstk_darwin(v31);
  v160 = &v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v35 = __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  _s20LighthouseBackground22validateTaskDefinitionyyAA0dE0VAA0D15ValidationErrorOYKF();
  v36 = countAndFlagsBits;
  v37 = v158;
  v160 = 0;
  v161 = v30;
  v38 = v166;
  v39 = v156;
  TaskDefinition.endDate.getter();
  v40 = v159;
  if ((*(v159 + 48))(v39, 1, v25) == 1)
  {
    sub_100009C94(v39, &qword_100085ED0, &qword_1000695E0);
LABEL_13:
    v87 = v165;
    v88 = v162;
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_1000098DC(v89, qword_100087610);
    (*(v88 + 16))(v36, a1, v87);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v169[0] = v93;
      *v92 = 136315138;
      v94 = TaskDefinition.name.getter();
      v96 = v95;
      (*(v88 + 8))(v36, v87);
      v97 = sub_100008A0C(v94, v96, v169);

      *(v92 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v90, v91, "Task %s must have a valid endDate (> now).", v92, 0xCu);
      sub_100009914(v93);
      v98 = v164;

      return (*(v163 + 56))(v38, 1, 1, v98);
    }

    (*(v88 + 8))(v36, v87);
LABEL_18:
    v98 = v164;
    return (*(v163 + 56))(v38, 1, 1, v98);
  }

  v41 = v161;
  (*(v40 + 32))(v161, v39, v25);
  v42 = v28;
  static Date.now.getter();
  v43 = static Date.> infix(_:_:)();
  v46 = *(v40 + 8);
  v44 = v40 + 8;
  v45 = v46;
  (v46)(v42, v25);
  if ((v43 & 1) == 0)
  {
    (v45)(v41, v25);
    goto LABEL_13;
  }

  sub_10001FFC0(a1);
  v137 = v25;
  v159 = v44;
  v156 = v45;
  if (!v47)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    sub_1000098DC(v100, qword_100087610);
    v101 = v162;
    v102 = v145;
    v103 = v165;
    (*(v162 + 16))(v145, a1, v165);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();
    v106 = os_log_type_enabled(v104, v105);
    v38 = v166;
    if (v106)
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v169[0] = v108;
      *v107 = 136315138;
      v109 = TaskDefinition.name.getter();
      v111 = v110;
      (*(v101 + 8))(v102, v103);
      v112 = sub_100008A0C(v109, v111, v169);

      *(v107 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v104, v105, "Failed at storing taskDefinition: %s", v107, 0xCu);
      sub_100009914(v108);
      v98 = v164;

      v156(v161, v137);
      return (*(v163 + 56))(v38, 1, 1, v98);
    }

    (*(v101 + 8))(v102, v103);
    v156(v161, v137);
    goto LABEL_18;
  }

  countAndFlagsBits = *(v153 + 40);
  (*(v37 + 56))(v146, 1, 1, v152);
  v48 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v49 = v149;
  v50 = a1;
  v51 = *(v149 + 104);
  v52 = v150;
  v53 = v151;
  v51(v150, enum case for URL.DirectoryHint.inferFromPath(_:), v151);

  v54 = v147;
  URL.init(filePath:directoryHint:relativeTo:)();
  v55 = v50;
  v169[0] = TaskDefinition.name.getter();
  v169[1] = v56;
  v51(v52, v48, v53);
  sub_100027A04();
  v57 = v148;
  URL.appending<A>(path:directoryHint:)();
  (*(v49 + 8))(v52, v53);

  v58 = *(v158 + 8);
  v59 = v152;
  v58(v54, v152);
  v60 = URL.path(percentEncoded:)(0);
  v58(v57, v59);
  v61 = [objc_opt_self() defaultManager];
  countAndFlagsBits = v60._countAndFlagsBits;
  v62 = String._bridgeToObjectiveC()();
  v63 = v55;
  if (qword_1000850B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for FileAttributeKey(0);
  sub_100027AC8(&qword_1000851F8, type metadata accessor for FileAttributeKey, &unk_100068D34);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v169[0] = 0;
  v65 = [v61 createDirectoryAtPath:v62 withIntermediateDirectories:1 attributes:isa error:v169];

  v66 = v156;
  if (v65)
  {
    v67 = qword_1000850B8;
    v68 = v169[0];
    if (v67 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_1000098DC(v69, qword_100087610);
    v70 = v162;
    v71 = v138;
    v154 = *(v162 + 16);
    v154(v138, v55, v165);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    v74 = os_log_type_enabled(v72, v73);
    object = v60._object;
    if (v74)
    {
      v75 = v71;
      v76 = swift_slowAlloc();
      v169[0] = swift_slowAlloc();
      *v76 = 136315394;
      v77 = TaskDefinition.name.getter();
      v158 = v55;
      v79 = v78;
      v152 = *(v70 + 8);
      (v152)(v75, v165);
      v80 = sub_100008A0C(v77, v79, v169);
      v63 = v158;

      *(v76 + 4) = v80;
      *(v76 + 12) = 2080;
      *(v76 + 14) = sub_100008A0C(countAndFlagsBits, object, v169);
      _os_log_impl(&_mh_execute_header, v72, v73, "Created taskFolder for %s: %s", v76, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v152 = *(v70 + 8);
      (v152)(v71, v165);
    }

    v81 = v153;
    v82 = v144;
    v83 = v143;
    v84 = v142;
    v85 = v141;
    v86 = v140;
    sub_1000208E4(v63, v140);
    v128 = v165;
    v154(v139, v86, v165);
    (*(v84 + 104))(v85, enum case for TaskType.dynamicTask(_:), v83);
    v129 = MLHostTask.init(taskDefinition:taskType:taskFolder:)();
    v130 = *(v81 + 56);
    v131 = __chkstk_darwin(v129);
    *(&v136 - 2) = v81;
    *(&v136 - 1) = v82;
    __chkstk_darwin(v131);
    *(&v136 - 2) = sub_100027AAC;
    *(&v136 - 1) = v132;
    os_unfair_lock_lock(v130 + 4);
    sub_100027CA0();
    os_unfair_lock_unlock(v130 + 4);
    (v152)(v86, v128);
    v156(v161, v137);
    v134 = v163;
    v133 = v164;
    v135 = v166;
    (*(v163 + 16))(v166, v82, v164);
    (*(v134 + 56))(v135, 0, 1, v133);
    return (*(v134 + 8))(v82, v133);
  }

  else
  {
    v113 = v166;
    v114 = v169[0];
    v115 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v169[0] = v115;
    sub_1000089AC(&qword_100085958, &unk_1000693F0);
    sub_100009A48(0, &unk_100085960, NSError_ptr);
    swift_dynamicCast();
    v116 = v167;
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v117 = type metadata accessor for Logger();
    sub_1000098DC(v117, qword_100087610);

    v118 = v116;
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();

    v121 = os_log_type_enabled(v119, v120);
    v122 = countAndFlagsBits;
    if (v121)
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v168 = v125;
      *v123 = 136315394;
      v126 = sub_100008A0C(v122, v60._object, &v168);

      *(v123 + 4) = v126;
      *(v123 + 12) = 2112;
      *(v123 + 14) = v118;
      *v124 = v118;
      v127 = v118;
      _os_log_impl(&_mh_execute_header, v119, v120, "Failed at creating taskFolder: %s %@", v123, 0x16u);
      sub_100009C94(v124, &qword_100085970, &qword_100068F48);

      sub_100009914(v125);
    }

    else
    {
    }

    v66(v161, v137);
    (*(v163 + 56))(v113, 1, 1, v164);
  }
}

uint64_t sub_10001FFC0(void *a1)
{
  v50 = a1;
  v51 = type metadata accessor for TaskDefinition();
  v46[2] = *(v51 - 8);
  __chkstk_darwin(v51);
  v46[1] = v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for URL.DirectoryHint();
  isa = *(v2 - 8);
  v3 = isa;
  v53 = v2;
  __chkstk_darwin(v2);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000089AC(&qword_100085948, &qword_100069258);
  __chkstk_darwin(v6 - 8);
  v8 = v46 - v7;
  v9 = type metadata accessor for URL();
  v48 = *(v9 - 8);
  v10 = v48;
  v11 = __chkstk_darwin(v9);
  v46[0] = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v46 - v14;
  __chkstk_darwin(v13);
  v54 = v46 - v16;
  v55 = TaskDefinition.name.getter();
  v56 = v17;
  v18._countAndFlagsBits = 0x7473696C702ELL;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v49 = v55;
  v47 = v56;
  (v10[7].isa)(v8, 1, 1, v9);
  v19 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v20 = *(v3 + 13);
  v21 = v53;
  v20(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v53);

  URL.init(filePath:directoryHint:relativeTo:)();
  v55 = v49;
  v56 = v47;
  v22 = v19;
  v23 = v48;
  v20(v5, v22, v21);
  sub_100027A04();
  URL.appending<A>(path:directoryHint:)();
  (*(isa + 1))(v5, v21);
  isa = v23[1].isa;
  v53 = v9;
  (isa)(v15, v9);

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v24 = PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  sub_100027AC8(&qword_100085488, &type metadata accessor for TaskDefinition, &protocol conformance descriptor for TaskDefinition);
  v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v27 = v26;
  v28 = v46[0];
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000098DC(v29, qword_100087610);
  (v23[2].isa)(v28, v54, v53);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v49 = v32;
    v50 = swift_slowAlloc();
    v55 = v50;
    *v32 = 136315138;
    sub_100027AC8(&qword_100085D10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v48 = v30;
    LODWORD(v47) = v31;
    v33 = v25;
    v34 = v27;
    v35 = v53;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v24;
    v38 = v37;
    v39 = v35;
    v27 = v34;
    (isa)(v28, v39);
    v25 = v33;
    v40 = sub_100008A0C(v36, v38, &v55);

    v42 = v48;
    v41 = v49;
    *(v49 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v42, v47, "Storing taskDefinition at URL: %s", v41, 0xCu);
    sub_100009914(v50);
  }

  else
  {

    (isa)(v28, v53);
  }

  Data.write(to:options:)();
  v43 = v54;
  countAndFlagsBits = URL.path(percentEncoded:)(0)._countAndFlagsBits;
  sub_1000099D4(v25, v27);

  (isa)(v43, v53);
  return countAndFlagsBits;
}

uint64_t sub_1000208E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for TaskDefinition();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v44 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v45 = &v42[-v7];
  v8 = sub_1000089AC(&qword_1000859A0, &qword_100069268);
  __chkstk_darwin(v8 - 8);
  v47 = &v42[-v9];
  v10 = type metadata accessor for TaskRequest();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v46 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for TaskCategory();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v42[-v17];
  TaskDefinition.taskCategory.getter();
  (*(v13 + 104))(v16, enum case for TaskCategory.backgroundTask(_:), v12);
  sub_100027AC8(&qword_100085920, &type metadata accessor for TaskCategory, &protocol conformance descriptor for TaskCategory);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v51 == v52[0])
  {
    v19 = *(v13 + 8);
    v19(v16, v12);
    v19(v18, v12);
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20 = *(v13 + 8);
    v20(v16, v12);
    v20(v18, v12);

    if ((v43 & 1) == 0)
    {
      return (*(v4 + 16))(v48, a1, v3);
    }
  }

  v21 = v47;
  TaskDefinition.taskRequest.getter();
  v23 = v49;
  v22 = v50;
  v24 = *(v49 + 48);
  if (v24(v21, 1, v50) == 1)
  {
    sub_100009C94(v21, &qword_1000859A0, &qword_100069268);
    return (*(v4 + 16))(v48, a1, v3);
  }

  (*(v23 + 32))(v46, v21, v22);
  v26 = *(v4 + 16);
  v27 = v45;
  v26(v45, a1, v3);
  sub_1000089AC(&qword_100085900, &qword_100069240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000691A0;
  v29 = v44;
  v26(v44, v27, v3);
  v30 = TaskDefinition.bundleIdentifier.getter();
  v32 = v31;
  (*(v4 + 8))(v29, v3);
  *(inited + 32) = v30;
  *(inited + 40) = v32;
  v33 = sub_10004F764(inited);
  swift_setDeallocating();
  sub_100014C04(inited + 32);
  v53 = v33;
  v34 = TaskRequest.relatedApplications.getter();
  if (v34)
  {
    sub_1000500E8(v34);
  }

  v35 = TaskDefinition.taskRequest.modify();
  v36 = v50;
  if (!v24(v37, 1, v50))
  {
    v38 = *(v53 + 16);
    if (v38)
    {
      v39 = v53;
      v40 = sub_100024920(*(v53 + 16), 0);
      v41 = sub_100025710(&v51, v40 + 4, v38, v39);
      sub_100009A28(v51);
      if (v41 == v38)
      {
LABEL_15:
        TaskRequest.relatedApplications.setter();
        v35(v52, 0);
        v36 = v50;
        goto LABEL_16;
      }

      __break(1u);
    }

    goto LABEL_15;
  }

  v35(v52, 0);
LABEL_16:
  (*(v49 + 8))(v46, v36);
  return (*(v4 + 32))(v48, v27, v3);
}

uint64_t sub_100020F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for MLHostTask();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a1 + 64);

  v12 = MLHostTask.name.getter();
  if (*(v11 + 16))
  {
    sub_100010DF4(v12, v13);
    v15 = v14;

    if (v15)
    {
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000098DC(v16, qword_100087610);
      (*(v8 + 16))(v10, a2, v7);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v30 = v19;
        v31 = swift_slowAlloc();
        v32[0] = v31;
        *v19 = 136315138;
        v29 = MLHostTask.name.getter();
        v21 = v20;
        (*(v8 + 8))(v10, v7);
        v22 = sub_100008A0C(v29, v21, v32);

        v23 = v30;
        *(v30 + 1) = v22;
        _os_log_impl(&_mh_execute_header, v17, v18, "Task %s already present in TaskRegistry is being replaced.", v23, 0xCu);
        sub_100009914(v31);
      }

      else
      {

        (*(v8 + 8))(v10, v7);
      }
    }
  }

  else
  {
  }

  v24 = MLHostTask.name.getter();
  v26 = v25;
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  swift_beginAccess();
  sub_100028958(v6, v24, v26);
  return swift_endAccess();
}

void sub_1000212BC(uint64_t a1)
{
  v2 = v1;
  v172 = type metadata accessor for URL.DirectoryHint();
  v164 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000089AC(&qword_100085948, &qword_100069258);
  __chkstk_darwin(v5 - 8);
  v170 = v160 - v6;
  v177 = type metadata accessor for URL();
  v163 = *(v177 - 8);
  v7 = __chkstk_darwin(v177);
  v169 = v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v168 = v160 - v9;
  v191 = type metadata accessor for TaskType();
  v10 = *(v191 - 8);
  __chkstk_darwin(v191);
  v190 = v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for MLHostTask();
  v192 = *(v198 - 8);
  v12 = __chkstk_darwin(v198);
  v14 = (v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v12);
  v175 = v160 - v16;
  v17 = __chkstk_darwin(v15);
  v195 = v160 - v18;
  __chkstk_darwin(v17);
  v183 = v160 - v19;
  v202 = type metadata accessor for TaskDefinition();
  v186 = *(v202 - 8);
  v20 = __chkstk_darwin(v202);
  v196 = v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v187 = v160 - v23;
  v24 = __chkstk_darwin(v22);
  v194 = v160 - v25;
  v26 = __chkstk_darwin(v24);
  v193 = v160 - v27;
  __chkstk_darwin(v26);
  v201 = v160 - v28;
  v29 = sub_1000089AC(&qword_100085A18, &qword_1000692B0);
  v30 = __chkstk_darwin(v29 - 8);
  object = v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v178 = (v160 - v34);
  v35 = __chkstk_darwin(v33);
  v185 = v160 - v36;
  __chkstk_darwin(v35);
  v184 = (v160 - v37);
  if (qword_1000850B8 != -1)
  {
    goto LABEL_76;
  }

LABEL_2:
  v176 = v14;
  v38 = type metadata accessor for Logger();
  v39 = sub_1000098DC(v38, qword_100087610);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Loading tasks from StaticRegistry.", v42, 2u);
  }

  v43 = sub_100022798(*(v2 + 16), a1);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Loading tasks from DynamicRegistry.", v46, 2u);
  }

  sub_1000089AC(&qword_100085900, &qword_100069240);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1000691A0;
  v48 = *(v2 + 32);
  *(v47 + 32) = *(v2 + 24);
  *(v47 + 40) = v48;

  v14 = sub_100022798(v47, a1);

  v180 = v2;
  v179 = object;
  v160[1] = v39;
  if (a1)
  {
    __chkstk_darwin(v49);
    v160[-2] = a1;
    v50 = sub_100025EB0(v43, sub_100027C88);

    __chkstk_darwin(v51);
    v160[-2] = a1;
    object = v10;
    v52 = sub_100025EB0(v14, sub_100027C00);

    v43 = v50;
    v14 = v52;
    v10 = object;
  }

  v2 = sub_100024EF4(v43);

  v173 = sub_100024EF4(v14);

  v203 = sub_10004F12C(&_swiftEmptyArrayStorage);
  v53 = 0;
  v54 = *(v2 + 64);
  v167 = (v2 + 64);
  v174 = v2;
  v55 = 1 << *(v2 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & v54;
  v166 = (v55 + 63) >> 6;
  v199 = (v186 + 32);
  v200 = (v186 + 16);
  LODWORD(v182) = enum case for TaskType.staticTask(_:);
  v189 = (v10 + 104);
  v197 = (v192 + 32);
  v188 = (v186 + 8);
  v181 = v192 + 40;
  while (1)
  {
    if (v57)
    {
      v60 = v53;
LABEL_21:
      v63 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v64 = v63 | (v60 << 6);
      v65 = (*(v174 + 48) + 16 * v64);
      v67 = *v65;
      v66 = v65[1];
      v68 = v186;
      v69 = v201;
      v70 = v202;
      (*(v186 + 16))(v201, *(v174 + 56) + *(v186 + 72) * v64, v202);
      v71 = sub_1000089AC(&unk_100085A20, &qword_1000692B8);
      v72 = *(v71 + 48);
      v73 = v185;
      *v185 = v67;
      *(v73 + 1) = v66;
      v10 = v73;
      (*(v68 + 32))(&v73[v72], v69, v70);
      (*(*(v71 - 8) + 56))(v10, 0, 1, v71);

      v62 = v60;
    }

    else
    {
      if (v166 <= v53 + 1)
      {
        v61 = v53 + 1;
      }

      else
      {
        v61 = v166;
      }

      v62 = (v61 - 1);
      while (1)
      {
        v60 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          __break(1u);
          goto LABEL_71;
        }

        if (v60 >= v166)
        {
          break;
        }

        v57 = v167[v60];
        ++v53;
        if (v57)
        {
          goto LABEL_21;
        }
      }

      v97 = sub_1000089AC(&unk_100085A20, &qword_1000692B8);
      v10 = v185;
      (*(*(v97 - 8) + 56))(v185, 1, 1, v97);
      v57 = 0;
    }

    v74 = v184;
    sub_100027B90(v10, v184);
    v75 = sub_1000089AC(&unk_100085A20, &qword_1000692B8);
    v14 = *(v75 - 8);
    v76 = *(v14 + 6);
    if ((v76)(v74, 1, v75) == 1)
    {
      v184 = v76;
      v193 = v75;

      v99 = 0;
      v100 = v173[8];
      v162 = (v173 + 8);
      v101 = 1 << *(v173 + 32);
      v102 = -1;
      if (v101 < 64)
      {
        v102 = ~(-1 << v101);
      }

      v2 = v102 & v100;
      v161 = (v101 + 63) >> 6;
      v185 = v14 + 56;
      v167 = (v163 + 7);
      LODWORD(v166) = enum case for URL.DirectoryHint.inferFromPath(_:);
      v165 = (v164 + 13);
      ++v164;
      ++v163;
      LODWORD(v183) = enum case for TaskType.dynamicTask(_:);
      v182 = (v14 + 48);
      while (1)
      {
        a1 = v180;
        if (!v2)
        {
          if (v161 <= v99 + 1)
          {
            v105 = v99 + 1;
          }

          else
          {
            v105 = v161;
          }

          v106 = v105 - 1;
          while (1)
          {
            object = v99 + 1;
            if (__OFADD__(v99, 1))
            {
              break;
            }

            if (object >= v161)
            {
              v155 = v179;
              v118 = v193;
              (*v185)(v179, 1, 1, v193);
              v119 = v155;
              v2 = 0;
              goto LABEL_50;
            }

            v2 = *&v162[8 * object];
            ++v99;
            if (v2)
            {
              v104 = v180;
              goto LABEL_49;
            }
          }

LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          swift_once();
          goto LABEL_2;
        }

        v104 = v180;
        object = v99;
LABEL_49:
        v107 = __clz(__rbit64(v2));
        v2 &= v2 - 1;
        v108 = v107 | (object << 6);
        v109 = (v173[6] + 16 * v108);
        v111 = *v109;
        v110 = v109[1];
        v112 = v186;
        v114 = v201;
        v113 = v202;
        (*(v186 + 16))(v201, v173[7] + *(v186 + 72) * v108, v202);
        v115 = v193;
        v116 = *(v193 + 12);
        v117 = v179;
        *v179 = v111;
        *(v117 + 1) = v110;
        v118 = v115;
        (*(v112 + 32))(&v117[v116], v114, v113);
        (*v185)(v117, 0, 1, v118);

        v106 = object;
        v119 = v117;
        a1 = v104;
LABEL_50:
        v120 = v178;
        sub_100027B90(v119, v178);
        if ((v184)(v120, 1, v118) == 1)
        {

          v156 = *(a1 + 56);
          os_unfair_lock_lock(v156 + 4);

          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            *v159 = 134217984;
            *(v159 + 4) = *(v203 + 16);

            _os_log_impl(&_mh_execute_header, v157, v158, "Injecting %ld tasks in TaskRegistry.", v159, 0xCu);
          }

          else
          {
          }

          swift_beginAccess();
          *(a1 + 64) = v203;

          os_unfair_lock_unlock(v156 + 4);
          return;
        }

        v121 = *v120;
        v122 = v120[1];
        v123 = v120 + *(v118 + 12);
        v124 = v187;
        (*v199)(v187, v123, v202);
        sub_1000208E4(v124, v196);
        v125 = sub_100017A40();
        v195 = v121;
        v126 = sub_1000292B0(v121, v122, v125);

        v194 = v106;
        if (v126)
        {
          v174 = *(a1 + 40);
          (*v167)(v170, 1, 1, v177);
          v127 = *v165;
          v128 = v171;
          v129 = v166;
          v130 = v172;
          (*v165)(v171, v166, v172);

          v131 = v169;
          URL.init(filePath:directoryHint:relativeTo:)();
          v204 = v195;
          v205 = v122;
          v127(v128, v129, v130);
          sub_100027A04();
          v132 = v168;
          URL.appending<A>(path:directoryHint:)();
          (*v164)(v128, v130);
          v133 = *v163;
          v134 = v177;
          (*v163)(v131, v177);
          object = URL.path(percentEncoded:)(0)._object;
          v135 = v198;
          v136 = v134;
          v137 = v122;
          v138 = v176;
          v133(v132, v136);
        }

        else
        {
          object = 0;
          v135 = v198;
          v137 = v122;
          v138 = v176;
        }

        (*v200)(v201, v196, v202);
        (*v189)(v190, v183, v191);
        v139 = v175;
        MLHostTask.init(taskDefinition:taskType:taskFolder:)();
        v140 = *v197;
        a1 = v138;
        (*v197)(v138, v139, v135);
        v14 = v203;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v204 = v14;
        v142 = v195;
        v10 = sub_100010DF4(v195, v137);
        v144 = *(v14 + 2);
        v145 = (v143 & 1) == 0;
        v146 = v144 + v145;
        if (__OFADD__(v144, v145))
        {
          goto LABEL_73;
        }

        v147 = v143;
        if (*(v203 + 24) >= v146)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v143)
            {
              goto LABEL_37;
            }
          }

          else
          {
            sub_1000133A4();
            if (v147)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
          sub_100011948(v146, isUniquelyReferenced_nonNull_native);
          v148 = sub_100010DF4(v142, v137);
          if ((v147 & 1) != (v149 & 1))
          {
            goto LABEL_77;
          }

          v10 = v148;
          if (v147)
          {
LABEL_37:

            v203 = v204;
            (*(v192 + 40))(*(v204 + 56) + *(v192 + 72) * v10, a1, v135);
            v14 = *v188;
            v103 = v202;
            (*v188)(v196, v202);
            v14(v187, v103);
            goto LABEL_38;
          }
        }

        v150 = v142;
        v151 = v204;
        *(v204 + 8 * (v10 >> 6) + 64) |= 1 << v10;
        v152 = (v151[6] + 16 * v10);
        *v152 = v150;
        v152[1] = v137;
        v140(v151[7] + *(v192 + 72) * v10, a1, v135);
        v14 = *v188;
        object = v202;
        (*v188)(v196, v202);
        v14(v187, object);
        v203 = v151;
        v153 = v151[2];
        v88 = __OFADD__(v153, 1);
        v154 = v153 + 1;
        if (v88)
        {
          goto LABEL_75;
        }

        *(v203 + 16) = v154;
LABEL_38:
        v99 = v194;
      }
    }

    object = v62;
    v77 = *v74;
    v10 = v74[1];
    v78 = v74 + *(v75 + 48);
    v79 = v193;
    v80 = v202;
    (*v199)(v193, v78, v202);
    v81 = v194;
    sub_1000208E4(v79, v194);
    v2 = v201;
    (*v200)(v201, v81, v80);
    (*v189)(v190, v182, v191);
    v82 = v183;
    MLHostTask.init(taskDefinition:taskType:taskFolder:)();
    v83 = *v197;
    (*v197)(v195, v82, v198);
    v14 = v203;
    a1 = swift_isUniquelyReferenced_nonNull_native();
    v204 = v14;
    v84 = sub_100010DF4(v77, v10);
    v86 = *(v14 + 2);
    v87 = (v85 & 1) == 0;
    v88 = __OFADD__(v86, v87);
    v89 = v86 + v87;
    if (v88)
    {
      goto LABEL_72;
    }

    v90 = v85;
    if (*(v203 + 24) < v89)
    {
      break;
    }

    if (a1)
    {
LABEL_28:
      a1 = v198;
      if ((v90 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_11:
      v58 = v84;

      v203 = v204;
      (*(v192 + 40))(*(v204 + 56) + *(v192 + 72) * v58, v195, a1);
      v2 = v188;
      v14 = *v188;
      v59 = v202;
      (*v188)(v194, v202);
      v14(v193, v59);
      v53 = object;
    }

    else
    {
      v98 = v84;
      sub_1000133A4();
      v84 = v98;
      a1 = v198;
      if (v90)
      {
        goto LABEL_11;
      }

LABEL_29:
      v92 = v204;
      *(v204 + 8 * (v84 >> 6) + 64) |= 1 << v84;
      v93 = (v92[6] + 16 * v84);
      *v93 = v77;
      v93[1] = v10;
      v83(v92[7] + *(v192 + 72) * v84, v195, a1);
      v2 = v188;
      v14 = *v188;
      v94 = v202;
      (*v188)(v194, v202);
      v14(v193, v94);
      v203 = v92;
      v95 = v92[2];
      v88 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v88)
      {
        goto LABEL_74;
      }

      *(v203 + 16) = v96;
      v53 = object;
    }
  }

  sub_100011948(v89, a1);
  v84 = sub_100010DF4(v77, v10);
  if ((v90 & 1) == (v91 & 1))
  {
    goto LABEL_28;
  }

LABEL_77:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_100022798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085978, &qword_100069260);
  __chkstk_darwin(v4 - 8);
  v6 = v141 - v5;
  v7 = type metadata accessor for TaskDefinition();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v157 = v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v154 = v141 - v12;
  v13 = __chkstk_darwin(v11);
  v148 = v141 - v14;
  v15 = __chkstk_darwin(v13);
  v152 = v141 - v16;
  __chkstk_darwin(v15);
  v18 = v141 - v17;
  v19 = sub_10004FEFC(&_swiftEmptyArrayStorage);
  v147 = *(a1 + 16);
  v141[1] = a1;
  if (v147)
  {
    v146 = objc_opt_self();
    v20 = 0;
    v143 = 0;
    v145 = a1 + 32;
    v164 = (v8 + 48);
    v159 = (v8 + 32);
    v172 = a2 + 56;
    v162 = (v8 + 16);
    v161 = (v8 + 8);
    v153 = v8;
    v149 = v8 + 40;
    *&v21 = 136315138;
    v163 = v21;
    *&v21 = 138412290;
    v142 = v21;
    *&v21 = 136315394;
    v151 = v21;
    v158 = a2;
    v155 = v6;
    v171 = v7;
    v173 = v18;
    do
    {
      v150 = v20;
      v22 = (v145 + 16 * v20);
      v23 = v22[1];
      v170 = *v22;
      v24 = qword_1000850B8;
      v25 = v23;

      if (v24 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      v27 = sub_1000098DC(v26, qword_100087610);

      v174 = v27;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();

      v30 = os_log_type_enabled(v28, v29);
      v169 = v25;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v175 = v32;
        *v31 = v163;
        *(v31 + 4) = sub_100008A0C(v170, v169, &v175);
        _os_log_impl(&_mh_execute_header, v28, v29, "Loading tasks from folder: %s", v31, 0xCu);
        sub_100009914(v32);
        v25 = v169;
      }

      v33 = [v146 defaultManager];
      v34 = String._bridgeToObjectiveC()();
      v175 = 0;
      v35 = [v33 contentsOfDirectoryAtPath:v34 error:&v175];

      v36 = v175;
      if (v35)
      {
        v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v36;

        v168 = *(v37 + 16);
        if (v168)
        {
          v39 = 0;
          v165 = v37;
          v166 = v37 + 32;
          v40 = v25;
          v41 = v170;
          do
          {
            if (v39 >= *(v37 + 16))
            {
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

            v45 = (v166 + 16 * v39);
            v47 = *v45;
            v46 = v45[1];
            v175 = v41;
            v176 = v40;

            v48._countAndFlagsBits = 47;
            v48._object = 0xE100000000000000;
            String.append(_:)(v48);

            v49._countAndFlagsBits = v47;
            v49._object = v46;
            String.append(_:)(v49);

            v50 = v175;
            v51 = v176;

            v52 = Logger.logObject.getter();
            v53 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v175 = v55;
              *v54 = v163;
              *(v54 + 4) = sub_100008A0C(v50, v51, &v175);
              _os_log_impl(&_mh_execute_header, v52, v53, "Loading task from: %s", v54, 0xCu);
              sub_100009914(v55);
              v7 = v171;
            }

            sub_10001AE50(v50, v51, v6);
            if ((*v164)(v6, 1, v7) == 1)
            {
              sub_100009C94(v6, &qword_100085978, &qword_100069260);

              v56 = Logger.logObject.getter();
              v57 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v56, v57))
              {
                v42 = swift_slowAlloc();
                v43 = swift_slowAlloc();
                v175 = v43;
                *v42 = v163;
                v44 = sub_100008A0C(v50, v51, &v175);

                *(v42 + 4) = v44;
                _os_log_impl(&_mh_execute_header, v56, v57, "Skipping loading from: %s", v42, 0xCu);
                sub_100009914(v43);

                a2 = v158;
              }

              else
              {
              }

              goto LABEL_14;
            }

            v58 = *v159;
            (*v159)(v173, v6, v7);
            v167 = v19;
            if (a2)
            {
              v59 = TaskDefinition.bundleIdentifier.getter();
              v61 = v60;
              if (!*(a2 + 16) || (v62 = v59, v156 = v58, Hasher.init(_seed:)(), String.hash(into:)(), v63 = Hasher._finalize()(), v64 = -1 << *(a2 + 32), v65 = v63 & ~v64, ((*(v172 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0))
              {
LABEL_31:

                v69 = v152;
                v70 = v173;
                (*v162)(v152, v173, v7);
                v71 = Logger.logObject.getter();
                v72 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v71, v72))
                {
                  v73 = swift_slowAlloc();
                  v74 = swift_slowAlloc();
                  v175 = v74;
                  *v73 = v163;
                  v75 = TaskDefinition.name.getter();
                  v77 = v76;
                  v78 = *v161;
                  (*v161)(v69, v171);
                  v79 = sub_100008A0C(v75, v77, &v175);
                  v80 = v173;

                  *(v73 + 4) = v79;
                  _os_log_impl(&_mh_execute_header, v71, v72, "Task %s is discared because its bundleIdentifier is not available in the OS.", v73, 0xCu);
                  sub_100009914(v74);
                  v7 = v171;

                  v78(v80, v7);
                  a2 = v158;
                }

                else
                {

                  v81 = *v161;
                  (*v161)(v69, v7);
                  v81(v70, v7);
                }

                v19 = v167;
                goto LABEL_58;
              }

              v66 = ~v64;
              while (1)
              {
                v67 = (*(a2 + 48) + 16 * v65);
                v68 = *v67 == v62 && v67[1] == v61;
                if (v68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v65 = (v65 + 1) & v66;
                if (((*(v172 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
                {
                  goto LABEL_31;
                }
              }

              v19 = v167;
            }

            else
            {
              v156 = v58;
            }

            v82 = TaskDefinition.name.getter();
            v84 = v154;
            if (v19[2])
            {
              sub_100010DF4(v82, v83);
              v86 = v85;

              v87 = *v162;
              if (v86)
              {
                v88 = v148;
                v160 = *v162;
                v87(v148, v173, v7);

                v89 = Logger.logObject.getter();
                v90 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v89, v90))
                {
                  v91 = v88;
                  v92 = swift_slowAlloc();
                  v144 = swift_slowAlloc();
                  v175 = v144;
                  *v92 = v151;
                  v93 = TaskDefinition.name.getter();
                  v95 = v94;
                  (*v161)(v91, v171);
                  v96 = sub_100008A0C(v93, v95, &v175);
                  v7 = v171;

                  *(v92 + 4) = v96;
                  *(v92 + 12) = 2080;
                  *(v92 + 14) = sub_100008A0C(v50, v51, &v175);
                  _os_log_impl(&_mh_execute_header, v89, v90, "Task %s already in registry is overlayed by %s", v92, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {

                  (*v161)(v88, v7);
                }

                v19 = v167;
                a2 = v158;
                v87 = v160;
              }
            }

            else
            {

              v87 = *v162;
            }

            v160 = v87;
            v87(v84, v173, v7);

            v97 = Logger.logObject.getter();
            v98 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              v175 = swift_slowAlloc();
              *v99 = v151;
              v100 = TaskDefinition.name.getter();
              v102 = v101;
              v103 = v84;
              v104 = *v161;
              (*v161)(v103, v171);
              v105 = sub_100008A0C(v100, v102, &v175);
              a2 = v158;

              *(v99 + 4) = v105;
              *(v99 + 12) = 2080;
              v106 = sub_100008A0C(v50, v51, &v175);

              *(v99 + 14) = v106;
              _os_log_impl(&_mh_execute_header, v97, v98, "Loaded %s from: %s", v99, 0x16u);
              swift_arrayDestroy();
              v7 = v171;

              v19 = v167;
            }

            else
            {

              v107 = v84;
              v104 = *v161;
              (*v161)(v107, v7);
            }

            v108 = v173;
            v109 = TaskDefinition.name.getter();
            v111 = v110;
            v160(v157, v108, v7);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v175 = v19;
            v113 = sub_100010DF4(v109, v111);
            v115 = v19[2];
            v116 = (v114 & 1) == 0;
            v117 = __OFADD__(v115, v116);
            v118 = v115 + v116;
            if (v117)
            {
              goto LABEL_68;
            }

            v119 = v114;
            if (v19[3] >= v118)
            {
              v121 = v153;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v125 = v113;
                sub_10001337C();
                v121 = v153;
                v113 = v125;
                a2 = v158;
              }

              v7 = v171;
              v19 = v175;
              if ((v119 & 1) == 0)
              {
                goto LABEL_51;
              }
            }

            else
            {
              sub_100011920(v118, isUniquelyReferenced_nonNull_native);
              v113 = sub_100010DF4(v109, v111);
              if ((v119 & 1) != (v120 & 1))
              {
                result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return result;
              }

              v7 = v171;
              v121 = v153;
              v19 = v175;
              if ((v119 & 1) == 0)
              {
LABEL_51:
                v19[(v113 >> 6) + 8] |= 1 << v113;
                v122 = (v19[6] + 16 * v113);
                *v122 = v109;
                v122[1] = v111;
                v156(v19[7] + *(v121 + 72) * v113, v157, v7);
                v123 = v19[2];
                v117 = __OFADD__(v123, 1);
                v124 = v123 + 1;
                if (v117)
                {
                  goto LABEL_69;
                }

                v19[2] = v124;
                goto LABEL_57;
              }
            }

            (*(v121 + 40))(v19[7] + *(v121 + 72) * v113, v157, v7);

LABEL_57:
            v104(v108, v7);
LABEL_58:
            v6 = v155;
LABEL_14:
            v40 = v169;
            v41 = v170;
            v37 = v165;
            ++v39;
          }

          while (v39 != v168);
        }
      }

      else
      {
        v126 = v175;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        v143 = 0;
        swift_errorRetain();
        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          *v129 = v142;
          swift_errorRetain();
          v131 = _swift_stdlib_bridgeErrorToNSError();
          *(v129 + 4) = v131;
          *v130 = v131;
          _os_log_impl(&_mh_execute_header, v127, v128, "Failed at reading tasks from disk: %@", v129, 0xCu);
          sub_100009C94(v130, &qword_100085970, &qword_100068F48);
        }

        else
        {
        }

        a2 = v158;
      }

      v20 = v150 + 1;
    }

    while (v150 + 1 != v147);
  }

  if (qword_1000850B8 != -1)
  {
LABEL_70:
    swift_once();
  }

  v132 = type metadata accessor for Logger();
  sub_1000098DC(v132, qword_100087610);

  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v175 = v136;
    *v135 = 134218242;
    *(v135 + 4) = v19[2];
    *(v135 + 12) = 2080;
    v137 = Array.description.getter();
    v139 = sub_100008A0C(v137, v138, &v175);

    *(v135 + 14) = v139;
    _os_log_impl(&_mh_execute_header, v133, v134, "Loaded %ld tasks from: %s.", v135, 0x16u);
    sub_100009914(v136);
  }

  return v19;
}

uint64_t sub_1000239D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = TaskDefinition.bundleIdentifier.getter();
  v9 = sub_1000292B0(v7, v8, a4);

  if ((v9 & 1) == 0)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000098DC(v10, qword_100087610);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100008A0C(a1, a2, &v16);
      _os_log_impl(&_mh_execute_header, v11, v12, "Task %s is discarded because its bundleIdentifier is not available in the OS.", v13, 0xCu);
      sub_100009914(v14);
    }
  }

  return v9 & 1;
}

uint64_t sub_100023B54(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v63 = a2;
  v2 = sub_1000089AC(&qword_100085ED0, &qword_1000695E0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v58 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v61 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v64 = &v58 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v58 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v58 - v18;
  __chkstk_darwin(v17);
  v21 = &v58 - v20;
  TaskDefinition.startDate.getter();
  v22 = *(v9 + 48);
  if (v22(v7, 1, v8) == 1)
  {
    sub_100009C94(v7, &qword_100085ED0, &qword_1000695E0);
  }

  else
  {
    v59 = v16;
    (*(v9 + 32))(v21, v7, v8);
    static Date.now.getter();
    v23 = static Date.< infix(_:_:)();
    v60 = v9;
    v24 = v21;
    v25 = *(v9 + 8);
    v25(v19, v8);
    if (v23)
    {
      v64 = v25;
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000098DC(v26, qword_100087610);
      v27 = v59;
      (*(v60 + 16))(v59, v24, v8);
      v28 = v63;

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v31 = 136315394;
        *(v31 + 4) = sub_100008A0C(v62, v28, &v65);
        *(v31 + 12) = 2080;
        sub_100027AC8(&unk_100085980, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        v35 = v27;
        v36 = v24;
        v37 = v64;
        (v64)(v35, v8);
        v38 = sub_100008A0C(v32, v34, &v65);

        *(v31 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v29, v30, "Task %s is discarded due to startDate %s", v31, 0x16u);
        swift_arrayDestroy();

        (v37)(v36, v8);
      }

      else
      {

        v55 = v8;
        v56 = v8;
        v57 = v64;
        (v64)(v27, v55);
        (v57)(v24, v56);
      }

      return 0;
    }

    v25(v24, v8);
    v9 = v60;
  }

  TaskDefinition.endDate.getter();
  if (v22(v5, 1, v8) == 1)
  {
    sub_100009C94(v5, &qword_100085ED0, &qword_1000695E0);
    return 1;
  }

  v39 = v64;
  (*(v9 + 32))(v64, v5, v8);
  static Date.now.getter();
  v40 = static Date.> infix(_:_:)();
  v41 = *(v9 + 8);
  v41(v19, v8);
  if ((v40 & 1) == 0)
  {
    v41(v39, v8);
    return 1;
  }

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_1000098DC(v42, qword_100087610);
  v43 = v61;
  (*(v9 + 16))(v61, v39, v8);
  v44 = v39;
  v45 = v63;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v48 = 136315394;
    *(v48 + 4) = sub_100008A0C(v62, v45, &v65);
    *(v48 + 12) = 2080;
    sub_100027AC8(&unk_100085980, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    v41(v43, v8);
    v52 = sub_100008A0C(v49, v51, &v65);

    *(v48 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "Task %s is discarded due to endDate %s", v48, 0x16u);
    swift_arrayDestroy();

    v53 = v64;
  }

  else
  {

    v41(v43, v8);
    v53 = v44;
  }

  v41(v53, v8);
  return 0;
}

uint64_t sub_1000242BC()
{

  return v0;
}

uint64_t sub_100024314()
{
  sub_1000242BC();

  return _swift_deallocClassInstance(v0, 96, 7);
}

char *sub_1000243B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000089AC(&qword_100085900, &qword_100069240);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10002450C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000089AC(a5, a6);
  v16 = *(sub_1000089AC(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1000089AC(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_100024744(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000089AC(a5, a6);
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

void *sub_100024920(uint64_t a1, uint64_t a2)
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

  sub_1000089AC(&qword_100085900, &qword_100069240);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_1000249C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100024A84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000249E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100024B90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100024A04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100024DAC(a1, a2, a3, *v3, &qword_1000859D8, &qword_100069288, &qword_1000859E0, &qword_100069290);
  *v3 = result;
  return result;
}

void *sub_100024A44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100024DAC(a1, a2, a3, *v3, &qword_1000859E8, &qword_100069298, &qword_1000859F0, &unk_100069630);
  *v3 = result;
  return result;
}

char *sub_100024A84(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000089AC(&qword_100085900, &qword_100069240);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100024B90(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000089AC(&qword_100085908, &qword_100069248);
  v10 = *(type metadata accessor for MLHostTask() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for MLHostTask() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100024DAC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_1000089AC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000089AC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100024EF4(uint64_t a1)
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
    result = sub_100025054(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_100025288(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100025054(unint64_t *a1, uint64_t a2, void *a3)
{
  v27 = a2;
  v28 = a1;
  v34 = type metadata accessor for TaskDefinition();
  result = __chkstk_darwin(v34);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v5;
  v7 = 0;
  v35 = a3;
  v10 = a3[8];
  v9 = a3 + 8;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v31 = v5 + 16;
  v29 = 0;
  v30 = v5 + 8;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v36 = (v13 - 1) & v13;
LABEL_11:
    v18 = v15 | (v7 << 6);
    v19 = v34;
    v20 = (v35[6] + 16 * v18);
    v22 = *v20;
    v21 = v20[1];
    v23 = v32;
    v24 = v33;
    v25 = v18;
    (*(v33 + 16))(v32, v35[7] + *(v33 + 72) * v18, v34);

    LOBYTE(v22) = sub_100023B54(v22, v21);
    (*(v24 + 8))(v23, v19);

    v13 = v36;
    if (v22)
    {
      *(v28 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_100025390(v28, v27, v29, v35);
      }
    }
  }

  v16 = v7;
  while (1)
  {
    v7 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v7 >= v14)
    {
      return sub_100025390(v28, v27, v29, v35);
    }

    v17 = v9[v7];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v36 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100025288(void *result, uint64_t a2, void *a3)
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

    v6 = sub_100025054(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_100025300(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100025C64(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_100025390(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = type metadata accessor for TaskDefinition();
  v54 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v50 = &v44 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  sub_1000089AC(&qword_100086010, &qword_1000696C0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    Hasher.init(_seed:)();

    v52 = v27;
    String.hash(into:)();
    result = Hasher._finalize()();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
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

void *sub_100025710(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100025868(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100025B0C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100025C64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *, __n128))
{
  v26 = a2;
  v35 = a4;
  v27 = a1;
  v34 = type metadata accessor for TaskDefinition();
  result = __chkstk_darwin(v34);
  v32 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v6;
  v8 = 0;
  v36 = a3;
  v9 = *(a3 + 64);
  v28 = 0;
  v29 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v30 = v6 + 8;
  v31 = v6 + 16;
  v14 = v32;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v37 = (v12 - 1) & v12;
LABEL_11:
    v18 = v15 | (v8 << 6);
    v19 = (v36[6] + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v23 = v33;
    v22 = v34;
    v24 = v18;
    (*(v33 + 16))(v14, v36[7] + *(v33 + 72) * v18, v34);

    LOBYTE(v20) = (v35)(v20, v21, v14);
    (*(v23 + 8))(v14, v22);

    v12 = v37;
    if (v20)
    {
      *(v27 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_100025390(v27, v26, v28, v36);
      }
    }
  }

  v16 = v8;
  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      return sub_100025390(v27, v26, v28, v36);
    }

    v17 = *(v29 + 8 * v8);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v37 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100025EB0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *, __n128))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_100025C64(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_100025300(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

char *sub_100026030(uint64_t a1, uint64_t a2)
{
  v112 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000089AC(&qword_100085948, &qword_100069258);
  __chkstk_darwin(v6 - 8);
  v110 = &v98 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v102 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v99 = &v98 - v13;
  v14 = __chkstk_darwin(v12);
  v109 = &v98 - v15;
  __chkstk_darwin(v14);
  v118 = &v98 - v16;
  v113 = a1;
  v17 = sub_100017A40();
  v19 = v17;
  v20 = 0;
  v21 = 0;
  v22 = v17 + 56;
  v23 = 1 << v17[32];
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v17 + 7);
  v26 = (v23 + 63) >> 6;
  v107 = (v9 + 56);
  v106 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v105 = (v4 + 104);
  v104 = (v4 + 8);
  v27 = v8;
  v121 = (v9 + 8);
  v103 = (v9 + 16);
  v101 = _swiftEmptyArrayStorage;
  *&v18 = 136315138;
  v114 = v18;
  *&v18 = 136315394;
  v100 = v18;
  v120 = a2;
  v124 = v8;
  v108 = v17;
  v115 = v17 + 56;
  v119 = v26;
  while (v25)
  {
LABEL_11:
    v29 = (*(v19 + 6) + ((v20 << 10) | (16 * __clz(__rbit64(v25)))));
    v31 = *v29;
    v30 = v29[1];
    v25 &= v25 - 1;
    v128 = *v29;
    v129 = v30;
    v32 = __chkstk_darwin(v30);
    *(&v98 - 2) = &v128;
    v125 = v32;

    v33 = sub_100029F60(sub_10000FD78, (&v98 - 4), a2);
    v123 = v21;
    if (v33)
    {
      v122 = v31;
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      v35 = sub_1000098DC(v34, qword_100087610);
      v36 = v125;

      v117 = v35;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v128 = v40;
        *v39 = v114;
        *(v39 + 4) = sub_100008A0C(v122, v36, &v128);
        _os_log_impl(&_mh_execute_header, v37, v38, "Pruning taskFolder: %s", v39, 0xCu);
        sub_100009914(v40);
      }

      v116 = *(v113 + 40);
      (*v107)(v110, 1, 1, v27);
      v41 = *v105;
      v42 = v111;
      v43 = v106;
      v44 = v112;
      (*v105)(v111, v106, v112);

      v45 = v109;
      URL.init(filePath:directoryHint:relativeTo:)();
      v128 = v122;
      v129 = v125;
      v41(v42, v43, v44);
      sub_100027A04();
      v46 = v118;
      URL.appending<A>(path:directoryHint:)();
      v47 = v42;
      v27 = v124;
      (*v104)(v47, v44);
      v48 = *v121;
      (*v121)(v45, v27);
      v49 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v50);
      v52 = v51;
      v128 = 0;
      LODWORD(v41) = [v49 removeItemAtURL:v51 error:&v128];

      v53 = v128;
      if (v41)
      {
        v116 = v48;
        v76 = v99;
        (*v103)(v99, v46, v27);
        v77 = v53;
        v78 = v27;
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v128 = v82;
          *v81 = v114;
          sub_100027AC8(&qword_100085D10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v83 = dispatch thunk of CustomStringConvertible.description.getter();
          v84 = v76;
          v85 = v83;
          v87 = v86;
          v116(v84, v78);
          v88 = sub_100008A0C(v85, v87, &v128);

          *(v81 + 4) = v88;
          _os_log_impl(&_mh_execute_header, v79, v80, "Removed taskFolder: %s", v81, 0xCu);
          sub_100009914(v82);
        }

        else
        {

          v116(v76, v78);
        }

        a2 = v120;
        v27 = v78;
        v89 = v122;
        v90 = v123;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v115;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v101 = sub_1000243B8(0, *(v101 + 2) + 1, 1, v101);
        }

        v93 = *(v101 + 2);
        v92 = *(v101 + 3);
        if (v93 >= v92 >> 1)
        {
          v101 = sub_1000243B8((v92 > 1), v93 + 1, 1, v101);
        }

        v116(v46, v27);
        v94 = v101;
        *(v101 + 2) = v93 + 1;
        v95 = &v94[16 * v93];
        v96 = v125;
        *(v95 + 4) = v89;
        *(v95 + 5) = v96;
        v19 = v108;
        v26 = v119;
        v21 = v90;
      }

      else
      {
        v54 = v128;
        v55 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v128 = v55;
        sub_1000089AC(&qword_100085958, &unk_1000693F0);
        sub_100009A48(0, &unk_100085960, NSError_ptr);
        swift_dynamicCast();

        v56 = v126;
        v57 = v102;
        (*v103)(v102, v46, v27);
        v58 = v56;
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v127 = v125;
          *v61 = v100;
          sub_100027AC8(&qword_100085D10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v62 = dispatch thunk of CustomStringConvertible.description.getter();
          v64 = v63;
          v48(v57, v124);
          v65 = sub_100008A0C(v62, v64, &v127);

          *(v61 + 4) = v65;
          *(v61 + 12) = 2112;
          *(v61 + 14) = v58;
          v66 = v123;
          *v123 = v58;
          v67 = v58;
          _os_log_impl(&_mh_execute_header, v59, v60, "Failed at removing taskFolder: %s %@", v61, 0x16u);
          sub_100009C94(v66, &qword_100085970, &qword_100068F48);

          sub_100009914(v125);

          v27 = v124;
        }

        else
        {

          v48(v57, v27);
        }

        v48(v118, v27);
        a2 = v120;
        v22 = v115;

        v21 = 0;
        v19 = v108;
        v26 = v119;
      }
    }

    else
    {
      v68 = v31;
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_1000098DC(v69, qword_100087610);
      v70 = v125;

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v128 = v74;
        *v73 = v114;
        v75 = sub_100008A0C(v68, v70, &v128);

        *(v73 + 4) = v75;
        v22 = v115;
        _os_log_impl(&_mh_execute_header, v71, v72, "Skipping taskFolder: %s", v73, 0xCu);
        sub_100009914(v74);
        v27 = v124;
      }

      else
      {
      }

      v26 = v119;
      a2 = v120;
      v21 = v123;
    }
  }

  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
    }

    if (v28 >= v26)
    {
      break;
    }

    v25 = *&v22[8 * v28];
    ++v20;
    if (v25)
    {
      v20 = v28;
      goto LABEL_11;
    }
  }

  return v101;
}

char *sub_100026CD4(uint64_t a1, void *a2)
{
  v114 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000089AC(&qword_100085948, &qword_100069258);
  __chkstk_darwin(v6 - 8);
  v112 = &v100 - v7;
  v125 = type metadata accessor for URL();
  v8 = *(v125 - 8);
  v9 = __chkstk_darwin(v125);
  v105 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v100 = &v100 - v12;
  v13 = __chkstk_darwin(v11);
  v111 = &v100 - v14;
  __chkstk_darwin(v13);
  v121 = &v100 - v15;
  v115 = a1;
  v16 = sub_100017A40();
  v18 = v16;
  v19 = 0;
  v104 = 0;
  v20 = v16 + 56;
  v21 = 1 << v16[32];
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v16 + 7);
  v24 = (v21 + 63) >> 6;
  v25 = a2 + 7;
  v109 = (v8 + 56);
  v108 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v107 = (v4 + 104);
  v106 = (v4 + 8);
  v120 = (v8 + 8);
  v116 = (v8 + 16);
  v101 = _swiftEmptyArrayStorage;
  *&v17 = 136315138;
  v103 = v17;
  *&v17 = 136315394;
  v102 = v17;
  v128 = a2;
  v119 = v16;
  v110 = v16 + 56;
  v117 = v24;
  v118 = a2 + 7;
  while (v23)
  {
LABEL_10:
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v28 = (*(v18 + 6) + ((v19 << 10) | (16 * v27)));
    v30 = *v28;
    v29 = v28[1];
    if (v128[2])
    {
      v31 = v128;
      Hasher.init(_seed:)();

      String.hash(into:)();
      v32 = Hasher._finalize()();
      v33 = -1 << *(v31 + 32);
      v34 = v32 & ~v33;
      if (((*(v25 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_21;
      }

      v35 = ~v33;
      while (1)
      {
        v36 = (v128[6] + 16 * v34);
        v37 = *v36 == v30 && v36[1] == v29;
        if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v34 = (v34 + 1) & v35;
        if (((*(v25 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_1000098DC(v73, qword_100087610);

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = v30;
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v131[0] = v78;
        *v77 = v103;
        v79 = v76;
        v18 = v119;
        v80 = sub_100008A0C(v79, v29, v131);

        *(v77 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v74, v75, "Skipping taskFolder: %s", v77, 0xCu);
        sub_100009914(v78);
        v25 = v118;
      }

      else
      {
      }
    }

    else
    {

LABEL_21:
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v126 = v30;
      v38 = type metadata accessor for Logger();
      v39 = sub_1000098DC(v38, qword_100087610);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();

      v42 = os_log_type_enabled(v40, v41);
      v123 = v39;
      v124 = v23;
      v127 = v29;
      if (v42)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v131[0] = v44;
        *v43 = v103;
        *(v43 + 4) = sub_100008A0C(v126, v29, v131);
        _os_log_impl(&_mh_execute_header, v40, v41, "Pruning taskFolder: %s", v43, 0xCu);
        sub_100009914(v44);
      }

      v122 = *(v115 + 40);
      v45 = v125;
      (*v109)(v112, 1, 1, v125);
      v46 = *v107;
      v47 = v113;
      v48 = v108;
      v49 = v114;
      (*v107)(v113, v108, v114);

      v50 = v111;
      URL.init(filePath:directoryHint:relativeTo:)();
      v131[0] = v126;
      v131[1] = v127;
      v46(v47, v48, v49);
      sub_100027A04();
      v51 = v121;
      URL.appending<A>(path:directoryHint:)();
      (*v106)(v47, v49);
      v52 = *v120;
      (*v120)(v50, v45);
      v53 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v54);
      v56 = v55;
      v131[0] = 0;
      LODWORD(v46) = [v53 removeItemAtURL:v55 error:v131];

      v57 = v131[0];
      if (v46)
      {
        v81 = v100;
        (*v116)(v100, v51, v45);
        v82 = v57;
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.info.getter();
        v85 = os_log_type_enabled(v83, v84);
        v122 = v52;
        if (v85)
        {
          v86 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v131[0] = v123;
          *v86 = v103;
          sub_100027AC8(&qword_100085D10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v87 = dispatch thunk of CustomStringConvertible.description.getter();
          v88 = v52;
          v90 = v89;
          v88(v81, v45);
          v91 = sub_100008A0C(v87, v90, v131);

          *(v86 + 4) = v91;
          _os_log_impl(&_mh_execute_header, v83, v84, "Removed taskFolder: %s", v86, 0xCu);
          sub_100009914(v123);
        }

        else
        {

          v52(v81, v45);
        }

        v20 = v110;
        v92 = v126;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v119;
        v94 = v127;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v101 = sub_1000243B8(0, *(v101 + 2) + 1, 1, v101);
        }

        v96 = *(v101 + 2);
        v95 = *(v101 + 3);
        if (v96 >= v95 >> 1)
        {
          v101 = sub_1000243B8((v95 > 1), v96 + 1, 1, v101);
        }

        v122(v51, v45);
        v97 = v101;
        *(v101 + 2) = v96 + 1;
        v98 = &v97[16 * v96];
        *(v98 + 4) = v92;
        *(v98 + 5) = v94;
      }

      else
      {
        v58 = v131[0];
        v59 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v131[0] = v59;
        sub_1000089AC(&qword_100085958, &unk_1000693F0);
        sub_100009A48(0, &unk_100085960, NSError_ptr);
        swift_dynamicCast();

        v60 = v129;
        v61 = v105;
        (*v116)(v105, v51, v45);
        v62 = v60;
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = v52;
          v67 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v130 = v127;
          *v65 = v102;
          sub_100027AC8(&qword_100085D10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v68 = dispatch thunk of CustomStringConvertible.description.getter();
          v70 = v69;
          v66(v61, v125);
          v71 = sub_100008A0C(v68, v70, &v130);

          *(v65 + 4) = v71;
          *(v65 + 12) = 2112;
          *(v65 + 14) = v62;
          *v67 = v62;
          v72 = v62;
          _os_log_impl(&_mh_execute_header, v63, v64, "Failed at removing taskFolder: %s %@", v65, 0x16u);
          sub_100009C94(v67, &qword_100085970, &qword_100068F48);

          sub_100009914(v127);

          v66(v121, v125);
        }

        else
        {

          v52(v61, v45);
          v52(v51, v45);
        }

        v18 = v119;
        v20 = v110;

        v104 = 0;
      }

      v24 = v117;
      v25 = v118;
      v23 = v124;
    }
  }

  while (1)
  {
    v26 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *&v20[8 * v26];
    ++v19;
    if (v23)
    {
      v19 = v26;
      goto LABEL_10;
    }
  }

  return v101;
}

unint64_t sub_100027A04()
{
  result = qword_100085950;
  if (!qword_100085950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085950);
  }

  return result;
}

uint64_t sub_100027A74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100027AC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100027B10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100027B50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085A18, &qword_1000692B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027C20(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027CB8()
{
  v1 = v0;
  v2 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v2 - 8);
  v67 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v4 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v68 = *(v10 - 8);
  v69 = v10;
  __chkstk_darwin(v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v70 = sub_1000098DC(v13, qword_100087610);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "MLHostDaemon starting", v16, 2u);
  }

  sub_100009A48(0, &unk_100085B90, OS_dispatch_source_ptr);
  sub_100009A48(0, &qword_1000854B8, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v76 = sub_10003BDB8;
  v77 = 0;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_1000658D0;
  v75 = &unk_100082B40;
  v19 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  sub_10003BE88();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v19);
  v20 = *(v7 + 8);
  v60 = v7 + 8;
  v63 = v20;
  v20(v9, v6);
  v61 = v6;
  v62 = *(v68 + 8);
  v62(v12, v69);
  v68 = v18;
  OS_dispatch_source.resume()();
  sub_1000089AC(&qword_100085BA0, &qword_100069398);
  v21 = swift_allocObject();
  *(v21 + 1) = xmmword_100069300;
  static OS_dispatch_source.MemoryPressureEvent.warning.getter();
  static OS_dispatch_source.MemoryPressureEvent.critical.getter();
  aBlock = v21;
  sub_100051EE4(&qword_100085BA8, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent, &protocol conformance descriptor for OS_dispatch_source.MemoryPressureEvent);
  sub_1000089AC(&qword_100085BB0, &unk_1000693A0);
  sub_1000656B8(&qword_100085BB8, &qword_100085BB0, &unk_1000693A0);
  v22 = v64;
  v23 = v65;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = static OS_dispatch_source.makeMemoryPressureSource(eventMask:queue:)();
  (*(v4 + 8))(v22, v23);
  swift_getObjectType();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v1;
  v76 = sub_10004A65C;
  v77 = v25;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_1000658D0;
  v75 = &unk_100082B90;
  v26 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  sub_10003BE88();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v26);
  v63(v9, v61);
  v62(v12, v69);

  OS_dispatch_source.resume()();
  v27 = objc_opt_self();
  v28 = [v27 sharedScheduler];
  v29 = String._bridgeToObjectiveC()();
  v76 = sub_10003C788;
  v77 = 0;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_100065970;
  v75 = &unk_100082BB8;
  v30 = _Block_copy(&aBlock);
  [v28 registerForTaskWithIdentifier:v29 usingQueue:0 launchHandler:v30];
  _Block_release(v30);

  sub_10002BCC4();
  v31 = *(v1 + 40);

  v32 = v31;
  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();
  v33 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  v67 = v27;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v69 = v33;
  v66 = v24;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock = v38;
    *v37 = 136315138;
    v39 = XPCListener.debugDescription.getter();
    v41 = sub_100008A0C(v39, v40, &aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v34, v35, "XPC Listener started. %s", v37, 0xCu);
    sub_100009914(v38);
  }

  v42 = *(v1 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_notificationRegistry);
  sub_1000051D0(0xD000000000000016, 0x8000000100072EC0, 0);
  sub_1000051D0(0xD000000000000016, 0x8000000100072EC0, 1);
  v43 = *(v42 + 16);

  os_unfair_lock_lock(v43 + 4);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_10004A66C;
  *(v44 + 24) = v1;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = *(v42 + 72);
  *(v42 + 72) = 0x8000000000000000;
  sub_10004BB74(sub_10004A6CC, v44, 0xD000000000000016, 0x8000000100072EC0, isUniquelyReferenced_nonNull_native);
  *(v42 + 72) = v71;
  swift_endAccess();
  os_unfair_lock_unlock((*(v42 + 16) + 16));

  v46 = v67;
  v47 = [v67 sharedScheduler];
  v48 = String._bridgeToObjectiveC()();
  v76 = sub_10004BCC4;
  v77 = v1;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_100065970;
  v75 = &unk_100082C08;
  v49 = _Block_copy(&aBlock);

  [v47 registerForTaskWithIdentifier:v48 usingQueue:0 launchHandler:v49];
  _Block_release(v49);

  v50 = [v46 sharedScheduler];
  v51 = String._bridgeToObjectiveC()();
  v76 = sub_10004BCCC;
  v77 = v1;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_100065970;
  v75 = &unk_100082C30;
  v52 = _Block_copy(&aBlock);

  [v50 registerForTaskWithIdentifier:v51 usingQueue:0 launchHandler:v52];
  _Block_release(v52);

  v53 = [v46 sharedScheduler];
  v54 = String._bridgeToObjectiveC()();
  v76 = sub_10004BCD4;
  v77 = v1;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_100065970;
  v75 = &unk_100082C58;
  v55 = _Block_copy(&aBlock);

  [v53 registerForTaskWithIdentifier:v54 usingQueue:0 launchHandler:v55];
  _Block_release(v55);

  sub_100050398();
  sub_10002F9F8();
  sub_100030304();
  sub_100033164("enableTriggerTasks", sub_100031790);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "MLHostDaemon started", v58, 2u);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_100028958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MLHostTask();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100009C94(a1, &qword_100085940, &unk_1000693D0);
    sub_10004AFBC(a2, a3, &type metadata accessor for MLHostTask, &type metadata accessor for MLHostTask, sub_1000133A4, v9);

    return sub_100009C94(v9, &qword_100085940, &unk_1000693D0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10004C178(v13, a2, a3, isUniquelyReferenced_nonNull_native, sub_1000133A4, sub_100011948, &type metadata accessor for MLHostTask, sub_100012E5C);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_100028BBC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000089AC(&qword_100085658, &qword_1000690F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for RemoteHandler();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100009C94(a1, &qword_100085658, &qword_1000690F0);
    sub_10000B4C0(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100009C94(v7, &qword_100085658, &qword_1000690F0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_10004BF74(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_100028DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000089AC(&qword_100085C58, &qword_100069430);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ContinuousClock.Instant();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100009C94(a1, &qword_100085C58, &qword_100069430);
    sub_10004AFBC(a2, a3, &type metadata accessor for ContinuousClock.Instant, &type metadata accessor for ContinuousClock.Instant, sub_100013E60, v9);

    return sub_100009C94(v9, &qword_100085C58, &qword_100069430);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10004C178(v13, a2, a3, isUniquelyReferenced_nonNull_native, sub_100013E60, sub_100012A40, &type metadata accessor for ContinuousClock.Instant, sub_100013128);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_10002904C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000089AC(&qword_100085A10, &qword_100069690);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskStatus();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100009C94(a1, &qword_100085A10, &qword_100069690);
    sub_10004AFBC(a2, a3, &type metadata accessor for TaskStatus, &type metadata accessor for TaskStatus, sub_100013E88, v9);

    return sub_100009C94(v9, &qword_100085A10, &qword_100069690);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10004C178(v13, a2, a3, isUniquelyReferenced_nonNull_native, sub_100013E88, sub_100012A68, &type metadata accessor for TaskStatus, sub_100013140);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1000292B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
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
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

uint64_t sub_1000293A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100051EE4(&qword_100085F80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1000295C0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_10004A918(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1000296C4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_10004A918(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1000297E0(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = &_swiftEmptyArrayStorage;
    sub_1000249C4(0, v2 & ~(v2 >> 63), 0);
    v36 = &_swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_10004EBC0(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 bundleIdentifier];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = v36[2];
        v18 = v36[3];
        if (v19 >= v18 >> 1)
        {
          sub_1000249C4((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_1000089AC(&unk_100085CA0, &qword_100069468);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_100009A30(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_100009A30(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_100009A30(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_100029B48(uint64_t a1)
{
  v61 = type metadata accessor for UUID();
  v3 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v43 = v1;
    v64 = &_swiftEmptyArrayStorage;
    sub_100024A44(0, v5, 0);
    v6 = v64;
    v7 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v9 = 0;
    v10 = *(a1 + 36);
    v58 = (v3 + 8);
    v59 = v3 + 16;
    v44 = a1 + 72;
    v45 = a1 + 64;
    v48 = a1;
    v49 = v10;
    v46 = v5;
    v47 = v3;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v7 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_32;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_33;
      }

      v53 = 1 << result;
      v54 = result >> 6;
      v52 = v9;
      v13 = *(a1 + 56);
      v14 = (*(a1 + 48) + 16 * result);
      v16 = *v14;
      v15 = v14[1];
      v56 = v16;
      v57 = result;
      v17 = *(v13 + 8 * result);
      v18 = *(v17 + 16);
      v55 = v15;
      if (v18)
      {
        v51 = v6;
        v63 = &_swiftEmptyArrayStorage;

        sub_1000249C4(0, v18, 0);
        v19 = v63;
        v20 = *(v3 + 80);
        v50 = v17;
        v21 = v17 + ((v20 + 32) & ~v20);
        v62 = *(v3 + 72);
        v22 = *(v3 + 16);
        do
        {
          v23 = v60;
          v24 = v61;
          v22(v60, v21, v61);
          v25 = UUID.uuidString.getter();
          v27 = v26;
          (*v58)(v23, v24);
          v63 = v19;
          v29 = v19[2];
          v28 = v19[3];
          if (v29 >= v28 >> 1)
          {
            sub_1000249C4((v28 > 1), v29 + 1, 1);
            v19 = v63;
          }

          v19[2] = v29 + 1;
          v30 = &v19[2 * v29];
          v30[4] = v25;
          v30[5] = v27;
          v21 += v62;
          --v18;
        }

        while (v18);

        v3 = v47;
        a1 = v48;
        v7 = v45;
        v5 = v46;
        v6 = v51;
        v10 = v49;
      }

      else
      {

        v19 = &_swiftEmptyArrayStorage;
      }

      v64 = v6;
      v32 = v6[2];
      v31 = v6[3];
      result = v57;
      if (v32 >= v31 >> 1)
      {
        sub_100024A44((v31 > 1), v32 + 1, 1);
        result = v57;
        v10 = v49;
        v6 = v64;
      }

      v6[2] = v32 + 1;
      v33 = &v6[3 * v32];
      v34 = v55;
      v33[4] = v56;
      v33[5] = v34;
      v33[6] = v19;
      v11 = 1 << *(a1 + 32);
      if (result >= v11)
      {
        goto LABEL_34;
      }

      v35 = *(v7 + 8 * v54);
      if ((v35 & v53) == 0)
      {
        goto LABEL_35;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_36;
      }

      v36 = v35 & (-2 << (result & 0x3F));
      if (v36)
      {
        v11 = __clz(__rbit64(v36)) | result & 0x7FFFFFFFFFFFFFC0;
        v12 = v52;
      }

      else
      {
        v37 = v6;
        v38 = v54 << 6;
        v39 = v54 + 1;
        v40 = (v44 + 8 * v54);
        while (v39 < (v11 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            sub_100009A30(result, v10, 0);
            v10 = v49;
            v11 = __clz(__rbit64(v41)) + v38;
            goto LABEL_27;
          }
        }

        sub_100009A30(result, v10, 0);
        v10 = v49;
LABEL_27:
        v6 = v37;
        v12 = v52;
      }

      v9 = v12 + 1;
      result = v11;
      if (v9 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100029F60(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10002A00C()
{
  v0 = type metadata accessor for Logger();
  sub_10004A5B4(v0, qword_100087610);
  sub_1000098DC(v0, qword_100087610);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002A084()
{
  v0 = sub_100052918(&off_100082678);
  sub_1000089AC(&qword_100085FD0, &qword_100069680);
  result = swift_arrayDestroy();
  off_100085A50 = v0;
  return result;
}

BOOL sub_10002A130(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10002A160@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10002A18C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10002A278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100052C8C(a1);

  *a2 = v3;
  return result;
}

char *sub_10002A2B8()
{
  type metadata accessor for MLHostDaemon(0);
  swift_allocObject();
  result = sub_10002A2F8();
  qword_100087628 = result;
  return result;
}

char *sub_10002A2F8()
{
  v1 = v0;
  v105 = *v0;
  v2 = sub_1000089AC(&qword_1000854B0, &qword_100068F50);
  __chkstk_darwin(v2 - 8);
  v101 = v92 - v3;
  v107 = type metadata accessor for MLHostEnvironment();
  v99 = *(v107 - 8);
  v4 = __chkstk_darwin(v107);
  v98 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v97 = v92 - v6;
  v108 = type metadata accessor for MLHostConfig();
  v96 = *(v108 - 8);
  v7 = __chkstk_darwin(v108);
  v94 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v109 = v92 - v9;
  v106 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v106 - 1);
  __chkstk_darwin(v106);
  v100 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v104 = type metadata accessor for URL();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v15 = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[16] = os_variant_has_internal_diagnostics();
  v16 = [objc_opt_self() defaultManager];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 containerURLForSecurityApplicationGroupIdentifier:v17];

  if (!v18)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v102 = v15;
  *(v1 + 24) = URL.path(percentEncoded:)(0);
  v95 = sub_100009A48(0, &qword_1000854B8, OS_dispatch_queue_ptr);
  v19 = v1;
  v93 = "tainer: group.com.apple.mlhost";
  static DispatchQoS.unspecified.getter();
  v112[0] = _swiftEmptyArrayStorage;
  v92[3] = sub_100051EE4(&qword_1000854C0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v92[2] = sub_1000089AC(&qword_1000854C8, &qword_100068F58);
  v92[1] = sub_1000656B8(&unk_1000854D0, &qword_1000854C8, &qword_100068F58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v21 = *(v10 + 104);
  v22 = v100;
  v21(v100, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v106);
  *(v1 + 5) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v93 = "d.xpc.listener-queue";
  static DispatchQoS.background.getter();
  v112[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21(v22, v20, v106);
  *(v1 + 6) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = v109;
  sub_10002B530(v1[16], v109);
  v24 = OBJC_IVAR____TtC7mlhostd12MLHostDaemon_config;
  v25 = v96;
  v26 = v23;
  v27 = v108;
  (*(v96 + 32))(&v19[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_config], v26, v108);
  v28 = *(v25 + 16);
  v100 = v19;
  v95 = v24;
  v29 = &v19[v24];
  v30 = v94;
  v105 = v28;
  v28(v94, v29, v27);
  v31 = v97;
  MLHostConfig.apsEnvironment.getter();
  v106 = *(v25 + 8);
  v106(v30, v27);
  v32 = v99;
  v33 = v98;
  v34 = v107;
  (*(v99 + 104))(v98, enum case for MLHostEnvironment.development(_:), v107);
  sub_100051EE4(&qword_100086028, &type metadata accessor for MLHostEnvironment, &protocol conformance descriptor for MLHostEnvironment);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v112[0] == v110 && v112[1] == v111)
  {
    v35 = *(v32 + 8);
    v35(v33, v34);
    v35(v31, v34);
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v37 = *(v32 + 8);
    v37(v33, v34);
    v37(v31, v34);

    if ((v36 & 1) == 0)
    {
      sub_1000089AC(&qword_100086030, &qword_1000696E0);
      inited = swift_initStackObject();
      *(inited + 32) = 0xD000000000000016;
      v39 = inited + 32;
      *(inited + 16) = xmmword_1000691A0;
      *(inited + 40) = 0x8000000100072EC0;
      sub_1000089AC(&qword_100086038, &qword_1000696E8);
      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_100069300;
      *(v42 + 32) = 0;
      v43 = &off_100081EA8;
      v41 = v100;
      v44 = v100[16];
      if (v100[16])
      {
        v43 = &off_100081DE8;
      }

      *(v42 + 40) = v43;
      *(v42 + 48) = 1;
      v45 = &off_10007E588;
      if (v44)
      {
        v45 = &off_10007DFC8;
      }

      *(v42 + 56) = v45;
      v46 = sub_10005249C(v42, &qword_1000860E0, &qword_100069790);
      swift_setDeallocating();
      sub_1000089AC(&qword_100086040, &qword_1000696F0);
      swift_arrayDestroy();
      *(inited + 48) = v46;
      goto LABEL_12;
    }
  }

  sub_1000089AC(&qword_100086030, &qword_1000696E0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000016;
  v39 = inited + 32;
  *(inited + 16) = xmmword_1000691A0;
  *(inited + 40) = 0x8000000100072EC0;
  v40 = sub_10005249C(&off_1000825F8, &qword_1000860E0, &qword_100069790);
  sub_1000089AC(&qword_100086040, &qword_1000696F0);
  swift_arrayDestroy();
  *(inited + 48) = v40;
  v41 = v100;
LABEL_12:
  v47 = sub_10005281C(inited, &qword_1000860D8, &qword_100069788);
  swift_setDeallocating();
  sub_100009C94(v39, &unk_100086048, &unk_1000696F8);
  type metadata accessor for ExtensionKitRegistry();
  swift_allocObject();
  *&v41[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry] = sub_10000E8DC(&off_100082508);
  v48 = *(v41 + 3);
  v49 = *(v41 + 4);
  type metadata accessor for TaskRegistry();
  swift_allocObject();

  *&v41[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry] = sub_10001589C(v48, v49, &off_100082548);
  v50 = v109;
  v51 = v108;
  v105(v109, &v41[v95], v108);
  v52 = v101;
  MLHostConfig.apsEnvironment.getter();
  v106(v50, v51);
  (*(v32 + 56))(v52, 0, 1, v107);
  type metadata accessor for NotificationRegistry();
  swift_allocObject();
  *&v41[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_notificationRegistry] = sub_100003778(v47, v52, 0);
  type metadata accessor for PubSubRegistry();
  v53 = swift_allocObject();
  v53[3] = sub_10005281C(_swiftEmptyArrayStorage, &qword_100086090, &qword_100069740);
  v53[4] = sub_10005281C(_swiftEmptyArrayStorage, &qword_100086090, &qword_100069740);
  v53[5] = sub_10004F7FC(_swiftEmptyArrayStorage);
  v53[6] = sub_10004F7FC(_swiftEmptyArrayStorage);
  sub_1000089AC(&qword_100085A40, &unk_100068F60);
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  v53[2] = v54;
  *&v41[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_pubSubRegistry] = v53;
  type metadata accessor for TriggerRegistry();
  v55 = swift_allocObject();
  v55[3] = sub_10005281C(_swiftEmptyArrayStorage, &qword_1000857E8, &qword_100069178);
  v55[4] = sub_10004FA1C(_swiftEmptyArrayStorage);
  v55[5] = sub_10004FC04(_swiftEmptyArrayStorage);
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  v55[2] = v56;
  *&v41[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_triggerRegistry] = v55;
  type metadata accessor for KVDatastore();
  *&v41[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore] = KVDatastore.__allocating_init(maxCount:maxSize:)();
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  v58 = sub_1000098DC(v57, qword_100087610);

  v107 = v58;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = v50;
    v63 = swift_slowAlloc();
    v112[0] = v63;
    *v61 = 136315138;
    v105(v62, &v41[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_config], v51);
    sub_100051EE4(&unk_100085E40, &type metadata accessor for MLHostConfig, &protocol conformance descriptor for MLHostConfig);
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    v106(v62, v51);
    v67 = sub_100008A0C(v64, v66, v112);

    *(v61 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v59, v60, "MLHostDaemon config: %s", v61, 0xCu);
    sub_100009914(v63);
  }

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v112[0] = v71;
    *v70 = 136315138;
    v72 = *(v41 + 3);
    v73 = *(v41 + 4);

    v74 = sub_100008A0C(v72, v73, v112);

    *(v70 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v68, v69, "MLHostDaemon baseFolder: %s", v70, 0xCu);
    sub_100009914(v71);
  }

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v112[0] = v78;
    *v77 = 136315138;

    v79 = sub_100016CA0();
    v81 = v80;

    v82 = sub_100008A0C(v79, v81, v112);

    *(v77 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v75, v76, "MLHostDaemon taskRegistry: %s", v77, 0xCu);
    sub_100009914(v78);
  }

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v112[0] = v86;
    *v85 = 136315138;

    v87 = sub_100006E80();
    v89 = v88;

    v90 = sub_100008A0C(v87, v89, v112);

    *(v85 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v83, v84, "MLHostDaemon notificationRegistry: %s", v85, 0xCu);
    sub_100009914(v86);
  }

  (*(v103 + 8))(v102, v104);
  return v41;
}

uint64_t sub_10002B530@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v57 = a2;
  v2 = sub_1000089AC(&qword_1000854B0, &qword_100068F50);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v47 - v6;
  v8 = type metadata accessor for MLHostEnvironment();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v56 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v55 = &v47 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v47 - v15;
  __chkstk_darwin(v14);
  v18 = &v47 - v17;
  v19 = objc_allocWithZone(NSUserDefaults);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithSuiteName:v20];

  if (v21)
  {
    v22 = enum case for MLHostEnvironment.production(_:);
    v23 = *(v9 + 104);
    v23(v18, enum case for MLHostEnvironment.production(_:), v8);
    v48 = v23;
    v49 = v9 + 104;
    v23(v16, v22, v8);
    v24 = String._bridgeToObjectiveC()();
    v54 = v21;
    v25 = [v21 stringForKey:v24];

    v52 = v16;
    if (v25)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      MLHostEnvironment.init(rawValue:)();
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_100009C94(v7, &qword_1000854B0, &qword_100068F50);
      }

      else
      {
        (*(v9 + 8))(v18, v8);
        (*(v9 + 32))(v18, v7, v8);
      }
    }

    v34 = String._bridgeToObjectiveC()();
    v35 = v54;
    v36 = [v54 stringForKey:v34];

    if (v36)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      MLHostEnvironment.init(rawValue:)();
      if ((*(v9 + 48))(v5, 1, v8) == 1)
      {
        sub_100009C94(v5, &qword_1000854B0, &qword_100068F50);
      }

      else
      {
        v37 = v52;
        (*(v9 + 8))(v52, v8);
        (*(v9 + 32))(v37, v5, v8);
      }
    }

    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 stringForKey:v38];

    if (v39)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v40 = String._bridgeToObjectiveC()();
    v41 = [v35 stringForKey:v40];

    if (v41)
    {
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v43;
      v51 = v42;

      if ((v53 & 1) == 0)
      {
LABEL_21:
        v44 = *(v9 + 16);
        v44(v55, v18, v8);
        v45 = v52;
        v44(v56, v52, v8);
        MLHostConfig.init(cloudEnvironment:apsEnvironment:cloudContainer:apsChannel:)();

        v46 = *(v9 + 8);
        v46(v45, v8);
        return (v46)(v18, v8);
      }
    }

    else
    {
      v50 = 0;
      v51 = 0;
      if ((v53 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    (*(v9 + 8))(v18, v8);

    v48(v18, enum case for MLHostEnvironment.development(_:), v8);
    goto LABEL_21;
  }

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000098DC(v26, qword_100087610);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v58 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_100008A0C(0xD000000000000010, 0x8000000100073280, &v58);
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed at reading UserDefaults(%s). Using default config.", v29, 0xCu);
    sub_100009914(v30);
  }

  v31 = enum case for MLHostEnvironment.production(_:);
  v32 = *(v9 + 104);
  v32(v55, enum case for MLHostEnvironment.production(_:), v8);
  v32(v56, v31, v8);
  return MLHostConfig.init(cloudEnvironment:apsEnvironment:cloudContainer:apsChannel:)();
}