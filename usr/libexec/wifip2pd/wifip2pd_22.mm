uint64_t sub_1001A99F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for StorageEntry(0);
  result = sub_1001ABCD0(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for StorageEntry);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1001A9A9C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1001A9AE4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  result = sub_1001ABCD0(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for NANPairedDeviceSharedAssociation);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1001A9BD4(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  result = sub_1001ABCD0(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for NANGenericServiceProtocol.Attribute);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1001A9C7C(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  result = sub_100085188(a3, (a4[7] + 32 * a1));
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

unint64_t sub_1001A9CE8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_1001A9D30(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_100085188(a3, (a4[7] + 32 * a1));
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

void (*sub_1001A9D98(uint64_t *a1, uint64_t a2))(uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1001AAA60(v5);
  v5[9] = sub_1001A9FF8(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1001A9E3C;
}

uint64_t (*sub_1001A9E40(uint64_t *a1, uint64_t a2, uint64_t a3))()
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
  v7[8] = sub_1001AAA94(v7);
  v7[9] = sub_1001AA290(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1001AC5D0;
}

uint64_t (*sub_1001A9EEC(uint64_t *a1, uint64_t a2, uint64_t a3))()
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
  v7[8] = sub_1001AAA94(v7);
  v7[9] = sub_1001AA52C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1001AC5D0;
}

void sub_1001A9F98(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1001A9FF8(uint64_t *a1, uint64_t a2, char a3))(char **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x90uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 120) = a2;
  *(v8 + 128) = v3;
  v10 = *v3;
  v11 = sub_10007CE78(a2);
  *(v9 + 18) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_100195AC4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_10018DA48(v16, a3 & 1);
    v11 = sub_10007CE78(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 136) = v11;
  if (v17)
  {
    v21 = *(*v4 + 56) + 16 * v11;
    v22 = *v21;
    v23 = *(v21 + 8);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  *(v9 + 104) = v22;
  *(v9 + 112) = v23;
  return sub_1001AA150;
}

void sub_1001AA150(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 13);
  v4 = (*a1)[112];
  v5 = (*a1)[18];
  if (a2)
  {
    if (v3)
    {
      v6 = v2[17];
      v7 = *v2[16];
      if ((v5 & 1) == 0)
      {
        v8 = v2[15];
        *(v2 + 9) = *v8;
        v9 = *(v8 + 32);
        *v2 = *(v8 + 16);
        *(v2 + 8) = v9;
        sub_1001A9818(v6, v8, v3, v4 & 1, v7);
        sub_1000836D4((v2 + 9), (v2 + 6));
        v10 = (v2 + 6);
        v11 = v2;
LABEL_11:
        sub_100083730(v11, v10);
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v3)
  {
    v6 = v2[17];
    v7 = *v2[16];
    if ((v5 & 1) == 0)
    {
      v15 = v2[15];
      *(v2 + 11) = *v15;
      v16 = *(v15 + 32);
      *(v2 + 3) = *(v15 + 16);
      *(v2 + 20) = v16;
      sub_1001A9818(v6, v15, v3, v4 & 1, v7);
      sub_1000836D4((v2 + 11), (v2 + 6));
      v11 = (v2 + 3);
      v10 = (v2 + 6);
      goto LABEL_11;
    }

LABEL_7:
    v12 = v7[7] + 16 * v6;
    *v12 = v3;
    *(v12 + 8) = v4 & 1;
    goto LABEL_12;
  }

  if ((*a1)[18])
  {
    v13 = v2[17];
    v14 = *v2[16];
    sub_1001AC54C(*(v14 + 48) + 40 * v13);
    sub_100192D78(v13, v14);
  }

LABEL_12:
  v17 = v2[13];
  v18 = v3;

  free(v2);
}

void (*sub_1001AA290(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
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
  v13 = sub_1000102E8(a2, a3);
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
      sub_100197404();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1001907B8(v18, a4 & 1);
    v13 = sub_1000102E8(a2, a3);
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
  return sub_1001AA3E8;
}

void sub_1001AA3E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_10008378C(*(v13 + 48) + 16 * v12);
      sub_100193530(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

void (*sub_1001AA52C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x68uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v11 = type metadata accessor for StorageEntry(0);
  v10[3] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[4] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v10[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[7] = v15;
  v16 = *(*(sub_10005DC58(&unk_10058F740, &unk_100492AB0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[8] = swift_coroFrameAlloc();
    v10[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[8] = malloc(v16);
    v10[9] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[10] = v17;
  v19 = *v4;
  v21 = sub_10007D1A4(a2, a3);
  *(v10 + 96) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_16:
      v10[11] = v21;
      if (v25)
      {
LABEL_17:
        sub_1001ABCD0(*(*v5 + 56) + *(v13 + 72) * v21, v18, type metadata accessor for StorageEntry);
        v27 = 0;
LABEL_21:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_1001AA808;
      }

LABEL_20:
      v27 = 1;
      goto LABEL_21;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_100196B98();
      goto LABEL_16;
    }

    sub_10018FA54(v24, a4 & 1);
    v28 = sub_10007D1A4(a2, a3);
    if ((v25 & 1) == (v29 & 1))
    {
      v21 = v28;
      v10[11] = v28;
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1001AA808(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_100012400(v5, v6, &unk_10058F740, &unk_100492AB0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_1001ABCD0(v9, *(v2 + 6), type metadata accessor for StorageEntry);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_1001ABCD0(v13, v14, type metadata accessor for StorageEntry);
        sub_1001A99F0(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_100012400(v5, v17, &unk_10058F740, &unk_100492AB0);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_1001ABCD0(v9, *(v2 + 7), type metadata accessor for StorageEntry);
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1001ABCD0(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for StorageEntry);
      goto LABEL_10;
    }
  }

  sub_100016290(v9, &unk_10058F740, &unk_100492AB0);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_1001AC3F0(*(v20 + 48) + 16 * v19);
    sub_100193F64(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_100016290(v23, &unk_10058F740, &unk_100492AB0);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_1001AAA60(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1001AAA88;
}

uint64_t (*sub_1001AAA94(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1001AC5A8;
}

uint64_t sub_1001AAABC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = *(type metadata accessor for PairedDeviceXPCDelegate(0) - 8);
  __chkstk_darwin();
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v29 - v9;
  __chkstk_darwin();
  v12 = &v29 - v11;
  v13 = *v2;
  result = sub_10019C124(a1, a2, *v2, type metadata accessor for PairedDeviceXPCDelegate);
  if (!v3)
  {
    if (v15)
    {
      return *(v13 + 16);
    }

    v33 = v12;
    v34 = a1;
    v30 = v10;
    v31 = v8;
    v35 = a2;
    v29 = v2;
    v37 = result;
    v16 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v18 = (v13 + 16);
      v17 = *(v13 + 16);
      if (v16 == v17)
      {
        return v37;
      }

      v32 = v6;
      while (v16 < v17)
      {
        v19 = v13;
        v36 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v20 = v13 + v36;
        v21 = *(v6 + 72);
        v22 = v33;
        sub_1001ABBF0(v20 + v21 * v16, v33, type metadata accessor for PairedDeviceXPCDelegate);
        v23 = v34(v22);
        result = sub_1001AB714(v22, type metadata accessor for PairedDeviceXPCDelegate);
        if (v23)
        {
          v6 = v32;
          v13 = v19;
        }

        else
        {
          v24 = v37;
          if (v16 == v37)
          {
            v6 = v32;
            v13 = v19;
          }

          else
          {
            if ((v37 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v25 = *v18;
            if (v37 >= *v18)
            {
              goto LABEL_25;
            }

            v26 = v21 * v37;
            result = sub_1001ABBF0(v20 + v21 * v37, v30, type metadata accessor for PairedDeviceXPCDelegate);
            if (v16 >= v25)
            {
              goto LABEL_26;
            }

            v27 = v21 * v16;
            sub_1001ABBF0(v20 + v21 * v16, v31, type metadata accessor for PairedDeviceXPCDelegate);
            v13 = v19;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1000C2BB4(v19);
            }

            v6 = v32;
            v28 = v13 + v36;
            result = sub_1001AC4B4(v31, v13 + v36 + v26, type metadata accessor for PairedDeviceXPCDelegate);
            if (v16 >= *(v13 + 16))
            {
              goto LABEL_27;
            }

            result = sub_1001AC4B4(v30, v28 + v27, type metadata accessor for PairedDeviceXPCDelegate);
            *v29 = v13;
            v24 = v37;
          }

          v37 = v24 + 1;
        }

        ++v16;
        v18 = (v13 + 16);
        v17 = *(v13 + 16);
        if (v16 == v17)
        {
          return v37;
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
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001AAE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v21 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WiFiAwareKeychainError(0);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v20 - v9);
  sub_10005DC58(&qword_10058F758, &qword_100492AC8);
  __chkstk_darwin();
  v12 = &v20 - v11;
  v14 = *(v13 + 56);
  sub_1001ABBF0(a1, &v20 - v11, type metadata accessor for WiFiAwareKeychainError);
  sub_1001ABBF0(a2, &v12[v14], type metadata accessor for WiFiAwareKeychainError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_18;
        }

LABEL_20:
        sub_100016290(v12, &qword_10058F758, &qword_100492AC8);
        v17 = 0;
        return v17 & 1;
      }

      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_20;
      }
    }

LABEL_18:
    sub_1001AB714(v12, type metadata accessor for WiFiAwareKeychainError);
    v17 = 1;
    return v17 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1001ABBF0(v12, v10, type metadata accessor for WiFiAwareKeychainError);
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = *v10 == *&v12[v14];
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_1001ABBF0(v12, v8, type metadata accessor for WiFiAwareKeychainError);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v21 + 8))(v8, v4);
    goto LABEL_20;
  }

  v16 = v21;
  (*(v21 + 32))(v6, &v12[v14], v4);
  v17 = static UUID.== infix(_:_:)();
  v18 = *(v16 + 8);
  v18(v6, v4);
  v18(v8, v4);
LABEL_12:
  sub_1001AB714(v12, type metadata accessor for WiFiAwareKeychainError);
  return v17 & 1;
}

void sub_1001AB1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

void sub_1001AB29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_100115F7C(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  sub_1001AB1B8(a1, a2, 1, a3, a4);
  *v4 = v6;
}

char *sub_1001AB378(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_1001AB41C(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100115F68(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1001AB378(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1001AB4DC(char a1)
{
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  type metadata accessor for CFString(0);
  v5 = v4;
  *(inited + 72) = v4;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v6;
  v7 = 0xD000000000000029;
  if (a1)
  {
    v7 = 0xD000000000000031;
    v8 = "v16@?0@NSError8";
  }

  else
  {
    v8 = "ngMetadataService";
  }

  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v7;
  *(inited + 104) = v8 | 0x8000000000000000;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v9;
  *(inited + 168) = v5;
  *(inited + 144) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v10 = kSecClassGenericPassword;
  v11 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v12 = sub_1000827F8(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BB40, &unk_100480E70);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_1001AB660(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001AB6A8()
{
  result = qword_1005960D0;
  if (!qword_1005960D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005960D0);
  }

  return result;
}

uint64_t sub_1001AB714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001AB774(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1001AB4DC(a3 & 1);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v13 = &type metadata for String;
  *&v12 = a1;
  *(&v12 + 1) = a2;
  sub_100085188(&v12, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10007FDF4(v11, v6, v8, isUniquelyReferenced_nonNull_native);

  return v5;
}

uint64_t sub_1001AB830(uint64_t a1)
{
  v2 = type metadata accessor for WiFiAwarePairedDevice(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  __chkstk_darwin();
  v9 = &v18 - v8;
  __chkstk_darwin();
  v11 = &v18 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return 1;
  }

  v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  result = sub_1001ABBF0(v13, v7, type metadata accessor for WiFiAwarePairedDevice);
  if (v12 == 1)
  {
LABEL_3:
    sub_1001ABCD0(v7, v9, type metadata accessor for WiFiAwarePairedDevice);
    sub_1001ABCD0(v9, v11, type metadata accessor for WiFiAwarePairedDevice);
    v15 = *&v11[*(v2 + 20)];
    sub_1001AB714(v11, type metadata accessor for WiFiAwarePairedDevice);
    result = v15 + 1;
    if (v15 != -1)
    {
      return result;
    }

    __break(1u);
    return 1;
  }

  v16 = 1;
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    sub_1001ABBF0(v13 + *(v3 + 72) * v16, v5, type metadata accessor for WiFiAwarePairedDevice);
    if (*&v7[*(v2 + 20)] >= *&v5[*(v2 + 20)])
    {
      result = sub_1001AB714(v5, type metadata accessor for WiFiAwarePairedDevice);
    }

    else
    {
      sub_1001AB714(v7, type metadata accessor for WiFiAwarePairedDevice);
      result = sub_1001ABCD0(v5, v7, type metadata accessor for WiFiAwarePairedDevice);
    }

    ++v16;
    if (v17 == v12)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001ABAAC(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_10005DD04(&qword_10058F4E8, &qword_100492890);
    v10 = sub_1001AB660(a2, type metadata accessor for WiFiAwarePairedDevice, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001ABB48()
{
  result = qword_10058F510;
  if (!qword_10058F510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiAwarePairedDeviceMetadata, &type metadata for WiFiAwarePairedDeviceMetadata, v0, v1);
    atomic_store(result, &qword_10058F510);
  }

  return result;
}

unint64_t sub_1001ABB9C()
{
  result = qword_10058F518;
  if (!qword_10058F518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiAwarePairedDeviceMetadata, &type metadata for WiFiAwarePairedDeviceMetadata, v0, v1);
    atomic_store(result, &qword_10058F518);
  }

  return result;
}

uint64_t sub_1001ABBF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001ABCD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001ABD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1001ABE84(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1001176F4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1001ABD38(v6, a2, 0, type metadata accessor for PairedDeviceXPCDelegate);
  *v2 = v4;
  return result;
}

unint64_t sub_1001ABF5C()
{
  result = qword_10058F540[0];
  if (!qword_10058F540[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PairedDevicesStoreEvent, &type metadata for PairedDevicesStoreEvent, v0, v1);
    atomic_store(result, qword_10058F540);
  }

  return result;
}

void sub_1001ABFC4(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_1001AC158(319, &qword_10058F5C8, &type metadata accessor for AsyncStream);
    if (v2 <= 0x3F)
    {
      sub_1001AC158(319, &qword_10058F5D0, &type metadata accessor for AsyncStream.Continuation);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1001AC158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PairedDevicesStoreEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1001AC1D4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1001AC258(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001AC258(uint64_t a1)
{
  if (!qword_10058F640)
  {
    sub_10005DD04(&unk_10058F648, &qword_1004B2140);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10058F640);
    }
  }
}

void sub_1001AC2BC(uint64_t a1)
{
  sub_1001AC330();
  if (v1 <= 0x3F)
  {
    sub_1001AC360();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *sub_1001AC330()
{
  result = qword_10058F6F8;
  if (!qword_10058F6F8)
  {
    result = &type metadata for Int32;
    atomic_store(&type metadata for Int32, &qword_10058F6F8);
  }

  return result;
}

void sub_1001AC360()
{
  if (!qword_10058F700)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_10058F700);
    }
  }
}

uint64_t sub_1001AC444(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AC4B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t NANBeacon.Metadata.channel.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result);
  *(v1 + 13) = BYTE5(result);
  return result;
}

uint64_t static NANDiscoveryBeaconTransmissionSchedule.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a2, a4);
  }

  else
  {
    return 0;
  }
}

void NANDiscoveryBeaconTransmissionSchedule.hash(into:)(uint64_t a1, Swift::UInt64 a2, uint64_t a3)
{
  Hasher._combine(_:)(a2);

  NANAttribute.PublicAvailability.hash(into:)(a1, a3);
}

Swift::Int NANDiscoveryBeaconTransmissionSchedule.hashValue.getter(Swift::UInt64 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  NANAttribute.PublicAvailability.hash(into:)(v5, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1001AC71C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  NANAttribute.PublicAvailability.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

void sub_1001AC778(uint64_t a1)
{
  v3 = v1[1];
  Hasher._combine(_:)(*v1);

  NANAttribute.PublicAvailability.hash(into:)(a1, v3);
}

Swift::Int sub_1001AC7C4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  NANAttribute.PublicAvailability.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t sub_1001AC81C(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1001AC840(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 == a5 && a2 == a6)
  {
    if (((0x801004u >> ((a2 >> 29) & 0xF8)) & 0xFFC) == ((0x801004u >> ((a6 >> 29) & 0xF8)) & 0xFFC))
    {
      if (BYTE5(a2) <= 3u)
      {
        if (BYTE5(a2) == 2)
        {
          result = 0;
          if (BYTE5(a6) != 2)
          {
            return result;
          }

          goto LABEL_23;
        }

        if (BYTE5(a2) == 3)
        {
          result = 0;
          if (BYTE5(a6) != 3)
          {
            return result;
          }

          goto LABEL_23;
        }
      }

      else
      {
        switch(BYTE5(a2))
        {
          case 4u:
            result = 0;
            if (BYTE5(a6) != 4)
            {
              return result;
            }

            goto LABEL_23;
          case 5u:
            result = 0;
            if (BYTE5(a6) != 5)
            {
              return result;
            }

            goto LABEL_23;
          case 6u:
            result = 0;
            if (BYTE5(a6) != 6)
            {
              return result;
            }

            goto LABEL_23;
        }
      }

      if (BYTE5(a6) - 2 >= 5)
      {
        result = 0;
        if (((a6 >> 40) ^ (a2 >> 40)))
        {
          return result;
        }

LABEL_23:
        if (a3 == a7)
        {
          return a4 == a8;
        }

        return result;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1001AC950()
{
  result = qword_10058F768[0];
  if (!qword_10058F768[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANBeacon, &type metadata for NANBeacon, v0, v1);
    atomic_store(result, qword_10058F768);
  }

  return result;
}

unint64_t sub_1001AC9A8()
{
  result = qword_10059A590;
  if (!qword_10059A590)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDiscoveryBeaconTransmissionSchedule, &type metadata for NANDiscoveryBeaconTransmissionSchedule, v0, v1);
    atomic_store(result, &qword_10059A590);
  }

  return result;
}

uint64_t sub_1001ACA0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001ACA50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1001ACAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001ACBE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_100492E30, a1);
  v3 = sub_100033DA0();

  return OptionSet<>.init()(a1, WitnessTable, v3);
}

uint64_t sub_1001ACC50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_100492E30);

  return OptionSet<>.contains(_:)(a1, a2, WitnessTable);
}

uint64_t sub_1001ACCB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_100492E30);

  return OptionSet.union(_:)(a1, a2, WitnessTable);
}

uint64_t sub_1001ACD18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_100492E30);

  return OptionSet.intersection(_:)(a1, a2, WitnessTable);
}

uint64_t sub_1001ACD80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_100492E30);

  return OptionSet.symmetricDifference(_:)(a1, a2, WitnessTable);
}

uint64_t sub_1001ACDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(byte_100492E30, a3);

  return OptionSet<>.insert(_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1001ACE54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_100492E30);

  return OptionSet<>.remove(_:)(a1, a2, WitnessTable);
}

uint64_t sub_1001ACEBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_100492E30);

  return OptionSet<>.update(with:)(a1, a2, WitnessTable);
}

uint64_t sub_1001ACF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable(byte_100492E30, a2, a3);
  v7 = sub_100033DA0();

  return a4(a1, a2, WitnessTable, v7);
}

uint64_t sub_1001AD010(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_100492D40);

  return SetAlgebra<>.init(arrayLiteral:)(a1, a2, WitnessTable);
}

uint64_t sub_1001AD0CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_100492D08, a1);

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for UInt8);
}

uint64_t sub_1001AD140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(byte_100492D08);

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for UInt8);
}

void sub_1001AD1B4(uint64_t a1, uint64_t a2)
{
  v14[3] = a2;
  v3 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  __chkstk_darwin();
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_100044904(*(a1 + 48) + *(v3 + 72) * (v12 | (v11 << 6)), v5, type metadata accessor for AWDLPeer.AdvertisedService);
    v13 = *v5;
    type metadata accessor for AWDLPeer(0);
    sub_1001D5218(v13);
    sub_10004496C(v5, type metadata accessor for AWDLPeer.AdvertisedService);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(a1 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t AWDLPeer.averageRSSIAcrossBands.getter()
{
  v1 = type metadata accessor for AWDLPeer(0);
  v2 = (v0 + *(v1 + 96));
  if (v2[8] == 1)
  {
    v2 = (v0 + *(v1 + 92));
  }

  return *v2;
}

uint64_t AWDLPeer.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AWDLPeer.macAddress.setter(unint64_t a1)
{
  v2 = a1;
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v7 = a1 >> 40;
  result = type metadata accessor for AWDLPeer(0);
  v9 = (v1 + *(result + 20));
  *v9 = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  return result;
}

uint64_t AWDLPeer.lastUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AWDLPeer(0) + 24);
  v4 = type metadata accessor for DispatchTime();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AWDLPeer.numberOfActionFrames.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLPeer(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

__n128 AWDLPeer.electionParameter.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AWDLPeer(0) + 36);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t AWDLPeer.serviceParameter.getter()
{
  v1 = v0 + *(type metadata accessor for AWDLPeer(0) + 40);
  v2 = *v1;
  sub_1001AD708(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

uint64_t sub_1001AD708(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 15)
  {
    return sub_10000AB0C(a3, a4);
  }

  return result;
}

uint64_t AWDLPeer.arpa.getter()
{
  v1 = *(v0 + *(type metadata accessor for AWDLPeer(0) + 52));

  return v1;
}

__n128 AWDLPeer.nanSynchronization.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AWDLPeer(0) + 60);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

__n128 AWDLPeer.realtimeGroup.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AWDLPeer(0) + 68);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t AWDLPeer.preferredChannels.getter()
{
  v1 = *(v0 + *(type metadata accessor for AWDLPeer(0) + 72));

  return v1;
}

double AWDLPeer.advertisedServices.getter()
{
  type metadata accessor for AWDLPeer(0);

  return result;
}

unint64_t AWDLPeer.infrastructureChannel.getter()
{
  sub_10005DC58(&qword_10058D450, &unk_100486D78);
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = type metadata accessor for AWDLPeer(0);
  v4 = (v0 + *(v3 + 72));
  if (v4[1])
  {
    v5 = *v4;
  }

  else
  {
    sub_100012400(v0 + *(v3 + 56), v2, &qword_10058D450, &unk_100486D78);
    v6 = type metadata accessor for AWDLActionFrame.DataPathState(0);
    if ((*(*(v6 - 8) + 48))(v2, 1, v6) == 1)
    {
      sub_100016290(v2, &qword_10058D450, &unk_100486D78);
      v5 = 0x300000000;
    }

    else
    {
      v5 = *(v2 + 5) | (*(v2 + 12) << 32);
      sub_10004496C(v2, type metadata accessor for AWDLActionFrame.DataPathState);
    }
  }

  return v5 & 0xFFFFFFFFFFFFLL;
}

uint64_t AWDLPeer.supportsSimultaneousDualBand.getter()
{
  sub_10005DC58(&qword_10058D450, &unk_100486D78);
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = type metadata accessor for AWDLPeer(0);
  sub_100012400(v0 + *(v3 + 56), v2, &qword_10058D450, &unk_100486D78);
  v4 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
    sub_100016290(v2, &qword_10058D450, &unk_100486D78);
    return 0;
  }

  else
  {
    v5 = v2[84];
    sub_10004496C(v2, type metadata accessor for AWDLActionFrame.DataPathState);
  }

  return v5;
}

uint64_t AWDLPeer.supportsDFSProxy.getter()
{
  sub_10005DC58(&qword_10058D450, &unk_100486D78);
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = type metadata accessor for AWDLPeer(0);
  sub_100012400(v0 + *(v3 + 56), v2, &qword_10058D450, &unk_100486D78);
  v4 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
    sub_100016290(v2, &qword_10058D450, &unk_100486D78);
    return 0;
  }

  else
  {
    v5 = v2[85];
    sub_10004496C(v2, type metadata accessor for AWDLActionFrame.DataPathState);
  }

  return v5;
}

double AWDLPeer.AdvertisedService.service.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 41);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 33) = v6;

  return result;
}

__n128 AWDLPeer.AdvertisedService.service.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v4;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

uint64_t AWDLPeer.AdvertisedService.datapathInfo.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AWDLPeer.AdvertisedService(0) + 28);

  return sub_1001AEB14(a1, v3);
}

void AWDLPeer.AdvertisedService.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 41);
  String.lowercased()();
  String.hash(into:)();

  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v2);
}

BOOL static AWDLPeer.AdvertisedService.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 41);
  sub_10005E2E4();
  return !StringProtocol.caseInsensitiveCompare<A>(_:)() && sub_100178C7C(v2, v3, v4 | (v5 << 8), v6, v7, v8 | (v9 << 8));
}

Swift::Int AWDLPeer.AdvertisedService.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 41);
  String.lowercased()();
  String.hash(into:)();

  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001AE1C0(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(v1 + 41);
  String.lowercased()();
  String.hash(into:)();

  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t AWDLPeer.peerPresencePosted.setter(char a1)
{
  result = type metadata accessor for AWDLPeer(0);
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t AWDLPeer.needsToRecoverTrafficRegistrations.setter(char a1)
{
  result = type metadata accessor for AWDLPeer(0);
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t AWDLPeer.needsToRecoverResponderTrafficRegistrations.setter(char a1)
{
  result = type metadata accessor for AWDLPeer(0);
  *(v1 + *(result + 116)) = a1;
  return result;
}

double sub_1001AE490@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 32);
  v8 = *(a2 + 33);
  v9 = a2[1];
  v16 = *a2;
  v12 = v16;
  v14 = v9;
  v15 = *(a2 + 16);
  v10 = type metadata accessor for DNSRecords.SRV(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  sub_1000836D4(&v16, v13);
  sub_100083730(&v14, v13);
  *a3 = v12;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7 & 1;
  *(a3 + 33) = v8;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  return result;
}

double sub_1001AE578@<D0>(void (*a1)(__int128 *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10005DC58(&qword_10058F3A0, &qword_100492310);
  a1(&v14, a2 + *(v4 + 64));
  result = *&v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v22;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  *a2 = v14;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 33) = v9;
  *(a2 + 40) = v11;
  *(a2 + 56) = v12;
  *(a2 + 72) = v13;
  *(a2 + 88) = v10;
  return result;
}

double sub_1001AE618@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = type metadata accessor for DNSRecords.SRV(0);
  (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  *(a3 + 32) = v9;
  *(a3 + 33) = v10;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;

  return result;
}

void AWDLPeer.hash(into:)()
{
  v1 = (v0 + *(type metadata accessor for AWDLPeer(0) + 20));
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
}

BOOL static AWDLPeer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AWDLPeer(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = a2 + v4;
  return *v5 == *v7 && v6 == *(v7 + 4);
}

Swift::Int AWDLPeer.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = (v0 + *(type metadata accessor for AWDLPeer(0) + 20));
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

Swift::Int sub_1001AE8B8(uint64_t a1)
{
  Hasher.init(_seed:)();
  v3 = (v1 + *(a1 + 20));
  LOBYTE(a1) = v3[1];
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  Hasher._combine(_:)(*v3);
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void sub_1001AE968(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  Hasher._combine(_:)(*v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
}

Swift::Int sub_1001AE9F0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = (v2 + *(a2 + 20));
  LOBYTE(a2) = v4[1];
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  Hasher._combine(_:)(*v4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

BOOL sub_1001AEA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = (a1 + v3);
  v5 = *(a1 + v3 + 4);
  v6 = a2 + v3;
  return *v4 == *v6 && v5 == *(v6 + 4);
}

uint64_t sub_1001AEB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DNSRecords.SRV(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001AEB7C()
{
  result = qword_10058F800;
  if (!qword_10058F800)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLPeer.Reachability, &type metadata for AWDLPeer.Reachability, v0, v1);
    atomic_store(result, &qword_10058F800);
  }

  return result;
}

uint64_t sub_1001AEC60(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1001AECA8(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      sub_1001AF1C0(319, &qword_10058F880, &type metadata for AWDLActionFrame.DeprecatedElectionParameter);
      if (v3 <= 0x3F)
      {
        sub_1001AF1C0(319, &qword_10058F888, &type metadata for AWDLActionFrame.ElectionParameter);
        if (v4 <= 0x3F)
        {
          sub_1001AF1C0(319, &qword_10058F890, &type metadata for AWDLActionFrame.ServiceParameter);
          if (v5 <= 0x3F)
          {
            sub_1001AF1C0(319, &qword_10058E820, &type metadata for UInt16);
            if (v6 <= 0x3F)
            {
              sub_1001AF1C0(319, &qword_10058F898, &type metadata for AWDLActionFrame.SynchronizationParameter);
              if (v7 <= 0x3F)
              {
                sub_1001AF1C0(319, &qword_10058F8A0, &type metadata for AWDLActionFrame.Arpa);
                if (v8 <= 0x3F)
                {
                  sub_1001AEF94(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1001AF1C0(319, &qword_10058F8B0, &type metadata for AWDLActionFrame.NANSynchronization);
                    if (v10 <= 0x3F)
                    {
                      sub_1001AF1C0(319, &qword_10058F8B8, &type metadata for AWDLActionFrame.Version);
                      if (v11 <= 0x3F)
                      {
                        sub_1001AF1C0(319, &qword_10058F8C0, &type metadata for AWDLActionFrame.RealtimeGroup);
                        if (v12 <= 0x3F)
                        {
                          sub_1001AF1C0(319, &qword_10058F8C8, &type metadata for AWDLActionFrame.PreferredChannels);
                          if (v13 <= 0x3F)
                          {
                            sub_1001AEFEC(319);
                            if (v14 <= 0x3F)
                            {
                              sub_1001AF048(319);
                              if (v15 <= 0x3F)
                              {
                                sub_1001AF1C0(319, &qword_10058E828, &type metadata for UInt32);
                                if (v16 <= 0x3F)
                                {
                                  sub_1001AF1C0(319, &unk_10058F8E8, &type metadata for RSSI);
                                  if (v17 <= 0x3F)
                                  {
                                    swift_cvw_initStructMetadataWithLayoutString();
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1001AEF94(uint64_t a1)
{
  if (!qword_10058F8A8)
  {
    type metadata accessor for AWDLActionFrame.DataPathState(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10058F8A8);
    }
  }
}

void sub_1001AEFEC(uint64_t a1)
{
  if (!qword_10058F8D0)
  {
    v2 = sub_100033DA0();
    v4 = type metadata accessor for IDPool(a1, &type metadata for UInt8, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_10058F8D0);
    }
  }
}

void sub_1001AF048(uint64_t a1)
{
  if (!qword_10058F8D8)
  {
    type metadata accessor for AWDLPeer.AdvertisedService(255);
    sub_1001AEC60(&qword_10058F8E0, type metadata accessor for AWDLPeer.AdvertisedService, protocol conformance descriptor for AWDLPeer.AdvertisedService);
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_10058F8D8);
    }
  }
}

void sub_1001AF114(uint64_t a1)
{
  sub_1001AF1C0(319, &unk_10058F9E0, &type metadata for DNSRecords.TXT);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DNSRecords.SRV(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001AF1C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1001AF20C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DNSRecords.SRV(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1001AE618(a1, v6, a2);
}

uint64_t NANIntervalDuration.timeUnits.getter(unsigned __int8 a1)
{
  if (a1 <= 0x3Bu)
  {
    result = 1 << (a1 + 4);
  }

  else
  {
    result = 0;
  }

  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

unint64_t NANIntervalDuration.deprecatedAvailabilityMapSize.getter(unint64_t result)
{
  v1 = (result + 4) & 0x3F;
  if (result <= 0x3Bu && v1 == 63)
  {
    __break(1u);
  }

  else if (result <= 0x3Bu)
  {
    return 0x200uLL >> v1;
  }

  __break(1u);
  return result;
}

void NANIntervalDuration.description.getter(unsigned __int8 a1)
{
  if (a1 <= 0x3Bu)
  {
    v1 = 1 << (a1 + 4);
  }

  else
  {
    v1 = 0;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    NANTimeUnit.description.getter(v1);
  }
}

void sub_1001AF3E8()
{
  v1 = NANIntervalDuration.timeUnits.getter(*v0);

  NANTimeUnit.description.getter(v1);
}

unint64_t sub_1001AF418()
{
  result = qword_10058FA30;
  if (!qword_10058FA30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANIntervalDuration, &type metadata for NANIntervalDuration, v0, v1);
    atomic_store(result, &qword_10058FA30);
  }

  return result;
}

unint64_t sub_1001AF47C()
{
  result = qword_10058FA38;
  if (!qword_10058FA38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANIntervalDuration, &type metadata for NANIntervalDuration, v0, v1);
    atomic_store(result, &qword_10058FA38);
  }

  return result;
}

uint64_t NANSubscribe.Configuration.serviceInfo.getter()
{
  if (qword_10058AB70 != -1)
  {
    swift_once();
  }

  v1 = String.lowercased()();
  v2 = String.lowercased()();
  if (v1._countAndFlagsBits == v2._countAndFlagsBits && v1._object == v2._object)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v5 = *(v0 + 24);
      goto LABEL_11;
    }
  }

  v5 = *(v0 + 24);
  NANGenericServiceProtocol.blob.getter(v5);
  if (v6 >> 60 != 15)
  {
    return 3;
  }

LABEL_11:
  v7 = *(v0 + *(type metadata accessor for NANSubscribe.Configuration(0) + 68));
  v8 = 2;
  if (v7)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  NANGenericServiceProtocol.packetData(for:)(v9, v5);
  return v8;
}

uint64_t NANSubscribe.SubscribeType.description.getter(char a1)
{
  if (a1)
  {
    return 0x657669746361;
  }

  else
  {
    return 0x65766973736170;
  }
}

CoreP2P::NANSubscribe::SubscribeType_optional __swiftcall NANSubscribe.SubscribeType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1005539A8, v2);

  if (v3 == 1)
  {
    v4.value = CoreP2P_NANSubscribe_SubscribeType_active;
  }

  else
  {
    v4.value = CoreP2P_NANSubscribe_SubscribeType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001AF6BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657669746361;
  }

  else
  {
    v3 = 0x65766973736170;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x657669746361;
  }

  else
  {
    v5 = 0x65766973736170;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001AF760()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001AF7E0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001AF84C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001AF8C8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1005539A8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1001AF928(uint64_t *a1@<X8>)
{
  v2 = 0x65766973736170;
  if (*v1)
  {
    v2 = 0x657669746361;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001AFA14()
{
  if (*v0)
  {
    return 0x657669746361;
  }

  else
  {
    return 0x65766973736170;
  }
}

unint64_t NANSubscribe.DiscoveryMode.description.getter(unsigned __int8 a1)
{
  v1 = 0x69766544206C6C41;
  if (a1 == 2)
  {
    v1 = 0xD00000000000001ELL;
  }

  v2 = 0xD000000000000015;
  if (a1)
  {
    v2 = 0xD000000000000013;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t NANSubscribe.DiscoveryMode.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656C626172696170;
  v2 = 0x6972696150796E61;
  if (a1 != 2)
  {
    v2 = 7105633;
  }

  if (a1)
  {
    v1 = 0x6E4F646572696170;
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

unint64_t sub_1001AFB88@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P12NANSubscribeO13DiscoveryModeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001AFBB8(uint64_t *a1@<X8>)
{
  v2 = 0xEC000000796C6E4FLL;
  v3 = 0x656C626172696170;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x6972696150796E61;
  if (*v1 != 2)
  {
    v5 = 7105633;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E4F646572696170;
    v2 = 0xEA0000000000796CLL;
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

Swift::Int sub_1001AFC50()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001AFD1C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001AFDD4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t NANSubscribe.Configuration.serviceName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NANSubscribe.Configuration.queryPeriod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NANSubscribe.Configuration(0) + 36);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NANSubscribe.Configuration.queryPeriod.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NANSubscribe.Configuration(0) + 36);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NANSubscribe.Configuration.awakeDWInterval.setter(char a1)
{
  result = type metadata accessor for NANSubscribe.Configuration(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t NANSubscribe.Configuration.matchingFilterRx.getter()
{
  v1 = *(v0 + *(type metadata accessor for NANSubscribe.Configuration(0) + 44));

  return v1;
}

uint64_t NANSubscribe.Configuration.matchingFilterRx.setter(char a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NANSubscribe.Configuration(0) + 44);

  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t NANSubscribe.Configuration.matchingFilterTx.getter()
{
  v1 = *(v0 + *(type metadata accessor for NANSubscribe.Configuration(0) + 48));

  return v1;
}

uint64_t NANSubscribe.Configuration.matchingFilterTx.setter(char a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NANSubscribe.Configuration(0) + 48);

  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t NANSubscribe.Configuration.matchingFilterCondition.setter(char a1)
{
  result = type metadata accessor for NANSubscribe.Configuration(0);
  *(v1 + *(result + 52)) = a1 & 1;
  return result;
}

uint64_t NANSubscribe.Configuration.bloomFilter.getter()
{
  v1 = v0 + *(type metadata accessor for NANSubscribe.Configuration(0) + 56);
  v2 = *v1;
  sub_10011A008(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t NANSubscribe.Configuration.bloomFilter.setter(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = v3 + *(type metadata accessor for NANSubscribe.Configuration(0) + 56);
  result = sub_10011A01C(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t NANSubscribe.Configuration.enableFastDiscovery.setter(char a1)
{
  result = type metadata accessor for NANSubscribe.Configuration(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t NANSubscribe.Configuration.oweKeys.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NANSubscribe.Configuration(0) + 64);

  return sub_1001B2234(v3, a1);
}

uint64_t NANSubscribe.Configuration.oweKeys.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NANSubscribe.Configuration(0) + 64);

  return sub_1001B2298(a1, v3);
}

uint64_t NANSubscribe.Configuration.multicastAddress.setter(uint64_t a1)
{
  result = type metadata accessor for NANSubscribe.Configuration(0);
  v4 = v1 + *(result + 72);
  *(v4 + 4) = WORD2(a1);
  *v4 = a1;
  *(v4 + 6) = BYTE6(a1) & 1;
  return result;
}

double NANSubscribe.Configuration.allowedPairedDevicesUUIDs.getter()
{
  type metadata accessor for NANSubscribe.Configuration(0);

  return result;
}

uint64_t NANSubscribe.Configuration.allowedPairedDevicesUUIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NANSubscribe.Configuration(0) + 76);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NANSubscribe.Configuration.multicastServiceType.setter(char a1)
{
  result = type metadata accessor for NANSubscribe.Configuration(0);
  *(v1 + *(result + 80)) = a1 & 1;
  return result;
}

uint64_t NANSubscribe.Configuration.timeoutAfterSeconds.setter(uint64_t a1)
{
  result = type metadata accessor for NANSubscribe.Configuration(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t NANSubscribe.Configuration.discoveryMode.setter(char a1)
{
  result = type metadata accessor for NANSubscribe.Configuration(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t NANSubscribe.Configuration.channelInfo.setter(uint64_t a1)
{
  result = type metadata accessor for NANSubscribe.Configuration(0);
  v4 = v1 + *(result + 92);
  *(v4 + 4) = WORD2(a1);
  *v4 = a1;
  return result;
}

uint64_t NANSubscribe.Configuration.countryCode.setter(int a1)
{
  result = type metadata accessor for NANSubscribe.Configuration(0);
  v4 = v1 + *(result + 96);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

unint64_t NANSubscribe.Configuration.multicastConfiguration.getter()
{
  v1 = (v0 + *(type metadata accessor for NANSubscribe.Configuration(0) + 100));
  v2 = *v1 | (*(v1 + 2) << 32);
  v3 = *(v1 + 6);
  v4 = *(v1 + 7) == 0;
  v5 = 0x100000000000000;
  if (v4)
  {
    v5 = 0;
  }

  return v5 | (v3 << 48) | v2;
}

uint64_t NANSubscribe.Configuration.multicastConfiguration.setter(uint64_t a1)
{
  result = type metadata accessor for NANSubscribe.Configuration(0);
  v4 = v1 + *(result + 100);
  *(v4 + 4) = WORD2(a1);
  *v4 = a1;
  *(v4 + 6) = BYTE6(a1) & 1;
  *(v4 + 7) = HIBYTE(a1) & 1;
  return result;
}

void NANSubscribe.Configuration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher._combine(_:)(*v1);
  String.lowercased()();
  String.hash(into:)();

  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(a1, *(v1 + 24));
  String.hash(into:)();

  Hasher._combine(_:)(*(v1 + 33));
  v12 = type metadata accessor for NANSubscribe.Configuration(0);
  (*(v9 + 16))(v11, v1 + v12[9], v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v9 + 96))(v11, v8);
    v14 = *v11;
    v15 = 1000000000;
LABEL_7:
    v16 = v14 * v15;
    v17 = (v14 * v15) >> 64 != (v14 * v15) >> 63;
    v18 = v14 <= 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    if (v18)
    {
      v19 = 0x8000000000000000;
    }

    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = v16;
    }

    goto LABEL_12;
  }

  if (v13 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v9 + 96))(v11, v8);
    v14 = *v11;
    v15 = 1000000;
    goto LABEL_7;
  }

  if (v13 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v9 + 96))(v11, v8);
    v14 = *v11;
    v15 = 1000;
    goto LABEL_7;
  }

  if (v13 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v9 + 96))(v11, v8);
    v20 = *v11;
  }

  else
  {
    if (v13 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v9 + 8))(v11, v8);
    }

    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_12:
  Hasher._combine(_:)(v20);
  String.hash(into:)();

  NANMatchingFilter.hash(into:)(a1, *(v1 + v12[11]), *(v1 + v12[11] + 8));
  NANMatchingFilter.hash(into:)(a1, *(v1 + v12[12]), *(v1 + v12[12] + 8));
  String.hash(into:)();

  v21 = *(v1 + v12[14] + 16);
  if ((v21 & 0xFF00) == 0x200)
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    Hasher._combine(_:)(v21);
    v22 = (v21 >> 8) & 1;
  }

  Hasher._combine(_:)(v22);
  Hasher._combine(_:)(*(v1 + v12[15]));
  v23 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v25 = v24;
  Data.hash(into:)();
  sub_1000124C8(v23, v25);
  if (*(v2 + v12[17]) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v26 = (v2 + v12[18]);
  if (*(v26 + 6))
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v28 = *(v26 + 2);
    v29 = *v26;
    v30 = *v26 | (*(v26 + 2) << 32);
    v57 = v30 >> 8;
    v58 = (v30 >> 16);
    v59 = v30 >> 24;
    v27 = v28 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v29);
    Hasher._combine(_:)(v57);
    Hasher._combine(_:)(v58);
    Hasher._combine(_:)(v59);
    Hasher._combine(_:)(v28);
  }

  Hasher._combine(_:)(v27);
  v58 = v12;
  v59 = v2;
  v31 = *(v2 + v12[19]);
  if (v31)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*(v31 + 16));
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = v5 + 16;
      v34 = *(v5 + 16);
      v35 = v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v36 = *(v5 + 72);
      v37 = (v33 - 8);
      do
      {
        v38 = v33;
        v34(v7, v35, v4);
        sub_10001AC84(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*v37)(v7, v4);
        v33 = v38;
        v35 += v36;
        --v32;
      }

      while (v32);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v40 = v58;
  v39 = v59;
  if (*(v59 + v58[20]))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  Hasher._combine(_:)(*(v39 + v40[21]));
  String.hash(into:)();

  v41 = *(v39 + v40[23]) | (*(v39 + v40[23] + 4) << 32);
  if ((v41 & 0xFF00000000) == 0x300000000)
  {
    v42 = 0;
LABEL_32:
    Hasher._combine(_:)(v42);
    goto LABEL_33;
  }

  v45 = v41 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v41);
  Hasher._combine(_:)(0x801004u >> ((v41 >> 29) & 0xF8));
  if ((v41 >> 40) <= 3)
  {
    if (v45 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      if (v45 != 3)
      {
        goto LABEL_53;
      }

      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    switch(v45)
    {
      case 4:
        Hasher._combine(_:)(3uLL);
        break;
      case 5:
        Hasher._combine(_:)(4uLL);
        break;
      case 6:
        Hasher._combine(_:)(5uLL);
        break;
      default:
LABEL_53:
        Hasher._combine(_:)(2uLL);
        v42 = BYTE5(v41) & 1;
        goto LABEL_32;
    }
  }

LABEL_33:
  v43 = (v39 + v40[24]);
  if (v43[1])
  {
    LOBYTE(v44) = 0;
  }

  else
  {
    v46 = *v43;
    v44 = v46 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v46);
  }

  Hasher._combine(_:)(v44);
  v47 = (v39 + v40[25]);
  v48 = *(v47 + 7);
  if (*(v47 + 6))
  {
    LOBYTE(v49) = 0;
  }

  else
  {
    v50 = *(v47 + 2);
    v51 = *v47;
    v52 = *v47 | (*(v47 + 2) << 32);
    v53 = v52 >> 8;
    v54 = v52 >> 16;
    v55 = v52 >> 24;
    v49 = v50 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v51);
    Hasher._combine(_:)(v53);
    Hasher._combine(_:)(v54);
    Hasher._combine(_:)(v55);
    Hasher._combine(_:)(v50);
  }

  Hasher._combine(_:)(v49);
  Hasher._combine(_:)(v48);
}

Swift::Int NANSubscribe.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANSubscribe.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001B1510(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANSubscribe.Configuration.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t NANSubscribe.Configuration.init(instanceID:serviceName:serviceSpecificInfo:queryPeriod:enableFastDiscovery:authenticationType:multicastAddress:allowedPairedDevicesUUIDs:type:multicastServiceType:timeoutAfterSeconds:discoveryMode:channelInfo:countryCode:multicastConfiguration:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, int a10, __int16 a11, char a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, int a19, int a20, int a21, __int16 a22, char a23, char a24)
{
  v58 = a7;
  v55 = a3;
  v56 = a6;
  v51 = a4;
  v54 = a2;
  v64 = a19;
  v63 = a18;
  v62 = a17;
  v61 = a16;
  v59 = a15;
  v60 = a8;
  v52 = a14;
  v53 = a1;
  v57 = a13;
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = (&v51 - v28);
  v30 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v33 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.init()();
  v65 = sub_100082620(_swiftEmptyArrayStorage);
  if (a5 >> 60 == 15)
  {
    v34 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
  }

  else
  {
    *v29 = v51;
    v29[1] = a5;
    v35 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v35 - 8) + 56))(v29, 0, 1, v35);
  }

  sub_1001B22FC(v29, v27);
  sub_100072F88(v27, 6);
  sub_1001B236C(v29);
  v36 = v65;
  v37 = type metadata accessor for NANSubscribe.Configuration(0);
  (*(v31 + 32))(a9 + v37[16], v33, v30);
  *a9 = v53;
  v38 = v55;
  *(a9 + 8) = v54;
  *(a9 + 16) = v38;
  *(a9 + 24) = v36;
  *(a9 + 32) = v52 & 1;
  v39 = v37[9];
  v40 = type metadata accessor for DispatchTimeInterval();
  result = (*(*(v40 - 8) + 32))(a9 + v39, v56, v40);
  *(a9 + v37[10]) = 1;
  v42 = a9 + v37[11];
  *v42 = 1;
  *(v42 + 8) = _swiftEmptyArrayStorage;
  v43 = a9 + v37[12];
  *v43 = 0;
  *(v43 + 8) = _swiftEmptyArrayStorage;
  *(a9 + v37[13]) = 0;
  v44 = a9 + v37[14];
  *v44 = 0;
  *(v44 + 8) = 0;
  *(v44 + 16) = 512;
  *(a9 + v37[15]) = v58 & 1;
  *(a9 + v37[17]) = v60 & 1;
  v45 = a9 + v37[18];
  *(v45 + 4) = a11;
  *v45 = a10;
  *(v45 + 6) = a12 & 1;
  *(a9 + v37[19]) = v57;
  *(a9 + v37[20]) = v59 & 1;
  *(a9 + v37[21]) = v61;
  *(a9 + v37[22]) = v62;
  v46 = a9 + v37[23];
  v47 = v63;
  *(v46 + 4) = WORD2(v63);
  *v46 = v47;
  v48 = a9 + v37[24];
  v49 = BYTE2(v64);
  *v48 = v64;
  *(v48 + 2) = v49 & 1;
  v50 = a9 + v37[25];
  *(v50 + 4) = a22;
  *v50 = a21;
  *(v50 + 6) = a23 & 1;
  *(v50 + 7) = a24 & 1;
  return result;
}

uint64_t NANSubscribe.DiscoveryMode.init(apiDiscoveryMode:)(unint64_t a1)
{
  if (a1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

uint64_t type metadata accessor for NANSubscribe.Configuration(uint64_t a1)
{
  result = qword_10058FB18;
  if (!qword_10058FB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s7CoreP2P12NANSubscribeO13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = String.lowercased()();
  v5 = String.lowercased()();
  if (v4._countAndFlagsBits == v5._countAndFlagsBits && v4._object == v5._object)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  _s7CoreP2P25NANGenericServiceProtocolV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 3), *(a2 + 3));
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (a1[32])
  {
    v9 = 0x657669746361;
  }

  else
  {
    v9 = 0x65766973736170;
  }

  if (a1[32])
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (a2[32])
  {
    v11 = 0x657669746361;
  }

  else
  {
    v11 = 0x65766973736170;
  }

  if (a2[32])
  {
    v12 = 0xE600000000000000;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[33] != a2[33])
  {
    return 0;
  }

  v14 = type metadata accessor for NANSubscribe.Configuration(0);
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10003051C() & 1) == 0)
  {
    return 0;
  }

  v15 = v14[11];
  v16 = *&a1[v15 + 8];
  v17 = *&a2[v15 + 8];
  if ((sub_1000B2BD8() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1000BCCE0(v16, v17) & 1) == 0)
  {
    return 0;
  }

  v18 = v14[12];
  v19 = *&a1[v18 + 8];
  v20 = *&a2[v18 + 8];
  if ((sub_1000B2BD8() & 1) == 0 || (sub_1000BCCE0(v19, v20) & 1) == 0)
  {
    return 0;
  }

  v21 = v14[13];
  v22 = a1[v21];
  v23 = a2[v21];
  if (v22)
  {
    v24 = 0x757145746F4E7874;
  }

  else
  {
    v24 = 0x526C617571457874;
  }

  if (v22)
  {
    v25 = 0xEC00000078526C61;
  }

  else
  {
    v25 = 0xE900000000000078;
  }

  if (v23)
  {
    v26 = 0x757145746F4E7874;
  }

  else
  {
    v26 = 0x526C617571457874;
  }

  if (v23)
  {
    v27 = 0xEC00000078526C61;
  }

  else
  {
    v27 = 0xE900000000000078;
  }

  if (v24 == v26 && v25 == v27)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  v29 = v14[14];
  v31 = *&a1[v29];
  v30 = *&a1[v29 + 8];
  v32 = *&a1[v29 + 16];
  v33 = &a2[v29];
  v35 = *v33;
  v34 = *(v33 + 1);
  v36 = *(v33 + 8);
  v37 = v36 & 0xFF00;
  if ((v32 & 0xFF00) == 0x200)
  {
    if (v37 == 512)
    {
      sub_10011A008(v31, v30, v32);
      sub_10011A008(v35, v34, v36);
      goto LABEL_52;
    }

    goto LABEL_58;
  }

  if (v37 == 512)
  {
LABEL_58:
    sub_10011A008(v31, v30, v32);
    sub_10011A008(v35, v34, v36);
    sub_10011A01C(v31, v30, v32);
    v48 = v35;
    v49 = v34;
    v50 = v36;
LABEL_65:
    sub_10011A01C(v48, v49, v50);
    return 0;
  }

  sub_10011A008(v31, v30, v32);
  sub_10011A008(v35, v34, v36);
  if (!_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v30, v35, v34))
  {
    sub_10011A01C(v35, v34, v36);
LABEL_64:
    v48 = v31;
    v49 = v30;
    v50 = v32;
    goto LABEL_65;
  }

  sub_10011A01C(v35, v34, v36);
  if (v32 != v36 || ((((v36 & 0x100) == 0) ^ ((v32 & 0x100) >> 8)) & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_52:
  sub_10011A01C(v31, v30, v32);
  if (a1[v14[15]] != a2[v14[15]])
  {
    return 0;
  }

  v38 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v40 = v39;
  v41 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v43 = v42;
  v44 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v38, v40, v41, v42);
  sub_1000124C8(v41, v43);
  sub_1000124C8(v38, v40);
  if (!v44)
  {
    return 0;
  }

  v45 = v14[17];
  v46 = a1[v45];
  v47 = a2[v45];
  if (v46)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  v52 = v14[18];
  v53 = &a1[v52];
  v54 = a1[v52 + 6];
  v55 = &a2[v52];
  if (v54)
  {
    if ((v55[6] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v55[6])
    {
      return 0;
    }

    v56 = *v53 | (*(v53 + 2) << 32);
    v57 = *v55 | (*(v55 + 2) << 32);
    v58.i64[0] = 0xFFFFFFFFFFFFLL;
    v58.i64[1] = 0xFFFFFFFFFFFFLL;
    v59 = vandq_s8(vdupq_n_s64(v56), v58);
    v60 = vshlq_u64(v59, xmmword_1004817A0);
    v61 = vandq_s8(vdupq_n_s64(v57), v58);
    v62 = vshlq_u64(v61, xmmword_1004817A0);
    v63 = vshlq_u64(v61, xmmword_100481790);
    v97[0] = v56;
    *v59.i8 = vmovn_s64(vshlq_u64(v59, xmmword_100481790));
    *v60.i8 = vmovn_s64(v60);
    v60.i16[1] = v60.i16[2];
    v60.i16[2] = v59.i16[0];
    v60.i16[3] = v59.i16[2];
    *&v97[1] = vmovn_s16(v60).u32[0];
    v97[5] = BYTE5(v56);
    v96[0] = v57;
    *v59.i8 = vmovn_s64(v63);
    *v63.i8 = vmovn_s64(v62);
    v63.i16[1] = v63.i16[2];
    v63.i16[2] = v59.i16[0];
    v63.i16[3] = v59.i16[2];
    *&v96[1] = vmovn_s16(v63).u32[0];
    v96[5] = BYTE5(v57);
    if (*v97 != *v96 || *&v97[4] != *&v96[4])
    {
      return 0;
    }
  }

  v65 = v14[19];
  v66 = *&a1[v65];
  v67 = *&a2[v65];
  if (v66)
  {
    if (!v67)
    {
      return 0;
    }

    v68 = sub_1000BD0EC(v66, v67);

    if ((v68 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v67)
  {
    return 0;
  }

  v69 = v14[20];
  v70 = a1[v69];
  v71 = a2[v69];
  if (v70)
  {
    if (!v71)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  if (*&a1[v14[21]] != *&a2[v14[21]] || (sub_1000B2BDC() & 1) == 0)
  {
    return 0;
  }

  v72 = v14[23];
  v73 = *&a1[v72] | (*&a1[v72 + 4] << 32);
  v74 = *&a2[v72] | (*&a2[v72 + 4] << 32);
  v75 = v74 & 0xFF00000000;
  if ((v73 & 0xFF00000000) != 0x300000000)
  {
    if (v75 == 0x300000000 || v73 != v74 || ((0x801004u >> ((v73 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v74 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v81 = v73 >> 40;
    v82 = v74 >> 40;
    if (v81 <= 3)
    {
      if (v81 == 2)
      {
        if (v82 != 2)
        {
          return 0;
        }

        goto LABEL_90;
      }

      if (v81 == 3)
      {
        if (v82 != 3)
        {
          return 0;
        }

        goto LABEL_90;
      }
    }

    else
    {
      switch(v81)
      {
        case 4:
          if (v82 != 4)
          {
            return 0;
          }

          goto LABEL_90;
        case 5:
          if (v82 != 5)
          {
            return 0;
          }

          goto LABEL_90;
        case 6:
          if (v82 != 6)
          {
            return 0;
          }

          goto LABEL_90;
      }
    }

    if (v82 - 2) < 5 || ((v82 ^ v81))
    {
      return 0;
    }

    goto LABEL_90;
  }

  if (v75 != 0x300000000)
  {
    return 0;
  }

LABEL_90:
  v76 = v14[24];
  v77 = &a1[v76];
  v78 = a1[v76 + 2];
  v79 = &a2[v76];
  v80 = a2[v76 + 2];
  if (v78)
  {
    if (v80)
    {
      goto LABEL_105;
    }

    return 0;
  }

  if (*v77 != *v79)
  {
    LOBYTE(v80) = 1;
  }

  if (v80)
  {
    return 0;
  }

LABEL_105:
  v83 = v14[25];
  v84 = *&a1[v83 + 4];
  v85 = *&a1[v83];
  v86 = a1[v83 + 6];
  v87 = a1[v83 + 7];
  v88 = &a2[v83];
  v89 = *&a2[v83 + 4];
  v90 = *v88;
  v91 = v88[6];
  v92 = v88[7];
  if (v87)
  {
    v93 = 0x100000000000000;
  }

  else
  {
    v93 = 0;
  }

  v94 = v91;
  if (v92)
  {
    v95 = 0x100000000000000;
  }

  else
  {
    v95 = 0;
  }

  return sub_10008A4E4(v93 | (v86 << 48) | v85 | (v84 << 32), v95 | (v94 << 48) | v90 | (v89 << 32));
}

unint64_t _s7CoreP2P12NANSubscribeO13DiscoveryModeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100553928, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001B2234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OWEKeys(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B2298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OWEKeys(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B22FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058BB48, &unk_100483040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B236C(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BB48, &unk_100483040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001B23D8()
{
  result = qword_10058FA40;
  if (!qword_10058FA40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANSubscribe.SubscribeType, &type metadata for NANSubscribe.SubscribeType, v0, v1);
    atomic_store(result, &qword_10058FA40);
  }

  return result;
}

unint64_t sub_1001B2430()
{
  result = qword_10058FA48;
  if (!qword_10058FA48)
  {
    v3 = sub_10005DD04(&qword_10058FA50, &qword_100493338);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_10058FA48);
  }

  return result;
}

unint64_t sub_1001B2498()
{
  result = qword_10058FA58;
  if (!qword_10058FA58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANSubscribe.DiscoveryMode, &type metadata for NANSubscribe.DiscoveryMode, v0, v1);
    atomic_store(result, &qword_10058FA58);
  }

  return result;
}

uint64_t sub_1001B24EC(uint64_t a1)
{
  result = sub_10001AC84(&qword_10058FA60, type metadata accessor for NANSubscribe.Configuration, protocol conformance descriptor for NANSubscribe.Configuration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001B2550(uint64_t a1)
{
  *(a1 + 8) = sub_10001AC84(&qword_10058FAA8, type metadata accessor for NANSubscribe.Configuration, protocol conformance descriptor for NANSubscribe.Configuration);
  result = sub_10001AC84(&qword_10058FAB0, type metadata accessor for NANSubscribe.Configuration, protocol conformance descriptor for NANSubscribe.Configuration);
  *(a1 + 16) = result;
  return result;
}

void sub_1001B2674(uint64_t a1)
{
  type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    sub_1001AF1C0(319, &qword_10058FB28, &type metadata for NANBloomFilter);
    if (v2 <= 0x3F)
    {
      type metadata accessor for OWEKeys(319);
      if (v3 <= 0x3F)
      {
        sub_1001AF1C0(319, &qword_10058FB30, &type metadata for LongTermPairingKeys.AuthenticationType);
        if (v4 <= 0x3F)
        {
          sub_1001AF1C0(319, &qword_10058E810, &type metadata for WiFiAddress);
          if (v5 <= 0x3F)
          {
            sub_1001B2880(319);
            if (v6 <= 0x3F)
            {
              sub_1001AF1C0(319, &unk_10058FB48, &type metadata for MulticastServiceType);
              if (v7 <= 0x3F)
              {
                sub_1001AF1C0(319, &qword_10058E808, &type metadata for Channel);
                if (v8 <= 0x3F)
                {
                  sub_1001AF1C0(319, &qword_10058E800, &type metadata for CountryCode);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1001B2880(uint64_t a1)
{
  if (!qword_10058FB38)
  {
    sub_10005DD04(&qword_10058FB40, &qword_1004934E8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10058FB38);
    }
  }
}

unint64_t sub_1001B28E4()
{
  result = qword_10058FBC8;
  if (!qword_10058FBC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANSubscribe.SubscribeType, &type metadata for NANSubscribe.SubscribeType, v0, v1);
    atomic_store(result, &qword_10058FBC8);
  }

  return result;
}

uint64_t sub_1001B293C()
{
  v0 = type metadata accessor for Logger();
  sub_100068888(v0, qword_10058FBD0);
  sub_100037644(v0, qword_10058FBD0);
  return Logger.init(subsystem:category:)();
}

double static WAAnalytics.samplePeerStats(macAddress:)@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for DispatchTime();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin();
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v42 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  v10 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
  v12 = v11;
  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 sharedClientWithIdentifier:v14];

  if (v15)
  {
    v43 = v9 + 16;
    v44 = a1 >> 8;
    v46 = a1 >> 16;
    v47 = a1 >> 24;
    v48 = HIDWORD(a1);
    v49 = a2;
    v45 = a1 >> 40;
    [v15 registerMessageGroup:3 andReply:0];
    v16 = dispatch_semaphore_create(0);
    sub_10005DC58(&qword_100595370, &qword_1004AF240);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100480F40;
    *(v17 + 32) = v10;
    *(v17 + 40) = v12;
    v18 = v15;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = swift_allocObject();
    *(v20 + 16) = v9;
    *(v20 + 24) = a1;
    *(v20 + 25) = v44;
    v21 = v47;
    *(v20 + 26) = v46;
    *(v20 + 27) = v21;
    *(v20 + 28) = v48;
    *(v20 + 29) = v45;
    *(v20 + 32) = v16;
    aBlock[4] = sub_1001B3C44;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001B3474;
    aBlock[3] = &unk_100567128;
    v22 = _Block_copy(aBlock);
    v48 = v9;

    v23 = v16;

    [v18 triggerQueryForNWActivityWithPeers:isa andReply:v22];
    _Block_release(v22);

    static DispatchTime.now()();
    + infix(_:_:)();
    v24 = v51;
    v25 = *(v50 + 8);
    v25(v6, v51);
    OS_dispatch_semaphore.wait(timeout:)();
    v25(v8, v24);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v26 = v18;
      if (qword_10058A888 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100037644(v27, qword_10058FBD0);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock[0] = v31;
        *v30 = 136315138;
        v32 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
        v34 = sub_100002320(v32, v33, aBlock);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "[WAAnalytics] Timeout waiting for WiFi analytics query for %s", v30, 0xCu);
        sub_100002A00(v31);
      }

      v35 = v49;
      *v49 = 0u;
      v35[1] = 0u;
    }

    else
    {

      v41 = v43;
      swift_beginAccess();
      sub_1001B3C5C(v41, v49);
    }
  }

  else
  {

    if (qword_10058A888 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100037644(v36, qword_10058FBD0);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "[WAAnalytics] Error failed to create waclient", v39, 2u);
    }

    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

Swift::Int sub_1001B2F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    swift_beginAccess();
    sub_1001B3D28(a1, a3 + 16);
    swift_beginAccess();
    sub_1001B3C5C(a3 + 16, v35);
    if (v35[3])
    {
      sub_10005DC58(&unk_10059B2B0, &qword_100482FC0);
      if (swift_dynamicCast())
      {
        v18 = *(v33 + 16);

        if (!v18)
        {
          if (qword_10058A888 != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          sub_100037644(v19, qword_10058FBD0);
          v6 = Logger.logObject.getter();
          v20 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v6, v20))
          {
            goto LABEL_20;
          }

          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v35[0] = v22;
          *v21 = 136315138;
          v23 = WiFiAddress.description.getter(a4 & 0xFFFFFFFFFFFFLL);
          v25 = sub_100002320(v23, v24, v35);

          *(v21 + 4) = v25;
          v26 = "[WAAnalytics] Empty Sample %s";
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_100016290(v35, &qword_10058BA80, &qword_1004818C0);
    }

    if (qword_10058A888 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100037644(v27, qword_10058FBD0);
    v6 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v20))
    {
      goto LABEL_20;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35[0] = v22;
    *v21 = 136315138;
    v28 = WiFiAddress.description.getter(a4 & 0xFFFFFFFFFFFFLL);
    v30 = sub_100002320(v28, v29, v35);

    *(v21 + 4) = v30;
    v26 = "[WAAnalytics] Success Sampling %s";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v6, v20, v26, v21, 0xCu);
    sub_100002A00(v22);

    goto LABEL_20;
  }

  swift_errorRetain();
  if (qword_10058A888 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100037644(v5, qword_10058FBD0);
  sub_1001B3C5C(a1, v35);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34[0] = v10;
    *v8 = 136315394;
    sub_1001B3C5C(v35, v32);
    sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_100016290(v35, &qword_10058BA80, &qword_1004818C0);
    v14 = sub_100002320(v11, v13, v34);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "[WAAnalytics] Error from triggerQueryForNWActivity: %s: %@", v8, 0x16u);
    sub_100016290(v9, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v10);

LABEL_20:

    return OS_dispatch_semaphore.signal()();
  }

  sub_100016290(v35, &qword_10058BA80, &qword_1004818C0);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_1001B3474(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_100085188(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_100016290(v10, &qword_10058BA80, &qword_1004818C0);
}

uint64_t static WAAnalytics.peerStatsDictionary(earlyData:laterData:)(uint64_t a1, uint64_t a2)
{
  sub_100002B30(a2, v58);
  sub_1001B3CCC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = v57[0];
  sub_100002B30(a1, v58);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_9:
    if (qword_10058A888 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100037644(v12, qword_10058FBD0);
    sub_100002B30(a1, v58);
    sub_100002B30(a2, v57);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v15 = 136315394;
      sub_100002B30(v58, v55);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_100002A00(v58);
      v19 = sub_100002320(v16, v18, &v56);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      sub_100002B30(v57, v55);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      sub_100002A00(v57);
      v23 = sub_100002320(v20, v22, &v56);

      *(v15 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "[WAAnalytics] Failed to cast NSDictionary early %s and later %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100002A00(v57);
      sub_100002A00(v58);
    }

    return 0;
  }

  v5 = v57[0];
  v58[0] = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  v6 = v58[0];
  if (!v58[0])
  {
LABEL_16:
    if (qword_10058A888 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100037644(v24, qword_10058FBD0);
    v25 = v57[0];
    v26 = v57[0];
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = v25;
      v31 = [v30 description];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = sub_100002320(v32, v34, v58);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      v36 = v26;
      v37 = [v36 description];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_100002320(v38, v40, v58);

      *(v29 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v27, v28, "[WAAnalytics] Failed to form swift dict %s and later %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  v58[0] = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  if (!v58[0])
  {

    goto LABEL_16;
  }

  if (*(v6 + 16))
  {
    v7 = objc_allocWithZone(type metadata accessor for WANWActivityTransform());
    v8 = WANWActivityTransform.init(later:early:)();
    v9 = dispatch thunk of WANWActivityTransform.getTransformedMeasurementForP2PMetrics()();
    if (v9)
    {
      v10 = v9;

      return v10;
    }

    if (qword_10058A888 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100037644(v51, qword_10058FBD0);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "[WAAnalytics] Failed getTransformedMeasurementForP2PMetrics ", v54, 2u);
    }
  }

  else
  {

    if (qword_10058A888 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100037644(v42, qword_10058FBD0);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v58[0] = v46;
      *v45 = 136315138;
      v47 = Dictionary.description.getter();
      v49 = v48;

      v50 = sub_100002320(v47, v49, v58);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "[WAAnalytics] later sample is empty %s", v45, 0xCu);
      sub_100002A00(v46);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1001B3C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B3CCC()
{
  result = qword_10058CBB8;
  if (!qword_10058CBB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10058CBB8);
  }

  return result;
}

uint64_t sub_1001B3D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B3D9C()
{
  result = type metadata accessor for DispatchTime();
  qword_10059B510 = result;
  *algn_10059B518 = &off_100567170;
  return result;
}

uint64_t sub_1001B3E00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t P2PTimer.handler.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler);

  return v1;
}

uint64_t P2PTimer.__allocating_init(deadlineAfter:on:repeating:leeway:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v42 = a1;
  v43 = a4;
  v40 = a2;
  v41 = a3;
  v6 = type metadata accessor for DispatchTime();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v35 - v9;
  v10 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_10001C2F0();
  v44 = _swiftEmptyArrayStorage;
  sub_10001C2A8(&qword_10058FBF8, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10005DC58(&qword_10058FC00, &qword_100493520);
  sub_10000CB24(&qword_10058FC08, &qword_10058FC00, &qword_100493520);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v11 + 8))(v13, v10);
  *(v14 + 16) = v15;
  swift_getObjectType();
  v16 = qword_10058A890;
  swift_unknownObjectRetain();
  if (v16 != -1)
  {
    swift_once();
  }

  (*(*algn_10059B518 + 8))();
  v17 = v35;
  v18 = v42;
  + infix(_:_:)();
  v19 = v37;
  v20 = *(v36 + 8);
  v20(v8, v37);
  v21 = v41;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  v20(v17, v19);
  v22 = OBJC_IVAR____TtC7CoreP2P8P2PTimer_deadlineAfter;
  v23 = type metadata accessor for DispatchTimeInterval();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v25(v14 + v22, v18, v23);
  v26 = v40;
  *(v14 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_targetQueue) = v40;
  v25(v14 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval, v21, v23);
  v25(v14 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_leeway, v43, v23);
  v27 = (v14 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler);
  v28 = v39;
  *v27 = v38;
  v27[1] = v28;
  v29 = qword_10059B510;
  v30 = *algn_10059B518;
  v31 = *(*algn_10059B518 + 16);
  v32 = v26;

  v31(v14, v29, v30);
  swift_getObjectType();
  OS_dispatch_source.activate()();

  v33 = *(v24 + 8);
  v33(v43, v23);
  v33(v41, v23);
  v33(v42, v23);
  return v14;
}

uint64_t P2PTimer.deinit()
{
  v1 = v0;
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC7CoreP2P8P2PTimer_deadlineAfter;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 8);
  v4(v1 + v2, v3);

  v4(v1 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval, v3);
  v4(v1 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_leeway, v3);

  return v1;
}

double sub_1001B4430(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  swift_beginAccess();
  swift_beginAccess();
  *(a3 + 16) = 0;

  return result;
}

uint64_t P2PTimer.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[0] = a1;
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v8 = v20 - v7;
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = v2;
  v14 = v2 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval;
  (*(v10 + 104))(v13, enum case for DispatchTimeInterval.never(_:), v9, v11);

  v15 = static DispatchTimeInterval.== infix(_:_:)();
  (*(v10 + 8))(v13, v9);
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100480F40;
  if (v15)
  {
    *(v16 + 32) = 0x656E696C64616564;
    *(v16 + 40) = 0xE800000000000000;
    v14 = v2 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_deadlineAfter;
  }

  else
  {
    *(v16 + 32) = 0x6E69746165706572;
    *(v16 + 40) = 0xE900000000000067;
  }

  *(v16 + 72) = v9;
  v17 = sub_1000297D4((v16 + 48));
  (*(v10 + 16))(v17, v14, v9);
  v18 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v4 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v3);
  type metadata accessor for P2PTimer(0);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

double _s7CoreP2P0B6PTimerC5async5after2on7executey8Dispatch0H12TimeIntervalO_So17OS_dispatch_queueCyyctFZ_0(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v60 = a3;
  v62 = a2;
  v59 = type metadata accessor for DispatchTime();
  v56 = *(v59 - 8);
  __chkstk_darwin();
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v47 - v8;
  v9 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v10 = *(v9 - 8);
  v48 = v9;
  ObjectType = v10;
  __chkstk_darwin();
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTimeInterval();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v47 - v17;
  __chkstk_darwin();
  v20 = &v47 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v55 = v21 + 16;
  v22 = *(v14 + 16);
  v61 = v20;
  v50 = v22;
  v51 = v14 + 16;
  v22(v20, a1, v13);
  v23 = swift_allocObject();
  *(v23 + 2) = v60;
  *(v23 + 3) = a4;
  v52 = v23;
  *(v23 + 4) = v21;
  v60 = v14;
  v24 = *(v14 + 104);
  v57 = v18;
  v24(v18, enum case for DispatchTimeInterval.never(_:), v13);
  *v16 = 100;
  v54 = v16;
  v47 = v13;
  v24(v16, enum case for DispatchTimeInterval.milliseconds(_:), v13);
  type metadata accessor for P2PTimer(0);
  v25 = swift_allocObject();
  sub_10001C2F0();
  v63 = _swiftEmptyArrayStorage;
  sub_10001C2A8(&qword_10058FBF8, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);

  v58 = v21;

  sub_10005DC58(&qword_10058FC00, &qword_100493520);
  sub_10000CB24(&qword_10058FC08, &qword_10058FC00, &qword_100493520);
  v26 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(ObjectType + 8))(v12, v26);
  *(v25 + 16) = v27;
  ObjectType = swift_getObjectType();
  v28 = qword_10058A890;
  swift_unknownObjectRetain();
  if (v28 != -1)
  {
    swift_once();
  }

  (*(*algn_10059B518 + 8))();
  v29 = v53;
  v30 = v61;
  + infix(_:_:)();
  v31 = *(v56 + 8);
  v32 = v59;
  v31(v7, v59);
  v33 = v57;
  v34 = v54;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  v31(v29, v32);
  v35 = v30;
  v36 = v47;
  v37 = v50;
  v50(v25 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_deadlineAfter, v35, v47);
  v38 = v62;
  *(v25 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_targetQueue) = v62;
  v37(v25 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval, v33, v36);
  v37(v25 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_leeway, v34, v36);
  v39 = (v25 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler);
  v40 = v52;
  *v39 = sub_1001B4EC8;
  v39[1] = v40;
  v42 = qword_10059B510;
  v41 = *algn_10059B518;
  v43 = *(*algn_10059B518 + 16);
  v44 = v38;

  v43(v25, v42, v41);
  swift_getObjectType();
  OS_dispatch_source.activate()();

  v45 = *(v60 + 8);
  v45(v34, v36);
  v45(v33, v36);
  v45(v61, v36);
  swift_beginAccess();
  *(v58 + 16) = v25;

  return result;
}

uint64_t sub_1001B4E0C(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_1001B4ED4(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1001B4F04(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (byte_1004938DA[v6] != byte_1004938DA[a1]);
  return v4 != 0;
}

__int16 *CountryCode.unknown.unsafeMutableAddressor()
{
  if (qword_10058A898 != -1)
  {
    swift_once();
  }

  return &static CountryCode.unknown;
}

uint64_t CountryCode.code.getter(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100483520;
  *(v3 + 32) = v1;
  *(v3 + 33) = v2;
  static String.Encoding.utf8.getter();
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  sub_10000CADC(&qword_10058D470, &qword_10058D358, &unk_100486960, &protocol conformance descriptor for [A]);
  v4 = String.init<A>(bytes:encoding:)();
  v6 = v5;

  if (v6)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B50DC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t CountryCode.data.getter(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100483520;
  *(v3 + 32) = v1;
  *(v3 + 33) = v2;
  v4 = sub_10002D874(v3);

  return v4;
}

uint64_t CountryCode.description.getter(__int16 a1)
{
  v1 = a1;
  v2 = HIBYTE(a1);
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  if (qword_10058A8A8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.austria == v1 && HIBYTE(static CountryCode.austria) == v2)
  {
    v5 = 0x697274737541;
    return v5 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
  }

  if (qword_10058A8B0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.belgium == v1 && HIBYTE(static CountryCode.belgium) == v2)
  {
    return 0x6D7569676C6542;
  }

  if (qword_10058A8B8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.czechRepublic == v1 && HIBYTE(static CountryCode.czechRepublic) == v2)
  {
    return 0x6552206863657A43;
  }

  if (qword_10058A8C0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.cyprus == v1 && HIBYTE(static CountryCode.cyprus) == v2)
  {
    return 0x737572707943;
  }

  if (qword_10058A8C8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.denmark == v1 && HIBYTE(static CountryCode.denmark) == v2)
  {
    return 0x6B72616D6E6544;
  }

  if (qword_10058A8D0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.estonia == v1 && HIBYTE(static CountryCode.estonia) == v2)
  {
    v6 = 1869902661;
LABEL_34:
    v5 = v6 & 0xFFFF0000FFFFFFFFLL | 0x696E00000000;
    return v5 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
  }

  if (qword_10058A8D8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.finland == v1 && HIBYTE(static CountryCode.finland) == v2)
  {
    return 0x646E616C6E6946;
  }

  if (qword_10058A8E0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.france == v1 && HIBYTE(static CountryCode.france) == v2)
  {
    return 0x65636E617246;
  }

  if (qword_10058A8E8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.germany == v1 && HIBYTE(static CountryCode.germany) == v2)
  {
    return 0x796E616D726547;
  }

  if (qword_10058A8F0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.greece == v1 && HIBYTE(static CountryCode.greece) == v2)
  {
    return 0x656365657247;
  }

  if (qword_10058A8F8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.hungary == v1 && HIBYTE(static CountryCode.hungary) == v2)
  {
    return 0x797261676E7548;
  }

  if (qword_10058A900 != -1)
  {
    swift_once();
  }

  if (static CountryCode.italy == v1 && HIBYTE(static CountryCode.italy) == v2)
  {
    return 0x796C617449;
  }

  if (qword_10058A908 != -1)
  {
    swift_once();
  }

  if (static CountryCode.ireland == v1 && HIBYTE(static CountryCode.ireland) == v2)
  {
    return 0x646E616C657249;
  }

  if (qword_10058A910 != -1)
  {
    swift_once();
  }

  if (static CountryCode.latvia == v1 && HIBYTE(static CountryCode.latvia) == v2)
  {
    return 0x61697674614CLL;
  }

  if (qword_10058A918 != -1)
  {
    swift_once();
  }

  if (static CountryCode.lithuania == v1 && HIBYTE(static CountryCode.lithuania) == v2)
  {
    return 0x696E61756874694CLL;
  }

  if (qword_10058A920 != -1)
  {
    swift_once();
  }

  if (static CountryCode.luxembourg == v1 && HIBYTE(static CountryCode.luxembourg) == v2)
  {
    return 0x756F626D6578754CLL;
  }

  if (qword_10058A928 != -1)
  {
    swift_once();
  }

  if (static CountryCode.malta == v1 && HIBYTE(static CountryCode.malta) == v2)
  {
    return 0x61746C614DLL;
  }

  if (qword_10058A930 != -1)
  {
    swift_once();
  }

  if (static CountryCode.netherlands == v1 && HIBYTE(static CountryCode.netherlands) == v2)
  {
    return 0x616C72656874654ELL;
  }

  if (qword_10058A938 != -1)
  {
    swift_once();
  }

  if (static CountryCode.poland == v1 && HIBYTE(static CountryCode.poland) == v2)
  {
    return 0x646E616C6F50;
  }

  if (qword_10058A940 != -1)
  {
    swift_once();
  }

  if (static CountryCode.portugal == v1 && HIBYTE(static CountryCode.portugal) == v2)
  {
    return 0x6C61677574726F50;
  }

  if (qword_10058A948 != -1)
  {
    swift_once();
  }

  if (static CountryCode.slovakRepublic == v1 && HIBYTE(static CountryCode.slovakRepublic) == v2)
  {
    return 0x52206B61766F6C53;
  }

  if (qword_10058A950 != -1)
  {
    swift_once();
  }

  if (static CountryCode.slovenia == v1 && HIBYTE(static CountryCode.slovenia) == v2)
  {
    return 0x61696E65766F6C53;
  }

  if (qword_10058A958 != -1)
  {
    swift_once();
  }

  if (static CountryCode.spain == v1 && HIBYTE(static CountryCode.spain) == v2)
  {
    return 0x6E69617053;
  }

  if (qword_10058A960 != -1)
  {
    swift_once();
  }

  if (static CountryCode.sweden == v1 && HIBYTE(static CountryCode.sweden) == v2)
  {
    return 0x6E6564657753;
  }

  if (qword_10058A968 != -1)
  {
    swift_once();
  }

  if (static CountryCode.uk == v1 && HIBYTE(static CountryCode.uk) == v2)
  {
    return 19285;
  }

  if (qword_10058A970 != -1)
  {
    swift_once();
  }

  if (static CountryCode.iceland == v1 && HIBYTE(static CountryCode.iceland) == v2)
  {
    return 0x646E616C656349;
  }

  if (qword_10058A978 != -1)
  {
    swift_once();
  }

  if (static CountryCode.liechthenstein == v1 && HIBYTE(static CountryCode.liechthenstein) == v2)
  {
    return 0x656874686365694CLL;
  }

  if (qword_10058A980 != -1)
  {
    swift_once();
  }

  if (static CountryCode.norway == v1 && HIBYTE(static CountryCode.norway) == v2)
  {
    return 0x796177726F4ELL;
  }

  if (qword_10058A988 != -1)
  {
    swift_once();
  }

  if (static CountryCode.switzerland == v1 && HIBYTE(static CountryCode.switzerland) == v2)
  {
    return 0x6C72657A74697753;
  }

  if (qword_10058A990 != -1)
  {
    swift_once();
  }

  if (static CountryCode.bulgaria == v1 && HIBYTE(static CountryCode.bulgaria) == v2)
  {
    return 0x61697261676C7542;
  }

  if (qword_10058A998 != -1)
  {
    swift_once();
  }

  if (static CountryCode.turkey == v1 && HIBYTE(static CountryCode.turkey) == v2)
  {
    return 0x79656B727554;
  }

  if (qword_10058A9A0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.romania == v1 && HIBYTE(static CountryCode.romania) == v2)
  {
    v6 = 1634561874;
    goto LABEL_34;
  }

  if (qword_10058A9A8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.russia == v1 && HIBYTE(static CountryCode.russia) == v2)
  {
    return 0x616973737552;
  }

  if (qword_10058A9B0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.croatia == v1 && HIBYTE(static CountryCode.croatia) == v2)
  {
    v5 = 0x6974616F7243;
    return v5 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
  }

  if (qword_10058A9B8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.serbia == v1 && HIBYTE(static CountryCode.serbia) == v2)
  {
    return 0x616962726553;
  }

  if (qword_10058A9C0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.southAfrica == v1 && HIBYTE(static CountryCode.southAfrica) == v2)
  {
    return 0x6641206874756F53;
  }

  if (qword_10058A9C8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.usa == v1 && byte_10059B595 == v2)
  {
    return 0xD000000000000018;
  }

  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100483520;
  *(v7 + 32) = v1;
  *(v7 + 33) = v2;
  static String.Encoding.utf8.getter();
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  sub_10000CADC(&qword_10058D470, &qword_10058D358, &unk_100486960, &protocol conformance descriptor for [A]);
  v8 = String.init<A>(bytes:encoding:)();
  v10 = v9;

  if (v10)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

__int16 *CountryCode.austria.unsafeMutableAddressor()
{
  if (qword_10058A8A8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.austria;
}

__int16 *CountryCode.belgium.unsafeMutableAddressor()
{
  if (qword_10058A8B0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.belgium;
}

__int16 *CountryCode.czechRepublic.unsafeMutableAddressor()
{
  if (qword_10058A8B8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.czechRepublic;
}

__int16 *CountryCode.cyprus.unsafeMutableAddressor()
{
  if (qword_10058A8C0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.cyprus;
}

__int16 *CountryCode.denmark.unsafeMutableAddressor()
{
  if (qword_10058A8C8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.denmark;
}

__int16 *CountryCode.estonia.unsafeMutableAddressor()
{
  if (qword_10058A8D0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.estonia;
}

__int16 *CountryCode.finland.unsafeMutableAddressor()
{
  if (qword_10058A8D8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.finland;
}

__int16 *CountryCode.france.unsafeMutableAddressor()
{
  if (qword_10058A8E0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.france;
}

__int16 *CountryCode.germany.unsafeMutableAddressor()
{
  if (qword_10058A8E8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.germany;
}

__int16 *CountryCode.greece.unsafeMutableAddressor()
{
  if (qword_10058A8F0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.greece;
}

__int16 *CountryCode.hungary.unsafeMutableAddressor()
{
  if (qword_10058A8F8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.hungary;
}

__int16 *CountryCode.italy.unsafeMutableAddressor()
{
  if (qword_10058A900 != -1)
  {
    swift_once();
  }

  return &static CountryCode.italy;
}

__int16 *CountryCode.ireland.unsafeMutableAddressor()
{
  if (qword_10058A908 != -1)
  {
    swift_once();
  }

  return &static CountryCode.ireland;
}

__int16 *CountryCode.latvia.unsafeMutableAddressor()
{
  if (qword_10058A910 != -1)
  {
    swift_once();
  }

  return &static CountryCode.latvia;
}

__int16 *CountryCode.lithuania.unsafeMutableAddressor()
{
  if (qword_10058A918 != -1)
  {
    swift_once();
  }

  return &static CountryCode.lithuania;
}

__int16 *CountryCode.luxembourg.unsafeMutableAddressor()
{
  if (qword_10058A920 != -1)
  {
    swift_once();
  }

  return &static CountryCode.luxembourg;
}

__int16 *CountryCode.malta.unsafeMutableAddressor()
{
  if (qword_10058A928 != -1)
  {
    swift_once();
  }

  return &static CountryCode.malta;
}

__int16 *CountryCode.netherlands.unsafeMutableAddressor()
{
  if (qword_10058A930 != -1)
  {
    swift_once();
  }

  return &static CountryCode.netherlands;
}

__int16 *CountryCode.poland.unsafeMutableAddressor()
{
  if (qword_10058A938 != -1)
  {
    swift_once();
  }

  return &static CountryCode.poland;
}

__int16 *CountryCode.portugal.unsafeMutableAddressor()
{
  if (qword_10058A940 != -1)
  {
    swift_once();
  }

  return &static CountryCode.portugal;
}

__int16 *CountryCode.slovakRepublic.unsafeMutableAddressor()
{
  if (qword_10058A948 != -1)
  {
    swift_once();
  }

  return &static CountryCode.slovakRepublic;
}

__int16 *CountryCode.slovenia.unsafeMutableAddressor()
{
  if (qword_10058A950 != -1)
  {
    swift_once();
  }

  return &static CountryCode.slovenia;
}

__int16 *CountryCode.spain.unsafeMutableAddressor()
{
  if (qword_10058A958 != -1)
  {
    swift_once();
  }

  return &static CountryCode.spain;
}

__int16 *CountryCode.sweden.unsafeMutableAddressor()
{
  if (qword_10058A960 != -1)
  {
    swift_once();
  }

  return &static CountryCode.sweden;
}

__int16 *CountryCode.uk.unsafeMutableAddressor()
{
  if (qword_10058A968 != -1)
  {
    swift_once();
  }

  return &static CountryCode.uk;
}

__int16 *CountryCode.iceland.unsafeMutableAddressor()
{
  if (qword_10058A970 != -1)
  {
    swift_once();
  }

  return &static CountryCode.iceland;
}

__int16 *CountryCode.liechthenstein.unsafeMutableAddressor()
{
  if (qword_10058A978 != -1)
  {
    swift_once();
  }

  return &static CountryCode.liechthenstein;
}

__int16 *CountryCode.norway.unsafeMutableAddressor()
{
  if (qword_10058A980 != -1)
  {
    swift_once();
  }

  return &static CountryCode.norway;
}

__int16 *CountryCode.switzerland.unsafeMutableAddressor()
{
  if (qword_10058A988 != -1)
  {
    swift_once();
  }

  return &static CountryCode.switzerland;
}

__int16 *CountryCode.bulgaria.unsafeMutableAddressor()
{
  if (qword_10058A990 != -1)
  {
    swift_once();
  }

  return &static CountryCode.bulgaria;
}

__int16 *CountryCode.turkey.unsafeMutableAddressor()
{
  if (qword_10058A998 != -1)
  {
    swift_once();
  }

  return &static CountryCode.turkey;
}

__int16 *CountryCode.romania.unsafeMutableAddressor()
{
  if (qword_10058A9A0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.romania;
}

__int16 *CountryCode.russia.unsafeMutableAddressor()
{
  if (qword_10058A9A8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.russia;
}

__int16 *CountryCode.croatia.unsafeMutableAddressor()
{
  if (qword_10058A9B0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.croatia;
}

__int16 *CountryCode.serbia.unsafeMutableAddressor()
{
  if (qword_10058A9B8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.serbia;
}

__int16 *CountryCode.southAfrica.unsafeMutableAddressor()
{
  if (qword_10058A9C0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.southAfrica;
}

char *CountryCode.usa.unsafeMutableAddressor()
{
  if (qword_10058A9C8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.usa;
}

uint64_t CountryCode.customMirror.getter(__int16 a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = &v10 - v6;
  v11 = a1;
  v10 = _swiftEmptyArrayStorage;
  v8 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0, &protocol conformance descriptor for [A]);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

CoreP2P::CountryCode __swiftcall CountryCode.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v3 = String.count.getter();
  if (v3 != 2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return v3;
  }

  LOWORD(v3) = sub_100170360(countAndFlagsBits, object);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = Character.asciiValue.getter();

  if ((v5 & 0x100) != 0)
  {
    goto LABEL_8;
  }

  LOWORD(v3) = sub_1001B50DC(countAndFlagsBits, object);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = Character.asciiValue.getter();

  if ((v7 & 0x100) != 0)
  {
    goto LABEL_8;
  }

  LOWORD(v3) = v5 | (v7 << 8);
  return v3;
}

__int16 *CountryCode.unknownETSI.unsafeMutableAddressor()
{
  if (qword_10058A8A0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.unknownETSI;
}

uint64_t sub_1001B7988(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  result = String.count.getter();
  if (result == 2)
  {
    String.subscript.getter();
    v8 = Character.asciiValue.getter();

    if ((v8 & 0x100) == 0)
    {
      result = sub_1001B50DC(a2, 0xE200000000000000);
      if (v9)
      {
        v10 = Character.asciiValue.getter();

        if ((v10 & 0x100) == 0)
        {
          *a3 = v8;
          *a4 = v10;
          return result;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B7A5C(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a2 = v5;
    a3 = v6;
  }

  return *a2 | (*a3 << 8);
}

BOOL CountryCode.isETSI.getter(__int16 a1)
{
  if (qword_10058A9D0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = off_10058FD60 + 33;
  v2 = *(off_10058FD60 + 2) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v4 = *(v1 - 1);
    v1 += 2;
  }

  while (v4 != a1 || v3 != HIBYTE(a1));
  return v2 != 0;
}

uint64_t sub_1001B7B4C()
{
  sub_10005DC58(&qword_10058FDB0, &qword_1004938D0);
  result = swift_allocObject();
  *(result + 16) = xmmword_1004935B0;
  if (qword_10058A8A0 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 32) = static CountryCode.unknownETSI;
  if (qword_10058A8A8 != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  *(result + 34) = static CountryCode.austria;
  if (qword_10058A8B0 != -1)
  {
    v3 = result;
    swift_once();
    result = v3;
  }

  *(result + 36) = static CountryCode.belgium;
  if (qword_10058A8B8 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  *(result + 38) = static CountryCode.czechRepublic;
  if (qword_10058A8C0 != -1)
  {
    v5 = result;
    swift_once();
    result = v5;
  }

  *(result + 40) = static CountryCode.cyprus;
  if (qword_10058A8C8 != -1)
  {
    v6 = result;
    swift_once();
    result = v6;
  }

  *(result + 42) = static CountryCode.denmark;
  if (qword_10058A8D0 != -1)
  {
    v7 = result;
    swift_once();
    result = v7;
  }

  *(result + 44) = static CountryCode.estonia;
  if (qword_10058A8D8 != -1)
  {
    v8 = result;
    swift_once();
    result = v8;
  }

  *(result + 46) = static CountryCode.finland;
  if (qword_10058A8E0 != -1)
  {
    v9 = result;
    swift_once();
    result = v9;
  }

  *(result + 48) = static CountryCode.france;
  if (qword_10058A8E8 != -1)
  {
    v10 = result;
    swift_once();
    result = v10;
  }

  *(result + 50) = static CountryCode.germany;
  if (qword_10058A8F0 != -1)
  {
    v11 = result;
    swift_once();
    result = v11;
  }

  *(result + 52) = static CountryCode.greece;
  if (qword_10058A8F8 != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
  }

  *(result + 54) = static CountryCode.hungary;
  if (qword_10058A900 != -1)
  {
    v13 = result;
    swift_once();
    result = v13;
  }

  *(result + 56) = static CountryCode.italy;
  if (qword_10058A908 != -1)
  {
    v14 = result;
    swift_once();
    result = v14;
  }

  *(result + 58) = static CountryCode.ireland;
  if (qword_10058A910 != -1)
  {
    v15 = result;
    swift_once();
    result = v15;
  }

  *(result + 60) = static CountryCode.latvia;
  if (qword_10058A918 != -1)
  {
    v16 = result;
    swift_once();
    result = v16;
  }

  *(result + 62) = static CountryCode.lithuania;
  if (qword_10058A920 != -1)
  {
    v17 = result;
    swift_once();
    result = v17;
  }

  *(result + 64) = static CountryCode.luxembourg;
  if (qword_10058A928 != -1)
  {
    v18 = result;
    swift_once();
    result = v18;
  }

  *(result + 66) = static CountryCode.malta;
  if (qword_10058A930 != -1)
  {
    v19 = result;
    swift_once();
    result = v19;
  }

  *(result + 68) = static CountryCode.netherlands;
  if (qword_10058A938 != -1)
  {
    v20 = result;
    swift_once();
    result = v20;
  }

  *(result + 70) = static CountryCode.poland;
  if (qword_10058A940 != -1)
  {
    v21 = result;
    swift_once();
    result = v21;
  }

  *(result + 72) = static CountryCode.portugal;
  if (qword_10058A948 != -1)
  {
    v22 = result;
    swift_once();
    result = v22;
  }

  *(result + 74) = static CountryCode.slovakRepublic;
  if (qword_10058A950 != -1)
  {
    v23 = result;
    swift_once();
    result = v23;
  }

  *(result + 76) = static CountryCode.slovenia;
  if (qword_10058A958 != -1)
  {
    v24 = result;
    swift_once();
    result = v24;
  }

  *(result + 78) = static CountryCode.spain;
  if (qword_10058A960 != -1)
  {
    v25 = result;
    swift_once();
    result = v25;
  }

  *(result + 80) = static CountryCode.sweden;
  if (qword_10058A968 != -1)
  {
    v26 = result;
    swift_once();
    result = v26;
  }

  *(result + 82) = static CountryCode.uk;
  if (qword_10058A970 != -1)
  {
    v27 = result;
    swift_once();
    result = v27;
  }

  *(result + 84) = static CountryCode.iceland;
  if (qword_10058A978 != -1)
  {
    v28 = result;
    swift_once();
    result = v28;
  }

  *(result + 86) = static CountryCode.liechthenstein;
  if (qword_10058A980 != -1)
  {
    v29 = result;
    swift_once();
    result = v29;
  }

  *(result + 88) = static CountryCode.norway;
  if (qword_10058A988 != -1)
  {
    v30 = result;
    swift_once();
    result = v30;
  }

  *(result + 90) = static CountryCode.switzerland;
  if (qword_10058A990 != -1)
  {
    v31 = result;
    swift_once();
    result = v31;
  }

  *(result + 92) = static CountryCode.bulgaria;
  if (qword_10058A998 != -1)
  {
    v32 = result;
    swift_once();
    result = v32;
  }

  *(result + 94) = static CountryCode.turkey;
  if (qword_10058A9A0 != -1)
  {
    v33 = result;
    swift_once();
    result = v33;
  }

  *(result + 96) = static CountryCode.romania;
  if (qword_10058A9A8 != -1)
  {
    v34 = result;
    swift_once();
    result = v34;
  }

  *(result + 98) = static CountryCode.russia;
  if (qword_10058A9B0 != -1)
  {
    v35 = result;
    swift_once();
    result = v35;
  }

  *(result + 100) = static CountryCode.croatia;
  if (qword_10058A9B8 != -1)
  {
    v36 = result;
    swift_once();
    result = v36;
  }

  *(result + 102) = static CountryCode.serbia;
  if (qword_10058A9C0 != -1)
  {
    v37 = result;
    swift_once();
    result = v37;
  }

  *(result + 104) = static CountryCode.southAfrica;
  off_10058FD60 = result;
  return result;
}

uint64_t sub_1001B8698()
{
  if (*v0)
  {
    return 0x7942646E6F636573;
  }

  else
  {
    return 0x7479427473726966;
  }
}

uint64_t sub_1001B86DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7479427473726966 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7942646E6F636573 && a2 == 0xEA00000000006574)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001B87C8(uint64_t a1)
{
  v2 = sub_1001B8CC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B8804(uint64_t a1)
{
  v2 = sub_1001B8CC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CountryCode.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058FD68, &qword_1004935C0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9[-v6];
  sub_100029B34(a1, a1[3]);
  sub_1001B8CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001B89D8@<X0>(_WORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001B8D18(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001B8A28(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = &v10 - v6;
  v11 = *v1;
  v10 = _swiftEmptyArrayStorage;
  v8 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0, &protocol conformance descriptor for [A]);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1001B8C14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = String.count.getter();
  if (result == 2)
  {
    result = sub_100170360(v4, v3);
    if (v6)
    {
      v7 = Character.asciiValue.getter();

      if ((v7 & 0x100) == 0)
      {
        result = sub_1001B50DC(v4, v3);
        if (v8)
        {
          v9 = Character.asciiValue.getter();

          if ((v9 & 0x100) == 0)
          {

            *a2 = v7;
            a2[1] = v9;
            return result;
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1001B8CC4()
{
  result = qword_10058FD70;
  if (!qword_10058FD70)
  {
    result = swift_getWitnessTable(asc_100493878, &type metadata for CountryCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058FD70);
  }

  return result;
}

uint64_t sub_1001B8D18(void *a1)
{
  v2 = v1;
  v4 = sub_10005DC58(&qword_10058FDA8, &qword_1004938C8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11[-v6];
  sub_100029B34(a1, a1[3]);
  sub_1001B8CC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    v11[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11[14] = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    sub_100002A00(a1);
    return v8 | (v9 << 8);
  }

  return v2;
}

unint64_t sub_1001B8EC4()
{
  result = qword_10058FD78;
  if (!qword_10058FD78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountryCode, &type metadata for CountryCode, v0, v1);
    atomic_store(result, &qword_10058FD78);
  }

  return result;
}

unint64_t sub_1001B8F1C()
{
  result = qword_10058FD80;
  if (!qword_10058FD80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountryCode, &type metadata for CountryCode, v0, v1);
    atomic_store(result, &qword_10058FD80);
  }

  return result;
}

unint64_t sub_1001B8F80()
{
  result = qword_10058FD88;
  if (!qword_10058FD88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountryCode, &type metadata for CountryCode, v0, v1);
    atomic_store(result, &qword_10058FD88);
  }

  return result;
}

unint64_t sub_1001B9010()
{
  result = qword_10058FD90;
  if (!qword_10058FD90)
  {
    result = swift_getWitnessTable(byte_100493850, &type metadata for CountryCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058FD90);
  }

  return result;
}

unint64_t sub_1001B9068()
{
  result = qword_10058FD98;
  if (!qword_10058FD98)
  {
    result = swift_getWitnessTable("ɼ\v", &type metadata for CountryCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058FD98);
  }

  return result;
}

unint64_t sub_1001B90C0()
{
  result = qword_10058FDA0;
  if (!qword_10058FDA0)
  {
    result = swift_getWitnessTable(aY_19, &type metadata for CountryCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058FDA0);
  }

  return result;
}

void *sub_1001B9118(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1000DD514(a1[2], 0);
  v4 = *(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) - 8);
  sub_1000DD9A8(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  v6 = v5;
  sub_1000E290C(v8);
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_1001B91E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10002A440(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100196404();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    v20 = *(v13 - 8);
    sub_1001D6B5C(v12 + *(v20 + 72) * v7, a2, type metadata accessor for NANPairedDeviceSharedAssociation);
    sub_100193868(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t AppleKeychain.__allocating_init(accessGroup:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  AppleKeychain.init(accessGroup:view:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1001B93E4()
{
  v1 = 0;
  v2 = v0[1];
  v3 = v2 + 56;
  do
  {
    if (v2 && *(v2 + 16) && (v5 = static Hasher._hash(seed:_:)(), v6 = -1 << *(v2 + 32), v7 = v5 & ~v6, ((*(v3 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
    {
      v8 = ~v6;
      while (*(*(v2 + 48) + 8 * v7) != v1)
      {
        v7 = (v7 + 1) & v8;
        if (((*(v3 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v9 = *v0;
      if (!*(*v0 + 16) || (v10 = static Hasher._hash(seed:_:)(), v11 = -1 << *(v9 + 32), v12 = v10 & ~v11, ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0))
      {
LABEL_14:
        sub_100159BA0(&v15, v1);
        return v1;
      }

      v13 = ~v11;
      while (*(*(v9 + 48) + 8 * v12) != v1)
      {
        v12 = (v12 + 1) & v13;
        if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }
  }

  while (!__CFADD__(v1++, 1));
  return 0;
}

uint64_t sub_1001B9528()
{
  v1 = 0;
  v2 = v0[1];
  v3 = v2 + 56;
  if (v2)
  {
    goto LABEL_2;
  }

LABEL_7:
  v8 = *v0;
  if (*(*v0 + 16) && (v9 = static Hasher._hash(seed:bytes:count:)(), v10 = -1 << *(v8 + 32), v11 = v9 & ~v10, ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v12 = ~v10;
    while (v1 != *(*(v8 + 48) + v11))
    {
      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    while (v1 != 255)
    {
      ++v1;
      if (!v2)
      {
        goto LABEL_7;
      }

LABEL_2:
      if (!*(v2 + 16))
      {
        goto LABEL_7;
      }

      v4 = static Hasher._hash(seed:bytes:count:)();
      v5 = -1 << *(v2 + 32);
      v6 = v4 & ~v5;
      if (((*(v3 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_7;
      }

      v7 = ~v5;
      while (v1 != *(*(v2 + 48) + v6))
      {
        v6 = (v6 + 1) & v7;
        if (((*(v3 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_7;
        }
      }
    }

    LOBYTE(v1) = 0;
    v13 = 1;
  }

  else
  {
LABEL_16:
    sub_10015A268(v15, v1);
    v13 = 0;
  }

  return v1 | (v13 << 8);
}

uint64_t sub_1001B9684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v5 + *(type metadata accessor for LongTermPairingKeys(0) + 20);
  if ((*(a5 + 128))(v13, a2, a3, a4, a5))
  {
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 16))(v12, v13, v14);
    v15 = *(type metadata accessor for LongTermPairingKeys.Identity(0) + 20);
    v16 = type metadata accessor for SymmetricKey();
    (*(*(v16 - 8) + 16))(&v12[v15], v13 + v15, v16);
    type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
    P256.Signing.PrivateKey.publicKey.getter();
    v17 = &v12[*(v10 + 24)];
    *v17 = 0;
    *(v17 + 1) = 0;
    v18 = *(v10 + 28);
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 56))(&v12[v18], 1, 1, v19);
    v20 = (*(a5 + 136))(v12, a2, a3, 1, a4, a5);
    sub_1001D46E4(v12, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1001B98B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = a3;
  v69 = a6;
  v82 = type metadata accessor for UUID();
  v72 = *(v82 - 8);
  __chkstk_darwin();
  v78 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) - 8);
  __chkstk_darwin();
  v81 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v64 - v12;
  v13 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058FEC8, &qword_100493978);
  __chkstk_darwin();
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v64 - v19;
  v70 = type metadata accessor for LongTermPairingKeys(0);
  v68 = *(v70 - 8);
  __chkstk_darwin();
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v23 = *(a5 + 120);
  v76 = a2;
  v71 = a1;
  v24 = a4;
  v25 = a4;
  v26 = a5;
  v27 = v23(v20, a2, v79, v25, a5);
  sub_100012400(v20, v18, &qword_10058FEC8, &qword_100493978);
  if ((*(v14 + 48))(v18, 1, v13) == 1)
  {

    (*(*(v24 - 8) + 8))(v71, v24);
    sub_100016290(v20, &qword_10058FEC8, &qword_100493978);
    sub_100016290(v18, &qword_10058FEC8, &qword_100493978);
    v28 = type metadata accessor for Logger();
    (*(*(v28 - 8) + 8))(v22, v28);
    return (*(v68 + 56))(v69, 1, 1, v70);
  }

  sub_1001D6B5C(v18, v16, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  v30 = v70;
  sub_1001D45C0(v16, &v22[*(v70 + 20)], type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  v84[3] = v24;
  v84[4] = v26;
  v31 = sub_1000297D4(v84);
  v65 = *(v24 - 8);
  v32 = *(v65 + 16);
  v67 = v24;
  v32(v31, v71, v24);
  type metadata accessor for LongTermPairingKeys.PairedDevices();
  swift_allocObject();
  v33 = sub_1001BF7F4(v76, v79, v84);
  v34 = *(v30 + 24);
  v66 = v22;
  *&v22[v34] = v33;
  v35 = v78;
  v36 = v20;
  v76 = *(v27 + 16);
  if (!v76)
  {
LABEL_18:

    (*(v65 + 8))(v71, v67);
    sub_1001D46E4(v16, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    sub_100016290(v36, &qword_10058FEC8, &qword_100493978);
    v62 = v66;
    v63 = v69;
    sub_1001D45C0(v66, v69, type metadata accessor for LongTermPairingKeys);
    (*(v68 + 56))(v63, 0, 1, v70);
    return sub_1001D46E4(v62, type metadata accessor for LongTermPairingKeys);
  }

  v37 = v33;
  v38 = 0;
  v75 = v27 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v79 = (v72 + 16);
  v73 = v27;
  v74 = (v72 + 8);
  while (v38 < *(v27 + 16))
  {
    v39 = v16;
    v40 = v36;
    v41 = *(v77 + 72);
    v42 = v80;
    sub_1001D45C0(v75 + v41 * v38, v80, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v43 = *v79;
    (*v79)(v35, v42, v82);
    swift_beginAccess();
    sub_1001D45C0(v42, v81, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v37 + 16);
    v45 = v83;
    *(v37 + 16) = 0x8000000000000000;
    v46 = sub_10002A440(v35);
    v48 = v45[2];
    v49 = (v47 & 1) == 0;
    v50 = __OFADD__(v48, v49);
    v51 = v48 + v49;
    if (v50)
    {
      goto LABEL_21;
    }

    v52 = v47;
    if (v45[3] < v51)
    {
      sub_10018FDE8(v51, isUniquelyReferenced_nonNull_native);
      v46 = sub_10002A440(v35);
      if ((v52 & 1) != (v53 & 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      v54 = v83;
      if (v52)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v61 = v46;
    sub_100196DF0();
    v46 = v61;
    v54 = v83;
    if (v52)
    {
LABEL_5:
      sub_1001D7894(v81, v54[7] + v46 * v41, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      (*v74)(v35, v82);
      goto LABEL_6;
    }

LABEL_14:
    v54[(v46 >> 6) + 8] |= 1 << v46;
    v55 = v72;
    v56 = v46;
    v57 = v82;
    v43(v54[6] + *(v72 + 72) * v46, v78, v82);
    sub_1001D6B5C(v81, v54[7] + v56 * v41, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v58 = *(v55 + 8);
    v35 = v78;
    v58(v78, v57);
    v59 = v54[2];
    v50 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v50)
    {
      goto LABEL_22;
    }

    v54[2] = v60;
LABEL_6:
    ++v38;
    *(v37 + 16) = v54;

    swift_endAccess();
    sub_1001D46E4(v80, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v36 = v40;
    v16 = v39;
    v27 = v73;
    if (v76 == v38)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t LongTermPairingKeys.init(myIdentity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Logger.init(subsystem:category:)();
  v4 = type metadata accessor for LongTermPairingKeys(0);
  sub_1001D45C0(a1, a2 + *(v4 + 20), type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  type metadata accessor for LongTermPairingKeys.PairedDevices();
  v5 = swift_allocObject();
  *(v5 + 16) = &_swiftEmptyDictionarySingleton;
  *(v5 + 88) = 1;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  result = sub_1001D46E4(a1, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  *(a2 + *(v4 + 24)) = v5;
  return result;
}

uint64_t LongTermPairingKeys.PrivateIdentity.init()()
{
  v0 = type metadata accessor for SymmetricKeySize();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  if (qword_10058A9E0 != -1)
  {
    swift_once();
  }

  v4 = sub_100037644(v0, qword_10058FDC8);
  (*(v1 + 16))(v3, v4, v0);
  type metadata accessor for LongTermPairingKeys.Identity(0);
  SymmetricKey.init(size:)();
  type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  return P256.Signing.PrivateKey.init(compactRepresentable:)();
}

uint64_t LongTermPairingKeys.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = type metadata accessor for LongTermPairingKeys(0);
  __chkstk_darwin();
  sub_1001D45C0(v1, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LongTermPairingKeys);
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100480F40;
  strcpy((v10 + 32), "pairedDevices");
  *(v10 + 46) = -4864;
  v11 = *(v1 + *(v8 + 24));
  *(v10 + 72) = type metadata accessor for LongTermPairingKeys.PairedDevices();
  *(v10 + 48) = v11;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1001BA620()
{
  result = sub_10016FD40(0xD000000000000020, 0x80000001004BAED0);
  qword_10058FDB8 = result;
  unk_10058FDC0 = v1;
  return result;
}

uint64_t sub_1001BA65C()
{
  v0 = type metadata accessor for SymmetricKeySize();
  sub_100068888(v0, qword_10058FDC8);
  sub_100037644(v0, qword_10058FDC8);
  return static SymmetricKeySize.bits256.getter();
}

uint64_t sub_1001BA6A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v38 = type metadata accessor for SymmetricKey();
  v36 = *(v38 - 8);
  __chkstk_darwin();
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v37 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LongTermPairingKeys.Identity(0);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029B34(a1, a1[3]);
  v11 = v44;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v11)
  {
    return sub_100002A00(a1);
  }

  v35 = v7;
  v44 = v4;
  v13 = v38;
  v12 = v39;
  v14 = v42;
  v15 = v43;
  sub_100031694(v41, v42);
  v16 = UnkeyedDecodingContainer.decodeData(with:)(16, v14, v15);
  v18 = v17;
  sub_1002A5C4C(v16, v17, v40);
  sub_1000124C8(v16, v18);
  v20 = v35;
  UUID.init(uuid:)();
  v21 = *(v37 + 32);
  v34 = v10;
  v21(v10, v20, v5);
  if (qword_10058A9E0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for SymmetricKeySize();
  sub_100037644(v22, qword_10058FDC8);
  v23 = SymmetricKeySize.bitCount.getter() / 8;
  v24 = v42;
  v25 = v43;
  sub_100031694(v41, v42);
  v26 = UnkeyedDecodingContainer.decodeData(with:)(v23, v24, v25);
  v27 = v12;
  v28 = v36;
  v29 = v44;
  v40[0] = v26;
  v40[1] = v30;
  SymmetricKey.init<A>(data:)();
  v31 = *(v8 + 20);
  v32 = v34;
  (*(v28 + 32))(&v34[v31], v29, v13);
  sub_100002A00(v41);
  sub_1001D45C0(v32, v27, type metadata accessor for LongTermPairingKeys.Identity);
  sub_100002A00(a1);
  return sub_1001D46E4(v32, type metadata accessor for LongTermPairingKeys.Identity);
}

uint64_t sub_1001BAA9C(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v3 = sub_1001BAB54();
  v4 = v1;
  sub_100031694(v5, v5[3]);
  sub_1000B8088();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  sub_1000124C8(v3, v4);
  return sub_100002A00(v5);
}

uint64_t sub_1001BAB54()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v18 = UUID.uuid.getter();
  v19 = v7;
  v8 = sub_10004F3B0(&v18, v20);
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  type metadata accessor for LongTermPairingKeys.Identity(0);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v11 = v18;
  v12 = v19;
  v21[0] = v8;
  v21[1] = v10;
  v20[1] = &type metadata for Data;
  v20[2] = &protocol witness table for Data;
  v13 = sub_100029B34(&v18, &type metadata for Data);
  v14 = *v13;
  v15 = v13[1];
  sub_10000AB0C(v8, v10);
  sub_10000AB0C(v11, v12);
  sub_100178A18(v14, v15, v21);
  sub_1000124C8(v11, v12);
  sub_1000124C8(v8, v10);
  sub_100002A00(&v18);
  return v21[0];
}

uint64_t LongTermPairingKeys.PrivateIdentity.publicIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = *(type metadata accessor for LongTermPairingKeys.Identity(0) + 20);
  v5 = type metadata accessor for SymmetricKey();
  (*(*(v5 - 8) + 16))(a1 + v4, v1 + v4, v5);
  type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  v6 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  P256.Signing.PrivateKey.publicKey.getter();
  v7 = (a1 + *(v6 + 24));
  *v7 = 0;
  v7[1] = 0;
  v8 = *(v6 + 28);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

uint64_t sub_1001BAEE4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for P256.Signing.PrivateKey();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  (*(v8 + 16))(v10, v3 + *(v11 + 20), v7);
  if (qword_10058A9D8 != -1)
  {
    swift_once();
  }

  v12 = qword_10058FDB8;
  v13 = unk_10058FDC0;
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_14;
    }

    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v18 = __OFSUB__(v16, v17);
    v15 = v16 - v17;
    if (!v18)
    {
LABEL_12:
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_14:
      v15 = 0;
      goto LABEL_15;
    }

    __break(1u);
LABEL_10:
    LODWORD(v15) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
    }

    v15 = v15;
    goto LABEL_12;
  }

  if (v14)
  {
    goto LABEL_10;
  }

  v15 = BYTE6(a2);
LABEL_15:
  v34 = v8;
  v35 = v7;
  *&v36 = v15;
  v19 = sub_10004F3B0(&v36, &v36 + 8);
  v21 = v20;
  *&v39 = v12;
  *(&v39 + 1) = v13;
  v33 = v10;
  v37 = &type metadata for Data;
  v38 = &protocol witness table for Data;
  *&v36 = v19;
  *(&v36 + 1) = v20;
  v22 = sub_100029B34(&v36, &type metadata for Data);
  v23 = a3;
  v24 = *v22;
  v25 = v22[1];
  sub_10000AB0C(v12, v13);
  sub_10000AB0C(v19, v21);
  sub_100178A18(v24, v25, &v39);
  sub_1000124C8(v19, v21);
  sub_100002A00(&v36);
  v26 = v39;
  v40 = v39;
  v37 = &type metadata for Data;
  v38 = &protocol witness table for Data;
  *&v36 = a1;
  *(&v36 + 1) = a2;
  v27 = sub_100029B34(&v36, &type metadata for Data);
  v28 = *v27;
  v29 = v27[1];
  sub_10000AB0C(v26, *(&v26 + 1));
  sub_10000AB0C(a1, a2);
  sub_100178A18(v28, v29, &v40);
  sub_1000124C8(v26, *(&v26 + 1));
  sub_100002A00(&v36);
  v36 = v40;
  sub_1000BA0A4();
  v30 = v33;
  P256.Signing.PrivateKey.signature<A>(for:)();
  sub_1000124C8(v36, *(&v36 + 1));
  (*(v34 + 8))(v30, v35);
  v31 = type metadata accessor for P256.Signing.ECDSASignature();
  return (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
}

uint64_t sub_1001BB248()
{
  if (*v0)
  {
    return 0x4B676E696E676973;
  }

  else
  {
    return 0x797469746E656469;
  }
}

uint64_t sub_1001BB288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469746E656469 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B676E696E676973 && a2 == 0xEA00000000007965)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001BB36C(uint64_t a1)
{
  v2 = sub_1001D4648();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BB3A8(uint64_t a1)
{
  v2 = sub_1001D4648();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LongTermPairingKeys.PrivateIdentity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for P256.Signing.PrivateKey();
  v21 = *(v24 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for LongTermPairingKeys.Identity(0);
  __chkstk_darwin();
  v26 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10005DC58(&qword_10058FE08, &qword_100493910);
  v23 = *(v27 - 8);
  __chkstk_darwin();
  v8 = &v20 - v7;
  v9 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029B34(a1, a1[3]);
  sub_1001D4648();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v20 = a1;
  v12 = v11;
  v13 = v23;
  v14 = v24;
  v29 = 0;
  sub_1001D469C(&qword_10058FE18, type metadata accessor for LongTermPairingKeys.Identity, byte_100493DA4);
  v15 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1001D6B5C(v15, v12, type metadata accessor for LongTermPairingKeys.Identity);
  v28 = 1;
  sub_1001D469C(&qword_10058FE20, &type metadata accessor for P256.Signing.PrivateKey, protocol conformance descriptor for P256.Signing.PrivateKey);
  v16 = v5;
  v17 = v14;
  v18 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v8, v18);
  (*(v21 + 32))(v12 + *(v9 + 20), v16, v17);
  sub_1001D45C0(v12, v22, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  sub_100002A00(v20);
  return sub_1001D46E4(v12, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
}

uint64_t LongTermPairingKeys.PublicIdentity.rawRepresentation.getter()
{
  v0 = sub_1001BAB54();
  v2 = v1;
  type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v3 = P256.Signing.PublicKey.rawRepresentation.getter();
  v5 = v4;
  v11[0] = v0;
  v11[1] = v2;
  v10[3] = &type metadata for Data;
  v10[4] = &protocol witness table for Data;
  v10[0] = v3;
  v10[1] = v4;
  v6 = sub_100029B34(v10, &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_10000AB0C(v0, v2);
  sub_10000AB0C(v3, v5);
  sub_100178A18(v7, v8, v11);
  sub_1000124C8(v3, v5);
  sub_1000124C8(v0, v2);
  sub_100002A00(v10);
  return v11[0];
}

uint64_t LongTermPairingKeys.PublicIdentity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v20 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LongTermPairingKeys.Identity(0);
  __chkstk_darwin();
  v23 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v10[*(v11 + 24)];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = *(v11 + 28);
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v26 = v13;
  v15(&v10[v13], 1, 1, v14);
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
    return sub_100016290(&v10[v26], &qword_10058FE28, &unk_1004B2430);
  }

  else
  {
    v19 = v4;
    sub_100031694(v24, v25);
    sub_1001D469C(&qword_10058FE18, type metadata accessor for LongTermPairingKeys.Identity, byte_100493DA4);
    v16 = v23;
    UnkeyedDecodingContainer.inferredDecode<A>()();
    sub_1001D6B5C(v16, v10, type metadata accessor for LongTermPairingKeys.Identity);
    sub_100031694(v24, v25);
    sub_1001D469C(&qword_10058FE30, &type metadata accessor for P256.Signing.PublicKey, "a5\n");
    v17 = v19;
    UnkeyedDecodingContainer.inferredDecode<A>()();
    (*(v20 + 32))(&v10[*(v8 + 20)], v6, v17);
    sub_100002A00(v24);
    sub_1001D45C0(v10, v21, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    sub_100002A00(a1);
    return sub_1001D46E4(v10, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  }
}

uint64_t sub_1001BBCE0(void *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = sub_1001BAB54();
  v7 = v6;
  a2(0);
  v8 = a3();
  v10 = v9;
  *&v18 = v5;
  *(&v18 + 1) = v7;
  v16 = &type metadata for Data;
  v17 = &protocol witness table for Data;
  *&v15 = v8;
  *(&v15 + 1) = v9;
  v11 = sub_100029B34(&v15, &type metadata for Data);
  v12 = *v11;
  v13 = v11[1];
  sub_10000AB0C(v5, v7);
  sub_10000AB0C(v8, v10);
  sub_100178A18(v12, v13, &v18);
  sub_1000124C8(v8, v10);
  sub_1000124C8(v5, v7);
  sub_100002A00(&v15);
  v15 = v18;
  sub_100031694(v19, v19[3]);
  sub_1000B8088();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  sub_1000124C8(v15, *(&v15 + 1));
  return sub_100002A00(v19);
}

uint64_t LongTermPairingKeys.PublicIdentity.description.getter()
{
  v1 = (v0 + *(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) + 24));
  if (v1[1])
  {
    v9 = *v1;
    swift_bridgeObjectRetain_n();
    v2._countAndFlagsBits = 2108704;
    v2._object = 0xE300000000000000;
    String.append(_:)(v2);

    v3 = v9;
  }

  else
  {
    v3 = 0;
  }

  v4 = UUID.uuidString.getter();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  return v3;
}

uint64_t LongTermPairingKeys.PublicIdentity.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = v11 - v6;
  type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  __chkstk_darwin();
  sub_1001D45C0(v1, v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v11[1] = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0, &protocol conformance descriptor for [A]);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t sub_1001BC174(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for P256.Signing.PublicKey();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  (*(v8 + 16))(v10, v3 + *(v11 + 20), v7);
  if (qword_10058A9D8 != -1)
  {
    swift_once();
  }

  v12 = qword_10058FDB8;
  v13 = unk_10058FDC0;
  v14 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_14;
    }

    v17 = *(a2 + 16);
    v16 = *(a2 + 24);
    v18 = __OFSUB__(v16, v17);
    v15 = v16 - v17;
    if (!v18)
    {
LABEL_12:
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_14:
      v15 = 0;
      goto LABEL_15;
    }

    __break(1u);
LABEL_10:
    LODWORD(v15) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
    }

    v15 = v15;
    goto LABEL_12;
  }

  if (v14)
  {
    goto LABEL_10;
  }

  v15 = BYTE6(a3);
LABEL_15:
  *&v35 = v15;
  v19 = sub_10004F3B0(&v35, &v35 + 8);
  v21 = v20;
  *&v38 = v12;
  *(&v38 + 1) = v13;
  v33 = v10;
  v32 = a1;
  v36 = &type metadata for Data;
  v37 = &protocol witness table for Data;
  *&v35 = v19;
  *(&v35 + 1) = v20;
  v22 = sub_100029B34(&v35, &type metadata for Data);
  v34 = v7;
  v24 = *v22;
  v23 = v22[1];
  sub_10000AB0C(v12, v13);
  sub_10000AB0C(v19, v21);
  sub_100178A18(v24, v23, &v38);
  sub_1000124C8(v19, v21);
  sub_100002A00(&v35);
  v26 = *(&v38 + 1);
  v25 = v38;
  v39 = v38;
  v36 = &type metadata for Data;
  v37 = &protocol witness table for Data;
  *&v35 = a2;
  *(&v35 + 1) = a3;
  v27 = sub_100029B34(&v35, &type metadata for Data);
  v28 = *v27;
  v29 = v27[1];
  sub_10000AB0C(v25, v26);
  sub_10000AB0C(a2, a3);
  sub_100178A18(v28, v29, &v39);
  sub_1000124C8(v25, v26);
  sub_100002A00(&v35);
  v35 = v39;
  sub_1000BA0A4();
  v30 = v33;
  LOBYTE(v26) = P256.Signing.PublicKey.isValidSignature<A>(_:for:)();
  sub_1000124C8(v35, *(&v35 + 1));
  (*(v8 + 8))(v30, v34);
  return v26 & 1;
}

uint64_t sub_1001BC49C(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = v11 - v6;
  __chkstk_darwin();
  sub_1001D45C0(v1, v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v11[1] = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0, &protocol conformance descriptor for [A]);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1001BC6E4(uint64_t a1)
{
  sub_10005DC58(&qword_100590868, &qword_100493E68);
  __chkstk_darwin();
  v3 = v14 - v2;
  v4 = type metadata accessor for AES.GCM.SealedBox();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NANGenericServiceProtocol.packetData(for:)(1, a1);
  if (v9 >> 60 != 15)
  {
    v14[2] = result;
    v14[3] = v9;
    v10 = result;
    v11 = v9;
    type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0);
    v12 = type metadata accessor for AES.GCM.Nonce();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    sub_10000AB0C(v10, v11);
    sub_1000BA0A4();
    static AES.GCM.seal<A>(_:using:nonce:)();
    sub_100016290(v3, &qword_100590868, &qword_100493E68);
    v13 = AES.GCM.SealedBox.combined.getter();
    sub_100017554(v10, v11);
    sub_100017554(v10, v11);
    (*(v5 + 8))(v7, v4);
    return v13;
  }

  return result;
}

uint64_t sub_1001BC944(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_1000124C8(a1, a2);
      v7 = type metadata accessor for CryptoKitError();
      sub_1001D469C(&qword_100590858, &type metadata accessor for CryptoKitError, &protocol conformance descriptor for CryptoKitError);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, enum case for CryptoKitError.incorrectParameterSize(_:), v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = &type metadata for Data;
  v29[4] = &protocol witness table for Data;
  v29[0] = a1;
  v29[1] = a2;
  v10 = sub_100029B34(v29, &type metadata for Data);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = __DataStorage._offset.getter();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
LABEL_25:
        v24 = __DataStorage._length.getter();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  sub_10002D950(v15, v14, &v28);
  sub_100002A00(v29);
  return AES.GCM.SealedBox.init(combined:)();
}

uint64_t sub_1001BCC54(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, uint64_t a4)
{
  v132 = a4;
  v144 = a3;
  v147 = a2;
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v133 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v135 = &v117 - v6;
  v130 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v134 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v131 = &v117 - v8;
  sub_10005DC58(&qword_100590868, &qword_100493E68);
  __chkstk_darwin();
  v139 = &v117 - v9;
  v137 = type metadata accessor for AES.GCM.SealedBox();
  v136 = *(v137 - 8);
  __chkstk_darwin();
  v138 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10005DC58(&qword_10058CB98, &unk_100488540);
  v141 = *(v142 - 8);
  __chkstk_darwin();
  v140 = &v117 - v11;
  v143 = type metadata accessor for P256.Signing.ECDSASignature();
  v145 = *(v143 - 8);
  __chkstk_darwin();
  v13 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v146 = *(v14 - 8);
  __chkstk_darwin();
  v16 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100590860, &qword_100493E60);
  __chkstk_darwin();
  v18 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v117 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin();
  v25 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  (*(v22 + 16))(v25, a1, v21, v23);
  *&v153 = UUID.uuid.getter();
  *(&v153 + 1) = v27;
  v28 = sub_10004F3B0(&v153, v154);
  v29 = v25;
  v31 = v30;
  (*(v22 + 8))(v29, v21);
  v32 = v28;
  sub_10000AB0C(v28, v31);
  v148 = sub_1000D4CB4(v28, v31);
  v34 = v33;
  v123 = v16;
  v124 = v18;
  v125 = v20;
  v122 = v13;
  v126 = v26;
  v127 = v14;
  v129 = v32;
  v128 = v31;
  v35 = sub_100033AA8(_swiftEmptyArrayStorage);
  v36 = type metadata accessor for BinaryEncoder();
  v37 = swift_allocObject();
  v121 = xmmword_100480A90;
  *(v37 + 16) = xmmword_100480A90;
  *(v37 + 32) = v35;
  v155 = v36;
  v38 = sub_1001D469C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v156 = v38;
  *&v153 = v37;

  v39 = v148;
  sub_100142A80(&v153, v148, v34);
  v119 = v38;
  v120 = v36;
  sub_1000124C8(v39, v34);
  sub_100002A00(&v153);
  swift_beginAccess();
  v41 = *(v37 + 16);
  v42 = *(v37 + 24);
  sub_10000AB0C(v41, v42);

  v43 = v123;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v44 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v46 = v45;
  (*(v146 + 8))(v43, v127);
  v47 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v49 = v48;
  v151 = v44;
  v152 = v46;
  v155 = &type metadata for Data;
  v156 = &protocol witness table for Data;
  *&v153 = v47;
  *(&v153 + 1) = v48;
  v50 = sub_100029B34(&v153, &type metadata for Data);
  v51 = *v50;
  v52 = v50[1];
  sub_10000AB0C(v44, v46);
  sub_10000AB0C(v47, v49);
  sub_100178A18(v51, v52, &v151);
  sub_1000124C8(v47, v49);
  sub_1000124C8(v44, v46);
  sub_100002A00(&v153);
  v53 = v151;
  v54 = v152;
  v55 = v125;
  sub_1001BAEE4(v151, v152, v125);
  sub_1000124C8(v53, v54);
  v56 = v124;
  sub_100012400(v55, v124, &qword_100590860, &qword_100493E60);
  v57 = v145;
  v58 = v143;
  if ((*(v145 + 48))(v56, 1, v143) == 1)
  {
    sub_100016290(v55, &qword_100590860, &qword_100493E60);
    v59 = v41;
    v60 = v42;
LABEL_3:
    sub_1000124C8(v59, v60);
    sub_1000124C8(v129, v128);
    return 0;
  }

  v148 = v41;
  v61 = v122;
  (*(v57 + 32))(v122, v56, v58);
  v62 = P256.Signing.ECDSASignature.rawRepresentation.getter();
  v64 = sub_1000D4CB4(v62, v63);
  v66 = v65;
  v118 = v42;
  (*(v57 + 8))(v61, v58);
  sub_100016290(v55, &qword_100590860, &qword_100493E60);
  v67 = sub_100033AA8(_swiftEmptyArrayStorage);
  v68 = v120;
  v69 = swift_allocObject();
  *(v69 + 16) = v121;
  *(v69 + 32) = v67;
  v155 = v68;
  v156 = v119;
  *&v153 = v69;

  sub_100142A80(&v153, v64, v66);
  sub_1000124C8(v64, v66);
  sub_100002A00(&v153);
  swift_beginAccess();
  v70 = *(v69 + 16);
  v71 = *(v69 + 24);
  sub_10000AB0C(v70, v71);

  *&v153 = v129;
  *(&v153 + 1) = v128;
  type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0);
  type metadata accessor for SHA256();
  sub_1001D469C(&qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  v72 = sub_1000BA0A4();
  v73 = v140;
  static HMAC.authenticationCode<A>(for:using:)();
  v74 = v142;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  (*(v141 + 8))(v73, v74);
  v75 = sub_1000D4CB4(v153, *(&v153 + 1));
  v77 = v76;
  v144 = v72;
  v145 = v71;
  v78 = sub_100033AA8(_swiftEmptyArrayStorage);
  v79 = v120;
  v80 = swift_allocObject();
  *(v80 + 16) = v121;
  *(v80 + 32) = v78;
  v155 = v79;
  v156 = v119;
  *&v153 = v80;

  sub_100142A80(&v153, v75, v77);
  sub_1000124C8(v75, v77);
  sub_100002A00(&v153);
  swift_beginAccess();
  v82 = *(v80 + 16);
  v81 = *(v80 + 24);
  sub_10000AB0C(v82, v81);

  v83 = v148;
  v84 = v118;
  *&v149 = v148;
  *(&v149 + 1) = v118;
  v155 = &type metadata for Data;
  v156 = &protocol witness table for Data;
  v85 = v70;
  *&v153 = v70;
  v86 = v145;
  *(&v153 + 1) = v145;
  v87 = sub_100029B34(&v153, &type metadata for Data);
  v88 = *v87;
  v89 = v87[1];
  sub_10000AB0C(v83, v84);
  sub_10000AB0C(v85, v86);
  sub_100178A18(v88, v89, &v149);
  sub_100002A00(&v153);
  v90 = v149;
  v150 = v149;
  v155 = &type metadata for Data;
  v156 = &protocol witness table for Data;
  *&v153 = v82;
  *(&v153 + 1) = v81;
  v91 = sub_100029B34(&v153, &type metadata for Data);
  v92 = *v91;
  v93 = v91[1];
  v143 = v81;
  sub_10000AB0C(v82, v81);
  sub_10000AB0C(v90, *(&v90 + 1));
  sub_100178A18(v92, v93, &v150);
  sub_1000124C8(v90, *(&v90 + 1));
  sub_100002A00(&v153);
  v153 = v150;
  v94 = type metadata accessor for AES.GCM.Nonce();
  v95 = v139;
  (*(*(v94 - 8) + 56))(v139, 1, 1, v94);
  v96 = v138;
  static AES.GCM.seal<A>(_:using:nonce:)();
  v142 = v82;
  sub_100016290(v95, &qword_100590868, &qword_100493E68);
  sub_1000124C8(v153, *(&v153 + 1));
  v144 = AES.GCM.SealedBox.combined.getter();
  v98 = v97;
  (*(v136 + 8))(v96, v137);
  v141 = v98;
  if (v98 >> 60 == 15)
  {
    sub_1000124C8(v142, v143);
    sub_1000124C8(v85, v145);
    v59 = v148;
    v60 = v118;
    goto LABEL_3;
  }

  v99 = sub_100082620(_swiftEmptyArrayStorage);
  v140 = v85;
  v100 = v99;
  *&v153 = v99;
  v101 = v131;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  (*(v146 + 56))(v101, 0, 1, v127);
  v102 = v134;
  sub_1000CB960(v100, v134);
  v103 = v130;
  sub_1000D1274(v101, v102 + *(v130 + 24));
  v147 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes;
  v104 = v135;
  sub_1001D45C0(v102, v135, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v105 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  swift_storeEnumTagMultiPayload();
  v106 = *(v105 - 8);
  v107 = *(v106 + 56);
  v146 = v106 + 56;
  (v107)(v104, 0, 1, v105);
  v139 = v107;
  v108 = v133;
  sub_100012400(v104, v133, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v108, 7);
  sub_100016290(v104, &qword_10058BB48, &unk_100483040);
  sub_100016290(v101, &unk_100595C40, &qword_100499070);
  sub_1001D46E4(v102, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v109 = v153;
  v110 = v144;
  v111 = v141;
  sub_10000AB0C(v144, v141);
  sub_1000CB960(v109, v102);
  v112 = v102 + *(v103 + 32);
  sub_100017554(*v112, *(v112 + 8));
  *v112 = v110;
  *(v112 + 8) = v111;
  sub_1001D45C0(v102, v104, v147);
  swift_storeEnumTagMultiPayload();
  (v107)(v104, 0, 1, v105);
  sub_100012400(v104, v108, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v108, 7);
  sub_100016290(v104, &qword_10058BB48, &unk_100483040);
  sub_1001D46E4(v102, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v113 = sub_1001BC6E4(v132);
  v115 = v114;
  sub_1000CB960(v153, v102);
  v116 = v102 + *(v103 + 36);
  sub_100017554(*v116, *(v116 + 8));
  *v116 = v113;
  *(v116 + 8) = v115;
  sub_1001D45C0(v102, v104, v147);
  swift_storeEnumTagMultiPayload();
  (v139)(v104, 0, 1, v105);
  sub_100012400(v104, v108, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v108, 7);
  sub_100017554(v144, v141);
  sub_1000124C8(v142, v143);
  sub_1000124C8(v140, v145);
  sub_1000124C8(v148, v118);
  sub_1000124C8(v129, v128);
  sub_100016290(v104, &qword_10058BB48, &unk_100483040);
  sub_1001D46E4(v102, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return v153;
}

uint64_t sub_1001BDF68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v94 = v5;
  v95 = v6;
  __chkstk_darwin();
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v87 - v9;
  sub_10005DC58(&qword_100590860, &qword_100493E60);
  __chkstk_darwin();
  v12 = &v87 - v11;
  v13 = type metadata accessor for P256.Signing.ECDSASignature();
  v96 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AES.GCM.SealedBox();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Logger();
  v100 = *(v20 - 8);
  v101 = v20;
  __chkstk_darwin();
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  sub_10000AB0C(a1, a2);
  sub_1001BC944(a1, a2);
  v92 = v12;
  v89 = v8;
  v91 = v15;
  v22 = v96;
  v90 = v10;
  v93 = v13;
  v23 = static AES.GCM.open(_:using:)();
  v25 = v24;
  (*(v17 + 8))(v19, v16);
  sub_10000AB0C(v23, v25);
  v26 = v23;
  v27 = sub_100033AA8(_swiftEmptyArrayStorage);
  v28 = type metadata accessor for BinaryDecoder();
  v29 = swift_allocObject();
  v30 = v25;
  v31 = v29;
  v32 = 0;
  v29[5] = &_swiftEmptyDictionarySingleton;
  v88 = v26;
  v29[2] = v26;
  v29[3] = v30;
  v87 = v30;
  v33 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v33 == 2)
    {
      v32 = *(v88 + 16);
    }
  }

  else if (v33)
  {
    v32 = v88;
  }

  v29[4] = v32;
  swift_beginAccess();
  v31[5] = v27;
  v34 = v31[3];
  v35 = v34 >> 62;
  v36 = v31[2];
  v97 = v36 >> 32;
  v37 = BYTE6(v34);
  v38 = _swiftEmptyArrayStorage;
  while (1)
  {
    v39 = v31[4];
    if (v35 > 1)
    {
      break;
    }

    v40 = v37;
    if (v35)
    {
      v40 = v97;
    }

LABEL_12:
    if (v39 >= v40)
    {
      goto LABEL_20;
    }

LABEL_15:
    v102[3] = v28;
    v102[4] = sub_1001D469C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
    v102[0] = v31;

    v41 = sub_1001427AC(v102);
    v43 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1001178F8(0, v38[2] + 1, 1, v38);
    }

    v44 = v38;
    v46 = v38[2];
    v45 = v38[3];
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      v96 = v46;
      v44 = sub_1001178F8((v45 > 1), v46 + 1, 1, v44);
      v46 = v96;
    }

    v44[2] = v47;
    v38 = v44;
    v48 = &v44[2 * v46];
    v48[4] = v41;
    v48[5] = v43;
  }

  if (v35 == 2)
  {
    v40 = *(v36 + 24);
    goto LABEL_12;
  }

  if (v39 < 0)
  {
    goto LABEL_15;
  }

LABEL_20:

  if (!v38[2])
  {
    goto LABEL_32;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C2BC8(v38);
    v38 = result;
    v50 = *(result + 16);
    if (!v50)
    {
      goto LABEL_42;
    }

LABEL_23:
    v51 = &v38[2 * v50 + 2];
    v53 = *v51;
    v52 = v51[1];
    v38[2] = v50 - 1;
    if (v50 == 1)
    {
      sub_1000124C8(v53, v52);
      v58 = v92;
      v22[7](v92, 1, 1, v93);
LABEL_26:

      sub_100016290(v58, &qword_100590860, &qword_100493E60);
LABEL_33:
      v71 = v98;
LABEL_34:
      v73 = v100;
      v72 = v101;
      v74 = v99;
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "Failed to process authentication message because parsing failed", v77, 2u);

        sub_1000124C8(v88, v87);
      }

      else
      {
        sub_1000124C8(v88, v87);
      }

      (*(v73 + 8))(v74, v72);
      v78 = sub_10005DC58(&qword_10058FE78, &qword_100493968);
      return (*(*(v78 - 8) + 56))(v71, 1, 1, v78);
    }

    v54 = v50 - 2;
    v55 = &v38[2 * v50];
    v56 = *v55;
    v57 = v55[1];
    v38[2] = v54;
    v58 = v92;
    sub_1001BEB98(v56, v57, v92);
    sub_1000124C8(v56, v57);
    v59 = v93;
    v60 = (v22[6])(v58, 1, v93);
    if (v60 == 1)
    {
      sub_1000124C8(v53, v52);
      goto LABEL_26;
    }

    v61 = v58;
    v62 = v22[4];
    v63 = v91;
    (v62)(v91, v61, v59);
    v64 = v63;
    v65 = v38;
    v66 = v38[2];
    if (v66)
    {
      v67 = v66 - 1;
      v68 = &v38[2 * v67 + 4];
      v69 = *v68;
      v70 = v68[1];
      v65[2] = v67;
      sub_1002A5C4C(v69, v70, v102);
      v97 = v62;
      sub_1000124C8(v69, v70);
      v79 = v89;
      UUID.init(uuid:)();
      v81 = v94;
      v80 = v95;
      v96 = *(v95 + 32);
      (v96)(v90, v79, v94);
      v82 = v65[2];

      v71 = v98;
      if (!v82)
      {
        (*(v100 + 8))(v99, v101);
        sub_1000124C8(v88, v87);
        v83 = sub_10005DC58(&qword_10058FE78, &qword_100493968);
        v84 = v71;
        v85 = *(v83 + 48);
        v86 = (v84 + *(v83 + 64));
        (v96)(v84, v90, v81);
        (v97)(v84 + v85, v91, v93);
        *v86 = v53;
        v86[1] = v52;
        return (*(*(v83 - 8) + 56))(v84, 0, 1, v83);
      }

      sub_1000124C8(v53, v52);
      (*(v80 + 8))(v90, v81);
      (v22[1])(v91, v93);
      goto LABEL_34;
    }

    (v22[1])(v64, v59);
    sub_1000124C8(v53, v52);
LABEL_32:

    goto LABEL_33;
  }

  v50 = v38[2];
  if (v50)
  {
    goto LABEL_23;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1001BEB98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v6 = type metadata accessor for P256.Signing.ECDSASignature();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AB0C(a1, a2);
  v10 = sub_100033AA8(_swiftEmptyArrayStorage);
  v11 = type metadata accessor for BinaryDecoder();
  v12 = swift_allocObject();
  v13 = 0;
  v12[5] = &_swiftEmptyDictionarySingleton;
  v12[2] = a1;
  v12[3] = a2;
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v13 = *(a1 + 16);
    }
  }

  else if (v14)
  {
    v13 = a1;
  }

  v12[4] = v13;
  swift_beginAccess();
  v12[5] = v10;
  v20[3] = &type metadata for BinaryDecoder.UnkeyedContainer;
  v20[4] = sub_1000325F0();
  v20[0] = v12;
  v15 = *sub_100031694(v20, &type metadata for BinaryDecoder.UnkeyedContainer);
  v19[3] = v11;
  v19[4] = sub_1001D469C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v19[0] = v15;

  P256.Signing.ECDSASignature.init(from:)(v19, v9);
  if (!v3)
  {
    v16 = v21;
    (*(v7 + 32))(v21, v9, v6);
    (*(v7 + 56))(v16, 0, 1, v6);
  }

  return sub_100002A00(v20);
}

uint64_t sub_1001BEDC4()
{
  v0 = type metadata accessor for SymmetricKeySize();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SymmetricKeySize.bits256.getter();
  v4 = SymmetricKeySize.bitCount.getter();
  result = (*(v1 + 8))(v3, v0);
  qword_10058FDE0 = v4 / 8;
  return result;
}

uint64_t sub_1001BEEA4()
{
  result = sub_10016FD40(0xD000000000000016, 0x80000001004BAF00);
  qword_10058FDE8 = result;
  qword_10058FDF0 = v1;
  return result;
}

uint64_t sub_1001BEEE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = a5;
  v65 = a6;
  v62 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0);
  __chkstk_darwin();
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v61 - v12;
  v67 = type metadata accessor for SymmetricKey();
  v13 = *(v67 - 8);
  __chkstk_darwin();
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v61 - v16;
  __chkstk_darwin();
  v19 = &v61 - v18;
  __chkstk_darwin();
  v21 = (&v61 - v20);
  v72 = a1;
  v73 = a2;
  sub_10000AB0C(a1, a2);
  SymmetricKey.init<A>(data:)();
  v72 = a3;
  v73 = a4;
  if (qword_10058A9F0 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v70 = qword_10058FDE8;
    v71 = qword_10058FDF0;
    result = sub_10000AB0C(qword_10058FDE8, qword_10058FDF0);
    if (qword_10058A9E8 != -1)
    {
      result = swift_once();
    }

    v23 = qword_10058FDE0;
    v24 = 6 * qword_10058FDE0;
    if ((qword_10058FDE0 * 6) >> 64 != (6 * qword_10058FDE0) >> 63)
    {
      break;
    }

    v66 = v17;
    v61 = v11;
    type metadata accessor for SHA256();
    sub_1001D469C(&qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    sub_1000BA0A4();
    v11 = &type metadata for Data;
    static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)();
    sub_1000124C8(v70, v71);
    v25 = *(v13 + 8);
    v26 = v19;
    v27 = v67;
    v25(v26, v67);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    result = (v25)(v21, v27);
    v68 = v73;
    v69 = v72;
    v28 = v73 >> 62;
    if ((v73 >> 62) > 1)
    {
      if (v28 != 2)
      {
        v17 = v66;
        if (v24)
        {
          goto LABEL_45;
        }

        i = 0;
        if (!v23)
        {
          goto LABEL_60;
        }

        goto LABEL_17;
      }

      v31 = *(v69 + 16);
      v30 = *(v69 + 24);
      v32 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v32)
      {
        goto LABEL_72;
      }

      goto LABEL_10;
    }

    if (!v28)
    {
      v29 = BYTE6(v68);
LABEL_10:
      v17 = v66;
      if (v29 != v24)
      {
        goto LABEL_45;
      }

      goto LABEL_14;
    }

    v17 = v66;
    if (__OFSUB__(HIDWORD(v69), v69))
    {
      goto LABEL_73;
    }

    if (HIDWORD(v69) - v69 != v24)
    {
LABEL_45:
      sub_1000124C8(v69, v68);
      v55 = sub_10005DC58(&qword_10058FE60, &qword_100493950);
      return (*(*(v55 - 8) + 56))(v65, 1, 1, v55);
    }

LABEL_14:
    if (v28)
    {
      if (v28 != 2)
      {
        goto LABEL_61;
      }

      v24 = *(v69 + 16);
      for (i = *(v69 + 24); !v23; i = v69 >> 32)
      {
LABEL_60:
        __break(1u);
LABEL_61:
        v24 = v69;
      }
    }

    else
    {
      v24 = 0;
      i = BYTE6(v68);
      if (!v23)
      {
        goto LABEL_60;
      }
    }

LABEL_17:
    v19 = 0;
    v34 = v24;
    while (1)
    {
      v35 = i >= v34;
      if (v23 > 0)
      {
        v35 = v34 >= i;
      }

      if (v35)
      {
        break;
      }

      v32 = __OFADD__(v34, v23);
      v34 += v23;
      if (v32)
      {
        v34 = (v34 >> 63) ^ 0x8000000000000000;
      }

      v32 = __OFADD__(v19++, 1);
      if (v32)
      {
        __break(1u);
        break;
      }
    }

    v70 = _swiftEmptyArrayStorage;
    sub_1000C0748(0, v19, 0);
    v21 = v70;
    if (v19)
    {
      v36 = v24;
      while (1)
      {
        v37 = i >= v36;
        if (v23 > 0)
        {
          v37 = v36 >= i;
        }

        if (v37)
        {
          break;
        }

        if (__OFADD__(v36, v23))
        {
          v24 = ((v36 + v23) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v24 = v36 + v23;
        }

        if (__OFADD__(v36, v23))
        {
          goto LABEL_66;
        }

        if (v36 + v23 < v36)
        {
          goto LABEL_67;
        }

        v72 = Data._Representation.subscript.getter();
        v73 = v38;
        SymmetricKey.init<A>(data:)();
        v70 = v21;
        v40 = v21[2];
        v39 = v21[3];
        v11 = (v40 + 1);
        if (v40 >= v39 >> 1)
        {
          sub_1000C0748((v39 > 1), v40 + 1, 1);
          v21 = v70;
        }

        v21[2] = v11;
        (*(v13 + 32))(v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v40, v15, v67);
        v36 = v24;
        --v19;
        v17 = v66;
        if (!v19)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
    }

    else
    {
LABEL_39:
      v41 = i >= v24;
      if (v23 > 0)
      {
        v41 = v24 >= i;
      }

      if (v41)
      {
LABEL_42:
        if (v21[2] == 6)
        {
          v43 = *(v13 + 16);
          v42 = v13 + 16;
          v44 = v21 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
          v45 = v63;
          v46 = v67;
          v43(v63, v44, v67);
          v47 = v62;
          v48 = *(v42 + 56);
          v43((v45 + *(v62 + 20)), &v44[v48], v46);
          v43((v45 + v47[6]), &v44[2 * v48], v46);
          v49 = v47[7];
          v50 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
          (*(*(v50 - 8) + 56))(v45 + v49, 1, 1, v50);
          v51 = v61;
          v43(v61, &v44[3 * v48], v46);
          v43((v51 + v47[5]), &v44[4 * v48], v46);
          v43((v51 + v47[6]), &v44[5 * v48], v46);
          sub_1000124C8(v69, v68);

          sub_100012400(v64, v51 + v47[7], &qword_10058FE50, &unk_100493930);
          v52 = sub_10005DC58(&qword_10058FE60, &qword_100493950);
          v53 = *(v52 + 48);
          v54 = v65;
          sub_1001D6B5C(v45, v65, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
          sub_1001D6B5C(v51, v54 + v53, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
          return (*(*(v52 - 8) + 56))(v54, 0, 1, v52);
        }

        else
        {
          v60 = sub_10005DC58(&qword_10058FE60, &qword_100493950);
          (*(*(v60 - 8) + 56))(v65, 1, 1, v60);

          return sub_1000124C8(v69, v68);
        }
      }

      v15 = &protocol witness table for Data;
      while (1)
      {
        v11 = (__OFADD__(v24, v23) ? ((v24 + v23) >> 63) ^ 0x8000000000000000 : v24 + v23);
        if (__OFADD__(v24, v23))
        {
          break;
        }

        if (v24 + v23 < v24)
        {
          goto LABEL_69;
        }

        v72 = Data._Representation.subscript.getter();
        v73 = v56;
        SymmetricKey.init<A>(data:)();
        v70 = v21;
        v19 = v17;
        v58 = v21[2];
        v57 = v21[3];
        if (v58 >= v57 >> 1)
        {
          sub_1000C0748((v57 > 1), v58 + 1, 1);
          v21 = v70;
        }

        v21[2] = v58 + 1;
        (*(v13 + 32))(v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v58, v19, v67);
        v59 = i >= v11;
        if (v23 > 0)
        {
          v59 = v11 >= i;
        }

        v24 = v11;
        v17 = v19;
        if (v59)
        {
          goto LABEL_42;
        }
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1001BF7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 80) = 0;
  *(v4 + 88) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 16) = &_swiftEmptyDictionarySingleton;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  sub_100012400(a3, v4 + 40, &qword_100590850, &unk_100493E50);
  if (a2)
  {
    sub_100012400(v4 + 40, v13, &qword_100590850, &unk_100493E50);
    v7 = v14;
    if (v14)
    {
      v8 = v15;
      sub_100029B34(v13, v14);
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = *(v8 + 104);

      v11 = v10(sub_1001D7920, v9, v7, v8);

      sub_100016290(a3, &qword_100590850, &unk_100493E50);

      sub_100002A00(v13);
    }

    else
    {
      sub_100016290(a3, &qword_100590850, &unk_100493E50);
      sub_100016290(v13, &qword_100590850, &unk_100493E50);
      v11 = 0;
    }

    *(v4 + 80) = v11;
    *(v4 + 88) = v7 == 0;
  }

  else
  {
    sub_100016290(a3, &qword_100590850, &unk_100493E50);
  }

  return v4;
}

uint64_t sub_1001BF9B0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001BFB10();
  }

  return result;
}

uint64_t sub_1001BFA14()
{
  v1 = v0;
  if ((*(v0 + 88) & 1) == 0)
  {
    v2 = *(v0 + 80);
    sub_100012400(v1 + 40, v6, &qword_100590850, &unk_100493E50);
    v3 = v7;
    if (v7)
    {
      v4 = v8;
      sub_100029B34(v6, v7);
      (*(v4 + 112))(v2, v3, v4);
      sub_100002A00(v6);
    }

    else
    {
      sub_100016290(v6, &qword_100590850, &unk_100493E50);
    }
  }

  sub_100016290(v1 + 40, &qword_100590850, &unk_100493E50);
  sub_100010520(*(v1 + 96), *(v1 + 104));
  return swift_deallocClassInstance();
}

void *sub_1001BFB10()
{
  v1 = v0;
  sub_10005DC58(&qword_10058FE50, &unk_100493930);
  __chkstk_darwin();
  v83 = (&v74 - v2);
  v89 = type metadata accessor for UUID();
  v76 = *(v89 - 8);
  __chkstk_darwin();
  v88 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v74 - v4;
  v82 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v87 = *(v82 - 8);
  __chkstk_darwin();
  v86 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = (&v74 - v7);
  __chkstk_darwin();
  v85 = &v74 - v8;
  __chkstk_darwin();
  v10 = &v74 - v9;
  sub_10005DC58(&qword_100590840, &qword_100493E40);
  __chkstk_darwin();
  v12 = &v74 - v11;
  v13 = sub_10005DC58(&qword_100590848, &qword_100493E48);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v75 = &v74 - v18;
  v19 = v0[4];
  if (!v19)
  {
    goto LABEL_18;
  }

  v77 = v5;
  v20 = v1[3];
  sub_100012400((v1 + 5), v92, &qword_100590850, &unk_100493E50);
  v21 = v93;
  if (!v93)
  {
    sub_100016290(v92, &qword_100590850, &unk_100493E50);
LABEL_18:
    (*(v14 + 56))(v12, 1, 1, v13, v17);
    goto LABEL_19;
  }

  v74 = v16;
  v22 = v94;
  sub_100029B34(v92, v93);
  v23 = *(v13 + 48);
  *&v12[v23] = (*(v22 + 120))(v12, v20, v19, v21, v22);
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_100002A00(v92);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_19:
    sub_100016290(v12, &qword_100590840, &qword_100493E40);
    return 0;
  }

  v24 = v75;
  sub_10001CEA8(v12, v75, &qword_100590848, &qword_100493E48);
  v25 = v24;
  v26 = v74;
  sub_100012400(v25, v74, &qword_100590848, &qword_100493E48);
  v27 = *(v26 + *(v13 + 48));
  v28 = *(v27 + 16);
  swift_beginAccess();
  v81 = v28;
  if (!v28)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_23:

    sub_100016290(v74, &qword_10058FEC8, &qword_100493978);
    v44 = v31[2];
    if (v44)
    {
      v45 = 0;
      v46 = v31 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
      v83 = (v76 + 8);
      v84 = (v76 + 16);
      v81 = v46;
      v82 = v31;
      while (1)
      {
        if (v45 >= v31[2])
        {
          goto LABEL_43;
        }

        v47 = *(v87 + 72);
        v48 = v85;
        sub_1001D45C0(&v46[v47 * v45], v85, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        v49 = *v84;
        v50 = v88;
        (*v84)(v88, v48, v89);
        swift_beginAccess();
        sub_1001D45C0(v48, v86, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v1[2];
        v52 = v90;
        v1[2] = 0x8000000000000000;
        v53 = sub_10002A440(v50);
        v55 = v52[2];
        v56 = (v54 & 1) == 0;
        v57 = __OFADD__(v55, v56);
        v58 = v55 + v56;
        if (v57)
        {
          goto LABEL_44;
        }

        v59 = v54;
        if (v52[3] < v58)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_33;
        }

        v70 = v53;
        sub_100196DF0();
        v53 = v70;
        v61 = v90;
        if ((v59 & 1) == 0)
        {
LABEL_34:
          v62 = v44;
          v63 = v1;
          v61[(v53 >> 6) + 8] |= 1 << v53;
          v64 = v76;
          v65 = v53;
          v66 = v88;
          v67 = v89;
          v49(v61[6] + *(v76 + 72) * v53, v88, v89);
          sub_1001D6B5C(v86, v61[7] + v65 * v47, type metadata accessor for LongTermPairingKeys.PublicIdentity);
          (*(v64 + 8))(v66, v67);
          v68 = v61[2];
          v57 = __OFADD__(v68, 1);
          v69 = v68 + 1;
          if (v57)
          {
            goto LABEL_45;
          }

          v61[2] = v69;
          v1 = v63;
          v44 = v62;
          v46 = v81;
          v31 = v82;
          goto LABEL_26;
        }

LABEL_25:
        sub_1001D7894(v86, v61[7] + v53 * v47, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        (*v83)(v88, v89);
LABEL_26:
        ++v45;
        v1[2] = v61;

        swift_endAccess();
        sub_1001D46E4(v85, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        if (v44 == v45)
        {
          v71 = v1[12];
          if (v71)
          {
            v72 = v1[13];

            v71(v73);
            sub_100010520(v71, v72);
          }

          sub_100016290(v75, &qword_100590848, &qword_100493E48);
          return v31;
        }
      }

      sub_10018FDE8(v58, isUniquelyReferenced_nonNull_native);
      v53 = sub_10002A440(v88);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_46;
      }

LABEL_33:
      v61 = v90;
      if ((v59 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    sub_100016290(v75, &qword_100590848, &qword_100493E48);

    return 0;
  }

  v29 = 0;
  v78 = (v76 + 8);
  v79 = (v76 + 16);
  v30 = (v87 + 56);
  v31 = _swiftEmptyArrayStorage;
  v32 = v77;
  v80 = v27;
  while (v29 < *(v27 + 16))
  {
    v34 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v35 = *(v87 + 72);
    sub_1001D45C0(v27 + v34 + v35 * v29, v10, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    (*v79)(v32, v10, v89);
    v36 = v1[2];
    if (!*(v36 + 16))
    {
      goto LABEL_12;
    }

    v37 = sub_10002A440(v32);
    if ((v38 & 1) == 0)
    {

LABEL_12:
      (*v78)(v32, v89);
      v39 = v83;
      (*v30)(v83, 1, 1, v82);
      sub_100016290(v39, &qword_10058FE50, &unk_100493930);
      sub_1001D6B5C(v10, v84, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v91 = v31;
      if ((v40 & 1) == 0)
      {
        sub_1000C078C(0, v31[2] + 1, 1);
        v31 = v91;
      }

      v42 = v31[2];
      v41 = v31[3];
      if (v42 >= v41 >> 1)
      {
        sub_1000C078C((v41 > 1), v42 + 1, 1);
        v31 = v91;
      }

      v31[2] = v42 + 1;
      sub_1001D6B5C(v84, v31 + v34 + v42 * v35, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      v32 = v77;
      goto LABEL_7;
    }

    v33 = v83;
    sub_1001D45C0(*(v36 + 56) + v37 * v35, v83, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    (*v78)(v32, v89);

    (*v30)(v33, 0, 1, v82);
    sub_100016290(v33, &qword_10058FE50, &unk_100493930);
    sub_1001D46E4(v10, type metadata accessor for LongTermPairingKeys.PublicIdentity);
LABEL_7:
    ++v29;
    v27 = v80;
    if (v81 == v29)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001C0584@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a2;
  v35 = a3;
  v38 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v4 = *(v38 - 8);
  __chkstk_darwin();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v34 - v7;
  __chkstk_darwin();
  v10 = &v34 - v9;
  sub_10005DC58(&qword_10058FE50, &unk_100493930);
  __chkstk_darwin();
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v34 - v12;
  swift_beginAccess();
  v34 = v3;
  v13 = *(v3 + 16);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v19 = 0;
  if (!v16)
  {
LABEL_5:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        v21 = 1;
        v22 = v37;
        goto LABEL_12;
      }

      v16 = *(v13 + 64 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  while (1)
  {
    v20 = v19;
LABEL_8:
    sub_1001D45C0(*(v13 + 56) + *(v4 + 72) * (__clz(__rbit64(v16)) | (v20 << 6)), v10, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    sub_1001D6B5C(v10, v8, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    if (v39(v8))
    {
      break;
    }

    v16 &= v16 - 1;
    result = sub_1001D46E4(v8, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v19 = v20;
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  v22 = v37;
  sub_1001D6B5C(v8, v37, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v21 = 0;
LABEL_12:
  v23 = *(v4 + 56);
  v24 = v38;
  v23(v22, v21, 1, v38);

  v25 = *(v4 + 48);
  if (v25(v22, 1, v24) == 1)
  {
    result = sub_1001BFB10();
    if (result)
    {
      v26 = result;
      v27 = *(result + 16);
      if (v27)
      {
        v28 = 0;
        while (v28 < *(v26 + 16))
        {
          sub_1001D45C0(v26 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28, v6, type metadata accessor for LongTermPairingKeys.PublicIdentity);
          if (v39(v6))
          {

            v30 = v36;
            sub_1001D6B5C(v6, v36, type metadata accessor for LongTermPairingKeys.PublicIdentity);
            v29 = 0;
            v24 = v38;
            goto LABEL_24;
          }

          ++v28;
          result = sub_1001D46E4(v6, type metadata accessor for LongTermPairingKeys.PublicIdentity);
          if (v27 == v28)
          {
            goto LABEL_19;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

LABEL_19:

      v29 = 1;
      v24 = v38;
      v30 = v36;
LABEL_24:
      v22 = v37;
    }

    else
    {
      v29 = 1;
      v30 = v36;
    }

    v23(v30, v29, 1, v24);
    v32 = v25(v22, 1, v24);
    v31 = v35;
    if (v32 != 1)
    {
      sub_100016290(v22, &qword_10058FE50, &unk_100493930);
    }
  }

  else
  {
    v30 = v36;
    sub_1001D6B5C(v22, v36, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v23(v30, 0, 1, v24);
    v31 = v35;
  }

  if (v25(v30, 1, v24) == 1)
  {
    sub_100016290(v30, &qword_10058FE50, &unk_100493930);
    v33 = 1;
  }

  else
  {
    sub_1001D6B5C(v30, v31, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v33 = 0;
  }

  return (v23)(v31, v33, 1, v24);
}

uint64_t sub_1001C0AC8()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = v10 - v6;
  v10[5] = v1;
  swift_beginAccess();
  v10[1] = *(v1 + 16);
  v8 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  type metadata accessor for LongTermPairingKeys.PairedDevices();

  sub_10005DC58(&qword_100590830, &qword_100493E38);
  sub_10000CADC(&qword_100590838, &qword_100590830, &qword_100493E38, &protocol conformance descriptor for [A : B].Values);
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1001C0CDC()
{
  swift_beginAccess();
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 0x7365636976656420;
  v0._object = 0xE800000000000000;
  String.append(_:)(v0);
  return v2;
}

uint64_t LongTermPairingKeys.updatedPairedDevicesHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for LongTermPairingKeys(0) + 24));
  v2 = *(v1 + 96);
  sub_10001F89C(v2, *(v1 + 104));
  return v2;
}

uint64_t LongTermPairingKeys.updatedPairedDevicesHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for LongTermPairingKeys(0) + 24));
  v6 = *(v5 + 96);
  v7 = *(v5 + 104);
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;

  return sub_100010520(v6, v7);
}

uint64_t (*LongTermPairingKeys.updatedPairedDevicesHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + *(type metadata accessor for LongTermPairingKeys(0) + 24));
  a1[2] = v3;
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  *a1 = v4;
  a1[1] = v5;
  sub_10001F89C(v4, v5);
  return sub_1001C0E78;
}