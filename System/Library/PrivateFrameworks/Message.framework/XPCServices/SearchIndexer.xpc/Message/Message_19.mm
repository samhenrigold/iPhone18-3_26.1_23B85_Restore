void sub_100141F1C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v6 = a1 + 1;
    v4 = a1[1];
    v5 = v6[1];
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
  }

  else
  {
    __break(1u);
  }
}

Swift::Int sub_100141F40(uint64_t a1, uint64_t a2)
{
  if ((static WindowOfInterestSizes.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0 || *(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18))
  {
    return 0;
  }

  v4 = *(a1 + 25) ? 256 : 0;
  v5 = v4 | *(a1 + 24);
  v6 = *(a1 + 26) ? 0x10000 : 0;
  v7 = *(a2 + 25) ? 256 : 0;
  v8 = v7 | *(a2 + 24);
  v9 = *(a2 + 26) ? 0x10000 : 0;
  if (!static Environment.__derived_struct_equals(_:_:)(v5 | v6, *(a1 + 32), *(a1 + 40), *(a1 + 48), v8 | v9, *(a2 + 32), *(a2 + 40), *(a2 + 48)))
  {
    return 0;
  }

  if ((sub_100083010(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  if ((_s13IMAP2Behavior19RunningSyncRequestsV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 120);
  v28[2] = *(a1 + 104);
  v28[3] = v10;
  v11 = *(a1 + 152);
  v28[4] = *(a1 + 136);
  v28[5] = v11;
  v12 = *(a1 + 88);
  v28[0] = *(a1 + 72);
  v28[1] = v12;
  v13 = *(a2 + 120);
  v27[2] = *(a2 + 104);
  v27[3] = v13;
  v14 = *(a2 + 152);
  v27[4] = *(a2 + 136);
  v27[5] = v14;
  v15 = *(a2 + 88);
  v27[0] = *(a2 + 72);
  v27[1] = v15;
  if ((sub_10010D2D0(v28, v27) & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 184);
  v17 = *(a1 + 216);
  v25[2] = *(a1 + 200);
  v26[0] = v17;
  *(v26 + 12) = *(a1 + 228);
  v25[0] = *(a1 + 168);
  v25[1] = v16;
  v18 = *(a2 + 184);
  v19 = *(a2 + 216);
  v23[2] = *(a2 + 200);
  v24[0] = v19;
  *(v24 + 12) = *(a2 + 228);
  v23[0] = *(a2 + 168);
  v23[1] = v18;
  if ((sub_1000C9B9C(v25, v23) & 1) == 0 || (sub_1000FFC98(*(a1 + 248), *(a2 + 248)) & 1) == 0)
  {
    return 0;
  }

  v20 = *(a1 + 256);
  v21 = *(a2 + 256);

  return sub_100083124(v20, v21);
}

uint64_t sub_100142140()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100142178(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1001422B0()
{

  if (*(v0 + 88) >= 3uLL)
  {
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100142378()
{

  sub_1000197E0((v0 + 40));

  if (*(v0 + 104))
  {
  }

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1001423EC()
{
  sub_1000197E0((v0 + 24));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10014244C()
{
  sub_1000197E0((v0 + 24));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1001424B4()
{
  sub_1000197E0((v0 + 24));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100142514()
{

  sub_1000197E0((v0 + 32));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10014261C()
{
  sub_1000197E0((v0 + 24));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100142674(uint64_t a1, void *a2)
{
  memcpy(v10, a2, sizeof(v10));
  v11 = v10[32];
  v3 = BYTE1(v10[3]);
  v4 = v10[4];
  v5 = v10[7];

  sub_100166D28();
  v7 = v6;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
  }

  else
  {
    sub_100166E18(v6);
    sub_100013AD0(&off_100598658, v5);
    sub_100166E18(v7);
    v8 = sub_100013CF4(v5);

    if (v8 & 1) == 0 && (v3)
    {
      sub_100166E18(v7);
    }
  }

  result = sub_100025F40(&v11, &qword_1005D15A8, &qword_1004D6988);
  a2[32] = _swiftEmptySetSingleton;
  return result;
}

uint64_t sub_100142774(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100142788(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001427A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001427EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10014286C()
{
  result = qword_1005D1610;
  if (!qword_1005D1610)
  {
    result = swift_getWitnessTable(byte_1004D6AD4, &type metadata for State.SyncSteps, v0, v1);
    atomic_store(result, &qword_1005D1610);
  }

  return result;
}

uint64_t sub_100142970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001429D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100142A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100142AA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = *(a1 + 16);
  sub_100092448(0, v1, 0);
  v2 = a1 + 64;
  result = sub_1004A6554();
  v5 = v26;
  v4 = a1;
  v6 = 0;
  v7 = *(a1 + 36);
  v28 = v7;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v4 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v2 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_29;
    }

    if (v7 != *(v4 + 36))
    {
      goto LABEL_30;
    }

    v11 = *(*(v4 + 56) + 32 * result);
    switch(v11)
    {
      case 2:
        v12 = 0xE800000000000000;
        v13 = 0x6369646F69726570;
        break;
      case 4:
        v13 = 0x74696E4972657375;
        v12 = 0xED00006465746169;
        break;
      case 3:
        v12 = 0xE400000000000000;
        v13 = 1752397168;
        break;
      default:
        v12 = 0xE800000000000000;
        v13 = 0x6C6C69466B636162;
        break;
    }

    v14 = *(*(v4 + 48) + 4 * result);
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      v25 = result;
      sub_100092448((v15 > 1), v16 + 1, 1);
      v4 = a1;
      v7 = v28;
      v5 = v26;
      result = v25;
    }

    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[3 * v16];
    *(v17 + 8) = v14;
    v17[5] = v13;
    v17[6] = v12;
    v8 = 1 << *(v4 + 32);
    if (result >= v8)
    {
      goto LABEL_31;
    }

    v2 = a1 + 64;
    v18 = *(a1 + 64 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_32;
    }

    if (v7 != *(v4 + 36))
    {
      goto LABEL_33;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 72 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_100020944(result, v28, 0);
          v4 = a1;
          v7 = v28;
          v5 = v26;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v28, 0);
      v4 = a1;
      v7 = v28;
      v5 = v26;
    }

LABEL_4:
    ++v6;
    result = v8;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
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
  return result;
}

void *sub_100142D94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100092428(0, v1, 0);
  v3 = a1 + 64;
  result = sub_1004A6554();
  v5 = result;
  v6 = 0;
  v7 = *(a1 + 36);
  v24 = v1;
  v25 = v7;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v7 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v26 = v6;
    v27 = *(*(a1 + 56) + 2 * v5);

    v11 = OpaqueMailboxID.description.getter(v10);
    v13 = v12;

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_100092428((v14 > 1), v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[3 * v15];
    v16[4] = v11;
    v16[5] = v13;
    v16[6] = v27;
    v8 = 1 << *(a1 + 32);
    if (v5 >= v8)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v9);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    v7 = v25;
    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 72 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_100020944(v5, v25, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v5, v25, 0);
    }

LABEL_4:
    v6 = v26 + 1;
    v5 = v8;
    if (v26 + 1 == v24)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100142FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = *(a1 + 16);
  sub_100092468(0, v1, 0);
  v3 = a1 + 64;
  result = sub_1004A6554();
  v5 = v23;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(*(a1 + 48) + 4 * result);
    v11 = *(a1 + 36);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v21 = *(a1 + 36);
      v22 = result;
      sub_100092468((v12 > 1), v13 + 1, 1);
      v5 = v23;
      v11 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    *(&_swiftEmptyArrayStorage[4] + v13) = v10;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v8);
    if ((v14 & v9) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (result & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_100020944(result, v11, 0);
          v5 = v23;
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v11, 0);
      v5 = v23;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100143218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = *(a1 + 16);
  sub_100092468(0, v1, 0);
  v3 = a1 + 56;
  result = sub_1004A6554();
  v5 = v23;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(*(a1 + 48) + 4 * result);
    v11 = *(a1 + 36);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v21 = *(a1 + 36);
      v22 = result;
      sub_100092468((v12 > 1), v13 + 1, 1);
      v5 = v23;
      v11 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    *(&_swiftEmptyArrayStorage[4] + v13) = v10;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v8);
    if ((v14 & v9) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (result & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_100020944(result, v11, 0);
          v5 = v23;
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v11, 0);
      v5 = v23;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_100143434(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_100092508(0, v1, 0);
  v3 = v2 + 56;
  result = sub_1004A6554();
  v5 = result;
  v6 = 0;
  v23 = v2 + 64;
  v24 = v1;
  v25 = v2 + 56;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v26 = v6;
    v27 = *(v2 + 36);
    v9 = (*(v2 + 48) + 16 * v5);
    v10 = v2;
    v11 = *v9;
    v12 = v9[1];
    result = sub_100014CEC(*v9, v12);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      result = sub_100092508((v13 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v11;
    v15[5] = v12;
    v7 = 1 << *(v10 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v2 = v10;
    v3 = v25;
    v16 = *(v25 + 8 * v8);
    if ((v16 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v27 != *(v2 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v5 & 0x3F));
    if (v17)
    {
      v7 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v8 << 6;
      v19 = v8 + 1;
      v20 = (v23 + 8 * v8);
      while (v19 < (v7 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_100020944(v5, v27, 0);
          v7 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v5, v27, 0);
    }

LABEL_4:
    v6 = v26 + 1;
    v5 = v7;
    if (v26 + 1 == v24)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_10014365C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_1000924E8(0, v1, 0);
  v3 = v2 + 64;
  result = sub_1004A6554();
  v5 = result;
  v6 = 0;
  v7 = *(v2 + 36);
  v27 = v2 + 72;
  v28 = v1;
  v29 = v7;
  v30 = v2 + 64;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    if (v7 != *(v2 + 36))
    {
      goto LABEL_26;
    }

    v31 = v6;
    v10 = *(v2 + 56);
    v11 = (*(v2 + 48) + 16 * v5);
    v12 = v2;
    v13 = *v11;
    v14 = v11[1];
    v15 = (v10 + 24 * v5);
    v33 = *v15;
    if (*(v15 + 16))
    {
      v16 = -1;
    }

    else
    {
      v16 = *(v15 + 1);
    }

    v32 = v16;
    result = sub_100014CEC(v13, v14);
    v18 = _swiftEmptyArrayStorage[2];
    v17 = _swiftEmptyArrayStorage[3];
    if (v18 >= v17 >> 1)
    {
      result = sub_1000924E8((v17 > 1), v18 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v18 + 1;
    v19 = &_swiftEmptyArrayStorage[4 * v18];
    v19[4] = v13;
    v19[5] = v14;
    *(v19 + 12) = v33;
    v19[7] = v32;
    v8 = 1 << *(v12 + 32);
    if (v5 >= v8)
    {
      goto LABEL_27;
    }

    v2 = v12;
    v3 = v30;
    v20 = *(v30 + 8 * v9);
    if ((v20 & (1 << v5)) == 0)
    {
      goto LABEL_28;
    }

    v7 = v29;
    if (v29 != *(v2 + 36))
    {
      goto LABEL_29;
    }

    v21 = v20 & (-2 << (v5 & 0x3F));
    if (v21)
    {
      v8 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v9 << 6;
      v23 = v9 + 1;
      v24 = (v27 + 8 * v9);
      while (v23 < (v8 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_100020944(v5, v29, 0);
          v8 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v5, v29, 0);
    }

LABEL_4:
    v6 = v31 + 1;
    v5 = v8;
    if (v31 + 1 == v28)
    {
      return _swiftEmptyArrayStorage;
    }
  }

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
  return result;
}

unint64_t sub_1001438D8(uint64_t *a1, uint64_t a2)
{
  v16[2] = a2;
  v4 = sub_10000C9C0(&qword_1005D1A60, &qword_1004D7CC8);
  __chkstk_darwin(v4);
  v6 = (v16 - v5);
  result = sub_10000E268(a1, v16 - v5, &qword_1005D1A58, &qword_1004D7CC0);
  v8 = *a1;
  v9 = v6[1];
  if (v8 == v9)
  {
LABEL_14:
    *(v6 + *(v4 + 36)) = v8;
    return sub_100025F40(v6, &qword_1005D1A60, &qword_1004D7CC8);
  }

  else
  {
    v16[0] = v4;
    v16[1] = v2;
    while (v8 < v9 && v8 >= *v6)
    {
      sub_10000C9C0(&qword_1005D1A58, &qword_1004D7CC0);
      v10 = sub_10000C9C0(&qword_1005CEBE8, &qword_1004D16E0);
      MessageIdentifierSet.RangeView.subscript.getter(v10, v17);
      v11 = v17[0];
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      v12 = sub_1004A7044();
      result = sub_1004A7074();
      if (v8 < v12 || v8 >= result)
      {
        goto LABEL_16;
      }

      v17[0] = v11;
      v14 = sub_1000796C4();
      result = Range<>.init<A>(_:)(v17, &type metadata for SequenceNumber, v14);
      v17[4] = result;
      if (HIDWORD(result) != result)
      {
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v15 = sub_1004A70B4();
        sub_1004A7064();
        result = v15(v17, 0);
      }

      if (v9 == ++v8)
      {
        v8 = v9;
        v4 = v16[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_100143B14(uint64_t *a1, uint64_t a2)
{
  v16[2] = a2;
  v4 = sub_10000C9C0(&qword_1005D18D0, &unk_1004D7040);
  __chkstk_darwin(v4);
  v6 = (v16 - v5);
  result = sub_10000E268(a1, v16 - v5, &qword_1005D18C8, &unk_1004D7030);
  v8 = *a1;
  v9 = v6[1];
  if (v8 == v9)
  {
LABEL_14:
    *(v6 + *(v4 + 36)) = v8;
    return sub_100025F40(v6, &qword_1005D18D0, &unk_1004D7040);
  }

  else
  {
    v16[0] = v4;
    v16[1] = v2;
    while (v8 < v9 && v8 >= *v6)
    {
      sub_10000C9C0(&qword_1005D18C8, &unk_1004D7030);
      v10 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
      MessageIdentifierSet.RangeView.subscript.getter(v10, v17);
      v11 = v17[0];
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      v12 = sub_1004A7044();
      result = sub_1004A7074();
      if (v8 < v12 || v8 >= result)
      {
        goto LABEL_16;
      }

      v17[0] = v11;
      v14 = sub_100016948();
      result = Range<>.init<A>(_:)(v17, &type metadata for UID, v14);
      v17[4] = result;
      if (HIDWORD(result) != result)
      {
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v15 = sub_1004A70B4();
        sub_1004A7064();
        result = v15(v17, 0);
      }

      if (v9 == ++v8)
      {
        v8 = v9;
        v4 = v16[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_100143D50()
{
  v0 = sub_10000C9C0(&qword_1005D18C8, &unk_1004D7030);
  __chkstk_darwin(v0);
  v2 = (&v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v5 = (&v47 - v4);
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v12 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v12 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v21 = sub_1004A70C4();
  result = 0;
  if ((v21 & 1) == 0)
  {
    v50 = v11;
    v51 = v0;
    v48 = v2;
    v49 = v8;
    v52 = v6;
    MessageIdentifierSet.ranges.getter(v20);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v23 = sub_1004A7044();
    v24 = sub_1004A7074();
    v25 = sub_1004A7044();
    result = sub_1004A7074();
    if (v23 < v25 || result < v23)
    {
      __break(1u);
    }

    else
    {
      v27 = sub_1004A7044();
      v28 = sub_1004A7074();
      result = sub_100025F40(v20, &qword_1005CD7A0, &unk_1004CF590);
      if (v24 >= v27 && v28 >= v24)
      {
        if (!__OFSUB__(v24, v23))
        {
          if (v24 - v23 < 100)
          {
            return MessageIdentifierSet.debugDescription.getter();
          }

          MessageIdentifierSet.ranges.getter(v17);
          v29 = sub_1004A7044();
          v30 = sub_1004A7074();
          v31 = sub_10014A250(v29, 45, v30);
          if (v32)
          {
            v31 = sub_1004A7074();
          }

          v33 = v31;
          v34 = v50;
          result = sub_1004A7044();
          if (v33 >= result)
          {
            v35 = result;
            v36 = sub_1004A7044();
            result = sub_1004A7074();
            if (result >= v36)
            {
              if (v35 >= v36)
              {
                if (result >= v33)
                {
                  sub_100025FDC(v17, v5 + *(v51 + 40), &qword_1005CD7A0, &unk_1004CF590);
                  *v5 = v35;
                  v5[1] = v33;
                  sub_100016D2C();
                  sub_1004A7114();
                  sub_100143B14(v5, v34);
                  sub_100025F40(v5, &qword_1005D18C8, &unk_1004D7030);
                  MessageIdentifierSet.ranges.getter(v14);
                  v37 = sub_1004A7074();
                  v38 = sub_1004A7044();
                  v39 = sub_10014A250(v37, -45, v38);
                  if (v40)
                  {
                    v41 = sub_1004A7044();
                  }

                  else
                  {
                    v41 = v39;
                  }

                  result = sub_1004A7074();
                  if (result >= v41)
                  {
                    v42 = result;
                    v43 = sub_1004A7044();
                    result = sub_1004A7074();
                    if (result >= v43)
                    {
                      if (v41 >= v43)
                      {
                        if (result >= v42)
                        {
                          v44 = v48;
                          sub_100025FDC(v14, v48 + *(v51 + 40), &qword_1005CD7A0, &unk_1004CF590);
                          *v44 = v41;
                          v44[1] = v42;
                          v45 = v49;
                          sub_1004A7114();
                          sub_100143B14(v44, v45);
                          sub_100025F40(v44, &qword_1005D18C8, &unk_1004D7030);
                          v54 = 0;
                          v55 = 0xE000000000000000;
                          sub_1004A6934();
                          v56._countAndFlagsBits = 3026478;
                          v56._object = 0xE300000000000000;
                          sub_1004A5994(v56);
                          sub_1004A6934();
                          v57._countAndFlagsBits = 10272;
                          v57._object = 0xE200000000000000;
                          sub_1004A5994(v57);
                          v53 = MessageIdentifierSet.count.getter();
                          v58._countAndFlagsBits = sub_1004A6CE4();
                          sub_1004A5994(v58);

                          v59._countAndFlagsBits = 41;
                          v59._object = 0xE100000000000000;
                          sub_1004A5994(v59);
                          v46 = v54;
                          sub_100025F40(v45, &unk_1005D91B0, &unk_1004CF400);
                          sub_100025F40(v34, &unk_1005D91B0, &unk_1004CF400);
                          return v46;
                        }

LABEL_36:
                        __break(1u);
                        return result;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_10014433C()
{
  v0 = sub_10000C9C0(&qword_1005D1A58, &qword_1004D7CC0);
  __chkstk_darwin(v0);
  v2 = (&v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v5 = (&v47 - v4);
  v6 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v12 = sub_10000C9C0(&qword_1005CEBE8, &qword_1004D16E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v21 = sub_1004A70C4();
  result = 0;
  if ((v21 & 1) == 0)
  {
    v50 = v11;
    v51 = v0;
    v48 = v2;
    v49 = v8;
    v52 = v6;
    MessageIdentifierSet.ranges.getter(v20);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v23 = sub_1004A7044();
    v24 = sub_1004A7074();
    v25 = sub_1004A7044();
    result = sub_1004A7074();
    if (v23 < v25 || result < v23)
    {
      __break(1u);
    }

    else
    {
      v27 = sub_1004A7044();
      v28 = sub_1004A7074();
      result = sub_100025F40(v20, &qword_1005CEBE8, &qword_1004D16E0);
      if (v24 >= v27 && v28 >= v24)
      {
        if (!__OFSUB__(v24, v23))
        {
          if (v24 - v23 < 100)
          {
            return MessageIdentifierSet.debugDescription.getter();
          }

          MessageIdentifierSet.ranges.getter(v17);
          v29 = sub_1004A7044();
          v30 = sub_1004A7074();
          v31 = sub_10014A250(v29, 45, v30);
          if (v32)
          {
            v31 = sub_1004A7074();
          }

          v33 = v31;
          v34 = v50;
          result = sub_1004A7044();
          if (v33 >= result)
          {
            v35 = result;
            v36 = sub_1004A7044();
            result = sub_1004A7074();
            if (result >= v36)
            {
              if (v35 >= v36)
              {
                if (result >= v33)
                {
                  sub_100025FDC(v17, v5 + *(v51 + 40), &qword_1005CEBE8, &qword_1004D16E0);
                  *v5 = v35;
                  v5[1] = v33;
                  sub_100016D2C();
                  sub_1004A7114();
                  sub_1001438D8(v5, v34);
                  sub_100025F40(v5, &qword_1005D1A58, &qword_1004D7CC0);
                  MessageIdentifierSet.ranges.getter(v14);
                  v37 = sub_1004A7074();
                  v38 = sub_1004A7044();
                  v39 = sub_10014A250(v37, -45, v38);
                  if (v40)
                  {
                    v41 = sub_1004A7044();
                  }

                  else
                  {
                    v41 = v39;
                  }

                  result = sub_1004A7074();
                  if (result >= v41)
                  {
                    v42 = result;
                    v43 = sub_1004A7044();
                    result = sub_1004A7074();
                    if (result >= v43)
                    {
                      if (v41 >= v43)
                      {
                        if (result >= v42)
                        {
                          v44 = v48;
                          sub_100025FDC(v14, v48 + *(v51 + 40), &qword_1005CEBE8, &qword_1004D16E0);
                          *v44 = v41;
                          v44[1] = v42;
                          v45 = v49;
                          sub_1004A7114();
                          sub_1001438D8(v44, v45);
                          sub_100025F40(v44, &qword_1005D1A58, &qword_1004D7CC0);
                          v54 = 0;
                          v55 = 0xE000000000000000;
                          sub_1004A6934();
                          v56._countAndFlagsBits = 3026478;
                          v56._object = 0xE300000000000000;
                          sub_1004A5994(v56);
                          sub_1004A6934();
                          v57._countAndFlagsBits = 10272;
                          v57._object = 0xE200000000000000;
                          sub_1004A5994(v57);
                          v53 = MessageIdentifierSet.count.getter();
                          v58._countAndFlagsBits = sub_1004A6CE4();
                          sub_1004A5994(v58);

                          v59._countAndFlagsBits = 41;
                          v59._object = 0xE100000000000000;
                          sub_1004A5994(v59);
                          v46 = v54;
                          sub_100025F40(v45, &qword_1005CDA58, &qword_1004CF7C0);
                          sub_100025F40(v34, &qword_1005CDA58, &qword_1004CF7C0);
                          return v46;
                        }

LABEL_36:
                        __break(1u);
                        return result;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  return result;
}

double StateWithTasks.stateCaptureValue(logName:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for StateWithTasks(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014FA6C(v3, v9, type metadata accessor for StateWithTasks);

  sub_10014BF24(v9, a1, a2, v16);
  v10 = v16[7];
  *(a3 + 96) = v16[6];
  *(a3 + 112) = v10;
  *(a3 + 128) = v16[8];
  *(a3 + 144) = v17;
  v11 = v16[3];
  *(a3 + 32) = v16[2];
  *(a3 + 48) = v11;
  v12 = v16[5];
  *(a3 + 64) = v16[4];
  *(a3 + 80) = v12;
  result = *v16;
  v14 = v16[1];
  *a3 = v16[0];
  *(a3 + 16) = v14;
  return result;
}

__n128 StateWithTasks.localDeselectedMailboxesCaptureValue()@<Q0>(char **a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 216);
  v5[2] = *(v1 + 200);
  v6[0] = v3;
  *(v6 + 12) = *(v1 + 228);
  v5[0] = *(v1 + 168);
  v5[1] = v2;
  sub_100144A6C(v5, a1);
  return result;
}

void sub_100144A6C(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  if (a1[3])
  {
    v6 = *(v3 + 16);

    v7 = 0;
    v8 = v3 + 32;
    v9 = _swiftEmptyArrayStorage;
LABEL_3:
    v10 = (v8 + 176 * v7);
    while (1)
    {
      if (v6 == v7)
      {
        sub_100020D58(v3, v4, v5, 1);
        a2[3] = sub_10000C9C0(&qword_1005D17D0, &qword_1004D6D10);
        a2[4] = sub_100152568(&qword_1005D17C8, &qword_1005D17D0, &qword_1004D6D10, sub_10014EBB8);
        *a2 = v9;
        return;
      }

      if (v7 >= v6)
      {
        break;
      }

      v11 = *v10;
      v12 = v10[2];
      v31[1] = v10[1];
      v31[2] = v12;
      v31[0] = v11;
      v13 = v10[3];
      v14 = v10[4];
      v15 = v10[6];
      v31[5] = v10[5];
      v32 = v15;
      v31[3] = v13;
      v31[4] = v14;
      v16 = v10[7];
      v17 = v10[8];
      v18 = v10[10];
      v35 = v10[9];
      v36 = v18;
      v33 = v16;
      v34 = v17;
      v19 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_16;
      }

      ++v7;
      v10 += 11;
      if (!v32)
      {
        v28 = v8;
        sub_10000E08C(v31, v29);
        sub_10014E150(v31, __src);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100087D1C(0, *(v9 + 2) + 1, 1, v9);
        }

        v21 = *(v9 + 2);
        v20 = *(v9 + 3);
        if (v21 >= v20 >> 1)
        {
          v9 = sub_100087D1C((v20 > 1), v21 + 1, 1, v9);
        }

        *(v9 + 2) = v21 + 1;
        memcpy(&v9[392 * v21 + 32], __src, 0x188uLL);
        v7 = v19;
        v8 = v28;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    sub_100020D10(*a1, v4, v5, 0);
    sub_10014CBB8(v3, v4, v5);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    a2[3] = &_s13CapturedStateV16UnknownMailboxesVN;
    a2[4] = sub_10014F8AC();
    *a2 = v23;
    a2[1] = v25;
    a2[2] = v27;
  }
}

char *StateWithTasks.localSelectedMailboxesCaptureValue()@<X0>(char **a1@<X8>)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 216);
  v6[2] = *(v1 + 200);
  v7[0] = v4;
  *(v7 + 12) = *(v1 + 228);
  v6[0] = *(v1 + 168);
  v6[1] = v3;
  result = sub_10014E7C4(v6);
  *a1 = result;
  return result;
}

double StateWithTasks.remoteMailboxesCaptureValue()@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 120);
  v11[2] = *(v1 + 104);
  v11[3] = v3;
  v4 = *(v1 + 152);
  v11[4] = *(v1 + 136);
  v11[5] = v4;
  v5 = *(v1 + 88);
  v11[0] = *(v1 + 72);
  v11[1] = v5;
  sub_10014EAC0(v11, v8);
  sub_10014E934(v11, v8);
  v6 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v6;
  result = *&v9;
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  return result;
}

uint64_t sub_100144D70(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D17E8, &qword_1004D6FE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-1] - v7;
  sub_10002587C(a1, a1[3]);
  sub_10014EF60();
  sub_1004A6FA4();
  LOBYTE(v17) = 0;
  sub_1004A6C44();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_1004A6C44();
    v9 = *(v3 + 48);
    v10 = *(v3 + 80);
    v23 = *(v3 + 64);
    v24 = v10;
    v11 = *(v3 + 48);
    v22[0] = *(v3 + 32);
    v22[1] = v11;
    v12 = *(v3 + 80);
    v19 = v23;
    v20 = v12;
    v25 = *(v3 + 96);
    v21 = *(v3 + 96);
    v17 = v22[0];
    v18 = v9;
    v27 = 2;
    sub_10014EFB4(v22, v15);
    sub_10014F010();
    sub_1004A6C74();
    v15[2] = v19;
    v15[3] = v20;
    v16 = v21;
    v15[0] = v17;
    v15[1] = v18;
    sub_10014F064(v15);
    LOBYTE(v14) = *(v3 + 104);
    v26 = 3;
    sub_10014F0B8();
    sub_1004A6C74();
    *&v14 = *(v3 + 112);
    v26 = 4;
    sub_10000C9C0(&qword_1005D1808, &qword_1004D6FF0);
    sub_100152568(&qword_1005D1810, &qword_1005D1808, &qword_1004D6FF0, sub_10014F10C);
    sub_1004A6C74();
    v14 = *(v3 + 120);
    v26 = 5;
    sub_10014F160();
    sub_1004A6C74();
    *&v14 = *(v3 + 136);
    v26 = 6;
    sub_10000C9C0(&qword_1005D1828, &qword_1004D6FF8);
    sub_10014F1B4();
    sub_1004A6C74();
    *&v14 = *(v3 + 144);
    v26 = 7;
    sub_10014F238();
    sub_1004A6C74();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100145130()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0x736B736174;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656D614E676F6CLL;
    v3 = 0x6D6E6F7269766E65;
    if (v1 != 2)
    {
      v3 = 0xD000000000000018;
    }

    if (*v0)
    {
      v2 = 0x4449656E69676E65;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_100145240@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100150A18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100145274(uint64_t a1)
{
  v2 = sub_10014EF60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001452B0(uint64_t a1)
{
  v2 = sub_10014EF60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100145348(uint64_t a1, unsigned int a2)
{

  v4 = sub_1004A5804();
  v5 = MailboxName.inbox.unsafeMutableAddressor();
  if ((a2 | (a2 << 32)) == (*(v5 + 2) | (*(v5 + 2) << 32)))
  {
    v6 = sub_1000FFC98(a1, *v5);

    if (v6)
    {
      return v4;
    }
  }

  else
  {
  }

  if (sub_1004A5924() >= 3)
  {
    sub_1004A5964();
    sub_1004A6724(16);
    sub_1004A5AB4();
    v7 = sub_1004A5864();

    v9._countAndFlagsBits = 0x6E656C202CA680E2;
    v9._object = 0xAC0000003D687467;
    sub_1004A5994(v9);
    sub_1004A5924();
    v10._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v10);

    return v7;
  }

  return v4;
}

uint64_t sub_1001454DC(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005D1A98, &qword_1004D7CE8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10002587C(a1, a1[3]);
  sub_1001529F0();
  sub_1004A6FA4();
  v8[15] = 0;
  sub_1004A6C44();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1004A6C44();
  v8[13] = 2;
  sub_1004A6C44();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10014567C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000C9C0(&qword_1005D1960, &unk_1004D7C58);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10002587C(a1, a1[3]);
  sub_100150D5C();
  sub_1004A6FA4();
  v14 = a2;
  v13 = 0;
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100150DB0(&qword_1005D0A68, &unk_1005DA9A0, &unk_1004CF770, &protocol witness table for String);
  sub_1004A6C74();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_10000C9C0(&qword_1005D1970, &qword_1004D7C68);
    sub_100152568(&qword_1005D1978, &qword_1005D1970, &qword_1004D7C68, sub_100150E18);
    sub_1004A6C74();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100145888()
{
  v1 = 0x786F626C69616DLL;
  if (*v0 != 1)
  {
    v1 = 0x6567617375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x697463656E6E6F63;
  }
}

uint64_t sub_1001458E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100150F14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10014590C(uint64_t a1)
{
  v2 = sub_1001529F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100145948(uint64_t a1)
{
  v2 = sub_1001529F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001459C0()
{
  if (*v0)
  {
    return 0x6567617375;
  }

  else
  {
    return 0x65786F626C69616DLL;
  }
}

uint64_t sub_1001459FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_100145ADC(uint64_t a1)
{
  v2 = sub_100150D5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100145B18(uint64_t a1)
{
  v2 = sub_100150D5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100145B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69617274736E6F63 && a2 == 0xEB0000000064656ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100145C1C(uint64_t a1)
{
  v2 = sub_100150CB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100145C58(uint64_t a1)
{
  v2 = sub_100150CB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100145C94(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005D1940, &qword_1004D7C48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10002587C(a1, a1[3]);
  sub_100150CB4();
  sub_1004A6FA4();
  sub_1004A6BF4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100145DCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = sub_10000C9C0(&qword_1005D1950, &qword_1004D7C50);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10002587C(a1, a1[3]);
  sub_100150D08();
  sub_1004A6FA4();
  v13 = 0;
  sub_1004A6C94();
  if (!v4)
  {
    v12 = 1;
    sub_1004A6C44();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100145F60()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100145F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_10014605C(uint64_t a1)
{
  v2 = sub_100150D08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100146098(uint64_t a1)
{
  v2 = sub_100150D08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001460F4(void *a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D1A28, &qword_1004D7CA8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_10002587C(a1, a1[3]);
  sub_10015273C();
  sub_1004A6FA4();
  v9[15] = 0;
  sub_1004A6BF4();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9[14] = 1;
  sub_1004A6BF4();
  v9[13] = 2;
  sub_1004A6BF4();
  v9[12] = 3;
  sub_1004A6BF4();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1001462B4()
{
  v1 = 0x7374726F70707573;
  v2 = 0xD00000000000001BLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100146340@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100151030(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100146368(uint64_t a1)
{
  v2 = sub_10015273C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001463A4(uint64_t a1)
{
  v2 = sub_10015273C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001463FC(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005D1A38, &qword_1004D7CB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10002587C(a1, a1[3]);
  sub_100152790();
  sub_1004A6FA4();
  v8[15] = 0;
  sub_1004A6C44();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1004A6BE4();
  v8[13] = 2;
  sub_1004A6BE4();
  v8[12] = 3;
  sub_1004A6BE4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001465BC()
{
  v1 = 1701667182;
  v2 = 0x7475626972747461;
  if (*v0 != 2)
  {
    v2 = 0x556C616963657073;
  }

  if (*v0)
  {
    v1 = 0x6170655368746170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100146648@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001511A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100146670(uint64_t a1)
{
  v2 = sub_100152790();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001466AC(uint64_t a1)
{
  v2 = sub_100152790();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100146724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10000C9C0(&qword_1005D1A48, &qword_1004D7CB8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10002587C(a1, a1[3]);
  sub_1001527E4();
  sub_1004A6FA4();
  v14 = 0;
  sub_1004A6C44();
  if (!v5)
  {
    v13 = 1;
    sub_1004A6C44();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1001468B8(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1890, &qword_1004D7020);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_10002587C(a1, a1[3]);
  sub_10014F3DC();
  sub_1004A6FA4();
  LODWORD(v11[0]) = *v3;
  v12 = 0;
  sub_10014F430();
  sub_1004A6C14();
  if (!v2)
  {
    *&v11[0] = *(v3 + 8);
    v12 = 1;
    sub_10000C9C0(&qword_1005D18A8, &qword_1004D7028);
    sub_100152568(&qword_1005D18B0, &qword_1005D18A8, &qword_1004D7028, sub_10014F484);
    sub_1004A6C14();
    LOBYTE(v11[0]) = 2;
    sub_1004A6C54();
    v9 = *(v3 + 40);
    v11[0] = *(v3 + 24);
    v11[1] = v9;
    v12 = 3;
    sub_10014F4D8();
    sub_1004A6C14();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100146AF8()
{
  if (*v0)
  {
    return 0x6F74617261706573;
  }

  else
  {
    return 0x786966657270;
  }
}

uint64_t sub_100146B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F74617261706573 && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_100146C14(uint64_t a1)
{
  v2 = sub_1001527E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100146C50(uint64_t a1)
{
  v2 = sub_1001527E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100146CAC()
{
  v1 = 0x726576726573;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 0x63617073656D616ELL;
  }

  if (*v0)
  {
    v1 = 0x65786F626C69616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100146D2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10015131C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100146D54(uint64_t a1)
{
  v2 = sub_10014F3DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100146D90(uint64_t a1)
{
  v2 = sub_10014F3DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100146E10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = sub_10000C9C0(&qword_1005D1A68, &qword_1004D7CD0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10002587C(a1, a1[3]);
  sub_100152838();
  sub_1004A6FA4();
  v15 = a2;
  v14 = 0;
  sub_10000C9C0(&qword_1005D1868, &qword_1004D7010);
  sub_100150DB0(&qword_1005D1870, &qword_1005D1868, &qword_1004D7010, &protocol witness table for UInt32);
  sub_1004A6C14();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    sub_10000C9C0(&qword_1005D1A78, &qword_1004D7CD8);
    sub_10015288C();
    sub_1004A6C14();
    v15 = a4;
    v14 = 2;
    sub_10000C9C0(&qword_1005D1A88, &qword_1004D7CE0);
    sub_100152938();
    sub_1004A6C14();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_100147048()
{
  v1 = 0x6552686372616573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53676E69646E6570;
  }
}

uint64_t sub_1001470BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100151490(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001470F0(uint64_t a1)
{
  v2 = sub_100152838();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014712C(uint64_t a1)
{
  v2 = sub_100152838();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100147188(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D19B0, &qword_1004D7C80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10002587C(a1, a1[3]);
  sub_1001523C4();
  sub_1004A6FA4();
  v9 = *(v3 + 4);
  v11[15] = 0;
  v11[12] = v9;
  sub_1004A6C24();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11[11] = 1;
  sub_1004A6BE4();
  v11[10] = 2;
  sub_1004A6C34();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10014733C()
{
  v1 = 0x5764656863746566;
  if (*v0 != 1)
  {
    v1 = 0x4D74736568676968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64696C6156646975;
  }
}

uint64_t sub_1001473B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001515BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001473E0(uint64_t a1)
{
  v2 = sub_1001523C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014741C(uint64_t a1)
{
  v2 = sub_1001523C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100147494(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1A18, &qword_1004D7CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10002587C(a1, a1[3]);
  sub_10015268C();
  sub_1004A6FA4();
  LOBYTE(v12) = 0;
  sub_1004A6C94();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = v12;
    v11[23] = 1;
    sub_1001526E0(&v13, v11);
    sub_10015246C();
    sub_1004A6C74();
    sub_100014D40(v12, *(&v12 + 1));
    LOBYTE(v12) = 2;
    sub_1004A6C44();
    LOBYTE(v12) = 3;
    sub_1004A6C94();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100147678()
{
  v1 = 25705;
  v2 = 1684957547;
  if (*v0 != 2)
  {
    v2 = 7565169;
  }

  if (*v0)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001476D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001516E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100147700(uint64_t a1)
{
  v2 = sub_10015268C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014773C(uint64_t a1)
{
  v2 = sub_10015268C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001477B4(void *a1, uint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  v14[1] = a5;
  v17 = a4;
  v9 = sub_10000C9C0(&qword_1005D1AE0, &qword_1004D7D00);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_10002587C(a1, a1[3]);
  sub_100152BE8();
  sub_1004A6FA4();
  v15 = a2;
  v16 = a3;
  v18 = 0;
  sub_100014CEC(a2, a3);
  sub_10015246C();
  sub_1004A6C74();
  sub_100014D40(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_1004A6C94();
    LOBYTE(v15) = 2;
    sub_1004A6C64();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100147980()
{
  v1 = 6580597;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1001479C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100151844(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001479E8(uint64_t a1)
{
  v2 = sub_100152BE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100147A24(uint64_t a1)
{
  v2 = sub_100152BE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100147A84(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1AF0, &qword_1004D7D08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_10002587C(a1, a1[3]);
  sub_100152C3C();
  sub_1004A6FA4();
  v12[15] = 0;
  sub_1004A6BF4();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12[14] = 1;
  sub_1004A6BE4();
  v12[13] = 2;
  sub_1004A6BE4();
  v9 = *(v3 + 44);
  v12[12] = 3;
  v12[8] = v9;
  sub_1004A6C24();
  v12[7] = 4;
  sub_1004A6BE4();
  v10 = *(v3 + 68);
  v12[6] = 5;
  v12[4] = v10;
  sub_1004A6C24();
  v12[3] = 6;
  sub_1004A6BF4();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100147CC4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x436567617373656DLL;
    v6 = 0x64696C6156646975;
    v7 = 0x4D74736568676968;
    if (a1 != 3)
    {
      v7 = 0x7473656867694879;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x4449557478656ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000019;
    v2 = 0x4D676E697373696DLL;
    if (a1 == 9)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1 == 6)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 == 5)
    {
      v3 = 0x70657453636E7973;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100147E60(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D19C0, &qword_1004D7C88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - v7;
  sub_10002587C(a1, a1[3]);
  sub_100152418();
  sub_1004A6FA4();
  LOBYTE(v31) = 0;
  sub_1004A6C64();
  if (!v2)
  {
    v9 = *(v3 + 12);
    LOBYTE(v31) = 1;
    LOBYTE(v28[0]) = v9;
    sub_1004A6C24();
    v10 = *(v3 + 20);
    LOBYTE(v31) = 2;
    LOBYTE(v28[0]) = v10;
    sub_1004A6C24();
    LOBYTE(v31) = 3;
    sub_1004A6C34();
    LOBYTE(v31) = 4;
    sub_1004A6C34();
    *&v31 = *(v3 + 56);
    LOBYTE(v28[0]) = 5;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100150DB0(&qword_1005D0A68, &unk_1005DA9A0, &unk_1004CF770, &protocol witness table for String);
    sub_1004A6C74();
    *&v31 = *(v3 + 64);
    LOBYTE(v28[0]) = 6;
    sub_10000C9C0(&qword_1005D19D0, &qword_1004D7C90);
    sub_100152568(&qword_1005D19D8, &qword_1005D19D0, &qword_1004D7C90, sub_10015246C);
    sub_1004A6C14();
    v11 = *(v3 + 88);
    v31 = *(v3 + 72);
    v32 = v11;
    v33 = *(v3 + 104);
    LOBYTE(v34) = *(v3 + 120);
    LOBYTE(v28[0]) = 7;
    sub_1001524C0();
    sub_1004A6C74();
    v12 = *(v3 + 176);
    v13 = *(v3 + 144);
    v41 = *(v3 + 160);
    v42 = v12;
    v14 = *(v3 + 176);
    v43 = *(v3 + 192);
    v15 = *(v3 + 144);
    v40[0] = *(v3 + 128);
    v40[1] = v15;
    v33 = v41;
    v34 = v14;
    v35 = *(v3 + 192);
    v44 = *(v3 + 208);
    v36 = *(v3 + 208);
    v31 = v40[0];
    v32 = v13;
    v30 = 8;
    sub_10014F844(v40, v28);
    sub_100152514();
    sub_1004A6C74();
    v28[2] = v33;
    v28[3] = v34;
    v28[4] = v35;
    v29 = v36;
    v28[0] = v31;
    v28[1] = v32;
    sub_10014F87C(v28);
    *&v24 = *(v3 + 216);
    LOBYTE(v21[0]) = 9;
    sub_10000C9C0(&qword_1005D19F8, &qword_1004D7C98);
    sub_100152568(&qword_1005D1A00, &qword_1005D19F8, &qword_1004D7C98, sub_1001525E4);
    sub_1004A6C74();
    v16 = *(v3 + 240);
    v17 = *(v3 + 272);
    v38 = *(v3 + 256);
    v39[0] = v17;
    v18 = *(v3 + 240);
    v37[0] = *(v3 + 224);
    v37[1] = v18;
    v19 = *(v3 + 272);
    v26 = v38;
    v27[0] = v19;
    *(v39 + 14) = *(v3 + 286);
    *(v27 + 14) = *(v3 + 286);
    v24 = v37[0];
    v25 = v16;
    v23 = 10;
    sub_10014F774(v37, v21);
    sub_100152638();
    sub_1004A6C74();
    v21[2] = v26;
    *v22 = v27[0];
    *&v22[14] = *(v27 + 14);
    v21[0] = v24;
    v21[1] = v25;
    sub_10014F7AC(v21);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1001483B8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x6574656C706D6F63;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x5564656972657571;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x676E697373696DLL;
  if (v1 != 1)
  {
    v5 = 1701736292;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001484A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100151954(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001484D4(uint64_t a1)
{
  v2 = sub_100152C3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100148510(uint64_t a1)
{
  v2 = sub_100152C3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100148598@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100151BB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001485CC(uint64_t a1)
{
  v2 = sub_100152418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100148608(uint64_t a1)
{
  v2 = sub_100152418();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100148698(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10000C9C0(&qword_1005D1CA0, &qword_1004D8EC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10002587C(a1, a1[3]);
  sub_1001546F0();
  sub_1004A6FA4();
  v14 = 0;
  sub_1004A6BE4();
  if (!v5)
  {
    v13 = 1;
    sub_1004A6BE4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10014882C(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1AC8, &qword_1004D7CF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10002587C(a1, a1[3]);
  sub_100152B40();
  sub_1004A6FA4();
  LOBYTE(v14) = 0;
  sub_1004A6C54();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1004A6C54();
    LOBYTE(v14) = 2;
    sub_1004A6C54();
    v9 = *(v3 + 24);
    v14 = *(v3 + 8);
    v15 = v9;
    v13 = 3;
    sub_100152B94();
    sub_1004A6C14();
    v10 = *(v3 + 56);
    v14 = *(v3 + 40);
    v15 = v10;
    v13 = 4;
    sub_1004A6C14();
    LOBYTE(v14) = 5;
    sub_1004A6BE4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100148A8C(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1840, &qword_1004D7000);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10002587C(a1, a1[3]);
  sub_10014F28C();
  sub_1004A6FA4();
  v15[0] = 0;
  sub_1004A6C44();
  if (!v2)
  {
    v9 = *(v3 + 32);
    *v15 = *(v3 + 16);
    *&v15[16] = v9;
    v15[32] = *(v3 + 48);
    v14[0] = 1;
    sub_10014F2E0();
    sub_1004A6C74();
    v15[0] = 2;
    sub_1004A6BE4();
    memcpy(v16, (v3 + 72), 0x126uLL);
    memcpy(v15, (v3 + 72), sizeof(v15));
    v14[295] = 3;
    sub_10000E268(v16, v14, &qword_1005D1858, &qword_1004D7008);
    sub_10014F334();
    sub_1004A6C14();
    memcpy(v14, v15, 0x126uLL);
    sub_100025F40(v14, &qword_1005D1858, &qword_1004D7008);
    v13 = *(v3 + 368);
    v12 = 4;
    sub_10000C9C0(&qword_1005D1868, &qword_1004D7010);
    sub_100150DB0(&qword_1005D1870, &qword_1005D1868, &qword_1004D7010, &protocol witness table for UInt32);
    sub_1004A6C14();
    v13 = *(v3 + 376);
    v12 = 5;
    sub_1004A6C14();
    v13 = *(v3 + 384);
    v12 = 6;
    sub_10000C9C0(&qword_1005D1878, &qword_1004D7018);
    sub_100152568(&qword_1005D1880, &qword_1005D1878, &qword_1004D7018, sub_10014F388);
    sub_1004A6C14();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100148E34()
{
  if (*v0)
  {
    return 1701736292;
  }

  else
  {
    return 0x676E69646E6570;
  }
}

uint64_t sub_100148E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_100148F44(uint64_t a1)
{
  v2 = sub_1001546F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100148F80(uint64_t a1)
{
  v2 = sub_1001546F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100148FDC()
{
  v1 = *v0;
  v2 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (v1 == 3)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD00000000000001ALL;
  if (v1 == 1)
  {
    v4 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100149084@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100151F70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001490B8(uint64_t a1)
{
  v2 = sub_100152B40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001490F4(uint64_t a1)
{
  v2 = sub_100152B40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014917C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000011;
    if (v1 != 1)
    {
      v5 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1701667182;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 == 5)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0x74617453636E7973;
    if (v1 != 3)
    {
      v3 = 0x75716552636E7973;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100149264@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10015216C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10014928C(uint64_t a1)
{
  v2 = sub_10014F28C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001492C8(uint64_t a1)
{
  v2 = sub_10014F28C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100149358(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a3;
  v15 = a5;
  v8 = sub_10000C9C0(&qword_1005D1C80, &qword_1004D8EB0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10002587C(a1, a1[3]);
  sub_100154648();
  sub_1004A6FA4();
  v17 = a2;
  v16 = 0;
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100150DB0(&qword_1005D0A68, &unk_1005DA9A0, &unk_1004CF770, &protocol witness table for String);
  sub_1004A6C14();
  if (!v5)
  {
    v17 = v14;
    v16 = 1;
    sub_10000C9C0(&qword_1005D1868, &qword_1004D7010);
    sub_100150DB0(&qword_1005D1870, &qword_1005D1868, &qword_1004D7010, &protocol witness table for UInt32);
    sub_1004A6C14();
    LOBYTE(v17) = 2;
    sub_1004A6C64();
    LOBYTE(v17) = 3;
    sub_1004A6C64();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1001495B4()
{
  v1 = 0x43676E696E6E7572;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x41676E696E6E7572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100149654@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001542C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10014967C(uint64_t a1)
{
  v2 = sub_100154648();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001496B8(uint64_t a1)
{
  v2 = sub_100154648();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100149714(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10000C9C0(&qword_1005D1C90, &qword_1004D8EB8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10002587C(a1, a1[3]);
  sub_10015469C();
  sub_1004A6FA4();
  v14 = 0;
  sub_1004A6C44();
  if (!v5)
  {
    v13 = 1;
    sub_1004A6BE4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1001498A8(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D1AA8, &qword_1004D7CF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10002587C(a1, a1[3]);
  sub_100152A44();
  sub_1004A6FA4();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v13 = 0;
  sub_100152A98();
  sub_1004A6C74();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1004A6C44();
    LOBYTE(v14) = 2;
    sub_1004A6BF4();
    v10 = *(v3 + 72);
    v14 = *(v3 + 56);
    v15 = v10;
    v13 = 3;
    sub_100152AEC();
    sub_1004A6C14();
    LOBYTE(v14) = 4;
    sub_1004A6BF4();
    LOBYTE(v14) = 5;
    sub_1004A6BF4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100149B04(void *a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D1988, &qword_1004D7C70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10002587C(a1, a1[3]);
  sub_100150E6C();
  sub_1004A6FA4();
  v9[1] = a2;
  sub_10000C9C0(&qword_1005D1998, &qword_1004D7C78);
  sub_100152568(&qword_1005D19A0, &qword_1005D1998, &qword_1004D7C78, sub_100150EC0);
  sub_1004A6C74();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100149C8C()
{
  if (*v0)
  {
    return 0x697463656E6E6F63;
  }

  else
  {
    return 0x786F626C69616DLL;
  }
}

uint64_t sub_100149CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x786F626C69616DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_100149DB0(uint64_t a1)
{
  v2 = sub_10015469C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100149DEC(uint64_t a1)
{
  v2 = sub_10015469C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100149E48()
{
  v1 = *v0;
  v2 = 0x79726F74736968;
  v3 = 0x54786F626C69616DLL;
  v4 = 0x6574656C706D6F63;
  if (v1 != 4)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100149F04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100154444(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100149F2C(uint64_t a1)
{
  v2 = sub_100152A44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100149F68(uint64_t a1)
{
  v2 = sub_100152A44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014A004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736B736174 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10014A088(uint64_t a1)
{
  v2 = sub_100150E6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014A0C4(uint64_t a1)
{
  v2 = sub_100150E6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10014A11C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100141B84(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100141044(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10014A250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v6 = sub_1004A7044();
  result = sub_1004A7074();
  if (v6 > a1 || result < a1)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = sub_1004A7044();
  result = sub_1004A7074();
  if (v9 > a3 || result < a3)
  {
    goto LABEL_20;
  }

  v10 = a3 - a1;
  if (__OFSUB__(a3, a1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_15:
  v12 = __OFADD__(a1, a2);
  v11 = a1 + a2;
  if (v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = sub_1004A7044();
  result = sub_1004A7074();
  if (v11 >= v13 && result >= v11)
  {
    return v11;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10014A364(unsigned __int8 a1)
{
  if (a1)
  {
    return sub_1004A58E4();
  }

  else
  {
    return 0;
  }
}

void sub_10014A3F0(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100092488(0, v2, 0);
    v4 = a1 + 64;
    v5 = sub_1004A6554();
    v6 = 0;
    v21 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v23 = *(a1 + 36);
      v9 = *(a1 + 48) + 16 * v5;
      v10 = *v9;
      v24 = *(v9 + 8);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];

      if (v12 >= v11 >> 1)
      {
        sub_100092488((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      v13[4] = v10;
      *(v13 + 10) = v24;
      *(v13 + 11) = a2;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_22;
      }

      v4 = a1 + 64;
      v14 = *(a1 + 64 + 8 * v8);
      if ((v14 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v23 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v15 = v14 & (-2 << (v5 & 0x3F));
      if (v15)
      {
        v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v8 << 6;
        v17 = v8 + 1;
        v18 = (a1 + 72 + 8 * v8);
        while (v17 < (v7 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_100020944(v5, v23, 0);
            v7 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_100020944(v5, v23, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

double sub_10014A628@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  sub_100063BD4(a1, v39);
  v11 = sub_100145348(v8, v9);
  v13 = v12;
  if (!a3)
  {
    goto LABEL_16;
  }

  v14 = sub_10014A364(v10);
  if (!v15)
  {

    goto LABEL_10;
  }

  if (v14 == a2 && v15 == a3)
  {

    goto LABEL_16;
  }

  v17 = sub_1004A6D34();

  if ((v17 & 1) == 0)
  {
LABEL_10:
    v18 = sub_10014A364(v10);
    v20 = v19;
    if (v19)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(a1 + 14);
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_16:
  v21 = 0;
  v20 = 0;
  v22 = *(a1 + 14);
  if (!v22)
  {
LABEL_22:
    v27 = 0;
    v25 = 0;
    goto LABEL_23;
  }

LABEL_17:
  LOWORD(v39[0]) = v22;
  v23 = sub_1004A5824();
  v25 = v24;
  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    goto LABEL_22;
  }

  v27 = v23;
LABEL_23:
  v28 = *(a1 + 16);
  sub_100063C30(a1);
  v29 = qword_1004D91E8[v28];
  v30 = qword_1004D9228[v28];
  *&v35 = v11;
  *(&v35 + 1) = v13;
  *&v36 = v21;
  *(&v36 + 1) = v20;
  *&v37 = v27;
  *(&v37 + 1) = v25;
  *&v38 = v29;
  *(&v38 + 1) = v30;
  v39[0] = v11;
  v39[1] = v13;
  v39[2] = v21;
  v39[3] = v20;
  v39[4] = v27;
  v39[5] = v25;
  v39[6] = v29;
  v39[7] = v30;
  sub_10014F608(&v35, v34);
  sub_10014F640(v39);
  v31 = v36;
  *a4 = v35;
  a4[1] = v31;
  result = *&v37;
  v33 = v38;
  a4[2] = v37;
  a4[3] = v33;
  return result;
}

void sub_10014A7F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v40 = _swiftEmptyArrayStorage;
    sub_1000924C8(0, v2, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = a1 + 64;
    v7 = sub_1004A6554();
    v8 = 0;
    v33 = v2;
    v34 = a2[9];
    v31 = a2[11];
    v32 = a2[10];
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v11 = v6;
      v35 = *(a1 + 36);
      v12 = *(a1 + 56) + 72 * v7;
      v38[0] = *v12;
      v14 = *(v12 + 32);
      v13 = *(v12 + 48);
      v15 = *(v12 + 16);
      v39 = *(v12 + 64);
      v38[2] = v14;
      v38[3] = v13;
      v38[1] = v15;
      if (v34)
      {
        v16 = v31;

        v17 = v32;
      }

      else
      {
        v17 = 0;
        v16 = 0;
      }

      sub_100063BD4(v38, v36);
      sub_10014A628(v38, v17, v16, v37);
      v40 = v5;
      v19 = v5[2];
      v18 = v5[3];
      if (v19 >= v18 >> 1)
      {
        sub_1000924C8((v18 > 1), v19 + 1, 1);
        v5 = v40;
      }

      v5[2] = v19 + 1;
      v20 = &v5[8 * v19];
      v21 = v37[0];
      v22 = v37[1];
      v23 = v37[3];
      v20[4] = v37[2];
      v20[5] = v23;
      v20[2] = v21;
      v20[3] = v22;
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_25;
      }

      v24 = *(v11 + 8 * v10);
      if ((v24 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (v35 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v6 = v11;
      v25 = v24 & (-2 << (v7 & 0x3F));
      if (v25)
      {
        v9 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v10 << 6;
        v27 = v10 + 1;
        v28 = (a1 + 72 + 8 * v10);
        while (v27 < (v9 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_100020944(v7, v35, 0);
            v9 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        sub_100020944(v7, v35, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v33)
      {
        return;
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
}

unsigned int *sub_10014AA90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_100091A08(0, v3, 0);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v26 = a1 + 32;
    v27 = *(a1 + 16);

    v6 = 0;
    while (v6 != v27)
    {
      v7 = (v26 + 16 * v6);
      v8 = *v7;
      v9 = *(v7 + 2);
      swift_bridgeObjectRetain_n();
      v10 = sub_1004A5804();
      v12 = v11;
      result = MailboxName.inbox.unsafeMutableAddressor();
      if ((v9 | (v9 << 32)) == (result[2] | (result[2] << 32)) && (v13 = *result, v14 = *(v8 + 16), v14 == *(*result + 16)))
      {
        if (v14)
        {
          v15 = v8 == v13;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v16 = (v8 + 32);
          v17 = (v13 + 32);
          while (v14)
          {
            if (*v16 != *v17)
            {
              goto LABEL_15;
            }

            ++v16;
            ++v17;
            if (!--v14)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
          break;
        }
      }

      else
      {
LABEL_15:
        if (sub_1004A5924() >= 3)
        {
          sub_1004A5964();
          sub_1004A6724(16);
          sub_1004A5AB4();
          v18 = sub_1004A5864();
          v19 = v4;
          v20 = v3;
          v22 = v21;

          v28 = v22;
          v3 = v20;
          v4 = v19;
          v29._countAndFlagsBits = 0x6E656C202CA680E2;
          v29._object = 0xAC0000003D687467;
          sub_1004A5994(v29);
          sub_1004A5924();
          v30._countAndFlagsBits = sub_1004A6CE4();
          sub_1004A5994(v30);

          v10 = v18;
          v12 = v28;
        }
      }

LABEL_17:
      v31._countAndFlagsBits = v10;
      v31._object = v12;
      sub_1004A5994(v31);

      v32._countAndFlagsBits = 0x203E2D2027;
      v32._object = 0xE500000000000000;
      sub_1004A5994(v32);
      v33._countAndFlagsBits = sub_1004A5824();
      sub_1004A5994(v33);

      v24 = v4[2];
      v23 = v4[3];
      if (v24 >= v23 >> 1)
      {
        result = sub_100091A08((v23 > 1), v24 + 1, 1);
      }

      ++v6;
      v4[2] = v24 + 1;
      v25 = &v4[2 * v24];
      v25[4] = 39;
      v25[5] = 0xE100000000000000;
      if (v6 == v3)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_22:

    return v4;
  }

  return result;
}

uint64_t sub_10014ADD0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 2;
  }

  sub_1004A6E94();
  sub_1004A6EB4(0);
  v2 = sub_1004A6F14() & ~(-1 << *(a1 + 32));
  if ((*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

unsigned int *sub_10014AE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v7 = sub_10014AA90(a2, a3);

  v8 = MailboxesSelectionUsage.allConnections.getter(a4);
  v43 = *(v8 + 2);
  if (v43)
  {
    v41 = v7;
    v9 = 0;
    v42 = v8 + 32;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      MailboxesSelectionUsage.subscript.getter(*&v42[4 * v9], a4);
      if (v12)
      {
        v16 = v12;
        v17 = v13;
        v18 = v14;
        v19 = v15;
        v44 = sub_1004A5824();
        v45 = v20;

        v21 = sub_1004A5804();
        v23 = v22;
        result = MailboxName.inbox.unsafeMutableAddressor();
        if ((v17 | (v17 << 32)) == (result[2] | (result[2] << 32)) && (v25 = *result, v26 = *(v16 + 16), v26 == *(*result + 16)))
        {
          if (v26)
          {
            v27 = v25 == v16;
          }

          else
          {
            v27 = 1;
          }

          if (!v27)
          {
            v28 = (v16 + 32);
            v29 = (v25 + 32);
            while (v26)
            {
              if (*v28 != *v29)
              {
                goto LABEL_17;
              }

              ++v28;
              ++v29;
              if (!--v26)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
            return result;
          }
        }

        else
        {
LABEL_17:
          if (sub_1004A5924() >= 3)
          {
            sub_1004A5964();
            sub_1004A6724(16);
            sub_1004A5AB4();
            v30 = sub_1004A5864();
            v31 = v10;
            v32 = v19;
            v33 = a4;
            v35 = v34;

            v46 = v35;
            a4 = v33;
            v19 = v32;
            v10 = v31;
            v47._countAndFlagsBits = 0x6E656C202CA680E2;
            v47._object = 0xAC0000003D687467;
            sub_1004A5994(v47);
            sub_1004A5924();
            v48._countAndFlagsBits = sub_1004A6CE4();
            sub_1004A5994(v48);

            v21 = v30;
            v23 = v46;
          }
        }

LABEL_19:
        if (v19)
        {

          if (v18)
          {
            v36 = v44;
            if (v18 == 1)
            {
              v37 = 0x7953657669746361;
              v38 = 0xEA0000000000636ELL;
            }

            else
            {
              v38 = 0xEA00000000006B73;
              v37 = 0x6154657669746361;
            }
          }

          else
          {
            v38 = 0xE800000000000000;
            v37 = 0x6576697463616E69;
            v36 = v44;
          }
        }

        else
        {
          v49._countAndFlagsBits = sub_1004A6CE4();
          sub_1004A5994(v49);

          v37 = 0x6576697463616E69;
          v38 = 0xE90000000000002DLL;
          v36 = v44;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000879A4(0, *(v10 + 2) + 1, 1, v10);
        }

        v40 = *(v10 + 2);
        v39 = *(v10 + 3);
        if (v40 >= v39 >> 1)
        {
          v10 = sub_1000879A4((v39 > 1), v40 + 1, 1, v10);
        }

        *(v10 + 2) = v40 + 1;
        v11 = &v10[48 * v40];
        *(v11 + 4) = v36;
        *(v11 + 5) = v45;
        *(v11 + 6) = v21;
        *(v11 + 7) = v23;
        *(v11 + 8) = v37;
        *(v11 + 9) = v38;
      }

      if (++v9 == v43)
      {

        return v41;
      }
    }
  }

  return v7;
}

unint64_t sub_10014B280(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_100064090(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_1000C83EC(v15, v5 & 1);
    result = sub_100064090(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1004A6E24();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v21 = (v18[6] + 16 * result);
    *v21 = v8;
    v21[1] = v7;
    *(v18[7] + 8 * result) = v9;
    v22 = v18[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v23;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_10013C918();
  result = v20;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  *(v18[7] + 8 * v19) = v9;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v25 = *a3;

      result = sub_100064090(v7, v6);
      v27 = v25[2];
      v28 = (v26 & 1) == 0;
      v14 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v26;
      if (v25[3] < v29)
      {
        sub_1000C83EC(v29, 1);
        result = sub_100064090(v7, v6);
        if ((v8 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      v31 = *a3;
      if (v8)
      {
        v24 = result;

        *(v31[7] + 8 * v24) = v9;
      }

      else
      {
        v31[(result >> 6) + 8] |= 1 << result;
        v32 = (v31[6] + 16 * result);
        *v32 = v7;
        v32[1] = v6;
        *(v31[7] + 8 * result) = v9;
        v33 = v31[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v31[2] = v34;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

char *sub_10014B4D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Previous(0);
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TaskHistory.Running(0);
  __chkstk_darwin(v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v41 = a1;
  if (v11)
  {
    v38[1] = v4;
    v39 = a2;
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v43 = *(v8 + 72);

    v13 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyArrayStorage;
    do
    {
      sub_10014FA6C(v12, v10, type metadata accessor for TaskHistory.Running);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v16 = *v10;
      if (EnumCaseMultiPayload == 1)
      {
        sub_100020EDC(*(v10 + 1));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100087E44(0, *(v14 + 2) + 1, 1, v14);
        }

        v18 = *(v14 + 2);
        v17 = *(v14 + 3);
        if (v18 >= v17 >> 1)
        {
          v14 = sub_100087E44((v17 > 1), v18 + 1, 1, v14);
        }

        *(v14 + 2) = v18 + 1;
        *&v14[4 * v18 + 32] = v16;
      }

      else
      {
        v42 = v14;
        v19 = v6;
        v20 = v7;
        v21 = *(v10 + 1);
        v46 = 0;
        v47 = 0xE000000000000000;
        v44[0] = v16;
        v45 = v21;
        sub_1004A6934();
        v22 = v46;
        v23 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_100085070(0, *(v13 + 2) + 1, 1, v13);
        }

        v25 = *(v13 + 2);
        v24 = *(v13 + 3);
        v26 = v13;
        if (v25 >= v24 >> 1)
        {
          v26 = sub_100085070((v24 > 1), v25 + 1, 1, v13);
        }

        v27 = *(sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0) + 64);
        *(v26 + 2) = v25 + 1;
        v13 = v26;
        v28 = &v26[16 * v25];
        *(v28 + 4) = v22;
        *(v28 + 5) = v23;
        sub_10014FAD4(&v10[v27], type metadata accessor for ClientCommand);
        v7 = v20;
        v6 = v19;
        v14 = v42;
      }

      v12 += v43;
      --v11;
    }

    while (v11);

    a2 = v39;
    if (!*(v13 + 2))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_16:

      v13 = 0;
    }
  }

  v29 = *(v14 + 2);

  if (!v29)
  {

    v30 = *(a2 + 16);
    if (v30)
    {
      goto LABEL_19;
    }

LABEL_29:

    return v13;
  }

  v30 = *(a2 + 16);
  if (!v30)
  {
    goto LABEL_29;
  }

LABEL_19:
  v31 = v13;
  v32 = 0;
  v33 = 0;
  v34 = a2 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
  v35 = *(v40 + 72);
  while (1)
  {
    sub_10014FA6C(v34, v6, type metadata accessor for TaskHistory.Previous);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      break;
    }

    v37 = __OFADD__(v33++, 1);
    if (v37)
    {
      goto LABEL_32;
    }

    sub_10014FAD4(v6, type metadata accessor for ClientCommand);
LABEL_21:
    v34 += v35;
    if (!--v30)
    {

      return v31;
    }
  }

  result = sub_10014FAD4(v6, type metadata accessor for TaskHistory.Previous);
  v37 = __OFADD__(v32++, 1);
  if (!v37)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

double sub_10014B960@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  v6 = sub_10014B4D8(v4, v5);
  v39 = v7;
  v40 = v6;
  v37 = v9;
  v38 = v8;
  v47 = 91;
  v48 = 0xE100000000000000;
  v10 = a1 + *(type metadata accessor for RunningTask(0) + 28);
  v11 = (v10 + *(type metadata accessor for Task.Logger(0) + 20));
  v12 = v11[1];
  v13 = v11[2];
  LOBYTE(v42) = *v11;
  sub_10014F900();
  v14 = sub_1004A5A84();
  v16 = v15;
  if (sub_1004A5924() <= 1)
  {
    v73._countAndFlagsBits = 48;
    v73._object = 0xE100000000000000;
    sub_1004A5994(v73);
  }

  v74._countAndFlagsBits = v14;
  v74._object = v16;
  sub_1004A5994(v74);

  v75._countAndFlagsBits = 45;
  v75._object = 0xE100000000000000;
  sub_1004A5994(v75);

  v76._countAndFlagsBits = v12;
  v76._object = v13;
  sub_1004A5994(v76);

  v77._countAndFlagsBits = 93;
  v77._object = 0xE100000000000000;
  sub_1004A5994(v77);
  v17 = v47;
  v18 = v48;
  sub_100117890(a1, &v61);
  if (v67)
  {
    if (v67 == 1)
    {
      v19 = v65;
      v20 = v66;
      sub_1000B364C(&v61, &v47);
      v21 = v50;
      v22 = v51;
      sub_10002587C(&v47, v50);
      (*(v22 + 32))(&v69, v21, v22);
      v23 = v70;
      LODWORD(v21) = v71;
      v72 = v69;
      sub_1000D69D0(&v72);
      v24 = sub_100145348(v23, v21);
      v26 = v25;
      if (v20)
      {
        v27 = 0;
        v28 = 0;
      }

      else
      {
        v27 = ConnectionID.debugDescription.getter(v19);
        v28 = v33;
      }

      v32 = v40;
      sub_10014FAD4(a1, type metadata accessor for RunningTask);
      sub_1000197E0(&v47);
      v30 = 2;
      v29 = 2;
    }

    else
    {
      v32 = v40;
      if (v65 | (v66 << 32) || v63 | v64 | v61 | v62 | *(&v61 + 1))
      {
        sub_10014FAD4(a1, type metadata accessor for RunningTask);
        v24 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v31 = 1;
        v30 = 2;
        v29 = 2;
        goto LABEL_15;
      }

      sub_10014FAD4(a1, type metadata accessor for RunningTask);
      v24 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 1;
      v30 = 2;
    }

    v31 = 2;
  }

  else
  {
    sub_10014FAD4(a1, type metadata accessor for RunningTask);
    sub_10011D8CC(&v61);
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 2;
    v30 = 1;
    v31 = 2;
    v32 = v40;
  }

LABEL_15:
  *&v42 = v32;
  *(&v42 + 1) = v39;
  *&v43 = v38;
  *(&v43 + 1) = v37;
  *&v44 = v17;
  *(&v44 + 1) = v18;
  LOBYTE(v45) = v30;
  *(&v45 + 1) = *v68;
  DWORD1(v45) = *&v68[3];
  *(&v45 + 1) = v24;
  *v46 = v26;
  *&v46[8] = v27;
  *&v46[16] = v28;
  v46[24] = v29;
  v46[25] = v31;
  v47 = v32;
  v48 = v39;
  v49 = v38;
  v50 = v37;
  v51 = v17;
  v52 = v18;
  v53 = v30;
  *v54 = *v68;
  *&v54[3] = *&v68[3];
  v55 = v24;
  v56 = v26;
  v57 = v27;
  v58 = v28;
  v59 = v29;
  v60 = v31;
  sub_10014FA04(&v42, v41);
  sub_10014FA3C(&v47);
  v34 = v45;
  a2[2] = v44;
  a2[3] = v34;
  a2[4] = *v46;
  *(a2 + 74) = *&v46[10];
  result = *&v42;
  v36 = v43;
  *a2 = v42;
  a2[1] = v36;
  return result;
}

void *sub_10014BD20(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = *(a2 + 16);
  if (v10)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_100092408(0, v10, 0);
    v11 = v23;
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_10014FA6C(v12, v9, type metadata accessor for RunningTask);
      sub_10014FA6C(v9, v6, type metadata accessor for RunningTask);
      sub_10014B960(v6, v24);
      sub_10014FAD4(v9, type metadata accessor for RunningTask);
      v23 = v11;
      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        sub_100092408((v14 > 1), v15 + 1, 1);
        v11 = v23;
      }

      v11[2] = v15 + 1;
      v16 = &v11[12 * v15];
      v17 = v24[1];
      v16[2] = v24[0];
      v16[3] = v17;
      v18 = v24[2];
      v19 = v24[3];
      v20 = v25[0];
      *(v16 + 106) = *(v25 + 10);
      v16[5] = v19;
      v16[6] = v20;
      v16[4] = v18;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v11;
}

uint64_t sub_10014BF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  v6 = type metadata accessor for StateWithTasks(0);
  v7 = a1 + *(v6 + 28);
  LOBYTE(v65[0]) = *(v7 + *(type metadata accessor for State.Logger(0) + 20));
  sub_10014F900();
  v8 = sub_1004A5A84();
  v10 = v9;
  if (sub_1004A5924() <= 1)
  {
    v67._countAndFlagsBits = 48;
    v67._object = 0xE100000000000000;
    sub_1004A5994(v67);
  }

  v68._countAndFlagsBits = v8;
  v68._object = v10;
  sub_1004A5994(v68);

  v57 = __dst[1];
  v58 = __dst[0];
  if (*(a1 + 25))
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | *(a1 + 24);
  if (*(a1 + 26))
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  Environment.capturedValue.getter(v12 | v13, *(a1 + 32), *(a1 + 40), v62);
  v56 = sub_10014ADD0(*(a1 + 56));
  v55 = sub_100142AA8(*(a1 + 64));
  v14 = sub_100012C04();
  v17 = sub_100187138(v14, v16, v15 & 1);
  v19 = v18;
  v21 = v20;
  v22 = *(a1 + *(v6 + 32));
  *&v66[12] = *(a1 + 228);
  v23 = *(a1 + 216);
  v65[2] = *(a1 + 200);
  *v66 = v23;
  v24 = *(a1 + 184);
  v65[0] = *(a1 + 168);
  v65[1] = v24;
  sub_10014F954(v65, __dst);
  v54 = v17;
  sub_10018C458(v17, v19, v21, v7, v22, v65);
  sub_10014F9B0(v65);
  memcpy(__dst, a1, sizeof(__dst));
  v25 = sub_10012E208();
  v26 = LOBYTE(__dst[3]);
  v27 = BYTE1(__dst[3]);
  v28 = __dst[4];
  v29 = __dst[7];

  sub_100166D28();
  v31 = v30;
  if (v28 == 3 || v28 == 2)
  {

    v32 = 1;
    goto LABEL_12;
  }

  v52 = sub_100166E18(v30);
  if (v27)
  {
    goto LABEL_23;
  }

  if (v28 == 1)
  {
    if (v26)
    {
      v32 = v26 == 1;
      goto LABEL_24;
    }

LABEL_23:
    v32 = v52 ^ 1;
    goto LABEL_24;
  }

  if (v28 || (v26 - 1) >= 2)
  {
    goto LABEL_23;
  }

  v32 = 0;
LABEL_24:
  sub_100013AD0(&off_100598658, v29);
  sub_100166E18(v31);
  v53 = sub_100013CF4(v29);

  if (v53 & 1) == 0 && (v27)
  {
    sub_100166E18(v31);
  }

LABEL_12:

  v33 = __dst[26];
  sub_1000CF79C(__dst[21], __dst[22], __dst[23], __dst[24] & 1, __dst[15], v25, v32 & 1, __dst[26]);
  v35 = v34;
  v37 = v36;

  sub_1001627A4(v35, v37);
  v39 = v38;

  v40 = sub_10014AE60(v54, v19, v21, v39);
  v42 = v41;

  v43 = sub_100142D94(v33);
  if (v43[2])
  {
    sub_10000C9C0(&qword_1005CF760, &qword_1004D2BC8);
    v44 = sub_1004A6A74();
  }

  else
  {
    v44 = _swiftEmptyDictionarySingleton;
  }

  v61 = v44;
  sub_10014B280(v43, 1, &v61);

  v45 = v61;
  v46 = *(a1 + 272);
  v47 = *(a1 + 264);

  v48 = sub_10014BD20(v47, v46);
  result = sub_10014FAD4(a1, type metadata accessor for StateWithTasks);
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v58;
  *(a4 + 24) = v57;
  v50 = v62[3];
  *(a4 + 64) = v62[2];
  *(a4 + 80) = v50;
  *(a4 + 96) = v63;
  v51 = v62[1];
  *(a4 + 32) = v62[0];
  *(a4 + 48) = v51;
  *(a4 + 104) = v56;
  *(a4 + 112) = v55;
  *(a4 + 120) = v40;
  *(a4 + 128) = v42;
  *(a4 + 136) = v45;
  *(a4 + 144) = v48;
  return result;
}

void *sub_10014C370(uint64_t a1)
{
  v38 = *(a1 + 16);
  if (!v38)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v1 = 0;
  v37 = a1 + 32;
  while (1)
  {
    v3 = (v37 + 16 * v1);
    v4 = *v3;
    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    swift_bridgeObjectRetain_n();
    v7 = sub_1004A5804();
    v9 = v8;
    v10 = MailboxName.inbox.unsafeMutableAddressor();
    if ((v6 | (v6 << 32)) == (v10[2] | (v10[2] << 32)))
    {
      v11 = *v10;
      v12 = *(v4 + 16);
      if (v12 == *(*v10 + 16))
      {
        if (!v12 || v4 == v11)
        {
LABEL_12:

          goto LABEL_15;
        }

        v13 = 32;
        while (*(v4 + v13) == *(v11 + v13))
        {
          ++v13;
          if (!--v12)
          {
            goto LABEL_12;
          }
        }
      }
    }

    if (sub_1004A5924() >= 3)
    {
      sub_1004A5964();
      sub_1004A6724(16);
      sub_1004A5AB4();
      v14 = v6;
      v6 = sub_1004A5864();
      v39 = v5;
      v16 = v15;

      v41 = v6;
      v42 = v16;
      LODWORD(v6) = v14;
      v43._countAndFlagsBits = 0x6E656C202CA680E2;
      v43._object = 0xAC0000003D687467;
      sub_1004A5994(v43);
      sub_1004A5924();
      v44._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v44);

      v5 = v39;

      v7 = v41;
      v9 = v42;
    }

LABEL_15:
    v18 = sub_100064090(v7, v9);
    v19 = _swiftEmptyDictionarySingleton[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (_swiftEmptyDictionarySingleton[3] < v21)
    {
      sub_1000C86A0(v21, 1);
      v23 = sub_100064090(v7, v9);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_29;
      }

      v18 = v23;
    }

    if (v22)
    {
      v40 = v5;

      v25 = _swiftEmptyDictionarySingleton[7];
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      v28 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_100087BE8(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v30 = v26[2];
      v29 = v26[3];
      if (v30 >= v29 >> 1)
      {
        v26 = sub_100087BE8((v29 > 1), v30 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v26[2] = v30 + 1;
      v2 = &v26[2 * v30];
      v2[4] = v4;
      *(v2 + 10) = v28;
      *(v2 + 11) = v40;
    }

    else
    {
      sub_10000C9C0(&qword_1005CEFB8, &unk_1004D1EA0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1004CEAA0;
      *(v31 + 32) = v4;
      *(v31 + 40) = v6;
      *(v31 + 44) = v5;
      _swiftEmptyDictionarySingleton[(v18 >> 6) + 8] |= 1 << v18;
      v32 = (_swiftEmptyDictionarySingleton[6] + 16 * v18);
      *v32 = v7;
      v32[1] = v9;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v18) = v31;
      v33 = _swiftEmptyDictionarySingleton[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_28;
      }

      _swiftEmptyDictionarySingleton[2] = v35;
    }

    if (++v1 == v38)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

void *sub_10014C740(uint64_t a1)
{
  v1 = _swiftEmptyDictionarySingleton;
  v45 = *(a1 + 16);
  if (!v45)
  {
    return v1;
  }

  v2 = 0;
  v44 = a1 + 32;
  while (1)
  {
    v4 = (v44 + 56 * v2);
    v46 = *v4;
    v5 = *(v4 + 1);
    v6 = v4[4];
    v7 = *(v4 + 3);
    v8 = *(v4 + 4);
    v9 = *(v4 + 5);
    v10 = *(v4 + 48);
    swift_bridgeObjectRetain_n();
    sub_100014CEC(v7, v8);
    v48 = v9;

    v11 = sub_1004A5804();
    v13 = v12;
    v14 = MailboxName.inbox.unsafeMutableAddressor();
    v50 = v8;
    v47 = v7;
    v49 = v10;
    if ((v6 | (v6 << 32)) == (v14[2] | (v14[2] << 32)))
    {
      v15 = *v14;
      v16 = *(v5 + 16);
      if (v16 == *(*v14 + 16))
      {
        if (!v16 || v5 == v15)
        {
LABEL_12:

          goto LABEL_15;
        }

        v17 = 32;
        while (*(v5 + v17) == *(v15 + v17))
        {
          ++v17;
          if (!--v16)
          {
            goto LABEL_12;
          }
        }
      }
    }

    if (sub_1004A5924() >= 3)
    {
      sub_1004A5964();
      sub_1004A6724(16);
      sub_1004A5AB4();
      v18 = sub_1004A5864();
      v19 = v1;
      v20 = v2;
      v21 = v6;
      v6 = v22;

      v51 = v6;
      LODWORD(v6) = v21;
      v2 = v20;
      v1 = v19;
      v52._countAndFlagsBits = 0x6E656C202CA680E2;
      v52._object = 0xAC0000003D687467;
      sub_1004A5994(v52);
      sub_1004A5924();
      v53._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v53);

      v11 = v18;
      v13 = v51;
    }

LABEL_15:
    v23 = v11;
    v25 = sub_100064090(v11, v13);
    v26 = v1[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v1[3] >= v28)
    {
      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1000C868C(v28, 1);
      v1 = _swiftEmptyDictionarySingleton;
      v30 = sub_100064090(v23, v13);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_29;
      }

      v25 = v30;
      if (v29)
      {
LABEL_22:
        v37 = v5;

        v38 = v1[7];
        v39 = *(v38 + 8 * v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v38 + 8 * v25) = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = sub_100087AC4(0, *(v39 + 2) + 1, 1, v39);
          *(v38 + 8 * v25) = v39;
        }

        v42 = *(v39 + 2);
        v41 = *(v39 + 3);
        if (v42 >= v41 >> 1)
        {
          v39 = sub_100087AC4((v41 > 1), v42 + 1, 1, v39);
          *(v38 + 8 * v25) = v39;
        }

        *(v39 + 2) = v42 + 1;
        v3 = &v39[56 * v42];
        *(v3 + 8) = v46;
        *(v3 + 5) = v37;
        *(v3 + 12) = v6;
        *(v3 + 7) = v47;
        *(v3 + 8) = v50;
        *(v3 + 9) = v48;
        v3[80] = v49;
        goto LABEL_4;
      }
    }

    sub_10000C9C0(&qword_1005CEFB0, &qword_1004D1E98);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1004CEAA0;
    *(v32 + 32) = v46;
    *(v32 + 40) = v5;
    *(v32 + 48) = v6;
    *(v32 + 56) = v47;
    *(v32 + 64) = v8;
    *(v32 + 72) = v48;
    *(v32 + 80) = v49;
    v1[(v25 >> 6) + 8] |= 1 << v25;
    v33 = (v1[6] + 16 * v25);
    *v33 = v23;
    v33[1] = v13;
    *(v1[7] + 8 * v25) = v32;
    v34 = v1[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_28;
    }

    v1[2] = v36;
LABEL_4:
    if (++v2 == v45)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

void sub_10014CBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100142FFC(a1);

  v4 = *(a2 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = 0;
    v7 = (a2 + 48);
    do
    {
      if (v6 >= *(a2 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v8 = *(v7 - 4);
      v9 = *(v7 - 1);
      v10 = *v7;
      if ((*v7 & 4) != 0)
      {

        sub_10014A3F0(v14, v8);
        v13 = v15;
      }

      else
      {
        sub_1000C9E18(*(v7 - 1), *v7);
        sub_1000C9E18(v9, v10);

        sub_10014A3F0(v11, v8);
        v13 = v12;

        sub_1000C9F38(v10);
      }

      sub_1000C9EF0(v9, v10);
      v16 = *(v13 + 16);
      v17 = v5[2];
      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        goto LABEL_67;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= v5[3] >> 1)
      {
        if (!*(v13 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v20 = v17 + v16;
        }

        else
        {
          v20 = v17;
        }

        v5 = sub_100087BE8(isUniquelyReferenced_nonNull_native, v20, 1, v5);
        if (!*(v13 + 16))
        {
LABEL_3:

          if (v16)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }
      }

      if ((v5[3] >> 1) - v5[2] < v16)
      {
        goto LABEL_69;
      }

      sub_10000C9C0(&qword_1005CEFC0, &qword_1004D7050);
      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = v5[2];
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_70;
        }

        v5[2] = v23;
      }

LABEL_4:
      ++v6;
      v7 += 3;
    }

    while (v4 != v6);
  }

  v24 = sub_10014C370(v5);

  sub_10000C9C0(&qword_1005D18E0, &qword_1004D7058);
  v25 = sub_1004A6A54();
  v26 = 0;
  v27 = 1 << *(v24 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v95 = v24 + 8;
  v29 = v28 & v24[8];
  v30 = (v27 + 63) >> 6;
  v99 = v25 + 64;
  v101 = v25;
  for (i = v24; v29; v101[2] = v46)
  {
    v31 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
LABEL_31:
    v34 = v31 | (v26 << 6);
    v35 = (v24[6] + 16 * v34);
    v36 = *v35;
    v37 = *(v24[7] + 8 * v34);
    v38 = *(v37 + 16);
    if (v38)
    {
      v103 = *v35;
      v102 = v35[1];

      sub_100092468(0, v38, 0);
      v39 = _swiftEmptyArrayStorage[2];
      v40 = 44;
      do
      {
        v41 = *(v37 + v40);
        v42 = _swiftEmptyArrayStorage[3];
        if (v39 >= v42 >> 1)
        {
          sub_100092468((v42 > 1), v39 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v39 + 1;
        *(&_swiftEmptyArrayStorage[4] + v39) = v41;
        v40 += 16;
        ++v39;
        --v38;
      }

      while (v38);

      v24 = i;
      v36 = v103;
      v43 = v102;
    }

    else
    {
      v43 = v35[1];
    }

    *(v99 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v44 = (v101[6] + 16 * v34);
    *v44 = v36;
    v44[1] = v43;
    *(v101[7] + 8 * v34) = _swiftEmptyArrayStorage;
    v45 = v101[2];
    v22 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v22)
    {
      goto LABEL_71;
    }
  }

  v32 = v26;
  while (1)
  {
    v26 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v26 >= v30)
    {
      break;
    }

    v33 = v95[v26];
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v29 = (v33 - 1) & v33;
      goto LABEL_31;
    }
  }

  v47 = sub_10014C740(a3);

  sub_10000C9C0(&qword_1005D18E8, &qword_1004D7060);
  v48 = sub_1004A6A54();
  v49 = v48;
  v50 = 0;
  v51 = v47[8];
  v87 = v47 + 8;
  v52 = 1 << *(v47 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & v51;
  v55 = (v52 + 63) >> 6;
  v90 = v47;
  v91 = v48 + 64;
  v88 = v55;
  v89 = v48;
  if ((v53 & v51) == 0)
  {
LABEL_45:
    v57 = v50;
    while (1)
    {
      v50 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_65;
      }

      if (v50 >= v55)
      {

        return;
      }

      v58 = v87[v50];
      ++v57;
      if (v58)
      {
        v56 = __clz(__rbit64(v58));
        v54 = (v58 - 1) & v58;
        goto LABEL_50;
      }
    }
  }

  while (1)
  {
    v56 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
LABEL_50:
    v59 = v56 | (v50 << 6);
    v60 = (v47[6] + 16 * v59);
    v61 = *v60;
    v62 = *(v47[7] + 8 * v59);
    v63 = *(v62 + 16);
    if (v63)
    {
      v94 = *v60;
      v96 = v59;
      v98 = v54;
      v100 = v50;
      v92 = v60[1];

      sub_1000924A8(0, v63, 0);
      v64 = 0;
      v65 = _swiftEmptyArrayStorage;
      v66 = v62;
      do
      {
        v105 = v65;
        v104 = *(v66 + v64 + 32);
        v67 = *(v66 + v64 + 56);
        v68 = *(v66 + v64 + 64);
        v69 = *(v66 + v64 + 80);
        if (*(v66 + v64 + 72))
        {
          sub_100014CEC(v67, v68);

          sub_100014CEC(v67, v68);

          sub_100014CEC(v67, v68);

          v71 = SectionSpecifier.Part.debugDescription.getter(v70);
          v72 = v69;
          v74 = v73;

          v106._countAndFlagsBits = v71;
          v106._object = v74;
          sub_1004A5994(v106);
          v69 = v72;

          sub_100014D40(v67, v68);

          sub_100014D40(v67, v68);

          v76 = 0x656D686361747461;
          v75 = 0xEB0000000020746ELL;
        }

        else
        {
          sub_100014CEC(*(v66 + v64 + 56), *(v66 + v64 + 64));
          sub_100014CEC(v67, v68);
          sub_100014D40(v67, v68);

          v75 = 0xE400000000000000;
          v76 = 1954047348;
        }

        v77 = dword_1004D9268[v69];
        v65 = v105;
        v79 = v105[2];
        v78 = v105[3];
        if (v79 >= v78 >> 1)
        {
          sub_1000924A8((v78 > 1), v79 + 1, 1);
          v65 = v105;
        }

        v65[2] = v79 + 1;
        v80 = &v65[6 * v79];
        *(v80 + 8) = v104;
        v80[5] = v67;
        v80[6] = v68;
        v80[7] = v76;
        v80[8] = v75;
        *(v80 + 18) = v77;
        v64 += 56;
        --v63;
      }

      while (v63);
      v81 = v65;

      v82 = v81;
      v49 = v89;
      v47 = v90;
      v54 = v98;
      v50 = v100;
      v55 = v88;
      v61 = v94;
      v59 = v96;
      v83 = v92;
    }

    else
    {

      v82 = _swiftEmptyArrayStorage;
    }

    *(v91 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
    v84 = (v49[6] + 16 * v59);
    *v84 = v61;
    v84[1] = v83;
    *(v49[7] + 8 * v59) = v82;
    v85 = v49[2];
    v22 = __OFADD__(v85, 1);
    v86 = v85 + 1;
    if (v22)
    {
      break;
    }

    v49[2] = v86;
    if (!v54)
    {
      goto LABEL_45;
    }
  }

LABEL_72:
  __break(1u);
}

uint64_t sub_10014D328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10009A040(a1);
  v5 = *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  if (*(a1 + 48))
  {
    v9 = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
    result = sub_1004A6934();
    v9 = 0xE000000000000000;
  }

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  *a2 = v10;
  *(a2 + 4) = v6 & 1;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v8 & 1;
  return result;
}

double sub_10014D3F8@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for MessagesPendingDownload(0);
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = *a1;
  v40 = a1[1];
  v41 = v13;
  v39 = a1[2];
  v38 = type metadata accessor for PendingPersistenceUpdates(0);
  v14 = &a1[*(v38 + 28)];
  sub_10014FA6C(v14, v12, type metadata accessor for MessagesPendingDownload);
  if (*(*v12 + 16) || (sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0), (sub_1004A70C4() & 1) == 0))
  {

    sub_1000B492C(v16);
    v17 = sub_100143D50();
    v36 = v18;
    v37 = v17;
    sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
    v35 = sub_100143D50();
    v15 = v19;
  }

  else
  {
    v35 = 0;
    v15 = 0;
    v36 = 1;
    v37 = 0;
  }

  sub_10014FAD4(v12, type metadata accessor for MessagesPendingDownload);
  v20 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  sub_10014FA6C(&v14[*(v20 + 20)], v9, type metadata accessor for MessagesPendingDownload);
  if (*(*v9 + 16) || (sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0), (sub_1004A70C4() & 1) == 0))
  {

    sub_1000B492C(v25);
    v21 = sub_100143D50();
    v24 = v26;
    sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
    v22 = sub_100143D50();
    v23 = v27;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
  }

  sub_10014FAD4(v9, type metadata accessor for MessagesPendingDownload);
  v28 = sub_100143D50();
  v30 = v29;
  sub_10014FAD4(a1, type metadata accessor for PendingPersistenceUpdates);
  LOBYTE(v43) = v41;
  BYTE1(v43) = v40;
  BYTE2(v43) = v39;
  *(&v43 + 1) = v37;
  *&v44 = v36;
  *(&v44 + 1) = v35;
  *&v45 = v15;
  *(&v45 + 1) = v21;
  *&v46 = v24;
  *(&v46 + 1) = v22;
  *&v47 = v23;
  *(&v47 + 1) = v28;
  v48 = v30;
  v49[0] = v41;
  v49[1] = v40;
  v49[2] = v39;
  v50 = v37;
  v51 = v36;
  v52 = v35;
  v53 = v15;
  v54 = v21;
  v55 = v24;
  v56 = v22;
  v57 = v23;
  v58 = v28;
  v59 = v30;
  sub_10014F844(&v43, &v42);
  sub_10014F87C(v49);
  v31 = v46;
  v32 = v47;
  *(a2 + 32) = v45;
  *(a2 + 48) = v31;
  *(a2 + 64) = v32;
  *(a2 + 80) = v48;
  result = *&v43;
  v34 = v44;
  *a2 = v43;
  *(a2 + 16) = v34;
  return result;
}

__n128 sub_10014D788@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s15MissingMessagesO8CompleteVMa(0);
  __chkstk_darwin(v4);
  v6 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44[-v11];
  v13 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v13);
  v15 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v16);
  v18 = &v44[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = 1;
  v64 = 1;
  sub_10014FA6C(a1, v18, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v46 = a1;
    if (EnumCaseMultiPayload == 1)
    {
      sub_10014F7DC(v18, v15, _s15MissingMessagesO10IncompleteVMa);
      sub_10000E268(v15, v12, &qword_1005CD1D0, &unk_1004CF2C0);
      v20 = sub_100143D50();
      v22 = v21;
      sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
      v23 = _s15MissingMessagesO8ProgressVMa(0);
      v24 = sub_100143D50();
      v26 = v25;
      v27 = *(v13 + 24);
      v28 = &v15[*(v13 + 20)];
      v29 = *v28;
      v30 = v28[4];
      if (v30)
      {
        v29 = 0;
      }

      v45 = v29;
      v65 = v30;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_10014FA6C(&v15[v27], v9, _s15MissingMessagesO11QueriedUIDsVMa);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      sub_1004A6934();
      sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
      v32 = v52;
      v31 = v53;
      sub_10014FAD4(v46, _s15MissingMessagesOMa);
      v33 = &v15[*(v23 + 24)];
      v34 = *v33;
      v35 = a2;
      v36 = v33[4];
      v37 = v15;
      v38 = v45;
      sub_10014FAD4(v37, _s15MissingMessagesO10IncompleteVMa);
      if (v36)
      {
        v39 = 0;
      }

      else
      {
        v39 = v34;
      }

      v64 = v36;
      a2 = v35;
      v40 = 2;
      v41 = 2;
    }

    else
    {
      sub_10014F7DC(v18, v6, _s15MissingMessagesO8CompleteVMa);
      if (v6[4])
      {
        v38 = 0;
      }

      else
      {
        v38 = *v6;
      }

      v65 = v6[4];
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_10014FA6C(&v6[*(v4 + 20)], v9, _s15MissingMessagesO11QueriedUIDsVMa);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      sub_1004A6934();
      sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
      v32 = v52;
      v31 = v53;
      sub_10014FAD4(v46, _s15MissingMessagesOMa);
      sub_10014FAD4(v6, _s15MissingMessagesO8CompleteVMa);
      v26 = 0;
      v24 = 0;
      v22 = 0;
      v20 = 0;
      v39 = 0;
      v41 = 1;
      v40 = 2;
    }
  }

  else
  {
    sub_10014FAD4(a1, _s15MissingMessagesOMa);
    v31 = 0;
    v32 = 0;
    v38 = 0;
    v26 = 0;
    v24 = 0;
    v22 = 0;
    v20 = 0;
    v39 = 0;
    v41 = 2;
    v40 = 1;
  }

  LOBYTE(v48) = v40;
  *(&v48 + 1) = v20;
  v49.n128_u64[0] = v22;
  v49.n128_u64[1] = v24;
  *&v50 = v26;
  DWORD2(v50) = v38;
  BYTE12(v50) = v65;
  *v51 = v32;
  *&v51[8] = v31;
  *&v51[16] = v39;
  v51[20] = v64;
  v51[21] = v41;
  LOBYTE(v52) = v40;
  v53 = v20;
  v54 = v22;
  v55 = v24;
  v56 = v26;
  v57 = v38;
  v58 = v65;
  v59 = v32;
  v60 = v31;
  v61 = v39;
  v62 = v64;
  v63 = v41;
  sub_10014F774(&v48, v47);
  sub_10014F7AC(&v52);
  v42 = *v51;
  *(a2 + 32) = v50;
  *(a2 + 48) = v42;
  *(a2 + 62) = *&v51[14];
  result = v49;
  *a2 = v48;
  *(a2 + 16) = result;
  return result;
}

void *sub_10014DCF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PendingPersistenceUpdates(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 2);
  v12 = *(a1 + 12);
  v76 = *(a1 + 12);
  v13 = *(a1 + 4);
  v14 = *(a1 + 20);
  v75 = *(a1 + 20);
  v15 = a1[3];
  v16 = *(a1 + 32);
  v35 = v10;
  v36 = a2;
  v28 = v6;
  if (v16)
  {
    if (v16 == 1)
    {
      v33 = 0;
      v34 = v15;
      v74 = 1;
      v73 = 0;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v74 = 1;
      v73 = 1;
    }
  }

  else
  {
    v74 = 0;
    v73 = 1;
    v33 = v15;
    v34 = 0;
  }

  v32 = sub_100167580(a1[19], a1[20], a1[21]);
  v17 = sub_100143434(a1[22]);
  if (v17[2])
  {
    v31 = v17;
  }

  else
  {

    v31 = 0;
  }

  if (v14)
  {
    v18 = 0;
  }

  else
  {
    v18 = v13;
  }

  if (v12)
  {
    v19 = 0;
  }

  else
  {
    v19 = v11;
  }

  v29 = v19;
  v30 = v18;
  v20 = type metadata accessor for MailboxSyncState(0);
  v21 = (a1 + v20[12]);
  v22 = v21[3];
  v23 = v21[4];
  sub_10002587C(v21, v22);
  (*(v23 + 88))(&v69, v22, v23);
  sub_10014FA6C(a1 + v20[13], v9, type metadata accessor for PendingPersistenceUpdates);
  sub_10014D3F8(v9, v77);
  *(&v68[3] + 7) = v77[3];
  *(&v68[4] + 7) = v77[4];
  *(&v68[5] + 7) = v78;
  *(&v68[2] + 7) = v77[2];
  *(v68 + 7) = v77[0];
  *(&v68[1] + 7) = v77[1];
  v24 = sub_10014365C(*(a1 + v20[14]));
  v25 = v28;
  sub_10014FA6C(a1 + v20[17], v28, _s15MissingMessagesOMa);
  sub_10014D788(v25, &v64);
  sub_10014FAD4(a1, type metadata accessor for MailboxSyncState);
  *&v38[104] = v71;
  *&v38[88] = v70;
  *&v38[72] = v69;
  *&v38[153] = v68[2];
  *&v38[169] = v68[3];
  *&v38[185] = v68[4];
  *&v38[200] = *(&v68[4] + 15);
  *&v38[121] = v68[0];
  *&v38[137] = v68[1];
  *&v38[286] = *&v67[14];
  *&v38[256] = v66;
  *&v38[272] = *v67;
  *&v38[224] = v64;
  *&v38[240] = v65;
  v52 = v71;
  v51 = v70;
  v50 = v69;
  v55 = v68[1];
  v54 = v68[0];
  *&v58[15] = *(&v68[4] + 15);
  *v58 = v68[4];
  v57 = v68[3];
  v56 = v68[2];
  *v38 = v35;
  *&v38[8] = v29;
  v38[12] = v76;
  *&v38[16] = v30;
  v38[20] = v75;
  *&v38[24] = v33;
  v38[32] = v74;
  *&v38[40] = v34;
  v38[48] = v73;
  *&v38[56] = v32;
  *&v38[64] = v31;
  v38[120] = v72;
  *&v38[216] = v24;
  v39 = v35;
  v40 = v29;
  v41 = v76;
  v42 = v30;
  v43 = v75;
  v44 = v33;
  v45 = v74;
  v46 = v34;
  v47 = v73;
  v48 = v32;
  v49 = v31;
  v53 = v72;
  v59 = v24;
  *(v63 + 14) = *&v67[14];
  v63[0] = *v67;
  v62 = v66;
  v60 = v64;
  v61 = v65;
  sub_10014F70C(v38, &v37);
  sub_10014F744(&v39);
  return memcpy(v36, v38, 0x126uLL);
}

void *sub_10014E150@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = _s19UserInitiatedSearchVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MailboxSyncState(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10014F670(v79);
  memcpy(v68, v79, sizeof(v68));
  v11 = *a1;
  v74 = a1[1];
  v12 = a1[3];
  v75 = a1[2];
  v76 = v12;
  v77[0] = a1[4];
  *(v77 + 9) = *(a1 + 73);
  v73 = v11;
  v13 = DWORD2(v74);

  v15 = sub_100145348(v14, v13);
  v57 = v16;
  v58 = v15;
  sub_100099FE4(&v73, v63);
  sub_10014D328(&v73, &v70);
  v17 = *(a1 + 12);
  if (v17)
  {
    v18 = (v17 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
    swift_beginAccess();
    LODWORD(v63[0]) = *v18;
    v19 = sub_1004A5824();
    v55 = v20;
    v56 = v19;
    v21 = _s13SelectedStateV7WrappedVMa(0);
    sub_10014FA6C(v18 + *(v21 + 20), v10, type metadata accessor for MailboxSyncState);
    sub_10014DCF0(v10, v62);
    memcpy(v63, v62, 0x126uLL);
    UInt32.init(_:)(v63);
    memcpy(v78, v63, sizeof(v78));
  }

  else
  {
    memcpy(v78, v79, sizeof(v78));
    v55 = 0;
    v56 = 0;
  }

  memcpy(v67, v68, 0x126uLL);
  sub_100025F40(v67, &qword_1005D1858, &qword_1004D7008);
  memcpy(v68, v78, sizeof(v68));

  v23 = sub_100143218(v22);

  *&v63[0] = v23;

  sub_10014A11C(v63);

  v24 = *(*&v63[0] + 16);
  v59 = a2;
  if (v24)
  {
    v54 = *&v63[0];
  }

  else
  {

    v54 = 0;
  }

  v25 = *(a1 + 19);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = a1;
    *&v63[0] = _swiftEmptyArrayStorage;
    sub_100092468(0, v26, 0);
    v28 = *&v63[0];
    v29 = v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v30 = *(v5 + 72);
    do
    {
      sub_10014FA6C(v29, v7, _s19UserInitiatedSearchVMa);
      v31 = *v7;
      sub_10014FAD4(v7, _s19UserInitiatedSearchVMa);
      *&v63[0] = v28;
      v33 = v28[2];
      v32 = v28[3];
      if (v33 >= v32 >> 1)
      {
        sub_100092468((v32 > 1), v33 + 1, 1);
        v28 = *&v63[0];
      }

      v28[2] = v33 + 1;
      *(v28 + v33 + 8) = v31;
      v29 += v30;
      --v26;
    }

    while (v26);
    a1 = v27;
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {

      v28 = 0;
    }
  }

  v53 = v28;
  v34 = *(a1 + 18);
  v35 = *(v34 + 16);
  if (v35)
  {
    v52 = a1;
    *v62 = _swiftEmptyArrayStorage;
    sub_1000924A8(0, v35, 0);
    v36 = *v62;
    v37 = (v34 + 64);
    do
    {
      v60 = *(v37 - 8);
      v38 = *(v37 - 3);
      v39 = *(v37 - 2);
      v40 = *v37;
      if (*(v37 - 1))
      {
        *&v63[0] = 0x656D686361747461;
        *(&v63[0] + 1) = 0xEB0000000020746ELL;
        sub_100014CEC(v38, v39);
        sub_100014CEC(v38, v39);

        v80._countAndFlagsBits = SectionSpecifier.Part.debugDescription.getter(v41);
        sub_1004A5994(v80);

        sub_100014D40(v38, v39);

        v42 = *(&v63[0] + 1);
        v43 = *&v63[0];
      }

      else
      {
        sub_100014CEC(*(v37 - 3), *(v37 - 2));
        v42 = 0xE400000000000000;
        v43 = 1954047348;
      }

      v44 = dword_1004D9268[v40];
      *v62 = v36;
      v46 = v36[2];
      v45 = v36[3];
      if (v46 >= v45 >> 1)
      {
        v51 = v42;
        sub_1000924A8((v45 > 1), v46 + 1, 1);
        v42 = v51;
        v36 = *v62;
      }

      v36[2] = v46 + 1;
      v47 = &v36[6 * v46];
      *(v47 + 8) = v60;
      v37 += 40;
      v47[5] = v38;
      v47[6] = v39;
      v47[7] = v43;
      v47[8] = v42;
      *(v47 + 18) = v44;
      --v35;
    }

    while (v35);
    sub_10000E0E8(v52);
    v48 = v36;
  }

  else
  {
    sub_10000E0E8(a1);
    v48 = _swiftEmptyArrayStorage;
  }

  if (!v48[2])
  {

    v48 = 0;
  }

  *v62 = v58;
  *&v62[8] = v57;
  *&v62[16] = v70;
  *&v62[32] = v71;
  v62[48] = v72;
  *&v62[49] = *v69;
  *&v62[52] = *&v69[3];
  *&v62[56] = v56;
  *&v62[64] = v55;
  memcpy(&v62[72], v68, 0x126uLL);
  *&v62[368] = v54;
  *&v62[376] = v53;
  *&v62[384] = v48;
  *&v63[0] = v58;
  *(&v63[0] + 1) = v57;
  v63[1] = v70;
  v63[2] = v71;
  LOBYTE(v63[3]) = v72;
  *(&v63[3] + 1) = *v69;
  DWORD1(v63[3]) = *&v69[3];
  *(&v63[3] + 1) = v56;
  *&v63[4] = v55;
  memcpy(&v63[4] + 8, v68, 0x126uLL);
  v64 = v54;
  v65 = v53;
  v66 = v48;
  sub_10014F6A4(v62, &v61);
  sub_10014F6DC(v63);
  return memcpy(v59, v62, 0x188uLL);
}

char *sub_10014E7C4(char *result)
{
  if ((result[24] & 1) == 0)
  {
    return 0;
  }

  v1 = 0;
  v2 = *(*result + 16);
  v3 = *result + 32;
  v4 = _swiftEmptyArrayStorage;
LABEL_3:
  v5 = (v3 + 176 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v6 = *v5;
    v7 = v5[2];
    v19[1] = v5[1];
    v19[2] = v7;
    v19[0] = v6;
    v8 = v5[3];
    v9 = v5[4];
    v10 = v5[6];
    v19[5] = v5[5];
    v20 = v10;
    v19[3] = v8;
    v19[4] = v9;
    v11 = v5[7];
    v12 = v5[8];
    v13 = v5[10];
    v23 = v5[9];
    v24 = v13;
    v21 = v11;
    v22 = v12;
    v14 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    ++v1;
    v5 += 11;
    if (v20)
    {
      sub_10000E08C(v19, v17);
      sub_10014E150(v19, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100087D1C(0, *(v4 + 2) + 1, 1, v4);
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        v4 = sub_100087D1C((v15 > 1), v16 + 1, 1, v4);
      }

      *(v4 + 2) = v16 + 1;
      result = memcpy(&v4[392 * v16 + 32], __src, 0x188uLL);
      v1 = v14;
      goto LABEL_3;
    }
  }

  return v4;
}

void sub_10014E934(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if ((*a1 & 0xFF0000) != 0)
  {
    v5 = 0x20000;
  }

  else
  {
    v5 = 0x10000;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v6 = 0x1000000;
  }

  else
  {
    v6 = 0x2000000;
  }

  if ((v4 & 0x100) != 0)
  {
    v7 = 512;
  }

  else
  {
    v7 = 256;
  }

  if (v4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 | v5 | v7 | v6;
  if (*a1 == 2)
  {
    v10 = 3;
  }

  else
  {
    v10 = v9;
  }

  if (a1[6])
  {

    sub_10014A7F4(v11, a1);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 65);
  v15._rawValue = a1[9];
  if (v15._rawValue)
  {
    v17 = a1[10];
    v16 = a1[11];
    swift_bridgeObjectRetain_n();

    v18 = MailboxName.init(_:)(v15);
    v19 = sub_100145348(v18.bytes._rawValue, v18._hashValue._value);
    v21 = v20;
    sub_10014F52C(a1);
  }

  else
  {
    sub_10014F52C(a1);
    v19 = 0;
    v21 = 0;
    v17 = 0;
    v16 = 0;
  }

  sub_10014F580(v19, v21, v17, v16);

  sub_10014F5C4(v19, v21, v17, v16);
  *a2 = v10;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v19;
  *(a2 + 32) = v21;
  *(a2 + 40) = v17;
  *(a2 + 48) = v16;
}

unint64_t sub_10014EB20()
{
  result = qword_1005D17C0;
  if (!qword_1005D17C0)
  {
    result = swift_getWitnessTable(byte_1004D6FC0, &_s13CapturedStateVN, v0, v1);
    atomic_store(result, &qword_1005D17C0);
  }

  return result;
}

unint64_t sub_10014EBB8()
{
  result = qword_1005D17D8;
  if (!qword_1005D17D8)
  {
    result = swift_getWitnessTable(byte_1004D6F98, &_s13CapturedStateV7MailboxVN, v0, v1);
    atomic_store(result, &qword_1005D17D8);
  }

  return result;
}

unint64_t sub_10014EC10()
{
  result = qword_1005D17E0;
  if (!qword_1005D17E0)
  {
    result = swift_getWitnessTable(byte_1004D6F70, &_s13CapturedStateV14CapturedRemoteVN, v0, v1);
    atomic_store(result, &qword_1005D17E0);
  }

  return result;
}

uint64_t sub_10014EC64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10014ECC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10014ED30(uint64_t a1)
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

uint64_t sub_10014ED54(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014ED74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
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

uint64_t sub_10014EDBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10014EE70(uint64_t a1, uint64_t a2)
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
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10014EEA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_10014EEEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10014EF60()
{
  result = qword_1005D17F0;
  if (!qword_1005D17F0)
  {
    result = swift_getWitnessTable(byte_1004D7BF8, &_s13CapturedStateV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D17F0);
  }

  return result;
}

unint64_t sub_10014F010()
{
  result = qword_1005D17F8;
  if (!qword_1005D17F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Environment.CapturedValue, &type metadata for Environment.CapturedValue, v0, v1);
    atomic_store(result, &qword_1005D17F8);
  }

  return result;
}

unint64_t sub_10014F0B8()
{
  result = qword_1005D1800;
  if (!qword_1005D1800)
  {
    result = swift_getWitnessTable(byte_1004D7BD0, &_s13CapturedStateV14PathAttributesVN, v0, v1);
    atomic_store(result, &qword_1005D1800);
  }

  return result;
}

unint64_t sub_10014F10C()
{
  result = qword_1005D1818;
  if (!qword_1005D1818)
  {
    result = swift_getWitnessTable(byte_1004D7BA8, &_s13CapturedStateV19CapturedSyncRequestVN, v0, v1);
    atomic_store(result, &qword_1005D1818);
  }

  return result;
}

unint64_t sub_10014F160()
{
  result = qword_1005D1820;
  if (!qword_1005D1820)
  {
    result = swift_getWitnessTable(byte_1004D7B80, &_s13CapturedStateV17MailboxesToSelectVN, v0, v1);
    atomic_store(result, &qword_1005D1820);
  }

  return result;
}

unint64_t sub_10014F1B4()
{
  result = qword_1005D1830;
  if (!qword_1005D1830)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10000DEFC(&qword_1005D1828, &qword_1004D6FF8);
    v4[0] = &protocol witness table for String;
    v4[1] = &protocol witness table for Int;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_1005D1830);
  }

  return result;
}

unint64_t sub_10014F238()
{
  result = qword_1005D1838;
  if (!qword_1005D1838)
  {
    result = swift_getWitnessTable(asc_1004D7B58, &type metadata for RunningTasksCapturedValue, v0, v1);
    atomic_store(result, &qword_1005D1838);
  }

  return result;
}

unint64_t sub_10014F28C()
{
  result = qword_1005D1848;
  if (!qword_1005D1848)
  {
    result = swift_getWitnessTable(byte_1004D7B08, &_s13CapturedStateV7MailboxV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1848);
  }

  return result;
}

unint64_t sub_10014F2E0()
{
  result = qword_1005D1850;
  if (!qword_1005D1850)
  {
    result = swift_getWitnessTable(byte_1004D7AE0, &_s13CapturedStateV7MailboxV17MailboxOfInterestVN, v0, v1);
    atomic_store(result, &qword_1005D1850);
  }

  return result;
}

unint64_t sub_10014F334()
{
  result = qword_1005D1860;
  if (!qword_1005D1860)
  {
    result = swift_getWitnessTable(byte_1004D7AB8, &_s13CapturedStateV7MailboxV16MailboxSyncStateVN, v0, v1);
    atomic_store(result, &qword_1005D1860);
  }

  return result;
}

unint64_t sub_10014F388()
{
  result = qword_1005D1888;
  if (!qword_1005D1888)
  {
    result = swift_getWitnessTable(byte_1004D7A90, &_s13CapturedStateV7MailboxV21UserInitiatedDownloadVN, v0, v1);
    atomic_store(result, &qword_1005D1888);
  }

  return result;
}

unint64_t sub_10014F3DC()
{
  result = qword_1005D1898;
  if (!qword_1005D1898)
  {
    result = swift_getWitnessTable(aY_12, &_s13CapturedStateV14CapturedRemoteV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1898);
  }

  return result;
}

unint64_t sub_10014F430()
{
  result = qword_1005D18A0;
  if (!qword_1005D18A0)
  {
    result = swift_getWitnessTable(aI_5, &_s13CapturedStateV14CapturedRemoteV6ServerVN, v0, v1);
    atomic_store(result, &qword_1005D18A0);
  }

  return result;
}

unint64_t sub_10014F484()
{
  result = qword_1005D18B8;
  if (!qword_1005D18B8)
  {
    result = swift_getWitnessTable(byte_1004D79F0, &_s13CapturedStateV14CapturedRemoteV7MailboxVN, v0, v1);
    atomic_store(result, &qword_1005D18B8);
  }

  return result;
}

unint64_t sub_10014F4D8()
{
  result = qword_1005D18C0;
  if (!qword_1005D18C0)
  {
    result = swift_getWitnessTable(byte_1004D79C8, &_s13CapturedStateV14CapturedRemoteV9NamespaceVN, v0, v1);
    atomic_store(result, &qword_1005D18C0);
  }

  return result;
}

double sub_10014F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

void sub_10014F5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

double sub_10014F670(uint64_t a1)
{
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
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
  *(a1 + 286) = 0;
  return result;
}

uint64_t sub_10014F7DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10014F8AC()
{
  result = qword_1005D18D8;
  if (!qword_1005D18D8)
  {
    result = swift_getWitnessTable(byte_1004D79A0, &_s13CapturedStateV16UnknownMailboxesVN, v0, v1);
    atomic_store(result, &qword_1005D18D8);
  }

  return result;
}

unint64_t sub_10014F900()
{
  result = qword_1005D18F0;
  if (!qword_1005D18F0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt8, &type metadata for UInt8, v0, v1);
    atomic_store(result, &qword_1005D18F0);
  }

  return result;
}

uint64_t sub_10014FA6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10014FAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10014FB34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10014FB7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10014FBD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10014FBFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10014FC44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10014FCAC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10014FD08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_10014FD6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10014FD90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10014FDEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t sub_10014FE64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10014FEB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_10014FF18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10014FF3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 70))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10014FF98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 70) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 70) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Flags.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Flags.Label(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1001501A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001501B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100150200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s13CapturedStateV14CapturedRemoteV6ServerVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[4])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t _s13CapturedStateV14CapturedRemoteV6ServerVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 sub_10015031C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100150330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100150378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001503DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 294))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100150424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 292) = 0;
    *(result + 288) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 294) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 294) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001504C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100150524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1001505AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001505F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s13CapturedStateV14PathAttributesVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

unint64_t sub_100150704()
{
  result = qword_1005D18F8;
  if (!qword_1005D18F8)
  {
    result = swift_getWitnessTable(asc_1004D7740, &_s13CapturedStateV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D18F8);
  }

  return result;
}

unint64_t sub_10015075C()
{
  result = qword_1005D1900;
  if (!qword_1005D1900)
  {
    result = swift_getWitnessTable(aQ_1, &_s13CapturedStateV7MailboxV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1900);
  }

  return result;
}

unint64_t sub_1001507B4()
{
  result = qword_1005D1908;
  if (!qword_1005D1908)
  {
    result = swift_getWitnessTable(byte_1004D78B0, &_s13CapturedStateV14CapturedRemoteV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1908);
  }

  return result;
}

unint64_t sub_10015080C()
{
  result = qword_1005D1910;
  if (!qword_1005D1910)
  {
    result = swift_getWitnessTable(byte_1004D7820, &_s13CapturedStateV14CapturedRemoteV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1910);
  }

  return result;
}

unint64_t sub_100150864()
{
  result = qword_1005D1918;
  if (!qword_1005D1918)
  {
    result = swift_getWitnessTable(aY_13, &_s13CapturedStateV14CapturedRemoteV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1918);
  }

  return result;
}

unint64_t sub_1001508BC()
{
  result = qword_1005D1920;
  if (!qword_1005D1920)
  {
    result = swift_getWitnessTable(aA_6, &_s13CapturedStateV7MailboxV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1920);
  }

  return result;
}

unint64_t sub_100150914()
{
  result = qword_1005D1928;
  if (!qword_1005D1928)
  {
    result = swift_getWitnessTable(byte_1004D7790, &_s13CapturedStateV7MailboxV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1928);
  }

  return result;
}

unint64_t sub_10015096C()
{
  result = qword_1005D1930;
  if (!qword_1005D1930)
  {
    result = swift_getWitnessTable(byte_1004D76B0, &_s13CapturedStateV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1930);
  }

  return result;
}

unint64_t sub_1001509C4()
{
  result = qword_1005D1938;
  if (!qword_1005D1938)
  {
    result = swift_getWitnessTable(byte_1004D76D8, &_s13CapturedStateV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1938);
  }

  return result;
}

uint64_t sub_100150A18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E676F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656E69676E65 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004AA5C0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004AA5E0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA600 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004AA620 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736B736174 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_100150CB4()
{
  result = qword_1005D1948;
  if (!qword_1005D1948)
  {
    result = swift_getWitnessTable(a9_1, &_s13CapturedStateV14PathAttributesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1948);
  }

  return result;
}

unint64_t sub_100150D08()
{
  result = qword_1005D1958;
  if (!qword_1005D1958)
  {
    result = swift_getWitnessTable(byte_1004D8E10, &_s13CapturedStateV19CapturedSyncRequestV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1958);
  }

  return result;
}

unint64_t sub_100150D5C()
{
  result = qword_1005D1968;
  if (!qword_1005D1968)
  {
    result = swift_getWitnessTable(byte_1004D8DC0, &_s13CapturedStateV17MailboxesToSelectV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1968);
  }

  return result;
}

uint64_t sub_100150DB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10000DEFC(a2, a3);
    v8 = a4;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100150E18()
{
  result = qword_1005D1980;
  if (!qword_1005D1980)
  {
    result = swift_getWitnessTable(asc_1004D7978, &_s13CapturedStateV17MailboxesToSelectV12UsageElementVN, v0, v1);
    atomic_store(result, &qword_1005D1980);
  }

  return result;
}

unint64_t sub_100150E6C()
{
  result = qword_1005D1990;
  if (!qword_1005D1990)
  {
    result = swift_getWitnessTable(asc_1004D8D70, &type metadata for RunningTasksCapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1990);
  }

  return result;
}

unint64_t sub_100150EC0()
{
  result = qword_1005D19A8;
  if (!qword_1005D19A8)
  {
    result = swift_getWitnessTable(a1_3, &type metadata for RunningTasksCapturedValue.CapturedTask, v0, v1);
    atomic_store(result, &qword_1005D19A8);
  }

  return result;
}

uint64_t sub_100150F14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656E6E6F63 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786F626C69616DLL && a2 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100151030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7374726F70707573 && a2 == 0xEC00000065766F4DLL;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004AA760 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA780 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001004AA7A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1001511A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6170655368746170 && a2 == 0xED0000726F746172 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x556C616963657073 && a2 == 0xEA00000000006573)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10015131C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726576726573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004AA6C0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100151490(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E69646E6570 && a2 == 0xEB00000000636E79;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552686372616573 && a2 == 0xEE00737473657571 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004AA7C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1001515BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C6156646975 && a2 == 0xEB00000000797469;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5764656863746566 && a2 == 0xED0000776F646E69 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D74736568676968 && a2 == 0xED0000716553646FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1001516E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7565169 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100151844(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6580597 && a2 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100151954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697373696DLL && a2 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004AA8C0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5564656972657571 && a2 == 0xEB00000000734449 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004AA8E0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 6;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100151BB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x436567617373656DLL && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449557478656ELL && a2 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64696C6156646975 && a2 == 0xEB00000000797469 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D74736568676968 && a2 == 0xED0000716553646FLL || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473656867694879 && a2 == 0xEE00716553646F4DLL || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x70657453636E7973 && a2 == 0xE900000000000073 || (sub_1004A6D34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA6E0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004AA700 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001004AA720 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001004AA740 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4D676E697373696DLL && a2 == 0xEF73656761737365)
  {

    return 10;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_100151F70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x80000001004AA800 == a2;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004AA820 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001004AA840 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001004AA860 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001004AA880 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004AA8A0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10015216C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA640 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004AA660 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617453636E7973 && a2 == 0xE900000000000065 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x75716552636E7973 && a2 == 0xEC00000073747365 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004AA680 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004AA6A0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1001523C4()
{
  result = qword_1005D19B8;
  if (!qword_1005D19B8)
  {
    result = swift_getWitnessTable(aY_14, &_s13CapturedStateV7MailboxV17MailboxOfInterestV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D19B8);
  }

  return result;
}

unint64_t sub_100152418()
{
  result = qword_1005D19C8;
  if (!qword_1005D19C8)
  {
    result = swift_getWitnessTable(byte_1004D8CD0, &_s13CapturedStateV7MailboxV16MailboxSyncStateV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D19C8);
  }

  return result;
}

unint64_t sub_10015246C()
{
  result = qword_1005D19E0;
  if (!qword_1005D19E0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Data, &type metadata for Data, v0, v1);
    atomic_store(result, &qword_1005D19E0);
  }

  return result;
}

unint64_t sub_1001524C0()
{
  result = qword_1005D19E8;
  if (!qword_1005D19E8)
  {
    result = swift_getWitnessTable(byte_1004D45F0, &type metadata for PendingServerResponses.CapturedValue, v0, v1);
    atomic_store(result, &qword_1005D19E8);
  }

  return result;
}

unint64_t sub_100152514()
{
  result = qword_1005D19F0;
  if (!qword_1005D19F0)
  {
    result = swift_getWitnessTable(aY_15, &_s13CapturedStateV7MailboxV25PendingPersistenceUpdatesVN, v0, v1);
    atomic_store(result, &qword_1005D19F0);
  }

  return result;
}

uint64_t sub_100152568(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10000DEFC(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001525E4()
{
  result = qword_1005D1A08;
  if (!qword_1005D1A08)
  {
    result = swift_getWitnessTable(byte_1004D7900, &_s13CapturedStateV7MailboxV16MailboxSyncStateV13UserInitiatedVN, v0, v1);
    atomic_store(result, &qword_1005D1A08);
  }

  return result;
}

unint64_t sub_100152638()
{
  result = qword_1005D1A10;
  if (!qword_1005D1A10)
  {
    result = swift_getWitnessTable(byte_1004D78D8, &_s13CapturedStateV7MailboxV16MailboxSyncStateV15MissingMessagesVN, v0, v1);
    atomic_store(result, &qword_1005D1A10);
  }

  return result;
}

unint64_t sub_10015268C()
{
  result = qword_1005D1A20;
  if (!qword_1005D1A20)
  {
    result = swift_getWitnessTable(byte_1004D8C80, &_s13CapturedStateV7MailboxV21UserInitiatedDownloadV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1A20);
  }

  return result;
}

unint64_t sub_10015273C()
{
  result = qword_1005D1A30;
  if (!qword_1005D1A30)
  {
    result = swift_getWitnessTable(aI_6, &_s13CapturedStateV14CapturedRemoteV6ServerV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1A30);
  }

  return result;
}

unint64_t sub_100152790()
{
  result = qword_1005D1A40;
  if (!qword_1005D1A40)
  {
    result = swift_getWitnessTable(byte_1004D8BE0, &_s13CapturedStateV14CapturedRemoteV7MailboxV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1A40);
  }

  return result;
}

unint64_t sub_1001527E4()
{
  result = qword_1005D1A50;
  if (!qword_1005D1A50)
  {
    result = swift_getWitnessTable(asc_1004D8B90, &_s13CapturedStateV14CapturedRemoteV9NamespaceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1A50);
  }

  return result;
}

unint64_t sub_100152838()
{
  result = qword_1005D1A70;
  if (!qword_1005D1A70)
  {
    result = swift_getWitnessTable(aY_16, &_s13CapturedStateV16UnknownMailboxesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1A70);
  }

  return result;
}

unint64_t sub_10015288C()
{
  result = qword_1005D1A80;
  if (!qword_1005D1A80)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10000DEFC(&qword_1005D1A78, &qword_1004D7CD8);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_100150DB0(&qword_1005D1870, &qword_1005D1868, &qword_1004D7010, &protocol witness table for UInt32);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_1005D1A80);
  }

  return result;
}

unint64_t sub_100152938()
{
  result = qword_1005D1A90;
  if (!qword_1005D1A90)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10000DEFC(&qword_1005D1A88, &qword_1004D7CE0);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_100152568(&qword_1005D1880, &qword_1005D1878, &qword_1004D7018, sub_10014F388);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_1005D1A90);
  }

  return result;
}

unint64_t sub_1001529F0()
{
  result = qword_1005D1AA0;
  if (!qword_1005D1AA0)
  {
    result = swift_getWitnessTable(byte_1004D8AF0, &_s13CapturedStateV17MailboxesToSelectV12UsageElementV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1AA0);
  }

  return result;
}

unint64_t sub_100152A44()
{
  result = qword_1005D1AB0;
  if (!qword_1005D1AB0)
  {
    result = swift_getWitnessTable(byte_1004D8AA0, &type metadata for RunningTasksCapturedValue.CapturedTask.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1AB0);
  }

  return result;
}

unint64_t sub_100152A98()
{
  result = qword_1005D1AB8;
  if (!qword_1005D1AB8)
  {
    result = swift_getWitnessTable(asc_1004D8A78, &type metadata for RunningTasksCapturedValue.CapturedTask.History, v0, v1);
    atomic_store(result, &qword_1005D1AB8);
  }

  return result;
}

unint64_t sub_100152AEC()
{
  result = qword_1005D1AC0;
  if (!qword_1005D1AC0)
  {
    result = swift_getWitnessTable(a1_4, &type metadata for RunningTasksCapturedValue.CapturedTask.MailboxTask, v0, v1);
    atomic_store(result, &qword_1005D1AC0);
  }

  return result;
}

unint64_t sub_100152B40()
{
  result = qword_1005D1AD0;
  if (!qword_1005D1AD0)
  {
    result = swift_getWitnessTable(byte_1004D8A00, &_s13CapturedStateV7MailboxV25PendingPersistenceUpdatesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1AD0);
  }

  return result;
}

unint64_t sub_100152B94()
{
  result = qword_1005D1AD8;
  if (!qword_1005D1AD8)
  {
    result = swift_getWitnessTable(byte_1004D89D8, &_s13CapturedStateV7MailboxV25PendingPersistenceUpdatesV23MessagesPendingDownloadVN, v0, v1);
    atomic_store(result, &qword_1005D1AD8);
  }

  return result;
}

unint64_t sub_100152BE8()
{
  result = qword_1005D1AE8;
  if (!qword_1005D1AE8)
  {
    result = swift_getWitnessTable(byte_1004D8988, &_s13CapturedStateV7MailboxV16MailboxSyncStateV13UserInitiatedV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1AE8);
  }

  return result;
}

unint64_t sub_100152C3C()
{
  result = qword_1005D1AF8;
  if (!qword_1005D1AF8)
  {
    result = swift_getWitnessTable(aA_7, &_s13CapturedStateV7MailboxV16MailboxSyncStateV15MissingMessagesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1AF8);
  }

  return result;
}

uint64_t _s10SpecialUseOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10SpecialUseOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionStatus.Error.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}